<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
    <!DOCTYPE html>
    <html lang="ko">

    <head>
        <meta charset="UTF-8">
        <meta name="viewport"
            content="width=device-width, initial-scale=1.0, viewport-fit=cover, interactive-widget=resizes-content">
        <title>?êÏù¥??Î≤ïÎ•†?¨Î¨¥??/title>

        <!-- SEO Meta Tags -->
        <meta name="description" content="Í∞úÏù∏?åÏÉù ¬∑ Í∞úÏù∏?åÏÇ∞ ?ÑÎ¨∏ Î≥Ä?∏ÏÇ¨Í∞Ä ?ïÏã§???ïÍ∞êÎ•†Î°ú Î≥¥Îãµ?©Îãà??">
        <meta name="keywords"
            content="Í∞úÏù∏?åÏÉù, Í∞úÏù∏?åÏÇ∞, ?ÑÏÇ∞?ÑÎ¨∏Î≥Ä?∏ÏÇ¨, ?åÏÇ∞Î©¥Ï±Ö, ÎπÑÎ?Î≥¥Ìò∏, ÏµúÎ? ?ïÍ∞êÎ•? Îπ†Î•∏ÏßÑÌñâ, Í∏∞Í∞Å???òÏûÑÎ£??òÎ∂à, ?¨ÏóÖ?§Ìå®, ÏΩîÏù∏, Ï£ºÏãù, ?åÎ†§ÎßâÍ∏∞, ?±ÌòïÎπ? ?∞Î?Î≥¥Ï¶ù, Í∞úÏù∏Ï±ÑÎ¨¥, Î¨¥Î£å?ÅÎã¥, ?ÑÍµ≠ ?ëÏàò Í∞Ä??>

        <!-- Open Graph Meta Tags -->
        <meta property="og:type" content="website">
        <meta property="og:title" content="?êÏù¥??Î≤ïÎ•†?¨Î¨¥??>
        <meta property="og:description" content="Í∞úÏù∏?åÏÉù ¬∑ ?åÏÇ∞ ?ÑÎ¨∏! ?ïÏã§???ïÍ∞êÎ•†Î°ú Î≥¥Îãµ?©Îãà??">
        <meta property="og:image" content="https://newstart-law.com/images/ace_og.png">
        <meta property="og:url" content="https://newstart-law.com">
        <meta property="og:site_name" content="?êÏù¥??Î≤ïÎ•†?¨Î¨¥??>

        <!-- Twitter Card Meta Tags -->
        <meta name="twitter:card" content="summary_large_image">
        <meta name="twitter:title" content="?êÏù¥??Î≤ïÎ•†?¨Î¨¥??>
        <meta name="twitter:description" content="Í∞úÏù∏?åÏÉù&middot;?åÏÇ∞ ?ÑÎ¨∏! ?ïÏã§???ïÍ∞êÎ•†Î°ú Î≥¥Îãµ?©Îãà??">
        <meta name="twitter:image" content="https://newstart-law.com/images/ace_og.png">

        <!-- Favicon -->
        <link rel="icon" type="image/x-icon" href="/images/logo.ico">
        <link rel="shortcut icon" type="image/x-icon" href="/images/logo.ico">
        <!-- Pretendard Font -->
        <link rel="preconnect" href="https://cdn.jsdelivr.net">
        <link href="https://cdn.jsdelivr.net/gh/orioncactus/pretendard@v1.3.9/dist/web/static/pretendard.min.css"
            rel="stylesheet">
        <!-- Swiper CSS -->
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/swiper@11/swiper-bundle.min.css" />
        <!-- Common CSS -->
        <link rel="stylesheet" href="/css/common.css" />
        <!-- Naver Map API v3 -->
        <script type="text/javascript" src="https://oapi.map.naver.com/openapi/v3/maps.js?ncpKeyId=sw4vg0j8dd"></script>
        <!-- ?§Ïù¥Î≤??úÍ∑∏-->
        <meta name="naver-site-verification" content="182ca703050e33ab301c1404b6128675ee1f2704" />
        <!-- NAVER Í≥µÌÜµ ?§ÌÅ¨Î¶ΩÌä∏ (wcs.js) -->
        <script type="text/javascript" src="//wcs.naver.net/wcslog.js"></script>
        <script type="text/javascript">
            if (!wcs_add) var wcs_add = {};
            wcs_add["wa"] = "s_151455092998";
            if (window.wcs) {
                wcs.inflow("newstart-law.com");
                wcs_do();
            }
        </script>
        <!-- Tracking Script -->
        <script src="/js/tracking.js"></script>

    </head>

    <body>
        <!-- ?ÅÎã® ?åÎ°ú??Î∞∞ÎÑà -->
        <div class="floating-header" id="floatingHeader">
            <div class="floating-header-container">
                <div class="floating-logo">
                    <img src="/images/logo.png" alt="ACE Î≤ïÎ•†?¨Î¨¥?? />
                </div>

                <nav class="floating-nav">
                    <a href="#intro">AI ÏßÑÎã®</a>
                    <a href="#service">?±Í≥µ?¨Î?</a>
                    <a href="#about">?Ä?úÎ??∏ÏÇ¨</a>
                    <a href="#calculator">?êÏ£ºÎ¨ªÎäîÏßàÎ¨∏</a>
                </nav>

                <div class="floating-contact">
                    <a href="tel:1555-1684" class="floating-phone">
                        <img src="/images/top_call_icon.png" alt="?ÑÌôî" />
                        1555-1684
                    </a>
                    <a href="#consultation" class="floating-cta-btn" onclick="openConsultationModal()">
                        Î¨¥Î£å ?ÅÎã¥ ?†Ï≤≠
                    </a>
                </div>
            </div>
        </div>

        <!-- ?§Îçî -->
        <header class="header">
            <div class="header-container">
                <div class="logo">
                    <img src="/images/logo.png" alt="ACE Î≤ïÎ•†?¨Î¨¥?? class="logo-box" />
                </div>

                <nav class="nav-menu">
                    <a href="#ai" onclick="event.preventDefault(); smoothScrollToSection('ai')">AI ÏßÑÎã®</a>
                    <a href="#success" onclick="event.preventDefault(); smoothScrollToSection('success')">?±Í≥µ?¨Î?</a>
                    <a href="#lawyer" onclick="event.preventDefault(); smoothScrollToSection('lawyer')">?Ä?úÎ??∏ÏÇ¨</a>
                    <a href="#faq"
                        onclick="event.preventDefault(); smoothScrollToSection('faq')">?êÏ£ºÎ¨ªÎäîÏßàÎ¨∏</a>
                    <a href="#special" onclick="event.preventDefault(); smoothScrollToSection('special')">?πÎ≥Ñ???úÎπÑ??/a>
                    <a href="#location" onclick="event.preventDefault(); smoothScrollToSection('location')">?§Ïãú?îÍ∏∏</a>
                </nav>

                <div class="contact-phone">
                    <img src="/images/top_call_icon.png" alt="?ÑÌôî" class="phone-icon" />
                    1555-1684
                </div>

                <!-- ?ÑÎ≤ÑÍ±?Î©îÎâ¥ Î≤ÑÌäº (Î™®Î∞î?ºÏö©) -->
                <div class="hamburger-menu" onclick="toggleMobileNav()">
                    <div class="hamburger-line"></div>
                    <div class="hamburger-line"></div>
                    <div class="hamburger-line"></div>
                </div>
            </div>
        </header>

        <!-- Î™®Î∞î???§ÎπÑÍ≤åÏù¥??-->
        <div class="mobile-nav" id="mobileNav" onclick="closeMobileNav(event)">
            <div class="mobile-nav-content" onclick="event.stopPropagation()">
                <!-- Î°úÍ≥† Ï∂îÍ? -->
                <div class="mobile-nav-logo">
                    <img src="/images/logo.png" alt="ACE Î≤ïÎ•†?¨Î¨¥?? />
                </div>

                <nav class="mobile-nav-menu">
                    <a href="#ai" onclick="event.preventDefault(); scrollToSection('ai')">AI ?êÍ?ÏßÑÎã®</a>
                    <a href="#success" onclick="event.preventDefault(); scrollToSection('success')">?±Í≥µ?¨Î?</a>
                    <a href="#lawyer" onclick="event.preventDefault(); scrollToSection('lawyer')">?Ä?úÎ??∏ÏÇ¨</a>
                    <a href="#faq" onclick="event.preventDefault(); scrollToSection('faq')">?êÏ£ºÎ¨ªÎäîÏßàÎ¨∏</a>
                    <a href="#special" onclick="event.preventDefault(); scrollToSection('special')">?πÎ≥Ñ???úÎπÑ??/a>
                    <a href="#location" onclick="event.preventDefault(); scrollToSection('location')">?§Ïãú?îÍ∏∏</a>
                </nav>

                <div class="mobile-contact">
                    <!-- <div class="mobile-contact-title">?ÅÎã¥ Î¨∏Ïùò</div> -->

                    <div class="mobile-contact-buttons">
                        <a href="#" class="mobile-contact-btn consultation"
                            onclick="openConsultationModal(); return false;">
                            <img src="/images/icon_ok.png" alt="?ÅÎã¥" />
                            ?ÅÎã¥ ?àÏïΩ ?†Ï≤≠
                        </a>
                        <a href="#" class="mobile-contact-btn secondary" onclick="openKakaoTalk()">
                            <img src="/images/kakao_icon.png" alt="Ïπ¥Ïπ¥?§ÌÜ°" />
                            Ïπ¥ÌÜ° ?ÅÎã¥
                        </a>
                        <a href="tel:1555-1684" class="mobile-contact-btn primary">
                            <img src="/images/call_icon.png" alt="?ÑÌôî" />
                            1555-1684
                        </a>
                    </div>
                </div>
            </div>
        </div>

        <!-- Î©îÏù∏ Î∞∞Í≤Ω ?ÅÏó≠ -->
        <div class="main-background">
            <div class="main-container">
                <!-- Î©îÏù∏ ?Ä?¥Ì? -->
                <div class="main-title">
                    <div class="title-small">Í≥ºÎèÑ??ÎπöÏúºÎ°??òÎìú????</div>
                    <div class="title-large"><span class="highlight-blue">7,450??/span> ÎπöÏùÑ Ï§ÑÏó¨Ï§Ä</div>
                    <div class="title-subtitle">Í∞úÏù∏?åÏÉù ?ÑÎ¨∏Í∞Ä?êÍ≤å ?µÏùÑ Ï∞æÏúº?∏Ïöî!</div>
                </div>

                <!-- ?µÍ≥Ñ ?πÏÖò -->
                <div class="stats-section">
                    <div class="stats-container">
                        <div class="stat-box">
                            <div class="stat-content-wrapper">
                                <img src="/images/won_icon.png" alt="?ïÍ∞ê" class="stat-icon" />
                                <div class="stat-number"><span class="stat-highlight">7,450??/span><span
                                        class="stat-normal">??Îπ??ïÍ∞ê</span></div>
                            </div>
                        </div>

                        <div class="stat-box">
                            <div class="stat-content-wrapper">
                                <img src="/images/stack_icon.png" alt="Í≤ΩÌóò" class="stat-icon" />
                                <div class="stat-number"><span class="stat-highlight">1ÎßåÍ±¥ ?¥ÏÉÅ</span><span
                                        class="stat-normal">???ïÎèÑ??Í≤ΩÌóò</span></div>
                            </div>
                        </div>

                        <div class="stat-box">
                            <div class="stat-content-wrapper">
                                <img src="/images/graph_icon.png" alt="?ïÍ∞êÎ•? class="stat-icon" />
                                <div class="stat-number"><span class="stat-highlight">ÏµúÎ? 96%</span><span
                                        class="stat-normal">???∞Îùº?????ÜÎäî ?ïÍ∞êÎ•?/span></div>
                            </div>
                        </div>
                    </div>
                </div>

                <!-- ?ïÎ? Í∏∞Í? Î°úÍ≥† ?πÏÖò -->
                <div class="government-logos">
                    <div class="logo-item">
                        <img src="/images/logo_center_01.png" alt="?Ä?úÎ?Íµ?†ïÎ∂Ä" />
                    </div>
                    <div class="logo-item">
                        <img src="/images/logo_center_02.png" alt="?ÄÎ≤ïÏõê" />
                    </div>
                    <div class="logo-item">
                        <img src="/images/logo_center_03.png" alt="?†Ïö©?åÎ≥µ?ÑÏõê?? />
                    </div>
                </div>
            </div>
        </div>

        <!-- ?ÅÎã¥ ?†Ï≤≠ ??-->
        <div class="bottom-spacer">
            <div class="consultation-form">
                <form id="mainConsultationForm" onsubmit="submitMainConsultationForm(event)">
                    <div class="form-row">
                        <div class="form-group">
                            <label for="name">?¥Î¶Ñ <span class="required">*</span></label>
                            <input type="text" id="name" name="name" placeholder="???çÍ∏∏?? required="">
                        </div>
                        <div class="form-group">
                            <label for="phone">?∞ÎùΩÏ≤?<span class="required">*</span></label>
                            <input type="tel" id="phone" name="phone" placeholder="-???úÏô∏?òÍ≥† ?ÖÎ†•" required="">
                        </div>
                        <div class="form-group">
                            <label for="debt">Ï±ÑÎ¨¥Í∏àÏï°</label>
                            <select id="debt" name="debt">
                                <option value="">Ï±ÑÎ¨¥Í∏àÏï° ?†ÌÉù</option>
                                <option value="1Ï≤úÎßå??ÎØ∏Îßå">1Ï≤úÎßå??ÎØ∏Îßå</option>
                                <option value="1Ï≤úÎßå??~ 3Ï≤úÎßå??>1Ï≤úÎßå??~ 3Ï≤úÎßå??/option>
                                <option value="3Ï≤úÎßå??~ 5Ï≤úÎßå??>3Ï≤úÎßå??~ 5Ï≤úÎßå??/option>
                                <option value="5Ï≤úÎßå??~ 1?µÏõê">5Ï≤úÎßå??~ 1?µÏõê</option>
                                <option value="1?µÏõê ?¥ÏÉÅ">1?µÏõê ?¥ÏÉÅ</option>
                            </select>
                        </div>
                        <div class="form-group">
                            <label for="income">?îÏÜå??/label>
                            <select id="income" name="income">
                                <option value="">?îÏÜå???†ÌÉù</option>
                                <option value="?åÎìù ?ÜÏùå">?åÎìù ?ÜÏùå</option>
                                <option value="150ÎßåÏõê ÎØ∏Îßå">150ÎßåÏõê ÎØ∏Îßå</option>
                                <option value="150ÎßåÏõê ~ 250ÎßåÏõê">150ÎßåÏõê ~ 250ÎßåÏõê</option>
                                <option value="250ÎßåÏõê ~ 350ÎßåÏõê">250ÎßåÏõê ~ 350ÎßåÏõê</option>
                                <option value="350ÎßåÏõê ~ 500ÎßåÏõê">350ÎßåÏõê ~ 500ÎßåÏõê</option>
                                <option value="500ÎßåÏõê ?¥ÏÉÅ">500ÎßåÏõê ?¥ÏÉÅ</option>
                            </select>
                        </div>
                        <button type="submit" class="submit-btn">Î¨¥Î£å ?ÅÎã¥?†Ï≤≠</button>
                    </div>
                </form>
                <div class="privacy-notice">
                    <input type="checkbox" id="privacy-agree" class="privacy-checkbox" required="" checked>
                    <label for="privacy-agree">Í∞úÏù∏?ïÎ≥¥ ?òÏßë Î∞??¥Ïö©???Ä???ôÏùò<a href="#" class="privacy-link">?êÏÑ∏??/a></label>
                </div>
            </div>
        </div>

        <!-- AI ?êÍ?ÏßÑÎã® ?πÏÖò -->
        <section id="ai" class="ai-diagnosis-section"></section>
        <div class="ai-container">
            <div class="ai-title">
                <h3>??ÎπöÏ? ?ïÍ∞êÎ∞õÏùÑ ???àÏùÑÍπ?</h3>
                <h2>AI ?êÍ?ÏßÑÎã®?ºÎ°ú ?åÏïÑÎ≥¥Í∏∞</h2>
                <p class="ai-subtitle">?êÌïò?úÎäî Îπ??ïÍ∞ê Î∞©Ïãù???†ÌÉù??Ï£ºÏÑ∏??</p>
            </div>

            <div class="diagnosis-cards">
                <div class="diagnosis-card" onclick="selectDiagnosis('personal')">
                    <div class="card-content">
                        <p class="card-subtitle">?ºÏ†ï???åÎìù???àÏúº???¨Ïú†Í∞Ä ?ÜÎäîÎ∂?/p>
                        <h3 class="card-title">Í∞úÏù∏?åÏÉù</h3>
                        <button class="diagnosis-start-btn">ÏßÑÎã® ?úÏûë?òÍ∏∞</button>
                    </div>
                    <img src="/images/icon_ai_01.png" alt="Í∞úÏù∏?åÏÉù" class="card-icon" />
                </div>

                <div class="diagnosis-card" onclick="selectDiagnosis('bankruptcy')">
                    <div class="card-content">
                        <p class="card-subtitle">Í≥ºÎèÑ??ÎπöÏúºÎ°?Îπ?Î≥Ä?úÍ? ?¥Î†§?∞Ïã†Î∂?/p>
                        <h3 class="card-title">?åÏÇ∞Î©¥Ï±Ö</h3>
                        <button class="diagnosis-start-btn">ÏßÑÎã® ?úÏûë?òÍ∏∞</button>
                    </div>
                    <img src="/images/icon_service_02.png" alt="?åÏÇ∞Î©¥Ï±Ö" class="card-icon" />
                </div>
            </div>
        </div>
        </section>

        <!-- Í≥†Í∞ù ?¨Î? ?πÏÖò -->
        <section id="success" class="customer-cases-section"></section>
        <div class="cases-container">
            <div class="cases-header">
                <p class="cases-subtitle">10,386Í±¥Ïùò ?∏Ìïò?∞Í? Î≥¥Ïó¨Ï£ºÎäî Í≤∞Í≥º</p>
                <h2 class="cases-title">Í∞úÏù∏?åÏÉù¬∑?åÏÇ∞ ?ïÍ∞ê ?±Í≥µ?¨Î?</h2>

                <div class="case-tabs">
                    <button class="tab-btn active" onclick="filterCases('all', this)">?ÑÏ≤¥</button>
                    <button class="tab-btn" onclick="filterCases('personal', this)">#Í∞úÏù∏?åÏÉù</button>
                    <button class="tab-btn" onclick="filterCases('bankruptcy', this)">#Í∞úÏù∏?åÏÇ∞</button>
                </div>
            </div>

            <div class="cases-wrapper">
                <!-- ?îÏÇ¥?úÎ? ?ÑÏ†Ñ??Î∂ÑÎ¶¨???ÅÏó≠??Î∞∞Ïπò -->
                <div class="arrow-container">
                    <button class="arrow-btn prev-btn" onclick="navigateSlide('prev')">
                        <svg viewBox="0 0 12 20">
                            <polyline points="10,2 2,10 10,18"></polyline>
                        </svg>
                    </button>
                    <button class="arrow-btn next-btn" onclick="navigateSlide('next')">
                        <svg viewBox="0 0 12 20">
                            <polyline points="2,2 10,10 2,18"></polyline>
                        </svg>
                    </button>
                </div>

                <!-- Swiper -->
                <div class="swiper casesSwiper">
                    <div class="swiper-wrapper">
                        <!-- ?ÑÏ≤¥ Í∑∏Î£π -->
                        <div class="swiper-slide">
                            <div class="case-group" data-group="all" style="padding: 20px;">
                                <div class="cases-grid"
                                    style="display: grid; grid-template-columns: repeat(3, 1fr); gap: 25px;">
                                    <div class="case-card">
                                        <div class="case-profile">
                                            <div class="profile-img"><img src="/images/mo_icon_review_01.png" alt="?ÑÎ°ú??>
                                            </div>
                                            <div class="case-info">
                                                <div class="case-badges">
                                                    <span class="case-type">Í∞úÏù∏?åÏÉù</span>
                                                    <span class="case-success">96% ?ïÍ∞ê</span>
                                                </div>
                                                <div class="case-name-row">
                                                    <div class="case-name">ÍπÄ?ã‚óã??/div>
                                                    <div class="case-age">50?Ä ?¨ÏÑ±, Ï£ºÎ?</div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="case-result">
                                            <div class="result-badge"><img src="/images/icon_money.png" alt="?í∞"
                                                    style="width: 20px; height: 20px; vertical-align: middle;"> Ï¥?Ï±ÑÎ¨¥??
                                                162,678,791???ïÍ∞ê!</div>
                                        </div>
                                        <div class="case-details">
                                            <div class="detail-row total-debt">
                                                <span class="label">Ï¥?Ï±ÑÎ¨¥??/span>
                                                <span class="value">168,770,819??/span>
                                            </div>
                                            <div class="detail-row reduced-principal">
                                                <span class="label">?ïÍ∞ê ???êÍ∏à</span>
                                                <span class="value">6,092,028??/span>
                                            </div>
                                            <div class="detail-row monthly-payment">
                                                <span class="label">??Î≥Ä?úÏï°</span>
                                                <span class="value">??160,000??/span>
                                            </div>
                                        </div>
                                    </div>

                                    <div class="case-card">
                                        <div class="case-profile">
                                            <div class="profile-img"><img src="/images/man1.png" alt="?ÑÎ°ú??></div>
                                            <div class="case-info">
                                                <div class="case-badges">
                                                    <span class="case-type">Í∞úÏù∏?åÏÇ∞</span>
                                                    <span class="case-success">100% ?ïÍ∞ê</span>
                                                </div>
                                                <div class="case-name-row">
                                                    <div class="case-name">Î∞ï‚óã?ãÎãò</div>
                                                    <div class="case-age">50?Ä ?®ÏÑ±, ?¨ÏóÖ??/div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="case-result">
                                            <div class="result-badge"><img src="/images/icon_money.png" alt="?í∞"
                                                    style="width: 20px; height: 20px; vertical-align: middle;"> Ï¥?Ï±ÑÎ¨¥??
                                                530,000,000??Î©¥Ï±Ö!</div>
                                        </div>
                                        <div class="case-details">
                                            <div class="detail-row total-debt">
                                                <span class="label">Ï¥?Ï±ÑÎ¨¥??/span>
                                                <span class="value">530,000,000??/span>
                                            </div>
                                            <div class="detail-row reduced-principal">
                                                <span class="label">?ïÍ∞ê ???êÍ∏à</span>
                                                <span class="value">0??/span>
                                            </div>
                                            <div class="detail-row monthly-payment empty">
                                                <span class="label">??Î≥Ä?úÏï°</span>
                                                <span class="value"></span>
                                            </div>
                                        </div>
                                    </div>

                                    <div class="case-card">
                                        <div class="case-profile">
                                            <div class="profile-img"><img src="/images/man2.png" alt="?ÑÎ°ú??></div>
                                            <div class="case-info">
                                                <div class="case-badges">
                                                    <span class="case-type">Í∞úÏù∏?åÏÉù</span>
                                                    <span class="case-success">93% ?ïÍ∞ê</span>
                                                </div>
                                                <div class="case-name-row">
                                                    <div class="case-name">?¥‚óã?ãÎãò</div>
                                                    <div class="case-age">50?Ä ?®ÏÑ±, ?åÏÇ¨??/div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="case-result">
                                            <div class="result-badge"><img src="/images/icon_money.png" alt="?í∞"
                                                    style="width: 20px; height: 20px; vertical-align: middle;"> Ï¥?Ï±ÑÎ¨¥??
                                                167,437,271???ïÍ∞ê!</div>
                                        </div>
                                        <div class="case-details">
                                            <div class="detail-row total-debt">
                                                <span class="label">Ï¥?Ï±ÑÎ¨¥??/span>
                                                <span class="value">180,626,375??/span>
                                            </div>
                                            <div class="detail-row reduced-principal">
                                                <span class="label">?ïÍ∞ê ???êÍ∏à</span>
                                                <span class="value">13,189,104??/span>
                                            </div>
                                            <div class="detail-row monthly-payment">
                                                <span class="label">??Î≥Ä?úÏï°</span>
                                                <span class="value">??360,000??/span>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>

                        <!-- Í∞úÏù∏?åÏÉù Í∑∏Î£π -->
                        <div class="swiper-slide">
                            <div class="case-group" data-group="personal" style="padding: 20px;">
                                <div class="cases-grid"
                                    style="display: grid; grid-template-columns: repeat(3, 1fr); gap: 25px;">
                                    <div class="case-card">
                                        <div class="case-profile">
                                            <div class="profile-img"><img src="/images/mo_icon_review_01.png" alt="?ÑÎ°ú??>
                                            </div>
                                            <div class="case-info">
                                                <div class="case-badges">
                                                    <span class="case-type">Í∞úÏù∏?åÏÉù</span>
                                                    <span class="case-success">89% ?ïÍ∞ê</span>
                                                </div>
                                                <div class="case-name-row">
                                                    <div class="case-name">Ïµú‚óã?ãÎãò</div>
                                                    <div class="case-age">40?Ä ?¨ÏÑ±, Ï£ºÎ?</div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="case-result">
                                            <div class="result-badge"><img src="/images/icon_money.png" alt="?í∞"
                                                    style="width: 20px; height: 20px; vertical-align: middle;"> Ï¥?Ï±ÑÎ¨¥??
                                                89,500,000??Î©¥Ï±Ö!</div>
                                        </div>
                                        <div class="case-details">
                                            <div class="detail-row total-debt">
                                                <span class="label">Ï¥?Ï±ÑÎ¨¥??/span>
                                                <span class="value">100,500,000??/span>
                                            </div>
                                            <div class="detail-row reduced-principal">
                                                <span class="label">?ïÍ∞ê ???êÍ∏à</span>
                                                <span class="value">11,000,000??/span>
                                            </div>
                                            <div class="detail-row monthly-payment">
                                                <span class="label">??Î≥Ä?úÏï°</span>
                                                <span class="value">??300,000??/span>
                                            </div>
                                        </div>
                                    </div>

                                    <div class="case-card">
                                        <div class="case-profile">
                                            <div class="profile-img"><img src="/images/man1.png" alt="?ÑÎ°ú??></div>
                                            <div class="case-info">
                                                <div class="case-badges">
                                                    <span class="case-type">Í∞úÏù∏?åÏÉù</span>
                                                    <span class="case-success">91% ?ïÍ∞ê</span>
                                                </div>
                                                <div class="case-name-row">
                                                    <div class="case-name">?ï‚óã?ãÎãò</div>
                                                    <div class="case-age">30?Ä ?®ÏÑ±, ÏßÅÏû•??/div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="case-result">
                                            <div class="result-badge"><img src="/images/icon_money.png" alt="?í∞"
                                                    style="width: 20px; height: 20px; vertical-align: middle;"> Ï¥?Ï±ÑÎ¨¥??
                                                73,200,000???ïÍ∞ê!</div>
                                        </div>
                                        <div class="case-details">
                                            <div class="detail-row total-debt">
                                                <span class="label">Ï¥?Ï±ÑÎ¨¥??/span>
                                                <span class="value">80,500,000??/span>
                                            </div>
                                            <div class="detail-row reduced-principal">
                                                <span class="label">?ïÍ∞ê ???êÍ∏à</span>
                                                <span class="value">7,300,000??/span>
                                            </div>
                                            <div class="detail-row monthly-payment">
                                                <span class="label">??Î≥Ä?úÏï°</span>
                                                <span class="value">??200,000??/span>
                                            </div>
                                        </div>
                                    </div>

                                    <div class="case-card">
                                        <div class="case-profile">
                                            <div class="profile-img"><img src="/images/mo_icon_review_01.png" alt="?ÑÎ°ú??>
                                            </div>
                                            <div class="case-info">
                                                <div class="case-badges">
                                                    <span class="case-type">Í∞úÏù∏?åÏÉù</span>
                                                    <span class="case-success">88% ?ïÍ∞ê</span>
                                                </div>
                                                <div class="case-name-row">
                                                    <div class="case-name">?ú‚óã?ãÎãò</div>
                                                    <div class="case-age">40?Ä ?¨ÏÑ±, ?êÏòÅ??/div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="case-result">
                                            <div class="result-badge"><img src="/images/icon_money.png" alt="?í∞"
                                                    style="width: 20px; height: 20px; vertical-align: middle;"> Ï¥?Ï±ÑÎ¨¥??
                                                105,600,000??Î©¥Ï±Ö!</div>
                                        </div>
                                        <div class="case-details">
                                            <div class="detail-row total-debt">
                                                <span class="label">Ï¥?Ï±ÑÎ¨¥??/span>
                                                <span class="value">120,000,000??/span>
                                            </div>
                                            <div class="detail-row reduced-principal">
                                                <span class="label">?ïÍ∞ê ???êÍ∏à</span>
                                                <span class="value">14,400,000??/span>
                                            </div>
                                            <div class="detail-row monthly-payment">
                                                <span class="label">??Î≥Ä?úÏï°</span>
                                                <span class="value">??400,000??/span>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>

                        <!-- Í∞úÏù∏?åÏÇ∞ Í∑∏Î£π -->
                        <div class="swiper-slide">
                            <div class="case-group" data-group="bankruptcy" style="padding: 20px;">
                                <div class="cases-grid"
                                    style="display: grid; grid-template-columns: repeat(3, 1fr); gap: 25px;">
                                    <div class="case-card">
                                        <div class="case-profile">
                                            <div class="profile-img"><img src="/images/mo_icon_review_01.png" alt="?ÑÎ°ú??>
                                            </div>
                                            <div class="case-info">
                                                <div class="case-badges">
                                                    <span class="case-type">Í∞úÏù∏?åÏÇ∞</span>
                                                    <span class="case-success">100% ?ïÍ∞ê</span>
                                                </div>
                                                <div class="case-name-row">
                                                    <div class="case-name">Í∞ï‚óã?ãÎãò</div>
                                                    <div class="case-age">60?Ä ?¨ÏÑ±, Î¨¥ÏßÅ</div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="case-result">
                                            <div class="result-badge"><img src="/images/icon_money.png" alt="?í∞"
                                                    style="width: 20px; height: 20px; vertical-align: middle;"> Ï¥?Ï±ÑÎ¨¥??
                                                95,000,000???ïÍ∞ê!</div>
                                        </div>
                                        <div class="case-details">
                                            <div class="detail-row total-debt">
                                                <span class="label">Ï¥?Ï±ÑÎ¨¥??/span>
                                                <span class="value">95,000,000??/span>
                                            </div>
                                            <div class="detail-row reduced-principal">
                                                <span class="label">?ïÍ∞ê ???êÍ∏à</span>
                                                <span class="value">0??/span>
                                            </div>
                                            <div class="detail-row monthly-payment empty">
                                                <span class="label">??Î≥Ä?úÏï°</span>
                                                <span class="value"></span>
                                            </div>
                                        </div>
                                    </div>

                                    <div class="case-card">
                                        <div class="case-profile">
                                            <div class="profile-img"><img src="/images/man1.png" alt="?ÑÎ°ú??></div>
                                            <div class="case-info">
                                                <div class="case-badges">
                                                    <span class="case-type">Í∞úÏù∏?åÏÇ∞</span>
                                                    <span class="case-success">100% ?ïÍ∞ê</span>
                                                </div>
                                                <div class="case-name-row">
                                                    <div class="case-name">?§‚óã?ãÎãò</div>
                                                    <div class="case-age">50?Ä ?®ÏÑ±, ?êÏòÅ??/div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="case-result">
                                            <div class="result-badge"><img src="/images/icon_money.png" alt="?í∞"
                                                    style="width: 20px; height: 20px; vertical-align: middle;"> Ï¥?Ï±ÑÎ¨¥??
                                                320,000,000???ïÍ∞ê!</div>
                                        </div>
                                        <div class="case-details">
                                            <div class="detail-row total-debt">
                                                <span class="label">Ï¥?Ï±ÑÎ¨¥??/span>
                                                <span class="value">320,000,000??/span>
                                            </div>
                                            <div class="detail-row reduced-principal">
                                                <span class="label">?ïÍ∞ê ???êÍ∏à</span>
                                                <span class="value">0??/span>
                                            </div>
                                            <div class="detail-row monthly-payment empty">
                                                <span class="label">??Î≥Ä?úÏï°</span>
                                                <span class="value"></span>
                                            </div>
                                        </div>
                                    </div>

                                    <div class="case-card">
                                        <div class="case-profile">
                                            <div class="profile-img"><img src="/images/man2.png" alt="?ÑÎ°ú??></div>
                                            <div class="case-info">
                                                <div class="case-badges">
                                                    <span class="case-type">Í∞úÏù∏?åÏÇ∞</span>
                                                    <span class="case-success">100% ?ïÍ∞ê</span>
                                                </div>
                                                <div class="case-name-row">
                                                    <div class="case-name">Ï°∞‚óã?ãÎãò</div>
                                                    <div class="case-age">40?Ä ?®ÏÑ±, ?¨ÏóÖ??/div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="case-result">
                                            <div class="result-badge"><img src="/images/icon_money.png" alt="?í∞"
                                                    style="width: 20px; height: 20px; vertical-align: middle;"> Ï¥?Ï±ÑÎ¨¥??
                                                180,000,000??Î©¥Ï±Ö!</div>
                                        </div>
                                        <div class="case-details">
                                            <div class="detail-row total-debt">
                                                <span class="label">Ï¥?Ï±ÑÎ¨¥??/span>
                                                <span class="value">180,000,000??/span>
                                            </div>
                                            <div class="detail-row reduced-principal">
                                                <span class="label">?ïÍ∞ê ???êÍ∏à</span>
                                                <span class="value">0??/span>
                                            </div>
                                            <div class="detail-row monthly-payment empty">
                                                <span class="label">??Î≥Ä?úÏï°</span>
                                                <span class="value"></span>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        </section>

        <!-- ?ÅÎã¥ ?†Ï≤≠ ?åÎ¶º -->
        <div class="consultation-alerts">
            <div class="alert-row">
                <div class="alert-item"><span class="time-badge">5Î∂???/span>40??ÍπÄ***?òÏù¥ ?ÅÎã¥ ?†Ï≤≠?àÏäµ?àÎã§.</div>
                <div class="alert-item"><span class="time-badge">10Î∂???/span>50??ÍπÄ***?òÏù¥ ?ÅÎã¥ ?†Ï≤≠?àÏäµ?àÎã§.</div>
                <div class="alert-item"><span class="time-badge">20Î∂???/span>45??Î∞?**?òÏù¥ ?ÅÎã¥ ?†Ï≤≠?àÏäµ?àÎã§.</div>
                <div class="alert-item"><span class="time-badge">30Î∂???/span>30????**?òÏù¥ ?ÅÎã¥ ?†Ï≤≠?àÏäµ?àÎã§.</div>
                <div class="alert-item"><span class="time-badge">1?úÍ∞Ñ ??/span>35??Ïµ?**?òÏù¥ ?ÅÎã¥ ?†Ï≤≠?àÏäµ?àÎã§.</div>
                <div class="alert-item"><span class="time-badge">2Î∂???/span>42????**?òÏù¥ ?ÅÎã¥ ?†Ï≤≠?àÏäµ?àÎã§.</div>
                <div class="alert-item"><span class="time-badge">15Î∂???/span>38????**?òÏù¥ ?ÅÎã¥ ?†Ï≤≠?àÏäµ?àÎã§.</div>
                <div class="alert-item"><span class="time-badge">25Î∂???/span>55??Ï°?**?òÏù¥ ?ÅÎã¥ ?†Ï≤≠?àÏäµ?àÎã§.</div>
                <div class="alert-item"><span class="time-badge">40Î∂???/span>33????**?òÏù¥ ?ÅÎã¥ ?†Ï≤≠?àÏäµ?àÎã§.</div>
                <div class="alert-item"><span class="time-badge">1?úÍ∞Ñ ??/span>47??Í∞?**?òÏù¥ ?ÅÎã¥ ?†Ï≤≠?àÏäµ?àÎã§.</div>
            </div>
            <div class="alert-row">
                <div class="alert-item"><span class="time-badge">3?úÍ∞Ñ ??/span>30??Ïµ?**?òÏù¥ ?ÅÎã¥ ?†Ï≤≠?àÏäµ?àÎã§.</div>
                <div class="alert-item"><span class="time-badge">4?úÍ∞Ñ ??/span>35????**?òÏù¥ ?ÅÎã¥ ?†Ï≤≠?àÏäµ?àÎã§.</div>
                <div class="alert-item"><span class="time-badge">5?úÍ∞Ñ ??/span>52??ÍπÄ***?òÏù¥ ?ÅÎã¥ ?†Ï≤≠?àÏäµ?àÎã§.</div>
                <div class="alert-item"><span class="time-badge">6?úÍ∞Ñ ??/span>29??ÍπÄ***?òÏù¥ ?ÅÎã¥ ?†Ï≤≠?àÏäµ?àÎã§.</div>
                <div class="alert-item"><span class="time-badge">8?úÍ∞Ñ ??/span>41????**?òÏù¥ ?ÅÎã¥ ?†Ï≤≠?àÏäµ?àÎã§.</div>
                <div class="alert-item"><span class="time-badge">2?úÍ∞Ñ ??/span>36??Î∞?**?òÏù¥ ?ÅÎã¥ ?†Ï≤≠?àÏäµ?àÎã§.</div>
                <div class="alert-item"><span class="time-badge">7?úÍ∞Ñ ??/span>44????**?òÏù¥ ?ÅÎã¥ ?†Ï≤≠?àÏäµ?àÎã§.</div>
                <div class="alert-item"><span class="time-badge">9?úÍ∞Ñ ??/span>31????**?òÏù¥ ?ÅÎã¥ ?†Ï≤≠?àÏäµ?àÎã§.</div>
                <div class="alert-item"><span class="time-badge">10?úÍ∞Ñ ??/span>48????**?òÏù¥ ?ÅÎã¥ ?†Ï≤≠?àÏäµ?àÎã§.</div>
                <div class="alert-item"><span class="time-badge">12?úÍ∞Ñ ??/span>39????**?òÏù¥ ?ÅÎã¥ ?†Ï≤≠?àÏäµ?àÎã§.</div>
            </div>

            <!-- Î™®Î∞î?ºÏö© Swiper -->
            <div class="swiper mobile-consultation-swiper">
                <div class="swiper-wrapper">
                    <div class="swiper-slide">
                        <div class="mobile-alert-item"><span class="time-badge">5Î∂???/span>40??ÍπÄ***?òÏù¥ ?ÅÎã¥ ?†Ï≤≠?àÏäµ?àÎã§.</div>
                    </div>
                    <div class="swiper-slide">
                        <div class="mobile-alert-item"><span class="time-badge">10Î∂???/span>50??ÍπÄ***?òÏù¥ ?ÅÎã¥ ?†Ï≤≠?àÏäµ?àÎã§.</div>
                    </div>
                    <div class="swiper-slide">
                        <div class="mobile-alert-item"><span class="time-badge">20Î∂???/span>45??Î∞?**?òÏù¥ ?ÅÎã¥ ?†Ï≤≠?àÏäµ?àÎã§.</div>
                    </div>
                    <div class="swiper-slide">
                        <div class="mobile-alert-item"><span class="time-badge">30Î∂???/span>30????**?òÏù¥ ?ÅÎã¥ ?†Ï≤≠?àÏäµ?àÎã§.</div>
                    </div>
                    <div class="swiper-slide">
                        <div class="mobile-alert-item"><span class="time-badge">1?úÍ∞Ñ ??/span>35??Ïµ?**?òÏù¥ ?ÅÎã¥ ?†Ï≤≠?àÏäµ?àÎã§.</div>
                    </div>
                    <div class="swiper-slide">
                        <div class="mobile-alert-item"><span class="time-badge">2Î∂???/span>42????**?òÏù¥ ?ÅÎã¥ ?†Ï≤≠?àÏäµ?àÎã§.</div>
                    </div>
                    <div class="swiper-slide">
                        <div class="mobile-alert-item"><span class="time-badge">15Î∂???/span>38????**?òÏù¥ ?ÅÎã¥ ?†Ï≤≠?àÏäµ?àÎã§.</div>
                    </div>
                    <div class="swiper-slide">
                        <div class="mobile-alert-item"><span class="time-badge">25Î∂???/span>55??Ï°?**?òÏù¥ ?ÅÎã¥ ?†Ï≤≠?àÏäµ?àÎã§.</div>
                    </div>
                    <div class="swiper-slide">
                        <div class="mobile-alert-item"><span class="time-badge">40Î∂???/span>33????**?òÏù¥ ?ÅÎã¥ ?†Ï≤≠?àÏäµ?àÎã§.</div>
                    </div>
                    <div class="swiper-slide">
                        <div class="mobile-alert-item"><span class="time-badge">1?úÍ∞Ñ ??/span>47??Í∞?**?òÏù¥ ?ÅÎã¥ ?†Ï≤≠?àÏäµ?àÎã§.</div>
                    </div>
                    <div class="swiper-slide">
                        <div class="mobile-alert-item"><span class="time-badge">3?úÍ∞Ñ ??/span>30??Ïµ?**?òÏù¥ ?ÅÎã¥ ?†Ï≤≠?àÏäµ?àÎã§.</div>
                    </div>
                    <div class="swiper-slide">
                        <div class="mobile-alert-item"><span class="time-badge">4?úÍ∞Ñ ??/span>35????**?òÏù¥ ?ÅÎã¥ ?†Ï≤≠?àÏäµ?àÎã§.</div>
                    </div>
                    <div class="swiper-slide">
                        <div class="mobile-alert-item"><span class="time-badge">5?úÍ∞Ñ ??/span>52??ÍπÄ***?òÏù¥ ?ÅÎã¥ ?†Ï≤≠?àÏäµ?àÎã§.</div>
                    </div>
                    <div class="swiper-slide">
                        <div class="mobile-alert-item"><span class="time-badge">6?úÍ∞Ñ ??/span>29??ÍπÄ***?òÏù¥ ?ÅÎã¥ ?†Ï≤≠?àÏäµ?àÎã§.</div>
                    </div>
                    <div class="swiper-slide">
                        <div class="mobile-alert-item"><span class="time-badge">8?úÍ∞Ñ ??/span>41????**?òÏù¥ ?ÅÎã¥ ?†Ï≤≠?àÏäµ?àÎã§.</div>
                    </div>
                    <div class="swiper-slide">
                        <div class="mobile-alert-item"><span class="time-badge">2?úÍ∞Ñ ??/span>36??Î∞?**?òÏù¥ ?ÅÎã¥ ?†Ï≤≠?àÏäµ?àÎã§.</div>
                    </div>
                    <div class="swiper-slide">
                        <div class="mobile-alert-item"><span class="time-badge">7?úÍ∞Ñ ??/span>44????**?òÏù¥ ?ÅÎã¥ ?†Ï≤≠?àÏäµ?àÎã§.</div>
                    </div>
                    <div class="swiper-slide">
                        <div class="mobile-alert-item"><span class="time-badge">9?úÍ∞Ñ ??/span>31????**?òÏù¥ ?ÅÎã¥ ?†Ï≤≠?àÏäµ?àÎã§.</div>
                    </div>
                    <div class="swiper-slide">
                        <div class="mobile-alert-item"><span class="time-badge">10?úÍ∞Ñ ??/span>48????**?òÏù¥ ?ÅÎã¥ ?†Ï≤≠?àÏäµ?àÎã§.</div>
                    </div>
                    <div class="swiper-slide">
                        <div class="mobile-alert-item"><span class="time-badge">12?úÍ∞Ñ ??/span>39????**?òÏù¥ ?ÅÎã¥ ?†Ï≤≠?àÏäµ?àÎã§.</div>
                    </div>
                </div>

                <!-- ?§Ï??¥ÌîÑ Ïª®Ìä∏Î°?Î≤ÑÌäº -->
                <!-- Î≤ÑÌäº ?úÍ±∞??-->
            </div>
        </div>

        <!-- ?Ä??Î≥Ä?∏ÏÇ¨ ?åÍ∞ú ?πÏÖò -->
        <section id="lawyer" class="lawyer-intro-section"></section>
        <div class="lawyer-container">
            <div class="lawyer-header">
                <p class="lawyer-subtitle">?Ä??Î≥Ä?∏ÏÇ¨ ?åÍ∞ú</p>
                <h2 class="lawyer-title">Í∞úÏù∏?åÏÉù¬∑?åÏÇ∞ ?ÑÎ¨∏ ?©ÏÑ†??Î≥Ä?∏ÏÇ¨</h2>
            </div>

            <div class="lawyer-content">
                <div class="lawyer-image-area">
                    <div class="swiper certificateSwiper">
                        <div class="swiper-wrapper">
                            <div class="swiper-slide">
                                <div class="certificate-image">
                                    <img src="/images/certificate1.jpg" alt="Î≥Ä?∏ÏÇ¨ ?±Î°ùÏ¶ùÏÑú" />
                                </div>
                            </div>
                            <div class="swiper-slide">
                                <div class="certificate-image">
                                    <img src="/images/ceo.png" alt="?Ä?úÎ??∏ÏÇ¨" />
                                </div>
                            </div>
                        </div>
                        <div class="swiper-pagination"></div>
                    </div>
                </div>

                <div class="lawyer-info-area">
                    <div class="lawyer-description">
                        <p>Ï±ÑÎ¨¥ Í¥Ä??Î™®Îì† Î¨∏Ï†ú???Ä?òÏó¨</p>
                        <p><strong>ÏµúÏÑ†???¥Í≤∞Ï±ÖÏùÑ ?úÏãú</strong>?òÍ≥†</p>
                        <p>Ï±ÑÎ¨¥ ?ïÍ∞ê <strong>?åÏÜ°??Í≤ΩÌóò???çÎ?</strong>?©Îãà??</p>
                    </div>

                    <div class="lawyer-details">
                        <div class="detail-section">
                            <h4>?ôÎ†•</h4>
                            <ul>
                                <li>?±Í∑†Í¥Ä?Ä?ôÍµê Í≤ΩÏÉÅ?Ä??Ï°∏ÏóÖ</li>
                                <li>?êÍ¥ë?Ä?ôÍµê Î≤ïÌïô?ÑÎ¨∏?Ä?ôÏõê Ï°∏ÏóÖ</li>
                                <li>?∏Î¨¥?¨ÏûêÍ≤©Ï¶ù Î≥¥Ïú†</li>
                            </ul>
                        </div>

                        <div class="detail-section">
                            <h4>Í≤ΩÎ†•</h4>
                            <ul>
                                <li>?? ?êÏù¥?§Î≤ïÎ•†ÏÇ¨Î¨¥ÏÜå ?Ä?úÎ??∏ÏÇ¨</li>
                                <li>?? Î≤ïÎ¨¥Î≤ïÏù∏ Î∞ùÏùå</li>
                                <li>?? Î≤ïÎ¨¥Î≤ïÏù∏ Ï∞ΩÎπÑ</li>
                                <li>?? ?©ÏÑ†?ùÎ??∏ÏÇ¨ ?¨Î¨¥??/li>
                            </ul>
                        </div>

                        <div class="detail-section">
                            <h4>?úÎèô</h4>
                            <ul>
                                <li>?îÏÑ±?úÏùò??Î≥çÎ•†Í≥†Î¨∏Î≥Ä?∏ÏÇ¨</li>
                                <li>?îÏÑ±?úÏùò???§Î¶¨?¨ÏÇ¨?êÎ¨∏?ÑÏõê??/li>
                                <li>?úÍµ≠Î¨¥ÏÑ†?∏ÌÑ∞?∑ÏÜîÎ£®ÏÖò?ëÌöå ÎπÑÏ¶à?àÏä§?êÎ¨∏???ÑÎ¨∏?ÑÏõê</li>
                                <li>?ÅÎèôÎ°úÍµ¨Ï≤?ÏßÄÎ∞©ÏÑ∏?¨Ïùò?ÑÏõê???¨Ïùò?òÏõê</li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        </section>

        <!-- ?πÎ≥Ñ???úÎπÑ???πÏÖò -->
        <section id="special-services" class="special-services-section"></section>
        <div class="services-container">
            <div class="services-header">
                <p class="services-subtitle">?ΩÎã§! Îπ†Î•¥?? ?àÏ†Ñ?òÎã§!</p>
                <h2 class="services-title">?êÏù¥??Î≤ïÎ•†?¨Î¨¥?åÏùò<br class="mobile-br">?πÎ≥Ñ???úÎπÑ??8Í∞ÄÏßÄ</h2>
            </div>

            <div class="services-grid">
                <div class="service-item">
                    <div class="service-icon">
                        <img src="/images/icon_service_01.png" alt="ÎπÑÎ? Î≥¥Ïû•" />
                    </div>
                    <div class="service-text">ÎπÑÎ? Î≥¥Ïû•</div>
                </div>

                <div class="service-item">
                    <div class="service-icon">
                        <img src="/images/icon_service_02.png" alt="Ï≤¥Í≥Ñ?ÅÏù∏ Í¥ÄÎ¶? />
                    </div>
                    <div class="service-text">Ï≤¥Í≥ÑÏ∂îÏã¨ Í¥ÄÎ¶?/div>
                </div>

                <div class="service-item">
                    <div class="service-icon">
                        <img src="/images/icon_service_03.png" alt="?úÎ•ò Ï≤†Ï? ?Ä?? />
                    </div>
                    <div class="service-text">?úÎ•ò Î∞úÍ∏â ?Ä??/div>
                </div>

                <div class="service-item">
                    <div class="service-icon">
                        <img src="/images/icon_service_04.png" alt="Îπ†Î•∏ ?¨Í±¥ ?ëÏàò" />
                    </div>
                    <div class="service-text">Îπ†Î•∏ ?¨Í±¥ ?ëÏàò</div>
                </div>

                <div class="service-item">
                    <div class="service-icon">
                        <img src="/images/icon_service_05.png" alt="Î¨¥Î£å?ÅÎã¥" />
                    </div>
                    <div class="service-text">Î¨¥Î£å?ÅÎã¥</div>
                </div>

                <div class="service-item">
                    <div class="service-icon">
                        <img src="/images/icon_service_06.png" alt="Í∞ÄÍ≤???100% ?òÎ∂à" />
                    </div>
                    <div class="service-text">Í∏∞Í∞Å ??100% ?òÎ∂à</div>
                </div>

                <div class="service-item">
                    <div class="service-icon">
                        <img src="/images/icon_service_07.png" alt="?òÏûÑÎ£?Î∂ÑÎÇ©" />
                    </div>
                    <div class="service-text">?òÏûÑÎ£?Î∂ÑÎÇ©</div>
                </div>

                <div class="service-item">
                    <div class="service-icon">
                        <img src="/images/icon_service_08.png" alt="Î≥∏Ïù∏Î≥??ÑÎã¥ Í¥ÄÎ¶¨ÏÇ¨" />
                    </div>
                    <div class="service-text">Î∂ÑÏïºÎ≥??ÑÎ¨∏ Í¥ÄÎ¶¨Îã®</div>
                </div>
            </div>
        </div>
        </section>

        <!-- FAQ ?πÏÖò -->
        <section id="faq" class="faq-section"></section>
        <div class="faq-container">
            <div class="faq-header">
                <h2 class="faq-title">?êÏ£º?òÎäî ÏßàÎ¨∏</h2>
            </div>

            <div class="faq-list">
                <div class="faq-item">
                    <button class="faq-question active" onclick="toggleFaq(this)">
                        <span>?ÑÎ¨¥??Î™®Î•¥Í≤?ÎπÑÎ?Î°?ÏßÑÌñâÍ∞Ä?•ÌïúÍ∞Ä??</span>
                        <span class="faq-icon">
                            <svg viewBox="0 0 12 8">
                                <polyline points="1,1 6,6 11,1"></polyline>
                            </svg>
                        </span>
                    </button>
                    <div class="faq-answer active">
                        <div class="faq-answer-content">
                            ?? Í∞Ä?•Ìï©?àÎã§.<br>
                            Í∞úÏù∏?åÏÉù Î∞??åÏÇ∞ ?±Ïùò ?ÑÏÇ∞?àÏ∞®??Ï±ÑÎ¨¥??Î≥∏Ïù∏Í≥?Ï±ÑÍ∂å?????¥Ìï¥Í¥ÄÍ≥ÑÏù∏ ?àÏùÑ ?åÎßå ?µÏ??òÎ©∞ Í∞ÄÏ°±Ïù¥??ÏßÄ?? ?åÏÇ¨ ?????êÏóêÍ≤åÎäî ÎπÑÎ???Î≥¥Ïû•?©Îãà??
                        </div>
                    </div>
                </div>

                <div class="faq-item">
                    <button class="faq-question" onclick="toggleFaq(this)">
                        <span>Îπ??ÖÏ¥â???¨Ìïú??Ï∂îÏã¨??Î©àÏ∂ú ???àÎÇò??</span>
                        <span class="faq-icon">
                            <svg viewBox="0 0 12 8">
                                <polyline points="1,1 6,6 11,1"></polyline>
                            </svg>
                        </span>
                    </button>
                    <div class="faq-answer">
                        <div class="faq-answer-content">
                            Í∞úÏù∏?åÏÉù ?†Ï≤≠ ?? Í∞Ä?•Ìï©?àÎã§.<br>
                            Í∞úÏù∏?åÏÉù???†Ï≤≠?òÎ©¥ Î≤ïÏõê???µÌï¥ Ï§ëÏ?Î™ÖÎ†π??Î∞úÎ? Î∞õÎäî?? Í∏àÏ?Î™ÖÎ†π???¥Î†§ÏßÄÎ©?Ï±ÑÍ∂å??Ï∏°Ïóê??Î≥Ä???îÍµ¨Î•??????ÜÍ≥† ?ÖÏ¥â?ÑÌôî, Î∞©Î¨∏, Î¨∏Ïûê Î∞úÏÜ° ?±Ïùò Î™®Îì†
                            Ï±ÑÍ∂åÏ∂îÏã¨ Î∞?Î≥Ä???ÖÏ¥â ?âÏúÑÍ∞Ä Î≤ïÏ†Å?ºÎ°ú Í∏àÏ??òÍ∏∞ ?åÎ¨∏?ÖÎãà??
                        </div>
                    </div>
                </div>

                <div class="faq-item">
                    <button class="faq-question" onclick="toggleFaq(this)">
                        <span>?ÑÍµ¨??Í∞úÏù∏?åÏÉù?¥ÎÇò ?åÏÇ∞???†Ï≤≠?????àÎÇò??</span>
                        <span class="faq-icon">
                            <svg viewBox="0 0 12 8">
                                <polyline points="1,1 6,6 11,1"></polyline>
                            </svg>
                        </span>
                    </button>
                    <div class="faq-answer">
                        <div class="faq-answer-content">
                            ?? Í∞Ä?•Ìï©?àÎã§. ?§Îßå, ?ÑÎûò??Í≤ΩÏö∞???¥Îãπ?úÎã§Î©??¥Î†§?????àÏäµ?àÎã§.<br><br>
                            <strong>¬∑ ?†Ï≤≠?????ÜÎäî Í≤ΩÏö∞</strong><br>
                            ÏßÄ?çÏ†Å???òÏûÖ?êÏù¥ ?ÜÎäî Í≤ΩÏö∞<br>
                            ÏµúÍ∑º Í∞úÏù∏?åÏÉù Î∞??åÏÇ∞ Î©¥Ï±Ö??Î∞õÏ? Í≤ΩÏö∞<br>
                            ÎπöÏù¥ ?àÎ¨¥ ÎßéÏ? Í≤ΩÏö∞ (Í∞úÏù∏?åÏÉù ?†Ï≤≠ Ï°∞Í±¥?Ä ?¥Î≥¥ Ï±ÑÎ¨¥ 15?µÏõê ?¥Ìïò, Î¨¥Îã¥Î≥?Ï±ÑÎ¨¥ 10?µÏõê ?¥Ìïò)
                        </div>
                    </div>
                </div>

                <div class="faq-item">
                    <button class="faq-question" onclick="toggleFaq(this)">
                        <span>Í≥ºÍ±∞??Í∞úÏù∏?åÏÉù?¥ÎÇò ?åÏÇ∞??ÏßÑÌñâ?àÎäî????ÏßÑÌñâ?????àÎÇò??</span>
                        <span class="faq-icon">
                            <svg viewBox="0 0 12 8">
                                <polyline points="1,1 6,6 11,1"></polyline>
                            </svg>
                        </span>
                    </button>
                    <div class="faq-answer">
                        <div class="faq-answer-content">
                            ?? Í∞Ä?•Ìï©?àÎã§.<br>
                            Í∞úÏù∏?åÏÉù ?¨Ïã†Ï≤?? Î©¥Ï±Ö ?ïÏ†ï?ºÎ°úÎ∂Ä??5?ÑÏù¥ Í≤ΩÍ≥º?òÎ©¥ Í∞Ä?•Ìï©?àÎã§.<br>
                            Í∞úÏù∏?åÏÇ∞ ?¨Ïã†Ï≤?? Î©¥Ï±Ö ?ïÏ†ï?ºÎ°úÎ∂Ä??5~7?ÑÏù¥ Í≤ΩÍ≥º?òÎ©¥ Í∞Ä?•Ìï©?àÎã§.
                        </div>
                    </div>
                </div>

                <div class="faq-item">
                    <button class="faq-question" onclick="toggleFaq(this)">
                        <span>Í∞ÄÏ°±ÏóêÍ≤??ºÌï¥???ÜÎÇò??</span>
                        <span class="faq-icon">
                            <svg viewBox="0 0 12 8">
                                <polyline points="1,1 6,6 11,1"></polyline>
                            </svg>
                        </span>
                    </button>
                    <div class="faq-answer">
                        <div class="faq-answer-content">
                            ?? ?ÑÌ? ?ÜÏäµ?àÎã§.
                        </div>
                    </div>
                </div>
            </div>
        </div>
        </section>

        <!-- ?§Ïãú??Í∏??πÏÖò -->
        <section id="location" class="location-section"></section>
        <div class="location-container">
            <div class="location-header">
                <h2 class="location-title">?§Ïãú??Í∏?/h2>

                <div class="location-info">
                    <div class="location-text">
                        <div class="location-address"><span class="label">Ï£ºÏÜå:</span> ?úÏö∏?πÎ≥Ñ???úÏ¥àÍµ??¨ÏûÑ?πÎ°ú8Í∏?9, Î™ÖÌôîÎπåÎî© 2Ï∏?
                        </div>
                        <div class="location-phone"><span class="label">?Ä?úÎ≤à??</span> 1555-1684</div>
                    </div>

                    <div class="location-buttons">
                        <a href="#" class="location-btn" onclick="shareLocation(event)">
                            <img src="/images/icon_share.png" alt="?ÑÏπòÍ≥µÏú†" />
                            ?ÑÏπòÍ≥µÏú†
                        </a>
                        <a href="https://map.naver.com/p/search/?úÏö∏?πÎ≥Ñ???úÏ¥àÍµ??¨ÏûÑ?πÎ°ú8Í∏?9" target="_blank"
                            class="location-btn">
                            <img src="/images/icon_search.png" alt="Í∏∏Ï∞æÍ∏? />
                            Í∏∏Ï∞æÍ∏?
                        </a>
                    </div>
                </div>
            </div>

            <div class="location-map" id="map" style="width:100%;height:400px;">
                <!-- ?§Ïù¥Î≤?ÏßÄ?ÑÍ? ?¨Í∏∞???úÏãú?©Îãà??-->
            </div>
        </div>
        </section>

        <!-- ?ÑÏ†Å ?ïÍ∞ê???πÏÖò -->
        <section class="total-reduction-section">
            <div class="reduction-container">
                <div class="reduction-content">
                    <p class="reduction-subtitle">ÏµúÎ? ?ïÍ∞êÎ•?96%???†Ìôî!</p>
                    <h2 class="reduction-title">Í∞úÏù∏?åÏÉù¬∑?åÏÇ∞ ?ÑÏ†Å ?ïÍ∞ê??/h2>
                    <div class="amount-display">
                        <div class="wheel-picker">
                            <div class="digit-container" data-digit="0">
                                <div class="digit-wheel">
                                    <span>0</span><span>1</span><span>2</span><span>3</span><span>4</span>
                                    <span>5</span><span>6</span><span>7</span><span>8</span><span>9</span>
                                </div>
                            </div>
                            <div class="digit-container" data-digit="1">
                                <div class="digit-wheel">
                                    <span>0</span><span>1</span><span>2</span><span>3</span><span>4</span>
                                    <span>5</span><span>6</span><span>7</span><span>8</span><span>9</span>
                                </div>
                            </div>
                            <div class="digit-container" data-digit="2">
                                <div class="digit-wheel">
                                    <span>0</span><span>1</span><span>2</span><span>3</span><span>4</span>
                                    <span>5</span><span>6</span><span>7</span><span>8</span><span>9</span>
                                </div>
                            </div>
                            <div class="comma">,</div>
                            <div class="digit-container" data-digit="3">
                                <div class="digit-wheel">
                                    <span>0</span><span>1</span><span>2</span><span>3</span><span>4</span>
                                    <span>5</span><span>6</span><span>7</span><span>8</span><span>9</span>
                                </div>
                            </div>
                            <div class="digit-container" data-digit="4">
                                <div class="digit-wheel">
                                    <span>0</span><span>1</span><span>2</span><span>3</span><span>4</span>
                                    <span>5</span><span>6</span><span>7</span><span>8</span><span>9</span>
                                </div>
                            </div>
                            <div class="digit-container" data-digit="5">
                                <div class="digit-wheel">
                                    <span>0</span><span>1</span><span>2</span><span>3</span><span>4</span>
                                    <span>5</span><span>6</span><span>7</span><span>8</span><span>9</span>
                                </div>
                            </div>
                            <div class="comma">,</div>
                            <div class="digit-container" data-digit="6">
                                <div class="digit-wheel">
                                    <span>0</span><span>1</span><span>2</span><span>3</span><span>4</span>
                                    <span>5</span><span>6</span><span>7</span><span>8</span><span>9</span>
                                </div>
                            </div>
                            <div class="digit-container" data-digit="7">
                                <div class="digit-wheel">
                                    <span>0</span><span>1</span><span>2</span><span>3</span><span>4</span>
                                    <span>5</span><span>6</span><span>7</span><span>8</span><span>9</span>
                                </div>
                            </div>
                            <div class="digit-container" data-digit="8">
                                <div class="digit-wheel">
                                    <span>0</span><span>1</span><span>2</span><span>3</span><span>4</span>
                                    <span>5</span><span>6</span><span>7</span><span>8</span><span>9</span>
                                </div>
                            </div>
                            <div class="comma">,</div>
                            <div class="digit-container" data-digit="9">
                                <div class="digit-wheel">
                                    <span>0</span><span>1</span><span>2</span><span>3</span><span>4</span>
                                    <span>5</span><span>6</span><span>7</span><span>8</span><span>9</span>
                                </div>
                            </div>
                            <div class="digit-container" data-digit="10">
                                <div class="digit-wheel">
                                    <span>0</span><span>1</span><span>2</span><span>3</span><span>4</span>
                                    <span>5</span><span>6</span><span>7</span><span>8</span><span>9</span>
                                </div>
                            </div>
                            <div class="digit-container" data-digit="11">
                                <div class="digit-wheel">
                                    <span>0</span><span>1</span><span>2</span><span>3</span><span>4</span>
                                    <span>5</span><span>6</span><span>7</span><span>8</span><span>9</span>
                                </div>
                            </div>
                            <span class="currency">??/span>
                        </div>
                    </div>
                </div>
            </div>
        </section>

        <!-- ?∏ÌÑ∞ ?πÏÖò -->
        <footer class="footer-section">
            <div class="footer-container">
                <div class="footer-content">
                    <div class="footer-left">
                        <div class="company-info">
                            <h3>?êÏù¥?§Î≤ïÎ•†ÏÇ¨Î¨¥ÏÜå</h3>
                            <p>Ï£ºÏÜå: ?úÏö∏?πÎ≥Ñ???úÏ¥àÍµ??¨ÏûÑ?πÎ°ú8Í∏?9, Î™ÖÌôîÎπåÎî© 2Ï∏?/p>
                            <p>?Ä?úÎ??∏ÏÇ¨: ?©ÏÑ†??/p>
                            <p>?¨ÏóÖ?êÎ≤à?? 159-08-00292</p>
                            <p>?Ä?úÏ†Ñ?? 1555-1684</p>
                        </div>
                        <div class="copyright">
                            <p>Copyright (c) ?êÏù¥?§Î≤ïÎ•†ÏÇ¨Î¨¥ÏÜå All rights reserved</p>
                        </div>
                    </div>

                    <div class="footer-right">
                        <div class="contact-info">
                            <p>Í∞úÏù∏?ïÎ≥¥ Î≥¥Ìò∏ Ï±ÖÏûÑ ?¥Îãπ</p>
                            <p>(?ÑÌôî 24?úÍ∞Ñ Í∞Ä??</p>
                            <div class="phone-number">1555-1684</div>
                            <div class="ace-logo">
                                <img src="/images/logo.png" alt="ACE Î≤ïÎ•†?¨Î¨¥??>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </footer>

        <!-- PC???òÎã® ?ÅÎã¥ ?†Ï≤≠ Î∞?-->
        <div class="pc-consultation-bar">
            <div class="pc-consultation-container">
                <div class="pc-consultation-message">
                    <span class="pc-highlight">?ÑÍµ≠, 365??/span><br>
                    <span>?îÏÉÅ?ÅÎã¥ Í∞Ä??</span>
                </div>

                <div class="pc-consultation-form">
                    <div class="pc-input-group">
                        <input type="text" id="pcNameInput" placeholder="?¥Î¶Ñ" class="pc-input name-input" required>
                        <div class="error-message" id="pcNameError"></div>
                        <div class="pc-privacy-check">
                            <input type="checkbox" id="pcPrivacyCheck" class="privacy-checkbox" checked>
                            <label for="pcPrivacyCheck">Í∞úÏù∏?ïÎ≥¥ ?òÏßë Î∞??¥Ïö©???Ä???ôÏùò <a href="#"
                                    class="privacy-link">?êÏÑ∏??/a></label>
                        </div>
                    </div>
                    <div class="pc-input-group">
                        <input type="tel" id="pcPhoneInput" placeholder="?∞ÎùΩÏ≤?(10~11?êÎ¶¨ ?ÖÎ†•)" class="pc-input phone-input"
                            maxlength="11" oninput="formatPcPhoneNumber(this)" required>
                        <div class="error-message" id="pcPhoneError"></div>
                    </div>
                    <button class="pc-consultation-btn primary" onclick="submitPcConsultation()">Î¨¥Î£å ?ÅÎã¥?†Ï≤≠</button>
                    <button class="pc-consultation-btn secondary" onclick="openKakaoTalk()">
                        <img src="/images/icon_talk.png" alt="Ïπ¥Ïπ¥?§ÌÜ°">
                        Ïπ¥ÌÜ°?ÅÎã¥
                    </button>
                </div>
            </div>
        </div>

        <!-- ?òÎã® ?ÅÎã¥ ?†Ï≤≠ Î∞?-->
        <div class="bottom-consultation-bar">
            <div class="consultation-bar-container">
                <div class="mobile-toggle-header" onclick="toggleConsultationForm()">
                    <div class="consultation-message">
                        <span class="highlight">Î¨¥Î£å ?ÅÎã¥?†Ï≤≠</span><br>
                    </div>
                    <button class="toggle-btn" id="toggleBtn">
                        <!-- ?ºÏπòÍ∏??ÑÏù¥ÏΩ?(Í∏∞Î≥∏ ?ÅÌÉú) -->
                        <svg class="expand-icon" width="20" height="12" viewBox="0 0 20 12" fill="none"
                            xmlns="http://www.w3.org/2000/svg">
                            <path d="M2 2L10 10L18 2" stroke="#333" stroke-width="3" stroke-linecap="round"
                                stroke-linejoin="round" />
                        </svg>
                        <!-- ?´Í∏∞ ?ÑÏù¥ÏΩ?(?ºÏ≥êÏß??ÅÌÉú) -->
                        <svg class="close-icon" width="20" height="20" viewBox="0 0 20 20" fill="none"
                            xmlns="http://www.w3.org/2000/svg" style="display: none;">
                            <path d="M15 5L5 15M5 5L15 15" stroke="#333" stroke-width="3" stroke-linecap="round"
                                stroke-linejoin="round" />
                        </svg>
                    </button>
                </div>

                <div class="consultation-message desktop-message">
                    <span class="highlight">Î¨¥Î£å ?ÅÎã¥?†Ï≤≠</span><br>
                </div>

                <div class="consultation-form-inline" id="consultationForm">
                    <!-- Í∏∞Î≥∏ ?ÖÎ†• ?ÑÎìú??-->
                    <div class="form-row-mobile">
                        <div class="input-group">
                            <div class="input-with-label">
                                <label class="input-label">?¥Î¶Ñ <span class="required">*</span></label>
                                <input type="text" class="inline-input name-input" id="mobileNameInput" required
                                    oninput="validateMobileForm()" placeholder="?¥Î¶Ñ???ÖÎ†•?òÏÑ∏??>
                            </div>
                        </div>
                        <div class="input-group">
                            <div class="input-with-label">
                                <label class="input-label">?∞ÎùΩÏ≤?<span class="required">*</span></label>
                                <input type="tel" class="inline-input phone-input" id="mobilePhoneInput" required
                                    oninput="formatPhoneNumber(this); validateMobileForm();" placeholder="?∞ÎùΩÏ≤òÎ? ?ÖÎ†•?òÏÑ∏??>
                            </div>
                        </div>
                    </div>

                    <!-- ?ïÏû• ??(?†Í? ??Î≥¥ÏûÑ) -->
                    <div class="expanded-form" id="expandedForm">
                        <!-- Ï±ÑÎ¨¥?? ?îÏÜå???ÑÎìú Ï£ºÏÑùÏ≤òÎ¶¨
                        <div class="form-row-mobile">
                            <div class="input-group">
                                <select class="inline-input" id="mobileDebtAmount" style="border: 1px solid #ddd;"
                                    onchange="validateMobileForm()">
                                    <option value="">Ï±ÑÎ¨¥Í∏àÏï° ?†ÌÉù</option>
                                    <option value="1000ÎßåÏõê ÎØ∏Îßå">1000ÎßåÏõê ÎØ∏Îßå</option>
                                    <option value="1000ÎßåÏõê~3000ÎßåÏõê">1000ÎßåÏõê~3000ÎßåÏõê</option>
                                    <option value="3000ÎßåÏõê~5000ÎßåÏõê">3000ÎßåÏõê~5000ÎßåÏõê</option>
                                    <option value="5000ÎßåÏõê~1?µÏõê">5000ÎßåÏõê~1?µÏõê</option>
                                    <option value="1?µÏõê ?¥ÏÉÅ">1?µÏõê ?¥ÏÉÅ</option>
                                </select>
                            </div>
                            <div class="input-group">
                                <select class="inline-input" id="mobileIncome" style="border: 1px solid #ddd;"
                                    onchange="validateMobileForm()">
                                    <option value="">?îÏÜå???†ÌÉù</option>
                                    <option value="100ÎßåÏõê ÎØ∏Îßå">100ÎßåÏõê ÎØ∏Îßå</option>
                                    <option value="100ÎßåÏõê~200ÎßåÏõê">100ÎßåÏõê~200ÎßåÏõê</option>
                                    <option value="200ÎßåÏõê~300ÎßåÏõê">200ÎßåÏõê~300ÎßåÏõê</option>
                                    <option value="300ÎßåÏõê~500ÎßåÏõê">300ÎßåÏõê~500ÎßåÏõê</option>
                                    <option value="500ÎßåÏõê ?¥ÏÉÅ">500ÎßåÏõê ?¥ÏÉÅ</option>
                                </select>
                            </div>
                        </div>
                        -->

                        <div class="privacy-check-mobile">
                            <label class="privacy-check">
                                <input type="checkbox" class="privacy-checkbox" id="mobilePrivacyAgree" required
                                    onchange="validateMobileForm()" checked>
                                Í∞úÏù∏?ïÎ≥¥ ?òÏßë Î∞??¥Ïö©???Ä???ôÏùò <a href="#" class="privacy-link">?êÏÑ∏??/a> <span
                                    class="required">*</span>
                            </label>
                        </div>

                        <button type="button" class="mobile-submit-btn" id="mobileSubmitBtn"
                            onclick="submitMobileConsultation()" disabled>Î¨¥Î£å
                            ?ÅÎã¥?†Ï≤≠</button>
                    </div>
                </div>
            </div>
        </div>

        <!-- ?ÅÎã® Í≥†Ï†ï Î≤ÑÌäº Ïª®ÌÖå?¥ÎÑà -->
        <div class="floating-btn-container" id="floatingBtnContainer">
            <div class="floating-btn-content">
                <a href="tel:1555-1684" class="floating-btn-phone">
                    <img src="/images/call_icon.png" alt="?ÑÌôî" />
                    1555-1684
                </a>
                <button class="consultation-btn primary" onclick="openConsultationModal()">
                    ?ÅÎã¥?òÍ∏∞
                </button>
                <button class="consultation-btn secondary" onclick="openKakaoTalk()">
                    <img src="/images/kakao_icon.png" alt="Ïπ¥Ïπ¥?§ÌÜ°">
                    Ïπ¥ÌÜ°?ÅÎã¥
                </button>
            </div>
        </div>

        <!-- TOP Î≤ÑÌäº -->
        <button class="top-button" id="topButton" onclick="scrollToTop()">
            <img src="/images/icon_top.png" alt="TOP" class="top-button-icon" />
            <div class="top-button-text">TOP</div>
        </button>

        <!-- ?ÅÎã¥ ?†Ï≤≠ ?ùÏóÖ -->
        <div id="consultationPopup" class="consultation-popup-overlay">
            <div class="consultation-popup-content">
                <div class="consultation-popup-header">
                    <h2>Î¨¥Î£å ?ÅÎã¥?†Ï≤≠</h2>
                    <button class="consultation-popup-close" onclick="closeConsultationPopup()">√ó</button>
                </div>

                <div class="consultation-popup-body">
                    <form id="consultationPopupForm" onsubmit="submitConsultationForm(event)">
                        <div class="popup-form-group">
                            <label for="popupName">?¥Î¶Ñ <span class="required">*</span></label>
                            <input type="text" id="popupName" name="name" placeholder="?¥Î¶Ñ???ÖÎ†•??Ï£ºÏÑ∏?? required
                                oninput="validateSecondPopupForm()">
                        </div>

                        <div class="popup-form-group">
                            <label for="popupPhone">?∞ÎùΩÏ≤?<span class="required">*</span></label>
                            <input type="tel" id="popupPhone" name="phone" placeholder="?∞ÎùΩÏ≤òÎ? ?ÖÎ†•??Ï£ºÏÑ∏??(- ?ÜÏù¥)" required
                                oninput="formatPhoneNumber(this); validateSecondPopupForm()">
                        </div>

                        <div class="popup-form-group">
                            <label for="popupDebtAmount">Ï±ÑÎ¨¥Í∏àÏï°</label>
                            <select id="popupDebtAmount" name="debtAmount" onchange="validateSecondPopupForm()">
                                <option value="">?†ÌÉù??Ï£ºÏÑ∏??/option>
                                <option value="1000ÎßåÏõê ÎØ∏Îßå">1000ÎßåÏõê ÎØ∏Îßå</option>
                                <option value="1000ÎßåÏõê~3000ÎßåÏõê">1000ÎßåÏõê~3000ÎßåÏõê</option>
                                <option value="3000ÎßåÏõê~5000ÎßåÏõê">3000ÎßåÏõê~5000ÎßåÏõê</option>
                                <option value="5000ÎßåÏõê~1?µÏõê">5000ÎßåÏõê~1?µÏõê</option>
                                <option value="1?µÏõê ?¥ÏÉÅ">1?µÏõê ?¥ÏÉÅ</option>
                            </select>
                        </div>

                        <div class="popup-form-group">
                            <label for="popupIncome">?îÏÜå??/label>
                            <select id="popupIncome" name="income" onchange="validateSecondPopupForm()">
                                <option value="">?†ÌÉù??Ï£ºÏÑ∏??/option>
                                <option value="100ÎßåÏõê ÎØ∏Îßå">100ÎßåÏõê ÎØ∏Îßå</option>
                                <option value="100ÎßåÏõê~200ÎßåÏõê">100ÎßåÏõê~200ÎßåÏõê</option>
                                <option value="200ÎßåÏõê~300ÎßåÏõê">200ÎßåÏõê~300ÎßåÏõê</option>
                                <option value="300ÎßåÏõê~500ÎßåÏõê">300ÎßåÏõê~500ÎßåÏõê</option>
                                <option value="500ÎßåÏõê ?¥ÏÉÅ">500ÎßåÏõê ?¥ÏÉÅ</option>
                            </select>
                        </div>

                        <!-- ?®Í≤®Ïß??îÎ∞î?¥Ïä§ ?ïÎ≥¥ ?ÑÎìú -->
                        <input type="hidden" id="popupDevice" name="device" value="">

                        <div class="popup-form-group">
                            <label class="privacy-check-popup">
                                <input type="checkbox" id="popupPrivacyAgree" name="privacyAgree" required
                                    onchange="validateSecondPopupForm()" checked>
                                Í∞úÏù∏?ïÎ≥¥ ?òÏßë Î∞??¥Ïö©???Ä???ôÏùò <a href="#" class="privacy-link">?êÏÑ∏??/a><span
                                    class="required">*</span>
                            </label>
                        </div>

                        <button type="submit" class="consultation-submit-popup-btn" id="secondPopupSubmitBtn" disabled
                            style="background: #ccc !important; opacity: 0.6 !important; cursor: not-allowed !important; color: #999 !important;">Î¨¥Î£å
                            ?ÅÎã¥?†Ï≤≠</button>
                    </form>
                </div>
            </div>
        </div>

        <!-- ?ÅÎã¥ ?†Ï≤≠ ?ÑÎ£å ?ùÏóÖ -->
        <div id="consultationSuccessPopup" class="consultation-popup-overlay">
            <div class="consultation-popup-content success-popup">
                <div class="consultation-popup-header">
                    <h2>?ÅÎã¥ ?†Ï≤≠ ?ÑÎ£å</h2>
                    <button class="consultation-popup-close" onclick="closeSuccessPopup()">√ó</button>
                </div>

                <div class="consultation-popup-body">
                    <div class="success-message">
                        <div class="success-icon">??/div>
                        <p>?ÅÎã¥ ?†Ï≤≠???ÑÎ£å?òÏóà?µÎãà??</p>
                        <p>Îπ†Î•∏ ?úÏùº ?¥Ïóê ?∞ÎùΩ?úÎ¶¨Í≤†Ïäµ?àÎã§.</p>
                    </div>
                    <button class="success-confirm-btn" onclick="closeSuccessPopup()">?ïÏù∏</button>
                </div>
            </div>
        </div>

        <!-- AI ?êÍ? ÏßÑÎã® Î™®Îã¨ -->
        <div id="aiDiagnosisModal" class="modal-overlay">
            <div class="modal-content">
                <button class="modal-close">√ó</button>

                <!-- Í≥µÌÜµ ?§Îçî -->
                <div class="modal-header">
                    <h2 class="modal-title">AI ÏßÑÎã®?ºÎ°ú ?åÏïÑÎ≥¥Í∏∞</h2>
                    <p class="modal-subtitle">?êÏù¥?§Î≤ïÎ•†ÏÇ¨Î¨¥ÏÜåÍ∞Ä ÏßÑÌñâ??Í∞úÏù∏?åÏÉù Î≤ïÎ•†??Í∑ºÍ±∞?òÏó¨<br>?åÏÉù Í∞Ä?•ÏÑ±??ÏßÑÎã®???úÎ†§??</p>
                </div>

                <!-- Í≥µÌÜµ ?îÎ∞î?¥Îçî -->
                <div class="modal-divider"></div>

                <!-- Ï≤?Î≤àÏß∏ ?îÎ©¥: ÏßÑÎã® ?úÏûë -->
                <div id="startScreen" class="screen active">
                    <div class="modal-body">
                        <div class="modal-icon"></div>
                        <div class="modal-description">
                            <span class="highlight">Í∞úÏù∏?åÏÉù</span>?ºÎ°ú AIÏßÑÎã®???úÏûë?©Îãà??
                        </div>
                        <button class="diagnosis-start-btn" onclick="startDiagnosis()">ÏßÑÎã® ?úÏûë?òÍ∏∞</button>
                    </div>
                </div>

                <!-- ??Î≤àÏß∏ ?îÎ©¥: ÏßàÎ¨∏ -->
                <div id="questionScreen" class="screen">
                    <!-- ÏßÑÎã® ?®Í≥Ñ ?úÏãú -->
                    <div class="diagnosis-steps">
                        <div class="step active">Ï±ÑÎ¨¥??/div>
                        <div class="step non-active">???åÎìù</div>
                        <div class="step non-active">Î≥¥Ïú†?¨ÏÇ∞</div>
                        <div class="step non-active">Î∂Ä?ëÍ?Ï°?/div>
                    </div>

                    <!-- ÏßàÎ¨∏ ?ÅÏó≠ -->
                    <div class="question-area">
                        <h3 class="question-title">Q. Ï±ÑÎ¨¥ Í∏àÏï°???ºÎßà?∏Í???</h3>

                        <div class="input-area">
                            <input type="text" id="debtAmount" class="debt-input" placeholder="?? 2000"
                                oninput="validateInput()" />
                            <span class="unit">Îß???/span>
                        </div>

                        <button class="modal-next-btn disabled" id="nextBtn" onclick="nextQuestion()"
                            disabled>?§Ïùå</button>
                    </div>
                </div>

                <!-- ??Î≤àÏß∏ ?îÎ©¥: ???åÎìù ÏßàÎ¨∏ -->
                <div id="incomeScreen" class="screen">
                    <!-- ÏßÑÎã® ?®Í≥Ñ ?úÏãú -->
                    <div class="diagnosis-steps">
                        <div class="step completed">Ï±ÑÎ¨¥??/div>
                        <div class="step active">???åÎìù</div>
                        <div class="step non-active">Î≥¥Ïú†?¨ÏÇ∞</div>
                        <div class="step non-active">Î∂Ä?ëÍ?Ï°?/div>
                    </div>

                    <!-- ÏßàÎ¨∏ ?ÅÏó≠ -->
                    <div class="question-area">
                        <h3 class="question-title">Q. ???åÎìù?Ä ?ºÎßà?∏Í???</h3>

                        <div class="input-area">
                            <input type="text" id="incomeAmount" class="debt-input" placeholder="?? 200"
                                oninput="validateIncomeInput()" />
                            <span class="unit">Îß???/span>
                        </div>

                        <button class="modal-next-btn disabled" id="incomeNextBtn" onclick="nextIncomeQuestion()"
                            disabled>?§Ïùå</button>
                    </div>
                </div>

                <!-- ??Î≤àÏß∏ ?îÎ©¥: Î≥¥Ïú†?¨ÏÇ∞ ÏßàÎ¨∏ -->
                <div id="assetsScreen" class="screen">
                    <!-- ÏßÑÎã® ?®Í≥Ñ ?úÏãú -->
                    <div class="diagnosis-steps">
                        <div class="step completed">Ï±ÑÎ¨¥??/div>
                        <div class="step completed">???åÎìù</div>
                        <div class="step active">Î≥¥Ïú†?¨ÏÇ∞</div>
                        <div class="step non-active">Î∂Ä?ëÍ?Ï°?/div>
                    </div>

                    <!-- ÏßàÎ¨∏ ?ÅÏó≠ -->
                    <div class="question-area">
                        <h3 class="question-title">Q. Î≥∏Ïù∏ Î™ÖÏùò Î∂Ä?ôÏÇ∞???àÏúº?†Í???</h3>

                        <div class="choice-area">
                            <div class="choice-option" onclick="selectAssets(true)">
                                <div class="choice-content">
                                    <div class="choice-icon">‚≠?/div>
                                    <div class="choice-text">??/div>
                                </div>
                            </div>
                            <div class="choice-option" onclick="selectAssets(false)">
                                <div class="choice-content">
                                    <div class="choice-icon">??/div>
                                    <div class="choice-text">?ÑÎãà??/div>
                                </div>
                            </div>
                        </div>

                        <button class="modal-next-btn disabled" id="assetsNextBtn" onclick="nextAssetsQuestion()"
                            disabled>?§Ïùå</button>
                    </div>
                </div>

                <!-- ?§ÏÑØ Î≤àÏß∏ ?îÎ©¥: Î∂Ä?ëÍ?Ï°?ÏßàÎ¨∏ -->
                <div id="dependentsScreen" class="screen">
                    <!-- ÏßÑÎã® ?®Í≥Ñ ?úÏãú -->
                    <div class="diagnosis-steps">
                        <div class="step completed">Ï±ÑÎ¨¥??/div>
                        <div class="step completed">???åÎìù</div>
                        <div class="step completed">Î≥¥Ïú†?¨ÏÇ∞</div>
                        <div class="step active">Î∂Ä?ëÍ?Ï°?/div>
                    </div>

                    <!-- ÏßàÎ¨∏ ?ÅÏó≠ -->
                    <div class="question-area">
                        <h3 class="question-title">Q. Î∂Ä?ëÍ?Ï°±Ïù¥ ?àÏúº?†Í???</h3>

                        <div class="choice-area">
                            <div class="choice-option" onclick="selectDependents(true)">
                                <div class="choice-content">
                                    <div class="choice-icon">‚≠?/div>
                                    <div class="choice-text">??/div>
                                </div>
                            </div>
                            <div class="choice-option" onclick="selectDependents(false)">
                                <div class="choice-content">
                                    <div class="choice-icon">??/div>
                                    <div class="choice-text">?ÑÎãà??/div>
                                </div>
                            </div>
                        </div>

                        <button class="modal-next-btn disabled" id="dependentsNextBtn"
                            onclick="nextDependentsQuestion()" disabled>?§Ïùå</button>
                    </div>
                </div>

                <!-- ?¨ÏÑØ Î≤àÏß∏ ?îÎ©¥: Î°úÎî© -->
                <div id="loadingScreen" class="screen">
                    <div class="loading-area">
                        <div class="loading-spinner">
                            <div class="spinner-dots">
                                <div class="spinner-dot"></div>
                                <div class="spinner-dot"></div>
                                <div class="spinner-dot"></div>
                                <div class="spinner-dot"></div>
                                <div class="spinner-dot"></div>
                                <div class="spinner-dot"></div>
                                <div class="spinner-dot"></div>
                                <div class="spinner-dot"></div>
                            </div>
                        </div>
                        <div class="loading-text">
                            <h3>AI ÏßÑÎã® Ï§ëÏù¥?êÏöî.</h3>
                            <p>?†ÏãúÎß?Í∏∞Îã§??Ï£ºÏÑ∏??</p>
                        </div>
                    </div>
                </div>

                <!-- ?ºÍ≥± Î≤àÏß∏ ?îÎ©¥: ?ÅÎã¥ ?†Ï≤≠ -->
                <div id="consultationScreen" class="screen">
                    <div class="consultation-area">
                        <div class="consultation-result">
                            <h3><span id="diagnosisResultType">Í∞úÏù∏?åÏÉù</span> <span class="highlight">?†Ï≤≠??Í∞Ä??/span>?©Îãà??
                            </h3>
                        </div>

                        <div class="consultation-form-area">
                            <div class="form-group">
                                <div class="input-with-label">
                                    <span class="input-label">?¥Î¶Ñ</span>
                                    <input type="text" id="consultName" placeholder="?? ?çÍ∏∏??
                                        oninput="validateConsultationForm()" />
                                </div>
                            </div>

                            <div class="form-group">
                                <div class="input-with-label">
                                    <span class="input-label">?¥Î??∞Î≤à??/span>
                                    <input type="tel" id="consultPhone" placeholder="- ???úÏô∏?òÍ≥† ?ÖÎ†•" maxlength="11"
                                        oninput="this.value = this.value.replace(/[^0-9]/g, '').slice(0, 11); validateConsultationForm()" />
                                </div>
                            </div>

                            <div class="privacy-agreement">
                                <label class="checkbox-label">
                                    <input type="checkbox" id="privacyAgree" onchange="validateConsultationForm()"
                                        checked />
                                    <span class="checkmark"></span>
                                    Í∞úÏù∏?ïÎ≥¥ ?òÏßë Î∞??¥Ïö©???Ä???ôÏùò <span class="privacy-link"> ?êÏÑ∏??/span>
                                </label>
                            </div>

                            <button class="consultation-submit-btn disabled" id="consultationSubmitBtn"
                                onclick="submitConsultation()" disabled>Î¨¥Î£å ?ÅÎã¥ ?†Ï≤≠</button>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <!-- ?ÅÎã¥ ?†Ï≤≠ ?±Í≥µ Î™®Îã¨ -->
        <div id="successModal" class="modal-overlay">
            <div class="modal-content success-modal-content">
                <button class="modal-close" onclick="closeSuccessModal()">√ó</button>

                <div class="success-popup">
                    <div class="success-icon-wrapper">
                        <div class="success-icon-circle">
                            <img src="/images/icon_ok.png" alt="?ÑÎ£å" class="success-icon-img">
                        </div>
                    </div>

                    <div class="success-message">
                        <h3>?ÅÎã¥ ?†Ï≤≠ ?ÑÎ£å</h3>
                        <p>Îπ†Î•¥Í≤??àÎÇ¥?úÎ¶¨Í≤†Ïäµ?àÎã§.</p>
                    </div>

                    <button class="success-confirm-btn" onclick="closeSuccessModal()">?ïÏù∏</button>
                </div>
            </div>
        </div>

        <!-- Swiper JS -->
        <script src="https://cdn.jsdelivr.net/npm/swiper@11/swiper-bundle.min.js"></script>

        <!-- Common JS -->
        <script src="/js/common.js"></script>
        
        <!-- Hash Navigation JS -->
        <script src="/js/hash-navigation.js"></script>

        <!-- ?ÅÎã¥ ?†Ï≤≠ ?ùÏóÖ -->
        <div class="consultation-popup-overlay" id="consultationPopup">
            <div class="consultation-popup-content">
                <div class="consultation-popup-header">
                    <h2>Î¨¥Î£å ?ÅÎã¥ ?†Ï≤≠</h2>
                    <button class="consultation-popup-close" onclick="closeConsultationPopup()">&times;</button>
                </div>
                <div class="consultation-popup-body">
                    <form id="consultationPopupForm" onsubmit="submitConsultationForm(event)">
                        <div class="popup-form-group">
                            <label for="popupName">?¥Î¶Ñ *</label>
                            <input type="text" id="popupName" name="name" placeholder="?? ?çÍ∏∏?? required
                                oninput="validatePopupForm()">
                        </div>

                        <div class="popup-form-group">
                            <label for="popupPhone">?∞ÎùΩÏ≤?*</label>
                            <input type="tel" id="popupPhone" name="phone" placeholder="- ???úÏô∏?òÍ≥† ?ÖÎ†•"
                                oninput="formatPhoneNumber(this); validatePopupForm()" required>
                        </div>

                        <div class="popup-form-group">
                            <label for="popupDebt">Ï±ÑÎ¨¥Í∏àÏï°</label>
                            <select id="popupDebt" name="debtAmount" onchange="validatePopupForm()">
                                <option value="">Ï±ÑÎ¨¥Í∏àÏï°???†ÌÉù?¥Ï£º?∏Ïöî</option>
                                <option value="1000ÎßåÏõê ÎØ∏Îßå">1000ÎßåÏõê ÎØ∏Îßå</option>
                                <option value="1000ÎßåÏõê~3000ÎßåÏõê">1000ÎßåÏõê~3000ÎßåÏõê</option>
                                <option value="3000ÎßåÏõê~5000ÎßåÏõê">3000ÎßåÏõê~5000ÎßåÏõê</option>
                                <option value="5000ÎßåÏõê~1?µÏõê">5000ÎßåÏõê~1?µÏõê</option>
                                <option value="1?µÏõê ?¥ÏÉÅ">1?µÏõê ?¥ÏÉÅ</option>
                            </select>
                        </div>

                        <div class="popup-form-group">
                            <label for="popupIncome">?îÏÜå??/label>
                            <select id="popupIncome" name="income" onchange="validatePopupForm()">
                                <option value="">?îÏÜå?ùÏùÑ ?†ÌÉù?¥Ï£º?∏Ïöî</option>
                                <option value="100ÎßåÏõê ÎØ∏Îßå">100ÎßåÏõê ÎØ∏Îßå</option>
                                <option value="100ÎßåÏõê~200ÎßåÏõê">100ÎßåÏõê~200ÎßåÏõê</option>
                                <option value="200ÎßåÏõê~300ÎßåÏõê">200ÎßåÏõê~300ÎßåÏõê</option>
                                <option value="300ÎßåÏõê~500ÎßåÏõê">300ÎßåÏõê~500ÎßåÏõê</option>
                                <option value="500ÎßåÏõê ?¥ÏÉÅ">500ÎßåÏõê ?¥ÏÉÅ</option>
                            </select>
                        </div>

                        <input type="hidden" id="popupDevice" name="device" value="PC">

                        <div class="privacy-check-popup">
                            <input type="checkbox" id="popupPrivacyAgree" name="privacyAgree" required
                                onchange="validatePopupForm()" checked>
                            <label for="popupPrivacyAgree">Í∞úÏù∏?ïÎ≥¥ ?òÏßë Î∞??¥Ïö©???Ä???ôÏùò <a href="#"
                                    class="privacy-link">?êÏÑ∏??/a><span class="required">*</span></label>
                        </div>

                        <button type="submit" class="consultation-submit-popup-btn" id="popupSubmitBtn"
                            disabled="disabled" style="background-color: #cccccc !important; 
                                       opacity: 0.6 !important; 
                                       cursor: not-allowed !important; 
                                       color: #999999 !important;
                                       pointer-events: none !important;">
                            Î¨¥Î£å ?ÅÎã¥ ?†Ï≤≠
                        </button>
                    </form>
                </div>
            </div>
        </div>

        <!-- ?ÅÎã¥ ?†Ï≤≠ ?±Í≥µ ?ùÏóÖ -->
        <div class="consultation-popup-overlay" id="consultationSuccessPopup">
            <div class="consultation-popup-content success-popup">
                <div class="consultation-popup-header">
                    <h2>?ÅÎã¥ ?†Ï≤≠ ?ÑÎ£å</h2>
                    <button class="consultation-popup-close" onclick="closeSuccessPopup()">&times;</button>
                </div>
                <div class="consultation-popup-body">
                    <div class="success-message">
                        <div class="success-icon">??/div>
                        <p><strong>?ÅÎã¥ ?†Ï≤≠???ÑÎ£å?òÏóà?µÎãà??</strong></p>
                        <p>Îπ†Î•∏ ?úÏùº ?¥Ïóê ?ÑÎ¨∏ ?ÅÎã¥?¨Í?<br>?∞ÎùΩ?úÎ¶¨Í≤†Ïäµ?àÎã§.</p>
                        <button class="success-confirm-btn" onclick="closeSuccessPopup()">?ïÏù∏</button>
                    </div>
                </div>
            </div>
        </div>

        <!-- ?§Ìå®???Ä??CSS -->
        <style>
            /* ?§Ìå®?úÍ? ?¥Î†∏????Ï∂îÍ? ?§Ì???*/
            body.keyboard-open {
                position: fixed;
                width: 100%;
            }

            /* iOS Safari ?§Ìå®???Ä??*/
            @supports (-webkit-touch-callout: none) {

                body.keyboard-open .floating-btn-container,
                body.keyboard-open .bottom-consultation-bar {
                    display: none !important;
                }
            }

            /* ?ÅÎã¥ ?†Ï≤≠ ?ùÏóÖ ?§Ì???*/
            .consultation-popup-overlay {
                position: fixed;
                top: 0;
                left: 0;
                right: 0;
                bottom: 0;
                background: rgba(0, 0, 0, 0.5);
                z-index: 2000;
                display: none;
                align-items: center;
                justify-content: center;
                opacity: 0;
                transition: opacity 0.3s ease;
            }

            .consultation-popup-overlay.show {
                display: flex;
                opacity: 1;
            }

            .consultation-popup-content {
                background: white;
                border-radius: 15px;
                width: 90%;
                max-width: 420px;
                max-height: 90vh;
                overflow-y: auto;
                box-shadow: 0 20px 60px rgba(0, 0, 0, 0.3);
                transform: scale(0.9);
                transition: transform 0.3s ease;
            }

            .consultation-popup-overlay.show .consultation-popup-content {
                transform: scale(1);
            }

            .consultation-popup-header {
                display: flex;
                justify-content: space-between;
                align-items: center;
                padding: 25px 30px 20px;
                border-bottom: 1px solid #e9ecef;
            }

            .consultation-popup-header h2 {
                font-size: 24px;
                font-weight: bold;
                color: #333;
                margin: 0;
            }

            .consultation-popup-close {
                background: none;
                border: none;
                font-size: 28px;
                color: #999;
                cursor: pointer;
                padding: 0;
                width: 30px;
                height: 30px;
                display: flex;
                align-items: center;
                justify-content: center;
                border-radius: 50%;
                transition: all 0.3s;
            }

            .consultation-popup-close:hover {
                background: #f5f5f5;
                color: #333;
            }

            .consultation-popup-body {
                padding: 30px;
            }

            .popup-form-group {
                margin-bottom: 25px;
            }

            .popup-form-group label {
                display: block;
                font-size: 16px;
                font-weight: 600;
                color: #333;
                margin-bottom: 8px;
            }

            .popup-form-group input,
            .popup-form-group select {
                width: 100%;
                padding: 15px 18px;
                border: 2px solid #e5e5e5;
                border-radius: 8px;
                font-size: 16px;
                background: white;
                color: #333;
                transition: border-color 0.3s;
                box-sizing: border-box;
            }

            .popup-form-group input:focus,
            .popup-form-group select:focus {
                outline: none;
                border-color: #4865FF;
                background: white;
            }

            .popup-form-group input::placeholder {
                color: #aaa;
            }

            .popup-form-group select {
                color: #666;
            }

            .popup-form-group select:focus,
            .popup-form-group select:valid {
                color: #333;
            }

            .privacy-check-popup {
                display: flex;
                align-items: center;
                gap: 10px;
                font-size: 14px;
                color: #666;
                cursor: pointer;
                margin-bottom: 20px;
            }

            .privacy-check-popup input[type="checkbox"] {
                width: auto;
                margin: 0;
            }

            /* ?±Í≥µ ?ùÏóÖ ?§Ì???*/
            .success-popup {
                text-align: center;
            }

            .success-message {
                padding: 20px 0;
            }

            .success-icon {
                width: 80px;
                height: 80px;
                background: #4865FF;
                border-radius: 50%;
                display: flex;
                align-items: center;
                justify-content: center;
                font-size: 40px;
                color: white;
                margin: 0 auto 20px;
            }

            .success-message p {
                font-size: 18px;
                color: #333;
                margin: 10px 0;
                line-height: 1.5;
            }

            .success-confirm-btn {
                background: #4865FF;
                color: white;
                border: none;
                padding: 15px 40px;
                border-radius: 10px;
                font-size: 16px;
                font-weight: bold;
                cursor: pointer;
                transition: background 0.3s;
                margin-top: 20px;
            }

            .success-confirm-btn:hover {
                background: #365a9b;
            }

            /* Î™®Î∞î???ùÏóÖ ?§Ì???*/
            @media (max-width: 768px) {
                .consultation-popup-content {
                    width: 95%;
                    margin: 20px;
                }

                .consultation-popup-header {
                    padding: 20px 25px 15px;
                }

                .consultation-popup-header h2 {
                    font-size: 20px;
                }

                .consultation-popup-body {
                    padding: 25px;
                }

                .popup-form-group {
                    margin-bottom: 20px;
                }

                .popup-form-group label {
                    font-size: 15px;
                }

                .popup-form-group input,
                .popup-form-group select {
                    padding: 12px 15px;
                    font-size: 15px;
                }

                .consultation-submit-popup-btn {
                    padding: 15px;
                    font-size: 16px;
                }
            }
        </style>

        <script>
            // ?±Í≥µ Î™®Îã¨ Í¥Ä???®Ïàò??
            function showSuccessModal() {
                const successModal = document.getElementById('successModal');
                if (successModal) {
                    successModal.style.display = 'flex';
                    setTimeout(() => {
                        successModal.classList.add('show');
                    }, 10);
                    document.body.style.overflow = 'hidden';
                }
            }

            function closeSuccessModal() {
                const successModal = document.getElementById('successModal');
                if (successModal) {
                    successModal.classList.remove('show');
                    setTimeout(() => {
                        successModal.style.display = 'none';
                        document.body.style.overflow = '';
                    }, 300);
                }
            }

            // ?§Ïù¥Î≤?ÏßÄ??Ï¥àÍ∏∞??
            function initNaverMap() {
                try {
                    // ?êÏù¥?§Î≤ïÎ•†ÏÇ¨Î¨¥ÏÜå ?ÑÏπò Ï¢åÌëú (?úÏö∏?πÎ≥Ñ???úÏ¥àÍµ??¨ÏûÑ?πÎ°ú8Í∏?9, Î™ÖÌôîÎπåÎî© 2Ï∏?
                    var aceLocation = new naver.maps.LatLng(37.488121, 127.015564);

                    // ÏßÄ???µÏÖò ?§Ï†ï
                    var mapOptions = {
                        center: aceLocation,
                        zoom: 17,
                        mapTypeId: naver.maps.MapTypeId.NORMAL,
                        zoomControl: false,  // Ï§?Ïª®Ìä∏Î°?ÎπÑÌôú?±Ìôî
                        zoomControlOptions: {
                            position: naver.maps.Position.TOP_RIGHT,
                            style: naver.maps.ZoomControlStyle.SMALL
                        },
                        mapDataControl: false,
                        scaleControl: false,  // ?§Ï???Ïª®Ìä∏Î°?ÎπÑÌôú?±Ìôî
                        logoControl: true,
                        mapTypeControl: false,
                        minZoom: 17,  // ÏµúÏÜå Ï§??àÎ≤®???ÑÏû¨ Ï§åÍ≥º ?ôÏùº?òÍ≤å
                        maxZoom: 17,  // ÏµúÎ? Ï§??àÎ≤®???ÑÏû¨ Ï§åÍ≥º ?ôÏùº?òÍ≤å
                        draggable: false,  // ?úÎûòÍ∑?ÎπÑÌôú?±Ìôî
                        pinchZoom: false,  // ?ÄÏπ?Ï§?ÎπÑÌôú?±Ìôî
                        scrollWheel: false,  // ?§ÌÅ¨Î°???Ï§?ÎπÑÌôú?±Ìôî
                        keyboardShortcuts: false,  // ?§Î≥¥???®Ï∂ï??ÎπÑÌôú?±Ìôî
                        disableDoubleClickZoom: true,  // ?îÎ∏î?¥Î¶≠ Ï§?ÎπÑÌôú?±Ìôî
                        disableDoubleTapZoom: true,  // ?îÎ∏î??Ï§?ÎπÑÌôú?±Ìôî
                        disableTwoFingerTapZoom: true  // ???êÍ?????Ï§?ÎπÑÌôú?±Ìôî
                    };

                    // ÏßÄ???ùÏÑ±
                    var map = new naver.maps.Map(document.getElementById('map'), mapOptions);

                    // Ïª§Ïä§?Ä ÎßàÏª§ ?ÑÏù¥ÏΩ??ùÏÑ± (?????¨Í∏∞Î°?Î™ÖÏπ≠ Í∞ïÏ°∞)
                    var marker = new naver.maps.Marker({
                        position: aceLocation,
                        map: map,
                        title: '?êÏù¥?§Î≤ïÎ•†ÏÇ¨Î¨¥ÏÜå',
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
                                '       ?è¢ ?êÏù¥?§Î≤ïÎ•†ÏÇ¨Î¨¥ÏÜå',
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

                    // ?ïÎ≥¥Ï∞??ùÏÑ±
                    var infoWindow = new naver.maps.InfoWindow({
                        content: [
                            '<div style="padding: 20px; min-width: 280px; line-height: 1.6; font-family: Pretendard, sans-serif;">',
                            '   <div style="font-size: 18px; font-weight: bold; color: #333; margin-bottom: 12px; text-align: center;">',
                            '       ?è¢ ?êÏù¥?§Î≤ïÎ•†ÏÇ¨Î¨¥ÏÜå',
                            '   </div>',
                            '   <div style="font-size: 14px; color: #666; margin-bottom: 10px; text-align: center;">',
                            '       ?ìç ?úÏö∏?πÎ≥Ñ???úÏ¥àÍµ??¨ÏûÑ?πÎ°ú8Í∏?9<br>',
                            '       &nbsp;&nbsp;&nbsp;&nbsp;Î™ÖÌôîÎπåÎî© 2Ï∏?,
                            '   </div>',
                            '   <div style="font-size: 16px; color: #4865FF; font-weight: bold; margin-bottom: 15px; text-align: center;">',
                            '       ?ìû 1555-1684',
                            '   </div>',
                            '   <div style="display: flex; gap: 10px; justify-content: center;">',
                            '       <a href="tel:1555-1684" style="background: #4865FF; color: white; padding: 8px 16px; border-radius: 6px; text-decoration: none; font-size: 13px; font-weight: 500;">?ìû ?ÑÌôîÍ±∏Í∏∞</a>',
                            '       <a href="https://map.naver.com/p/search/?úÏö∏?πÎ≥Ñ???úÏ¥àÍµ??¨ÏûÑ?πÎ°ú8Í∏?9" target="_blank" style="background: #03C75A; color: white; padding: 8px 16px; border-radius: 6px; text-decoration: none; font-size: 13px; font-weight: 500;">?ó∫Ô∏?Í∏∏Ï∞æÍ∏?/a>',
                            '   </div>',
                            '</div>'
                        ].join('')
                    });

                    // ÎßàÏª§ ?¥Î¶≠ ?¥Î≤§??
                    naver.maps.Event.addListener(marker, 'click', function () {
                        if (infoWindow.getMap()) {
                            infoWindow.close();
                        } else {
                            infoWindow.open(map, marker);
                        }
                    });

                    // ÏßÄ???¥Î¶≠ ???ïÎ≥¥Ï∞??´Í∏∞
                    naver.maps.Event.addListener(map, 'click', function () {
                        infoWindow.close();
                    });

                    // ÏßÄ??Î°úÎìú ?ÑÎ£å ???†Ïãú ?ïÎ≥¥Ï∞??úÏãú
                    naver.maps.Event.addListener(map, 'idle', function () {
                        setTimeout(function () {
                            infoWindow.open(map, marker);
                            setTimeout(function () {
                                infoWindow.close();
                            }, 4000); // 4Ï¥????êÎèô ?´Í∏∞
                        }, 1000);
                    });

                    console.log('?§Ïù¥Î≤?ÏßÄ?ÑÍ? ?±Í≥µ?ÅÏúºÎ°?Ï¥àÍ∏∞?îÎêò?àÏäµ?àÎã§.');

                } catch (error) {
                    console.error('?§Ïù¥Î≤?ÏßÄ??Ï¥àÍ∏∞??Ï§??§Î•ò Î∞úÏÉù:', error);
                    showAlternativeMap();
                }
            }

            // ?òÏù¥ÏßÄ Î°úÎìú ??ÏßÄ??Ï¥àÍ∏∞??
            document.addEventListener('DOMContentLoaded', function () {
                if (typeof naver !== 'undefined' && naver.maps) {
                    initNaverMap();
                } else {
                    console.error('?§Ïù¥Î≤?ÏßÄ??APIÍ∞Ä Î°úÎìú?òÏ? ?äÏïò?µÎãà??');
                }
            });

            // ?ÄÏ≤?ÏßÄ???úÏãú ?®Ïàò
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
                                ?ìç ?êÏù¥?§Î≤ïÎ•†ÏÇ¨Î¨¥ÏÜå
                            </div>
                            <div style="font-size: 14px; color: #666; margin-bottom: 15px; line-height: 1.4;">
                                ?úÏö∏?πÎ≥Ñ???úÏ¥àÍµ??¨ÏûÑ?πÎ°ú8Í∏?9<br>
                                Î™ÖÌôîÎπåÎî© 2Ï∏?
                            </div>
                            <div style="display: flex; gap: 10px; flex-wrap: wrap; justify-content: center;">
                                <a href="https://map.naver.com/p/search/?úÏö∏?πÎ≥Ñ???úÏ¥àÍµ??¨ÏûÑ?πÎ°ú8Í∏?9" target="_blank" 
                                   style="
                                       background: #03C75A;
                                       color: white;
                                       padding: 8px 16px;
                                       border-radius: 6px;
                                       text-decoration: none;
                                       font-size: 14px;
                                       font-weight: 500;
                                   ">
                                    ?§Ïù¥Î≤?ÏßÄ??
                                </a>
                                <a href="https://map.kakao.com/link/search/?úÏö∏?πÎ≥Ñ???úÏ¥àÍµ??¨ÏûÑ?πÎ°ú8Í∏?9" target="_blank"
                                   style="
                                       background: #FEE500;
                                       color: #000;
                                       padding: 8px 16px;
                                       border-radius: 6px;
                                       text-decoration: none;
                                       font-size: 14px;
                                       font-weight: 500;
                                   ">
                                    Ïπ¥Ïπ¥?§Îßµ
                                </a>
                            </div>
                        </div>
                    `;
                }
            }

            // ?ÑÏπòÍ≥µÏú† ?®Ïàò
            function shareLocation(event) {
                event.preventDefault();

                const locationUrl = 'https://map.naver.com/p/search/?úÏö∏?πÎ≥Ñ???úÏ¥àÍµ??¨ÏûÑ?πÎ°ú8Í∏?9';
                const locationText = '?êÏù¥?§Î≤ïÎ•†ÏÇ¨Î¨¥ÏÜå - ?úÏö∏?πÎ≥Ñ???úÏ¥àÍµ??¨ÏûÑ?πÎ°ú8Í∏?9, Î™ÖÌôîÎπåÎî© 2Ï∏?;

                // Web Share API ÏßÄ???¨Î? ?ïÏù∏
                if (navigator.share) {
                    navigator.share({
                        title: '?êÏù¥?§Î≤ïÎ•†ÏÇ¨Î¨¥ÏÜå',
                        text: locationText,
                        url: locationUrl
                    }).then(() => {
                        console.log('?ÑÏπò Í≥µÏú† ?±Í≥µ');
                    }).catch((error) => {
                        console.log('?ÑÏπò Í≥µÏú† Ï∑®ÏÜå:', error);
                    });
                } else {
                    // Web Share APIÎ•?ÏßÄ?êÌïòÏßÄ ?äÎäî Í≤ΩÏö∞ ?¥Î¶ΩÎ≥¥Îìú??Î≥µÏÇ¨
                    if (navigator.clipboard) {
                        navigator.clipboard.writeText(locationUrl).then(() => {
                            alert('?ÑÏπò ÎßÅÌÅ¨Í∞Ä ?¥Î¶ΩÎ≥¥Îìú??Î≥µÏÇ¨?òÏóà?µÎãà??');
                        }).catch(() => {
                            alert('?ÑÏπò ÎßÅÌÅ¨: ' + locationUrl);
                        });
                    } else {
                        alert('?ÑÏπò ÎßÅÌÅ¨: ' + locationUrl);
                    }
                }
            }

            // Í∞úÏù∏?ïÎ≥¥ ?ΩÍ? Î™®Îã¨ ?¥Í∏∞
            function openPrivacyModal(event) {
                if (event) {
                    event.preventDefault();
                    event.stopPropagation();
                }
                const modal = document.getElementById('privacyModal');
                if (modal) {
                    modal.style.display = 'flex';
                    setTimeout(() => {
                        modal.classList.add('show');
                    }, 10);
                    document.body.style.overflow = 'hidden';
                }
            }

            // Í∞úÏù∏?ïÎ≥¥ ?ΩÍ? Î™®Îã¨ ?´Í∏∞
            function closePrivacyModal() {
                const modal = document.getElementById('privacyModal');
                if (modal) {
                    modal.classList.remove('show');
                    setTimeout(() => {
                        modal.style.display = 'none';
                        document.body.style.overflow = '';
                    }, 300);
                }
            }

            // ?òÏù¥ÏßÄ Î°úÎìú ??Î™®Îì† "?êÏÑ∏?? ÎßÅÌÅ¨???¥Î≤§???∞Í≤∞
            document.addEventListener('DOMContentLoaded', function () {
                const privacyLinks = document.querySelectorAll('.privacy-link');
                privacyLinks.forEach(link => {
                    link.addEventListener('click', openPrivacyModal);
                });

                // Î™®Îã¨ ?∏Î? ?¥Î¶≠ ???´Í∏∞
                const privacyModal = document.getElementById('privacyModal');
                if (privacyModal) {
                    privacyModal.addEventListener('click', function (event) {
                        if (event.target === privacyModal) {
                            closePrivacyModal();
                        }
                    });
                }
            });
        </script>

        <!-- Í∞úÏù∏?ïÎ≥¥ ?ΩÍ? Î™®Îã¨ -->
        <div id="privacyModal" class="consultation-popup-overlay" style="z-index: 100000;">
            <div class="consultation-popup-content" style="max-width: 600px;">
                <div class="consultation-popup-header">
                    <h2>Í∞úÏù∏?ïÎ≥¥ ?òÏßë Î∞??¥Ïö© ?ôÏùò</h2>
                    <button class="consultation-popup-close" onclick="closePrivacyModal()">&times;</button>
                </div>
                <div class="consultation-popup-body" style="padding: 30px;">
                    <div style="line-height: 1.8; color: #333;">
                        <p style="margin-bottom: 20px;">
                            <strong style="font-size: 16px;">??Í∞úÏù∏?ïÎ≥¥ ?òÏßë/?¥Ïö© Î™©Ï†Å</strong><br>
                            Î¨∏Ïùò???Ä???§Ïñë???ïÎ≥¥ ?úÍ≥µ
                        </p>

                        <p style="margin-bottom: 20px;">
                            <strong style="font-size: 16px;">???òÏßë?òÎäî Í∞úÏù∏?ïÎ≥¥????™©</strong><br>
                            ?±Î™Ö, ?∞ÎùΩÏ≤?
                        </p>

                        <p style="margin-bottom: 20px; padding-left: 20px; color: #666; font-size: 14px;">
                            ???ÅÎã¥?àÏïΩ?úÎπÑ???¥Ïö©Í≥ºÏ†ï?êÏÑú ?ÑÎûò?Ä Í∞ôÏ? ?ïÎ≥¥?§Ïù¥ ?ùÏÑ±?òÏñ¥ ?òÏßë?????àÏäµ?àÎã§.<br>
                            - ?úÎπÑ?§Ïù¥?©Í∏∞Î°? ?ëÏÜçÎ°úÍ∑∏, Ïø†ÌÇ§, ?ëÏÜçIP?ïÎ≥¥
                        </p>

                        <p style="margin-bottom: 20px;">
                            <strong style="font-size: 16px;">??Í∞úÏù∏?ïÎ≥¥??Î≥¥Ïú† Î∞??¥Ïö©Í∏∞Í∞Ñ</strong><br>
                            - Î≥¥Ï°¥Í∏∞Í∞Ñ?Ä 5?ÑÏù¥Î©? ?ïÎ≥¥ ?úÍ≥µ?êÍ? ??†úÎ•??îÏ≤≠??Í≤ΩÏö∞ Ï¶âÏãú ?åÍ∏∞?©Îãà??<br>
                            - Í≥†Í∞ù?òÏùò ?ïÎ≥¥??Í∞úÏù∏?ïÎ≥¥ Î≥¥Ìò∏Î≤ïÏóê ?∞Îùº Î≥¥Ìò∏?òÎ©∞ ?ÑÏùò ?¥Ïö©Î™©Ï†Å ?∏Ïóê Î≥ÑÎèÑÎ°??¨Ïö©?òÏ? ?äÏùÑ Í≤ÉÏùÑ ?ΩÏÜç?úÎ¶Ω?àÎã§.
                        </p>
                    </div>
                    <button class="success-confirm-btn" onclick="closePrivacyModal()"
                        style="margin-top: 20px; width: 100%;">?ïÏù∏</button>
                </div>
            </div>
        </div>

        <!-- ?§Ïù¥Î≤??†ÎÑêÎ¶¨Ìã±??-->
        <script type="text/javascript" src="//wcs.naver.net/wcslog.js"> </script>
        <script type="text/javascript">
            if (!wcs_add) var wcs_add = {};
            wcs_add["wa"] = "s_151455092998";
            if (!_nasa) var _nasa = {};
            if (window.wcs) { wcs.inflow(); wcs_do(); }
        </script>
    </body>

    </html>