<project xmlns="com.autoesl.autopilot.project" name="Sparse_HLS.prj" top="sparse">
    <includePaths/>
    <libraryPaths/>
    <libraryFlag/>
    <Simulation argv="">
        <SimFlow name="csim" ldflags="" mflags="" csimMode="2" lastCsimMode="2"/>
    </Simulation>
    <files xmlns="">
        <file name="../../testbench/sparse_tb.cpp" sc="0" tb="1" cflags=" -std=c++11 -Wno-unknown-pragmas -Wno-unknown-pragmas" csimflags=" -Wno-unknown-pragmas" blackbox="false"/>
        <file name="src/sparse.cpp" sc="0" tb="false" cflags="-I/home/ytq/codeField/Prediction_Model_Accelerator/CSIM/Sparse_HLS/Sparse_HLS/include/." csimflags="" blackbox="false"/>
    </files>
    <solutions xmlns="">
        <solution name="sol" status="active"/>
    </solutions>
</project>

