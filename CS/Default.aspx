<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
	<title></title>
	<script src="Scripts/jquery-2.1.3.js"></script>
	<script type="text/javascript">
		$(document).mouseup(function (e) {
			var container = $(".panel");
			if (!container.is(e.target)	&& container.has(e.target).length === 0)
			{
				panel.Collapse();
			}
		});
	</script>
</head>
<body>
	<form id="form1" runat="server">
		<div>
			<dx:ASPxPanel ID="ASPxPanel1" runat="server" ClientInstanceName="panel" Width="200px" FixedPosition="WindowLeft" Collapsible="true" CssClass="panel">
				<PanelCollection>
					<dx:PanelContent runat="server" SupportsDisabledAttribute="True">
						<dx:ASPxNavBar ID="ASPxNavBar1" runat="server" ClientInstanceName="navBar" AllowSelectItem="True" 
						    EnableHotTrack="True" EnableAnimation="True" ShowExpandButtons="True">
						    <Groups>
						        <dx:NavBarGroup Text="Admin">
						            <Items>
						                <dx:NavBarItem Text="Scheduler" Selected="true" />
						                <dx:NavBarItem Text="Clients" />
						                <dx:NavBarItem Text="Users" />
						            </Items>
						        </dx:NavBarGroup>
						        <dx:NavBarGroup Text="User">
						            <Items>
						                <dx:NavBarItem Text="Notes" />
						                <dx:NavBarItem Text="Reports" />
						            </Items>
						        </dx:NavBarGroup>
						    </Groups>
						</dx:ASPxNavBar>
					</dx:PanelContent>
				</PanelCollection>
				<ClientSideEvents />
			</dx:ASPxPanel>
</div>
	</form>
</body>
</html>
