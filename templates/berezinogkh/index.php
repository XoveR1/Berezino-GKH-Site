<?php
// No direct access.
defined('_JEXEC') or die;


JHtml::_('behavior.framework', true);

$showRightColumn = ($this->countModules('right-weather') or $this->countModules('right-pull'));
?>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="<?php echo $this->language; ?>" lang="<?php echo $this->language; ?>" dir="<?php echo $this->direction; ?>">
    <head>
        <jdoc:include type="head" />
        <link rel="stylesheet" href="<?= $this->baseurl ?>/templates/system/css/system.css" type="text/css" />
        <!--[if IE]><script src="http://html5shiv.googlecode.com/svn/trunk/html5.js"></script><![endif]-->
        <link rel="stylesheet" href="<?php echo $this->baseurl ?>/templates/<?php echo $this->template; ?>/css/style.css" type="text/css" media="screen, projection" />
        <!--[if lte IE 6]><link rel="stylesheet" href="<?php echo $this->baseurl ?>/templates/<?php echo $this->template; ?>/css/ie.css" type="text/css" media="screen, projection" /><![endif]-->
    </head>
    <body>
        <div id="wrapper">
            <header id="header">
                <h1 class="logo"><a href="/">Березинский ЖКХ</a></h1>
                <div class="top-controls">
                    <menu>
                        <jdoc:include type="modules" name="top-menu" />
                        <li class="search-form">
                            <jdoc:include type="modules" name="top-search" />
                        </li>
                    </menu>
                </div>
                <jdoc:include type="modules" name="top-breadcrambs" />
            </header><!-- #header-->
            <section id="middle" <?php if(!$showRightColumn) : ?> class="no-right-aside" <?php endif; ?>>
                <div id="container">
                    <div id="content">
                        <jdoc:include type="message" />
                        <jdoc:include type="component" />
                    </div><!-- #content-->
                </div><!-- #container-->
                <aside id="sideLeft">
                    <div class="module">
                        <h3>Навигация по сайту</h3>
                        <div class="content">
                            <menu>
                                <jdoc:include type="modules" name="left-menu" />
                            </menu>
                        </div>
                    </div>
                    <div class="module links-list">
                        <h3>Интернет-ресурсы</h3>
                        <div class="content">
                            <ul>
                                <jdoc:include type="modules" name="left-links" />
                            </ul>
                        </div>
                    </div>
                </aside><!-- #sideLeft -->
                <?php if($showRightColumn) : ?>
                <aside id="sideRight">
                    <div class="module weather">
                        <h3>Погода</h3>
                        <div class="content">
                            <h5>09.03.2012</h5>	
                            <p>
                                <span class="left">Утро</span>
                                <span class="right">-11..-9°C</span>
                            </p>
                            <p>
                                <span class="left">День</span>
                                <span class="right">-11..-9°C</span>
                            </p>
                            <p>
                                <span class="left">Вечер</span>
                                <span class="right">-11..-9°C</span>
                            </p>
                            <p>
                                <span class="left">Ночь</span>
                                <span class="right">-11..-9°C</span>
                            </p>
                        </div>
                    </div>
                    <div class="module pull">
                        <h3>Голосование</h3>
                        <div class="content">
                            <p class="question">Как Вы оцениваете качество работы коммунальных служб города?</p>
                            <form>
                                <p>
                                    <input type="radio" name="pull" />
                                    <label>Хорошо</label>
                                </p>
                                <p>
                                    <input type="radio" name="pull" />
                                    <label>Плохо</label>
                                </p>
                                <p>
                                    <button class="button button-green">
                                        <span>Проголосовать</span>
                                    </button>
                                    <button class="button button-green">
                                        <span>Итоги</span>
                                    </button>
                                </p>
                            </form>
                        </div>
                    </div>
                </aside><!-- #sideRight -->
                <?php endif; ?>
            </section><!-- #middle-->
        </div><!-- #wrapper -->
        <footer id="footer">
            <div class="container">
                <div class="contacts-widget">
                    <jdoc:include type="modules" name="bottom-contacts" />
                </div>
                <div class="copyright">Авторское право © <?= date("Y") ?> Березинский ЖКХ</div>
                <div class="counter">
                    <img src="content/counter.png" />
                </div>
            </div>
        </footer><!-- #footer -->
        <script type="text/javascript" src="<?php echo $this->baseurl ?>/templates/<?php echo $this->template; ?>/js/jquery-1.6.1.min.js"></script>
        <script type="text/javascript" src="<?php echo $this->baseurl ?>/templates/<?php echo $this->template; ?>/js/jquery-ui-1.8.18.custom.min.js"></script>
        <script type="text/javascript" src="<?php echo $this->baseurl ?>/templates/<?php echo $this->template; ?>/js/script.js"></script>
    </body>
</html>