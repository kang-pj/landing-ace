// 트래킹 스크립트
(function() {
    'use strict';

    // URL 파라미터 파싱
    function getUrlParams() {
        const params = new URLSearchParams(window.location.search);
        return {
            utm_source: params.get('utm_source'),
            utm_medium: params.get('utm_medium'),
            utm_campaign: params.get('utm_campaign'),
            utm_content: params.get('utm_content'),
            utm_term: params.get('utm_term')
        };
    }

    // 디바이스 타입 감지
    function getDeviceType() {
        const ua = navigator.userAgent;
        if (/(tablet|ipad|playbook|silk)|(android(?!.*mobi))/i.test(ua)) {
            return 'Tablet';
        }
        if (/Mobile|Android|iP(hone|od)|IEMobile|BlackBerry|Kindle|Silk-Accelerated|(hpw|web)OS|Opera M(obi|ini)/.test(ua)) {
            return 'Mobile';
        }
        return 'PC';
    }

    // 브라우저 정보 감지
    function getBrowserInfo() {
        const ua = navigator.userAgent;
        let browser = 'Unknown';
        let version = 'Unknown';

        if (ua.indexOf('Chrome') > -1 && ua.indexOf('Edg') === -1) {
            browser = 'Chrome';
            version = ua.match(/Chrome\/(\d+)/)?.[1] || 'Unknown';
        } else if (ua.indexOf('Safari') > -1 && ua.indexOf('Chrome') === -1) {
            browser = 'Safari';
            version = ua.match(/Version\/(\d+)/)?.[1] || 'Unknown';
        } else if (ua.indexOf('Firefox') > -1) {
            browser = 'Firefox';
            version = ua.match(/Firefox\/(\d+)/)?.[1] || 'Unknown';
        } else if (ua.indexOf('Edg') > -1) {
            browser = 'Edge';
            version = ua.match(/Edg\/(\d+)/)?.[1] || 'Unknown';
        } else if (ua.indexOf('MSIE') > -1 || ua.indexOf('Trident') > -1) {
            browser = 'IE';
            version = ua.match(/(?:MSIE |rv:)(\d+)/)?.[1] || 'Unknown';
        }

        return { browser, version };
    }

    // OS 감지
    function getOS() {
        const ua = navigator.userAgent;
        if (ua.indexOf('Win') > -1) return 'Windows';
        if (ua.indexOf('Mac') > -1) return 'MacOS';
        if (ua.indexOf('Linux') > -1) return 'Linux';
        if (ua.indexOf('Android') > -1) return 'Android';
        if (ua.indexOf('iOS') > -1 || ua.indexOf('iPhone') > -1 || ua.indexOf('iPad') > -1) return 'iOS';
        return 'Unknown';
    }

    // 화면 해상도
    function getScreenResolution() {
        return `${screen.width}x${screen.height}`;
    }

    // 검색 키워드 추출 (referrer에서)
    function extractSearchKeyword(referrer) {
        if (!referrer) return null;
        
        try {
            const url = new URL(referrer);
            // 네이버
            if (url.hostname.includes('naver.com')) {
                return url.searchParams.get('query');
            }
            // 구글
            if (url.hostname.includes('google.com')) {
                return url.searchParams.get('q');
            }
            // 다음
            if (url.hostname.includes('daum.net')) {
                return url.searchParams.get('q');
            }
        } catch (e) {
            console.error('Referrer parsing error:', e);
        }
        return null;
    }

    // 트래픽 로그 전송
    function sendTrafficLog() {
        // 이미 이번 세션에서 기록했는지 확인
        const alreadyTracked = sessionStorage.getItem('traffic_logged');
        if (alreadyTracked === 'true') {
            console.log('Traffic already logged in this session');
            return;
        }
        
        const urlParams = getUrlParams();
        const browserInfo = getBrowserInfo();
        const referrer = document.referrer;
        
        const data = new URLSearchParams({
            ...urlParams,
            referrer: referrer,
            search_keyword: extractSearchKeyword(referrer) || '',
            landing_page: window.location.href,
            device_type: getDeviceType(),
            os: getOS(),
            browser: browserInfo.browser,
            browser_version: browserInfo.version,
            screen_resolution: getScreenResolution()
        });

        // 빈 값 제거
        for (let [key, value] of data.entries()) {
            if (!value || value === 'null') {
                data.delete(key);
            }
        }

        fetch('/api/traffic', {
            method: 'POST',
            headers: {
                'Content-Type': 'application/x-www-form-urlencoded',
            },
            body: data
        })
        .then(response => response.json())
        .then(data => {
            console.log('Traffic log sent:', data);
            if (data.sessionId) {
                sessionStorage.setItem('tracking_session_id', data.sessionId);
            }
            // 이번 세션에서 기록했다고 표시
            sessionStorage.setItem('traffic_logged', 'true');
        })
        .catch(error => console.error('Traffic log error:', error));
    }

    // 페이지 로드 시 트래픽 로그 전송
    if (document.readyState === 'loading') {
        document.addEventListener('DOMContentLoaded', sendTrafficLog);
    } else {
        sendTrafficLog();
    }

    // 클릭 이벤트 로그 전송
    function sendClickLog(clickType) {
        const urlParams = getUrlParams();
        const sessionId = sessionStorage.getItem('tracking_session_id') || '';

        const data = new URLSearchParams({
            click_type:   clickType,
            session_id:   sessionId,
            device_type:  getDeviceType(),
            landing_page: window.location.href,
            utm_source:   urlParams.utm_source   || '',
            utm_medium:   urlParams.utm_medium   || '',
            utm_campaign: urlParams.utm_campaign || '',
            utm_term:     urlParams.utm_term     || '',
            utm_content:  urlParams.utm_content  || '',
            referrer:     document.referrer      || ''
        });

        fetch('/api/click-log', {
            method: 'POST',
            headers: { 'Content-Type': 'application/x-www-form-urlencoded' },
            body: data
        })
        .then(res => res.json())
        .then(result => console.log('클릭 로그 저장:', clickType, result))
        .catch(err => console.error('클릭 로그 오류:', err));
    }

    // 카카오/전화 버튼 클릭 이벤트 바인딩
    function bindClickEvents() {
        // 전화 링크
        document.querySelectorAll('a[href^="tel:"]').forEach(el => {
            el.addEventListener('click', () => sendClickLog('call'));
        });
        // 카카오톡 버튼
        document.querySelectorAll('[onclick*="openKakaoTalk"]').forEach(el => {
            el.addEventListener('click', () => sendClickLog('kakao'));
        });
    }

    if (document.readyState === 'loading') {
        document.addEventListener('DOMContentLoaded', bindClickEvents);
    } else {
        bindClickEvents();
    }

    // 전역 함수로 노출 (상담 신청 시 사용)
    window.trackingUtils = {
        getDeviceType,
        getBrowserInfo,
        getOS,
        getScreenResolution,
        sendClickLog
    };
})();
