<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="HRMS.Authentication.Login" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Sign In - Pal Software</title>
    <link rel="stylesheet" href="../assets/css/bootstrap.min.css" />
    <link rel="stylesheet" href="../assets/css/style.css" />
</head>
<body>
    <form id="form1" runat="server" class="vh-100">
        <div class="main-wrapper">
            <div class="container-fluid">
                <div class="w-100 overflow-hidden position-relative d-block vh-100">
                    <div class="row">
                        <div class="col-lg-5">
                            <div class="d-lg-flex align-items-center justify-content-center d-none flex-wrap vh-100 bg-primary-transparent">
                                <img src="https://smarthr.dreamstechnologies.com/html/template/assets/img/bg/authentication-bg-03.svg" alt="Img" />
                            </div>
                        </div>
                        <div class="col-lg-7 col-md-12">
                            <div class="row justify-content-center align-items-center vh-100 overflow-auto">
                                <div class="col-md-7 mx-auto">
                                    <div class="d-flex flex-column p-4">
                                        <div class="mx-auto mb-5 text-center">
                                            <img src="/Uploads/logos/17d7a359-585b-436b-a0c0-55e10f8eff3d.png" height="200" width="200" class="img-fluid" alt="Logo" />
                                        </div>
                                        <div class="text-center mb-3">
                                            <h2 class="mb-2">Sign In</h2>
                                            <p class="mb-0">Please enter your details to sign in</p>
                                        </div>
                                        
                                        <div class="mb-3">
                                            <label class="form-label">Email Address</label>
                                            <div class="input-group">
                                                <asp:TextBox ID="txtEmail" runat="server" CssClass="form-control border-end-0" placeholder="Enter Email ID" />
                                                <span class="input-group-text border-start-0"><i class="ti ti-mail"></i></span>
                                            </div>
                                        </div>

                                        <div class="mb-3">
                                            <label class="form-label">Password</label>
                                            <div class="pass-group">
                                                <asp:TextBox ID="txtPassword" runat="server" TextMode="Password" Type="password" CssClass="pass-input form-control" placeholder="Enter Password" />
                                                <span class="ti toggle-password ti-eye-off"></span>
                                            </div>
                                        </div>

                                        <div class="mb-3">
                                            <asp:Button ID="btnSignIn" runat="server" Text="Sign In" CssClass="btn btn-primary w-100" OnClick="btnSignIn_Click" />
                                        </div>
                                        
                                        <div class="mt-5 pb-4 text-center">
                                            <p class="mb-0 text-gray-9">Copyright © 2025 - Pal Software</p>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </form>
</body>
</html>
