
<html lang="en" xmlns="http://www.w3.org/1999/html">

    <head>
        <meta charset="utf-8"/>
        <title>Opinion Miner</title>
        <link href="nvd3/src/nv.d3.css" rel="stylesheet" type="text/css">
        <link rel="stylesheet" href="css/layout.css" type="text/css" media="screen" />
    <!--    <link rel="stylesheet" href="bootstrap_2.3/css/bootstrap.css">  -->
        <script src="nvd3/lib/d3.v2.js"></script>
        <script src="nvd3/nv.d3.js"></script>
        <script src="nvd3/src/models/legend.js"></script>
        <script src="nvd3/src/models/pie.js"></script>
        <script src="nvd3/src/models/pieChart.js"></script>
        <script src="nvd3/src/utils.js"></script>
        <script src="nvd3/src/models/multiBarHorizontal.js"></script>
        <script src="nvd3/src/models/multiBarHorizontalChart.js"></script>
        <script src="js/jquery-1.5.2.min.js" type="text/javascript"></script>
        <script src="js/hideshow.js" type="text/javascript"></script>
        <script src="js/jquery.tablesorter.min.js" type="text/javascript"></script>
        <script type="text/javascript" src="js/jquery.equalHeight.js"></script>
        <script type="textext/javascript" src="js/hideshow.js"></script>
        
        <script type="text/javascript">
            var search_topic= <%="'"+request.getParameter("search_text")+"'"%>;
            $(document).ready(function()
            {
                $(".tablesorter").tablesorter();
            }
        );
            $(document).ready(function() {

                //When page loads...
                $(".tab_content").hide(); //Hide all content
                $("ul.tabs li:first").addClass("active").show(); //Activate first tab
                $(".tab_content:first").show(); //Show first tab content

                //On Click Event
                $("ul.tabs li").click(function() {

                    $("ul.tabs li").removeClass("active"); //Remove any "active" class
                    $(this).addClass("active"); //Add "active" class to selected tab
                    $(".tab_content").hide(); //Hide all tab content

                    var activeTab = $(this).find("a").attr("href"); //Find the href attribute value to identify the active tab + content
                    $(activeTab).fadeIn(); //Fade in the active ID content
                    return false;
                });

            });
        </script>
            
             <script type="text/javascript" src="js/script3.js"></script>
    </head>


    <body>

    <header id="header"style="position: fixed;z-index:40;">
        <hgroup>
            <h1 class="site_title"><a href="index.html">Opinion Miner</a></h1>
            <form class="quick_search">
                <input type="text" value="product review" onfocus="if(!this._haschanged){this.value=''};this._haschanged=true;">
            </form>
        </hgroup>
    </header> <!-- end of header bar -->

    <section id="secondary_bar"style="position: fixed;top:55;z-index: 30;">
        <div class="breadcrumbs_container">
            <article class="breadcrumbs"><a href="index.html">Home</a> <div class="breadcrumb_divider"></div> <a class="current"><%=request.getParameter("search_text")%></a></article>
        </div>
        <div class="search">
            <p>Twitter Opinion</p>
            <!-- <a class="logout_user" href="#" title="Logout">Logout</a> -->
        </div>
    </section><!-- end of secondary bar -->

    <!-- end of sidebar -->
    <div style="padding-top: 85px;">
    <section id="main" class="column">

        <article class="module width_full">
            <header><h3>rating</h3></header>
            <div class="module_content">
                <article class="stats_graph">
                    <img id="object_image" itemprop="image" src="" width="300px" height="350px" alt="">
                </article>
                <article class="stats_overview">
                    <svg id="twttracker" class="twttracker"></svg>
                    <br>
                    <p>Tweet review</p>
                </article>
                <div class="clear"></div>
            </div>
        </article><!-- end of stats article -->

        <article class="module width_3_quarter">
            <header><h3 class="tabs_involved">Details</h3>
                <ul class="tabs">
                    <li><a href="#tab1">feature review</a></li>
                    <li><a href="#tab2">specification</a></li>
                </ul>
            </header>

            <div class="tab_container">

                <div id="tab1" class="tab_content">
                    <div id="featuretracker">
                        <svg></svg>
                    </div>
                </div><!-- end of #tab1 -->

                <div id="tab2" class="tab_content">

                </div><!-- end of #tab2 -->

            </div><!-- end of .tab_container -->

        </article><!-- end of content manager article -->

        <div class="spacer"></div>
    </section>
    <aside id="sidebar" class="column">
        <h3>share</h3>
        <ul class="toggle">
            <form class="post_message">
                <input type="text" value="search product review" onfocus="if(!this._haschanged){this.value=''};this._haschanged=true;">
                <input type="submit" class="btn_post_message" value=""/>
            </form>
        </ul>
        <hr/>
        <h3>tweets</h3>
        <ul class="toggle">
            <div id="message_list" class="message_list">
                <div class="module_content">

                </div>
            </div>
        </ul>
        <hr/>

    </aside>
</section>
</div>
</body>

</html>