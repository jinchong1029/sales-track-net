<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="YSDetails.aspx.cs" Inherits="WebApplication1.YSDetails" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
      <div class="container">
        <div class="row">
            <div class="col-md-5">
 
                <div class="card">
                    <div class="card-body">
 
                        <div class="row">
                            <div class="col">
                                <center>
                                        <h4>YieldStar Details</h4>
                                    </center>
                            </div>
                        </div>
 
                        <div class="row">
                            <div class="col">
                                <center>
                                      <img width="100px" src="imgs/2463418.png" />
                                       
                                    </center>
                            </div>
                        </div>
 
                        <div class="row">
                            <div class="col">
                                <hr>
                            </div>
                        </div>
 
                        <div class="row">
                            <div class="col-md-6">
                                <label>YieldStar ID</label>
                                <div class="form-group">
                                    <div class="input-group">
                                        <asp:TextBox CssClass="form-control" ID="TextBox1" runat="server" placeholder="ID"></asp:TextBox>
                                        <asp:Button class="btn btn-primary" ID="Button1" runat="server" Text="Go" />
                                    </div>
                                </div>
                                   <label>Schema Name</label>
                                <div class="form-group">
                                    <div class="input-group">
                                        <%--<asp:TextBox CssClass="form-control" ID="TextBox3" runat="server" placeholder="ID"></asp:TextBox>--%>
                                         <select class="form-control SchemaName" > </select>
                                    </div>
                                </div>
                            </div>
 
                            <div class="col-md-6">
                                <label>YieldStar Version</label>
                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control" ID="TextBox2" runat="server" placeholder="YieldStar Version"></asp:TextBox>
 
                                </div>
                                 <label>Schema Version</label>
                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control" ID="TextBox3" runat="server" placeholder="Schema Version"></asp:TextBox>
 
                                </div>
                            </div>

                             <br />
                              <input type="radio" value="Design" name="radio" id="Design" />Design
                            <br /><br />
                             <input type="radio" value="Test" id="Test" name="radio" /> Test
                        </div>
 
                        <div class="row">
                            <div class="col-4">
                                <asp:Button ID="Button2" class="btn btn-lg btn-block btn-success" runat="server" Text="Add" />
                            </div>
                            <div class="col-4">
                                <asp:Button ID="Button3" class="btn btn-lg btn-block btn-warning" runat="server" Text="Update" />
                            </div>
                            <div class="col-4">
                                <asp:Button ID="Button4" class="btn btn-lg btn-block btn-danger" runat="server" Text="Delete" />
                            </div>
                        </div>
 
 
                    </div>
                </div>
 
                <a href="home.aspx"><< Back to Home</a><br>
                <a href="admin.aspx"><< Back to Admin</a><br>
                <br>
            </div>
 
            <div class="col-md-7">
 
                <div class="card">
                    <div class="card-body">
 
 
 
                        <div class="row">
                            <div class="col">
                                <center>
                                        <h4>YieldStar List</h4>
                                    <%--</center>--%>
                            </div>
                        </div>
 
                       
 
                        <div class="row">
                            <div class="col">
                                <hr>
                            </div>
                        </div>
 
                        <div class="row">
                            <div class="col">
                                <asp:GridView class="table table-striped table-bordered" ID="GridView1" runat="server"></asp:GridView>
                            </div>
                        </div>
 
 
                    </div>
                </div>
 
 
            </div>
 
        </div>
    </div>
</asp:Content>
