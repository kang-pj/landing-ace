# 네이버 지도 API 사용 가이드

## 현재 프로젝트 구현 상태

### ✅ 구현된 기능
- 네이버 지도 API 연동 완료
- 에이스법률사무소 위치 마커 표시
- 커스텀 마커 디자인 (그라데이션 배경, 이모지 포함)
- 정보창(InfoWindow) 구현
- 지도 인터랙션 제어 (줌, 드래그 비활성화)
- 모바일 반응형 대응
- 대체 지도 표시 기능 (API 로드 실패 시)
- 위치 공유 기능 (Web Share API)

### 📍 현재 설정
- **Client ID**: `sw4vg0j8dd`
- **위치**: 서울특별시 서초구 사임당로8길 9, 명화빌딩 2층
- **좌표**: 위도 37.4838, 경도 127.0084
- **줌 레벨**: 17 (고정)
- **전화번호**: 1555-1684

---

## 1. 네이버 클라우드 플랫폼 설정

### 1.1 계정 생성 및 로그인
1. [네이버 클라우드 플랫폼](https://www.ncloud.com/) 접속
2. 회원가입 또는 로그인

### 1.2 프로젝트 생성
1. 콘솔 접속
2. Services > AI·NAVER API > AI·NAVER API 선택
3. Application 등록
   - Application 이름 입력
   - Service 선택: Maps
   - 서비스 환경 선택: Web Dynamic Map

### 1.3 Client ID 발급
- Application 등록 후 Client ID 확인
- 현재 사용 중: `sw4vg0j8dd`

---

## 2. 현재 코드 구조

### 2.1 API 스크립트 로드 (index.jsp)

```html
<head>
    <!-- Naver Map API v3 -->
    <script type="text/javascript" 
            src="https://oapi.map.naver.com/openapi/v3/maps.js?ncpClientId=sw4vg0j8dd">
    </script>
</head>
```

### 2.2 지도 컨테이너 HTML

```html
<section id="contact" class="location-section">
    <div class="location-container">
        <div class="location-header">
            <h2 class="location-title">오시는 길</h2>
            
            <div class="location-info">
                <div class="location-text">
                    <div class="location-address">
                        <span class="label">주소:</span> 
                        서울특별시 서초구 사임당로8길 9, 명화빌딩 2층
                    </div>
                    <div class="location-phone">
                        <span class="label">대표번호:</span> 1555-1684
                    </div>
                </div>
                
                <div class="location-buttons">
                    <a href="#" class="location-btn" onclick="shareLocation(event)">
                        <img src="/images/icon_share.png" alt="위치공유" />
                        위치공유
                    </a>
                    <a href="https://map.naver.com/p/search/서울특별시 서초구 사임당로8길 9" 
                       target="_blank" class="location-btn">
                        <img src="/images/icon_search.png" alt="길찾기" />
                        길찾기
                    </a>
                </div>
            </div>
        </div>
        
        <div class="location-map" id="map" style="width:100%;height:400px;">
            <!-- 네이버 지도가 여기에 표시됩니다 -->
        </div>
    </div>
</section>
```

### 2.3 지도 초기화 JavaScript

```javascript
// 네이버 지도 초기화
function initNaverMap() {
    try {
        // 에이스법률사무소 위치 좌표
        var aceLocation = new naver.maps.LatLng(37.4838, 127.0084);

        // 지도 옵션 설정
        var mapOptions = {
            center: aceLocation,
            zoom: 17,
            mapTypeId: naver.maps.MapTypeId.NORMAL,
            zoomControl: false,  // 줌 컨트롤 비활성화
            mapDataControl: false,
            scaleControl: false,  // 스케일 컨트롤 비활성화
            logoControl: true,
            mapTypeControl: false,
            minZoom: 17,  // 최소 줌 레벨
            maxZoom: 17,  // 최대 줌 레벨
            draggable: false,  // 드래그 비활성화
            pinchZoom: false,  // 핀치 줌 비활성화
            scrollWheel: false,  // 스크롤 휠 줌 비활성화
            keyboardShortcuts: false,  // 키보드 단축키 비활성화
            disableDoubleClickZoom: true,  // 더블클릭 줌 비활성화
            disableDoubleTapZoom: true,  // 더블탭 줌 비활성화
            disableTwoFingerTapZoom: true  // 두 손가락 탭 줌 비활성화
        };

        // 지도 생성
        var map = new naver.maps.Map(document.getElementById('map'), mapOptions);

        // 커스텀 마커 생성
        var marker = new naver.maps.Marker({
            position: aceLocation,
            map: map,
            title: '에이스법률사무소',
            icon: {
                content: [
                    '<div style="position: relative;">',
                    '   <div style="',
                    '       background: linear-gradient(135deg, #4865FF 0%, #667EEA 100%);',
                    '       color: white;',
                    '       padding: 10px 16px;',
                    '       border-radius: 25px;',
                    '       font-size: 14px;',
                    '       font-weight: bold;',
                    '       box-shadow: 0 4px 12px rgba(72, 101, 255, 0.4);',
                    '       border: 2px solid white;',
                    '       white-space: nowrap;',
                    '       text-align: center;',
                    '       font-family: Pretendard, sans-serif;',
                    '   ">',
                    '       🏢 에이스법률사무소',
                    '   </div>',
                    '   <div style="',
                    '       position: absolute;',
                    '       bottom: -8px;',
                    '       left: 50%;',
                    '       transform: translateX(-50%);',
                    '       width: 0;',
                    '       height: 0;',
                    '       border-left: 8px solid transparent;',
                    '       border-right: 8px solid transparent;',
                    '       border-top: 8px solid #4865FF;',
                    '   "></div>',
                    '</div>'
                ].join(''),
                anchor: new naver.maps.Point(85, 45)
            }
        });

        // 정보창 생성
        var infoWindow = new naver.maps.InfoWindow({
            content: [
                '<div style="padding: 20px; min-width: 280px; line-height: 1.6; font-family: Pretendard, sans-serif;">',
                '   <div style="font-size: 18px; font-weight: bold; color: #333; margin-bottom: 12px; text-align: center;">',
                '       🏢 에이스법률사무소',
                '   </div>',
                '   <div style="font-size: 14px; color: #666; margin-bottom: 10px; text-align: center;">',
                '       📍 서울특별시 서초구 사임당로8길 9<br>',
                '       &nbsp;&nbsp;&nbsp;&nbsp;명화빌딩 2층',
                '   </div>',
                '   <div style="font-size: 16px; color: #4865FF; font-weight: bold; margin-bottom: 15px; text-align: center;">',
                '       📞 1555-1684',
                '   </div>',
                '   <div style="display: flex; gap: 10px; justify-content: center;">',
                '       <a href="tel:1555-1684" style="background: #4865FF; color: white; padding: 8px 16px; border-radius: 6px; text-decoration: none; font-size: 13px; font-weight: 500;">📞 전화걸기</a>',
                '       <a href="https://map.naver.com/p/search/서울특별시 서초구 사임당로8길 9" target="_blank" style="background: #03C75A; color: white; padding: 8px 16px; border-radius: 6px; text-decoration: none; font-size: 13px; font-weight: 500;">🗺️ 길찾기</a>',
                '   </div>',
                '</div>'
            ].join('')
        });

        // 마커 클릭 이벤트
        naver.maps.Event.addListener(marker, 'click', function() {
            if (infoWindow.getMap()) {
                infoWindow.close();
            } else {
                infoWindow.open(map, marker);
            }
        });

        // 지도 클릭 시 정보창 닫기
        naver.maps.Event.addListener(map, 'click', function() {
            infoWindow.close();
        });

        // 지도 로드 완료 후 정보창 자동 표시 (4초 후 닫힘)
        naver.maps.Event.addListener(map, 'idle', function() {
            setTimeout(function() {
                infoWindow.open(map, marker);
                setTimeout(function() {
                    infoWindow.close();
                }, 4000);
            }, 1000);
        });

        console.log('네이버 지도가 성공적으로 초기화되었습니다.');

    } catch (error) {
        console.error('네이버 지도 초기화 중 오류 발생:', error);
        showAlternativeMap();
    }
}

// 페이지 로드 시 지도 초기화
document.addEventListener('DOMContentLoaded', function() {
    if (typeof naver !== 'undefined' && naver.maps) {
        initNaverMap();
    } else {
        console.error('네이버 지도 API가 로드되지 않았습니다.');
    }
});
```

### 2.4 대체 지도 표시 (API 로드 실패 시)

```javascript
function showAlternativeMap() {
    const mapContainer = document.getElementById('map');
    if (mapContainer) {
        mapContainer.innerHTML = `
            <div style="
                width: 100%;
                height: 100%;
                background: #f0f0f0;
                display: flex;
                flex-direction: column;
                align-items: center;
                justify-content: center;
                border-radius: 10px;
                border: 2px dashed #ddd;
                text-align: center;
                padding: 20px;
            ">
                <div style="font-size: 18px; font-weight: bold; color: #333; margin-bottom: 10px;">
                    📍 에이스법률사무소
                </div>
                <div style="font-size: 14px; color: #666; margin-bottom: 15px; line-height: 1.4;">
                    서울특별시 서초구 사임당로8길 9<br>
                    명화빌딩 2층
                </div>
                <div style="display: flex; gap: 10px; flex-wrap: wrap; justify-content: center;">
                    <a href="https://map.naver.com/p/search/서울특별시 서초구 사임당로8길 9" target="_blank" 
                       style="
                           background: #03C75A;
                           color: white;
                           padding: 8px 16px;
                           border-radius: 6px;
                           text-decoration: none;
                           font-size: 14px;
                           font-weight: 500;
                       ">
                        네이버 지도
                    </a>
                    <a href="https://map.kakao.com/link/search/서울특별시 서초구 사임당로8길 9" target="_blank"
                       style="
                           background: #FEE500;
                           color: #000;
                           padding: 8px 16px;
                           border-radius: 6px;
                           text-decoration: none;
                           font-size: 14px;
                           font-weight: 500;
                       ">
                        카카오맵
                    </a>
                </div>
            </div>
        `;
    }
}
```

### 2.5 위치 공유 기능

```javascript
function shareLocation(event) {
    event.preventDefault();
    
    const locationUrl = 'https://map.naver.com/p/search/서울특별시 서초구 사임당로8길 9';
    const locationText = '에이스법률사무소 - 서울특별시 서초구 사임당로8길 9, 명화빌딩 2층';
    
    // Web Share API 지원 여부 확인
    if (navigator.share) {
        navigator.share({
            title: '에이스법률사무소',
            text: locationText,
            url: locationUrl
        }).then(() => {
            console.log('위치 공유 성공');
        }).catch((error) => {
            console.log('위치 공유 취소:', error);
        });
    } else {
        // Web Share API를 지원하지 않는 경우 클립보드에 복사
        if (navigator.clipboard) {
            navigator.clipboard.writeText(locationUrl).then(() => {
                alert('위치 링크가 클립보드에 복사되었습니다.');
            }).catch(() => {
                alert('위치 링크: ' + locationUrl);
            });
        } else {
            alert('위치 링크: ' + locationUrl);
        }
    }
}
```

---

## 3. 커스터마이징 가이드

### 3.1 위치 변경하기

```javascript
// 좌표 변경
var newLocation = new naver.maps.LatLng(위도, 경도);

// 주소 변경
<div class="location-address">
    <span class="label">주소:</span> 새로운 주소
</div>
```

### 3.2 마커 디자인 변경

```javascript
// 마커 색상 변경
background: linear-gradient(135deg, #FF6B6B 0%, #FF8E53 100%);

// 마커 텍스트 변경
'🏢 새로운 이름'

// 마커 크기 변경
padding: 12px 20px;  // 더 크게
font-size: 16px;     // 글자 크게
```

### 3.3 정보창 내용 변경

```javascript
var infoWindow = new naver.maps.InfoWindow({
    content: [
        '<div style="padding: 20px;">',
        '   <h3>새로운 제목</h3>',
        '   <p>새로운 내용</p>',
        '</div>'
    ].join('')
});
```

### 3.4 지도 인터랙션 활성화

```javascript
var mapOptions = {
    // ... 기존 옵션
    draggable: true,        // 드래그 활성화
    scrollWheel: true,      // 스크롤 줌 활성화
    zoomControl: true,      // 줌 컨트롤 표시
    minZoom: 10,           // 최소 줌 레벨
    maxZoom: 20            // 최대 줌 레벨
};
```

---

## 4. 좌표 찾기

### 4.1 네이버 지도에서 좌표 확인
1. [네이버 지도](https://map.naver.com/) 접속
2. 원하는 위치 검색
3. 해당 위치 우클릭 > "여기가 어딘가요?" 클릭
4. 좌표 정보 확인 (위도, 경도)

### 4.2 주소로 좌표 변환 (Geocoding)
네이버 지도 API의 Geocoding 서비스를 사용하려면 추가 설정이 필요합니다.

---

## 5. 문제 해결

### 5.1 지도가 표시되지 않을 때
- ✅ Client ID 확인: `sw4vg0j8dd`
- ✅ 스크립트 로드 순서 확인
- ✅ 브라우저 콘솔에서 에러 메시지 확인
- ✅ 대체 지도가 표시되는지 확인

### 5.2 마커가 표시되지 않을 때
- ✅ 좌표값 확인: `37.4838, 127.0084`
- ✅ 지도 줌 레벨 확인: `17`
- ✅ 마커 생성 코드 확인

### 5.3 모바일에서 지도가 작동하지 않을 때
- ✅ 터치 이벤트 확인
- ✅ viewport 설정 확인
- ✅ CSS 반응형 스타일 확인

---

## 6. 참고 자료
- [네이버 지도 API 공식 문서](https://navermaps.github.io/maps.js.ncp/)
- [네이버 클라우드 플랫폼](https://www.ncloud.com/)
- [네이버 지도 API 예제](https://navermaps.github.io/maps.js.ncp/docs/tutorial-digest.example.html)
