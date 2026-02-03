// ACE 법률사무소 메인 JavaScript

let casesSwiper;
let certificateSwiper;
let selectedDiagnosisType = 'personal';
let diagnosisData = {
    type: '',
    debtAmount: 0,
    monthlyIncome: 0,
    assets: 0,
    dependents: 0
};

// 안전한 슬라이드 네비게이션 함수
function navigateSlide(direction) {
    if (casesSwiper) {
        if (direction === 'prev') {
            casesSwiper.slidePrev();
        } else if (direction === 'next') {
            casesSwiper.slideNext();
        }
    }
}

// 케이스 필터링 함수
function filterCases(type, element) {
    document.querySelectorAll('.tab-btn').forEach(btn => btn.classList.remove('active'));
    element.classList.add('active');

    const isMobile = window.innerWidth <= 1000;

    if (isMobile) {
        // 모바일에서는 Swiper 슬라이드 필터링
        if (casesSwiper) {
            const slides = casesSwiper.slides;
            let targetSlideIndex = 0;

            for (let i = 0; i < slides.length; i++) {
                const slide = slides[i];
                const caseType = slide.getAttribute('data-case-type');

                if (type === 'all' || 
                    (type === 'personal' && caseType === '개인회생') ||
                    (type === 'bankruptcy' && caseType === '개인파산')) {
                    targetSlideIndex = i;
                    break;
                }
            }

            casesSwiper.slideTo(targetSlideIndex);
        }
    } else {
        // PC에서는 Swiper 슬라이드 전환
        if (casesSwiper) {
            const tabs = document.querySelectorAll('.tab-btn');
            const activeTabIndex = Array.from(tabs).indexOf(element);
            casesSwiper.slideTo(activeTabIndex);
        }
    }
}

// FAQ 토글 함수
function toggleFaq(element) {
    const faqAnswer = element.nextElementSibling;
    const isActive = element.classList.contains('active');

    if (isActive) {
        element.classList.remove('active');
        faqAnswer.classList.remove('active');
    } else {
        element.classList.add('active');
        faqAnswer.classList.add('active');
    }
}

// AI 진단 관련 함수들
function selectDiagnosis(type) {
    selectedDiagnosisType = type;
    diagnosisData.type = type;
    openAiDiagnosisModal();
}

function openAiDiagnosisModal() {
    let typeText = '개인회생';
    if (selectedDiagnosisType === 'personal') {
        typeText = '개인회생';
    } else if (selectedDiagnosisType === 'bankruptcy') {
        typeText = '파산면책';
    }

    const descriptionElement = document.querySelector('.modal-description');
    if (descriptionElement) {
        descriptionElement.innerHTML = '';
        const highlightSpan = document.createElement('span');
        highlightSpan.className = 'highlight';
        highlightSpan.textContent = typeText;
        descriptionElement.appendChild(highlightSpan);
        descriptionElement.appendChild(document.createTextNode('으로 AI진단을 시작합니다'));
    }

    showScreen('startScreen');

    const modal = document.getElementById('aiDiagnosisModal');
    if (modal) {
        modal.style.display = 'flex';
        setTimeout(() => {
            modal.classList.add('show');
        }, 10);
    }
}

function showScreen(screenId) {
    document.querySelectorAll('.screen').forEach(screen => {
        screen.classList.remove('active');
    });

    const targetScreen = document.getElementById(screenId);
    if (targetScreen) {
        targetScreen.classList.add('active');
    }
}

function startDiagnosis() {
    showScreen('questionScreen');
}

// 테스트 함수
function testModal() {
    console.log('testModal 호출됨');
    const modal = document.getElementById('aiDiagnosisModal');
    console.log('modal 요소:', modal);
    if (modal) {
        modal.style.display = 'flex';
        modal.classList.add('show');
        console.log('모달 표시됨');
    } else {
        console.log('모달 요소를 찾을 수 없음');
    }
}

// 모달 닫기 함수
function closeModal() {
    const modal = document.getElementById('aiDiagnosisModal');
    if (modal) {
        modal.classList.remove('show');
        setTimeout(() => {
            modal.style.display = 'none';
        }, 400);
    }
}

// 상담 팝업 관련 함수들
function openConsultationPopup() {
    const popup = document.getElementById('consultationPopup');
    const deviceField = document.getElementById('popupDevice');

    const isMobile = window.innerWidth <= 768;
    if (deviceField) {
        deviceField.value = isMobile ? 'Mobile' : 'PC';
    }

    if (popup) {
        popup.style.display = 'flex';
        setTimeout(() => {
            popup.classList.add('show');
            setTimeout(() => {
                validatePopupForm();
                validateSecondPopupForm();
            }, 100);
        }, 10);
        document.body.style.overflow = 'hidden';
    }
}

function closeConsultationPopup() {
    const popup = document.getElementById('consultationPopup');
    if (popup) {
        popup.classList.remove('show');
        setTimeout(() => {
            popup.style.display = 'none';
            document.body.style.overflow = '';
            const form = document.getElementById('consultationPopupForm');
            if (form) {
                form.reset();
            }
            setTimeout(() => {
                validatePopupForm();
                validateSecondPopupForm();
            }, 50);
        }, 300);
    }
}

// 상담 모달 열기 함수
function openConsultationModal() {
    openAiDiagnosisModal();
}

// 카카오톡 상담 열기 함수
function openKakaoTalk() {
    window.open('https://pf.kakao.com/_your_kakao_link', '_blank');
}