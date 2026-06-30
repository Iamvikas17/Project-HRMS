<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPages/Manager.Master" AutoEventWireup="true" CodeBehind="ManagerDashBoard.aspx.cs" Inherits="HRMS.Manager.ManagerTest" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="content">

            <!-- Breadcrumb -->
            <div class="d-md-flex d-block align-items-center justify-content-between page-breadcrumb mb-3">
                <div class="my-auto mb-2">
                    <h2 class="mb-1">Employee Dashboard</h2>
                    <nav>
                        <ol class="breadcrumb mb-0">
                            <li class="breadcrumb-item">
                                <a href="index.html"><i class="ti ti-smart-home"></i></a>
                            </li>
                            <li class="breadcrumb-item">Dashboard
                            </li>
                            <li class="breadcrumb-item active" aria-current="page">Manager Dashboard</li>
                        </ol>
                    </nav>
                </div>
                <div class="d-flex my-xl-auto right-content align-items-center flex-wrap ">
                    <div class="me-2 mb-2">
                        <div class="dropdown">
                            <a href="javascript:void(0);" class="dropdown-toggle btn btn-white d-inline-flex align-items-center" data-bs-toggle="dropdown" aria-expanded="false">
                                <i class="ti ti-file-export me-1"></i>Export
                            </a>
                            <ul class="dropdown-menu dropdown-menu-end p-3" style="">
                                <li>
                                    <a href="javascript:void(0);" class="dropdown-item rounded-1"><i class="ti ti-file-type-pdf me-1"></i>Export as PDF</a>
                                </li>
                                <li>
                                    <a href="javascript:void(0);" class="dropdown-item rounded-1"><i class="ti ti-file-type-xls me-1"></i>Export as Excel </a>
                                </li>
                            </ul>
                        </div>
                    </div>
                    <div class="input-icon w-120 position-relative mb-2">
                        <span class="input-icon-addon">
                            <i class="ti ti-calendar text-gray-9"></i>
                        </span>
                        <input type="text" class="form-control datetimepicker" value="15 Apr 2025">
                    </div>
                    <div class="ms-2 head-icons">
                        <a href="javascript:void(0);" class="" data-bs-toggle="tooltip" data-bs-placement="top" data-bs-original-title="Collapse" id="collapse-header">
                            <i class="ti ti-chevrons-up"></i>
                        </a>
                    </div>
                </div>
            </div>
            <!-- /Breadcrumb -->

            <div class="alert bg-secondary-transparent alert-dismissible fade show mb-4">
                Your Leave Request on“24th April 2024”has been Approved!!!
					<button type="button" class="btn-close fs-14" data-bs-dismiss="alert" aria-label="Close"><i class="ti ti-x"></i></button>
            </div>
            <div class="row">
                <div class="col-xl-4 d-flex">
                    <div class="card position-relative flex-fill">
                        <div class="card-header bg-dark">
                            <div class="d-flex align-items-center">
                                <span class="avatar avatar-lg avatar-rounded border border-white border-2 flex-shrink-0 me-2">
                                    <asp:Image ID="imgEmployeeProfile" runat="server" ImageUrl="~/assets/img/users/user-01.jpg" Alt="Img" />
                                </span>
                                <div>
                                    <h5 class="text-white mb-1">
                                        <asp:Label ID="lblEmployeeName" runat="server" Text="-" />
                                    </h5>
                                    <div class="d-flex align-items-center">
                                        <p class="text-white fs-12 mb-0">
                                            <asp:Label ID="lblDesignation" runat="server" Text="-" />
                                        </p>
                                        <span class="mx-1"><i class="ti ti-point-filled text-primary"></i></span>
                                        <p class="fs-12 text-white-50 mb-0">
                                            <asp:Label ID="lblDepartment" runat="server" Text="-" />
                                        </p>
                                    </div>
                                </div>
                            </div>
                            <a href="#" class="btn btn-icon btn-sm text-white rounded-circle edit-top"><i class="ti ti-edit"></i></a>
                        </div>
                        <div class="card-body">
                            <div class="mb-3">
                                <span class="d-block mb-1 fs-13 text-muted">Phone Number</span>
                                <p class="text-dark fw-medium mb-0">
                                    <asp:Label ID="lblPhone" runat="server" Text="-" />
                                </p>
                            </div>
                            <div class="mb-3">
                                <span class="d-block mb-1 fs-13 text-muted">Email Address</span>
                                <p class="text-dark fw-medium mb-0">
                                    <asp:Label ID="lblEmail" runat="server" Text="-" />
                                </p>
                            </div>
                            <div class="mb-3">
                                <span class="d-block mb-1 fs-13 text-muted">Report Office (Manager)</span>
                                <p class="text-dark fw-medium mb-0">
                                    <asp:Label ID="lblReportingManager" runat="server" Text="-" />
                                </p>
                            </div>
                            <div>
                                <span class="d-block mb-1 fs-13 text-muted">Joined on</span>
                                <p class="text-dark fw-medium mb-0">
                                    <asp:Label ID="lblJoinedDate" runat="server" Text="-" />
                                </p>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-xl-5 d-flex">
                    <div class="card flex-fill">
                        <div class="card-header">
                            <div class="d-flex align-items-center justify-content-between flex-wrap row-gap-2">
                                <h5>Leave Details</h5>
                                <div class="dropdown">
                                    <a href="javascript:void(0);" class="btn btn-white border btn-sm d-inline-flex align-items-center" data-bs-toggle="dropdown">
                                        <i class="ti ti-calendar me-1"></i>2026
                                    </a>
                                </div>
                            </div>
                        </div>
                        <div class="card-body">
                            <div class="row align-items-center">
                                <div class="col-md-6">
                                    <div class="mb-3">
                                        <div class="mb-3">
                                            <p class="d-flex align-items-center">
                                                <i class="ti ti-circle-filled fs-8 text-dark me-1"></i>
                                                <span class="text-gray-9 fw-semibold me-1">
                                                    <asp:Label ID="lblOnTime" runat="server" Text="0" /></span> on time
                                            </p>
                                        </div>
                                        <div class="mb-3">
                                            <p class="d-flex align-items-center">
                                                <i class="ti ti-circle-filled fs-8 text-success me-1"></i>
                                                <span class="text-gray-9 fw-semibold me-1">
                                                    <asp:Label ID="lblLate" runat="server" Text="0" /></span> Late Attendance
                                            </p>
                                        </div>
                                        <div class="mb-3">
                                            <p class="d-flex align-items-center">
                                                <i class="ti ti-circle-filled fs-8 text-primary me-1"></i>
                                                <span class="text-gray-9 fw-semibold me-1">
                                                    <asp:Label ID="lblWfh" runat="server" Text="0" /></span> Work From Home
                                            </p>
                                        </div>
                                        <div class="mb-3">
                                            <p class="d-flex align-items-center">
                                                <i class="ti ti-circle-filled fs-8 text-danger me-1"></i>
                                                <span class="text-gray-9 fw-semibold me-1">
                                                    <asp:Label ID="lblAbsent" runat="server" Text="0" /></span> Absent
                                            </p>
                                        </div>
                                        <div>
                                            <p class="d-flex align-items-center">
                                                <i class="ti ti-circle-filled fs-8 text-warning me-1"></i>
                                                <span class="text-gray-9 fw-semibold me-1">
                                                    <asp:Label ID="lblSickLeave" runat="server" Text="0" /></span> Sick Leave
                                            </p>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-md-6">
                                    <div class="mb-3 d-flex justify-content-md-end">
                                        <div id="leaves_chart" style="min-height: 220px; width: 100%;"></div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>

                <asp:Literal ID="litChartDataScript" runat="server" />
                <div class="col-xl-3 d-flex">
                    <div class="card flex-fill">
                        <div class="card-header">
                            <div class="d-flex align-items-center justify-content-between flex-wrap row-gap-2">
                                <h5>Leave Details</h5>
                                <div>
                                    <asp:DropDownList ID="ddlLeaveYear" runat="server"
                                        CssClass="form-select form-select-sm btn-white border d-inline-flex align-items-center"
                                        AutoPostBack="true"
                                        OnSelectedIndexChanged="ddlLeaveYear_SelectedIndexChanged">
                                        <asp:ListItem Text="2026" Value="2026" />
                                        <asp:ListItem Text="2025" Value="2025" />
                                        <asp:ListItem Text="2024" Value="2024" />
                                        <asp:ListItem Text="2023" Value="2023" />
                                    </asp:DropDownList>
                                </div>
                            </div>
                        </div>
                        <div class="card-body">
                            <div class="row align-items-center">
                                <div class="col-sm-6">
                                    <div class="mb-4">
                                        <span class="d-block mb-1 text-muted fs-13">Total Leaves</span>
                                        <h4>
                                            <asp:Label ID="lblTotalLeaves" runat="server" Text="16" /></h4>
                                    </div>
                                </div>
                                <div class="col-sm-6">
                                    <div class="mb-4">
                                        <span class="d-block mb-1 text-muted fs-13">Taken</span>
                                        <h4>
                                            <asp:Label ID="lblLeavesTaken" runat="server" Text="0" /></h4>
                                    </div>
                                </div>
                                <div class="col-sm-6">
                                    <div class="mb-4">
                                        <span class="d-block mb-1 text-muted fs-13">Absent</span>
                                        <h4>
                                            <asp:Label ID="lblAbsentDays" runat="server" Text="0" /></h4>
                                    </div>
                                </div>
                                <div class="col-sm-6">
                                    <div class="mb-4">
                                        <span class="d-block mb-1 text-muted fs-13">Request</span>
                                        <h4>
                                            <asp:Label ID="lblPendingRequests" runat="server" Text="0" /></h4>
                                    </div>
                                </div>
                                <div class="col-sm-6">
                                    <div class="mb-4">
                                        <span class="d-block mb-1 text-muted fs-13">Worked Days</span>
                                        <h4>
                                            <asp:Label ID="lblWorkedDays" runat="server" Text="0" /></h4>
                                    </div>
                                </div>
                                <div class="col-sm-6">
                                    <div class="mb-4">
                                        <span class="d-block mb-1 text-muted fs-13">Loss of Pay</span>
                                        <h4>
                                            <asp:Label ID="lblLossOfPay" runat="server" Text="0" /></h4>
                                    </div>
                                </div>
                                <div class="col-sm-12">
                                    <div>
                                        <a href="#" class="btn btn-dark w-100" data-bs-toggle="modal" data-bs-target="#add_leaves">Apply New Leave</a>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-xl-4 d-flex">
                    <div class="card flex-fill border-primary attendance-bg">
                        <div class="card-body">
                            <div class="mb-4 text-center">
                                <h6 class="fw-medium text-gray-5 mb-1">Attendance</h6>
                                <h4>08:35 AM, 11 Mar 2025</h4>
                            </div>
                            <div class="attendance-circle-progress attendance-progress mx-auto mb-3" data-value="65">
                                <span class="progress-left">
                                    <span class="progress-bar border-success" style="transform: rotate(54deg);"></span>
                                </span>
                                <span class="progress-right">
                                    <span class="progress-bar border-success" style="transform: rotate(180deg);"></span>
                                </span>
                                <div class="total-work-hours text-center w-100">
                                    <span class="fs-13 d-block mb-1">Total Hours</span>
                                    <h6>5:45:32</h6>
                                </div>
                            </div>
                            <div class="text-center">
                                <div class="badge badge-dark badge-md mb-3">Production :  3.45 hrs</div>
                                <h6 class="fw-medium d-flex align-items-center justify-content-center mb-4">
                                    <i class="ti ti-fingerprint text-primary me-1"></i>
                                    Punch In at  10.00 AM
                                </h6>
                                <a href="#" class="btn btn-primary w-100">Punch Out</a>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-xl-8 d-flex">
                    <div class="row flex-fill">
                        <div class="col-xl-3 col-md-6">
                            <div class="card">
                                <div class="card-body">
                                    <div class="border-bottom mb-3 pb-2">
                                        <span class="avatar avatar-sm bg-primary mb-2"><i class="ti ti-clock-stop"></i></span>
                                        <h2 class="mb-2">8.36 / <span class="fs-20 text-gray-5">9</span></h2>
                                        <p class="fw-medium text-truncate">Total Hours Today</p>
                                    </div>
                                    <div>
                                        <p class="d-flex align-items-center fs-13">
                                            <span class="avatar avatar-xs rounded-circle bg-success flex-shrink-0 me-2">
                                                <i class="ti ti-arrow-up fs-12"></i>
                                            </span>
                                            <span>5% This Week</span>
                                        </p>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-xl-3 col-md-6">
                            <div class="card">
                                <div class="card-body">
                                    <div class="border-bottom mb-3 pb-2">
                                        <span class="avatar avatar-sm bg-dark mb-2"><i class="ti ti-clock-up"></i></span>
                                        <h2 class="mb-2">10 / <span class="fs-20 text-gray-5">40</span></h2>
                                        <p class="fw-medium text-truncate">Total Hours Week</p>
                                    </div>
                                    <div>
                                        <p class="d-flex align-items-center fs-13">
                                            <span class="avatar avatar-xs rounded-circle bg-success flex-shrink-0 me-2">
                                                <i class="ti ti-arrow-up fs-12"></i>
                                            </span>
                                            <span>7% Last Week</span>
                                        </p>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-xl-3 col-md-6">
                            <div class="card">
                                <div class="card-body">
                                    <div class="border-bottom mb-3 pb-2">
                                        <span class="avatar avatar-sm bg-info mb-2"><i class="ti ti-calendar-up"></i></span>
                                        <h2 class="mb-2">75 / <span class="fs-20 text-gray-5">98</span></h2>
                                        <p class="fw-medium text-truncate">Total Hours Month</p>
                                    </div>
                                    <div>
                                        <p class="d-flex align-items-center fs-13 text-truncate">
                                            <span class="avatar avatar-xs rounded-circle bg-danger flex-shrink-0 me-2">
                                                <i class="ti ti-arrow-down fs-12"></i>
                                            </span>
                                            <span>8% Last Month</span>
                                        </p>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-xl-3 col-md-6">
                            <div class="card">
                                <div class="card-body">
                                    <div class="border-bottom mb-3 pb-2">
                                        <span class="avatar avatar-sm bg-pink mb-2"><i class="ti ti-calendar-star"></i></span>
                                        <h2 class="mb-2">16 / <span class="fs-20 text-gray-5">28</span></h2>
                                        <p class="fw-medium text-truncate">Overtime this Month</p>
                                    </div>
                                    <div>
                                        <p class="d-flex align-items-center fs-13 text-truncate">
                                            <span class="avatar avatar-xs rounded-circle bg-danger flex-shrink-0 me-2">
                                                <i class="ti ti-arrow-down fs-12"></i>
                                            </span>
                                            <span>6% Last Month</span>
                                        </p>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-12">
                            <div class="card">
                                <div class="card-body">
                                    <div class="row">
                                        <div class="col-xl-3">
                                            <div class="mb-4">
                                                <p class="d-flex align-items-center mb-1"><i class="ti ti-point-filled text-dark-transparent me-1"></i>Total Working hours</p>
                                                <h3>12h 36m</h3>
                                            </div>
                                        </div>
                                        <div class="col-xl-3">
                                            <div class="mb-4">
                                                <p class="d-flex align-items-center mb-1"><i class="ti ti-point-filled text-success me-1"></i>Productive Hours</p>
                                                <h3>08h 36m</h3>
                                            </div>
                                        </div>
                                        <div class="col-xl-3">
                                            <div class="mb-4">
                                                <p class="d-flex align-items-center mb-1"><i class="ti ti-point-filled text-warning me-1"></i>Break hours</p>
                                                <h3>22m 15s</h3>
                                            </div>
                                        </div>
                                        <div class="col-xl-3">
                                            <div class="mb-4">
                                                <p class="d-flex align-items-center mb-1"><i class="ti ti-point-filled text-info me-1"></i>Overtime</p>
                                                <h3>02h 15m</h3>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="row">
                                        <div class="col-md-12">
                                            <div class="progress bg-transparent-dark mb-3" style="height: 24px;">
                                                <div class="progress-bar bg-white rounded" role="progressbar" style="width: 18%;"></div>
                                                <div class="progress-bar bg-success rounded me-2" role="progressbar" style="width: 18%;"></div>
                                                <div class="progress-bar bg-warning rounded me-2" role="progressbar" style="width: 5%;"></div>
                                                <div class="progress-bar bg-success rounded me-2" role="progressbar" style="width: 28%;"></div>
                                                <div class="progress-bar bg-warning rounded me-2" role="progressbar" style="width: 17%;"></div>
                                                <div class="progress-bar bg-success rounded me-2" role="progressbar" style="width: 22%;"></div>
                                                <div class="progress-bar bg-warning rounded me-2" role="progressbar" style="width: 5%;"></div>
                                                <div class="progress-bar bg-info rounded me-2" role="progressbar" style="width: 3%;"></div>
                                                <div class="progress-bar bg-info rounded" role="progressbar" style="width: 2%;"></div>
                                                <div class="progress-bar bg-white rounded" role="progressbar" style="width: 18%;"></div>
                                            </div>

                                        </div>
                                        <div class="co-md-12">
                                            <div class="d-flex align-items-center justify-content-between flex-wrap row-gap-2">
                                                <span class="fs-10">06:00</span>
                                                <span class="fs-10">07:00</span>
                                                <span class="fs-10">08:00</span>
                                                <span class="fs-10">09:00</span>
                                                <span class="fs-10">10:00</span>
                                                <span class="fs-10">11:00</span>
                                                <span class="fs-10">12:00</span>
                                                <span class="fs-10">01:00</span>
                                                <span class="fs-10">02:00</span>
                                                <span class="fs-10">03:00</span>
                                                <span class="fs-10">04:00</span>
                                                <span class="fs-10">05:00</span>
                                                <span class="fs-10">06:00</span>
                                                <span class="fs-10">07:00</span>
                                                <span class="fs-10">08:00</span>
                                                <span class="fs-10">09:00</span>
                                                <span class="fs-10">10:00</span>
                                                <span class="fs-10">11:00</span>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-xl-6 d-flex">
                    <div class="card flex-fill">
                        <div class="card-header">
                            <div class="d-flex align-items-center justify-content-between flex-wrap row-gap-2">
                                <h5>Projects</h5>
                                <div class="dropdown">
                                    <a href="javascript:void(0);" class="btn btn-white border-0 dropdown-toggle border btn-sm d-inline-flex align-items-center" data-bs-toggle="dropdown">Ongoing Projects
                                    </a>
                                    <ul class="dropdown-menu  dropdown-menu-end p-3">
                                        <li>
                                            <a href="javascript:void(0);" class="dropdown-item rounded-1">All Projects</a>
                                        </li>
                                        <li>
                                            <a href="javascript:void(0);" class="dropdown-item rounded-1">Ongoing Projects</a>
                                        </li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                        <div class="card-body">
                            <div class="row">
                                <div class="col-md-6">
                                    <div class="card mb-4 shadow-none mb-md-0">
                                        <div class="card-body">
                                            <div class="d-flex align-items-center justify-content-between mb-3">
                                                <h6>Office Management</h6>
                                                <div class="dropdown">
                                                    <a href="javascript:void(0);" class="d-inline-flex align-items-center" data-bs-toggle="dropdown">
                                                        <i class="ti ti-dots-vertical"></i>
                                                    </a>
                                                    <ul class="dropdown-menu dropdown-menu-end p-3">
                                                        <li>
                                                            <a href="javascript:void(0);" class="dropdown-item rounded-1" data-bs-toggle="modal" data-bs-target="#edit_task"><i class="ti ti-edit me-2"></i>Edit</a>
                                                        </li>
                                                        <li>
                                                            <a href="javascript:void(0);" class="dropdown-item rounded-1" data-bs-toggle="modal" data-bs-target="#delete_modal"><i class="ti ti-trash me-2"></i>Delete</a>
                                                        </li>
                                                    </ul>
                                                </div>
                                            </div>
                                            <div>
                                                <div class="d-flex align-items-center mb-3">
                                                    <a href="javascript:void(0);" class="avatar">
                                                        <img src="assets/img/users/user-32.jpg" class="img-fluid rounded-circle" alt="img">
                                                    </a>
                                                    <div class="ms-2">
                                                        <h6 class="fw-normal"><a href="javascript:void(0);">Anthony Lewis</a></h6>
                                                        <span class="fs-13 d-block">Project Leader</span>
                                                    </div>
                                                </div>
                                                <div class="d-flex align-items-center mb-3">
                                                    <a href="javascript:void(0);" class="avatar bg-soft-primary rounded-circle">
                                                        <i class="ti ti-calendar text-primary fs-16"></i>
                                                    </a>
                                                    <div class="ms-2">
                                                        <h6 class="fw-normal">14 Jan 2024</h6>
                                                        <span class="fs-13 d-block">Deadline</span>
                                                    </div>
                                                </div>
                                                <div class="d-flex align-items-center justify-content-between bg-transparent-light border border-dashed rounded p-2 mb-3">
                                                    <div class="d-flex align-items-center">
                                                        <span class="avatar avatar-sm bg-success-transparent rounded-circle me-1"><i class="ti ti-checklist fs-16"></i></span>
                                                        <p>Tasks : <span class="text-gray-9">6 </span>/10</p>
                                                    </div>
                                                    <div class="avatar-list-stacked avatar-group-sm">
                                                        <span class="avatar avatar-rounded">
                                                            <img class="border border-white" src="assets/img/profiles/avatar-06.jpg" alt="img">
                                                        </span>
                                                        <span class="avatar avatar-rounded">
                                                            <img class="border border-white" src="assets/img/profiles/avatar-07.jpg" alt="img">
                                                        </span>
                                                        <span class="avatar avatar-rounded">
                                                            <img class="border border-white" src="assets/img/profiles/avatar-08.jpg" alt="img">
                                                        </span>
                                                        <a class="avatar bg-primary avatar-rounded text-fixed-white fs-12 fw-medium" href="javascript:void(0);">+2
                                                        </a>
                                                    </div>
                                                </div>
                                                <div class="bg-soft-secondary p-2 rounded d-flex align-items-center justify-content-between">
                                                    <p class="text-secondary mb-0 text-truncate">Time Spent</p>
                                                    <h5 class="text-secondary text-truncate">65/120 <span class="fs-14 fw-normal">Hrs</span></h5>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-md-6">
                                    <div class="card shadow-none mb-0">
                                        <div class="card-body">
                                            <div class="d-flex align-items-center justify-content-between mb-3">
                                                <h6>Office Management</h6>
                                                <div class="dropdown">
                                                    <a href="javascript:void(0);" class="d-inline-flex align-items-center" data-bs-toggle="dropdown">
                                                        <i class="ti ti-dots-vertical"></i>
                                                    </a>
                                                    <ul class="dropdown-menu dropdown-menu-end p-3">
                                                        <li>
                                                            <a href="javascript:void(0);" class="dropdown-item rounded-1" data-bs-toggle="modal" data-bs-target="#edit_task"><i class="ti ti-edit me-2"></i>Edit</a>
                                                        </li>
                                                        <li>
                                                            <a href="javascript:void(0);" class="dropdown-item rounded-1" data-bs-toggle="modal" data-bs-target="#delete_modal"><i class="ti ti-trash me-2"></i>Delete</a>
                                                        </li>
                                                    </ul>
                                                </div>
                                            </div>
                                            <div>
                                                <div class="d-flex align-items-center mb-3">
                                                    <a href="javascript:void(0);" class="avatar">
                                                        <img src="assets/img/users/user-33.jpg" class="img-fluid rounded-circle" alt="img">
                                                    </a>
                                                    <div class="ms-2">
                                                        <h6 class="fw-normal"><a href="javascript:void(0);">Anthony Lewis</a></h6>
                                                        <span class="fs-13 d-block">Project Leader</span>
                                                    </div>
                                                </div>
                                                <div class="d-flex align-items-center mb-3">
                                                    <a href="javascript:void(0);" class="avatar bg-soft-primary rounded-circle">
                                                        <i class="ti ti-calendar text-primary fs-16"></i>
                                                    </a>
                                                    <div class="ms-2">
                                                        <h6 class="fw-normal">14 Jan 2024</h6>
                                                        <span class="fs-13 d-block">Deadline</span>
                                                    </div>
                                                </div>
                                                <div class="d-flex align-items-center justify-content-between bg-transparent-light border border-dashed rounded p-2 mb-3">
                                                    <div class="d-flex align-items-center">
                                                        <span class="avatar avatar-sm bg-success-transparent rounded-circle me-1"><i class="ti ti-checklist fs-16"></i></span>
                                                        <p>Tasks : <span class="text-gray-9">6 </span>/10</p>
                                                    </div>
                                                    <div class="avatar-list-stacked avatar-group-sm">
                                                        <span class="avatar avatar-rounded">
                                                            <img class="border border-white" src="assets/img/profiles/avatar-06.jpg" alt="img">
                                                        </span>
                                                        <span class="avatar avatar-rounded">
                                                            <img class="border border-white" src="assets/img/profiles/avatar-07.jpg" alt="img">
                                                        </span>
                                                        <span class="avatar avatar-rounded">
                                                            <img class="border border-white" src="assets/img/profiles/avatar-08.jpg" alt="img">
                                                        </span>
                                                        <a class="avatar bg-primary avatar-rounded text-fixed-white fs-12 fw-medium" href="javascript:void(0);">+2
                                                        </a>
                                                    </div>
                                                </div>
                                                <div class="bg-soft-secondary p-2 rounded d-flex align-items-center justify-content-between">
                                                    <p class="text-secondary mb-0 text-truncate">Time Spent</p>
                                                    <h5 class="text-secondary text-truncate">65/120 <span class="fs-14 fw-normal">Hrs</span></h5>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-xl-6 d-flex">
                    <div class="card flex-fill">
                        <div class="card-header">
                            <div class="d-flex align-items-center justify-content-between flex-wrap row-gap-2">
                                <h5>Tasks</h5>
                                <div class="dropdown">
                                    <a href="javascript:void(0);" class="btn btn-white border-0 dropdown-toggle border btn-sm d-inline-flex align-items-center" data-bs-toggle="dropdown">All Projects
                                    </a>
                                    <ul class="dropdown-menu  dropdown-menu-end p-3">
                                        <li>
                                            <a href="javascript:void(0);" class="dropdown-item rounded-1">All Projects</a>
                                        </li>
                                        <li>
                                            <a href="javascript:void(0);" class="dropdown-item rounded-1">Ongoing Projects</a>
                                        </li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                        <div class="card-body">
                            <div class="list-group list-group-flush">
                                <div class="list-group-item border rounded mb-3 p-2">
                                    <div class="row align-items-center row-gap-3">
                                        <div class="col-md-8">
                                            <div class="todo-inbox-check d-flex align-items-center">
                                                <span><i class="ti ti-grid-dots me-2"></i></span>
                                                <div class="form-check">
                                                    <input class="form-check-input" type="checkbox">
                                                </div>
                                                <span class="me-2 d-flex align-items-center rating-select"><i class="ti ti-star-filled filled"></i></span>
                                                <div class="strike-info">
                                                    <h4 class="fs-14 text-truncate">Patient appointment booking</h4>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-md-4">
                                            <div class="d-flex align-items-center justify-content-md-end flex-wrap row-gap-3">
                                                <span class="badge bg-soft-pink d-inline-flex align-items-center me-2"><i class="fas fa-circle fs-6 me-1"></i>Onhold</span>
                                                <div class="d-flex align-items-center">
                                                    <div class="avatar-list-stacked avatar-group-sm">
                                                        <span class="avatar avatar-rounded">
                                                            <img class="border border-white" src="assets/img/profiles/avatar-13.jpg" alt="img">
                                                        </span>
                                                        <span class="avatar avatar-rounded">
                                                            <img class="border border-white" src="assets/img/profiles/avatar-14.jpg" alt="img">
                                                        </span>
                                                        <span class="avatar avatar-rounded">
                                                            <img class="border border-white" src="assets/img/profiles/avatar-15.jpg" alt="img">
                                                        </span>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="list-group-item border rounded mb-3 p-2">
                                    <div class="row align-items-center row-gap-3">
                                        <div class="col-md-8">
                                            <div class="todo-inbox-check d-flex align-items-center">
                                                <span><i class="ti ti-grid-dots me-2"></i></span>
                                                <div class="form-check">
                                                    <input class="form-check-input" type="checkbox">
                                                </div>
                                                <span class="me-2 rating-select d-flex align-items-center"><i class="ti ti-star"></i></span>
                                                <div class="strike-info">
                                                    <h4 class="fs-14 text-truncate">Appointment booking with payment</h4>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-md-4">
                                            <div class="d-flex align-items-center justify-content-md-end flex-wrap row-gap-3">
                                                <span class="badge bg-transparent-purple d-flex align-items-center me-2"><i class="fas fa-circle fs-6 me-1"></i>Inprogress</span>
                                                <div class="d-flex align-items-center">
                                                    <div class="avatar-list-stacked avatar-group-sm">
                                                        <span class="avatar avatar-rounded">
                                                            <img class="border border-white" src="assets/img/profiles/avatar-20.jpg" alt="img">
                                                        </span>
                                                        <span class="avatar avatar-rounded">
                                                            <img class="border border-white" src="assets/img/profiles/avatar-21.jpg" alt="img">
                                                        </span>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="list-group-item border rounded mb-3 p-2">
                                    <div class="row align-items-center row-gap-3">
                                        <div class="col-md-8">
                                            <div class="todo-inbox-check d-flex align-items-center">
                                                <span><i class="ti ti-grid-dots me-2"></i></span>
                                                <div class="form-check">
                                                    <input class="form-check-input" type="checkbox">
                                                </div>
                                                <span class="me-2 rating-select d-flex align-items-center"><i class="ti ti-star"></i></span>
                                                <div class="strike-info">
                                                    <h4 class="fs-14 text-truncate">Patient and Doctor video conferencing</h4>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-md-4">
                                            <div class="d-flex align-items-center justify-content-md-end flex-wrap row-gap-3">
                                                <span class="badge badge-soft-success align-items-center me-2"><i class="fas fa-circle fs-6 me-1"></i>Completed</span>
                                                <div class="d-flex align-items-center">
                                                    <div class="avatar-list-stacked avatar-group-sm">
                                                        <span class="avatar avatar-rounded">
                                                            <img class="border border-white" src="assets/img/profiles/avatar-28.jpg" alt="img">
                                                        </span>
                                                        <span class="avatar avatar-rounded">
                                                            <img class="border border-white" src="assets/img/profiles/avatar-29.jpg" alt="img">
                                                        </span>
                                                        <span class="avatar avatar-rounded">
                                                            <img class="border border-white" src="assets/img/profiles/avatar-24.jpg" alt="img">
                                                        </span>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="list-group-item border rounded mb-3 p-2">
                                    <div class="row align-items-center row-gap-3">
                                        <div class="col-md-8">
                                            <div class="todo-inbox-check d-flex align-items-center todo-strike-content">
                                                <span><i class="ti ti-grid-dots me-2"></i></span>
                                                <div class="form-check">
                                                    <input class="form-check-input" type="checkbox" checked="">
                                                </div>
                                                <span class="me-2 rating-select d-flex align-items-center"><i class="ti ti-star"></i></span>
                                                <div class="strike-info">
                                                    <h4 class="fs-14 text-truncate">Private chat module</h4>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-md-4">
                                            <div class="d-flex align-items-center justify-content-md-end flex-wrap row-gap-3">
                                                <span class="badge badge-secondary-transparent d-flex align-items-center me-2"><i class="fas fa-circle fs-6 me-1"></i>Pending</span>
                                                <div class="d-flex align-items-center">
                                                    <div class="avatar-list-stacked avatar-group-sm">
                                                        <span class="avatar avatar-rounded">
                                                            <img class="border border-white" src="assets/img/profiles/avatar-23.jpg" alt="img">
                                                        </span>
                                                        <span class="avatar avatar-rounded">
                                                            <img class="border border-white" src="assets/img/profiles/avatar-24.jpg" alt="img">
                                                        </span>
                                                        <span class="avatar avatar-rounded">
                                                            <img class="border border-white" src="assets/img/profiles/avatar-25.jpg" alt="img">
                                                        </span>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="list-group-item border rounded p-2">
                                    <div class="row align-items-center row-gap-3">
                                        <div class="col-md-8">
                                            <div class="todo-inbox-check d-flex align-items-center">
                                                <span><i class="ti ti-grid-dots me-2"></i></span>
                                                <div class="form-check">
                                                    <input class="form-check-input" type="checkbox">
                                                </div>
                                                <span class="me-2 rating-select d-flex align-items-center"><i class="ti ti-star"></i></span>
                                                <div class="strike-info">
                                                    <h4 class="fs-14 text-truncate">Go-Live and Post-Implementation Support</h4>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-md-4">
                                            <div class="d-flex align-items-center justify-content-md-end flex-wrap row-gap-3">
                                                <span class="badge bg-transparent-purple d-flex align-items-center me-2"><i class="fas fa-circle fs-6 me-1"></i>Inprogress</span>
                                                <div class="d-flex align-items-center">
                                                    <div class="avatar-list-stacked avatar-group-sm">
                                                        <span class="avatar avatar-rounded">
                                                            <img class="border border-white" src="assets/img/profiles/avatar-28.jpg" alt="img">
                                                        </span>
                                                        <span class="avatar avatar-rounded">
                                                            <img class="border border-white" src="assets/img/profiles/avatar-29.jpg" alt="img">
                                                        </span>
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
            </div>
            <div class="row">
                <div class="col-xl-5 d-flex">
                    <div class="card flex-fill">
                        <div class="card-header">
                            <div class="d-flex align-items-center justify-content-between flex-wrap row-gap-2">
                                <h5>Performance</h5>
                                <div class="dropdown">
                                    <a href="javascript:void(0);" class="btn btn-white border btn-sm d-inline-flex align-items-center" data-bs-toggle="dropdown">
                                        <i class="ti ti-calendar me-1"></i>2024
                                    </a>
                                    <ul class="dropdown-menu  dropdown-menu-end p-3">
                                        <li>
                                            <a href="javascript:void(0);" class="dropdown-item rounded-1">2024</a>
                                        </li>
                                        <li>
                                            <a href="javascript:void(0);" class="dropdown-item rounded-1">2023</a>
                                        </li>
                                        <li>
                                            <a href="javascript:void(0);" class="dropdown-item rounded-1">2022</a>
                                        </li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                        <div class="card-body">
                            <div>
                                <div class="bg-light d-flex align-items-center rounded p-2">
                                    <h3 class="me-2">98%</h3>
                                    <span class="badge badge-outline-success bg-success-transparent rounded-pill me-1">12%</span>
                                    <span>vs last years</span>
                                </div>
                                <div id="performance_chart2" style="min-height: 288px;">
                                    <div id="apexcharts2vrop2bl" class="apexcharts-canvas apexcharts2vrop2bl apexcharts-theme-" style="width: 457px; height: 273px;">
                                        <svg id="SvgjsSvg1001" width="457" height="273" xmlns="http://www.w3.org/2000/svg" version="1.1" xmlns:xlink="http://www.w3.org/1999/xlink" xmlns:svgjs="http://svgjs.dev" class="apexcharts-svg" xmlns:data="ApexChartsNS" transform="translate(0, 0)">
                                            <foreignObject x="0" y="0" width="457" height="273">
                                                <div class="apexcharts-legend" xmlns="http://www.w3.org/1999/xhtml" style="max-height: 136.5px;"></div>
                                                <style type="text/css">
                                                    .apexcharts-flip-y {
                                                        transform: scaleY(-1) translateY(-100%);
                                                        transform-origin: top;
                                                        transform-box: fill-box;
                                                    }

                                                    .apexcharts-flip-x {
                                                        transform: scaleX(-1);
                                                        transform-origin: center;
                                                        transform-box: fill-box;
                                                    }

                                                    .apexcharts-legend {
                                                        display: flex;
                                                        overflow: auto;
                                                        padding: 0 10px;
                                                    }

                                                        .apexcharts-legend.apx-legend-position-bottom, .apexcharts-legend.apx-legend-position-top {
                                                            flex-wrap: wrap
                                                        }

                                                        .apexcharts-legend.apx-legend-position-right, .apexcharts-legend.apx-legend-position-left {
                                                            flex-direction: column;
                                                            bottom: 0;
                                                        }

                                                        .apexcharts-legend.apx-legend-position-bottom.apexcharts-align-left, .apexcharts-legend.apx-legend-position-top.apexcharts-align-left, .apexcharts-legend.apx-legend-position-right, .apexcharts-legend.apx-legend-position-left {
                                                            justify-content: flex-start;
                                                        }

                                                        .apexcharts-legend.apx-legend-position-bottom.apexcharts-align-center, .apexcharts-legend.apx-legend-position-top.apexcharts-align-center {
                                                            justify-content: center;
                                                        }

                                                        .apexcharts-legend.apx-legend-position-bottom.apexcharts-align-right, .apexcharts-legend.apx-legend-position-top.apexcharts-align-right {
                                                            justify-content: flex-end;
                                                        }

                                                    .apexcharts-legend-series {
                                                        cursor: pointer;
                                                        line-height: normal;
                                                        display: flex;
                                                        align-items: center;
                                                    }

                                                    .apexcharts-legend-text {
                                                        position: relative;
                                                        font-size: 14px;
                                                    }

                                                        .apexcharts-legend-text *, .apexcharts-legend-marker * {
                                                            pointer-events: none;
                                                        }

                                                    .apexcharts-legend-marker {
                                                        position: relative;
                                                        display: flex;
                                                        align-items: center;
                                                        justify-content: center;
                                                        cursor: pointer;
                                                        margin-right: 1px;
                                                    }

                                                    .apexcharts-legend-series.apexcharts-no-click {
                                                        cursor: auto;
                                                    }

                                                    .apexcharts-legend .apexcharts-hidden-zero-series, .apexcharts-legend .apexcharts-hidden-null-series {
                                                        display: none !important;
                                                    }

                                                    .apexcharts-inactive-legend {
                                                        opacity: 0.45;
                                                    }
                                                </style>
                                            </foreignObject><text id="SvgjsText1004" font-family="Helvetica, Arial, sans-serif" x="10" y="16.5" text-anchor="start" dominant-baseline="auto" font-size="14px" font-weight="900" fill="#373d3f" class="apexcharts-title-text" style="font-family: Helvetica, Arial, sans-serif; opacity: 1;"></text><rect id="SvgjsRect1007" width="0" height="0" x="0" y="0" rx="0" ry="0" opacity="1" stroke-width="0" stroke="none" stroke-dasharray="0" fill="#fefefe"></rect><g id="SvgjsG1012" class="apexcharts-datalabels-group" transform="translate(0, 0) scale(1)"></g><g id="SvgjsG1013" class="apexcharts-datalabels-group" transform="translate(0, 0) scale(1)"></g><g id="SvgjsG1069" class="apexcharts-yaxis" rel="0" transform="translate(17.2353515625, 0)"><g id="SvgjsG1070" class="apexcharts-yaxis-texts-g"><text id="SvgjsText1072" font-family="Helvetica, Arial, sans-serif" x="20" y="38.666666666666664" text-anchor="end" dominant-baseline="auto" font-size="11px" font-weight="400" fill="#373d3f" class="apexcharts-text apexcharts-yaxis-label " style="font-family: Helvetica, Arial, sans-serif;"><tspan id="SvgjsTspan1073">60K</tspan>
                                                <title>60K</title>
                                            </text>
                                                <text id="SvgjsText1075" font-family="Helvetica, Arial, sans-serif" x="20" y="78.86570654322307" text-anchor="end" dominant-baseline="auto" font-size="11px" font-weight="400" fill="#373d3f" class="apexcharts-text apexcharts-yaxis-label " style="font-family: Helvetica, Arial, sans-serif;">
                                                    <tspan id="SvgjsTspan1076">50K</tspan>
                                                    <title>50K</title>
                                                </text>
                                                <text id="SvgjsText1078" font-family="Helvetica, Arial, sans-serif" x="20" y="119.06474641977947" text-anchor="end" dominant-baseline="auto" font-size="11px" font-weight="400" fill="#373d3f" class="apexcharts-text apexcharts-yaxis-label " style="font-family: Helvetica, Arial, sans-serif;">
                                                    <tspan id="SvgjsTspan1079">40K</tspan>
                                                    <title>40K</title>
                                                </text>
                                                <text id="SvgjsText1081" font-family="Helvetica, Arial, sans-serif" x="20" y="159.26378629633587" text-anchor="end" dominant-baseline="auto" font-size="11px" font-weight="400" fill="#373d3f" class="apexcharts-text apexcharts-yaxis-label " style="font-family: Helvetica, Arial, sans-serif;">
                                                    <tspan id="SvgjsTspan1082">30K</tspan>
                                                    <title>30K</title>
                                                </text>
                                                <text id="SvgjsText1084" font-family="Helvetica, Arial, sans-serif" x="20" y="199.46282617289228" text-anchor="end" dominant-baseline="auto" font-size="11px" font-weight="400" fill="#373d3f" class="apexcharts-text apexcharts-yaxis-label " style="font-family: Helvetica, Arial, sans-serif;">
                                                    <tspan id="SvgjsTspan1085">20K</tspan>
                                                    <title>20K</title>
                                                </text>
                                                <text id="SvgjsText1087" font-family="Helvetica, Arial, sans-serif" x="20" y="239.6618660494487" text-anchor="end" dominant-baseline="auto" font-size="11px" font-weight="400" fill="#373d3f" class="apexcharts-text apexcharts-yaxis-label " style="font-family: Helvetica, Arial, sans-serif;">
                                                    <tspan id="SvgjsTspan1088">10K</tspan>
                                                    <title>10K</title>
                                                </text>
                                            </g>
                                            </g><g id="SvgjsG1003" class="apexcharts-inner apexcharts-graphical" transform="translate(47.2353515625, 35)"><defs id="SvgjsDefs1002"><clipPath id="gridRectMask2vrop2bl"><rect id="SvgjsRect1009" width="399.7646484375" height="200.99519938278198" x="0" y="0" rx="0" ry="0" opacity="1" stroke-width="0" stroke="none" stroke-dasharray="0" fill="#fff"></rect>
                                            </clipPath>
                                                <clipPath id="gridRectBarMask2vrop2bl">
                                                    <rect id="SvgjsRect1010" width="407.7646484375" height="208.99519938278198" x="-4" y="-4" rx="0" ry="0" opacity="1" stroke-width="0" stroke="none" stroke-dasharray="0" fill="#fff"></rect>
                                                </clipPath>
                                                <clipPath id="gridRectMarkerMask2vrop2bl">
                                                    <rect id="SvgjsRect1011" width="399.7646484375" height="200.99519938278198" x="0" y="0" rx="0" ry="0" opacity="1" stroke-width="0" stroke="none" stroke-dasharray="0" fill="#fff"></rect>
                                                </clipPath>
                                                <clipPath id="forecastMask2vrop2bl"></clipPath>
                                                <clipPath id="nonForecastMask2vrop2bl"></clipPath>
                                                <linearGradient id="SvgjsLinearGradient1018" x1="0" y1="0" x2="0" y2="1">
                                                    <stop id="SvgjsStop1019" stop-opacity="0.65" stop-color="rgba(3,201,90,0.65)" offset="0"></stop>
                                                    <stop id="SvgjsStop1020" stop-opacity="0.5" stop-color="rgba(129,228,173,0.5)" offset="1"></stop>
                                                    <stop id="SvgjsStop1021" stop-opacity="0.5" stop-color="rgba(129,228,173,0.5)" offset="1"></stop>
                                                </linearGradient>
                                            </defs>
                                                <line id="SvgjsLine1008" x1="0" y1="0" x2="0" y2="200.99519938278198" stroke="#b6b6b6" stroke-dasharray="3" stroke-linecap="butt" class="apexcharts-xcrosshairs" x="0" y="0" width="1" height="200.99519938278198" fill="#b1b9c4" filter="none" fill-opacity="0.9" stroke-width="1"></line>
                                                <line id="SvgjsLine1028" x1="0" y1="200.99519938278198" x2="0" y2="206.99519938278198" stroke="#e0e0e0" stroke-dasharray="0" stroke-linecap="butt" class="apexcharts-xaxis-tick"></line>
                                                <line id="SvgjsLine1029" x1="66.62744140625" y1="200.99519938278198" x2="66.62744140625" y2="206.99519938278198" stroke="#e0e0e0" stroke-dasharray="0" stroke-linecap="butt" class="apexcharts-xaxis-tick"></line>
                                                <line id="SvgjsLine1030" x1="133.2548828125" y1="200.99519938278198" x2="133.2548828125" y2="206.99519938278198" stroke="#e0e0e0" stroke-dasharray="0" stroke-linecap="butt" class="apexcharts-xaxis-tick"></line>
                                                <line id="SvgjsLine1031" x1="199.88232421875" y1="200.99519938278198" x2="199.88232421875" y2="206.99519938278198" stroke="#e0e0e0" stroke-dasharray="0" stroke-linecap="butt" class="apexcharts-xaxis-tick"></line>
                                                <line id="SvgjsLine1032" x1="266.509765625" y1="200.99519938278198" x2="266.509765625" y2="206.99519938278198" stroke="#e0e0e0" stroke-dasharray="0" stroke-linecap="butt" class="apexcharts-xaxis-tick"></line>
                                                <line id="SvgjsLine1033" x1="333.13720703125" y1="200.99519938278198" x2="333.13720703125" y2="206.99519938278198" stroke="#e0e0e0" stroke-dasharray="0" stroke-linecap="butt" class="apexcharts-xaxis-tick"></line>
                                                <line id="SvgjsLine1034" x1="399.7646484375" y1="200.99519938278198" x2="399.7646484375" y2="206.99519938278198" stroke="#e0e0e0" stroke-dasharray="0" stroke-linecap="butt" class="apexcharts-xaxis-tick"></line>
                                                <g id="SvgjsG1024" class="apexcharts-grid">
                                                    <g id="SvgjsG1025" class="apexcharts-gridlines-horizontal">
                                                        <line id="SvgjsLine1036" x1="0" y1="40.1990398765564" x2="399.7646484375" y2="40.1990398765564" stroke="#e0e0e0" stroke-dasharray="0" stroke-linecap="butt" class="apexcharts-gridline"></line>
                                                        <line id="SvgjsLine1037" x1="0" y1="80.3980797531128" x2="399.7646484375" y2="80.3980797531128" stroke="#e0e0e0" stroke-dasharray="0" stroke-linecap="butt" class="apexcharts-gridline"></line>
                                                        <line id="SvgjsLine1038" x1="0" y1="120.5971196296692" x2="399.7646484375" y2="120.5971196296692" stroke="#e0e0e0" stroke-dasharray="0" stroke-linecap="butt" class="apexcharts-gridline"></line>
                                                        <line id="SvgjsLine1039" x1="0" y1="160.7961595062256" x2="399.7646484375" y2="160.7961595062256" stroke="#e0e0e0" stroke-dasharray="0" stroke-linecap="butt" class="apexcharts-gridline"></line>
                                                        <line id="SvgjsLine1040" x1="0" y1="200.995199382782" x2="399.7646484375" y2="200.995199382782" stroke="#e0e0e0" stroke-dasharray="0" stroke-linecap="butt" class="apexcharts-gridline"></line>
                                                    </g>
                                                    <g id="SvgjsG1026" class="apexcharts-gridlines-vertical"></g>
                                                    <line id="SvgjsLine1042" x1="0" y1="200.99519938278198" x2="399.7646484375" y2="200.99519938278198" stroke="transparent" stroke-dasharray="0" stroke-linecap="butt"></line>
                                                    <line id="SvgjsLine1041" x1="0" y1="1" x2="0" y2="200.99519938278198" stroke="transparent" stroke-dasharray="0" stroke-linecap="butt"></line>
                                                </g>
                                                <g id="SvgjsG1027" class="apexcharts-grid-borders">
                                                    <line id="SvgjsLine1035" x1="0" y1="0" x2="399.7646484375" y2="0" stroke="#e0e0e0" stroke-dasharray="0" stroke-linecap="butt" class="apexcharts-gridline"></line>
                                                    <line id="SvgjsLine1068" x1="0" y1="200.99519938278198" x2="399.7646484375" y2="200.99519938278198" stroke="#e0e0e0" stroke-dasharray="0" stroke-width="1" stroke-linecap="butt"></line>
                                                </g>
                                                <g id="SvgjsG1014" class="apexcharts-area-series apexcharts-plot-series">
                                                    <g id="SvgjsG1015" class="apexcharts-series" zIndex="0" seriesName="performance" data:longestSeries="true" rel="1" data:realIndex="0">
                                                        <path id="SvgjsPath1022" d="M0 160.7961595062256L66.62744140625 160.7961595062256L133.2548828125 100.49759969139097L199.88232421875 100.49759969139097L266.509765625 80.3980797531128L333.13720703125 0L399.7646484375 0L399.7646484375 200.99519938278198L0 200.99519938278198C0 200.99519938278198 0 160.7961595062256 0 160.7961595062256 " fill="url(#SvgjsLinearGradient1018)" fill-opacity="1" stroke-opacity="1" stroke-linecap="butt" stroke-width="0" stroke-dasharray="0" class="apexcharts-area" index="0" clip-path="url(#gridRectMask2vrop2bl)" pathTo="M 0 160.7961595062256 L 66.62744140625 160.7961595062256 L 133.2548828125 100.49759969139097 L 199.88232421875 100.49759969139097 L 266.509765625 80.3980797531128 L 333.13720703125 0 L 399.7646484375 0 L 399.7646484375 200.99519938278198 L 0 200.99519938278198z" pathFrom="M 0 241.19423925933836 L 0 241.19423925933836 L 66.62744140625 241.19423925933836 L 133.2548828125 241.19423925933836 L 199.88232421875 241.19423925933836 L 266.509765625 241.19423925933836 L 333.13720703125 241.19423925933836 L 399.7646484375 241.19423925933836z"></path>
                                                        <path id="SvgjsPath1023" d="M0 160.7961595062256L66.62744140625 160.7961595062256L133.2548828125 100.49759969139097L199.88232421875 100.49759969139097L266.509765625 80.3980797531128L333.13720703125 0L399.7646484375 0C399.7646484375 0 399.7646484375 0 399.7646484375 0 " fill="none" fill-opacity="1" stroke="#03c95a" stroke-opacity="1" stroke-linecap="butt" stroke-width="4" stroke-dasharray="0" class="apexcharts-area" index="0" clip-path="url(#gridRectMask2vrop2bl)" pathTo="M 0 160.7961595062256 L 66.62744140625 160.7961595062256 L 133.2548828125 100.49759969139097 L 199.88232421875 100.49759969139097 L 266.509765625 80.3980797531128 L 333.13720703125 0 L 399.7646484375 0" pathFrom="M 0 241.19423925933836 L 0 241.19423925933836 L 66.62744140625 241.19423925933836 L 133.2548828125 241.19423925933836 L 199.88232421875 241.19423925933836 L 266.509765625 241.19423925933836 L 333.13720703125 241.19423925933836 L 399.7646484375 241.19423925933836" fill-rule="evenodd"></path>
                                                        <g id="SvgjsG1016" class="apexcharts-series-markers-wrap apexcharts-hidden-element-shown" data:realIndex="0">
                                                            <g class="apexcharts-series-markers">
                                                                <path id="SvgjsPath1092" d="M 0, 0 
           m -0, 0 
           a 0,0 0 1,0 0,0 
           a 0,0 0 1,0 -0,0"
                                                                    fill="#03c95a" fill-opacity="1" stroke="#ffffff" stroke-opacity="0.9" stroke-linecap="butt" stroke-width="2" stroke-dasharray="0" cx="0" cy="0" shape="circle" class="apexcharts-marker wa2owijvql no-pointer-events" default-marker-size="0">
                                                                </path>
                                                            </g>
                                                        </g>
                                                    </g>
                                                    <g id="SvgjsG1017" class="apexcharts-datalabels" data:realIndex="0"></g>
                                                </g>
                                                <line id="SvgjsLine1043" x1="0" y1="0" x2="399.7646484375" y2="0" stroke="#b6b6b6" stroke-dasharray="0" stroke-width="1" stroke-linecap="butt" class="apexcharts-ycrosshairs"></line>
                                                <line id="SvgjsLine1044" x1="0" y1="0" x2="399.7646484375" y2="0" stroke-dasharray="0" stroke-width="0" stroke-linecap="butt" class="apexcharts-ycrosshairs-hidden"></line>
                                                <g id="SvgjsG1045" class="apexcharts-xaxis" transform="translate(0, 0)">
                                                    <g id="SvgjsG1046" class="apexcharts-xaxis-texts-g" transform="translate(0, -4)">
                                                        <text id="SvgjsText1048" font-family="Helvetica, Arial, sans-serif" x="0" y="228.99519938278198" text-anchor="middle" dominant-baseline="auto" font-size="12px" font-weight="400" fill="#373d3f" class="apexcharts-text apexcharts-xaxis-label " style="font-family: Helvetica, Arial, sans-serif;">
                                                            <tspan id="SvgjsTspan1049">Jan</tspan>
                                                            <title>Jan</title>
                                                        </text>
                                                        <text id="SvgjsText1051" font-family="Helvetica, Arial, sans-serif" x="66.62744140625" y="228.99519938278198" text-anchor="middle" dominant-baseline="auto" font-size="12px" font-weight="400" fill="#373d3f" class="apexcharts-text apexcharts-xaxis-label " style="font-family: Helvetica, Arial, sans-serif;">
                                                            <tspan id="SvgjsTspan1052">Feb</tspan>
                                                            <title>Feb</title>
                                                        </text>
                                                        <text id="SvgjsText1054" font-family="Helvetica, Arial, sans-serif" x="133.2548828125" y="228.99519938278198" text-anchor="middle" dominant-baseline="auto" font-size="12px" font-weight="400" fill="#373d3f" class="apexcharts-text apexcharts-xaxis-label " style="font-family: Helvetica, Arial, sans-serif;">
                                                            <tspan id="SvgjsTspan1055">Mar</tspan>
                                                            <title>Mar</title>
                                                        </text>
                                                        <text id="SvgjsText1057" font-family="Helvetica, Arial, sans-serif" x="199.88232421875" y="228.99519938278198" text-anchor="middle" dominant-baseline="auto" font-size="12px" font-weight="400" fill="#373d3f" class="apexcharts-text apexcharts-xaxis-label " style="font-family: Helvetica, Arial, sans-serif;">
                                                            <tspan id="SvgjsTspan1058">Apr</tspan>
                                                            <title>Apr</title>
                                                        </text>
                                                        <text id="SvgjsText1060" font-family="Helvetica, Arial, sans-serif" x="266.509765625" y="228.99519938278198" text-anchor="middle" dominant-baseline="auto" font-size="12px" font-weight="400" fill="#373d3f" class="apexcharts-text apexcharts-xaxis-label " style="font-family: Helvetica, Arial, sans-serif;">
                                                            <tspan id="SvgjsTspan1061">May</tspan>
                                                            <title>May</title>
                                                        </text>
                                                        <text id="SvgjsText1063" font-family="Helvetica, Arial, sans-serif" x="333.13720703125" y="228.99519938278198" text-anchor="middle" dominant-baseline="auto" font-size="12px" font-weight="400" fill="#373d3f" class="apexcharts-text apexcharts-xaxis-label " style="font-family: Helvetica, Arial, sans-serif;">
                                                            <tspan id="SvgjsTspan1064">Jun</tspan>
                                                            <title>Jun</title>
                                                        </text>
                                                        <text id="SvgjsText1066" font-family="Helvetica, Arial, sans-serif" x="399.7646484375" y="228.99519938278198" text-anchor="middle" dominant-baseline="auto" font-size="12px" font-weight="400" fill="#373d3f" class="apexcharts-text apexcharts-xaxis-label " style="font-family: Helvetica, Arial, sans-serif;">
                                                            <tspan id="SvgjsTspan1067">Jul</tspan>
                                                            <title>Jul</title>
                                                        </text>
                                                    </g>
                                                </g>
                                                <g id="SvgjsG1089" class="apexcharts-yaxis-annotations apexcharts-hidden-element-shown"></g>
                                                <g id="SvgjsG1090" class="apexcharts-xaxis-annotations apexcharts-hidden-element-shown"></g>
                                                <g id="SvgjsG1091" class="apexcharts-point-annotations apexcharts-hidden-element-shown"></g>
                                            </g></svg><div class="apexcharts-tooltip apexcharts-theme-light">
                                                <div class="apexcharts-tooltip-title" style="font-family: Helvetica, Arial, sans-serif; font-size: 12px;"></div>
                                                <div class="apexcharts-tooltip-series-group apexcharts-tooltip-series-group-0" style="order: 1;">
                                                    <span class="apexcharts-tooltip-marker" style="background-color: rgb(3, 201, 90);"></span>
                                                    <div class="apexcharts-tooltip-text" style="font-family: Helvetica, Arial, sans-serif; font-size: 12px;">
                                                        <div class="apexcharts-tooltip-y-group"><span class="apexcharts-tooltip-text-y-label"></span><span class="apexcharts-tooltip-text-y-value"></span></div>
                                                        <div class="apexcharts-tooltip-goals-group"><span class="apexcharts-tooltip-text-goals-label"></span><span class="apexcharts-tooltip-text-goals-value"></span></div>
                                                        <div class="apexcharts-tooltip-z-group"><span class="apexcharts-tooltip-text-z-label"></span><span class="apexcharts-tooltip-text-z-value"></span></div>
                                                    </div>
                                                </div>
                                            </div>
                                        <div class="apexcharts-xaxistooltip apexcharts-xaxistooltip-bottom apexcharts-theme-light">
                                            <div class="apexcharts-xaxistooltip-text" style="font-family: Helvetica, Arial, sans-serif; font-size: 12px;"></div>
                                        </div>
                                        <div class="apexcharts-yaxistooltip apexcharts-yaxistooltip-0 apexcharts-yaxistooltip-left apexcharts-theme-light">
                                            <div class="apexcharts-yaxistooltip-text"></div>
                                        </div>
                                        <div class="apexcharts-toolbar" style="top: 0px; right: 3px;">
                                            <div class="apexcharts-menu-icon" title="Menu">
                                                <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24">
                                                    <path fill="none" d="M0 0h24v24H0V0z"></path><path d="M3 18h18v-2H3v2zm0-5h18v-2H3v2zm0-7v2h18V6H3z"></path></svg>
                                            </div>
                                            <div class="apexcharts-menu">
                                                <div class="apexcharts-menu-item exportSVG" title="Download SVG">Download SVG</div>
                                                <div class="apexcharts-menu-item exportPNG" title="Download PNG">Download PNG</div>
                                                <div class="apexcharts-menu-item exportCSV" title="Download CSV">Download CSV</div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-xl-4 d-flex">
                    <div class="card flex-fill">
                        <div class="card-header">
                            <div class="d-flex align-items-center justify-content-between flex-wrap row-gap-2">
                                <h5>My Skills</h5>
                                <div class="dropdown">
                                    <a href="javascript:void(0);" class="btn btn-white border btn-sm d-inline-flex align-items-center" data-bs-toggle="dropdown">
                                        <i class="ti ti-calendar me-1"></i>2024
                                    </a>
                                    <ul class="dropdown-menu  dropdown-menu-end p-3">
                                        <li>
                                            <a href="javascript:void(0);" class="dropdown-item rounded-1">2024</a>
                                        </li>
                                        <li>
                                            <a href="javascript:void(0);" class="dropdown-item rounded-1">2023</a>
                                        </li>
                                        <li>
                                            <a href="javascript:void(0);" class="dropdown-item rounded-1">2022</a>
                                        </li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                        <div class="card-body">
                            <div>
                                <div class="border border-dashed bg-transparent-light rounded p-2 mb-2">
                                    <div class="d-flex align-items-center justify-content-between">
                                        <div class="d-flex align-items-center">
                                            <span class="d-block border border-2 h-12 border-primary rounded-5 me-2"></span>
                                            <div>
                                                <h6 class="fw-medium mb-1">Figma</h6>
                                                <p>Updated : 15 May 2025</p>
                                            </div>
                                        </div>
                                        <div class="circle-progress circle-progress-md" data-value="95">
                                            <span class="progress-left">
                                                <span class="progress-bar border-primary" style="transform: rotate(162deg);"></span>
                                            </span>
                                            <span class="progress-right">
                                                <span class="progress-bar border-primary" style="transform: rotate(180deg);"></span>
                                            </span>
                                            <div class="progress-value">95%</div>
                                        </div>
                                    </div>
                                </div>
                                <div class="border border-dashed bg-transparent-light rounded p-2 mb-2">
                                    <div class="d-flex align-items-center justify-content-between">
                                        <div class="d-flex align-items-center">
                                            <span class="d-block border border-2 h-12 border-success rounded-5 me-2"></span>
                                            <div>
                                                <h6 class="fw-medium mb-1">HTML</h6>
                                                <p>Updated : 12 May 2025</p>
                                            </div>
                                        </div>
                                        <div class="circle-progress circle-progress-md" data-value="85">
                                            <span class="progress-left">
                                                <span class="progress-bar border-success" style="transform: rotate(126deg);"></span>
                                            </span>
                                            <span class="progress-right">
                                                <span class="progress-bar border-success" style="transform: rotate(180deg);"></span>
                                            </span>
                                            <div class="progress-value">85%</div>
                                        </div>
                                    </div>
                                </div>
                                <div class="border border-dashed bg-transparent-light rounded p-2 mb-2">
                                    <div class="d-flex align-items-center justify-content-between">
                                        <div class="d-flex align-items-center">
                                            <span class="d-block border border-2 h-12 border-purple rounded-5 me-2"></span>
                                            <div>
                                                <h6 class="fw-medium mb-1">CSS</h6>
                                                <p>Updated : 12 May 2025</p>
                                            </div>
                                        </div>
                                        <div class="circle-progress circle-progress-md" data-value="70">
                                            <span class="progress-left">
                                                <span class="progress-bar border-purple" style="transform: rotate(72deg);"></span>
                                            </span>
                                            <span class="progress-right">
                                                <span class="progress-bar border-purple" style="transform: rotate(180deg);"></span>
                                            </span>
                                            <div class="progress-value">70%</div>
                                        </div>
                                    </div>
                                </div>
                                <div class="border border-dashed bg-transparent-light rounded p-2 mb-2">
                                    <div class="d-flex align-items-center justify-content-between">
                                        <div class="d-flex align-items-center">
                                            <span class="d-block border border-2 h-12 border-info rounded-5 me-2"></span>
                                            <div>
                                                <h6 class="fw-medium mb-1">Wordpress</h6>
                                                <p>Updated : 15 May 2025</p>
                                            </div>
                                        </div>
                                        <div class="circle-progress circle-progress-md" data-value="61">
                                            <span class="progress-left">
                                                <span class="progress-bar border-info" style="transform: rotate(39.6deg);"></span>
                                            </span>
                                            <span class="progress-right">
                                                <span class="progress-bar border-info" style="transform: rotate(180deg);"></span>
                                            </span>
                                            <div class="progress-value">61%</div>
                                        </div>
                                    </div>
                                </div>
                                <div class="border border-dashed bg-transparent-light rounded p-2">
                                    <div class="d-flex align-items-center justify-content-between">
                                        <div class="d-flex align-items-center">
                                            <span class="d-block border border-2 h-12 border-dark rounded-5 me-2"></span>
                                            <div>
                                                <h6 class="fw-medium mb-1">Javascript</h6>
                                                <p>Updated : 13 May 2025</p>
                                            </div>
                                        </div>
                                        <div class="circle-progress circle-progress-md" data-value="58">
                                            <span class="progress-left">
                                                <span class="progress-bar border-dark" style="transform: rotate(28.8deg);"></span>
                                            </span>
                                            <span class="progress-right">
                                                <span class="progress-bar border-dark" style="transform: rotate(180deg);"></span>
                                            </span>
                                            <div class="progress-value">58%</div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-xl-3 d-flex">
                    <div class="flex-fill">
                        <div class="card card-bg-5 bg-dark mb-3">
                            <div class="card-body">
                                <div class="text-center">
                                    <h5 class="text-white mb-4">Team Birthday</h5>
                                    <span class="avatar avatar-xl avatar-rounded mb-2">
                                        <img src="assets/img/users/user-35.jpg" alt="Img">
                                    </span>
                                    <div class="mb-3">
                                        <h6 class="text-white fw-medium mb-1">Andrew Jermia</h6>
                                        <p>IOS Developer</p>
                                    </div>
                                    <a href="#" class="btn btn-sm btn-primary">Send Wishes</a>
                                </div>
                            </div>
                        </div>
                        <div class="card bg-secondary mb-3">
                            <div class="card-body d-flex align-items-center justify-content-between p-3">
                                <div>
                                    <h5 class="text-white mb-1">Leave Policy</h5>
                                    <p class="text-white">Last Updated : Today</p>
                                </div>
                                <a href="#" class="btn btn-white btn-sm px-3">View All</a>
                            </div>
                        </div>
                        <div class="card bg-warning">
                            <div class="card-body d-flex align-items-center justify-content-between p-3">
                                <div>
                                    <h5 class="mb-1">Next Holiday</h5>
                                    <p class="text-gray-9">Diwali, 15 Sep 2025</p>
                                </div>
                                <a href="holidays.html" class="btn btn-white btn-sm px-3">View All</a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-xl-4 d-flex">
                    <div class="card flex-fill">
                        <div class="card-header">
                            <div class="d-flex align-items-center justify-content-between flex-wrap">
                                <h5>Team Members</h5>
                                <div>
                                    <a href="#" class="btn btn-light btn-sm">View All</a>
                                </div>
                            </div>
                        </div>
                        <div class="card-body">
                            <div class="d-flex align-items-center justify-content-between mb-4">
                                <div class="d-flex align-items-center">
                                    <a href="javascript:void(0);" class="avatar flex-shrink-0">
                                        <img src="assets/img/users/user-27.jpg" class="rounded-circle border border-2" alt="img">
                                    </a>
                                    <div class="ms-2">
                                        <h6 class="fs-14 fw-medium text-truncate mb-1"><a href="#">Alexander Jermai</a></h6>
                                        <p class="fs-13">UI/UX Designer</p>
                                    </div>
                                </div>
                                <div class="d-flex align-items-center">
                                    <a href="#" class="btn btn-light btn-icon btn-sm me-2"><i class="ti ti-phone fs-16"></i></a>
                                    <a href="#" class="btn btn-light btn-icon btn-sm me-2"><i class="ti ti-mail-bolt fs-16"></i></a>
                                    <a href="#" class="btn btn-light btn-icon btn-sm"><i class="ti ti-brand-hipchat fs-16"></i></a>
                                </div>
                            </div>
                            <div class="d-flex align-items-center justify-content-between mb-4">
                                <div class="d-flex align-items-center">
                                    <a href="javascript:void(0);" class="avatar flex-shrink-0">
                                        <img src="assets/img/users/user-42.jpg" class="rounded-circle border border-2" alt="img">
                                    </a>
                                    <div class="ms-2">
                                        <h6 class="fs-14 fw-medium text-truncate mb-1"><a href="#">Doglas Martini</a></h6>
                                        <p class="fs-13">Product Designer</p>
                                    </div>
                                </div>
                                <div class="d-flex align-items-center">
                                    <a href="#" class="btn btn-light btn-icon btn-sm me-2"><i class="ti ti-phone fs-16"></i></a>
                                    <a href="#" class="btn btn-light btn-icon btn-sm me-2"><i class="ti ti-mail-bolt fs-16"></i></a>
                                    <a href="#" class="btn btn-light btn-icon btn-sm"><i class="ti ti-brand-hipchat fs-16"></i></a>
                                </div>
                            </div>
                            <div class="d-flex align-items-center justify-content-between mb-4">
                                <div class="d-flex align-items-center">
                                    <a href="javascript:void(0);" class="avatar flex-shrink-0">
                                        <img src="assets/img/users/user-43.jpg" class="rounded-circle border border-2" alt="img">
                                    </a>
                                    <div class="ms-2">
                                        <h6 class="fs-14 fw-medium text-truncate mb-1"><a href="#">Daniel Esbella</a></h6>
                                        <p class="fs-13">Project Manager</p>
                                    </div>
                                </div>
                                <div class="d-flex align-items-center">
                                    <a href="#" class="btn btn-light btn-icon btn-sm me-2"><i class="ti ti-phone fs-16"></i></a>
                                    <a href="#" class="btn btn-light btn-icon btn-sm me-2"><i class="ti ti-mail-bolt fs-16"></i></a>
                                    <a href="#" class="btn btn-light btn-icon btn-sm"><i class="ti ti-brand-hipchat fs-16"></i></a>
                                </div>
                            </div>
                            <div class="d-flex align-items-center justify-content-between mb-4">
                                <div class="d-flex align-items-center">
                                    <a href="javascript:void(0);" class="avatar flex-shrink-0">
                                        <img src="assets/img/users/user-11.jpg" class="rounded-circle border border-2" alt="img">
                                    </a>
                                    <div class="ms-2">
                                        <h6 class="fs-14 fw-medium text-truncate mb-1"><a href="#">Daniel Esbella</a></h6>
                                        <p class="fs-13">Team Lead</p>
                                    </div>
                                </div>
                                <div class="d-flex align-items-center">
                                    <a href="#" class="btn btn-light btn-icon btn-sm me-2"><i class="ti ti-phone fs-16"></i></a>
                                    <a href="#" class="btn btn-light btn-icon btn-sm me-2"><i class="ti ti-mail-bolt fs-16"></i></a>
                                    <a href="#" class="btn btn-light btn-icon btn-sm"><i class="ti ti-brand-hipchat fs-16"></i></a>
                                </div>
                            </div>
                            <div class="d-flex align-items-center justify-content-between mb-4">
                                <div class="d-flex align-items-center">
                                    <a href="javascript:void(0);" class="avatar flex-shrink-0">
                                        <img src="assets/img/users/user-44.jpg" class="rounded-circle border border-2" alt="img">
                                    </a>
                                    <div class="ms-2">
                                        <h6 class="fs-14 fw-medium text-truncate mb-1"><a href="#">Stephan Peralt</a></h6>
                                        <p class="fs-13">Team Lead</p>
                                    </div>
                                </div>
                                <div class="d-flex align-items-center">
                                    <a href="#" class="btn btn-light btn-icon btn-sm me-2"><i class="ti ti-phone fs-16"></i></a>
                                    <a href="#" class="btn btn-light btn-icon btn-sm me-2"><i class="ti ti-mail-bolt fs-16"></i></a>
                                    <a href="#" class="btn btn-light btn-icon btn-sm"><i class="ti ti-brand-hipchat fs-16"></i></a>
                                </div>
                            </div>
                            <div class="d-flex align-items-center justify-content-between">
                                <div class="d-flex align-items-center">
                                    <a href="javascript:void(0);" class="avatar flex-shrink-0">
                                        <img src="assets/img/users/user-54.jpg" class="rounded-circle border border-2" alt="img">
                                    </a>
                                    <div class="ms-2">
                                        <h6 class="fs-14 fw-medium text-truncate mb-1"><a href="#">Andrew Jermia</a></h6>
                                        <p class="fs-13">Project  Lead</p>
                                    </div>
                                </div>
                                <div class="d-flex align-items-center">
                                    <a href="#" class="btn btn-light btn-icon btn-sm me-2"><i class="ti ti-phone fs-16"></i></a>
                                    <a href="#" class="btn btn-light btn-icon btn-sm me-2"><i class="ti ti-mail-bolt fs-16"></i></a>
                                    <a href="#" class="btn btn-light btn-icon btn-sm"><i class="ti ti-brand-hipchat fs-16"></i></a>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-xl-4 d-flex">
                    <div class="card flex-fill">
                        <div class="card-header">
                            <div class="d-flex align-items-center justify-content-between flex-wrap">
                                <h5>Notifications</h5>
                                <div>
                                    <a href="#" class="btn btn-light btn-sm">View All</a>
                                </div>
                            </div>
                        </div>
                        <div class="card-body">
                            <div class="d-flex align-items-start mb-4">
                                <a href="javascript:void(0);" class="avatar flex-shrink-0">
                                    <img src="assets/img/users/user-27.jpg" class="rounded-circle border border-2" alt="img">
                                </a>
                                <div class="ms-2">
                                    <h6 class="fs-14 fw-medium text-truncate mb-1">Lex Murphy requested access to UNIX </h6>
                                    <p class="fs-13 mb-2">Today at 9:42 AM</p>
                                    <div class="d-flex align-items-center">
                                        <a href="#" class="avatar avatar-sm border flex-shrink-0 me-2">
                                            <img src="assets/img/social/pdf-icon.svg" class="w-auto h-auto" alt="Img"></a>
                                        <h6 class="fw-normal"><a href="#">EY_review.pdf</a></h6>
                                    </div>
                                </div>
                            </div>
                            <div class="d-flex align-items-start mb-4">
                                <a href="javascript:void(0);" class="avatar flex-shrink-0">
                                    <img src="assets/img/users/user-28.jpg" class="rounded-circle border border-2" alt="img">
                                </a>
                                <div class="ms-2">
                                    <h6 class="fs-14 fw-medium text-truncate mb-1">Lex Murphy requested access to UNIX </h6>
                                    <p class="fs-13 mb-0">Today at 10:00 AM</p>
                                </div>
                            </div>
                            <div class="d-flex align-items-start mb-4">
                                <a href="javascript:void(0);" class="avatar flex-shrink-0">
                                    <img src="assets/img/users/user-29.jpg" class="rounded-circle border border-2" alt="img">
                                </a>
                                <div class="ms-2">
                                    <h6 class="fs-14 fw-medium text-truncate mb-1">Lex Murphy requested access to UNIX </h6>
                                    <p class="fs-13 mb-2">Today at 10:50 AM</p>
                                    <div class="d-flex align-items-center">
                                        <a href="#" class="btn btn-primary btn-sm me-2">Approve</a>
                                        <a href="#" class="btn btn-outline-primary btn-sm">Decline</a>
                                    </div>
                                </div>
                            </div>
                            <div class="d-flex align-items-start mb-4">
                                <a href="javascript:void(0);" class="avatar flex-shrink-0">
                                    <img src="assets/img/users/user-30.jpg" class="rounded-circle border border-2" alt="img">
                                </a>
                                <div class="ms-2">
                                    <h6 class="fs-14 fw-medium text-truncate mb-1">Lex Murphy requested access to UNIX </h6>
                                    <p class="fs-13 mb-0">Today at 12:00 PM</p>
                                </div>
                            </div>
                            <div class="d-flex align-items-start">
                                <a href="javascript:void(0);" class="avatar flex-shrink-0">
                                    <img src="assets/img/users/user-33.jpg" class="rounded-circle border border-2" alt="img">
                                </a>
                                <div class="ms-2">
                                    <h6 class="fs-14 fw-medium text-truncate mb-1">Lex Murphy requested access to UNIX </h6>
                                    <p class="fs-13 mb-0">Today at 05:00 PM</p>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-xl-4 d-flex">
                    <div class="card flex-fill">
                        <div class="card-header">
                            <div class="d-flex align-items-center justify-content-between flex-wrap row-gap-2">
                                <h5>Meetings Schedule</h5>
                                <div class="dropdown">
                                    <a href="javascript:void(0);" class="btn btn-white border btn-sm d-inline-flex align-items-center" data-bs-toggle="dropdown">
                                        <i class="ti ti-calendar me-1"></i>Today
                                    </a>
                                    <ul class="dropdown-menu  dropdown-menu-end p-3">
                                        <li>
                                            <a href="javascript:void(0);" class="dropdown-item rounded-1">Today</a>
                                        </li>
                                        <li>
                                            <a href="javascript:void(0);" class="dropdown-item rounded-1">This Month</a>
                                        </li>
                                        <li>
                                            <a href="javascript:void(0);" class="dropdown-item rounded-1">This Year</a>
                                        </li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                        <div class="card-body schedule-timeline">
                            <div class="d-flex align-items-start">
                                <div class="d-flex align-items-center active-time">
                                    <span>09:25 AM</span>
                                    <span><i class="ti ti-point-filled text-primary fs-20"></i></span>
                                </div>
                                <div class="flex-fill ps-3 pb-4 timeline-flow">
                                    <div class="bg-light p-2 rounded">
                                        <p class="fw-medium text-gray-9 mb-1">Marketing Strategy Presentation</p>
                                        <span>Marketing</span>
                                    </div>
                                </div>
                            </div>
                            <div class="d-flex align-items-start">
                                <div class="d-flex align-items-center active-time">
                                    <span>09:20 AM</span>
                                    <span><i class="ti ti-point-filled text-secondary fs-20"></i></span>
                                </div>
                                <div class="flex-fill ps-3 pb-4 timeline-flow">
                                    <div class="bg-light p-2 rounded">
                                        <p class="fw-medium text-gray-9 mb-1">Design Review Hospital, doctors Management Project</p>
                                        <span>Review</span>
                                    </div>
                                </div>
                            </div>
                            <div class="d-flex align-items-start">
                                <div class="d-flex align-items-center active-time">
                                    <span>09:18 AM</span>
                                    <span><i class="ti ti-point-filled text-warning fs-20"></i></span>
                                </div>
                                <div class="flex-fill ps-3 pb-4 timeline-flow">
                                    <div class="bg-light p-2 rounded">
                                        <p class="fw-medium text-gray-9 mb-1">Birthday Celebration of Employee</p>
                                        <span>Celebration</span>
                                    </div>
                                </div>
                            </div>
                            <div class="d-flex align-items-start">
                                <div class="d-flex align-items-center active-time">
                                    <span>09:10 AM</span>
                                    <span><i class="ti ti-point-filled text-success fs-20"></i></span>
                                </div>
                                <div class="flex-fill ps-3 timeline-flow">
                                    <div class="bg-light p-2 rounded">
                                        <p class="fw-medium text-gray-9 mb-1">Update of Project Flow</p>
                                        <span>Development</span>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <div class="footer d-sm-flex align-items-center justify-content-between border-top bg-white p-3">
            <p class="mb-0">2014 - 2025 © SmartHR.</p>
            <p>Designed &amp; Developed By <a href="javascript:void(0);" class="text-primary">Dreams</a></p>
        </div>

    <div class="modal fade" id="add_leaves">
        <div class="modal-dialog modal-dialog-centered modal-md">
            <div class="modal-content">
                <div class="modal-header">
                    <h4 class="modal-title">Add Leave</h4>
                    <button type="button" class="btn-close custom-btn-close" data-bs-dismiss="modal" aria-label="Close">
                        <i class="ti ti-x"></i>
                    </button>
                </div>
                 <%--action="employee-dashboard.html">--%>
                    <div class="modal-body pb-0">
                        <div class="row">
                            <div class="col-md-12">
                                <div class="mb-3">
                                    <label class="form-label">Employee Name</label>
                                    <select class="select select2-hidden-accessible" data-select2-id="select2-data-1-0tya" tabindex="-1" aria-hidden="true">
                                        <option data-select2-id="select2-data-3-tfd3">Select</option>
                                        <option>Anthony Lewis</option>
                                        <option>Brian Villalobos</option>
                                        <option>Harvey Smith</option>
                                    </select><span class="select2 select2-container select2-container--default" dir="ltr" data-select2-id="select2-data-2-taef" style="width: 100%;"><span class="selection"><span class="select2-selection select2-selection--single" role="combobox" aria-haspopup="true" aria-expanded="false" tabindex="0" aria-disabled="false" aria-labelledby="select2-6a3g-container" aria-controls="select2-6a3g-container"><span class="select2-selection__rendered" id="select2-6a3g-container" role="textbox" aria-readonly="true" title="Select">Select</span><span class="select2-selection__arrow" role="presentation"><b role="presentation"></b></span></span></span><span class="dropdown-wrapper" aria-hidden="true"></span></span>
                                </div>
                            </div>
                            <div class="col-md-12">
                                <div class="mb-3">
                                    <label class="form-label">Leave Type</label>
                                    <select class="select select2-hidden-accessible" data-select2-id="select2-data-4-rqhk" tabindex="-1" aria-hidden="true">
                                        <option data-select2-id="select2-data-6-tvzp">Select</option>
                                        <option>Medical Leave</option>
                                        <option>Casual Leave</option>
                                        <option>Annual Leave</option>
                                    </select><span class="select2 select2-container select2-container--default" dir="ltr" data-select2-id="select2-data-5-1myj" style="width: 100%;"><span class="selection"><span class="select2-selection select2-selection--single" role="combobox" aria-haspopup="true" aria-expanded="false" tabindex="0" aria-disabled="false" aria-labelledby="select2-kllx-container" aria-controls="select2-kllx-container"><span class="select2-selection__rendered" id="select2-kllx-container" role="textbox" aria-readonly="true" title="Select">Select</span><span class="select2-selection__arrow" role="presentation"><b role="presentation"></b></span></span></span><span class="dropdown-wrapper" aria-hidden="true"></span></span>
                                </div>
                            </div>
                            <div class="col-md-6">
                                <div class="mb-3">
                                    <label class="form-label">From </label>
                                    <div class="input-icon-end position-relative">
                                        <input type="text" class="form-control datetimepicker" placeholder="dd/mm/yyyy">
                                        <span class="input-icon-addon">
                                            <i class="ti ti-calendar text-gray-7"></i>
                                        </span>
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-6">
                                <div class="mb-3">
                                    <label class="form-label">To </label>
                                    <div class="input-icon-end position-relative">
                                        <input type="text" class="form-control datetimepicker" placeholder="dd/mm/yyyy">
                                        <span class="input-icon-addon">
                                            <i class="ti ti-calendar text-gray-7"></i>
                                        </span>
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-6">
                                <div class="mb-3">
                                    <label class="form-label">No of Days</label>
                                    <input type="text" class="form-control">
                                </div>
                            </div>
                            <div class="col-md-6">
                                <div class="mb-3">
                                    <label class="form-label">Remaining Days</label>
                                    <input type="text" class="form-control">
                                </div>
                            </div>
                            <div class="col-md-12">
                                <div class="mb-3">
                                    <label class="form-label">Reason</label>
                                    <textarea class="form-control" rows="3"></textarea>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-light me-2" data-bs-dismiss="modal">Cancel</button>
                        <button type="submit" class="btn btn-primary">Add Leaves</button>
                    </div>
               <%-- </%--form--%>--%>
            </div>
        </div>
    </div>
    <div class="modal fade" id="edit_task">
        <div class="modal-dialog modal-dialog-centered">
            <div class="modal-content">
                <div class="modal-header">
                    <h4 class="modal-title">Edit Task  </h4>
                    <button type="button" class="btn-close custom-btn-close" data-bs-dismiss="modal" aria-label="Close">
                        <i class="ti ti-x"></i>
                    </button>
                </div>
                <%--<form action="employee-dashboard.html">--%>
                    <div class="modal-body">
                        <div class="row">
                            <div class="col-12">
                                <div class="mb-3">
                                    <label class="form-label">Todo Title</label>
                                    <input type="text" class="form-control" value="Patient appointment booking">
                                </div>
                            </div>
                            <div class="col-md-6">
                                <div class="mb-3">
                                    <label class="form-label">Due Date</label>
                                    <div class="input-icon-end position-relative">
                                        <input type="text" class="form-control datetimepicker" placeholder="dd/mm/yyyy">
                                        <span class="input-icon-addon">
                                            <i class="ti ti-calendar text-gray-7"></i>
                                        </span>
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-6">
                                <div class="mb-3">
                                    <label class="form-label">Project</label>
                                    <select class="select select2-hidden-accessible" data-select2-id="select2-data-7-yvyg" tabindex="-1" aria-hidden="true">
                                        <option>Select</option>
                                        <option selected="" data-select2-id="select2-data-9-makg">Office Management</option>
                                        <option>Clinic Management </option>
                                        <option>Educational Platform</option>
                                    </select><span class="select2 select2-container select2-container--default" dir="ltr" data-select2-id="select2-data-8-ush2" style="width: 100%;"><span class="selection"><span class="select2-selection select2-selection--single" role="combobox" aria-haspopup="true" aria-expanded="false" tabindex="0" aria-disabled="false" aria-labelledby="select2-9v51-container" aria-controls="select2-9v51-container"><span class="select2-selection__rendered" id="select2-9v51-container" role="textbox" aria-readonly="true" title="Office Management">Office Management</span><span class="select2-selection__arrow" role="presentation"><b role="presentation"></b></span></span></span><span class="dropdown-wrapper" aria-hidden="true"></span></span>
                                </div>
                            </div>
                            <div class="col-md-12">
                                <div class="mb-3">
                                    <label class="form-label me-2">Team Members</label>
                                    <div class="bootstrap-tagsinput">
                                        <span class="tag label label-info">Jerald<span data-role="remove"></span></span> <span class="tag label label-info">Andrew<span data-role="remove"></span></span> <span class="tag label label-info">Philip<span data-role="remove"></span></span> <span class="tag label label-info">Davis<span data-role="remove"></span></span>
                                        <input type="text" placeholder="Add new">
                                    </div>
                                    <input class="input-tags form-control" placeholder="Add new" type="text" data-role="tagsinput" name="Label" value="Jerald,Andrew,Philip,Davis" style="display: none;">
                                </div>
                            </div>
                            <div class="col-md-6">
                                <div class="mb-3">
                                    <label class="form-label">Tag</label>
                                    <select class="select select2-hidden-accessible" data-select2-id="select2-data-10-cwxe" tabindex="-1" aria-hidden="true">
                                        <option>Select</option>
                                        <option>Internal</option>
                                        <option selected="" data-select2-id="select2-data-12-i83c">Projects</option>
                                        <option>Meetings</option>
                                        <option>Reminder</option>
                                    </select><span class="select2 select2-container select2-container--default" dir="ltr" data-select2-id="select2-data-11-un3d" style="width: 100%;"><span class="selection"><span class="select2-selection select2-selection--single" role="combobox" aria-haspopup="true" aria-expanded="false" tabindex="0" aria-disabled="false" aria-labelledby="select2-kaez-container" aria-controls="select2-kaez-container"><span class="select2-selection__rendered" id="select2-kaez-container" role="textbox" aria-readonly="true" title="Projects">Projects</span><span class="select2-selection__arrow" role="presentation"><b role="presentation"></b></span></span></span><span class="dropdown-wrapper" aria-hidden="true"></span></span>
                                </div>
                            </div>
                            <div class="col-md-6">
                                <div class="mb-3">
                                    <label class="form-label">Status</label>
                                    <select class="select select2-hidden-accessible" data-select2-id="select2-data-13-3j2i" tabindex="-1" aria-hidden="true">
                                        <option>Select</option>
                                        <option selected="" data-select2-id="select2-data-15-6sfy">Inprogress</option>
                                        <option>Completed</option>
                                        <option>Pending</option>
                                        <option>Onhold</option>
                                    </select><span class="select2 select2-container select2-container--default" dir="ltr" data-select2-id="select2-data-14-4co6" style="width: 100%;"><span class="selection"><span class="select2-selection select2-selection--single" role="combobox" aria-haspopup="true" aria-expanded="false" tabindex="0" aria-disabled="false" aria-labelledby="select2-tljp-container" aria-controls="select2-tljp-container"><span class="select2-selection__rendered" id="select2-tljp-container" role="textbox" aria-readonly="true" title="Inprogress">Inprogress</span><span class="select2-selection__arrow" role="presentation"><b role="presentation"></b></span></span></span><span class="dropdown-wrapper" aria-hidden="true"></span></span>
                                </div>
                            </div>
                            <div class="col-md-12">
                                <div class="mb-3">
                                    <label class="form-label">Priority</label>
                                    <select class="select select2-hidden-accessible" data-select2-id="select2-data-16-i024" tabindex="-1" aria-hidden="true">
                                        <option>Select</option>
                                        <option selected="" data-select2-id="select2-data-18-cpdw">Medium</option>
                                        <option>High</option>
                                        <option>Low</option>
                                    </select><span class="select2 select2-container select2-container--default" dir="ltr" data-select2-id="select2-data-17-v27v" style="width: 100%;"><span class="selection"><span class="select2-selection select2-selection--single" role="combobox" aria-haspopup="true" aria-expanded="false" tabindex="0" aria-disabled="false" aria-labelledby="select2-owyh-container" aria-controls="select2-owyh-container"><span class="select2-selection__rendered" id="select2-owyh-container" role="textbox" aria-readonly="true" title="Medium">Medium</span><span class="select2-selection__arrow" role="presentation"><b role="presentation"></b></span></span></span><span class="dropdown-wrapper" aria-hidden="true"></span></span>
                                </div>
                            </div>
                            <div class="col-md-12">
                                <label class="form-label">Who Can See this Task?</label>
                                <div class="d-flex align-items-center">
                                    <div class="form-check me-3">
                                        <input class="form-check-input" type="radio" name="flexRadioDefault" id="flexRadioDefault4">
                                        <label class="form-check-label text-dark" for="flexRadioDefault4">
                                            Public
                                        </label>
                                    </div>
                                    <div class="form-check me-3">
                                        <input class="form-check-input" type="radio" name="flexRadioDefault" id="flexRadioDefault5" checked="">
                                        <label class="form-check-label text-dark" for="flexRadioDefault5">
                                            Private
                                        </label>
                                    </div>
                                    <div class="form-check ">
                                        <input class="form-check-input" type="radio" name="flexRadioDefault" id="flexRadioDefault6">
                                        <label class="form-check-label text-dark" for="flexRadioDefault6">
                                            Admin Only
                                        </label>
                                    </div>
                                </div>
                            </div>
                            <div class="col-lg-12">
                                <div class="mb-3">
                                    <label class="form-label">Descriptions</label>
                                    <div class="summernote" style="display: none;"></div>
                                    <div class="note-editor note-frame">
                                        <div class="note-dropzone">
                                            <div class="note-dropzone-message"></div>
                                        </div>
                                        <div class="note-toolbar" role="toolbar">
                                            <div class="note-btn-group note-fontsize">
                                                <div class="note-btn-group">
                                                    <button type="button" class="note-btn dropdown-toggle" tabindex="-1" data-toggle="dropdown" aria-label="Font Size"><span class="note-current-fontsize">14</span> <span class="note-icon-caret"></span></button>
                                                    <div class="note-dropdown-menu note-check dropdown-fontsize" role="list" aria-label="Font Size"><a class="note-dropdown-item" href="#" data-value="8" role="listitem" aria-label="8"><i class="note-icon-menu-check"></i>8</a><a class="note-dropdown-item" href="#" data-value="9" role="listitem" aria-label="9"><i class="note-icon-menu-check"></i> 9</a><a class="note-dropdown-item" href="#" data-value="10" role="listitem" aria-label="10"><i class="note-icon-menu-check"></i> 10</a><a class="note-dropdown-item" href="#" data-value="11" role="listitem" aria-label="11"><i class="note-icon-menu-check"></i> 11</a><a class="note-dropdown-item" href="#" data-value="12" role="listitem" aria-label="12"><i class="note-icon-menu-check"></i> 12</a><a class="note-dropdown-item checked" href="#" data-value="14" role="listitem" aria-label="14"><i class="note-icon-menu-check"></i> 14</a><a class="note-dropdown-item" href="#" data-value="18" role="listitem" aria-label="18"><i class="note-icon-menu-check"></i> 18</a><a class="note-dropdown-item" href="#" data-value="24" role="listitem" aria-label="24"><i class="note-icon-menu-check"></i> 24</a><a class="note-dropdown-item" href="#" data-value="36" role="listitem" aria-label="36"><i class="note-icon-menu-check"></i> 36</a></div>
                                                </div>
                                            </div>
                                            <div class="note-btn-group note-font">
                                                <button type="button" class="note-btn note-btn-bold" tabindex="-1" aria-label="Bold (CTRL+B)"><i class="note-icon-bold"></i></button>
                                                <button type="button" class="note-btn note-btn-italic" tabindex="-1" aria-label="Italic (CTRL+I)"><i class="note-icon-italic"></i></button>
                                                <button type="button" class="note-btn note-btn-underline" tabindex="-1" aria-label="Underline (CTRL+U)"><i class="note-icon-underline"></i></button>
                                                <button type="button" class="note-btn" tabindex="-1" aria-label="Remove Font Style (CTRL+\)"><i class="note-icon-eraser"></i></button>
                                                <button type="button" class="note-btn note-btn-strikethrough" tabindex="-1" aria-label="Strikethrough (CTRL+SHIFT+S)"><i class="note-icon-strikethrough"></i></button>
                                            </div>
                                            <div class="note-btn-group note-insert">
                                                <button type="button" class="note-btn" tabindex="-1" aria-label="Picture"><i class="note-icon-picture"></i></button>
                                            </div>
                                        </div>
                                        <div class="note-editing-area">
                                            <div class="note-handle">
                                                <div class="note-control-selection">
                                                    <div class="note-control-selection-bg"></div>
                                                    <div class="note-control-holder note-control-nw"></div>
                                                    <div class="note-control-holder note-control-ne"></div>
                                                    <div class="note-control-holder note-control-sw"></div>
                                                    <div class="note-control-sizing note-control-se"></div>
                                                    <div class="note-control-selection-info"></div>
                                                </div>
                                            </div>
                                            <textarea class="note-codable" aria-multiline="true"></textarea><div class="note-editable" contenteditable="true" role="textbox" aria-multiline="true" spellcheck="true" autocorrect="true" style="height: 100px;">
                                                <p>
                                                    <br>
                                                </p>
                                            </div>
                                        </div>
                                        <output class="note-status-output" role="status" aria-live="polite"></output>
                                        <div class="note-statusbar" role="status">
                                            <div class="note-resizebar" aria-label="resize">
                                                <div class="note-icon-bar"></div>
                                                <div class="note-icon-bar"></div>
                                                <div class="note-icon-bar"></div>
                                            </div>
                                        </div>
                                        <div class="note-modal link-dialog" aria-hidden="false" tabindex="-1" role="dialog" aria-label="Insert Link">
                                            <div class="note-modal-content">
                                                <div class="note-modal-header">
                                                    <button type="button" class="close" aria-label="Close" aria-hidden="true"><i class="note-icon-close"></i></button>
                                                    <h4 class="note-modal-title">Insert Link</h4>
                                                </div>
                                                <div class="note-modal-body">
                                                    <div class="form-group note-form-group">
                                                        <label for="note-dialog-link-txt-17823150904581" class="note-form-label">Text to display</label><input id="note-dialog-link-txt-17823150904581" class="note-link-text form-control note-form-control note-input" type="text">
                                                    </div>
                                                    <div class="form-group note-form-group">
                                                        <label for="note-dialog-link-url-17823150904581" class="note-form-label">To what URL should this link go?</label><input id="note-dialog-link-url-17823150904581" class="note-link-url form-control note-form-control note-input" type="text" value="http://">
                                                    </div>
                                                    <div class="checkbox sn-checkbox-open-in-new-window">
                                                        <label>
                                                            <input role="checkbox" type="checkbox" checked="" aria-checked="true">Open in new window</label>
                                                    </div>
                                                    <div class="checkbox sn-checkbox-use-protocol">
                                                        <label>
                                                            <input role="checkbox" type="checkbox" checked="" aria-checked="true">Use default protocol</label>
                                                    </div>
                                                </div>
                                                <div class="note-modal-footer">
                                                    <input type="button" href="#" class="btn btn-primary note-btn note-btn-primary note-link-btn" value="Insert Link" disabled="">
                                                </div>
                                            </div>
                                        </div>
                                        <div class="note-popover bottom note-link-popover" style="display: none;">
                                            <div class="note-popover-arrow"></div>
                                            <div class="popover-content note-children-container">
                                                <span><a ></a>&nbsp;</span><div class="note-btn-group note-link">
                                                    <button type="button" class="note-btn" tabindex="-1" aria-label="Edit"><i class="note-icon-link"></i></button>
                                                    <button type="button" class="note-btn" tabindex="-1" aria-label="Unlink"><i class="note-icon-chain-broken"></i></button>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="note-modal" aria-hidden="false" tabindex="-1" role="dialog" aria-label="Insert Image">
                                            <div class="note-modal-content">
                                                <div class="note-modal-header">
                                                    <button type="button" class="close" aria-label="Close" aria-hidden="true"><i class="note-icon-close"></i></button>
                                                    <h4 class="note-modal-title">Insert Image</h4>
                                                </div>
                                                <div class="note-modal-body">
                                                    <div class="form-group note-form-group note-group-select-from-files">
                                                        <label for="note-dialog-image-file-17823150904581" class="note-form-label">Select from files</label><input id="note-dialog-image-file-17823150904581" class="note-image-input form-control-file note-form-control note-input" type="file" name="files" accept="image/*" multiple="multiple">
                                                    </div>
                                                    <div class="form-group note-group-image-url">
                                                        <label for="note-dialog-image-url-17823150904581" class="note-form-label">Image URL</label><input id="note-dialog-image-url-17823150904581" class="note-image-url form-control note-form-control note-input" type="text">
                                                    </div>
                                                </div>
                                                <div class="note-modal-footer">
                                                    <input type="button" href="#" class="btn btn-primary note-btn note-btn-primary note-image-btn" value="Insert Image" disabled="">
                                                </div>
                                            </div>
                                        </div>
                                        <div class="note-popover bottom note-image-popover" style="display: none;">
                                            <div class="note-popover-arrow"></div>
                                            <div class="popover-content note-children-container">
                                                <div class="note-btn-group note-resize">
                                                    <button type="button" class="note-btn" tabindex="-1" aria-label="Resize full"><span class="note-fontsize-10">100%</span></button>
                                                    <button type="button" class="note-btn" tabindex="-1" aria-label="Resize half"><span class="note-fontsize-10">50%</span></button>
                                                    <button type="button" class="note-btn" tabindex="-1" aria-label="Resize quarter"><span class="note-fontsize-10">25%</span></button>
                                                    <button type="button" class="note-btn" tabindex="-1" aria-label="Original size"><i class="note-icon-rollback"></i></button>
                                                </div>
                                                <div class="note-btn-group note-float">
                                                    <button type="button" class="note-btn" tabindex="-1" aria-label="Float Left"><i class="note-icon-float-left"></i></button>
                                                    <button type="button" class="note-btn" tabindex="-1" aria-label="Float Right"><i class="note-icon-float-right"></i></button>
                                                    <button type="button" class="note-btn" tabindex="-1" aria-label="Remove float"><i class="note-icon-rollback"></i></button>
                                                </div>
                                                <div class="note-btn-group note-remove">
                                                    <button type="button" class="note-btn" tabindex="-1" aria-label="Remove Image"><i class="note-icon-trash"></i></button>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="note-popover bottom note-table-popover" style="display: none;">
                                            <div class="note-popover-arrow"></div>
                                            <div class="popover-content note-children-container">
                                                <div class="note-btn-group note-add">
                                                    <button type="button" class="note-btn btn-md" tabindex="-1" aria-label="Add row below"><i class="note-icon-row-below"></i></button>
                                                    <button type="button" class="note-btn btn-md" tabindex="-1" aria-label="Add row above"><i class="note-icon-row-above"></i></button>
                                                    <button type="button" class="note-btn btn-md" tabindex="-1" aria-label="Add column left"><i class="note-icon-col-before"></i></button>
                                                    <button type="button" class="note-btn btn-md" tabindex="-1" aria-label="Add column right"><i class="note-icon-col-after"></i></button>
                                                </div>
                                                <div class="note-btn-group note-delete">
                                                    <button type="button" class="note-btn btn-md" tabindex="-1" aria-label="Delete row"><i class="note-icon-row-remove"></i></button>
                                                    <button type="button" class="note-btn btn-md" tabindex="-1" aria-label="Delete column"><i class="note-icon-col-remove"></i></button>
                                                    <button type="button" class="note-btn btn-md" tabindex="-1" aria-label="Delete table"><i class="note-icon-trash"></i></button>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="note-modal" aria-hidden="false" tabindex="-1" role="dialog" aria-label="Insert Video">
                                            <div class="note-modal-content">
                                                <div class="note-modal-header">
                                                    <button type="button" class="close" aria-label="Close" aria-hidden="true"><i class="note-icon-close"></i></button>
                                                    <h4 class="note-modal-title">Insert Video</h4>
                                                </div>
                                                <div class="note-modal-body">
                                                    <div class="form-group note-form-group row-fluid">
                                                        <label for="note-dialog-video-url-17823150904581" class="note-form-label">Video URL <small class="text-muted">(YouTube, Vimeo, Vine, Instagram, DailyMotion or Youku)</small></label><input id="note-dialog-video-url-17823150904581" class="note-video-url form-control note-form-control note-input" type="text">
                                                    </div>
                                                </div>
                                                <div class="note-modal-footer">
                                                    <input type="button" href="#" class="btn btn-primary note-btn note-btn-primary note-video-btn" value="Insert Video" disabled="">
                                                </div>
                                            </div>
                                        </div>
                                        <div class="note-modal" aria-hidden="false" tabindex="-1" role="dialog" aria-label="Help">
                                            <div class="note-modal-content">
                                                <div class="note-modal-header">
                                                    <button type="button" class="close" aria-label="Close" aria-hidden="true"><i class="note-icon-close"></i></button>
                                                    <h4 class="note-modal-title">Help</h4>
                                                </div>
                                                <div class="note-modal-body" style="max-height: 300px; overflow: scroll;">
                                                    <div class="help-list-item"></div>
                                                    <label style="width: 180px; margin-right: 10px;"><kbd>ESC</kbd></label><span>Escape</span><div class="help-list-item"></div>
                                                    <label style="width: 180px; margin-right: 10px;"><kbd>ENTER</kbd></label><span>Insert Paragraph</span><div class="help-list-item"></div>
                                                    <label style="width: 180px; margin-right: 10px;"><kbd>CTRL+Z</kbd></label><span>Undo the last command</span><div class="help-list-item"></div>
                                                    <label style="width: 180px; margin-right: 10px;"><kbd>CTRL+Y</kbd></label><span>Redo the last command</span><div class="help-list-item"></div>
                                                    <label style="width: 180px; margin-right: 10px;"><kbd>TAB</kbd></label><span>Tab</span><div class="help-list-item"></div>
                                                    <label style="width: 180px; margin-right: 10px;"><kbd>SHIFT+TAB</kbd></label><span>Untab</span><div class="help-list-item"></div>
                                                    <label style="width: 180px; margin-right: 10px;"><kbd>CTRL+B</kbd></label><span>Set a bold style</span><div class="help-list-item"></div>
                                                    <label style="width: 180px; margin-right: 10px;"><kbd>CTRL+I</kbd></label><span>Set a italic style</span><div class="help-list-item"></div>
                                                    <label style="width: 180px; margin-right: 10px;"><kbd>CTRL+U</kbd></label><span>Set a underline style</span><div class="help-list-item"></div>
                                                    <label style="width: 180px; margin-right: 10px;"><kbd>CTRL+SHIFT+S</kbd></label><span>Set a strikethrough style</span><div class="help-list-item"></div>
                                                    <label style="width: 180px; margin-right: 10px;"><kbd>CTRL+BACKSLASH</kbd></label><span>Clean a style</span><div class="help-list-item"></div>
                                                    <label style="width: 180px; margin-right: 10px;"><kbd>CTRL+SHIFT+L</kbd></label><span>Set left align</span><div class="help-list-item"></div>
                                                    <label style="width: 180px; margin-right: 10px;"><kbd>CTRL+SHIFT+E</kbd></label><span>Set center align</span><div class="help-list-item"></div>
                                                    <label style="width: 180px; margin-right: 10px;"><kbd>CTRL+SHIFT+R</kbd></label><span>Set right align</span><div class="help-list-item"></div>
                                                    <label style="width: 180px; margin-right: 10px;"><kbd>CTRL+SHIFT+J</kbd></label><span>Set full align</span><div class="help-list-item"></div>
                                                    <label style="width: 180px; margin-right: 10px;"><kbd>CTRL+SHIFT+NUM7</kbd></label><span>Toggle unordered list</span><div class="help-list-item"></div>
                                                    <label style="width: 180px; margin-right: 10px;"><kbd>CTRL+SHIFT+NUM8</kbd></label><span>Toggle ordered list</span><div class="help-list-item"></div>
                                                    <label style="width: 180px; margin-right: 10px;"><kbd>CTRL+LEFTBRACKET</kbd></label><span>Outdent on current paragraph</span><div class="help-list-item"></div>
                                                    <label style="width: 180px; margin-right: 10px;"><kbd>CTRL+RIGHTBRACKET</kbd></label><span>Indent on current paragraph</span><div class="help-list-item"></div>
                                                    <label style="width: 180px; margin-right: 10px;"><kbd>CTRL+NUM0</kbd></label><span>Change current block's format as a paragraph(P tag)</span><div class="help-list-item"></div>
                                                    <label style="width: 180px; margin-right: 10px;"><kbd>CTRL+NUM1</kbd></label><span>Change current block's format as H1</span><div class="help-list-item"></div>
                                                    <label style="width: 180px; margin-right: 10px;"><kbd>CTRL+NUM2</kbd></label><span>Change current block's format as H2</span><div class="help-list-item"></div>
                                                    <label style="width: 180px; margin-right: 10px;"><kbd>CTRL+NUM3</kbd></label><span>Change current block's format as H3</span><div class="help-list-item"></div>
                                                    <label style="width: 180px; margin-right: 10px;"><kbd>CTRL+NUM4</kbd></label><span>Change current block's format as H4</span><div class="help-list-item"></div>
                                                    <label style="width: 180px; margin-right: 10px;"><kbd>CTRL+NUM5</kbd></label><span>Change current block's format as H5</span><div class="help-list-item"></div>
                                                    <label style="width: 180px; margin-right: 10px;"><kbd>CTRL+NUM6</kbd></label><span>Change current block's format as H6</span><div class="help-list-item"></div>
                                                    <label style="width: 180px; margin-right: 10px;"><kbd>CTRL+ENTER</kbd></label><span>Insert horizontal rule</span><div class="help-list-item"></div>
                                                    <label style="width: 180px; margin-right: 10px;"><kbd>CTRL+K</kbd></label><span>Show Link Dialog</span>
                                                </div>
                                                <div class="note-modal-footer">
                                                    <p class="text-center"><a href="http://summernote.org/" target="_blank">Summernote 0.8.18</a> · <a href="https://github.com/summernote/summernote" target="_blank">Project</a> · <a href="https://github.com/summernote/summernote/issues" target="_blank">Issues</a></p>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-12">
                                <label class="form-label">Upload Attachment</label>
                                <div class="bg-light rounded p-2">
                                    <div class="profile-uploader border-bottom mb-2 pb-2">
                                        <div class="drag-upload-btn btn btn-sm btn-white border px-3">
                                            Select File
												<input type="file" class="form-control image-sign" multiple="">
                                        </div>
                                    </div>
                                    <div class="d-flex align-items-center justify-content-between border-bottom mb-2 pb-2">
                                        <div class="d-flex align-items-center">
                                            <h6 class="fs-12 fw-medium me-1">Logo.zip</h6>
                                            <span class="badge badge-soft-info">21MB </span>
                                        </div>
                                        <a href="#" class="btn btn-sm btn-icon"><i class="ti ti-trash"></i></a>
                                    </div>
                                    <div class="d-flex align-items-center justify-content-between">
                                        <div class="d-flex align-items-center">
                                            <h6 class="fs-12 fw-medium me-1">Files.zip</h6>
                                            <span class="badge badge-soft-info">25MB </span>
                                        </div>
                                        <a href="#" class="btn btn-sm btn-icon"><i class="ti ti-trash"></i></a>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-light me-2" data-bs-dismiss="modal">Cancel</button>
                        <button type="submit" class="btn btn-primary">Save</button>
                    </div>
               <%-- </form>--%>
            </div>
        </div>
    </div>
    <div class="modal fade" id="delete_modal">
        <div class="modal-dialog modal-dialog-centered">
            <div class="modal-content">
                <div class="modal-body text-center">
                    <span class="avatar avatar-xl bg-transparent-danger text-danger mb-3">
                        <i class="ti ti-trash-x fs-36"></i>
                    </span>
                    <h4 class="mb-1">Confirm Delete</h4>
                    <p class="mb-3">You want to delete all the marked items, this cant be undone once you delete.</p>
                    <div class="d-flex justify-content-center">
                        <a href="javascript:void(0);" class="btn btn-light me-3" data-bs-dismiss="modal">Cancel</a>
                        <a href="employee-dashboard.html" class="btn btn-danger">Yes, Delete</a>
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
