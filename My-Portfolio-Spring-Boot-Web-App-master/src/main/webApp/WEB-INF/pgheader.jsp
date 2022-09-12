<header class="header">
	<div class="full_width">
	<div class="Banglalink_logo"><a href="#"></a></div>
		
		<nav>
		<ul class="nav">
			<li>
				<a href='<%= application.getContextPath() %>' style="padding:21px 16px;"><i class="fa fa-home"></i>  MFS Hotline</a>
				<ul>
					<li><a href='<%= application.getContextPath() + "/views/ivr-config.jsp" %>'>Emergency Configuration</a></li>
					<li><a href='<%= application.getContextPath() + "/views/dtmf-config.jsp" %>'>DTMF Configuration</a></li>
				</ul>
			</li>
			<li>
				<a href='#' style="padding:21px 16px;">Call Blocking</a>
				<ul> <!-- SET CLASS FOR LAST TAB -->
					<li><a href='<%= application.getContextPath() + "/views/caller-segment.jsp" %>'>Caller Segment</a></li>
					<li>
					<a href='#'>IVR Accessibility</a>
						<ul class="left_submenu">
							<li><a href='<%= application.getContextPath() + "/views/disconnect/call-whitelist.jsp" %>'>Caller Whitelisting</a></li>
							<li><a href='<%= application.getContextPath() + "/views/disconnect/call-blacklist.jsp" %>'>Caller Blacklisting</a></li>
							<li><a href='<%= application.getContextPath() + "/views/disconnect/call-segment-rules.jsp" %>'>Call Segment Rules</a></li>
							<li><a href='<%= application.getContextPath() + "/views/disconnect/incorporated-rules.jsp" %>'>Active Rules</a></li>
							<li><a href='<%= application.getContextPath() + "/views/disconnect/call-records.jsp" %>'>Successful Calls</a></li>
							<li><a href='<%= application.getContextPath() + "/views/disconnect/disconnected-calls.jsp" %>'>Blocked Calls</a></li>
						</ul>
					</li>
					<li>
					<a href='#'>Agent Transfer</a>
						<ul>
							<li><a href='<%= application.getContextPath() + "/views/transfer/call-whitelist.jsp" %>'>Caller Whitelisting</a></li>
							<li><a href='<%= application.getContextPath() + "/views/transfer/call-blacklist.jsp" %>'>Caller Blacklisting</a></li>
							<li><a href='<%= application.getContextPath() + "/views/transfer/call-segment-rules.jsp" %>'>Call Segment Rules</a></li>
							<li><a href='<%= application.getContextPath() + "/views/transfer/incorporated-rules.jsp" %>'>Active Rules</a></li>
							<li><a href='<%= application.getContextPath() + "/views/transfer/call-records.jsp" %>'>Transfered Calls</a></li>
							<li><a href='<%= application.getContextPath() + "/views/transfer/transfered-calls.jsp" %>'>Blocked Records</a></li>
						</ul>
					</li>
					<li><a href='<%= application.getContextPath() + "/views/disconnect-test.jsp" %>'>IVR Accessibility API</a></li>
					<li><a href='<%= application.getContextPath() + "/views/transfer-test.jsp" %>'>IVR Transfer API</a></li>
				</ul>
			</li>
			<li>
				<a href='#' style="padding:21px 16px;"></i>Call Charging</a>
				<ul>
					<li><a href='<%= application.getContextPath() + "/views/call-charging/list-call-charging-config.jsp" %>'>VDN Configuration</a></li>
					<li><a href='<%= application.getContextPath() + "/views/call-charging/report/postpaid-call-charging-report.jsp" %>'>Postpaid Call Report</a></li>
					<li><a href='<%= application.getContextPath() + "/views/call-charging/report/prepaid-call-charging-report.jsp" %>'>Prepaid Call Report</a></li>
					<li><a href='<%= application.getContextPath() + "/views/call-charging/report/postpaid-data-export.jsp" %>'>Postpaid Data Export</a></li>
					<li><a href='<%= application.getContextPath() + "/views/call-charging/report/prepaid-data-export.jsp" %>'>Prepaid Data Export</a></li>
				</ul>
			</li>
			<li>
				<a href='#' style="padding:21px 16px;"></i>ATLBTL</a>
				<ul>
					<li><a href='<%= application.getContextPath() + "/views/list-promotion.jsp" %>'>Promotion</a></li>
					<li><a href='<%= application.getContextPath() + "/views/list-offer.jsp" %>'>Offer</a></li>
				</ul>
			</li>
			<li>
				<a href='#' style="padding:21px 16px;"></i>Internet Plan</a>
				<ul>
					<li><a href='<%= application.getContextPath() + "/views/list-internet-plan-detail.jsp" %>'>Internet Plan</a></li>
					<li><a href='<%= application.getContextPath() + "/views/list-internet-plan-dis-offer.jsp" %>'>Interner Discount Offer </a></li>
				</ul>
			</li>
			<li>
				<a href='#' style="padding:21px 16px;">Reports</a>
				<ul class="right_menu"> <!-- SET CLASS FOR LAST TAB -->
					<li><a href='<%= application.getContextPath() + "/views/call-summary.jsp" %>'>Call Summary</a></li>
					<li><a href='<%= application.getContextPath() + "/views/hourly-summary.jsp" %>'>Hourly Summary</a></li>
					<li><a href='<%= application.getContextPath() + "/views/vas-backend-report.jsp" %>'>VAS Backend Call Report</a></li>
				</ul>
			</li>
			<li>
				<a href='#' style="padding:21px 16px;">Broadcast Announcements</a>
				<ul class="right_menu"> <!-- SET CLASS FOR LAST TAB -->
					<li><a href='<%= application.getContextPath() + "/views/list-broadcast-announcement.jsp" %>'>Broadcast Announcement Prompts</a></li>
				</ul>
			</li>

			<li>
				<a href="<%= application.getContextPath()%>/default.jsp?action=logout" style="padding:21px 16px;">Logout</a>
			</li>
		</ul>
		</nav>
		
		
	</div>
</header>
<div class="line-top"></div>