<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="home.aspx.cs" Inherits="WebApplication1.home" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <style>
        .head {
            border-width: 0px;
            position: absolute;
            width: 1365px;
            height: 50px;
            background: inherit;
            background-color: rgba(27, 62, 147, 1);
            border: none;
        }

            .head h4 {
                color: white;
            }

        /* The alert message box */
        .alert {
            padding: 5px;
            background-color: #f44336; /* Red */
            color: white;
            margin-bottom: -4px;
            margin-left: 15px;
        }

        /* The close button */
        .closebtn {
            margin-left: 15px;
            color: white;
            font-weight: bold;
            float: right;
            font-size: 22px;
            line-height: 20px;
            cursor: pointer;
            transition: 0.3s;
        }

            /* When moving the mouse over the close button */
            .closebtn:hover {
                color: black;
            }

        .btnAdd {
            height: 35px;
            background: inherit;
            background-color: rgba(255, 255, 255, 0);
            box-sizing: border-box;
            border-width: 1px;
            border-style: solid;
            border-color: rgba(10, 168, 251, 1);
            border-radius: 0px;
            -moz-box-shadow: none;
            -webkit-box-shadow: none;
            box-shadow: none;
            font-family: 'Roboto';
            font-weight: 400;
            font-style: normal;
            color: #0AA8FB;
            line-height: 18px;
        }

        .btnAddFeature {
            height: 35px;
            background: inherit;
            background-color: rgba(255, 255, 255, 0);
            box-sizing: border-box;
            border-width: 1px;
            border-style: solid;
            border-color: rgba(10, 168, 251, 1);
            border-radius: 0px;
            -moz-box-shadow: none;
            -webkit-box-shadow: none;
            box-shadow: none;
            font-family: 'Roboto';
            font-weight: 400;
            font-style: normal;
            color: #0AA8FB;
            line-height: 18px;
        }

        .btnReset {
            border-width: 0px;
            width: 91px;
            height: 30px;
            background: inherit;
            background-color: rgba(255, 255, 255, 1);
            box-sizing: border-box;
            border-width: 1px;
            border-style: solid;
            border-color: rgba(10, 168, 251, 1);
            border-radius: 0px;
            -moz-box-shadow: none;
            -webkit-box-shadow: none;
            box-shadow: none;
            font-family: 'Roboto';
            font-weight: 400;
            font-style: normal;
            font-size: 12px;
            color: #0AA8FB;
        }

        .btnResetFeature {
            border-width: 0px;
            width: 91px;
            height: 30px;
            background: inherit;
            background-color: rgba(255, 255, 255, 1);
            box-sizing: border-box;
            border-width: 1px;
            border-style: solid;
            border-color: rgba(10, 168, 251, 1);
            border-radius: 0px;
            -moz-box-shadow: none;
            -webkit-box-shadow: none;
            box-shadow: none;
            font-family: 'Roboto';
            font-weight: 400;
            font-style: normal;
            font-size: 12px;
            color: #0AA8FB;
        }

        .btnAddP {
            border-width: 0px;
            width: 91px;
            height: 30px;
            background-color: rgba(10, 168, 251, 1);
            border: none;
            border-radius: 0px;
            -moz-box-shadow: none;
            -webkit-box-shadow: none;
            box-shadow: none;
            font-family: 'Roboto';
            font-weight: 400;
            font-style: normal;
            font-size: 12px;
            color: white;
        }

        .btnAddF {
            border-width: 0px;
            width: 91px;
            height: 30px;
            background-color: rgba(10, 168, 251, 1);
            border: none;
            border-radius: 0px;
            -moz-box-shadow: none;
            -webkit-box-shadow: none;
            box-shadow: none;
            font-family: 'Roboto';
            font-weight: 400;
            font-style: normal;
            font-size: 12px;
            color: white;
        }

        .btnDelete {
            border-width: 0px;
            width: 91px;
            height: 30px;
            background-color: rgba(255, 255, 255, 1);
            box-sizing: border-box;
            border-width: 1px;
            border-style: solid;
            border-color: rgba(10, 168, 251, 1);
            border-radius: 0px;
            -moz-box-shadow: none;
            -webkit-box-shadow: none;
            box-shadow: none;
            font-family: 'Roboto';
            font-weight: 400;
            font-style: normal;
            font-size: 12px;
            color: #0AA8FB;
        }

        .AddPlatform {
            border-width: 0px;
            width: 1092px;
            height: 41px;
            background: inherit;
            background-color: rgba(255, 255, 255, 0);
            box-sizing: border-box;
            border-width: 1px;
            border-style: solid;
            border-color: rgba(10, 168, 251, 1);
            border-radius: 0px;
            -moz-box-shadow: none;
            -webkit-box-shadow: none;
            box-shadow: none;
            font-family: 'Roboto';
            font-weight: 400;
            font-style: normal;
            color: #999999;
            line-height: 18px;
            padding: 7px;
        }

        .AddFeature {
            border-width: 0px;
            width: 1092px;
            height: 41px;
            background: inherit;
            background-color: rgba(255, 255, 255, 0);
            box-sizing: border-box;
            border-width: 1px;
            border-style: solid;
            border-color: rgba(10, 168, 251, 1);
            border-radius: 0px;
            -moz-box-shadow: none;
            -webkit-box-shadow: none;
            box-shadow: none;
            font-family: 'Roboto';
            font-weight: 400;
            font-style: normal;
            color: #999999;
            line-height: 18px;
            padding: 7px;
        }

        .selectplat {
            position: absolute;
            left: 0px;
            top: 0px;
            width: 140px;
            height: 26px;
            font-family: 'Roboto';
            font-weight: 400;
            font-style: normal;
            font-size: 13px;
            text-decoration: none;
            color: #666666;
        }

        .selectfeature {
            position: absolute;
            left: 0px;
            top: 0px;
            width: 180px;
            height: 26px;
            font-family: 'Roboto';
            font-weight: 400;
            font-style: normal;
            font-size: 13px;
            text-decoration: none;
            color: #666666;
        }


        .selectversion {
            position: absolute;
            left: 0px;
            top: 0px;
            width: 75px;
            height: 26px;
            font-family: 'Roboto';
            font-weight: 400;
            font-style: normal;
            font-size: 13px;
            text-decoration: none;
            color: #666666;
        }

        .container {
            display: grid;
            grid-gap: 5px;
            /*grid-template-columns: repeat(auto-fit, minmax(100px, 1fr));*/
            grid-template-rows: repeat(2, 100px);
        }

        .lblstate {
            border-width: 0px;
            width: 100px;
            height: 30px;
            background: inherit;
            background-color: rgba(255, 255, 255, 1);
            box-sizing: border-box;
            border-width: 1px;
            border-style: solid;
            border-color: rgba(204, 204, 204, 1);
            border-radius: 0px;
            -moz-box-shadow: none;
            -webkit-box-shadow: none;
            box-shadow: none;
            font-family: 'Roboto';
            font-weight: 400;
            font-style: normal;
            color: #666666;
            text-align: left;
        }

        .tab {
            overflow: hidden;
            border: 1px solid #ccc;
            background-color: #f1f1f1;
        }


            /* Style the buttons inside the tab */
            .tab button {
                background-color: inherit;
                float: left;
                border: none;
                outline: none;
                cursor: pointer;
                padding: 14px 16px;
                transition: 0.3s;
                font-size: 17px;
            }

                /* Change background color of buttons on hover */
                .tab button:hover {
                    background-color: #ddd;
                }

                /* Create an active/current tablink class */
                .tab button.active {
                    background-color: #ccc;
                }

        /* Style the tab content */
        .tabcontent {
            display: none;
            padding: 6px 12px;
            border: 1px solid #ccc;
            border-top: none;
        }

        .LabelText {
            font-family: "Roboto Bold","Roboto";
            font-weight: 700;
            font-style: normal;
            font-size: 16px;
            line-height: 28px;
        }

    
    </style>

    <div class="tab">
        <button class="tablinks" onclick="openCity(event, 'London')" id="btnInterface">Interface</button>
        <button class="tablinks" onclick="openCity(event, 'Paris')" id="btnFeature">Feature</button>

    </div>
    <div id="London" class="tabcontent">
        <div class="container">
            <div class="row" style="margin-top: 30px">

              

                <div id="alertDiv" class="alert" runat="server" visible="false">
                    <span class="closebtn" onclick="this.parentElement.style.display='none';">&times;</span>
                    <asp:Label ID="LblWarning" Text="Incompatible selection!" runat="server"></asp:Label>
                </div>

                <div class="col-12">
                    <span class="LabelText">Compatibility status of:</span>

                    <asp:Label ID="SearchLabel" CssClass="LabelText" runat="server"></asp:Label>

                    <asp:Button CssClass="btnReset" Style="float: right" Text="Reset" runat="server" OnClick="ResetButton_Click"></asp:Button>
                </div>
            </div>

            <asp:Button ID="btnSearch" runat="server" OnClientClick="return checkSearchCriteria()" CssClass="btnAdd" Text="+  Add Platform to Compare "></asp:Button>


            <div class="row AddPlatform">

                <div class="col-2">
                    Platform:
                </div>
                <div class="col-2">
                    <select class="selectplat">
                    </select>
                </div>

                <div class="col-2">
                    Patch/version:
                </div>
                <div class="col-2">
                    <select class="selectversion">
                    </select>
                </div>

                <div class="col-4">
                    <asp:Button CssClass="btnAddP" Text="Add" runat="server" OnClick="SearchButton_Click"></asp:Button>
                    <button class="btnDelete">Cancel</button>

                </div>
            </div>
            <br />

            <div class="row">
                <%--<asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:CompatibilityConnectionString %>" ></asp:SqlDataSource>--%>
                <div class="col-sm-12">
                    <asp:GridView class="table table-striped table-bordered" ID="GridView1" runat="server" AutoGenerateColumns="False" ShowHeaderWhenEmpty="True" EmptyDataText="No Platform Selected">
                        <Columns>
                            <asp:BoundField DataField="PN" HeaderText="PlatForm" SortExpression="PN" />
                            <asp:BoundField DataField="PV" HeaderText="Patch / Version" SortExpression="PV" />
                            <asp:TemplateField HeaderText="Compatibility">
                                <ItemTemplate>
                                    <asp:Image ID="comp" ImageUrl="images/home/u64.png" runat="server" />
                                    <label>Compatible Designed Version</label>
                                </ItemTemplate>
                            </asp:TemplateField>
                        </Columns>
                    </asp:GridView>
                </div>
            </div>
            <div class="row">
                <div class="col-sm-12">
                    <asp:GridView ID="GridView2" runat="server" ShowHeaderWhenEmpty="True" EmptyDataText="No records Found">
                        <Columns>
                            <asp:BoundField DataField="CustomerID" HeaderText="Customer ID" />
                            <asp:BoundField DataField="Name" HeaderText="Name" />
                        </Columns>
                    </asp:GridView>
                </div>
            </div>


            <script>

                function OnSuccess(response) {
                    alert(response.d);
                }
                $(".btnAdd").click(function () {
                    if (<%= WebApplication1.home.searchCount %>< 10) {
                        $(".AddPlatform").show();
                        $(".btnAdd").hide();

                    }


                })

                //REMOVE Selected INDEX
                $(function () {
                    $(".btnAddP").bind("click", function () {
                        $(".selectplat option").remove();
                    });
                }

                )
                $(".btnReset").click(function () {
                    $(".AddPlatform").hide();
                    $(".btnAdd").show();
                })
                $(".btnAddP").click(function () {
                    $(".lblstate").show();
                    //$(".alert").show(); 
                })
                $(".AddPlatform").hide();
                $(".lblstate").hide();
                //$(".alert").hide(); 
                $.ajax({
                    type: "POST",
                    url: "home.aspx/LoadAllProductCats",
                    contentType: "application/json; charset=utf-8",
                    dataType: "json",
                    success: function (response) {
                        for (var i = 0; i < response.d.length; i++) {
                            $(".selectplat").append("<option value='" + response.d[i] + "'>" + response.d[i] + "</option>")
                        }
                        getVersion();
                    },
                    failure: function (msg) {
                        alert(msg);
                    },
                    error: function (r) {
                        alert(r);

                    }
                });
                $(".selectplat").change(function () {
                    getVersion();
                })
                //SEARCH CRITERIA VALUES USING AJAX REQUEST
                $(".btnAddP").click(function () {
                    var model = {
                        Platform: $(".selectplat").val(),
                        Version: $(".selectversion").val()
                    }

                    $.ajax({
                        type: "POST",
                        url: "home.aspx/AddSearchCriteria",
                        contentType: "application/json; charset=utf-8",
                        dataType: "json",
                        data: JSON.stringify(model),
                        success: function (response) {
                            //alert(response);
                        },
                        failure: function (msg) {
                            alert(msg);
                        },
                        error: function (r) {
                            alert(r);

                        }
                    });

                })

                // DISABLE BUTTON STYLE HERE
                if (<%= WebApplication1.home.searchCount %>>= 10) {
                    $(".btnAdd").css("color", "gray");
                    $(".btnAdd").css("border-color", "gray");
                    $(".btnAdd").css("text-color", "#666666");
                    $('#WarningLabelLegend').hide();
                    $('#WarningLabel').hide();
                } else {
                    $('#WarningLabelLegend').hide();
                    $('#WarningLabel').hide();
                }


                // WARNING MESSAGE HERE
                function checkSearchCriteria() {
                    if (<%= WebApplication1.home.searchCount %>>= 10) {
                        $('#WarningLabelLegend').show();
                        $('#WarningLabel').show();
                        return false;
                    } else {
                        $(".btnAdd").removeAttr("color");
                        $(".btnAdd").removeAttr("border-color");
                        $(".btnAdd").removeAttr("text-color");
                        return false;
                    }
                    return false;
                }

                function getVersion() {
                    var model = {
                        name: $(".selectplat").val()
                    }
                    $(".selectversion").html("");
                    $.ajax({
                        type: "POST",
                        url: "home.aspx/GetVersion",
                        contentType: "application/json; charset=utf-8",
                        dataType: "json",
                        data: JSON.stringify(model),
                        success: function (response) {
                            for (var i = 0; i < response.d.length; i++) {
                                $(".selectversion").append("<option value=" + response.d[i] + ">" + response.d[i] + "</option>")
                            }
                        },
                        failure: function (msg) {
                            alert(msg);
                        },
                        error: function (r) {
                            alert(r);

                        }
                    });
                }
            </script>
        </div>
    </div>
    <div id="Paris" class="tabcontent">
        <div class="container">
            <div class="row" style="margin-top: 30px">

                  <div id="Div1" class="alert" runat="server" visible="false">
                    <span class="closebtn" onclick="this.parentElement.style.display='none';">&times;</span>
                    <asp:Label ID="Label1" Text="Incompatible selection!" runat="server"></asp:Label>
                </div>

                <div class="col-12">
                    <span class="LabelText">Features:</span>
                    <asp:Label ID="featureLabel" CssClass="LabelText" runat="server"></asp:Label>
                    <asp:Button CssClass="btnResetFeature" Style="float: right" Text="Reset" runat="server" OnClick="FeatureResetButton_Click"></asp:Button>
                </div>
            </div>

            <asp:Button ID="Button1" runat="server" OnClientClick="return checkFeatureSearchCriteria()" CssClass="btnAddFeature" Text="+  Add Feature to Compare "></asp:Button>


            <div class="row AddFeature">

                <div class="col-3">
                    Feature:
                </div>
                <div class="col-3">
                    <select class="selectfeature">
                    </select>
                </div>

                <div class="col-6">
                    <asp:Button CssClass="btnAddF" Text="Add" runat="server" OnClick="SearchFeatureButton_Click"></asp:Button>
                    <button class="btnDelete">Cancel</button>

                </div>
            </div>
            <br />

            <div class="row">
                <div class="col-sm-12">
                    <asp:GridView class="table table-striped table-bordered" ID="GridView3" runat="server" AutoGenerateColumns="False" ShowHeaderWhenEmpty="True" EmptyDataText="No Feature Selected">
                        <Columns>
                            <asp:BoundField DataField="PN" HeaderText="PlatForm" SortExpression="PN" />
                            <asp:BoundField DataField="PV" HeaderText="Patch / Version Introduction" SortExpression="PV" />
                            <asp:BoundField DataField="PhaseOUT" HeaderText="Patch / Version Phase Out" SortExpression="PV" />
                        </Columns>
                    </asp:GridView>
                </div>
            </div>
            <div class="row">
                <div class="col-sm-12">
                    <asp:GridView ID="GridView4" runat="server" ShowHeaderWhenEmpty="True" EmptyDataText="No records Found">
                        <Columns>
                            <asp:BoundField DataField="CustomerID" HeaderText="Customer ID" />
                            <asp:BoundField DataField="Name" HeaderText="Name" />
                        </Columns>
                    </asp:GridView>
                </div>
            </div>


            <script>

                function OnSuccess(response) {
                    alert(response.d);
                }

                $(".btnAddFeature").click(function () {
                    if (<%= WebApplication1.home.searchFeatureCount %>< 10) {
                        $(".AddFeature").show();
                        $(".btnAddFeature").hide();
                    }


                })

                $(".btnResetFeature").click(function () {
                    $(".AddFeature").hide();
                    $(".btnAddFeature").show();
                })
                $(".btnAddF").click(function () {
                    $(".lblstate").show();
                })
                $(".AddFeature").hide();
                $(".lblstate").hide();
                $.ajax({
                    type: "POST",
                    url: "home.aspx/LoadAllFeatures",
                    contentType: "application/json; charset=utf-8",
                    dataType: "json",
                    success: function (response) {
                        for (var i = 0; i < response.d.length; i++) {
                            $(".selectfeature").append("<option value='" + response.d[i] + "'>" + response.d[i] + "</option>")
                        }
                    },
                    failure: function (msg) {
                        alert(msg);
                    },
                    error: function (r) {
                        alert(r);

                    }
                });

                //SEARCH CRITERIA VALUES USING AJAX REQUEST
                $(".btnAddF").click(function () {
                    var model = {
                        feature: $(".selectfeature").val()
                    }

                    $.ajax({
                        type: "POST",
                        url: "home.aspx/AddFeatureSearchCriteria",
                        contentType: "application/json; charset=utf-8",
                        dataType: "json",
                        data: JSON.stringify(model),
                        success: function (response) {
                            //alert(response);
                        },
                        failure: function (msg) {
                            alert(msg);
                        },
                        error: function (r) {
                            alert(r);

                        }
                    });
                })

                // FEATURE DISABLE BUTTON STYLE HERE
                if (<%= WebApplication1.home.searchFeatureCount %>>= 10) {
                    $(".btnAddFeature").css("color", "gray");
                    $(".btnAddFeature").css("border-color", "gray");
                    $(".btnAddFeature").css("text-color", "#666666");
                    $('#FeatureWarningLabelLegend').hide();
                    $('#FeatureWarningLabel').hide();
                } else {
                    //$('#FeatureWarningLabelLegend').hide();
                    //$('#FeatureWarningLabel').hide();
                }
                // FEATURE WARNING MESSAGE HERE
                function checkFeatureSearchCriteria() {
                    if (<%= WebApplication1.home.searchFeatureCount %>>= 10) {
                        //$('#FeatureWarningLabelLegend').show();
                        //$('#FeatureWarningLabel').show();
                        return false;
                    } else {
                        $(".btnAddFeature").removeAttr("color");
                        $(".btnAddFeature").removeAttr("border-color");
                        $(".btnAddFeature").removeAttr("text-color");
                        return false;
                    }
                    return false;
                }
            </script>
        </div>
    </div>
    <script>
        $(document).ready(() => {
            if (<%=WebApplication1.home.currentTab%> == 0) {
                $('#London').css('display', 'block');
                $('#btnInterface').addClass('active');
            } else {
                $('#Paris').css('display', 'block');
                $('#btnFeature').addClass('active');
            }
        });
        function openCity(evt, cityName) {
            event.stopPropagation();
            event.preventDefault();
            if (cityName == "London") {
                setCurrentTabValue();
                $('#btnInterface').addClass('active');
                $('#btnFeature').removeClass('active');

                $('#London').css('display', 'block');
                $('#Paris').css('display', 'none');
            }
            else {
                setCurrentTabValue();
                $('#btnFeature').addClass('active');
                $('#btnInterface').removeClass('active');
                $('#Paris').css('display', 'block');
                $('#London').css('display', 'none');
            }
        }
        function setCurrentTabValue() {
            var model = {}
            $.ajax({
                type: "POST",
                url: "home.aspx/SetCurrentTabValue",
                contentType: "application/json; charset=utf-8",
                dataType: "json",
                data: JSON.stringify(model),
                success: function (response) {
                },
                failure: function (msg) {
                    alert(msg);
                },
                error: function (r) {
                    alert(r);

                }
            });
        }


    </script>

</asp:Content>
