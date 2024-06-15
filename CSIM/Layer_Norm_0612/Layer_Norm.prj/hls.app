<project xmlns="com.autoesl.autopilot.project" name="Layer_Norm.prj" top="layernorm">
    <includePaths/>
    <libraryPaths/>
    <libraryFlag/>
    <Simulation argv="">
        <SimFlow name="csim" ldflags="" mflags="" csimMode="2" lastCsimMode="2"/>
    </Simulation>
    <files xmlns="">
        <file name="../../tb/layer_norm_tb.cpp" sc="0" tb="1" cflags=" -std=c++11 -Wno-unknown-pragmas -Wno-unknown-pragmas" csimflags=" -Wno-unknown-pragmas" blackbox="false"/>
        <file name="src/layernorm.cpp" sc="0" tb="false" cflags="-I/home/ytq/codeField/Prediction_Model_Accelerator/CSIM/Layer_Norm_0612/include/." csimflags="" blackbox="false"/>
    </files>
    <solutions xmlns="">
        <solution name="sol" status="active"/>
    </solutions>
</project>

