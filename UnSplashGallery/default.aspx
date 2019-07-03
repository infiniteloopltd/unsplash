<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="default.aspx.cs" Inherits="UnSplashGallery._default" %>

<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <title>Unsplash Search</title>

    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">

    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- Leave those next 4 lines if you care about users using IE8 -->
    <!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
        <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
</head>
<body>

<div class="container-fluid">
    <div class="row">
        <div class="col-md-12">
            <div class="page-header">
                <h1>
                    Unsplash Search <small>Find free images</small>
                </h1>
            </div>
        </div>
    </div>
    <div class="row">
        <div class="col-md-12">
            <form class="form-horizontal">
                <fieldset>
                    <!-- Search input-->
                    <div class="form-group">
                        <label class="col-md-4 control-label" for="tbSearchTerm">Search Input</label>
                        <div class="col-md-4">
                            <input id="tbSearchTerm" name="searchinput" type="search" placeholder="Waves" class="form-control input-md">

                        </div>
                    </div>

                    <!-- Button -->
                    <div class="form-group">
                        <label class="col-md-4 control-label" for="btnSearch"></label>
                        <div class="col-md-4">
                            <a id="btnSearch" name="singlebutton" class="btn btn-primary">Search</a>
                        </div>
                    </div>

                </fieldset>
            </form>
            <div class="row">
                <div class="col-md-5 col-md-offset-3" id="divResults">
                </div>
            </div>
            <div class="row">
                <div class="col-md-5 col-md-offset-3" id="divResults">
                    Developed by <a href="http://www.infiniteloop.ie">Infiniteloop.ie</a>
                </div>
            </div>
        </div>
    </div>
</div>
    
<script type="text/template" id="tplItem">
    <div class="list-group">
        {{#results}}
        <a href="{{urls.full}}" class="list-group-item" target="_blank">
            <img src="{{urls.thumb}}" style="width: 100px; height: 100px; padding-right:10px" >{{alt_description}}
            <span class="badge badge-dark">{{likes}} Likes</span>          
        </a>
        {{/results}}
</div>
</script>


<!-- Including Bootstrap JS (with its jQuery dependency) so that dynamic components work -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/js/bootstrap.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/mustache.js/3.0.1/mustache.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/bootbox.js/4.4.0/bootbox.js"></script>
    <script src="app.js"></script>

</body>
</html>