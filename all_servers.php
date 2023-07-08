<?php
echo"<script type='text/javascript' src='".JS."jquery.js'></script>\n";
echo"<script type='text/javascript' src='".JS."cookies.js'></script>\n";
echo"<script type='text/javascript' src='".JS."jquery.cookies.js'></script>\n";
echo "<title>".$settings['sitename']."</title>\n";
echo"</head>\n";
require_once INCLUDES."navigation.php";
echo "<center><table border='0'  align='center' cellpadding='0' cellspacing='0' class='stat sortable' id='myleaderboard'>";
if(!$serv_num==0){
echo "<th>#</th><th width=350><center>".$locale['010']."</center></th><th width=150><center>".$locale['011']."</center></th><th width=100><center>".$locale['012']."</center></th><th width=70><center>".$locale['013']."</center></th><th width=70><center>".$locale['014']."</center></th><th><center>".$locale['015']."</center></th><th width=70><center>".$locale['021']."</center></th><th width=70><center>".$locale['016']."</center></th></tr>";
$i=0;lamx();
$servers2 = dbquery("SELECT * FROM ".DB_SERVERS . " where server_new != 1  order by server_vip desc, votes desc");
while($r=dbarray_fetch($servers2)) {
$i++;
$players = $r['server_players']."/".$r['server_maxplayers'] ;
if($r['server_players'] == $r['server_maxplayers'])
{ $players = "<font color='#00FF00'>".$r['server_players']."/".$r['server_maxplayers']."</font>";}
if($r['server_players'] == 0)
{ $players = "<font color='red'>".$r['server_players']."/".$r['server_maxplayers']."</font>";}
require_once INCLUDES."status.php";
echo "<tr><td>$i</td>";
echo "<td align='left'><a href='server-$r[server_id]' id='link'>$r[server_name]</a></td>";
echo "<td align='center'>$r[server_ip]</td>";
echo "<td align='center'>$r[server_map]</td>";
echo "<td align='center'>".$players."</td>";
echo "<td align='center'>$r[server_protokol]</td>";
echo "<td align='center'><img src='images/flags/$r[server_location].png' height='12' width='16' alt='$r[server_location]' title='$r[server_location]''></td>";
echo "<td align='center'>".$status."</td>";
echo "<td align='center'>";
if($r['server_vip']==1){ echo $locale['018']; }
	else{
echo "<span class='votes_count' id='votes_count$r[server_id]' >".$r['votes']."</span>";
echo "<span class='vote_buttons' id='vote_buttons$r[server_id]'>";
echo "	<a href='javascript:;' class='vote' id='$r[server_id]'></a>";
echo "</span>";
		}
echo "</td></tr></tr>";
	}
}
else {echo "<th><center> ".$locale['017']."</center></th>";}
echo"</tbody></table><hr class='clear'>";
?>