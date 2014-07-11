echo '<configuration version="2">
    <repository id="default" directory="/wheel/Sync" ro="false" ignorePerms="false">
        <node id="HYS4NTHF55MSLQHKIUCGTZTFVAPHQCYMGWLSDZEPNJYSP6QGGD5Q"></node>
        <node id="Q7ZQMGETN7TTE45JIDJDQPZCEZ2U4VV65AQ336J7ZAE5SXIVKLZA"></node>
        <versioning type="simple">
            <param key="keep" val="42"></param>
        </versioning>
        <syncorder></syncorder>
    </repository>
    <node id="HYS4NTHF55MSLQHKIUCGTZTFVAPHQCYMGWLSDZEPNJYSP6QGGD5Q" name="arch">
        <address>dynamic</address>
    </node>
    <node id="Q7ZQMGETN7TTE45JIDJDQPZCEZ2U4VV65AQ336J7ZAE5SXIVKLZA" name="Sync">
        <address>dynamic</address>
    </node>
    <gui enabled="true" tls="false">
        <address>0.0.0.0:8080</address>
    </gui>
    <options>
        <listenAddress>0.0.0.0:22000</listenAddress>
        <globalAnnounceServer>announce.syncthing.net:22025</globalAnnounceServer>
        <globalAnnounceEnabled>true</globalAnnounceEnabled>
        <localAnnounceEnabled>true</localAnnounceEnabled>
        <localAnnouncePort>21025</localAnnouncePort>
        <parallelRequests>16</parallelRequests>
        <maxSendKbps>0</maxSendKbps>
        <rescanIntervalS>60</rescanIntervalS>
        <reconnectionIntervalS>60</reconnectionIntervalS>
        <maxChangeKbps>10000</maxChangeKbps>
        <startBrowser>true</startBrowser>
        <upnpEnabled>true</upnpEnabled>
        <urAccepted>0</urAccepted>
    </options>
</configuration>' > /root/.config/syncthing/config.xml
