<?xml version="1.0" encoding="UTF-8" standalone="yes" ?>
<!DOCTYPE boost_serialization>
<boost_serialization signature="serialization::archive" version="17">
<syndb class_id="0" tracking_level="0" version="0">
	<userIPLatency>-1</userIPLatency>
	<userIPName></userIPName>
	<cdfg class_id="1" tracking_level="1" version="0" object_id="_0">
		<name>layernorm</name>
		<module_structure>Dataflow</module_structure>
		<ret_bitwidth>0</ret_bitwidth>
		<ports class_id="2" tracking_level="0" version="0">
			<count>14</count>
			<item_version>0</item_version>
			<item class_id="3" tracking_level="1" version="0" object_id="_1">
				<Value class_id="4" tracking_level="0" version="0">
					<Obj class_id="5" tracking_level="0" version="0">
						<type>1</type>
						<id>1</id>
						<name>ln_data</name>
						<fileName></fileName>
						<fileDirectory></fileDirectory>
						<lineNumber>0</lineNumber>
						<contextFuncName></contextFuncName>
						<contextNormFuncName></contextNormFuncName>
						<inlineStackInfo class_id="6" tracking_level="0" version="0">
							<count>0</count>
							<item_version>0</item_version>
						</inlineStackInfo>
						<originalName></originalName>
						<rtlName></rtlName>
						<control></control>
						<opType></opType>
						<implIndex></implIndex>
						<coreName></coreName>
						<isStorage>0</isStorage>
						<storageDepth>0</storageDepth>
						<coreId>1867341678</coreId>
						<rtlModuleName></rtlModuleName>
					</Obj>
					<bitwidth>256</bitwidth>
				</Value>
				<direction>2</direction>
				<if_type>4</if_type>
				<array_size>0</array_size>
				<bit_vecs class_id="7" tracking_level="0" version="0">
					<count>0</count>
					<item_version>0</item_version>
				</bit_vecs>
			</item>
			<item class_id_reference="3" object_id="_2">
				<Value>
					<Obj>
						<type>1</type>
						<id>2</id>
						<name>ln_paras</name>
						<fileName></fileName>
						<fileDirectory></fileDirectory>
						<lineNumber>0</lineNumber>
						<contextFuncName></contextFuncName>
						<contextNormFuncName></contextNormFuncName>
						<inlineStackInfo>
							<count>0</count>
							<item_version>0</item_version>
						</inlineStackInfo>
						<originalName></originalName>
						<rtlName></rtlName>
						<control></control>
						<opType></opType>
						<implIndex></implIndex>
						<coreName></coreName>
						<isStorage>0</isStorage>
						<storageDepth>0</storageDepth>
						<coreId>1867341678</coreId>
						<rtlModuleName></rtlModuleName>
					</Obj>
					<bitwidth>256</bitwidth>
				</Value>
				<direction>0</direction>
				<if_type>4</if_type>
				<array_size>0</array_size>
				<bit_vecs>
					<count>0</count>
					<item_version>0</item_version>
				</bit_vecs>
			</item>
			<item class_id_reference="3" object_id="_3">
				<Value>
					<Obj>
						<type>1</type>
						<id>3</id>
						<name>input_data_addr</name>
						<fileName></fileName>
						<fileDirectory></fileDirectory>
						<lineNumber>0</lineNumber>
						<contextFuncName></contextFuncName>
						<contextNormFuncName></contextNormFuncName>
						<inlineStackInfo>
							<count>0</count>
							<item_version>0</item_version>
						</inlineStackInfo>
						<originalName>input_data_addr</originalName>
						<rtlName></rtlName>
						<control></control>
						<opType></opType>
						<implIndex></implIndex>
						<coreName></coreName>
						<isStorage>0</isStorage>
						<storageDepth>0</storageDepth>
						<coreId>1867341678</coreId>
						<rtlModuleName></rtlModuleName>
					</Obj>
					<bitwidth>32</bitwidth>
				</Value>
				<direction>0</direction>
				<if_type>0</if_type>
				<array_size>0</array_size>
				<bit_vecs>
					<count>0</count>
					<item_version>0</item_version>
				</bit_vecs>
			</item>
			<item class_id_reference="3" object_id="_4">
				<Value>
					<Obj>
						<type>1</type>
						<id>4</id>
						<name>gama_addr</name>
						<fileName></fileName>
						<fileDirectory></fileDirectory>
						<lineNumber>0</lineNumber>
						<contextFuncName></contextFuncName>
						<contextNormFuncName></contextNormFuncName>
						<inlineStackInfo>
							<count>0</count>
							<item_version>0</item_version>
						</inlineStackInfo>
						<originalName>gama_addr</originalName>
						<rtlName></rtlName>
						<control></control>
						<opType></opType>
						<implIndex></implIndex>
						<coreName></coreName>
						<isStorage>0</isStorage>
						<storageDepth>0</storageDepth>
						<coreId>1886414894</coreId>
						<rtlModuleName></rtlModuleName>
					</Obj>
					<bitwidth>32</bitwidth>
				</Value>
				<direction>0</direction>
				<if_type>0</if_type>
				<array_size>0</array_size>
				<bit_vecs>
					<count>0</count>
					<item_version>0</item_version>
				</bit_vecs>
			</item>
			<item class_id_reference="3" object_id="_5">
				<Value>
					<Obj>
						<type>1</type>
						<id>5</id>
						<name>beta_addr</name>
						<fileName></fileName>
						<fileDirectory></fileDirectory>
						<lineNumber>0</lineNumber>
						<contextFuncName></contextFuncName>
						<contextNormFuncName></contextNormFuncName>
						<inlineStackInfo>
							<count>0</count>
							<item_version>0</item_version>
						</inlineStackInfo>
						<originalName>beta_addr</originalName>
						<rtlName></rtlName>
						<control></control>
						<opType></opType>
						<implIndex></implIndex>
						<coreName></coreName>
						<isStorage>0</isStorage>
						<storageDepth>0</storageDepth>
						<coreId>2988995264</coreId>
						<rtlModuleName></rtlModuleName>
					</Obj>
					<bitwidth>32</bitwidth>
				</Value>
				<direction>0</direction>
				<if_type>0</if_type>
				<array_size>0</array_size>
				<bit_vecs>
					<count>0</count>
					<item_version>0</item_version>
				</bit_vecs>
			</item>
			<item class_id_reference="3" object_id="_6">
				<Value>
					<Obj>
						<type>1</type>
						<id>6</id>
						<name>output_data_addr</name>
						<fileName></fileName>
						<fileDirectory></fileDirectory>
						<lineNumber>0</lineNumber>
						<contextFuncName></contextFuncName>
						<contextNormFuncName></contextNormFuncName>
						<inlineStackInfo>
							<count>0</count>
							<item_version>0</item_version>
						</inlineStackInfo>
						<originalName>output_data_addr</originalName>
						<rtlName></rtlName>
						<control></control>
						<opType></opType>
						<implIndex></implIndex>
						<coreName></coreName>
						<isStorage>0</isStorage>
						<storageDepth>0</storageDepth>
						<coreId>2988758064</coreId>
						<rtlModuleName></rtlModuleName>
					</Obj>
					<bitwidth>32</bitwidth>
				</Value>
				<direction>0</direction>
				<if_type>0</if_type>
				<array_size>0</array_size>
				<bit_vecs>
					<count>0</count>
					<item_version>0</item_version>
				</bit_vecs>
			</item>
			<item class_id_reference="3" object_id="_7">
				<Value>
					<Obj>
						<type>1</type>
						<id>7</id>
						<name>rows</name>
						<fileName></fileName>
						<fileDirectory></fileDirectory>
						<lineNumber>0</lineNumber>
						<contextFuncName></contextFuncName>
						<contextNormFuncName></contextNormFuncName>
						<inlineStackInfo>
							<count>0</count>
							<item_version>0</item_version>
						</inlineStackInfo>
						<originalName>rows</originalName>
						<rtlName></rtlName>
						<control></control>
						<opType></opType>
						<implIndex></implIndex>
						<coreName></coreName>
						<isStorage>0</isStorage>
						<storageDepth>0</storageDepth>
						<coreId>0</coreId>
						<rtlModuleName></rtlModuleName>
					</Obj>
					<bitwidth>32</bitwidth>
				</Value>
				<direction>0</direction>
				<if_type>0</if_type>
				<array_size>0</array_size>
				<bit_vecs>
					<count>0</count>
					<item_version>0</item_version>
				</bit_vecs>
			</item>
			<item class_id_reference="3" object_id="_8">
				<Value>
					<Obj>
						<type>1</type>
						<id>8</id>
						<name>cols_log</name>
						<fileName></fileName>
						<fileDirectory></fileDirectory>
						<lineNumber>0</lineNumber>
						<contextFuncName></contextFuncName>
						<contextNormFuncName></contextNormFuncName>
						<inlineStackInfo>
							<count>0</count>
							<item_version>0</item_version>
						</inlineStackInfo>
						<originalName>cols_log</originalName>
						<rtlName></rtlName>
						<control></control>
						<opType></opType>
						<implIndex></implIndex>
						<coreName></coreName>
						<isStorage>0</isStorage>
						<storageDepth>0</storageDepth>
						<coreId>2989465584</coreId>
						<rtlModuleName></rtlModuleName>
					</Obj>
					<bitwidth>32</bitwidth>
				</Value>
				<direction>0</direction>
				<if_type>0</if_type>
				<array_size>0</array_size>
				<bit_vecs>
					<count>0</count>
					<item_version>0</item_version>
				</bit_vecs>
			</item>
			<item class_id_reference="3" object_id="_9">
				<Value>
					<Obj>
						<type>1</type>
						<id>9</id>
						<name>q_value</name>
						<fileName></fileName>
						<fileDirectory></fileDirectory>
						<lineNumber>0</lineNumber>
						<contextFuncName></contextFuncName>
						<contextNormFuncName></contextNormFuncName>
						<inlineStackInfo>
							<count>0</count>
							<item_version>0</item_version>
						</inlineStackInfo>
						<originalName>q_value</originalName>
						<rtlName></rtlName>
						<control></control>
						<opType></opType>
						<implIndex></implIndex>
						<coreName></coreName>
						<isStorage>0</isStorage>
						<storageDepth>0</storageDepth>
						<coreId>0</coreId>
						<rtlModuleName></rtlModuleName>
					</Obj>
					<bitwidth>32</bitwidth>
				</Value>
				<direction>0</direction>
				<if_type>0</if_type>
				<array_size>0</array_size>
				<bit_vecs>
					<count>0</count>
					<item_version>0</item_version>
				</bit_vecs>
			</item>
			<item class_id_reference="3" object_id="_10">
				<Value>
					<Obj>
						<type>1</type>
						<id>10</id>
						<name>shift_value</name>
						<fileName></fileName>
						<fileDirectory></fileDirectory>
						<lineNumber>0</lineNumber>
						<contextFuncName></contextFuncName>
						<contextNormFuncName></contextNormFuncName>
						<inlineStackInfo>
							<count>0</count>
							<item_version>0</item_version>
						</inlineStackInfo>
						<originalName>shift_value</originalName>
						<rtlName></rtlName>
						<control></control>
						<opType></opType>
						<implIndex></implIndex>
						<coreName></coreName>
						<isStorage>0</isStorage>
						<storageDepth>0</storageDepth>
						<coreId>448</coreId>
						<rtlModuleName></rtlModuleName>
					</Obj>
					<bitwidth>32</bitwidth>
				</Value>
				<direction>0</direction>
				<if_type>0</if_type>
				<array_size>0</array_size>
				<bit_vecs>
					<count>0</count>
					<item_version>0</item_version>
				</bit_vecs>
			</item>
			<item class_id_reference="3" object_id="_11">
				<Value>
					<Obj>
						<type>1</type>
						<id>11</id>
						<name>done</name>
						<fileName></fileName>
						<fileDirectory></fileDirectory>
						<lineNumber>0</lineNumber>
						<contextFuncName></contextFuncName>
						<contextNormFuncName></contextNormFuncName>
						<inlineStackInfo>
							<count>0</count>
							<item_version>0</item_version>
						</inlineStackInfo>
						<originalName>done</originalName>
						<rtlName></rtlName>
						<control></control>
						<opType></opType>
						<implIndex></implIndex>
						<coreName></coreName>
						<isStorage>0</isStorage>
						<storageDepth>0</storageDepth>
						<coreId>71</coreId>
						<rtlModuleName></rtlModuleName>
					</Obj>
					<bitwidth>32</bitwidth>
				</Value>
				<direction>1</direction>
				<if_type>0</if_type>
				<array_size>0</array_size>
				<bit_vecs>
					<count>0</count>
					<item_version>0</item_version>
				</bit_vecs>
			</item>
			<item class_id_reference="3" object_id="_12">
				<Value>
					<Obj>
						<type>1</type>
						<id>12</id>
						<name>inputs</name>
						<fileName></fileName>
						<fileDirectory></fileDirectory>
						<lineNumber>0</lineNumber>
						<contextFuncName></contextFuncName>
						<contextNormFuncName></contextNormFuncName>
						<inlineStackInfo>
							<count>0</count>
							<item_version>0</item_version>
						</inlineStackInfo>
						<originalName>inputs.V</originalName>
						<rtlName></rtlName>
						<control></control>
						<opType></opType>
						<implIndex></implIndex>
						<coreName></coreName>
						<isStorage>0</isStorage>
						<storageDepth>0</storageDepth>
						<coreId>176</coreId>
						<rtlModuleName></rtlModuleName>
					</Obj>
					<bitwidth>64</bitwidth>
				</Value>
				<direction>0</direction>
				<if_type>0</if_type>
				<array_size>0</array_size>
				<bit_vecs>
					<count>0</count>
					<item_version>0</item_version>
				</bit_vecs>
			</item>
			<item class_id_reference="3" object_id="_13">
				<Value>
					<Obj>
						<type>1</type>
						<id>13</id>
						<name>outputs</name>
						<fileName></fileName>
						<fileDirectory></fileDirectory>
						<lineNumber>0</lineNumber>
						<contextFuncName></contextFuncName>
						<contextNormFuncName></contextNormFuncName>
						<inlineStackInfo>
							<count>0</count>
							<item_version>0</item_version>
						</inlineStackInfo>
						<originalName>outputs.V</originalName>
						<rtlName></rtlName>
						<control></control>
						<opType></opType>
						<implIndex></implIndex>
						<coreName></coreName>
						<isStorage>0</isStorage>
						<storageDepth>0</storageDepth>
						<coreId>2990794016</coreId>
						<rtlModuleName></rtlModuleName>
					</Obj>
					<bitwidth>64</bitwidth>
				</Value>
				<direction>0</direction>
				<if_type>0</if_type>
				<array_size>0</array_size>
				<bit_vecs>
					<count>0</count>
					<item_version>0</item_version>
				</bit_vecs>
			</item>
			<item class_id_reference="3" object_id="_14">
				<Value>
					<Obj>
						<type>1</type>
						<id>14</id>
						<name>paras</name>
						<fileName></fileName>
						<fileDirectory></fileDirectory>
						<lineNumber>0</lineNumber>
						<contextFuncName></contextFuncName>
						<contextNormFuncName></contextNormFuncName>
						<inlineStackInfo>
							<count>0</count>
							<item_version>0</item_version>
						</inlineStackInfo>
						<originalName>paras.V</originalName>
						<rtlName></rtlName>
						<control></control>
						<opType></opType>
						<implIndex></implIndex>
						<coreName></coreName>
						<isStorage>0</isStorage>
						<storageDepth>0</storageDepth>
						<coreId>0</coreId>
						<rtlModuleName></rtlModuleName>
					</Obj>
					<bitwidth>64</bitwidth>
				</Value>
				<direction>0</direction>
				<if_type>0</if_type>
				<array_size>0</array_size>
				<bit_vecs>
					<count>0</count>
					<item_version>0</item_version>
				</bit_vecs>
			</item>
		</ports>
		<nodes class_id="8" tracking_level="0" version="0">
			<count>38</count>
			<item_version>0</item_version>
			<item class_id="9" tracking_level="1" version="0" object_id="_15">
				<Value>
					<Obj>
						<type>0</type>
						<id>15</id>
						<name>paras_read</name>
						<fileName>/home/ytq/codeField/Prediction_Model_Accelerator/CSIM/Layer_Norm_0612/src/layernorm.cpp</fileName>
						<fileDirectory>/home/ytq/codeField/Prediction_Model_Accelerator/CSIM/Layer_Norm_0612</fileDirectory>
						<lineNumber>52</lineNumber>
						<contextFuncName>layernorm</contextFuncName>
						<contextNormFuncName>layernorm</contextNormFuncName>
						<inlineStackInfo>
							<count>1</count>
							<item_version>0</item_version>
							<item class_id="10" tracking_level="0" version="0">
								<first>/home/ytq/codeField/Prediction_Model_Accelerator/CSIM/Layer_Norm_0612</first>
								<second class_id="11" tracking_level="0" version="0">
									<count>1</count>
									<item_version>0</item_version>
									<item class_id="12" tracking_level="0" version="0">
										<first class_id="13" tracking_level="0" version="0">
											<first>/home/ytq/codeField/Prediction_Model_Accelerator/CSIM/Layer_Norm_0612/src/layernorm.cpp</first>
											<second>layernorm</second>
										</first>
										<second>52</second>
									</item>
								</second>
							</item>
						</inlineStackInfo>
						<originalName></originalName>
						<rtlName></rtlName>
						<control></control>
						<opType></opType>
						<implIndex></implIndex>
						<coreName></coreName>
						<isStorage>0</isStorage>
						<storageDepth>0</storageDepth>
						<coreId>539568500</coreId>
						<rtlModuleName></rtlModuleName>
					</Obj>
					<bitwidth>64</bitwidth>
				</Value>
				<oprand_edges>
					<count>2</count>
					<item_version>0</item_version>
					<item>135</item>
					<item>136</item>
				</oprand_edges>
				<opcode>read</opcode>
				<m_Display>0</m_Display>
				<m_isOnCriticalPath>0</m_isOnCriticalPath>
				<m_isLCDNode>0</m_isLCDNode>
				<m_isStartOfPath>0</m_isStartOfPath>
				<m_delay>1.00</m_delay>
				<m_topoIndex>1</m_topoIndex>
				<m_clusterGroupNumber>-1</m_clusterGroupNumber>
			</item>
			<item class_id_reference="9" object_id="_16">
				<Value>
					<Obj>
						<type>0</type>
						<id>16</id>
						<name>outputs_read</name>
						<fileName>/home/ytq/codeField/Prediction_Model_Accelerator/CSIM/Layer_Norm_0612/src/layernorm.cpp</fileName>
						<fileDirectory>/home/ytq/codeField/Prediction_Model_Accelerator/CSIM/Layer_Norm_0612</fileDirectory>
						<lineNumber>52</lineNumber>
						<contextFuncName>layernorm</contextFuncName>
						<contextNormFuncName>layernorm</contextNormFuncName>
						<inlineStackInfo>
							<count>1</count>
							<item_version>0</item_version>
							<item>
								<first>/home/ytq/codeField/Prediction_Model_Accelerator/CSIM/Layer_Norm_0612</first>
								<second>
									<count>1</count>
									<item_version>0</item_version>
									<item>
										<first>
											<first>/home/ytq/codeField/Prediction_Model_Accelerator/CSIM/Layer_Norm_0612/src/layernorm.cpp</first>
											<second>layernorm</second>
										</first>
										<second>52</second>
									</item>
								</second>
							</item>
						</inlineStackInfo>
						<originalName></originalName>
						<rtlName></rtlName>
						<control></control>
						<opType></opType>
						<implIndex></implIndex>
						<coreName></coreName>
						<isStorage>0</isStorage>
						<storageDepth>0</storageDepth>
						<coreId>1952542572</coreId>
						<rtlModuleName></rtlModuleName>
					</Obj>
					<bitwidth>64</bitwidth>
				</Value>
				<oprand_edges>
					<count>2</count>
					<item_version>0</item_version>
					<item>137</item>
					<item>138</item>
				</oprand_edges>
				<opcode>read</opcode>
				<m_Display>0</m_Display>
				<m_isOnCriticalPath>0</m_isOnCriticalPath>
				<m_isLCDNode>0</m_isLCDNode>
				<m_isStartOfPath>0</m_isStartOfPath>
				<m_delay>1.00</m_delay>
				<m_topoIndex>2</m_topoIndex>
				<m_clusterGroupNumber>-1</m_clusterGroupNumber>
			</item>
			<item class_id_reference="9" object_id="_17">
				<Value>
					<Obj>
						<type>0</type>
						<id>17</id>
						<name>inputs_read</name>
						<fileName>/home/ytq/codeField/Prediction_Model_Accelerator/CSIM/Layer_Norm_0612/src/layernorm.cpp</fileName>
						<fileDirectory>/home/ytq/codeField/Prediction_Model_Accelerator/CSIM/Layer_Norm_0612</fileDirectory>
						<lineNumber>52</lineNumber>
						<contextFuncName>layernorm</contextFuncName>
						<contextNormFuncName>layernorm</contextNormFuncName>
						<inlineStackInfo>
							<count>1</count>
							<item_version>0</item_version>
							<item>
								<first>/home/ytq/codeField/Prediction_Model_Accelerator/CSIM/Layer_Norm_0612</first>
								<second>
									<count>1</count>
									<item_version>0</item_version>
									<item>
										<first>
											<first>/home/ytq/codeField/Prediction_Model_Accelerator/CSIM/Layer_Norm_0612/src/layernorm.cpp</first>
											<second>layernorm</second>
										</first>
										<second>52</second>
									</item>
								</second>
							</item>
						</inlineStackInfo>
						<originalName></originalName>
						<rtlName></rtlName>
						<control></control>
						<opType></opType>
						<implIndex></implIndex>
						<coreName></coreName>
						<isStorage>0</isStorage>
						<storageDepth>0</storageDepth>
						<coreId>1634692198</coreId>
						<rtlModuleName></rtlModuleName>
					</Obj>
					<bitwidth>64</bitwidth>
				</Value>
				<oprand_edges>
					<count>2</count>
					<item_version>0</item_version>
					<item>139</item>
					<item>140</item>
				</oprand_edges>
				<opcode>read</opcode>
				<m_Display>0</m_Display>
				<m_isOnCriticalPath>0</m_isOnCriticalPath>
				<m_isLCDNode>0</m_isLCDNode>
				<m_isStartOfPath>0</m_isStartOfPath>
				<m_delay>1.00</m_delay>
				<m_topoIndex>3</m_topoIndex>
				<m_clusterGroupNumber>-1</m_clusterGroupNumber>
			</item>
			<item class_id_reference="9" object_id="_18">
				<Value>
					<Obj>
						<type>0</type>
						<id>18</id>
						<name>cols_log_read</name>
						<fileName>/home/ytq/codeField/Prediction_Model_Accelerator/CSIM/Layer_Norm_0612/src/layernorm.cpp</fileName>
						<fileDirectory>/home/ytq/codeField/Prediction_Model_Accelerator/CSIM/Layer_Norm_0612</fileDirectory>
						<lineNumber>52</lineNumber>
						<contextFuncName>layernorm</contextFuncName>
						<contextNormFuncName>layernorm</contextNormFuncName>
						<inlineStackInfo>
							<count>1</count>
							<item_version>0</item_version>
							<item>
								<first>/home/ytq/codeField/Prediction_Model_Accelerator/CSIM/Layer_Norm_0612</first>
								<second>
									<count>1</count>
									<item_version>0</item_version>
									<item>
										<first>
											<first>/home/ytq/codeField/Prediction_Model_Accelerator/CSIM/Layer_Norm_0612/src/layernorm.cpp</first>
											<second>layernorm</second>
										</first>
										<second>52</second>
									</item>
								</second>
							</item>
						</inlineStackInfo>
						<originalName></originalName>
						<rtlName></rtlName>
						<control></control>
						<opType></opType>
						<implIndex></implIndex>
						<coreName></coreName>
						<isStorage>0</isStorage>
						<storageDepth>0</storageDepth>
						<coreId>691943484</coreId>
						<rtlModuleName></rtlModuleName>
					</Obj>
					<bitwidth>32</bitwidth>
				</Value>
				<oprand_edges>
					<count>2</count>
					<item_version>0</item_version>
					<item>142</item>
					<item>143</item>
				</oprand_edges>
				<opcode>read</opcode>
				<m_Display>0</m_Display>
				<m_isOnCriticalPath>0</m_isOnCriticalPath>
				<m_isLCDNode>0</m_isLCDNode>
				<m_isStartOfPath>0</m_isStartOfPath>
				<m_delay>1.00</m_delay>
				<m_topoIndex>4</m_topoIndex>
				<m_clusterGroupNumber>-1</m_clusterGroupNumber>
			</item>
			<item class_id_reference="9" object_id="_19">
				<Value>
					<Obj>
						<type>0</type>
						<id>19</id>
						<name>rows_read</name>
						<fileName>/home/ytq/codeField/Prediction_Model_Accelerator/CSIM/Layer_Norm_0612/src/layernorm.cpp</fileName>
						<fileDirectory>/home/ytq/codeField/Prediction_Model_Accelerator/CSIM/Layer_Norm_0612</fileDirectory>
						<lineNumber>52</lineNumber>
						<contextFuncName>layernorm</contextFuncName>
						<contextNormFuncName>layernorm</contextNormFuncName>
						<inlineStackInfo>
							<count>1</count>
							<item_version>0</item_version>
							<item>
								<first>/home/ytq/codeField/Prediction_Model_Accelerator/CSIM/Layer_Norm_0612</first>
								<second>
									<count>1</count>
									<item_version>0</item_version>
									<item>
										<first>
											<first>/home/ytq/codeField/Prediction_Model_Accelerator/CSIM/Layer_Norm_0612/src/layernorm.cpp</first>
											<second>layernorm</second>
										</first>
										<second>52</second>
									</item>
								</second>
							</item>
						</inlineStackInfo>
						<originalName></originalName>
						<rtlName></rtlName>
						<control></control>
						<opType></opType>
						<implIndex></implIndex>
						<coreName></coreName>
						<isStorage>0</isStorage>
						<storageDepth>0</storageDepth>
						<coreId>1043872884</coreId>
						<rtlModuleName></rtlModuleName>
					</Obj>
					<bitwidth>32</bitwidth>
				</Value>
				<oprand_edges>
					<count>2</count>
					<item_version>0</item_version>
					<item>144</item>
					<item>145</item>
				</oprand_edges>
				<opcode>read</opcode>
				<m_Display>0</m_Display>
				<m_isOnCriticalPath>0</m_isOnCriticalPath>
				<m_isLCDNode>0</m_isLCDNode>
				<m_isStartOfPath>0</m_isStartOfPath>
				<m_delay>1.00</m_delay>
				<m_topoIndex>5</m_topoIndex>
				<m_clusterGroupNumber>-1</m_clusterGroupNumber>
			</item>
			<item class_id_reference="9" object_id="_20">
				<Value>
					<Obj>
						<type>0</type>
						<id>20</id>
						<name>output_data_addr_read</name>
						<fileName>/home/ytq/codeField/Prediction_Model_Accelerator/CSIM/Layer_Norm_0612/src/layernorm.cpp</fileName>
						<fileDirectory>/home/ytq/codeField/Prediction_Model_Accelerator/CSIM/Layer_Norm_0612</fileDirectory>
						<lineNumber>52</lineNumber>
						<contextFuncName>layernorm</contextFuncName>
						<contextNormFuncName>layernorm</contextNormFuncName>
						<inlineStackInfo>
							<count>1</count>
							<item_version>0</item_version>
							<item>
								<first>/home/ytq/codeField/Prediction_Model_Accelerator/CSIM/Layer_Norm_0612</first>
								<second>
									<count>1</count>
									<item_version>0</item_version>
									<item>
										<first>
											<first>/home/ytq/codeField/Prediction_Model_Accelerator/CSIM/Layer_Norm_0612/src/layernorm.cpp</first>
											<second>layernorm</second>
										</first>
										<second>52</second>
									</item>
								</second>
							</item>
						</inlineStackInfo>
						<originalName></originalName>
						<rtlName></rtlName>
						<control></control>
						<opType></opType>
						<implIndex></implIndex>
						<coreName></coreName>
						<isStorage>0</isStorage>
						<storageDepth>0</storageDepth>
						<coreId>539568500</coreId>
						<rtlModuleName></rtlModuleName>
					</Obj>
					<bitwidth>32</bitwidth>
				</Value>
				<oprand_edges>
					<count>2</count>
					<item_version>0</item_version>
					<item>146</item>
					<item>147</item>
				</oprand_edges>
				<opcode>read</opcode>
				<m_Display>0</m_Display>
				<m_isOnCriticalPath>0</m_isOnCriticalPath>
				<m_isLCDNode>0</m_isLCDNode>
				<m_isStartOfPath>0</m_isStartOfPath>
				<m_delay>1.00</m_delay>
				<m_topoIndex>6</m_topoIndex>
				<m_clusterGroupNumber>-1</m_clusterGroupNumber>
			</item>
			<item class_id_reference="9" object_id="_21">
				<Value>
					<Obj>
						<type>0</type>
						<id>21</id>
						<name>beta_addr_read</name>
						<fileName>/home/ytq/codeField/Prediction_Model_Accelerator/CSIM/Layer_Norm_0612/src/layernorm.cpp</fileName>
						<fileDirectory>/home/ytq/codeField/Prediction_Model_Accelerator/CSIM/Layer_Norm_0612</fileDirectory>
						<lineNumber>52</lineNumber>
						<contextFuncName>layernorm</contextFuncName>
						<contextNormFuncName>layernorm</contextNormFuncName>
						<inlineStackInfo>
							<count>1</count>
							<item_version>0</item_version>
							<item>
								<first>/home/ytq/codeField/Prediction_Model_Accelerator/CSIM/Layer_Norm_0612</first>
								<second>
									<count>1</count>
									<item_version>0</item_version>
									<item>
										<first>
											<first>/home/ytq/codeField/Prediction_Model_Accelerator/CSIM/Layer_Norm_0612/src/layernorm.cpp</first>
											<second>layernorm</second>
										</first>
										<second>52</second>
									</item>
								</second>
							</item>
						</inlineStackInfo>
						<originalName></originalName>
						<rtlName></rtlName>
						<control></control>
						<opType></opType>
						<implIndex></implIndex>
						<coreName></coreName>
						<isStorage>0</isStorage>
						<storageDepth>0</storageDepth>
						<coreId>539568500</coreId>
						<rtlModuleName></rtlModuleName>
					</Obj>
					<bitwidth>32</bitwidth>
				</Value>
				<oprand_edges>
					<count>2</count>
					<item_version>0</item_version>
					<item>148</item>
					<item>149</item>
				</oprand_edges>
				<opcode>read</opcode>
				<m_Display>0</m_Display>
				<m_isOnCriticalPath>0</m_isOnCriticalPath>
				<m_isLCDNode>0</m_isLCDNode>
				<m_isStartOfPath>0</m_isStartOfPath>
				<m_delay>1.00</m_delay>
				<m_topoIndex>7</m_topoIndex>
				<m_clusterGroupNumber>-1</m_clusterGroupNumber>
			</item>
			<item class_id_reference="9" object_id="_22">
				<Value>
					<Obj>
						<type>0</type>
						<id>22</id>
						<name>gama_addr_read</name>
						<fileName>/home/ytq/codeField/Prediction_Model_Accelerator/CSIM/Layer_Norm_0612/src/layernorm.cpp</fileName>
						<fileDirectory>/home/ytq/codeField/Prediction_Model_Accelerator/CSIM/Layer_Norm_0612</fileDirectory>
						<lineNumber>52</lineNumber>
						<contextFuncName>layernorm</contextFuncName>
						<contextNormFuncName>layernorm</contextNormFuncName>
						<inlineStackInfo>
							<count>1</count>
							<item_version>0</item_version>
							<item>
								<first>/home/ytq/codeField/Prediction_Model_Accelerator/CSIM/Layer_Norm_0612</first>
								<second>
									<count>1</count>
									<item_version>0</item_version>
									<item>
										<first>
											<first>/home/ytq/codeField/Prediction_Model_Accelerator/CSIM/Layer_Norm_0612/src/layernorm.cpp</first>
											<second>layernorm</second>
										</first>
										<second>52</second>
									</item>
								</second>
							</item>
						</inlineStackInfo>
						<originalName></originalName>
						<rtlName></rtlName>
						<control></control>
						<opType></opType>
						<implIndex></implIndex>
						<coreName></coreName>
						<isStorage>0</isStorage>
						<storageDepth>0</storageDepth>
						<coreId>60</coreId>
						<rtlModuleName></rtlModuleName>
					</Obj>
					<bitwidth>32</bitwidth>
				</Value>
				<oprand_edges>
					<count>2</count>
					<item_version>0</item_version>
					<item>150</item>
					<item>151</item>
				</oprand_edges>
				<opcode>read</opcode>
				<m_Display>0</m_Display>
				<m_isOnCriticalPath>0</m_isOnCriticalPath>
				<m_isLCDNode>0</m_isLCDNode>
				<m_isStartOfPath>0</m_isStartOfPath>
				<m_delay>1.00</m_delay>
				<m_topoIndex>8</m_topoIndex>
				<m_clusterGroupNumber>-1</m_clusterGroupNumber>
			</item>
			<item class_id_reference="9" object_id="_23">
				<Value>
					<Obj>
						<type>0</type>
						<id>23</id>
						<name>input_data_addr_read</name>
						<fileName>/home/ytq/codeField/Prediction_Model_Accelerator/CSIM/Layer_Norm_0612/src/layernorm.cpp</fileName>
						<fileDirectory>/home/ytq/codeField/Prediction_Model_Accelerator/CSIM/Layer_Norm_0612</fileDirectory>
						<lineNumber>52</lineNumber>
						<contextFuncName>layernorm</contextFuncName>
						<contextNormFuncName>layernorm</contextNormFuncName>
						<inlineStackInfo>
							<count>1</count>
							<item_version>0</item_version>
							<item>
								<first>/home/ytq/codeField/Prediction_Model_Accelerator/CSIM/Layer_Norm_0612</first>
								<second>
									<count>1</count>
									<item_version>0</item_version>
									<item>
										<first>
											<first>/home/ytq/codeField/Prediction_Model_Accelerator/CSIM/Layer_Norm_0612/src/layernorm.cpp</first>
											<second>layernorm</second>
										</first>
										<second>52</second>
									</item>
								</second>
							</item>
						</inlineStackInfo>
						<originalName></originalName>
						<rtlName></rtlName>
						<control></control>
						<opType></opType>
						<implIndex></implIndex>
						<coreName></coreName>
						<isStorage>0</isStorage>
						<storageDepth>0</storageDepth>
						<coreId>0</coreId>
						<rtlModuleName></rtlModuleName>
					</Obj>
					<bitwidth>32</bitwidth>
				</Value>
				<oprand_edges>
					<count>2</count>
					<item_version>0</item_version>
					<item>152</item>
					<item>153</item>
				</oprand_edges>
				<opcode>read</opcode>
				<m_Display>0</m_Display>
				<m_isOnCriticalPath>0</m_isOnCriticalPath>
				<m_isLCDNode>0</m_isLCDNode>
				<m_isStartOfPath>0</m_isStartOfPath>
				<m_delay>1.00</m_delay>
				<m_topoIndex>9</m_topoIndex>
				<m_clusterGroupNumber>-1</m_clusterGroupNumber>
			</item>
			<item class_id_reference="9" object_id="_24">
				<Value>
					<Obj>
						<type>0</type>
						<id>24</id>
						<name>outputs_c</name>
						<fileName>/home/ytq/codeField/Prediction_Model_Accelerator/CSIM/Layer_Norm_0612/src/layernorm.cpp</fileName>
						<fileDirectory>/home/ytq/codeField/Prediction_Model_Accelerator/CSIM/Layer_Norm_0612</fileDirectory>
						<lineNumber>52</lineNumber>
						<contextFuncName>layernorm</contextFuncName>
						<contextNormFuncName>layernorm</contextNormFuncName>
						<inlineStackInfo>
							<count>1</count>
							<item_version>0</item_version>
							<item>
								<first>/home/ytq/codeField/Prediction_Model_Accelerator/CSIM/Layer_Norm_0612</first>
								<second>
									<count>1</count>
									<item_version>0</item_version>
									<item>
										<first>
											<first>/home/ytq/codeField/Prediction_Model_Accelerator/CSIM/Layer_Norm_0612/src/layernorm.cpp</first>
											<second>layernorm</second>
										</first>
										<second>52</second>
									</item>
								</second>
							</item>
						</inlineStackInfo>
						<originalName></originalName>
						<rtlName></rtlName>
						<control></control>
						<opType></opType>
						<implIndex></implIndex>
						<coreName></coreName>
						<isStorage>0</isStorage>
						<storageDepth>0</storageDepth>
						<coreId>2990298656</coreId>
						<rtlModuleName></rtlModuleName>
					</Obj>
					<bitwidth>64</bitwidth>
				</Value>
				<oprand_edges>
					<count>1</count>
					<item_version>0</item_version>
					<item>155</item>
				</oprand_edges>
				<opcode>alloca</opcode>
				<m_Display>0</m_Display>
				<m_isOnCriticalPath>0</m_isOnCriticalPath>
				<m_isLCDNode>0</m_isLCDNode>
				<m_isStartOfPath>0</m_isStartOfPath>
				<m_delay>0.00</m_delay>
				<m_topoIndex>10</m_topoIndex>
				<m_clusterGroupNumber>-1</m_clusterGroupNumber>
			</item>
			<item class_id_reference="9" object_id="_25">
				<Value>
					<Obj>
						<type>0</type>
						<id>27</id>
						<name>cols_log_c22</name>
						<fileName>/home/ytq/codeField/Prediction_Model_Accelerator/CSIM/Layer_Norm_0612/src/layernorm.cpp</fileName>
						<fileDirectory>/home/ytq/codeField/Prediction_Model_Accelerator/CSIM/Layer_Norm_0612</fileDirectory>
						<lineNumber>52</lineNumber>
						<contextFuncName>layernorm</contextFuncName>
						<contextNormFuncName>layernorm</contextNormFuncName>
						<inlineStackInfo>
							<count>1</count>
							<item_version>0</item_version>
							<item>
								<first>/home/ytq/codeField/Prediction_Model_Accelerator/CSIM/Layer_Norm_0612</first>
								<second>
									<count>1</count>
									<item_version>0</item_version>
									<item>
										<first>
											<first>/home/ytq/codeField/Prediction_Model_Accelerator/CSIM/Layer_Norm_0612/src/layernorm.cpp</first>
											<second>layernorm</second>
										</first>
										<second>52</second>
									</item>
								</second>
							</item>
						</inlineStackInfo>
						<originalName></originalName>
						<rtlName></rtlName>
						<control></control>
						<opType></opType>
						<implIndex></implIndex>
						<coreName></coreName>
						<isStorage>0</isStorage>
						<storageDepth>0</storageDepth>
						<coreId>21</coreId>
						<rtlModuleName></rtlModuleName>
					</Obj>
					<bitwidth>32</bitwidth>
				</Value>
				<oprand_edges>
					<count>1</count>
					<item_version>0</item_version>
					<item>156</item>
				</oprand_edges>
				<opcode>alloca</opcode>
				<m_Display>0</m_Display>
				<m_isOnCriticalPath>0</m_isOnCriticalPath>
				<m_isLCDNode>0</m_isLCDNode>
				<m_isStartOfPath>0</m_isStartOfPath>
				<m_delay>0.00</m_delay>
				<m_topoIndex>11</m_topoIndex>
				<m_clusterGroupNumber>-1</m_clusterGroupNumber>
			</item>
			<item class_id_reference="9" object_id="_26">
				<Value>
					<Obj>
						<type>0</type>
						<id>30</id>
						<name>cols_log_c21</name>
						<fileName>/home/ytq/codeField/Prediction_Model_Accelerator/CSIM/Layer_Norm_0612/src/layernorm.cpp</fileName>
						<fileDirectory>/home/ytq/codeField/Prediction_Model_Accelerator/CSIM/Layer_Norm_0612</fileDirectory>
						<lineNumber>52</lineNumber>
						<contextFuncName>layernorm</contextFuncName>
						<contextNormFuncName>layernorm</contextNormFuncName>
						<inlineStackInfo>
							<count>1</count>
							<item_version>0</item_version>
							<item>
								<first>/home/ytq/codeField/Prediction_Model_Accelerator/CSIM/Layer_Norm_0612</first>
								<second>
									<count>1</count>
									<item_version>0</item_version>
									<item>
										<first>
											<first>/home/ytq/codeField/Prediction_Model_Accelerator/CSIM/Layer_Norm_0612/src/layernorm.cpp</first>
											<second>layernorm</second>
										</first>
										<second>52</second>
									</item>
								</second>
							</item>
						</inlineStackInfo>
						<originalName></originalName>
						<rtlName></rtlName>
						<control></control>
						<opType></opType>
						<implIndex></implIndex>
						<coreName></coreName>
						<isStorage>0</isStorage>
						<storageDepth>0</storageDepth>
						<coreId>2988995520</coreId>
						<rtlModuleName></rtlModuleName>
					</Obj>
					<bitwidth>32</bitwidth>
				</Value>
				<oprand_edges>
					<count>1</count>
					<item_version>0</item_version>
					<item>157</item>
				</oprand_edges>
				<opcode>alloca</opcode>
				<m_Display>0</m_Display>
				<m_isOnCriticalPath>0</m_isOnCriticalPath>
				<m_isLCDNode>0</m_isLCDNode>
				<m_isStartOfPath>0</m_isStartOfPath>
				<m_delay>0.00</m_delay>
				<m_topoIndex>12</m_topoIndex>
				<m_clusterGroupNumber>-1</m_clusterGroupNumber>
			</item>
			<item class_id_reference="9" object_id="_27">
				<Value>
					<Obj>
						<type>0</type>
						<id>33</id>
						<name>cols_log_c20</name>
						<fileName>/home/ytq/codeField/Prediction_Model_Accelerator/CSIM/Layer_Norm_0612/src/layernorm.cpp</fileName>
						<fileDirectory>/home/ytq/codeField/Prediction_Model_Accelerator/CSIM/Layer_Norm_0612</fileDirectory>
						<lineNumber>52</lineNumber>
						<contextFuncName>layernorm</contextFuncName>
						<contextNormFuncName>layernorm</contextNormFuncName>
						<inlineStackInfo>
							<count>1</count>
							<item_version>0</item_version>
							<item>
								<first>/home/ytq/codeField/Prediction_Model_Accelerator/CSIM/Layer_Norm_0612</first>
								<second>
									<count>1</count>
									<item_version>0</item_version>
									<item>
										<first>
											<first>/home/ytq/codeField/Prediction_Model_Accelerator/CSIM/Layer_Norm_0612/src/layernorm.cpp</first>
											<second>layernorm</second>
										</first>
										<second>52</second>
									</item>
								</second>
							</item>
						</inlineStackInfo>
						<originalName></originalName>
						<rtlName></rtlName>
						<control></control>
						<opType></opType>
						<implIndex></implIndex>
						<coreName></coreName>
						<isStorage>0</isStorage>
						<storageDepth>0</storageDepth>
						<coreId>0</coreId>
						<rtlModuleName></rtlModuleName>
					</Obj>
					<bitwidth>32</bitwidth>
				</Value>
				<oprand_edges>
					<count>1</count>
					<item_version>0</item_version>
					<item>158</item>
				</oprand_edges>
				<opcode>alloca</opcode>
				<m_Display>0</m_Display>
				<m_isOnCriticalPath>0</m_isOnCriticalPath>
				<m_isLCDNode>0</m_isLCDNode>
				<m_isStartOfPath>0</m_isStartOfPath>
				<m_delay>0.00</m_delay>
				<m_topoIndex>13</m_topoIndex>
				<m_clusterGroupNumber>-1</m_clusterGroupNumber>
			</item>
			<item class_id_reference="9" object_id="_28">
				<Value>
					<Obj>
						<type>0</type>
						<id>36</id>
						<name>cols_log_c</name>
						<fileName>/home/ytq/codeField/Prediction_Model_Accelerator/CSIM/Layer_Norm_0612/src/layernorm.cpp</fileName>
						<fileDirectory>/home/ytq/codeField/Prediction_Model_Accelerator/CSIM/Layer_Norm_0612</fileDirectory>
						<lineNumber>52</lineNumber>
						<contextFuncName>layernorm</contextFuncName>
						<contextNormFuncName>layernorm</contextNormFuncName>
						<inlineStackInfo>
							<count>1</count>
							<item_version>0</item_version>
							<item>
								<first>/home/ytq/codeField/Prediction_Model_Accelerator/CSIM/Layer_Norm_0612</first>
								<second>
									<count>1</count>
									<item_version>0</item_version>
									<item>
										<first>
											<first>/home/ytq/codeField/Prediction_Model_Accelerator/CSIM/Layer_Norm_0612/src/layernorm.cpp</first>
											<second>layernorm</second>
										</first>
										<second>52</second>
									</item>
								</second>
							</item>
						</inlineStackInfo>
						<originalName></originalName>
						<rtlName></rtlName>
						<control></control>
						<opType></opType>
						<implIndex></implIndex>
						<coreName></coreName>
						<isStorage>0</isStorage>
						<storageDepth>0</storageDepth>
						<coreId>0</coreId>
						<rtlModuleName></rtlModuleName>
					</Obj>
					<bitwidth>32</bitwidth>
				</Value>
				<oprand_edges>
					<count>1</count>
					<item_version>0</item_version>
					<item>159</item>
				</oprand_edges>
				<opcode>alloca</opcode>
				<m_Display>0</m_Display>
				<m_isOnCriticalPath>0</m_isOnCriticalPath>
				<m_isLCDNode>0</m_isLCDNode>
				<m_isStartOfPath>0</m_isStartOfPath>
				<m_delay>0.00</m_delay>
				<m_topoIndex>14</m_topoIndex>
				<m_clusterGroupNumber>-1</m_clusterGroupNumber>
			</item>
			<item class_id_reference="9" object_id="_29">
				<Value>
					<Obj>
						<type>0</type>
						<id>39</id>
						<name>rows_c19</name>
						<fileName>/home/ytq/codeField/Prediction_Model_Accelerator/CSIM/Layer_Norm_0612/src/layernorm.cpp</fileName>
						<fileDirectory>/home/ytq/codeField/Prediction_Model_Accelerator/CSIM/Layer_Norm_0612</fileDirectory>
						<lineNumber>52</lineNumber>
						<contextFuncName>layernorm</contextFuncName>
						<contextNormFuncName>layernorm</contextNormFuncName>
						<inlineStackInfo>
							<count>1</count>
							<item_version>0</item_version>
							<item>
								<first>/home/ytq/codeField/Prediction_Model_Accelerator/CSIM/Layer_Norm_0612</first>
								<second>
									<count>1</count>
									<item_version>0</item_version>
									<item>
										<first>
											<first>/home/ytq/codeField/Prediction_Model_Accelerator/CSIM/Layer_Norm_0612/src/layernorm.cpp</first>
											<second>layernorm</second>
										</first>
										<second>52</second>
									</item>
								</second>
							</item>
						</inlineStackInfo>
						<originalName></originalName>
						<rtlName></rtlName>
						<control></control>
						<opType></opType>
						<implIndex></implIndex>
						<coreName></coreName>
						<isStorage>0</isStorage>
						<storageDepth>0</storageDepth>
						<coreId>2990070032</coreId>
						<rtlModuleName></rtlModuleName>
					</Obj>
					<bitwidth>32</bitwidth>
				</Value>
				<oprand_edges>
					<count>1</count>
					<item_version>0</item_version>
					<item>160</item>
				</oprand_edges>
				<opcode>alloca</opcode>
				<m_Display>0</m_Display>
				<m_isOnCriticalPath>0</m_isOnCriticalPath>
				<m_isLCDNode>0</m_isLCDNode>
				<m_isStartOfPath>0</m_isStartOfPath>
				<m_delay>0.00</m_delay>
				<m_topoIndex>15</m_topoIndex>
				<m_clusterGroupNumber>-1</m_clusterGroupNumber>
			</item>
			<item class_id_reference="9" object_id="_30">
				<Value>
					<Obj>
						<type>0</type>
						<id>42</id>
						<name>rows_c18</name>
						<fileName>/home/ytq/codeField/Prediction_Model_Accelerator/CSIM/Layer_Norm_0612/src/layernorm.cpp</fileName>
						<fileDirectory>/home/ytq/codeField/Prediction_Model_Accelerator/CSIM/Layer_Norm_0612</fileDirectory>
						<lineNumber>52</lineNumber>
						<contextFuncName>layernorm</contextFuncName>
						<contextNormFuncName>layernorm</contextNormFuncName>
						<inlineStackInfo>
							<count>1</count>
							<item_version>0</item_version>
							<item>
								<first>/home/ytq/codeField/Prediction_Model_Accelerator/CSIM/Layer_Norm_0612</first>
								<second>
									<count>1</count>
									<item_version>0</item_version>
									<item>
										<first>
											<first>/home/ytq/codeField/Prediction_Model_Accelerator/CSIM/Layer_Norm_0612/src/layernorm.cpp</first>
											<second>layernorm</second>
										</first>
										<second>52</second>
									</item>
								</second>
							</item>
						</inlineStackInfo>
						<originalName></originalName>
						<rtlName></rtlName>
						<control></control>
						<opType></opType>
						<implIndex></implIndex>
						<coreName></coreName>
						<isStorage>0</isStorage>
						<storageDepth>0</storageDepth>
						<coreId>1702258035</coreId>
						<rtlModuleName></rtlModuleName>
					</Obj>
					<bitwidth>32</bitwidth>
				</Value>
				<oprand_edges>
					<count>1</count>
					<item_version>0</item_version>
					<item>161</item>
				</oprand_edges>
				<opcode>alloca</opcode>
				<m_Display>0</m_Display>
				<m_isOnCriticalPath>0</m_isOnCriticalPath>
				<m_isLCDNode>0</m_isLCDNode>
				<m_isStartOfPath>0</m_isStartOfPath>
				<m_delay>0.00</m_delay>
				<m_topoIndex>16</m_topoIndex>
				<m_clusterGroupNumber>-1</m_clusterGroupNumber>
			</item>
			<item class_id_reference="9" object_id="_31">
				<Value>
					<Obj>
						<type>0</type>
						<id>45</id>
						<name>rows_c17</name>
						<fileName>/home/ytq/codeField/Prediction_Model_Accelerator/CSIM/Layer_Norm_0612/src/layernorm.cpp</fileName>
						<fileDirectory>/home/ytq/codeField/Prediction_Model_Accelerator/CSIM/Layer_Norm_0612</fileDirectory>
						<lineNumber>52</lineNumber>
						<contextFuncName>layernorm</contextFuncName>
						<contextNormFuncName>layernorm</contextNormFuncName>
						<inlineStackInfo>
							<count>1</count>
							<item_version>0</item_version>
							<item>
								<first>/home/ytq/codeField/Prediction_Model_Accelerator/CSIM/Layer_Norm_0612</first>
								<second>
									<count>1</count>
									<item_version>0</item_version>
									<item>
										<first>
											<first>/home/ytq/codeField/Prediction_Model_Accelerator/CSIM/Layer_Norm_0612/src/layernorm.cpp</first>
											<second>layernorm</second>
										</first>
										<second>52</second>
									</item>
								</second>
							</item>
						</inlineStackInfo>
						<originalName></originalName>
						<rtlName></rtlName>
						<control></control>
						<opType></opType>
						<implIndex></implIndex>
						<coreName></coreName>
						<isStorage>0</isStorage>
						<storageDepth>0</storageDepth>
						<coreId>2989306128</coreId>
						<rtlModuleName></rtlModuleName>
					</Obj>
					<bitwidth>32</bitwidth>
				</Value>
				<oprand_edges>
					<count>1</count>
					<item_version>0</item_version>
					<item>162</item>
				</oprand_edges>
				<opcode>alloca</opcode>
				<m_Display>0</m_Display>
				<m_isOnCriticalPath>0</m_isOnCriticalPath>
				<m_isLCDNode>0</m_isLCDNode>
				<m_isStartOfPath>0</m_isStartOfPath>
				<m_delay>0.00</m_delay>
				<m_topoIndex>17</m_topoIndex>
				<m_clusterGroupNumber>-1</m_clusterGroupNumber>
			</item>
			<item class_id_reference="9" object_id="_32">
				<Value>
					<Obj>
						<type>0</type>
						<id>48</id>
						<name>rows_c</name>
						<fileName>/home/ytq/codeField/Prediction_Model_Accelerator/CSIM/Layer_Norm_0612/src/layernorm.cpp</fileName>
						<fileDirectory>/home/ytq/codeField/Prediction_Model_Accelerator/CSIM/Layer_Norm_0612</fileDirectory>
						<lineNumber>52</lineNumber>
						<contextFuncName>layernorm</contextFuncName>
						<contextNormFuncName>layernorm</contextNormFuncName>
						<inlineStackInfo>
							<count>1</count>
							<item_version>0</item_version>
							<item>
								<first>/home/ytq/codeField/Prediction_Model_Accelerator/CSIM/Layer_Norm_0612</first>
								<second>
									<count>1</count>
									<item_version>0</item_version>
									<item>
										<first>
											<first>/home/ytq/codeField/Prediction_Model_Accelerator/CSIM/Layer_Norm_0612/src/layernorm.cpp</first>
											<second>layernorm</second>
										</first>
										<second>52</second>
									</item>
								</second>
							</item>
						</inlineStackInfo>
						<originalName></originalName>
						<rtlName></rtlName>
						<control></control>
						<opType></opType>
						<implIndex></implIndex>
						<coreName></coreName>
						<isStorage>0</isStorage>
						<storageDepth>0</storageDepth>
						<coreId>2988645696</coreId>
						<rtlModuleName></rtlModuleName>
					</Obj>
					<bitwidth>32</bitwidth>
				</Value>
				<oprand_edges>
					<count>1</count>
					<item_version>0</item_version>
					<item>163</item>
				</oprand_edges>
				<opcode>alloca</opcode>
				<m_Display>0</m_Display>
				<m_isOnCriticalPath>0</m_isOnCriticalPath>
				<m_isLCDNode>0</m_isLCDNode>
				<m_isStartOfPath>0</m_isStartOfPath>
				<m_delay>0.00</m_delay>
				<m_topoIndex>18</m_topoIndex>
				<m_clusterGroupNumber>-1</m_clusterGroupNumber>
			</item>
			<item class_id_reference="9" object_id="_33">
				<Value>
					<Obj>
						<type>0</type>
						<id>51</id>
						<name>output_data_addr_c</name>
						<fileName>/home/ytq/codeField/Prediction_Model_Accelerator/CSIM/Layer_Norm_0612/src/layernorm.cpp</fileName>
						<fileDirectory>/home/ytq/codeField/Prediction_Model_Accelerator/CSIM/Layer_Norm_0612</fileDirectory>
						<lineNumber>52</lineNumber>
						<contextFuncName>layernorm</contextFuncName>
						<contextNormFuncName>layernorm</contextNormFuncName>
						<inlineStackInfo>
							<count>1</count>
							<item_version>0</item_version>
							<item>
								<first>/home/ytq/codeField/Prediction_Model_Accelerator/CSIM/Layer_Norm_0612</first>
								<second>
									<count>1</count>
									<item_version>0</item_version>
									<item>
										<first>
											<first>/home/ytq/codeField/Prediction_Model_Accelerator/CSIM/Layer_Norm_0612/src/layernorm.cpp</first>
											<second>layernorm</second>
										</first>
										<second>52</second>
									</item>
								</second>
							</item>
						</inlineStackInfo>
						<originalName></originalName>
						<rtlName></rtlName>
						<control></control>
						<opType></opType>
						<implIndex></implIndex>
						<coreName></coreName>
						<isStorage>0</isStorage>
						<storageDepth>0</storageDepth>
						<coreId>2990070032</coreId>
						<rtlModuleName></rtlModuleName>
					</Obj>
					<bitwidth>32</bitwidth>
				</Value>
				<oprand_edges>
					<count>1</count>
					<item_version>0</item_version>
					<item>164</item>
				</oprand_edges>
				<opcode>alloca</opcode>
				<m_Display>0</m_Display>
				<m_isOnCriticalPath>0</m_isOnCriticalPath>
				<m_isLCDNode>0</m_isLCDNode>
				<m_isStartOfPath>0</m_isStartOfPath>
				<m_delay>0.00</m_delay>
				<m_topoIndex>19</m_topoIndex>
				<m_clusterGroupNumber>-1</m_clusterGroupNumber>
			</item>
			<item class_id_reference="9" object_id="_34">
				<Value>
					<Obj>
						<type>0</type>
						<id>94</id>
						<name>data_copy_a</name>
						<fileName>/home/ytq/codeField/Prediction_Model_Accelerator/CSIM/Layer_Norm_0612/src/layernorm.cpp</fileName>
						<fileDirectory>/home/ytq/codeField/Prediction_Model_Accelerator/CSIM/Layer_Norm_0612</fileDirectory>
						<lineNumber>32</lineNumber>
						<contextFuncName>layernorm</contextFuncName>
						<contextNormFuncName>layernorm</contextNormFuncName>
						<inlineStackInfo>
							<count>1</count>
							<item_version>0</item_version>
							<item>
								<first>/home/ytq/codeField/Prediction_Model_Accelerator/CSIM/Layer_Norm_0612</first>
								<second>
									<count>1</count>
									<item_version>0</item_version>
									<item>
										<first>
											<first>/home/ytq/codeField/Prediction_Model_Accelerator/CSIM/Layer_Norm_0612/src/layernorm.cpp</first>
											<second>layernorm</second>
										</first>
										<second>32</second>
									</item>
								</second>
							</item>
						</inlineStackInfo>
						<originalName>data_copy_a</originalName>
						<rtlName></rtlName>
						<control></control>
						<opType></opType>
						<implIndex></implIndex>
						<coreName></coreName>
						<isStorage>0</isStorage>
						<storageDepth>0</storageDepth>
						<coreId>2988647280</coreId>
						<rtlModuleName></rtlModuleName>
					</Obj>
					<bitwidth>256</bitwidth>
				</Value>
				<oprand_edges>
					<count>1</count>
					<item_version>0</item_version>
					<item>165</item>
				</oprand_edges>
				<opcode>alloca</opcode>
				<m_Display>0</m_Display>
				<m_isOnCriticalPath>0</m_isOnCriticalPath>
				<m_isLCDNode>0</m_isLCDNode>
				<m_isStartOfPath>0</m_isStartOfPath>
				<m_delay>0.00</m_delay>
				<m_topoIndex>20</m_topoIndex>
				<m_clusterGroupNumber>-1</m_clusterGroupNumber>
			</item>
			<item class_id_reference="9" object_id="_35">
				<Value>
					<Obj>
						<type>0</type>
						<id>97</id>
						<name>data_copy_b</name>
						<fileName>/home/ytq/codeField/Prediction_Model_Accelerator/CSIM/Layer_Norm_0612/src/layernorm.cpp</fileName>
						<fileDirectory>/home/ytq/codeField/Prediction_Model_Accelerator/CSIM/Layer_Norm_0612</fileDirectory>
						<lineNumber>34</lineNumber>
						<contextFuncName>layernorm</contextFuncName>
						<contextNormFuncName>layernorm</contextNormFuncName>
						<inlineStackInfo>
							<count>1</count>
							<item_version>0</item_version>
							<item>
								<first>/home/ytq/codeField/Prediction_Model_Accelerator/CSIM/Layer_Norm_0612</first>
								<second>
									<count>1</count>
									<item_version>0</item_version>
									<item>
										<first>
											<first>/home/ytq/codeField/Prediction_Model_Accelerator/CSIM/Layer_Norm_0612/src/layernorm.cpp</first>
											<second>layernorm</second>
										</first>
										<second>34</second>
									</item>
								</second>
							</item>
						</inlineStackInfo>
						<originalName>data_copy_b</originalName>
						<rtlName></rtlName>
						<control></control>
						<opType></opType>
						<implIndex></implIndex>
						<coreName></coreName>
						<isStorage>0</isStorage>
						<storageDepth>0</storageDepth>
						<coreId>2990070032</coreId>
						<rtlModuleName></rtlModuleName>
					</Obj>
					<bitwidth>256</bitwidth>
				</Value>
				<oprand_edges>
					<count>1</count>
					<item_version>0</item_version>
					<item>166</item>
				</oprand_edges>
				<opcode>alloca</opcode>
				<m_Display>0</m_Display>
				<m_isOnCriticalPath>0</m_isOnCriticalPath>
				<m_isLCDNode>0</m_isLCDNode>
				<m_isStartOfPath>0</m_isStartOfPath>
				<m_delay>0.00</m_delay>
				<m_topoIndex>21</m_topoIndex>
				<m_clusterGroupNumber>-1</m_clusterGroupNumber>
			</item>
			<item class_id_reference="9" object_id="_36">
				<Value>
					<Obj>
						<type>0</type>
						<id>100</id>
						<name>data_copy_c</name>
						<fileName>/home/ytq/codeField/Prediction_Model_Accelerator/CSIM/Layer_Norm_0612/src/layernorm.cpp</fileName>
						<fileDirectory>/home/ytq/codeField/Prediction_Model_Accelerator/CSIM/Layer_Norm_0612</fileDirectory>
						<lineNumber>36</lineNumber>
						<contextFuncName>layernorm</contextFuncName>
						<contextNormFuncName>layernorm</contextNormFuncName>
						<inlineStackInfo>
							<count>1</count>
							<item_version>0</item_version>
							<item>
								<first>/home/ytq/codeField/Prediction_Model_Accelerator/CSIM/Layer_Norm_0612</first>
								<second>
									<count>1</count>
									<item_version>0</item_version>
									<item>
										<first>
											<first>/home/ytq/codeField/Prediction_Model_Accelerator/CSIM/Layer_Norm_0612/src/layernorm.cpp</first>
											<second>layernorm</second>
										</first>
										<second>36</second>
									</item>
								</second>
							</item>
						</inlineStackInfo>
						<originalName>data_copy_c</originalName>
						<rtlName></rtlName>
						<control></control>
						<opType></opType>
						<implIndex></implIndex>
						<coreName></coreName>
						<isStorage>0</isStorage>
						<storageDepth>0</storageDepth>
						<coreId>2990298656</coreId>
						<rtlModuleName></rtlModuleName>
					</Obj>
					<bitwidth>256</bitwidth>
				</Value>
				<oprand_edges>
					<count>1</count>
					<item_version>0</item_version>
					<item>167</item>
				</oprand_edges>
				<opcode>alloca</opcode>
				<m_Display>0</m_Display>
				<m_isOnCriticalPath>0</m_isOnCriticalPath>
				<m_isLCDNode>0</m_isLCDNode>
				<m_isStartOfPath>0</m_isStartOfPath>
				<m_delay>0.00</m_delay>
				<m_topoIndex>22</m_topoIndex>
				<m_clusterGroupNumber>-1</m_clusterGroupNumber>
			</item>
			<item class_id_reference="9" object_id="_37">
				<Value>
					<Obj>
						<type>0</type>
						<id>103</id>
						<name>gamma</name>
						<fileName>/home/ytq/codeField/Prediction_Model_Accelerator/CSIM/Layer_Norm_0612/src/layernorm.cpp</fileName>
						<fileDirectory>/home/ytq/codeField/Prediction_Model_Accelerator/CSIM/Layer_Norm_0612</fileDirectory>
						<lineNumber>38</lineNumber>
						<contextFuncName>layernorm</contextFuncName>
						<contextNormFuncName>layernorm</contextNormFuncName>
						<inlineStackInfo>
							<count>1</count>
							<item_version>0</item_version>
							<item>
								<first>/home/ytq/codeField/Prediction_Model_Accelerator/CSIM/Layer_Norm_0612</first>
								<second>
									<count>1</count>
									<item_version>0</item_version>
									<item>
										<first>
											<first>/home/ytq/codeField/Prediction_Model_Accelerator/CSIM/Layer_Norm_0612/src/layernorm.cpp</first>
											<second>layernorm</second>
										</first>
										<second>38</second>
									</item>
								</second>
							</item>
						</inlineStackInfo>
						<originalName>gamma</originalName>
						<rtlName></rtlName>
						<control></control>
						<opType></opType>
						<implIndex></implIndex>
						<coreName></coreName>
						<isStorage>0</isStorage>
						<storageDepth>0</storageDepth>
						<coreId>2988646608</coreId>
						<rtlModuleName></rtlModuleName>
					</Obj>
					<bitwidth>256</bitwidth>
				</Value>
				<oprand_edges>
					<count>1</count>
					<item_version>0</item_version>
					<item>168</item>
				</oprand_edges>
				<opcode>alloca</opcode>
				<m_Display>0</m_Display>
				<m_isOnCriticalPath>0</m_isOnCriticalPath>
				<m_isLCDNode>0</m_isLCDNode>
				<m_isStartOfPath>0</m_isStartOfPath>
				<m_delay>0.00</m_delay>
				<m_topoIndex>23</m_topoIndex>
				<m_clusterGroupNumber>-1</m_clusterGroupNumber>
			</item>
			<item class_id_reference="9" object_id="_38">
				<Value>
					<Obj>
						<type>0</type>
						<id>106</id>
						<name>beta</name>
						<fileName>/home/ytq/codeField/Prediction_Model_Accelerator/CSIM/Layer_Norm_0612/src/layernorm.cpp</fileName>
						<fileDirectory>/home/ytq/codeField/Prediction_Model_Accelerator/CSIM/Layer_Norm_0612</fileDirectory>
						<lineNumber>40</lineNumber>
						<contextFuncName>layernorm</contextFuncName>
						<contextNormFuncName>layernorm</contextNormFuncName>
						<inlineStackInfo>
							<count>1</count>
							<item_version>0</item_version>
							<item>
								<first>/home/ytq/codeField/Prediction_Model_Accelerator/CSIM/Layer_Norm_0612</first>
								<second>
									<count>1</count>
									<item_version>0</item_version>
									<item>
										<first>
											<first>/home/ytq/codeField/Prediction_Model_Accelerator/CSIM/Layer_Norm_0612/src/layernorm.cpp</first>
											<second>layernorm</second>
										</first>
										<second>40</second>
									</item>
								</second>
							</item>
						</inlineStackInfo>
						<originalName>beta</originalName>
						<rtlName></rtlName>
						<control></control>
						<opType></opType>
						<implIndex></implIndex>
						<coreName></coreName>
						<isStorage>0</isStorage>
						<storageDepth>0</storageDepth>
						<coreId>2989772664</coreId>
						<rtlModuleName></rtlModuleName>
					</Obj>
					<bitwidth>256</bitwidth>
				</Value>
				<oprand_edges>
					<count>1</count>
					<item_version>0</item_version>
					<item>169</item>
				</oprand_edges>
				<opcode>alloca</opcode>
				<m_Display>0</m_Display>
				<m_isOnCriticalPath>0</m_isOnCriticalPath>
				<m_isLCDNode>0</m_isLCDNode>
				<m_isStartOfPath>0</m_isStartOfPath>
				<m_delay>0.00</m_delay>
				<m_topoIndex>24</m_topoIndex>
				<m_clusterGroupNumber>-1</m_clusterGroupNumber>
			</item>
			<item class_id_reference="9" object_id="_39">
				<Value>
					<Obj>
						<type>0</type>
						<id>109</id>
						<name>mean_a</name>
						<fileName>/home/ytq/codeField/Prediction_Model_Accelerator/CSIM/Layer_Norm_0612/src/layernorm.cpp</fileName>
						<fileDirectory>/home/ytq/codeField/Prediction_Model_Accelerator/CSIM/Layer_Norm_0612</fileDirectory>
						<lineNumber>42</lineNumber>
						<contextFuncName>layernorm</contextFuncName>
						<contextNormFuncName>layernorm</contextNormFuncName>
						<inlineStackInfo>
							<count>1</count>
							<item_version>0</item_version>
							<item>
								<first>/home/ytq/codeField/Prediction_Model_Accelerator/CSIM/Layer_Norm_0612</first>
								<second>
									<count>1</count>
									<item_version>0</item_version>
									<item>
										<first>
											<first>/home/ytq/codeField/Prediction_Model_Accelerator/CSIM/Layer_Norm_0612/src/layernorm.cpp</first>
											<second>layernorm</second>
										</first>
										<second>42</second>
									</item>
								</second>
							</item>
						</inlineStackInfo>
						<originalName>mean_a</originalName>
						<rtlName></rtlName>
						<control></control>
						<opType></opType>
						<implIndex></implIndex>
						<coreName></coreName>
						<isStorage>0</isStorage>
						<storageDepth>0</storageDepth>
						<coreId>4294967040</coreId>
						<rtlModuleName></rtlModuleName>
					</Obj>
					<bitwidth>8</bitwidth>
				</Value>
				<oprand_edges>
					<count>1</count>
					<item_version>0</item_version>
					<item>170</item>
				</oprand_edges>
				<opcode>alloca</opcode>
				<m_Display>0</m_Display>
				<m_isOnCriticalPath>0</m_isOnCriticalPath>
				<m_isLCDNode>0</m_isLCDNode>
				<m_isStartOfPath>0</m_isStartOfPath>
				<m_delay>0.00</m_delay>
				<m_topoIndex>25</m_topoIndex>
				<m_clusterGroupNumber>-1</m_clusterGroupNumber>
			</item>
			<item class_id_reference="9" object_id="_40">
				<Value>
					<Obj>
						<type>0</type>
						<id>112</id>
						<name>mean_b</name>
						<fileName>/home/ytq/codeField/Prediction_Model_Accelerator/CSIM/Layer_Norm_0612/src/layernorm.cpp</fileName>
						<fileDirectory>/home/ytq/codeField/Prediction_Model_Accelerator/CSIM/Layer_Norm_0612</fileDirectory>
						<lineNumber>44</lineNumber>
						<contextFuncName>layernorm</contextFuncName>
						<contextNormFuncName>layernorm</contextNormFuncName>
						<inlineStackInfo>
							<count>1</count>
							<item_version>0</item_version>
							<item>
								<first>/home/ytq/codeField/Prediction_Model_Accelerator/CSIM/Layer_Norm_0612</first>
								<second>
									<count>1</count>
									<item_version>0</item_version>
									<item>
										<first>
											<first>/home/ytq/codeField/Prediction_Model_Accelerator/CSIM/Layer_Norm_0612/src/layernorm.cpp</first>
											<second>layernorm</second>
										</first>
										<second>44</second>
									</item>
								</second>
							</item>
						</inlineStackInfo>
						<originalName>mean_b</originalName>
						<rtlName></rtlName>
						<control></control>
						<opType></opType>
						<implIndex></implIndex>
						<coreName></coreName>
						<isStorage>0</isStorage>
						<storageDepth>0</storageDepth>
						<coreId>4294967295</coreId>
						<rtlModuleName></rtlModuleName>
					</Obj>
					<bitwidth>8</bitwidth>
				</Value>
				<oprand_edges>
					<count>1</count>
					<item_version>0</item_version>
					<item>171</item>
				</oprand_edges>
				<opcode>alloca</opcode>
				<m_Display>0</m_Display>
				<m_isOnCriticalPath>0</m_isOnCriticalPath>
				<m_isLCDNode>0</m_isLCDNode>
				<m_isStartOfPath>0</m_isStartOfPath>
				<m_delay>0.00</m_delay>
				<m_topoIndex>26</m_topoIndex>
				<m_clusterGroupNumber>-1</m_clusterGroupNumber>
			</item>
			<item class_id_reference="9" object_id="_41">
				<Value>
					<Obj>
						<type>0</type>
						<id>115</id>
						<name>stddev</name>
						<fileName>/home/ytq/codeField/Prediction_Model_Accelerator/CSIM/Layer_Norm_0612/src/layernorm.cpp</fileName>
						<fileDirectory>/home/ytq/codeField/Prediction_Model_Accelerator/CSIM/Layer_Norm_0612</fileDirectory>
						<lineNumber>46</lineNumber>
						<contextFuncName>layernorm</contextFuncName>
						<contextNormFuncName>layernorm</contextNormFuncName>
						<inlineStackInfo>
							<count>1</count>
							<item_version>0</item_version>
							<item>
								<first>/home/ytq/codeField/Prediction_Model_Accelerator/CSIM/Layer_Norm_0612</first>
								<second>
									<count>1</count>
									<item_version>0</item_version>
									<item>
										<first>
											<first>/home/ytq/codeField/Prediction_Model_Accelerator/CSIM/Layer_Norm_0612/src/layernorm.cpp</first>
											<second>layernorm</second>
										</first>
										<second>46</second>
									</item>
								</second>
							</item>
						</inlineStackInfo>
						<originalName>stddev</originalName>
						<rtlName></rtlName>
						<control></control>
						<opType></opType>
						<implIndex></implIndex>
						<coreName></coreName>
						<isStorage>0</isStorage>
						<storageDepth>0</storageDepth>
						<coreId>2989458432</coreId>
						<rtlModuleName></rtlModuleName>
					</Obj>
					<bitwidth>32</bitwidth>
				</Value>
				<oprand_edges>
					<count>1</count>
					<item_version>0</item_version>
					<item>172</item>
				</oprand_edges>
				<opcode>alloca</opcode>
				<m_Display>0</m_Display>
				<m_isOnCriticalPath>0</m_isOnCriticalPath>
				<m_isLCDNode>0</m_isLCDNode>
				<m_isStartOfPath>0</m_isStartOfPath>
				<m_delay>0.00</m_delay>
				<m_topoIndex>27</m_topoIndex>
				<m_clusterGroupNumber>-1</m_clusterGroupNumber>
			</item>
			<item class_id_reference="9" object_id="_42">
				<Value>
					<Obj>
						<type>0</type>
						<id>118</id>
						<name>norm</name>
						<fileName>/home/ytq/codeField/Prediction_Model_Accelerator/CSIM/Layer_Norm_0612/src/layernorm.cpp</fileName>
						<fileDirectory>/home/ytq/codeField/Prediction_Model_Accelerator/CSIM/Layer_Norm_0612</fileDirectory>
						<lineNumber>48</lineNumber>
						<contextFuncName>layernorm</contextFuncName>
						<contextNormFuncName>layernorm</contextNormFuncName>
						<inlineStackInfo>
							<count>1</count>
							<item_version>0</item_version>
							<item>
								<first>/home/ytq/codeField/Prediction_Model_Accelerator/CSIM/Layer_Norm_0612</first>
								<second>
									<count>1</count>
									<item_version>0</item_version>
									<item>
										<first>
											<first>/home/ytq/codeField/Prediction_Model_Accelerator/CSIM/Layer_Norm_0612/src/layernorm.cpp</first>
											<second>layernorm</second>
										</first>
										<second>48</second>
									</item>
								</second>
							</item>
						</inlineStackInfo>
						<originalName>norm</originalName>
						<rtlName></rtlName>
						<control></control>
						<opType></opType>
						<implIndex></implIndex>
						<coreName></coreName>
						<isStorage>0</isStorage>
						<storageDepth>0</storageDepth>
						<coreId>4294967295</coreId>
						<rtlModuleName></rtlModuleName>
					</Obj>
					<bitwidth>256</bitwidth>
				</Value>
				<oprand_edges>
					<count>1</count>
					<item_version>0</item_version>
					<item>173</item>
				</oprand_edges>
				<opcode>alloca</opcode>
				<m_Display>0</m_Display>
				<m_isOnCriticalPath>0</m_isOnCriticalPath>
				<m_isLCDNode>0</m_isLCDNode>
				<m_isStartOfPath>0</m_isStartOfPath>
				<m_delay>0.00</m_delay>
				<m_topoIndex>28</m_topoIndex>
				<m_clusterGroupNumber>-1</m_clusterGroupNumber>
			</item>
			<item class_id_reference="9" object_id="_43">
				<Value>
					<Obj>
						<type>0</type>
						<id>121</id>
						<name>store_temp</name>
						<fileName>/home/ytq/codeField/Prediction_Model_Accelerator/CSIM/Layer_Norm_0612/src/layernorm.cpp</fileName>
						<fileDirectory>/home/ytq/codeField/Prediction_Model_Accelerator/CSIM/Layer_Norm_0612</fileDirectory>
						<lineNumber>50</lineNumber>
						<contextFuncName>layernorm</contextFuncName>
						<contextNormFuncName>layernorm</contextNormFuncName>
						<inlineStackInfo>
							<count>1</count>
							<item_version>0</item_version>
							<item>
								<first>/home/ytq/codeField/Prediction_Model_Accelerator/CSIM/Layer_Norm_0612</first>
								<second>
									<count>1</count>
									<item_version>0</item_version>
									<item>
										<first>
											<first>/home/ytq/codeField/Prediction_Model_Accelerator/CSIM/Layer_Norm_0612/src/layernorm.cpp</first>
											<second>layernorm</second>
										</first>
										<second>50</second>
									</item>
								</second>
							</item>
						</inlineStackInfo>
						<originalName>store_temp</originalName>
						<rtlName></rtlName>
						<control></control>
						<opType></opType>
						<implIndex></implIndex>
						<coreName></coreName>
						<isStorage>0</isStorage>
						<storageDepth>0</storageDepth>
						<coreId>2989275696</coreId>
						<rtlModuleName></rtlModuleName>
					</Obj>
					<bitwidth>256</bitwidth>
				</Value>
				<oprand_edges>
					<count>1</count>
					<item_version>0</item_version>
					<item>174</item>
				</oprand_edges>
				<opcode>alloca</opcode>
				<m_Display>0</m_Display>
				<m_isOnCriticalPath>0</m_isOnCriticalPath>
				<m_isLCDNode>0</m_isLCDNode>
				<m_isStartOfPath>0</m_isStartOfPath>
				<m_delay>0.00</m_delay>
				<m_topoIndex>29</m_topoIndex>
				<m_clusterGroupNumber>-1</m_clusterGroupNumber>
			</item>
			<item class_id_reference="9" object_id="_44">
				<Value>
					<Obj>
						<type>0</type>
						<id>124</id>
						<name>_ln52</name>
						<fileName>/home/ytq/codeField/Prediction_Model_Accelerator/CSIM/Layer_Norm_0612/src/layernorm.cpp</fileName>
						<fileDirectory>/home/ytq/codeField/Prediction_Model_Accelerator/CSIM/Layer_Norm_0612</fileDirectory>
						<lineNumber>52</lineNumber>
						<contextFuncName>layernorm</contextFuncName>
						<contextNormFuncName>layernorm</contextNormFuncName>
						<inlineStackInfo>
							<count>1</count>
							<item_version>0</item_version>
							<item>
								<first>/home/ytq/codeField/Prediction_Model_Accelerator/CSIM/Layer_Norm_0612</first>
								<second>
									<count>1</count>
									<item_version>0</item_version>
									<item>
										<first>
											<first>/home/ytq/codeField/Prediction_Model_Accelerator/CSIM/Layer_Norm_0612/src/layernorm.cpp</first>
											<second>layernorm</second>
										</first>
										<second>52</second>
									</item>
								</second>
							</item>
						</inlineStackInfo>
						<originalName></originalName>
						<rtlName></rtlName>
						<control></control>
						<opType></opType>
						<implIndex></implIndex>
						<coreName></coreName>
						<isStorage>0</isStorage>
						<storageDepth>0</storageDepth>
						<coreId>0</coreId>
						<rtlModuleName></rtlModuleName>
					</Obj>
					<bitwidth>0</bitwidth>
				</Value>
				<oprand_edges>
					<count>5</count>
					<item_version>0</item_version>
					<item>176</item>
					<item>177</item>
					<item>178</item>
					<item>179</item>
					<item>180</item>
				</oprand_edges>
				<opcode>call</opcode>
				<m_Display>0</m_Display>
				<m_isOnCriticalPath>0</m_isOnCriticalPath>
				<m_isLCDNode>0</m_isLCDNode>
				<m_isStartOfPath>0</m_isStartOfPath>
				<m_delay>1.90</m_delay>
				<m_topoIndex>30</m_topoIndex>
				<m_clusterGroupNumber>-1</m_clusterGroupNumber>
			</item>
			<item class_id_reference="9" object_id="_45">
				<Value>
					<Obj>
						<type>0</type>
						<id>125</id>
						<name>_ln53</name>
						<fileName>/home/ytq/codeField/Prediction_Model_Accelerator/CSIM/Layer_Norm_0612/src/layernorm.cpp</fileName>
						<fileDirectory>/home/ytq/codeField/Prediction_Model_Accelerator/CSIM/Layer_Norm_0612</fileDirectory>
						<lineNumber>53</lineNumber>
						<contextFuncName>layernorm</contextFuncName>
						<contextNormFuncName>layernorm</contextNormFuncName>
						<inlineStackInfo>
							<count>1</count>
							<item_version>0</item_version>
							<item>
								<first>/home/ytq/codeField/Prediction_Model_Accelerator/CSIM/Layer_Norm_0612</first>
								<second>
									<count>1</count>
									<item_version>0</item_version>
									<item>
										<first>
											<first>/home/ytq/codeField/Prediction_Model_Accelerator/CSIM/Layer_Norm_0612/src/layernorm.cpp</first>
											<second>layernorm</second>
										</first>
										<second>53</second>
									</item>
								</second>
							</item>
						</inlineStackInfo>
						<originalName></originalName>
						<rtlName></rtlName>
						<control></control>
						<opType></opType>
						<implIndex></implIndex>
						<coreName></coreName>
						<isStorage>0</isStorage>
						<storageDepth>0</storageDepth>
						<coreId>2989261616</coreId>
						<rtlModuleName></rtlModuleName>
					</Obj>
					<bitwidth>0</bitwidth>
				</Value>
				<oprand_edges>
					<count>11</count>
					<item_version>0</item_version>
					<item>182</item>
					<item>183</item>
					<item>184</item>
					<item>185</item>
					<item>186</item>
					<item>187</item>
					<item>188</item>
					<item>189</item>
					<item>190</item>
					<item>191</item>
					<item>192</item>
				</oprand_edges>
				<opcode>call</opcode>
				<m_Display>0</m_Display>
				<m_isOnCriticalPath>0</m_isOnCriticalPath>
				<m_isLCDNode>0</m_isLCDNode>
				<m_isStartOfPath>0</m_isStartOfPath>
				<m_delay>1.83</m_delay>
				<m_topoIndex>31</m_topoIndex>
				<m_clusterGroupNumber>-1</m_clusterGroupNumber>
			</item>
			<item class_id_reference="9" object_id="_46">
				<Value>
					<Obj>
						<type>0</type>
						<id>126</id>
						<name>_ln54</name>
						<fileName>/home/ytq/codeField/Prediction_Model_Accelerator/CSIM/Layer_Norm_0612/src/layernorm.cpp</fileName>
						<fileDirectory>/home/ytq/codeField/Prediction_Model_Accelerator/CSIM/Layer_Norm_0612</fileDirectory>
						<lineNumber>54</lineNumber>
						<contextFuncName>layernorm</contextFuncName>
						<contextNormFuncName>layernorm</contextNormFuncName>
						<inlineStackInfo>
							<count>1</count>
							<item_version>0</item_version>
							<item>
								<first>/home/ytq/codeField/Prediction_Model_Accelerator/CSIM/Layer_Norm_0612</first>
								<second>
									<count>1</count>
									<item_version>0</item_version>
									<item>
										<first>
											<first>/home/ytq/codeField/Prediction_Model_Accelerator/CSIM/Layer_Norm_0612/src/layernorm.cpp</first>
											<second>layernorm</second>
										</first>
										<second>54</second>
									</item>
								</second>
							</item>
						</inlineStackInfo>
						<originalName></originalName>
						<rtlName></rtlName>
						<control></control>
						<opType></opType>
						<implIndex></implIndex>
						<coreName></coreName>
						<isStorage>0</isStorage>
						<storageDepth>0</storageDepth>
						<coreId>608</coreId>
						<rtlModuleName></rtlModuleName>
					</Obj>
					<bitwidth>0</bitwidth>
				</Value>
				<oprand_edges>
					<count>9</count>
					<item_version>0</item_version>
					<item>194</item>
					<item>195</item>
					<item>196</item>
					<item>197</item>
					<item>198</item>
					<item>199</item>
					<item>200</item>
					<item>201</item>
					<item>202</item>
				</oprand_edges>
				<opcode>call</opcode>
				<m_Display>0</m_Display>
				<m_isOnCriticalPath>0</m_isOnCriticalPath>
				<m_isLCDNode>0</m_isLCDNode>
				<m_isStartOfPath>0</m_isStartOfPath>
				<m_delay>2.41</m_delay>
				<m_topoIndex>32</m_topoIndex>
				<m_clusterGroupNumber>-1</m_clusterGroupNumber>
			</item>
			<item class_id_reference="9" object_id="_47">
				<Value>
					<Obj>
						<type>0</type>
						<id>127</id>
						<name>_ln55</name>
						<fileName>/home/ytq/codeField/Prediction_Model_Accelerator/CSIM/Layer_Norm_0612/src/layernorm.cpp</fileName>
						<fileDirectory>/home/ytq/codeField/Prediction_Model_Accelerator/CSIM/Layer_Norm_0612</fileDirectory>
						<lineNumber>55</lineNumber>
						<contextFuncName>layernorm</contextFuncName>
						<contextNormFuncName>layernorm</contextNormFuncName>
						<inlineStackInfo>
							<count>1</count>
							<item_version>0</item_version>
							<item>
								<first>/home/ytq/codeField/Prediction_Model_Accelerator/CSIM/Layer_Norm_0612</first>
								<second>
									<count>1</count>
									<item_version>0</item_version>
									<item>
										<first>
											<first>/home/ytq/codeField/Prediction_Model_Accelerator/CSIM/Layer_Norm_0612/src/layernorm.cpp</first>
											<second>layernorm</second>
										</first>
										<second>55</second>
									</item>
								</second>
							</item>
						</inlineStackInfo>
						<originalName></originalName>
						<rtlName></rtlName>
						<control></control>
						<opType></opType>
						<implIndex></implIndex>
						<coreName></coreName>
						<isStorage>0</isStorage>
						<storageDepth>0</storageDepth>
						<coreId>2990574672</coreId>
						<rtlModuleName></rtlModuleName>
					</Obj>
					<bitwidth>0</bitwidth>
				</Value>
				<oprand_edges>
					<count>9</count>
					<item_version>0</item_version>
					<item>204</item>
					<item>205</item>
					<item>206</item>
					<item>207</item>
					<item>208</item>
					<item>209</item>
					<item>210</item>
					<item>211</item>
					<item>1411</item>
				</oprand_edges>
				<opcode>call</opcode>
				<m_Display>0</m_Display>
				<m_isOnCriticalPath>0</m_isOnCriticalPath>
				<m_isLCDNode>0</m_isLCDNode>
				<m_isStartOfPath>0</m_isStartOfPath>
				<m_delay>0.00</m_delay>
				<m_topoIndex>33</m_topoIndex>
				<m_clusterGroupNumber>-1</m_clusterGroupNumber>
			</item>
			<item class_id_reference="9" object_id="_48">
				<Value>
					<Obj>
						<type>0</type>
						<id>128</id>
						<name>_ln56</name>
						<fileName>/home/ytq/codeField/Prediction_Model_Accelerator/CSIM/Layer_Norm_0612/src/layernorm.cpp</fileName>
						<fileDirectory>/home/ytq/codeField/Prediction_Model_Accelerator/CSIM/Layer_Norm_0612</fileDirectory>
						<lineNumber>56</lineNumber>
						<contextFuncName>layernorm</contextFuncName>
						<contextNormFuncName>layernorm</contextNormFuncName>
						<inlineStackInfo>
							<count>1</count>
							<item_version>0</item_version>
							<item>
								<first>/home/ytq/codeField/Prediction_Model_Accelerator/CSIM/Layer_Norm_0612</first>
								<second>
									<count>1</count>
									<item_version>0</item_version>
									<item>
										<first>
											<first>/home/ytq/codeField/Prediction_Model_Accelerator/CSIM/Layer_Norm_0612/src/layernorm.cpp</first>
											<second>layernorm</second>
										</first>
										<second>56</second>
									</item>
								</second>
							</item>
						</inlineStackInfo>
						<originalName></originalName>
						<rtlName></rtlName>
						<control></control>
						<opType></opType>
						<implIndex></implIndex>
						<coreName></coreName>
						<isStorage>0</isStorage>
						<storageDepth>0</storageDepth>
						<coreId>2990574064</coreId>
						<rtlModuleName></rtlModuleName>
					</Obj>
					<bitwidth>0</bitwidth>
				</Value>
				<oprand_edges>
					<count>9</count>
					<item_version>0</item_version>
					<item>213</item>
					<item>214</item>
					<item>215</item>
					<item>216</item>
					<item>217</item>
					<item>218</item>
					<item>219</item>
					<item>220</item>
					<item>1409</item>
				</oprand_edges>
				<opcode>call</opcode>
				<m_Display>0</m_Display>
				<m_isOnCriticalPath>0</m_isOnCriticalPath>
				<m_isLCDNode>0</m_isLCDNode>
				<m_isStartOfPath>0</m_isStartOfPath>
				<m_delay>0.00</m_delay>
				<m_topoIndex>34</m_topoIndex>
				<m_clusterGroupNumber>-1</m_clusterGroupNumber>
			</item>
			<item class_id_reference="9" object_id="_49">
				<Value>
					<Obj>
						<type>0</type>
						<id>129</id>
						<name>_ln57</name>
						<fileName>/home/ytq/codeField/Prediction_Model_Accelerator/CSIM/Layer_Norm_0612/src/layernorm.cpp</fileName>
						<fileDirectory>/home/ytq/codeField/Prediction_Model_Accelerator/CSIM/Layer_Norm_0612</fileDirectory>
						<lineNumber>57</lineNumber>
						<contextFuncName>layernorm</contextFuncName>
						<contextNormFuncName>layernorm</contextNormFuncName>
						<inlineStackInfo>
							<count>1</count>
							<item_version>0</item_version>
							<item>
								<first>/home/ytq/codeField/Prediction_Model_Accelerator/CSIM/Layer_Norm_0612</first>
								<second>
									<count>1</count>
									<item_version>0</item_version>
									<item>
										<first>
											<first>/home/ytq/codeField/Prediction_Model_Accelerator/CSIM/Layer_Norm_0612/src/layernorm.cpp</first>
											<second>layernorm</second>
										</first>
										<second>57</second>
									</item>
								</second>
							</item>
						</inlineStackInfo>
						<originalName></originalName>
						<rtlName></rtlName>
						<control></control>
						<opType></opType>
						<implIndex></implIndex>
						<coreName></coreName>
						<isStorage>0</isStorage>
						<storageDepth>0</storageDepth>
						<coreId>1463433843</coreId>
						<rtlModuleName></rtlModuleName>
					</Obj>
					<bitwidth>0</bitwidth>
				</Value>
				<oprand_edges>
					<count>13</count>
					<item_version>0</item_version>
					<item>222</item>
					<item>223</item>
					<item>224</item>
					<item>225</item>
					<item>226</item>
					<item>227</item>
					<item>228</item>
					<item>229</item>
					<item>230</item>
					<item>231</item>
					<item>232</item>
					<item>1408</item>
					<item>1410</item>
				</oprand_edges>
				<opcode>call</opcode>
				<m_Display>0</m_Display>
				<m_isOnCriticalPath>0</m_isOnCriticalPath>
				<m_isLCDNode>0</m_isLCDNode>
				<m_isStartOfPath>0</m_isStartOfPath>
				<m_delay>0.00</m_delay>
				<m_topoIndex>35</m_topoIndex>
				<m_clusterGroupNumber>-1</m_clusterGroupNumber>
			</item>
			<item class_id_reference="9" object_id="_50">
				<Value>
					<Obj>
						<type>0</type>
						<id>130</id>
						<name>_ln59</name>
						<fileName>/home/ytq/codeField/Prediction_Model_Accelerator/CSIM/Layer_Norm_0612/src/layernorm.cpp</fileName>
						<fileDirectory>/home/ytq/codeField/Prediction_Model_Accelerator/CSIM/Layer_Norm_0612</fileDirectory>
						<lineNumber>59</lineNumber>
						<contextFuncName>layernorm</contextFuncName>
						<contextNormFuncName>layernorm</contextNormFuncName>
						<inlineStackInfo>
							<count>1</count>
							<item_version>0</item_version>
							<item>
								<first>/home/ytq/codeField/Prediction_Model_Accelerator/CSIM/Layer_Norm_0612</first>
								<second>
									<count>1</count>
									<item_version>0</item_version>
									<item>
										<first>
											<first>/home/ytq/codeField/Prediction_Model_Accelerator/CSIM/Layer_Norm_0612/src/layernorm.cpp</first>
											<second>layernorm</second>
										</first>
										<second>59</second>
									</item>
								</second>
							</item>
						</inlineStackInfo>
						<originalName></originalName>
						<rtlName></rtlName>
						<control></control>
						<opType></opType>
						<implIndex></implIndex>
						<coreName></coreName>
						<isStorage>0</isStorage>
						<storageDepth>0</storageDepth>
						<coreId>2990184288</coreId>
						<rtlModuleName></rtlModuleName>
					</Obj>
					<bitwidth>0</bitwidth>
				</Value>
				<oprand_edges>
					<count>6</count>
					<item_version>0</item_version>
					<item>234</item>
					<item>235</item>
					<item>236</item>
					<item>237</item>
					<item>238</item>
					<item>1407</item>
				</oprand_edges>
				<opcode>call</opcode>
				<m_Display>0</m_Display>
				<m_isOnCriticalPath>0</m_isOnCriticalPath>
				<m_isLCDNode>0</m_isLCDNode>
				<m_isStartOfPath>0</m_isStartOfPath>
				<m_delay>0.00</m_delay>
				<m_topoIndex>36</m_topoIndex>
				<m_clusterGroupNumber>-1</m_clusterGroupNumber>
			</item>
			<item class_id_reference="9" object_id="_51">
				<Value>
					<Obj>
						<type>0</type>
						<id>131</id>
						<name>_ln60</name>
						<fileName>/home/ytq/codeField/Prediction_Model_Accelerator/CSIM/Layer_Norm_0612/src/layernorm.cpp</fileName>
						<fileDirectory>/home/ytq/codeField/Prediction_Model_Accelerator/CSIM/Layer_Norm_0612</fileDirectory>
						<lineNumber>60</lineNumber>
						<contextFuncName>layernorm</contextFuncName>
						<contextNormFuncName>layernorm</contextNormFuncName>
						<inlineStackInfo>
							<count>1</count>
							<item_version>0</item_version>
							<item>
								<first>/home/ytq/codeField/Prediction_Model_Accelerator/CSIM/Layer_Norm_0612</first>
								<second>
									<count>1</count>
									<item_version>0</item_version>
									<item>
										<first>
											<first>/home/ytq/codeField/Prediction_Model_Accelerator/CSIM/Layer_Norm_0612/src/layernorm.cpp</first>
											<second>layernorm</second>
										</first>
										<second>60</second>
									</item>
								</second>
							</item>
						</inlineStackInfo>
						<originalName></originalName>
						<rtlName></rtlName>
						<control></control>
						<opType></opType>
						<implIndex></implIndex>
						<coreName></coreName>
						<isStorage>0</isStorage>
						<storageDepth>0</storageDepth>
						<coreId>2990823216</coreId>
						<rtlModuleName></rtlModuleName>
					</Obj>
					<bitwidth>0</bitwidth>
				</Value>
				<oprand_edges>
					<count>9</count>
					<item_version>0</item_version>
					<item>240</item>
					<item>241</item>
					<item>242</item>
					<item>243</item>
					<item>244</item>
					<item>245</item>
					<item>1406</item>
					<item>1412</item>
					<item>1413</item>
				</oprand_edges>
				<opcode>call</opcode>
				<m_Display>0</m_Display>
				<m_isOnCriticalPath>0</m_isOnCriticalPath>
				<m_isLCDNode>0</m_isLCDNode>
				<m_isStartOfPath>0</m_isStartOfPath>
				<m_delay>0.00</m_delay>
				<m_topoIndex>37</m_topoIndex>
				<m_clusterGroupNumber>-1</m_clusterGroupNumber>
			</item>
			<item class_id_reference="9" object_id="_52">
				<Value>
					<Obj>
						<type>0</type>
						<id>132</id>
						<name>_ln61</name>
						<fileName>/home/ytq/codeField/Prediction_Model_Accelerator/CSIM/Layer_Norm_0612/src/layernorm.cpp</fileName>
						<fileDirectory>/home/ytq/codeField/Prediction_Model_Accelerator/CSIM/Layer_Norm_0612</fileDirectory>
						<lineNumber>61</lineNumber>
						<contextFuncName>layernorm</contextFuncName>
						<contextNormFuncName>layernorm</contextNormFuncName>
						<inlineStackInfo>
							<count>1</count>
							<item_version>0</item_version>
							<item>
								<first>/home/ytq/codeField/Prediction_Model_Accelerator/CSIM/Layer_Norm_0612</first>
								<second>
									<count>1</count>
									<item_version>0</item_version>
									<item>
										<first>
											<first>/home/ytq/codeField/Prediction_Model_Accelerator/CSIM/Layer_Norm_0612/src/layernorm.cpp</first>
											<second>layernorm</second>
										</first>
										<second>61</second>
									</item>
								</second>
							</item>
						</inlineStackInfo>
						<originalName></originalName>
						<rtlName></rtlName>
						<control></control>
						<opType></opType>
						<implIndex></implIndex>
						<coreName></coreName>
						<isStorage>0</isStorage>
						<storageDepth>0</storageDepth>
						<coreId>2990181776</coreId>
						<rtlModuleName></rtlModuleName>
					</Obj>
					<bitwidth>0</bitwidth>
				</Value>
				<oprand_edges>
					<count>0</count>
					<item_version>0</item_version>
				</oprand_edges>
				<opcode>ret</opcode>
				<m_Display>0</m_Display>
				<m_isOnCriticalPath>0</m_isOnCriticalPath>
				<m_isLCDNode>0</m_isLCDNode>
				<m_isStartOfPath>0</m_isStartOfPath>
				<m_delay>0.00</m_delay>
				<m_topoIndex>38</m_topoIndex>
				<m_clusterGroupNumber>-1</m_clusterGroupNumber>
			</item>
		</nodes>
		<consts class_id="15" tracking_level="0" version="0">
			<count>9</count>
			<item_version>0</item_version>
			<item class_id="16" tracking_level="1" version="0" object_id="_53">
				<Value>
					<Obj>
						<type>2</type>
						<id>154</id>
						<name>empty</name>
						<fileName></fileName>
						<fileDirectory></fileDirectory>
						<lineNumber>0</lineNumber>
						<contextFuncName></contextFuncName>
						<contextNormFuncName></contextNormFuncName>
						<inlineStackInfo>
							<count>0</count>
							<item_version>0</item_version>
						</inlineStackInfo>
						<originalName></originalName>
						<rtlName></rtlName>
						<control></control>
						<opType></opType>
						<implIndex></implIndex>
						<coreName></coreName>
						<isStorage>0</isStorage>
						<storageDepth>0</storageDepth>
						<coreId>2989214008</coreId>
						<rtlModuleName></rtlModuleName>
					</Obj>
					<bitwidth>64</bitwidth>
				</Value>
				<const_type>0</const_type>
				<content>1</content>
			</item>
			<item class_id_reference="16" object_id="_54">
				<Value>
					<Obj>
						<type>2</type>
						<id>175</id>
						<name>entry_proc</name>
						<fileName></fileName>
						<fileDirectory></fileDirectory>
						<lineNumber>0</lineNumber>
						<contextFuncName></contextFuncName>
						<contextNormFuncName></contextNormFuncName>
						<inlineStackInfo>
							<count>0</count>
							<item_version>0</item_version>
						</inlineStackInfo>
						<originalName></originalName>
						<rtlName></rtlName>
						<control></control>
						<opType></opType>
						<implIndex></implIndex>
						<coreName></coreName>
						<isStorage>0</isStorage>
						<storageDepth>0</storageDepth>
						<coreId>176</coreId>
						<rtlModuleName></rtlModuleName>
					</Obj>
					<bitwidth>0</bitwidth>
				</Value>
				<const_type>6</const_type>
				<content>&lt;constant:entry_proc&gt;</content>
			</item>
			<item class_id_reference="16" object_id="_55">
				<Value>
					<Obj>
						<type>2</type>
						<id>181</id>
						<name>p_anonymous_namespace_DataMover_A_ap_int_8_ap_uint_256_5u_s</name>
						<fileName></fileName>
						<fileDirectory></fileDirectory>
						<lineNumber>0</lineNumber>
						<contextFuncName></contextFuncName>
						<contextNormFuncName></contextNormFuncName>
						<inlineStackInfo>
							<count>0</count>
							<item_version>0</item_version>
						</inlineStackInfo>
						<originalName></originalName>
						<rtlName></rtlName>
						<control></control>
						<opType></opType>
						<implIndex></implIndex>
						<coreName></coreName>
						<isStorage>0</isStorage>
						<storageDepth>0</storageDepth>
						<coreId>2990031584</coreId>
						<rtlModuleName></rtlModuleName>
					</Obj>
					<bitwidth>0</bitwidth>
				</Value>
				<const_type>6</const_type>
				<content>&lt;constant:(anonymous namespace)DataMover_A&lt;ap_int&lt;8&gt;, ap_uint&lt;256&gt;, 5u&gt;&gt;</content>
			</item>
			<item class_id_reference="16" object_id="_56">
				<Value>
					<Obj>
						<type>2</type>
						<id>193</id>
						<name>p_anonymous_namespace_DataMover_B_ap_int_8_ap_uint_256_5u_s</name>
						<fileName></fileName>
						<fileDirectory></fileDirectory>
						<lineNumber>0</lineNumber>
						<contextFuncName></contextFuncName>
						<contextNormFuncName></contextNormFuncName>
						<inlineStackInfo>
							<count>0</count>
							<item_version>0</item_version>
						</inlineStackInfo>
						<originalName></originalName>
						<rtlName></rtlName>
						<control></control>
						<opType></opType>
						<implIndex></implIndex>
						<coreName></coreName>
						<isStorage>0</isStorage>
						<storageDepth>0</storageDepth>
						<coreId>2990183768</coreId>
						<rtlModuleName></rtlModuleName>
					</Obj>
					<bitwidth>0</bitwidth>
				</Value>
				<const_type>6</const_type>
				<content>&lt;constant:(anonymous namespace)DataMover_B&lt;ap_int&lt;8&gt;, ap_uint&lt;256&gt;, 5u&gt;&gt;</content>
			</item>
			<item class_id_reference="16" object_id="_57">
				<Value>
					<Obj>
						<type>2</type>
						<id>203</id>
						<name>p_anonymous_namespace_Mean_ap_int_8_5u_s</name>
						<fileName></fileName>
						<fileDirectory></fileDirectory>
						<lineNumber>0</lineNumber>
						<contextFuncName></contextFuncName>
						<contextNormFuncName></contextNormFuncName>
						<inlineStackInfo>
							<count>0</count>
							<item_version>0</item_version>
						</inlineStackInfo>
						<originalName></originalName>
						<rtlName></rtlName>
						<control></control>
						<opType></opType>
						<implIndex></implIndex>
						<coreName></coreName>
						<isStorage>0</isStorage>
						<storageDepth>0</storageDepth>
						<coreId>542329928</coreId>
						<rtlModuleName></rtlModuleName>
					</Obj>
					<bitwidth>0</bitwidth>
				</Value>
				<const_type>6</const_type>
				<content>&lt;constant:(anonymous namespace)Mean&lt;ap_int&lt;8&gt;, 5u&gt;&gt;</content>
			</item>
			<item class_id_reference="16" object_id="_58">
				<Value>
					<Obj>
						<type>2</type>
						<id>212</id>
						<name>p_anonymous_namespace_StdDev_ap_int_8_float_5u_s</name>
						<fileName></fileName>
						<fileDirectory></fileDirectory>
						<lineNumber>0</lineNumber>
						<contextFuncName></contextFuncName>
						<contextNormFuncName></contextNormFuncName>
						<inlineStackInfo>
							<count>0</count>
							<item_version>0</item_version>
						</inlineStackInfo>
						<originalName></originalName>
						<rtlName></rtlName>
						<control></control>
						<opType></opType>
						<implIndex></implIndex>
						<coreName></coreName>
						<isStorage>0</isStorage>
						<storageDepth>0</storageDepth>
						<coreId>2053731112</coreId>
						<rtlModuleName></rtlModuleName>
					</Obj>
					<bitwidth>0</bitwidth>
				</Value>
				<const_type>6</const_type>
				<content>&lt;constant:(anonymous namespace)StdDev&lt;ap_int&lt;8&gt;, float, 5u&gt;&gt;</content>
			</item>
			<item class_id_reference="16" object_id="_59">
				<Value>
					<Obj>
						<type>2</type>
						<id>221</id>
						<name>p_anonymous_namespace_Norm_ap_int_8_float_5u_s</name>
						<fileName></fileName>
						<fileDirectory></fileDirectory>
						<lineNumber>0</lineNumber>
						<contextFuncName></contextFuncName>
						<contextNormFuncName></contextNormFuncName>
						<inlineStackInfo>
							<count>0</count>
							<item_version>0</item_version>
						</inlineStackInfo>
						<originalName></originalName>
						<rtlName></rtlName>
						<control></control>
						<opType></opType>
						<implIndex></implIndex>
						<coreName></coreName>
						<isStorage>0</isStorage>
						<storageDepth>0</storageDepth>
						<coreId>2989625424</coreId>
						<rtlModuleName></rtlModuleName>
					</Obj>
					<bitwidth>0</bitwidth>
				</Value>
				<const_type>6</const_type>
				<content>&lt;constant:(anonymous namespace)Norm&lt;ap_int&lt;8&gt;, float, 5u&gt;&gt;</content>
			</item>
			<item class_id_reference="16" object_id="_60">
				<Value>
					<Obj>
						<type>2</type>
						<id>233</id>
						<name>p_anonymous_namespace_Store_temp_ap_int_8_ap_uint_256_5u_s</name>
						<fileName></fileName>
						<fileDirectory></fileDirectory>
						<lineNumber>0</lineNumber>
						<contextFuncName></contextFuncName>
						<contextNormFuncName></contextNormFuncName>
						<inlineStackInfo>
							<count>0</count>
							<item_version>0</item_version>
						</inlineStackInfo>
						<originalName></originalName>
						<rtlName></rtlName>
						<control></control>
						<opType></opType>
						<implIndex></implIndex>
						<coreName></coreName>
						<isStorage>0</isStorage>
						<storageDepth>0</storageDepth>
						<coreId>2990032104</coreId>
						<rtlModuleName></rtlModuleName>
					</Obj>
					<bitwidth>0</bitwidth>
				</Value>
				<const_type>6</const_type>
				<content>&lt;constant:(anonymous namespace)Store_temp&lt;ap_int&lt;8&gt;, ap_uint&lt;256&gt;, 5u&gt;&gt;</content>
			</item>
			<item class_id_reference="16" object_id="_61">
				<Value>
					<Obj>
						<type>2</type>
						<id>239</id>
						<name>p_anonymous_namespace_Store_ap_int_8_ap_uint_256_5u_s</name>
						<fileName></fileName>
						<fileDirectory></fileDirectory>
						<lineNumber>0</lineNumber>
						<contextFuncName></contextFuncName>
						<contextNormFuncName></contextNormFuncName>
						<inlineStackInfo>
							<count>0</count>
							<item_version>0</item_version>
						</inlineStackInfo>
						<originalName></originalName>
						<rtlName></rtlName>
						<control></control>
						<opType></opType>
						<implIndex></implIndex>
						<coreName></coreName>
						<isStorage>0</isStorage>
						<storageDepth>0</storageDepth>
						<coreId>1869833586</coreId>
						<rtlModuleName></rtlModuleName>
					</Obj>
					<bitwidth>0</bitwidth>
				</Value>
				<const_type>6</const_type>
				<content>&lt;constant:(anonymous namespace)Store&lt;ap_int&lt;8&gt;, ap_uint&lt;256&gt;, 5u&gt;&gt;</content>
			</item>
		</consts>
		<blocks class_id="17" tracking_level="0" version="0">
			<count>1</count>
			<item_version>0</item_version>
			<item class_id="18" tracking_level="1" version="0" object_id="_62">
				<Obj>
					<type>3</type>
					<id>133</id>
					<name>layernorm</name>
					<fileName></fileName>
					<fileDirectory></fileDirectory>
					<lineNumber>0</lineNumber>
					<contextFuncName></contextFuncName>
					<contextNormFuncName></contextNormFuncName>
					<inlineStackInfo>
						<count>0</count>
						<item_version>0</item_version>
					</inlineStackInfo>
					<originalName></originalName>
					<rtlName></rtlName>
					<control></control>
					<opType></opType>
					<implIndex></implIndex>
					<coreName></coreName>
					<isStorage>0</isStorage>
					<storageDepth>0</storageDepth>
					<coreId>0</coreId>
					<rtlModuleName></rtlModuleName>
				</Obj>
				<node_objs>
					<count>38</count>
					<item_version>0</item_version>
					<item>15</item>
					<item>16</item>
					<item>17</item>
					<item>18</item>
					<item>19</item>
					<item>20</item>
					<item>21</item>
					<item>22</item>
					<item>23</item>
					<item>24</item>
					<item>27</item>
					<item>30</item>
					<item>33</item>
					<item>36</item>
					<item>39</item>
					<item>42</item>
					<item>45</item>
					<item>48</item>
					<item>51</item>
					<item>94</item>
					<item>97</item>
					<item>100</item>
					<item>103</item>
					<item>106</item>
					<item>109</item>
					<item>112</item>
					<item>115</item>
					<item>118</item>
					<item>121</item>
					<item>124</item>
					<item>125</item>
					<item>126</item>
					<item>127</item>
					<item>128</item>
					<item>129</item>
					<item>130</item>
					<item>131</item>
					<item>132</item>
				</node_objs>
			</item>
		</blocks>
		<edges class_id="19" tracking_level="0" version="0">
			<count>100</count>
			<item_version>0</item_version>
			<item class_id="20" tracking_level="1" version="0" object_id="_63">
				<id>136</id>
				<edge_type>1</edge_type>
				<source_obj>14</source_obj>
				<sink_obj>15</sink_obj>
				<is_back_edge>0</is_back_edge>
			</item>
			<item class_id_reference="20" object_id="_64">
				<id>138</id>
				<edge_type>1</edge_type>
				<source_obj>13</source_obj>
				<sink_obj>16</sink_obj>
				<is_back_edge>0</is_back_edge>
			</item>
			<item class_id_reference="20" object_id="_65">
				<id>140</id>
				<edge_type>1</edge_type>
				<source_obj>12</source_obj>
				<sink_obj>17</sink_obj>
				<is_back_edge>0</is_back_edge>
			</item>
			<item class_id_reference="20" object_id="_66">
				<id>143</id>
				<edge_type>1</edge_type>
				<source_obj>8</source_obj>
				<sink_obj>18</sink_obj>
				<is_back_edge>0</is_back_edge>
			</item>
			<item class_id_reference="20" object_id="_67">
				<id>145</id>
				<edge_type>1</edge_type>
				<source_obj>7</source_obj>
				<sink_obj>19</sink_obj>
				<is_back_edge>0</is_back_edge>
			</item>
			<item class_id_reference="20" object_id="_68">
				<id>147</id>
				<edge_type>1</edge_type>
				<source_obj>6</source_obj>
				<sink_obj>20</sink_obj>
				<is_back_edge>0</is_back_edge>
			</item>
			<item class_id_reference="20" object_id="_69">
				<id>149</id>
				<edge_type>1</edge_type>
				<source_obj>5</source_obj>
				<sink_obj>21</sink_obj>
				<is_back_edge>0</is_back_edge>
			</item>
			<item class_id_reference="20" object_id="_70">
				<id>151</id>
				<edge_type>1</edge_type>
				<source_obj>4</source_obj>
				<sink_obj>22</sink_obj>
				<is_back_edge>0</is_back_edge>
			</item>
			<item class_id_reference="20" object_id="_71">
				<id>153</id>
				<edge_type>1</edge_type>
				<source_obj>3</source_obj>
				<sink_obj>23</sink_obj>
				<is_back_edge>0</is_back_edge>
			</item>
			<item class_id_reference="20" object_id="_72">
				<id>155</id>
				<edge_type>1</edge_type>
				<source_obj>154</source_obj>
				<sink_obj>24</sink_obj>
				<is_back_edge>0</is_back_edge>
			</item>
			<item class_id_reference="20" object_id="_73">
				<id>156</id>
				<edge_type>1</edge_type>
				<source_obj>154</source_obj>
				<sink_obj>27</sink_obj>
				<is_back_edge>0</is_back_edge>
			</item>
			<item class_id_reference="20" object_id="_74">
				<id>157</id>
				<edge_type>1</edge_type>
				<source_obj>154</source_obj>
				<sink_obj>30</sink_obj>
				<is_back_edge>0</is_back_edge>
			</item>
			<item class_id_reference="20" object_id="_75">
				<id>158</id>
				<edge_type>1</edge_type>
				<source_obj>154</source_obj>
				<sink_obj>33</sink_obj>
				<is_back_edge>0</is_back_edge>
			</item>
			<item class_id_reference="20" object_id="_76">
				<id>159</id>
				<edge_type>1</edge_type>
				<source_obj>154</source_obj>
				<sink_obj>36</sink_obj>
				<is_back_edge>0</is_back_edge>
			</item>
			<item class_id_reference="20" object_id="_77">
				<id>160</id>
				<edge_type>1</edge_type>
				<source_obj>154</source_obj>
				<sink_obj>39</sink_obj>
				<is_back_edge>0</is_back_edge>
			</item>
			<item class_id_reference="20" object_id="_78">
				<id>161</id>
				<edge_type>1</edge_type>
				<source_obj>154</source_obj>
				<sink_obj>42</sink_obj>
				<is_back_edge>0</is_back_edge>
			</item>
			<item class_id_reference="20" object_id="_79">
				<id>162</id>
				<edge_type>1</edge_type>
				<source_obj>154</source_obj>
				<sink_obj>45</sink_obj>
				<is_back_edge>0</is_back_edge>
			</item>
			<item class_id_reference="20" object_id="_80">
				<id>163</id>
				<edge_type>1</edge_type>
				<source_obj>154</source_obj>
				<sink_obj>48</sink_obj>
				<is_back_edge>0</is_back_edge>
			</item>
			<item class_id_reference="20" object_id="_81">
				<id>164</id>
				<edge_type>1</edge_type>
				<source_obj>154</source_obj>
				<sink_obj>51</sink_obj>
				<is_back_edge>0</is_back_edge>
			</item>
			<item class_id_reference="20" object_id="_82">
				<id>165</id>
				<edge_type>1</edge_type>
				<source_obj>154</source_obj>
				<sink_obj>94</sink_obj>
				<is_back_edge>0</is_back_edge>
			</item>
			<item class_id_reference="20" object_id="_83">
				<id>166</id>
				<edge_type>1</edge_type>
				<source_obj>154</source_obj>
				<sink_obj>97</sink_obj>
				<is_back_edge>0</is_back_edge>
			</item>
			<item class_id_reference="20" object_id="_84">
				<id>167</id>
				<edge_type>1</edge_type>
				<source_obj>154</source_obj>
				<sink_obj>100</sink_obj>
				<is_back_edge>0</is_back_edge>
			</item>
			<item class_id_reference="20" object_id="_85">
				<id>168</id>
				<edge_type>1</edge_type>
				<source_obj>154</source_obj>
				<sink_obj>103</sink_obj>
				<is_back_edge>0</is_back_edge>
			</item>
			<item class_id_reference="20" object_id="_86">
				<id>169</id>
				<edge_type>1</edge_type>
				<source_obj>154</source_obj>
				<sink_obj>106</sink_obj>
				<is_back_edge>0</is_back_edge>
			</item>
			<item class_id_reference="20" object_id="_87">
				<id>170</id>
				<edge_type>1</edge_type>
				<source_obj>154</source_obj>
				<sink_obj>109</sink_obj>
				<is_back_edge>0</is_back_edge>
			</item>
			<item class_id_reference="20" object_id="_88">
				<id>171</id>
				<edge_type>1</edge_type>
				<source_obj>154</source_obj>
				<sink_obj>112</sink_obj>
				<is_back_edge>0</is_back_edge>
			</item>
			<item class_id_reference="20" object_id="_89">
				<id>172</id>
				<edge_type>1</edge_type>
				<source_obj>154</source_obj>
				<sink_obj>115</sink_obj>
				<is_back_edge>0</is_back_edge>
			</item>
			<item class_id_reference="20" object_id="_90">
				<id>173</id>
				<edge_type>1</edge_type>
				<source_obj>154</source_obj>
				<sink_obj>118</sink_obj>
				<is_back_edge>0</is_back_edge>
			</item>
			<item class_id_reference="20" object_id="_91">
				<id>174</id>
				<edge_type>1</edge_type>
				<source_obj>154</source_obj>
				<sink_obj>121</sink_obj>
				<is_back_edge>0</is_back_edge>
			</item>
			<item class_id_reference="20" object_id="_92">
				<id>176</id>
				<edge_type>1</edge_type>
				<source_obj>175</source_obj>
				<sink_obj>124</sink_obj>
				<is_back_edge>0</is_back_edge>
			</item>
			<item class_id_reference="20" object_id="_93">
				<id>177</id>
				<edge_type>1</edge_type>
				<source_obj>20</source_obj>
				<sink_obj>124</sink_obj>
				<is_back_edge>0</is_back_edge>
			</item>
			<item class_id_reference="20" object_id="_94">
				<id>178</id>
				<edge_type>1</edge_type>
				<source_obj>51</source_obj>
				<sink_obj>124</sink_obj>
				<is_back_edge>0</is_back_edge>
			</item>
			<item class_id_reference="20" object_id="_95">
				<id>179</id>
				<edge_type>1</edge_type>
				<source_obj>16</source_obj>
				<sink_obj>124</sink_obj>
				<is_back_edge>0</is_back_edge>
			</item>
			<item class_id_reference="20" object_id="_96">
				<id>180</id>
				<edge_type>1</edge_type>
				<source_obj>24</source_obj>
				<sink_obj>124</sink_obj>
				<is_back_edge>0</is_back_edge>
			</item>
			<item class_id_reference="20" object_id="_97">
				<id>182</id>
				<edge_type>1</edge_type>
				<source_obj>181</source_obj>
				<sink_obj>125</sink_obj>
				<is_back_edge>0</is_back_edge>
			</item>
			<item class_id_reference="20" object_id="_98">
				<id>183</id>
				<edge_type>1</edge_type>
				<source_obj>18</source_obj>
				<sink_obj>125</sink_obj>
				<is_back_edge>0</is_back_edge>
			</item>
			<item class_id_reference="20" object_id="_99">
				<id>184</id>
				<edge_type>1</edge_type>
				<source_obj>19</source_obj>
				<sink_obj>125</sink_obj>
				<is_back_edge>0</is_back_edge>
			</item>
			<item class_id_reference="20" object_id="_100">
				<id>185</id>
				<edge_type>1</edge_type>
				<source_obj>23</source_obj>
				<sink_obj>125</sink_obj>
				<is_back_edge>0</is_back_edge>
			</item>
			<item class_id_reference="20" object_id="_101">
				<id>186</id>
				<edge_type>1</edge_type>
				<source_obj>1</source_obj>
				<sink_obj>125</sink_obj>
				<is_back_edge>0</is_back_edge>
			</item>
			<item class_id_reference="20" object_id="_102">
				<id>187</id>
				<edge_type>1</edge_type>
				<source_obj>17</source_obj>
				<sink_obj>125</sink_obj>
				<is_back_edge>0</is_back_edge>
			</item>
			<item class_id_reference="20" object_id="_103">
				<id>188</id>
				<edge_type>1</edge_type>
				<source_obj>94</source_obj>
				<sink_obj>125</sink_obj>
				<is_back_edge>0</is_back_edge>
			</item>
			<item class_id_reference="20" object_id="_104">
				<id>189</id>
				<edge_type>1</edge_type>
				<source_obj>97</source_obj>
				<sink_obj>125</sink_obj>
				<is_back_edge>0</is_back_edge>
			</item>
			<item class_id_reference="20" object_id="_105">
				<id>190</id>
				<edge_type>1</edge_type>
				<source_obj>100</source_obj>
				<sink_obj>125</sink_obj>
				<is_back_edge>0</is_back_edge>
			</item>
			<item class_id_reference="20" object_id="_106">
				<id>191</id>
				<edge_type>1</edge_type>
				<source_obj>39</source_obj>
				<sink_obj>125</sink_obj>
				<is_back_edge>0</is_back_edge>
			</item>
			<item class_id_reference="20" object_id="_107">
				<id>192</id>
				<edge_type>1</edge_type>
				<source_obj>27</source_obj>
				<sink_obj>125</sink_obj>
				<is_back_edge>0</is_back_edge>
			</item>
			<item class_id_reference="20" object_id="_108">
				<id>194</id>
				<edge_type>1</edge_type>
				<source_obj>193</source_obj>
				<sink_obj>126</sink_obj>
				<is_back_edge>0</is_back_edge>
			</item>
			<item class_id_reference="20" object_id="_109">
				<id>195</id>
				<edge_type>1</edge_type>
				<source_obj>18</source_obj>
				<sink_obj>126</sink_obj>
				<is_back_edge>0</is_back_edge>
			</item>
			<item class_id_reference="20" object_id="_110">
				<id>196</id>
				<edge_type>1</edge_type>
				<source_obj>19</source_obj>
				<sink_obj>126</sink_obj>
				<is_back_edge>0</is_back_edge>
			</item>
			<item class_id_reference="20" object_id="_111">
				<id>197</id>
				<edge_type>1</edge_type>
				<source_obj>22</source_obj>
				<sink_obj>126</sink_obj>
				<is_back_edge>0</is_back_edge>
			</item>
			<item class_id_reference="20" object_id="_112">
				<id>198</id>
				<edge_type>1</edge_type>
				<source_obj>21</source_obj>
				<sink_obj>126</sink_obj>
				<is_back_edge>0</is_back_edge>
			</item>
			<item class_id_reference="20" object_id="_113">
				<id>199</id>
				<edge_type>1</edge_type>
				<source_obj>2</source_obj>
				<sink_obj>126</sink_obj>
				<is_back_edge>0</is_back_edge>
			</item>
			<item class_id_reference="20" object_id="_114">
				<id>200</id>
				<edge_type>1</edge_type>
				<source_obj>15</source_obj>
				<sink_obj>126</sink_obj>
				<is_back_edge>0</is_back_edge>
			</item>
			<item class_id_reference="20" object_id="_115">
				<id>201</id>
				<edge_type>1</edge_type>
				<source_obj>103</source_obj>
				<sink_obj>126</sink_obj>
				<is_back_edge>0</is_back_edge>
			</item>
			<item class_id_reference="20" object_id="_116">
				<id>202</id>
				<edge_type>1</edge_type>
				<source_obj>106</source_obj>
				<sink_obj>126</sink_obj>
				<is_back_edge>0</is_back_edge>
			</item>
			<item class_id_reference="20" object_id="_117">
				<id>204</id>
				<edge_type>1</edge_type>
				<source_obj>203</source_obj>
				<sink_obj>127</sink_obj>
				<is_back_edge>0</is_back_edge>
			</item>
			<item class_id_reference="20" object_id="_118">
				<id>205</id>
				<edge_type>1</edge_type>
				<source_obj>27</source_obj>
				<sink_obj>127</sink_obj>
				<is_back_edge>0</is_back_edge>
			</item>
			<item class_id_reference="20" object_id="_119">
				<id>206</id>
				<edge_type>1</edge_type>
				<source_obj>39</source_obj>
				<sink_obj>127</sink_obj>
				<is_back_edge>0</is_back_edge>
			</item>
			<item class_id_reference="20" object_id="_120">
				<id>207</id>
				<edge_type>1</edge_type>
				<source_obj>94</source_obj>
				<sink_obj>127</sink_obj>
				<is_back_edge>0</is_back_edge>
			</item>
			<item class_id_reference="20" object_id="_121">
				<id>208</id>
				<edge_type>1</edge_type>
				<source_obj>109</source_obj>
				<sink_obj>127</sink_obj>
				<is_back_edge>0</is_back_edge>
			</item>
			<item class_id_reference="20" object_id="_122">
				<id>209</id>
				<edge_type>1</edge_type>
				<source_obj>112</source_obj>
				<sink_obj>127</sink_obj>
				<is_back_edge>0</is_back_edge>
			</item>
			<item class_id_reference="20" object_id="_123">
				<id>210</id>
				<edge_type>1</edge_type>
				<source_obj>42</source_obj>
				<sink_obj>127</sink_obj>
				<is_back_edge>0</is_back_edge>
			</item>
			<item class_id_reference="20" object_id="_124">
				<id>211</id>
				<edge_type>1</edge_type>
				<source_obj>30</source_obj>
				<sink_obj>127</sink_obj>
				<is_back_edge>0</is_back_edge>
			</item>
			<item class_id_reference="20" object_id="_125">
				<id>213</id>
				<edge_type>1</edge_type>
				<source_obj>212</source_obj>
				<sink_obj>128</sink_obj>
				<is_back_edge>0</is_back_edge>
			</item>
			<item class_id_reference="20" object_id="_126">
				<id>214</id>
				<edge_type>1</edge_type>
				<source_obj>30</source_obj>
				<sink_obj>128</sink_obj>
				<is_back_edge>0</is_back_edge>
			</item>
			<item class_id_reference="20" object_id="_127">
				<id>215</id>
				<edge_type>1</edge_type>
				<source_obj>42</source_obj>
				<sink_obj>128</sink_obj>
				<is_back_edge>0</is_back_edge>
			</item>
			<item class_id_reference="20" object_id="_128">
				<id>216</id>
				<edge_type>1</edge_type>
				<source_obj>97</source_obj>
				<sink_obj>128</sink_obj>
				<is_back_edge>0</is_back_edge>
			</item>
			<item class_id_reference="20" object_id="_129">
				<id>217</id>
				<edge_type>1</edge_type>
				<source_obj>109</source_obj>
				<sink_obj>128</sink_obj>
				<is_back_edge>0</is_back_edge>
			</item>
			<item class_id_reference="20" object_id="_130">
				<id>218</id>
				<edge_type>1</edge_type>
				<source_obj>115</source_obj>
				<sink_obj>128</sink_obj>
				<is_back_edge>0</is_back_edge>
			</item>
			<item class_id_reference="20" object_id="_131">
				<id>219</id>
				<edge_type>1</edge_type>
				<source_obj>45</source_obj>
				<sink_obj>128</sink_obj>
				<is_back_edge>0</is_back_edge>
			</item>
			<item class_id_reference="20" object_id="_132">
				<id>220</id>
				<edge_type>1</edge_type>
				<source_obj>33</source_obj>
				<sink_obj>128</sink_obj>
				<is_back_edge>0</is_back_edge>
			</item>
			<item class_id_reference="20" object_id="_133">
				<id>222</id>
				<edge_type>1</edge_type>
				<source_obj>221</source_obj>
				<sink_obj>129</sink_obj>
				<is_back_edge>0</is_back_edge>
			</item>
			<item class_id_reference="20" object_id="_134">
				<id>223</id>
				<edge_type>1</edge_type>
				<source_obj>33</source_obj>
				<sink_obj>129</sink_obj>
				<is_back_edge>0</is_back_edge>
			</item>
			<item class_id_reference="20" object_id="_135">
				<id>224</id>
				<edge_type>1</edge_type>
				<source_obj>45</source_obj>
				<sink_obj>129</sink_obj>
				<is_back_edge>0</is_back_edge>
			</item>
			<item class_id_reference="20" object_id="_136">
				<id>225</id>
				<edge_type>1</edge_type>
				<source_obj>100</source_obj>
				<sink_obj>129</sink_obj>
				<is_back_edge>0</is_back_edge>
			</item>
			<item class_id_reference="20" object_id="_137">
				<id>226</id>
				<edge_type>1</edge_type>
				<source_obj>112</source_obj>
				<sink_obj>129</sink_obj>
				<is_back_edge>0</is_back_edge>
			</item>
			<item class_id_reference="20" object_id="_138">
				<id>227</id>
				<edge_type>1</edge_type>
				<source_obj>115</source_obj>
				<sink_obj>129</sink_obj>
				<is_back_edge>0</is_back_edge>
			</item>
			<item class_id_reference="20" object_id="_139">
				<id>228</id>
				<edge_type>1</edge_type>
				<source_obj>103</source_obj>
				<sink_obj>129</sink_obj>
				<is_back_edge>0</is_back_edge>
			</item>
			<item class_id_reference="20" object_id="_140">
				<id>229</id>
				<edge_type>1</edge_type>
				<source_obj>106</source_obj>
				<sink_obj>129</sink_obj>
				<is_back_edge>0</is_back_edge>
			</item>
			<item class_id_reference="20" object_id="_141">
				<id>230</id>
				<edge_type>1</edge_type>
				<source_obj>118</source_obj>
				<sink_obj>129</sink_obj>
				<is_back_edge>0</is_back_edge>
			</item>
			<item class_id_reference="20" object_id="_142">
				<id>231</id>
				<edge_type>1</edge_type>
				<source_obj>48</source_obj>
				<sink_obj>129</sink_obj>
				<is_back_edge>0</is_back_edge>
			</item>
			<item class_id_reference="20" object_id="_143">
				<id>232</id>
				<edge_type>1</edge_type>
				<source_obj>36</source_obj>
				<sink_obj>129</sink_obj>
				<is_back_edge>0</is_back_edge>
			</item>
			<item class_id_reference="20" object_id="_144">
				<id>234</id>
				<edge_type>1</edge_type>
				<source_obj>233</source_obj>
				<sink_obj>130</sink_obj>
				<is_back_edge>0</is_back_edge>
			</item>
			<item class_id_reference="20" object_id="_145">
				<id>235</id>
				<edge_type>1</edge_type>
				<source_obj>36</source_obj>
				<sink_obj>130</sink_obj>
				<is_back_edge>0</is_back_edge>
			</item>
			<item class_id_reference="20" object_id="_146">
				<id>236</id>
				<edge_type>1</edge_type>
				<source_obj>48</source_obj>
				<sink_obj>130</sink_obj>
				<is_back_edge>0</is_back_edge>
			</item>
			<item class_id_reference="20" object_id="_147">
				<id>237</id>
				<edge_type>1</edge_type>
				<source_obj>118</source_obj>
				<sink_obj>130</sink_obj>
				<is_back_edge>0</is_back_edge>
			</item>
			<item class_id_reference="20" object_id="_148">
				<id>238</id>
				<edge_type>1</edge_type>
				<source_obj>121</source_obj>
				<sink_obj>130</sink_obj>
				<is_back_edge>0</is_back_edge>
			</item>
			<item class_id_reference="20" object_id="_149">
				<id>240</id>
				<edge_type>1</edge_type>
				<source_obj>239</source_obj>
				<sink_obj>131</sink_obj>
				<is_back_edge>0</is_back_edge>
			</item>
			<item class_id_reference="20" object_id="_150">
				<id>241</id>
				<edge_type>1</edge_type>
				<source_obj>51</source_obj>
				<sink_obj>131</sink_obj>
				<is_back_edge>0</is_back_edge>
			</item>
			<item class_id_reference="20" object_id="_151">
				<id>242</id>
				<edge_type>1</edge_type>
				<source_obj>1</source_obj>
				<sink_obj>131</sink_obj>
				<is_back_edge>0</is_back_edge>
			</item>
			<item class_id_reference="20" object_id="_152">
				<id>243</id>
				<edge_type>1</edge_type>
				<source_obj>24</source_obj>
				<sink_obj>131</sink_obj>
				<is_back_edge>0</is_back_edge>
			</item>
			<item class_id_reference="20" object_id="_153">
				<id>244</id>
				<edge_type>1</edge_type>
				<source_obj>11</source_obj>
				<sink_obj>131</sink_obj>
				<is_back_edge>0</is_back_edge>
			</item>
			<item class_id_reference="20" object_id="_154">
				<id>245</id>
				<edge_type>1</edge_type>
				<source_obj>121</source_obj>
				<sink_obj>131</sink_obj>
				<is_back_edge>0</is_back_edge>
			</item>
			<item class_id_reference="20" object_id="_155">
				<id>1406</id>
				<edge_type>4</edge_type>
				<source_obj>130</source_obj>
				<sink_obj>131</sink_obj>
				<is_back_edge>0</is_back_edge>
			</item>
			<item class_id_reference="20" object_id="_156">
				<id>1407</id>
				<edge_type>4</edge_type>
				<source_obj>129</source_obj>
				<sink_obj>130</sink_obj>
				<is_back_edge>0</is_back_edge>
			</item>
			<item class_id_reference="20" object_id="_157">
				<id>1408</id>
				<edge_type>4</edge_type>
				<source_obj>128</source_obj>
				<sink_obj>129</sink_obj>
				<is_back_edge>0</is_back_edge>
			</item>
			<item class_id_reference="20" object_id="_158">
				<id>1409</id>
				<edge_type>4</edge_type>
				<source_obj>127</source_obj>
				<sink_obj>128</sink_obj>
				<is_back_edge>0</is_back_edge>
			</item>
			<item class_id_reference="20" object_id="_159">
				<id>1410</id>
				<edge_type>4</edge_type>
				<source_obj>126</source_obj>
				<sink_obj>129</sink_obj>
				<is_back_edge>0</is_back_edge>
			</item>
			<item class_id_reference="20" object_id="_160">
				<id>1411</id>
				<edge_type>4</edge_type>
				<source_obj>125</source_obj>
				<sink_obj>127</sink_obj>
				<is_back_edge>0</is_back_edge>
			</item>
			<item class_id_reference="20" object_id="_161">
				<id>1412</id>
				<edge_type>4</edge_type>
				<source_obj>124</source_obj>
				<sink_obj>131</sink_obj>
				<is_back_edge>0</is_back_edge>
			</item>
			<item class_id_reference="20" object_id="_162">
				<id>1413</id>
				<edge_type>4</edge_type>
				<source_obj>124</source_obj>
				<sink_obj>131</sink_obj>
				<is_back_edge>0</is_back_edge>
			</item>
		</edges>
	</cdfg>
	<cdfg_regions class_id="21" tracking_level="0" version="0">
		<count>1</count>
		<item_version>0</item_version>
		<item class_id="22" tracking_level="1" version="0" object_id="_163">
			<mId>1</mId>
			<mTag>layernorm</mTag>
			<mNormTag>layernorm</mNormTag>
			<mType>0</mType>
			<sub_regions>
				<count>0</count>
				<item_version>0</item_version>
			</sub_regions>
			<basic_blocks>
				<count>1</count>
				<item_version>0</item_version>
				<item>133</item>
			</basic_blocks>
			<mII>-1</mII>
			<mDepth>-1</mDepth>
			<mMinTripCount>-1</mMinTripCount>
			<mMaxTripCount>-1</mMaxTripCount>
			<mMinLatency>-1</mMinLatency>
			<mMaxLatency>-1</mMaxLatency>
			<mIsDfPipe>1</mIsDfPipe>
			<mDfPipe class_id="23" tracking_level="1" version="0" object_id="_164">
				<port_list class_id="24" tracking_level="0" version="0">
					<count>14</count>
					<item_version>0</item_version>
					<item class_id="25" tracking_level="1" version="0" object_id="_165">
						<name>ln_data</name>
						<dir>2</dir>
						<type>1</type>
						<need_hs>1</need_hs>
						<top_port class_id="-1"></top_port>
						<chan class_id="-1"></chan>
					</item>
					<item class_id_reference="25" object_id="_166">
						<name>ln_paras</name>
						<dir>0</dir>
						<type>1</type>
						<need_hs>1</need_hs>
						<top_port class_id="-1"></top_port>
						<chan class_id="-1"></chan>
					</item>
					<item class_id_reference="25" object_id="_167">
						<name>input_data_addr</name>
						<dir>0</dir>
						<type>3</type>
						<need_hs>1</need_hs>
						<top_port class_id="-1"></top_port>
						<chan class_id="-1"></chan>
					</item>
					<item class_id_reference="25" object_id="_168">
						<name>gama_addr</name>
						<dir>0</dir>
						<type>3</type>
						<need_hs>1</need_hs>
						<top_port class_id="-1"></top_port>
						<chan class_id="-1"></chan>
					</item>
					<item class_id_reference="25" object_id="_169">
						<name>beta_addr</name>
						<dir>0</dir>
						<type>3</type>
						<need_hs>1</need_hs>
						<top_port class_id="-1"></top_port>
						<chan class_id="-1"></chan>
					</item>
					<item class_id_reference="25" object_id="_170">
						<name>output_data_addr</name>
						<dir>0</dir>
						<type>3</type>
						<need_hs>1</need_hs>
						<top_port class_id="-1"></top_port>
						<chan class_id="-1"></chan>
					</item>
					<item class_id_reference="25" object_id="_171">
						<name>rows</name>
						<dir>0</dir>
						<type>3</type>
						<need_hs>1</need_hs>
						<top_port class_id="-1"></top_port>
						<chan class_id="-1"></chan>
					</item>
					<item class_id_reference="25" object_id="_172">
						<name>cols_log</name>
						<dir>0</dir>
						<type>3</type>
						<need_hs>1</need_hs>
						<top_port class_id="-1"></top_port>
						<chan class_id="-1"></chan>
					</item>
					<item class_id_reference="25" object_id="_173">
						<name>q_value</name>
						<dir>0</dir>
						<type>3</type>
						<need_hs>0</need_hs>
						<top_port class_id="-1"></top_port>
						<chan class_id="-1"></chan>
					</item>
					<item class_id_reference="25" object_id="_174">
						<name>shift_value</name>
						<dir>0</dir>
						<type>3</type>
						<need_hs>0</need_hs>
						<top_port class_id="-1"></top_port>
						<chan class_id="-1"></chan>
					</item>
					<item class_id_reference="25" object_id="_175">
						<name>done</name>
						<dir>1</dir>
						<type>3</type>
						<need_hs>0</need_hs>
						<top_port class_id="-1"></top_port>
						<chan class_id="-1"></chan>
					</item>
					<item class_id_reference="25" object_id="_176">
						<name>inputs</name>
						<dir>0</dir>
						<type>3</type>
						<need_hs>1</need_hs>
						<top_port class_id="-1"></top_port>
						<chan class_id="-1"></chan>
					</item>
					<item class_id_reference="25" object_id="_177">
						<name>outputs</name>
						<dir>0</dir>
						<type>3</type>
						<need_hs>1</need_hs>
						<top_port class_id="-1"></top_port>
						<chan class_id="-1"></chan>
					</item>
					<item class_id_reference="25" object_id="_178">
						<name>paras</name>
						<dir>0</dir>
						<type>3</type>
						<need_hs>1</need_hs>
						<top_port class_id="-1"></top_port>
						<chan class_id="-1"></chan>
					</item>
				</port_list>
				<process_list class_id="27" tracking_level="0" version="0">
					<count>8</count>
					<item_version>0</item_version>
					<item class_id="28" tracking_level="1" version="0" object_id="_179">
						<type>0</type>
						<name>entry_proc_U0</name>
						<ssdmobj_id>124</ssdmobj_id>
						<pins class_id="29" tracking_level="0" version="0">
							<count>2</count>
							<item_version>0</item_version>
							<item class_id="30" tracking_level="1" version="0" object_id="_180">
								<port class_id_reference="25" object_id="_181">
									<name>output_data_addr</name>
									<dir>0</dir>
									<type>3</type>
									<need_hs>1</need_hs>
									<top_port class_id_reference="25" object_id_reference="_170"></top_port>
									<chan class_id="-1"></chan>
								</port>
								<inst class_id="31" tracking_level="1" version="0" object_id="_182">
									<type>0</type>
									<name>entry_proc_U0</name>
									<ssdmobj_id>124</ssdmobj_id>
								</inst>
							</item>
							<item class_id_reference="30" object_id="_183">
								<port class_id_reference="25" object_id="_184">
									<name>outputs</name>
									<dir>0</dir>
									<type>3</type>
									<need_hs>1</need_hs>
									<top_port class_id_reference="25" object_id_reference="_177"></top_port>
									<chan class_id="-1"></chan>
								</port>
								<inst class_id_reference="31" object_id_reference="_182"></inst>
							</item>
						</pins>
						<in_source_fork>1</in_source_fork>
						<in_sink_join>0</in_sink_join>
						<flag_in_gui>0</flag_in_gui>
					</item>
					<item class_id_reference="28" object_id="_185">
						<type>0</type>
						<name>p_anonymous_namespace_DataMover_A_ap_int_8_ap_uint_256_5u_U0</name>
						<ssdmobj_id>125</ssdmobj_id>
						<pins>
							<count>5</count>
							<item_version>0</item_version>
							<item class_id_reference="30" object_id="_186">
								<port class_id_reference="25" object_id="_187">
									<name>cols_log</name>
									<dir>0</dir>
									<type>3</type>
									<need_hs>1</need_hs>
									<top_port class_id_reference="25" object_id_reference="_172"></top_port>
									<chan class_id="-1"></chan>
								</port>
								<inst class_id_reference="31" object_id="_188">
									<type>0</type>
									<name>p_anonymous_namespace_DataMover_A_ap_int_8_ap_uint_256_5u_U0</name>
									<ssdmobj_id>125</ssdmobj_id>
								</inst>
							</item>
							<item class_id_reference="30" object_id="_189">
								<port class_id_reference="25" object_id="_190">
									<name>rows</name>
									<dir>0</dir>
									<type>3</type>
									<need_hs>1</need_hs>
									<top_port class_id_reference="25" object_id_reference="_171"></top_port>
									<chan class_id="-1"></chan>
								</port>
								<inst class_id_reference="31" object_id_reference="_188"></inst>
							</item>
							<item class_id_reference="30" object_id="_191">
								<port class_id_reference="25" object_id="_192">
									<name>input_data_addr</name>
									<dir>0</dir>
									<type>3</type>
									<need_hs>1</need_hs>
									<top_port class_id_reference="25" object_id_reference="_167"></top_port>
									<chan class_id="-1"></chan>
								</port>
								<inst class_id_reference="31" object_id_reference="_188"></inst>
							</item>
							<item class_id_reference="30" object_id="_193">
								<port class_id_reference="25" object_id="_194">
									<name>ln_data</name>
									<dir>0</dir>
									<type>1</type>
									<need_hs>1</need_hs>
									<top_port class_id_reference="25" object_id_reference="_165"></top_port>
									<chan class_id="-1"></chan>
								</port>
								<inst class_id_reference="31" object_id_reference="_188"></inst>
							</item>
							<item class_id_reference="30" object_id="_195">
								<port class_id_reference="25" object_id="_196">
									<name>inputs</name>
									<dir>0</dir>
									<type>3</type>
									<need_hs>1</need_hs>
									<top_port class_id_reference="25" object_id_reference="_176"></top_port>
									<chan class_id="-1"></chan>
								</port>
								<inst class_id_reference="31" object_id_reference="_188"></inst>
							</item>
						</pins>
						<in_source_fork>1</in_source_fork>
						<in_sink_join>0</in_sink_join>
						<flag_in_gui>0</flag_in_gui>
					</item>
					<item class_id_reference="28" object_id="_197">
						<type>0</type>
						<name>p_anonymous_namespace_DataMover_B_ap_int_8_ap_uint_256_5u_U0</name>
						<ssdmobj_id>126</ssdmobj_id>
						<pins>
							<count>6</count>
							<item_version>0</item_version>
							<item class_id_reference="30" object_id="_198">
								<port class_id_reference="25" object_id="_199">
									<name>cols_log</name>
									<dir>0</dir>
									<type>3</type>
									<need_hs>1</need_hs>
									<top_port class_id_reference="25" object_id_reference="_172"></top_port>
									<chan class_id="-1"></chan>
								</port>
								<inst class_id_reference="31" object_id="_200">
									<type>0</type>
									<name>p_anonymous_namespace_DataMover_B_ap_int_8_ap_uint_256_5u_U0</name>
									<ssdmobj_id>126</ssdmobj_id>
								</inst>
							</item>
							<item class_id_reference="30" object_id="_201">
								<port class_id_reference="25" object_id="_202">
									<name>rows</name>
									<dir>0</dir>
									<type>3</type>
									<need_hs>1</need_hs>
									<top_port class_id_reference="25" object_id_reference="_171"></top_port>
									<chan class_id="-1"></chan>
								</port>
								<inst class_id_reference="31" object_id_reference="_200"></inst>
							</item>
							<item class_id_reference="30" object_id="_203">
								<port class_id_reference="25" object_id="_204">
									<name>gama_addr</name>
									<dir>0</dir>
									<type>3</type>
									<need_hs>1</need_hs>
									<top_port class_id_reference="25" object_id_reference="_168"></top_port>
									<chan class_id="-1"></chan>
								</port>
								<inst class_id_reference="31" object_id_reference="_200"></inst>
							</item>
							<item class_id_reference="30" object_id="_205">
								<port class_id_reference="25" object_id="_206">
									<name>beta_addr</name>
									<dir>0</dir>
									<type>3</type>
									<need_hs>1</need_hs>
									<top_port class_id_reference="25" object_id_reference="_169"></top_port>
									<chan class_id="-1"></chan>
								</port>
								<inst class_id_reference="31" object_id_reference="_200"></inst>
							</item>
							<item class_id_reference="30" object_id="_207">
								<port class_id_reference="25" object_id="_208">
									<name>ln_paras</name>
									<dir>0</dir>
									<type>1</type>
									<need_hs>1</need_hs>
									<top_port class_id_reference="25" object_id_reference="_166"></top_port>
									<chan class_id="-1"></chan>
								</port>
								<inst class_id_reference="31" object_id_reference="_200"></inst>
							</item>
							<item class_id_reference="30" object_id="_209">
								<port class_id_reference="25" object_id="_210">
									<name>paras</name>
									<dir>0</dir>
									<type>3</type>
									<need_hs>1</need_hs>
									<top_port class_id_reference="25" object_id_reference="_178"></top_port>
									<chan class_id="-1"></chan>
								</port>
								<inst class_id_reference="31" object_id_reference="_200"></inst>
							</item>
						</pins>
						<in_source_fork>1</in_source_fork>
						<in_sink_join>0</in_sink_join>
						<flag_in_gui>0</flag_in_gui>
					</item>
					<item class_id_reference="28" object_id="_211">
						<type>0</type>
						<name>p_anonymous_namespace_Mean_ap_int_8_5u_U0</name>
						<ssdmobj_id>127</ssdmobj_id>
						<pins>
							<count>0</count>
							<item_version>0</item_version>
						</pins>
						<in_source_fork>0</in_source_fork>
						<in_sink_join>0</in_sink_join>
						<flag_in_gui>0</flag_in_gui>
					</item>
					<item class_id_reference="28" object_id="_212">
						<type>0</type>
						<name>p_anonymous_namespace_StdDev_ap_int_8_float_5u_U0</name>
						<ssdmobj_id>128</ssdmobj_id>
						<pins>
							<count>0</count>
							<item_version>0</item_version>
						</pins>
						<in_source_fork>0</in_source_fork>
						<in_sink_join>0</in_sink_join>
						<flag_in_gui>0</flag_in_gui>
					</item>
					<item class_id_reference="28" object_id="_213">
						<type>0</type>
						<name>p_anonymous_namespace_Norm_ap_int_8_float_5u_U0</name>
						<ssdmobj_id>129</ssdmobj_id>
						<pins>
							<count>0</count>
							<item_version>0</item_version>
						</pins>
						<in_source_fork>0</in_source_fork>
						<in_sink_join>0</in_sink_join>
						<flag_in_gui>0</flag_in_gui>
					</item>
					<item class_id_reference="28" object_id="_214">
						<type>0</type>
						<name>p_anonymous_namespace_Store_temp_ap_int_8_ap_uint_256_5u_U0</name>
						<ssdmobj_id>130</ssdmobj_id>
						<pins>
							<count>0</count>
							<item_version>0</item_version>
						</pins>
						<in_source_fork>0</in_source_fork>
						<in_sink_join>0</in_sink_join>
						<flag_in_gui>0</flag_in_gui>
					</item>
					<item class_id_reference="28" object_id="_215">
						<type>0</type>
						<name>p_anonymous_namespace_Store_ap_int_8_ap_uint_256_5u_U0</name>
						<ssdmobj_id>131</ssdmobj_id>
						<pins>
							<count>2</count>
							<item_version>0</item_version>
							<item class_id_reference="30" object_id="_216">
								<port class_id_reference="25" object_id="_217">
									<name>ln_data</name>
									<dir>1</dir>
									<type>1</type>
									<need_hs>1</need_hs>
									<top_port class_id_reference="25" object_id_reference="_165"></top_port>
									<chan class_id="-1"></chan>
								</port>
								<inst class_id_reference="31" object_id="_218">
									<type>0</type>
									<name>p_anonymous_namespace_Store_ap_int_8_ap_uint_256_5u_U0</name>
									<ssdmobj_id>131</ssdmobj_id>
								</inst>
							</item>
							<item class_id_reference="30" object_id="_219">
								<port class_id_reference="25" object_id="_220">
									<name>done</name>
									<dir>1</dir>
									<type>3</type>
									<need_hs>1</need_hs>
									<top_port class_id_reference="25" object_id_reference="_175"></top_port>
									<chan class_id="-1"></chan>
								</port>
								<inst class_id_reference="31" object_id_reference="_218"></inst>
							</item>
						</pins>
						<in_source_fork>0</in_source_fork>
						<in_sink_join>1</in_sink_join>
						<flag_in_gui>0</flag_in_gui>
					</item>
				</process_list>
				<channel_list class_id="32" tracking_level="0" version="0">
					<count>20</count>
					<item_version>0</item_version>
					<item class_id="26" tracking_level="1" version="0" object_id="_221">
						<type>1</type>
						<name>output_data_addr_c</name>
						<ssdmobj_id>51</ssdmobj_id>
						<ctype>0</ctype>
						<depth>7</depth>
						<bitwidth>32</bitwidth>
						<suggested_type>2</suggested_type>
						<suggested_depth>7</suggested_depth>
						<source_list>
							<count>1</count>
							<item_version>0</item_version>
							<item class_id_reference="30" object_id="_222">
								<port class_id_reference="25" object_id="_223">
									<name>in</name>
									<dir>0</dir>
									<type>3</type>
									<need_hs>0</need_hs>
									<top_port class_id="-1"></top_port>
									<chan class_id="-1"></chan>
								</port>
								<inst class_id_reference="31" object_id_reference="_182"></inst>
							</item>
						</source_list>
						<sink_list>
							<count>1</count>
							<item_version>0</item_version>
							<item class_id_reference="30" object_id="_224">
								<port class_id_reference="25" object_id="_225">
									<name>out</name>
									<dir>1</dir>
									<type>3</type>
									<need_hs>0</need_hs>
									<top_port class_id="-1"></top_port>
									<chan class_id="-1"></chan>
								</port>
								<inst class_id_reference="31" object_id_reference="_218"></inst>
							</item>
						</sink_list>
					</item>
					<item class_id_reference="26" object_id="_226">
						<type>1</type>
						<name>outputs_c</name>
						<ssdmobj_id>24</ssdmobj_id>
						<ctype>0</ctype>
						<depth>7</depth>
						<bitwidth>64</bitwidth>
						<suggested_type>2</suggested_type>
						<suggested_depth>7</suggested_depth>
						<source_list>
							<count>1</count>
							<item_version>0</item_version>
							<item class_id_reference="30" object_id="_227">
								<port class_id_reference="25" object_id="_228">
									<name>in</name>
									<dir>0</dir>
									<type>3</type>
									<need_hs>0</need_hs>
									<top_port class_id="-1"></top_port>
									<chan class_id="-1"></chan>
								</port>
								<inst class_id_reference="31" object_id_reference="_182"></inst>
							</item>
						</source_list>
						<sink_list>
							<count>1</count>
							<item_version>0</item_version>
							<item class_id_reference="30" object_id="_229">
								<port class_id_reference="25" object_id="_230">
									<name>out</name>
									<dir>1</dir>
									<type>3</type>
									<need_hs>0</need_hs>
									<top_port class_id="-1"></top_port>
									<chan class_id="-1"></chan>
								</port>
								<inst class_id_reference="31" object_id_reference="_218"></inst>
							</item>
						</sink_list>
					</item>
					<item class_id_reference="26" object_id="_231">
						<type>1</type>
						<name>data_copy_a</name>
						<ssdmobj_id>94</ssdmobj_id>
						<ctype>0</ctype>
						<depth>16</depth>
						<bitwidth>256</bitwidth>
						<suggested_type>0</suggested_type>
						<suggested_depth>16</suggested_depth>
						<source_list>
							<count>1</count>
							<item_version>0</item_version>
							<item class_id_reference="30" object_id="_232">
								<port class_id_reference="25" object_id="_233">
									<name>in</name>
									<dir>0</dir>
									<type>3</type>
									<need_hs>0</need_hs>
									<top_port class_id="-1"></top_port>
									<chan class_id="-1"></chan>
								</port>
								<inst class_id_reference="31" object_id_reference="_188"></inst>
							</item>
						</source_list>
						<sink_list>
							<count>1</count>
							<item_version>0</item_version>
							<item class_id_reference="30" object_id="_234">
								<port class_id_reference="25" object_id="_235">
									<name>out</name>
									<dir>1</dir>
									<type>3</type>
									<need_hs>0</need_hs>
									<top_port class_id="-1"></top_port>
									<chan class_id="-1"></chan>
								</port>
								<inst class_id_reference="31" object_id="_236">
									<type>0</type>
									<name>p_anonymous_namespace_Mean_ap_int_8_5u_U0</name>
									<ssdmobj_id>127</ssdmobj_id>
								</inst>
							</item>
						</sink_list>
					</item>
					<item class_id_reference="26" object_id="_237">
						<type>1</type>
						<name>data_copy_b</name>
						<ssdmobj_id>97</ssdmobj_id>
						<ctype>0</ctype>
						<depth>16</depth>
						<bitwidth>256</bitwidth>
						<suggested_type>0</suggested_type>
						<suggested_depth>16</suggested_depth>
						<source_list>
							<count>1</count>
							<item_version>0</item_version>
							<item class_id_reference="30" object_id="_238">
								<port class_id_reference="25" object_id="_239">
									<name>in</name>
									<dir>0</dir>
									<type>3</type>
									<need_hs>0</need_hs>
									<top_port class_id="-1"></top_port>
									<chan class_id="-1"></chan>
								</port>
								<inst class_id_reference="31" object_id_reference="_188"></inst>
							</item>
						</source_list>
						<sink_list>
							<count>1</count>
							<item_version>0</item_version>
							<item class_id_reference="30" object_id="_240">
								<port class_id_reference="25" object_id="_241">
									<name>out</name>
									<dir>1</dir>
									<type>3</type>
									<need_hs>0</need_hs>
									<top_port class_id="-1"></top_port>
									<chan class_id="-1"></chan>
								</port>
								<inst class_id_reference="31" object_id="_242">
									<type>0</type>
									<name>p_anonymous_namespace_StdDev_ap_int_8_float_5u_U0</name>
									<ssdmobj_id>128</ssdmobj_id>
								</inst>
							</item>
						</sink_list>
					</item>
					<item class_id_reference="26" object_id="_243">
						<type>1</type>
						<name>data_copy_c</name>
						<ssdmobj_id>100</ssdmobj_id>
						<ctype>0</ctype>
						<depth>16</depth>
						<bitwidth>256</bitwidth>
						<suggested_type>0</suggested_type>
						<suggested_depth>16</suggested_depth>
						<source_list>
							<count>1</count>
							<item_version>0</item_version>
							<item class_id_reference="30" object_id="_244">
								<port class_id_reference="25" object_id="_245">
									<name>in</name>
									<dir>0</dir>
									<type>3</type>
									<need_hs>0</need_hs>
									<top_port class_id="-1"></top_port>
									<chan class_id="-1"></chan>
								</port>
								<inst class_id_reference="31" object_id_reference="_188"></inst>
							</item>
						</source_list>
						<sink_list>
							<count>1</count>
							<item_version>0</item_version>
							<item class_id_reference="30" object_id="_246">
								<port class_id_reference="25" object_id="_247">
									<name>out</name>
									<dir>1</dir>
									<type>3</type>
									<need_hs>0</need_hs>
									<top_port class_id="-1"></top_port>
									<chan class_id="-1"></chan>
								</port>
								<inst class_id_reference="31" object_id="_248">
									<type>0</type>
									<name>p_anonymous_namespace_Norm_ap_int_8_float_5u_U0</name>
									<ssdmobj_id>129</ssdmobj_id>
								</inst>
							</item>
						</sink_list>
					</item>
					<item class_id_reference="26" object_id="_249">
						<type>1</type>
						<name>rows_c19</name>
						<ssdmobj_id>39</ssdmobj_id>
						<ctype>0</ctype>
						<depth>2</depth>
						<bitwidth>32</bitwidth>
						<suggested_type>2</suggested_type>
						<suggested_depth>2</suggested_depth>
						<source_list>
							<count>1</count>
							<item_version>0</item_version>
							<item class_id_reference="30" object_id="_250">
								<port class_id_reference="25" object_id="_251">
									<name>in</name>
									<dir>0</dir>
									<type>3</type>
									<need_hs>0</need_hs>
									<top_port class_id="-1"></top_port>
									<chan class_id="-1"></chan>
								</port>
								<inst class_id_reference="31" object_id_reference="_188"></inst>
							</item>
						</source_list>
						<sink_list>
							<count>1</count>
							<item_version>0</item_version>
							<item class_id_reference="30" object_id="_252">
								<port class_id_reference="25" object_id="_253">
									<name>out</name>
									<dir>1</dir>
									<type>3</type>
									<need_hs>0</need_hs>
									<top_port class_id="-1"></top_port>
									<chan class_id="-1"></chan>
								</port>
								<inst class_id_reference="31" object_id_reference="_236"></inst>
							</item>
						</sink_list>
					</item>
					<item class_id_reference="26" object_id="_254">
						<type>1</type>
						<name>cols_log_c22</name>
						<ssdmobj_id>27</ssdmobj_id>
						<ctype>0</ctype>
						<depth>2</depth>
						<bitwidth>32</bitwidth>
						<suggested_type>2</suggested_type>
						<suggested_depth>2</suggested_depth>
						<source_list>
							<count>1</count>
							<item_version>0</item_version>
							<item class_id_reference="30" object_id="_255">
								<port class_id_reference="25" object_id="_256">
									<name>in</name>
									<dir>0</dir>
									<type>3</type>
									<need_hs>0</need_hs>
									<top_port class_id="-1"></top_port>
									<chan class_id="-1"></chan>
								</port>
								<inst class_id_reference="31" object_id_reference="_188"></inst>
							</item>
						</source_list>
						<sink_list>
							<count>1</count>
							<item_version>0</item_version>
							<item class_id_reference="30" object_id="_257">
								<port class_id_reference="25" object_id="_258">
									<name>out</name>
									<dir>1</dir>
									<type>3</type>
									<need_hs>0</need_hs>
									<top_port class_id="-1"></top_port>
									<chan class_id="-1"></chan>
								</port>
								<inst class_id_reference="31" object_id_reference="_236"></inst>
							</item>
						</sink_list>
					</item>
					<item class_id_reference="26" object_id="_259">
						<type>1</type>
						<name>gamma</name>
						<ssdmobj_id>103</ssdmobj_id>
						<ctype>0</ctype>
						<depth>16</depth>
						<bitwidth>256</bitwidth>
						<suggested_type>0</suggested_type>
						<suggested_depth>16</suggested_depth>
						<source_list>
							<count>1</count>
							<item_version>0</item_version>
							<item class_id_reference="30" object_id="_260">
								<port class_id_reference="25" object_id="_261">
									<name>in</name>
									<dir>0</dir>
									<type>3</type>
									<need_hs>0</need_hs>
									<top_port class_id="-1"></top_port>
									<chan class_id="-1"></chan>
								</port>
								<inst class_id_reference="31" object_id_reference="_200"></inst>
							</item>
						</source_list>
						<sink_list>
							<count>1</count>
							<item_version>0</item_version>
							<item class_id_reference="30" object_id="_262">
								<port class_id_reference="25" object_id="_263">
									<name>out</name>
									<dir>1</dir>
									<type>3</type>
									<need_hs>0</need_hs>
									<top_port class_id="-1"></top_port>
									<chan class_id="-1"></chan>
								</port>
								<inst class_id_reference="31" object_id_reference="_248"></inst>
							</item>
						</sink_list>
					</item>
					<item class_id_reference="26" object_id="_264">
						<type>1</type>
						<name>beta</name>
						<ssdmobj_id>106</ssdmobj_id>
						<ctype>0</ctype>
						<depth>16</depth>
						<bitwidth>256</bitwidth>
						<suggested_type>0</suggested_type>
						<suggested_depth>16</suggested_depth>
						<source_list>
							<count>1</count>
							<item_version>0</item_version>
							<item class_id_reference="30" object_id="_265">
								<port class_id_reference="25" object_id="_266">
									<name>in</name>
									<dir>0</dir>
									<type>3</type>
									<need_hs>0</need_hs>
									<top_port class_id="-1"></top_port>
									<chan class_id="-1"></chan>
								</port>
								<inst class_id_reference="31" object_id_reference="_200"></inst>
							</item>
						</source_list>
						<sink_list>
							<count>1</count>
							<item_version>0</item_version>
							<item class_id_reference="30" object_id="_267">
								<port class_id_reference="25" object_id="_268">
									<name>out</name>
									<dir>1</dir>
									<type>3</type>
									<need_hs>0</need_hs>
									<top_port class_id="-1"></top_port>
									<chan class_id="-1"></chan>
								</port>
								<inst class_id_reference="31" object_id_reference="_248"></inst>
							</item>
						</sink_list>
					</item>
					<item class_id_reference="26" object_id="_269">
						<type>1</type>
						<name>mean_a</name>
						<ssdmobj_id>109</ssdmobj_id>
						<ctype>0</ctype>
						<depth>32</depth>
						<bitwidth>8</bitwidth>
						<suggested_type>0</suggested_type>
						<suggested_depth>32</suggested_depth>
						<source_list>
							<count>1</count>
							<item_version>0</item_version>
							<item class_id_reference="30" object_id="_270">
								<port class_id_reference="25" object_id="_271">
									<name>in</name>
									<dir>0</dir>
									<type>3</type>
									<need_hs>0</need_hs>
									<top_port class_id="-1"></top_port>
									<chan class_id="-1"></chan>
								</port>
								<inst class_id_reference="31" object_id_reference="_236"></inst>
							</item>
						</source_list>
						<sink_list>
							<count>1</count>
							<item_version>0</item_version>
							<item class_id_reference="30" object_id="_272">
								<port class_id_reference="25" object_id="_273">
									<name>out</name>
									<dir>1</dir>
									<type>3</type>
									<need_hs>0</need_hs>
									<top_port class_id="-1"></top_port>
									<chan class_id="-1"></chan>
								</port>
								<inst class_id_reference="31" object_id_reference="_242"></inst>
							</item>
						</sink_list>
					</item>
					<item class_id_reference="26" object_id="_274">
						<type>1</type>
						<name>mean_b</name>
						<ssdmobj_id>112</ssdmobj_id>
						<ctype>0</ctype>
						<depth>32</depth>
						<bitwidth>8</bitwidth>
						<suggested_type>0</suggested_type>
						<suggested_depth>32</suggested_depth>
						<source_list>
							<count>1</count>
							<item_version>0</item_version>
							<item class_id_reference="30" object_id="_275">
								<port class_id_reference="25" object_id="_276">
									<name>in</name>
									<dir>0</dir>
									<type>3</type>
									<need_hs>0</need_hs>
									<top_port class_id="-1"></top_port>
									<chan class_id="-1"></chan>
								</port>
								<inst class_id_reference="31" object_id_reference="_236"></inst>
							</item>
						</source_list>
						<sink_list>
							<count>1</count>
							<item_version>0</item_version>
							<item class_id_reference="30" object_id="_277">
								<port class_id_reference="25" object_id="_278">
									<name>out</name>
									<dir>1</dir>
									<type>3</type>
									<need_hs>0</need_hs>
									<top_port class_id="-1"></top_port>
									<chan class_id="-1"></chan>
								</port>
								<inst class_id_reference="31" object_id_reference="_248"></inst>
							</item>
						</sink_list>
					</item>
					<item class_id_reference="26" object_id="_279">
						<type>1</type>
						<name>rows_c18</name>
						<ssdmobj_id>42</ssdmobj_id>
						<ctype>0</ctype>
						<depth>2</depth>
						<bitwidth>32</bitwidth>
						<suggested_type>2</suggested_type>
						<suggested_depth>2</suggested_depth>
						<source_list>
							<count>1</count>
							<item_version>0</item_version>
							<item class_id_reference="30" object_id="_280">
								<port class_id_reference="25" object_id="_281">
									<name>in</name>
									<dir>0</dir>
									<type>3</type>
									<need_hs>0</need_hs>
									<top_port class_id="-1"></top_port>
									<chan class_id="-1"></chan>
								</port>
								<inst class_id_reference="31" object_id_reference="_236"></inst>
							</item>
						</source_list>
						<sink_list>
							<count>1</count>
							<item_version>0</item_version>
							<item class_id_reference="30" object_id="_282">
								<port class_id_reference="25" object_id="_283">
									<name>out</name>
									<dir>1</dir>
									<type>3</type>
									<need_hs>0</need_hs>
									<top_port class_id="-1"></top_port>
									<chan class_id="-1"></chan>
								</port>
								<inst class_id_reference="31" object_id_reference="_242"></inst>
							</item>
						</sink_list>
					</item>
					<item class_id_reference="26" object_id="_284">
						<type>1</type>
						<name>cols_log_c21</name>
						<ssdmobj_id>30</ssdmobj_id>
						<ctype>0</ctype>
						<depth>2</depth>
						<bitwidth>32</bitwidth>
						<suggested_type>2</suggested_type>
						<suggested_depth>2</suggested_depth>
						<source_list>
							<count>1</count>
							<item_version>0</item_version>
							<item class_id_reference="30" object_id="_285">
								<port class_id_reference="25" object_id="_286">
									<name>in</name>
									<dir>0</dir>
									<type>3</type>
									<need_hs>0</need_hs>
									<top_port class_id="-1"></top_port>
									<chan class_id="-1"></chan>
								</port>
								<inst class_id_reference="31" object_id_reference="_236"></inst>
							</item>
						</source_list>
						<sink_list>
							<count>1</count>
							<item_version>0</item_version>
							<item class_id_reference="30" object_id="_287">
								<port class_id_reference="25" object_id="_288">
									<name>out</name>
									<dir>1</dir>
									<type>3</type>
									<need_hs>0</need_hs>
									<top_port class_id="-1"></top_port>
									<chan class_id="-1"></chan>
								</port>
								<inst class_id_reference="31" object_id_reference="_242"></inst>
							</item>
						</sink_list>
					</item>
					<item class_id_reference="26" object_id="_289">
						<type>1</type>
						<name>stddev</name>
						<ssdmobj_id>115</ssdmobj_id>
						<ctype>0</ctype>
						<depth>32</depth>
						<bitwidth>32</bitwidth>
						<suggested_type>0</suggested_type>
						<suggested_depth>32</suggested_depth>
						<source_list>
							<count>1</count>
							<item_version>0</item_version>
							<item class_id_reference="30" object_id="_290">
								<port class_id_reference="25" object_id="_291">
									<name>in</name>
									<dir>0</dir>
									<type>3</type>
									<need_hs>0</need_hs>
									<top_port class_id="-1"></top_port>
									<chan class_id="-1"></chan>
								</port>
								<inst class_id_reference="31" object_id_reference="_242"></inst>
							</item>
						</source_list>
						<sink_list>
							<count>1</count>
							<item_version>0</item_version>
							<item class_id_reference="30" object_id="_292">
								<port class_id_reference="25" object_id="_293">
									<name>out</name>
									<dir>1</dir>
									<type>3</type>
									<need_hs>0</need_hs>
									<top_port class_id="-1"></top_port>
									<chan class_id="-1"></chan>
								</port>
								<inst class_id_reference="31" object_id_reference="_248"></inst>
							</item>
						</sink_list>
					</item>
					<item class_id_reference="26" object_id="_294">
						<type>1</type>
						<name>rows_c17</name>
						<ssdmobj_id>45</ssdmobj_id>
						<ctype>0</ctype>
						<depth>2</depth>
						<bitwidth>32</bitwidth>
						<suggested_type>2</suggested_type>
						<suggested_depth>2</suggested_depth>
						<source_list>
							<count>1</count>
							<item_version>0</item_version>
							<item class_id_reference="30" object_id="_295">
								<port class_id_reference="25" object_id="_296">
									<name>in</name>
									<dir>0</dir>
									<type>3</type>
									<need_hs>0</need_hs>
									<top_port class_id="-1"></top_port>
									<chan class_id="-1"></chan>
								</port>
								<inst class_id_reference="31" object_id_reference="_242"></inst>
							</item>
						</source_list>
						<sink_list>
							<count>1</count>
							<item_version>0</item_version>
							<item class_id_reference="30" object_id="_297">
								<port class_id_reference="25" object_id="_298">
									<name>out</name>
									<dir>1</dir>
									<type>3</type>
									<need_hs>0</need_hs>
									<top_port class_id="-1"></top_port>
									<chan class_id="-1"></chan>
								</port>
								<inst class_id_reference="31" object_id_reference="_248"></inst>
							</item>
						</sink_list>
					</item>
					<item class_id_reference="26" object_id="_299">
						<type>1</type>
						<name>cols_log_c20</name>
						<ssdmobj_id>33</ssdmobj_id>
						<ctype>0</ctype>
						<depth>2</depth>
						<bitwidth>32</bitwidth>
						<suggested_type>2</suggested_type>
						<suggested_depth>2</suggested_depth>
						<source_list>
							<count>1</count>
							<item_version>0</item_version>
							<item class_id_reference="30" object_id="_300">
								<port class_id_reference="25" object_id="_301">
									<name>in</name>
									<dir>0</dir>
									<type>3</type>
									<need_hs>0</need_hs>
									<top_port class_id="-1"></top_port>
									<chan class_id="-1"></chan>
								</port>
								<inst class_id_reference="31" object_id_reference="_242"></inst>
							</item>
						</source_list>
						<sink_list>
							<count>1</count>
							<item_version>0</item_version>
							<item class_id_reference="30" object_id="_302">
								<port class_id_reference="25" object_id="_303">
									<name>out</name>
									<dir>1</dir>
									<type>3</type>
									<need_hs>0</need_hs>
									<top_port class_id="-1"></top_port>
									<chan class_id="-1"></chan>
								</port>
								<inst class_id_reference="31" object_id_reference="_248"></inst>
							</item>
						</sink_list>
					</item>
					<item class_id_reference="26" object_id="_304">
						<type>1</type>
						<name>norm</name>
						<ssdmobj_id>118</ssdmobj_id>
						<ctype>0</ctype>
						<depth>16</depth>
						<bitwidth>256</bitwidth>
						<suggested_type>0</suggested_type>
						<suggested_depth>16</suggested_depth>
						<source_list>
							<count>1</count>
							<item_version>0</item_version>
							<item class_id_reference="30" object_id="_305">
								<port class_id_reference="25" object_id="_306">
									<name>in</name>
									<dir>0</dir>
									<type>3</type>
									<need_hs>0</need_hs>
									<top_port class_id="-1"></top_port>
									<chan class_id="-1"></chan>
								</port>
								<inst class_id_reference="31" object_id_reference="_248"></inst>
							</item>
						</source_list>
						<sink_list>
							<count>1</count>
							<item_version>0</item_version>
							<item class_id_reference="30" object_id="_307">
								<port class_id_reference="25" object_id="_308">
									<name>out</name>
									<dir>1</dir>
									<type>3</type>
									<need_hs>0</need_hs>
									<top_port class_id="-1"></top_port>
									<chan class_id="-1"></chan>
								</port>
								<inst class_id_reference="31" object_id="_309">
									<type>0</type>
									<name>p_anonymous_namespace_Store_temp_ap_int_8_ap_uint_256_5u_U0</name>
									<ssdmobj_id>130</ssdmobj_id>
								</inst>
							</item>
						</sink_list>
					</item>
					<item class_id_reference="26" object_id="_310">
						<type>1</type>
						<name>rows_c</name>
						<ssdmobj_id>48</ssdmobj_id>
						<ctype>0</ctype>
						<depth>2</depth>
						<bitwidth>32</bitwidth>
						<suggested_type>2</suggested_type>
						<suggested_depth>2</suggested_depth>
						<source_list>
							<count>1</count>
							<item_version>0</item_version>
							<item class_id_reference="30" object_id="_311">
								<port class_id_reference="25" object_id="_312">
									<name>in</name>
									<dir>0</dir>
									<type>3</type>
									<need_hs>0</need_hs>
									<top_port class_id="-1"></top_port>
									<chan class_id="-1"></chan>
								</port>
								<inst class_id_reference="31" object_id_reference="_248"></inst>
							</item>
						</source_list>
						<sink_list>
							<count>1</count>
							<item_version>0</item_version>
							<item class_id_reference="30" object_id="_313">
								<port class_id_reference="25" object_id="_314">
									<name>out</name>
									<dir>1</dir>
									<type>3</type>
									<need_hs>0</need_hs>
									<top_port class_id="-1"></top_port>
									<chan class_id="-1"></chan>
								</port>
								<inst class_id_reference="31" object_id_reference="_309"></inst>
							</item>
						</sink_list>
					</item>
					<item class_id_reference="26" object_id="_315">
						<type>1</type>
						<name>cols_log_c</name>
						<ssdmobj_id>36</ssdmobj_id>
						<ctype>0</ctype>
						<depth>2</depth>
						<bitwidth>32</bitwidth>
						<suggested_type>2</suggested_type>
						<suggested_depth>2</suggested_depth>
						<source_list>
							<count>1</count>
							<item_version>0</item_version>
							<item class_id_reference="30" object_id="_316">
								<port class_id_reference="25" object_id="_317">
									<name>in</name>
									<dir>0</dir>
									<type>3</type>
									<need_hs>0</need_hs>
									<top_port class_id="-1"></top_port>
									<chan class_id="-1"></chan>
								</port>
								<inst class_id_reference="31" object_id_reference="_248"></inst>
							</item>
						</source_list>
						<sink_list>
							<count>1</count>
							<item_version>0</item_version>
							<item class_id_reference="30" object_id="_318">
								<port class_id_reference="25" object_id="_319">
									<name>out</name>
									<dir>1</dir>
									<type>3</type>
									<need_hs>0</need_hs>
									<top_port class_id="-1"></top_port>
									<chan class_id="-1"></chan>
								</port>
								<inst class_id_reference="31" object_id_reference="_309"></inst>
							</item>
						</sink_list>
					</item>
					<item class_id_reference="26" object_id="_320">
						<type>1</type>
						<name>store_temp</name>
						<ssdmobj_id>121</ssdmobj_id>
						<ctype>0</ctype>
						<depth>16</depth>
						<bitwidth>256</bitwidth>
						<suggested_type>0</suggested_type>
						<suggested_depth>16</suggested_depth>
						<source_list>
							<count>1</count>
							<item_version>0</item_version>
							<item class_id_reference="30" object_id="_321">
								<port class_id_reference="25" object_id="_322">
									<name>in</name>
									<dir>0</dir>
									<type>3</type>
									<need_hs>0</need_hs>
									<top_port class_id="-1"></top_port>
									<chan class_id="-1"></chan>
								</port>
								<inst class_id_reference="31" object_id_reference="_309"></inst>
							</item>
						</source_list>
						<sink_list>
							<count>1</count>
							<item_version>0</item_version>
							<item class_id_reference="30" object_id="_323">
								<port class_id_reference="25" object_id="_324">
									<name>out</name>
									<dir>1</dir>
									<type>3</type>
									<need_hs>0</need_hs>
									<top_port class_id="-1"></top_port>
									<chan class_id="-1"></chan>
								</port>
								<inst class_id_reference="31" object_id_reference="_218"></inst>
							</item>
						</sink_list>
					</item>
				</channel_list>
				<net_list class_id="33" tracking_level="0" version="0">
					<count>0</count>
					<item_version>0</item_version>
				</net_list>
			</mDfPipe>
		</item>
	</cdfg_regions>
	<fsm class_id="-1"></fsm>
	<res class_id="-1"></res>
	<node_label_latency class_id="36" tracking_level="0" version="0">
		<count>38</count>
		<item_version>0</item_version>
		<item class_id="37" tracking_level="0" version="0">
			<first>15</first>
			<second class_id="38" tracking_level="0" version="0">
				<first>0</first>
				<second>0</second>
			</second>
		</item>
		<item>
			<first>16</first>
			<second>
				<first>0</first>
				<second>0</second>
			</second>
		</item>
		<item>
			<first>17</first>
			<second>
				<first>0</first>
				<second>0</second>
			</second>
		</item>
		<item>
			<first>18</first>
			<second>
				<first>0</first>
				<second>0</second>
			</second>
		</item>
		<item>
			<first>19</first>
			<second>
				<first>0</first>
				<second>0</second>
			</second>
		</item>
		<item>
			<first>20</first>
			<second>
				<first>0</first>
				<second>0</second>
			</second>
		</item>
		<item>
			<first>21</first>
			<second>
				<first>0</first>
				<second>0</second>
			</second>
		</item>
		<item>
			<first>22</first>
			<second>
				<first>0</first>
				<second>0</second>
			</second>
		</item>
		<item>
			<first>23</first>
			<second>
				<first>0</first>
				<second>0</second>
			</second>
		</item>
		<item>
			<first>24</first>
			<second>
				<first>0</first>
				<second>0</second>
			</second>
		</item>
		<item>
			<first>27</first>
			<second>
				<first>0</first>
				<second>0</second>
			</second>
		</item>
		<item>
			<first>30</first>
			<second>
				<first>0</first>
				<second>0</second>
			</second>
		</item>
		<item>
			<first>33</first>
			<second>
				<first>0</first>
				<second>0</second>
			</second>
		</item>
		<item>
			<first>36</first>
			<second>
				<first>0</first>
				<second>0</second>
			</second>
		</item>
		<item>
			<first>39</first>
			<second>
				<first>0</first>
				<second>0</second>
			</second>
		</item>
		<item>
			<first>42</first>
			<second>
				<first>0</first>
				<second>0</second>
			</second>
		</item>
		<item>
			<first>45</first>
			<second>
				<first>0</first>
				<second>0</second>
			</second>
		</item>
		<item>
			<first>48</first>
			<second>
				<first>0</first>
				<second>0</second>
			</second>
		</item>
		<item>
			<first>51</first>
			<second>
				<first>0</first>
				<second>0</second>
			</second>
		</item>
		<item>
			<first>94</first>
			<second>
				<first>0</first>
				<second>0</second>
			</second>
		</item>
		<item>
			<first>97</first>
			<second>
				<first>0</first>
				<second>0</second>
			</second>
		</item>
		<item>
			<first>100</first>
			<second>
				<first>0</first>
				<second>0</second>
			</second>
		</item>
		<item>
			<first>103</first>
			<second>
				<first>0</first>
				<second>0</second>
			</second>
		</item>
		<item>
			<first>106</first>
			<second>
				<first>0</first>
				<second>0</second>
			</second>
		</item>
		<item>
			<first>109</first>
			<second>
				<first>0</first>
				<second>0</second>
			</second>
		</item>
		<item>
			<first>112</first>
			<second>
				<first>0</first>
				<second>0</second>
			</second>
		</item>
		<item>
			<first>115</first>
			<second>
				<first>0</first>
				<second>0</second>
			</second>
		</item>
		<item>
			<first>118</first>
			<second>
				<first>0</first>
				<second>0</second>
			</second>
		</item>
		<item>
			<first>121</first>
			<second>
				<first>0</first>
				<second>0</second>
			</second>
		</item>
		<item>
			<first>124</first>
			<second>
				<first>0</first>
				<second>0</second>
			</second>
		</item>
		<item>
			<first>125</first>
			<second>
				<first>0</first>
				<second>1</second>
			</second>
		</item>
		<item>
			<first>126</first>
			<second>
				<first>0</first>
				<second>1</second>
			</second>
		</item>
		<item>
			<first>127</first>
			<second>
				<first>2</first>
				<second>1</second>
			</second>
		</item>
		<item>
			<first>128</first>
			<second>
				<first>4</first>
				<second>1</second>
			</second>
		</item>
		<item>
			<first>129</first>
			<second>
				<first>6</first>
				<second>1</second>
			</second>
		</item>
		<item>
			<first>130</first>
			<second>
				<first>8</first>
				<second>1</second>
			</second>
		</item>
		<item>
			<first>131</first>
			<second>
				<first>10</first>
				<second>1</second>
			</second>
		</item>
		<item>
			<first>132</first>
			<second>
				<first>11</first>
				<second>0</second>
			</second>
		</item>
	</node_label_latency>
	<bblk_ent_exit class_id="39" tracking_level="0" version="0">
		<count>1</count>
		<item_version>0</item_version>
		<item class_id="40" tracking_level="0" version="0">
			<first>133</first>
			<second class_id="41" tracking_level="0" version="0">
				<first>0</first>
				<second>11</second>
			</second>
		</item>
	</bblk_ent_exit>
	<regions class_id="42" tracking_level="0" version="0">
		<count>1</count>
		<item_version>0</item_version>
		<item class_id="43" tracking_level="1" version="0" object_id="_325">
			<region_name>layernorm</region_name>
			<basic_blocks>
				<count>1</count>
				<item_version>0</item_version>
				<item>133</item>
			</basic_blocks>
			<nodes>
				<count>118</count>
				<item_version>0</item_version>
				<item>15</item>
				<item>16</item>
				<item>17</item>
				<item>18</item>
				<item>19</item>
				<item>20</item>
				<item>21</item>
				<item>22</item>
				<item>23</item>
				<item>24</item>
				<item>25</item>
				<item>26</item>
				<item>27</item>
				<item>28</item>
				<item>29</item>
				<item>30</item>
				<item>31</item>
				<item>32</item>
				<item>33</item>
				<item>34</item>
				<item>35</item>
				<item>36</item>
				<item>37</item>
				<item>38</item>
				<item>39</item>
				<item>40</item>
				<item>41</item>
				<item>42</item>
				<item>43</item>
				<item>44</item>
				<item>45</item>
				<item>46</item>
				<item>47</item>
				<item>48</item>
				<item>49</item>
				<item>50</item>
				<item>51</item>
				<item>52</item>
				<item>53</item>
				<item>54</item>
				<item>55</item>
				<item>56</item>
				<item>57</item>
				<item>58</item>
				<item>59</item>
				<item>60</item>
				<item>61</item>
				<item>62</item>
				<item>63</item>
				<item>64</item>
				<item>65</item>
				<item>66</item>
				<item>67</item>
				<item>68</item>
				<item>69</item>
				<item>70</item>
				<item>71</item>
				<item>72</item>
				<item>73</item>
				<item>74</item>
				<item>75</item>
				<item>76</item>
				<item>77</item>
				<item>78</item>
				<item>79</item>
				<item>80</item>
				<item>81</item>
				<item>82</item>
				<item>83</item>
				<item>84</item>
				<item>85</item>
				<item>86</item>
				<item>87</item>
				<item>88</item>
				<item>89</item>
				<item>90</item>
				<item>91</item>
				<item>92</item>
				<item>93</item>
				<item>94</item>
				<item>95</item>
				<item>96</item>
				<item>97</item>
				<item>98</item>
				<item>99</item>
				<item>100</item>
				<item>101</item>
				<item>102</item>
				<item>103</item>
				<item>104</item>
				<item>105</item>
				<item>106</item>
				<item>107</item>
				<item>108</item>
				<item>109</item>
				<item>110</item>
				<item>111</item>
				<item>112</item>
				<item>113</item>
				<item>114</item>
				<item>115</item>
				<item>116</item>
				<item>117</item>
				<item>118</item>
				<item>119</item>
				<item>120</item>
				<item>121</item>
				<item>122</item>
				<item>123</item>
				<item>124</item>
				<item>125</item>
				<item>126</item>
				<item>127</item>
				<item>128</item>
				<item>129</item>
				<item>130</item>
				<item>131</item>
				<item>132</item>
			</nodes>
			<anchor_node>-1</anchor_node>
			<region_type>16</region_type>
			<interval>0</interval>
			<pipe_depth>0</pipe_depth>
			<mDBIIViolationVec class_id="44" tracking_level="0" version="0">
				<count>0</count>
				<item_version>0</item_version>
			</mDBIIViolationVec>
		</item>
	</regions>
	<dp_fu_nodes class_id="45" tracking_level="0" version="0">
		<count>0</count>
		<item_version>0</item_version>
	</dp_fu_nodes>
	<dp_fu_nodes_expression class_id="46" tracking_level="0" version="0">
		<count>0</count>
		<item_version>0</item_version>
	</dp_fu_nodes_expression>
	<dp_fu_nodes_module>
		<count>0</count>
		<item_version>0</item_version>
	</dp_fu_nodes_module>
	<dp_fu_nodes_io>
		<count>0</count>
		<item_version>0</item_version>
	</dp_fu_nodes_io>
	<return_ports>
		<count>0</count>
		<item_version>0</item_version>
	</return_ports>
	<dp_mem_port_nodes class_id="47" tracking_level="0" version="0">
		<count>0</count>
		<item_version>0</item_version>
	</dp_mem_port_nodes>
	<dp_reg_nodes>
		<count>0</count>
		<item_version>0</item_version>
	</dp_reg_nodes>
	<dp_regname_nodes>
		<count>0</count>
		<item_version>0</item_version>
	</dp_regname_nodes>
	<dp_reg_phi>
		<count>0</count>
		<item_version>0</item_version>
	</dp_reg_phi>
	<dp_regname_phi>
		<count>0</count>
		<item_version>0</item_version>
	</dp_regname_phi>
	<dp_port_io_nodes class_id="48" tracking_level="0" version="0">
		<count>0</count>
		<item_version>0</item_version>
	</dp_port_io_nodes>
	<port2core>
		<count>0</count>
		<item_version>0</item_version>
	</port2core>
	<node2core>
		<count>0</count>
		<item_version>0</item_version>
	</node2core>
</syndb>
</boost_serialization>

