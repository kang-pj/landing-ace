// URL 해시 기반 네비게이션 기능
(function() {
    'use strict';

    // URL 해시 기반 스크롤 기능
    function handleHashNavigation() {
        const hash = window.location.hash;
        if (hash) {
            // 해시에서 # 제거
            const sectionId = hash.substring(1);
            const targetSection = document.getElementById(sectionId);
            
            if (targetSection) {
                // 페이지 로드 완료 후 스크롤 (약간의 지연)
                setTimeout(() => {
                    const headerHeight = document.querySelector('.header')?.offsetHeight || 0;
                    const floatingHeaderHeight = document.querySelector('.floating-header')?.offsetHeight || 0;
                    const targetPosition = targetSection.offsetTop - headerHeight - floatingHeaderHeight - 20;
                    
                    window.scrollTo({
                        top: targetPosition,
                        behavior: 'smooth'
                    });
                }, 300); // 페이지 로드 후 충분한 지연
            }
        }
    }

    // 섹션으로 스크롤하면서 URL 해시 업데이트
    function scrollToSectionWithHash(sectionId) {
        // URL 해시 업데이트 (페이지 새로고침 없이)
        if (history.pushState) {
            history.pushState(null, null, '#' + sectionId);
        } else {
            window.location.hash = '#' + sectionId;
        }
        
        // 스크롤 실행
        const targetSection = document.getElementById(sectionId);
        if (targetSection) {
            const headerHeight = document.querySelector('.header')?.offsetHeight || 0;
            const floatingHeaderHeight = document.querySelector('.floating-header')?.offsetHeight || 0;
            const targetPosition = targetSection.offsetTop - headerHeight - floatingHeaderHeight - 20;
            
            window.scrollTo({
                top: targetPosition,
                behavior: 'smooth'
            });
        }
    }

    // 기존 scrollToSection 함수를 해시 지원 버전으로 업그레이드
    function enhanceScrollToSection() {
        // 기존 함수가 있다면 백업
        if (window.scrollToSection) {
            window.originalScrollToSection = window.scrollToSection;
        }

        // 새로운 해시 지원 함수로 교체
        window.scrollToSection = function(sectionId) {
            // 모바일 네비게이션 닫기
            if (typeof closeMobileNav === 'function') {
                closeMobileNav();
            }

            // URL 해시 업데이트
            if (history.pushState) {
                history.pushState(null, null, '#' + sectionId);
            } else {
                window.location.hash = '#' + sectionId;
            }

            // 네비게이션 닫기 애니메이션 완료 후 스크롤
            setTimeout(() => {
                const targetSection = document.getElementById(sectionId);
                if (targetSection) {
                    const headerHeight = document.querySelector('.header')?.offsetHeight || 0;
                    const targetPosition = targetSection.offsetTop - headerHeight - 20;
                    const startPosition = window.pageYOffset;
                    const distance = targetPosition - startPosition;
                    const duration = 600;
                    let start = null;

                    function easeInOutCubic(t) {
                        return t < 0.5
                            ? 4 * t * t * t
                            : 1 - Math.pow(-2 * t + 2, 3) / 2;
                    }

                    function animation(currentTime) {
                        if (start === null) start = currentTime;
                        const timeElapsed = currentTime - start;
                        const progress = Math.min(timeElapsed / duration, 1);
                        const ease = easeInOutCubic(progress);

                        window.scrollTo(0, startPosition + distance * ease);

                        if (timeElapsed < duration) {
                            requestAnimationFrame(animation);
                        }
                    }

                    requestAnimationFrame(animation);
                }
            }, 500);
        };
    }

    // 기존 smoothScrollToSection 함수도 해시 지원으로 업그레이드
    function enhanceSmoothScrollToSection() {
        // 기존 함수가 있다면 백업
        if (window.smoothScrollToSection) {
            window.originalSmoothScrollToSection = window.smoothScrollToSection;
        }

        // 새로운 해시 지원 함수로 교체
        window.smoothScrollToSection = function(sectionId) {
            // URL 해시 업데이트
            if (history.pushState) {
                history.pushState(null, null, '#' + sectionId);
            } else {
                window.location.hash = '#' + sectionId;
            }

            const targetSection = document.getElementById(sectionId);
            if (targetSection) {
                const headerHeight = document.querySelector('.header')?.offsetHeight || 0;
                const floatingHeaderHeight = document.querySelector('.floating-header')?.offsetHeight || 0;
                const targetPosition = targetSection.offsetTop - headerHeight - floatingHeaderHeight - 20;
                const startPosition = window.pageYOffset;
                const distance = targetPosition - startPosition;
                const duration = 800;
                let start = null;

                function easeInOutCubic(t) {
                    return t < 0.5
                        ? 4 * t * t * t
                        : 1 - Math.pow(-2 * t + 2, 3) / 2;
                }

                function animation(currentTime) {
                    if (start === null) start = currentTime;
                    const timeElapsed = currentTime - start;
                    const progress = Math.min(timeElapsed / duration, 1);
                    const ease = easeInOutCubic(progress);

                    window.scrollTo(0, startPosition + distance * ease);

                    if (timeElapsed < duration) {
                        requestAnimationFrame(animation);
                    }
                }

                requestAnimationFrame(animation);
            }
        };
    }

    // 전역 함수로 노출
    window.scrollToSectionWithHash = scrollToSectionWithHash;
    window.handleHashNavigation = handleHashNavigation;

    // 페이지 로드 시 해시 네비게이션 처리
    document.addEventListener('DOMContentLoaded', function() {
        // 기존 함수들을 해시 지원 버전으로 업그레이드
        enhanceScrollToSection();
        enhanceSmoothScrollToSection();
        
        // 페이지 로드 시 해시 처리
        handleHashNavigation();
    });

    // 해시 변경 시 스크롤 처리 (브라우저 뒤로가기/앞으로가기 등)
    window.addEventListener('hashchange', function() {
        handleHashNavigation();
    });

    // 페이지 완전 로드 후에도 한 번 더 체크 (이미지 로딩 등으로 인한 레이아웃 변경 대응)
    window.addEventListener('load', function() {
        setTimeout(() => {
            handleHashNavigation();
        }, 500);
    });

})();