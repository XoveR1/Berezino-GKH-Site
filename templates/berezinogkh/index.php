<?php
// No direct access.
defined('_JEXEC') or die;
JHtml::_('behavior.framework', true);
$showRightColumn = ($this->countModules('right-side'));
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
                <h1 class="logo"><a href="/"><?= JFactory::getApplication()->getCfg('sitename') ?></a></h1>
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
                        <jdoc:include type="modules" name="above-content" />
                        <jdoc:include type="component" />
                    </div><!-- #content-->
                </div><!-- #container-->
                <aside id="sideLeft">
                    <jdoc:include type="modules" name="left-side" />
                </aside><!-- #sideLeft -->
                <?php if($showRightColumn) : ?>
                <aside id="sideRight">
                    <jdoc:include type="modules" name="right-side" />
                </aside><!-- #sideRight -->
                <?php endif; ?>
            </section><!-- #middle-->
        </div><!-- #wrapper -->
        <footer id="footer">
            <div class="container">
                <div class="contacts-widget">
                    <jdoc:include type="modules" name="bottom-contacts" />
                </div>
                <div class="copyright"><?= JFactory::getApplication()->getCfg('sitename') ?> © <?= date("Y") ?></div>
            </div>
        </footer><!-- #footer -->
        <script type="text/javascript" src="<?php echo $this->baseurl ?>/templates/<?php echo $this->template; ?>/js/jquery-1.6.1.min.js"></script>
        <script type="text/javascript" src="<?php echo $this->baseurl ?>/templates/<?php echo $this->template; ?>/js/jquery-ui-1.8.18.custom.min.js"></script>
        <script type="text/javascript" src="<?php echo $this->baseurl ?>/templates/<?php echo $this->template; ?>/js/script.js"></script>
    </body>
</html>