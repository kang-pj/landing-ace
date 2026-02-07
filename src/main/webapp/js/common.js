let casesSwiper;
let certificateSwiper;

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

function filterCases(type, element) {
    // 탭 활성화
    document.querySelectorAll('.tab-btn').forEach(btn => btn.classList.remove('active'));
    element.classList.add('active');

    // 모바일과 PC 구분
    const isMobile = window.innerWidth <= 1000;

    // 해당 그룹으로 이동
    let slideIndex = 0;

    if (isMobile) {
        // 모바일: 인덱스 2, 1로 매핑
        if (type === 'all') slideIndex = 0;
        else if (type === 'personal') slideIndex = 2;
        else if (type === 'bankruptcy') slideIndex = 1;
    } else {
        // PC: 정상 인덱스 0, 1, 2로 매핑
        if (type === 'all') slideIndex = 0;
        else if (type === 'personal') slideIndex = 1;
        else if (type === 'bankruptcy') slideIndex = 2;
    }

    if (casesSwiper) {
        casesSwiper.slideTo(slideIndex);
    }
}

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

let selectedDiagnosisType = '';

// 진단 데이터 저장 객체
let diagnosisData = {
    type: '', // 개인회생 또는 파산면책
    debtAmount: 0, // 채무액 (만원)
    monthlyIncome: 0, // 월 소득 (만원)
    assets: 0, // 보유재산 (만원)
    dependents: 0 // 부양가족 수
};

function selectDiagnosis(type) {
    // 선택한 타입 저장
    selectedDiagnosisType = type;
    diagnosisData.type = type;
    // 모달 열기
    openAiDiagnosisModal();
}

function openAiDiagnosisModal() {
    // 선택한 타입에 따라 텍스트 업데이트
    let typeText = '개인회생';
    if (selectedDiagnosisType === 'personal') {
        typeText = '개인회생';
    } else if (selectedDiagnosisType === 'bankruptcy') {
        typeText = '파산면책';
    }

    const descriptionElement = document.querySelector('.modal-description');

    if (descriptionElement) {
        // DOM 조작 방식 사용
        descriptionElement.innerHTML = '';

        const highlightSpan = document.createElement('span');
        highlightSpan.className = 'highlight';
        highlightSpan.textContent = typeText;
        descriptionElement.appendChild(highlightSpan);

        descriptionElement.appendChild(document.createTextNode('으로 AI진단을 시작합니다.'));
    }

    // 첫 번째 화면 표시
    showScreen('startScreen');

    const modal = document.getElementById('aiDiagnosisModal');
    if (modal) {
        modal.style.display = 'flex';
        setTimeout(() => {
            modal.classList.add('show');
        }, 10);
        
        // 모달 열릴 때 첫 페이지 클래스 설정
        const modalContent = modal.querySelector('.modal-content');
        if (modalContent) {
            modalContent.classList.add('first-page');
            modalContent.classList.remove('next-page');
        }
    }
}

function showScreen(screenId) {
    console.log('Showing screen:', screenId);
    // 모든 화면 숨기기
    document.querySelectorAll('.screen').forEach(screen => {
        screen.classList.remove('active');
    });

    // 선택한 화면 보이기
    const targetScreen = document.getElementById(screenId);
    if (targetScreen) {
        targetScreen.classList.add('active');
        console.log('Screen activated:', screenId);
    } else {
        console.log('Screen not found:', screenId);
    }
    
    // modal-content 패딩 클래스 변경
    const modalContent = document.querySelector('.modal-content');
    if (modalContent) {
        if (screenId === 'startScreen') {
            // 첫 페이지: 40px 10px
            modalContent.classList.add('first-page');
            modalContent.classList.remove('next-page');
        } else {
            // 다음 단계: 40px
            modalContent.classList.remove('first-page');
            modalContent.classList.add('next-page');
        }
    }
}

function startDiagnosis() {
    // 질문 화면으로 전환
    showScreen('questionScreen');
}

function nextQuestion() {
    const debtAmount = document.getElementById('debtAmount').value;
    if (!debtAmount) {
        alert('채무 금액을 입력해주세요.');
        return;
    }

    // 채무액 저장 (콤마 제거 후 숫자로 변환)
    diagnosisData.debtAmount = parseInt(debtAmount.replace(/,/g, ''));
    console.log('저장된 채무액:', diagnosisData.debtAmount, '만원');

    // 월소득 화면으로 전환
    showScreen('incomeScreen');
}

function nextIncomeQuestion() {
    const incomeAmount = document.getElementById('incomeAmount').value;
    if (!incomeAmount) {
        alert('월소득을 입력해주세요.');
        return;
    }

    // 월소득 저장 (콤마 제거 후 숫자로 변환)
    diagnosisData.monthlyIncome = parseInt(incomeAmount.replace(/,/g, ''));
    console.log('저장된 월소득:', diagnosisData.monthlyIncome, '만원');

    // 보유자산 화면으로 전환
    showScreen('assetsScreen');
}

function selectAssets(hasAssets) {
    // 선택 상태 업데이트
    document.querySelectorAll('#assetsScreen .choice-option').forEach(option => {
        option.classList.remove('selected');
    });

    // 선택된 옵션 표시
    const selectedOption = hasAssets ?
        document.querySelector('#assetsScreen .choice-option:first-child') :
        document.querySelector('#assetsScreen .choice-option:last-child');
    if (selectedOption) {
        selectedOption.classList.add('selected');
    }

    // 데이터 저장
    diagnosisData.assets = hasAssets ? 1 : 0; // 1: 있음, 0: 없음
    console.log('저장된 보유자산:', hasAssets ? '있음' : '없음');

    // 다음 버튼 활성화
    const nextBtn = document.getElementById('assetsNextBtn');
    if (nextBtn) {
        nextBtn.classList.remove('disabled');
        nextBtn.disabled = false;
    }
}

function nextAssetsQuestion() {
    console.log('현재 진단 데이터:', diagnosisData);
    // 부양가족 화면으로 전환
    showScreen('dependentsScreen');
}

function selectDependents(hasDependents) {
    // 선택 상태 업데이트
    document.querySelectorAll('#dependentsScreen .choice-option').forEach(option => {
        option.classList.remove('selected');
    });

    // 선택된 옵션 표시
    const selectedOption = hasDependents ?
        document.querySelector('#dependentsScreen .choice-option:first-child') :
        document.querySelector('#dependentsScreen .choice-option:last-child');
    if (selectedOption) {
        selectedOption.classList.add('selected');
    }

    // 데이터 저장
    diagnosisData.dependents = hasDependents ? 1 : 0; // 1: 있음, 0: 없음
    console.log('저장된 부양가족:', hasDependents ? '있음' : '없음');

    // 다음 버튼 활성화
    const nextBtn = document.getElementById('dependentsNextBtn');
    if (nextBtn) {
        nextBtn.classList.remove('disabled');
        nextBtn.disabled = false;
    }
}

function nextDependentsQuestion() {
    console.log('최종 진단 데이터:', diagnosisData);
    // 로딩 화면으로 전환
    showScreen('loadingScreen');

    // 2초 후 상담 신청 화면으로 이동
    setTimeout(() => {
        showScreen('consultationScreen');
    }, 2000);
}

function validateInput() {
    const input = document.getElementById('debtAmount');
    const nextBtn = document.getElementById('nextBtn');

    if (!input || !nextBtn) return;

    // 숫자만 입력 허용 (콤마 제거 후 검증)
    let value = input.value.replace(/[^0-9]/g, '');

    // 콤마 추가 (천단위 구분)
    if (value) {
        value = parseInt(value).toLocaleString();
    }

    input.value = value;

    // 버튼 활성화/비활성화
    if (value && value !== '0') {
        nextBtn.classList.remove('disabled');
        nextBtn.disabled = false;
    } else {
        nextBtn.classList.add('disabled');
        nextBtn.disabled = true;
    }
}

function validateIncomeInput() {
    const input = document.getElementById('incomeAmount');
    const nextBtn = document.getElementById('incomeNextBtn');

    if (!input || !nextBtn) return;

    // 숫자만 입력 허용 (콤마 제거 후 검증)
    let value = input.value.replace(/[^0-9]/g, '');

    // 콤마 추가 (천단위 구분)
    if (value) {
        value = parseInt(value).toLocaleString();
    }

    input.value = value;

    // 버튼 활성화/비활성화
    if (value && value !== '0') {
        nextBtn.classList.remove('disabled');
        nextBtn.disabled = false;
    } else {
        nextBtn.classList.add('disabled');
        nextBtn.disabled = true;
    }
}

function nextQuestion() {
    const debtAmount = document.getElementById('debtAmount').value;
    if (!debtAmount) {
        alert('채무 금액을 입력해주세요.');
        return;
    }

    // 채무액 저장 (콤마 제거 후 숫자로 변환)
    diagnosisData.debtAmount = parseInt(debtAmount.replace(/,/g, ''));
    console.log('저장된 채무액:', diagnosisData.debtAmount, '만원');

    // 월 소득 화면으로 전환
    showScreen('incomeScreen');
}

function nextIncomeQuestion() {
    const incomeAmount = document.getElementById('incomeAmount').value;
    if (!incomeAmount) {
        alert('월 소득을 입력해주세요.');
        return;
    }

    // 월 소득 저장 (콤마 제거 후 숫자로 변환)
    diagnosisData.monthlyIncome = parseInt(incomeAmount.replace(/,/g, ''));
    console.log('저장된 월 소득:', diagnosisData.monthlyIncome, '만원');

    // 보유재산 화면으로 전환
    showScreen('assetsScreen');
}

function selectAssets(hasAssets) {
    // 선택 상태 업데이트
    document.querySelectorAll('#assetsScreen .choice-option').forEach(option => {
        option.classList.remove('selected');
    });

    // 선택된 옵션 표시
    const selectedOption = hasAssets ?
        document.querySelector('#assetsScreen .choice-option:first-child') :
        document.querySelector('#assetsScreen .choice-option:last-child');
    selectedOption.classList.add('selected');

    // 데이터 저장
    diagnosisData.assets = hasAssets ? 1 : 0; // 1: 있음, 0: 없음
    console.log('저장된 보유재산:', hasAssets ? '있음' : '없음');

    // 다음 버튼 활성화
    const nextBtn = document.getElementById('assetsNextBtn');
    nextBtn.classList.remove('disabled');
    nextBtn.disabled = false;
}

function nextAssetsQuestion() {
    console.log('현재 진단 데이터:', diagnosisData);
    // 부양가족 화면으로 전환
    showScreen('dependentsScreen');
}

function selectDependents(hasDependents) {
    // 선택 상태 업데이트
    document.querySelectorAll('#dependentsScreen .choice-option').forEach(option => {
        option.classList.remove('selected');
    });

    // 선택된 옵션 표시
    const selectedOption = hasDependents ?
        document.querySelector('#dependentsScreen .choice-option:first-child') :
        document.querySelector('#dependentsScreen .choice-option:last-child');
    selectedOption.classList.add('selected');

    // 데이터 저장
    diagnosisData.dependents = hasDependents ? 1 : 0; // 1: 있음, 0: 없음
    console.log('저장된 부양가족:', hasDependents ? '있음' : '없음');

    // 다음 버튼 활성화
    const nextBtn = document.getElementById('dependentsNextBtn');
    nextBtn.classList.remove('disabled');
    nextBtn.disabled = false;
}

function nextDependentsQuestion() {
    console.log('최종 진단 데이터:', diagnosisData);
    // 로딩 화면으로 전환
    showScreen('loadingScreen');

    // 2초 후 상담 신청 화면으로 이동
    setTimeout(() => {
        showScreen('consultationScreen');

        // 디버깅: 폼 요소들이 존재하는지 확인
        setTimeout(() => {
            const consultationArea = document.querySelector('.consultation-area');
            const formArea = document.querySelector('.consultation-form-area');
            const nameInput = document.getElementById('consultName');
            const phoneInput = document.getElementById('consultPhone');

            console.log('Consultation area found:', !!consultationArea);
            console.log('Form area found:', !!formArea);
            console.log('Name input found:', !!nameInput);
            console.log('Phone input found:', !!phoneInput);

            if (formArea) {
                console.log('Form area display:', window.getComputedStyle(formArea).display);
                console.log('Form area visibility:', window.getComputedStyle(formArea).visibility);
                console.log('Form area opacity:', window.getComputedStyle(formArea).opacity);
            }
        }, 100);
    }, 2000);
}

function validateConsultationForm() {
    const name = document.getElementById('consultName').value.trim();
    const phone = document.getElementById('consultPhone').value.trim();
    const privacyAgree = document.getElementById('privacyAgree').checked;
    const submitBtn = document.getElementById('consultationSubmitBtn');

    console.log('Form validation:', { name, phone, privacyAgree });

    // 휴대폰 번호 숫자만 허용
    const phoneInput = document.getElementById('consultPhone');
    let phoneValue = phoneInput.value.replace(/[^0-9]/g, '');
    phoneInput.value = phoneValue;

    console.log('Phone value after cleaning:', phoneValue);

    // 모든 조건이 만족되면 버튼 활성화
    if (name && phoneValue.length >= 10 && privacyAgree) {
        console.log('All conditions met - enabling button');
        submitBtn.classList.remove('disabled');
        submitBtn.disabled = false;
    } else {
        console.log('Conditions not met - disabling button');
        submitBtn.classList.add('disabled');
        submitBtn.disabled = true;
    }
}

function submitConsultation() {
    const name = document.getElementById('consultName').value.trim();
    const phone = document.getElementById('consultPhone').value.trim();

    console.log('AI 진단 상담 신청 데이터:', {
        name: name,
        phone: phone,
        diagnosisData: diagnosisData
    });

    console.log('전송할 데이터 상세:', {
        debtAmount: diagnosisData.debtAmount,
        monthlyIncome: diagnosisData.monthlyIncome,
        assets: diagnosisData.assets,
        dependents: diagnosisData.dependents,
        type: diagnosisData.type
    });

    // 필수 항목 검증
    if (!name) {
        alert('이름을 입력해 주세요');
        return;
    }

    if (!phone) {
        alert('연락처를 입력해 주세요');
        return;
    }

    // 연락처 형식 검증 (숫자만, 10-11자리)
    const phoneRegex = /^[0-9]{10,11}$/;
    if (!phoneRegex.test(phone)) {
        alert('올바른 연락처를 입력해 주세요 (10-11자리 숫자)');
        return;
    }

    // 제출 버튼 비활성화
    const submitBtn = document.getElementById('consultationSubmitBtn');
    const originalText = submitBtn.textContent;
    submitBtn.disabled = true;
    submitBtn.textContent = '처리중...';

    // 폼 데이터 구성 (AI 진단 데이터 포함)
    const apiFormData = new URLSearchParams();
    apiFormData.append('name', name);
    apiFormData.append('phone', phone);
    apiFormData.append('debtAmount', diagnosisData.debtAmount || '');
    apiFormData.append('income', diagnosisData.monthlyIncome || '');
    apiFormData.append('device', window.innerWidth <= 768 ? 'Mobile' : 'PC');
    apiFormData.append('type', 'AI진단상담신청');

    // AI 진단 추가 데이터
    apiFormData.append('diagnosisType', diagnosisData.type || '');
    apiFormData.append('assets', diagnosisData.assets || '');
    apiFormData.append('dependents', diagnosisData.dependents || '');

    // UTM 파라미터 추가 (URL에서 추출)
    const urlParams = new URLSearchParams(window.location.search);
    apiFormData.append('utm_source', urlParams.get('utm_source') || '');
    apiFormData.append('utm_medium', urlParams.get('utm_medium') || '');
    apiFormData.append('utm_campaign', urlParams.get('utm_campaign') || '');
    apiFormData.append('utm_term', urlParams.get('utm_term') || '');
    apiFormData.append('utm_content', urlParams.get('utm_content') || '');

    // 서버에 데이터 전송
    fetch('/consultation', {
        method: 'POST',
        headers: {
            'Content-Type': 'application/x-www-form-urlencoded',
        },
        body: apiFormData
    })
        .then(response => response.json())
        .then(data => {
            if (data.success) {
                console.log('AI 진단 상담 신청 성공:', data);

                // 기존 모달 닫기
                const modal = document.getElementById('aiDiagnosisModal');
                if (modal) {
                    modal.classList.remove('show');
                    setTimeout(() => {
                        modal.style.display = 'none';
                        // 성공 모달 표시
                        showSuccessModal();
                    }, 400);
                }
            } else {
                console.error('AI 진단 상담 신청 실패:', data.message);
                alert(data.message || '상담 신청 중 오류가 발생했습니다.');
            }
        })
        .catch(error => {
            console.error('네트워크 오류:', error);
            alert('네트워크 오류가 발생했습니다. 잠시 후 다시 시도해 주세요.');
        })
        .finally(() => {
            // 제출 버튼 복원
            if (submitBtn) {
                submitBtn.disabled = false;
                submitBtn.textContent = originalText;
            }
        });
}

function validateInput() {
    const input = document.getElementById('debtAmount');
    const nextBtn = document.getElementById('nextBtn');

    // 숫자만 입력 허용 (콤마 제거 후 검증)
    let value = input.value.replace(/[^0-9]/g, '');

    // 콤마 추가 (천 단위 구분)
    if (value) {
        value = parseInt(value).toLocaleString();
    }

    input.value = value;

    // 버튼 활성화/비활성화
    if (value && value !== '0') {
        nextBtn.classList.remove('disabled');
        nextBtn.disabled = false;
    } else {
        nextBtn.classList.add('disabled');
        nextBtn.disabled = true;
    }
}

function validateIncomeInput() {
    const input = document.getElementById('incomeAmount');
    const nextBtn = document.getElementById('incomeNextBtn');

    // 숫자만 입력 허용 (콤마 제거 후 검증)
    let value = input.value.replace(/[^0-9]/g, '');

    // 콤마 추가 (천 단위 구분)
    if (value) {
        value = parseInt(value).toLocaleString();
    }

    input.value = value;

    // 버튼 활성화/비활성화
    if (value && value !== '0') {
        nextBtn.classList.remove('disabled');
        nextBtn.disabled = false;
    } else {
        nextBtn.classList.add('disabled');
        nextBtn.disabled = true;
    }
}

document.addEventListener('DOMContentLoaded', function () {
    // 토글 버튼 초기 상태 설정 (접힌 상태 - 위쪽 화살표)
    const toggleBtn = document.getElementById('toggleBtn');
    if (toggleBtn) {
        // 초기에는 collapsed 클래스 제거하여 위쪽 화살표 표시
        toggleBtn.classList.remove('collapsed');
    }

    // 모바일에서 상담 폼 초기 상태 설정 (접힌 상태)
    if (window.innerWidth <= 768) {
        const form = document.getElementById('consultationForm');
        if (form && toggleBtn) {
            form.classList.add('collapsed');
            // 폼은 접혀있지만 버튼은 위쪽 화살표 유지
        }
    }

    // 상담 폼 초기 검증 실행
    if (typeof validateConsultationForm === 'function') {
        console.log('Running initial form validation');
        validateConsultationForm();
    } else {
        console.log('validateConsultationForm function not found');
    }

    // 페이지 로드 시 즉시 랜덤 숫자로 설정
    function initializeRandomNumbers() {
        const targetNumber = "750000000000";
        const digitContainers = document.querySelectorAll('.digit-container');
        const isMobile = window.innerWidth <= 768;
        const digitHeight = isMobile ? 35 : 45;

        digitContainers.forEach((container, index) => {
            if (index >= targetNumber.length) return;

            const wheel = container.querySelector('.digit-wheel');
            if (!wheel) return;

            const targetDigit = parseInt(targetNumber[index]);

            // 목표 숫자와 다른 랜덤 숫자로 즉시 설정
            let randomDigit;
            do {
                randomDigit = Math.floor(Math.random() * 10);
            } while (randomDigit === targetDigit);

            wheel.style.transition = 'none';
            wheel.style.transform = 'translateY(' + (-randomDigit * digitHeight) + 'px)';
        });
    }

    // 페이지 로드 시 즉시 실행
    initializeRandomNumbers();

    // 누적 탕감액 휠 피커 애니메이션
    function startAmountAnimation() {
        const targetNumber = "745280126000"; // 745,280,126,000 (12자리)
        const digitContainers = document.querySelectorAll('.digit-container');
        const isMobile = window.innerWidth <= 768;
        const digitHeight = isMobile ? 35 : 45;

        console.log('Starting animation...');
        console.log('Total containers:', digitContainers.length);
        console.log('Target number:', targetNumber);
        console.log('Is mobile:', isMobile, 'Digit height:', digitHeight);

        // 200ms 후 모든 휠이 동시에 목표 숫자로 움직임
        setTimeout(() => {
            digitContainers.forEach((container, index) => {
                if (index >= targetNumber.length) return;

                const targetDigit = parseInt(targetNumber[index]);
                const wheel = container.querySelector('.digit-wheel');

                if (!wheel) return;

                // 최종 위치 계산
                const finalPosition = -targetDigit * digitHeight;

                console.log('Container ' + index + ': Target digit = ' + targetDigit + ', Final position = ' + finalPosition);

                // 자연스럽게 목표 위치로 이동
                wheel.style.transition = 'transform 2s cubic-bezier(0.25, 0.46, 0.45, 0.94)';
                wheel.style.transform = 'translateY(' + finalPosition + 'px)';
            });
        }, 200);
    }

    let animationStarted = false;

    // Intersection Observer로 섹션이 보일 때 애니메이션 시작 (한 번만)
    const reductionSection = document.querySelector('.total-reduction-section');
    if (reductionSection) {
        console.log('Intersection Observer 설정됨');

        const observer = new IntersectionObserver((entries) => {
            entries.forEach(entry => {
                console.log('Intersection 감지:', entry.isIntersecting, 'animationStarted:', animationStarted);

                if (entry.isIntersecting && !animationStarted) {
                    console.log('애니메이션 시작!');
                    animationStarted = true;
                    setTimeout(() => {
                        startAmountAnimation();
                    }, 100);
                    observer.unobserve(entry.target);
                }
            });
        }, {
            threshold: 0.05,
            rootMargin: '300px 0px 0px 0px'
        });

        observer.observe(reductionSection);
    } else {
        console.log('total-reduction-section을 찾을 수 없음');
    }

    // Swiper 초기화
    function initializeSwiper() {
        // 기존 Swiper 제거
        if (casesSwiper) {
            casesSwiper.destroy(true, true);
        }

        if (window.innerWidth <= 1000) {
            // 모바일에서 Swiper 활성화
            casesSwiper = new Swiper('.casesSwiper', {
                slidesPerView: 1,
                spaceBetween: 20,
                loop: true,
                autoplay: {
                    delay: 3000,
                    disableOnInteraction: false,
                    pauseOnMouseEnter: false,
                },
                on: {
                    slideChange: function () {
                        // 모바일에서는 케이스 타입에 따라 탭 활성화
                        const currentSlide = this.slides[this.activeIndex];
                        const caseTypeElement = currentSlide.querySelector('.case-type');

                        if (caseTypeElement) {
                            const caseType = caseTypeElement.textContent.trim();
                            const tabs = document.querySelectorAll('.tab-btn');

                            // 모든 탭 비활성화
                            tabs.forEach(tab => tab.classList.remove('active'));

                            // 케이스 타입에 따라 해당 탭 활성화
                            if (caseType === '개인회생') {
                                const personalTab = document.querySelector('.tab-btn[onclick*="personal"]');
                                if (personalTab) personalTab.classList.add('active');
                            } else if (caseType === '개인파산') {
                                const bankruptcyTab = document.querySelector('.tab-btn[onclick*="bankruptcy"]');
                                if (bankruptcyTab) bankruptcyTab.classList.add('active');
                            } else {
                                // 모바일에서는 기본적으로 개인회생 탭 활성화
                                const personalTab = document.querySelector('.tab-btn[onclick*="personal"]');
                                if (personalTab) personalTab.classList.add('active');
                            }
                        }
                    }
                }
            });
        } else {
            // PC에서도 Swiper 활성화 (탭 전환용)
            casesSwiper = new Swiper('.casesSwiper', {
                slidesPerView: 1,
                spaceBetween: 30,
                loop: true,
                autoplay: {
                    delay: 4000,
                    disableOnInteraction: false,
                    pauseOnMouseEnter: true,
                },
                on: {
                    slideChange: function () {
                        // PC에서는 슬라이드 인덱스에 따라 탭 활성화
                        const tabs = document.querySelectorAll('.tab-btn');
                        tabs.forEach(tab => tab.classList.remove('active'));

                        const realIndex = this.realIndex;
                        if (tabs[realIndex]) {
                            tabs[realIndex].classList.add('active');
                        }
                    }
                }
            });
        }
    }

    // 원본 HTML 데이터 저장
    let originalCasesHTML = '';

    // 모바일에서 케이스 카드를 개별 슬라이드로 재구성
    function restructureCasesForMobile() {
        const swiperWrapper = document.querySelector('.casesSwiper .swiper-wrapper');
        console.log('restructureCasesForMobile called, window width:', window.innerWidth);
        console.log('swiperWrapper found:', !!swiperWrapper);

        // 처음 실행 시 원본 HTML 저장
        if (!originalCasesHTML && swiperWrapper) {
            originalCasesHTML = swiperWrapper.innerHTML;
            console.log('Original HTML saved, length:', originalCasesHTML.length);
        }

        if (window.innerWidth <= 1000) {
            // 모바일: 각 케이스 카드를 개별 슬라이드로 변경
            // 원본 HTML에서 케이스 카드 추출
            const tempDiv = document.createElement('div');
            tempDiv.innerHTML = originalCasesHTML;
            const allCaseCards = tempDiv.querySelectorAll('.case-card');
            console.log('Mobile mode - case cards found:', allCaseCards.length);

            // 기존 슬라이드 제거
            swiperWrapper.innerHTML = '';

            // 각 케이스 카드를 개별 슬라이드로 추가
            allCaseCards.forEach(card => {
                const slide = document.createElement('div');
                slide.className = 'swiper-slide';

                // 케이스 타입 정보를 데이터 속성으로 추가
                const caseTypeElement = card.querySelector('.case-type');
                if (caseTypeElement) {
                    const caseType = caseTypeElement.textContent.trim();
                    slide.setAttribute('data-case-type', caseType);
                }

                slide.appendChild(card.cloneNode(true));
                swiperWrapper.appendChild(slide);
            });
            console.log('Mobile slides created:', swiperWrapper.children.length);

            // Swiper 업데이트
            if (casesSwiper) {
                casesSwiper.update();
                casesSwiper.updateSlides();
            }
        } else {
            // PC: 원래 HTML 구조로 복원
            console.log('PC mode - restoring original HTML');
            swiperWrapper.innerHTML = originalCasesHTML;
            console.log('PC HTML restored, children:', swiperWrapper.children.length);

            // Swiper 업데이트
            if (casesSwiper) {
                casesSwiper.update();
                casesSwiper.updateSlides();
            }
        }
    }

    // 모바일에서 초기 탭 설정
    function initializeMobileTabs() {
        if (window.innerWidth <= 1000) {
            const tabs = document.querySelectorAll('.tab-btn');
            tabs.forEach(tab => tab.classList.remove('active'));

            // 개인회생 탭을 기본으로 활성화
            const personalTab = document.querySelector('.tab-btn[onclick*="personal"]');
            if (personalTab) personalTab.classList.add('active');
        }
    }

    // 초기 실행
    restructureCasesForMobile();
    initializeSwiper();
    initializeMobileTabs();

    // 윈도우 리사이즈 시 재구성
    window.addEventListener('resize', function () {
        restructureCasesForMobile();
        initializeSwiper();
        initializeMobileTabs();
    });

    // 증서 Swiper 초기화
    certificateSwiper = new Swiper('.certificateSwiper', {
        slidesPerView: 1,
        loop: false,
        autoplay: {
            delay: 2000,
            disableOnInteraction: false,
        },
        pagination: {
            el: '.certificateSwiper .swiper-pagination',
            clickable: true,
        },
        on: {
            init: function () {
                // 마우스 호버 이벤트 추가
                const swiperEl = this.el;
                swiperEl.addEventListener('mouseenter', () => {
                    this.autoplay.stop();
                });
                swiperEl.addEventListener('mouseleave', () => {
                    this.autoplay.start();
                });
            }
        }
    });

    const form = document.querySelector('form');
    if (form) {
        form.addEventListener('submit', function (e) {
            e.preventDefault();
            const privacyCheckbox = document.getElementById('privacy-agree');
            if (!privacyCheckbox.checked) {
                alert('개인정보 수집 및 이용에 동의해주세요.');
                return;
            }
            // 상담 신청 완료 - alert 제거
            console.log('상담 신청이 접수되었습니다. 빠른 시일 내에 연락드리겠습니다.');
        });
    }

    const topBtn = document.querySelector('.top-btn');
    if (topBtn) {
        topBtn.addEventListener('click', function (e) {
            e.preventDefault();
            window.scrollTo({ top: 0, behavior: 'smooth' });
        });
    }

    // 모달 관련 기능
    const modal = document.getElementById('aiDiagnosisModal');
    const modalOverlay = document.querySelector('.modal-overlay');
    const closeBtn = document.querySelector('.modal-close');

    // 모달 닫기 함수
    function closeModal() {
        const modal = document.getElementById('aiDiagnosisModal');
        if (modal) {
            modal.classList.remove('show');
            // 애니메이션 완료 후 display none
            setTimeout(() => {
                modal.style.display = 'none';
            }, 400);
        }
    }

    // 닫기 버튼 클릭 시 모달 닫기
    if (closeBtn) {
        closeBtn.addEventListener('click', closeModal);
    }
});

// 햄버거 메뉴 함수들
function toggleMobileNav() {
    const mobileNav = document.getElementById('mobileNav');
    const hamburgerMenu = document.querySelector('.hamburger-menu');
    const floatingBtnContainer = document.getElementById('floatingBtnContainer');

    if (mobileNav.classList.contains('active')) {
        closeMobileNav();
    } else {
        mobileNav.classList.add('active');
        hamburgerMenu.classList.add('active');
        document.body.style.overflow = 'hidden'; // 스크롤 방지

        // 아일랜드(상단 고정 버튼) 숨기기
        if (floatingBtnContainer) {
            floatingBtnContainer.style.display = 'none';
        }
    }
}

function closeMobileNav(event) {
    // 배경 클릭 시에만 닫기 (event가 있고 target이 mobile-nav인 경우)
    if (event && event.target !== document.getElementById('mobileNav')) {
        return;
    }

    const mobileNav = document.getElementById('mobileNav');
    const hamburgerMenu = document.querySelector('.hamburger-menu');
    const floatingBtnContainer = document.getElementById('floatingBtnContainer');

    mobileNav.classList.remove('active');
    hamburgerMenu.classList.remove('active');
    document.body.style.overflow = ''; // 스크롤 복원

    // 아일랜드(상단 고정 버튼) 다시 보이기 (조건부)
    if (floatingBtnContainer && window.innerWidth <= 768) {
        // 스크롤 위치에 따라 표시 여부 결정
        const scrollY = window.scrollY;
        const mainBackground = document.querySelector('.main-background');
        if (mainBackground) {
            const rect = mainBackground.getBoundingClientRect();
            const consultationSectionBottom = rect.bottom + window.scrollY;

            if (scrollY > consultationSectionBottom - 100) {
                floatingBtnContainer.style.display = 'block';
            }
        }
    }
}

function scrollToSection(sectionId) {
    // 먼저 모바일 네비게이션 닫기
    closeMobileNav();

    // 네비게이션 닫기 애니메이션 완료 후 스크롤 (더 긴 지연)
    setTimeout(() => {
        const targetSection = document.getElementById(sectionId);
        if (targetSection) {
            const headerHeight = document.querySelector('.header').offsetHeight;
            const targetPosition = targetSection.offsetTop - headerHeight - 20;
            const startPosition = window.pageYOffset;
            const distance = targetPosition - startPosition;
            const duration = 600; // 600ms 동안 스크롤
            let start = null;

            // easeInOutCubic 애니메이션 함수
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
}

// PC용 스무스 스크롤 함수 (모바일 네비게이션 닫기 없음)
function smoothScrollToSection(sectionId) {
    const targetSection = document.getElementById(sectionId);
    if (targetSection) {
        const headerHeight = document.querySelector('.header').offsetHeight;
        const floatingHeaderHeight = document.querySelector('.floating-header').offsetHeight;
        const targetPosition = targetSection.offsetTop - headerHeight - floatingHeaderHeight - 20;
        const startPosition = window.pageYOffset;
        const distance = targetPosition - startPosition;
        const duration = 800; // 800ms 동안 스크롤 (PC는 조금 더 부드럽게)
        let start = null;

        // easeInOutCubic 애니메이션 함수
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
}

function openKakaoTalk() {
    // 카카오톡 상담 링크 (실제 링크로 교체 필요)
    window.open('https://pf.kakao.com/_your_kakao_link', '_blank');
}

// ESC 키로 모바일 메뉴 닫기
document.addEventListener('keydown', function (event) {
    if (event.key === 'Escape') {
        closeMobileNav();
    }
});

// TOP 버튼 부드러운 스크롤
document.addEventListener('DOMContentLoaded', function () {
    // 플로팅 헤더와 버튼 컨테이너 제어
    const floatingHeader = document.getElementById('floatingHeader');
    const floatingBtnContainer = document.getElementById('floatingBtnContainer');
    const topButton = document.getElementById('topButton');
    const consultationSection = document.querySelector('.consultation-section');
    const mainBackground = document.querySelector('.main-background');

    let consultationSectionBottom = 0;

    // 상담 섹션의 하단 위치 계산
    function calculateConsultationBottom() {
        if (mainBackground) {
            const rect = mainBackground.getBoundingClientRect();
            consultationSectionBottom = rect.bottom + window.scrollY;
        }
    }

    // 초기 계산
    calculateConsultationBottom();

    // 리사이즈 시 재계산
    window.addEventListener('resize', calculateConsultationBottom);

    // 스크롤에 따른 상단 고정 요소들 제어
    window.addEventListener('scroll', function () {
        const scrollY = window.scrollY;
        const consultationForm = document.querySelector('.consultation-form');
        const pcConsultationContainer = document.querySelector('.pc-consultation-container');

        // consultation-form의 위치 확인
        if (consultationForm && pcConsultationContainer) {
            const formRect = consultationForm.getBoundingClientRect();
            const isFormVisible = formRect.top < window.innerHeight && formRect.bottom > 0;

            // consultation-form이 화면에서 사라지면 pc-consultation-container 표시
            if (!isFormVisible && formRect.bottom < 0) {
                pcConsultationContainer.classList.add('show');
            } else {
                pcConsultationContainer.classList.remove('show');
            }
        }

        // 상담 섹션을 벗어나면 상단 고정 요소들 표시
        if (scrollY > consultationSectionBottom - 100) {
            // 플로팅 헤더는 숨기고 버튼 컨테이너만 표시
            floatingHeader.classList.remove('show');
            floatingBtnContainer.classList.add('show');
            document.body.classList.add('floating-btn-visible');
        } else {
            floatingHeader.classList.remove('show');
            floatingBtnContainer.classList.remove('show');
            document.body.classList.remove('floating-btn-visible');
        }

        // TOP 버튼 표시/숨김 (스크롤이 생기는 시점부터)
        if (scrollY > 200) {
            topButton.classList.add('show');
        } else {
            topButton.classList.remove('show');
        }
    });
});

// TOP 버튼 클릭 시 최상단으로 스크롤
function scrollToTop() {
    window.scrollTo({
        top: 0,
        behavior: 'smooth'
    });
}

// 연락처 입력 시 숫자만 허용
function formatPhoneNumber(input) {
    // 숫자만 남기기
    let value = input.value.replace(/[^0-9]/g, '');

    // 11자리 제한
    if (value.length > 11) {
        value = value.slice(0, 11);
    }

    input.value = value;
}

// 메인 상담 신청 폼 제출 함수
function submitMainConsultationForm(event) {
    event.preventDefault();

    // 필수 항목 검증
    const name = document.getElementById('name').value.trim();
    const phone = document.getElementById('phone').value.trim();
    const debt = document.getElementById('debt').value;
    const income = document.getElementById('income').value;
    const privacyAgree = document.getElementById('privacy-agree').checked;

    if (!name) {
        alert('이름을 입력해 주세요');
        return;
    }

    if (!phone) {
        alert('연락처를 입력해 주세요');
        return;
    }

    if (!debt) {
        alert('채무금액을 선택해 주세요');
        return;
    }

    if (!income) {
        alert('월소득을 선택해 주세요');
        return;
    }

    if (!privacyAgree) {
        alert('개인정보 수집 및 이용에 동의해 주세요');
        return;
    }

    // 연락처 형식 검증 (숫자만, 10-11자리)
    const phoneRegex = /^[0-9]{10,11}$/;
    if (!phoneRegex.test(phone)) {
        alert('올바른 연락처를 입력해 주세요 (10-11자리 숫자)');
        return;
    }

    // 제출 버튼 비활성화
    const submitBtn = document.querySelector('.submit-btn');
    const originalText = submitBtn.textContent;
    submitBtn.disabled = true;
    submitBtn.textContent = '처리중...';

    // 폼 데이터 구성
    const apiFormData = new URLSearchParams();
    apiFormData.append('name', name);
    apiFormData.append('phone', phone);
    apiFormData.append('debtAmount', debt);
    apiFormData.append('income', income);
    apiFormData.append('device', window.innerWidth <= 768 ? 'Mobile' : 'PC');
    apiFormData.append('type', '무료상담신청(메인폼)');

    // UTM 파라미터 추가
    const urlParams = new URLSearchParams(window.location.search);
    apiFormData.append('utm_source', urlParams.get('utm_source') || '');
    apiFormData.append('utm_medium', urlParams.get('utm_medium') || '');
    apiFormData.append('utm_campaign', urlParams.get('utm_campaign') || '');
    apiFormData.append('utm_term', urlParams.get('utm_term') || '');
    apiFormData.append('utm_content', urlParams.get('utm_content') || '');

    // 서버에 데이터 전송
    fetch('/consultation', {
        method: 'POST',
        headers: {
            'Content-Type': 'application/x-www-form-urlencoded',
        },
        body: apiFormData
    })
        .then(response => response.json())
        .then(data => {
            if (data.success) {
                console.log('상담 신청 성공:', data);

                // 성공 모달 표시
                showSuccessModal('상담 신청이 완료되었습니다!', '빠른 시일 내에 연락드리겠습니다.');

                // 폼 초기화
                document.getElementById('mainConsultationForm').reset();

            } else {
                console.error('상담 신청 실패:', data);
                alert('상담 신청 중 오류가 발생했습니다. 다시 시도해 주세요.');
            }
        })
        .catch(error => {
            console.error('상담 신청 오류:', error);
            alert('상담 신청 중 오류가 발생했습니다. 다시 시도해 주세요.');
        })
        .finally(() => {
            // 제출 버튼 복원
            submitBtn.disabled = false;
            submitBtn.textContent = originalText;
        });
}

// PC 연락처 입력 포맷팅 함수 (숫자만 허용)
function formatPcPhoneNumber(input) {
    // 숫자만 남기기
    let value = input.value.replace(/[^0-9]/g, '');

    // 11자리 제한
    if (value.length > 11) {
        value = value.slice(0, 11);
    }

    input.value = value;
}

// PC 폼 입력 검증 함수들 (버튼 클릭 시에만 실행)
function validatePcNameInput(input) {
    const errorElement = document.getElementById('pcNameError');
    const name = input.value.trim();

    if (!name) {
        input.classList.add('error');
        errorElement.textContent = '필수 항목입니다.';
        return false;
    } else {
        input.classList.remove('error');
        errorElement.textContent = '';
        return true;
    }
}

function validatePcPhoneInput(input) {
    const errorElement = document.getElementById('pcPhoneError');
    const phone = input.value.trim();

    if (!phone) {
        input.classList.add('error');
        errorElement.textContent = '필수 항목입니다.';
        return false;
    } else if (phone.length < 10 || phone.length > 11) {
        input.classList.add('error');
        errorElement.textContent = '연락처는 10~11자리로 입력해주세요.';
        return false;
    } else if (!/^[0-9]{10,11}$/.test(phone)) {
        input.classList.add('error');
        errorElement.textContent = '숫자만 입력해주세요.';
        return false;
    } else {
        input.classList.remove('error');
        errorElement.textContent = '';
        return true;
    }
}

// PC 상담 신청 함수
function submitPcConsultation() {
    // 입력 필드 가져오기
    const nameInput = document.querySelector('.pc-consultation-form .name-input');
    const phoneInput = document.querySelector('.pc-consultation-form .phone-input');
    const privacyCheck = document.getElementById('pcPrivacyCheck');

    if (!nameInput || !phoneInput || !privacyCheck) {
        console.error('PC 상담 폼 요소를 찾을 수 없습니다.');
        return;
    }

    // 입력 검증
    const isNameValid = validatePcNameInput(nameInput);
    const isPhoneValid = validatePcPhoneInput(phoneInput);

    const name = nameInput.value.trim();
    const phone = phoneInput.value.trim();
    const privacyAgree = privacyCheck.checked;

    // 개인정보 동의 검증
    if (!privacyAgree) {
        showErrorModal('개인정보 수집 및 이용에 동의해 주세요');
        return;
    }

    // 모든 검증이 통과되지 않으면 제출하지 않음
    if (!isNameValid || !isPhoneValid) {
        return;
    }

    // 제출 버튼 비활성화
    const submitBtn = document.querySelector('.pc-consultation-btn.primary');
    const originalText = submitBtn.textContent;
    submitBtn.disabled = true;
    submitBtn.textContent = '처리중...';

    // 폼 데이터 구성
    const apiFormData = new URLSearchParams();
    apiFormData.append('name', name);
    apiFormData.append('phone', phone);
    apiFormData.append('debtAmount', ''); // PC 폼에는 채무금액 필드가 없음
    apiFormData.append('income', ''); // PC 폼에는 월소득 필드가 없음
    apiFormData.append('device', 'PC');
    apiFormData.append('type', '무료상담신청(PC폼)');

    // UTM 파라미터 추가
    const urlParams = new URLSearchParams(window.location.search);
    apiFormData.append('utm_source', urlParams.get('utm_source') || '');
    apiFormData.append('utm_medium', urlParams.get('utm_medium') || '');
    apiFormData.append('utm_campaign', urlParams.get('utm_campaign') || '');
    apiFormData.append('utm_term', urlParams.get('utm_term') || '');
    apiFormData.append('utm_content', urlParams.get('utm_content') || '');

    // 서버에 데이터 전송
    fetch('/consultation', {
        method: 'POST',
        headers: {
            'Content-Type': 'application/x-www-form-urlencoded',
        },
        body: apiFormData
    })
        .then(response => {
            // 응답 상태 코드 확인
            if (response.ok || response.status === 200) {
                return response.json();
            }
            // 200번대 응답이면 성공으로 처리
            if (response.status >= 200 && response.status < 300) {
                return { success: true };
            }
            throw new Error('Network response was not ok');
        })
        .then(data => {
            console.log('PC 상담 신청 성공:', data);

            // 성공 모달 표시
            showSuccessModal();

            // 폼 초기화
            nameInput.value = '';
            phoneInput.value = '';
            nameInput.classList.remove('error');
            phoneInput.classList.remove('error');
            document.getElementById('pcNameError').textContent = '';
            document.getElementById('pcPhoneError').textContent = '';
        })
        .catch(error => {
            console.error('PC 상담 신청 오류:', error);
            // 에러가 발생해도 DB에 저장되었을 수 있으므로 성공 모달 표시
            showSuccessModal();
            
            // 폼 초기화
            nameInput.value = '';
            phoneInput.value = '';
            nameInput.classList.remove('error');
            phoneInput.classList.remove('error');
            document.getElementById('pcNameError').textContent = '';
            document.getElementById('pcPhoneError').textContent = '';
        })
        .finally(() => {
            // 제출 버튼 복원
            submitBtn.disabled = false;
            submitBtn.textContent = originalText;
        });
}

// 상담 팝업 관련 함수들
function openConsultationPopup() {
    const popup = document.getElementById('consultationPopup');
    const deviceField = document.getElementById('popupDevice');

    // 디바이스 정보 설정 (PC/Mobile)
    const isMobile = window.innerWidth <= 768;
    deviceField.value = isMobile ? 'Mobile' : 'PC';

    // 기존 폼에서 입력된 정보를 팝업으로 전달
    const mainFormName = document.getElementById('name').value.trim();
    const mainFormPhone = document.getElementById('phone').value.trim();
    const mainFormDebt = document.getElementById('debt').value;
    const mainFormIncome = document.getElementById('income').value;

    // 팝업 폼의 필드들에 값 설정
    if (mainFormName) {
        document.getElementById('popupName').value = mainFormName;
    }
    if (mainFormPhone) {
        document.getElementById('popupPhone').value = mainFormPhone;
    }
    if (mainFormDebt) {
        document.getElementById('popupDebt').value = mainFormDebt;
    }
    if (mainFormIncome) {
        document.getElementById('popupIncome').value = mainFormIncome;
    }

    if (popup) {
        popup.style.display = 'flex';
        setTimeout(() => {
            popup.classList.add('show');
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
            // 폼 초기화
            document.getElementById('consultationPopupForm').reset();
        }, 300);
    }
}

function closeSuccessPopup() {
    const popup = document.getElementById('consultationSuccessPopup');
    if (popup) {
        popup.classList.remove('show');
        setTimeout(() => {
            popup.style.display = 'none';
            document.body.style.overflow = '';
        }, 300);
    }
}

function submitConsultationForm(event) {
    event.preventDefault();

    const form = document.getElementById('consultationPopupForm');
    const formData = new FormData(form);

    // 필수 항목 검증
    const name = formData.get('name').trim();
    const phone = formData.get('phone').trim();
    const privacyAgree = formData.get('privacyAgree');

    if (!name) {
        alert('이름을 입력해 주세요');
        return;
    }

    if (!phone) {
        alert('연락처를 입력해 주세요');
        return;
    }

    if (!privacyAgree) {
        alert('개인정보 수집 및 이용에 동의해 주세요');
        return;
    }

    // 연락처 형식 검증 (숫자만, 10-11자리)
    const phoneRegex = /^[0-9]{10,11}$/;
    if (!phoneRegex.test(phone)) {
        alert('올바른 연락처를 입력해 주세요 (10-11자리 숫자)');
        return;
    }

    // 제출 버튼 비활성화
    const submitBtn = form.querySelector('.consultation-submit-popup-btn');
    const originalText = submitBtn.textContent;
    submitBtn.disabled = true;
    submitBtn.textContent = '처리중...';

    // 폼 데이터 재구성 (서버 API에 맞게) - URLSearchParams 사용
    const apiFormData = new URLSearchParams();
    apiFormData.append('name', name);
    apiFormData.append('phone', phone);
    apiFormData.append('debtAmount', formData.get('debtAmount') || '');
    apiFormData.append('income', formData.get('income') || '');
    apiFormData.append('device', formData.get('device'));
    apiFormData.append('type', '무료상담신청(팝업)');

    // UTM 파라미터 추가 (URL에서 추출)
    const urlParams = new URLSearchParams(window.location.search);
    apiFormData.append('utm_source', urlParams.get('utm_source') || '');
    apiFormData.append('utm_medium', urlParams.get('utm_medium') || '');
    apiFormData.append('utm_campaign', urlParams.get('utm_campaign') || '');
    apiFormData.append('utm_term', urlParams.get('utm_term') || '');
    apiFormData.append('utm_content', urlParams.get('utm_content') || '');

    // 서버에 데이터 전송
    fetch('/consultation', {
        method: 'POST',
        headers: {
            'Content-Type': 'application/x-www-form-urlencoded',
        },
        body: apiFormData
    })
        .then(response => response.json())
        .then(data => {
            if (data.success) {
                console.log('상담 신청 성공:', data);

                // 상담 신청 팝업 닫기
                closeConsultationPopup();

                // 성공 팝업 표시
                setTimeout(() => {
                    const successPopup = document.getElementById('consultationSuccessPopup');
                    if (successPopup) {
                        successPopup.style.display = 'flex';
                        setTimeout(() => {
                            successPopup.classList.add('show');
                        }, 10);
                        document.body.style.overflow = 'hidden';
                    }
                }, 400);

            } else {
                console.error('상담 신청 실패:', data.message);
                alert(data.message || '상담 신청 중 오류가 발생했습니다.');
            }
        })
        .catch(error => {
            console.error('네트워크 오류:', error);
            alert('네트워크 오류가 발생했습니다. 잠시 후 다시 시도해 주세요.');
        })
        .finally(() => {
            // 제출 버튼 복원
            submitBtn.disabled = false;
            submitBtn.textContent = originalText;
        });
}

// 팝업 외부 클릭 시 닫기
document.addEventListener('click', function (event) {
    const consultationPopup = document.getElementById('consultationPopup');
    const successPopup = document.getElementById('consultationSuccessPopup');

    if (event.target === consultationPopup) {
        closeConsultationPopup();
    }

    if (event.target === successPopup) {
        closeSuccessPopup();
    }
});

// ESC 키로 팝업 닫기
document.addEventListener('keydown', function (event) {
    if (event.key === 'Escape') {
        closeConsultationPopup();
        closeSuccessPopup();
    }
});

// 상담 모달 열기 함수
function openConsultationModal() {
    // 기존 AI 진단 모달 대신 상담 팝업 열기
    openConsultationPopup();
}

// 카카오톡 상담 열기 함수
function openKakaoTalk() {
    // 카카오톡 상담 링크 (실제 링크로 교체 필요)
    window.open('https://pf.kakao.com/_your_kakao_link', '_blank');
}

// 하단 상담바 토글 함수
function toggleConsultationForm() {
    const expandedForm = document.getElementById('expandedForm');
    const toggleBtn = document.getElementById('toggleBtn');
    const expandIcon = toggleBtn.querySelector('.expand-icon');
    const closeIcon = toggleBtn.querySelector('.close-icon');

    if (expandedForm && toggleBtn) {
        if (expandedForm.classList.contains('show')) {
            // 폼 닫기
            expandedForm.classList.remove('show');
            toggleBtn.classList.remove('collapsed');
            // 펼치기 아이콘 보이기, 닫기 아이콘 숨기기
            expandIcon.style.display = 'block';
            closeIcon.style.display = 'none';
        } else {
            // 폼 열기
            expandedForm.classList.add('show');
            toggleBtn.classList.add('collapsed');
            // 닫기 아이콘 보이기, 펼치기 아이콘 숨기기
            expandIcon.style.display = 'none';
            closeIcon.style.display = 'block';
        }
    }
}

// 하단 상담바 폼 열기 함수
function openConsultationForm() {
    const expandedForm = document.getElementById('expandedForm');
    const toggleBtn = document.getElementById('toggleBtn');
    const expandIcon = toggleBtn ? toggleBtn.querySelector('.expand-icon') : null;
    const closeIcon = toggleBtn ? toggleBtn.querySelector('.close-icon') : null;

    if (expandedForm && !expandedForm.classList.contains('show')) {
        expandedForm.classList.add('show');
        if (toggleBtn) {
            toggleBtn.classList.add('collapsed');
        }
        if (expandIcon && closeIcon) {
            expandIcon.style.display = 'none';
            closeIcon.style.display = 'block';
        }
    }
}

// 이름/연락처 입력창 포커스 이벤트 리스너 추가
document.addEventListener('DOMContentLoaded', function () {
    const nameInput = document.getElementById('mobileNameInput');
    const phoneInput = document.getElementById('mobilePhoneInput');
    const consultationBar = document.querySelector('.bottom-consultation-bar');

    if (nameInput) {
        nameInput.addEventListener('focus', function () {
            openConsultationForm();
            adjustBarForKeyboard();
        });

        nameInput.addEventListener('blur', function () {
            resetBarPosition();
        });
    }

    if (phoneInput) {
        phoneInput.addEventListener('focus', function () {
            openConsultationForm();
            adjustBarForKeyboard();
        });

        phoneInput.addEventListener('blur', function () {
            resetBarPosition();
        });
    }

    // 키보드가 올라올 때 상담바를 키보드 위로 이동
    function adjustBarForKeyboard() {
        if (window.innerWidth <= 768 && consultationBar) {
            // Visual Viewport API를 사용하여 키보드 높이 감지
            if (window.visualViewport) {
                const viewportHeight = window.visualViewport.height;
                const windowHeight = window.innerHeight;
                const keyboardHeight = windowHeight - viewportHeight;

                // 키보드가 충분히 올라왔을 때만 조정 (100px 이상)
                if (keyboardHeight > 100) {
                    consultationBar.style.bottom = keyboardHeight + 'px';
                    consultationBar.style.transition = 'bottom 0.3s ease';
                }
            }
        }
    }

    // 키보드가 내려갈 때 상담바를 원래 위치로 복원
    function resetBarPosition() {
        if (consultationBar) {
            setTimeout(() => {
                consultationBar.style.bottom = '0px';
                consultationBar.style.transition = 'bottom 0.3s ease';
            }, 200);
        }
    }

    // Visual Viewport 변경 감지 (키보드 올라오고 내려갈 때)
    let keyboardTimeout;
    if (window.visualViewport) {
        window.visualViewport.addEventListener('resize', function () {
            // 기존 타이머 클리어
            if (keyboardTimeout) {
                clearTimeout(keyboardTimeout);
            }

            // 300ms 후에 실행하여 불필요한 호출 방지
            keyboardTimeout = setTimeout(() => {
                const activeElement = document.activeElement;
                const isInputFocused = activeElement &&
                    (activeElement.id === 'mobileNameInput' ||
                        activeElement.id === 'mobilePhoneInput' ||
                        activeElement.id === 'mobileDebtAmount' ||
                        activeElement.id === 'mobileIncome');

                if (isInputFocused) {
                    adjustBarForKeyboard();
                } else {
                    resetBarPosition();
                }
            }, 300);
        });
    }

    // 확장 폼의 다른 입력 필드들에도 동일한 이벤트 추가
    const debtAmountSelect = document.getElementById('mobileDebtAmount');
    const incomeSelect = document.getElementById('mobileIncome');

    if (debtAmountSelect) {
        debtAmountSelect.addEventListener('focus', function () {
            adjustBarForKeyboard();
        });
        debtAmountSelect.addEventListener('blur', function () {
            resetBarPosition();
        });
    }

    if (incomeSelect) {
        incomeSelect.addEventListener('focus', function () {
            adjustBarForKeyboard();
        });
        incomeSelect.addEventListener('blur', function () {
            resetBarPosition();
        });
    }
});

// 모바일용 상담 알림 Swiper 초기화 (768px 이하에서만)
let mobileConsultationSwiper = null;
let isAutoplayRunning = true;

function initMobileConsultationSwiper() {
    if (window.innerWidth <= 768) {
        // 기존 Swiper 인스턴스가 있으면 제거
        if (mobileConsultationSwiper) {
            mobileConsultationSwiper.destroy(true, true);
            mobileConsultationSwiper = null;
        }

        // 새 Swiper 초기화
        setTimeout(() => {
            mobileConsultationSwiper = new Swiper('.mobile-consultation-swiper', {
                direction: 'vertical',
                slidesPerView: 5,
                slidesPerGroup: 1,
                spaceBetween: 0,
                loop: true,
                loopedSlides: 20,
                loopAdditionalSlides: 10,
                autoplay: {
                    delay: 1000,
                    disableOnInteraction: false,
                    pauseOnMouseEnter: false,
                    reverseDirection: true,
                },
                speed: 300,
                allowTouchMove: false,
                freeMode: false,
                watchSlidesProgress: true,
                centeredSlides: false,
                normalizeSlideIndex: true,
            });
            isAutoplayRunning = true;
        }, 100);
    }
}

// 페이지 로드 시 모바일 Swiper 초기화
document.addEventListener('DOMContentLoaded', function () {
    initMobileConsultationSwiper();
});

// 윈도우 리사이즈 시 Swiper 재초기화
window.addEventListener('resize', function () {
    setTimeout(() => {
        initMobileConsultationSwiper();
    }, 100);
});

// 모바일 폼 유효성 검증 함수
function validateMobileForm() {
    const name = document.getElementById('mobileNameInput').value.trim();
    const phone = document.getElementById('mobilePhoneInput').value.trim();
    // 채무액, 월소득 필드 제외
    // const debtAmount = document.getElementById('mobileDebtAmount').value;
    // const income = document.getElementById('mobileIncome').value;
    const privacyAgree = document.getElementById('mobilePrivacyAgree').checked;
    const submitBtn = document.getElementById('mobileSubmitBtn');

    // 이름, 연락처, 개인정보 동의만 확인
    if (name && phone && privacyAgree) {
        submitBtn.disabled = false;
        submitBtn.style.opacity = '1';
        submitBtn.style.cursor = 'pointer';
    } else {
        submitBtn.disabled = true;
        submitBtn.style.opacity = '0.5';
        submitBtn.style.cursor = 'not-allowed';
    }
}

// 모바일 상담 신청 제출
function submitMobileConsultation() {
    console.log('=== 모바일 상담 신청 시작 ===');

    // 요소 존재 확인 (채무액, 월소득 제외)
    const nameElement = document.getElementById('mobileNameInput');
    const phoneElement = document.getElementById('mobilePhoneInput');
    // const debtAmountElement = document.getElementById('mobileDebtAmount');
    // const incomeElement = document.getElementById('mobileIncome');
    const privacyElement = document.getElementById('mobilePrivacyAgree');

    console.log('요소 존재 확인:');
    console.log('nameElement:', nameElement);
    console.log('phoneElement:', phoneElement);
    console.log('privacyElement:', privacyElement);

    if (!nameElement) {
        console.error('mobileNameInput 요소를 찾을 수 없습니다!');
        alert('폼 요소를 찾을 수 없습니다. 페이지를 새로고침해 주세요.');
        return;
    }

    if (!phoneElement) {
        console.error('mobilePhoneInput 요소를 찾을 수 없습니다!');
        alert('폼 요소를 찾을 수 없습니다. 페이지를 새로고침해 주세요.');
        return;
    }

    const name = nameElement.value.trim();
    const phone = phoneElement.value.trim();
    // const debtAmount = debtAmountElement ? debtAmountElement.value : '';
    // const income = incomeElement ? incomeElement.value : '';
    const privacyAgree = privacyElement ? privacyElement.checked : false;

    console.log('입력값 확인:');
    console.log('name:', "'" + name + "'");
    console.log('phone:', "'" + phone + "'");
    console.log('privacyAgree:', privacyAgree);

    // 필수 항목 검증
    if (!name) {
        console.log('이름 검증 실패 - 값:', "'" + name + "'");
        alert('이름을 입력해 주세요');
        nameElement.focus();
        return;
    }

    if (!phone) {
        console.log('연락처 검증 실패 - 값:', "'" + phone + "'");
        alert('연락처를 입력해 주세요');
        phoneElement.focus();
        return;
    }

    if (!privacyAgree) {
        console.log('개인정보 동의 검증 실패');
        alert('개인정보 수집 및 이용에 동의해 주세요');
        return;
    }

    // 연락처 형식 검증 (숫자만, 10-11자리)
    const phoneRegex = /^[0-9]{10,11}$/;
    if (!phoneRegex.test(phone)) {
        console.log('연락처 형식 검증 실패:', phone);
        alert('올바른 연락처를 입력해 주세요 (10-11자리 숫자)');
        phoneElement.focus();
        return;
    }

    console.log('모든 검증 통과!');

    // 디바이스 정보 설정
    const isMobile = window.innerWidth <= 768;

    // URLSearchParams로 폼 데이터 수집 (채무액, 월소득 제외)
    const formData = new URLSearchParams();
    formData.append('name', name);
    formData.append('phone', phone);
    formData.append('debtAmount', ''); // 빈 값으로 전송
    formData.append('income', ''); // 빈 값으로 전송
    formData.append('device', isMobile ? 'Mobile' : 'PC');
    formData.append('type', '무료상담신청(모바일)');

    // UTM 파라미터 추가 (URL에서 추출)
    const urlParams = new URLSearchParams(window.location.search);
    formData.append('utm_source', urlParams.get('utm_source') || '');
    formData.append('utm_medium', urlParams.get('utm_medium') || '');
    formData.append('utm_campaign', urlParams.get('utm_campaign') || '');
    formData.append('utm_term', urlParams.get('utm_term') || '');
    formData.append('utm_content', urlParams.get('utm_content') || '');

    // FormData 내용 확인
    console.log('전송할 데이터:');
    for (let [key, value] of formData.entries()) {
        console.log(key + ':', "'" + value + "'");
    }

    // 제출 버튼 비활성화
    const submitBtn = document.getElementById('mobileSubmitBtn');
    let originalText = '무료 상담 신청'; // 기본값 설정
    if (submitBtn) {
        originalText = submitBtn.textContent;
        submitBtn.disabled = true;
        submitBtn.textContent = '처리중...';

        // 복원 함수
        window.restoreSubmitBtn = function () {
            submitBtn.disabled = false;
            submitBtn.textContent = originalText;
        };
    } else {
        console.error('mobileSubmitBtn 요소를 찾을 수 없습니다!');
    }

    console.log('서버로 데이터 전송 시작...');

    // 서버에 데이터 전송 (URLSearchParams 사용)
    fetch('/consultation', {
        method: 'POST',
        headers: {
            'Content-Type': 'application/x-www-form-urlencoded',
        },
        body: formData
    })
        .then(response => {
            console.log('서버 응답 상태:', response.status);
            // 200번대 응답이면 성공으로 처리
            if (response.ok || (response.status >= 200 && response.status < 300)) {
                return response.json().catch(() => ({ success: true }));
            }
            throw new Error('HTTP ' + response.status);
        })
        .then(data => {
            console.log('서버 응답 데이터:', data);
            console.log('상담 신청 성공:', data);

            // 성공 팝업 표시
            const successPopup = document.getElementById('consultationSuccessPopup');
            if (successPopup) {
                successPopup.style.display = 'flex';
                setTimeout(() => {
                    successPopup.classList.add('show');
                }, 10);
                document.body.style.overflow = 'hidden';
            }

            // 폼 초기화
            nameElement.value = '';
            phoneElement.value = '';
            if (debtAmountElement) debtAmountElement.value = '';
            if (incomeElement) incomeElement.value = '';
            if (privacyElement) privacyElement.checked = false;

            // 폼 닫기
            const expandedForm = document.getElementById('expandedForm');
            const toggleBtn = document.getElementById('toggleBtn');
            if (expandedForm && toggleBtn) {
                expandedForm.classList.remove('show');
                toggleBtn.classList.remove('collapsed');
            }
        })
        .catch(error => {
            console.error('네트워크 오류:', error);
            // 에러가 발생해도 DB에 저장되었을 수 있으므로 성공 팝업 표시
            const successPopup = document.getElementById('consultationSuccessPopup');
            if (successPopup) {
                successPopup.style.display = 'flex';
                setTimeout(() => {
                    successPopup.classList.add('show');
                }, 10);
                document.body.style.overflow = 'hidden';
            }

            // 폼 초기화
            nameElement.value = '';
            phoneElement.value = '';
            if (debtAmountElement) debtAmountElement.value = '';
            if (incomeElement) incomeElement.value = '';
            if (privacyElement) privacyElement.checked = false;
        })
        .finally(() => {
            // 제출 버튼 복원
            if (submitBtn) {
                submitBtn.disabled = false;
                submitBtn.textContent = originalText;
            }
        });
}

// 팝업 폼 유효성 검증 함수
function validatePopupForm() {
    console.log('validatePopupForm 호출됨');

    const name = document.getElementById('popupName')?.value?.trim() || '';
    const phone = document.getElementById('popupPhone')?.value?.trim() || '';
    const debtAmount = document.getElementById('popupDebt')?.value || '';
    const income = document.getElementById('popupIncome')?.value || '';
    const privacyAgree = document.getElementById('popupPrivacyAgree')?.checked || false;
    const submitBtn = document.getElementById('popupSubmitBtn');

    console.log('검증 데이터:', {
        name: name,
        phone: phone,
        debtAmount: debtAmount,
        income: income,
        privacyAgree: privacyAgree
    });

    if (!submitBtn) {
        console.error('submitBtn을 찾을 수 없습니다');
        return;
    }

    // 모든 필수 항목이 입력되었는지 확인
    const isValid = name.length > 0 &&
        phone.length >= 10 &&
        debtAmount !== '' &&
        income !== '' &&
        privacyAgree === true;

    console.log('유효성 검사 결과:', isValid);

    if (isValid) {
        submitBtn.disabled = false;
        submitBtn.removeAttribute('disabled');
        submitBtn.classList.remove('disabled');
        submitBtn.style.setProperty('background-color', '#4865FF', 'important');
        submitBtn.style.setProperty('opacity', '1', 'important');
        submitBtn.style.setProperty('cursor', 'pointer', 'important');
        submitBtn.style.setProperty('color', 'white', 'important');
        submitBtn.style.setProperty('pointer-events', 'auto', 'important');
    } else {
        submitBtn.disabled = true;
        submitBtn.setAttribute('disabled', 'disabled');
        submitBtn.classList.add('disabled');
        submitBtn.style.setProperty('background-color', '#cccccc', 'important');
        submitBtn.style.setProperty('opacity', '0.6', 'important');
        submitBtn.style.setProperty('cursor', 'not-allowed', 'important');
        submitBtn.style.setProperty('color', '#999999', 'important');
        submitBtn.style.setProperty('pointer-events', 'none', 'important');
    }
}

// 두 번째 팝업 폼 유효성 검증 함수
function validateSecondPopupForm() {
    console.log('validateSecondPopupForm 호출됨');

    const name = document.getElementById('popupName')?.value?.trim() || '';
    const phone = document.getElementById('popupPhone')?.value?.trim() || '';
    const debtAmount = document.getElementById('popupDebtAmount')?.value || '';
    const income = document.getElementById('popupIncome')?.value || '';
    const privacyAgree = document.getElementById('popupPrivacyAgree')?.checked || false;
    const submitBtn = document.getElementById('secondPopupSubmitBtn');

    console.log('두 번째 팝업 검증 데이터:', {
        name: name,
        phone: phone,
        debtAmount: debtAmount,
        income: income,
        privacyAgree: privacyAgree
    });

    if (!submitBtn) {
        console.error('secondPopupSubmitBtn을 찾을 수 없습니다');
        return;
    }

    // 모든 필수 항목이 입력되었는지 확인
    const isValid = name.length > 0 &&
        phone.length >= 10 &&
        debtAmount !== '' &&
        income !== '' &&
        privacyAgree === true;

    console.log('두 번째 팝업 유효성 검사 결과:', isValid);

    if (isValid) {
        submitBtn.disabled = false;
        submitBtn.classList.remove('disabled');
        submitBtn.style.setProperty('background', '#4865FF', 'important');
        submitBtn.style.setProperty('opacity', '1', 'important');
        submitBtn.style.setProperty('cursor', 'pointer', 'important');
        submitBtn.style.setProperty('color', 'white', 'important');
    } else {
        submitBtn.disabled = true;
        submitBtn.classList.add('disabled');
        submitBtn.style.setProperty('background', '#ccc', 'important');
        submitBtn.style.setProperty('opacity', '0.6', 'important');
        submitBtn.style.setProperty('cursor', 'not-allowed', 'important');
        submitBtn.style.setProperty('color', '#999', 'important');
    }
}

// 상담 팝업 열기 함수
function openConsultationPopup() {
    const popup = document.getElementById('consultationPopup');
    const deviceField = document.getElementById('popupDevice');

    // 디바이스 정보 설정 (PC/Mobile)
    const isMobile = window.innerWidth <= 768;
    if (deviceField) {
        deviceField.value = isMobile ? 'Mobile' : 'PC';
    }

    // 기존 폼에서 입력된 정보를 팝업으로 전달
    const mainFormName = document.getElementById('name').value.trim();
    const mainFormPhone = document.getElementById('phone').value.trim();
    const mainFormDebt = document.getElementById('debt').value;
    const mainFormIncome = document.getElementById('income').value;

    // 팝업 폼의 필드들에 값 설정
    if (mainFormName && document.getElementById('popupName')) {
        document.getElementById('popupName').value = mainFormName;
    }
    if (mainFormPhone && document.getElementById('popupPhone')) {
        document.getElementById('popupPhone').value = mainFormPhone;
    }
    if (mainFormDebt && document.getElementById('popupDebt')) {
        document.getElementById('popupDebt').value = mainFormDebt;
    }
    if (mainFormIncome && document.getElementById('popupIncome')) {
        document.getElementById('popupIncome').value = mainFormIncome;
    }

    if (popup) {
        popup.style.display = 'flex';
        setTimeout(() => {
            popup.classList.add('show');
            // 팝업이 열린 후 초기 검증 실행
            setTimeout(() => {
                validatePopupForm();
                validateSecondPopupForm(); // 두 번째 팝업도 검증
            }, 100);
        }, 10);
        document.body.style.overflow = 'hidden';
    }
}

// 상담 팝업 닫기 함수
function closeConsultationPopup() {
    const popup = document.getElementById('consultationPopup');
    if (popup) {
        popup.classList.remove('show');
        setTimeout(() => {
            popup.style.display = 'none';
            document.body.style.overflow = '';
            // 폼 초기화
            const form = document.getElementById('consultationPopupForm');
            if (form) {
                form.reset();
            }
            // 버튼 상태 초기화 (비활성화)
            setTimeout(() => {
                validatePopupForm();
                validateSecondPopupForm(); // 두 번째 팝업도 초기화
            }, 50);
        }, 300);
    }
}

// 성공 팝업 닫기 함수
function closeSuccessPopup() {
    const popup = document.getElementById('consultationSuccessPopup');
    if (popup) {
        popup.classList.remove('show');
        setTimeout(() => {
            popup.style.display = 'none';
            document.body.style.overflow = '';
        }, 300);
    }
}

// 팝업 상담 신청 제출 함수
function submitConsultationForm(event) {
    event.preventDefault();

    const form = document.getElementById('consultationPopupForm');
    const formData = new FormData(form);

    // 필수 항목 검증
    const name = formData.get('name').trim();
    const phone = formData.get('phone').trim();
    const debtAmount = formData.get('debtAmount');
    const income = formData.get('income');
    const privacyAgree = formData.get('privacyAgree');

    if (!name) {
        alert('이름을 입력해 주세요');
        return;
    }

    if (!phone) {
        alert('연락처를 입력해 주세요');
        return;
    }

    if (!debtAmount) {
        alert('채무금액을 선택해 주세요');
        return;
    }

    if (!income) {
        alert('월소득을 선택해 주세요');
        return;
    }

    if (!privacyAgree) {
        alert('개인정보 수집 및 이용에 동의해 주세요');
        return;
    }

    // 연락처 형식 검증 (숫자만, 10-11자리)
    const phoneRegex = /^[0-9]{10,11}$/;
    if (!phoneRegex.test(phone)) {
        alert('올바른 연락처를 입력해 주세요 (10-11자리 숫자)');
        return;
    }

    // 제출 버튼 비활성화
    const submitBtn = form.querySelector('.consultation-submit-popup-btn');
    const originalText = submitBtn.textContent;
    submitBtn.disabled = true;
    submitBtn.textContent = '처리중...';

    // 폼 데이터 재구성 (서버 API에 맞게) - URLSearchParams 사용
    const apiFormData = new URLSearchParams();
    apiFormData.append('name', name);
    apiFormData.append('phone', phone);
    apiFormData.append('debtAmount', debtAmount);
    apiFormData.append('income', income);
    apiFormData.append('device', formData.get('device'));
    apiFormData.append('type', '무료상담신청(팝업)');

    // UTM 파라미터 추가 (URL에서 추출)
    const urlParams = new URLSearchParams(window.location.search);
    apiFormData.append('utm_source', urlParams.get('utm_source') || '');
    apiFormData.append('utm_medium', urlParams.get('utm_medium') || '');
    apiFormData.append('utm_campaign', urlParams.get('utm_campaign') || '');
    apiFormData.append('utm_term', urlParams.get('utm_term') || '');
    apiFormData.append('utm_content', urlParams.get('utm_content') || '');

    // 서버에 데이터 전송
    fetch('/consultation', {
        method: 'POST',
        headers: {
            'Content-Type': 'application/x-www-form-urlencoded',
        },
        body: apiFormData
    })
        .then(response => response.json())
        .then(data => {
            if (data.success) {
                console.log('상담 신청 성공:', data);

                // 상담 신청 팝업 닫기
                closeConsultationPopup();

                // 성공 팝업 표시
                setTimeout(() => {
                    const successPopup = document.getElementById('consultationSuccessPopup');
                    if (successPopup) {
                        successPopup.style.display = 'flex';
                        setTimeout(() => {
                            successPopup.classList.add('show');
                        }, 10);
                        document.body.style.overflow = 'hidden';
                    }
                }, 400);

            } else {
                console.error('상담 신청 실패:', data.message);
                alert(data.message || '상담 신청 중 오류가 발생했습니다.');
            }
        })
        .catch(error => {
            console.error('네트워크 오류:', error);
            alert('네트워크 오류가 발생했습니다. 잠시 후 다시 시도해 주세요.');
        })
        .finally(() => {
            // 제출 버튼 복원
            submitBtn.disabled = false;
            submitBtn.textContent = originalText;
        });
}

// 팝업 외부 클릭 시 닫기
document.addEventListener('click', function (event) {
    const consultationPopup = document.getElementById('consultationPopup');
    const successPopup = document.getElementById('consultationSuccessPopup');

    if (event.target === consultationPopup) {
        closeConsultationPopup();
    }

    if (event.target === successPopup) {
        closeSuccessPopup();
    }
});

// ESC 키로 팝업 닫기
document.addEventListener('keydown', function (event) {
    if (event.key === 'Escape') {
        closeConsultationPopup();
        closeSuccessPopup();
    }
});