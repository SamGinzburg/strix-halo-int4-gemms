	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_attention_bwd_dq_int4xbf16_fp32_runtime_outbfloat16_doutbfloat16_float32_d64_dv64_shaperuntime_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1                          ; -- Begin function amd_strix_halo_gfx1151_attention_bwd_dq_int4xbf16_fp32_runtime_outbfloat16_doutbfloat16_float32_d64_dv64_shaperuntime_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1
	.p2align	8
	.type	amd_strix_halo_gfx1151_attention_bwd_dq_int4xbf16_fp32_runtime_outbfloat16_doutbfloat16_float32_d64_dv64_shaperuntime_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1,@function
amd_strix_halo_gfx1151_attention_bwd_dq_int4xbf16_fp32_runtime_outbfloat16_doutbfloat16_float32_d64_dv64_shaperuntime_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1:                                 ; @amd_strix_halo_gfx1151_attention_bwd_dq_int4xbf16_fp32_runtime_outbfloat16_doutbfloat16_float32_d64_dv64_shaperuntime_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1
.Lfunc_begin0:
	.file	1 "<repo>/src/amd_strix_halo_kernels" "attention_backward.py"
	.loc	1 60 0                          ; attention_backward.py:60:0
	.cfi_sections .debug_frame
	.cfi_startproc
; %bb.0:
	s_clause 0x2
	s_load_b128 s[20:23], s[0:1], 0x94
	s_load_b128 s[28:31], s[0:1], 0x64
	s_load_b64 s[34:35], s[0:1], 0x78
.Ltmp0:
	.loc	1 124 31 prologue_end           ; attention_backward.py:124:31
	v_lshrrev_b32_e32 v126, 5, v0
	v_and_b32_e32 v82, 31, v0
	s_clause 0x1
	s_load_b64 s[36:37], s[0:1], 0x0
	s_load_b64 s[24:25], s[0:1], 0x18
	.loc	1 134 28                        ; attention_backward.py:134:28
	v_xor_b32_e32 v21, 0x198, v0
	s_load_b128 s[40:43], s[0:1], 0x38
	.loc	1 124 31                        ; attention_backward.py:124:31
	v_or_b32_e32 v174, 2, v126
	v_or_b32_e32 v175, 4, v126
	v_or_b32_e32 v176, 6, v126
	v_or_b32_e32 v177, 8, v126
	v_or_b32_e32 v178, 10, v126
	v_or_b32_e32 v179, 12, v126
	v_or_b32_e32 v253, 14, v126
	s_waitcnt lgkmcnt(0)
	s_and_b32 s4, 1, s20
	s_bitcmp1_b32 s20, 8
	.loc	1 133 26                        ; attention_backward.py:133:26
	s_mul_i32 s47, s3, s30
	s_cselect_b32 s33, -1, 0
	s_cmp_eq_u32 s4, 1
	.loc	1 135 17                        ; attention_backward.py:135:17
	v_mad_u64_u32 v[107:108], null, s34, v126, v[82:83]
	s_cselect_b32 s18, -1, 0
	.loc	1 123 34                        ; attention_backward.py:123:34
	s_abs_i32 s4, s28
	.loc	1 121 23                        ; attention_backward.py:121:23
	s_abs_i32 s7, s3
	s_cvt_f32_u32 s5, s4
	s_sub_i32 s6, 0, s4
	.loc	1 119 19                        ; attention_backward.py:119:19
	s_lshl_b32 s46, s2, 5
	.loc	1 135 17                        ; attention_backward.py:135:17
	v_mad_u64_u32 v[108:109], null, s34, 6, v[107:108]
	.loc	1 121 23                        ; attention_backward.py:121:23
	v_rcp_iflag_f32_e32 v1, s5
	.loc	1 124 21                        ; attention_backward.py:124:21
	v_or_b32_e32 v2, s46, v174
	v_or_b32_e32 v3, s46, v175
	v_or_b32_e32 v4, s46, v176
	v_or_b32_e32 v5, s46, v177
	.loc	1 135 17                        ; attention_backward.py:135:17
	v_lshl_add_u32 v134, s34, 1, v107
	.loc	1 124 21                        ; attention_backward.py:124:21
	v_or_b32_e32 v7, s46, v179
	v_or_b32_e32 v8, s46, v253
	.loc	1 135 17                        ; attention_backward.py:135:17
	v_lshl_add_u32 v135, s34, 2, v107
	v_mad_u64_u32 v[109:110], null, s34, 10, v[107:108]
	.loc	1 121 23                        ; attention_backward.py:121:23
	v_readfirstlane_b32 s5, v1
	.loc	1 135 17                        ; attention_backward.py:135:17
	v_lshl_add_u32 v136, s34, 3, v107
	v_mad_u64_u32 v[110:111], null, s34, 12, v[107:108]
	v_mad_u64_u32 v[111:112], null, s34, 14, v[107:108]
	.loc	1 121 23                        ; attention_backward.py:121:23
	s_mul_f32 s5, s5, 0x4f7ffffe
	s_delay_alu instid0(SALU_CYCLE_3) | instskip(NEXT) | instid1(SALU_CYCLE_3)
	s_cvt_u32_f32 s5, s5
	s_mul_i32 s6, s6, s5
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_mul_hi_u32 s6, s5, s6
	s_add_i32 s5, s5, s6
	s_delay_alu instid0(SALU_CYCLE_1)
	s_mul_hi_u32 s2, s7, s5
	s_xor_b32 s5, s3, s28
	s_mul_i32 s6, s2, s4
	s_ashr_i32 s5, s5, 31
	s_sub_i32 s6, s7, s6
	s_add_i32 s7, s2, 1
	s_sub_i32 s8, s6, s4
	s_cmp_ge_u32 s6, s4
	s_cselect_b32 s2, s7, s2
	s_cselect_b32 s6, s8, s6
	s_add_i32 s7, s2, 1
	s_cmp_ge_u32 s6, s4
	s_cselect_b32 s7, s7, s2
	.loc	1 123 34                        ; attention_backward.py:123:34
	s_abs_i32 s6, s29
	.loc	1 121 23                        ; attention_backward.py:121:23
	s_xor_b32 s7, s7, s5
	.loc	1 123 34                        ; attention_backward.py:123:34
	s_cvt_f32_u32 s2, s6
	s_sub_i32 s9, 0, s6
	.loc	1 121 23                        ; attention_backward.py:121:23
	s_sub_i32 s19, s7, s5
	.loc	1 123 34                        ; attention_backward.py:123:34
	s_xor_b32 s10, s28, s29
	v_rcp_iflag_f32_e32 v1, s2
	.loc	1 133 27                        ; attention_backward.py:133:27
	s_mul_i32 s7, s19, s28
	.loc	1 123 34                        ; attention_backward.py:123:34
	s_ashr_i32 s10, s10, 31
	.loc	1 122 22                        ; attention_backward.py:122:22
	s_sub_i32 s28, s3, s7
	.loc	1 139 44                        ; attention_backward.py:139:44
	v_cmp_gt_i32_e64 s2, s34, v82
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 123 34                        ; attention_backward.py:123:34
	v_readfirstlane_b32 s8, v1
	.loc	1 124 31                        ; attention_backward.py:124:31
	v_or_b32_e32 v1, s46, v126
	.loc	1 123 34                        ; attention_backward.py:123:34
	s_mul_f32 s8, s8, 0x4f7ffffe
	.loc	1 124 21                        ; attention_backward.py:124:21
	v_or_b32_e32 v9, 16, v1
	v_or_b32_e32 v10, 18, v1
	v_or_b32_e32 v11, 20, v1
	.loc	1 123 34                        ; attention_backward.py:123:34
	s_cvt_u32_f32 s8, s8
	.loc	1 124 21                        ; attention_backward.py:124:21
	v_or_b32_e32 v12, 22, v1
	v_or_b32_e32 v13, 24, v1
	v_or_b32_e32 v14, 26, v1
	.loc	1 123 34                        ; attention_backward.py:123:34
	s_mul_i32 s9, s9, s8
	.loc	1 124 21                        ; attention_backward.py:124:21
	v_or_b32_e32 v15, 28, v1
	.loc	1 123 34                        ; attention_backward.py:123:34
	s_mul_hi_u32 s9, s8, s9
	.loc	1 124 21                        ; attention_backward.py:124:21
	v_or_b32_e32 v16, 30, v1
	.loc	1 123 34                        ; attention_backward.py:123:34
	s_add_i32 s8, s8, s9
	.loc	1 128 21                        ; attention_backward.py:128:21
	v_cmp_gt_i32_e32 vcc_lo, s30, v1
	.loc	1 123 34                        ; attention_backward.py:123:34
	s_mul_hi_u32 s5, s4, s8
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_mul_i32 s8, s5, s6
	s_sub_i32 s3, s4, s8
	s_add_i32 s4, s5, 1
	s_sub_i32 s7, s3, s6
	s_cmp_ge_u32 s3, s6
	s_cselect_b32 s4, s4, s5
	s_cselect_b32 s3, s7, s3
	s_add_i32 s5, s4, 1
	s_cmp_ge_u32 s3, s6
	s_cselect_b32 s3, s5, s4
	.loc	1 123 19 is_stmt 0              ; attention_backward.py:123:19
	s_abs_i32 s50, s28
	.loc	1 123 34                        ; attention_backward.py:123:34
	s_xor_b32 s3, s3, s10
	.loc	1 124 21 is_stmt 1              ; attention_backward.py:124:21
	s_or_b32 s4, s46, 1
	.loc	1 123 34                        ; attention_backward.py:123:34
	s_sub_i32 s56, s3, s10
	.loc	1 124 21                        ; attention_backward.py:124:21
	s_or_b32 s5, s46, 2
	.loc	1 123 19                        ; attention_backward.py:123:19
	s_abs_i32 s51, s56
	.loc	1 124 21                        ; attention_backward.py:124:21
	s_or_b32 s6, s46, 3
	.loc	1 123 19                        ; attention_backward.py:123:19
	s_cvt_f32_u32 s11, s51
	.loc	1 124 21                        ; attention_backward.py:124:21
	s_or_b32 s7, s46, 4
	s_or_b32 s8, s46, 5
	s_or_b32 s9, s46, 6
	.loc	1 123 19                        ; attention_backward.py:123:19
	v_rcp_iflag_f32_e32 v6, s11
	.loc	1 124 21                        ; attention_backward.py:124:21
	s_or_b32 s3, s46, 7
	s_or_b32 s10, s46, 8
	s_or_b32 s12, s46, 9
	s_or_b32 s13, s46, 10
	s_or_b32 s14, s46, 11
	s_or_b32 s11, s46, 12
	s_or_b32 s15, s46, 13
	s_or_b32 s16, s46, 14
	s_or_b32 s17, s46, 15
	.loc	1 123 19                        ; attention_backward.py:123:19
	v_readfirstlane_b32 s26, v6
	.loc	1 124 21                        ; attention_backward.py:124:21
	s_or_b32 s38, s46, 16
	s_or_b32 s39, s46, 17
	s_or_b32 s57, s46, 18
	s_or_b32 s58, s46, 19
	.loc	1 123 19                        ; attention_backward.py:123:19
	s_mul_f32 s26, s26, 0x4f7ffffe
	.loc	1 124 21                        ; attention_backward.py:124:21
	s_or_b32 s60, s46, 20
	s_or_b32 s62, s46, 21
	s_or_b32 s64, s46, 22
	.loc	1 123 19                        ; attention_backward.py:123:19
	s_cvt_u32_f32 s44, s26
	s_sub_i32 s26, 0, s51
	.loc	1 124 21                        ; attention_backward.py:124:21
	s_or_b32 s66, s46, 23
	s_or_b32 s68, s46, 24
	.loc	1 123 19                        ; attention_backward.py:123:19
	s_mul_i32 s26, s26, s44
	.loc	1 124 21                        ; attention_backward.py:124:21
	s_or_b32 s80, s46, 25
	.loc	1 123 19                        ; attention_backward.py:123:19
	s_mul_hi_u32 s26, s44, s26
	.loc	1 124 21                        ; attention_backward.py:124:21
	s_or_b32 s81, s46, 26
	s_or_b32 s82, s46, 27
	s_or_b32 s83, s46, 28
	s_or_b32 s84, s46, 29
	s_or_b32 s85, s46, 30
	s_or_b32 s86, s46, 31
	.loc	1 123 19                        ; attention_backward.py:123:19
	s_add_i32 s44, s44, s26
	.loc	1 128 21                        ; attention_backward.py:128:21
	s_cmp_lt_i32 s46, s30
	.loc	1 124 21                        ; attention_backward.py:124:21
	v_or_b32_e32 v6, s46, v178
	.loc	1 128 21                        ; attention_backward.py:128:21
	s_cselect_b32 s79, -1, 0
	s_cmp_lt_i32 s4, s30
	v_cmp_gt_i32_e64 s4, s30, v3
	s_cselect_b32 s70, -1, 0
	s_cmp_lt_i32 s5, s30
	v_cmp_gt_i32_e64 s5, s30, v4
	s_cselect_b32 s67, -1, 0
	s_cmp_lt_i32 s6, s30
	v_cmp_gt_i32_e64 s6, s30, v5
	s_cselect_b32 s65, -1, 0
	s_cmp_lt_i32 s7, s30
	v_cmp_gt_i32_e64 s7, s30, v6
	s_cselect_b32 s63, -1, 0
	s_cmp_lt_i32 s8, s30
	v_cmp_gt_i32_e64 s8, s30, v7
	s_cselect_b32 s61, -1, 0
	s_cmp_lt_i32 s9, s30
	v_cmp_gt_i32_e64 s9, s30, v8
	s_cselect_b32 s59, -1, 0
	s_cmp_lt_i32 s3, s30
	v_cmp_gt_i32_e64 s3, s30, v2
	s_cselect_b32 s55, -1, 0
	s_cmp_lt_i32 s10, s30
	v_cmp_gt_i32_e64 s10, s30, v9
	s_cselect_b32 s54, -1, 0
	s_cmp_lt_i32 s12, s30
	v_cmp_gt_i32_e64 s12, s30, v11
	s_cselect_b32 s53, -1, 0
	s_cmp_lt_i32 s13, s30
	v_cmp_gt_i32_e64 s13, s30, v12
	s_cselect_b32 s52, -1, 0
	s_cmp_lt_i32 s14, s30
	v_cmp_gt_i32_e64 s14, s30, v13
	s_cselect_b32 s49, -1, 0
	s_cmp_lt_i32 s11, s30
	v_cmp_gt_i32_e64 s11, s30, v10
	s_cselect_b32 s48, -1, 0
	s_cmp_lt_i32 s15, s30
	v_cmp_gt_i32_e64 s15, s30, v14
	s_cselect_b32 s45, -1, 0
	s_cmp_lt_i32 s16, s30
	v_cmp_gt_i32_e64 s16, s30, v15
	s_cselect_b32 s26, -1, 0
	s_cmp_lt_i32 s17, s30
	v_cmp_gt_i32_e64 s17, s30, v16
	s_cselect_b32 s27, -1, 0
	s_cmp_lt_i32 s38, s30
	s_cselect_b32 s78, -1, 0
	s_cmp_lt_i32 s39, s30
	s_mov_b32 s39, 0x31027000
	s_cselect_b32 s77, -1, 0
	s_cmp_lt_i32 s57, s30
	s_cselect_b32 s76, -1, 0
	s_cmp_lt_i32 s58, s30
	s_cselect_b32 s75, -1, 0
	s_cmp_lt_i32 s60, s30
	s_cselect_b32 s74, -1, 0
	s_cmp_lt_i32 s62, s30
	s_cselect_b32 s73, -1, 0
	s_cmp_lt_i32 s64, s30
	s_cselect_b32 s72, -1, 0
	s_cmp_lt_i32 s66, s30
	s_cselect_b32 s71, -1, 0
	s_cmp_lt_i32 s68, s30
	s_cselect_b32 s69, -1, 0
	s_cmp_lt_i32 s80, s30
	s_cselect_b32 s68, -1, 0
	s_cmp_lt_i32 s81, s30
	s_cselect_b32 s66, -1, 0
	s_cmp_lt_i32 s82, s30
	s_cselect_b32 s64, -1, 0
	s_cmp_lt_i32 s83, s30
	s_cselect_b32 s62, -1, 0
	s_cmp_lt_i32 s84, s30
	s_cselect_b32 s60, -1, 0
	s_cmp_lt_i32 s85, s30
	s_cselect_b32 s57, -1, 0
	s_cmp_lt_i32 s86, s30
	s_cselect_b32 s58, -1, 0
	.loc	1 135 17                        ; attention_backward.py:135:17
	s_add_i32 s47, s47, s46
	.loc	1 139 22                        ; attention_backward.py:139:22
	s_and_b32 vcc_lo, vcc_lo, s2
	.loc	1 135 17                        ; attention_backward.py:135:17
	s_mul_i32 s38, s47, s34
	.loc	1 134 28                        ; attention_backward.py:134:28
	s_and_b32 s37, s37, 0xffff
	.loc	1 135 17                        ; attention_backward.py:135:17
	v_add_nc_u32_e32 v1, s38, v107
	v_add_nc_u32_e32 v10, s38, v134
	v_add_nc_u32_e32 v11, s38, v135
	v_add_nc_u32_e32 v12, s38, v108
	v_add_nc_u32_e32 v13, s38, v136
	v_mad_u64_u32 v[2:3], null, s34, 18, v[1:2]
	v_lshl_add_u32 v17, s34, 4, v1
	v_add_nc_u32_e32 v14, s38, v109
	v_add_nc_u32_e32 v15, s38, v110
	v_add_nc_u32_e32 v16, s38, v111
	s_mov_b32 s38, 0x7ffffffe
	.loc	1 142 31                        ; attention_backward.py:142:31
	s_and_b32 s25, s25, 0xffff
	.loc	1 135 17                        ; attention_backward.py:135:17
	v_mad_u64_u32 v[3:4], null, s34, 20, v[1:2]
	v_mad_u64_u32 v[4:5], null, s34, 22, v[1:2]
	v_mad_u64_u32 v[5:6], null, s34, 24, v[1:2]
	v_mad_u64_u32 v[6:7], null, s34, 26, v[1:2]
	v_mad_u64_u32 v[7:8], null, s34, 28, v[1:2]
	v_mad_u64_u32 v[8:9], null, s34, 30, v[1:2]
	.loc	1 134 28                        ; attention_backward.py:134:28
	v_cndmask_b32_e32 v1, 0x80000000, v1, vcc_lo
	.loc	1 139 22                        ; attention_backward.py:139:22
	s_and_b32 vcc_lo, s3, s2
	.loc	1 168 40                        ; attention_backward.py:168:40
	v_cmp_gt_i32_e64 s3, s35, v0
	.loc	1 134 28                        ; attention_backward.py:134:28
	v_cndmask_b32_e32 v9, 0x80000000, v10, vcc_lo
	.loc	1 139 22                        ; attention_backward.py:139:22
	s_and_b32 vcc_lo, s4, s2
	.loc	1 134 28                        ; attention_backward.py:134:28
	v_cndmask_b32_e32 v10, 0x80000000, v11, vcc_lo
	.loc	1 139 22                        ; attention_backward.py:139:22
	s_and_b32 vcc_lo, s5, s2
	.loc	1 134 28                        ; attention_backward.py:134:28
	v_cndmask_b32_e32 v11, 0x80000000, v12, vcc_lo
	.loc	1 139 22                        ; attention_backward.py:139:22
	s_and_b32 vcc_lo, s6, s2
	.loc	1 134 28                        ; attention_backward.py:134:28
	v_cndmask_b32_e32 v12, 0x80000000, v13, vcc_lo
	.loc	1 139 22                        ; attention_backward.py:139:22
	s_and_b32 vcc_lo, s7, s2
	.loc	1 134 28                        ; attention_backward.py:134:28
	v_cndmask_b32_e32 v13, 0x80000000, v14, vcc_lo
	.loc	1 139 22                        ; attention_backward.py:139:22
	s_and_b32 vcc_lo, s8, s2
	.loc	1 134 28                        ; attention_backward.py:134:28
	s_clause 0x5
	buffer_load_u8 v14, v1, s[36:39], 0 offen
	buffer_load_u8 v9, v9, s[36:39], 0 offen
	buffer_load_u8 v10, v10, s[36:39], 0 offen
	buffer_load_u8 v11, v11, s[36:39], 0 offen
	buffer_load_u8 v12, v12, s[36:39], 0 offen
	buffer_load_u8 v13, v13, s[36:39], 0 offen
	v_cndmask_b32_e32 v1, 0x80000000, v15, vcc_lo
	.loc	1 139 22                        ; attention_backward.py:139:22
	s_and_b32 vcc_lo, s10, s2
	.loc	1 134 28                        ; attention_backward.py:134:28
	v_cndmask_b32_e32 v15, 0x80000000, v17, vcc_lo
	.loc	1 139 22                        ; attention_backward.py:139:22
	s_and_b32 vcc_lo, s11, s2
	.loc	1 134 28                        ; attention_backward.py:134:28
	v_cndmask_b32_e32 v2, 0x80000000, v2, vcc_lo
	.loc	1 139 22                        ; attention_backward.py:139:22
	s_and_b32 vcc_lo, s12, s2
	.loc	1 134 28                        ; attention_backward.py:134:28
	v_cndmask_b32_e32 v3, 0x80000000, v3, vcc_lo
	.loc	1 139 22                        ; attention_backward.py:139:22
	s_and_b32 vcc_lo, s13, s2
	.loc	1 134 28                        ; attention_backward.py:134:28
	v_cndmask_b32_e32 v4, 0x80000000, v4, vcc_lo
	.loc	1 139 22                        ; attention_backward.py:139:22
	s_and_b32 vcc_lo, s9, s2
	.loc	1 134 28                        ; attention_backward.py:134:28
	v_cndmask_b32_e32 v16, 0x80000000, v16, vcc_lo
	.loc	1 139 22                        ; attention_backward.py:139:22
	s_and_b32 vcc_lo, s14, s2
	.loc	1 134 28                        ; attention_backward.py:134:28
	s_clause 0x3
	buffer_load_u8 v15, v15, s[36:39], 0 offen
	buffer_load_u8 v17, v2, s[36:39], 0 offen
	buffer_load_u8 v18, v3, s[36:39], 0 offen
	buffer_load_u8 v19, v4, s[36:39], 0 offen
	v_cndmask_b32_e32 v2, 0x80000000, v5, vcc_lo
	.loc	1 139 22                        ; attention_backward.py:139:22
	s_and_b32 vcc_lo, s15, s2
	.loc	1 134 28                        ; attention_backward.py:134:28
	v_cndmask_b32_e32 v3, 0x80000000, v6, vcc_lo
	.loc	1 139 22                        ; attention_backward.py:139:22
	s_and_b32 vcc_lo, s16, s2
	.loc	1 134 28                        ; attention_backward.py:134:28
	v_cndmask_b32_e32 v4, 0x80000000, v7, vcc_lo
	.loc	1 139 22                        ; attention_backward.py:139:22
	s_and_b32 vcc_lo, s17, s2
	.loc	1 134 28                        ; attention_backward.py:134:28
	v_cndmask_b32_e32 v5, 0x80000000, v8, vcc_lo
	s_clause 0x5
	buffer_load_u8 v6, v2, s[36:39], 0 offen
	buffer_load_u8 v7, v3, s[36:39], 0 offen
	buffer_load_u8 v8, v1, s[36:39], 0 offen
	buffer_load_u8 v16, v16, s[36:39], 0 offen
	buffer_load_u8 v20, v4, s[36:39], 0 offen
	buffer_load_u8 v5, v5, s[36:39], 0 offen
	.loc	1 167 13                        ; attention_backward.py:167:13
	v_mad_u64_u32 v[1:2], null, s47, s35, v[0:1]
	.loc	1 134 28                        ; attention_backward.py:134:28
	v_xor_b32_e32 v2, 0x88, v0
	v_xor_b32_e32 v4, 0x110, v0
	.loc	1 168 18                        ; attention_backward.py:168:18
	s_and_b32 vcc_lo, s79, s3
	.loc	1 166 23                        ; attention_backward.py:166:23
	s_and_b32 s37, s41, 0xffff
	s_mov_b32 s36, s40
	.loc	1 134 28                        ; attention_backward.py:134:28
	v_add_nc_u32_e32 v138, 0, v2
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	.loc	1 167 13                        ; attention_backward.py:167:13
	v_mad_u64_u32 v[2:3], null, s35, 17, v[1:2]
	v_add_nc_u32_e32 v22, s35, v1
	.loc	1 134 28                        ; attention_backward.py:134:28
	v_add_nc_u32_e32 v139, 0, v4
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_lshlrev_b32_e32 v4, 1, v22
	.loc	1 134 28                        ; attention_backward.py:134:28
	v_add_nc_u32_e32 v140, 0, v21
	.loc	1 167 13                        ; attention_backward.py:167:13
	v_add_nc_u32_e32 v21, s35, v2
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_lshlrev_b32_e32 v2, 1, v2
	v_lshlrev_b32_e32 v1, 1, v1
	.loc	1 134 28                        ; attention_backward.py:134:28
	v_add_nc_u32_e32 v137, 0, v0
	.loc	1 167 13                        ; attention_backward.py:167:13
	v_add_nc_u32_e32 v3, s35, v22
	v_add_nc_u32_e32 v23, s35, v21
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_cndmask_b32_e32 v26, 0x80000000, v1, vcc_lo
	v_lshl_add_u32 v1, s35, 5, v1
	.loc	1 168 18                        ; attention_backward.py:168:18
	s_and_b32 vcc_lo, s70, s3
	.loc	1 167 13                        ; attention_backward.py:167:13
	v_add_nc_u32_e32 v22, s35, v3
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_cndmask_b32_e32 v35, 0x80000000, v4, vcc_lo
	.loc	1 168 18                        ; attention_backward.py:168:18
	s_and_b32 vcc_lo, s78, s3
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_dual_cndmask_b32 v1, 0x80000000, v1 :: v_dual_add_nc_u32 v146, v137, v0
	.loc	1 168 18                        ; attention_backward.py:168:18
	s_and_b32 vcc_lo, s77, s3
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_cndmask_b32_e32 v44, 0x80000000, v2, vcc_lo
	v_lshlrev_b32_e32 v2, 1, v21
	v_lshlrev_b32_e32 v3, 1, v3
	.loc	1 168 18                        ; attention_backward.py:168:18
	s_and_b32 vcc_lo, s67, s3
	.loc	1 167 13                        ; attention_backward.py:167:13
	v_add_nc_u32_e32 v21, s35, v22
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_dual_cndmask_b32 v40, 0x80000000, v3 :: v_dual_lshlrev_b32 v3, 1, v22
	.loc	1 168 18                        ; attention_backward.py:168:18
	s_and_b32 vcc_lo, s76, s3
	.loc	1 167 13                        ; attention_backward.py:167:13
	v_add_nc_u32_e32 v22, s35, v23
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_cndmask_b32_e32 v4, 0x80000000, v2, vcc_lo
	v_lshlrev_b32_e32 v2, 1, v23
	.loc	1 168 18                        ; attention_backward.py:168:18
	s_and_b32 vcc_lo, s65, s3
	.loc	1 167 13                        ; attention_backward.py:167:13
	v_add_nc_u32_e32 v23, s35, v21
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_cndmask_b32_e32 v41, 0x80000000, v3, vcc_lo
	v_lshlrev_b32_e32 v3, 1, v21
	.loc	1 168 18                        ; attention_backward.py:168:18
	s_and_b32 vcc_lo, s75, s3
	.loc	1 167 13                        ; attention_backward.py:167:13
	v_add_nc_u32_e32 v21, s35, v22
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_cndmask_b32_e32 v45, 0x80000000, v2, vcc_lo
	v_lshlrev_b32_e32 v2, 1, v22
	.loc	1 168 18                        ; attention_backward.py:168:18
	s_and_b32 vcc_lo, s63, s3
	.loc	1 167 13                        ; attention_backward.py:167:13
	v_add_nc_u32_e32 v22, s35, v23
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_cndmask_b32_e32 v46, 0x80000000, v3, vcc_lo
	v_lshlrev_b32_e32 v3, 1, v23
	.loc	1 168 18                        ; attention_backward.py:168:18
	s_and_b32 vcc_lo, s74, s3
	.loc	1 167 13                        ; attention_backward.py:167:13
	v_add_nc_u32_e32 v23, s35, v21
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_dual_cndmask_b32 v47, 0x80000000, v2 :: v_dual_lshlrev_b32 v2, 1, v21
	.loc	1 168 18                        ; attention_backward.py:168:18
	s_and_b32 vcc_lo, s61, s3
	.loc	1 167 13                        ; attention_backward.py:167:13
	v_add_nc_u32_e32 v21, s35, v22
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_dual_cndmask_b32 v48, 0x80000000, v3 :: v_dual_lshlrev_b32 v3, 1, v22
	.loc	1 168 18                        ; attention_backward.py:168:18
	s_and_b32 vcc_lo, s73, s3
	.loc	1 167 13                        ; attention_backward.py:167:13
	v_add_nc_u32_e32 v22, s35, v23
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_dual_cndmask_b32 v49, 0x80000000, v2 :: v_dual_lshlrev_b32 v2, 1, v23
	.loc	1 168 18                        ; attention_backward.py:168:18
	s_and_b32 vcc_lo, s59, s3
	.loc	1 167 13                        ; attention_backward.py:167:13
	v_add_nc_u32_e32 v23, s35, v21
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_dual_cndmask_b32 v58, 0x80000000, v3 :: v_dual_lshlrev_b32 v3, 1, v21
	.loc	1 168 18                        ; attention_backward.py:168:18
	s_and_b32 vcc_lo, s72, s3
	.loc	1 167 13                        ; attention_backward.py:167:13
	v_add_nc_u32_e32 v21, s35, v22
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_cndmask_b32_e32 v64, 0x80000000, v2, vcc_lo
	v_lshlrev_b32_e32 v2, 1, v22
	.loc	1 168 18                        ; attention_backward.py:168:18
	s_and_b32 vcc_lo, s55, s3
	.loc	1 167 13                        ; attention_backward.py:167:13
	v_add_nc_u32_e32 v22, s35, v23
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_cndmask_b32_e32 v66, 0x80000000, v3, vcc_lo
	v_lshlrev_b32_e32 v3, 1, v23
	.loc	1 168 18                        ; attention_backward.py:168:18
	s_and_b32 vcc_lo, s71, s3
	.loc	1 167 13                        ; attention_backward.py:167:13
	v_add_nc_u32_e32 v23, s35, v21
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_cndmask_b32_e32 v68, 0x80000000, v2, vcc_lo
	v_lshlrev_b32_e32 v2, 1, v21
	.loc	1 168 18                        ; attention_backward.py:168:18
	s_and_b32 vcc_lo, s54, s3
	.loc	1 167 13                        ; attention_backward.py:167:13
	v_add_nc_u32_e32 v21, s35, v22
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_dual_cndmask_b32 v42, 0x80000000, v3 :: v_dual_lshlrev_b32 v3, 1, v22
	.loc	1 168 18                        ; attention_backward.py:168:18
	s_and_b32 vcc_lo, s69, s3
	.loc	1 167 13                        ; attention_backward.py:167:13
	v_add_nc_u32_e32 v22, s35, v23
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_dual_cndmask_b32 v69, 0x80000000, v2 :: v_dual_lshlrev_b32 v2, 1, v23
	.loc	1 168 18                        ; attention_backward.py:168:18
	s_and_b32 vcc_lo, s53, s3
	.loc	1 167 13                        ; attention_backward.py:167:13
	v_add_nc_u32_e32 v23, s35, v21
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_cndmask_b32_e32 v43, 0x80000000, v3, vcc_lo
	v_lshlrev_b32_e32 v3, 1, v21
	.loc	1 168 18                        ; attention_backward.py:168:18
	s_and_b32 vcc_lo, s68, s3
	.loc	1 167 13                        ; attention_backward.py:167:13
	v_add_nc_u32_e32 v21, s35, v22
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_cndmask_b32_e32 v72, 0x80000000, v2, vcc_lo
	v_lshlrev_b32_e32 v2, 1, v22
	.loc	1 168 18                        ; attention_backward.py:168:18
	s_and_b32 vcc_lo, s52, s3
	.loc	1 167 13                        ; attention_backward.py:167:13
	v_add_nc_u32_e32 v22, s35, v23
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_cndmask_b32_e32 v50, 0x80000000, v3, vcc_lo
	v_lshlrev_b32_e32 v3, 1, v23
	.loc	1 168 18                        ; attention_backward.py:168:18
	s_and_b32 vcc_lo, s66, s3
	.loc	1 167 13                        ; attention_backward.py:167:13
	v_add_nc_u32_e32 v23, s35, v21
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_dual_cndmask_b32 v51, 0x80000000, v2 :: v_dual_lshlrev_b32 v2, 1, v21
	.loc	1 168 18                        ; attention_backward.py:168:18
	s_and_b32 vcc_lo, s49, s3
	.loc	1 167 13                        ; attention_backward.py:167:13
	v_add_nc_u32_e32 v21, s35, v22
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_dual_cndmask_b32 v52, 0x80000000, v3 :: v_dual_lshlrev_b32 v3, 1, v22
	.loc	1 168 18                        ; attention_backward.py:168:18
	s_and_b32 vcc_lo, s64, s3
	.loc	1 167 13                        ; attention_backward.py:167:13
	v_add_nc_u32_e32 v22, s35, v23
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_dual_cndmask_b32 v53, 0x80000000, v2 :: v_dual_lshlrev_b32 v2, 1, v23
	.loc	1 168 18                        ; attention_backward.py:168:18
	s_and_b32 vcc_lo, s48, s3
	.loc	1 167 13                        ; attention_backward.py:167:13
	v_add_nc_u32_e32 v23, s35, v21
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_dual_cndmask_b32 v54, 0x80000000, v3 :: v_dual_lshlrev_b32 v3, 1, v21
	.loc	1 168 18                        ; attention_backward.py:168:18
	s_and_b32 vcc_lo, s62, s3
	.loc	1 167 13                        ; attention_backward.py:167:13
	v_add_nc_u32_e32 v21, s35, v22
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_cndmask_b32_e32 v57, 0x80000000, v2, vcc_lo
	v_lshlrev_b32_e32 v2, 1, v22
	.loc	1 168 18                        ; attention_backward.py:168:18
	s_and_b32 vcc_lo, s45, s3
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_add_lshl_u32 v22, v23, s35, 1
	v_cndmask_b32_e32 v62, 0x80000000, v3, vcc_lo
	v_lshlrev_b32_e32 v3, 1, v23
	.loc	1 168 18                        ; attention_backward.py:168:18
	s_and_b32 vcc_lo, s60, s3
	.loc	1 134 28                        ; attention_backward.py:134:28
	s_waitcnt vmcnt(15)
	ds_store_b8 v137, v14
	s_waitcnt vmcnt(14)
	ds_store_b8 v137, v9 offset:64
	s_waitcnt vmcnt(9)
	ds_store_b8 v137, v15 offset:512
	s_waitcnt vmcnt(8)
	ds_store_b8 v137, v17 offset:576
	ds_store_b8 v138, v10
	ds_store_b8 v138, v11 offset:64
	s_waitcnt vmcnt(7)
	ds_store_b8 v138, v18 offset:512
	s_waitcnt vmcnt(6)
	ds_store_b8 v138, v19 offset:576
	ds_store_b8 v139, v12
	ds_store_b8 v139, v13 offset:64
	s_waitcnt vmcnt(5)
	ds_store_b8 v139, v6 offset:512
	s_waitcnt vmcnt(4)
	ds_store_b8 v139, v7 offset:576
	s_waitcnt vmcnt(3)
	ds_store_b8 v140, v8
	s_waitcnt vmcnt(2)
	ds_store_b8 v140, v16 offset:64
	s_waitcnt vmcnt(1)
	ds_store_b8 v140, v20 offset:512
	s_waitcnt vmcnt(0)
	ds_store_b8 v140, v5 offset:576
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_dual_cndmask_b32 v65, 0x80000000, v2 :: v_dual_lshlrev_b32 v2, 1, v21
	.loc	1 168 18                        ; attention_backward.py:168:18
	s_and_b32 vcc_lo, s26, s3
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_add_lshl_u32 v21, v21, s35, 1
	v_cndmask_b32_e32 v67, 0x80000000, v3, vcc_lo
	.loc	1 168 18                        ; attention_backward.py:168:18
	s_and_b32 vcc_lo, s27, s3
	.loc	1 134 28                        ; attention_backward.py:134:28
	s_waitcnt lgkmcnt(0)
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_cndmask_b32_e32 v70, 0x80000000, v22, vcc_lo
	.loc	1 168 18                        ; attention_backward.py:168:18
	s_and_b32 vcc_lo, s57, s3
	.loc	1 134 28                        ; attention_backward.py:134:28
	s_barrier
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_cndmask_b32_e32 v71, 0x80000000, v2, vcc_lo
	.loc	1 168 18                        ; attention_backward.py:168:18
	s_and_b32 vcc_lo, s58, s3
	.loc	1 142 31                        ; attention_backward.py:142:31
	s_mov_b32 s26, s38
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_cndmask_b32_e32 v73, 0x80000000, v21, vcc_lo
	s_clause 0x1f
	buffer_load_u16 v18, v26, s[36:39], 0 offen
	buffer_load_u16 v19, v35, s[36:39], 0 offen
	buffer_load_u16 v20, v40, s[36:39], 0 offen
	buffer_load_u16 v21, v41, s[36:39], 0 offen
	buffer_load_u16 v11, v46, s[36:39], 0 offen
	buffer_load_u16 v12, v48, s[36:39], 0 offen
	buffer_load_u16 v13, v58, s[36:39], 0 offen
	buffer_load_u16 v14, v66, s[36:39], 0 offen
	buffer_load_u16 v22, v42, s[36:39], 0 offen
	buffer_load_u16 v23, v43, s[36:39], 0 offen
	buffer_load_u16 v24, v50, s[36:39], 0 offen
	buffer_load_u16 v25, v52, s[36:39], 0 offen
	buffer_load_u16 v31, v1, s[36:39], 0 offen
	buffer_load_u16 v32, v44, s[36:39], 0 offen
	buffer_load_u16 v33, v4, s[36:39], 0 offen
	buffer_load_u16 v34, v45, s[36:39], 0 offen
	buffer_load_u16 v36, v69, s[36:39], 0 offen
	buffer_load_u16 v37, v72, s[36:39], 0 offen
	buffer_load_u16 v38, v51, s[36:39], 0 offen
	buffer_load_u16 v39, v53, s[36:39], 0 offen
	buffer_load_u16 v27, v54, s[36:39], 0 offen
	buffer_load_u16 v28, v62, s[36:39], 0 offen
	buffer_load_u16 v29, v67, s[36:39], 0 offen
	buffer_load_u16 v30, v70, s[36:39], 0 offen
	buffer_load_u16 v17, v47, s[36:39], 0 offen
	buffer_load_u16 v16, v49, s[36:39], 0 offen
	buffer_load_u16 v15, v64, s[36:39], 0 offen
	buffer_load_u16 v10, v68, s[36:39], 0 offen
	buffer_load_u16 v7, v57, s[36:39], 0 offen
	buffer_load_u16 v6, v65, s[36:39], 0 offen
	buffer_load_u16 v3, v71, s[36:39], 0 offen
	buffer_load_u16 v2, v73, s[36:39], 0 offen
	.loc	1 171 28                        ; attention_backward.py:171:28
	s_and_b32 s37, s43, 0xffff
	s_mov_b32 s36, s42
	s_clause 0x1f
	buffer_load_u16 v9, v26, s[36:39], 0 offen
	buffer_load_u16 v8, v35, s[36:39], 0 offen
	buffer_load_u16 v35, v40, s[36:39], 0 offen
	buffer_load_u16 v26, v41, s[36:39], 0 offen
	buffer_load_u16 v41, v42, s[36:39], 0 offen
	buffer_load_u16 v40, v43, s[36:39], 0 offen
	buffer_load_u16 v43, v50, s[36:39], 0 offen
	buffer_load_u16 v42, v52, s[36:39], 0 offen
	buffer_load_u16 v60, v4, s[36:39], 0 offen
	buffer_load_u16 v55, v51, s[36:39], 0 offen
	buffer_load_u16 v63, v45, s[36:39], 0 offen
	buffer_load_u16 v59, v53, s[36:39], 0 offen
	buffer_load_u16 v56, v46, s[36:39], 0 offen
	buffer_load_u16 v53, v54, s[36:39], 0 offen
	buffer_load_u16 v51, v47, s[36:39], 0 offen
	buffer_load_u16 v50, v57, s[36:39], 0 offen
	buffer_load_u16 v61, v48, s[36:39], 0 offen
	buffer_load_u16 v57, v62, s[36:39], 0 offen
	buffer_load_u16 v54, v49, s[36:39], 0 offen
	buffer_load_u16 v52, v65, s[36:39], 0 offen
	buffer_load_u16 v65, v58, s[36:39], 0 offen
	buffer_load_u16 v62, v67, s[36:39], 0 offen
	buffer_load_u16 v58, v64, s[36:39], 0 offen
	buffer_load_u16 v5, v71, s[36:39], 0 offen
	buffer_load_u16 v67, v66, s[36:39], 0 offen
	buffer_load_u16 v66, v70, s[36:39], 0 offen
	buffer_load_u16 v64, v68, s[36:39], 0 offen
	buffer_load_u16 v4, v73, s[36:39], 0 offen
	buffer_load_u16 v70, v1, s[36:39], 0 offen
	buffer_load_u16 v71, v44, s[36:39], 0 offen
	buffer_load_u16 v68, v72, s[36:39], 0 offen
	buffer_load_u16 v69, v69, s[36:39], 0 offen
	v_lshlrev_b32_e32 v44, 4, v0
	.loc	1 142 31                        ; attention_backward.py:142:31
	s_mov_b32 s27, s39
	.loc	1 166 23                        ; attention_backward.py:166:23
	s_waitcnt vmcnt(60)
	v_lshlrev_b32_e32 v98, 16, v21
	s_waitcnt vmcnt(59)
	v_lshlrev_b32_e32 v11, 16, v11
	s_waitcnt vmcnt(58)
	v_lshlrev_b32_e32 v12, 16, v12
	.loc	1 134 28                        ; attention_backward.py:134:28
	v_and_b32_e32 v84, 12, v0
	.loc	1 166 23                        ; attention_backward.py:166:23
	s_waitcnt vmcnt(56)
	v_lshlrev_b32_e32 v14, 16, v14
	.loc	1 171 28                        ; attention_backward.py:171:28
	v_lshlrev_b32_e32 v72, 1, v0
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_lshlrev_b32_e32 v13, 16, v13
	s_waitcnt vmcnt(55)
	v_lshlrev_b32_e32 v99, 16, v22
	.loc	1 134 28                        ; attention_backward.py:134:28
	v_lshlrev_b32_e32 v76, 1, v84
	.loc	1 166 23                        ; attention_backward.py:166:23
	s_waitcnt vmcnt(53)
	v_lshlrev_b32_e32 v101, 16, v24
	.loc	1 171 28                        ; attention_backward.py:171:28
	v_xad_u32 v47, 0x120, v72, 0
	v_xad_u32 v48, 0x1b0, v72, 0
	v_xad_u32 v49, 0x240, v72, 0
	.loc	1 166 23                        ; attention_backward.py:166:23
	s_waitcnt vmcnt(47)
	v_lshlrev_b32_e32 v120, 16, v36
	.loc	1 124 31                        ; attention_backward.py:124:31
	v_and_b32_e32 v141, 15, v0
	.loc	1 166 23                        ; attention_backward.py:166:23
	s_waitcnt vmcnt(45)
	v_lshlrev_b32_e32 v122, 16, v38
	.loc	1 124 31                        ; attention_backward.py:124:31
	v_and_b32_e32 v1, 32, v0
	.loc	1 171 28                        ; attention_backward.py:171:28
	v_xad_u32 v73, 0x2d0, v72, 0
	v_xad_u32 v78, 0x360, v72, 0
	v_lshlrev_b32_e32 v85, 7, v141
	.loc	1 166 23                        ; attention_backward.py:166:23
	s_waitcnt vmcnt(41)
	v_lshlrev_b32_e32 v127, 16, v29
	.loc	1 171 28                        ; attention_backward.py:171:28
	v_lshlrev_b32_e32 v45, 6, v1
	.loc	1 124 31                        ; attention_backward.py:124:31
	v_lshrrev_b32_e32 v80, 1, v1
	.loc	1 166 23                        ; attention_backward.py:166:23
	s_waitcnt vmcnt(40)
	v_lshlrev_b32_e32 v128, 16, v30
	.loc	1 171 28                        ; attention_backward.py:171:28
	v_and_b32_e32 v44, 0x70, v44
	.loc	1 134 28                        ; attention_backward.py:134:28
	v_lshlrev_b32_e32 v46, 4, v1
	.loc	1 166 23                        ; attention_backward.py:166:23
	s_waitcnt vmcnt(39)
	v_lshlrev_b32_e32 v17, 16, v17
	.loc	1 134 28                        ; attention_backward.py:134:28
	v_lshlrev_b32_e32 v75, 5, v141
	.loc	1 171 28                        ; attention_backward.py:171:28
	v_xad_u32 v79, 0x3f0, v72, 0
	v_or3_b32 v44, v44, v45, v85
	.loc	1 124 31                        ; attention_backward.py:124:31
	v_or_b32_e32 v45, v80, v141
	.loc	1 171 28                        ; attention_backward.py:171:28
	v_xad_u32 v81, 0x90, v72, 0
	.loc	1 134 28                        ; attention_backward.py:134:28
	v_or3_b32 v46, v75, v46, v76
	.loc	1 166 23                        ; attention_backward.py:166:23
	s_waitcnt vmcnt(32)
	v_lshlrev_b32_e32 v2, 16, v2
	v_lshlrev_b32_e32 v125, 16, v28
	.loc	1 143 17                        ; attention_backward.py:143:17
	v_add_nc_u32_e32 v77, s47, v45
	.loc	1 124 21                        ; attention_backward.py:124:21
	v_or_b32_e32 v45, s46, v45
	.loc	1 134 28                        ; attention_backward.py:134:28
	v_add_nc_u32_e32 v83, 0, v46
	v_xad_u32 v88, v46, 8, 0
	v_xad_u32 v89, v46, 16, 0
	scratch_store_b32 off, v77, off offset:52 ; 4-byte Folded Spill
	.loc	1 142 31                        ; attention_backward.py:142:31
	v_lshlrev_b32_e32 v77, 1, v77
	.loc	1 128 21                        ; attention_backward.py:128:21
	v_cmp_gt_i32_e64 s4, s30, v45
	.loc	1 134 28                        ; attention_backward.py:134:28
	v_xad_u32 v46, v46, 24, 0
	ds_load_b64 v[112:113], v83
	ds_load_b64 v[114:115], v88
	ds_load_b64 v[116:117], v89
	.loc	1 143 17                        ; attention_backward.py:143:17
	ds_load_b64 v[118:119], v46
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_lshlrev_b32_e32 v123, 16, v39
	.loc	1 142 31                        ; attention_backward.py:142:31
	v_cndmask_b32_e64 v45, 0x80000000, v77, s4
	.loc	1 171 28                        ; attention_backward.py:171:28
	v_add_nc_u32_e32 v90, 0, v44
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_lshlrev_b32_e32 v3, 16, v3
	.loc	1 171 28                        ; attention_backward.py:171:28
	v_xad_u32 v91, v44, 16, 0
	v_xad_u32 v92, v44, 32, 0
	.loc	1 142 31                        ; attention_backward.py:142:31
	buffer_load_u16 v77, v45, s[24:27], 0 offen
	.loc	1 171 28                        ; attention_backward.py:171:28
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_waitcnt vmcnt(30)
	ds_store_b16 v47, v35
	s_waitcnt vmcnt(26)
	ds_store_b16 v47, v43 offset:1024
	s_waitcnt vmcnt(24)
	ds_store_b16 v47, v60 offset:2048
	s_waitcnt vmcnt(23)
	ds_store_b16 v47, v55 offset:3072
	ds_store_b16 v48, v26
	ds_store_b16 v48, v42 offset:1024
	s_waitcnt vmcnt(22)
	ds_store_b16 v48, v63 offset:2048
	s_waitcnt vmcnt(21)
	ds_store_b16 v48, v59 offset:3072
	s_waitcnt vmcnt(20)
	ds_store_b16 v49, v56
	s_waitcnt vmcnt(19)
	ds_store_b16 v49, v53 offset:1024
	s_waitcnt vmcnt(18)
	ds_store_b16 v49, v51 offset:2048
	s_waitcnt vmcnt(17)
	ds_store_b16 v49, v50 offset:3072
	s_waitcnt vmcnt(16)
	ds_store_b16 v73, v61
	s_waitcnt vmcnt(15)
	ds_store_b16 v73, v57 offset:1024
	s_waitcnt vmcnt(14)
	ds_store_b16 v73, v54 offset:2048
	s_waitcnt vmcnt(13)
	ds_store_b16 v73, v52 offset:3072
	s_waitcnt vmcnt(12)
	ds_store_b16 v78, v65
	s_waitcnt vmcnt(11)
	ds_store_b16 v78, v62 offset:1024
	s_waitcnt vmcnt(10)
	ds_store_b16 v78, v58 offset:2048
	s_waitcnt vmcnt(9)
	ds_store_b16 v78, v5 offset:3072
	s_waitcnt vmcnt(8)
	ds_store_b16 v79, v67
	s_waitcnt vmcnt(7)
	ds_store_b16 v79, v66 offset:1024
	s_waitcnt vmcnt(6)
	ds_store_b16 v79, v64 offset:2048
	s_waitcnt vmcnt(5)
	ds_store_b16 v79, v4 offset:3072
	ds_store_b16 v146, v9
	ds_store_b16 v146, v41 offset:1024
	s_waitcnt vmcnt(4)
	ds_store_b16 v146, v70 offset:2048
	ds_store_b16 v81, v8
	ds_store_b16 v81, v40 offset:1024
	s_waitcnt vmcnt(3)
	ds_store_b16 v81, v71 offset:2048
	s_waitcnt vmcnt(2)
	ds_store_b16 v81, v68 offset:3072
	s_waitcnt vmcnt(1)
	ds_store_b16 v146, v69 offset:3072
	v_lshlrev_b32_e32 v4, 16, v4
	v_lshlrev_b32_e32 v65, 16, v65
	v_lshlrev_b32_e32 v56, 16, v56
	v_lshlrev_b32_e32 v61, 16, v61
	v_lshlrev_b32_e32 v67, 16, v67
	v_lshlrev_b32_e32 v57, 16, v57
	v_lshlrev_b32_e32 v66, 16, v66
	.loc	1 176 24                        ; attention_backward.py:176:24
	v_dual_mul_f32 v150, v13, v65 :: v_dual_lshlrev_b32 v59, 16, v59
	.loc	1 171 28                        ; attention_backward.py:171:28
	v_lshlrev_b32_e32 v78, 16, v50
	.loc	1 176 24                        ; attention_backward.py:176:24
	v_dual_mul_f32 v148, v11, v56 :: v_dual_lshlrev_b32 v55, 16, v55
	v_mul_f32_e32 v149, v12, v61
	v_mul_f32_e32 v151, v14, v67
	v_mul_f32_e32 v153, v125, v57
	v_mul_f32_e32 v155, v128, v66
.Ltmp1:
	.file	2 "<triton>/python/triton/language" "standard.py"
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_mov_b32_dpp v150, v150 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp2:
	.loc	1 176 24                        ; attention_backward.py:176:24
	v_mul_f32_e32 v146, v122, v55
	v_mul_f32_e32 v147, v123, v59
.Ltmp3:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_mov_b32_dpp v148, v148 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_mov_b32_dpp v149, v149 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_mov_b32_dpp v151, v151 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_mov_b32_dpp v153, v153 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_mov_b32_dpp v155, v155 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp4:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_fmac_f32_e32 v150, v13, v65
.Ltmp5:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_and_b32_e32 v74, 1, v0
	v_mov_b32_dpp v146, v146 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_mov_b32_dpp v147, v147 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp6:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_dual_fmac_f32 v148, v11, v56 :: v_dual_fmac_f32 v149, v12, v61
	v_fmac_f32_e32 v151, v14, v67
	v_fmac_f32_e32 v153, v125, v57
	v_fmac_f32_e32 v155, v128, v66
	v_add_f32_dpp v56, v150, v150 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_fmac_f32_e32 v146, v122, v55
	v_fmac_f32_e32 v147, v123, v59
	v_add_f32_dpp v55, v149, v149 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v57, v151, v151 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v59, v153, v153 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v61, v155, v155 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v56, v56, v56 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v55, v55, v55 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v57, v57, v57 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v59, v59, v59 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v61, v61, v61 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v56, v56, v56 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp7:
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_lshlrev_b32_e32 v121, 16, v37
	.loc	1 171 28                        ; attention_backward.py:171:28
	v_lshlrev_b32_e32 v5, 16, v5
	v_lshlrev_b32_e32 v68, 16, v68
	v_lshlrev_b32_e32 v62, 16, v62
	v_xad_u32 v93, v44, 48, 0
	v_xad_u32 v94, v44, 64, 0
	v_xad_u32 v97, 0x70, v44, 0
	v_xad_u32 v95, 0x50, v44, 0
	v_xad_u32 v96, 0x60, v44, 0
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_lshlrev_b32_e32 v83, 16, v18
	v_lshlrev_b32_e32 v88, 16, v19
	v_lshlrev_b32_e32 v89, 16, v20
	v_lshlrev_b32_e32 v103, 16, v31
	v_lshlrev_b32_e32 v105, 16, v33
	v_lshlrev_b32_e32 v124, 16, v27
	v_lshlrev_b32_e32 v129, 16, v16
	v_lshlrev_b32_e32 v130, 16, v15
	v_lshlrev_b32_e32 v131, 16, v10
	.loc	1 171 28                        ; attention_backward.py:171:28
	v_lshlrev_b32_e32 v10, 16, v35
	v_lshlrev_b32_e32 v15, 16, v26
	v_lshlrev_b32_e32 v16, 16, v41
	v_lshlrev_b32_e32 v142, 16, v40
	v_lshlrev_b32_e32 v143, 16, v43
	s_waitcnt lgkmcnt(0)
	s_barrier
	v_lshlrev_b32_e32 v60, 16, v60
	v_lshlrev_b32_e32 v51, 16, v51
	v_lshlrev_b32_e32 v73, 16, v64
	v_lshlrev_b32_e32 v144, 16, v42
	.loc	1 176 24                        ; attention_backward.py:176:24
	v_mul_f32_e32 v154, v127, v62
.Ltmp8:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_dpp v55, v55, v55 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp9:
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_lshlrev_b32_e32 v102, 16, v25
.Ltmp10:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_dpp v57, v57, v57 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp11:
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_lshlrev_b32_e32 v100, 16, v23
.Ltmp12:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_dpp v59, v59, v59 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp13:
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_lshlrev_b32_e32 v104, 16, v32
.Ltmp14:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_dpp v61, v61, v61 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp15:
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_lshlrev_b32_e32 v106, 16, v34
	.loc	1 171 28                        ; attention_backward.py:171:28
	ds_load_b128 v[18:21], v90
	ds_load_b128 v[22:25], v91
	ds_load_b128 v[26:29], v92
	ds_load_b128 v[30:33], v93
	ds_load_b128 v[34:37], v94
	ds_load_b128 v[38:41], v95
	ds_load_b128 v[42:45], v96
	ds_load_b128 v[46:49], v97
	.loc	1 176 24                        ; attention_backward.py:176:24
	v_mul_f32_e32 v97, v121, v68
	v_mul_f32_e32 v94, v105, v60
	v_mul_f32_e32 v156, v17, v51
.Ltmp16:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_mov_b32_dpp v154, v154 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp17:
	.loc	1 176 24                        ; attention_backward.py:176:24
	v_mul_f32_e32 v90, v101, v143
.Ltmp18:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_mov_b32_dpp v97, v97 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_mov_b32_dpp v94, v94 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_mov_b32_dpp v156, v156 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp19:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_fmac_f32_e32 v154, v127, v62
.Ltmp20:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_mov_b32_dpp v90, v90 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp21:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_fmac_f32_e32 v97, v121, v68
	v_fmac_f32_e32 v94, v105, v60
	v_fmac_f32_e32 v156, v17, v51
	v_add_f32_dpp v60, v154, v154 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_fmac_f32_e32 v90, v101, v143
	v_add_f32_dpp v51, v97, v97 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp22:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_permlanex16_b32 v97, v57, -1, -1 op_sel:[1,0]
.Ltmp23:
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_lshlrev_b32_e32 v133, 16, v6
.Ltmp24:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_dpp v60, v60, v60 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp25:
	.loc	1 171 28                        ; attention_backward.py:171:28
	v_lshlrev_b32_e32 v6, 16, v9
	v_lshlrev_b32_e32 v9, 16, v71
.Ltmp26:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_e32 v57, v57, v97
.Ltmp27:
	.loc	1 176 24                        ; attention_backward.py:176:24
	v_mul_f32_e32 v81, v100, v142
.Ltmp28:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_dpp v60, v60, v60 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp29:
	.loc	1 171 28                        ; attention_backward.py:171:28
	v_lshlrev_b32_e32 v71, 16, v58
	v_lshlrev_b32_e32 v69, 16, v69
.Ltmp30:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_dpp v51, v51, v51 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp31:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_mov_b32_dpp v81, v81 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp32:
	.loc	1 176 24                        ; attention_backward.py:176:24
	v_mul_f32_e32 v93, v104, v9
	.loc	1 171 28                        ; attention_backward.py:171:28
	v_lshlrev_b32_e32 v53, 16, v53
	.loc	1 176 24                        ; attention_backward.py:176:24
	v_mul_f32_e32 v96, v120, v69
.Ltmp33:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_dpp v51, v51, v51 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_fmac_f32_e32 v81, v100, v142
.Ltmp34:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_permlanex16_b32 v100, v60, -1, -1 op_sel:[1,0]
	v_mov_b32_dpp v93, v93 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_mov_b32_dpp v96, v96 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp35:
	.loc	1 171 28                        ; attention_backward.py:171:28
	v_lshlrev_b32_e32 v79, 16, v52
.Ltmp36:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_readlane_b32 s38, v57, 31
.Ltmp37:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_e32 v60, v60, v100
	v_add_f32_dpp v11, v81, v81 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_fmac_f32_e32 v96, v120, v69
	v_dual_fmac_f32 v93, v104, v9 :: v_dual_mul_f32 v64, v99, v16
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp38:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_readlane_b32 s41, v60, 31
.Ltmp39:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_dpp v11, v11, v11 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp40:
	.loc	1 171 28                        ; attention_backward.py:171:28
	v_lshlrev_b32_e32 v63, 16, v63
.Ltmp41:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	s_waitcnt lgkmcnt(0)
	v_mov_b32_dpp v64, v64 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_barrier
.Ltmp42:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_dpp v11, v11, v11 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v64, v99, v16
	v_add_f32_dpp v16, v94, v94 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp43:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_permlanex16_b32 v67, v11, -1, -1 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp44:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_dpp v16, v16, v16 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_e32 v11, v11, v67
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_add_f32_dpp v16, v16, v16 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp45:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_readlane_b32 s10, v11, 31
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_mov_b32_e32 v11, s10
.Ltmp46:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_dpp v12, v90, v90 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v12, v12, v12 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add_f32_dpp v12, v12, v12 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp47:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_permlanex16_b32 v68, v12, -1, -1 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
.Ltmp48:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_e32 v12, v12, v68
.Ltmp49:
	.loc	1 176 24                        ; attention_backward.py:176:24
	v_mul_f32_e32 v50, v83, v6
.Ltmp50:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_mov_b32_e32 v68, s41
	v_readlane_b32 s11, v12, 31
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_mov_b32_dpp v50, v50 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_mov_b32_e32 v12, s11
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp51:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_fmac_f32_e32 v50, v83, v6
	v_add_f32_dpp v6, v50, v50 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v50, v96, v96 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp52:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_permlanex16_b32 v96, v56, -1, -1 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp53:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_dpp v6, v6, v6 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v50, v50, v50 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_add_f32_e32 v56, v56, v96
	v_add_f32_dpp v6, v6, v6 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_add_f32_dpp v50, v50, v50 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp54:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_readlane_b32 s37, v56, 31
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_permlanex16_b32 v62, v6, -1, -1 op_sel:[1,0]
	v_permlanex16_b32 v90, v50, -1, -1 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_mov_b32 v60, s37 :: v_dual_lshlrev_b32 v87, 1, v1
.Ltmp55:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_e32 v6, v6, v62
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_add_f32_e32 v50, v50, v90
.Ltmp56:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_permlanex16_b32 v101, v61, -1, -1 op_sel:[1,0]
	v_readlane_b32 s5, v6, 31
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_readlane_b32 s17, v50, 31
.Ltmp57:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_e32 v61, v61, v101
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp58:
	.loc	1 176 24                        ; attention_backward.py:176:24
	v_dual_mul_f32 v95, v106, v63 :: v_dual_mov_b32 v6, s5
.Ltmp59:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_mov_b32_e32 v50, s17
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_readlane_b32 s42, v61, 31
	v_mov_b32_dpp v95, v95 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_mov_b32_e32 v61, s38
.Ltmp60:
	.loc	1 176 24                        ; attention_backward.py:176:24
	v_mul_f32_e32 v161, v133, v79
	s_mov_b32 s38, 0
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp61:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_fmac_f32_e32 v95, v106, v63
	v_add_f32_dpp v17, v95, v95 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp62:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_permlanex16_b32 v95, v55, -1, -1 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp63:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_dpp v17, v17, v17 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_e32 v55, v55, v95
.Ltmp64:
	.loc	1 176 24                        ; attention_backward.py:176:24
	v_mul_f32_e32 v91, v102, v144
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp65:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_dpp v17, v17, v17 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp66:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_readlane_b32 s36, v55, 31
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v91, v91 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp67:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_fmac_f32_e32 v91, v102, v144
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_add_f32_dpp v13, v91, v91 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp68:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_permlanex16_b32 v91, v51, -1, -1 op_sel:[1,0]
.Ltmp69:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_dpp v13, v13, v13 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_add_f32_e32 v51, v51, v91
.Ltmp70:
	.loc	1 176 24                        ; attention_backward.py:176:24
	v_mul_f32_e32 v58, v98, v15
.Ltmp71:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_dpp v13, v13, v13 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp72:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_readlane_b32 s24, v51, 31
	v_mov_b32_dpp v58, v58 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_dual_mov_b32 v51, s24 :: v_dual_fmac_f32 v58, v98, v15
.Ltmp73:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_dpp v15, v93, v93 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp74:
	.loc	1 176 24                        ; attention_backward.py:176:24
	v_mul_f32_e32 v158, v130, v71
.Ltmp75:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_dpp v9, v58, v58 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_add_f32_dpp v15, v15, v15 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp76:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_mov_b32_dpp v158, v158 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp77:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_dpp v9, v9, v9 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v15, v15, v15 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_4) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v158, v130, v71
.Ltmp78:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_permlanex16_b32 v69, v13, -1, -1 op_sel:[1,0]
	v_add_nc_u32_e32 v72, 0, v87
.Ltmp79:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_dpp v9, v9, v9 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp80:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_permlanex16_b32 v83, v15, -1, -1 op_sel:[1,0]
.Ltmp81:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_e32 v13, v13, v69
.Ltmp82:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_mov_b32_e32 v69, s42
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_permlanex16_b32 v65, v9, -1, -1 op_sel:[1,0]
.Ltmp83:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_dual_add_f32 v15, v15, v83 :: v_dual_lshlrev_b32 v86, 6, v74
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp84:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_readlane_b32 s12, v13, 31
.Ltmp85:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_e32 v9, v9, v65
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp86:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_readlane_b32 s14, v15, 31
	v_mov_b32_e32 v13, s12
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_readlane_b32 s8, v9, 31
	v_dual_mov_b32 v15, s14 :: v_dual_mul_f32 v152, v124, v53
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_mov_b32_e32 v9, s8
	v_mov_b32_dpp v152, v152 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
.Ltmp87:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_dual_fmac_f32 v152, v124, v53 :: v_dual_add_nc_u32 v145, 0, v86
	v_add_f32_dpp v53, v147, v147 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v58, v152, v152 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_add_f32_dpp v53, v53, v53 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v58, v58, v58 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_add_f32_dpp v53, v53, v53 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v58, v58, v58 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp88:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_permlanex16_b32 v93, v53, -1, -1 op_sel:[1,0]
	v_permlanex16_b32 v98, v58, -1, -1 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp89:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_dual_add_f32 v53, v53, v93 :: v_dual_add_f32 v58, v58, v98
.Ltmp90:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_readlane_b32 s26, v53, 31
.Ltmp91:
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_lshlrev_b32_e32 v132, 16, v7
	.loc	1 171 28                        ; attention_backward.py:171:28
	v_lshlrev_b32_e32 v7, 16, v8
	v_lshlrev_b32_e32 v8, 16, v70
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
.Ltmp92:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_dual_mov_b32 v53, s26 :: v_dual_lshlrev_b32 v70, 16, v54
	v_readlane_b32 s39, v58, 31
.Ltmp93:
	.loc	1 176 24                        ; attention_backward.py:176:24
	v_mul_f32_e32 v52, v88, v7
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_mul_f32_e32 v92, v103, v8
.Ltmp94:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_mov_b32_dpp v52, v52 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_mov_b32_dpp v92, v92 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp95:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_fmac_f32_e32 v52, v88, v7
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v92, v103, v8
.Ltmp96:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_permlanex16_b32 v88, v16, -1, -1 op_sel:[1,0]
.Ltmp97:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_dpp v7, v52, v52 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_add_f32_dpp v14, v92, v92 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v52, v146, v146 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_e32 v16, v16, v88
.Ltmp98:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_permlanex16_b32 v99, v59, -1, -1 op_sel:[1,0]
.Ltmp99:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_dpp v7, v7, v7 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v14, v14, v14 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v52, v52, v52 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp100:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_readlane_b32 s15, v16, 31
.Ltmp101:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_e32 v59, v59, v99
	v_add_f32_dpp v7, v7, v7 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v14, v14, v14 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v52, v52, v52 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp102:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_dual_mov_b32 v16, s15 :: v_dual_mul_f32 v159, v131, v73
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_permlanex16_b32 v63, v7, -1, -1 op_sel:[1,0]
	v_permlanex16_b32 v81, v14, -1, -1 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_permlanex16_b32 v92, v52, -1, -1 op_sel:[1,0]
	v_readlane_b32 s40, v59, 31
	v_mov_b32_dpp v159, v159 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp103:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_dual_add_f32 v7, v7, v63 :: v_dual_add_f32 v14, v14, v81
.Ltmp104:
	.loc	1 176 24                        ; attention_backward.py:176:24
	v_mul_f32_e32 v54, v89, v10
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp105:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_dual_add_f32 v52, v52, v92 :: v_dual_fmac_f32 v159, v131, v73
.Ltmp106:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_readlane_b32 s6, v7, 31
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_readlane_b32 s13, v14, 31
	v_mov_b32_dpp v54, v54 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_readlane_b32 s25, v52, 31
	v_mov_b32_e32 v59, s36
	v_dual_mov_b32 v7, s6 :: v_dual_mov_b32 v14, s13
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_4)
.Ltmp107:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_fmac_f32_e32 v54, v89, v10
	v_add_f32_dpp v10, v64, v64 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp108:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_permlanex16_b32 v89, v17, -1, -1 op_sel:[1,0]
	v_dual_mov_b32 v52, s25 :: v_dual_mul_f32 v157, v129, v70
.Ltmp109:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_dpp v8, v54, v54 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_4)
	v_add_f32_dpp v10, v10, v10 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v54, v148, v148 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_e32 v17, v17, v89
.Ltmp110:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_mov_b32_dpp v157, v157 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp111:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_dpp v8, v8, v8 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v10, v10, v10 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v54, v54, v54 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp112:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_readlane_b32 s16, v17, 31
.Ltmp113:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_fmac_f32_e32 v157, v129, v70
	v_add_f32_dpp v8, v8, v8 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp114:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_permlanex16_b32 v66, v10, -1, -1 op_sel:[1,0]
.Ltmp115:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_dpp v54, v54, v54 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp116:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_mov_b32_e32 v17, s16
	v_mov_b32_e32 v67, s40
	v_permlanex16_b32 v64, v8, -1, -1 op_sel:[1,0]
.Ltmp117:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_e32 v10, v10, v66
.Ltmp118:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_permlanex16_b32 v94, v54, -1, -1 op_sel:[1,0]
	v_mov_b32_e32 v66, s39
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp119:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_e32 v8, v8, v64
.Ltmp120:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_readlane_b32 s9, v10, 31
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp121:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_e32 v54, v54, v94
.Ltmp122:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_readlane_b32 s7, v8, 31
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mov_b32_e32 v10, s9
	v_readlane_b32 s27, v54, 31
	s_delay_alu instid0(VALU_DEP_3)
	v_mov_b32_e32 v8, s7
	ds_store_b128 v72, v[6:9]
	ds_store_b128 v72, v[10:13] offset:16
	ds_store_b128 v72, v[14:17] offset:32
	ds_store_b128 v72, v[50:53] offset:48
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[62:65], v145
	ds_load_b128 v[54:57], v145 offset:16
	ds_load_b128 v[14:17], v145 offset:32
	ds_load_b128 v[10:13], v145 offset:48
.Ltmp123:
	.loc	1 176 24                        ; attention_backward.py:176:24
	v_mul_f32_e32 v52, v2, v4
.Ltmp124:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_dpp v8, v156, v156 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp125:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_mov_b32_dpp v7, v161 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp126:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_dpp v50, v158, v158 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v9, v157, v157 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp127:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_mov_b32_dpp v52, v52 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp128:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_dpp v8, v8, v8 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_fmac_f32_e32 v7, v133, v79
	v_add_f32_dpp v50, v50, v50 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v9, v9, v9 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_fmac_f32_e32 v52, v2, v4
	v_add_f32_dpp v2, v159, v159 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v8, v8, v8 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v4, v7, v7 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v50, v50, v50 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v9, v9, v9 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v2, v2, v2 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp129:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	s_waitcnt lgkmcnt(3)
	v_mov_b32_e32 v180, v63
.Ltmp130:
	.loc	1 176 24                        ; attention_backward.py:176:24
	v_mul_f32_e32 v51, v3, v5
.Ltmp131:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_permlanex16_b32 v53, v8, -1, -1 op_sel:[1,0]
	v_permlanex16_b32 v70, v9, -1, -1 op_sel:[1,0]
.Ltmp132:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_dpp v2, v2, v2 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v4, v4, v4 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp133:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_mov_b32_dpp v51, v51 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp134:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_dual_add_f32 v8, v8, v53 :: v_dual_add_f32 v9, v9, v70
.Ltmp135:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_permlanex16_b32 v7, v2, -1, -1 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp136:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_dpp v4, v4, v4 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_fmac_f32_e32 v51, v3, v5
	s_delay_alu instid0(VALU_DEP_4)
.Ltmp137:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_readlane_b32 s5, v8, 31
	v_readlane_b32 s6, v9, 31
.Ltmp138:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_e32 v2, v2, v7
.Ltmp139:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_permlanex16_b32 v9, v4, -1, -1 op_sel:[1,0]
.Ltmp140:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_dpp v5, v51, v51 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp141:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_mov_b32_e32 v58, s27
	s_waitcnt lgkmcnt(0)
	v_readlane_b32 s8, v2, 31
	v_mov_b32_e32 v2, s5
	v_permlanex16_b32 v71, v50, -1, -1 op_sel:[1,0]
.Ltmp142:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_dpp v5, v5, v5 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_e32 v4, v4, v9
.Ltmp143:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	s_barrier
	v_mov_b32_e32 v182, v65
.Ltmp144:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_e32 v50, v50, v71
	v_add_f32_dpp v5, v5, v5 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp145:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_readlane_b32 s10, v4, 31
	v_dual_mov_b32 v181, v64 :: v_dual_mov_b32 v188, v54
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_readlane_b32 s7, v50, 31
	v_permlanex16_b32 v50, v5, -1, -1 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_mov_b32_e32 v7, s10
	v_dual_mov_b32 v189, v55 :: v_dual_mov_b32 v198, v14
	v_dual_mov_b32 v4, s7 :: v_dual_add_f32 v5, v5, v50
	v_mov_b32_e32 v190, v56
	v_dual_mov_b32 v192, v57 :: v_dual_mov_b32 v191, v15
	v_mov_b32_e32 v98, v10
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_4) | instid1(VALU_DEP_3)
	v_readlane_b32 s11, v5, 31
	v_dual_mov_b32 v5, s8 :: v_dual_mul_f32 v160, v132, v78
	v_mov_b32_e32 v184, v17
	v_dual_mov_b32 v100, v12 :: v_dual_mov_b32 v101, v13
.Ltmp146:
	.loc	1 179 16                        ; attention_backward.py:179:16
	s_add_i32 s5, s31, 15
.Ltmp147:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_mov_b32_dpp v6, v160 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_mov_b32_dpp v180, v180 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v181, v181 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v182, v182 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v188, v188 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp148:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_fmac_f32_e32 v6, v132, v78
.Ltmp149:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_mov_b32_dpp v189, v189 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v190, v190 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v192, v192 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v198, v198 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp150:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_dpp v3, v6, v6 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v6, v52, v52 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp151:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_mov_b32_dpp v191, v191 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v184, v184 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v98, v98 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp152:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_dpp v3, v3, v3 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v6, v6, v6 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp153:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_mov_b32_dpp v100, v100 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v101, v101 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp154:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_dpp v3, v3, v3 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v6, v6, v6 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp155:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_permlanex16_b32 v8, v3, -1, -1 op_sel:[1,0]
	v_permlanex16_b32 v51, v6, -1, -1 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
.Ltmp156:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_dual_add_f32 v3, v3, v8 :: v_dual_add_f32 v6, v6, v51
.Ltmp157:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_mov_b32_e32 v8, s11
	v_readlane_b32 s9, v3, 31
	s_delay_alu instid0(VALU_DEP_3)
	v_readlane_b32 s12, v6, 31
	v_mov_b32_e32 v3, s6
.Ltmp158:
	.loc	1 179 15                        ; attention_backward.py:179:15
	s_ashr_i32 s6, s5, 31
.Ltmp159:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_dual_mov_b32 v6, s9 :: v_dual_mov_b32 v9, s12
	ds_store_b128 v72, v[58:61]
	ds_store_b128 v72, v[66:69] offset:16
	ds_store_b128 v72, v[2:5] offset:32
	ds_store_b128 v72, v[6:9] offset:48
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[70:73], v145
	ds_load_b128 v[66:69], v145 offset:16
	ds_load_b128 v[58:61], v145 offset:32
	ds_load_b128 v[50:53], v145 offset:48
	v_mov_b32_e32 v125, v62
	v_mov_b32_e32 v123, v16
	v_mov_b32_e32 v99, v11
.Ltmp160:
	.loc	1 179 15                        ; attention_backward.py:179:15
	s_lshr_b32 s6, s6, 28
	s_delay_alu instid0(SALU_CYCLE_1)
	s_add_i32 s5, s5, s6
	.loc	1 123 19                        ; attention_backward.py:123:19
	s_mul_hi_u32 s6, s50, s44
	.loc	1 179 14                        ; attention_backward.py:179:14
	s_and_b32 s39, s5, -16
	.loc	1 180 9                         ; attention_backward.py:180:9
	s_bfe_u32 s5, s20, 0x10008
.Ltmp161:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	s_waitcnt lgkmcnt(3)
	v_mov_b32_e32 v183, v70
	v_dual_mov_b32 v185, v71 :: v_dual_mov_b32 v186, v72
	s_waitcnt lgkmcnt(2)
	v_dual_mov_b32 v187, v73 :: v_dual_mov_b32 v194, v67
	v_mov_b32_e32 v193, v66
	s_waitcnt lgkmcnt(1)
	v_dual_mov_b32 v195, v68 :: v_dual_mov_b32 v124, v58
	v_dual_mov_b32 v197, v69 :: v_dual_mov_b32 v122, v60
	v_mov_b32_e32 v121, v59
	s_waitcnt lgkmcnt(0)
	v_dual_mov_b32 v81, v61 :: v_dual_mov_b32 v106, v51
	v_mov_b32_e32 v102, v50
	v_dual_mov_b32 v120, v52 :: v_dual_mov_b32 v97, v53
	v_mov_b32_dpp v125, v125 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v183, v183 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v185, v185 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v186, v186 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v187, v187 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v193, v193 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v194, v194 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v195, v195 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v197, v197 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v123, v123 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v124, v124 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v121, v121 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v122, v122 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v81, v81 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v99, v99 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v102, v102 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v106, v106 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v120, v120 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v97, v97 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp162:
	.loc	1 180 9                         ; attention_backward.py:180:9
	s_cbranch_scc0 .LBB0_2
; %bb.1:
	.loc	1 184 17                        ; attention_backward.py:184:17
	s_add_i32 s5, s46, s22
	.loc	1 181 39                        ; attention_backward.py:181:39
	s_sub_i32 s8, s46, s21
	.loc	1 184 17                        ; attention_backward.py:184:17
	s_add_i32 s5, s5, s23
	.loc	1 181 39                        ; attention_backward.py:181:39
	s_add_i32 s8, s8, s23
	.loc	1 184 17                        ; attention_backward.py:184:17
	s_add_i32 s5, s5, 32
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	.loc	1 182 25                        ; attention_backward.py:182:25
	s_min_i32 s5, s31, s5
	.loc	1 187 35                        ; attention_backward.py:187:35
	s_add_i32 s5, s5, 15
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	.loc	1 187 34 is_stmt 0              ; attention_backward.py:187:34
	s_ashr_i32 s7, s5, 31
	s_lshr_b32 s7, s7, 28
	s_delay_alu instid0(SALU_CYCLE_1)
	s_add_i32 s5, s5, s7
	.loc	1 181 25 is_stmt 1              ; attention_backward.py:181:25
	s_max_i32 s7, s8, 0
	.loc	1 187 33                        ; attention_backward.py:187:33
	s_and_b32 s5, s5, -16
	.loc	1 186 33                        ; attention_backward.py:186:33
	s_and_b32 s38, s7, 0x7ffffff0
	.loc	1 187 18                        ; attention_backward.py:187:18
	s_min_i32 s39, s39, s5
.LBB0_2:
	.loc	1 0 18 is_stmt 0                ; attention_backward.py:0:18
	s_clause 0x3
	s_load_b64 s[40:41], s[0:1], 0x8
	s_load_b64 s[44:45], s[0:1], 0x20
	s_load_b64 s[48:49], s[0:1], 0x30
	s_load_b128 s[52:55], s[0:1], 0x80
	.loc	1 188 9 is_stmt 1               ; attention_backward.py:188:9
	v_cndmask_b32_e64 v2, 0, 1, s18
	.loc	1 0 0 is_stmt 0                 ; attention_backward.py:0
	s_ashr_i32 s7, s28, 31
	.loc	1 188 9                         ; attention_backward.py:188:9
	s_and_not1_b32 vcc_lo, exec_lo, s18
	.loc	1 0 0                           ; attention_backward.py:0
	s_ashr_i32 s8, s56, 31
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 188 9                         ; attention_backward.py:188:9
	v_cmp_ne_u32_e64 s5, 1, v2
	s_cbranch_vccnz .LBB0_4
; %bb.3:
	.loc	1 0 9                           ; attention_backward.py:0:9
	s_add_i32 s9, s46, s23
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_add_i32 s9, s9, 32
	s_min_i32 s9, s31, s9
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_add_i32 s9, s9, 15
	.loc	1 190 34 is_stmt 1              ; attention_backward.py:190:34
	s_ashr_i32 s10, s9, 31
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_lshr_b32 s10, s10, 28
	s_add_i32 s9, s9, s10
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	.loc	1 190 33 is_stmt 0              ; attention_backward.py:190:33
	s_and_b32 s9, s9, -16
	.loc	1 190 18                        ; attention_backward.py:190:18
	s_min_i32 s39, s39, s9
.LBB0_4:
	.loc	1 123 19 is_stmt 1              ; attention_backward.py:123:19
	s_mul_i32 s9, s6, s51
	s_xor_b32 s7, s7, s8
	s_sub_i32 s8, s50, s9
	s_add_i32 s9, s6, 1
	s_sub_i32 s10, s8, s51
	s_cmp_ge_u32 s8, s51
	.loc	1 124 31                        ; attention_backward.py:124:31
	v_lshrrev_b32_e32 v2, 4, v0
	.loc	1 123 19                        ; attention_backward.py:123:19
	s_cselect_b32 s6, s9, s6
	s_cselect_b32 s8, s10, s8
	s_add_i32 s9, s6, 1
	s_cmp_ge_u32 s8, s51
	.loc	1 124 31                        ; attention_backward.py:124:31
	v_or_b32_e32 v3, s46, v2
	.loc	1 123 19                        ; attention_backward.py:123:19
	s_cselect_b32 s6, s9, s6
	.loc	1 197 29                        ; attention_backward.py:197:29
	s_mul_i32 s15, s19, s29
	.loc	1 123 19                        ; attention_backward.py:123:19
	s_xor_b32 s6, s6, s7
	s_clause 0x1
	s_load_b128 s[60:63], s[0:1], 0x48
	s_load_b64 s[56:57], s[0:1], 0x10
	s_sub_i32 s14, s6, s7
	.loc	1 124 21                        ; attention_backward.py:124:21
	v_or_b32_e32 v4, 4, v3
	v_or_b32_e32 v5, 8, v3
	v_or_b32_e32 v6, 12, v3
	v_or_b32_e32 v7, 16, v3
	v_or_b32_e32 v8, 20, v3
	v_or_b32_e32 v9, 24, v3
	v_or_b32_e32 v78, 28, v3
	.loc	1 128 21                        ; attention_backward.py:128:21
	v_cmp_gt_i32_e64 s6, s30, v3
	.loc	1 129 27                        ; attention_backward.py:129:27
	v_add_nc_u32_e32 v154, s23, v3
	v_mov_b16_e32 v3.l, 0
	.loc	1 142 31                        ; attention_backward.py:142:31
	s_waitcnt vmcnt(0)
	v_mov_b16_e32 v3.h, v77.l
	.loc	1 197 29                        ; attention_backward.py:197:29
	s_add_i32 s77, s14, s15
	.loc	1 220 21                        ; attention_backward.py:220:21
	s_waitcnt lgkmcnt(0)
	s_mul_f32 s14, s52, 0x3fb8aa3b
	.loc	1 129 27                        ; attention_backward.py:129:27
	v_add_nc_u32_e32 v155, s23, v4
	v_add_nc_u32_e32 v156, s23, v5
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 219 37                        ; attention_backward.py:219:37
	v_dual_mul_f32 v162, s14, v3 :: v_dual_add_nc_u32 v157, s23, v6
	v_subrev_nc_u32_e32 v3, s21, v154
	.loc	1 129 27                        ; attention_backward.py:129:27
	v_add_nc_u32_e32 v158, s23, v7
	v_add_nc_u32_e32 v159, s23, v8
	v_add_nc_u32_e32 v160, s23, v9
	v_add_nc_u32_e32 v161, s23, v78
	scratch_store_b32 off, v3, off          ; 4-byte Folded Spill
	v_subrev_nc_u32_e32 v3, s21, v155
	s_clause 0x1
	s_load_b64 s[36:37], s[0:1], 0x58
	s_load_b32 s76, s[0:1], 0x90
	.loc	1 124 31                        ; attention_backward.py:124:31
	v_and_b32_e32 v196, 48, v0
	.loc	1 125 21                        ; attention_backward.py:125:21
	v_bfe_u32 v152, v0, 4, 1
	v_and_b32_e32 v88, 16, v0
	scratch_store_b32 off, v3, off offset:4 ; 4-byte Folded Spill
	v_subrev_nc_u32_e32 v3, s21, v156
	v_or_b32_e32 v163, v75, v76
	v_mul_lo_u32 v83, s55, v2
	.loc	1 246 23                        ; attention_backward.py:246:23
	s_mul_i32 s19, s19, s53
	.loc	1 247 23                        ; attention_backward.py:247:23
	s_mul_i32 s42, s28, s54
	scratch_store_b32 off, v3, off offset:8 ; 4-byte Folded Spill
	v_subrev_nc_u32_e32 v3, s21, v157
	.loc	1 125 21                        ; attention_backward.py:125:21
	v_or_b32_e32 v153, 2, v152
	v_or_b32_e32 v151, 4, v152
	v_or_b32_e32 v150, 6, v152
	v_or_b32_e32 v149, 8, v152
	scratch_store_b32 off, v3, off offset:12 ; 4-byte Folded Spill
	v_subrev_nc_u32_e32 v3, s21, v158
	v_or_b32_e32 v148, 10, v152
	v_or_b32_e32 v147, 12, v152
	v_or_b32_e32 v146, 14, v152
	.loc	1 128 21                        ; attention_backward.py:128:21
	v_cmp_gt_i32_e64 s7, s30, v4
	scratch_store_b32 off, v3, off offset:16 ; 4-byte Folded Spill
	v_subrev_nc_u32_e32 v3, s21, v159
	v_cmp_gt_i32_e64 s8, s30, v5
	v_cmp_gt_i32_e64 s9, s30, v6
	v_cmp_gt_i32_e64 s10, s30, v7
	v_cmp_gt_i32_e64 s11, s30, v8
	scratch_store_b32 off, v3, off offset:20 ; 4-byte Folded Spill
	v_subrev_nc_u32_e32 v3, s21, v160
	v_cmp_gt_i32_e64 s12, s30, v9
	v_cmp_gt_i32_e64 s13, s30, v78
	.loc	1 245 21                        ; attention_backward.py:245:21
	s_add_i32 s42, s42, s19
	v_add_nc_u32_e32 v133, s22, v159
	scratch_store_b32 off, v3, off offset:24 ; 4-byte Folded Spill
	v_subrev_nc_u32_e32 v3, s21, v161
	v_add_nc_u32_e32 v255, s22, v160
	v_add_nc_u32_e32 v142, s22, v161
	v_xor_b32_e32 v89, 8, v163
	v_xor_b32_e32 v90, 16, v163
	scratch_store_b32 off, v3, off offset:28 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v3, s22, v154
	v_xor_b32_e32 v91, 24, v163
	v_cmp_eq_u32_e64 s14, 0, v1
	v_and_b32_e32 v104, 14, v0
	v_lshlrev_b32_e32 v105, 2, v196
	scratch_store_b32 off, v3, off offset:32 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v3, s22, v155
	v_lshlrev_b32_e32 v103, 5, v74
	v_lshlrev_b32_e32 v93, 3, v141
	v_lshrrev_b32_e32 v94, 2, v88
	v_lshrrev_b32_e32 v92, 4, v1
	scratch_store_b32 off, v3, off offset:36 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v3, s22, v156
	v_lshlrev_b32_e32 v96, 2, v0
	v_lshrrev_b32_e32 v95, 1, v88
	.loc	1 194 9                         ; attention_backward.py:194:9
	s_cmp_lt_i32 s38, s39
	.loc	1 197 28                        ; attention_backward.py:197:28
	s_mul_i32 s77, s77, s31
	scratch_store_b32 off, v3, off offset:40 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v3, s22, v157
	.loc	1 194 9                         ; attention_backward.py:194:9
	s_cselect_b32 s54, -1, 0
	s_cmp_ge_i32 s38, s39
	.loc	1 245 21                        ; attention_backward.py:245:21
	s_mul_i32 s43, s55, s46
	scratch_store_b32 off, v3, off offset:44 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v3, s22, v158
	scratch_store_b32 off, v3, off offset:48 ; 4-byte Folded Spill
	.loc	1 194 9                         ; attention_backward.py:194:9
	s_cbranch_scc1 .LBB0_11
; %bb.5:                                ; %.lr.ph
	.loc	1 0 9 is_stmt 0                 ; attention_backward.py:0:9
	v_dual_mov_b32 v238, 0xff800000 :: v_dual_lshlrev_b32 v1, 1, v0
	.loc	1 194 9                         ; attention_backward.py:194:9
	s_waitcnt lgkmcnt(0)
	v_mad_u64_u32 v[74:75], null, s76, v141, v[83:84]
	v_cndmask_b32_e64 v2, 0x104, 0, s14
	s_delay_alu instid0(VALU_DEP_3)
	v_dual_mov_b32 v218, 0xff800000 :: v_dual_and_b32 v1, 60, v1
	v_lshl_or_b32 v3, v104, 7, v105
	v_and_or_b32 v8, v0, 2, v95
	v_or3_b32 v200, v94, v92, v93
	v_mad_u64_u32 v[75:76], null, s55, 12, v[74:75]
	v_xor_b32_e32 v199, v2, v1
	v_lshlrev_b32_e32 v2, 1, v104
	s_delay_alu instid0(VALU_DEP_4)
	v_xor_b32_e32 v129, 0x90, v200
	v_xor_b32_e32 v130, 0x120, v200
	v_xor_b32_e32 v131, 0x1b0, v200
	v_or_b32_e32 v1, v199, v86
	v_mad_u64_u32 v[76:77], null, s55, 20, v[74:75]
	v_mad_u64_u32 v[77:78], null, s55, 24, v[74:75]
	v_mad_u64_u32 v[78:79], null, s55, 28, v[74:75]
	v_or3_b32 v79, v3, v103, v2
	v_xor_b32_e32 v2, 0x208, v1
	v_xor_b32_e32 v3, 0x410, v1
	v_xor_b32_e32 v4, 0x618, v1
	v_dual_mov_b32 v220, 0xff800000 :: v_dual_and_b32 v1, 52, v96
	v_xor_b32_e32 v5, 4, v79
	v_xor_b32_e32 v6, 8, v79
	v_xor_b32_e32 v7, 12, v79
	s_delay_alu instid0(VALU_DEP_4)
	v_lshl_or_b32 v1, v84, 5, v1
	v_xor_b32_e32 v9, 16, v79
	v_xor_b32_e32 v127, 20, v79
	v_xor_b32_e32 v128, 24, v79
	v_dual_mov_b32 v219, 0xff800000 :: v_dual_add_nc_u32 v202, 0, v2
	v_or3_b32 v201, v8, v1, v126
	v_xor_b32_e32 v8, 28, v79
	v_mov_b32_e32 v1, 0
	v_dual_mov_b32 v222, 0xff800000 :: v_dual_add_nc_u32 v203, 0, v3
	s_delay_alu instid0(VALU_DEP_4)
	v_xor_b32_e32 v132, 16, v201
	v_xor_b32_e32 v143, 32, v201
	v_xor_b32_e32 v144, 48, v201
	v_dual_mov_b32 v221, 0xff800000 :: v_dual_add_nc_u32 v204, 0, v4
	v_dual_mov_b32 v224, 0xff800000 :: v_dual_add_nc_u32 v205, 0, v5
	v_dual_mov_b32 v223, 0xff800000 :: v_dual_add_nc_u32 v206, 0, v6
	v_dual_mov_b32 v240, 0 :: v_dual_add_nc_u32 v207, 0, v7
	v_dual_mov_b32 v225, 0xff800000 :: v_dual_add_nc_u32 v208, 0, v9
	v_dual_mov_b32 v236, 0 :: v_dual_add_nc_u32 v209, 0, v127
	v_dual_mov_b32 v241, 0 :: v_dual_add_nc_u32 v210, 0, v128
	v_dual_mov_b32 v234, 0 :: v_dual_add_nc_u32 v211, 0, v8
	v_dual_mov_b32 v239, 0 :: v_dual_add_nc_u32 v212, 0, v129
	v_dual_mov_b32 v232, 0 :: v_dual_add_nc_u32 v213, 0, v130
	v_dual_mov_b32 v227, 0 :: v_dual_add_nc_u32 v214, 0, v131
	v_dual_mov_b32 v230, 0 :: v_dual_add_nc_u32 v215, 0, v132
	v_dual_mov_b32 v237, 0xff800000 :: v_dual_add_nc_u32 v216, 0, v143
	v_dual_mov_b32 v226, 0xff800000 :: v_dual_add_nc_u32 v217, 0, v144
	v_dual_mov_b32 v235, 0xff800000 :: v_dual_mov_b32 v228, 0xff800000
	v_mov_b32_e32 v233, 0xff800000
	v_mov_b32_e32 v231, 0xff800000
	v_mov_b32_e32 v229, 0xff800000
	s_mov_b32 s71, 0x31027000
	s_mov_b32 s70, 0x7ffffffe
	s_and_b32 s65, s41, 0xffff
	s_mov_b32 s64, s40
	s_and_b32 s73, s45, 0xffff
	s_mov_b32 s72, s44
	s_add_i32 s50, s42, s43
	s_and_b32 s69, s49, 0xffff
	s_mov_b32 s68, s48
	s_mov_b32 s66, s70
	s_mov_b32 s67, s71
	s_mov_b32 s74, s70
	s_mov_b32 s75, s71
	s_mov_b32 s51, s38
	s_branch .LBB0_7
.LBB0_6:                                ;   in Loop: Header=BB0_7 Depth=1
	.loc	1 223 21 is_stmt 1              ; attention_backward.py:223:21
	v_cvt_f32_i32_e32 v250, v4
	v_cvt_f32_i32_e32 v4, v8
	.loc	1 245 21                        ; attention_backward.py:245:21
	s_mul_i32 s15, s51, s76
	.loc	1 194 9                         ; attention_backward.py:194:9
	v_lshl_add_u32 v8, s55, 4, v74
	.loc	1 245 21                        ; attention_backward.py:245:21
	s_add_i32 s15, s50, s15
	.loc	1 223 21                        ; attention_backward.py:223:21
	v_cvt_f32_i32_e32 v252, v3
	v_cvt_f32_i32_e32 v249, v5
	v_cvt_f32_i32_e32 v5, v7
	v_cvt_f32_i32_e32 v3, v9
	.loc	1 254 32                        ; attention_backward.py:254:32
	v_add_lshl_u32 v7, s15, v74, 2
	.loc	1 194 9                         ; attention_backward.py:194:9
	v_lshl_add_u32 v9, s55, 2, v74
	.loc	1 254 32                        ; attention_backward.py:254:32
	v_add_lshl_u32 v8, s15, v8, 2
	.loc	1 194 9                         ; attention_backward.py:194:9
	v_lshl_add_u32 v128, s55, 3, v74
	.loc	1 254 32                        ; attention_backward.py:254:32
	v_add_lshl_u32 v127, s15, v76, 2
	v_cndmask_b32_e64 v7, 0x80000000, v7, s81
	v_add_lshl_u32 v9, s15, v9, 2
	v_cndmask_b32_e64 v8, 0x80000000, v8, s82
	s_clause 0x1
	buffer_load_b32 v7, v7, s[68:71], 0 offen
	buffer_load_b32 v8, v8, s[68:71], 0 offen
	v_cndmask_b32_e64 v9, 0x80000000, v9, s79
	v_add_lshl_u32 v128, s15, v128, 2
	v_cndmask_b32_e64 v127, 0x80000000, v127, s80
	v_add_lshl_u32 v129, s15, v77, 2
	s_clause 0x1
	buffer_load_b32 v9, v9, s[68:71], 0 offen
	buffer_load_b32 v127, v127, s[68:71], 0 offen
	v_cndmask_b32_e64 v128, 0x80000000, v128, s59
	v_add_lshl_u32 v130, s15, v78, 2
	v_cndmask_b32_e64 v129, 0x80000000, v129, s78
	v_add_lshl_u32 v131, s15, v75, 2
	s_clause 0x1
	buffer_load_b32 v128, v128, s[68:71], 0 offen
	buffer_load_b32 v129, v129, s[68:71], 0 offen
	v_cndmask_b32_e64 v130, 0x80000000, v130, s58
	v_cndmask_b32_e64 v131, 0x80000000, v131, s53
	s_clause 0x1
	buffer_load_b32 v130, v130, s[68:71], 0 offen
	buffer_load_b32 v131, v131, s[68:71], 0 offen
	.loc	1 255 31                        ; attention_backward.py:255:31
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 223 21                        ; attention_backward.py:223:21
	v_cvt_f32_i32_e32 v2, v2
	v_mul_f32_e32 v4, v162, v4
	v_cvt_f32_i32_e32 v6, v6
	.loc	1 194 9                         ; attention_backward.py:194:9
	s_add_i32 s51, s51, 16
	.loc	1 256 21                        ; attention_backward.py:256:21
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 223 21                        ; attention_backward.py:223:21
	v_mul_f32_e32 v2, v162, v2
	.loc	1 256 21                        ; attention_backward.py:256:21
	.loc	1 223 21                        ; attention_backward.py:223:21
	v_mul_f32_e32 v6, v162, v6
	.loc	1 256 21                        ; attention_backward.py:256:21
	.loc	1 255 31                        ; attention_backward.py:255:31
	v_add_nc_u32_e32 v167, 0, v79
	.loc	1 223 21                        ; attention_backward.py:223:21
	v_mul_f32_e32 v5, v162, v5
	.loc	1 254 32                        ; attention_backward.py:254:32
	s_waitcnt vmcnt(7)
	v_cndmask_b32_e64 v7, 0xff800000, v7, s81
	s_waitcnt vmcnt(6)
	v_cndmask_b32_e64 v8, 0xff800000, v8, s82
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 255 31                        ; attention_backward.py:255:31
	v_dual_mul_f32 v143, 0x3fb8aa3b, v7 :: v_dual_mul_f32 v144, 0x3fb8aa3b, v8
	.loc	1 254 32                        ; attention_backward.py:254:32
	s_waitcnt vmcnt(5)
	v_cndmask_b32_e64 v9, 0xff800000, v9, s79
	.loc	1 255 31                        ; attention_backward.py:255:31
	v_add_nc_u32_e32 v132, v145, v199
	.loc	1 254 32                        ; attention_backward.py:254:32
	s_waitcnt vmcnt(4)
	v_cndmask_b32_e64 v127, 0xff800000, v127, s80
	.loc	1 256 30                        ; attention_backward.py:256:30
	v_cmp_neq_f32_e32 vcc_lo, 0xff800000, v8
	v_cmp_neq_f32_e64 s15, 0xff800000, v7
	v_cmp_neq_f32_e64 s18, 0xff800000, v9
	.loc	1 255 31                        ; attention_backward.py:255:31
	ds_store_2addr_b32 v132, v143, v144 offset1:32
	v_mul_f32_e32 v143, 0x3fb8aa3b, v9
	.loc	1 254 32                        ; attention_backward.py:254:32
	s_waitcnt vmcnt(3)
	v_cndmask_b32_e64 v128, 0xff800000, v128, s59
	.loc	1 255 31                        ; attention_backward.py:255:31
	v_mul_f32_e32 v144, 0x3fb8aa3b, v127
	.loc	1 254 32                        ; attention_backward.py:254:32
	s_waitcnt vmcnt(2)
	v_cndmask_b32_e64 v129, 0xff800000, v129, s78
	.loc	1 256 21                        ; attention_backward.py:256:21
	s_and_b32 s17, s82, vcc_lo
	.loc	1 256 30 is_stmt 0              ; attention_backward.py:256:30
	v_cmp_neq_f32_e64 s16, 0xff800000, v127
	.loc	1 254 32 is_stmt 1              ; attention_backward.py:254:32
	s_waitcnt vmcnt(1)
	v_cndmask_b32_e64 v130, 0xff800000, v130, s58
	.loc	1 255 31                        ; attention_backward.py:255:31
	ds_store_2addr_b32 v202, v143, v144 offset1:32
	v_mul_f32_e32 v143, 0x3fb8aa3b, v128
	.loc	1 254 32                        ; attention_backward.py:254:32
	s_waitcnt vmcnt(0)
	v_cndmask_b32_e64 v131, 0xff800000, v131, s53
	.loc	1 255 31                        ; attention_backward.py:255:31
	v_mul_f32_e32 v144, 0x3fb8aa3b, v129
	.loc	1 256 21                        ; attention_backward.py:256:21
	s_and_b32 s21, s81, s15
	s_and_b32 s16, s80, s16
	.loc	1 256 30 is_stmt 0              ; attention_backward.py:256:30
	v_cmp_neq_f32_e32 vcc_lo, 0xff800000, v129
	.loc	1 256 21                        ; attention_backward.py:256:21
	s_and_b32 s20, s79, s18
	.loc	1 255 31 is_stmt 1              ; attention_backward.py:255:31
	ds_store_2addr_b32 v203, v143, v144 offset1:32
	v_dual_mul_f32 v143, 0x3fb8aa3b, v131 :: v_dual_mul_f32 v144, 0x3fb8aa3b, v130
	.loc	1 256 21                        ; attention_backward.py:256:21
	s_and_b32 s15, s78, vcc_lo
	.loc	1 256 30 is_stmt 0              ; attention_backward.py:256:30
	v_cmp_neq_f32_e64 s18, 0xff800000, v128
	v_cmp_neq_f32_e64 s23, 0xff800000, v130
	v_cmp_neq_f32_e64 s22, 0xff800000, v131
	.loc	1 255 31 is_stmt 1              ; attention_backward.py:255:31
	ds_store_2addr_b32 v204, v143, v144 offset1:32
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b32 v168, v207
	ds_load_b32 v169, v208
	ds_load_b32 v170, v209
	ds_load_b32 v171, v210
	ds_load_b32 v172, v211
	ds_load_b32 v173, v167
	v_mov_b16_e64 v144.l, 0
	.loc	1 214 33                        ; attention_backward.py:214:33
	v_mov_b16_e64 v144.h, v242.l
	.loc	1 255 31                        ; attention_backward.py:255:31
	ds_load_b32 v165, v205
	ds_load_b32 v166, v206
	.loc	1 214 33                        ; attention_backward.py:214:33
	v_mov_b16_e64 v143.h, v251.l
	.loc	1 223 21                        ; attention_backward.py:223:21
	v_mul_f32_e32 v164, v162, v252
	.loc	1 214 33                        ; attention_backward.py:214:33
	v_mov_b16_e64 v143.l, v144.l
	.loc	1 256 21                        ; attention_backward.py:256:21
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_and_b32 s19, s59, s18
	s_and_b32 vcc_lo, s58, s23
	s_and_b32 s18, s53, s22
	.loc	1 194 9                         ; attention_backward.py:194:9
	s_cmp_lt_i32 s51, s39
	.loc	1 255 21                        ; attention_backward.py:255:21
	v_fmac_f32_e32 v173, v2, v144
	.loc	1 214 33                        ; attention_backward.py:214:33
	v_mov_b16_e64 v144.h, v243.l
	.loc	1 223 21                        ; attention_backward.py:223:21
	v_mul_f32_e32 v2, v162, v3
	.loc	1 256 21                        ; attention_backward.py:256:21
	v_cndmask_b32_e64 v3, 0, 1, s21
	.loc	1 255 21                        ; attention_backward.py:255:21
	v_dual_fmac_f32 v165, v164, v143 :: v_dual_mul_f32 v164, v162, v250
	.loc	1 214 33                        ; attention_backward.py:214:33
	v_mov_b16_e64 v143.h, v248.l
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 255 21                        ; attention_backward.py:255:21
	v_fmac_f32_e32 v172, v2, v144
	.loc	1 256 21                        ; attention_backward.py:256:21
	v_cndmask_b32_e64 v2, 0, 1, s17
	.loc	1 255 21                        ; attention_backward.py:255:21
	v_fmac_f32_e32 v166, v164, v143
	.loc	1 214 33                        ; attention_backward.py:214:33
	v_mov_b16_e64 v143.h, v247.l
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 256 21                        ; attention_backward.py:256:21
	v_lshlrev_b16 v2.l, 8, v2.l
	.loc	1 223 21                        ; attention_backward.py:223:21
	v_mul_f32_e32 v164, v162, v249
	.loc	1 256 21                        ; attention_backward.py:256:21
	v_or_b16 v2.l, v3.l, v2.l
	v_cndmask_b32_e64 v3, 0, 1, s16
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_lshlrev_b16 v2.h, 8, v3.l
	.loc	1 255 21                        ; attention_backward.py:255:21
	v_dual_fmac_f32 v168, v164, v143 :: v_dual_add_nc_u32 v3, 0, v200
	.loc	1 214 33                        ; attention_backward.py:214:33
	v_mov_b16_e64 v143.h, v246.l
	.loc	1 256 21                        ; attention_backward.py:256:21
	ds_store_b16 v3, v2
	v_cndmask_b32_e64 v3, 0, 1, s15
	.loc	1 255 21                        ; attention_backward.py:255:21
	v_fmac_f32_e32 v169, v6, v143
	.loc	1 214 33                        ; attention_backward.py:214:33
	v_mov_b16_e64 v6.h, v245.l
	v_mov_b16_e64 v6.l, v144.l
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 256 21                        ; attention_backward.py:256:21
	v_mov_b16_e32 v2.l, v3.l
	v_cndmask_b32_e64 v3, 0, 1, s19
	.loc	1 255 21                        ; attention_backward.py:255:21
	v_fmac_f32_e32 v170, v5, v6
	.loc	1 214 33                        ; attention_backward.py:214:33
	v_mov_b16_e64 v5.h, v244.l
	v_mov_b16_e64 v5.l, v144.l
	.loc	1 256 21                        ; attention_backward.py:256:21
	v_lshlrev_b16 v2.l, 8, v2.l
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 255 21                        ; attention_backward.py:255:21
	v_fmac_f32_e32 v171, v4, v5
	.loc	1 256 21                        ; attention_backward.py:256:21
	v_cndmask_b32_e64 v4, 0, 1, s20
	v_or_b16 v2.l, v3.l, v2.l
	v_cndmask_b32_e64 v3, 0, 1, vcc_lo
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_or_b16 v2.h, v4.l, v2.h
	v_cndmask_b32_e64 v4, 0, 1, s18
	v_lshlrev_b16 v3.l, 8, v3.l
	s_delay_alu instid0(VALU_DEP_1)
	v_or_b16 v3.l, v4.l, v3.l
	ds_store_b16_d16_hi v212, v2
	ds_store_b16 v213, v2
	ds_store_b16 v214, v3
	v_add_nc_u32_e32 v3, 0, v201
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_u8_d16 v2, v3
	s_waitcnt lgkmcnt(0)
	ds_load_u8_d16_hi v2, v3 offset:64
	ds_load_u8_d16 v3, v215
	s_waitcnt lgkmcnt(0)
	ds_load_u8_d16_hi v3, v217 offset:64
	ds_load_u8_d16 v4, v216 offset:64
	s_waitcnt lgkmcnt(0)
	ds_load_u8_d16_hi v4, v215 offset:64
	v_and_b16 v2.l, 1, v2.l
	v_and_b16 v3.l, 1, v3.l
	s_delay_alu instid0(VALU_DEP_2)
	v_cmp_eq_u16_e64 s22, 1, v2.l
	ds_load_u8_d16 v2, v216
	ds_load_u8_d16 v5, v217
	.loc	1 257 22                        ; attention_backward.py:257:22
	s_waitcnt lgkmcnt(0)
	s_barrier
	v_cndmask_b32_e64 v6, 0xff800000, v173, s22
	.loc	1 256 21                        ; attention_backward.py:256:21
	v_cmp_eq_u16_e64 s22, 1, v3.l
	.loc	1 257 22                        ; attention_backward.py:257:22
	ds_store_b32 v167, v6
	v_cndmask_b32_e64 v6, 0xff800000, v165, s22
	ds_store_b32 v205, v6
	.loc	1 256 21                        ; attention_backward.py:256:21
	v_and_b16 v2.l, 1, v2.l
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_cmp_eq_u16_e64 s22, 1, v2.l
	v_and_b16 v2.l, 1, v5.l
	.loc	1 257 22                        ; attention_backward.py:257:22
	v_cndmask_b32_e64 v6, 0xff800000, v166, s22
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 256 21                        ; attention_backward.py:256:21
	v_cmp_eq_u16_e64 s22, 1, v2.l
	v_and_b16 v2.l, 1, v2.h
	.loc	1 257 22                        ; attention_backward.py:257:22
	ds_store_b32 v206, v6
	v_cndmask_b32_e64 v5, 0xff800000, v168, s22
	.loc	1 256 21                        ; attention_backward.py:256:21
	v_cmp_eq_u16_e64 s22, 1, v2.l
	.loc	1 257 22                        ; attention_backward.py:257:22
	ds_store_b32 v207, v5
	v_cndmask_b32_e64 v2, 0xff800000, v169, s22
	ds_store_b32 v208, v2
	.loc	1 256 21                        ; attention_backward.py:256:21
	v_and_b16 v2.l, 1, v4.h
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_cmp_eq_u16_e64 s22, 1, v2.l
	.loc	1 257 22                        ; attention_backward.py:257:22
	v_cndmask_b32_e64 v2, 0xff800000, v170, s22
	ds_store_b32 v209, v2
	.loc	1 256 21                        ; attention_backward.py:256:21
	v_and_b16 v2.l, 1, v4.l
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_cmp_eq_u16_e64 s22, 1, v2.l
	.loc	1 257 22                        ; attention_backward.py:257:22
	v_cndmask_b32_e64 v2, 0xff800000, v171, s22
	ds_store_b32 v210, v2
	.loc	1 256 21                        ; attention_backward.py:256:21
	v_and_b16 v2.l, 1, v3.h
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_cmp_eq_u16_e64 s22, 1, v2.l
	.loc	1 257 22                        ; attention_backward.py:257:22
	v_cndmask_b32_e64 v2, 0xff800000, v172, s22
	ds_store_b32 v211, v2
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_2addr_b32 v[2:3], v132 offset1:32
	ds_load_2addr_b32 v[164:165], v202 offset1:32
	ds_load_2addr_b32 v[166:167], v203 offset1:32
	ds_load_2addr_b32 v[168:169], v204 offset1:32
.Ltmp163:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention_backward.py:258:25 ]
	s_waitcnt lgkmcnt(3)
	v_mov_b32_e32 v4, v2
.Ltmp164:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention_backward.py:258:25 ] ]
	v_max_f32_e32 v5, v2, v2
	s_waitcnt lgkmcnt(0)
	v_dual_max_f32 v8, v166, v166 :: v_dual_max_f32 v127, v168, v168
	v_max_f32_e32 v6, v164, v164
.Ltmp165:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention_backward.py:258:25 ]
	v_mov_b32_dpp v4, v4 row_xmask:8 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp166:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention_backward.py:258:25 ] ]
	v_max_f32_e32 v4, v4, v4
	v_max_f32_e32 v4, v5, v4
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp167:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention_backward.py:258:25 ]
	v_mov_b32_e32 v5, v4
	v_mov_b32_dpp v5, v5 row_xmask:4 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp168:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention_backward.py:258:25 ] ]
	v_max_f32_e32 v5, v5, v5
	v_max_f32_e32 v4, v4, v5
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp169:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention_backward.py:258:25 ]
	v_mov_b32_e32 v5, v4
	v_mov_b32_dpp v5, v5 row_xmask:2 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp170:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention_backward.py:258:25 ] ]
	v_max_f32_e32 v5, v5, v5
	v_max_f32_e32 v4, v4, v5
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp171:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention_backward.py:258:25 ]
	v_mov_b32_e32 v5, v4
	v_mov_b32_dpp v5, v5 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp172:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention_backward.py:258:25 ] ]
	v_max_f32_e32 v5, v5, v5
	v_dual_max_f32 v4, v4, v5 :: v_dual_max_f32 v5, v218, v218
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp173:
	.loc	1 259 20                        ; attention_backward.py:259:20
	v_max_f32_e32 v218, v5, v4
	.loc	1 261 58                        ; attention_backward.py:261:58
	v_sub_f32_e32 v2, v2, v218
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 261 45 is_stmt 0              ; attention_backward.py:261:45
	v_exp_f32_e32 v2, v2
	.loc	1 261 29                        ; attention_backward.py:261:29
	v_cndmask_b32_e64 v2, 0, v2, s21
	.loc	1 260 21 is_stmt 1              ; attention_backward.py:260:21
	v_cmp_neq_f32_e64 s21, 0xff800000, v238
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp174:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:262:33 ]
	v_mov_b32_e32 v5, v2
	v_mov_b32_dpp v5, v5 row_xmask:8 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp175:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:262:33 ] ]
	v_add_f32_e32 v2, v2, v5
.Ltmp176:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:262:33 ]
	v_mov_b32_e32 v5, v2
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v5, v5 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp177:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:262:33 ] ]
	v_add_f32_e32 v2, v2, v5
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp178:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:262:33 ]
	v_mov_b32_e32 v5, v2
	v_mov_b32_dpp v5, v5 row_xmask:2 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
.Ltmp179:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:262:33 ] ]
	v_add_f32_e32 v2, v2, v5
.Ltmp180:
	.loc	1 259 20                        ; attention_backward.py:259:20
	v_max_f32_e32 v5, v238, v238
	v_dual_max_f32 v4, v5, v4 :: v_dual_mov_b32 v5, v2
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp181:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:262:33 ]
	v_mov_b32_dpp v5, v5 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp182:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:262:33 ] ]
	v_add_f32_e32 v2, v2, v5
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp183:
	.loc	1 260 70                        ; attention_backward.py:260:70
	v_dual_sub_f32 v5, v238, v4 :: v_dual_mov_b32 v238, v4
	.loc	1 260 57 is_stmt 0              ; attention_backward.py:260:57
	v_exp_f32_e32 v5, v5
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 260 21                        ; attention_backward.py:260:21
	v_cndmask_b32_e64 v5, 0, v5, s21
	.loc	1 262 19 is_stmt 1              ; attention_backward.py:262:19
	v_dual_fmac_f32 v2, v241, v5 :: v_dual_mov_b32 v5, v164
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp184:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention_backward.py:258:25 ]
	v_mov_b32_dpp v5, v5 row_xmask:8 row_mask:0xf bank_mask:0xf
.Ltmp185:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention_backward.py:258:25 ] ]
	v_max_f32_e32 v5, v5, v5
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_max_f32_e32 v5, v6, v5
.Ltmp186:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention_backward.py:258:25 ]
	v_mov_b32_e32 v6, v5
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v6, v6 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp187:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention_backward.py:258:25 ] ]
	v_max_f32_e32 v6, v6, v6
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_max_f32_e32 v5, v5, v6
.Ltmp188:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention_backward.py:258:25 ]
	v_mov_b32_e32 v6, v5
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v6, v6 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp189:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention_backward.py:258:25 ] ]
	v_max_f32_e32 v6, v6, v6
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_max_f32_e32 v5, v5, v6
.Ltmp190:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention_backward.py:258:25 ]
	v_mov_b32_e32 v6, v5
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v6, v6 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp191:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention_backward.py:258:25 ] ]
	v_max_f32_e32 v6, v6, v6
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_dual_max_f32 v5, v5, v6 :: v_dual_max_f32 v6, v219, v219
.Ltmp192:
	.loc	1 259 20                        ; attention_backward.py:259:20
	v_max_f32_e32 v219, v6, v5
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 261 58                        ; attention_backward.py:261:58
	v_sub_f32_e32 v6, v164, v219
	.loc	1 261 45 is_stmt 0              ; attention_backward.py:261:45
	v_exp_f32_e32 v6, v6
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 261 29                        ; attention_backward.py:261:29
	v_cndmask_b32_e64 v6, 0, v6, s20
	.loc	1 260 21 is_stmt 1              ; attention_backward.py:260:21
	v_cmp_neq_f32_e64 s20, 0xff800000, v237
.Ltmp193:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:262:33 ]
	v_mov_b32_e32 v7, v6
	v_mov_b32_e32 v241, v2
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v7, v7 row_xmask:8 row_mask:0xf bank_mask:0xf
.Ltmp194:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:262:33 ] ]
	v_add_f32_e32 v6, v6, v7
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp195:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:262:33 ]
	v_mov_b32_e32 v7, v6
	v_mov_b32_dpp v7, v7 row_xmask:4 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp196:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:262:33 ] ]
	v_add_f32_e32 v6, v6, v7
.Ltmp197:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:262:33 ]
	v_mov_b32_e32 v7, v6
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v7, v7 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp198:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:262:33 ] ]
	v_dual_add_f32 v7, v6, v7 :: v_dual_max_f32 v6, v237, v237
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp199:
	.loc	1 259 20                        ; attention_backward.py:259:20
	v_dual_max_f32 v6, v6, v5 :: v_dual_mov_b32 v5, v7
.Ltmp200:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:262:33 ]
	v_mov_b32_dpp v5, v5 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp201:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:262:33 ] ]
	v_add_f32_e32 v5, v7, v5
.Ltmp202:
	.loc	1 260 70                        ; attention_backward.py:260:70
	v_sub_f32_e32 v7, v237, v6
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 260 57 is_stmt 0              ; attention_backward.py:260:57
	v_exp_f32_e32 v7, v7
	.loc	1 260 21                        ; attention_backward.py:260:21
	v_cndmask_b32_e64 v7, 0, v7, s20
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 262 19 is_stmt 1              ; attention_backward.py:262:19
	v_fmac_f32_e32 v5, v240, v7
.Ltmp203:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention_backward.py:258:25 ]
	v_dual_mov_b32 v7, v166 :: v_dual_mov_b32 v240, v5
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v7, v7 row_xmask:8 row_mask:0xf bank_mask:0xf
.Ltmp204:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention_backward.py:258:25 ] ]
	v_max_f32_e32 v7, v7, v7
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_max_f32_e32 v7, v8, v7
.Ltmp205:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention_backward.py:258:25 ]
	v_mov_b32_e32 v8, v7
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v8, v8 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp206:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention_backward.py:258:25 ] ]
	v_max_f32_e32 v8, v8, v8
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_max_f32_e32 v7, v7, v8
.Ltmp207:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention_backward.py:258:25 ]
	v_mov_b32_e32 v8, v7
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v8, v8 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp208:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention_backward.py:258:25 ] ]
	v_max_f32_e32 v8, v8, v8
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_max_f32_e32 v7, v7, v8
.Ltmp209:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention_backward.py:258:25 ]
	v_mov_b32_e32 v8, v7
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v8, v8 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp210:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention_backward.py:258:25 ] ]
	v_max_f32_e32 v8, v8, v8
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_max_f32_e32 v7, v7, v8
.Ltmp211:
	.loc	1 259 20                        ; attention_backward.py:259:20
	v_dual_max_f32 v8, v220, v220 :: v_dual_mov_b32 v237, v6
	v_max_f32_e32 v220, v8, v7
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 261 58                        ; attention_backward.py:261:58
	v_sub_f32_e32 v8, v166, v220
	.loc	1 261 45 is_stmt 0              ; attention_backward.py:261:45
	v_exp_f32_e32 v8, v8
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 261 29                        ; attention_backward.py:261:29
	v_cndmask_b32_e64 v8, 0, v8, s19
	.loc	1 260 21 is_stmt 1              ; attention_backward.py:260:21
	v_cmp_neq_f32_e64 s19, 0xff800000, v235
.Ltmp212:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:262:33 ]
	v_mov_b32_e32 v9, v8
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v9, v9 row_xmask:8 row_mask:0xf bank_mask:0xf
.Ltmp213:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:262:33 ] ]
	v_add_f32_e32 v8, v8, v9
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp214:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:262:33 ]
	v_mov_b32_e32 v9, v8
	v_mov_b32_dpp v9, v9 row_xmask:4 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp215:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:262:33 ] ]
	v_add_f32_e32 v8, v8, v9
.Ltmp216:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:262:33 ]
	v_mov_b32_e32 v9, v8
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v9, v9 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp217:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:262:33 ] ]
	v_dual_add_f32 v9, v8, v9 :: v_dual_max_f32 v8, v235, v235
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp218:
	.loc	1 259 20                        ; attention_backward.py:259:20
	v_dual_max_f32 v8, v8, v7 :: v_dual_mov_b32 v7, v9
.Ltmp219:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:262:33 ]
	v_mov_b32_dpp v7, v7 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp220:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:262:33 ] ]
	v_add_f32_e32 v7, v9, v7
.Ltmp221:
	.loc	1 260 70                        ; attention_backward.py:260:70
	v_sub_f32_e32 v9, v235, v8
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 260 57 is_stmt 0              ; attention_backward.py:260:57
	v_exp_f32_e32 v9, v9
	.loc	1 260 21                        ; attention_backward.py:260:21
	v_cndmask_b32_e64 v9, 0, v9, s19
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 262 19 is_stmt 1              ; attention_backward.py:262:19
	v_fmac_f32_e32 v7, v239, v9
.Ltmp222:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention_backward.py:258:25 ]
	v_mov_b32_e32 v9, v168
	v_mov_b32_e32 v239, v7
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v9, v9 row_xmask:8 row_mask:0xf bank_mask:0xf
.Ltmp223:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention_backward.py:258:25 ] ]
	v_max_f32_e32 v9, v9, v9
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_max_f32_e32 v9, v127, v9
	v_mov_b32_e32 v235, v8
.Ltmp224:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention_backward.py:258:25 ]
	v_mov_b32_e32 v127, v9
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v127, v127 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp225:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention_backward.py:258:25 ] ]
	v_max_f32_e32 v127, v127, v127
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_max_f32_e32 v9, v9, v127
.Ltmp226:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention_backward.py:258:25 ]
	v_mov_b32_e32 v127, v9
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v127, v127 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp227:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention_backward.py:258:25 ] ]
	v_max_f32_e32 v127, v127, v127
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_max_f32_e32 v9, v9, v127
.Ltmp228:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention_backward.py:258:25 ]
	v_mov_b32_e32 v127, v9
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v127, v127 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp229:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention_backward.py:258:25 ] ]
	v_max_f32_e32 v127, v127, v127
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_max_f32_e32 v9, v9, v127
.Ltmp230:
	.loc	1 259 20                        ; attention_backward.py:259:20
	v_max_f32_e32 v127, v221, v221
	v_max_f32_e32 v221, v127, v9
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 261 58                        ; attention_backward.py:261:58
	v_sub_f32_e32 v127, v168, v221
	.loc	1 261 45 is_stmt 0              ; attention_backward.py:261:45
	v_exp_f32_e32 v127, v127
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 261 29                        ; attention_backward.py:261:29
	v_cndmask_b32_e64 v127, 0, v127, s18
	.loc	1 260 21 is_stmt 1              ; attention_backward.py:260:21
	v_cmp_neq_f32_e64 s18, 0xff800000, v233
.Ltmp231:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:262:33 ]
	v_mov_b32_e32 v128, v127
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v128, v128 row_xmask:8 row_mask:0xf bank_mask:0xf
.Ltmp232:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:262:33 ] ]
	v_add_f32_e32 v127, v127, v128
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp233:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:262:33 ]
	v_mov_b32_e32 v128, v127
	v_mov_b32_dpp v128, v128 row_xmask:4 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp234:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:262:33 ] ]
	v_add_f32_e32 v127, v127, v128
.Ltmp235:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:262:33 ]
	v_mov_b32_e32 v128, v127
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v128, v128 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp236:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:262:33 ] ]
	v_dual_add_f32 v127, v127, v128 :: v_dual_max_f32 v128, v233, v233
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
.Ltmp237:
	.loc	1 259 20                        ; attention_backward.py:259:20
	v_dual_max_f32 v242, v128, v9 :: v_dual_mov_b32 v9, v127
.Ltmp238:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention_backward.py:258:25 ] ]
	v_max_f32_e32 v128, v3, v3
.Ltmp239:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:262:33 ]
	v_mov_b32_dpp v9, v9 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp240:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:262:33 ] ]
	v_add_f32_e32 v9, v127, v9
.Ltmp241:
	.loc	1 260 70                        ; attention_backward.py:260:70
	v_sub_f32_e32 v127, v233, v242
	v_mov_b32_e32 v233, v242
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 260 57 is_stmt 0              ; attention_backward.py:260:57
	v_exp_f32_e32 v127, v127
	.loc	1 260 21                        ; attention_backward.py:260:21
	v_cndmask_b32_e64 v127, 0, v127, s18
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 262 19 is_stmt 1              ; attention_backward.py:262:19
	v_fmac_f32_e32 v9, v236, v127
.Ltmp242:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention_backward.py:258:25 ]
	v_mov_b32_e32 v127, v3
	v_mov_b32_dpp v127, v127 row_xmask:8 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp243:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention_backward.py:258:25 ] ]
	v_max_f32_e32 v127, v127, v127
	v_max_f32_e32 v127, v128, v127
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp244:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention_backward.py:258:25 ]
	v_mov_b32_e32 v128, v127
	v_mov_b32_dpp v128, v128 row_xmask:4 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp245:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention_backward.py:258:25 ] ]
	v_max_f32_e32 v128, v128, v128
	v_max_f32_e32 v127, v127, v128
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp246:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention_backward.py:258:25 ]
	v_mov_b32_e32 v128, v127
	v_mov_b32_dpp v128, v128 row_xmask:2 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp247:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention_backward.py:258:25 ] ]
	v_max_f32_e32 v128, v128, v128
	v_max_f32_e32 v127, v127, v128
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp248:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention_backward.py:258:25 ]
	v_mov_b32_e32 v128, v127
	v_mov_b32_dpp v128, v128 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp249:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention_backward.py:258:25 ] ]
	v_max_f32_e32 v128, v128, v128
	v_dual_max_f32 v127, v127, v128 :: v_dual_max_f32 v128, v222, v222
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp250:
	.loc	1 259 20                        ; attention_backward.py:259:20
	v_max_f32_e32 v222, v128, v127
	.loc	1 261 58                        ; attention_backward.py:261:58
	v_sub_f32_e32 v3, v3, v222
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 261 45 is_stmt 0              ; attention_backward.py:261:45
	v_exp_f32_e32 v3, v3
	.loc	1 261 29                        ; attention_backward.py:261:29
	v_cndmask_b32_e64 v3, 0, v3, s17
	.loc	1 260 21 is_stmt 1              ; attention_backward.py:260:21
	v_cmp_neq_f32_e64 s17, 0xff800000, v231
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp251:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:262:33 ]
	v_mov_b32_e32 v128, v3
	v_mov_b32_dpp v128, v128 row_xmask:8 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp252:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:262:33 ] ]
	v_add_f32_e32 v3, v3, v128
.Ltmp253:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:262:33 ]
	v_mov_b32_e32 v128, v3
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v128, v128 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp254:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:262:33 ] ]
	v_add_f32_e32 v3, v3, v128
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
.Ltmp255:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:262:33 ]
	v_mov_b32_e32 v128, v3
	v_mov_b32_e32 v236, v9
	v_mov_b32_dpp v128, v128 row_xmask:2 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
.Ltmp256:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:262:33 ] ]
	v_add_f32_e32 v3, v3, v128
.Ltmp257:
	.loc	1 259 20                        ; attention_backward.py:259:20
	v_max_f32_e32 v128, v231, v231
	v_max_f32_e32 v243, v128, v127
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp258:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:262:33 ]
	v_dual_mov_b32 v127, v3 :: v_dual_max_f32 v128, v165, v165
	v_mov_b32_dpp v127, v127 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp259:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:262:33 ] ]
	v_add_f32_e32 v3, v3, v127
.Ltmp260:
	.loc	1 260 70                        ; attention_backward.py:260:70
	v_sub_f32_e32 v127, v231, v243
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 260 57 is_stmt 0              ; attention_backward.py:260:57
	v_exp_f32_e32 v127, v127
	.loc	1 260 21                        ; attention_backward.py:260:21
	v_cndmask_b32_e64 v127, 0, v127, s17
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 262 19 is_stmt 1              ; attention_backward.py:262:19
	v_fmac_f32_e32 v3, v234, v127
.Ltmp261:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention_backward.py:258:25 ]
	v_mov_b32_e32 v127, v165
	v_mov_b32_dpp v127, v127 row_xmask:8 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp262:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention_backward.py:258:25 ] ]
	v_max_f32_e32 v127, v127, v127
	v_max_f32_e32 v127, v128, v127
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
.Ltmp263:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention_backward.py:258:25 ]
	v_mov_b32_e32 v128, v127
	v_mov_b32_e32 v231, v243
	v_mov_b32_dpp v128, v128 row_xmask:4 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp264:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention_backward.py:258:25 ] ]
	v_max_f32_e32 v128, v128, v128
	v_max_f32_e32 v127, v127, v128
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
.Ltmp265:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention_backward.py:258:25 ]
	v_mov_b32_e32 v128, v127
	v_mov_b32_e32 v234, v3
	v_mov_b32_dpp v128, v128 row_xmask:2 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp266:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention_backward.py:258:25 ] ]
	v_max_f32_e32 v128, v128, v128
	v_max_f32_e32 v127, v127, v128
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp267:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention_backward.py:258:25 ]
	v_mov_b32_e32 v128, v127
	v_mov_b32_dpp v128, v128 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp268:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention_backward.py:258:25 ] ]
	v_max_f32_e32 v128, v128, v128
	v_max_f32_e32 v127, v127, v128
.Ltmp269:
	.loc	1 259 20                        ; attention_backward.py:259:20
	v_max_f32_e32 v128, v223, v223
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_max_f32_e32 v223, v128, v127
	.loc	1 261 58                        ; attention_backward.py:261:58
	v_sub_f32_e32 v128, v165, v223
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 261 45 is_stmt 0              ; attention_backward.py:261:45
	v_exp_f32_e32 v128, v128
	.loc	1 261 29                        ; attention_backward.py:261:29
	v_cndmask_b32_e64 v128, 0, v128, s16
	.loc	1 260 21 is_stmt 1              ; attention_backward.py:260:21
	v_cmp_neq_f32_e64 s16, 0xff800000, v229
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp270:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:262:33 ]
	v_mov_b32_e32 v129, v128
	v_mov_b32_dpp v129, v129 row_xmask:8 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp271:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:262:33 ] ]
	v_add_f32_e32 v128, v128, v129
.Ltmp272:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:262:33 ]
	v_mov_b32_e32 v129, v128
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v129, v129 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp273:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:262:33 ] ]
	v_add_f32_e32 v128, v128, v129
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp274:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:262:33 ]
	v_mov_b32_e32 v129, v128
	v_mov_b32_dpp v129, v129 row_xmask:2 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
.Ltmp275:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:262:33 ] ]
	v_add_f32_e32 v128, v128, v129
.Ltmp276:
	.loc	1 259 20                        ; attention_backward.py:259:20
	v_max_f32_e32 v129, v229, v229
	v_max_f32_e32 v245, v129, v127
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp277:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:262:33 ]
	v_mov_b32_e32 v127, v128
	v_mov_b32_dpp v127, v127 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
.Ltmp278:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:262:33 ] ]
	v_dual_add_f32 v244, v128, v127 :: v_dual_sub_f32 v127, v229, v245
.Ltmp279:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention_backward.py:258:25 ] ]
	v_max_f32_e32 v128, v167, v167
.Ltmp280:
	.loc	1 260 57                        ; attention_backward.py:260:57
	v_exp_f32_e32 v127, v127
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 260 21 is_stmt 0              ; attention_backward.py:260:21
	v_cndmask_b32_e64 v127, 0, v127, s16
	.loc	1 262 19 is_stmt 1              ; attention_backward.py:262:19
	v_dual_fmac_f32 v244, v232, v127 :: v_dual_mov_b32 v127, v167
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_mov_b32_e32 v232, v244
.Ltmp281:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention_backward.py:258:25 ]
	v_mov_b32_dpp v127, v127 row_xmask:8 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp282:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention_backward.py:258:25 ] ]
	v_max_f32_e32 v127, v127, v127
	v_max_f32_e32 v127, v128, v127
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp283:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention_backward.py:258:25 ]
	v_mov_b32_e32 v128, v127
	v_mov_b32_dpp v128, v128 row_xmask:4 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp284:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention_backward.py:258:25 ] ]
	v_max_f32_e32 v128, v128, v128
	v_max_f32_e32 v127, v127, v128
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp285:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention_backward.py:258:25 ]
	v_mov_b32_e32 v128, v127
	v_mov_b32_dpp v128, v128 row_xmask:2 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp286:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention_backward.py:258:25 ] ]
	v_max_f32_e32 v128, v128, v128
	v_max_f32_e32 v127, v127, v128
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp287:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention_backward.py:258:25 ]
	v_mov_b32_e32 v128, v127
	v_mov_b32_dpp v128, v128 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp288:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention_backward.py:258:25 ] ]
	v_max_f32_e32 v128, v128, v128
	v_max_f32_e32 v127, v127, v128
.Ltmp289:
	.loc	1 259 20                        ; attention_backward.py:259:20
	v_max_f32_e32 v128, v224, v224
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_max_f32_e32 v224, v128, v127
	.loc	1 261 58                        ; attention_backward.py:261:58
	v_sub_f32_e32 v128, v167, v224
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 261 45 is_stmt 0              ; attention_backward.py:261:45
	v_exp_f32_e32 v128, v128
	.loc	1 261 29                        ; attention_backward.py:261:29
	v_cndmask_b32_e64 v128, 0, v128, s15
	.loc	1 260 21 is_stmt 1              ; attention_backward.py:260:21
	v_cmp_neq_f32_e64 s15, 0xff800000, v226
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp290:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:262:33 ]
	v_mov_b32_e32 v129, v128
	v_mov_b32_dpp v129, v129 row_xmask:8 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp291:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:262:33 ] ]
	v_add_f32_e32 v128, v128, v129
.Ltmp292:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:262:33 ]
	v_mov_b32_e32 v129, v128
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v129, v129 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp293:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:262:33 ] ]
	v_add_f32_e32 v128, v128, v129
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp294:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:262:33 ]
	v_mov_b32_e32 v129, v128
	v_mov_b32_dpp v129, v129 row_xmask:2 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp295:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:262:33 ] ]
	v_dual_add_f32 v128, v128, v129 :: v_dual_max_f32 v129, v226, v226
.Ltmp296:
	.loc	1 259 20                        ; attention_backward.py:259:20
	v_max_f32_e32 v247, v129, v127
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp297:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:262:33 ]
	v_mov_b32_e32 v127, v128
	v_mov_b32_dpp v127, v127 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp298:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:262:33 ] ]
	v_add_f32_e32 v246, v128, v127
.Ltmp299:
	.loc	1 260 70                        ; attention_backward.py:260:70
	v_dual_sub_f32 v127, v226, v247 :: v_dual_max_f32 v128, v169, v169
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 260 57 is_stmt 0              ; attention_backward.py:260:57
	v_exp_f32_e32 v127, v127
	.loc	1 260 21                        ; attention_backward.py:260:21
	v_cndmask_b32_e64 v127, 0, v127, s15
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 262 19 is_stmt 1              ; attention_backward.py:262:19
	v_dual_fmac_f32 v246, v230, v127 :: v_dual_mov_b32 v127, v169
	v_mov_b32_e32 v230, v246
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp300:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention_backward.py:258:25 ]
	v_mov_b32_dpp v127, v127 row_xmask:8 row_mask:0xf bank_mask:0xf
.Ltmp301:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention_backward.py:258:25 ] ]
	v_max_f32_e32 v127, v127, v127
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_max_f32_e32 v127, v128, v127
.Ltmp302:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention_backward.py:258:25 ]
	v_dual_mov_b32 v128, v127 :: v_dual_mov_b32 v229, v245
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v128, v128 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp303:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention_backward.py:258:25 ] ]
	v_max_f32_e32 v128, v128, v128
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_max_f32_e32 v127, v127, v128
.Ltmp304:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention_backward.py:258:25 ]
	v_mov_b32_e32 v128, v127
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v128, v128 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp305:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention_backward.py:258:25 ] ]
	v_max_f32_e32 v128, v128, v128
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_max_f32_e32 v127, v127, v128
.Ltmp306:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention_backward.py:258:25 ]
	v_mov_b32_e32 v128, v127
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v128, v128 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp307:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention_backward.py:258:25 ] ]
	v_max_f32_e32 v128, v128, v128
	v_mov_b32_e32 v226, v247
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_dual_max_f32 v127, v127, v128 :: v_dual_max_f32 v128, v225, v225
.Ltmp308:
	.loc	1 259 20                        ; attention_backward.py:259:20
	v_max_f32_e32 v225, v128, v127
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 261 58                        ; attention_backward.py:261:58
	v_sub_f32_e32 v128, v169, v225
	.loc	1 261 45 is_stmt 0              ; attention_backward.py:261:45
	v_exp_f32_e32 v128, v128
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 261 29                        ; attention_backward.py:261:29
	v_cndmask_b32_e32 v128, 0, v128, vcc_lo
	.loc	1 260 21 is_stmt 1              ; attention_backward.py:260:21
	v_cmp_neq_f32_e32 vcc_lo, 0xff800000, v228
.Ltmp309:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:262:33 ]
	v_mov_b32_e32 v129, v128
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v129, v129 row_xmask:8 row_mask:0xf bank_mask:0xf
.Ltmp310:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:262:33 ] ]
	v_add_f32_e32 v128, v128, v129
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp311:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:262:33 ]
	v_mov_b32_e32 v129, v128
	v_mov_b32_dpp v129, v129 row_xmask:4 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp312:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:262:33 ] ]
	v_add_f32_e32 v128, v128, v129
.Ltmp313:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:262:33 ]
	v_mov_b32_e32 v129, v128
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v129, v129 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp314:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:262:33 ] ]
	v_add_f32_e32 v128, v128, v129
.Ltmp315:
	.loc	1 259 20                        ; attention_backward.py:259:20
	v_max_f32_e32 v129, v228, v228
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_max_f32_e32 v249, v129, v127
.Ltmp316:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:262:33 ]
	v_mov_b32_e32 v127, v128
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v127, v127 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp317:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:262:33 ] ]
	v_add_f32_e32 v248, v128, v127
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp318:
	.loc	1 260 70                        ; attention_backward.py:260:70
	v_dual_sub_f32 v127, v228, v249 :: v_dual_mov_b32 v228, v249
	.loc	1 260 57 is_stmt 0              ; attention_backward.py:260:57
	v_exp_f32_e32 v127, v127
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 260 21                        ; attention_backward.py:260:21
	v_cndmask_b32_e32 v127, 0, v127, vcc_lo
	.loc	1 262 19 is_stmt 1              ; attention_backward.py:262:19
	v_fmac_f32_e32 v248, v227, v127
	s_delay_alu instid0(VALU_DEP_1)
	v_mov_b32_e32 v227, v248
	.loc	1 194 9                         ; attention_backward.py:194:9
	s_cbranch_scc0 .LBB0_12
.LBB0_7:                                ; =>This Inner Loop Header: Depth=1
	.loc	1 195 27                        ; attention_backward.py:195:27
	v_or_b32_e32 v2, s51, v126
	v_or_b32_e32 v3, s51, v174
	v_or_b32_e32 v4, s51, v175
	.loc	1 199 21                        ; attention_backward.py:199:21
	s_add_i32 s22, s51, s77
	.loc	1 195 27                        ; attention_backward.py:195:27
	v_or_b32_e32 v5, s51, v176
	.loc	1 201 24                        ; attention_backward.py:201:24
	v_cmp_gt_i32_e32 vcc_lo, s31, v2
	.loc	1 195 27                        ; attention_backward.py:195:27
	v_or_b32_e32 v2, s51, v178
	.loc	1 201 24                        ; attention_backward.py:201:24
	v_cmp_gt_i32_e64 s15, s31, v3
	.loc	1 195 27                        ; attention_backward.py:195:27
	v_or_b32_e32 v3, s51, v179
	.loc	1 199 21                        ; attention_backward.py:199:21
	s_mul_i32 s23, s22, s34
	.loc	1 201 24                        ; attention_backward.py:201:24
	v_cmp_gt_i32_e64 s16, s31, v4
	.loc	1 195 27                        ; attention_backward.py:195:27
	v_or_b32_e32 v4, s51, v253
	.loc	1 201 24                        ; attention_backward.py:201:24
	v_cmp_gt_i32_e64 s19, s31, v2
	.loc	1 199 21                        ; attention_backward.py:199:21
	v_add_nc_u32_e32 v2, s23, v107
	.loc	1 195 27                        ; attention_backward.py:195:27
	v_or_b32_e32 v6, s51, v177
	.loc	1 201 24                        ; attention_backward.py:201:24
	v_cmp_gt_i32_e64 s20, s31, v3
	.loc	1 199 21                        ; attention_backward.py:199:21
	v_add_nc_u32_e32 v3, s23, v134
	.loc	1 200 26                        ; attention_backward.py:200:26
	s_and_b32 vcc_lo, s2, vcc_lo
	.loc	1 201 24                        ; attention_backward.py:201:24
	v_cmp_gt_i32_e64 s17, s31, v5
	v_cmp_gt_i32_e64 s21, s31, v4
	.loc	1 199 21                        ; attention_backward.py:199:21
	v_add_nc_u32_e32 v4, s23, v135
	.loc	1 198 28                        ; attention_backward.py:198:28
	v_cndmask_b32_e32 v2, 0x80000000, v2, vcc_lo
	.loc	1 200 26                        ; attention_backward.py:200:26
	s_and_b32 vcc_lo, s2, s15
	.loc	1 201 24                        ; attention_backward.py:201:24
	v_cmp_gt_i32_e64 s18, s31, v6
	.loc	1 199 21                        ; attention_backward.py:199:21
	v_add_nc_u32_e32 v5, s23, v108
	.loc	1 198 28                        ; attention_backward.py:198:28
	v_cndmask_b32_e32 v3, 0x80000000, v3, vcc_lo
	.loc	1 200 26                        ; attention_backward.py:200:26
	s_and_b32 vcc_lo, s2, s16
	.loc	1 199 21                        ; attention_backward.py:199:21
	v_add_nc_u32_e32 v6, s23, v136
	.loc	1 198 28                        ; attention_backward.py:198:28
	v_cndmask_b32_e32 v4, 0x80000000, v4, vcc_lo
	.loc	1 200 26                        ; attention_backward.py:200:26
	s_and_b32 vcc_lo, s2, s17
	.loc	1 199 21                        ; attention_backward.py:199:21
	v_add_nc_u32_e32 v7, s23, v109
	.loc	1 198 28                        ; attention_backward.py:198:28
	v_cndmask_b32_e32 v5, 0x80000000, v5, vcc_lo
	.loc	1 200 26                        ; attention_backward.py:200:26
	s_and_b32 vcc_lo, s2, s18
	.loc	1 199 21                        ; attention_backward.py:199:21
	v_add_nc_u32_e32 v8, s23, v110
	.loc	1 198 28                        ; attention_backward.py:198:28
	v_cndmask_b32_e32 v6, 0x80000000, v6, vcc_lo
	.loc	1 200 26                        ; attention_backward.py:200:26
	s_and_b32 vcc_lo, s2, s19
	.loc	1 199 21                        ; attention_backward.py:199:21
	v_add_nc_u32_e32 v9, s23, v111
	.loc	1 198 28                        ; attention_backward.py:198:28
	v_cndmask_b32_e32 v7, 0x80000000, v7, vcc_lo
	.loc	1 200 26                        ; attention_backward.py:200:26
	s_and_b32 vcc_lo, s2, s20
	.loc	1 198 28                        ; attention_backward.py:198:28
	v_dual_cndmask_b32 v8, 0x80000000, v8 :: v_dual_add_nc_u32 v129, 0, v89
	.loc	1 200 26                        ; attention_backward.py:200:26
	s_and_b32 vcc_lo, s2, s21
	.loc	1 195 27                        ; attention_backward.py:195:27
	v_or_b32_e32 v249, s51, v141
	.loc	1 198 28                        ; attention_backward.py:198:28
	v_cndmask_b32_e32 v9, 0x80000000, v9, vcc_lo
	s_clause 0x7
	buffer_load_u8 v127, v2, s[64:67], 0 offen
	buffer_load_u8 v3, v3, s[64:67], 0 offen
	buffer_load_u8 v4, v4, s[64:67], 0 offen
	buffer_load_u8 v5, v5, s[64:67], 0 offen
	buffer_load_u8 v6, v6, s[64:67], 0 offen
	buffer_load_u8 v7, v7, s[64:67], 0 offen
	buffer_load_u8 v8, v8, s[64:67], 0 offen
	buffer_load_u8 v9, v9, s[64:67], 0 offen
	.loc	1 204 29                        ; attention_backward.py:204:29
	v_mov_b32_e32 v2, v1
	.loc	1 198 28                        ; attention_backward.py:198:28
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 201 24                        ; attention_backward.py:201:24
	v_cmp_gt_i32_e64 s15, s31, v249
	.loc	1 238 13                        ; attention_backward.py:238:13
	s_and_b32 vcc_lo, exec_lo, s5
	.loc	1 198 28                        ; attention_backward.py:198:28
	s_waitcnt vmcnt(7)
	ds_store_b8 v137, v127
	s_waitcnt vmcnt(6)
	ds_store_b8 v137, v3 offset:64
	s_waitcnt vmcnt(5)
	ds_store_b8 v138, v4
	s_waitcnt vmcnt(4)
	ds_store_b8 v138, v5 offset:64
	s_waitcnt vmcnt(3)
	ds_store_b8 v139, v6
	s_waitcnt vmcnt(2)
	ds_store_b8 v139, v7 offset:64
	s_waitcnt vmcnt(1)
	ds_store_b8 v140, v8
	s_waitcnt vmcnt(0)
	ds_store_b8 v140, v9 offset:64
	.loc	1 204 29                        ; attention_backward.py:204:29
	v_mov_b32_e32 v3, v1
	v_mov_b32_e32 v4, v1
	v_mov_b32_e32 v5, v1
	v_mov_b32_e32 v6, v1
	v_mov_b32_e32 v7, v1
	v_mov_b32_e32 v8, v1
	.loc	1 198 28                        ; attention_backward.py:198:28
	v_add_nc_u32_e32 v128, 0, v163
	s_waitcnt lgkmcnt(0)
	s_barrier
	v_add_nc_u32_e32 v9, 0, v90
	ds_load_b64 v[166:167], v129
	ds_load_b64 v[164:165], v128
	v_add_nc_u32_e32 v127, 0, v91
	.loc	1 236 21                        ; attention_backward.py:236:21
	s_and_b32 s81, s6, s15
	.loc	1 198 28                        ; attention_backward.py:198:28
	ds_load_b64 v[168:169], v9
	.loc	1 236 21                        ; attention_backward.py:236:21
	s_and_b32 s79, s7, s15
	s_and_b32 s59, s8, s15
	.loc	1 198 28                        ; attention_backward.py:198:28
	ds_load_b64 v[170:171], v127
	.loc	1 204 29                        ; attention_backward.py:204:29
	v_mov_b32_e32 v9, v8
	v_mov_b32_e32 v8, v7
	v_mov_b32_e32 v7, v6
	v_mov_b32_e32 v6, v5
	v_mov_b32_e32 v5, v4
	v_mov_b32_e32 v4, v3
	v_mov_b32_e32 v3, v2
	v_mov_b32_e32 v2, v1
	.loc	1 236 21                        ; attention_backward.py:236:21
	s_and_b32 s53, s9, s15
	s_and_b32 s82, s10, s15
	s_and_b32 s80, s11, s15
	s_and_b32 s78, s12, s15
	s_and_b32 s58, s13, s15
	.loc	1 204 29                        ; attention_backward.py:204:29
	s_waitcnt lgkmcnt(2)
	v_wmma_i32_16x16x16_iu4 v[2:9], v[164:165], v[112:113], v[2:9] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[2:9], v[166:167], v[114:115], v[2:9] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu4 v[2:9], v[168:169], v[116:117], v[2:9] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	s_delay_alu instid0(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[2:9], v[170:171], v[118:119], v[2:9] neg_lo:[1,1,0]
	.loc	1 238 13                        ; attention_backward.py:238:13
	s_cbranch_vccnz .LBB0_9
; %bb.8:                                ;   in Loop: Header=BB0_7 Depth=1
	.loc	1 239 26                        ; attention_backward.py:239:26
	v_cmp_le_i32_e32 vcc_lo, v249, v154
	v_cmp_le_i32_e64 s15, v249, v155
	v_cmp_le_i32_e64 s16, v249, v156
	v_cmp_le_i32_e64 s17, v249, v157
	v_cmp_le_i32_e64 s18, v249, v158
	v_cmp_le_i32_e64 s19, v249, v159
	.loc	1 239 17 is_stmt 0              ; attention_backward.py:239:17
	s_and_b32 s23, vcc_lo, s81
	s_and_b32 s15, s15, s79
	.loc	1 239 26                        ; attention_backward.py:239:26
	v_cmp_le_i32_e64 s20, v249, v160
	v_cmp_le_i32_e64 s21, v249, v161
	.loc	1 239 17                        ; attention_backward.py:239:17
	s_and_b32 s16, s16, s59
	s_and_b32 s17, s17, s53
	s_and_not1_b32 s24, s81, exec_lo
	s_and_b32 s23, s23, exec_lo
	s_and_not1_b32 s25, s79, exec_lo
	s_and_b32 s15, s15, exec_lo
	s_and_b32 s18, s18, s82
	s_and_b32 s19, s19, s80
	s_or_b32 s81, s24, s23
	s_or_b32 s79, s25, s15
	s_and_not1_b32 s15, s59, exec_lo
	s_and_b32 s16, s16, exec_lo
	s_and_not1_b32 s23, s53, exec_lo
	s_and_b32 s17, s17, exec_lo
	s_and_b32 s20, s20, s78
	s_and_b32 s21, s21, s58
	s_or_b32 s59, s15, s16
	s_or_b32 s53, s23, s17
	s_and_not1_b32 s15, s82, exec_lo
	s_and_b32 s16, s18, exec_lo
	s_and_not1_b32 s17, s80, exec_lo
	s_and_b32 s18, s19, exec_lo
	s_or_b32 s82, s15, s16
	s_or_b32 s80, s17, s18
	s_and_not1_b32 s15, s78, exec_lo
	s_and_b32 s16, s20, exec_lo
	s_and_not1_b32 s17, s58, exec_lo
	s_and_b32 s18, s21, exec_lo
	s_or_b32 s78, s15, s16
	s_or_b32 s58, s17, s18
.LBB0_9:                                ;   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 0                           ; attention_backward.py:0
	v_or_b32_e32 v127, s51, v152
	v_or_b32_e32 v128, s51, v153
	v_add_lshl_u32 v130, s22, v152, 1
	v_or_b32_e32 v129, s51, v151
	v_or_b32_e32 v131, s51, v150
	v_cmp_gt_i32_e32 vcc_lo, s31, v127
	v_or_b32_e32 v132, s51, v149
	v_add_nc_u32_e32 v167, 20, v130
	v_or_b32_e32 v143, s51, v148
	v_or_b32_e32 v144, s51, v147
	v_cndmask_b32_e32 v127, 0x80000000, v130, vcc_lo
	v_cmp_gt_i32_e32 vcc_lo, s31, v128
	v_add_nc_u32_e32 v165, 8, v130
	v_add_nc_u32_e32 v164, 4, v130
	v_or_b32_e32 v166, s51, v146
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	v_cndmask_b32_e32 v128, 0x80000000, v164, vcc_lo
	v_cmp_gt_i32_e32 vcc_lo, s31, v129
	v_dual_cndmask_b32 v129, 0x80000000, v165 :: v_dual_add_nc_u32 v164, 12, v130
	v_cmp_gt_i32_e32 vcc_lo, s31, v131
	v_dual_cndmask_b32 v131, 0x80000000, v164 :: v_dual_add_nc_u32 v168, 24, v130
	v_add_nc_u32_e32 v165, 16, v130
	v_cmp_gt_i32_e32 vcc_lo, s31, v132
	v_add_nc_u32_e32 v130, 28, v130
	s_delay_alu instid0(VALU_DEP_3)
	v_cndmask_b32_e32 v132, 0x80000000, v165, vcc_lo
	v_cmp_gt_i32_e32 vcc_lo, s31, v143
	v_cndmask_b32_e32 v143, 0x80000000, v167, vcc_lo
	v_cmp_gt_i32_e32 vcc_lo, s31, v144
	v_cndmask_b32_e32 v144, 0x80000000, v168, vcc_lo
	v_cmp_gt_i32_e32 vcc_lo, s31, v166
	v_cndmask_b32_e32 v130, 0x80000000, v130, vcc_lo
	s_clause 0x7
	buffer_load_u16 v242, v127, s[72:75], 0 offen
	buffer_load_u16 v251, v128, s[72:75], 0 offen
	buffer_load_u16 v248, v129, s[72:75], 0 offen
	buffer_load_u16 v247, v131, s[72:75], 0 offen
	buffer_load_u16 v246, v132, s[72:75], 0 offen
	buffer_load_u16 v245, v143, s[72:75], 0 offen
	buffer_load_u16 v244, v144, s[72:75], 0 offen
	buffer_load_u16 v243, v130, s[72:75], 0 offen
	.loc	1 240 13 is_stmt 1              ; attention_backward.py:240:13
	s_and_not1_b32 vcc_lo, exec_lo, s33
	s_cbranch_vccnz .LBB0_6
; %bb.10:                               ;   in Loop: Header=BB0_7 Depth=1
	.loc	1 241 26                        ; attention_backward.py:241:26
	scratch_load_b32 v127, off, off         ; 4-byte Folded Reload
	.loc	1 242 26                        ; attention_backward.py:242:26
	v_cmp_le_i32_e64 s27, v249, v133
	v_cmp_le_i32_e64 s28, v249, v255
	v_cmp_le_i32_e64 s29, v249, v142
	.loc	1 241 26                        ; attention_backward.py:241:26
	s_waitcnt vmcnt(0)
	v_cmp_ge_i32_e32 vcc_lo, v249, v127
	scratch_load_b32 v127, off, off offset:4 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_cmp_ge_i32_e64 s15, v249, v127
	scratch_load_b32 v127, off, off offset:8 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_cmp_ge_i32_e64 s16, v249, v127
	scratch_load_b32 v127, off, off offset:12 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_cmp_ge_i32_e64 s17, v249, v127
	scratch_load_b32 v127, off, off offset:16 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_cmp_ge_i32_e64 s18, v249, v127
	scratch_load_b32 v127, off, off offset:20 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_cmp_ge_i32_e64 s19, v249, v127
	scratch_load_b32 v127, off, off offset:24 ; 4-byte Folded Reload
	.loc	1 242 17                        ; attention_backward.py:242:17
	s_and_b32 s19, s19, s27
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_4) | instid1(SALU_CYCLE_1)
	s_and_b32 s19, s19, s80
	.loc	1 241 26                        ; attention_backward.py:241:26
	s_waitcnt vmcnt(0)
	v_cmp_ge_i32_e64 s20, v249, v127
	scratch_load_b32 v127, off, off offset:28 ; 4-byte Folded Reload
	.loc	1 242 17                        ; attention_backward.py:242:17
	s_and_b32 s20, s20, s28
	s_and_b32 s20, s20, s78
	.loc	1 241 26                        ; attention_backward.py:241:26
	s_waitcnt vmcnt(0)
	v_cmp_ge_i32_e64 s21, v249, v127
	.loc	1 242 26                        ; attention_backward.py:242:26
	scratch_load_b32 v127, off, off offset:32 ; 4-byte Folded Reload
	.loc	1 242 17 is_stmt 0              ; attention_backward.py:242:17
	s_and_b32 s21, s21, s29
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_4) | instid1(SALU_CYCLE_1)
	s_and_b32 s21, s21, s58
	.loc	1 242 26                        ; attention_backward.py:242:26
	s_waitcnt vmcnt(0)
	v_cmp_le_i32_e64 s22, v249, v127
	scratch_load_b32 v127, off, off offset:36 ; 4-byte Folded Reload
	.loc	1 242 17                        ; attention_backward.py:242:17
	s_and_b32 s22, vcc_lo, s22
	s_and_b32 s22, s22, s81
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_b32 s22, s22, exec_lo
	.loc	1 242 26                        ; attention_backward.py:242:26
	s_waitcnt vmcnt(0)
	v_cmp_le_i32_e64 s23, v249, v127
	scratch_load_b32 v127, off, off offset:40 ; 4-byte Folded Reload
	.loc	1 242 17                        ; attention_backward.py:242:17
	s_and_b32 s15, s15, s23
	s_and_not1_b32 s23, s81, exec_lo
	s_and_b32 s15, s15, s79
	s_or_b32 s81, s23, s22
	s_and_b32 s15, s15, exec_lo
	s_and_not1_b32 s22, s53, exec_lo
	.loc	1 242 26                        ; attention_backward.py:242:26
	s_waitcnt vmcnt(0)
	v_cmp_le_i32_e64 s24, v249, v127
	scratch_load_b32 v127, off, off offset:44 ; 4-byte Folded Reload
	.loc	1 242 17                        ; attention_backward.py:242:17
	s_and_b32 s16, s16, s24
	s_and_not1_b32 s24, s79, exec_lo
	s_and_b32 s16, s16, s59
	s_or_b32 s79, s24, s15
	s_and_not1_b32 s15, s59, exec_lo
	s_and_b32 s16, s16, exec_lo
	s_delay_alu instid0(SALU_CYCLE_1)
	s_or_b32 s59, s15, s16
	s_and_not1_b32 s15, s82, exec_lo
	.loc	1 242 26                        ; attention_backward.py:242:26
	s_waitcnt vmcnt(0)
	v_cmp_le_i32_e64 s25, v249, v127
	scratch_load_b32 v127, off, off offset:48 ; 4-byte Folded Reload
	.loc	1 242 17                        ; attention_backward.py:242:17
	s_and_b32 s17, s17, s25
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_and_b32 s17, s17, s53
	s_and_b32 s17, s17, exec_lo
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_4) | instid1(SALU_CYCLE_1)
	s_or_b32 s53, s22, s17
	s_and_not1_b32 s17, s80, exec_lo
	.loc	1 242 26                        ; attention_backward.py:242:26
	s_waitcnt vmcnt(0)
	v_cmp_le_i32_e64 s26, v249, v127
	.loc	1 242 17                        ; attention_backward.py:242:17
	s_and_b32 s18, s18, s26
	s_and_b32 s18, s18, s82
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_b32 s16, s18, exec_lo
	s_and_b32 s18, s19, exec_lo
	s_or_b32 s82, s15, s16
	s_or_b32 s80, s17, s18
	s_and_not1_b32 s15, s78, exec_lo
	s_and_b32 s16, s20, exec_lo
	s_and_not1_b32 s17, s58, exec_lo
	s_and_b32 s18, s21, exec_lo
	s_or_b32 s78, s15, s16
	s_or_b32 s58, s17, s18
	s_branch .LBB0_6
.LBB0_11:
	.loc	1 0 17                          ; attention_backward.py:0:17
	v_dual_mov_b32 v249, 0xff800000 :: v_dual_mov_b32 v248, 0
	v_dual_mov_b32 v246, 0 :: v_dual_mov_b32 v3, 0
	v_dual_mov_b32 v244, 0 :: v_dual_mov_b32 v9, 0
	v_dual_mov_b32 v7, 0 :: v_dual_mov_b32 v2, 0
	v_dual_mov_b32 v5, 0 :: v_dual_mov_b32 v242, 0xff800000
	v_dual_mov_b32 v247, 0xff800000 :: v_dual_mov_b32 v8, 0xff800000
	v_dual_mov_b32 v245, 0xff800000 :: v_dual_mov_b32 v6, 0xff800000
	v_dual_mov_b32 v243, 0xff800000 :: v_dual_mov_b32 v4, 0xff800000
.LBB0_12:                               ; %Flow298
	s_load_b32 s53, s[0:1], 0x74
	.loc	1 124 21 is_stmt 1              ; attention_backward.py:124:21
	v_or_b32_e32 v1, s46, v82
	.loc	1 264 43                        ; attention_backward.py:264:43
	v_cmp_gt_f32_e64 s0, 0x800000, v2
	v_cmp_gt_f32_e64 s1, 0x800000, v5
.Ltmp319:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_dual_add_f32 v74, v54, v188 :: v_dual_add_f32 v75, v55, v189
	s_delay_alu instid0(VALU_DEP_4)
.Ltmp320:
	.loc	1 128 21                        ; attention_backward.py:128:21
	v_cmp_gt_i32_e32 vcc_lo, s30, v1
.Ltmp321:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_dual_add_f32 v76, v56, v190 :: v_dual_add_f32 v77, v57, v192
.Ltmp322:
	.loc	1 264 43                        ; attention_backward.py:264:43
	v_cndmask_b32_e64 v1, 0, 0x42000000, s0
	v_cmp_gt_f32_e64 s15, 0x800000, v7
	v_cndmask_b32_e64 v54, 0, 32, s0
	v_cndmask_b32_e64 v55, 0, 0x42000000, s1
	v_cndmask_b32_e64 v56, 0, 32, s1
	v_cmp_gt_f32_e64 s0, 0x800000, v9
	v_cmp_gt_f32_e64 s1, 0x800000, v3
.Ltmp323:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_dual_add_f32 v62, v62, v125 :: v_dual_add_f32 v63, v63, v180
.Ltmp324:
	.loc	1 264 43                        ; attention_backward.py:264:43
	v_cndmask_b32_e64 v57, 0, 0x42000000, s15
	v_cndmask_b32_e64 v78, 0, 32, s15
.Ltmp325:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_dual_add_f32 v16, v16, v123 :: v_dual_add_f32 v17, v17, v184
.Ltmp326:
	.loc	1 264 43                        ; attention_backward.py:264:43
	v_ldexp_f32 v54, v2, v54
	v_cndmask_b32_e64 v123, 0, 32, s0
	v_cndmask_b32_e64 v125, 0, 32, s1
	v_cmp_gt_f32_e64 s15, 0x800000, v248
	v_ldexp_f32 v56, v5, v56
	v_ldexp_f32 v78, v7, v78
	v_log_f32_e32 v54, v54
	v_ldexp_f32 v123, v9, v123
	v_cndmask_b32_e64 v132, 0, 32, s15
	v_ldexp_f32 v125, v3, v125
	v_log_f32_e32 v56, v56
	v_log_f32_e32 v78, v78
	v_log_f32_e32 v123, v123
	v_ldexp_f32 v132, v248, v132
	v_log_f32_e32 v125, v125
	v_cndmask_b32_e64 v79, 0, 0x42000000, s0
	v_cmp_gt_f32_e64 s0, 0x800000, v244
.Ltmp327:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_dual_add_f32 v58, v58, v124 :: v_dual_add_f32 v59, v59, v121
.Ltmp328:
	.loc	1 264 43                        ; attention_backward.py:264:43
	v_cndmask_b32_e64 v124, 0, 0x42000000, s1
	v_log_f32_e32 v132, v132
.Ltmp329:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_dual_add_f32 v60, v60, v122 :: v_dual_sub_f32 v1, v54, v1
.Ltmp330:
	.loc	1 264 43                        ; attention_backward.py:264:43
	v_cmp_gt_f32_e64 s1, 0x800000, v246
	v_cndmask_b32_e64 v128, 0, 32, s0
	v_cndmask_b32_e64 v127, 0, 0x42000000, s0
	v_cndmask_b32_e64 v131, 0, 0x42000000, s15
	v_dual_sub_f32 v54, v56, v55 :: v_dual_sub_f32 v55, v78, v57
	v_dual_sub_f32 v56, v123, v79 :: v_dual_sub_f32 v57, v125, v124
	.loc	1 264 37 is_stmt 0              ; attention_backward.py:264:37
	v_add_f32_e32 v1, v4, v1
	.loc	1 264 26                        ; attention_backward.py:264:26
	v_cmp_lt_f32_e64 s0, 0, v2
	.loc	1 264 43                        ; attention_backward.py:264:43
	v_cndmask_b32_e64 v130, 0, 32, s1
	v_ldexp_f32 v128, v244, v128
	v_dual_sub_f32 v121, v132, v131 :: v_dual_add_f32 v6, v6, v54
	.loc	1 264 37                        ; attention_backward.py:264:37
	v_add_f32_e32 v54, v242, v56
	.loc	1 264 17                        ; attention_backward.py:264:17
	v_cndmask_b32_e64 v4, 0, v1, s0
	.loc	1 264 26                        ; attention_backward.py:264:26
	v_cmp_lt_f32_e64 s0, 0, v5
	.loc	1 264 43                        ; attention_backward.py:264:43
	v_ldexp_f32 v130, v246, v130
	v_log_f32_e32 v128, v128
	.loc	1 264 37                        ; attention_backward.py:264:37
	v_dual_add_f32 v8, v8, v55 :: v_dual_add_f32 v55, v243, v57
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 264 17                        ; attention_backward.py:264:17
	v_cndmask_b32_e64 v5, 0, v6, s0
	.loc	1 264 26                        ; attention_backward.py:264:26
	v_cmp_lt_f32_e64 s0, 0, v7
	.loc	1 264 43                        ; attention_backward.py:264:43
	v_log_f32_e32 v130, v130
	v_cndmask_b32_e64 v129, 0, 0x42000000, s1
	.loc	1 264 17                        ; attention_backward.py:264:17
	v_lshlrev_b32_e32 v1, 5, v0
	v_lshl_add_u32 v2, v196, 1, 0
	v_cndmask_b32_e64 v6, 0, v8, s0
	.loc	1 264 26                        ; attention_backward.py:264:26
	v_cmp_lt_f32_e64 s0, 0, v9
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 264 43                        ; attention_backward.py:264:43
	v_dual_sub_f32 v78, v128, v127 :: v_dual_and_b32 v1, 0x60, v1
.Ltmp331:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_dual_add_f32 v61, v61, v81 :: v_dual_and_b32 v8, 28, v0
.Ltmp332:
	.loc	1 264 17                        ; attention_backward.py:264:17
	v_cndmask_b32_e64 v7, 0, v54, s0
	.loc	1 264 26 is_stmt 0              ; attention_backward.py:264:26
	v_cmp_lt_f32_e64 s0, 0, v3
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	.loc	1 264 43                        ; attention_backward.py:264:43
	v_dual_sub_f32 v79, v130, v129 :: v_dual_add_f32 v56, v245, v78
	.loc	1 264 37                        ; attention_backward.py:264:37
	v_add_f32_e32 v78, v249, v121
	.loc	1 264 17                        ; attention_backward.py:264:17
	v_add_nc_u32_e32 v1, 0, v1
	v_cndmask_b32_e64 v54, 0, v55, s0
	.loc	1 264 26                        ; attention_backward.py:264:26
	v_cmp_lt_f32_e64 s0, 0, v244
	.loc	1 264 37                        ; attention_backward.py:264:37
	v_add_f32_e32 v57, v247, v79
	.loc	1 264 17                        ; attention_backward.py:264:17
	s_waitcnt lgkmcnt(0)
	v_add3_u32 v3, v1, v80, v84
	s_barrier
	v_cndmask_b32_e64 v55, 0, v56, s0
	.loc	1 264 26                        ; attention_backward.py:264:26
	v_cmp_lt_f32_e64 s0, 0, v246
	.loc	1 266 9 is_stmt 1               ; attention_backward.py:266:9
	v_add_lshl_u32 v9, s47, v82, 2
	s_and_b32 vcc_lo, s14, vcc_lo
	s_mov_b32 s51, 0x31027000
	s_mov_b32 s50, 0x7ffffffe
	.loc	1 264 17                        ; attention_backward.py:264:17
	v_cndmask_b32_e64 v56, 0, v57, s0
	.loc	1 264 26 is_stmt 0              ; attention_backward.py:264:26
	v_cmp_lt_f32_e64 s0, 0, v248
	.loc	1 266 9 is_stmt 1               ; attention_backward.py:266:9
	s_and_b32 s17, s61, 0xffff
	s_mov_b32 s16, s60
	s_mov_b32 s18, s50
	s_mov_b32 s19, s51
	.loc	1 264 17                        ; attention_backward.py:264:17
	v_cndmask_b32_e64 v57, 0, v78, s0
	ds_store_b128 v2, v[4:7]
	ds_store_b128 v2, v[54:57] offset:16
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b32 v180, v3
	.loc	1 266 9                         ; attention_backward.py:266:9
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v2, v[4:7]
	ds_store_b128 v2, v[54:57] offset:16
.Ltmp333:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_e32 v4, v12, v100
	v_dual_add_f32 v6, v50, v102 :: v_dual_add_nc_u32 v1, v1, v8
.Ltmp334:
	.loc	1 266 9                         ; attention_backward.py:266:9
	s_waitcnt lgkmcnt(0)
	s_barrier
.Ltmp335:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_e32 v2, v10, v98
.Ltmp336:
	.loc	1 266 9                         ; attention_backward.py:266:9
	ds_load_b32 v1, v1
.Ltmp337:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_dual_add_f32 v7, v51, v106 :: v_dual_cndmask_b32 v10, 0x80000000, v9
.Ltmp338:
	.loc	1 267 9                         ; attention_backward.py:267:9
	v_dual_mov_b32 v57, 0 :: v_dual_add_f32 v64, v64, v181
.Ltmp339:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_e32 v65, v65, v182
	v_dual_add_f32 v3, v11, v99 :: v_dual_add_f32 v8, v52, v120
	v_add_f32_e32 v5, v13, v101
	s_delay_alu instid0(VALU_DEP_4)
	v_mov_b32_e32 v56, v57
	v_dual_add_f32 v70, v70, v183 :: v_dual_add_f32 v71, v71, v185
	v_dual_add_f32 v72, v72, v186 :: v_dual_add_f32 v73, v73, v187
	v_dual_add_f32 v66, v66, v193 :: v_dual_add_f32 v67, v67, v194
	v_dual_add_f32 v68, v68, v195 :: v_dual_add_f32 v69, v69, v197
	v_dual_add_f32 v9, v53, v97 :: v_dual_add_f32 v14, v14, v198
	v_add_f32_e32 v15, v15, v191
.Ltmp340:
	.loc	1 266 9                         ; attention_backward.py:266:9
	s_waitcnt lgkmcnt(0)
	buffer_store_b32 v1, v10, s[16:19], 0 offen
	.loc	1 267 9                         ; attention_backward.py:267:9
	v_lshlrev_b32_e32 v1, 2, v82
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v57, v[62:65]
	ds_store_b128 v57, v[70:73] offset:16
	ds_store_b128 v57, v[74:77] offset:32
	ds_store_b128 v57, v[66:69] offset:48
	ds_store_b128 v57, v[14:17] offset:64
	ds_store_b128 v57, v[58:61] offset:80
	v_dual_mov_b32 v54, v57 :: v_dual_add_nc_u32 v11, 0, v1
	ds_store_b128 v57, v[2:5] offset:96
	ds_store_b128 v57, v[6:9] offset:112
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b32 v11, v11
	s_and_b32 s17, s63, 0xffff
	s_mov_b32 s16, s62
	v_mov_b32_e32 v55, v57
	v_mov_b32_e32 v53, v57
	v_mov_b32_e32 v52, v57
	v_mov_b32_e32 v51, v57
	v_mov_b32_e32 v50, v57
	v_mov_b32_e32 v81, v57
	v_mov_b32_e32 v80, v57
	v_mov_b32_e32 v79, v57
	v_mov_b32_e32 v78, v57
	.loc	1 270 9                         ; attention_backward.py:270:9
	s_and_not1_b32 vcc_lo, exec_lo, s54
	.loc	1 267 9                         ; attention_backward.py:267:9
	s_waitcnt lgkmcnt(0)
	buffer_store_b32 v11, v10, s[16:19], 0 offen
	.loc	1 396 43                        ; attention_backward.py:396:43
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v57, v[62:65]
	ds_store_b128 v57, v[70:73] offset:16
	ds_store_b128 v57, v[74:77] offset:32
	ds_store_b128 v57, v[66:69] offset:48
	ds_store_b128 v57, v[14:17] offset:64
	ds_store_b128 v57, v[58:61] offset:80
	v_mov_b32_e32 v65, v57
	v_mov_b32_e32 v64, v57
	v_mov_b32_e32 v63, v57
	v_mov_b32_e32 v62, v57
	v_mov_b32_e32 v61, v57
	v_mov_b32_e32 v60, v57
	v_mov_b32_e32 v59, v57
	v_mov_b32_e32 v58, v57
	v_mov_b32_e32 v73, v57
	v_mov_b32_e32 v72, v57
	v_mov_b32_e32 v71, v57
	v_mov_b32_e32 v70, v57
	v_mov_b32_e32 v69, v57
	v_mov_b32_e32 v68, v57
	v_mov_b32_e32 v67, v57
	v_mov_b32_e32 v66, v57
	v_mov_b32_e32 v77, v57
	v_mov_b32_e32 v76, v57
	v_mov_b32_e32 v75, v57
	v_mov_b32_e32 v74, v57
	ds_store_b128 v57, v[2:5] offset:96
	ds_store_b128 v57, v[6:9] offset:112
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_cbranch_vccnz .LBB0_19
; %bb.13:                               ; %.lr.ph81
	.loc	1 0 43 is_stmt 0                ; attention_backward.py:0:43
	v_dual_mov_b32 v65, 0x7632 :: v_dual_lshlrev_b32 v2, 1, v82
	v_dual_mov_b32 v64, 0x5410 :: v_dual_lshlrev_b32 v3, 2, v141
	.loc	1 270 9 is_stmt 1               ; attention_backward.py:270:9
	v_mad_u64_u32 v[120:121], null, s76, v141, v[83:84]
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 168 40                        ; attention_backward.py:168:40
	v_or_b32_e32 v4, 1, v2
	.loc	1 310 21                        ; attention_backward.py:310:21
	v_cmp_gt_i32_e64 s0, s53, v2
	v_or_b32_e32 v189, v85, v3
	v_cmp_eq_u32_e32 vcc_lo, 0, v88
	v_lshlrev_b32_e32 v2, 1, v0
	.loc	1 396 43                        ; attention_backward.py:396:43
	v_add3_u32 v5, 0, v3, v87
	.loc	1 270 9                         ; attention_backward.py:270:9
	v_mad_u64_u32 v[121:122], null, s55, 12, v[120:121]
	.loc	1 310 21                        ; attention_backward.py:310:21
	v_cmp_gt_i32_e64 s1, s53, v4
	v_cndmask_b32_e64 v4, 0x104, 0, s14
	v_dual_mov_b32 v164, 0 :: v_dual_and_b32 v7, 52, v96
	v_dual_cndmask_b32 v64, 0x1054, v64 :: v_dual_add_nc_u32 v193, 0, v89
	v_dual_cndmask_b32 v65, 0x3276, v65 :: v_dual_and_b32 v2, 60, v2
	v_xor_b32_e32 v75, 40, v189
	.loc	1 396 43                        ; attention_backward.py:396:43
	ds_load_b32 v181, v5
	v_and_or_b32 v11, v0, 2, v95
	v_lshl_or_b32 v7, v84, 5, v7
	v_lshl_or_b32 v64, v64, 8, v64
	v_lshl_or_b32 v65, v65, 8, v65
	v_xor_b32_e32 v77, 48, v189
	v_add_nc_u32_e32 v236, 0, v75
	v_mov_b32_e32 v75, v164
	v_xor_b32_e32 v185, v4, v2
	v_lshlrev_b32_e32 v2, 1, v104
	v_lshl_or_b32 v4, v104, 7, v105
	.loc	1 270 9                         ; attention_backward.py:270:9
	v_mad_u64_u32 v[122:123], null, s55, 20, v[120:121]
	v_mad_u64_u32 v[123:124], null, s55, 24, v[120:121]
	v_mad_u64_u32 v[124:125], null, s55, 28, v[120:121]
	v_or_b32_e32 v5, v185, v86
	v_or3_b32 v186, v94, v93, v92
	v_or3_b32 v187, v11, v7, v126
	v_or_b32_e32 v188, v92, v1
	v_xor_b32_e32 v74, 36, v189
	v_and_b32_e32 v64, 0x540054, v64
	v_and_b32_e32 v65, 0x760076, v65
	v_xor_b32_e32 v79, 56, v189
	v_add_nc_u32_e32 v238, 0, v77
	v_mov_b32_e32 v77, v164
	v_or3_b32 v125, v4, v103, v2
	v_xor_b32_e32 v2, 0x208, v5
	v_xor_b32_e32 v4, 0x410, v5
	v_xor_b32_e32 v5, 0x618, v5
	v_xor_b32_e32 v7, 0x90, v186
	v_xor_b32_e32 v6, 4, v125
	v_xor_b32_e32 v8, 8, v125
	v_xor_b32_e32 v9, 12, v125
	v_xor_b32_e32 v10, 16, v125
	v_xor_b32_e32 v12, 20, v125
	v_xor_b32_e32 v13, 24, v125
	v_xor_b32_e32 v14, 28, v125
	v_xor_b32_e32 v11, 0x120, v186
	v_xor_b32_e32 v15, 0x1b0, v186
	v_xor_b32_e32 v1, 16, v187
	v_xor_b32_e32 v16, 32, v187
	v_xor_b32_e32 v17, 48, v187
	v_xor_b32_e32 v50, 0x84, v188
	v_xor_b32_e32 v51, 0x108, v188
	v_xor_b32_e32 v52, 0x18c, v188
	v_xor_b32_e32 v53, 0x210, v188
	v_xor_b32_e32 v54, 0x294, v188
	v_xor_b32_e32 v55, 0x318, v188
	v_xor_b32_e32 v56, 0x39c, v188
	v_xor_b32_e32 v57, 0x420, v188
	v_xor_b32_e32 v58, 0x4a4, v188
	v_xor_b32_e32 v59, 0x528, v188
	v_xor_b32_e32 v60, 0x5ac, v188
	v_xor_b32_e32 v61, 0x630, v188
	v_xor_b32_e32 v62, 0x6b4, v188
	v_xor_b32_e32 v63, 0x738, v188
	v_xor_b32_e32 v3, 0x7bc, v188
	v_xor_b32_e32 v66, 4, v189
	v_xor_b32_e32 v67, 8, v189
	v_xor_b32_e32 v68, 12, v189
	v_xor_b32_e32 v69, 16, v189
	v_xor_b32_e32 v70, 20, v189
	v_xor_b32_e32 v71, 24, v189
	v_xor_b32_e32 v72, 28, v189
	v_xor_b32_e32 v73, 32, v189
	v_xor_b32_e32 v76, 44, v189
	v_xor_b32_e32 v78, 52, v189
	v_xor_b32_e32 v80, 60, v189
	v_add_nc_u32_e32 v235, 0, v74
	v_add_nc_u32_e32 v240, 0, v79
	v_mov_b32_e32 v74, 0
	v_lshl_or_b32 v65, v65, 4, v65
	v_mov_b32_e32 v79, v164
	v_lshl_or_b32 v64, v64, 4, v64
	v_lshl_add_u32 v182, s55, 2, v120
	v_lshl_add_u32 v183, s55, 3, v120
	v_lshl_add_u32 v184, s55, 4, v120
	v_and_b32_e32 v191, 0x7060706, v65
	v_dual_mov_b32 v81, v164 :: v_dual_and_b32 v190, 0x5040504, v64
	v_lshl_add_u32 v192, v141, 1, 0
	v_add_nc_u32_e32 v194, 0, v90
	v_add_nc_u32_e32 v195, 0, v91
	v_add_nc_u32_e32 v196, 0, v2
	v_add_nc_u32_e32 v197, 0, v4
	v_add_nc_u32_e32 v198, 0, v5
	v_add_nc_u32_e32 v199, 0, v6
	v_add_nc_u32_e32 v200, 0, v8
	v_add_nc_u32_e32 v201, 0, v9
	v_add_nc_u32_e32 v202, 0, v10
	v_add_nc_u32_e32 v203, 0, v12
	v_add_nc_u32_e32 v204, 0, v13
	v_add_nc_u32_e32 v205, 0, v14
	v_add_nc_u32_e32 v206, 0, v7
	v_add_nc_u32_e32 v207, 0, v11
	v_dual_mov_b32 v65, v164 :: v_dual_add_nc_u32 v208, 0, v15
	v_add_nc_u32_e32 v209, 0, v1
	v_add_nc_u32_e32 v210, 0, v16
	v_add_nc_u32_e32 v211, 0, v17
	v_add_nc_u32_e32 v212, 0, v50
	v_dual_mov_b32 v64, v164 :: v_dual_add_nc_u32 v213, 0, v51
	v_add_nc_u32_e32 v214, 0, v52
	v_dual_mov_b32 v50, 0 :: v_dual_add_nc_u32 v215, 0, v53
	v_add_nc_u32_e32 v216, 0, v54
	v_dual_mov_b32 v52, v164 :: v_dual_add_nc_u32 v217, 0, v55
	v_add_nc_u32_e32 v218, 0, v56
	v_dual_mov_b32 v54, v164 :: v_dual_add_nc_u32 v219, 0, v57
	v_add_nc_u32_e32 v220, 0, v58
	v_dual_mov_b32 v56, v164 :: v_dual_add_nc_u32 v221, 0, v59
	v_add_nc_u32_e32 v222, 0, v60
	v_add_nc_u32_e32 v223, 0, v61
	v_add_nc_u32_e32 v224, 0, v62
	v_add_nc_u32_e32 v225, 0, v63
	v_add_nc_u32_e32 v226, 0, v3
	v_add_nc_u32_e32 v227, 0, v66
	v_add_nc_u32_e32 v228, 0, v67
	v_add_nc_u32_e32 v229, 0, v68
	v_add_nc_u32_e32 v230, 0, v69
	v_add_nc_u32_e32 v231, 0, v70
	v_add_nc_u32_e32 v232, 0, v71
	v_add_nc_u32_e32 v233, 0, v72
	v_add_nc_u32_e32 v234, 0, v73
	v_add_nc_u32_e32 v237, 0, v76
	v_add_nc_u32_e32 v239, 0, v78
	v_dual_mov_b32 v76, v164 :: v_dual_add_nc_u32 v241, 0, v80
	v_mov_b32_e32 v78, v164
	v_mov_b32_e32 v80, v164
	v_dual_mov_b32 v66, 0 :: v_dual_mov_b32 v67, v164
	v_mov_b32_e32 v68, v164
	v_mov_b32_e32 v69, v164
	v_mov_b32_e32 v70, v164
	v_mov_b32_e32 v71, v164
	v_mov_b32_e32 v72, v164
	v_dual_mov_b32 v73, v164 :: v_dual_mov_b32 v58, 0
	v_mov_b32_e32 v59, v164
	v_mov_b32_e32 v60, v164
	v_mov_b32_e32 v61, v164
	v_mov_b32_e32 v62, v164
	v_mov_b32_e32 v63, v164
	v_mov_b32_e32 v51, v164
	v_mov_b32_e32 v53, v164
	v_mov_b32_e32 v55, v164
	v_mov_b32_e32 v57, v164
	s_and_b32 s41, s41, 0xffff
	s_and_b32 s45, s45, 0xffff
	s_add_i32 s29, s42, s43
	s_and_b32 s49, s49, 0xffff
	s_and_b32 s57, s57, 0xffff
	s_mov_b32 s42, s50
	s_mov_b32 s43, s51
	s_mov_b32 s30, 0x76543210
	s_mov_b32 s46, s50
	s_mov_b32 s47, s51
	s_branch .LBB0_15
.LBB0_14:                               ;   in Loop: Header=BB0_15 Depth=1
	.loc	1 0 0 is_stmt 0                 ; attention_backward.py:0
	v_bfe_i32 v15, v15, 0, 8
	v_bfe_i32 v14, v14, 0, 8
	v_bfe_i32 v13, v13, 0, 8
	v_bfe_i32 v9, v9, 0, 8
	v_bfe_i32 v12, v12, 0, 8
	v_mov_b16_e32 v100.l, v15.l
	v_mov_b16_e32 v101.l, v14.l
	v_mov_b16_e32 v102.l, v13.l
	.loc	1 290 33 is_stmt 1              ; attention_backward.py:290:33
	s_waitcnt vmcnt(7)
	v_mov_b16_e32 v9.h, v98.l
	.loc	1 0 0 is_stmt 0                 ; attention_backward.py:0
	v_mov_b16_e32 v103.l, v12.l
	.loc	1 305 30 is_stmt 1              ; attention_backward.py:305:30
	v_lshrrev_b16 v84.h, 4, v100.l
	.loc	1 0 0 is_stmt 0                 ; attention_backward.py:0
	v_bfe_i32 v11, v11, 0, 8
	v_bfe_i32 v10, v10, 0, 8
	v_mov_b16_e32 v106.l, v9.l
	.loc	1 299 21 is_stmt 1              ; attention_backward.py:299:21
	v_cvt_f32_i32_e32 v1, v1
	.loc	1 305 30                        ; attention_backward.py:305:30
	v_and_b16 v98.l, v84.h, 15
	v_lshrrev_b16 v84.h, 4, v101.l
	.loc	1 0 0 is_stmt 0                 ; attention_backward.py:0
	v_mov_b16_e32 v104.l, v11.l
	v_mov_b16_e32 v105.l, v10.l
	.loc	1 299 21 is_stmt 1              ; attention_backward.py:299:21
	v_cvt_f32_i32_e32 v2, v2
	v_cvt_f32_i32_e32 v3, v3
	.loc	1 305 30                        ; attention_backward.py:305:30
	v_and_b16 v129.l, v84.h, 15
	v_lshrrev_b16 v84.h, 4, v102.l
	.loc	1 299 21                        ; attention_backward.py:299:21
	v_cvt_f32_i32_e32 v6, v6
	.loc	1 0 0 is_stmt 0                 ; attention_backward.py:0
	v_bfe_i32 v16, v16, 0, 8
	.loc	1 305 28 is_stmt 1              ; attention_backward.py:305:28
	v_mov_b16_e32 v127.l, 0
	.loc	1 290 33                        ; attention_backward.py:290:33
	v_mov_b16_e32 v85.h, v84.l
	.loc	1 305 30                        ; attention_backward.py:305:30
	v_and_b16 v130.l, v84.h, 15
	v_lshrrev_b16 v84.h, 4, v103.l
	.loc	1 290 33                        ; attention_backward.py:290:33
	v_mov_b16_e64 v128.h, v83.l
	s_waitcnt vmcnt(4)
	v_mov_b16_e32 v12.h, v95.l
	s_waitcnt vmcnt(3)
	v_mov_b16_e32 v13.h, v94.l
	s_waitcnt vmcnt(1)
	v_mov_b16_e32 v15.h, v92.l
	.loc	1 305 30                        ; attention_backward.py:305:30
	v_and_b16 v131.l, v84.h, 15
	v_lshrrev_b16 v84.h, 4, v104.l
	.loc	1 290 33                        ; attention_backward.py:290:33
	s_waitcnt vmcnt(0)
	v_mov_b16_e32 v16.h, v91.l
	.loc	1 299 21                        ; attention_backward.py:299:21
	v_cvt_f32_i32_e32 v4, v4
	v_cvt_f32_i32_e32 v7, v7
	v_dual_mul_f32 v1, v162, v1 :: v_dual_and_b32 v94, 15, v103
	.loc	1 305 30                        ; attention_backward.py:305:30
	v_and_b16 v132.l, v84.h, 15
	v_lshrrev_b16 v84.h, 4, v105.l
	.loc	1 299 21                        ; attention_backward.py:299:21
	v_dual_mul_f32 v2, v162, v2 :: v_dual_and_b32 v91, 15, v100
	v_dual_mul_f32 v3, v162, v3 :: v_dual_and_b32 v92, 15, v101
	v_dual_mul_f32 v6, v162, v6 :: v_dual_and_b32 v95, 15, v104
	.loc	1 304 28                        ; attention_backward.py:304:28
	v_and_b16 v17.l, v100.l, 15
	v_and_b16 v17.h, v101.l, 15
	v_and_b16 v82.l, v102.l, 15
	v_and_b16 v82.h, v103.l, 15
	v_and_b16 v83.l, v104.l, 15
	v_and_b16 v84.l, v106.l, 15
	.loc	1 305 30                        ; attention_backward.py:305:30
	v_and_b16 v143.l, v84.h, 15
	v_lshrrev_b16 v84.h, 4, v106.l
	.loc	1 290 33                        ; attention_backward.py:290:33
	v_mov_b16_e32 v11.h, v96.l
	v_mov_b16_e32 v14.h, v93.l
	.loc	1 299 21                        ; attention_backward.py:299:21
	v_cvt_f32_i32_e32 v8, v8
	v_dual_mul_f32 v4, v162, v4 :: v_dual_and_b32 v93, 15, v102
	v_dual_mul_f32 v7, v162, v7 :: v_dual_and_b32 v96, 15, v105
	.loc	1 304 28                        ; attention_backward.py:304:28
	v_and_b16 v83.h, v105.l, 15
	.loc	1 305 30                        ; attention_backward.py:305:30
	v_and_b16 v144.l, v84.h, 15
	.loc	1 305 28 is_stmt 0              ; attention_backward.py:305:28
	v_mov_b16_e32 v98.h, v127.l
	v_mov_b16_e64 v129.h, v127.l
	.loc	1 306 36 is_stmt 1              ; attention_backward.py:306:36
	v_cmp_lt_u16_e32 vcc_lo, 7, v17.l
	v_cmp_lt_u16_e64 s14, 7, v17.h
	v_cmp_lt_u16_e64 s15, 7, v82.l
	v_cmp_lt_u16_e64 s16, 7, v82.h
	v_cmp_lt_u16_e64 s17, 7, v83.l
	v_cmp_lt_u16_e64 s19, 7, v84.l
	.loc	1 306 50 is_stmt 0              ; attention_backward.py:306:50
	v_or_b32_e32 v17, -16, v91
	v_or_b32_e32 v82, -16, v92
	v_or_b32_e32 v84, -16, v94
	v_or_b32_e32 v165, -16, v95
	.loc	1 290 33 is_stmt 1              ; attention_backward.py:290:33
	v_mov_b16_e32 v10.h, v97.l
	.loc	1 299 21                        ; attention_backward.py:299:21
	v_dual_mul_f32 v8, v162, v8 :: v_dual_and_b32 v97, 15, v106
	.loc	1 305 28                        ; attention_backward.py:305:28
	v_mov_b16_e64 v130.h, v127.l
	.loc	1 306 36                        ; attention_backward.py:306:36
	v_cmp_lt_u16_e64 s18, 7, v83.h
	.loc	1 306 50 is_stmt 0              ; attention_backward.py:306:50
	v_or_b32_e32 v83, -16, v93
	v_or_b32_e32 v166, -16, v96
	.loc	1 306 27                        ; attention_backward.py:306:27
	v_cndmask_b32_e64 v82, v92, v82, s14
	v_cndmask_b32_e64 v84, v94, v84, s16
	.loc	1 307 37 is_stmt 1              ; attention_backward.py:307:37
	v_cmp_gt_i16_e64 s14, 0, v101.l
	.loc	1 307 52 is_stmt 0              ; attention_backward.py:307:52
	v_or_b32_e32 v94, -16, v98
	.loc	1 306 27 is_stmt 1              ; attention_backward.py:306:27
	v_cndmask_b32_e32 v17, v91, v17, vcc_lo
	v_cndmask_b32_e64 v91, v95, v165, s17
	.loc	1 307 37                        ; attention_backward.py:307:37
	v_cmp_gt_i16_e32 vcc_lo, 0, v100.l
	.loc	1 307 52 is_stmt 0              ; attention_backward.py:307:52
	v_or_b32_e32 v95, -16, v129
	.loc	1 290 33 is_stmt 1              ; attention_backward.py:290:33
	v_mov_b16_e32 v127.h, v90.l
	v_mov_b16_e32 v90.l, v127.l
	v_mov_b16_e32 v90.h, v89.l
	.loc	1 305 28                        ; attention_backward.py:305:28
	v_mov_b16_e64 v131.h, v127.l
	.loc	1 306 50                        ; attention_backward.py:306:50
	v_or_b32_e32 v167, -16, v97
	.loc	1 306 27 is_stmt 0              ; attention_backward.py:306:27
	v_cndmask_b32_e64 v83, v93, v83, s15
	v_cndmask_b32_e64 v92, v96, v166, s18
	.loc	1 307 37 is_stmt 1              ; attention_backward.py:307:37
	v_cmp_gt_i16_e64 s15, 0, v102.l
	.loc	1 307 52 is_stmt 0              ; attention_backward.py:307:52
	v_or_b32_e32 v96, -16, v130
	.loc	1 307 28                        ; attention_backward.py:307:28
	v_cndmask_b32_e32 v94, v98, v94, vcc_lo
	v_cndmask_b32_e64 v95, v129, v95, s14
	.loc	1 311 21 is_stmt 1              ; attention_backward.py:311:21
	v_cvt_f32_i32_e32 v17, v17
	.loc	1 0 0 is_stmt 0                 ; attention_backward.py:0
	v_mov_b16_e32 v99.l, v16.l
	.loc	1 290 33 is_stmt 1              ; attention_backward.py:290:33
	v_mov_b16_e32 v89.l, v127.l
	v_mov_b16_e32 v89.h, v88.l
	.loc	1 305 28                        ; attention_backward.py:305:28
	v_mov_b16_e64 v132.h, v127.l
	.loc	1 306 27                        ; attention_backward.py:306:27
	v_cndmask_b32_e64 v93, v97, v167, s19
	.loc	1 307 37                        ; attention_backward.py:307:37
	v_cmp_gt_i16_e64 s16, 0, v103.l
	.loc	1 307 52 is_stmt 0              ; attention_backward.py:307:52
	v_or_b32_e32 v97, -16, v131
	.loc	1 307 28                        ; attention_backward.py:307:28
	v_cndmask_b32_e64 v96, v130, v96, s15
	.loc	1 311 21 is_stmt 1              ; attention_backward.py:311:21
	v_cvt_f32_i32_e32 v94, v94
	v_cvt_f32_i32_e32 v82, v82
	v_cvt_f32_i32_e32 v95, v95
	v_mul_f32_e32 v17, v17, v90
	.loc	1 290 33                        ; attention_backward.py:290:33
	v_mov_b16_e32 v88.l, v127.l
	v_mov_b16_e32 v88.h, v87.l
	.loc	1 299 21                        ; attention_backward.py:299:21
	v_cvt_f32_i32_e32 v5, v5
	.loc	1 307 37                        ; attention_backward.py:307:37
	v_cmp_gt_i16_e64 s17, 0, v104.l
	.loc	1 307 52 is_stmt 0              ; attention_backward.py:307:52
	v_or_b32_e32 v100, -16, v132
	.loc	1 307 28                        ; attention_backward.py:307:28
	v_cndmask_b32_e64 v97, v131, v97, s16
	.loc	1 311 21 is_stmt 1              ; attention_backward.py:311:21
	v_cvt_f32_i32_e32 v83, v83
	v_cvt_f32_i32_e32 v96, v96
	v_mul_f32_e32 v90, v94, v90
	v_mul_f32_e32 v82, v82, v89
	v_mul_f32_e32 v89, v95, v89
	.loc	1 309 31                        ; attention_backward.py:309:31
	v_cndmask_b32_e64 v95, 0, v17, s0
	.loc	1 305 30                        ; attention_backward.py:305:30
	v_lshrrev_b16 v17.l, 4, v99.l
	.loc	1 290 33                        ; attention_backward.py:290:33
	v_mov_b16_e32 v87.l, v127.l
	v_mov_b16_e32 v87.h, v86.l
	.loc	1 299 21                        ; attention_backward.py:299:21
	v_mul_f32_e32 v5, v162, v5
	.loc	1 307 28                        ; attention_backward.py:307:28
	v_cndmask_b32_e64 v98, v132, v100, s17
	.loc	1 311 21                        ; attention_backward.py:311:21
	v_cvt_f32_i32_e32 v84, v84
	v_cvt_f32_i32_e32 v97, v97
	v_mul_f32_e32 v83, v83, v88
	v_mul_f32_e32 v88, v96, v88
	.loc	1 305 30                        ; attention_backward.py:305:30
	v_and_b16 v96.l, v17.l, 15
	.loc	1 304 28                        ; attention_backward.py:304:28
	v_and_b16 v17.l, v99.l, 15
	.loc	1 305 28                        ; attention_backward.py:305:28
	v_mov_b16_e32 v96.h, v127.l
	.loc	1 290 33                        ; attention_backward.py:290:33
	v_mov_b16_e32 v86.l, v127.l
	v_mov_b16_e32 v86.h, v85.l
	.loc	1 311 21                        ; attention_backward.py:311:21
	v_cvt_f32_i32_e32 v91, v91
	v_cvt_f32_i32_e32 v98, v98
	v_mul_f32_e32 v84, v84, v87
	v_mul_f32_e32 v87, v97, v87
	.loc	1 304 27                        ; attention_backward.py:304:27
	v_and_b32_e32 v97, 15, v99
	.loc	1 307 37                        ; attention_backward.py:307:37
	v_cmp_gt_i16_e32 vcc_lo, 0, v99.l
	.loc	1 306 36                        ; attention_backward.py:306:36
	v_cmp_lt_u16_e64 s14, 7, v17.l
	.loc	1 307 52                        ; attention_backward.py:307:52
	v_or_b32_e32 v17, -16, v96
	.loc	1 290 33                        ; attention_backward.py:290:33
	v_mov_b16_e32 v85.l, v127.l
	.loc	1 311 21                        ; attention_backward.py:311:21
	v_cvt_f32_i32_e32 v92, v92
	v_mul_f32_e32 v91, v91, v86
	v_mul_f32_e32 v86, v98, v86
	.loc	1 306 50                        ; attention_backward.py:306:50
	v_or_b32_e32 v98, -16, v97
	.loc	1 307 28                        ; attention_backward.py:307:28
	v_cndmask_b32_e32 v17, v96, v17, vcc_lo
	.loc	1 290 33                        ; attention_backward.py:290:33
	v_mov_b16_e64 v128.l, v127.l
	.loc	1 311 21                        ; attention_backward.py:311:21
	v_cvt_f32_i32_e32 v93, v93
	.loc	1 305 28                        ; attention_backward.py:305:28
	v_mov_b16_e64 v143.h, v127.l
	.loc	1 306 27                        ; attention_backward.py:306:27
	v_cndmask_b32_e64 v96, v97, v98, s14
	.loc	1 311 21                        ; attention_backward.py:311:21
	v_cvt_f32_i32_e32 v17, v17
	.loc	1 309 31                        ; attention_backward.py:309:31
	v_mov_b16_e32 v98.h, v127.l
	.loc	1 305 28                        ; attention_backward.py:305:28
	v_mov_b16_e64 v144.h, v127.l
	.loc	1 309 31                        ; attention_backward.py:309:31
	v_mov_b16_e32 v97.h, v127.l
	.loc	1 311 21                        ; attention_backward.py:311:21
	v_cvt_f32_i32_e32 v96, v96
	v_mul_f32_e32 v17, v127, v17
	.loc	1 307 37                        ; attention_backward.py:307:37
	v_cmp_gt_i16_e64 s18, 0, v105.l
	v_cmp_gt_i16_e64 s19, 0, v106.l
	.loc	1 307 52 is_stmt 0              ; attention_backward.py:307:52
	v_or_b32_e32 v101, -16, v143
	.loc	1 311 21 is_stmt 1              ; attention_backward.py:311:21
	v_mul_f32_e32 v96, v127, v96
	.loc	1 309 31                        ; attention_backward.py:309:31
	v_cndmask_b32_e64 v17, 0, v17, s1
	.loc	1 307 52                        ; attention_backward.py:307:52
	v_or_b32_e32 v102, -16, v144
	.loc	1 309 31                        ; attention_backward.py:309:31
	v_cndmask_b32_e64 v90, 0, v90, s1
	.loc	1 307 28                        ; attention_backward.py:307:28
	v_cndmask_b32_e64 v100, v143, v101, s18
	.loc	1 309 31                        ; attention_backward.py:309:31
	v_cndmask_b32_e64 v96, 0, v96, s0
	v_mov_b16_e32 v98.l, v17.h
	.loc	1 311 21                        ; attention_backward.py:311:21
	v_mul_f32_e32 v93, v93, v128
	.loc	1 309 31                        ; attention_backward.py:309:31
	v_cmp_o_f32_e32 vcc_lo, v17, v17
	.loc	1 307 28                        ; attention_backward.py:307:28
	v_cndmask_b32_e64 v101, v144, v102, s19
	.loc	1 309 31                        ; attention_backward.py:309:31
	v_mov_b16_e32 v97.l, v96.h
	v_and_b32_e32 v98, 1, v98
	v_cndmask_b32_e64 v82, 0, v82, s0
	.loc	1 311 21                        ; attention_backward.py:311:21
	v_cvt_f32_i32_e32 v100, v100
	.loc	1 309 31                        ; attention_backward.py:309:31
	v_cndmask_b32_e64 v89, 0, v89, s1
	v_and_b32_e32 v97, 1, v97
	v_add3_u32 v98, v17, v98, 0x7fff
	v_bfe_u32 v17, v95, 16, 1
	.loc	1 311 21                        ; attention_backward.py:311:21
	v_cvt_f32_i32_e32 v101, v101
	v_mul_f32_e32 v92, v92, v85
	.loc	1 309 31                        ; attention_backward.py:309:31
	v_add3_u32 v97, v96, v97, 0x7fff
	v_cndmask_b16 v102.h, 0x7fff, v98.h, vcc_lo
	v_cmp_o_f32_e32 vcc_lo, v96, v96
	v_add3_u32 v17, v95, v17, 0x7fff
	.loc	1 311 21                        ; attention_backward.py:311:21
	v_dual_mul_f32 v85, v100, v85 :: v_dual_mul_f32 v94, v101, v128
	.loc	1 309 31                        ; attention_backward.py:309:31
	v_cndmask_b32_e64 v83, 0, v83, s0
	v_cndmask_b16 v102.l, 0x7fff, v97.h, vcc_lo
	v_cmp_o_f32_e32 vcc_lo, v95, v95
	v_cndmask_b32_e64 v88, 0, v88, s1
	v_cndmask_b32_e64 v84, 0, v84, s0
	v_cndmask_b32_e64 v87, 0, v87, s1
	v_cndmask_b32_e64 v91, 0, v91, s0
	v_cndmask_b16 v103.l, 0x7fff, v17.h, vcc_lo
	v_bfe_u32 v17, v90, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v90, v90
	v_cndmask_b32_e64 v86, 0, v86, s1
	v_cndmask_b32_e64 v92, 0, v92, s0
	v_cndmask_b32_e64 v85, 0, v85, s1
	v_add3_u32 v17, v90, v17, 0x7fff
	v_cndmask_b32_e64 v93, 0, v93, s0
	v_cndmask_b32_e64 v94, 0, v94, s1
	.loc	1 333 21                        ; attention_backward.py:333:21
	s_mul_i32 s14, s38, s76
	.loc	1 290 33                        ; attention_backward.py:290:33
	v_mov_b16_e32 v10.l, v127.l
	.loc	1 309 31                        ; attention_backward.py:309:31
	v_cndmask_b16 v103.h, 0x7fff, v17.h, vcc_lo
	v_bfe_u32 v17, v82, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v82, v82
	.loc	1 333 21                        ; attention_backward.py:333:21
	s_add_i32 s14, s29, s14
	.loc	1 290 33                        ; attention_backward.py:290:33
	v_mov_b16_e32 v9.l, v127.l
	v_mov_b16_e32 v12.l, v127.l
	.loc	1 309 31                        ; attention_backward.py:309:31
	v_add3_u32 v17, v82, v17, 0x7fff
	.loc	1 342 32                        ; attention_backward.py:342:32
	v_add_lshl_u32 v82, s14, v182, 2
	.loc	1 290 33                        ; attention_backward.py:290:33
	v_mov_b16_e32 v14.l, v127.l
	v_mov_b16_e32 v11.l, v127.l
	v_mov_b16_e32 v15.l, v127.l
	.loc	1 309 31                        ; attention_backward.py:309:31
	v_cndmask_b16 v100.l, 0x7fff, v17.h, vcc_lo
	v_bfe_u32 v17, v89, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v89, v89
	.loc	1 342 32                        ; attention_backward.py:342:32
	v_cndmask_b32_e64 v82, 0x80000000, v82, s62
	.loc	1 290 33                        ; attention_backward.py:290:33
	v_mov_b16_e32 v16.l, v127.l
	v_mov_b16_e32 v13.l, v127.l
	.loc	1 309 31                        ; attention_backward.py:309:31
	v_add3_u32 v17, v89, v17, 0x7fff
	.loc	1 343 31                        ; attention_backward.py:343:31
	v_add_nc_u32_e32 v89, v145, v185
	.loc	1 271 27                        ; attention_backward.py:271:27
	s_or_b32 s71, s38, 1
	s_or_b32 s70, s38, 2
	s_or_b32 s69, s38, 3
	.loc	1 309 31                        ; attention_backward.py:309:31
	v_cndmask_b16 v100.h, 0x7fff, v17.h, vcc_lo
	v_bfe_u32 v17, v83, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v83, v83
	.loc	1 271 27                        ; attention_backward.py:271:27
	s_or_b32 s68, s38, 4
	s_or_b32 s67, s38, 5
	s_or_b32 s66, s38, 6
	.loc	1 309 31                        ; attention_backward.py:309:31
	v_add3_u32 v17, v83, v17, 0x7fff
	.loc	1 342 32                        ; attention_backward.py:342:32
	v_add_lshl_u32 v83, s14, v183, 2
	.loc	1 271 27                        ; attention_backward.py:271:27
	s_or_b32 s65, s38, 7
	s_or_b32 s28, s38, 8
	s_or_b32 s27, s38, 9
	.loc	1 309 31                        ; attention_backward.py:309:31
	v_cndmask_b16 v101.l, 0x7fff, v17.h, vcc_lo
	v_bfe_u32 v17, v88, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v88, v88
	.loc	1 342 32                        ; attention_backward.py:342:32
	v_cndmask_b32_e64 v83, 0x80000000, v83, s64
	.loc	1 271 27                        ; attention_backward.py:271:27
	s_or_b32 s26, s38, 10
	s_or_b32 s25, s38, 11
	.loc	1 309 31                        ; attention_backward.py:309:31
	v_add3_u32 v17, v88, v17, 0x7fff
	.loc	1 342 32                        ; attention_backward.py:342:32
	v_add_lshl_u32 v88, s14, v124, 2
	.loc	1 271 27                        ; attention_backward.py:271:27
	s_or_b32 s24, s38, 12
	s_or_b32 s23, s38, 13
	s_or_b32 s22, s38, 14
	.loc	1 309 31                        ; attention_backward.py:309:31
	v_cndmask_b16 v101.h, 0x7fff, v17.h, vcc_lo
	v_bfe_u32 v17, v84, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v84, v84
	.loc	1 342 32                        ; attention_backward.py:342:32
	v_cndmask_b32_e64 v88, 0x80000000, v88, s58
	.loc	1 271 27                        ; attention_backward.py:271:27
	s_or_b32 s21, s38, 15
	.loc	1 344 21                        ; attention_backward.py:344:21
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 309 31                        ; attention_backward.py:309:31
	v_add3_u32 v17, v84, v17, 0x7fff
	.loc	1 342 32                        ; attention_backward.py:342:32
	v_add_lshl_u32 v84, s14, v121, 2
	s_clause 0x2
	buffer_load_b32 v82, v82, s[48:51], 0 offen
	buffer_load_b32 v83, v83, s[48:51], 0 offen
	buffer_load_b32 v88, v88, s[48:51], 0 offen
	.loc	1 309 31                        ; attention_backward.py:309:31
	v_cndmask_b16 v98.l, 0x7fff, v17.h, vcc_lo
	v_bfe_u32 v17, v87, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v87, v87
	.loc	1 342 32                        ; attention_backward.py:342:32
	v_cndmask_b32_e64 v84, 0x80000000, v84, s61
	.loc	1 344 21                        ; attention_backward.py:344:21
	.loc	1 391 32                        ; attention_backward.py:391:32
	v_mov_b32_e32 v166, v164
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 309 31                        ; attention_backward.py:309:31
	v_add3_u32 v17, v87, v17, 0x7fff
	.loc	1 342 32                        ; attention_backward.py:342:32
	v_add_lshl_u32 v87, s14, v123, 2
	buffer_load_b32 v84, v84, s[48:51], 0 offen
	.loc	1 391 32                        ; attention_backward.py:391:32
	v_mov_b32_e32 v169, v164
	v_mov_b32_e32 v168, v164
	.loc	1 309 31                        ; attention_backward.py:309:31
	v_cndmask_b16 v98.h, 0x7fff, v17.h, vcc_lo
	v_bfe_u32 v17, v91, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v91, v91
	.loc	1 342 32                        ; attention_backward.py:342:32
	v_cndmask_b32_e64 v87, 0x80000000, v87, s60
	.loc	1 391 32                        ; attention_backward.py:391:32
	v_mov_b32_e32 v171, v164
	v_mov_b32_e32 v165, v164
	.loc	1 309 31                        ; attention_backward.py:309:31
	v_add3_u32 v17, v91, v17, 0x7fff
	.loc	1 391 32                        ; attention_backward.py:391:32
	v_mov_b32_e32 v170, v164
	.loc	1 342 32                        ; attention_backward.py:342:32
	buffer_load_b32 v87, v87, s[48:51], 0 offen
	.loc	1 391 32                        ; attention_backward.py:391:32
	v_mov_b32_e32 v167, v164
	.loc	1 309 31                        ; attention_backward.py:309:31
	v_cndmask_b16 v99.l, 0x7fff, v17.h, vcc_lo
	v_bfe_u32 v17, v86, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v86, v86
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_add3_u32 v17, v86, v17, 0x7fff
	.loc	1 342 32                        ; attention_backward.py:342:32
	v_add_lshl_u32 v86, s14, v122, 2
	.loc	1 309 31                        ; attention_backward.py:309:31
	v_cndmask_b16 v99.h, 0x7fff, v17.h, vcc_lo
	v_bfe_u32 v17, v92, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v92, v92
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 342 32                        ; attention_backward.py:342:32
	v_cndmask_b32_e64 v86, 0x80000000, v86, s55
	.loc	1 309 31                        ; attention_backward.py:309:31
	v_add3_u32 v17, v92, v17, 0x7fff
	.loc	1 342 32                        ; attention_backward.py:342:32
	buffer_load_b32 v86, v86, s[48:51], 0 offen
	.loc	1 309 31                        ; attention_backward.py:309:31
	v_cndmask_b16 v96.l, 0x7fff, v17.h, vcc_lo
	v_bfe_u32 v17, v85, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v85, v85
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_add3_u32 v17, v85, v17, 0x7fff
	.loc	1 342 32                        ; attention_backward.py:342:32
	v_add_lshl_u32 v85, s14, v184, 2
	.loc	1 309 31                        ; attention_backward.py:309:31
	v_cndmask_b16 v96.h, 0x7fff, v17.h, vcc_lo
	v_bfe_u32 v17, v93, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v93, v93
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 342 32                        ; attention_backward.py:342:32
	v_cndmask_b32_e64 v85, 0x80000000, v85, s59
	.loc	1 309 31                        ; attention_backward.py:309:31
	v_add3_u32 v17, v93, v17, 0x7fff
	.loc	1 342 32                        ; attention_backward.py:342:32
	buffer_load_b32 v85, v85, s[48:51], 0 offen
	.loc	1 309 31                        ; attention_backward.py:309:31
	v_cndmask_b16 v97.l, 0x7fff, v17.h, vcc_lo
	v_bfe_u32 v17, v94, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v94, v94
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add3_u32 v17, v94, v17, 0x7fff
	v_cndmask_b16 v97.h, 0x7fff, v17.h, vcc_lo
	.loc	1 342 32                        ; attention_backward.py:342:32
	v_add_lshl_u32 v17, s14, v120, 2
	s_delay_alu instid0(VALU_DEP_1)
	v_cndmask_b32_e64 v17, 0x80000000, v17, s63
	buffer_load_b32 v17, v17, s[48:51], 0 offen
	.loc	1 343 31                        ; attention_backward.py:343:31
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 342 32                        ; attention_backward.py:342:32
	s_waitcnt vmcnt(7)
	v_cndmask_b32_e64 v82, 0xff800000, v82, s62
	s_waitcnt vmcnt(6)
	v_cndmask_b32_e64 v83, 0xff800000, v83, s64
	s_waitcnt vmcnt(5)
	v_cndmask_b32_e64 v88, 0xff800000, v88, s58
	.loc	1 344 30                        ; attention_backward.py:344:30
	v_cmp_neq_f32_e64 s14, 0xff800000, v82
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cmp_neq_f32_e64 s15, 0xff800000, v83
	v_cmp_neq_f32_e64 s20, 0xff800000, v88
	.loc	1 344 21 is_stmt 0              ; attention_backward.py:344:21
	s_and_b32 s14, s62, s14
	.loc	1 342 32 is_stmt 1              ; attention_backward.py:342:32
	s_waitcnt vmcnt(4)
	v_cndmask_b32_e64 v84, 0xff800000, v84, s61
	.loc	1 344 21                        ; attention_backward.py:344:21
	s_and_b32 s15, s64, s15
	s_and_b32 s20, s58, s20
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	.loc	1 344 30 is_stmt 0              ; attention_backward.py:344:30
	v_cmp_neq_f32_e64 s16, 0xff800000, v84
	.loc	1 344 21                        ; attention_backward.py:344:21
	s_and_b32 s16, s61, s16
	.loc	1 342 32 is_stmt 1              ; attention_backward.py:342:32
	s_waitcnt vmcnt(3)
	v_cndmask_b32_e64 v87, 0xff800000, v87, s60
	.loc	1 344 30                        ; attention_backward.py:344:30
	v_cmp_neq_f32_e64 s19, 0xff800000, v87
	.loc	1 344 21 is_stmt 0              ; attention_backward.py:344:21
	s_and_b32 s19, s60, s19
	.loc	1 342 32 is_stmt 1              ; attention_backward.py:342:32
	s_waitcnt vmcnt(2)
	v_cndmask_b32_e64 v86, 0xff800000, v86, s55
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	.loc	1 344 30                        ; attention_backward.py:344:30
	v_cmp_neq_f32_e64 s18, 0xff800000, v86
	.loc	1 344 21 is_stmt 0              ; attention_backward.py:344:21
	s_and_b32 s18, s55, s18
	.loc	1 342 32 is_stmt 1              ; attention_backward.py:342:32
	s_waitcnt vmcnt(1)
	v_cndmask_b32_e64 v85, 0xff800000, v85, s59
	.loc	1 344 30                        ; attention_backward.py:344:30
	v_cmp_neq_f32_e64 s17, 0xff800000, v85
	.loc	1 344 21 is_stmt 0              ; attention_backward.py:344:21
	s_and_b32 s17, s59, s17
	.loc	1 342 32 is_stmt 1              ; attention_backward.py:342:32
	s_waitcnt vmcnt(0)
	v_cndmask_b32_e64 v17, 0xff800000, v17, s63
	.loc	1 343 31                        ; attention_backward.py:343:31
	ds_store_2addr_b32 v89, v17, v85 offset1:32
	ds_store_2addr_b32 v196, v82, v86 offset1:32
	ds_store_2addr_b32 v197, v83, v87 offset1:32
	ds_store_2addr_b32 v198, v84, v88 offset1:32
	v_add_nc_u32_e32 v89, 0, v125
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b32 v89, v89
	ds_load_b32 v90, v199
	ds_load_b32 v91, v200
	ds_load_b32 v92, v201
	ds_load_b32 v93, v202
	ds_load_b32 v94, v203
	ds_load_b32 v95, v204
	ds_load_b32 v104, v205
	.loc	1 344 30                        ; attention_backward.py:344:30
	v_cmp_neq_f32_e32 vcc_lo, 0xff800000, v17
	.loc	1 344 21 is_stmt 0              ; attention_backward.py:344:21
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 393 17 is_stmt 1              ; attention_backward.py:393:17
	v_add_nc_u32_e32 v17, 0, v188
	.loc	1 344 21                        ; attention_backward.py:344:21
	s_and_b32 s63, s63, vcc_lo
	.loc	1 387 27                        ; attention_backward.py:387:27
	s_cmp_lt_i32 s38, s31
	.loc	1 343 31                        ; attention_backward.py:343:31
	v_mul_f32_e32 v90, 0x3fb8aa3b, v90
	v_dual_mul_f32 v92, 0x3fb8aa3b, v92 :: v_dual_mul_f32 v89, 0x3fb8aa3b, v89
	v_mul_f32_e32 v94, 0x3fb8aa3b, v94
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 343 21 is_stmt 0              ; attention_backward.py:343:21
	v_fmac_f32_e32 v90, v2, v10
	.loc	1 344 21 is_stmt 1              ; attention_backward.py:344:21
	v_cndmask_b32_e64 v2, 0, 1, s63
	.loc	1 343 21                        ; attention_backward.py:343:21
	v_dual_fmac_f32 v92, v4, v12 :: v_dual_fmac_f32 v89, v1, v9
	.loc	1 344 21                        ; attention_backward.py:344:21
	v_cndmask_b32_e64 v1, 0, 1, s17
	.loc	1 343 31                        ; attention_backward.py:343:31
	v_dual_mul_f32 v91, 0x3fb8aa3b, v91 :: v_dual_fmac_f32 v94, v6, v14
	v_mul_f32_e32 v95, 0x3fb8aa3b, v95
	.loc	1 344 21                        ; attention_backward.py:344:21
	v_cndmask_b32_e64 v6, 0, 1, s18
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_lshlrev_b16 v1.l, 8, v1.l
	.loc	1 343 21                        ; attention_backward.py:343:21
	v_fmac_f32_e32 v91, v3, v11
	.loc	1 344 21                        ; attention_backward.py:344:21
	v_cndmask_b32_e64 v3, 0, 1, s14
	v_cndmask_b32_e64 v4, 0, 1, s15
	.loc	1 343 31                        ; attention_backward.py:343:31
	v_mul_f32_e32 v104, 0x3fb8aa3b, v104
	.loc	1 344 21                        ; attention_backward.py:344:21
	v_or_b16 v1.l, v2.l, v1.l
	.loc	1 343 21                        ; attention_backward.py:343:21
	v_dual_fmac_f32 v95, v7, v15 :: v_dual_add_nc_u32 v2, 0, v186
	.loc	1 344 21                        ; attention_backward.py:344:21
	v_cndmask_b32_e64 v7, 0, 1, s19
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 343 31                        ; attention_backward.py:343:31
	v_dual_mul_f32 v93, 0x3fb8aa3b, v93 :: v_dual_fmac_f32 v104, v8, v16
	.loc	1 344 21                        ; attention_backward.py:344:21
	ds_store_b16 v2, v1
	v_mov_b16_e32 v1.l, v6.l
	v_mov_b16_e32 v2.l, v3.l
	v_cndmask_b32_e64 v8, 0, 1, s20
	.loc	1 343 21                        ; attention_backward.py:343:21
	v_fmac_f32_e32 v93, v5, v13
	.loc	1 344 21                        ; attention_backward.py:344:21
	v_cndmask_b32_e64 v5, 0, 1, s16
	v_lshlrev_b16 v1.l, 8, v1.l
	.loc	1 345 58                        ; attention_backward.py:345:58
	v_sub_f32_e32 v6, v94, v180
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 344 21                        ; attention_backward.py:344:21
	v_or_b16 v1.l, v2.l, v1.l
	v_mov_b16_e32 v2.l, v4.l
	.loc	1 345 45                        ; attention_backward.py:345:45
	v_exp_f32_e32 v6, v6
	.loc	1 344 21                        ; attention_backward.py:344:21
	ds_store_b16 v206, v1
	v_mov_b16_e32 v1.l, v7.l
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b16 v1.l, 8, v1.l
	v_or_b16 v1.l, v2.l, v1.l
	v_mov_b16_e32 v2.l, v5.l
	ds_store_b16 v207, v1
	v_mov_b16_e32 v1.l, v8.l
	.loc	1 345 58                        ; attention_backward.py:345:58
	v_sub_f32_e32 v8, v104, v180
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 344 21                        ; attention_backward.py:344:21
	v_lshlrev_b16 v1.l, 8, v1.l
	v_or_b16 v1.l, v2.l, v1.l
	v_add_nc_u32_e32 v2, 0, v187
	ds_store_b16 v208, v1
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_u8_d16 v1, v2
	s_waitcnt lgkmcnt(0)
	ds_load_u8_d16_hi v1, v2 offset:64
	ds_load_u8_d16 v2, v209
	s_waitcnt lgkmcnt(0)
	ds_load_u8_d16_hi v2, v209 offset:64
	ds_load_u8_d16 v3, v210
	s_waitcnt lgkmcnt(0)
	ds_load_u8_d16_hi v3, v210 offset:64
	ds_load_u8_d16 v4, v211
	s_waitcnt lgkmcnt(0)
	ds_load_u8_d16_hi v4, v211 offset:64
	v_and_b16 v1.l, 1, v1.l
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_cmp_eq_u16_e32 vcc_lo, 1, v1.l
	v_and_b16 v1.l, 1, v2.l
	v_cmp_eq_u16_e64 s14, 1, v1.l
	v_and_b16 v1.l, 1, v3.l
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_cmp_eq_u16_e64 s15, 1, v1.l
	s_waitcnt lgkmcnt(0)
	v_and_b16 v1.l, 1, v4.l
	v_cmp_eq_u16_e64 s16, 1, v1.l
	v_and_b16 v1.l, 1, v1.h
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_cmp_eq_u16_e64 s17, 1, v1.l
	v_and_b16 v1.l, 1, v2.h
	.loc	1 345 58                        ; attention_backward.py:345:58
	v_sub_f32_e32 v2, v90, v180
	.loc	1 344 21                        ; attention_backward.py:344:21
	v_cmp_eq_u16_e64 s18, 1, v1.l
	v_and_b16 v1.l, 1, v3.h
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 345 45                        ; attention_backward.py:345:45
	v_exp_f32_e32 v2, v2
	.loc	1 345 29 is_stmt 0              ; attention_backward.py:345:29
	v_cndmask_b32_e64 v244, 0, v6, s18
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	.loc	1 344 21 is_stmt 1              ; attention_backward.py:344:21
	v_cmp_eq_u16_e64 s19, 1, v1.l
	v_and_b16 v1.l, 1, v4.h
	.loc	1 345 58                        ; attention_backward.py:345:58
	v_sub_f32_e32 v4, v92, v180
	.loc	1 344 21                        ; attention_backward.py:344:21
	v_cmp_eq_u16_e64 s20, 1, v1.l
	.loc	1 345 58                        ; attention_backward.py:345:58
	v_sub_f32_e32 v1, v89, v180
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 345 29 is_stmt 0              ; attention_backward.py:345:29
	v_cndmask_b32_e64 v105, 0, v2, s14
	.loc	1 345 45                        ; attention_backward.py:345:45
	v_exp_f32_e32 v4, v4
	.loc	1 387 27 is_stmt 1              ; attention_backward.py:387:27
	s_cselect_b32 s14, -1, 0
	s_cmp_lt_i32 s71, s31
	.loc	1 345 45                        ; attention_backward.py:345:45
	v_exp_f32_e32 v1, v1
	.loc	1 345 58 is_stmt 0              ; attention_backward.py:345:58
	v_dual_sub_f32 v3, v91, v180 :: v_dual_mov_b32 v82, v164
	.loc	1 391 32 is_stmt 1              ; attention_backward.py:391:32
	v_mov_b32_e32 v83, v165
	v_dual_mov_b32 v89, v171 :: v_dual_mov_b32 v84, v166
	v_mov_b32_e32 v85, v167
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_2) | instid1(TRANS32_DEP_1)
	.loc	1 345 29                        ; attention_backward.py:345:29
	v_cndmask_b32_e64 v242, 0, v4, s16
	.loc	1 391 32                        ; attention_backward.py:391:32
	v_mov_b32_e32 v86, v168
	v_mov_b32_e32 v88, v170
	.loc	1 345 29                        ; attention_backward.py:345:29
	v_cndmask_b32_e32 v104, 0, v1, vcc_lo
	.loc	1 386 21                        ; attention_backward.py:386:21
	v_mad_u64_u32 v[1:2], null, s54, s35, v[0:1]
	.loc	1 345 45                        ; attention_backward.py:345:45
	v_exp_f32_e32 v3, v3
	.loc	1 345 58 is_stmt 0              ; attention_backward.py:345:58
	v_sub_f32_e32 v5, v93, v180
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 391 32 is_stmt 1              ; attention_backward.py:391:32
	v_dual_mov_b32 v87, v169 :: v_dual_add_nc_u32 v2, s35, v1
	.loc	1 345 45                        ; attention_backward.py:345:45
	v_exp_f32_e32 v5, v5
	.loc	1 385 30                        ; attention_backward.py:385:30
	v_lshlrev_b32_e32 v1, 1, v1
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 345 29                        ; attention_backward.py:345:29
	v_cndmask_b32_e64 v106, 0, v3, s15
	.loc	1 386 21                        ; attention_backward.py:386:21
	v_add_nc_u32_e32 v3, s35, v2
	.loc	1 345 45                        ; attention_backward.py:345:45
	v_exp_f32_e32 v8, v8
	.loc	1 387 27                        ; attention_backward.py:387:27
	s_cselect_b32 s15, -1, 0
	s_cmp_lt_i32 s70, s31
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	.loc	1 386 21                        ; attention_backward.py:386:21
	v_add_nc_u32_e32 v4, s35, v3
	.loc	1 345 29                        ; attention_backward.py:345:29
	v_cndmask_b32_e64 v243, 0, v5, s17
	.loc	1 387 27                        ; attention_backward.py:387:27
	s_cselect_b32 s16, -1, 0
	s_cmp_lt_i32 s69, s31
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 386 21                        ; attention_backward.py:386:21
	v_add_nc_u32_e32 v5, s35, v4
	.loc	1 345 58                        ; attention_backward.py:345:58
	v_sub_f32_e32 v7, v95, v180
	.loc	1 387 27                        ; attention_backward.py:387:27
	s_cselect_b32 s17, -1, 0
	s_cmp_lt_i32 s68, s31
	.loc	1 345 29                        ; attention_backward.py:345:29
	v_cndmask_b32_e64 v246, 0, v8, s20
	.loc	1 386 21                        ; attention_backward.py:386:21
	v_add_nc_u32_e32 v6, s35, v5
	.loc	1 345 45                        ; attention_backward.py:345:45
	v_exp_f32_e32 v7, v7
	.loc	1 387 27                        ; attention_backward.py:387:27
	s_cselect_b32 s18, -1, 0
	s_cmp_lt_i32 s67, s31
	.loc	1 385 30                        ; attention_backward.py:385:30
	v_lshlrev_b32_e32 v4, 1, v4
	s_delay_alu instid0(TRANS32_DEP_1)
	.loc	1 345 29                        ; attention_backward.py:345:29
	v_cndmask_b32_e64 v245, 0, v7, s19
	.loc	1 386 21                        ; attention_backward.py:386:21
	v_add_nc_u32_e32 v7, s35, v6
	.loc	1 387 27                        ; attention_backward.py:387:27
	s_cselect_b32 s19, -1, 0
	s_cmp_lt_i32 s66, s31
	.loc	1 385 30                        ; attention_backward.py:385:30
	v_lshlrev_b32_e32 v6, 1, v6
	.loc	1 387 27                        ; attention_backward.py:387:27
	s_cselect_b32 s20, -1, 0
	.loc	1 386 21                        ; attention_backward.py:386:21
	v_add_nc_u32_e32 v8, s35, v7
	.loc	1 387 27                        ; attention_backward.py:387:27
	s_cmp_lt_i32 s65, s31
	s_cselect_b32 s55, -1, 0
	s_cmp_lt_i32 s28, s31
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 386 21                        ; attention_backward.py:386:21
	v_add_nc_u32_e32 v9, s35, v8
	.loc	1 387 27                        ; attention_backward.py:387:27
	s_cselect_b32 s58, -1, 0
	s_cmp_lt_i32 s27, s31
	.loc	1 385 30                        ; attention_backward.py:385:30
	v_lshlrev_b32_e32 v8, 1, v8
	.loc	1 387 27                        ; attention_backward.py:387:27
	s_cselect_b32 s59, -1, 0
	.loc	1 386 21                        ; attention_backward.py:386:21
	v_add_nc_u32_e32 v10, s35, v9
	.loc	1 387 27                        ; attention_backward.py:387:27
	s_cmp_lt_i32 s26, s31
	.loc	1 385 30                        ; attention_backward.py:385:30
	v_lshlrev_b32_e32 v9, 1, v9
	.loc	1 387 27                        ; attention_backward.py:387:27
	s_cselect_b32 s60, -1, 0
	s_cmp_lt_i32 s25, s31
	.loc	1 386 21                        ; attention_backward.py:386:21
	v_add_nc_u32_e32 v11, s35, v10
	.loc	1 387 27                        ; attention_backward.py:387:27
	s_cselect_b32 s61, -1, 0
	s_cmp_lt_i32 s24, s31
	.loc	1 385 30                        ; attention_backward.py:385:30
	v_lshlrev_b32_e32 v10, 1, v10
	.loc	1 387 27                        ; attention_backward.py:387:27
	s_cselect_b32 s62, -1, 0
	s_cmp_lt_i32 s23, s31
	.loc	1 386 21                        ; attention_backward.py:386:21
	v_add_nc_u32_e32 v12, s35, v11
	.loc	1 387 27                        ; attention_backward.py:387:27
	s_cselect_b32 s63, -1, 0
	s_cmp_lt_i32 s22, s31
	.loc	1 385 30                        ; attention_backward.py:385:30
	v_lshlrev_b32_e32 v11, 1, v11
	.loc	1 387 27                        ; attention_backward.py:387:27
	s_cselect_b32 s64, -1, 0
	s_cmp_lt_i32 s21, s31
	.loc	1 386 21                        ; attention_backward.py:386:21
	v_add_nc_u32_e32 v13, s35, v12
	.loc	1 387 27                        ; attention_backward.py:387:27
	s_cselect_b32 s65, -1, 0
	.loc	1 387 26 is_stmt 0              ; attention_backward.py:387:26
	s_and_b32 s24, s3, s18
	s_and_b32 s23, s3, s19
	s_and_b32 s22, s3, s20
	s_and_b32 s20, s3, s58
	s_and_b32 s19, s3, s59
	s_and_b32 s18, s3, s60
	.loc	1 385 30 is_stmt 1              ; attention_backward.py:385:30
	v_cndmask_b32_e64 v9, 0x80000000, v9, s20
	v_cndmask_b32_e64 v10, 0x80000000, v10, s19
	v_cndmask_b32_e64 v11, 0x80000000, v11, s18
	s_mov_b32 s58, s50
	s_mov_b32 s59, s51
	.loc	1 386 21                        ; attention_backward.py:386:21
	v_add_nc_u32_e32 v14, s35, v13
	.loc	1 385 30                        ; attention_backward.py:385:30
	s_clause 0x2
	buffer_load_u16 v9, v9, s[56:59], 0 offen
	buffer_load_u16 v10, v10, s[56:59], 0 offen
	buffer_load_u16 v11, v11, s[56:59], 0 offen
	v_lshlrev_b32_e32 v12, 1, v12
	v_lshlrev_b32_e32 v13, 1, v13
	.loc	1 387 26                        ; attention_backward.py:387:26
	s_and_b32 s26, s3, s16
	s_and_b32 s25, s3, s17
	s_and_b32 s17, s3, s61
	s_and_b32 s16, s3, s62
	.loc	1 385 30                        ; attention_backward.py:385:30
	v_cndmask_b32_e64 v12, 0x80000000, v12, s17
	v_cndmask_b32_e64 v13, 0x80000000, v13, s16
	.loc	1 386 21                        ; attention_backward.py:386:21
	v_add_nc_u32_e32 v15, s35, v14
	.loc	1 387 26                        ; attention_backward.py:387:26
	s_and_b32 s27, s3, s15
	s_and_b32 s15, s3, s63
	.loc	1 385 30                        ; attention_backward.py:385:30
	s_clause 0x1
	buffer_load_u16 v12, v12, s[56:59], 0 offen
	buffer_load_u16 v13, v13, s[56:59], 0 offen
	v_lshlrev_b32_e32 v14, 1, v14
	.loc	1 387 26                        ; attention_backward.py:387:26
	s_and_b32 s28, s3, s14
	s_and_b32 s14, s3, s64
	s_and_b32 vcc_lo, s3, s65
	.loc	1 385 30                        ; attention_backward.py:385:30
	v_cndmask_b32_e64 v1, 0x80000000, v1, s28
	v_cndmask_b32_e64 v14, 0x80000000, v14, s15
	v_cndmask_b32_e64 v4, 0x80000000, v4, s25
	.loc	1 387 26                        ; attention_backward.py:387:26
	s_and_b32 s21, s3, s55
	.loc	1 385 30                        ; attention_backward.py:385:30
	v_cndmask_b32_e64 v6, 0x80000000, v6, s23
	s_clause 0x1
	buffer_load_u16 v1, v1, s[56:59], 0 offen
	buffer_load_u16 v14, v14, s[56:59], 0 offen
	v_lshlrev_b32_e32 v16, 1, v15
	v_add_lshl_u32 v15, v15, s35, 1
	v_lshlrev_b32_e32 v2, 1, v2
	v_cndmask_b32_e64 v8, 0x80000000, v8, s21
	s_clause 0x1
	buffer_load_u16 v4, v4, s[56:59], 0 offen
	buffer_load_u16 v6, v6, s[56:59], 0 offen
	v_cndmask_b32_e64 v16, 0x80000000, v16, s14
	v_cndmask_b32_e32 v15, 0x80000000, v15, vcc_lo
	v_cndmask_b32_e64 v2, 0x80000000, v2, s27
	buffer_load_u16 v8, v8, s[56:59], 0 offen
	.loc	1 270 9                         ; attention_backward.py:270:9
	s_add_i32 s38, s38, 16
	.loc	1 385 30                        ; attention_backward.py:385:30
	s_clause 0x1
	buffer_load_u16 v16, v16, s[56:59], 0 offen
	buffer_load_u16 v15, v15, s[56:59], 0 offen
	v_lshlrev_b32_e32 v3, 1, v3
	v_lshlrev_b32_e32 v5, 1, v5
	v_lshlrev_b32_e32 v7, 1, v7
	buffer_load_u16 v2, v2, s[56:59], 0 offen
	.loc	1 270 9                         ; attention_backward.py:270:9
	s_cmp_lt_i32 s38, s39
	.loc	1 385 30                        ; attention_backward.py:385:30
	v_cndmask_b32_e64 v3, 0x80000000, v3, s26
	v_cndmask_b32_e64 v5, 0x80000000, v5, s24
	v_cndmask_b32_e64 v7, 0x80000000, v7, s22
	s_clause 0x2
	buffer_load_u16 v3, v3, s[56:59], 0 offen
	buffer_load_u16 v5, v5, s[56:59], 0 offen
	buffer_load_u16 v7, v7, s[56:59], 0 offen
	.loc	1 393 17                        ; attention_backward.py:393:17
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_waitcnt vmcnt(10)
	ds_store_b16 v17, v1
	s_waitcnt vmcnt(3)
	ds_store_b16 v212, v2
	s_waitcnt vmcnt(2)
	ds_store_b16 v213, v3
	ds_store_b16 v214, v4
	s_waitcnt vmcnt(1)
	ds_store_b16 v215, v5
	ds_store_b16 v216, v6
	s_waitcnt vmcnt(0)
	ds_store_b16 v217, v7
	ds_store_b16 v218, v8
	ds_store_b16 v219, v9
	ds_store_b16 v220, v10
	ds_store_b16 v221, v11
	ds_store_b16 v222, v12
	ds_store_b16 v223, v13
	ds_store_b16 v224, v14
	ds_store_b16 v225, v16
	ds_store_b16 v226, v15
	v_add_nc_u32_e32 v3, 0, v189
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 391 32                        ; attention_backward.py:391:32
	ds_load_2addr_b32 v[1:2], v227 offset1:16
	ds_load_2addr_b32 v[131:132], v3 offset1:16
	ds_load_2addr_b32 v[143:144], v228 offset1:16
	ds_load_2addr_b32 v[90:91], v229 offset1:16
	ds_load_2addr_b32 v[127:128], v230 offset1:16
	ds_load_2addr_b32 v[3:4], v231 offset1:16
	ds_load_2addr_b32 v[129:130], v232 offset1:16
	ds_load_2addr_b32 v[92:93], v233 offset1:16
	ds_load_2addr_b32 v[172:173], v234 offset1:16
	ds_load_2addr_b32 v[5:6], v235 offset1:16
	ds_load_2addr_b32 v[174:175], v236 offset1:16
	ds_load_2addr_b32 v[94:95], v237 offset1:16
	ds_load_2addr_b32 v[176:177], v238 offset1:16
	ds_load_2addr_b32 v[7:8], v239 offset1:16
	ds_load_2addr_b32 v[178:179], v240 offset1:16
	ds_load_2addr_b32 v[16:17], v241 offset1:16
	.loc	1 309 31                        ; attention_backward.py:309:31
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 391 32                        ; attention_backward.py:391:32
	v_mov_b16_e64 v247.h, v1.l
	v_mov_b16_e64 v247.l, v131.l
	v_mov_b16_e64 v248.l, v143.l
	v_mov_b16_e64 v248.h, v90.l
	v_mov_b16_e64 v249.l, v127.l
	v_mov_b16_e64 v249.h, v3.l
	v_mov_b16_e64 v250.l, v129.l
	v_mov_b16_e64 v250.h, v92.l
	v_mov_b16_e64 v251.l, v172.l
	v_mov_b16_e64 v251.h, v5.l
	v_mov_b16_e64 v252.l, v174.l
	v_mov_b16_e64 v252.h, v94.l
	v_mov_b16_e64 v253.l, v176.l
	v_mov_b16_e64 v253.h, v7.l
	v_mov_b16_e64 v254.l, v178.l
	v_mov_b16_e64 v254.h, v16.l
	v_mov_b16_e64 v1.l, v131.h
	v_mov_b16_e64 v90.l, v143.h
	v_mov_b16_e32 v3.l, v127.h
	v_mov_b16_e64 v92.l, v129.h
	v_wmma_f32_16x16x16_bf16 v[82:89], v[247:254], v[18:25], v[82:89]
	v_mov_b16_e64 v247.l, v132.l
	v_mov_b16_e64 v247.h, v2.l
	v_mov_b16_e64 v248.l, v144.l
	v_mov_b16_e64 v248.h, v91.l
	v_mov_b16_e64 v249.l, v128.l
	v_mov_b16_e64 v249.h, v4.l
	v_mov_b16_e64 v250.l, v130.l
	v_mov_b16_e64 v250.h, v93.l
	v_mov_b16_e64 v251.l, v173.l
	v_mov_b16_e64 v251.h, v6.l
	v_mov_b16_e64 v252.l, v175.l
	v_mov_b16_e64 v252.h, v95.l
	v_mov_b16_e64 v253.l, v177.l
	v_mov_b16_e64 v253.h, v8.l
	v_mov_b16_e64 v254.l, v179.l
	v_mov_b16_e64 v254.h, v17.l
	v_mov_b16_e64 v5.l, v172.h
	v_mov_b16_e64 v94.l, v174.h
	v_mov_b16_e64 v7.l, v176.h
	v_mov_b16_e64 v16.l, v178.h
	v_wmma_f32_16x16x16_bf16 v[82:89], v[247:254], v[26:33], v[82:89]
	v_dual_mov_b32 v9, v1 :: v_dual_mov_b32 v10, v90
	v_dual_mov_b32 v11, v3 :: v_dual_mov_b32 v12, v92
	v_dual_mov_b32 v13, v5 :: v_dual_mov_b32 v14, v94
	v_mov_b32_e32 v15, v7
	v_mov_b16_e64 v91.l, v144.h
	v_mov_b16_e64 v93.l, v130.h
	v_mov_b16_e64 v95.l, v175.h
	v_mov_b16_e64 v17.l, v179.h
	v_wmma_f32_16x16x16_bf16 v[82:89], v[9:16], v[34:41], v[82:89]
	v_mov_b16_e64 v2.l, v132.h
	v_mov_b16_e64 v4.l, v128.h
	v_mov_b16_e64 v6.l, v173.h
	v_mov_b16_e64 v8.l, v177.h
	v_mov_b32_e32 v3, v91
	v_mov_b32_e32 v5, v93
	v_mov_b32_e32 v7, v95
	v_mov_b32_e32 v9, v17
	v_or_b32_e32 v174, 2, v126
	v_or_b32_e32 v175, 4, v126
	v_or_b32_e32 v176, 6, v126
	v_or_b32_e32 v177, 8, v126
	v_wmma_f32_16x16x16_bf16 v[82:89], v[2:9], v[42:49], v[82:89]
	v_or_b32_e32 v178, 10, v126
	v_or_b32_e32 v179, 12, v126
	v_or_b32_e32 v253, 14, v126
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	.loc	1 396 43                        ; attention_backward.py:396:43
	v_sub_f32_e32 v6, v87, v181
	v_sub_f32_e32 v2, v83, v181
	v_sub_f32_e32 v8, v89, v181
	v_sub_f32_e32 v4, v85, v181
	v_dual_sub_f32 v5, v86, v181 :: v_dual_mul_f32 v6, v244, v6
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_dual_sub_f32 v1, v82, v181 :: v_dual_mul_f32 v2, v105, v2
	.loc	1 396 26 is_stmt 0              ; attention_backward.py:396:26
	v_dual_mul_f32 v8, v246, v8 :: v_dual_sub_f32 v3, v84, v181
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 397 34 is_stmt 1              ; attention_backward.py:397:34
	v_dual_mul_f32 v6, s52, v6 :: v_dual_mul_f32 v1, v104, v1
	v_mul_f32_e32 v2, s52, v2
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_mul_f32 v8, s52, v8 :: v_dual_mul_f32 v3, v106, v3
	.loc	1 396 26                        ; attention_backward.py:396:26
	v_dual_mul_f32 v4, v242, v4 :: v_dual_mul_f32 v1, s52, v1
	.loc	1 396 43 is_stmt 0              ; attention_backward.py:396:43
	v_sub_f32_e32 v7, v88, v181
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 397 34 is_stmt 1              ; attention_backward.py:397:34
	v_dual_mul_f32 v3, s52, v3 :: v_dual_mul_f32 v4, s52, v4
	.loc	1 397 33 is_stmt 0              ; attention_backward.py:397:33
	v_bfe_u32 v9, v1, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v1, v1
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 396 26 is_stmt 1              ; attention_backward.py:396:26
	v_mul_f32_e32 v7, v245, v7
	.loc	1 397 33                        ; attention_backward.py:397:33
	v_add3_u32 v9, v1, v9, 0x7fff
	v_bfe_u32 v1, v2, 16, 1
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 397 34 is_stmt 0              ; attention_backward.py:397:34
	v_mul_f32_e32 v7, s52, v7
	.loc	1 397 33                        ; attention_backward.py:397:33
	v_cndmask_b16 v9.l, 0x7fff, v9.h, vcc_lo
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_add3_u32 v1, v2, v1, 0x7fff
	v_cmp_o_f32_e32 vcc_lo, v2, v2
	v_cndmask_b16 v9.h, 0x7fff, v1.h, vcc_lo
	v_bfe_u32 v1, v3, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v3, v3
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_permlanex16_b32 v2, v9, s30, 0xfedcba98 op_sel:[1,0]
	v_add3_u32 v1, v3, v1, 0x7fff
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_cndmask_b16 v10.l, 0x7fff, v1.h, vcc_lo
	v_bfe_u32 v1, v4, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v4, v4
	v_add3_u32 v1, v4, v1, 0x7fff
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_cndmask_b16 v10.h, 0x7fff, v1.h, vcc_lo
	v_permlanex16_b32 v4, v10, s30, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_perm_b32 v3, v4, v10, v190
	v_perm_b32 v4, v4, v10, v191
	.loc	1 396 26 is_stmt 1              ; attention_backward.py:396:26
	v_dual_mul_f32 v5, v243, v5 :: v_dual_add_nc_u32 v10, v137, v0
	.loc	1 397 34                        ; attention_backward.py:397:34
	v_mul_f32_e32 v5, s52, v5
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 397 33 is_stmt 0              ; attention_backward.py:397:33
	v_bfe_u32 v1, v5, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v5, v5
	v_add3_u32 v1, v5, v1, 0x7fff
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_cndmask_b16 v11.l, 0x7fff, v1.h, vcc_lo
	v_bfe_u32 v1, v6, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v6, v6
	v_add3_u32 v1, v6, v1, 0x7fff
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_cndmask_b16 v11.h, 0x7fff, v1.h, vcc_lo
	v_bfe_u32 v1, v7, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v7, v7
	v_permlanex16_b32 v6, v11, s30, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_add3_u32 v1, v7, v1, 0x7fff
	v_perm_b32 v5, v6, v11, v190
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_cndmask_b16 v12.l, 0x7fff, v1.h, vcc_lo
	v_bfe_u32 v1, v8, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v8, v8
	v_perm_b32 v6, v6, v11, v191
	v_add3_u32 v1, v8, v1, 0x7fff
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_cndmask_b16 v12.h, 0x7fff, v1.h, vcc_lo
	v_perm_b32 v1, v2, v9, v190
	v_perm_b32 v2, v2, v9, v191
	.loc	1 309 31 is_stmt 1              ; attention_backward.py:309:31
	v_lshlrev_b32_e32 v9, 1, v0
	.loc	1 397 33                        ; attention_backward.py:397:33
	v_permlanex16_b32 v8, v12, s30, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 309 31                        ; attention_backward.py:309:31
	v_add_nc_u32_e32 v9, v10, v9
	ds_store_2addr_stride64_b32 v9, v102, v103 offset1:1
	ds_store_2addr_stride64_b32 v9, v100, v101 offset0:2 offset1:3
	ds_store_2addr_stride64_b32 v9, v98, v99 offset0:4 offset1:5
	ds_store_2addr_stride64_b32 v9, v96, v97 offset0:6 offset1:7
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_u16_d16 v99, v192
	ds_load_u16_d16 v91, v192 offset:32
	s_waitcnt lgkmcnt(1)
	ds_load_u16_d16_hi v99, v192 offset:128
	ds_load_u16_d16 v100, v192 offset:256
	s_waitcnt lgkmcnt(0)
	ds_load_u16_d16_hi v100, v192 offset:384
	ds_load_u16_d16 v101, v192 offset:512
	s_waitcnt lgkmcnt(0)
	ds_load_u16_d16_hi v101, v192 offset:640
	ds_load_u16_d16 v102, v192 offset:768
	s_waitcnt lgkmcnt(0)
	ds_load_u16_d16_hi v102, v192 offset:896
	ds_load_u16_d16 v103, v192 offset:1024
	s_waitcnt lgkmcnt(0)
	ds_load_u16_d16_hi v103, v192 offset:1152
	ds_load_u16_d16 v104, v192 offset:1280
	s_waitcnt lgkmcnt(0)
	ds_load_u16_d16_hi v104, v192 offset:1408
	ds_load_u16_d16 v105, v192 offset:1536
	s_waitcnt lgkmcnt(0)
	ds_load_u16_d16_hi v105, v192 offset:1664
	ds_load_u16_d16 v106, v192 offset:1792
	s_waitcnt lgkmcnt(0)
	ds_load_u16_d16_hi v106, v192 offset:1920
	ds_load_u16_d16_hi v91, v192 offset:160
	ds_load_u16_d16 v92, v192 offset:288
	s_waitcnt lgkmcnt(0)
	ds_load_u16_d16_hi v92, v192 offset:416
	ds_load_u16_d16 v93, v192 offset:544
	s_waitcnt lgkmcnt(0)
	ds_load_u16_d16_hi v93, v192 offset:672
	ds_load_u16_d16 v94, v192 offset:800
	s_waitcnt lgkmcnt(0)
	ds_load_u16_d16_hi v94, v192 offset:928
	ds_load_u16_d16 v95, v192 offset:1056
	s_waitcnt lgkmcnt(0)
	ds_load_u16_d16_hi v95, v192 offset:1184
	ds_load_u16_d16 v96, v192 offset:1312
	s_waitcnt lgkmcnt(0)
	ds_load_u16_d16_hi v96, v192 offset:1440
	ds_load_u16_d16 v97, v192 offset:1568
	s_waitcnt lgkmcnt(0)
	ds_load_u16_d16_hi v97, v192 offset:1696
	ds_load_u16_d16 v98, v192 offset:1824
	s_waitcnt lgkmcnt(0)
	ds_load_u16_d16_hi v98, v192 offset:1952
	ds_load_u16_d16 v83, v192 offset:64
	s_waitcnt lgkmcnt(0)
	ds_load_u16_d16_hi v83, v192 offset:192
	ds_load_u16_d16 v84, v192 offset:320
	s_waitcnt lgkmcnt(0)
	ds_load_u16_d16_hi v84, v192 offset:448
	ds_load_u16_d16 v85, v192 offset:576
	s_waitcnt lgkmcnt(0)
	ds_load_u16_d16_hi v85, v192 offset:704
	ds_load_u16_d16 v86, v192 offset:832
	s_waitcnt lgkmcnt(0)
	ds_load_u16_d16_hi v86, v192 offset:960
	ds_load_u16_d16 v87, v192 offset:1088
	s_waitcnt lgkmcnt(0)
	ds_load_u16_d16_hi v87, v192 offset:1216
	ds_load_u16_d16 v88, v192 offset:1344
	s_waitcnt lgkmcnt(0)
	ds_load_u16_d16_hi v88, v192 offset:1472
	ds_load_u16_d16 v89, v192 offset:1600
	s_waitcnt lgkmcnt(0)
	ds_load_u16_d16_hi v89, v192 offset:1728
	ds_load_u16_d16 v90, v192 offset:1856
	s_waitcnt lgkmcnt(0)
	ds_load_u16_d16_hi v90, v192 offset:1984
	ds_load_u16_d16 v9, v192 offset:96
	s_waitcnt lgkmcnt(0)
	ds_load_u16_d16_hi v9, v192 offset:224
	ds_load_u16_d16 v10, v192 offset:352
	s_waitcnt lgkmcnt(0)
	ds_load_u16_d16_hi v10, v192 offset:480
	ds_load_u16_d16 v11, v192 offset:608
	.loc	1 397 33                        ; attention_backward.py:397:33
	v_perm_b32 v7, v8, v12, v190
	v_perm_b32 v8, v8, v12, v191
	.loc	1 309 31                        ; attention_backward.py:309:31
	s_waitcnt lgkmcnt(0)
	ds_load_u16_d16_hi v11, v192 offset:736
	ds_load_u16_d16 v12, v192 offset:864
	s_waitcnt lgkmcnt(0)
	ds_load_u16_d16_hi v12, v192 offset:992
	ds_load_u16_d16 v13, v192 offset:1120
	s_waitcnt lgkmcnt(0)
	ds_load_u16_d16_hi v13, v192 offset:1248
	ds_load_u16_d16 v14, v192 offset:1376
	s_waitcnt lgkmcnt(0)
	ds_load_u16_d16_hi v14, v192 offset:1504
	ds_load_u16_d16 v15, v192 offset:1632
	s_waitcnt lgkmcnt(0)
	ds_load_u16_d16_hi v15, v192 offset:1760
	ds_load_u16_d16 v16, v192 offset:1888
	.loc	1 398 31                        ; attention_backward.py:398:31
	v_wmma_f32_16x16x16_bf16 v[74:81], v[99:106], v[1:8], v[74:81]
	v_wmma_f32_16x16x16_bf16 v[66:73], v[91:98], v[1:8], v[66:73]
	v_wmma_f32_16x16x16_bf16 v[58:65], v[83:90], v[1:8], v[58:65]
	.loc	1 309 31                        ; attention_backward.py:309:31
	s_waitcnt lgkmcnt(0)
	ds_load_u16_d16_hi v16, v192 offset:2016
	.loc	1 398 31                        ; attention_backward.py:398:31
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[50:57], v[9:16], v[1:8], v[50:57]
	s_cbranch_scc0 .LBB0_19
.LBB0_15:                               ; =>This Inner Loop Header: Depth=1
	.loc	1 271 27                        ; attention_backward.py:271:27
	v_or_b32_e32 v1, s38, v126
	v_or_b32_e32 v2, s38, v174
	.loc	1 275 21                        ; attention_backward.py:275:21
	s_add_i32 s54, s38, s77
	.loc	1 271 27                        ; attention_backward.py:271:27
	v_or_b32_e32 v3, s38, v175
	.loc	1 275 21                        ; attention_backward.py:275:21
	s_mul_i32 s22, s54, s34
	.loc	1 277 24                        ; attention_backward.py:277:24
	v_cmp_gt_i32_e64 s19, s31, v1
	.loc	1 271 27                        ; attention_backward.py:271:27
	v_or_b32_e32 v4, s38, v176
	.loc	1 277 24                        ; attention_backward.py:277:24
	v_cmp_gt_i32_e64 s20, s31, v2
	.loc	1 280 29                        ; attention_backward.py:280:29
	v_dual_mov_b32 v166, v164 :: v_dual_add_nc_u32 v1, s22, v107
	.loc	1 271 27                        ; attention_backward.py:271:27
	v_or_b32_e32 v5, s38, v177
	.loc	1 277 24                        ; attention_backward.py:277:24
	v_cmp_gt_i32_e64 s21, s31, v3
	.loc	1 280 29                        ; attention_backward.py:280:29
	v_dual_mov_b32 v165, v164 :: v_dual_add_nc_u32 v2, s22, v134
	.loc	1 271 27                        ; attention_backward.py:271:27
	v_or_b32_e32 v6, s38, v178
	.loc	1 276 26                        ; attention_backward.py:276:26
	s_and_b32 vcc_lo, s2, s19
	.loc	1 277 24                        ; attention_backward.py:277:24
	v_cmp_gt_i32_e64 s14, s31, v4
	.loc	1 280 29                        ; attention_backward.py:280:29
	v_dual_mov_b32 v168, v164 :: v_dual_add_nc_u32 v3, s22, v135
	.loc	1 271 27                        ; attention_backward.py:271:27
	v_or_b32_e32 v7, s38, v179
	.loc	1 274 28                        ; attention_backward.py:274:28
	v_cndmask_b32_e32 v1, 0x80000000, v1, vcc_lo
	.loc	1 276 26                        ; attention_backward.py:276:26
	s_and_b32 vcc_lo, s2, s20
	.loc	1 277 24                        ; attention_backward.py:277:24
	v_cmp_gt_i32_e64 s15, s31, v5
	.loc	1 280 29                        ; attention_backward.py:280:29
	v_dual_mov_b32 v167, v164 :: v_dual_add_nc_u32 v4, s22, v108
	.loc	1 271 27                        ; attention_backward.py:271:27
	v_or_b32_e32 v8, s38, v253
	.loc	1 274 28                        ; attention_backward.py:274:28
	v_cndmask_b32_e32 v2, 0x80000000, v2, vcc_lo
	.loc	1 276 26                        ; attention_backward.py:276:26
	s_and_b32 vcc_lo, s2, s21
	.loc	1 277 24                        ; attention_backward.py:277:24
	v_cmp_gt_i32_e64 s16, s31, v6
	.loc	1 280 29                        ; attention_backward.py:280:29
	v_dual_mov_b32 v170, v164 :: v_dual_add_nc_u32 v5, s22, v136
	.loc	1 274 28                        ; attention_backward.py:274:28
	v_cndmask_b32_e32 v3, 0x80000000, v3, vcc_lo
	.loc	1 276 26                        ; attention_backward.py:276:26
	s_and_b32 vcc_lo, s2, s14
	.loc	1 277 24                        ; attention_backward.py:277:24
	v_cmp_gt_i32_e64 s17, s31, v7
	.loc	1 280 29                        ; attention_backward.py:280:29
	v_dual_mov_b32 v169, v164 :: v_dual_add_nc_u32 v6, s22, v109
	.loc	1 274 28                        ; attention_backward.py:274:28
	v_cndmask_b32_e32 v4, 0x80000000, v4, vcc_lo
	.loc	1 276 26                        ; attention_backward.py:276:26
	s_and_b32 vcc_lo, s2, s15
	.loc	1 277 24                        ; attention_backward.py:277:24
	v_cmp_gt_i32_e64 s18, s31, v8
	.loc	1 280 29                        ; attention_backward.py:280:29
	v_dual_mov_b32 v171, v164 :: v_dual_add_nc_u32 v8, s22, v111
	.loc	1 275 21                        ; attention_backward.py:275:21
	v_add_nc_u32_e32 v7, s22, v110
	.loc	1 274 28                        ; attention_backward.py:274:28
	v_cndmask_b32_e32 v5, 0x80000000, v5, vcc_lo
	.loc	1 276 26                        ; attention_backward.py:276:26
	s_and_b32 vcc_lo, s2, s16
	.loc	1 271 27                        ; attention_backward.py:271:27
	v_or_b32_e32 v17, s38, v141
	.loc	1 274 28                        ; attention_backward.py:274:28
	v_cndmask_b32_e32 v6, 0x80000000, v6, vcc_lo
	.loc	1 276 26                        ; attention_backward.py:276:26
	s_and_b32 vcc_lo, s2, s17
	.loc	1 274 28                        ; attention_backward.py:274:28
	v_cndmask_b32_e32 v7, 0x80000000, v7, vcc_lo
	.loc	1 276 26                        ; attention_backward.py:276:26
	s_and_b32 vcc_lo, s2, s18
	.loc	1 277 24                        ; attention_backward.py:277:24
	v_cmp_gt_i32_e64 s22, s31, v17
	.loc	1 274 28                        ; attention_backward.py:274:28
	v_cndmask_b32_e32 v8, 0x80000000, v8, vcc_lo
	s_clause 0x7
	buffer_load_u8 v16, v1, s[40:43], 0 offen
	buffer_load_u8 v15, v2, s[40:43], 0 offen
	buffer_load_u8 v14, v3, s[40:43], 0 offen
	buffer_load_u8 v13, v4, s[40:43], 0 offen
	buffer_load_u8 v12, v5, s[40:43], 0 offen
	buffer_load_u8 v11, v6, s[40:43], 0 offen
	buffer_load_u8 v10, v7, s[40:43], 0 offen
	buffer_load_u8 v9, v8, s[40:43], 0 offen
	v_add_nc_u32_e32 v1, 0, v163
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 324 21                        ; attention_backward.py:324:21
	s_and_b32 s63, s6, s22
	s_and_b32 s62, s7, s22
	s_and_b32 s64, s8, s22
	s_and_b32 s61, s9, s22
	s_and_b32 s59, s10, s22
	s_and_b32 s55, s11, s22
	s_and_b32 s60, s12, s22
	.loc	1 326 13                        ; attention_backward.py:326:13
	s_and_b32 vcc_lo, exec_lo, s5
	.loc	1 324 21                        ; attention_backward.py:324:21
	s_and_b32 s58, s13, s22
	.loc	1 274 28                        ; attention_backward.py:274:28
	s_waitcnt vmcnt(7)
	ds_store_b8 v137, v16
	s_waitcnt vmcnt(6)
	ds_store_b8 v137, v15 offset:64
	s_waitcnt vmcnt(5)
	ds_store_b8 v138, v14
	s_waitcnt vmcnt(4)
	ds_store_b8 v138, v13 offset:64
	s_waitcnt vmcnt(3)
	ds_store_b8 v139, v12
	s_waitcnt vmcnt(2)
	ds_store_b8 v139, v11 offset:64
	s_waitcnt vmcnt(1)
	ds_store_b8 v140, v10
	s_waitcnt vmcnt(0)
	ds_store_b8 v140, v9 offset:64
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b64 v[82:83], v1
	ds_load_b64 v[84:85], v193
	ds_load_b64 v[86:87], v194
	ds_load_b64 v[88:89], v195
	.loc	1 280 29                        ; attention_backward.py:280:29
	v_dual_mov_b32 v1, v164 :: v_dual_mov_b32 v6, v169
	v_dual_mov_b32 v2, v165 :: v_dual_mov_b32 v3, v166
	v_mov_b32_e32 v8, v171
	v_dual_mov_b32 v4, v167 :: v_dual_mov_b32 v5, v168
	v_mov_b32_e32 v7, v170
	s_waitcnt lgkmcnt(3)
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[1:8], v[82:83], v[112:113], v[1:8] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(2)
	v_wmma_i32_16x16x16_iu4 v[1:8], v[84:85], v[114:115], v[1:8] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(1)
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[1:8], v[86:87], v[116:117], v[1:8] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[1:8], v[88:89], v[118:119], v[1:8] neg_lo:[1,1,0]
	s_cbranch_vccnz .LBB0_17
; %bb.16:                               ;   in Loop: Header=BB0_15 Depth=1
	.loc	1 327 26                        ; attention_backward.py:327:26
	v_cmp_le_i32_e64 s22, v17, v155
	v_cmp_le_i32_e64 s23, v17, v156
	v_cmp_le_i32_e64 s24, v17, v157
	v_cmp_le_i32_e64 s25, v17, v158
	v_cmp_le_i32_e64 s26, v17, v159
	.loc	1 327 17 is_stmt 0              ; attention_backward.py:327:17
	s_and_b32 s22, s22, s62
	.loc	1 327 26                        ; attention_backward.py:327:26
	v_cmp_le_i32_e32 vcc_lo, v17, v154
	v_cmp_le_i32_e64 s27, v17, v160
	v_cmp_le_i32_e64 s28, v17, v161
	.loc	1 327 17                        ; attention_backward.py:327:17
	s_and_b32 s23, s23, s64
	s_and_b32 s24, s24, s61
	s_and_not1_b32 s62, s62, exec_lo
	s_and_b32 s22, s22, exec_lo
	s_and_b32 s25, s25, s59
	s_and_b32 s26, s26, s55
	s_or_b32 s62, s62, s22
	s_and_not1_b32 s22, s64, exec_lo
	s_and_b32 s23, s23, exec_lo
	s_and_not1_b32 s61, s61, exec_lo
	s_and_b32 s24, s24, exec_lo
	s_and_b32 s65, vcc_lo, s63
	s_and_b32 s27, s27, s60
	s_and_b32 s28, s28, s58
	s_or_b32 s64, s22, s23
	s_or_b32 s61, s61, s24
	s_and_not1_b32 s22, s59, exec_lo
	s_and_b32 s23, s25, exec_lo
	s_and_not1_b32 s24, s55, exec_lo
	s_and_b32 s25, s26, exec_lo
	s_and_not1_b32 s63, s63, exec_lo
	s_and_b32 s65, s65, exec_lo
	s_or_b32 s59, s22, s23
	s_or_b32 s55, s24, s25
	s_and_not1_b32 s22, s60, exec_lo
	s_and_b32 s23, s27, exec_lo
	s_and_not1_b32 s24, s58, exec_lo
	s_and_b32 s25, s28, exec_lo
	s_or_b32 s63, s63, s65
	s_or_b32 s60, s22, s23
	s_or_b32 s58, s24, s25
.LBB0_17:                               ;   in Loop: Header=BB0_15 Depth=1
	.loc	1 0 0                           ; attention_backward.py:0
	v_or_b32_e32 v82, s38, v152
	v_or_b32_e32 v91, s38, v153
	v_add_lshl_u32 v83, s54, v126, 1
	v_add_lshl_u32 v101, s54, v152, 1
	v_or_b32_e32 v92, s38, v151
	v_cmp_gt_i32_e32 vcc_lo, s31, v82
	v_or_b32_e32 v93, s38, v150
	v_add_nc_u32_e32 v85, 8, v83
	v_add_nc_u32_e32 v87, 12, v83
	v_cndmask_b32_e64 v86, 0x80000000, v83, s19
	v_cndmask_b32_e32 v82, 0x80000000, v101, vcc_lo
	v_cmp_gt_i32_e32 vcc_lo, s31, v91
	v_add_nc_u32_e32 v84, 4, v83
	v_add_nc_u32_e32 v88, 16, v83
	v_add_nc_u32_e32 v89, 20, v83
	v_add_nc_u32_e32 v90, 24, v83
	v_add_nc_u32_e32 v83, 28, v83
	v_cndmask_b32_e64 v84, 0x80000000, v84, s20
	v_cndmask_b32_e64 v85, 0x80000000, v85, s21
	v_cndmask_b32_e64 v87, 0x80000000, v87, s14
	v_cndmask_b32_e64 v98, 0x80000000, v88, s15
	v_cndmask_b32_e64 v83, 0x80000000, v83, s18
	v_cndmask_b32_e64 v99, 0x80000000, v89, s16
	v_cndmask_b32_e64 v100, 0x80000000, v90, s17
	s_clause 0x7
	buffer_load_u16 v90, v86, s[44:47], 0 offen
	buffer_load_u16 v89, v84, s[44:47], 0 offen
	buffer_load_u16 v88, v85, s[44:47], 0 offen
	buffer_load_u16 v87, v87, s[44:47], 0 offen
	buffer_load_u16 v86, v98, s[44:47], 0 offen
	buffer_load_u16 v85, v99, s[44:47], 0 offen
	buffer_load_u16 v84, v100, s[44:47], 0 offen
	buffer_load_u16 v83, v83, s[44:47], 0 offen
	v_add_nc_u32_e32 v98, 4, v101
	v_add_nc_u32_e32 v99, 8, v101
	v_or_b32_e32 v94, s38, v149
	v_or_b32_e32 v95, s38, v148
	v_or_b32_e32 v96, s38, v147
	v_cndmask_b32_e32 v91, 0x80000000, v98, vcc_lo
	v_cmp_gt_i32_e32 vcc_lo, s31, v92
	v_add_nc_u32_e32 v98, 12, v101
	v_or_b32_e32 v97, s38, v146
	v_add_nc_u32_e32 v100, 28, v101
	v_dual_cndmask_b32 v92, 0x80000000, v99 :: v_dual_add_nc_u32 v99, 16, v101
	v_cmp_gt_i32_e32 vcc_lo, s31, v93
	v_cndmask_b32_e32 v93, 0x80000000, v98, vcc_lo
	v_cmp_gt_i32_e32 vcc_lo, s31, v94
	v_add_nc_u32_e32 v98, 20, v101
	v_dual_cndmask_b32 v94, 0x80000000, v99 :: v_dual_add_nc_u32 v99, 24, v101
	v_cmp_gt_i32_e32 vcc_lo, s31, v95
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_cndmask_b32_e32 v101, 0x80000000, v98, vcc_lo
	v_cmp_gt_i32_e32 vcc_lo, s31, v96
	v_cndmask_b32_e32 v99, 0x80000000, v99, vcc_lo
	v_cmp_gt_i32_e32 vcc_lo, s31, v97
	v_cndmask_b32_e32 v100, 0x80000000, v100, vcc_lo
	s_clause 0x7
	buffer_load_u16 v98, v82, s[44:47], 0 offen
	buffer_load_u16 v97, v91, s[44:47], 0 offen
	buffer_load_u16 v96, v92, s[44:47], 0 offen
	buffer_load_u16 v95, v93, s[44:47], 0 offen
	buffer_load_u16 v94, v94, s[44:47], 0 offen
	buffer_load_u16 v93, v101, s[44:47], 0 offen
	buffer_load_u16 v92, v99, s[44:47], 0 offen
	buffer_load_u16 v91, v100, s[44:47], 0 offen
	.loc	1 328 13 is_stmt 1              ; attention_backward.py:328:13
	s_and_not1_b32 vcc_lo, exec_lo, s33
	s_cbranch_vccnz .LBB0_14
; %bb.18:                               ;   in Loop: Header=BB0_15 Depth=1
	.loc	1 329 26                        ; attention_backward.py:329:26
	scratch_load_b32 v82, off, off          ; 4-byte Folded Reload
	.loc	1 330 26                        ; attention_backward.py:330:26
	v_cmp_le_i32_e64 s26, v17, v133
	v_cmp_le_i32_e64 s27, v17, v255
	v_cmp_le_i32_e64 s28, v17, v142
	.loc	1 329 26                        ; attention_backward.py:329:26
	s_waitcnt vmcnt(0)
	v_cmp_ge_i32_e32 vcc_lo, v17, v82
	scratch_load_b32 v82, off, off offset:4 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_cmp_ge_i32_e64 s14, v17, v82
	scratch_load_b32 v82, off, off offset:8 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_cmp_ge_i32_e64 s15, v17, v82
	scratch_load_b32 v82, off, off offset:12 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_cmp_ge_i32_e64 s16, v17, v82
	scratch_load_b32 v82, off, off offset:16 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_cmp_ge_i32_e64 s17, v17, v82
	scratch_load_b32 v82, off, off offset:20 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_cmp_ge_i32_e64 s18, v17, v82
	scratch_load_b32 v82, off, off offset:24 ; 4-byte Folded Reload
	.loc	1 330 17                        ; attention_backward.py:330:17
	s_and_b32 s18, s18, s26
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_4) | instid1(SALU_CYCLE_1)
	s_and_b32 s18, s18, s55
	.loc	1 329 26                        ; attention_backward.py:329:26
	s_waitcnt vmcnt(0)
	v_cmp_ge_i32_e64 s19, v17, v82
	scratch_load_b32 v82, off, off offset:28 ; 4-byte Folded Reload
	.loc	1 330 17                        ; attention_backward.py:330:17
	s_and_b32 s19, s19, s27
	s_and_b32 s19, s19, s60
	.loc	1 329 26                        ; attention_backward.py:329:26
	s_waitcnt vmcnt(0)
	v_cmp_ge_i32_e64 s20, v17, v82
	.loc	1 330 26                        ; attention_backward.py:330:26
	scratch_load_b32 v82, off, off offset:32 ; 4-byte Folded Reload
	.loc	1 330 17 is_stmt 0              ; attention_backward.py:330:17
	s_and_b32 s20, s20, s28
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_4) | instid1(SALU_CYCLE_1)
	s_and_b32 s20, s20, s58
	.loc	1 330 26                        ; attention_backward.py:330:26
	s_waitcnt vmcnt(0)
	v_cmp_le_i32_e64 s21, v17, v82
	scratch_load_b32 v82, off, off offset:36 ; 4-byte Folded Reload
	.loc	1 330 17                        ; attention_backward.py:330:17
	s_and_b32 s21, vcc_lo, s21
	s_and_b32 s21, s21, s63
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_b32 s21, s21, exec_lo
	.loc	1 330 26                        ; attention_backward.py:330:26
	s_waitcnt vmcnt(0)
	v_cmp_le_i32_e64 s22, v17, v82
	scratch_load_b32 v82, off, off offset:40 ; 4-byte Folded Reload
	.loc	1 330 17                        ; attention_backward.py:330:17
	s_and_b32 s14, s14, s22
	s_and_not1_b32 s22, s63, exec_lo
	s_and_b32 s14, s14, s62
	s_or_b32 s63, s22, s21
	s_and_b32 s14, s14, exec_lo
	s_and_not1_b32 s21, s61, exec_lo
	.loc	1 330 26                        ; attention_backward.py:330:26
	s_waitcnt vmcnt(0)
	v_cmp_le_i32_e64 s23, v17, v82
	scratch_load_b32 v82, off, off offset:44 ; 4-byte Folded Reload
	.loc	1 330 17                        ; attention_backward.py:330:17
	s_and_b32 s15, s15, s23
	s_and_not1_b32 s23, s62, exec_lo
	s_and_b32 s15, s15, s64
	s_or_b32 s62, s23, s14
	s_and_not1_b32 s14, s64, exec_lo
	s_and_b32 s15, s15, exec_lo
	s_delay_alu instid0(SALU_CYCLE_1)
	s_or_b32 s64, s14, s15
	s_and_not1_b32 s14, s59, exec_lo
	.loc	1 330 26                        ; attention_backward.py:330:26
	s_waitcnt vmcnt(0)
	v_cmp_le_i32_e64 s24, v17, v82
	scratch_load_b32 v82, off, off offset:48 ; 4-byte Folded Reload
	.loc	1 330 17                        ; attention_backward.py:330:17
	s_and_b32 s16, s16, s24
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_and_b32 s16, s16, s61
	s_and_b32 s16, s16, exec_lo
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_4) | instid1(SALU_CYCLE_1)
	s_or_b32 s61, s21, s16
	s_and_not1_b32 s16, s55, exec_lo
	.loc	1 330 26                        ; attention_backward.py:330:26
	s_waitcnt vmcnt(0)
	v_cmp_le_i32_e64 s25, v17, v82
	.loc	1 330 17                        ; attention_backward.py:330:17
	s_and_b32 s17, s17, s25
	s_and_b32 s17, s17, s59
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_b32 s15, s17, exec_lo
	s_and_b32 s17, s18, exec_lo
	s_or_b32 s59, s14, s15
	s_or_b32 s55, s16, s17
	s_and_not1_b32 s14, s60, exec_lo
	s_and_b32 s15, s19, exec_lo
	s_and_not1_b32 s16, s58, exec_lo
	s_and_b32 s17, s20, exec_lo
	s_or_b32 s60, s14, s15
	s_or_b32 s58, s16, s17
	s_branch .LBB0_14
.LBB0_19:                               ; %._crit_edge82
	.loc	1 401 13 is_stmt 1              ; attention_backward.py:401:13
	scratch_load_b32 v24, off, off offset:52 ; 4-byte Folded Reload
	.loc	1 408 40                        ; attention_backward.py:408:40
	v_cmp_gt_i32_e64 s1, s53, v152
	v_cmp_gt_i32_e64 s2, s53, v153
	v_cmp_gt_i32_e64 s3, s53, v151
	v_cmp_gt_i32_e64 s5, s53, v150
	.loc	1 405 9                         ; attention_backward.py:405:9
	s_and_b32 s37, s37, 0xffff
	.loc	1 408 18                        ; attention_backward.py:408:18
	s_and_b32 s1, s4, s1
	s_mov_b32 s39, 0x31027000
	s_mov_b32 s38, 0x7ffffffe
	.loc	1 408 40 is_stmt 0              ; attention_backward.py:408:40
	v_cmp_gt_i32_e64 s6, s53, v149
	v_cmp_gt_i32_e64 s7, s53, v148
	.loc	1 168 40 is_stmt 1              ; attention_backward.py:168:40
	v_or_b32_e32 v23, 16, v152
	.loc	1 408 40                        ; attention_backward.py:408:40
	v_cmp_gt_i32_e64 s8, s53, v147
	.loc	1 168 40                        ; attention_backward.py:168:40
	v_or_b32_e32 v22, 18, v152
	.loc	1 408 40                        ; attention_backward.py:408:40
	v_cmp_gt_i32_e64 s9, s53, v146
	.loc	1 168 40                        ; attention_backward.py:168:40
	v_or_b32_e32 v21, 20, v152
	.loc	1 408 40                        ; attention_backward.py:408:40
	v_cmp_gt_i32_e64 s10, s53, v23
	.loc	1 168 40                        ; attention_backward.py:168:40
	v_or_b32_e32 v20, 22, v152
	.loc	1 408 40                        ; attention_backward.py:408:40
	v_cmp_gt_i32_e64 s11, s53, v22
	.loc	1 168 40                        ; attention_backward.py:168:40
	v_or_b32_e32 v19, 24, v152
	.loc	1 408 40                        ; attention_backward.py:408:40
	v_cmp_gt_i32_e64 s12, s53, v21
	.loc	1 168 40                        ; attention_backward.py:168:40
	v_or_b32_e32 v18, 26, v152
	.loc	1 408 40                        ; attention_backward.py:408:40
	v_cmp_gt_i32_e64 s13, s53, v20
	.loc	1 168 40                        ; attention_backward.py:168:40
	v_or_b32_e32 v17, 28, v152
	.loc	1 408 40                        ; attention_backward.py:408:40
	v_cmp_gt_i32_e64 s14, s53, v19
	.loc	1 168 40                        ; attention_backward.py:168:40
	v_or_b32_e32 v16, 30, v152
	.loc	1 408 40                        ; attention_backward.py:408:40
	v_cmp_gt_i32_e64 s15, s53, v18
	.loc	1 168 40                        ; attention_backward.py:168:40
	v_or_b32_e32 v15, 32, v152
	.loc	1 408 40                        ; attention_backward.py:408:40
	v_cmp_gt_i32_e64 s16, s53, v17
	.loc	1 168 40                        ; attention_backward.py:168:40
	v_or_b32_e32 v14, 34, v152
	.loc	1 408 40                        ; attention_backward.py:408:40
	v_cmp_gt_i32_e64 s17, s53, v16
	.loc	1 168 40                        ; attention_backward.py:168:40
	v_or_b32_e32 v13, 36, v152
	.loc	1 408 40                        ; attention_backward.py:408:40
	v_cmp_gt_i32_e64 s18, s53, v15
	.loc	1 168 40                        ; attention_backward.py:168:40
	v_or_b32_e32 v12, 38, v152
	.loc	1 408 40                        ; attention_backward.py:408:40
	v_cmp_gt_i32_e64 s19, s53, v14
	.loc	1 168 40                        ; attention_backward.py:168:40
	v_or_b32_e32 v11, 40, v152
	.loc	1 408 40                        ; attention_backward.py:408:40
	v_cmp_gt_i32_e64 s20, s53, v13
	.loc	1 168 40                        ; attention_backward.py:168:40
	v_or_b32_e32 v10, 42, v152
	.loc	1 408 40                        ; attention_backward.py:408:40
	v_cmp_gt_i32_e64 s21, s53, v12
	.loc	1 168 40                        ; attention_backward.py:168:40
	v_or_b32_e32 v9, 44, v152
	.loc	1 408 40                        ; attention_backward.py:408:40
	v_cmp_gt_i32_e64 s22, s53, v11
	.loc	1 168 40                        ; attention_backward.py:168:40
	v_or_b32_e32 v8, 46, v152
	.loc	1 408 40                        ; attention_backward.py:408:40
	v_cmp_gt_i32_e64 s23, s53, v10
	.loc	1 168 40                        ; attention_backward.py:168:40
	v_or_b32_e32 v7, 48, v152
	.loc	1 408 40                        ; attention_backward.py:408:40
	v_cmp_gt_i32_e64 s24, s53, v9
	.loc	1 168 40                        ; attention_backward.py:168:40
	v_or_b32_e32 v6, 50, v152
	.loc	1 408 40                        ; attention_backward.py:408:40
	v_cmp_gt_i32_e64 s25, s53, v8
	.loc	1 168 40                        ; attention_backward.py:168:40
	v_or_b32_e32 v5, 52, v152
	.loc	1 408 40                        ; attention_backward.py:408:40
	v_cmp_gt_i32_e64 s26, s53, v7
	.loc	1 168 40                        ; attention_backward.py:168:40
	v_or_b32_e32 v4, 54, v152
	.loc	1 408 40                        ; attention_backward.py:408:40
	v_cmp_gt_i32_e64 s27, s53, v6
	.loc	1 168 40                        ; attention_backward.py:168:40
	v_or_b32_e32 v3, 56, v152
	v_or_b32_e32 v1, 60, v152
	v_or_b32_e32 v2, 58, v152
	.loc	1 408 40                        ; attention_backward.py:408:40
	v_cmp_gt_i32_e64 s28, s53, v5
	.loc	1 168 40                        ; attention_backward.py:168:40
	v_or_b32_e32 v0, 62, v152
	.loc	1 408 40                        ; attention_backward.py:408:40
	v_cmp_gt_i32_e64 s29, s53, v4
	v_cmp_gt_i32_e64 s30, s53, v3
	v_cmp_gt_i32_e64 s0, s53, v2
	v_cmp_gt_i32_e32 vcc_lo, s53, v1
	.loc	1 408 18 is_stmt 0              ; attention_backward.py:408:18
	s_and_b32 s0, s4, s0
	s_and_b32 vcc_lo, s4, vcc_lo
	.loc	1 401 13 is_stmt 1              ; attention_backward.py:401:13
	s_waitcnt vmcnt(0)
	v_mul_lo_u32 v24, v24, s53
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 405 9                         ; attention_backward.py:405:9
	v_add_lshl_u32 v25, v24, v152, 2
	v_add_lshl_u32 v26, v24, v153, 2
	v_add_lshl_u32 v27, v24, v151, 2
	v_add_lshl_u32 v28, v24, v147, 2
	v_add_lshl_u32 v23, v24, v23, 2
	v_cndmask_b32_e64 v25, 0x80000000, v25, s1
	.loc	1 408 18                        ; attention_backward.py:408:18
	s_and_b32 s1, s4, s2
	s_and_b32 s2, s4, s5
	.loc	1 405 9                         ; attention_backward.py:405:9
	v_cndmask_b32_e64 v26, 0x80000000, v26, s1
	.loc	1 408 18                        ; attention_backward.py:408:18
	s_and_b32 s1, s4, s3
	.loc	1 405 9                         ; attention_backward.py:405:9
	buffer_store_b32 v74, v25, s[36:39], 0 offen
	v_cndmask_b32_e64 v27, 0x80000000, v27, s1
	v_add_lshl_u32 v25, v24, v150, 2
	s_clause 0x1
	buffer_store_b32 v75, v26, s[36:39], 0 offen
	buffer_store_b32 v76, v27, s[36:39], 0 offen
	v_add_lshl_u32 v26, v24, v149, 2
	v_cndmask_b32_e64 v25, 0x80000000, v25, s2
	.loc	1 408 18                        ; attention_backward.py:408:18
	s_and_b32 s2, s4, s6
	.loc	1 405 9                         ; attention_backward.py:405:9
	v_add_lshl_u32 v27, v24, v148, 2
	v_add_lshl_u32 v22, v24, v22, 2
	v_cndmask_b32_e64 v26, 0x80000000, v26, s2
	.loc	1 408 18                        ; attention_backward.py:408:18
	s_and_b32 s2, s4, s7
	.loc	1 405 9                         ; attention_backward.py:405:9
	s_clause 0x1
	buffer_store_b32 v77, v25, s[36:39], 0 offen
	buffer_store_b32 v78, v26, s[36:39], 0 offen
	v_add_lshl_u32 v25, v24, v146, 2
	v_cndmask_b32_e64 v27, 0x80000000, v27, s2
	.loc	1 408 18                        ; attention_backward.py:408:18
	s_and_b32 s2, s4, s8
	.loc	1 405 9                         ; attention_backward.py:405:9
	v_add_lshl_u32 v21, v24, v21, 2
	v_cndmask_b32_e64 v28, 0x80000000, v28, s2
	.loc	1 408 18                        ; attention_backward.py:408:18
	s_and_b32 s2, s4, s9
	.loc	1 405 9                         ; attention_backward.py:405:9
	v_add_lshl_u32 v20, v24, v20, 2
	v_cndmask_b32_e64 v25, 0x80000000, v25, s2
	.loc	1 408 18                        ; attention_backward.py:408:18
	s_and_b32 s2, s4, s10
	.loc	1 405 9                         ; attention_backward.py:405:9
	v_add_lshl_u32 v19, v24, v19, 2
	v_cndmask_b32_e64 v23, 0x80000000, v23, s2
	.loc	1 408 18                        ; attention_backward.py:408:18
	s_and_b32 s2, s4, s11
	.loc	1 405 9                         ; attention_backward.py:405:9
	v_add_lshl_u32 v18, v24, v18, 2
	v_cndmask_b32_e64 v22, 0x80000000, v22, s2
	.loc	1 408 18                        ; attention_backward.py:408:18
	s_and_b32 s2, s4, s12
	.loc	1 405 9                         ; attention_backward.py:405:9
	v_add_lshl_u32 v17, v24, v17, 2
	v_cndmask_b32_e64 v21, 0x80000000, v21, s2
	.loc	1 408 18                        ; attention_backward.py:408:18
	s_and_b32 s2, s4, s13
	.loc	1 405 9                         ; attention_backward.py:405:9
	v_add_lshl_u32 v16, v24, v16, 2
	v_cndmask_b32_e64 v20, 0x80000000, v20, s2
	.loc	1 408 18                        ; attention_backward.py:408:18
	s_and_b32 s2, s4, s14
	.loc	1 405 9                         ; attention_backward.py:405:9
	v_add_lshl_u32 v15, v24, v15, 2
	v_cndmask_b32_e64 v19, 0x80000000, v19, s2
	.loc	1 408 18                        ; attention_backward.py:408:18
	s_and_b32 s2, s4, s15
	.loc	1 405 9                         ; attention_backward.py:405:9
	v_add_lshl_u32 v14, v24, v14, 2
	v_cndmask_b32_e64 v18, 0x80000000, v18, s2
	.loc	1 408 18                        ; attention_backward.py:408:18
	s_and_b32 s2, s4, s16
	.loc	1 405 9                         ; attention_backward.py:405:9
	v_add_lshl_u32 v13, v24, v13, 2
	v_cndmask_b32_e64 v17, 0x80000000, v17, s2
	.loc	1 408 18                        ; attention_backward.py:408:18
	s_and_b32 s2, s4, s17
	.loc	1 405 9                         ; attention_backward.py:405:9
	v_add_lshl_u32 v12, v24, v12, 2
	v_cndmask_b32_e64 v16, 0x80000000, v16, s2
	.loc	1 408 18                        ; attention_backward.py:408:18
	s_and_b32 s2, s4, s18
	.loc	1 405 9                         ; attention_backward.py:405:9
	v_add_lshl_u32 v11, v24, v11, 2
	v_cndmask_b32_e64 v15, 0x80000000, v15, s2
	.loc	1 408 18                        ; attention_backward.py:408:18
	s_and_b32 s2, s4, s19
	.loc	1 405 9                         ; attention_backward.py:405:9
	v_add_lshl_u32 v10, v24, v10, 2
	v_cndmask_b32_e64 v14, 0x80000000, v14, s2
	.loc	1 408 18                        ; attention_backward.py:408:18
	s_and_b32 s2, s4, s20
	.loc	1 405 9                         ; attention_backward.py:405:9
	v_add_lshl_u32 v9, v24, v9, 2
	v_cndmask_b32_e64 v13, 0x80000000, v13, s2
	.loc	1 408 18                        ; attention_backward.py:408:18
	s_and_b32 s2, s4, s21
	.loc	1 405 9                         ; attention_backward.py:405:9
	v_add_lshl_u32 v8, v24, v8, 2
	v_cndmask_b32_e64 v12, 0x80000000, v12, s2
	.loc	1 408 18                        ; attention_backward.py:408:18
	s_and_b32 s2, s4, s22
	.loc	1 405 9                         ; attention_backward.py:405:9
	v_add_lshl_u32 v7, v24, v7, 2
	v_cndmask_b32_e64 v11, 0x80000000, v11, s2
	.loc	1 408 18                        ; attention_backward.py:408:18
	s_and_b32 s2, s4, s23
	.loc	1 405 9                         ; attention_backward.py:405:9
	v_add_lshl_u32 v6, v24, v6, 2
	v_cndmask_b32_e64 v10, 0x80000000, v10, s2
	.loc	1 408 18                        ; attention_backward.py:408:18
	s_and_b32 s2, s4, s24
	.loc	1 405 9                         ; attention_backward.py:405:9
	v_add_lshl_u32 v5, v24, v5, 2
	v_cndmask_b32_e64 v9, 0x80000000, v9, s2
	.loc	1 408 18                        ; attention_backward.py:408:18
	s_and_b32 s2, s4, s25
	.loc	1 405 9                         ; attention_backward.py:405:9
	v_add_lshl_u32 v4, v24, v4, 2
	v_cndmask_b32_e64 v8, 0x80000000, v8, s2
	.loc	1 408 18                        ; attention_backward.py:408:18
	s_and_b32 s2, s4, s26
	.loc	1 405 9                         ; attention_backward.py:405:9
	v_add_lshl_u32 v3, v24, v3, 2
	v_cndmask_b32_e64 v7, 0x80000000, v7, s2
	.loc	1 408 18                        ; attention_backward.py:408:18
	s_and_b32 s2, s4, s27
	.loc	1 408 40 is_stmt 0              ; attention_backward.py:408:40
	v_cmp_gt_i32_e64 s1, s53, v0
	.loc	1 405 9 is_stmt 1               ; attention_backward.py:405:9
	v_cndmask_b32_e64 v6, 0x80000000, v6, s2
	.loc	1 408 18                        ; attention_backward.py:408:18
	s_and_b32 s2, s4, s28
	.loc	1 405 9                         ; attention_backward.py:405:9
	v_add_lshl_u32 v2, v24, v2, 2
	v_cndmask_b32_e64 v5, 0x80000000, v5, s2
	.loc	1 408 18                        ; attention_backward.py:408:18
	s_and_b32 s2, s4, s29
	.loc	1 405 9                         ; attention_backward.py:405:9
	v_add_lshl_u32 v1, v24, v1, 2
	v_cndmask_b32_e64 v4, 0x80000000, v4, s2
	.loc	1 408 18                        ; attention_backward.py:408:18
	s_and_b32 s2, s4, s30
	.loc	1 405 9                         ; attention_backward.py:405:9
	v_add_lshl_u32 v0, v24, v0, 2
	v_cndmask_b32_e64 v3, 0x80000000, v3, s2
	v_cndmask_b32_e64 v2, 0x80000000, v2, s0
	v_cndmask_b32_e32 v1, 0x80000000, v1, vcc_lo
	.loc	1 408 18                        ; attention_backward.py:408:18
	s_and_b32 vcc_lo, s4, s1
	.loc	1 405 9                         ; attention_backward.py:405:9
	s_clause 0x1
	buffer_store_b32 v79, v27, s[36:39], 0 offen
	buffer_store_b32 v80, v28, s[36:39], 0 offen
	v_cndmask_b32_e32 v0, 0x80000000, v0, vcc_lo
	s_clause 0x18
	buffer_store_b32 v81, v25, s[36:39], 0 offen
	buffer_store_b32 v66, v23, s[36:39], 0 offen
	buffer_store_b32 v67, v22, s[36:39], 0 offen
	buffer_store_b32 v68, v21, s[36:39], 0 offen
	buffer_store_b32 v69, v20, s[36:39], 0 offen
	buffer_store_b32 v70, v19, s[36:39], 0 offen
	buffer_store_b32 v71, v18, s[36:39], 0 offen
	buffer_store_b32 v72, v17, s[36:39], 0 offen
	buffer_store_b32 v73, v16, s[36:39], 0 offen
	buffer_store_b32 v58, v15, s[36:39], 0 offen
	buffer_store_b32 v59, v14, s[36:39], 0 offen
	buffer_store_b32 v60, v13, s[36:39], 0 offen
	buffer_store_b32 v61, v12, s[36:39], 0 offen
	buffer_store_b32 v62, v11, s[36:39], 0 offen
	buffer_store_b32 v63, v10, s[36:39], 0 offen
	buffer_store_b32 v64, v9, s[36:39], 0 offen
	buffer_store_b32 v65, v8, s[36:39], 0 offen
	buffer_store_b32 v50, v7, s[36:39], 0 offen
	buffer_store_b32 v51, v6, s[36:39], 0 offen
	buffer_store_b32 v52, v5, s[36:39], 0 offen
	buffer_store_b32 v53, v4, s[36:39], 0 offen
	buffer_store_b32 v54, v3, s[36:39], 0 offen
	buffer_store_b32 v55, v2, s[36:39], 0 offen
	buffer_store_b32 v56, v1, s[36:39], 0 offen
	buffer_store_b32 v57, v0, s[36:39], 0 offen
	.loc	1 60 5                          ; attention_backward.py:60:5
	s_endpgm
.Ltmp341:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_attention_bwd_dq_int4xbf16_fp32_runtime_outbfloat16_doutbfloat16_float32_d64_dv64_shaperuntime_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1
		.amdhsa_group_segment_fixed_size 0
		.amdhsa_private_segment_fixed_size 60
		.amdhsa_kernarg_size 184
		.amdhsa_user_sgpr_count 2
		.amdhsa_user_sgpr_dispatch_ptr 0
		.amdhsa_user_sgpr_queue_ptr 0
		.amdhsa_user_sgpr_kernarg_segment_ptr 1
		.amdhsa_user_sgpr_dispatch_id 0
		.amdhsa_user_sgpr_private_segment_size 0
		.amdhsa_wavefront_size32 1
		.amdhsa_uses_dynamic_stack 0
		.amdhsa_enable_private_segment 1
		.amdhsa_system_sgpr_workgroup_id_x 1
		.amdhsa_system_sgpr_workgroup_id_y 1
		.amdhsa_system_sgpr_workgroup_id_z 0
		.amdhsa_system_sgpr_workgroup_info 0
		.amdhsa_system_vgpr_workitem_id 0
		.amdhsa_next_free_vgpr 256
		.amdhsa_next_free_sgpr 87
		.amdhsa_reserve_vcc 1
		.amdhsa_float_round_mode_32 0
		.amdhsa_float_round_mode_16_64 0
		.amdhsa_float_denorm_mode_32 3
		.amdhsa_float_denorm_mode_16_64 3
		.amdhsa_dx10_clamp 1
		.amdhsa_ieee_mode 1
		.amdhsa_fp16_overflow 0
		.amdhsa_workgroup_processor_mode 1
		.amdhsa_memory_ordered 1
		.amdhsa_forward_progress 1
		.amdhsa_shared_vgpr_count 0
		.amdhsa_inst_pref_size 63
		.amdhsa_exception_fp_ieee_invalid_op 0
		.amdhsa_exception_fp_denorm_src 0
		.amdhsa_exception_fp_ieee_div_zero 0
		.amdhsa_exception_fp_ieee_overflow 0
		.amdhsa_exception_fp_ieee_underflow 0
		.amdhsa_exception_fp_ieee_inexact 0
		.amdhsa_exception_int_div_zero 0
	.end_amdhsa_kernel
	.text
.Lfunc_end0:
	.size	amd_strix_halo_gfx1151_attention_bwd_dq_int4xbf16_fp32_runtime_outbfloat16_doutbfloat16_float32_d64_dv64_shaperuntime_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1, .Lfunc_end0-amd_strix_halo_gfx1151_attention_bwd_dq_int4xbf16_fp32_runtime_outbfloat16_doutbfloat16_float32_d64_dv64_shaperuntime_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_attention_bwd_dq_int4xbf16_fp32_runtime_outbfloat16_doutbfloat16_float32_d64_dv64_shaperuntime_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.num_vgpr, 256
	.set amd_strix_halo_gfx1151_attention_bwd_dq_int4xbf16_fp32_runtime_outbfloat16_doutbfloat16_float32_d64_dv64_shaperuntime_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.num_agpr, 0
	.set amd_strix_halo_gfx1151_attention_bwd_dq_int4xbf16_fp32_runtime_outbfloat16_doutbfloat16_float32_d64_dv64_shaperuntime_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.numbered_sgpr, 87
	.set amd_strix_halo_gfx1151_attention_bwd_dq_int4xbf16_fp32_runtime_outbfloat16_doutbfloat16_float32_d64_dv64_shaperuntime_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_attention_bwd_dq_int4xbf16_fp32_runtime_outbfloat16_doutbfloat16_float32_d64_dv64_shaperuntime_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.private_seg_size, 60
	.set amd_strix_halo_gfx1151_attention_bwd_dq_int4xbf16_fp32_runtime_outbfloat16_doutbfloat16_float32_d64_dv64_shaperuntime_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.uses_vcc, 1
	.set amd_strix_halo_gfx1151_attention_bwd_dq_int4xbf16_fp32_runtime_outbfloat16_doutbfloat16_float32_d64_dv64_shaperuntime_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.uses_flat_scratch, 0
	.set amd_strix_halo_gfx1151_attention_bwd_dq_int4xbf16_fp32_runtime_outbfloat16_doutbfloat16_float32_d64_dv64_shaperuntime_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_attention_bwd_dq_int4xbf16_fp32_runtime_outbfloat16_doutbfloat16_float32_d64_dv64_shaperuntime_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.has_recursion, 0
	.set amd_strix_halo_gfx1151_attention_bwd_dq_int4xbf16_fp32_runtime_outbfloat16_doutbfloat16_float32_d64_dv64_shaperuntime_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 25136
; TotalNumSgprs: 89
; NumVgprs: 256
; ScratchSize: 60
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 31
; NumSGPRsForWavesPerEU: 89
; NumVGPRsForWavesPerEU: 256
; Occupancy: 5
; WaveLimiterHint : 0
; COMPUTE_PGM_RSRC2:SCRATCH_EN: 1
; COMPUTE_PGM_RSRC2:USER_SGPR: 2
; COMPUTE_PGM_RSRC2:TRAP_HANDLER: 0
; COMPUTE_PGM_RSRC2:TGID_X_EN: 1
; COMPUTE_PGM_RSRC2:TGID_Y_EN: 1
; COMPUTE_PGM_RSRC2:TGID_Z_EN: 0
; COMPUTE_PGM_RSRC2:TIDIG_COMP_CNT: 0
	.text
	.p2alignl 7, 3214868480
	.fill 96, 4, 3214868480
	.section	.AMDGPU.gpr_maximums,"",@progbits
	.set amdgpu.max_num_vgpr, 0
	.set amdgpu.max_num_agpr, 0
	.set amdgpu.max_num_sgpr, 0
	.set amdgpu.max_num_named_barrier, 0
	.text
	.section	.debug_abbrev,"",@progbits
	.byte	1                               ; Abbreviation Code
	.byte	17                              ; DW_TAG_compile_unit
	.byte	1                               ; DW_CHILDREN_yes
	.byte	37                              ; DW_AT_producer
	.byte	14                              ; DW_FORM_strp
	.byte	19                              ; DW_AT_language
	.byte	5                               ; DW_FORM_data2
	.byte	3                               ; DW_AT_name
	.byte	14                              ; DW_FORM_strp
	.byte	16                              ; DW_AT_stmt_list
	.byte	23                              ; DW_FORM_sec_offset
	.byte	27                              ; DW_AT_comp_dir
	.byte	14                              ; DW_FORM_strp
	.byte	17                              ; DW_AT_low_pc
	.byte	1                               ; DW_FORM_addr
	.byte	18                              ; DW_AT_high_pc
	.byte	6                               ; DW_FORM_data4
	.byte	0                               ; EOM(1)
	.byte	0                               ; EOM(2)
	.byte	2                               ; Abbreviation Code
	.byte	46                              ; DW_TAG_subprogram
	.byte	0                               ; DW_CHILDREN_no
	.byte	3                               ; DW_AT_name
	.byte	14                              ; DW_FORM_strp
	.byte	32                              ; DW_AT_inline
	.byte	11                              ; DW_FORM_data1
	.byte	0                               ; EOM(1)
	.byte	0                               ; EOM(2)
	.byte	3                               ; Abbreviation Code
	.byte	46                              ; DW_TAG_subprogram
	.byte	1                               ; DW_CHILDREN_yes
	.byte	17                              ; DW_AT_low_pc
	.byte	1                               ; DW_FORM_addr
	.byte	18                              ; DW_AT_high_pc
	.byte	6                               ; DW_FORM_data4
	.byte	49                              ; DW_AT_abstract_origin
	.byte	19                              ; DW_FORM_ref4
	.byte	0                               ; EOM(1)
	.byte	0                               ; EOM(2)
	.byte	4                               ; Abbreviation Code
	.byte	29                              ; DW_TAG_inlined_subroutine
	.byte	1                               ; DW_CHILDREN_yes
	.byte	49                              ; DW_AT_abstract_origin
	.byte	19                              ; DW_FORM_ref4
	.byte	85                              ; DW_AT_ranges
	.byte	23                              ; DW_FORM_sec_offset
	.byte	88                              ; DW_AT_call_file
	.byte	11                              ; DW_FORM_data1
	.byte	89                              ; DW_AT_call_line
	.byte	11                              ; DW_FORM_data1
	.byte	87                              ; DW_AT_call_column
	.byte	11                              ; DW_FORM_data1
	.byte	0                               ; EOM(1)
	.byte	0                               ; EOM(2)
	.byte	5                               ; Abbreviation Code
	.byte	29                              ; DW_TAG_inlined_subroutine
	.byte	0                               ; DW_CHILDREN_no
	.byte	49                              ; DW_AT_abstract_origin
	.byte	19                              ; DW_FORM_ref4
	.byte	85                              ; DW_AT_ranges
	.byte	23                              ; DW_FORM_sec_offset
	.byte	88                              ; DW_AT_call_file
	.byte	11                              ; DW_FORM_data1
	.byte	89                              ; DW_AT_call_line
	.byte	5                               ; DW_FORM_data2
	.byte	87                              ; DW_AT_call_column
	.byte	11                              ; DW_FORM_data1
	.byte	0                               ; EOM(1)
	.byte	0                               ; EOM(2)
	.byte	6                               ; Abbreviation Code
	.byte	29                              ; DW_TAG_inlined_subroutine
	.byte	1                               ; DW_CHILDREN_yes
	.byte	49                              ; DW_AT_abstract_origin
	.byte	19                              ; DW_FORM_ref4
	.byte	85                              ; DW_AT_ranges
	.byte	23                              ; DW_FORM_sec_offset
	.byte	88                              ; DW_AT_call_file
	.byte	11                              ; DW_FORM_data1
	.byte	89                              ; DW_AT_call_line
	.byte	5                               ; DW_FORM_data2
	.byte	87                              ; DW_AT_call_column
	.byte	11                              ; DW_FORM_data1
	.byte	0                               ; EOM(1)
	.byte	0                               ; EOM(2)
	.byte	7                               ; Abbreviation Code
	.byte	29                              ; DW_TAG_inlined_subroutine
	.byte	0                               ; DW_CHILDREN_no
	.byte	49                              ; DW_AT_abstract_origin
	.byte	19                              ; DW_FORM_ref4
	.byte	85                              ; DW_AT_ranges
	.byte	23                              ; DW_FORM_sec_offset
	.byte	88                              ; DW_AT_call_file
	.byte	11                              ; DW_FORM_data1
	.byte	89                              ; DW_AT_call_line
	.byte	11                              ; DW_FORM_data1
	.byte	87                              ; DW_AT_call_column
	.byte	11                              ; DW_FORM_data1
	.byte	0                               ; EOM(1)
	.byte	0                               ; EOM(2)
	.byte	0                               ; EOM(3)
	.section	.debug_info,"",@progbits
.Lcu_begin0:
	.long	.Ldebug_info_end0-.Ldebug_info_start0 ; Length of Unit
.Ldebug_info_start0:
	.short	4                               ; DWARF version number
	.long	.debug_abbrev                   ; Offset Into Abbrev. Section
	.byte	8                               ; Address Size (in bytes)
	.byte	1                               ; Abbrev [1] 0xb:0x87 DW_TAG_compile_unit
	.long	.Linfo_string0                  ; DW_AT_producer
	.short	2                               ; DW_AT_language
	.long	.Linfo_string1                  ; DW_AT_name
	.long	.Lline_table_start0             ; DW_AT_stmt_list
	.long	.Linfo_string2                  ; DW_AT_comp_dir
	.quad	.Lfunc_begin0                   ; DW_AT_low_pc
	.long	.Lfunc_end0-.Lfunc_begin0       ; DW_AT_high_pc
	.byte	2                               ; Abbrev [2] 0x2a:0x6 DW_TAG_subprogram
	.long	.Linfo_string3                  ; DW_AT_name
	.byte	1                               ; DW_AT_inline
	.byte	3                               ; Abbrev [3] 0x30:0x61 DW_TAG_subprogram
	.quad	.Lfunc_begin0                   ; DW_AT_low_pc
	.long	.Lfunc_end0-.Lfunc_begin0       ; DW_AT_high_pc
	.long	42                              ; DW_AT_abstract_origin
	.byte	4                               ; Abbrev [4] 0x41:0x1a DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges0                 ; DW_AT_ranges
	.byte	1                               ; DW_AT_call_file
	.byte	176                             ; DW_AT_call_line
	.byte	17                              ; DW_AT_call_column
	.byte	5                               ; Abbrev [5] 0x4d:0xd DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges1                 ; DW_AT_ranges
	.byte	2                               ; DW_AT_call_file
	.short	293                             ; DW_AT_call_line
	.byte	12                              ; DW_AT_call_column
	.byte	0                               ; End Of Children Mark
	.byte	6                               ; Abbrev [6] 0x5b:0x1a DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges2                 ; DW_AT_ranges
	.byte	1                               ; DW_AT_call_file
	.short	258                             ; DW_AT_call_line
	.byte	25                              ; DW_AT_call_column
	.byte	7                               ; Abbrev [7] 0x68:0xc DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges3                 ; DW_AT_ranges
	.byte	2                               ; DW_AT_call_file
	.byte	191                             ; DW_AT_call_line
	.byte	16                              ; DW_AT_call_column
	.byte	0                               ; End Of Children Mark
	.byte	6                               ; Abbrev [6] 0x75:0x1b DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges4                 ; DW_AT_ranges
	.byte	1                               ; DW_AT_call_file
	.short	262                             ; DW_AT_call_line
	.byte	33                              ; DW_AT_call_column
	.byte	5                               ; Abbrev [5] 0x82:0xd DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges5                 ; DW_AT_ranges
	.byte	2                               ; DW_AT_call_file
	.short	293                             ; DW_AT_call_line
	.byte	12                              ; DW_AT_call_column
	.byte	0                               ; End Of Children Mark
	.byte	0                               ; End Of Children Mark
	.byte	0                               ; End Of Children Mark
.Ldebug_info_end0:
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.quad	.Ltmp1-.Lfunc_begin0
	.quad	.Ltmp2-.Lfunc_begin0
	.quad	.Ltmp3-.Lfunc_begin0
	.quad	.Ltmp7-.Lfunc_begin0
	.quad	.Ltmp8-.Lfunc_begin0
	.quad	.Ltmp9-.Lfunc_begin0
	.quad	.Ltmp10-.Lfunc_begin0
	.quad	.Ltmp11-.Lfunc_begin0
	.quad	.Ltmp12-.Lfunc_begin0
	.quad	.Ltmp13-.Lfunc_begin0
	.quad	.Ltmp14-.Lfunc_begin0
	.quad	.Ltmp15-.Lfunc_begin0
	.quad	.Ltmp16-.Lfunc_begin0
	.quad	.Ltmp17-.Lfunc_begin0
	.quad	.Ltmp18-.Lfunc_begin0
	.quad	.Ltmp23-.Lfunc_begin0
	.quad	.Ltmp24-.Lfunc_begin0
	.quad	.Ltmp25-.Lfunc_begin0
	.quad	.Ltmp26-.Lfunc_begin0
	.quad	.Ltmp27-.Lfunc_begin0
	.quad	.Ltmp28-.Lfunc_begin0
	.quad	.Ltmp29-.Lfunc_begin0
	.quad	.Ltmp30-.Lfunc_begin0
	.quad	.Ltmp32-.Lfunc_begin0
	.quad	.Ltmp33-.Lfunc_begin0
	.quad	.Ltmp35-.Lfunc_begin0
	.quad	.Ltmp36-.Lfunc_begin0
	.quad	.Ltmp40-.Lfunc_begin0
	.quad	.Ltmp41-.Lfunc_begin0
	.quad	.Ltmp49-.Lfunc_begin0
	.quad	.Ltmp50-.Lfunc_begin0
	.quad	.Ltmp58-.Lfunc_begin0
	.quad	.Ltmp59-.Lfunc_begin0
	.quad	.Ltmp60-.Lfunc_begin0
	.quad	.Ltmp61-.Lfunc_begin0
	.quad	.Ltmp64-.Lfunc_begin0
	.quad	.Ltmp65-.Lfunc_begin0
	.quad	.Ltmp70-.Lfunc_begin0
	.quad	.Ltmp71-.Lfunc_begin0
	.quad	.Ltmp74-.Lfunc_begin0
	.quad	.Ltmp75-.Lfunc_begin0
	.quad	.Ltmp91-.Lfunc_begin0
	.quad	.Ltmp92-.Lfunc_begin0
	.quad	.Ltmp93-.Lfunc_begin0
	.quad	.Ltmp94-.Lfunc_begin0
	.quad	.Ltmp104-.Lfunc_begin0
	.quad	.Ltmp105-.Lfunc_begin0
	.quad	.Ltmp123-.Lfunc_begin0
	.quad	.Ltmp124-.Lfunc_begin0
	.quad	.Ltmp130-.Lfunc_begin0
	.quad	.Ltmp131-.Lfunc_begin0
	.quad	.Ltmp146-.Lfunc_begin0
	.quad	.Ltmp147-.Lfunc_begin0
	.quad	.Ltmp158-.Lfunc_begin0
	.quad	.Ltmp159-.Lfunc_begin0
	.quad	.Ltmp160-.Lfunc_begin0
	.quad	.Ltmp161-.Lfunc_begin0
	.quad	.Ltmp162-.Lfunc_begin0
	.quad	.Ltmp319-.Lfunc_begin0
	.quad	.Ltmp320-.Lfunc_begin0
	.quad	.Ltmp321-.Lfunc_begin0
	.quad	.Ltmp322-.Lfunc_begin0
	.quad	.Ltmp323-.Lfunc_begin0
	.quad	.Ltmp324-.Lfunc_begin0
	.quad	.Ltmp325-.Lfunc_begin0
	.quad	.Ltmp326-.Lfunc_begin0
	.quad	.Ltmp327-.Lfunc_begin0
	.quad	.Ltmp328-.Lfunc_begin0
	.quad	.Ltmp329-.Lfunc_begin0
	.quad	.Ltmp330-.Lfunc_begin0
	.quad	.Ltmp331-.Lfunc_begin0
	.quad	.Ltmp332-.Lfunc_begin0
	.quad	.Ltmp333-.Lfunc_begin0
	.quad	.Ltmp334-.Lfunc_begin0
	.quad	.Ltmp335-.Lfunc_begin0
	.quad	.Ltmp336-.Lfunc_begin0
	.quad	.Ltmp337-.Lfunc_begin0
	.quad	.Ltmp338-.Lfunc_begin0
	.quad	.Ltmp339-.Lfunc_begin0
	.quad	.Ltmp340-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges1:
	.quad	.Ltmp4-.Lfunc_begin0
	.quad	.Ltmp5-.Lfunc_begin0
	.quad	.Ltmp6-.Lfunc_begin0
	.quad	.Ltmp7-.Lfunc_begin0
	.quad	.Ltmp8-.Lfunc_begin0
	.quad	.Ltmp9-.Lfunc_begin0
	.quad	.Ltmp10-.Lfunc_begin0
	.quad	.Ltmp11-.Lfunc_begin0
	.quad	.Ltmp12-.Lfunc_begin0
	.quad	.Ltmp13-.Lfunc_begin0
	.quad	.Ltmp14-.Lfunc_begin0
	.quad	.Ltmp15-.Lfunc_begin0
	.quad	.Ltmp19-.Lfunc_begin0
	.quad	.Ltmp20-.Lfunc_begin0
	.quad	.Ltmp21-.Lfunc_begin0
	.quad	.Ltmp22-.Lfunc_begin0
	.quad	.Ltmp24-.Lfunc_begin0
	.quad	.Ltmp25-.Lfunc_begin0
	.quad	.Ltmp26-.Lfunc_begin0
	.quad	.Ltmp27-.Lfunc_begin0
	.quad	.Ltmp28-.Lfunc_begin0
	.quad	.Ltmp29-.Lfunc_begin0
	.quad	.Ltmp30-.Lfunc_begin0
	.quad	.Ltmp31-.Lfunc_begin0
	.quad	.Ltmp33-.Lfunc_begin0
	.quad	.Ltmp34-.Lfunc_begin0
	.quad	.Ltmp37-.Lfunc_begin0
	.quad	.Ltmp38-.Lfunc_begin0
	.quad	.Ltmp39-.Lfunc_begin0
	.quad	.Ltmp40-.Lfunc_begin0
	.quad	.Ltmp42-.Lfunc_begin0
	.quad	.Ltmp43-.Lfunc_begin0
	.quad	.Ltmp44-.Lfunc_begin0
	.quad	.Ltmp45-.Lfunc_begin0
	.quad	.Ltmp46-.Lfunc_begin0
	.quad	.Ltmp47-.Lfunc_begin0
	.quad	.Ltmp48-.Lfunc_begin0
	.quad	.Ltmp49-.Lfunc_begin0
	.quad	.Ltmp51-.Lfunc_begin0
	.quad	.Ltmp52-.Lfunc_begin0
	.quad	.Ltmp53-.Lfunc_begin0
	.quad	.Ltmp54-.Lfunc_begin0
	.quad	.Ltmp55-.Lfunc_begin0
	.quad	.Ltmp56-.Lfunc_begin0
	.quad	.Ltmp57-.Lfunc_begin0
	.quad	.Ltmp58-.Lfunc_begin0
	.quad	.Ltmp61-.Lfunc_begin0
	.quad	.Ltmp62-.Lfunc_begin0
	.quad	.Ltmp63-.Lfunc_begin0
	.quad	.Ltmp64-.Lfunc_begin0
	.quad	.Ltmp65-.Lfunc_begin0
	.quad	.Ltmp66-.Lfunc_begin0
	.quad	.Ltmp67-.Lfunc_begin0
	.quad	.Ltmp68-.Lfunc_begin0
	.quad	.Ltmp69-.Lfunc_begin0
	.quad	.Ltmp70-.Lfunc_begin0
	.quad	.Ltmp71-.Lfunc_begin0
	.quad	.Ltmp72-.Lfunc_begin0
	.quad	.Ltmp73-.Lfunc_begin0
	.quad	.Ltmp74-.Lfunc_begin0
	.quad	.Ltmp75-.Lfunc_begin0
	.quad	.Ltmp76-.Lfunc_begin0
	.quad	.Ltmp77-.Lfunc_begin0
	.quad	.Ltmp78-.Lfunc_begin0
	.quad	.Ltmp79-.Lfunc_begin0
	.quad	.Ltmp80-.Lfunc_begin0
	.quad	.Ltmp81-.Lfunc_begin0
	.quad	.Ltmp82-.Lfunc_begin0
	.quad	.Ltmp83-.Lfunc_begin0
	.quad	.Ltmp84-.Lfunc_begin0
	.quad	.Ltmp85-.Lfunc_begin0
	.quad	.Ltmp86-.Lfunc_begin0
	.quad	.Ltmp87-.Lfunc_begin0
	.quad	.Ltmp88-.Lfunc_begin0
	.quad	.Ltmp89-.Lfunc_begin0
	.quad	.Ltmp90-.Lfunc_begin0
	.quad	.Ltmp95-.Lfunc_begin0
	.quad	.Ltmp96-.Lfunc_begin0
	.quad	.Ltmp97-.Lfunc_begin0
	.quad	.Ltmp98-.Lfunc_begin0
	.quad	.Ltmp99-.Lfunc_begin0
	.quad	.Ltmp100-.Lfunc_begin0
	.quad	.Ltmp101-.Lfunc_begin0
	.quad	.Ltmp102-.Lfunc_begin0
	.quad	.Ltmp103-.Lfunc_begin0
	.quad	.Ltmp104-.Lfunc_begin0
	.quad	.Ltmp105-.Lfunc_begin0
	.quad	.Ltmp106-.Lfunc_begin0
	.quad	.Ltmp107-.Lfunc_begin0
	.quad	.Ltmp108-.Lfunc_begin0
	.quad	.Ltmp109-.Lfunc_begin0
	.quad	.Ltmp110-.Lfunc_begin0
	.quad	.Ltmp111-.Lfunc_begin0
	.quad	.Ltmp112-.Lfunc_begin0
	.quad	.Ltmp113-.Lfunc_begin0
	.quad	.Ltmp114-.Lfunc_begin0
	.quad	.Ltmp115-.Lfunc_begin0
	.quad	.Ltmp116-.Lfunc_begin0
	.quad	.Ltmp117-.Lfunc_begin0
	.quad	.Ltmp118-.Lfunc_begin0
	.quad	.Ltmp119-.Lfunc_begin0
	.quad	.Ltmp120-.Lfunc_begin0
	.quad	.Ltmp121-.Lfunc_begin0
	.quad	.Ltmp122-.Lfunc_begin0
	.quad	.Ltmp124-.Lfunc_begin0
	.quad	.Ltmp125-.Lfunc_begin0
	.quad	.Ltmp126-.Lfunc_begin0
	.quad	.Ltmp127-.Lfunc_begin0
	.quad	.Ltmp128-.Lfunc_begin0
	.quad	.Ltmp129-.Lfunc_begin0
	.quad	.Ltmp132-.Lfunc_begin0
	.quad	.Ltmp133-.Lfunc_begin0
	.quad	.Ltmp134-.Lfunc_begin0
	.quad	.Ltmp135-.Lfunc_begin0
	.quad	.Ltmp136-.Lfunc_begin0
	.quad	.Ltmp137-.Lfunc_begin0
	.quad	.Ltmp138-.Lfunc_begin0
	.quad	.Ltmp139-.Lfunc_begin0
	.quad	.Ltmp140-.Lfunc_begin0
	.quad	.Ltmp141-.Lfunc_begin0
	.quad	.Ltmp142-.Lfunc_begin0
	.quad	.Ltmp143-.Lfunc_begin0
	.quad	.Ltmp144-.Lfunc_begin0
	.quad	.Ltmp145-.Lfunc_begin0
	.quad	.Ltmp148-.Lfunc_begin0
	.quad	.Ltmp149-.Lfunc_begin0
	.quad	.Ltmp150-.Lfunc_begin0
	.quad	.Ltmp151-.Lfunc_begin0
	.quad	.Ltmp152-.Lfunc_begin0
	.quad	.Ltmp153-.Lfunc_begin0
	.quad	.Ltmp154-.Lfunc_begin0
	.quad	.Ltmp155-.Lfunc_begin0
	.quad	.Ltmp156-.Lfunc_begin0
	.quad	.Ltmp157-.Lfunc_begin0
	.quad	.Ltmp319-.Lfunc_begin0
	.quad	.Ltmp320-.Lfunc_begin0
	.quad	.Ltmp321-.Lfunc_begin0
	.quad	.Ltmp322-.Lfunc_begin0
	.quad	.Ltmp323-.Lfunc_begin0
	.quad	.Ltmp324-.Lfunc_begin0
	.quad	.Ltmp325-.Lfunc_begin0
	.quad	.Ltmp326-.Lfunc_begin0
	.quad	.Ltmp327-.Lfunc_begin0
	.quad	.Ltmp328-.Lfunc_begin0
	.quad	.Ltmp329-.Lfunc_begin0
	.quad	.Ltmp330-.Lfunc_begin0
	.quad	.Ltmp331-.Lfunc_begin0
	.quad	.Ltmp332-.Lfunc_begin0
	.quad	.Ltmp333-.Lfunc_begin0
	.quad	.Ltmp334-.Lfunc_begin0
	.quad	.Ltmp335-.Lfunc_begin0
	.quad	.Ltmp336-.Lfunc_begin0
	.quad	.Ltmp337-.Lfunc_begin0
	.quad	.Ltmp338-.Lfunc_begin0
	.quad	.Ltmp339-.Lfunc_begin0
	.quad	.Ltmp340-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges2:
	.quad	.Ltmp163-.Lfunc_begin0
	.quad	.Ltmp173-.Lfunc_begin0
	.quad	.Ltmp184-.Lfunc_begin0
	.quad	.Ltmp192-.Lfunc_begin0
	.quad	.Ltmp203-.Lfunc_begin0
	.quad	.Ltmp211-.Lfunc_begin0
	.quad	.Ltmp222-.Lfunc_begin0
	.quad	.Ltmp230-.Lfunc_begin0
	.quad	.Ltmp238-.Lfunc_begin0
	.quad	.Ltmp239-.Lfunc_begin0
	.quad	.Ltmp242-.Lfunc_begin0
	.quad	.Ltmp250-.Lfunc_begin0
	.quad	.Ltmp261-.Lfunc_begin0
	.quad	.Ltmp269-.Lfunc_begin0
	.quad	.Ltmp279-.Lfunc_begin0
	.quad	.Ltmp280-.Lfunc_begin0
	.quad	.Ltmp281-.Lfunc_begin0
	.quad	.Ltmp289-.Lfunc_begin0
	.quad	.Ltmp300-.Lfunc_begin0
	.quad	.Ltmp308-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges3:
	.quad	.Ltmp164-.Lfunc_begin0
	.quad	.Ltmp165-.Lfunc_begin0
	.quad	.Ltmp166-.Lfunc_begin0
	.quad	.Ltmp167-.Lfunc_begin0
	.quad	.Ltmp168-.Lfunc_begin0
	.quad	.Ltmp169-.Lfunc_begin0
	.quad	.Ltmp170-.Lfunc_begin0
	.quad	.Ltmp171-.Lfunc_begin0
	.quad	.Ltmp172-.Lfunc_begin0
	.quad	.Ltmp173-.Lfunc_begin0
	.quad	.Ltmp185-.Lfunc_begin0
	.quad	.Ltmp186-.Lfunc_begin0
	.quad	.Ltmp187-.Lfunc_begin0
	.quad	.Ltmp188-.Lfunc_begin0
	.quad	.Ltmp189-.Lfunc_begin0
	.quad	.Ltmp190-.Lfunc_begin0
	.quad	.Ltmp191-.Lfunc_begin0
	.quad	.Ltmp192-.Lfunc_begin0
	.quad	.Ltmp204-.Lfunc_begin0
	.quad	.Ltmp205-.Lfunc_begin0
	.quad	.Ltmp206-.Lfunc_begin0
	.quad	.Ltmp207-.Lfunc_begin0
	.quad	.Ltmp208-.Lfunc_begin0
	.quad	.Ltmp209-.Lfunc_begin0
	.quad	.Ltmp210-.Lfunc_begin0
	.quad	.Ltmp211-.Lfunc_begin0
	.quad	.Ltmp223-.Lfunc_begin0
	.quad	.Ltmp224-.Lfunc_begin0
	.quad	.Ltmp225-.Lfunc_begin0
	.quad	.Ltmp226-.Lfunc_begin0
	.quad	.Ltmp227-.Lfunc_begin0
	.quad	.Ltmp228-.Lfunc_begin0
	.quad	.Ltmp229-.Lfunc_begin0
	.quad	.Ltmp230-.Lfunc_begin0
	.quad	.Ltmp238-.Lfunc_begin0
	.quad	.Ltmp239-.Lfunc_begin0
	.quad	.Ltmp243-.Lfunc_begin0
	.quad	.Ltmp244-.Lfunc_begin0
	.quad	.Ltmp245-.Lfunc_begin0
	.quad	.Ltmp246-.Lfunc_begin0
	.quad	.Ltmp247-.Lfunc_begin0
	.quad	.Ltmp248-.Lfunc_begin0
	.quad	.Ltmp249-.Lfunc_begin0
	.quad	.Ltmp250-.Lfunc_begin0
	.quad	.Ltmp262-.Lfunc_begin0
	.quad	.Ltmp263-.Lfunc_begin0
	.quad	.Ltmp264-.Lfunc_begin0
	.quad	.Ltmp265-.Lfunc_begin0
	.quad	.Ltmp266-.Lfunc_begin0
	.quad	.Ltmp267-.Lfunc_begin0
	.quad	.Ltmp268-.Lfunc_begin0
	.quad	.Ltmp269-.Lfunc_begin0
	.quad	.Ltmp279-.Lfunc_begin0
	.quad	.Ltmp280-.Lfunc_begin0
	.quad	.Ltmp282-.Lfunc_begin0
	.quad	.Ltmp283-.Lfunc_begin0
	.quad	.Ltmp284-.Lfunc_begin0
	.quad	.Ltmp285-.Lfunc_begin0
	.quad	.Ltmp286-.Lfunc_begin0
	.quad	.Ltmp287-.Lfunc_begin0
	.quad	.Ltmp288-.Lfunc_begin0
	.quad	.Ltmp289-.Lfunc_begin0
	.quad	.Ltmp301-.Lfunc_begin0
	.quad	.Ltmp302-.Lfunc_begin0
	.quad	.Ltmp303-.Lfunc_begin0
	.quad	.Ltmp304-.Lfunc_begin0
	.quad	.Ltmp305-.Lfunc_begin0
	.quad	.Ltmp306-.Lfunc_begin0
	.quad	.Ltmp307-.Lfunc_begin0
	.quad	.Ltmp308-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges4:
	.quad	.Ltmp174-.Lfunc_begin0
	.quad	.Ltmp180-.Lfunc_begin0
	.quad	.Ltmp181-.Lfunc_begin0
	.quad	.Ltmp183-.Lfunc_begin0
	.quad	.Ltmp193-.Lfunc_begin0
	.quad	.Ltmp199-.Lfunc_begin0
	.quad	.Ltmp200-.Lfunc_begin0
	.quad	.Ltmp202-.Lfunc_begin0
	.quad	.Ltmp212-.Lfunc_begin0
	.quad	.Ltmp218-.Lfunc_begin0
	.quad	.Ltmp219-.Lfunc_begin0
	.quad	.Ltmp221-.Lfunc_begin0
	.quad	.Ltmp231-.Lfunc_begin0
	.quad	.Ltmp237-.Lfunc_begin0
	.quad	.Ltmp239-.Lfunc_begin0
	.quad	.Ltmp241-.Lfunc_begin0
	.quad	.Ltmp251-.Lfunc_begin0
	.quad	.Ltmp257-.Lfunc_begin0
	.quad	.Ltmp258-.Lfunc_begin0
	.quad	.Ltmp260-.Lfunc_begin0
	.quad	.Ltmp270-.Lfunc_begin0
	.quad	.Ltmp276-.Lfunc_begin0
	.quad	.Ltmp277-.Lfunc_begin0
	.quad	.Ltmp279-.Lfunc_begin0
	.quad	.Ltmp290-.Lfunc_begin0
	.quad	.Ltmp296-.Lfunc_begin0
	.quad	.Ltmp297-.Lfunc_begin0
	.quad	.Ltmp299-.Lfunc_begin0
	.quad	.Ltmp309-.Lfunc_begin0
	.quad	.Ltmp315-.Lfunc_begin0
	.quad	.Ltmp316-.Lfunc_begin0
	.quad	.Ltmp318-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges5:
	.quad	.Ltmp175-.Lfunc_begin0
	.quad	.Ltmp176-.Lfunc_begin0
	.quad	.Ltmp177-.Lfunc_begin0
	.quad	.Ltmp178-.Lfunc_begin0
	.quad	.Ltmp179-.Lfunc_begin0
	.quad	.Ltmp180-.Lfunc_begin0
	.quad	.Ltmp182-.Lfunc_begin0
	.quad	.Ltmp183-.Lfunc_begin0
	.quad	.Ltmp194-.Lfunc_begin0
	.quad	.Ltmp195-.Lfunc_begin0
	.quad	.Ltmp196-.Lfunc_begin0
	.quad	.Ltmp197-.Lfunc_begin0
	.quad	.Ltmp198-.Lfunc_begin0
	.quad	.Ltmp199-.Lfunc_begin0
	.quad	.Ltmp201-.Lfunc_begin0
	.quad	.Ltmp202-.Lfunc_begin0
	.quad	.Ltmp213-.Lfunc_begin0
	.quad	.Ltmp214-.Lfunc_begin0
	.quad	.Ltmp215-.Lfunc_begin0
	.quad	.Ltmp216-.Lfunc_begin0
	.quad	.Ltmp217-.Lfunc_begin0
	.quad	.Ltmp218-.Lfunc_begin0
	.quad	.Ltmp220-.Lfunc_begin0
	.quad	.Ltmp221-.Lfunc_begin0
	.quad	.Ltmp232-.Lfunc_begin0
	.quad	.Ltmp233-.Lfunc_begin0
	.quad	.Ltmp234-.Lfunc_begin0
	.quad	.Ltmp235-.Lfunc_begin0
	.quad	.Ltmp236-.Lfunc_begin0
	.quad	.Ltmp237-.Lfunc_begin0
	.quad	.Ltmp240-.Lfunc_begin0
	.quad	.Ltmp241-.Lfunc_begin0
	.quad	.Ltmp252-.Lfunc_begin0
	.quad	.Ltmp253-.Lfunc_begin0
	.quad	.Ltmp254-.Lfunc_begin0
	.quad	.Ltmp255-.Lfunc_begin0
	.quad	.Ltmp256-.Lfunc_begin0
	.quad	.Ltmp257-.Lfunc_begin0
	.quad	.Ltmp259-.Lfunc_begin0
	.quad	.Ltmp260-.Lfunc_begin0
	.quad	.Ltmp271-.Lfunc_begin0
	.quad	.Ltmp272-.Lfunc_begin0
	.quad	.Ltmp273-.Lfunc_begin0
	.quad	.Ltmp274-.Lfunc_begin0
	.quad	.Ltmp275-.Lfunc_begin0
	.quad	.Ltmp276-.Lfunc_begin0
	.quad	.Ltmp278-.Lfunc_begin0
	.quad	.Ltmp279-.Lfunc_begin0
	.quad	.Ltmp291-.Lfunc_begin0
	.quad	.Ltmp292-.Lfunc_begin0
	.quad	.Ltmp293-.Lfunc_begin0
	.quad	.Ltmp294-.Lfunc_begin0
	.quad	.Ltmp295-.Lfunc_begin0
	.quad	.Ltmp296-.Lfunc_begin0
	.quad	.Ltmp298-.Lfunc_begin0
	.quad	.Ltmp299-.Lfunc_begin0
	.quad	.Ltmp310-.Lfunc_begin0
	.quad	.Ltmp311-.Lfunc_begin0
	.quad	.Ltmp312-.Lfunc_begin0
	.quad	.Ltmp313-.Lfunc_begin0
	.quad	.Ltmp314-.Lfunc_begin0
	.quad	.Ltmp315-.Lfunc_begin0
	.quad	.Ltmp317-.Lfunc_begin0
	.quad	.Ltmp318-.Lfunc_begin0
	.quad	0
	.quad	0
	.section	.debug_str,"MS",@progbits,1
.Linfo_string0:
	.asciz	"triton"                        ; string offset=0 ; triton
.Linfo_string1:
	.asciz	"attention_backward.py"         ; string offset=7 ; attention_backward.py
.Linfo_string2:
	.asciz	"<repo>/src/amd_strix_halo_kernels" ; string offset=29 ; <repo>/src/amd_strix_halo_kernels
.Linfo_string3:
	.asciz	"amd_strix_halo_gfx1151_attention_bwd_dq_int4xbf16_fp32_runtime_outbfloat16_doutbfloat16_float32_d64_dv64_shaperuntime_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1"                        ; string offset=97 ; amd_strix_halo_gfx1151_attention_bwd_dq_int4xbf16_fp32_runtime_outbfloat16_doutbfloat16_float32_d64_dv64_shaperuntime_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1
	.section	".note.GNU-stack","",@progbits
	.amdgpu_metadata
---
amdhsa.kernels:
  - .args:
      - .address_space:  global
        .offset:         0
        .size:           8
        .value_kind:     global_buffer
      - .address_space:  global
        .offset:         8
        .size:           8
        .value_kind:     global_buffer
      - .address_space:  global
        .offset:         16
        .size:           8
        .value_kind:     global_buffer
      - .address_space:  global
        .offset:         24
        .size:           8
        .value_kind:     global_buffer
      - .address_space:  global
        .offset:         32
        .size:           8
        .value_kind:     global_buffer
      - .address_space:  global
        .offset:         40
        .size:           8
        .value_kind:     global_buffer
      - .address_space:  global
        .offset:         48
        .size:           8
        .value_kind:     global_buffer
      - .address_space:  global
        .offset:         56
        .size:           8
        .value_kind:     global_buffer
      - .address_space:  global
        .offset:         64
        .size:           8
        .value_kind:     global_buffer
      - .address_space:  global
        .offset:         72
        .size:           8
        .value_kind:     global_buffer
      - .address_space:  global
        .offset:         80
        .size:           8
        .value_kind:     global_buffer
      - .address_space:  global
        .offset:         88
        .size:           8
        .value_kind:     global_buffer
      - .offset:         96
        .size:           4
        .value_kind:     by_value
      - .offset:         100
        .size:           4
        .value_kind:     by_value
      - .offset:         104
        .size:           4
        .value_kind:     by_value
      - .offset:         108
        .size:           4
        .value_kind:     by_value
      - .offset:         112
        .size:           4
        .value_kind:     by_value
      - .offset:         116
        .size:           4
        .value_kind:     by_value
      - .offset:         120
        .size:           4
        .value_kind:     by_value
      - .offset:         124
        .size:           4
        .value_kind:     by_value
      - .offset:         128
        .size:           4
        .value_kind:     by_value
      - .offset:         132
        .size:           4
        .value_kind:     by_value
      - .offset:         136
        .size:           4
        .value_kind:     by_value
      - .offset:         140
        .size:           4
        .value_kind:     by_value
      - .offset:         144
        .size:           4
        .value_kind:     by_value
      - .offset:         148
        .size:           1
        .value_kind:     by_value
      - .offset:         149
        .size:           1
        .value_kind:     by_value
      - .offset:         152
        .size:           4
        .value_kind:     by_value
      - .offset:         156
        .size:           4
        .value_kind:     by_value
      - .offset:         160
        .size:           4
        .value_kind:     by_value
      - .address_space:  global
        .offset:         168
        .size:           8
        .value_kind:     global_buffer
      - .address_space:  global
        .offset:         176
        .size:           8
        .value_kind:     global_buffer
    .group_segment_fixed_size: 0
    .kernarg_segment_align: 8
    .kernarg_segment_size: 184
    .max_flat_workgroup_size: 64
    .name:           amd_strix_halo_gfx1151_attention_bwd_dq_int4xbf16_fp32_runtime_outbfloat16_doutbfloat16_float32_d64_dv64_shaperuntime_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1
    .private_segment_fixed_size: 60
    .sgpr_count:     89
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_attention_bwd_dq_int4xbf16_fp32_runtime_outbfloat16_doutbfloat16_float32_d64_dv64_shaperuntime_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     256
    .vgpr_spill_count: 14
    .wavefront_size: 32
    .workgroup_processor_mode: 1
amdhsa.target:   amdgcn-amd-amdhsa--gfx1151
amdhsa.version:
  - 1
  - 2
...

	.end_amdgpu_metadata
	.section	.debug_line,"",@progbits
.Lline_table_start0:
