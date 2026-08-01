	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_attention_bwd_dq_int4xint4_bool_runtime_outbfloat16_doutbfloat16_float32_d64_dv64_shaperuntime_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1                          ; -- Begin function amd_strix_halo_gfx1151_attention_bwd_dq_int4xint4_bool_runtime_outbfloat16_doutbfloat16_float32_d64_dv64_shaperuntime_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1
	.p2align	8
	.type	amd_strix_halo_gfx1151_attention_bwd_dq_int4xint4_bool_runtime_outbfloat16_doutbfloat16_float32_d64_dv64_shaperuntime_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1,@function
amd_strix_halo_gfx1151_attention_bwd_dq_int4xint4_bool_runtime_outbfloat16_doutbfloat16_float32_d64_dv64_shaperuntime_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1:                                 ; @amd_strix_halo_gfx1151_attention_bwd_dq_int4xint4_bool_runtime_outbfloat16_doutbfloat16_float32_d64_dv64_shaperuntime_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1
.Lfunc_begin0:
	.file	1 "<repo>/src/amd_strix_halo_kernels" "attention_backward.py"
	.loc	1 60 0                          ; attention_backward.py:60:0
	.cfi_sections .debug_frame
	.cfi_startproc
; %bb.0:
	s_clause 0x2
	s_load_b128 s[20:23], s[0:1], 0x94
	s_load_b128 s[28:31], s[0:1], 0x64
	s_load_b64 s[46:47], s[0:1], 0x78
.Ltmp0:
	.loc	1 124 31 prologue_end           ; attention_backward.py:124:31
	v_lshrrev_b32_e32 v102, 5, v0
	v_and_b32_e32 v81, 31, v0
	s_clause 0x1
	s_load_b64 s[36:37], s[0:1], 0x0
	s_load_b64 s[24:25], s[0:1], 0x18
	.loc	1 134 28                        ; attention_backward.py:134:28
	v_xor_b32_e32 v20, 0x110, v0
	s_load_b128 s[40:43], s[0:1], 0x38
	.loc	1 124 31                        ; attention_backward.py:124:31
	v_or_b32_e32 v154, 2, v102
	v_or_b32_e32 v155, 4, v102
	v_or_b32_e32 v156, 6, v102
	v_or_b32_e32 v157, 8, v102
	v_or_b32_e32 v158, 10, v102
	v_or_b32_e32 v159, 12, v102
	v_or_b32_e32 v160, 14, v102
	.loc	1 134 28                        ; attention_backward.py:134:28
	v_add_nc_u32_e32 v105, 0, v20
	.loc	1 124 31                        ; attention_backward.py:124:31
	v_and_b32_e32 v172, 32, v0
	.loc	1 171 28                        ; attention_backward.py:171:28
	v_lshlrev_b32_e32 v108, 1, v0
	s_waitcnt lgkmcnt(0)
	s_and_b32 s4, 1, s20
	s_bitcmp1_b32 s20, 8
	.loc	1 133 26                        ; attention_backward.py:133:26
	s_mul_i32 s50, s3, s30
	s_cselect_b32 s33, -1, 0
	s_cmp_eq_u32 s4, 1
	.loc	1 135 17                        ; attention_backward.py:135:17
	v_mad_u64_u32 v[78:79], null, s46, v102, v[81:82]
	s_cselect_b32 s18, -1, 0
	.loc	1 123 34                        ; attention_backward.py:123:34
	s_abs_i32 s4, s28
	.loc	1 121 23                        ; attention_backward.py:121:23
	s_abs_i32 s7, s3
	s_cvt_f32_u32 s5, s4
	s_sub_i32 s6, 0, s4
	.loc	1 119 19                        ; attention_backward.py:119:19
	s_lshl_b32 s54, s2, 5
	.loc	1 135 17                        ; attention_backward.py:135:17
	v_mad_u64_u32 v[79:80], null, s46, 6, v[78:79]
	.loc	1 121 23                        ; attention_backward.py:121:23
	v_rcp_iflag_f32_e32 v1, s5
	.loc	1 124 21                        ; attention_backward.py:124:21
	v_or_b32_e32 v2, s54, v154
	v_or_b32_e32 v3, s54, v155
	v_or_b32_e32 v4, s54, v156
	v_or_b32_e32 v5, s54, v157
	v_or_b32_e32 v6, s54, v158
	.loc	1 135 17                        ; attention_backward.py:135:17
	v_lshl_add_u32 v161, s46, 1, v78
	.loc	1 124 21                        ; attention_backward.py:124:21
	v_or_b32_e32 v8, s54, v160
	.loc	1 135 17                        ; attention_backward.py:135:17
	v_lshl_add_u32 v162, s46, 2, v78
	v_lshl_add_u32 v80, s46, 3, v78
	.loc	1 121 23                        ; attention_backward.py:121:23
	v_readfirstlane_b32 s5, v1
	.loc	1 135 17                        ; attention_backward.py:135:17
	v_mad_u64_u32 v[90:91], null, s46, 10, v[78:79]
	v_mad_u64_u32 v[91:92], null, s46, 12, v[78:79]
	.loc	1 121 23                        ; attention_backward.py:121:23
	s_mul_f32 s5, s5, 0x4f7ffffe
	.loc	1 135 17                        ; attention_backward.py:135:17
	v_mad_u64_u32 v[92:93], null, s46, 14, v[78:79]
	.loc	1 124 31                        ; attention_backward.py:124:31
	v_lshrrev_b32_e32 v82, 1, v172
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 121 23                        ; attention_backward.py:121:23
	s_cvt_u32_f32 s5, s5
.Ltmp1:
	.file	2 "<triton>/python/triton/language" "standard.py"
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_lshlrev_b32_e32 v84, 1, v172
.Ltmp2:
	.loc	1 171 28                        ; attention_backward.py:171:28
	v_xor_b32_e32 v75, 0x2d0, v108
	v_xor_b32_e32 v73, 0x240, v108
	.loc	1 121 23                        ; attention_backward.py:121:23
	s_mul_i32 s6, s6, s5
	.loc	1 171 28                        ; attention_backward.py:171:28
	v_xor_b32_e32 v76, 0x360, v108
	.loc	1 121 23                        ; attention_backward.py:121:23
	s_mul_hi_u32 s6, s5, s6
	.loc	1 171 28                        ; attention_backward.py:171:28
	v_xor_b32_e32 v77, 0x3f0, v108
	.loc	1 121 23                        ; attention_backward.py:121:23
	s_add_i32 s5, s5, s6
	.loc	1 171 28                        ; attention_backward.py:171:28
	v_add_nc_u32_e32 v114, 0, v73
	.loc	1 121 23                        ; attention_backward.py:121:23
	s_mul_hi_u32 s2, s7, s5
	s_xor_b32 s5, s3, s28
	s_mul_i32 s6, s2, s4
	s_ashr_i32 s5, s5, 31
	s_sub_i32 s6, s7, s6
	s_add_i32 s7, s2, 1
	s_sub_i32 s8, s6, s4
	s_cmp_ge_u32 s6, s4
	.loc	1 171 28                        ; attention_backward.py:171:28
	v_add_nc_u32_e32 v116, 0, v76
	.loc	1 121 23                        ; attention_backward.py:121:23
	s_cselect_b32 s2, s7, s2
	s_cselect_b32 s6, s8, s6
	s_add_i32 s7, s2, 1
	s_cmp_ge_u32 s6, s4
	.loc	1 171 28                        ; attention_backward.py:171:28
	v_add_nc_u32_e32 v118, 0, v77
	.loc	1 121 23                        ; attention_backward.py:121:23
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
	v_cmp_gt_i32_e64 s2, s46, v81
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 123 34                        ; attention_backward.py:123:34
	v_readfirstlane_b32 s8, v1
	.loc	1 124 31                        ; attention_backward.py:124:31
	v_or_b32_e32 v1, s54, v102
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
	s_abs_i32 s48, s28
	.loc	1 123 34                        ; attention_backward.py:123:34
	s_xor_b32 s3, s3, s10
	.loc	1 124 21 is_stmt 1              ; attention_backward.py:124:21
	s_or_b32 s4, s54, 1
	.loc	1 123 34                        ; attention_backward.py:123:34
	s_sub_i32 s52, s3, s10
	.loc	1 124 21                        ; attention_backward.py:124:21
	s_or_b32 s5, s54, 2
	.loc	1 123 19                        ; attention_backward.py:123:19
	s_abs_i32 s49, s52
	.loc	1 124 21                        ; attention_backward.py:124:21
	s_or_b32 s6, s54, 3
	.loc	1 123 19                        ; attention_backward.py:123:19
	s_cvt_f32_u32 s11, s49
	s_sub_i32 s55, 0, s49
	.loc	1 124 21                        ; attention_backward.py:124:21
	s_or_b32 s7, s54, 4
	s_or_b32 s8, s54, 5
	.loc	1 123 19                        ; attention_backward.py:123:19
	v_rcp_iflag_f32_e32 v7, s11
	.loc	1 124 21                        ; attention_backward.py:124:21
	s_or_b32 s9, s54, 6
	s_or_b32 s3, s54, 7
	s_or_b32 s10, s54, 8
	s_or_b32 s12, s54, 9
	s_or_b32 s13, s54, 10
	s_or_b32 s14, s54, 11
	s_or_b32 s11, s54, 12
	s_or_b32 s15, s54, 13
	s_or_b32 s16, s54, 14
	.loc	1 123 19                        ; attention_backward.py:123:19
	v_readfirstlane_b32 s34, v7
	.loc	1 124 21                        ; attention_backward.py:124:21
	s_or_b32 s17, s54, 15
	s_or_b32 s26, s54, 16
	s_or_b32 s27, s54, 17
	s_or_b32 s35, s54, 18
	.loc	1 123 19                        ; attention_backward.py:123:19
	s_mul_f32 s34, s34, 0x4f7ffffe
	.loc	1 124 21                        ; attention_backward.py:124:21
	s_or_b32 s38, s54, 19
	s_or_b32 s39, s54, 20
	s_or_b32 s44, s54, 21
	.loc	1 123 19                        ; attention_backward.py:123:19
	s_cvt_u32_f32 s34, s34
	.loc	1 124 21                        ; attention_backward.py:124:21
	s_or_b32 s45, s54, 22
	s_or_b32 s51, s54, 23
	s_or_b32 s53, s54, 24
	.loc	1 123 19                        ; attention_backward.py:123:19
	s_mul_i32 s55, s55, s34
	.loc	1 124 21                        ; attention_backward.py:124:21
	s_or_b32 s68, s54, 25
	.loc	1 123 19                        ; attention_backward.py:123:19
	s_mul_hi_u32 s55, s34, s55
	.loc	1 124 21                        ; attention_backward.py:124:21
	s_or_b32 s69, s54, 26
	s_or_b32 s82, s54, 27
	s_or_b32 s83, s54, 28
	s_or_b32 s84, s54, 29
	s_or_b32 s85, s54, 30
	s_or_b32 s86, s54, 31
	.loc	1 123 19                        ; attention_backward.py:123:19
	s_add_i32 s34, s34, s55
	.loc	1 128 21                        ; attention_backward.py:128:21
	s_cmp_lt_i32 s54, s30
	.loc	1 124 21                        ; attention_backward.py:124:21
	v_or_b32_e32 v7, s54, v159
	.loc	1 128 21                        ; attention_backward.py:128:21
	s_cselect_b32 s79, -1, 0
	s_cmp_lt_i32 s4, s30
	v_cmp_gt_i32_e64 s4, s30, v3
	s_cselect_b32 s78, -1, 0
	s_cmp_lt_i32 s5, s30
	v_cmp_gt_i32_e64 s5, s30, v4
	s_cselect_b32 s72, -1, 0
	s_cmp_lt_i32 s6, s30
	v_cmp_gt_i32_e64 s6, s30, v5
	s_cselect_b32 s66, -1, 0
	s_cmp_lt_i32 s7, s30
	v_cmp_gt_i32_e64 s7, s30, v6
	s_cselect_b32 s63, -1, 0
	s_cmp_lt_i32 s8, s30
	v_cmp_gt_i32_e64 s8, s30, v7
	s_cselect_b32 s60, -1, 0
	s_cmp_lt_i32 s9, s30
	v_cmp_gt_i32_e64 s9, s30, v8
	s_cselect_b32 s56, -1, 0
	s_cmp_lt_i32 s3, s30
	v_cmp_gt_i32_e64 s3, s30, v2
	s_cselect_b32 s57, -1, 0
	s_cmp_lt_i32 s10, s30
	v_cmp_gt_i32_e64 s10, s30, v9
	s_cselect_b32 s81, -1, 0
	s_cmp_lt_i32 s12, s30
	v_cmp_gt_i32_e64 s12, s30, v11
	s_cselect_b32 s77, -1, 0
	s_cmp_lt_i32 s13, s30
	v_cmp_gt_i32_e64 s13, s30, v12
	s_cselect_b32 s76, -1, 0
	s_cmp_lt_i32 s14, s30
	v_cmp_gt_i32_e64 s14, s30, v13
	s_cselect_b32 s75, -1, 0
	s_cmp_lt_i32 s11, s30
	v_cmp_gt_i32_e64 s11, s30, v10
	s_cselect_b32 s74, -1, 0
	s_cmp_lt_i32 s15, s30
	v_cmp_gt_i32_e64 s15, s30, v14
	s_cselect_b32 s73, -1, 0
	s_cmp_lt_i32 s16, s30
	v_cmp_gt_i32_e64 s16, s30, v15
	s_cselect_b32 s71, -1, 0
	s_cmp_lt_i32 s17, s30
	v_cmp_gt_i32_e64 s17, s30, v16
	s_cselect_b32 s67, -1, 0
	s_cmp_lt_i32 s26, s30
	s_cselect_b32 s80, -1, 0
	s_cmp_lt_i32 s27, s30
	s_cselect_b32 s70, -1, 0
	s_cmp_lt_i32 s35, s30
	s_cselect_b32 s65, -1, 0
	s_cmp_lt_i32 s38, s30
	s_cselect_b32 s64, -1, 0
	s_cmp_lt_i32 s39, s30
	s_mov_b32 s39, 0x31027000
	s_cselect_b32 s62, -1, 0
	s_cmp_lt_i32 s44, s30
	s_cselect_b32 s61, -1, 0
	s_cmp_lt_i32 s45, s30
	s_cselect_b32 s59, -1, 0
	s_cmp_lt_i32 s51, s30
	s_cselect_b32 s58, -1, 0
	s_cmp_lt_i32 s53, s30
	s_cselect_b32 s55, -1, 0
	s_cmp_lt_i32 s68, s30
	s_cselect_b32 s53, -1, 0
	s_cmp_lt_i32 s69, s30
	s_cselect_b32 s51, -1, 0
	s_cmp_lt_i32 s82, s30
	s_cselect_b32 s45, -1, 0
	s_cmp_lt_i32 s83, s30
	s_cselect_b32 s44, -1, 0
	s_cmp_lt_i32 s84, s30
	s_cselect_b32 s26, -1, 0
	s_cmp_lt_i32 s85, s30
	s_cselect_b32 s27, -1, 0
	s_cmp_lt_i32 s86, s30
	s_cselect_b32 s35, -1, 0
	.loc	1 135 17                        ; attention_backward.py:135:17
	s_add_i32 s50, s50, s54
	s_lshl_b32 s68, s46, 4
	s_mul_i32 s38, s50, s46
	.loc	1 139 22                        ; attention_backward.py:139:22
	s_and_b32 vcc_lo, vcc_lo, s2
	.loc	1 135 17                        ; attention_backward.py:135:17
	v_add_nc_u32_e32 v1, s38, v78
	v_add_nc_u32_e32 v10, s38, v161
	v_add_nc_u32_e32 v11, s38, v162
	v_add_nc_u32_e32 v12, s38, v79
	v_add_nc_u32_e32 v13, s38, v80
	v_mad_u64_u32 v[2:3], null, s46, 18, v[1:2]
	v_add_nc_u32_e32 v17, s68, v1
	v_add_nc_u32_e32 v14, s38, v90
	v_add_nc_u32_e32 v15, s38, v91
	v_add_nc_u32_e32 v16, s38, v92
	.loc	1 134 28                        ; attention_backward.py:134:28
	s_and_b32 s37, s37, 0xffff
	s_mov_b32 s38, 0x7ffffffe
	.loc	1 135 17                        ; attention_backward.py:135:17
	v_mad_u64_u32 v[3:4], null, s46, 20, v[1:2]
	v_mad_u64_u32 v[4:5], null, s46, 22, v[1:2]
	v_mad_u64_u32 v[5:6], null, s46, 24, v[1:2]
	v_mad_u64_u32 v[6:7], null, s46, 26, v[1:2]
	v_mad_u64_u32 v[7:8], null, s46, 28, v[1:2]
	v_mad_u64_u32 v[8:9], null, s46, 30, v[1:2]
	.loc	1 134 28                        ; attention_backward.py:134:28
	v_cndmask_b32_e32 v1, 0x80000000, v1, vcc_lo
	.loc	1 139 22                        ; attention_backward.py:139:22
	s_and_b32 vcc_lo, s3, s2
	.loc	1 168 40                        ; attention_backward.py:168:40
	v_cmp_gt_i32_e64 s3, s47, v0
	.loc	1 134 28                        ; attention_backward.py:134:28
	v_cndmask_b32_e32 v9, 0x80000000, v10, vcc_lo
	.loc	1 139 22                        ; attention_backward.py:139:22
	s_and_b32 vcc_lo, s4, s2
	.loc	1 166 23                        ; attention_backward.py:166:23
	s_lshl_b32 s4, s47, 4
	.loc	1 134 28                        ; attention_backward.py:134:28
	v_cndmask_b32_e32 v10, 0x80000000, v11, vcc_lo
	.loc	1 139 22                        ; attention_backward.py:139:22
	s_and_b32 vcc_lo, s5, s2
	.loc	1 167 13                        ; attention_backward.py:167:13
	s_lshl_b32 s69, s47, 1
	.loc	1 134 28                        ; attention_backward.py:134:28
	v_cndmask_b32_e32 v11, 0x80000000, v12, vcc_lo
	.loc	1 139 22                        ; attention_backward.py:139:22
	s_and_b32 vcc_lo, s6, s2
	.loc	1 142 31                        ; attention_backward.py:142:31
	s_and_b32 s25, s25, 0xffff
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
	s_clause 0x3
	buffer_load_u8 v15, v15, s[36:39], 0 offen
	buffer_load_u8 v17, v2, s[36:39], 0 offen
	buffer_load_u8 v18, v3, s[36:39], 0 offen
	buffer_load_u8 v4, v4, s[36:39], 0 offen
	v_cndmask_b32_e32 v16, 0x80000000, v16, vcc_lo
	.loc	1 139 22                        ; attention_backward.py:139:22
	s_and_b32 vcc_lo, s14, s2
	.loc	1 134 28                        ; attention_backward.py:134:28
	v_cndmask_b32_e32 v2, 0x80000000, v5, vcc_lo
	.loc	1 139 22                        ; attention_backward.py:139:22
	s_and_b32 vcc_lo, s15, s2
	.loc	1 134 28                        ; attention_backward.py:134:28
	v_cndmask_b32_e32 v3, 0x80000000, v6, vcc_lo
	.loc	1 139 22                        ; attention_backward.py:139:22
	s_and_b32 vcc_lo, s16, s2
	.loc	1 134 28                        ; attention_backward.py:134:28
	v_cndmask_b32_e32 v5, 0x80000000, v7, vcc_lo
	.loc	1 139 22                        ; attention_backward.py:139:22
	s_and_b32 vcc_lo, s17, s2
	.loc	1 134 28                        ; attention_backward.py:134:28
	v_cndmask_b32_e32 v6, 0x80000000, v8, vcc_lo
	s_clause 0x5
	buffer_load_u8 v7, v2, s[36:39], 0 offen
	buffer_load_u8 v8, v3, s[36:39], 0 offen
	buffer_load_u8 v19, v1, s[36:39], 0 offen
	buffer_load_u8 v16, v16, s[36:39], 0 offen
	buffer_load_u8 v5, v5, s[36:39], 0 offen
	buffer_load_u8 v6, v6, s[36:39], 0 offen
	.loc	1 167 13                        ; attention_backward.py:167:13
	v_mad_u64_u32 v[1:2], null, s50, s47, v[0:1]
	.loc	1 134 28                        ; attention_backward.py:134:28
	v_xor_b32_e32 v3, 0x88, v0
	v_xor_b32_e32 v2, 0x198, v0
	.loc	1 168 18                        ; attention_backward.py:168:18
	s_and_b32 vcc_lo, s79, s3
	.loc	1 166 23                        ; attention_backward.py:166:23
	s_and_b32 s37, s41, 0xffff
	s_mov_b32 s36, s40
	.loc	1 134 28                        ; attention_backward.py:134:28
	v_add_nc_u32_e32 v104, 0, v3
	v_add_nc_u32_e32 v106, 0, v2
	.loc	1 167 13                        ; attention_backward.py:167:13
	v_mad_u64_u32 v[2:3], null, s47, 9, v[1:2]
	v_add_nc_u32_e32 v20, s47, v1
	s_delay_alu instid0(VALU_DEP_1)
	v_add_nc_u32_e32 v3, s47, v20
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_lshlrev_b32_e32 v20, 1, v20
	v_lshlrev_b32_e32 v1, 1, v1
	.loc	1 167 13                        ; attention_backward.py:167:13
	v_add_nc_u32_e32 v22, s47, v2
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_lshlrev_b32_e32 v2, 1, v2
	.loc	1 167 13                        ; attention_backward.py:167:13
	v_add_nc_u32_e32 v23, s47, v3
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_lshlrev_b32_e32 v3, 1, v3
	v_cndmask_b32_e32 v21, 0x80000000, v1, vcc_lo
	.loc	1 168 18                        ; attention_backward.py:168:18
	s_and_b32 vcc_lo, s78, s3
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_cndmask_b32_e32 v42, 0x80000000, v20, vcc_lo
	.loc	1 167 13                        ; attention_backward.py:167:13
	v_add_nc_u32_e32 v20, s47, v22
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_add_nc_u32_e32 v1, s4, v1
	.loc	1 168 18                        ; attention_backward.py:168:18
	s_and_b32 vcc_lo, s81, s3
	.loc	1 167 13                        ; attention_backward.py:167:13
	v_add_nc_u32_e32 v25, s47, v23
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_add_nc_u32_e32 v24, s47, v20
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_cndmask_b32_e32 v43, 0x80000000, v1, vcc_lo
	.loc	1 168 18                        ; attention_backward.py:168:18
	s_and_b32 vcc_lo, s77, s3
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_dual_cndmask_b32 v44, 0x80000000, v2 :: v_dual_add_nc_u32 v103, 0, v0
	v_lshlrev_b32_e32 v2, 1, v22
	.loc	1 167 13                        ; attention_backward.py:167:13
	v_add_nc_u32_e32 v22, s47, v24
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_add_nc_u32_e32 v1, s4, v1
	.loc	1 168 18                        ; attention_backward.py:168:18
	s_and_b32 vcc_lo, s72, s3
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_cndmask_b32_e32 v45, 0x80000000, v3, vcc_lo
	v_lshlrev_b32_e32 v3, 1, v23
	.loc	1 167 13                        ; attention_backward.py:167:13
	v_add_nc_u32_e32 v23, s47, v22
	.loc	1 168 18                        ; attention_backward.py:168:18
	s_and_b32 vcc_lo, s80, s3
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_cndmask_b32_e32 v35, 0x80000000, v1, vcc_lo
	.loc	1 168 18                        ; attention_backward.py:168:18
	s_and_b32 vcc_lo, s76, s3
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_dual_cndmask_b32 v46, 0x80000000, v2 :: v_dual_lshlrev_b32 v1, 1, v20
	.loc	1 167 13                        ; attention_backward.py:167:13
	v_add_nc_u32_e32 v2, s47, v23
	.loc	1 168 18                        ; attention_backward.py:168:18
	s_and_b32 vcc_lo, s66, s3
	.loc	1 167 13                        ; attention_backward.py:167:13
	v_add_nc_u32_e32 v20, s47, v25
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_cndmask_b32_e32 v47, 0x80000000, v3, vcc_lo
	v_lshlrev_b32_e32 v3, 1, v25
	.loc	1 167 13                        ; attention_backward.py:167:13
	v_add_nc_u32_e32 v25, s69, v2
	.loc	1 168 18                        ; attention_backward.py:168:18
	s_and_b32 vcc_lo, s75, s3
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_dual_cndmask_b32 v49, 0x80000000, v1 :: v_dual_lshlrev_b32 v2, 1, v2
	v_lshlrev_b32_e32 v1, 1, v24
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 167 13                        ; attention_backward.py:167:13
	v_add_nc_u32_e32 v26, s47, v25
	.loc	1 168 18                        ; attention_backward.py:168:18
	s_and_b32 vcc_lo, s63, s3
	.loc	1 167 13                        ; attention_backward.py:167:13
	v_add_nc_u32_e32 v24, s47, v20
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_cndmask_b32_e32 v36, 0x80000000, v3, vcc_lo
	.loc	1 168 18                        ; attention_backward.py:168:18
	s_and_b32 vcc_lo, s74, s3
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_lshlrev_b32_e32 v3, 1, v20
	v_cndmask_b32_e32 v39, 0x80000000, v1, vcc_lo
	.loc	1 167 13                        ; attention_backward.py:167:13
	v_add_nc_u32_e32 v1, s47, v26
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_lshlrev_b32_e32 v20, 1, v22
	.loc	1 168 18                        ; attention_backward.py:168:18
	s_and_b32 vcc_lo, s60, s3
	.loc	1 134 28                        ; attention_backward.py:134:28
	s_waitcnt vmcnt(15)
	ds_store_b8 v103, v14
	s_waitcnt vmcnt(14)
	ds_store_b8 v103, v9 offset:64
	s_waitcnt vmcnt(9)
	ds_store_b8 v103, v15 offset:512
	s_waitcnt vmcnt(8)
	ds_store_b8 v103, v17 offset:576
	ds_store_b8 v104, v10
	ds_store_b8 v104, v11 offset:64
	s_waitcnt vmcnt(7)
	ds_store_b8 v104, v18 offset:512
	s_waitcnt vmcnt(6)
	ds_store_b8 v104, v4 offset:576
	ds_store_b8 v105, v12
	ds_store_b8 v105, v13 offset:64
	s_waitcnt vmcnt(5)
	ds_store_b8 v105, v7 offset:512
	s_waitcnt vmcnt(4)
	ds_store_b8 v105, v8 offset:576
	s_waitcnt vmcnt(3)
	ds_store_b8 v106, v19
	s_waitcnt vmcnt(2)
	ds_store_b8 v106, v16 offset:64
	s_waitcnt vmcnt(1)
	ds_store_b8 v106, v5 offset:512
	s_waitcnt vmcnt(0)
	ds_store_b8 v106, v6 offset:576
	.loc	1 167 13                        ; attention_backward.py:167:13
	v_add_nc_u32_e32 v22, s47, v1
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_cndmask_b32_e32 v40, 0x80000000, v3, vcc_lo
	.loc	1 168 18                        ; attention_backward.py:168:18
	s_and_b32 vcc_lo, s73, s3
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_lshlrev_b32_e32 v3, 1, v24
	v_cndmask_b32_e32 v48, 0x80000000, v20, vcc_lo
	v_lshlrev_b32_e32 v20, 1, v23
	.loc	1 167 13                        ; attention_backward.py:167:13
	v_add_nc_u32_e32 v23, s47, v22
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_add_lshl_u32 v24, v24, s47, 1
	.loc	1 168 18                        ; attention_backward.py:168:18
	s_and_b32 vcc_lo, s56, s3
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_lshlrev_b32_e32 v1, 1, v1
	v_cndmask_b32_e32 v57, 0x80000000, v3, vcc_lo
	.loc	1 168 18                        ; attention_backward.py:168:18
	s_and_b32 vcc_lo, s57, s3
	.loc	1 167 13                        ; attention_backward.py:167:13
	v_add_nc_u32_e32 v3, s47, v23
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_dual_cndmask_b32 v41, 0x80000000, v24 :: v_dual_lshlrev_b32 v22, 1, v22
	.loc	1 168 18                        ; attention_backward.py:168:18
	s_and_b32 vcc_lo, s71, s3
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_lshlrev_b32_e32 v24, 1, v26
	v_cndmask_b32_e32 v62, 0x80000000, v20, vcc_lo
	.loc	1 168 18                        ; attention_backward.py:168:18
	s_and_b32 vcc_lo, s67, s3
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_lshlrev_b32_e32 v20, 1, v25
	v_cndmask_b32_e32 v64, 0x80000000, v2, vcc_lo
	.loc	1 167 13                        ; attention_backward.py:167:13
	v_add_nc_u32_e32 v2, s47, v3
	.loc	1 168 18                        ; attention_backward.py:168:18
	s_and_b32 vcc_lo, s70, s3
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_dual_cndmask_b32 v50, 0x80000000, v20 :: v_dual_lshlrev_b32 v3, 1, v3
	.loc	1 168 18                        ; attention_backward.py:168:18
	s_and_b32 vcc_lo, s65, s3
	.loc	1 167 13                        ; attention_backward.py:167:13
	v_add_nc_u32_e32 v20, s47, v2
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_dual_cndmask_b32 v53, 0x80000000, v24 :: v_dual_lshlrev_b32 v2, 1, v2
	.loc	1 168 18                        ; attention_backward.py:168:18
	s_and_b32 vcc_lo, s64, s3
	.loc	1 134 28                        ; attention_backward.py:134:28
	s_waitcnt lgkmcnt(0)
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_cndmask_b32_e32 v54, 0x80000000, v1, vcc_lo
	.loc	1 167 13                        ; attention_backward.py:167:13
	v_add_nc_u32_e32 v1, s47, v20
	.loc	1 168 18                        ; attention_backward.py:168:18
	s_and_b32 vcc_lo, s62, s3
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_dual_cndmask_b32 v55, 0x80000000, v22 :: v_dual_lshlrev_b32 v20, 1, v20
	.loc	1 168 18                        ; attention_backward.py:168:18
	s_and_b32 vcc_lo, s61, s3
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 167 13                        ; attention_backward.py:167:13
	v_add_nc_u32_e32 v22, s47, v1
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_lshlrev_b32_e32 v1, 1, v1
	v_lshlrev_b32_e32 v23, 1, v23
	.loc	1 134 28                        ; attention_backward.py:134:28
	s_barrier
	scratch_store_b32 off, v84, off offset:4 ; 4-byte Folded Spill
	s_mov_b32 s70, 0
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_cndmask_b32_e32 v65, 0x80000000, v23, vcc_lo
	.loc	1 168 18                        ; attention_backward.py:168:18
	s_and_b32 vcc_lo, s59, s3
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_cndmask_b32_e32 v66, 0x80000000, v3, vcc_lo
	.loc	1 167 13                        ; attention_backward.py:167:13
	v_add_nc_u32_e32 v3, s47, v22
	.loc	1 168 18                        ; attention_backward.py:168:18
	s_and_b32 vcc_lo, s58, s3
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_cndmask_b32_e32 v68, 0x80000000, v2, vcc_lo
	.loc	1 168 18                        ; attention_backward.py:168:18
	s_and_b32 vcc_lo, s55, s3
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 167 13                        ; attention_backward.py:167:13
	v_add_nc_u32_e32 v2, s47, v3
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_cndmask_b32_e32 v51, 0x80000000, v20, vcc_lo
	.loc	1 168 18                        ; attention_backward.py:168:18
	s_and_b32 vcc_lo, s53, s3
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_lshlrev_b32_e32 v20, 1, v22
	v_cndmask_b32_e32 v52, 0x80000000, v1, vcc_lo
	.loc	1 167 13                        ; attention_backward.py:167:13
	v_add_nc_u32_e32 v1, s47, v2
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_lshlrev_b32_e32 v3, 1, v3
	.loc	1 168 18                        ; attention_backward.py:168:18
	s_and_b32 vcc_lo, s51, s3
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_lshlrev_b32_e32 v2, 1, v2
	v_cndmask_b32_e32 v58, 0x80000000, v20, vcc_lo
	.loc	1 167 13                        ; attention_backward.py:167:13
	v_add_nc_u32_e32 v20, s47, v1
	.loc	1 168 18                        ; attention_backward.py:168:18
	s_and_b32 vcc_lo, s45, s3
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_lshlrev_b32_e32 v1, 1, v1
	v_cndmask_b32_e32 v61, 0x80000000, v3, vcc_lo
	.loc	1 168 18                        ; attention_backward.py:168:18
	s_and_b32 vcc_lo, s44, s3
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_add_lshl_u32 v3, v20, s47, 1
	v_dual_cndmask_b32 v67, 0x80000000, v2 :: v_dual_lshlrev_b32 v2, 1, v20
	.loc	1 168 18                        ; attention_backward.py:168:18
	s_and_b32 vcc_lo, s26, s3
	.loc	1 142 31                        ; attention_backward.py:142:31
	s_mov_b32 s26, s38
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_cndmask_b32_e32 v69, 0x80000000, v1, vcc_lo
	.loc	1 168 18                        ; attention_backward.py:168:18
	s_and_b32 vcc_lo, s27, s3
	.loc	1 142 31                        ; attention_backward.py:142:31
	s_mov_b32 s27, s39
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_cndmask_b32_e32 v70, 0x80000000, v2, vcc_lo
	.loc	1 168 18                        ; attention_backward.py:168:18
	s_and_b32 vcc_lo, s35, s3
	.loc	1 179 16                        ; attention_backward.py:179:16
	s_add_i32 s51, s31, 15
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_cndmask_b32_e32 v71, 0x80000000, v3, vcc_lo
	s_clause 0x1f
	buffer_load_u16 v12, v21, s[36:39], 0 offen
	buffer_load_u16 v13, v42, s[36:39], 0 offen
	buffer_load_u16 v14, v45, s[36:39], 0 offen
	buffer_load_u16 v15, v47, s[36:39], 0 offen
	buffer_load_u16 v4, v36, s[36:39], 0 offen
	buffer_load_u16 v5, v40, s[36:39], 0 offen
	buffer_load_u16 v6, v57, s[36:39], 0 offen
	buffer_load_u16 v7, v41, s[36:39], 0 offen
	buffer_load_u16 v17, v43, s[36:39], 0 offen
	buffer_load_u16 v18, v44, s[36:39], 0 offen
	buffer_load_u16 v19, v46, s[36:39], 0 offen
	buffer_load_u16 v20, v49, s[36:39], 0 offen
	buffer_load_u16 v27, v35, s[36:39], 0 offen
	buffer_load_u16 v28, v50, s[36:39], 0 offen
	buffer_load_u16 v29, v53, s[36:39], 0 offen
	buffer_load_u16 v30, v54, s[36:39], 0 offen
	buffer_load_u16 v31, v51, s[36:39], 0 offen
	buffer_load_u16 v32, v52, s[36:39], 0 offen
	buffer_load_u16 v37, v58, s[36:39], 0 offen
	buffer_load_u16 v38, v61, s[36:39], 0 offen
	buffer_load_u16 v23, v39, s[36:39], 0 offen
	buffer_load_u16 v24, v48, s[36:39], 0 offen
	buffer_load_u16 v25, v62, s[36:39], 0 offen
	buffer_load_u16 v26, v64, s[36:39], 0 offen
	buffer_load_u16 v10, v55, s[36:39], 0 offen
	buffer_load_u16 v9, v65, s[36:39], 0 offen
	buffer_load_u16 v8, v66, s[36:39], 0 offen
	buffer_load_u16 v3, v68, s[36:39], 0 offen
	buffer_load_u16 v2, v67, s[36:39], 0 offen
	buffer_load_u16 v1, v69, s[36:39], 0 offen
	buffer_load_u16 v34, v70, s[36:39], 0 offen
	buffer_load_u16 v33, v71, s[36:39], 0 offen
	.loc	1 171 28                        ; attention_backward.py:171:28
	s_and_b32 s37, s43, 0xffff
	s_mov_b32 s36, s42
	s_clause 0x1f
	buffer_load_u16 v22, v21, s[36:39], 0 offen
	buffer_load_u16 v21, v42, s[36:39], 0 offen
	buffer_load_u16 v16, v45, s[36:39], 0 offen
	buffer_load_u16 v11, v47, s[36:39], 0 offen
	buffer_load_u16 v45, v43, s[36:39], 0 offen
	buffer_load_u16 v44, v44, s[36:39], 0 offen
	buffer_load_u16 v43, v46, s[36:39], 0 offen
	buffer_load_u16 v42, v49, s[36:39], 0 offen
	buffer_load_u16 v56, v35, s[36:39], 0 offen
	buffer_load_u16 v51, v51, s[36:39], 0 offen
	buffer_load_u16 v59, v50, s[36:39], 0 offen
	buffer_load_u16 v52, v52, s[36:39], 0 offen
	buffer_load_u16 v60, v53, s[36:39], 0 offen
	buffer_load_u16 v53, v58, s[36:39], 0 offen
	buffer_load_u16 v63, v54, s[36:39], 0 offen
	buffer_load_u16 v58, v61, s[36:39], 0 offen
	buffer_load_u16 v54, v36, s[36:39], 0 offen
	buffer_load_u16 v49, v39, s[36:39], 0 offen
	buffer_load_u16 v47, v55, s[36:39], 0 offen
	buffer_load_u16 v46, v67, s[36:39], 0 offen
	buffer_load_u16 v61, v40, s[36:39], 0 offen
	buffer_load_u16 v55, v48, s[36:39], 0 offen
	buffer_load_u16 v50, v65, s[36:39], 0 offen
	buffer_load_u16 v48, v69, s[36:39], 0 offen
	buffer_load_u16 v65, v57, s[36:39], 0 offen
	buffer_load_u16 v62, v62, s[36:39], 0 offen
	buffer_load_u16 v57, v66, s[36:39], 0 offen
	buffer_load_u16 v36, v70, s[36:39], 0 offen
	buffer_load_u16 v67, v41, s[36:39], 0 offen
	buffer_load_u16 v66, v64, s[36:39], 0 offen
	buffer_load_u16 v64, v68, s[36:39], 0 offen
	buffer_load_u16 v35, v71, s[36:39], 0 offen
	v_xor_b32_e32 v69, 0x90, v108
	v_xor_b32_e32 v71, 0x1b0, v108
	v_xor_b32_e32 v70, 0x120, v108
.Ltmp3:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_and_b32_e32 v40, 1, v0
	s_delay_alu instid0(VALU_DEP_2)
.Ltmp4:
	.loc	1 171 28                        ; attention_backward.py:171:28
	v_add_nc_u32_e32 v112, 0, v70
	.loc	1 166 23                        ; attention_backward.py:166:23
	s_waitcnt vmcnt(59)
	v_lshlrev_b32_e32 v124, 16, v4
	.loc	1 171 28                        ; attention_backward.py:171:28
	v_lshlrev_b32_e32 v39, 4, v0
	.loc	1 166 23                        ; attention_backward.py:166:23
	s_waitcnt vmcnt(58)
	v_lshlrev_b32_e32 v125, 16, v5
	s_waitcnt vmcnt(56)
	v_lshlrev_b32_e32 v127, 16, v7
	v_lshlrev_b32_e32 v126, 16, v6
	.loc	1 171 28                        ; attention_backward.py:171:28
	s_waitcnt vmcnt(26)
	v_lshlrev_b32_e32 v143, 16, v44
	v_and_b32_e32 v72, 0x70, v39
	s_waitcnt vmcnt(24)
	v_lshlrev_b32_e32 v145, 16, v42
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_lshlrev_b32_e32 v98, 16, v17
	v_lshlrev_b32_e32 v99, 16, v18
	v_lshlrev_b32_e32 v120, 16, v29
	v_lshlrev_b32_e32 v100, 16, v19
	v_lshlrev_b32_e32 v122, 16, v31
	.loc	1 124 31                        ; attention_backward.py:124:31
	v_and_b32_e32 v107, 15, v0
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_lshlrev_b32_e32 v37, 16, v37
	.loc	1 134 28                        ; attention_backward.py:134:28
	v_and_b32_e32 v165, 12, v0
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_lshlrev_b32_e32 v128, 16, v23
	.loc	1 134 28                        ; attention_backward.py:134:28
	v_lshlrev_b32_e32 v68, 4, v172
	v_lshlrev_b32_e32 v41, 5, v107
	.loc	1 124 31                        ; attention_backward.py:124:31
	v_or_b32_e32 v82, v82, v107
	.loc	1 134 28                        ; attention_backward.py:134:28
	v_lshlrev_b32_e32 v74, 1, v165
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_lshlrev_b32_e32 v131, 16, v26
	.loc	1 171 28                        ; attention_backward.py:171:28
	v_add_nc_u32_e32 v115, 0, v75
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_lshlrev_b32_e32 v129, 16, v24
	.loc	1 124 21                        ; attention_backward.py:124:21
	v_or_b32_e32 v75, s54, v82
	.loc	1 134 28                        ; attention_backward.py:134:28
	v_or3_b32 v83, v41, v68, v74
.Ltmp5:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_add_nc_u32_e32 v68, 0, v84
.Ltmp6:
	.loc	1 143 17                        ; attention_backward.py:143:17
	v_add_nc_u32_e32 v84, s50, v82
	.loc	1 171 28                        ; attention_backward.py:171:28
	v_add_nc_u32_e32 v111, 0, v69
	.loc	1 128 21                        ; attention_backward.py:128:21
	v_cmp_gt_i32_e64 s4, s30, v75
	.loc	1 134 28                        ; attention_backward.py:134:28
	v_add_nc_u32_e32 v69, 0, v83
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_lshlrev_b32_e32 v132, 16, v10
	.loc	1 142 31                        ; attention_backward.py:142:31
	v_lshlrev_b32_e32 v82, 1, v84
	.loc	1 171 28                        ; attention_backward.py:171:28
	v_add_nc_u32_e32 v110, v103, v0
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_lshlrev_b32_e32 v130, 16, v25
	.loc	1 171 28                        ; attention_backward.py:171:28
	v_add_nc_u32_e32 v113, 0, v71
	.loc	1 134 28                        ; attention_backward.py:134:28
	v_xad_u32 v71, v83, 8, 0
	.loc	1 142 31                        ; attention_backward.py:142:31
	v_cndmask_b32_e64 v75, 0x80000000, v82, s4
	.loc	1 171 28                        ; attention_backward.py:171:28
	v_lshl_or_b32 v117, v107, 7, v72
	.loc	1 134 28                        ; attention_backward.py:134:28
	v_xad_u32 v72, v83, 16, 0
	v_xad_u32 v73, v83, 24, 0
	scratch_store_b32 off, v84, off         ; 4-byte Folded Spill
	.loc	1 142 31                        ; attention_backward.py:142:31
	buffer_load_u16 v75, v75, s[24:27], 0 offen
	.loc	1 134 28                        ; attention_backward.py:134:28
	ds_load_b64 v[82:83], v69
	ds_load_b64 v[84:85], v71
	ds_load_b64 v[86:87], v72
	.loc	1 143 17                        ; attention_backward.py:143:17
	ds_load_b64 v[88:89], v73
	.loc	1 171 28                        ; attention_backward.py:171:28
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b16 v110, v22
	ds_store_b16 v110, v45 offset:1024
	s_waitcnt vmcnt(24)
	ds_store_b16 v110, v56 offset:2048
	ds_store_b16 v111, v21
	ds_store_b16 v111, v44 offset:1024
	s_waitcnt vmcnt(23)
	ds_store_b16 v110, v51 offset:3072
	s_waitcnt vmcnt(22)
	ds_store_b16 v111, v59 offset:2048
	s_waitcnt vmcnt(21)
	ds_store_b16 v111, v52 offset:3072
	ds_store_b16 v112, v16
	ds_store_b16 v112, v43 offset:1024
	s_waitcnt vmcnt(20)
	ds_store_b16 v112, v60 offset:2048
	ds_store_b16 v113, v11
	ds_store_b16 v113, v42 offset:1024
	s_waitcnt vmcnt(19)
	ds_store_b16 v112, v53 offset:3072
	s_waitcnt vmcnt(18)
	ds_store_b16 v113, v63 offset:2048
	s_waitcnt vmcnt(17)
	ds_store_b16 v113, v58 offset:3072
	s_waitcnt vmcnt(16)
	ds_store_b16 v114, v54
	s_waitcnt vmcnt(15)
	ds_store_b16 v114, v49 offset:1024
	s_waitcnt vmcnt(14)
	ds_store_b16 v114, v47 offset:2048
	s_waitcnt vmcnt(13)
	ds_store_b16 v114, v46 offset:3072
	s_waitcnt vmcnt(12)
	ds_store_b16 v115, v61
	s_waitcnt vmcnt(11)
	ds_store_b16 v115, v55 offset:1024
	s_waitcnt vmcnt(10)
	ds_store_b16 v115, v50 offset:2048
	s_waitcnt vmcnt(9)
	ds_store_b16 v115, v48 offset:3072
	s_waitcnt vmcnt(8)
	ds_store_b16 v116, v65
	s_waitcnt vmcnt(7)
	ds_store_b16 v116, v62 offset:1024
	s_waitcnt vmcnt(6)
	ds_store_b16 v116, v57 offset:2048
	s_waitcnt vmcnt(5)
	ds_store_b16 v116, v36 offset:3072
	s_waitcnt vmcnt(4)
	ds_store_b16 v118, v67
	s_waitcnt vmcnt(3)
	ds_store_b16 v118, v66 offset:1024
	s_waitcnt vmcnt(2)
	ds_store_b16 v118, v64 offset:2048
	s_waitcnt vmcnt(1)
	ds_store_b16 v118, v35 offset:3072
	v_lshlrev_b32_e32 v42, 16, v56
	v_lshlrev_b32_e32 v56, 16, v58
	v_lshlrev_b32_e32 v58, 16, v61
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_lshlrev_b32_e32 v34, 16, v34
	.loc	1 171 28                        ; attention_backward.py:171:28
	v_lshlrev_b32_e32 v36, 16, v36
	v_lshlrev_b32_e32 v61, 16, v62
	v_lshlrev_b32_e32 v62, 16, v66
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_lshlrev_b32_e32 v135, 16, v3
	.loc	1 171 28                        ; attention_backward.py:171:28
	v_lshlrev_b32_e32 v49, 16, v49
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_lshlrev_b32_e32 v33, 16, v33
	.loc	1 176 24                        ; attention_backward.py:176:24
	v_mul_f32_e32 v166, v130, v61
	v_dual_mul_f32 v168, v131, v62 :: v_dual_lshlrev_b32 v35, 16, v35
	.loc	1 171 28                        ; attention_backward.py:171:28
	v_lshlrev_b32_e32 v44, 16, v60
	v_lshlrev_b32_e32 v60, 16, v67
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp7:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_mov_b32_dpp v166, v166 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_mov_b32_dpp v168, v168 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp8:
	.loc	1 176 24                        ; attention_backward.py:176:24
	v_mul_f32_e32 v163, v128, v49
	v_mul_f32_e32 v151, v125, v58
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_dual_mul_f32 v153, v127, v60 :: v_dual_fmac_f32 v166, v130, v61
.Ltmp9:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_fmac_f32_e32 v168, v131, v62
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp10:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_mov_b32_dpp v163, v163 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_mov_b32_dpp v151, v151 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_mov_b32_dpp v153, v153 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp11:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_dpp v62, v166, v166 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_dual_fmac_f32 v163, v128, v49 :: v_dual_lshlrev_b32 v52, 16, v52
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v151, v125, v58
	v_fmac_f32_e32 v153, v127, v60
	s_delay_alu instid0(VALU_DEP_4)
	v_add_f32_dpp v62, v62, v62 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp12:
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_lshlrev_b32_e32 v137, 16, v1
.Ltmp13:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_dpp v60, v163, v163 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp14:
	.loc	1 171 28                        ; attention_backward.py:171:28
	v_lshlrev_b32_e32 v55, 16, v55
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_lshlrev_b32_e32 v134, 16, v8
.Ltmp15:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_dpp v62, v62, v62 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp16:
	.loc	1 171 28                        ; attention_backward.py:171:28
	v_lshlrev_b32_e32 v51, 16, v51
.Ltmp17:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_dpp v60, v60, v60 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp18:
	.loc	1 176 24                        ; attention_backward.py:176:24
	v_mul_f32_e32 v164, v129, v55
	.loc	1 171 28                        ; attention_backward.py:171:28
	v_lshlrev_b32_e32 v54, 16, v54
.Ltmp19:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_permlanex16_b32 v125, v62, -1, -1 op_sel:[1,0]
.Ltmp20:
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_lshlrev_b32_e32 v123, 16, v32
.Ltmp21:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_dpp v60, v60, v60 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp22:
	.loc	1 171 28                        ; attention_backward.py:171:28
	v_lshlrev_b32_e32 v67, 16, v57
	v_lshlrev_b32_e32 v53, 16, v53
	s_delay_alu instid0(VALU_DEP_4)
.Ltmp23:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_dual_add_f32 v62, v62, v125 :: v_dual_mul_f32 v147, v123, v52
.Ltmp24:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_mov_b32_dpp v164, v164 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp25:
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_lshlrev_b32_e32 v38, 16, v38
	.loc	1 176 24                        ; attention_backward.py:176:24
	v_mul_f32_e32 v146, v122, v51
	v_mul_f32_e32 v150, v124, v54
.Ltmp26:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_mov_b32_dpp v147, v147 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp27:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_dual_fmac_f32 v164, v129, v55 :: v_dual_mul_f32 v149, v38, v56
.Ltmp28:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_mov_b32_dpp v146, v146 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_mov_b32_dpp v150, v150 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp29:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_fmac_f32_e32 v147, v123, v52
.Ltmp30:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_permlanex16_b32 v123, v60, -1, -1 op_sel:[1,0]
.Ltmp31:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_dpp v61, v164, v164 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp32:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_mov_b32_dpp v149, v149 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp33:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_fmac_f32_e32 v146, v122, v51
	v_fmac_f32_e32 v150, v124, v54
	v_add_f32_e32 v60, v60, v123
.Ltmp34:
	.loc	1 176 24                        ; attention_backward.py:176:24
	v_mul_f32_e32 v148, v37, v53
.Ltmp35:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_dpp v61, v61, v61 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp36:
	.loc	1 171 28                        ; attention_backward.py:171:28
	v_lshl_or_b32 v70, v172, 6, v117
.Ltmp37:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_fmac_f32_e32 v149, v38, v56
.Ltmp38:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_readlane_b32 s38, v60, 31
.Ltmp39:
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_lshlrev_b32_e32 v136, 16, v2
	.loc	1 171 28                        ; attention_backward.py:171:28
	v_lshlrev_b32_e32 v144, 16, v43
	v_lshlrev_b32_e32 v43, 16, v59
	v_lshlrev_b32_e32 v59, 16, v65
.Ltmp40:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_mov_b32_dpp v148, v148 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp41:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_dpp v52, v146, v146 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v56, v150, v150 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v61, v61, v61 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp42:
	.loc	1 176 24                        ; attention_backward.py:176:24
	v_mul_f32_e32 v152, v126, v59
.Ltmp43:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_fmac_f32_e32 v148, v37, v53
.Ltmp44:
	.loc	1 171 28                        ; attention_backward.py:171:28
	v_add_nc_u32_e32 v76, 0, v70
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_lshlrev_b32_e32 v133, 16, v9
	.loc	1 171 28                        ; attention_backward.py:171:28
	v_lshlrev_b32_e32 v66, 16, v50
.Ltmp45:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_mov_b32_dpp v152, v152 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_lshlrev_b32_e32 v39, 6, v40
.Ltmp46:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_dpp v54, v148, v148 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp47:
	.loc	1 171 28                        ; attention_backward.py:171:28
	v_lshlrev_b32_e32 v140, 16, v16
.Ltmp48:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_dpp v52, v52, v52 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_fmac_f32_e32 v152, v126, v59
	v_add_f32_dpp v56, v56, v56 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v54, v54, v54 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp49:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_permlanex16_b32 v124, v61, -1, -1 op_sel:[1,0]
.Ltmp50:
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_lshlrev_b32_e32 v72, 16, v14
.Ltmp51:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_dpp v58, v152, v152 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp52:
	.loc	1 171 28                        ; attention_backward.py:171:28
	v_xad_u32 v77, v70, 16, 0
	v_xad_u32 v93, v70, 32, 0
	v_xad_u32 v94, v70, 48, 0
	v_xad_u32 v95, v70, 64, 0
.Ltmp53:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_dpp v58, v58, v58 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp54:
	.loc	1 171 28                        ; attention_backward.py:171:28
	v_xad_u32 v96, 0x50, v70, 0
	v_xad_u32 v97, 0x60, v70, 0
	v_xad_u32 v70, 0x70, v70, 0
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_lshlrev_b32_e32 v69, 16, v12
	v_lshlrev_b32_e32 v71, 16, v13
	v_lshlrev_b32_e32 v73, 16, v15
	.loc	1 171 28                        ; attention_backward.py:171:28
	v_lshlrev_b32_e32 v139, 16, v21
	v_lshlrev_b32_e32 v141, 16, v11
	s_waitcnt lgkmcnt(0)
	s_barrier
.Ltmp55:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_dpp v52, v52, v52 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp56:
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_lshlrev_b32_e32 v101, 16, v20
.Ltmp57:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_dpp v54, v54, v54 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp58:
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_lshlrev_b32_e32 v109, 16, v27
.Ltmp59:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_dpp v56, v56, v56 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp60:
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_lshlrev_b32_e32 v121, 16, v30
.Ltmp61:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_dpp v58, v58, v58 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp62:
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_lshlrev_b32_e32 v119, 16, v28
.Ltmp63:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_e32 v61, v61, v124
.Ltmp64:
	.loc	1 176 24                        ; attention_backward.py:176:24
	v_mul_f32_e32 v50, v72, v140
.Ltmp65:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_readlane_b32 s40, v62, 31
.Ltmp66:
	.loc	1 171 28                        ; attention_backward.py:171:28
	v_lshlrev_b32_e32 v138, 16, v22
	ds_load_b128 v[1:4], v76
	ds_load_b128 v[5:8], v77
	ds_load_b128 v[9:12], v93
	ds_load_b128 v[13:16], v94
	ds_load_b128 v[17:20], v95
	ds_load_b128 v[21:24], v96
	ds_load_b128 v[25:28], v97
	ds_load_b128 v[29:32], v70
	.loc	1 176 24                        ; attention_backward.py:176:24
	v_mul_f32_e32 v96, v120, v44
	v_mul_f32_e32 v94, v109, v42
.Ltmp67:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_mov_b32_dpp v50, v50 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp68:
	.loc	1 171 28                        ; attention_backward.py:171:28
	v_lshlrev_b32_e32 v142, 16, v45
	v_lshlrev_b32_e32 v76, 16, v64
.Ltmp69:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_mov_b32_dpp v96, v96 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp70:
	.loc	1 171 28                        ; attention_backward.py:171:28
	v_lshlrev_b32_e32 v45, 16, v63
.Ltmp71:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_mov_b32_dpp v94, v94 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp72:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_dual_fmac_f32 v50, v72, v140 :: v_dual_mul_f32 v63, v98, v142
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_fmac_f32 v96, v120, v44 :: v_dual_mul_f32 v97, v121, v45
	v_fmac_f32_e32 v94, v109, v42
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_add_f32_dpp v42, v50, v50 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp73:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_mov_b32_dpp v63, v63 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_4)
.Ltmp74:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_dpp v50, v96, v96 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp75:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_mov_b32_dpp v97, v97 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp76:
	.loc	1 171 28                        ; attention_backward.py:171:28
	v_lshlrev_b32_e32 v93, 16, v48
	v_lshlrev_b32_e32 v47, 16, v47
.Ltmp77:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_fmac_f32_e32 v63, v98, v142
	v_add_f32_dpp v50, v50, v50 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_fmac_f32_e32 v97, v121, v45
.Ltmp78:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_permlanex16_b32 v121, v58, -1, -1 op_sel:[1,0]
.Ltmp79:
	.loc	1 176 24                        ; attention_backward.py:176:24
	v_mul_f32_e32 v169, v132, v47
.Ltmp80:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_dpp v44, v63, v63 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v50, v50, v50 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v51, v97, v97 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v63, v168, v168 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_e32 v58, v58, v121
	v_add_f32_dpp v44, v44, v44 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp81:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_permlanex16_b32 v97, v50, -1, -1 op_sel:[1,0]
	v_mov_b32_dpp v169, v169 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp82:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_dpp v63, v63, v63 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp83:
	.loc	1 171 28                        ; attention_backward.py:171:28
	v_lshlrev_b32_e32 v77, 16, v46
.Ltmp84:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_dpp v44, v44, v44 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_e32 v50, v50, v97
.Ltmp85:
	.loc	1 176 24                        ; attention_backward.py:176:24
	v_mul_f32_e32 v64, v99, v143
.Ltmp86:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_dpp v63, v63, v63 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_fmac_f32_e32 v169, v132, v47
	v_add_f32_dpp v42, v42, v42 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v59, v153, v153 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp87:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_mov_b32_dpp v64, v64 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_permlanex16_b32 v126, v63, -1, -1 op_sel:[1,0]
.Ltmp88:
	.loc	1 176 24                        ; attention_backward.py:176:24
	v_mul_f32_e32 v65, v100, v144
.Ltmp89:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_dpp v42, v42, v42 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v59, v59, v59 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_fmac_f32_e32 v64, v99, v143
.Ltmp90:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_permlanex16_b32 v99, v52, -1, -1 op_sel:[1,0]
.Ltmp91:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_e32 v63, v63, v126
.Ltmp92:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_mov_b32_dpp v65, v65 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp93:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_dpp v59, v59, v59 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v45, v64, v64 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_e32 v52, v52, v99
.Ltmp94:
	.loc	1 176 24                        ; attention_backward.py:176:24
	v_mul_f32_e32 v70, v101, v145
.Ltmp95:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_readlane_b32 s41, v63, 31
.Ltmp96:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_fmac_f32_e32 v65, v100, v144
	v_add_f32_dpp v45, v45, v45 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v55, v149, v149 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp97:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_mov_b32_dpp v70, v70 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp98:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_dpp v51, v51, v51 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp99:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_readlane_b32 s15, v50, 31
.Ltmp100:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_dpp v45, v45, v45 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v55, v55, v55 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_fmac_f32_e32 v70, v101, v145
.Ltmp101:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_permlanex16_b32 v101, v54, -1, -1 op_sel:[1,0]
.Ltmp102:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_dpp v51, v51, v51 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp103:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_permlanex16_b32 v72, v45, -1, -1 op_sel:[1,0]
.Ltmp104:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_dpp v55, v55, v55 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v47, v70, v70 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_e32 v54, v54, v101
.Ltmp105:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_permlanex16_b32 v98, v51, -1, -1 op_sel:[1,0]
.Ltmp106:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_dual_add_f32 v45, v45, v72 :: v_dual_mov_b32 v72, s41
.Ltmp107:
	.loc	1 176 24                        ; attention_backward.py:176:24
	v_mul_f32_e32 v95, v119, v43
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
.Ltmp108:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_readlane_b32 s25, v54, 31
.Ltmp109:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_dpp v47, v47, v47 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp110:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_readlane_b32 s10, v45, 31
	v_permlanex16_b32 v109, v55, -1, -1 op_sel:[1,0]
	v_mov_b32_dpp v95, v95 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp111:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_e32 v51, v51, v98
	v_add_f32_dpp v47, v47, v47 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp112:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_readlane_b32 s17, v52, 31
.Ltmp113:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_e32 v55, v55, v109
	v_fmac_f32_e32 v95, v119, v43
.Ltmp114:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_permlanex16_b32 v119, v56, -1, -1 op_sel:[1,0]
	v_readlane_b32 s16, v51, 31
	v_mov_b32_e32 v52, s15
	v_readlane_b32 s26, v55, 31
.Ltmp115:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_dpp v49, v95, v95 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_e32 v56, v56, v119
.Ltmp116:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_mov_b32_e32 v54, s17
	s_waitcnt lgkmcnt(0)
	s_barrier
.Ltmp117:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_dpp v49, v49, v49 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp118:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_readlane_b32 s27, v56, 31
	v_mov_b32_e32 v56, s25
.Ltmp119:
	.loc	1 176 24                        ; attention_backward.py:176:24
	v_mul_f32_e32 v48, v71, v139
.Ltmp120:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_readlane_b32 s36, v58, 31
.Ltmp121:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_dpp v49, v49, v49 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp122:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_mov_b32_e32 v62, s27
	v_readlane_b32 s39, v61, 31
	v_mov_b32_dpp v48, v48 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_permlanex16_b32 v96, v49, -1, -1 op_sel:[1,0]
.Ltmp123:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_dual_fmac_f32 v48, v71, v139 :: v_dual_add_f32 v49, v49, v96
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_add_f32_dpp v38, v48, v48 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v48, v94, v94 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp124:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_permlanex16_b32 v94, v47, -1, -1 op_sel:[1,0]
	v_readlane_b32 s14, v49, 31
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp125:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_dpp v38, v38, v38 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v48, v48, v48 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_add_f32_e32 v47, v47, v94
.Ltmp126:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_mov_b32_e32 v51, s14
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp127:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_dpp v38, v38, v38 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v48, v48, v48 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_4)
.Ltmp128:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_readlane_b32 s12, v47, 31
	v_mov_b32_e32 v47, s10
	v_permlanex16_b32 v122, v59, -1, -1 op_sel:[1,0]
	v_permlanex16_b32 v95, v48, -1, -1 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_mov_b32_e32 v49, s12
.Ltmp129:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_dual_add_f32 v59, v59, v122 :: v_dual_add_f32 v48, v48, v95
.Ltmp130:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_permlanex16_b32 v71, v44, -1, -1 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_readlane_b32 s37, v59, 31
	v_readlane_b32 s13, v48, 31
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
.Ltmp131:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_dual_add_f32 v44, v44, v71 :: v_dual_mov_b32 v71, s40
.Ltmp132:
	.loc	1 176 24                        ; attention_backward.py:176:24
	v_mul_f32_e32 v46, v69, v138
.Ltmp133:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_mov_b32_e32 v50, s13
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_readlane_b32 s9, v44, 31
	v_mov_b32_dpp v46, v46 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
.Ltmp134:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_fmac_f32_e32 v46, v69, v138
.Ltmp135:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_permlanex16_b32 v69, v42, -1, -1 op_sel:[1,0]
.Ltmp136:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_dpp v37, v46, v46 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_2)
	v_add_f32_e32 v42, v42, v69
.Ltmp137:
	.loc	1 176 24                        ; attention_backward.py:176:24
	v_mul_f32_e32 v57, v73, v141
.Ltmp138:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_dpp v46, v65, v65 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp139:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_permlanex16_b32 v65, v38, -1, -1 op_sel:[1,0]
	v_add_nc_u32_e32 v167, 0, v39
.Ltmp140:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_dpp v37, v37, v37 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp141:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_mov_b32_dpp v57, v57 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp142:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_dpp v46, v46, v46 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_dual_add_f32 v38, v38, v65 :: v_dual_mov_b32 v65, s37
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_add_f32_dpp v37, v37, v37 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_fmac_f32_e32 v57, v73, v141
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_add_f32_dpp v46, v46, v46 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp143:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_readlane_b32 s6, v38, 31
.Ltmp144:
	.loc	1 176 24                        ; attention_backward.py:176:24
	v_mul_f32_e32 v38, v134, v67
.Ltmp145:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_dpp v53, v147, v147 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v43, v57, v57 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v57, v151, v151 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp146:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_permlanex16_b32 v64, v37, -1, -1 op_sel:[1,0]
	v_permlanex16_b32 v73, v46, -1, -1 op_sel:[1,0]
.Ltmp147:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_dpp v53, v53, v53 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v43, v43, v43 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v57, v57, v57 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_dual_add_f32 v37, v37, v64 :: v_dual_add_f32 v46, v46, v73
	v_add_f32_dpp v53, v53, v53 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_add_f32_dpp v43, v43, v43 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v57, v57, v57 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_4)
.Ltmp148:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_readlane_b32 s5, v37, 31
	v_readlane_b32 s7, v42, 31
	v_readlane_b32 s11, v46, 31
	v_permlanex16_b32 v70, v43, -1, -1 op_sel:[1,0]
	v_mov_b32_dpp v38, v38 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_mov_b32_e32 v42, s5
	v_mov_b32_e32 v44, s7
	s_delay_alu instid0(VALU_DEP_4)
	v_dual_mov_b32 v46, s9 :: v_dual_add_f32 v43, v43, v70
	v_mov_b32_e32 v48, s11
.Ltmp149:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_fmac_f32_e32 v38, v134, v67
.Ltmp150:
	.loc	1 176 24                        ; attention_backward.py:176:24
	v_mul_f32_e32 v67, v33, v35
.Ltmp151:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_mov_b32_e32 v69, s38
	v_readlane_b32 s8, v43, 31
	v_mov_b32_e32 v43, s6
	v_permlanex16_b32 v100, v53, -1, -1 op_sel:[1,0]
.Ltmp152:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_dpp v38, v38, v38 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp153:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_mov_b32_dpp v67, v67 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_mov_b32_e32 v45, s8
	v_permlanex16_b32 v120, v57, -1, -1 op_sel:[1,0]
.Ltmp154:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_e32 v53, v53, v100
	v_add_f32_dpp v38, v38, v38 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_dual_fmac_f32 v67, v33, v35 :: v_dual_mov_b32 v64, s36
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_add_f32_e32 v57, v57, v120
.Ltmp155:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_readlane_b32 s24, v53, 31
	v_mov_b32_e32 v53, s16
.Ltmp156:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_dpp v38, v38, v38 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp157:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_mov_b32_e32 v70, s39
	v_readlane_b32 s35, v57, 31
	v_mov_b32_e32 v55, s24
	v_mov_b32_e32 v57, s26
	ds_store_b128 v68, v[42:45]
	ds_store_b128 v68, v[46:49] offset:16
	ds_store_b128 v68, v[50:53] offset:32
	ds_store_b128 v68, v[54:57] offset:48
.Ltmp158:
	.loc	1 176 24                        ; attention_backward.py:176:24
	v_dual_mul_f32 v50, v135, v76 :: v_dual_mul_f32 v51, v136, v77
.Ltmp159:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_dpp v53, v169, v169 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp160:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_delay_alu instid0(VALU_DEP_2)
	v_mov_b32_dpp v50, v50 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_mov_b32_dpp v51, v51 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp161:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_dpp v53, v53, v53 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp162:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	ds_load_b128 v[58:61], v167
	ds_load_b128 v[54:57], v167 offset:16
	ds_load_b128 v[46:49], v167 offset:32
	ds_load_b128 v[42:45], v167 offset:48
	v_dual_mov_b32 v63, s35 :: v_dual_fmac_f32 v50, v135, v76
.Ltmp163:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_fmac_f32_e32 v51, v136, v77
	v_add_f32_dpp v53, v53, v53 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp164:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_permlanex16_b32 v77, v38, -1, -1 op_sel:[1,0]
	s_waitcnt lgkmcnt(0)
.Ltmp165:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_dpp v33, v50, v50 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp166:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	s_barrier
	v_permlanex16_b32 v73, v53, -1, -1 op_sel:[1,0]
.Ltmp167:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_e32 v38, v38, v77
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_add_f32_dpp v33, v33, v33 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_e32 v53, v53, v73
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp168:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_readlane_b32 s7, v38, 31
.Ltmp169:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_dpp v33, v33, v33 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp170:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_mov_b32_e32 v189, v59
	s_delay_alu instid0(VALU_DEP_4)
	v_readlane_b32 s5, v53, 31
	v_dual_mov_b32 v191, v61 :: v_dual_mov_b32 v190, v60
	v_mov_b32_e32 v199, v54
	v_permlanex16_b32 v38, v33, -1, -1 op_sel:[1,0]
	v_dual_mov_b32 v200, v55 :: v_dual_mov_b32 v209, v46
	v_mov_b32_e32 v201, v56
	v_mov_b32_e32 v203, v57
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_3)
.Ltmp171:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_dual_add_f32 v33, v33, v38 :: v_dual_mov_b32 v202, v48
.Ltmp172:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_dual_mov_b32 v177, v45 :: v_dual_mov_b32 v174, v42
	v_mov_b32_e32 v175, v43
	v_readlane_b32 s8, v33, 31
	v_mov_b32_e32 v33, s5
.Ltmp173:
	.loc	1 176 24                        ; attention_backward.py:176:24
	v_dual_mul_f32 v37, v133, v66 :: v_dual_mov_b32 v176, v44
	.loc	1 179 15                        ; attention_backward.py:179:15
	s_ashr_i32 s5, s51, 31
.Ltmp174:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_mov_b32_dpp v189, v189 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp175:
	.loc	1 179 15                        ; attention_backward.py:179:15
	s_lshr_b32 s5, s5, 28
	s_delay_alu instid0(VALU_DEP_2)
.Ltmp176:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_mov_b32_dpp v37, v37 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_mov_b32_dpp v190, v190 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v191, v191 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v199, v199 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v200, v200 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp177:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_dual_fmac_f32 v37, v133, v66 :: v_dual_mul_f32 v66, v34, v36
.Ltmp178:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_mov_b32_dpp v201, v201 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v203, v203 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v209, v209 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_4)
.Ltmp179:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_dpp v37, v37, v37 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp180:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_mov_b32_dpp v66, v66 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_mov_b32_dpp v202, v202 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v174, v174 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v175, v175 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp181:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_dpp v37, v37, v37 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_fmac_f32_e32 v66, v34, v36
	v_add_f32_dpp v34, v51, v51 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp182:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_mov_b32_dpp v176, v176 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v177, v177 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp183:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_dpp v37, v37, v37 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp184:
	.loc	1 179 15                        ; attention_backward.py:179:15
	s_add_i32 s51, s51, s5
.Ltmp185:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_dpp v34, v34, v34 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp186:
	.loc	1 123 19                        ; attention_backward.py:123:19
	s_mul_hi_u32 s5, s48, s34
	.loc	1 179 14                        ; attention_backward.py:179:14
	s_and_b32 s71, s51, -16
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp187:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_dpp v34, v34, v34 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp188:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_permlanex16_b32 v50, v34, -1, -1 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
.Ltmp189:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_e32 v34, v34, v50
.Ltmp190:
	.loc	1 176 24                        ; attention_backward.py:176:24
	v_mul_f32_e32 v52, v137, v93
.Ltmp191:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_readlane_b32 s9, v34, 31
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_mov_b32_dpp v52, v52 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_mov_b32_e32 v50, s9
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp192:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_fmac_f32_e32 v52, v137, v93
	v_add_f32_dpp v35, v52, v52 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add_f32_dpp v35, v35, v35 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v35, v35, v35 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp193:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_permlanex16_b32 v51, v35, -1, -1 op_sel:[1,0]
.Ltmp194:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_e32 v35, v35, v51
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
.Ltmp195:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_readlane_b32 s10, v35, 31
	v_mov_b32_e32 v35, s7
	v_permlanex16_b32 v76, v37, -1, -1 op_sel:[1,0]
	v_mov_b32_e32 v51, s10
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp196:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_e32 v37, v37, v76
.Ltmp197:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_readlane_b32 s6, v37, 31
.Ltmp198:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_dpp v37, v67, v67 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp199:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_mov_b32_e32 v34, s6
.Ltmp200:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_dpp v37, v37, v37 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp201:
	.loc	1 180 9                         ; attention_backward.py:180:9
	s_bfe_u32 s6, s20, 0x10008
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp202:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_dpp v37, v37, v37 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp203:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_permlanex16_b32 v53, v37, -1, -1 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp204:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_e32 v37, v37, v53
.Ltmp205:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_readlane_b32 s12, v37, 31
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_mov_b32_e32 v53, s12
.Ltmp206:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_dpp v36, v66, v66 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v36, v36, v36 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add_f32_dpp v36, v36, v36 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp207:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_permlanex16_b32 v52, v36, -1, -1 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp208:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_e32 v36, v36, v52
.Ltmp209:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_readlane_b32 s11, v36, 31
	v_mov_b32_e32 v36, s8
	s_delay_alu instid0(VALU_DEP_2)
	v_mov_b32_e32 v52, s11
	ds_store_b128 v68, v[62:65]
	ds_store_b128 v68, v[69:72] offset:16
	ds_store_b128 v68, v[33:36] offset:32
	ds_store_b128 v68, v[50:53] offset:48
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[70:73], v167
	ds_load_b128 v[66:69], v167 offset:16
	ds_load_b128 v[62:65], v167 offset:32
	ds_load_b128 v[50:53], v167 offset:48
	v_mov_b32_e32 v188, v58
	v_mov_b32_e32 v210, v47
	v_mov_b32_e32 v194, v49
	s_waitcnt lgkmcnt(3)
	v_mov_b32_e32 v192, v70
	v_dual_mov_b32 v196, v71 :: v_dual_mov_b32 v197, v72
	s_waitcnt lgkmcnt(2)
	v_dual_mov_b32 v198, v73 :: v_dual_mov_b32 v205, v67
	s_waitcnt lgkmcnt(1)
	v_dual_mov_b32 v204, v66 :: v_dual_mov_b32 v193, v63
	v_dual_mov_b32 v206, v68 :: v_dual_mov_b32 v195, v62
	v_mov_b32_e32 v208, v69
	s_waitcnt lgkmcnt(0)
	v_dual_mov_b32 v186, v64 :: v_dual_mov_b32 v173, v53
	v_dual_mov_b32 v187, v65 :: v_dual_mov_b32 v178, v50
	v_dual_mov_b32 v179, v51 :: v_dual_mov_b32 v180, v52
	v_mov_b32_dpp v188, v188 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v192, v192 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v196, v196 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v197, v197 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v198, v198 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v204, v204 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v205, v205 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v206, v206 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v208, v208 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v210, v210 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v194, v194 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v195, v195 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v193, v193 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v186, v186 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v187, v187 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v178, v178 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v179, v179 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v180, v180 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v173, v173 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp210:
	.loc	1 180 9                         ; attention_backward.py:180:9
	s_cbranch_scc0 .LBB0_2
; %bb.1:
	.loc	1 184 17                        ; attention_backward.py:184:17
	s_add_i32 s6, s54, s22
	.loc	1 181 39                        ; attention_backward.py:181:39
	s_sub_i32 s8, s54, s21
	.loc	1 184 17                        ; attention_backward.py:184:17
	s_add_i32 s6, s6, s23
	.loc	1 181 39                        ; attention_backward.py:181:39
	s_add_i32 s8, s8, s23
	.loc	1 184 17                        ; attention_backward.py:184:17
	s_add_i32 s6, s6, 32
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	.loc	1 182 25                        ; attention_backward.py:182:25
	s_min_i32 s6, s31, s6
	.loc	1 187 35                        ; attention_backward.py:187:35
	s_add_i32 s6, s6, 15
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	.loc	1 187 34 is_stmt 0              ; attention_backward.py:187:34
	s_ashr_i32 s7, s6, 31
	s_lshr_b32 s7, s7, 28
	s_delay_alu instid0(SALU_CYCLE_1)
	s_add_i32 s6, s6, s7
	.loc	1 181 25 is_stmt 1              ; attention_backward.py:181:25
	s_max_i32 s7, s8, 0
	.loc	1 187 33                        ; attention_backward.py:187:33
	s_and_b32 s6, s6, -16
	.loc	1 186 33                        ; attention_backward.py:186:33
	s_and_b32 s70, s7, 0x7ffffff0
	.loc	1 187 18                        ; attention_backward.py:187:18
	s_min_i32 s71, s71, s6
.LBB0_2:
	.loc	1 0 18 is_stmt 0                ; attention_backward.py:0:18
	s_clause 0x4
	s_load_b32 s13, s[0:1], 0x88
	s_load_b64 s[40:41], s[0:1], 0x8
	s_load_b64 s[44:45], s[0:1], 0x20
	s_load_b64 s[34:35], s[0:1], 0x30
	s_load_b64 s[38:39], s[0:1], 0x80
	.loc	1 188 9 is_stmt 1               ; attention_backward.py:188:9
	v_cndmask_b32_e64 v127, 0, 1, s18
	.loc	1 0 0 is_stmt 0                 ; attention_backward.py:0
	s_ashr_i32 s6, s28, 31
	.loc	1 188 9                         ; attention_backward.py:188:9
	s_and_not1_b32 vcc_lo, exec_lo, s18
	.loc	1 0 0                           ; attention_backward.py:0
	s_ashr_i32 s7, s52, 31
	.loc	1 188 9                         ; attention_backward.py:188:9
	s_cbranch_vccnz .LBB0_4
; %bb.3:
	.loc	1 0 9                           ; attention_backward.py:0:9
	s_add_i32 s8, s54, s23
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_add_i32 s8, s8, 32
	s_min_i32 s8, s31, s8
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_add_i32 s8, s8, 15
	.loc	1 190 34 is_stmt 1              ; attention_backward.py:190:34
	s_ashr_i32 s9, s8, 31
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_lshr_b32 s9, s9, 28
	s_add_i32 s8, s8, s9
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	.loc	1 190 33 is_stmt 0              ; attention_backward.py:190:33
	s_and_b32 s8, s8, -16
	.loc	1 190 18                        ; attention_backward.py:190:18
	s_min_i32 s71, s71, s8
.LBB0_4:
	.loc	1 123 19 is_stmt 1              ; attention_backward.py:123:19
	s_mul_i32 s8, s5, s49
	s_xor_b32 s6, s6, s7
	s_sub_i32 s7, s48, s8
	s_add_i32 s8, s5, 1
	s_sub_i32 s9, s7, s49
	s_cmp_ge_u32 s7, s49
	.loc	1 124 31                        ; attention_backward.py:124:31
	v_lshrrev_b32_e32 v168, 4, v0
	.loc	1 123 19                        ; attention_backward.py:123:19
	s_cselect_b32 s5, s8, s5
	s_cselect_b32 s7, s9, s7
	s_add_i32 s8, s5, 1
	s_clause 0x1
	s_load_b64 s[36:37], s[0:1], 0x58
	s_load_b128 s[56:59], s[0:1], 0x48
	s_cmp_ge_u32 s7, s49
	s_clause 0x2
	s_load_b64 s[48:49], s[0:1], 0x10
	s_load_b64 s[52:53], s[0:1], 0x28
	s_load_b64 s[42:43], s[0:1], 0x8c
	.loc	1 124 31                        ; attention_backward.py:124:31
	v_or_b32_e32 v34, 4, v168
	v_or_b32_e32 v35, 8, v168
	v_or_b32_e32 v36, 12, v168
	v_or_b32_e32 v37, 16, v168
	v_or_b32_e32 v38, 20, v168
	v_or_b32_e32 v76, 24, v168
	v_or_b32_e32 v33, 28, v168
	.loc	1 124 21 is_stmt 0              ; attention_backward.py:124:21
	v_or_b32_e32 v77, s54, v168
	v_or_b32_e32 v93, s54, v34
	v_or_b32_e32 v94, s54, v35
	v_or_b32_e32 v95, s54, v36
	v_or_b32_e32 v96, s54, v37
	v_or_b32_e32 v97, s54, v38
	v_or_b32_e32 v98, s54, v76
	v_or_b32_e32 v99, s54, v33
	.loc	1 123 19 is_stmt 1              ; attention_backward.py:123:19
	s_cselect_b32 s5, s8, s5
	.loc	1 125 21                        ; attention_backward.py:125:21
	v_bfe_u32 v125, v0, 4, 1
	.loc	1 123 19                        ; attention_backward.py:123:19
	s_xor_b32 s5, s5, s6
	.loc	1 129 27                        ; attention_backward.py:129:27
	v_add_nc_u32_e32 v128, s23, v77
	.loc	1 123 19                        ; attention_backward.py:123:19
	s_sub_i32 s72, s5, s6
	.loc	1 128 21                        ; attention_backward.py:128:21
	v_cmp_gt_i32_e64 s5, s30, v77
	.loc	1 129 27                        ; attention_backward.py:129:27
	v_add_nc_u32_e32 v129, s23, v93
	v_add_nc_u32_e32 v130, s23, v94
	v_add_nc_u32_e32 v131, s23, v95
	v_add_nc_u32_e32 v132, s23, v96
	v_add_nc_u32_e32 v133, s23, v97
	v_add_nc_u32_e32 v134, s23, v98
	v_add_nc_u32_e32 v135, s23, v99
	v_mov_b16_e32 v77.l, 0
	.loc	1 142 31                        ; attention_backward.py:142:31
	s_waitcnt vmcnt(0)
	v_mov_b16_e32 v77.h, v75.l
	.loc	1 220 21                        ; attention_backward.py:220:21
	s_waitcnt lgkmcnt(0)
	s_mul_f32 s15, s38, 0x3fb8aa3b
	.loc	1 125 21                        ; attention_backward.py:125:21
	v_and_b32_e32 v163, 16, v0
	v_or_b32_e32 v137, v41, v74
	.loc	1 197 29                        ; attention_backward.py:197:29
	s_mul_i32 s14, s19, s29
	.loc	1 246 23                        ; attention_backward.py:246:23
	s_mul_i32 s19, s19, s39
	.loc	1 247 23                        ; attention_backward.py:247:23
	s_mul_i32 s13, s28, s13
	.loc	1 124 31                        ; attention_backward.py:124:31
	v_and_b32_e32 v212, 48, v0
	.loc	1 125 21                        ; attention_backward.py:125:21
	v_or_b32_e32 v126, 2, v125
	v_or_b32_e32 v124, 4, v125
	v_or_b32_e32 v123, 6, v125
	v_or_b32_e32 v122, 8, v125
	v_or_b32_e32 v121, 10, v125
	v_or_b32_e32 v120, 12, v125
	v_or_b32_e32 v119, 14, v125
	.loc	1 128 21                        ; attention_backward.py:128:21
	v_cmp_gt_i32_e64 s6, s30, v93
	v_cmp_gt_i32_e64 s7, s30, v94
	v_cmp_gt_i32_e64 s8, s30, v95
	v_cmp_gt_i32_e64 s9, s30, v96
	v_cmp_gt_i32_e64 s10, s30, v97
	v_cmp_gt_i32_e64 s11, s30, v98
	v_cmp_gt_i32_e64 s12, s30, v99
	.loc	1 197 29                        ; attention_backward.py:197:29
	s_add_i32 s72, s72, s14
	.loc	1 219 37                        ; attention_backward.py:219:37
	v_mul_f32_e32 v136, s15, v77
	.loc	1 245 21                        ; attention_backward.py:245:21
	s_add_i32 s28, s13, s19
	v_subrev_nc_u32_e32 v138, s21, v128
	v_subrev_nc_u32_e32 v139, s21, v129
	v_subrev_nc_u32_e32 v140, s21, v130
	v_subrev_nc_u32_e32 v141, s21, v131
	v_subrev_nc_u32_e32 v142, s21, v132
	v_subrev_nc_u32_e32 v143, s21, v133
	v_subrev_nc_u32_e32 v144, s21, v134
	v_subrev_nc_u32_e32 v145, s21, v135
	v_add_nc_u32_e32 v146, s22, v128
	v_add_nc_u32_e32 v147, s22, v129
	v_add_nc_u32_e32 v148, s22, v130
	v_add_nc_u32_e32 v149, s22, v131
	v_add_nc_u32_e32 v150, s22, v132
	v_add_nc_u32_e32 v151, s22, v133
	v_add_nc_u32_e32 v152, s22, v134
	v_add_nc_u32_e32 v153, s22, v135
	v_xor_b32_e32 v169, 8, v137
	v_xor_b32_e32 v170, 16, v137
	v_xor_b32_e32 v171, 24, v137
	v_lshlrev_b32_e32 v164, 3, v107
	v_lshrrev_b32_e32 v183, 2, v163
	v_lshrrev_b32_e32 v184, 4, v172
	v_lshlrev_b32_e32 v207, 2, v0
	v_lshrrev_b32_e32 v185, 1, v163
	.loc	1 194 9                         ; attention_backward.py:194:9
	s_cmp_lt_i32 s70, s71
	.loc	1 197 28                        ; attention_backward.py:197:28
	s_mul_i32 s55, s72, s31
	.loc	1 194 9                         ; attention_backward.py:194:9
	s_cselect_b32 s29, -1, 0
	s_cmp_ge_i32 s70, s71
	v_cmp_eq_u32_e32 vcc_lo, 0, v172
	s_cbranch_scc1 .LBB0_27
; %bb.5:                                ; %.lr.ph
	.loc	1 0 9 is_stmt 0                 ; attention_backward.py:0:9
	v_mul_lo_u32 v41, s43, v107
	v_lshlrev_b32_e32 v40, 5, v40
	v_or3_b32 v211, v183, v184, v164
	v_mov_b32_e32 v245, 0xff800000
	v_mov_b32_e32 v243, 0xff800000
	v_mov_b32_e32 v241, 0xff800000
	v_mov_b32_e32 v239, 0xff800000
	.loc	1 245 21 is_stmt 1              ; attention_backward.py:245:21
	s_mul_i32 s13, s42, s54
	.loc	1 194 9                         ; attention_backward.py:194:9
	v_mad_u64_u32 v[93:94], null, s42, v34, v[41:42]
	v_mad_u64_u32 v[94:95], null, s42, v35, v[41:42]
	v_mad_u64_u32 v[95:96], null, s42, v36, v[41:42]
	v_mad_u64_u32 v[96:97], null, s42, v37, v[41:42]
	v_mad_u64_u32 v[97:98], null, s42, v38, v[41:42]
	v_mad_u64_u32 v[98:99], null, s42, v76, v[41:42]
	v_mad_u64_u32 v[99:100], null, s42, v33, v[41:42]
	v_dual_mov_b32 v252, 0xff800000 :: v_dual_and_b32 v33, 52, v207
	v_and_or_b32 v36, v0, 2, v185
	v_mad_u64_u32 v[100:101], null, s42, v168, v[41:42]
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_lshl_or_b32 v33, v165, 5, v33
	v_dual_mov_b32 v230, 0xff800000 :: v_dual_and_b32 v35, 14, v0
	v_dual_mov_b32 v232, 0xff800000 :: v_dual_lshlrev_b32 v37, 2, v212
	v_or3_b32 v101, v36, v33, v102
	v_dual_mov_b32 v236, 0xff800000 :: v_dual_and_b32 v33, 60, v108
	v_cndmask_b32_e64 v36, 0x104, 0, vcc_lo
	v_dual_mov_b32 v234, 0xff800000 :: v_dual_lshlrev_b32 v41, 1, v35
	v_lshl_or_b32 v35, v35, 7, v37
	v_xor_b32_e32 v34, 0x90, v211
	s_delay_alu instid0(VALU_DEP_4)
	v_xor_b32_e32 v213, v36, v33
	v_xor_b32_e32 v38, 0x120, v211
	v_xor_b32_e32 v37, 0x1b0, v211
	v_xor_b32_e32 v36, 48, v101
	v_dual_mov_b32 v231, 0xff800000 :: v_dual_add_nc_u32 v214, 0, v34
	v_or_b32_e32 v33, v213, v39
	v_dual_mov_b32 v250, 0 :: v_dual_add_nc_u32 v215, 0, v38
	v_dual_mov_b32 v233, 0xff800000 :: v_dual_add_nc_u32 v216, 0, v37
	s_delay_alu instid0(VALU_DEP_3)
	v_xor_b32_e32 v163, 0x208, v33
	v_xor_b32_e32 v164, 0x410, v33
	v_xor_b32_e32 v166, 0x618, v33
	v_mov_b32_e32 v33, 0
	v_or3_b32 v212, v35, v40, v41
	v_xor_b32_e32 v35, 16, v101
	v_xor_b32_e32 v40, 32, v101
	v_dual_mov_b32 v246, 0 :: v_dual_add_nc_u32 v219, 0, v36
	s_delay_alu instid0(VALU_DEP_4)
	v_xor_b32_e32 v41, 4, v212
	v_xor_b32_e32 v74, 8, v212
	v_xor_b32_e32 v75, 12, v212
	v_xor_b32_e32 v39, 16, v212
	v_xor_b32_e32 v76, 20, v212
	v_xor_b32_e32 v77, 24, v212
	v_xor_b32_e32 v109, 28, v212
	v_dual_mov_b32 v248, 0 :: v_dual_add_nc_u32 v217, 0, v35
	v_dual_mov_b32 v235, 0xff800000 :: v_dual_add_nc_u32 v218, 0, v40
	v_dual_mov_b32 v237, 0xff800000 :: v_dual_add_nc_u32 v220, 0, v41
	v_dual_mov_b32 v244, 0 :: v_dual_add_nc_u32 v221, 0, v74
	v_dual_mov_b32 v253, 0 :: v_dual_add_nc_u32 v222, 0, v75
	v_dual_mov_b32 v242, 0 :: v_dual_add_nc_u32 v223, 0, v39
	v_dual_mov_b32 v251, 0xff800000 :: v_dual_add_nc_u32 v224, 0, v76
	v_dual_mov_b32 v240, 0 :: v_dual_add_nc_u32 v225, 0, v77
	v_dual_mov_b32 v249, 0xff800000 :: v_dual_add_nc_u32 v226, 0, v109
	v_dual_mov_b32 v238, 0 :: v_dual_add_nc_u32 v227, 0, v163
	v_dual_mov_b32 v247, 0xff800000 :: v_dual_add_nc_u32 v228, 0, v164
	v_add_nc_u32_e32 v229, 0, v166
	s_mov_b32 s63, 0x31027000
	s_mov_b32 s62, 0x7ffffffe
	s_and_b32 s61, s41, 0xffff
	s_mov_b32 s60, s40
	s_and_b32 s65, s45, 0xffff
	s_mov_b32 s64, s44
	s_add_i32 s39, s28, s13
	s_mov_b32 s66, s62
	s_mov_b32 s67, s63
	s_mov_b32 s73, s70
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v183, off offset:8
	scratch_store_b32 off, v185, off offset:12
	s_branch .LBB0_7
.LBB0_6:                                ;   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 9 is_stmt 0                 ; attention_backward.py:0:9
	s_or_b32 exec_lo, exec_lo, s14
	.loc	1 223 21 is_stmt 1              ; attention_backward.py:223:21
	v_cvt_f32_i32_e32 v163, v34
	.loc	1 252 30                        ; attention_backward.py:252:30
	v_and_b16 v34.l, 0xff, v77.h
	.loc	1 223 21                        ; attention_backward.py:223:21
	v_cvt_f32_i32_e32 v164, v35
	.loc	1 252 21                        ; attention_backward.py:252:21
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 223 21                        ; attention_backward.py:223:21
	v_cvt_f32_i32_e32 v207, v36
	.loc	1 252 30                        ; attention_backward.py:252:30
	v_cmp_ne_u16_e32 vcc_lo, 0, v34.l
	v_and_b16 v34.l, 0xff, v77.l
	.loc	1 223 21                        ; attention_backward.py:223:21
	v_cvt_f32_i32_e32 v165, v37
	v_mul_f32_e32 v37, v136, v163
	v_cvt_f32_i32_e32 v38, v38
	.loc	1 252 21                        ; attention_backward.py:252:21
	s_and_b32 s15, s81, vcc_lo
	.loc	1 252 30 is_stmt 0              ; attention_backward.py:252:30
	v_cmp_ne_u16_e64 s13, 0, v34.l
	v_and_b16 v34.l, 0xff, v74.l
	v_mov_b16_e32 v74.l, 0
	.loc	1 223 21 is_stmt 1              ; attention_backward.py:223:21
	v_cvt_f32_i32_e32 v41, v41
	v_cvt_f32_i32_e32 v39, v39
	.loc	1 252 21                        ; attention_backward.py:252:21
	s_and_b32 s19, s79, s13
	.loc	1 252 30 is_stmt 0              ; attention_backward.py:252:30
	v_cmp_ne_u16_e64 s16, 0, v34.l
	s_waitcnt vmcnt(0)
	v_and_b16 v34.l, 0xff, v76.h
	.loc	1 252 21                        ; attention_backward.py:252:21
	v_cndmask_b32_e64 v35, 0, 1, s19
	.loc	1 223 21 is_stmt 1              ; attention_backward.py:223:21
	v_cvt_f32_i32_e32 v40, v40
	.loc	1 214 33                        ; attention_backward.py:214:33
	v_mov_b16_e64 v109.h, v182.l
	.loc	1 252 21                        ; attention_backward.py:252:21
	s_and_b32 s18, s78, s16
	.loc	1 252 30 is_stmt 0              ; attention_backward.py:252:30
	v_cmp_ne_u16_e64 s14, 0, v34.l
	.loc	1 252 21                        ; attention_backward.py:252:21
	v_cndmask_b32_e64 v34, 0, 1, s15
	.loc	1 223 21 is_stmt 1              ; attention_backward.py:223:21
	v_mul_f32_e32 v38, v136, v38
	v_mul_f32_e32 v41, v136, v41
	.loc	1 214 33                        ; attention_backward.py:214:33
	v_mov_b16_e64 v77.h, v183.l
	.loc	1 252 21                        ; attention_backward.py:252:21
	s_and_b32 s14, s80, s14
	v_lshlrev_b16 v34.l, 8, v34.l
	.loc	1 214 33                        ; attention_backward.py:214:33
	v_mov_b16_e32 v77.l, v74.l
	v_mov_b16_e64 v163.h, v181.l
	v_mov_b16_e64 v163.l, v74.l
	.loc	1 223 21                        ; attention_backward.py:223:21
	v_mul_f32_e32 v39, v136, v39
	.loc	1 252 21                        ; attention_backward.py:252:21
	v_or_b16 v34.l, v35.l, v34.l
	v_cndmask_b32_e64 v35, 0, 1, s14
	.loc	1 214 33                        ; attention_backward.py:214:33
	v_mov_b16_e64 v166.h, v255.l
	.loc	1 194 9                         ; attention_backward.py:194:9
	s_add_i32 s73, s73, 16
	.loc	1 252 21                        ; attention_backward.py:252:21
	.loc	1 223 21                        ; attention_backward.py:223:21
	v_mul_f32_e32 v164, v136, v164
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 252 21                        ; attention_backward.py:252:21
	v_lshlrev_b16 v34.h, 8, v35.l
	v_cndmask_b32_e64 v35, 0, 1, s18
	v_or_b16 v34.h, v35.l, v34.h
	v_add_nc_u32_e32 v35, 0, v211
	.loc	1 223 21                        ; attention_backward.py:223:21
	v_mul_f32_e32 v39, v39, v163
	.loc	1 252 21                        ; attention_backward.py:252:21
	ds_store_b16 v35, v34
	.loc	1 252 30 is_stmt 0              ; attention_backward.py:252:30
	v_and_b16 v34.l, 0xff, v75.l
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_3)
	v_cmp_ne_u16_e32 vcc_lo, 0, v34.l
	v_and_b16 v34.l, 0xff, v74.h
	.loc	1 214 33 is_stmt 1              ; attention_backward.py:214:33
	v_mov_b16_e64 v74.h, v166.l
	v_mov_b16_e64 v166.l, v74.l
	.loc	1 252 21                        ; attention_backward.py:252:21
	s_and_b32 s17, s76, vcc_lo
	.loc	1 252 30 is_stmt 0              ; attention_backward.py:252:30
	v_cmp_ne_u16_e64 s16, 0, v34.l
	v_and_b16 v34.l, 0xff, v76.l
	.loc	1 223 21 is_stmt 1              ; attention_backward.py:223:21
	v_dual_mul_f32 v37, v37, v74 :: v_dual_add_nc_u32 v76, 0, v212
	.loc	1 214 33                        ; attention_backward.py:214:33
	v_mov_b16_e64 v74.h, v254.l
	.loc	1 252 21                        ; attention_backward.py:252:21
	s_and_b32 s16, s74, s16
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_4) | instid1(VALU_DEP_3)
	.loc	1 252 30 is_stmt 0              ; attention_backward.py:252:30
	v_cmp_ne_u16_e64 s13, 0, v34.l
	v_and_b16 v34.l, 0xff, v75.h
	.loc	1 252 21                        ; attention_backward.py:252:21
	v_cndmask_b32_e64 v36, 0, 1, s16
	.loc	1 223 21 is_stmt 1              ; attention_backward.py:223:21
	v_dual_mul_f32 v40, v136, v40 :: v_dual_mul_f32 v41, v41, v74
	.loc	1 252 21                        ; attention_backward.py:252:21
	s_and_b32 s13, s77, s13
	.loc	1 252 30 is_stmt 0              ; attention_backward.py:252:30
	v_cmp_ne_u16_e64 s20, 0, v34.l
	.loc	1 252 21                        ; attention_backward.py:252:21
	v_cndmask_b32_e64 v35, 0, 1, s13
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 223 21 is_stmt 1              ; attention_backward.py:223:21
	v_mul_f32_e32 v40, v40, v166
	.loc	1 252 21                        ; attention_backward.py:252:21
	s_and_b32 vcc_lo, s75, s20
	v_mov_b16_e32 v34.l, v35.l
	v_cndmask_b32_e64 v35, 0, 1, s17
	.loc	1 194 9                         ; attention_backward.py:194:9
	s_cmp_lt_i32 s73, s71
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 252 21                        ; attention_backward.py:252:21
	v_lshlrev_b16 v34.l, 8, v34.l
	v_or_b16 v34.l, v35.l, v34.l
	v_cndmask_b32_e64 v35, 0, 1, vcc_lo
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b16 v35.l, 8, v35.l
	v_or_b16 v35.l, v36.l, v35.l
	ds_store_b16_d16_hi v214, v34
	ds_store_b16 v215, v34
	ds_store_b16 v216, v35
	v_add_nc_u32_e32 v35, 0, v101
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_u8_d16 v34, v35
	s_waitcnt lgkmcnt(0)
	ds_load_u8_d16_hi v34, v35 offset:64
	ds_load_u8_d16 v35, v217
	s_waitcnt lgkmcnt(0)
	ds_load_u8_d16_hi v35, v219 offset:64
	ds_load_u8_d16 v36, v218 offset:64
	s_waitcnt lgkmcnt(0)
	ds_load_u8_d16_hi v36, v217 offset:64
	v_and_b16 v34.l, 1, v34.l
	v_and_b16 v35.l, 1, v35.l
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_cmp_eq_u16_e64 s20, 1, v34.l
	.loc	1 257 22                        ; attention_backward.py:257:22
	v_cndmask_b32_e64 v75, 0xff800000, v37, s20
	.loc	1 252 21                        ; attention_backward.py:252:21
	ds_load_u8_d16 v34, v218
	ds_load_u8_d16 v37, v219
	.loc	1 257 22                        ; attention_backward.py:257:22
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 252 21                        ; attention_backward.py:252:21
	v_cmp_eq_u16_e64 s20, 1, v35.l
	.loc	1 257 22                        ; attention_backward.py:257:22
	ds_store_b32 v76, v75
	.loc	1 214 33                        ; attention_backward.py:214:33
	v_mov_b16_e32 v75.h, v109.l
	v_mov_b16_e32 v75.l, v74.l
	v_mov_b16_e64 v76.h, v185.l
	v_mov_b16_e32 v76.l, v74.l
	v_mov_b16_e32 v109.l, v74.l
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 223 21                        ; attention_backward.py:223:21
	v_mul_f32_e32 v75, v164, v75
	v_mul_f32_e32 v164, v136, v207
	v_mul_f32_e32 v38, v38, v109
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 257 22                        ; attention_backward.py:257:22
	v_cndmask_b32_e64 v74, 0xff800000, v75, s20
	.loc	1 223 21                        ; attention_backward.py:223:21
	v_mul_f32_e32 v76, v164, v76
	v_mul_f32_e32 v164, v136, v165
	.loc	1 252 21                        ; attention_backward.py:252:21
	v_and_b16 v34.l, 1, v34.l
	.loc	1 257 22                        ; attention_backward.py:257:22
	ds_store_b32 v220, v74
	.loc	1 223 21                        ; attention_backward.py:223:21
	v_mul_f32_e32 v77, v164, v77
	.loc	1 252 21                        ; attention_backward.py:252:21
	v_cmp_eq_u16_e64 s20, 1, v34.l
	v_and_b16 v34.l, 1, v37.l
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 257 22                        ; attention_backward.py:257:22
	v_cndmask_b32_e64 v74, 0xff800000, v76, s20
	.loc	1 252 21                        ; attention_backward.py:252:21
	v_cmp_eq_u16_e64 s20, 1, v34.l
	v_and_b16 v34.l, 1, v34.h
	.loc	1 257 22                        ; attention_backward.py:257:22
	ds_store_b32 v221, v74
	v_cndmask_b32_e64 v37, 0xff800000, v77, s20
	.loc	1 252 21                        ; attention_backward.py:252:21
	v_cmp_eq_u16_e64 s20, 1, v34.l
	.loc	1 257 22                        ; attention_backward.py:257:22
	ds_store_b32 v222, v37
	v_cndmask_b32_e64 v34, 0xff800000, v38, s20
	ds_store_b32 v223, v34
	.loc	1 252 21                        ; attention_backward.py:252:21
	v_and_b16 v34.l, 1, v36.h
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_cmp_eq_u16_e64 s20, 1, v34.l
	.loc	1 257 22                        ; attention_backward.py:257:22
	v_cndmask_b32_e64 v34, 0xff800000, v39, s20
	ds_store_b32 v224, v34
	.loc	1 252 21                        ; attention_backward.py:252:21
	v_and_b16 v34.l, 1, v36.l
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_cmp_eq_u16_e64 s20, 1, v34.l
	.loc	1 257 22                        ; attention_backward.py:257:22
	v_cndmask_b32_e64 v34, 0xff800000, v40, s20
	ds_store_b32 v225, v34
	.loc	1 252 21                        ; attention_backward.py:252:21
	v_and_b16 v34.l, 1, v35.h
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_cmp_eq_u16_e64 s20, 1, v34.l
	.loc	1 257 22                        ; attention_backward.py:257:22
	v_cndmask_b32_e64 v34, 0xff800000, v41, s20
	ds_store_b32 v226, v34
	v_add_nc_u32_e32 v34, v167, v213
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_2addr_b32 v[75:76], v227 offset1:32
	ds_load_2addr_b32 v[163:164], v228 offset1:32
	ds_load_2addr_b32 v[34:35], v34 offset1:32
	ds_load_2addr_b32 v[181:182], v229 offset1:32
.Ltmp211:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention_backward.py:258:25 ] ]
	s_waitcnt lgkmcnt(3)
	v_dual_max_f32 v109, v76, v76 :: v_dual_max_f32 v38, v75, v75
.Ltmp212:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention_backward.py:258:25 ]
	s_waitcnt lgkmcnt(1)
	v_mov_b32_e32 v36, v34
.Ltmp213:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention_backward.py:258:25 ] ]
	v_dual_max_f32 v37, v34, v34 :: v_dual_max_f32 v40, v163, v163
	s_waitcnt lgkmcnt(0)
	v_dual_max_f32 v74, v181, v181 :: v_dual_max_f32 v77, v35, v35
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp214:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention_backward.py:258:25 ]
	v_mov_b32_dpp v36, v36 row_xmask:8 row_mask:0xf bank_mask:0xf
.Ltmp215:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention_backward.py:258:25 ] ]
	v_max_f32_e32 v36, v36, v36
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_max_f32_e32 v36, v37, v36
.Ltmp216:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention_backward.py:258:25 ]
	v_mov_b32_e32 v37, v36
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v37, v37 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp217:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention_backward.py:258:25 ] ]
	v_max_f32_e32 v37, v37, v37
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_max_f32_e32 v36, v36, v37
.Ltmp218:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention_backward.py:258:25 ]
	v_mov_b32_e32 v37, v36
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v37, v37 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp219:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention_backward.py:258:25 ] ]
	v_max_f32_e32 v37, v37, v37
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_max_f32_e32 v36, v36, v37
.Ltmp220:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention_backward.py:258:25 ]
	v_mov_b32_e32 v37, v36
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v37, v37 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp221:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention_backward.py:258:25 ] ]
	v_max_f32_e32 v37, v37, v37
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_dual_max_f32 v36, v36, v37 :: v_dual_max_f32 v37, v230, v230
.Ltmp222:
	.loc	1 259 20                        ; attention_backward.py:259:20
	v_max_f32_e32 v230, v37, v36
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 261 58                        ; attention_backward.py:261:58
	v_sub_f32_e32 v34, v34, v230
	.loc	1 261 45 is_stmt 0              ; attention_backward.py:261:45
	v_exp_f32_e32 v34, v34
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 261 29                        ; attention_backward.py:261:29
	v_cndmask_b32_e64 v34, 0, v34, s19
	.loc	1 260 21 is_stmt 1              ; attention_backward.py:260:21
	v_cmp_neq_f32_e64 s19, 0xff800000, v252
.Ltmp223:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:262:33 ]
	v_mov_b32_e32 v37, v34
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v37, v37 row_xmask:8 row_mask:0xf bank_mask:0xf
.Ltmp224:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:262:33 ] ]
	v_add_f32_e32 v34, v34, v37
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp225:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:262:33 ]
	v_mov_b32_e32 v37, v34
	v_mov_b32_dpp v37, v37 row_xmask:4 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp226:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:262:33 ] ]
	v_add_f32_e32 v34, v34, v37
.Ltmp227:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:262:33 ]
	v_mov_b32_e32 v37, v34
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v37, v37 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp228:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:262:33 ] ]
	v_dual_add_f32 v34, v34, v37 :: v_dual_max_f32 v37, v252, v252
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp229:
	.loc	1 259 20                        ; attention_backward.py:259:20
	v_dual_max_f32 v36, v37, v36 :: v_dual_mov_b32 v37, v34
.Ltmp230:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:262:33 ]
	v_mov_b32_dpp v37, v37 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
.Ltmp231:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:262:33 ] ]
	v_dual_add_f32 v34, v34, v37 :: v_dual_sub_f32 v37, v252, v36
	v_mov_b32_e32 v252, v36
.Ltmp232:
	.loc	1 260 57                        ; attention_backward.py:260:57
	v_exp_f32_e32 v37, v37
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 260 21 is_stmt 0              ; attention_backward.py:260:21
	v_cndmask_b32_e64 v37, 0, v37, s19
	.loc	1 262 19 is_stmt 1              ; attention_backward.py:262:19
	v_dual_fmac_f32 v34, v253, v37 :: v_dual_mov_b32 v37, v75
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp233:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention_backward.py:258:25 ]
	v_mov_b32_dpp v37, v37 row_xmask:8 row_mask:0xf bank_mask:0xf
.Ltmp234:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention_backward.py:258:25 ] ]
	v_max_f32_e32 v37, v37, v37
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_max_f32_e32 v37, v38, v37
.Ltmp235:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention_backward.py:258:25 ]
	v_mov_b32_e32 v38, v37
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v38, v38 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp236:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention_backward.py:258:25 ] ]
	v_max_f32_e32 v38, v38, v38
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_max_f32_e32 v37, v37, v38
.Ltmp237:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention_backward.py:258:25 ]
	v_mov_b32_e32 v38, v37
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v38, v38 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp238:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention_backward.py:258:25 ] ]
	v_max_f32_e32 v38, v38, v38
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_max_f32_e32 v37, v37, v38
.Ltmp239:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention_backward.py:258:25 ]
	v_mov_b32_e32 v38, v37
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v38, v38 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp240:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention_backward.py:258:25 ] ]
	v_max_f32_e32 v38, v38, v38
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_dual_max_f32 v37, v37, v38 :: v_dual_max_f32 v38, v231, v231
.Ltmp241:
	.loc	1 259 20                        ; attention_backward.py:259:20
	v_max_f32_e32 v231, v38, v37
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 261 58                        ; attention_backward.py:261:58
	v_sub_f32_e32 v38, v75, v231
	.loc	1 261 45 is_stmt 0              ; attention_backward.py:261:45
	v_exp_f32_e32 v38, v38
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 261 29                        ; attention_backward.py:261:29
	v_cndmask_b32_e64 v38, 0, v38, s18
	.loc	1 260 21 is_stmt 1              ; attention_backward.py:260:21
	v_cmp_neq_f32_e64 s18, 0xff800000, v251
.Ltmp242:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:262:33 ]
	v_mov_b32_e32 v39, v38
	v_mov_b32_e32 v253, v34
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v39, v39 row_xmask:8 row_mask:0xf bank_mask:0xf
.Ltmp243:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:262:33 ] ]
	v_add_f32_e32 v38, v38, v39
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp244:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:262:33 ]
	v_mov_b32_e32 v39, v38
	v_mov_b32_dpp v39, v39 row_xmask:4 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp245:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:262:33 ] ]
	v_add_f32_e32 v38, v38, v39
.Ltmp246:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:262:33 ]
	v_mov_b32_e32 v39, v38
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v39, v39 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp247:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:262:33 ] ]
	v_add_f32_e32 v39, v38, v39
.Ltmp248:
	.loc	1 259 20                        ; attention_backward.py:259:20
	v_max_f32_e32 v38, v251, v251
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_dual_max_f32 v38, v38, v37 :: v_dual_mov_b32 v37, v39
.Ltmp249:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:262:33 ]
	v_mov_b32_dpp v37, v37 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp250:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:262:33 ] ]
	v_add_f32_e32 v37, v39, v37
.Ltmp251:
	.loc	1 260 70                        ; attention_backward.py:260:70
	v_sub_f32_e32 v39, v251, v38
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 260 57 is_stmt 0              ; attention_backward.py:260:57
	v_exp_f32_e32 v39, v39
	.loc	1 260 21                        ; attention_backward.py:260:21
	v_cndmask_b32_e64 v39, 0, v39, s18
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 262 19 is_stmt 1              ; attention_backward.py:262:19
	v_fmac_f32_e32 v37, v250, v39
.Ltmp252:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention_backward.py:258:25 ]
	v_dual_mov_b32 v39, v163 :: v_dual_mov_b32 v250, v37
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v39, v39 row_xmask:8 row_mask:0xf bank_mask:0xf
.Ltmp253:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention_backward.py:258:25 ] ]
	v_max_f32_e32 v39, v39, v39
	v_mov_b32_e32 v251, v38
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_max_f32_e32 v39, v40, v39
.Ltmp254:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention_backward.py:258:25 ]
	v_mov_b32_e32 v40, v39
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v40, v40 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp255:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention_backward.py:258:25 ] ]
	v_max_f32_e32 v40, v40, v40
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_max_f32_e32 v39, v39, v40
.Ltmp256:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention_backward.py:258:25 ]
	v_mov_b32_e32 v40, v39
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v40, v40 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp257:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention_backward.py:258:25 ] ]
	v_max_f32_e32 v40, v40, v40
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_max_f32_e32 v39, v39, v40
.Ltmp258:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention_backward.py:258:25 ]
	v_mov_b32_e32 v40, v39
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v40, v40 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp259:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention_backward.py:258:25 ] ]
	v_max_f32_e32 v40, v40, v40
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_max_f32_e32 v39, v39, v40
.Ltmp260:
	.loc	1 259 20                        ; attention_backward.py:259:20
	v_max_f32_e32 v40, v232, v232
	v_max_f32_e32 v232, v40, v39
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 261 58                        ; attention_backward.py:261:58
	v_sub_f32_e32 v40, v163, v232
.Ltmp261:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention_backward.py:258:25 ] ]
	v_max_f32_e32 v163, v164, v164
.Ltmp262:
	.loc	1 261 45                        ; attention_backward.py:261:45
	v_exp_f32_e32 v40, v40
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 261 29 is_stmt 0              ; attention_backward.py:261:29
	v_cndmask_b32_e64 v40, 0, v40, s17
	.loc	1 260 21 is_stmt 1              ; attention_backward.py:260:21
	v_cmp_neq_f32_e64 s17, 0xff800000, v249
.Ltmp263:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:262:33 ]
	v_mov_b32_e32 v41, v40
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v41, v41 row_xmask:8 row_mask:0xf bank_mask:0xf
.Ltmp264:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:262:33 ] ]
	v_add_f32_e32 v40, v40, v41
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp265:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:262:33 ]
	v_mov_b32_e32 v41, v40
	v_mov_b32_dpp v41, v41 row_xmask:4 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp266:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:262:33 ] ]
	v_add_f32_e32 v40, v40, v41
.Ltmp267:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:262:33 ]
	v_mov_b32_e32 v41, v40
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v41, v41 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp268:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:262:33 ] ]
	v_add_f32_e32 v41, v40, v41
.Ltmp269:
	.loc	1 259 20                        ; attention_backward.py:259:20
	v_max_f32_e32 v40, v249, v249
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_dual_max_f32 v40, v40, v39 :: v_dual_mov_b32 v39, v41
.Ltmp270:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:262:33 ]
	v_mov_b32_dpp v39, v39 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp271:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:262:33 ] ]
	v_add_f32_e32 v39, v41, v39
.Ltmp272:
	.loc	1 260 70                        ; attention_backward.py:260:70
	v_sub_f32_e32 v41, v249, v40
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 260 57 is_stmt 0              ; attention_backward.py:260:57
	v_exp_f32_e32 v41, v41
	.loc	1 260 21                        ; attention_backward.py:260:21
	v_cndmask_b32_e64 v41, 0, v41, s17
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 262 19 is_stmt 1              ; attention_backward.py:262:19
	v_fmac_f32_e32 v39, v248, v41
.Ltmp273:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention_backward.py:258:25 ]
	v_dual_mov_b32 v41, v181 :: v_dual_mov_b32 v248, v39
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v41, v41 row_xmask:8 row_mask:0xf bank_mask:0xf
.Ltmp274:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention_backward.py:258:25 ] ]
	v_max_f32_e32 v41, v41, v41
	v_mov_b32_e32 v249, v40
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_max_f32_e32 v41, v74, v41
.Ltmp275:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention_backward.py:258:25 ]
	v_mov_b32_e32 v74, v41
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v74, v74 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp276:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention_backward.py:258:25 ] ]
	v_max_f32_e32 v74, v74, v74
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_max_f32_e32 v41, v41, v74
.Ltmp277:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention_backward.py:258:25 ]
	v_mov_b32_e32 v74, v41
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v74, v74 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp278:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention_backward.py:258:25 ] ]
	v_max_f32_e32 v74, v74, v74
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_max_f32_e32 v41, v41, v74
.Ltmp279:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention_backward.py:258:25 ]
	v_mov_b32_e32 v74, v41
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v74, v74 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp280:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention_backward.py:258:25 ] ]
	v_max_f32_e32 v74, v74, v74
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_max_f32_e32 v41, v41, v74
.Ltmp281:
	.loc	1 259 20                        ; attention_backward.py:259:20
	v_max_f32_e32 v74, v233, v233
	v_max_f32_e32 v233, v74, v41
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 261 58                        ; attention_backward.py:261:58
	v_sub_f32_e32 v74, v181, v233
	.loc	1 261 45 is_stmt 0              ; attention_backward.py:261:45
	v_exp_f32_e32 v74, v74
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 261 29                        ; attention_backward.py:261:29
	v_cndmask_b32_e64 v74, 0, v74, s16
	.loc	1 260 21 is_stmt 1              ; attention_backward.py:260:21
	v_cmp_neq_f32_e64 s16, 0xff800000, v247
.Ltmp282:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:262:33 ]
	v_mov_b32_e32 v75, v74
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v75, v75 row_xmask:8 row_mask:0xf bank_mask:0xf
.Ltmp283:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:262:33 ] ]
	v_add_f32_e32 v74, v74, v75
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp284:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:262:33 ]
	v_mov_b32_e32 v75, v74
	v_mov_b32_dpp v75, v75 row_xmask:4 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp285:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:262:33 ] ]
	v_add_f32_e32 v74, v74, v75
.Ltmp286:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:262:33 ]
	v_mov_b32_e32 v75, v74
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v75, v75 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp287:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:262:33 ] ]
	v_add_f32_e32 v75, v74, v75
.Ltmp288:
	.loc	1 259 20                        ; attention_backward.py:259:20
	v_max_f32_e32 v74, v247, v247
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_dual_max_f32 v74, v74, v41 :: v_dual_mov_b32 v41, v75
.Ltmp289:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:262:33 ]
	v_mov_b32_dpp v41, v41 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp290:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:262:33 ] ]
	v_add_f32_e32 v41, v75, v41
.Ltmp291:
	.loc	1 260 70                        ; attention_backward.py:260:70
	v_sub_f32_e32 v75, v247, v74
	v_mov_b32_e32 v247, v74
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 260 57 is_stmt 0              ; attention_backward.py:260:57
	v_exp_f32_e32 v75, v75
	.loc	1 260 21                        ; attention_backward.py:260:21
	v_cndmask_b32_e64 v75, 0, v75, s16
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 262 19 is_stmt 1              ; attention_backward.py:262:19
	v_fmac_f32_e32 v41, v246, v75
.Ltmp292:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention_backward.py:258:25 ]
	v_dual_mov_b32 v75, v35 :: v_dual_mov_b32 v246, v41
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v75, v75 row_xmask:8 row_mask:0xf bank_mask:0xf
.Ltmp293:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention_backward.py:258:25 ] ]
	v_max_f32_e32 v75, v75, v75
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_max_f32_e32 v75, v77, v75
.Ltmp294:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention_backward.py:258:25 ]
	v_mov_b32_e32 v77, v75
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v77, v77 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp295:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention_backward.py:258:25 ] ]
	v_max_f32_e32 v77, v77, v77
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_max_f32_e32 v75, v75, v77
.Ltmp296:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention_backward.py:258:25 ]
	v_mov_b32_e32 v77, v75
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v77, v77 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp297:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention_backward.py:258:25 ] ]
	v_max_f32_e32 v77, v77, v77
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_max_f32_e32 v75, v75, v77
.Ltmp298:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention_backward.py:258:25 ]
	v_mov_b32_e32 v77, v75
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v77, v77 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp299:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention_backward.py:258:25 ] ]
	v_max_f32_e32 v77, v77, v77
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_max_f32_e32 v75, v75, v77
.Ltmp300:
	.loc	1 259 20                        ; attention_backward.py:259:20
	v_max_f32_e32 v77, v234, v234
	v_max_f32_e32 v234, v77, v75
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 261 58                        ; attention_backward.py:261:58
	v_sub_f32_e32 v35, v35, v234
	.loc	1 261 45 is_stmt 0              ; attention_backward.py:261:45
	v_exp_f32_e32 v35, v35
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 261 29                        ; attention_backward.py:261:29
	v_cndmask_b32_e64 v35, 0, v35, s15
	.loc	1 260 21 is_stmt 1              ; attention_backward.py:260:21
	v_cmp_neq_f32_e64 s15, 0xff800000, v245
.Ltmp301:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:262:33 ]
	v_mov_b32_e32 v77, v35
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v77, v77 row_xmask:8 row_mask:0xf bank_mask:0xf
.Ltmp302:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:262:33 ] ]
	v_add_f32_e32 v35, v35, v77
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp303:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:262:33 ]
	v_mov_b32_e32 v77, v35
	v_mov_b32_dpp v77, v77 row_xmask:4 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp304:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:262:33 ] ]
	v_add_f32_e32 v35, v35, v77
.Ltmp305:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:262:33 ]
	v_mov_b32_e32 v77, v35
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v77, v77 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp306:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:262:33 ] ]
	v_add_f32_e32 v35, v35, v77
.Ltmp307:
	.loc	1 259 20                        ; attention_backward.py:259:20
	v_max_f32_e32 v77, v245, v245
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_max_f32_e32 v75, v77, v75
.Ltmp308:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:262:33 ]
	v_mov_b32_e32 v77, v35
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v77, v77 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp309:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:262:33 ] ]
	v_add_f32_e32 v35, v35, v77
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp310:
	.loc	1 260 70                        ; attention_backward.py:260:70
	v_sub_f32_e32 v77, v245, v75
	.loc	1 260 57 is_stmt 0              ; attention_backward.py:260:57
	v_exp_f32_e32 v77, v77
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 260 21                        ; attention_backward.py:260:21
	v_cndmask_b32_e64 v77, 0, v77, s15
	.loc	1 262 19 is_stmt 1              ; attention_backward.py:262:19
	v_fmac_f32_e32 v35, v244, v77
.Ltmp311:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention_backward.py:258:25 ]
	v_mov_b32_e32 v77, v76
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v77, v77 row_xmask:8 row_mask:0xf bank_mask:0xf
.Ltmp312:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention_backward.py:258:25 ] ]
	v_max_f32_e32 v77, v77, v77
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_max_f32_e32 v77, v109, v77
.Ltmp313:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention_backward.py:258:25 ]
	v_mov_b32_e32 v109, v77
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v109, v109 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp314:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention_backward.py:258:25 ] ]
	v_max_f32_e32 v109, v109, v109
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_max_f32_e32 v77, v77, v109
.Ltmp315:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention_backward.py:258:25 ]
	v_mov_b32_e32 v109, v77
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v109, v109 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp316:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention_backward.py:258:25 ] ]
	v_max_f32_e32 v109, v109, v109
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_max_f32_e32 v77, v77, v109
.Ltmp317:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention_backward.py:258:25 ]
	v_mov_b32_e32 v109, v77
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v109, v109 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp318:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention_backward.py:258:25 ] ]
	v_max_f32_e32 v109, v109, v109
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_max_f32_e32 v77, v77, v109
.Ltmp319:
	.loc	1 259 20                        ; attention_backward.py:259:20
	v_max_f32_e32 v109, v235, v235
	v_max_f32_e32 v235, v109, v77
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 261 58                        ; attention_backward.py:261:58
	v_sub_f32_e32 v76, v76, v235
	.loc	1 261 45 is_stmt 0              ; attention_backward.py:261:45
	v_exp_f32_e32 v76, v76
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 261 29                        ; attention_backward.py:261:29
	v_cndmask_b32_e64 v76, 0, v76, s14
	.loc	1 260 21 is_stmt 1              ; attention_backward.py:260:21
	v_cmp_neq_f32_e64 s14, 0xff800000, v243
.Ltmp320:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:262:33 ]
	v_mov_b32_e32 v109, v76
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v109, v109 row_xmask:8 row_mask:0xf bank_mask:0xf
.Ltmp321:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:262:33 ] ]
	v_add_f32_e32 v76, v76, v109
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp322:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:262:33 ]
	v_mov_b32_e32 v109, v76
	v_mov_b32_dpp v109, v109 row_xmask:4 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp323:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:262:33 ] ]
	v_add_f32_e32 v76, v76, v109
.Ltmp324:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:262:33 ]
	v_mov_b32_e32 v109, v76
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v109, v109 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp325:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:262:33 ] ]
	v_dual_add_f32 v76, v76, v109 :: v_dual_max_f32 v109, v243, v243
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp326:
	.loc	1 259 20                        ; attention_backward.py:259:20
	v_max_f32_e32 v77, v109, v77
.Ltmp327:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:262:33 ]
	v_mov_b32_e32 v109, v76
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v109, v109 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp328:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:262:33 ] ]
	v_add_f32_e32 v76, v76, v109
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_2)
.Ltmp329:
	.loc	1 260 70                        ; attention_backward.py:260:70
	v_sub_f32_e32 v109, v243, v77
	v_mov_b32_e32 v243, v77
	.loc	1 260 57 is_stmt 0              ; attention_backward.py:260:57
	v_exp_f32_e32 v109, v109
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 260 21                        ; attention_backward.py:260:21
	v_cndmask_b32_e64 v109, 0, v109, s14
	.loc	1 262 19 is_stmt 1              ; attention_backward.py:262:19
	v_dual_fmac_f32 v76, v242, v109 :: v_dual_mov_b32 v109, v164
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_mov_b32_e32 v242, v76
.Ltmp330:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention_backward.py:258:25 ]
	v_mov_b32_dpp v109, v109 row_xmask:8 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp331:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention_backward.py:258:25 ] ]
	v_max_f32_e32 v109, v109, v109
	v_max_f32_e32 v109, v163, v109
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp332:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention_backward.py:258:25 ]
	v_mov_b32_e32 v163, v109
	v_mov_b32_dpp v163, v163 row_xmask:4 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp333:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention_backward.py:258:25 ] ]
	v_max_f32_e32 v163, v163, v163
	v_max_f32_e32 v109, v109, v163
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp334:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention_backward.py:258:25 ]
	v_mov_b32_e32 v163, v109
	v_mov_b32_dpp v163, v163 row_xmask:2 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp335:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention_backward.py:258:25 ] ]
	v_max_f32_e32 v163, v163, v163
	v_max_f32_e32 v109, v109, v163
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp336:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention_backward.py:258:25 ]
	v_mov_b32_e32 v163, v109
	v_mov_b32_dpp v163, v163 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp337:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention_backward.py:258:25 ] ]
	v_max_f32_e32 v163, v163, v163
	v_max_f32_e32 v109, v109, v163
.Ltmp338:
	.loc	1 259 20                        ; attention_backward.py:259:20
	v_max_f32_e32 v163, v236, v236
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_max_f32_e32 v236, v163, v109
	.loc	1 261 58                        ; attention_backward.py:261:58
	v_sub_f32_e32 v163, v164, v236
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 261 45 is_stmt 0              ; attention_backward.py:261:45
	v_exp_f32_e32 v163, v163
	.loc	1 261 29                        ; attention_backward.py:261:29
	v_cndmask_b32_e64 v163, 0, v163, s13
	.loc	1 260 21 is_stmt 1              ; attention_backward.py:260:21
	v_cmp_neq_f32_e64 s13, 0xff800000, v241
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp339:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:262:33 ]
	v_mov_b32_e32 v164, v163
	v_mov_b32_dpp v164, v164 row_xmask:8 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp340:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:262:33 ] ]
	v_add_f32_e32 v163, v163, v164
.Ltmp341:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:262:33 ]
	v_mov_b32_e32 v164, v163
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v164, v164 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp342:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:262:33 ] ]
	v_add_f32_e32 v163, v163, v164
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp343:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:262:33 ]
	v_mov_b32_e32 v164, v163
	v_mov_b32_dpp v164, v164 row_xmask:2 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp344:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:262:33 ] ]
	v_dual_add_f32 v163, v163, v164 :: v_dual_max_f32 v164, v241, v241
.Ltmp345:
	.loc	1 259 20                        ; attention_backward.py:259:20
	v_dual_max_f32 v166, v164, v109 :: v_dual_mov_b32 v109, v163
.Ltmp346:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention_backward.py:258:25 ] ]
	v_max_f32_e32 v164, v182, v182
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp347:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:262:33 ]
	v_mov_b32_dpp v109, v109 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp348:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:262:33 ] ]
	v_add_f32_e32 v109, v163, v109
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_2)
.Ltmp349:
	.loc	1 260 70                        ; attention_backward.py:260:70
	v_sub_f32_e32 v163, v241, v166
	v_mov_b32_e32 v241, v166
	.loc	1 260 57 is_stmt 0              ; attention_backward.py:260:57
	v_exp_f32_e32 v163, v163
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 260 21                        ; attention_backward.py:260:21
	v_cndmask_b32_e64 v163, 0, v163, s13
	.loc	1 262 19 is_stmt 1              ; attention_backward.py:262:19
	v_fmac_f32_e32 v109, v240, v163
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp350:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention_backward.py:258:25 ]
	v_dual_mov_b32 v163, v182 :: v_dual_mov_b32 v240, v109
	v_mov_b32_dpp v163, v163 row_xmask:8 row_mask:0xf bank_mask:0xf
	v_mov_b32_e32 v244, v35
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp351:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention_backward.py:258:25 ] ]
	v_max_f32_e32 v163, v163, v163
	v_max_f32_e32 v163, v164, v163
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp352:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention_backward.py:258:25 ]
	v_mov_b32_e32 v164, v163
	v_mov_b32_dpp v164, v164 row_xmask:4 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp353:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention_backward.py:258:25 ] ]
	v_max_f32_e32 v164, v164, v164
	v_max_f32_e32 v163, v163, v164
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp354:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention_backward.py:258:25 ]
	v_mov_b32_e32 v164, v163
	v_mov_b32_dpp v164, v164 row_xmask:2 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp355:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention_backward.py:258:25 ] ]
	v_max_f32_e32 v164, v164, v164
	v_max_f32_e32 v163, v163, v164
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
.Ltmp356:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention_backward.py:258:25 ]
	v_mov_b32_e32 v164, v163
	v_mov_b32_e32 v245, v75
	v_mov_b32_dpp v164, v164 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp357:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention_backward.py:258:25 ] ]
	v_max_f32_e32 v164, v164, v164
	v_dual_max_f32 v163, v163, v164 :: v_dual_max_f32 v164, v237, v237
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp358:
	.loc	1 259 20                        ; attention_backward.py:259:20
	v_max_f32_e32 v237, v164, v163
	.loc	1 261 58                        ; attention_backward.py:261:58
	v_sub_f32_e32 v164, v182, v237
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 261 45 is_stmt 0              ; attention_backward.py:261:45
	v_exp_f32_e32 v164, v164
	.loc	1 261 29                        ; attention_backward.py:261:29
	v_cndmask_b32_e32 v164, 0, v164, vcc_lo
	.loc	1 260 21 is_stmt 1              ; attention_backward.py:260:21
	v_cmp_neq_f32_e32 vcc_lo, 0xff800000, v239
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp359:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:262:33 ]
	v_mov_b32_e32 v165, v164
	v_mov_b32_dpp v165, v165 row_xmask:8 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp360:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:262:33 ] ]
	v_add_f32_e32 v164, v164, v165
.Ltmp361:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:262:33 ]
	v_mov_b32_e32 v165, v164
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v165, v165 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp362:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:262:33 ] ]
	v_add_f32_e32 v164, v164, v165
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp363:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:262:33 ]
	v_mov_b32_e32 v165, v164
	v_mov_b32_dpp v165, v165 row_xmask:2 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp364:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:262:33 ] ]
	v_dual_add_f32 v164, v164, v165 :: v_dual_max_f32 v165, v239, v239
.Ltmp365:
	.loc	1 259 20                        ; attention_backward.py:259:20
	v_dual_max_f32 v182, v165, v163 :: v_dual_mov_b32 v163, v164
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp366:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:262:33 ]
	v_mov_b32_dpp v163, v163 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp367:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:262:33 ] ]
	v_add_f32_e32 v181, v164, v163
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_2)
.Ltmp368:
	.loc	1 260 70                        ; attention_backward.py:260:70
	v_sub_f32_e32 v163, v239, v182
	v_mov_b32_e32 v239, v182
	.loc	1 260 57 is_stmt 0              ; attention_backward.py:260:57
	v_exp_f32_e32 v163, v163
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 260 21                        ; attention_backward.py:260:21
	v_cndmask_b32_e32 v163, 0, v163, vcc_lo
	.loc	1 262 19 is_stmt 1              ; attention_backward.py:262:19
	v_fmac_f32_e32 v181, v238, v163
	s_delay_alu instid0(VALU_DEP_1)
	v_mov_b32_e32 v238, v181
	.loc	1 194 9                         ; attention_backward.py:194:9
	s_cbranch_scc0 .LBB0_28
.LBB0_7:                                ; =>This Inner Loop Header: Depth=1
	.loc	1 195 27                        ; attention_backward.py:195:27
	v_or_b32_e32 v34, s73, v102
	.loc	1 199 21                        ; attention_backward.py:199:21
	s_add_i32 s20, s73, s55
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_mul_i32 s21, s20, s46
	v_add_nc_u32_e32 v35, s21, v161
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 201 24                        ; attention_backward.py:201:24
	v_cmp_gt_i32_e32 vcc_lo, s31, v34
	.loc	1 195 27                        ; attention_backward.py:195:27
	v_or_b32_e32 v34, s73, v154
	.loc	1 199 21                        ; attention_backward.py:199:21
	v_add_nc_u32_e32 v36, s21, v162
	v_add_nc_u32_e32 v37, s21, v79
	v_add_nc_u32_e32 v38, s21, v80
	.loc	1 200 26                        ; attention_backward.py:200:26
	s_and_b32 vcc_lo, s2, vcc_lo
	.loc	1 201 24                        ; attention_backward.py:201:24
	v_cmp_gt_i32_e64 s13, s31, v34
	.loc	1 195 27                        ; attention_backward.py:195:27
	v_or_b32_e32 v34, s73, v155
	.loc	1 199 21                        ; attention_backward.py:199:21
	v_add_nc_u32_e32 v39, s21, v90
	v_add_nc_u32_e32 v40, s21, v91
	v_add_nc_u32_e32 v41, s21, v92
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 201 24                        ; attention_backward.py:201:24
	v_cmp_gt_i32_e64 s14, s31, v34
	.loc	1 195 27                        ; attention_backward.py:195:27
	v_or_b32_e32 v34, s73, v156
	.loc	1 201 24                        ; attention_backward.py:201:24
	v_cmp_gt_i32_e64 s15, s31, v34
	.loc	1 195 27                        ; attention_backward.py:195:27
	v_or_b32_e32 v34, s73, v157
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 201 24                        ; attention_backward.py:201:24
	v_cmp_gt_i32_e64 s16, s31, v34
	.loc	1 195 27                        ; attention_backward.py:195:27
	v_or_b32_e32 v34, s73, v158
	.loc	1 201 24                        ; attention_backward.py:201:24
	v_cmp_gt_i32_e64 s17, s31, v34
	.loc	1 195 27                        ; attention_backward.py:195:27
	v_or_b32_e32 v34, s73, v159
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 201 24                        ; attention_backward.py:201:24
	v_cmp_gt_i32_e64 s18, s31, v34
	.loc	1 195 27                        ; attention_backward.py:195:27
	v_or_b32_e32 v34, s73, v160
	.loc	1 201 24                        ; attention_backward.py:201:24
	v_cmp_gt_i32_e64 s19, s31, v34
	.loc	1 199 21                        ; attention_backward.py:199:21
	v_add_nc_u32_e32 v34, s21, v78
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 198 28                        ; attention_backward.py:198:28
	v_cndmask_b32_e32 v34, 0x80000000, v34, vcc_lo
	.loc	1 200 26                        ; attention_backward.py:200:26
	s_and_b32 vcc_lo, s2, s13
	.loc	1 198 28                        ; attention_backward.py:198:28
	v_cndmask_b32_e32 v35, 0x80000000, v35, vcc_lo
	.loc	1 200 26                        ; attention_backward.py:200:26
	s_and_b32 vcc_lo, s2, s14
	.loc	1 198 28                        ; attention_backward.py:198:28
	v_cndmask_b32_e32 v36, 0x80000000, v36, vcc_lo
	.loc	1 200 26                        ; attention_backward.py:200:26
	s_and_b32 vcc_lo, s2, s15
	.loc	1 198 28                        ; attention_backward.py:198:28
	v_cndmask_b32_e32 v37, 0x80000000, v37, vcc_lo
	.loc	1 200 26                        ; attention_backward.py:200:26
	s_and_b32 vcc_lo, s2, s16
	.loc	1 198 28                        ; attention_backward.py:198:28
	v_cndmask_b32_e32 v38, 0x80000000, v38, vcc_lo
	.loc	1 200 26                        ; attention_backward.py:200:26
	s_and_b32 vcc_lo, s2, s17
	.loc	1 198 28                        ; attention_backward.py:198:28
	v_cndmask_b32_e32 v39, 0x80000000, v39, vcc_lo
	.loc	1 200 26                        ; attention_backward.py:200:26
	s_and_b32 vcc_lo, s2, s18
	.loc	1 198 28                        ; attention_backward.py:198:28
	v_cndmask_b32_e32 v40, 0x80000000, v40, vcc_lo
	.loc	1 200 26                        ; attention_backward.py:200:26
	s_and_b32 vcc_lo, s2, s19
	.loc	1 198 28                        ; attention_backward.py:198:28
	v_cndmask_b32_e32 v41, 0x80000000, v41, vcc_lo
	s_clause 0x7
	buffer_load_u8 v34, v34, s[60:63], 0 offen
	buffer_load_u8 v35, v35, s[60:63], 0 offen
	buffer_load_u8 v36, v36, s[60:63], 0 offen
	buffer_load_u8 v37, v37, s[60:63], 0 offen
	buffer_load_u8 v38, v38, s[60:63], 0 offen
	buffer_load_u8 v39, v39, s[60:63], 0 offen
	buffer_load_u8 v40, v40, s[60:63], 0 offen
	buffer_load_u8 v41, v41, s[60:63], 0 offen
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_waitcnt vmcnt(7)
	ds_store_b8 v103, v34
	s_waitcnt vmcnt(6)
	ds_store_b8 v103, v35 offset:64
	s_waitcnt vmcnt(5)
	ds_store_b8 v104, v36
	s_waitcnt vmcnt(4)
	ds_store_b8 v104, v37 offset:64
	s_waitcnt vmcnt(3)
	ds_store_b8 v105, v38
	s_waitcnt vmcnt(2)
	ds_store_b8 v105, v39 offset:64
	s_waitcnt vmcnt(1)
	ds_store_b8 v106, v40
	s_waitcnt vmcnt(0)
	ds_store_b8 v106, v41 offset:64
	v_add_nc_u32_e32 v41, 0, v137
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 204 29                        ; attention_backward.py:204:29
	v_mov_b32_e32 v40, v33
	v_mov_b32_e32 v34, v33
	.loc	1 198 28                        ; attention_backward.py:198:28
	ds_load_b64 v[74:75], v41
	v_add_nc_u32_e32 v41, 0, v169
	.loc	1 204 29                        ; attention_backward.py:204:29
	v_mov_b32_e32 v35, v33
	v_mov_b32_e32 v36, v33
	v_mov_b32_e32 v37, v33
	v_mov_b32_e32 v38, v33
	.loc	1 198 28                        ; attention_backward.py:198:28
	ds_load_b64 v[76:77], v41
	v_add_nc_u32_e32 v41, 0, v170
	.loc	1 204 29                        ; attention_backward.py:204:29
	v_mov_b32_e32 v39, v33
	.loc	1 198 28                        ; attention_backward.py:198:28
	ds_load_b64 v[181:182], v41
	v_add_nc_u32_e32 v41, 0, v171
	ds_load_b64 v[254:255], v41
	.loc	1 204 29                        ; attention_backward.py:204:29
	v_mov_b32_e32 v41, v40
	v_mov_b32_e32 v40, v39
	v_mov_b32_e32 v39, v38
	v_mov_b32_e32 v38, v37
	v_mov_b32_e32 v37, v36
	v_mov_b32_e32 v36, v35
	v_mov_b32_e32 v35, v34
	v_mov_b32_e32 v34, v33
	s_waitcnt lgkmcnt(3)
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_wmma_i32_16x16x16_iu4 v[34:41], v[74:75], v[82:83], v[34:41] neg_lo:[1,1,0]
	.loc	1 195 27                        ; attention_backward.py:195:27
	v_or_b32_e32 v75, s73, v126
	.loc	1 215 21                        ; attention_backward.py:215:21
	v_add_lshl_u32 v74, s20, v125, 1
	.loc	1 204 29                        ; attention_backward.py:204:29
	s_waitcnt lgkmcnt(2)
	v_wmma_i32_16x16x16_iu4 v[34:41], v[76:77], v[84:85], v[34:41] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 216 26                        ; attention_backward.py:216:26
	v_cmp_gt_i32_e32 vcc_lo, s31, v75
	.loc	1 195 27                        ; attention_backward.py:195:27
	v_or_b32_e32 v75, s73, v124
	.loc	1 214 33                        ; attention_backward.py:214:33
	v_add_nc_u32_e32 v76, 4, v74
	v_add_nc_u32_e32 v77, 8, v74
	v_add_nc_u32_e32 v109, 12, v74
	.loc	1 204 29                        ; attention_backward.py:204:29
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu4 v[34:41], v[181:182], v[86:87], v[34:41] neg_lo:[1,1,0]
	.loc	1 216 26                        ; attention_backward.py:216:26
	v_cmp_gt_i32_e64 s13, s31, v75
	.loc	1 195 27                        ; attention_backward.py:195:27
	v_or_b32_e32 v75, s73, v123
	.loc	1 214 33                        ; attention_backward.py:214:33
	v_add_nc_u32_e32 v163, 16, v74
	v_add_nc_u32_e32 v166, 24, v74
	v_add_nc_u32_e32 v164, 20, v74
	v_add_nc_u32_e32 v181, 28, v74
	.loc	1 216 26                        ; attention_backward.py:216:26
	v_cmp_gt_i32_e64 s14, s31, v75
	.loc	1 195 27                        ; attention_backward.py:195:27
	v_or_b32_e32 v75, s73, v122
	.loc	1 204 29                        ; attention_backward.py:204:29
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[34:41], v[254:255], v[88:89], v[34:41] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 216 26                        ; attention_backward.py:216:26
	v_cmp_gt_i32_e64 s15, s31, v75
	.loc	1 195 27                        ; attention_backward.py:195:27
	v_or_b32_e32 v75, s73, v121
	.loc	1 214 33                        ; attention_backward.py:214:33
	v_cndmask_b32_e64 v163, 0x80000000, v163, s15
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 216 26                        ; attention_backward.py:216:26
	v_cmp_gt_i32_e64 s16, s31, v75
	.loc	1 195 27                        ; attention_backward.py:195:27
	v_or_b32_e32 v75, s73, v120
	.loc	1 214 33                        ; attention_backward.py:214:33
	v_cndmask_b32_e64 v164, 0x80000000, v164, s16
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 216 26                        ; attention_backward.py:216:26
	v_cmp_gt_i32_e64 s17, s31, v75
	.loc	1 195 27                        ; attention_backward.py:195:27
	v_or_b32_e32 v75, s73, v119
	.loc	1 214 33                        ; attention_backward.py:214:33
	v_cndmask_b32_e64 v254, 0x80000000, v166, s17
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 216 26                        ; attention_backward.py:216:26
	v_cmp_gt_i32_e64 s18, s31, v75
	.loc	1 195 27                        ; attention_backward.py:195:27
	v_or_b32_e32 v75, s73, v125
	.loc	1 214 33                        ; attention_backward.py:214:33
	v_cndmask_b32_e64 v207, 0x80000000, v181, s18
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 216 26                        ; attention_backward.py:216:26
	v_cmp_gt_i32_e64 s19, s31, v75
	.loc	1 214 33                        ; attention_backward.py:214:33
	v_cndmask_b32_e32 v75, 0x80000000, v76, vcc_lo
	v_cndmask_b32_e64 v76, 0x80000000, v77, s13
	v_cndmask_b32_e64 v77, 0x80000000, v109, s14
	.loc	1 238 13                        ; attention_backward.py:238:13
	v_cmp_ne_u32_e32 vcc_lo, 1, v127
	.loc	1 214 33                        ; attention_backward.py:214:33
	v_cndmask_b32_e64 v74, 0x80000000, v74, s19
	s_clause 0x7
	buffer_load_u16 v166, v74, s[64:67], 0 offen
	buffer_load_u16 v109, v75, s[64:67], 0 offen
	buffer_load_u16 v185, v76, s[64:67], 0 offen
	buffer_load_u16 v183, v77, s[64:67], 0 offen
	buffer_load_u16 v182, v163, s[64:67], 0 offen
	buffer_load_u16 v181, v164, s[64:67], 0 offen
	buffer_load_u16 v255, v254, s[64:67], 0 offen
	buffer_load_u16 v254, v207, s[64:67], 0 offen
	.loc	1 195 27                        ; attention_backward.py:195:27
	v_or_b32_e32 v74, s73, v107
	.loc	1 238 13                        ; attention_backward.py:238:13
	s_and_b32 vcc_lo, exec_lo, vcc_lo
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 201 24                        ; attention_backward.py:201:24
	v_cmp_gt_i32_e64 s13, s31, v74
	.loc	1 236 21                        ; attention_backward.py:236:21
	s_and_b32 s79, s5, s13
	s_and_b32 s78, s6, s13
	s_and_b32 s76, s7, s13
	s_and_b32 s74, s8, s13
	s_and_b32 s81, s9, s13
	s_and_b32 s80, s10, s13
	s_and_b32 s77, s11, s13
	s_and_b32 s75, s12, s13
	.loc	1 238 13                        ; attention_backward.py:238:13
	s_cbranch_vccnz .LBB0_9
; %bb.8:                                ;   in Loop: Header=BB0_7 Depth=1
	.loc	1 239 26                        ; attention_backward.py:239:26
	v_cmp_le_i32_e32 vcc_lo, v74, v128
	v_cmp_le_i32_e64 s13, v74, v129
	v_cmp_le_i32_e64 s14, v74, v130
	v_cmp_le_i32_e64 s15, v74, v131
	v_cmp_le_i32_e64 s16, v74, v132
	v_cmp_le_i32_e64 s17, v74, v133
	.loc	1 239 17 is_stmt 0              ; attention_backward.py:239:17
	s_and_b32 s20, vcc_lo, s79
	s_and_b32 s13, s13, s78
	.loc	1 239 26                        ; attention_backward.py:239:26
	v_cmp_le_i32_e64 s18, v74, v134
	v_cmp_le_i32_e64 s19, v74, v135
	.loc	1 239 17                        ; attention_backward.py:239:17
	s_and_b32 s14, s14, s76
	s_and_b32 s15, s15, s74
	s_and_not1_b32 s21, s79, exec_lo
	s_and_b32 s20, s20, exec_lo
	s_and_not1_b32 s22, s78, exec_lo
	s_and_b32 s13, s13, exec_lo
	s_and_b32 s16, s16, s81
	s_and_b32 s17, s17, s80
	s_or_b32 s79, s21, s20
	s_or_b32 s78, s22, s13
	s_and_not1_b32 s13, s76, exec_lo
	s_and_b32 s14, s14, exec_lo
	s_and_not1_b32 s20, s74, exec_lo
	s_and_b32 s15, s15, exec_lo
	s_and_b32 s18, s18, s77
	s_and_b32 s19, s19, s75
	s_or_b32 s76, s13, s14
	s_or_b32 s74, s20, s15
	s_and_not1_b32 s13, s81, exec_lo
	s_and_b32 s14, s16, exec_lo
	s_and_not1_b32 s15, s80, exec_lo
	s_and_b32 s16, s17, exec_lo
	s_or_b32 s81, s13, s14
	s_or_b32 s80, s15, s16
	s_and_not1_b32 s13, s77, exec_lo
	s_and_b32 s14, s18, exec_lo
	s_and_not1_b32 s15, s75, exec_lo
	s_and_b32 s16, s19, exec_lo
	s_or_b32 s77, s13, s14
	s_or_b32 s75, s15, s16
.LBB0_9:                                ;   in Loop: Header=BB0_7 Depth=1
	.loc	1 240 13 is_stmt 1              ; attention_backward.py:240:13
	s_and_not1_b32 vcc_lo, exec_lo, s33
	s_cbranch_vccnz .LBB0_11
; %bb.10:                               ;   in Loop: Header=BB0_7 Depth=1
	.loc	1 241 26                        ; attention_backward.py:241:26
	v_cmp_ge_i32_e32 vcc_lo, v74, v138
	v_cmp_ge_i32_e64 s13, v74, v139
	.loc	1 242 26                        ; attention_backward.py:242:26
	v_cmp_le_i32_e64 s20, v74, v146
	v_cmp_le_i32_e64 s21, v74, v147
	.loc	1 241 26                        ; attention_backward.py:241:26
	v_cmp_ge_i32_e64 s14, v74, v140
	v_cmp_ge_i32_e64 s15, v74, v141
	.loc	1 242 26                        ; attention_backward.py:242:26
	v_cmp_le_i32_e64 s22, v74, v148
	v_cmp_le_i32_e64 s23, v74, v149
	.loc	1 241 26                        ; attention_backward.py:241:26
	v_cmp_ge_i32_e64 s16, v74, v142
	v_cmp_ge_i32_e64 s17, v74, v143
	.loc	1 242 26                        ; attention_backward.py:242:26
	v_cmp_le_i32_e64 s24, v74, v150
	v_cmp_le_i32_e64 s25, v74, v151
	.loc	1 242 17 is_stmt 0              ; attention_backward.py:242:17
	s_and_b32 s20, vcc_lo, s20
	s_and_b32 s13, s13, s21
	.loc	1 241 26 is_stmt 1              ; attention_backward.py:241:26
	v_cmp_ge_i32_e64 s18, v74, v144
	v_cmp_ge_i32_e64 s19, v74, v145
	.loc	1 242 26                        ; attention_backward.py:242:26
	v_cmp_le_i32_e64 s26, v74, v152
	v_cmp_le_i32_e64 s27, v74, v153
	.loc	1 242 17 is_stmt 0              ; attention_backward.py:242:17
	s_and_b32 s20, s20, s79
	s_and_b32 s13, s13, s78
	s_and_b32 s14, s14, s22
	s_and_b32 s15, s15, s23
	s_and_b32 s14, s14, s76
	s_and_b32 s15, s15, s74
	s_and_b32 s16, s16, s24
	s_and_b32 s17, s17, s25
	s_and_not1_b32 s21, s79, exec_lo
	s_and_b32 s20, s20, exec_lo
	s_and_not1_b32 s22, s78, exec_lo
	s_and_b32 s13, s13, exec_lo
	s_and_b32 s16, s16, s81
	s_and_b32 s17, s17, s80
	s_and_b32 s18, s18, s26
	s_and_b32 s19, s19, s27
	s_or_b32 s79, s21, s20
	s_or_b32 s78, s22, s13
	s_and_not1_b32 s13, s76, exec_lo
	s_and_b32 s14, s14, exec_lo
	s_and_not1_b32 s20, s74, exec_lo
	s_and_b32 s15, s15, exec_lo
	s_and_b32 s18, s18, s77
	s_and_b32 s19, s19, s75
	s_or_b32 s76, s13, s14
	s_or_b32 s74, s20, s15
	s_and_not1_b32 s13, s81, exec_lo
	s_and_b32 s14, s16, exec_lo
	s_and_not1_b32 s15, s80, exec_lo
	s_and_b32 s16, s17, exec_lo
	s_or_b32 s81, s13, s14
	s_or_b32 s80, s15, s16
	s_and_not1_b32 s13, s77, exec_lo
	s_and_b32 s14, s18, exec_lo
	s_and_not1_b32 s15, s75, exec_lo
	s_and_b32 s16, s19, exec_lo
	s_or_b32 s77, s13, s14
	s_or_b32 s75, s15, s16
.LBB0_11:                               ;   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 17                          ; attention_backward.py:0:17
	v_mov_b16_e32 v74.l, 0
	.loc	1 245 21 is_stmt 1              ; attention_backward.py:245:21
	s_mul_i32 s13, s73, s43
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	s_add_i32 s13, s39, s13
	v_mov_b16_e32 v77.l, v74.l
	.loc	1 252 30                        ; attention_backward.py:252:30
	s_and_saveexec_b32 s14, s79
	s_cbranch_execz .LBB0_13
; %bb.12:                               ;   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 30 is_stmt 0                ; attention_backward.py:0:30
	v_add_nc_u32_e32 v75, s13, v100
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 252 30                        ; attention_backward.py:252:30
	v_ashrrev_i32_e32 v76, 31, v75
	v_add_co_u32 v75, vcc_lo, s34, v75
	v_add_co_ci_u32_e64 v76, null, s35, v76, vcc_lo
	global_load_d16_u8 v77, v[75:76], off
.LBB0_13:                               ;   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 30                          ; attention_backward.py:0:30
	s_or_b32 exec_lo, exec_lo, s14
	.loc	1 252 30                        ; attention_backward.py:252:30
	s_and_saveexec_b32 s14, s78
	s_cbranch_execz .LBB0_15
; %bb.14:                               ;   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 30                          ; attention_backward.py:0:30
	v_add_nc_u32_e32 v74, s13, v93
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 252 30                        ; attention_backward.py:252:30
	v_ashrrev_i32_e32 v75, 31, v74
	v_add_co_u32 v74, vcc_lo, s34, v74
	v_add_co_ci_u32_e64 v75, null, s35, v75, vcc_lo
	global_load_d16_u8 v74, v[74:75], off
.LBB0_15:                               ;   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 30                          ; attention_backward.py:0:30
	s_or_b32 exec_lo, exec_lo, s14
	s_waitcnt vmcnt(0)
	v_mov_b16_e32 v74.h, 0
	s_delay_alu instid0(VALU_DEP_1)
	v_mov_b16_e32 v75.l, v74.h
	.loc	1 252 30                        ; attention_backward.py:252:30
	s_and_saveexec_b32 s14, s76
	s_cbranch_execz .LBB0_17
; %bb.16:                               ;   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 30                          ; attention_backward.py:0:30
	v_add_nc_u32_e32 v75, s13, v94
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 252 30                        ; attention_backward.py:252:30
	v_ashrrev_i32_e32 v76, 31, v75
	v_add_co_u32 v75, vcc_lo, s34, v75
	v_add_co_ci_u32_e64 v76, null, s35, v76, vcc_lo
	global_load_d16_u8 v75, v[75:76], off
.LBB0_17:                               ;   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 30                          ; attention_backward.py:0:30
	s_or_b32 exec_lo, exec_lo, s14
	.loc	1 252 30                        ; attention_backward.py:252:30
	s_and_saveexec_b32 s14, s74
	s_cbranch_execz .LBB0_19
; %bb.18:                               ;   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 30                          ; attention_backward.py:0:30
	v_add_nc_u32_e32 v76, s13, v95
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 252 30                        ; attention_backward.py:252:30
	v_ashrrev_i32_e32 v164, 31, v76
	v_add_co_u32 v163, vcc_lo, s34, v76
	v_add_co_ci_u32_e64 v164, null, s35, v164, vcc_lo
	global_load_d16_hi_u8 v74, v[163:164], off
.LBB0_19:                               ;   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 30                          ; attention_backward.py:0:30
	s_or_b32 exec_lo, exec_lo, s14
	v_mov_b16_e32 v76.h, 0
	s_delay_alu instid0(VALU_DEP_1)
	v_mov_b16_e32 v77.h, v76.h
	.loc	1 252 30                        ; attention_backward.py:252:30
	s_and_saveexec_b32 s14, s81
	s_cbranch_execz .LBB0_21
; %bb.20:                               ;   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 30                          ; attention_backward.py:0:30
	v_add_nc_u32_e32 v163, s13, v96
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 252 30                        ; attention_backward.py:252:30
	v_ashrrev_i32_e32 v164, 31, v163
	v_add_co_u32 v163, vcc_lo, s34, v163
	v_add_co_ci_u32_e64 v164, null, s35, v164, vcc_lo
	global_load_d16_hi_u8 v77, v[163:164], off
.LBB0_21:                               ;   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 30                          ; attention_backward.py:0:30
	s_or_b32 exec_lo, exec_lo, s14
	.loc	1 252 30                        ; attention_backward.py:252:30
	s_and_saveexec_b32 s14, s80
	s_cbranch_execz .LBB0_23
; %bb.22:                               ;   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 30                          ; attention_backward.py:0:30
	v_add_nc_u32_e32 v76, s13, v97
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 252 30                        ; attention_backward.py:252:30
	v_ashrrev_i32_e32 v164, 31, v76
	v_add_co_u32 v163, vcc_lo, s34, v76
	v_add_co_ci_u32_e64 v164, null, s35, v164, vcc_lo
	global_load_d16_hi_u8 v76, v[163:164], off
.LBB0_23:                               ;   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 30                          ; attention_backward.py:0:30
	s_or_b32 exec_lo, exec_lo, s14
	s_waitcnt vmcnt(0)
	v_mov_b16_e32 v75.h, 0
	s_delay_alu instid0(VALU_DEP_1)
	v_mov_b16_e32 v76.l, v75.h
	.loc	1 252 30                        ; attention_backward.py:252:30
	s_and_saveexec_b32 s14, s77
	s_cbranch_execz .LBB0_25
; %bb.24:                               ;   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 30                          ; attention_backward.py:0:30
	v_add_nc_u32_e32 v163, s13, v98
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 252 30                        ; attention_backward.py:252:30
	v_ashrrev_i32_e32 v164, 31, v163
	v_add_co_u32 v163, vcc_lo, s34, v163
	v_add_co_ci_u32_e64 v164, null, s35, v164, vcc_lo
	global_load_d16_u8 v76, v[163:164], off
.LBB0_25:                               ;   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 30                          ; attention_backward.py:0:30
	s_or_b32 exec_lo, exec_lo, s14
	.loc	1 252 30                        ; attention_backward.py:252:30
	s_and_saveexec_b32 s14, s75
	s_cbranch_execz .LBB0_6
; %bb.26:                               ;   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 30                          ; attention_backward.py:0:30
	v_add_nc_u32_e32 v163, s13, v99
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 252 30                        ; attention_backward.py:252:30
	v_ashrrev_i32_e32 v164, 31, v163
	v_add_co_u32 v163, vcc_lo, s34, v163
	v_add_co_ci_u32_e64 v164, null, s35, v164, vcc_lo
	global_load_d16_hi_u8 v75, v[163:164], off
	s_branch .LBB0_6
.LBB0_27:
	.loc	1 0 30                          ; attention_backward.py:0:30
	v_dual_mov_b32 v182, 0xff800000 :: v_dual_mov_b32 v181, 0
	v_dual_mov_b32 v109, 0 :: v_dual_mov_b32 v76, 0
	v_dual_mov_b32 v35, 0 :: v_dual_mov_b32 v34, 0
	v_dual_mov_b32 v41, 0 :: v_dual_mov_b32 v166, 0xff800000
	v_dual_mov_b32 v39, 0 :: v_dual_mov_b32 v74, 0xff800000
	v_dual_mov_b32 v37, 0 :: v_dual_mov_b32 v40, 0xff800000
	v_dual_mov_b32 v77, 0xff800000 :: v_dual_mov_b32 v38, 0xff800000
	v_dual_mov_b32 v75, 0xff800000 :: v_dual_mov_b32 v36, 0xff800000
	s_branch .LBB0_29
.LBB0_28:                               ; %Flow281
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v183, off, off offset:8
	scratch_load_b32 v185, off, off offset:12
	v_and_b32_e32 v165, 12, v0
	v_and_b32_e32 v163, 16, v0
	v_lshlrev_b32_e32 v164, 3, v107
	v_lshlrev_b32_e32 v207, 2, v0
	v_and_b32_e32 v212, 48, v0
.LBB0_29:                               ; %Flow282
	s_load_b32 s60, s[0:1], 0x74
	.loc	1 264 43 is_stmt 1              ; attention_backward.py:264:43
	v_cmp_gt_f32_e64 s0, 0x800000, v34
	.loc	1 124 21                        ; attention_backward.py:124:21
	v_or_b32_e32 v33, s54, v81
	.loc	1 264 43                        ; attention_backward.py:264:43
	v_cmp_gt_f32_e64 s1, 0x800000, v37
	v_cmp_gt_f32_e64 s13, 0x800000, v39
	.loc	1 264 17 is_stmt 0              ; attention_backward.py:264:17
	s_waitcnt lgkmcnt(0)
	.loc	1 264 43                        ; attention_backward.py:264:43
	v_cndmask_b32_e64 v78, 0, 32, s0
	.loc	1 128 21 is_stmt 1              ; attention_backward.py:128:21
	v_cmp_gt_i32_e32 vcc_lo, s30, v33
	.loc	1 264 43                        ; attention_backward.py:264:43
	v_cndmask_b32_e64 v33, 0, 0x42000000, s0
	v_cndmask_b32_e64 v80, 0, 32, s1
	v_cmp_gt_f32_e64 s0, 0x800000, v41
	v_ldexp_f32 v78, v34, v78
	v_cndmask_b32_e64 v79, 0, 0x42000000, s1
	v_cndmask_b32_e64 v91, 0, 32, s13
	v_ldexp_f32 v80, v37, v80
	v_cmp_gt_f32_e64 s1, 0x800000, v35
	v_log_f32_e32 v78, v78
	v_cndmask_b32_e64 v92, 0, 0x42000000, s0
	v_cndmask_b32_e64 v93, 0, 32, s0
	v_cmp_gt_f32_e64 s0, 0x800000, v76
	v_ldexp_f32 v91, v39, v91
	v_log_f32_e32 v80, v80
	v_cndmask_b32_e64 v95, 0, 32, s1
	v_ldexp_f32 v93, v41, v93
	v_cndmask_b32_e64 v97, 0, 32, s0
	v_log_f32_e32 v91, v91
	v_sub_f32_e32 v33, v78, v33
	v_ldexp_f32 v95, v35, v95
	v_cndmask_b32_e64 v94, 0, 0x42000000, s1
	v_ldexp_f32 v97, v76, v97
	v_cmp_gt_f32_e64 s1, 0x800000, v109
	v_cndmask_b32_e64 v90, 0, 0x42000000, s13
	v_cndmask_b32_e64 v96, 0, 0x42000000, s0
	v_log_f32_e32 v93, v93
	v_log_f32_e32 v95, v95
	v_log_f32_e32 v97, v97
	v_sub_f32_e32 v78, v80, v79
	.loc	1 264 37 is_stmt 0              ; attention_backward.py:264:37
	v_add_f32_e32 v33, v36, v33
	.loc	1 264 26                        ; attention_backward.py:264:26
	v_cmp_lt_f32_e64 s0, 0, v34
	.loc	1 264 43                        ; attention_backward.py:264:43
	v_cmp_gt_f32_e64 s13, 0x800000, v181
	v_cndmask_b32_e64 v99, 0, 32, s1
	v_sub_f32_e32 v79, v91, v90
	.loc	1 264 37                        ; attention_backward.py:264:37
	v_add_f32_e32 v38, v38, v78
	.loc	1 264 17                        ; attention_backward.py:264:17
	v_cndmask_b32_e64 v36, 0, v33, s0
	.loc	1 264 26                        ; attention_backward.py:264:26
	v_cmp_lt_f32_e64 s0, 0, v37
	.loc	1 264 43                        ; attention_backward.py:264:43
	v_cndmask_b32_e64 v101, 0, 32, s13
	v_ldexp_f32 v99, v109, v99
	v_sub_f32_e32 v80, v93, v92
	v_dual_sub_f32 v90, v95, v94 :: v_dual_sub_f32 v91, v97, v96
	.loc	1 264 37                        ; attention_backward.py:264:37
	v_add_f32_e32 v40, v40, v79
	.loc	1 264 17                        ; attention_backward.py:264:17
	v_cndmask_b32_e64 v37, 0, v38, s0
	.loc	1 264 26                        ; attention_backward.py:264:26
	v_cmp_lt_f32_e64 s0, 0, v39
	.loc	1 264 43                        ; attention_backward.py:264:43
	v_ldexp_f32 v101, v181, v101
	v_log_f32_e32 v99, v99
	.loc	1 264 37                        ; attention_backward.py:264:37
	v_dual_add_f32 v74, v74, v80 :: v_dual_add_f32 v77, v77, v91
	v_add_f32_e32 v75, v75, v90
	.loc	1 264 17                        ; attention_backward.py:264:17
	v_cndmask_b32_e64 v38, 0, v40, s0
	.loc	1 264 26                        ; attention_backward.py:264:26
	v_cmp_lt_f32_e64 s0, 0, v41
	.loc	1 264 43                        ; attention_backward.py:264:43
	v_cndmask_b32_e64 v98, 0, 0x42000000, s1
	v_log_f32_e32 v101, v101
	v_cndmask_b32_e64 v100, 0, 0x42000000, s13
	.loc	1 264 17                        ; attention_backward.py:264:17
	v_lshlrev_b32_e32 v33, 5, v0
	v_cndmask_b32_e64 v39, 0, v74, s0
	.loc	1 264 26                        ; attention_backward.py:264:26
	v_cmp_lt_f32_e64 s0, 0, v35
	.loc	1 264 43                        ; attention_backward.py:264:43
	v_sub_f32_e32 v92, v99, v98
	.loc	1 264 17                        ; attention_backward.py:264:17
	v_lshrrev_b32_e32 v35, 1, v172
	v_and_b32_e32 v33, 0x60, v33
	v_lshl_add_u32 v34, v212, 1, 0
	v_cndmask_b32_e64 v74, 0, v75, s0
	.loc	1 264 26                        ; attention_backward.py:264:26
	v_cmp_lt_f32_e64 s0, 0, v76
	.loc	1 264 43                        ; attention_backward.py:264:43
	v_sub_f32_e32 v93, v101, v100
	.loc	1 264 37                        ; attention_backward.py:264:37
	v_dual_add_f32 v78, v166, v92 :: v_dual_add_nc_u32 v33, 0, v33
	.loc	1 266 9 is_stmt 1               ; attention_backward.py:266:9
	v_and_b32_e32 v40, 28, v0
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 264 17                        ; attention_backward.py:264:17
	v_cndmask_b32_e64 v75, 0, v77, s0
	.loc	1 264 26 is_stmt 0              ; attention_backward.py:264:26
	v_cmp_lt_f32_e64 s0, 0, v109
	.loc	1 264 37                        ; attention_backward.py:264:37
	v_add_f32_e32 v79, v182, v93
	.loc	1 264 17                        ; attention_backward.py:264:17
	v_add3_u32 v35, v33, v35, v165
	s_barrier
.Ltmp369:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_e32 v94, v51, v179
.Ltmp370:
	.loc	1 264 17                        ; attention_backward.py:264:17
	v_cndmask_b32_e64 v76, 0, v78, s0
	.loc	1 264 26 is_stmt 0              ; attention_backward.py:264:26
	v_cmp_lt_f32_e64 s0, 0, v181
	s_ashr_i32 s14, s51, 4
	s_mov_b32 s51, 0x31027000
	.loc	1 266 9 is_stmt 1               ; attention_backward.py:266:9
	s_and_b32 s17, s57, 0xffff
	s_mov_b32 s16, s56
	.loc	1 264 17                        ; attention_backward.py:264:17
	v_cndmask_b32_e64 v77, 0, v79, s0
	ds_store_b128 v34, v[36:39]
	ds_store_b128 v34, v[74:77] offset:16
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b32 v92, v35
	.loc	1 266 9                         ; attention_backward.py:266:9
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v34, v[36:39]
	ds_store_b128 v34, v[74:77] offset:16
.Ltmp371:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_e32 v76, v44, v176
.Ltmp372:
	.loc	1 266 9                         ; attention_backward.py:266:9
	v_add_nc_u32_e32 v33, v33, v40
	s_waitcnt lgkmcnt(0)
	s_barrier
	v_cmp_eq_u32_e64 s0, 0, v172
	v_add_lshl_u32 v34, s50, v81, 2
	ds_load_b32 v33, v33
	s_mov_b32 s50, 0x7ffffffe
	s_mov_b32 s19, s51
	s_and_b32 vcc_lo, s0, vcc_lo
.Ltmp373:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_dual_add_f32 v75, v43, v175 :: v_dual_cndmask_b32 v34, 0x80000000, v34
.Ltmp374:
	.loc	1 266 9                         ; attention_backward.py:266:9
	s_mov_b32 s18, s50
.Ltmp375:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_dual_add_f32 v58, v58, v188 :: v_dual_add_f32 v59, v59, v189
	v_dual_add_f32 v60, v60, v190 :: v_dual_add_f32 v61, v61, v191
	v_dual_add_f32 v74, v42, v174 :: v_dual_add_f32 v77, v45, v177
.Ltmp376:
	.loc	1 267 9                         ; attention_backward.py:267:9
	v_mov_b32_e32 v40, 0
.Ltmp377:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_dual_add_f32 v70, v70, v192 :: v_dual_add_f32 v73, v73, v198
	v_dual_add_f32 v71, v71, v196 :: v_dual_add_f32 v72, v72, v197
	v_dual_add_f32 v93, v50, v178 :: v_dual_add_f32 v96, v53, v173
.Ltmp378:
	.loc	1 266 9                         ; attention_backward.py:266:9
	s_waitcnt lgkmcnt(0)
	buffer_store_b32 v33, v34, s[16:19], 0 offen
	.loc	1 267 9                         ; attention_backward.py:267:9
	v_lshl_add_u32 v33, v81, 2, 0
.Ltmp379:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_dual_add_f32 v95, v52, v180 :: v_dual_add_f32 v54, v54, v199
	v_dual_add_f32 v55, v55, v200 :: v_dual_add_f32 v56, v56, v201
	v_dual_add_f32 v57, v57, v203 :: v_dual_add_f32 v66, v66, v204
	v_dual_add_f32 v67, v67, v205 :: v_dual_add_f32 v68, v68, v206
	v_dual_add_f32 v69, v69, v208 :: v_dual_add_f32 v46, v46, v209
	v_add_f32_e32 v47, v47, v210
	v_dual_add_f32 v48, v48, v202 :: v_dual_add_f32 v63, v63, v193
	v_dual_add_f32 v49, v49, v194 :: v_dual_add_f32 v62, v62, v195
	v_dual_add_f32 v64, v64, v186 :: v_dual_add_f32 v65, v65, v187
.Ltmp380:
	.loc	1 267 9                         ; attention_backward.py:267:9
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v40, v[58:61]
	ds_store_b128 v40, v[70:73] offset:16
	ds_store_b128 v40, v[54:57] offset:32
	ds_store_b128 v40, v[66:69] offset:48
	ds_store_b128 v40, v[46:49] offset:64
	ds_store_b128 v40, v[62:65] offset:80
	ds_store_b128 v40, v[74:77] offset:96
	ds_store_b128 v40, v[93:96] offset:112
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b32 v33, v33
	s_and_b32 s17, s59, 0xffff
	s_mov_b32 s16, s58
	v_mov_b32_e32 v39, v40
	v_mov_b32_e32 v38, v40
	v_mov_b32_e32 v37, v40
	v_mov_b32_e32 v36, v40
	v_mov_b32_e32 v35, v40
	v_mov_b32_e32 v45, v40
	v_mov_b32_e32 v44, v40
	v_mov_b32_e32 v43, v40
	v_mov_b32_e32 v42, v40
	v_mov_b32_e32 v41, v40
	v_mov_b32_e32 v53, v40
	v_mov_b32_e32 v52, v40
	v_mov_b32_e32 v51, v40
	v_mov_b32_e32 v50, v40
	.loc	1 270 9                         ; attention_backward.py:270:9
	s_and_not1_b32 vcc_lo, exec_lo, s29
	.loc	1 267 9                         ; attention_backward.py:267:9
	s_waitcnt lgkmcnt(0)
	buffer_store_b32 v33, v34, s[16:19], 0 offen
	.loc	1 396 43                        ; attention_backward.py:396:43
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v40, v[58:61]
	ds_store_b128 v40, v[70:73] offset:16
	ds_store_b128 v40, v[54:57] offset:32
	ds_store_b128 v40, v[66:69] offset:48
	ds_store_b128 v40, v[46:49] offset:64
	ds_store_b128 v40, v[62:65] offset:80
	v_mov_b32_e32 v34, v40
	v_mov_b32_e32 v33, v40
	v_mov_b32_e32 v48, v40
	v_mov_b32_e32 v47, v40
	v_mov_b32_e32 v46, v40
	v_mov_b32_e32 v56, v40
	v_mov_b32_e32 v55, v40
	v_mov_b32_e32 v54, v40
	v_mov_b32_e32 v49, v40
	v_mov_b32_e32 v64, v40
	v_mov_b32_e32 v63, v40
	v_mov_b32_e32 v62, v40
	v_mov_b32_e32 v61, v40
	v_mov_b32_e32 v60, v40
	v_mov_b32_e32 v59, v40
	v_mov_b32_e32 v58, v40
	v_mov_b32_e32 v57, v40
	ds_store_b128 v40, v[74:77] offset:96
	ds_store_b128 v40, v[93:96] offset:112
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_cbranch_vccnz .LBB0_52
; %bb.30:                               ; %.lr.ph81
	scratch_load_b32 v36, off, off offset:4 ; 4-byte Folded Reload
	v_dual_mov_b32 v37, 0x7632 :: v_dual_lshlrev_b32 v34, 2, v107
	v_cmp_eq_u32_e32 vcc_lo, 0, v163
	.loc	1 168 40                        ; attention_backward.py:168:40
	v_lshlrev_b32_e32 v33, 1, v81
	.loc	1 348 39                        ; attention_backward.py:348:39
	s_lshl_b32 s29, s14, 3
	v_xor_b32_e32 v41, 16, v117
	v_xor_b32_e32 v44, 64, v117
	v_xor_b32_e32 v46, 0x60, v117
	s_waitcnt vmcnt(2)
	v_or3_b32 v94, v183, v184, v164
	.loc	1 371 21                        ; attention_backward.py:371:21
	s_mul_i32 s13, s72, s14
	.loc	1 349 30                        ; attention_backward.py:349:30
	s_mul_i32 s72, s72, s29
	v_add_nc_u32_e32 v181, 0, v44
	.loc	1 270 9                         ; attention_backward.py:270:9
	s_lshr_b32 s14, s70, 4
	s_lshr_b32 s30, s70, 1
	v_xor_b32_e32 v42, 32, v117
	v_add_nc_u32_e32 v183, 0, v46
	s_add_i32 s14, s14, s13
	s_add_i32 s13, s30, s72
	v_xor_b32_e32 v43, 48, v117
	v_xor_b32_e32 v45, 0x50, v117
	v_xor_b32_e32 v47, 0x70, v117
	s_mul_i32 s14, s47, s14
	s_add_i32 s15, s13, 7
	v_lshl_add_u32 v99, s14, 1, v108
	s_mul_i32 s39, s47, s15
	s_add_i32 s14, s13, 6
	s_add_i32 s15, s13, 5
	v_add_nc_u32_e32 v179, 0, v42
	s_mul_i32 s57, s47, s14
	s_mul_i32 s58, s47, s15
	s_add_i32 s14, s13, 4
	s_add_i32 s15, s13, 3
	v_lshl_add_u32 v98, v107, 1, 0
	v_add_nc_u32_e32 v184, 0, v47
	s_mul_i32 s59, s47, s14
	s_mul_i32 s61, s47, s15
	s_add_i32 s14, s13, 1
	s_add_i32 s15, s13, 2
	s_mul_i32 s64, s47, s13
	s_lshl_b32 s13, s70, 1
	s_and_b32 s41, s41, 0xffff
	s_and_b32 s45, s45, 0xffff
	s_and_b32 s49, s49, 0xffff
	s_and_b32 s53, s53, 0xffff
	s_lshl_b32 s56, s47, 3
	s_mul_i32 s62, s47, s14
	s_mul_i32 s63, s47, s15
	s_lshl1_add_u32 s65, s55, s13
	s_mov_b32 s66, 0x76543210
	s_mov_b32 s47, s51
	v_cndmask_b32_e32 v37, 0x3276, v37, vcc_lo
	v_lshlrev_b32_e32 v159, 1, v102
	v_dual_mov_b32 v65, 0 :: v_dual_add_nc_u32 v178, 0, v41
	v_lshlrev_b32_e32 v160, 1, v125
	s_delay_alu instid0(VALU_DEP_4)
	v_lshl_or_b32 v37, v37, 8, v37
	v_add_nc_u32_e32 v169, 0, v169
	v_add_nc_u32_e32 v170, 0, v170
	v_add_nc_u32_e32 v171, 0, v171
	v_add_nc_u32_e32 v180, 0, v43
	v_dual_mov_b32 v58, v65 :: v_dual_and_b32 v37, 0x760076, v37
	v_dual_mov_b32 v53, v65 :: v_dual_add_nc_u32 v182, 0, v45
	v_mov_b32_e32 v43, v65
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_lshl_or_b32 v37, v37, 4, v37
	v_mov_b32_e32 v45, v65
	v_mov_b32_e32 v47, v65
	v_mov_b32_e32 v59, v65
	v_dual_mov_b32 v62, v65 :: v_dual_and_b32 v97, 0x7060706, v37
	v_dual_mov_b32 v60, v65 :: v_dual_add_nc_u32 v37, s70, v107
	v_mov_b32_e32 v57, 0
	v_mov_b32_e32 v61, v65
	v_mov_b32_e32 v64, v65
	v_mov_b32_e32 v63, v65
	v_mad_u64_u32 v[90:91], null, s43, v37, s[28:29]
	v_mov_b32_e32 v54, v65
	s_lshl_b32 s28, s43, 4
	s_mov_b32 s43, s51
	v_dual_mov_b32 v41, 0 :: v_dual_mov_b32 v44, v65
	v_mov_b32_e32 v46, v65
	v_mov_b32_e32 v52, v65
	v_mov_b32_e32 v56, v65
	v_mov_b32_e32 v55, v65
	v_mov_b32_e32 v42, v65
	.loc	1 396 43                        ; attention_backward.py:396:43
	s_waitcnt vmcnt(0)
	v_add3_u32 v34, 0, v34, v36
	v_and_b32_e32 v36, 52, v207
	ds_load_b32 v93, v34
	v_lshl_or_b32 v34, v165, 5, v36
	v_mov_b32_e32 v36, 0x5410
	.loc	1 168 40                        ; attention_backward.py:168:40
	v_or_b32_e32 v35, 1, v33
	.loc	1 310 21                        ; attention_backward.py:310:21
	v_cmp_gt_i32_e64 s0, s60, v33
	v_and_or_b32 v33, v0, 2, v185
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cndmask_b32_e32 v36, 0x1054, v36, vcc_lo
	v_cmp_gt_i32_e64 s1, s60, v35
	v_xor_b32_e32 v35, 0x90, v94
	s_delay_alu instid0(VALU_DEP_4)
	v_or3_b32 v95, v33, v34, v102
	v_xor_b32_e32 v33, 0x120, v94
	v_lshl_or_b32 v36, v36, 8, v36
	v_xor_b32_e32 v34, 0x1b0, v94
	v_add_nc_u32_e32 v172, 0, v35
	v_xor_b32_e32 v38, 16, v95
	v_xor_b32_e32 v39, 32, v95
	v_and_b32_e32 v36, 0x540054, v36
	v_xor_b32_e32 v40, 48, v95
	v_add_nc_u32_e32 v173, 0, v33
	v_add_nc_u32_e32 v174, 0, v34
	v_add_nc_u32_e32 v175, 0, v38
	v_mov_b32_e32 v38, v65
	v_lshl_or_b32 v36, v36, 4, v36
	v_dual_mov_b32 v33, 0 :: v_dual_add_nc_u32 v176, 0, v39
	v_add_nc_u32_e32 v177, 0, v40
	v_mov_b32_e32 v40, v65
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_and_b32_e32 v96, 0x5040504, v36
	.loc	1 270 9                         ; attention_backward.py:270:9
	v_add_nc_u32_e32 v36, s54, v168
	v_mov_b32_e32 v34, v65
	v_mov_b32_e32 v35, v65
	v_dual_mov_b32 v39, v65 :: v_dual_add_nc_u32 v48, 28, v36
	v_add_nc_u32_e32 v49, 24, v36
	v_add_nc_u32_e32 v37, 20, v36
	v_mul_lo_u32 v100, s42, v36
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_mul_lo_u32 v91, s42, v48
	v_add_nc_u32_e32 v48, 16, v36
	v_mul_lo_u32 v101, s42, v49
	v_add_nc_u32_e32 v49, 8, v36
	v_mul_lo_u32 v155, s42, v48
	v_add3_u32 v48, s70, s55, v102
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_mul_lo_u32 v157, s42, v49
	v_add_nc_u32_e32 v50, 4, v48
	v_add_nc_u32_e32 v49, 6, v48
	v_add_nc_u32_e32 v51, 2, v48
	v_mul_lo_u32 v168, s46, v48
	s_delay_alu instid0(VALU_DEP_4)
	v_mul_lo_u32 v166, s46, v50
	v_mov_b32_e32 v50, v65
	v_mul_lo_u32 v154, s42, v37
	v_add_nc_u32_e32 v37, 12, v36
	v_add_nc_u32_e32 v36, 4, v36
	v_mul_lo_u32 v165, s46, v49
	v_mov_b32_e32 v49, 0
	v_mul_lo_u32 v167, s46, v51
	v_mul_lo_u32 v156, s42, v37
	v_mul_lo_u32 v158, s42, v36
	v_dual_mov_b32 v51, v65 :: v_dual_add_nc_u32 v36, 14, v48
	v_add_nc_u32_e32 v37, 12, v48
	s_mov_b32 s42, s50
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_mul_lo_u32 v161, s46, v36
	v_add_nc_u32_e32 v36, 10, v48
	v_mul_lo_u32 v162, s46, v37
	v_add_nc_u32_e32 v37, 8, v48
	v_mov_b32_e32 v48, v65
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_mul_lo_u32 v163, s46, v36
	v_mov_b32_e32 v36, v65
	v_mul_lo_u32 v164, s46, v37
	v_mov_b32_e32 v37, v65
	s_mov_b32 s46, s50
	s_branch .LBB0_32
.LBB0_31:                               ;   in Loop: Header=BB0_32 Depth=1
	.loc	1 0 9 is_stmt 0                 ; attention_backward.py:0:9
	s_or_b32 exec_lo, exec_lo, s13
	.loc	1 340 30 is_stmt 1              ; attention_backward.py:340:30
	s_waitcnt vmcnt(0)
	v_and_b16 v69.h, 0xff, v69.h
	v_and_b16 v68.l, 0xff, v68.l
	v_and_b16 v66.l, 0xff, v66.l
	.loc	1 340 21 is_stmt 0              ; attention_backward.py:340:21
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 340 30                        ; attention_backward.py:340:30
	v_cmp_ne_u16_e32 vcc_lo, 0, v69.h
	v_cmp_ne_u16_e64 s13, 0, v68.l
	v_cmp_ne_u16_e64 s14, 0, v66.l
	v_and_b16 v66.l, 0xff, v67.h
	.loc	1 271 27 is_stmt 1              ; attention_backward.py:271:27
	s_add_i32 s22, s70, 2
	.loc	1 340 21                        ; attention_backward.py:340:21
	s_and_b32 s16, s76, vcc_lo
	s_and_b32 s13, s75, s13
	v_cndmask_b32_e64 v70, 0, 1, s16
	.loc	1 340 30 is_stmt 0              ; attention_backward.py:340:30
	v_cmp_ne_u16_e64 s15, 0, v66.l
	.loc	1 271 27 is_stmt 1              ; attention_backward.py:271:27
	s_add_i32 s23, s70, 4
	s_add_i32 s24, s70, 6
	s_add_i32 s16, s70, 7
	.loc	1 340 21                        ; attention_backward.py:340:21
	v_mov_b16_e32 v66.l, v70.l
	v_cndmask_b32_e64 v70, 0, 1, s13
	s_and_b32 s13, s74, s15
	.loc	1 271 27                        ; attention_backward.py:271:27
	s_add_i32 s25, s70, 8
	s_add_i32 s17, s70, 9
	.loc	1 340 21                        ; attention_backward.py:340:21
	v_lshlrev_b16 v66.l, 8, v66.l
	v_mov_b16_e32 v68.l, v70.l
	v_cndmask_b32_e64 v70, 0, 1, s13
	s_and_b32 s13, s73, s14
	.loc	1 271 27                        ; attention_backward.py:271:27
	s_add_i32 s26, s70, 10
	s_add_i32 s18, s70, 11
	.loc	1 340 21                        ; attention_backward.py:340:21
	v_or_b16 v66.l, v68.l, v66.l
	v_mov_b16_e32 v68.l, v70.l
	v_cndmask_b32_e64 v70, 0, 1, s13
	.loc	1 271 27                        ; attention_backward.py:271:27
	s_add_i32 s27, s70, 12
	s_add_i32 s19, s70, 13
	s_add_i32 s21, s70, 14
	.loc	1 340 21                        ; attention_backward.py:340:21
	v_lshlrev_b16 v67.h, 8, v68.l
	.loc	1 271 27                        ; attention_backward.py:271:27
	s_add_i32 s20, s70, 15
	.loc	1 351 21                        ; attention_backward.py:351:21
	v_add_nc_u32_e32 v71, s58, v0
	.loc	1 350 32                        ; attention_backward.py:350:32
	v_add_nc_u32_e32 v109, s39, v0
	.loc	1 351 21                        ; attention_backward.py:351:21
	v_add_nc_u32_e32 v72, s57, v0
	.loc	1 340 21                        ; attention_backward.py:340:21
	v_or_b16 v67.h, v70.l, v67.h
	v_add_nc_u32_e32 v70, 0, v94
	.loc	1 290 33                        ; attention_backward.py:290:33
	v_mov_b16_e64 v204.h, v204.l
	v_mov_b16_e64 v203.h, v203.l
	.loc	1 270 9                         ; attention_backward.py:270:9
	v_add_nc_u32_e32 v90, s28, v90
	v_add_nc_u32_e32 v162, s68, v162
	.loc	1 340 21                        ; attention_backward.py:340:21
	ds_store_b16 v70, v66
	.loc	1 340 30 is_stmt 0              ; attention_backward.py:340:30
	v_and_b16 v66.l, 0xff, v67.l
	.loc	1 351 21 is_stmt 1              ; attention_backward.py:351:21
	v_add_nc_u32_e32 v70, s59, v0
	.loc	1 270 9                         ; attention_backward.py:270:9
	v_add_nc_u32_e32 v164, s68, v164
	v_add_nc_u32_e32 v166, s68, v166
	v_add_nc_u32_e32 v168, s68, v168
	.loc	1 340 30                        ; attention_backward.py:340:30
	v_cmp_ne_u16_e32 vcc_lo, 0, v66.l
	v_and_b16 v66.l, 0xff, v66.h
	.loc	1 340 21 is_stmt 0              ; attention_backward.py:340:21
	.loc	1 270 9 is_stmt 1               ; attention_backward.py:270:9
	v_add_nc_u32_e32 v161, s68, v161
	v_add_nc_u32_e32 v165, s68, v165
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 340 30                        ; attention_backward.py:340:30
	v_cmp_ne_u16_e64 s13, 0, v66.l
	v_and_b16 v66.l, 0xff, v69.l
	.loc	1 351 21                        ; attention_backward.py:351:21
	v_add_nc_u32_e32 v69, s61, v0
	.loc	1 270 9                         ; attention_backward.py:270:9
	v_add_nc_u32_e32 v163, s68, v163
	v_add_nc_u32_e32 v167, s68, v167
	.loc	1 340 21                        ; attention_backward.py:340:21
	s_and_b32 s13, s54, s13
	.loc	1 340 30 is_stmt 0              ; attention_backward.py:340:30
	v_cmp_ne_u16_e64 s14, 0, v66.l
	v_and_b16 v66.l, 0xff, v68.h
	.loc	1 340 21                        ; attention_backward.py:340:21
	s_and_b32 s14, s72, s14
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 340 30                        ; attention_backward.py:340:30
	v_cmp_ne_u16_e64 s15, 0, v66.l
	.loc	1 340 21                        ; attention_backward.py:340:21
	v_cndmask_b32_e64 v66, 0, 1, s14
	s_and_b32 s14, s55, vcc_lo
	.loc	1 373 36 is_stmt 1              ; attention_backward.py:373:36
	s_mov_b32 s55, s51
	.loc	1 340 21                        ; attention_backward.py:340:21
	v_cndmask_b32_e64 v68, 0, 1, s14
	s_and_b32 s14, s67, s15
	v_lshlrev_b16 v66.l, 8, v66.l
	.loc	1 271 27                        ; attention_backward.py:271:27
	s_add_i32 s15, s70, 5
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	.loc	1 340 21                        ; attention_backward.py:340:21
	v_mov_b16_e32 v67.l, v68.l
	v_cndmask_b32_e64 v68, 0, 1, s14
	.loc	1 271 27                        ; attention_backward.py:271:27
	s_add_i32 s14, s70, 3
	.loc	1 340 21                        ; attention_backward.py:340:21
	v_or_b16 v66.l, v67.l, v66.l
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	v_mov_b16_e32 v67.l, v68.l
	v_cndmask_b32_e64 v68, 0, 1, s13
	.loc	1 271 27                        ; attention_backward.py:271:27
	s_add_i32 s13, s70, 1
	.loc	1 355 27                        ; attention_backward.py:355:27
	s_cmp_lt_i32 s30, s29
	.loc	1 340 21                        ; attention_backward.py:340:21
	v_lshlrev_b16 v66.h, 8, v67.l
	s_delay_alu instid0(VALU_DEP_2)
	v_mov_b16_e32 v67.l, v68.l
	.loc	1 355 27                        ; attention_backward.py:355:27
	s_cselect_b32 s54, -1, 0
	.loc	1 351 21                        ; attention_backward.py:351:21
	v_add_nc_u32_e32 v68, s63, v0
	.loc	1 355 26                        ; attention_backward.py:355:26
	s_and_b32 vcc_lo, s3, s54
	.loc	1 359 30                        ; attention_backward.py:359:30
	s_cmp_lt_i32 s13, s31
	.loc	1 340 21                        ; attention_backward.py:340:21
	v_or_b16 v66.h, v67.l, v66.h
	ds_store_b16_d16_hi v172, v67
	ds_store_b16 v173, v66
	ds_store_b16_d16_hi v174, v66
	.loc	1 351 21                        ; attention_backward.py:351:21
	v_add_nc_u32_e32 v66, s64, v0
	.loc	1 340 21                        ; attention_backward.py:340:21
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 351 21                        ; attention_backward.py:351:21
	v_add_nc_u32_e32 v67, s62, v0
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 350 32                        ; attention_backward.py:350:32
	v_dual_cndmask_b32 v69, 0x80000000, v69 :: v_dual_cndmask_b32 v66, 0x80000000, v66
	v_dual_cndmask_b32 v68, 0x80000000, v68 :: v_dual_cndmask_b32 v71, 0x80000000, v71
	v_cndmask_b32_e32 v67, 0x80000000, v67, vcc_lo
	s_clause 0x4
	buffer_load_u8 v69, v69, s[48:51], 0 offen
	buffer_load_u8 v66, v66, s[48:51], 0 offen
	buffer_load_u8 v68, v68, s[48:51], 0 offen
	buffer_load_u8 v71, v71, s[48:51], 0 offen
	buffer_load_u8 v67, v67, s[48:51], 0 offen
	v_dual_cndmask_b32 v70, 0x80000000, v70 :: v_dual_cndmask_b32 v109, 0x80000000, v109
	.loc	1 373 36                        ; attention_backward.py:373:36
	s_mov_b32 s54, s50
	.loc	1 350 32                        ; attention_backward.py:350:32
	s_clause 0x1
	buffer_load_u8 v70, v70, s[48:51], 0 offen
	buffer_load_u8 v109, v109, s[48:51], 0 offen
	v_cndmask_b32_e32 v72, 0x80000000, v72, vcc_lo
	buffer_load_u8 v72, v72, s[48:51], 0 offen
	.loc	1 361 29                        ; attention_backward.py:361:29
	s_waitcnt vmcnt(6)
	v_and_b32_e32 v209, 15, v66
	.loc	1 360 76                        ; attention_backward.py:360:76
	v_and_b16 v66.h, v66.l, 15
	.loc	1 362 32                        ; attention_backward.py:362:32
	v_lshrrev_b16 v66.l, 4, v66.l
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 363 54                        ; attention_backward.py:363:54
	v_or_b32_e32 v210, -16, v209
	.loc	1 363 38 is_stmt 0              ; attention_backward.py:363:38
	v_cmp_lt_u16_e32 vcc_lo, 7, v66.h
	.loc	1 360 76 is_stmt 1              ; attention_backward.py:360:76
	s_waitcnt vmcnt(3)
	v_and_b16 v66.h, v67.l, 15
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 363 29                        ; attention_backward.py:363:29
	v_dual_cndmask_b32 v210, v209, v210 :: v_dual_and_b32 v209, 15, v67
	.loc	1 363 38 is_stmt 0              ; attention_backward.py:363:38
	v_cmp_lt_u16_e32 vcc_lo, 7, v66.h
	.loc	1 360 76 is_stmt 1              ; attention_backward.py:360:76
	v_and_b16 v66.h, v68.l, 15
	.loc	1 362 32                        ; attention_backward.py:362:32
	v_lshrrev_b16 v67.l, 4, v67.l
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 382 31                        ; attention_backward.py:382:31
	v_cvt_f32_i32_e32 v210, v210
	.loc	1 363 54                        ; attention_backward.py:363:54
	v_or_b32_e32 v211, -16, v209
	.loc	1 363 29 is_stmt 0              ; attention_backward.py:363:29
	v_cndmask_b32_e32 v211, v209, v211, vcc_lo
	.loc	1 361 29 is_stmt 1              ; attention_backward.py:361:29
	v_and_b32_e32 v209, 15, v68
	.loc	1 363 38                        ; attention_backward.py:363:38
	v_cmp_lt_u16_e32 vcc_lo, 7, v66.h
	.loc	1 360 76                        ; attention_backward.py:360:76
	v_and_b16 v66.h, v69.l, 15
	.loc	1 362 32                        ; attention_backward.py:362:32
	v_lshrrev_b16 v68.l, 4, v68.l
	.loc	1 382 31                        ; attention_backward.py:382:31
	v_cvt_f32_i32_e32 v211, v211
	.loc	1 363 54                        ; attention_backward.py:363:54
	v_or_b32_e32 v212, -16, v209
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 363 29 is_stmt 0              ; attention_backward.py:363:29
	v_dual_cndmask_b32 v212, v209, v212 :: v_dual_and_b32 v209, 15, v69
	.loc	1 363 38                        ; attention_backward.py:363:38
	v_cmp_lt_u16_e32 vcc_lo, 7, v66.h
	.loc	1 360 76 is_stmt 1              ; attention_backward.py:360:76
	s_waitcnt vmcnt(2)
	v_and_b16 v66.h, v70.l, 15
	.loc	1 362 32                        ; attention_backward.py:362:32
	v_lshrrev_b16 v69.l, 4, v69.l
	.loc	1 382 31                        ; attention_backward.py:382:31
	v_cvt_f32_i32_e32 v212, v212
	.loc	1 363 54                        ; attention_backward.py:363:54
	v_or_b32_e32 v213, -16, v209
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 363 29 is_stmt 0              ; attention_backward.py:363:29
	v_cndmask_b32_e32 v213, v209, v213, vcc_lo
	.loc	1 361 29 is_stmt 1              ; attention_backward.py:361:29
	v_and_b32_e32 v209, 15, v70
	.loc	1 363 38                        ; attention_backward.py:363:38
	v_cmp_lt_u16_e32 vcc_lo, 7, v66.h
	.loc	1 360 76                        ; attention_backward.py:360:76
	v_and_b16 v66.h, v71.l, 15
	.loc	1 362 32                        ; attention_backward.py:362:32
	v_lshrrev_b16 v70.l, 4, v70.l
	.loc	1 382 31                        ; attention_backward.py:382:31
	v_cvt_f32_i32_e32 v213, v213
	.loc	1 363 54                        ; attention_backward.py:363:54
	v_or_b32_e32 v214, -16, v209
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 363 29 is_stmt 0              ; attention_backward.py:363:29
	v_dual_cndmask_b32 v214, v209, v214 :: v_dual_and_b32 v209, 15, v71
	.loc	1 363 38                        ; attention_backward.py:363:38
	v_cmp_lt_u16_e32 vcc_lo, 7, v66.h
	.loc	1 360 76 is_stmt 1              ; attention_backward.py:360:76
	s_waitcnt vmcnt(0)
	v_and_b16 v66.h, v72.l, 15
	.loc	1 362 32                        ; attention_backward.py:362:32
	v_lshrrev_b16 v71.l, 4, v71.l
	.loc	1 382 31                        ; attention_backward.py:382:31
	v_cvt_f32_i32_e32 v214, v214
	.loc	1 363 54                        ; attention_backward.py:363:54
	v_or_b32_e32 v215, -16, v209
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 363 29 is_stmt 0              ; attention_backward.py:363:29
	v_cndmask_b32_e32 v215, v209, v215, vcc_lo
	.loc	1 361 29 is_stmt 1              ; attention_backward.py:361:29
	v_and_b32_e32 v209, 15, v72
	.loc	1 363 38                        ; attention_backward.py:363:38
	v_cmp_lt_u16_e32 vcc_lo, 7, v66.h
	.loc	1 360 76                        ; attention_backward.py:360:76
	v_and_b16 v66.h, v109.l, 15
	.loc	1 362 32                        ; attention_backward.py:362:32
	v_lshrrev_b16 v72.l, 4, v72.l
	.loc	1 382 31                        ; attention_backward.py:382:31
	v_cvt_f32_i32_e32 v215, v215
	.loc	1 363 54                        ; attention_backward.py:363:54
	v_or_b32_e32 v216, -16, v209
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 363 29 is_stmt 0              ; attention_backward.py:363:29
	v_dual_cndmask_b32 v216, v209, v216 :: v_dual_and_b32 v209, 15, v109
	.loc	1 363 38                        ; attention_backward.py:363:38
	v_cmp_lt_u16_e32 vcc_lo, 7, v66.h
	.loc	1 362 32 is_stmt 1              ; attention_backward.py:362:32
	v_lshrrev_b16 v109.l, 4, v109.l
	.loc	1 382 31                        ; attention_backward.py:382:31
	v_cvt_f32_i32_e32 v216, v216
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 363 54                        ; attention_backward.py:363:54
	v_or_b32_e32 v217, -16, v209
	.loc	1 363 29 is_stmt 0              ; attention_backward.py:363:29
	v_cndmask_b32_e32 v217, v209, v217, vcc_lo
	.loc	1 305 28 is_stmt 1              ; attention_backward.py:305:28
	v_mov_b16_e64 v209.l, 0
	.loc	1 359 30                        ; attention_backward.py:359:30
	s_cselect_b32 vcc_lo, -1, 0
	s_cmp_lt_i32 s14, s31
	.loc	1 290 33                        ; attention_backward.py:290:33
	v_mov_b16_e64 v209.h, v208.l
	.loc	1 382 31                        ; attention_backward.py:382:31
	v_cvt_f32_i32_e32 v217, v217
	.loc	1 362 30                        ; attention_backward.py:362:30
	v_mov_b16_e64 v66.h, v209.l
	v_mov_b16_e64 v67.h, v209.l
	v_mov_b16_e64 v68.h, v209.l
	v_mov_b16_e64 v69.h, v209.l
	v_mov_b16_e64 v70.h, v209.l
	.loc	1 360 32                        ; attention_backward.py:360:32
	v_cndmask_b32_e32 v66, 0, v66, vcc_lo
	.loc	1 362 30                        ; attention_backward.py:362:30
	v_mov_b16_e64 v71.h, v209.l
	v_mov_b16_e64 v72.h, v209.l
	v_mov_b16_e64 v109.h, v209.l
	.loc	1 290 33                        ; attention_backward.py:290:33
	v_mov_b16_e64 v204.l, v209.l
	.loc	1 364 56                        ; attention_backward.py:364:56
	v_or_b32_e32 v218, -16, v66
	.loc	1 364 39 is_stmt 0              ; attention_backward.py:364:39
	v_cmp_lt_u32_e64 s13, 7, v66
	.loc	1 290 33 is_stmt 1              ; attention_backward.py:290:33
	v_mov_b16_e64 v203.l, v209.l
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	.loc	1 364 30                        ; attention_backward.py:364:30
	v_cndmask_b32_e64 v66, v66, v218, s13
	.loc	1 359 30                        ; attention_backward.py:359:30
	s_cselect_b32 s13, -1, 0
	s_cmp_lt_i32 s15, s31
	.loc	1 360 32                        ; attention_backward.py:360:32
	v_cndmask_b32_e64 v67, 0, v67, s13
	.loc	1 382 31                        ; attention_backward.py:382:31
	v_cvt_f32_i32_e32 v66, v66
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 364 56                        ; attention_backward.py:364:56
	v_or_b32_e32 v218, -16, v67
	.loc	1 364 39 is_stmt 0              ; attention_backward.py:364:39
	v_cmp_lt_u32_e64 s14, 7, v67
	.loc	1 364 30                        ; attention_backward.py:364:30
	v_cndmask_b32_e64 v67, v67, v218, s14
	.loc	1 359 30 is_stmt 1              ; attention_backward.py:359:30
	s_cselect_b32 s14, -1, 0
	s_cmp_lt_i32 s16, s31
	.loc	1 360 32                        ; attention_backward.py:360:32
	v_cndmask_b32_e64 v68, 0, v68, s14
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 382 31                        ; attention_backward.py:382:31
	v_cvt_f32_i32_e32 v67, v67
	.loc	1 364 56                        ; attention_backward.py:364:56
	v_or_b32_e32 v218, -16, v68
	.loc	1 364 39 is_stmt 0              ; attention_backward.py:364:39
	v_cmp_lt_u32_e64 s15, 7, v68
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	.loc	1 364 30                        ; attention_backward.py:364:30
	v_cndmask_b32_e64 v68, v68, v218, s15
	.loc	1 359 30 is_stmt 1              ; attention_backward.py:359:30
	s_cselect_b32 s15, -1, 0
	s_cmp_lt_i32 s17, s31
	.loc	1 360 32                        ; attention_backward.py:360:32
	v_cndmask_b32_e64 v69, 0, v69, s15
	.loc	1 382 31                        ; attention_backward.py:382:31
	v_cvt_f32_i32_e32 v68, v68
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 364 56                        ; attention_backward.py:364:56
	v_or_b32_e32 v218, -16, v69
	.loc	1 364 39 is_stmt 0              ; attention_backward.py:364:39
	v_cmp_lt_u32_e64 s16, 7, v69
	.loc	1 364 30                        ; attention_backward.py:364:30
	v_cndmask_b32_e64 v69, v69, v218, s16
	.loc	1 359 30 is_stmt 1              ; attention_backward.py:359:30
	s_cselect_b32 s16, -1, 0
	s_cmp_lt_i32 s18, s31
	.loc	1 360 32                        ; attention_backward.py:360:32
	v_cndmask_b32_e64 v70, 0, v70, s16
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 382 31                        ; attention_backward.py:382:31
	v_cvt_f32_i32_e32 v69, v69
	.loc	1 364 56                        ; attention_backward.py:364:56
	v_or_b32_e32 v218, -16, v70
	.loc	1 364 39 is_stmt 0              ; attention_backward.py:364:39
	v_cmp_lt_u32_e64 s17, 7, v70
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	.loc	1 364 30                        ; attention_backward.py:364:30
	v_cndmask_b32_e64 v70, v70, v218, s17
	.loc	1 359 30 is_stmt 1              ; attention_backward.py:359:30
	s_cselect_b32 s17, -1, 0
	s_cmp_lt_i32 s19, s31
	.loc	1 360 32                        ; attention_backward.py:360:32
	v_cndmask_b32_e64 v71, 0, v71, s17
	.loc	1 382 31                        ; attention_backward.py:382:31
	v_cvt_f32_i32_e32 v70, v70
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 364 56                        ; attention_backward.py:364:56
	v_or_b32_e32 v218, -16, v71
	.loc	1 364 39 is_stmt 0              ; attention_backward.py:364:39
	v_cmp_lt_u32_e64 s18, 7, v71
	.loc	1 364 30                        ; attention_backward.py:364:30
	v_cndmask_b32_e64 v71, v71, v218, s18
	.loc	1 359 30 is_stmt 1              ; attention_backward.py:359:30
	s_cselect_b32 s18, -1, 0
	s_cmp_lt_i32 s20, s31
	.loc	1 360 32                        ; attention_backward.py:360:32
	v_cndmask_b32_e64 v72, 0, v72, s18
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 382 31                        ; attention_backward.py:382:31
	v_cvt_f32_i32_e32 v71, v71
	.loc	1 364 56                        ; attention_backward.py:364:56
	v_or_b32_e32 v218, -16, v72
	.loc	1 364 39 is_stmt 0              ; attention_backward.py:364:39
	v_cmp_lt_u32_e64 s19, 7, v72
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	.loc	1 364 30                        ; attention_backward.py:364:30
	v_cndmask_b32_e64 v72, v72, v218, s19
	.loc	1 359 30 is_stmt 1              ; attention_backward.py:359:30
	s_cselect_b32 s19, -1, 0
	.loc	1 378 27                        ; attention_backward.py:378:27
	s_cmp_lt_i32 s70, s31
	.loc	1 360 32                        ; attention_backward.py:360:32
	v_cndmask_b32_e64 v109, 0, v109, s19
	.loc	1 382 31                        ; attention_backward.py:382:31
	v_cvt_f32_i32_e32 v72, v72
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 364 56                        ; attention_backward.py:364:56
	v_or_b32_e32 v218, -16, v109
	.loc	1 364 39 is_stmt 0              ; attention_backward.py:364:39
	v_cmp_lt_u32_e64 s20, 7, v109
	.loc	1 364 30                        ; attention_backward.py:364:30
	v_cndmask_b32_e64 v109, v109, v218, s20
	.loc	1 378 27 is_stmt 1              ; attention_backward.py:378:27
	s_cselect_b32 s20, -1, 0
	s_cmp_lt_i32 s22, s31
	s_cselect_b32 s22, -1, 0
	s_cmp_lt_i32 s23, s31
	.loc	1 382 31                        ; attention_backward.py:382:31
	v_cvt_f32_i32_e32 v109, v109
	.loc	1 378 27                        ; attention_backward.py:378:27
	s_cselect_b32 s23, -1, 0
	s_cmp_lt_i32 s24, s31
	s_cselect_b32 s24, -1, 0
	s_cmp_lt_i32 s25, s31
	s_cselect_b32 s25, -1, 0
	s_cmp_lt_i32 s26, s31
	s_cselect_b32 s26, -1, 0
	s_cmp_lt_i32 s27, s31
	s_cselect_b32 s27, -1, 0
	s_cmp_lt_i32 s21, s31
	s_cselect_b32 s21, -1, 0
	.loc	1 378 26 is_stmt 0              ; attention_backward.py:378:26
	s_and_b32 s20, s3, s20
	s_and_b32 vcc_lo, s3, vcc_lo
	.loc	1 373 36 is_stmt 1              ; attention_backward.py:373:36
	v_cndmask_b32_e64 v218, 0x80000000, v99, s20
	.loc	1 270 9                         ; attention_backward.py:270:9
	s_add_i32 s70, s70, 16
	s_add_i32 s39, s39, s56
	s_add_i32 s57, s57, s56
	s_add_i32 s58, s58, s56
	.loc	1 373 36                        ; attention_backward.py:373:36
	buffer_load_u16 v218, v218, s[52:55], 0 offen
	v_cndmask_b32_e32 v219, 0x80000000, v99, vcc_lo
	.loc	1 378 26                        ; attention_backward.py:378:26
	s_and_b32 vcc_lo, s3, s22
	.loc	1 270 9                         ; attention_backward.py:270:9
	s_add_i32 s59, s59, s56
	.loc	1 373 36                        ; attention_backward.py:373:36
	v_cndmask_b32_e32 v220, 0x80000000, v99, vcc_lo
	.loc	1 378 26                        ; attention_backward.py:378:26
	s_and_b32 vcc_lo, s3, s13
	.loc	1 373 36                        ; attention_backward.py:373:36
	buffer_load_u16 v219, v219, s[52:55], 0 offen
	.loc	1 270 9                         ; attention_backward.py:270:9
	s_add_i32 s61, s61, s56
	s_add_i32 s62, s62, s56
	.loc	1 373 36                        ; attention_backward.py:373:36
	buffer_load_u16 v220, v220, s[52:55], 0 offen
	v_cndmask_b32_e32 v221, 0x80000000, v99, vcc_lo
	.loc	1 378 26                        ; attention_backward.py:378:26
	s_and_b32 vcc_lo, s3, s23
	.loc	1 270 9                         ; attention_backward.py:270:9
	s_add_i32 s63, s63, s56
	.loc	1 373 36                        ; attention_backward.py:373:36
	v_cndmask_b32_e32 v222, 0x80000000, v99, vcc_lo
	.loc	1 378 26                        ; attention_backward.py:378:26
	s_and_b32 vcc_lo, s3, s14
	.loc	1 373 36                        ; attention_backward.py:373:36
	buffer_load_u16 v221, v221, s[52:55], 0 offen
	.loc	1 270 9                         ; attention_backward.py:270:9
	s_add_i32 s64, s64, s56
	s_add_i32 s30, s30, 8
	.loc	1 373 36                        ; attention_backward.py:373:36
	buffer_load_u16 v222, v222, s[52:55], 0 offen
	v_cndmask_b32_e32 v223, 0x80000000, v99, vcc_lo
	.loc	1 378 26                        ; attention_backward.py:378:26
	s_and_b32 vcc_lo, s3, s24
	.loc	1 270 9                         ; attention_backward.py:270:9
	s_add_i32 s65, s65, 32
	.loc	1 373 36                        ; attention_backward.py:373:36
	v_cndmask_b32_e32 v224, 0x80000000, v99, vcc_lo
	.loc	1 378 26                        ; attention_backward.py:378:26
	s_and_b32 vcc_lo, s3, s15
	.loc	1 373 36                        ; attention_backward.py:373:36
	s_clause 0x1
	buffer_load_u16 v223, v223, s[52:55], 0 offen
	buffer_load_u16 v224, v224, s[52:55], 0 offen
	v_cndmask_b32_e32 v225, 0x80000000, v99, vcc_lo
	.loc	1 378 26                        ; attention_backward.py:378:26
	s_and_b32 vcc_lo, s3, s25
	.loc	1 373 36                        ; attention_backward.py:373:36
	buffer_load_u16 v225, v225, s[52:55], 0 offen
	s_waitcnt vmcnt(7)
	v_lshlrev_b32_e32 v218, 16, v218
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 382 31                        ; attention_backward.py:382:31
	v_mul_f32_e32 v210, v210, v218
	.loc	1 373 36                        ; attention_backward.py:373:36
	s_waitcnt vmcnt(6)
	v_lshlrev_b32_e32 v218, 16, v219
	.loc	1 382 31                        ; attention_backward.py:382:31
	v_mul_f32_e32 v66, v66, v218
	.loc	1 373 36                        ; attention_backward.py:373:36
	s_waitcnt vmcnt(5)
	v_lshlrev_b32_e32 v218, 16, v220
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 382 30                        ; attention_backward.py:382:30
	v_cmp_o_f32_e64 s13, v66, v66
	.loc	1 382 31 is_stmt 0              ; attention_backward.py:382:31
	s_waitcnt vmcnt(4)
	v_dual_mul_f32 v211, v211, v218 :: v_dual_lshlrev_b32 v218, 16, v221
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v67, v67, v218
	.loc	1 373 36 is_stmt 1              ; attention_backward.py:373:36
	s_waitcnt vmcnt(3)
	v_lshlrev_b32_e32 v218, 16, v222
	.loc	1 382 31                        ; attention_backward.py:382:31
	v_mul_f32_e32 v212, v212, v218
	.loc	1 373 36                        ; attention_backward.py:373:36
	s_waitcnt vmcnt(2)
	v_lshlrev_b32_e32 v218, 16, v223
	.loc	1 382 30                        ; attention_backward.py:382:30
	v_cmp_o_f32_e64 s14, v211, v211
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_4) | instid1(VALU_DEP_2)
	.loc	1 382 31 is_stmt 0              ; attention_backward.py:382:31
	v_mul_f32_e32 v68, v68, v218
	.loc	1 373 36 is_stmt 1              ; attention_backward.py:373:36
	s_waitcnt vmcnt(1)
	v_lshlrev_b32_e32 v218, 16, v224
	.loc	1 382 30                        ; attention_backward.py:382:30
	v_cmp_o_f32_e64 s15, v67, v67
	.loc	1 382 31 is_stmt 0              ; attention_backward.py:382:31
	s_waitcnt vmcnt(0)
	v_dual_mul_f32 v213, v213, v218 :: v_dual_lshlrev_b32 v218, 16, v225
	s_delay_alu instid0(VALU_DEP_1)
	v_dual_mul_f32 v69, v69, v218 :: v_dual_cndmask_b32 v218, 0x80000000, v99
	.loc	1 378 26 is_stmt 1              ; attention_backward.py:378:26
	s_and_b32 vcc_lo, s3, s16
	.loc	1 382 30                        ; attention_backward.py:382:30
	v_cmp_o_f32_e64 s16, v212, v212
	.loc	1 373 36                        ; attention_backward.py:373:36
	v_cndmask_b32_e32 v219, 0x80000000, v99, vcc_lo
	.loc	1 378 26                        ; attention_backward.py:378:26
	s_and_b32 vcc_lo, s3, s26
	.loc	1 373 36                        ; attention_backward.py:373:36
	buffer_load_u16 v218, v218, s[52:55], 0 offen
	v_cndmask_b32_e32 v220, 0x80000000, v99, vcc_lo
	.loc	1 378 26                        ; attention_backward.py:378:26
	s_and_b32 vcc_lo, s3, s17
	.loc	1 373 36                        ; attention_backward.py:373:36
	buffer_load_u16 v219, v219, s[52:55], 0 offen
	.loc	1 382 30                        ; attention_backward.py:382:30
	v_cmp_o_f32_e64 s17, v68, v68
	.loc	1 373 36                        ; attention_backward.py:373:36
	buffer_load_u16 v220, v220, s[52:55], 0 offen
	v_cndmask_b32_e32 v221, 0x80000000, v99, vcc_lo
	.loc	1 378 26                        ; attention_backward.py:378:26
	s_and_b32 vcc_lo, s3, s27
	.loc	1 373 36                        ; attention_backward.py:373:36
	v_cndmask_b32_e32 v222, 0x80000000, v99, vcc_lo
	.loc	1 378 26                        ; attention_backward.py:378:26
	s_and_b32 vcc_lo, s3, s18
	.loc	1 373 36                        ; attention_backward.py:373:36
	buffer_load_u16 v221, v221, s[52:55], 0 offen
	v_cndmask_b32_e32 v223, 0x80000000, v99, vcc_lo
	.loc	1 378 26                        ; attention_backward.py:378:26
	s_and_b32 vcc_lo, s3, s21
	.loc	1 373 36                        ; attention_backward.py:373:36
	buffer_load_u16 v222, v222, s[52:55], 0 offen
	v_cndmask_b32_e32 v224, 0x80000000, v99, vcc_lo
	.loc	1 378 26                        ; attention_backward.py:378:26
	s_and_b32 vcc_lo, s3, s19
	.loc	1 373 36                        ; attention_backward.py:373:36
	buffer_load_u16 v223, v223, s[52:55], 0 offen
	.loc	1 382 30                        ; attention_backward.py:382:30
	v_cmp_o_f32_e64 s18, v213, v213
	v_cmp_o_f32_e64 s19, v69, v69
	.loc	1 373 36                        ; attention_backward.py:373:36
	buffer_load_u16 v224, v224, s[52:55], 0 offen
	.loc	1 270 9                         ; attention_backward.py:270:9
	s_cmp_lt_i32 s70, s71
	.loc	1 373 36                        ; attention_backward.py:373:36
	s_waitcnt vmcnt(6)
	v_lshlrev_b32_e32 v218, 16, v218
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	.loc	1 382 31                        ; attention_backward.py:382:31
	v_mul_f32_e32 v214, v214, v218
	.loc	1 373 36                        ; attention_backward.py:373:36
	s_waitcnt vmcnt(5)
	v_lshlrev_b32_e32 v218, 16, v219
	.loc	1 382 30                        ; attention_backward.py:382:30
	v_cmp_o_f32_e64 s20, v214, v214
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	.loc	1 382 31 is_stmt 0              ; attention_backward.py:382:31
	v_mul_f32_e32 v70, v70, v218
	.loc	1 373 36 is_stmt 1              ; attention_backward.py:373:36
	s_waitcnt vmcnt(4)
	v_lshlrev_b32_e32 v218, 16, v220
	.loc	1 382 30                        ; attention_backward.py:382:30
	v_cmp_o_f32_e64 s21, v70, v70
	.loc	1 382 31 is_stmt 0              ; attention_backward.py:382:31
	s_waitcnt vmcnt(3)
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_dual_mul_f32 v215, v215, v218 :: v_dual_lshlrev_b32 v218, 16, v221
	.loc	1 382 30                        ; attention_backward.py:382:30
	v_cmp_o_f32_e64 s22, v215, v215
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	.loc	1 382 31                        ; attention_backward.py:382:31
	v_mul_f32_e32 v71, v71, v218
	.loc	1 373 36 is_stmt 1              ; attention_backward.py:373:36
	s_waitcnt vmcnt(2)
	v_lshlrev_b32_e32 v218, 16, v222
	.loc	1 382 30                        ; attention_backward.py:382:30
	v_cmp_o_f32_e64 s23, v71, v71
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	.loc	1 382 31 is_stmt 0              ; attention_backward.py:382:31
	v_mul_f32_e32 v216, v216, v218
	.loc	1 373 36 is_stmt 1              ; attention_backward.py:373:36
	s_waitcnt vmcnt(1)
	v_lshlrev_b32_e32 v218, 16, v223
	.loc	1 382 30                        ; attention_backward.py:382:30
	v_cmp_o_f32_e64 s24, v216, v216
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	.loc	1 382 31 is_stmt 0              ; attention_backward.py:382:31
	v_mul_f32_e32 v72, v72, v218
	.loc	1 373 36 is_stmt 1              ; attention_backward.py:373:36
	v_cndmask_b32_e32 v218, 0x80000000, v99, vcc_lo
	.loc	1 382 30                        ; attention_backward.py:382:30
	v_cmp_o_f32_e32 vcc_lo, v210, v210
	.loc	1 270 9                         ; attention_backward.py:270:9
	v_add_nc_u32_e32 v99, s69, v99
	.loc	1 382 30                        ; attention_backward.py:382:30
	v_cmp_o_f32_e64 s25, v72, v72
	.loc	1 373 36                        ; attention_backward.py:373:36
	buffer_load_u16 v218, v218, s[52:55], 0 offen
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v218, 16, v218
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 382 31                        ; attention_backward.py:382:31
	v_dual_mul_f32 v109, v109, v218 :: v_dual_lshlrev_b32 v218, 16, v224
	.loc	1 382 30 is_stmt 0              ; attention_backward.py:382:30
	v_cmp_o_f32_e64 s26, v109, v109
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 382 31                        ; attention_backward.py:382:31
	v_mul_f32_e32 v217, v217, v218
	.loc	1 382 30                        ; attention_backward.py:382:30
	v_bfe_u32 v218, v210, 16, 1
	v_add3_u32 v210, v210, v218, 0x7fff
	v_bfe_u32 v218, v66, 16, 1
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add3_u32 v218, v66, v218, 0x7fff
	v_bfe_u32 v66, v211, 16, 1
	v_add3_u32 v211, v211, v66, 0x7fff
	v_bfe_u32 v66, v67, 16, 1
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add3_u32 v67, v67, v66, 0x7fff
	v_bfe_u32 v66, v212, 16, 1
	v_add3_u32 v212, v212, v66, 0x7fff
	v_bfe_u32 v66, v68, 16, 1
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add3_u32 v68, v68, v66, 0x7fff
	v_bfe_u32 v66, v213, 16, 1
	v_add3_u32 v213, v213, v66, 0x7fff
	v_bfe_u32 v66, v69, 16, 1
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add3_u32 v69, v69, v66, 0x7fff
	v_bfe_u32 v66, v214, 16, 1
	v_add3_u32 v66, v214, v66, 0x7fff
	v_bfe_u32 v214, v70, 16, 1
	v_cndmask_b16 v66.l, 0x7fff, v210.h, vcc_lo
	.loc	1 340 21 is_stmt 1              ; attention_backward.py:340:21
	v_add_nc_u32_e32 v210, 0, v95
	.loc	1 382 30                        ; attention_backward.py:382:30
	v_cmp_o_f32_e64 s27, v217, v217
	v_cndmask_b16 v66.h, 0x7fff, v66.h, s20
	v_add3_u32 v70, v70, v214, 0x7fff
	v_bfe_u32 v214, v215, 16, 1
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add3_u32 v214, v215, v214, 0x7fff
	v_bfe_u32 v215, v71, 16, 1
	v_add3_u32 v71, v71, v215, 0x7fff
	v_bfe_u32 v215, v216, 16, 1
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add3_u32 v215, v216, v215, 0x7fff
	v_bfe_u32 v216, v72, 16, 1
	v_add3_u32 v72, v72, v216, 0x7fff
	v_bfe_u32 v216, v109, 16, 1
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add3_u32 v216, v109, v216, 0x7fff
	v_bfe_u32 v109, v217, 16, 1
	v_add3_u32 v217, v217, v109, 0x7fff
	.loc	1 340 21                        ; attention_backward.py:340:21
	ds_load_u8_d16 v109, v210
	s_waitcnt lgkmcnt(0)
	ds_load_u8_d16_hi v109, v210 offset:64
	ds_load_u8_d16_hi v185, v175
	ds_load_u8_d16_hi v186, v175 offset:64
	ds_load_u8_d16_hi v187, v176
	ds_load_u8_d16_hi v188, v176 offset:64
	ds_load_u8_d16_hi v189, v177
	ds_load_u8_d16_hi v190, v177 offset:64
	.loc	1 391 32                        ; attention_backward.py:391:32
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b16 v110, v66
	.loc	1 382 30                        ; attention_backward.py:382:30
	v_cndmask_b16 v66.l, 0x7fff, v218.h, s13
	.loc	1 391 32                        ; attention_backward.py:391:32
	ds_store_b16_d16_hi v110, v66 offset:1024
	.loc	1 382 30                        ; attention_backward.py:382:30
	v_cndmask_b16 v66.h, 0x7fff, v70.h, s21
	.loc	1 391 32                        ; attention_backward.py:391:32
	v_mov_b32_e32 v70, v65
	ds_store_b16 v111, v66
	.loc	1 382 30                        ; attention_backward.py:382:30
	v_cndmask_b16 v66.l, 0x7fff, v211.h, s14
	.loc	1 391 32                        ; attention_backward.py:391:32
	ds_store_b16_d16_hi v111, v66 offset:1024
	.loc	1 382 30                        ; attention_backward.py:382:30
	v_cndmask_b16 v66.h, 0x7fff, v214.h, s22
	.loc	1 391 32                        ; attention_backward.py:391:32
	ds_store_b16 v112, v66
	.loc	1 382 30                        ; attention_backward.py:382:30
	v_cndmask_b16 v66.l, 0x7fff, v67.h, s15
	.loc	1 391 32                        ; attention_backward.py:391:32
	ds_store_b16_d16_hi v112, v66 offset:1024
	.loc	1 382 30                        ; attention_backward.py:382:30
	v_cndmask_b16 v66.h, 0x7fff, v71.h, s23
	.loc	1 391 32                        ; attention_backward.py:391:32
	ds_store_b16 v113, v66
	ds_store_b16_d16_hi v113, v66 offset:1024
	.loc	1 382 30                        ; attention_backward.py:382:30
	v_cndmask_b16 v66.l, 0x7fff, v212.h, s16
	v_cndmask_b16 v66.h, 0x7fff, v215.h, s24
	.loc	1 391 32                        ; attention_backward.py:391:32
	v_mov_b32_e32 v67, v65
	v_mov_b32_e32 v71, v65
	ds_store_b16 v114, v66
	.loc	1 382 30                        ; attention_backward.py:382:30
	v_cndmask_b16 v66.l, 0x7fff, v68.h, s17
	.loc	1 391 32                        ; attention_backward.py:391:32
	ds_store_b16_d16_hi v114, v66 offset:1024
	.loc	1 382 30                        ; attention_backward.py:382:30
	v_cndmask_b16 v66.h, 0x7fff, v72.h, s25
	.loc	1 391 32                        ; attention_backward.py:391:32
	v_mov_b32_e32 v72, v65
	v_mov_b32_e32 v68, v65
	ds_store_b16 v115, v66
	.loc	1 382 30                        ; attention_backward.py:382:30
	v_cndmask_b16 v66.l, 0x7fff, v213.h, s18
	.loc	1 391 32                        ; attention_backward.py:391:32
	ds_store_b16_d16_hi v115, v66 offset:1024
	.loc	1 382 30                        ; attention_backward.py:382:30
	v_cndmask_b16 v66.h, 0x7fff, v217.h, s27
	.loc	1 391 32                        ; attention_backward.py:391:32
	ds_store_b16 v116, v66
	.loc	1 382 30                        ; attention_backward.py:382:30
	v_cndmask_b16 v66.l, 0x7fff, v69.h, s19
	.loc	1 391 32                        ; attention_backward.py:391:32
	ds_store_b16_d16_hi v116, v66 offset:1024
	.loc	1 382 30                        ; attention_backward.py:382:30
	v_cndmask_b16 v66.h, 0x7fff, v216.h, s26
	.loc	1 391 32                        ; attention_backward.py:391:32
	ds_store_b16 v118, v66
	ds_store_b16_d16_hi v118, v66 offset:1024
	v_add_nc_u32_e32 v66, 0, v117
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[210:213], v66
	ds_load_b128 v[214:217], v178
	v_mov_b32_e32 v66, v65
	v_mov_b32_e32 v69, v65
	v_dual_mov_b32 v225, v72 :: v_dual_mov_b32 v224, v71
	v_mov_b32_e32 v223, v70
	s_delay_alu instid0(VALU_DEP_3)
	v_dual_mov_b32 v221, v68 :: v_dual_mov_b32 v222, v69
	v_dual_mov_b32 v220, v67 :: v_dual_mov_b32 v219, v66
	v_mov_b32_e32 v218, v65
	.loc	1 299 21                        ; attention_backward.py:299:21
	v_cvt_f32_i32_e32 v70, v76
	v_bfe_i32 v76, v207, 0, 8
	v_cvt_f32_i32_e32 v71, v75
	v_cvt_f32_i32_e32 v69, v77
	v_cvt_f32_i32_e32 v68, v78
	v_cvt_f32_i32_e32 v67, v79
	v_mov_b16_e64 v207.l, v76.l
	v_mul_f32_e32 v71, v136, v71
	v_mul_f32_e32 v69, v136, v69
	.loc	1 391 32                        ; attention_backward.py:391:32
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[218:225], v[210:217], v[1:8], v[218:225]
	ds_load_b128 v[210:213], v179
	ds_load_b128 v[214:217], v180
	.loc	1 304 28                        ; attention_backward.py:304:28
	v_and_b16 v76.l, v207.l, 15
	.loc	1 304 27 is_stmt 0              ; attention_backward.py:304:27
	v_and_b32_e32 v208, 15, v207
	.loc	1 299 21 is_stmt 1              ; attention_backward.py:299:21
	v_cvt_f32_i32_e32 v66, v80
	v_mul_f32_e32 v70, v136, v70
	v_mul_f32_e32 v68, v136, v68
	.loc	1 306 36                        ; attention_backward.py:306:36
	v_cmp_lt_u16_e32 vcc_lo, 7, v76.l
	v_bfe_i32 v76, v206, 0, 8
	.loc	1 299 21                        ; attention_backward.py:299:21
	v_mul_f32_e32 v66, v136, v66
	v_mul_f32_e32 v67, v136, v67
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b16_e64 v206.l, v76.l
	.loc	1 304 28                        ; attention_backward.py:304:28
	v_and_b16 v76.l, v206.l, 15
	.loc	1 391 32                        ; attention_backward.py:391:32
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[218:225], v[210:217], v[9:16], v[218:225]
	ds_load_b128 v[210:213], v181
	ds_load_b128 v[214:217], v182
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[218:225], v[210:217], v[17:24], v[218:225]
	ds_load_b128 v[210:213], v183
	ds_load_b128 v[214:217], v184
	.loc	1 309 31                        ; attention_backward.py:309:31
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 391 32                        ; attention_backward.py:391:32
	v_wmma_f32_16x16x16_bf16 v[218:225], v[210:217], v[25:32], v[218:225]
	.loc	1 306 50                        ; attention_backward.py:306:50
	v_or_b32_e32 v212, -16, v208
	.loc	1 299 21                        ; attention_backward.py:299:21
	v_cvt_f32_i32_e32 v210, v73
	v_cvt_f32_i32_e32 v211, v74
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 396 43                        ; attention_backward.py:396:43
	v_sub_f32_e32 v73, v224, v93
	.loc	1 306 27                        ; attention_backward.py:306:27
	v_cndmask_b32_e32 v208, v208, v212, vcc_lo
	.loc	1 306 36 is_stmt 0              ; attention_backward.py:306:36
	v_cmp_lt_u16_e32 vcc_lo, 7, v76.l
	v_bfe_i32 v76, v202, 0, 8
	.loc	1 396 43 is_stmt 1              ; attention_backward.py:396:43
	v_dual_sub_f32 v77, v218, v93 :: v_dual_and_b32 v212, 15, v206
	v_sub_f32_e32 v79, v220, v93
	v_sub_f32_e32 v75, v222, v93
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_mov_b16_e64 v202.l, v76.l
	.loc	1 306 50                        ; attention_backward.py:306:50
	v_or_b32_e32 v213, -16, v212
	.loc	1 396 43                        ; attention_backward.py:396:43
	v_sub_f32_e32 v72, v225, v93
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 304 28                        ; attention_backward.py:304:28
	v_and_b16 v76.l, v202.l, 15
	.loc	1 306 27                        ; attention_backward.py:306:27
	v_dual_cndmask_b32 v212, v212, v213 :: v_dual_and_b32 v213, 15, v202
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 306 36 is_stmt 0              ; attention_backward.py:306:36
	v_cmp_lt_u16_e32 vcc_lo, 7, v76.l
	v_bfe_i32 v76, v201, 0, 8
	.loc	1 306 50                        ; attention_backward.py:306:50
	v_or_b32_e32 v214, -16, v213
	.loc	1 305 28 is_stmt 1              ; attention_backward.py:305:28
	v_mov_b16_e64 v76.h, v209.l
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mov_b16_e64 v201.l, v76.l
	.loc	1 306 27                        ; attention_backward.py:306:27
	v_cndmask_b32_e32 v213, v213, v214, vcc_lo
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 304 28                        ; attention_backward.py:304:28
	v_and_b16 v76.l, v201.l, 15
	.loc	1 304 27 is_stmt 0              ; attention_backward.py:304:27
	v_and_b32_e32 v214, 15, v201
	.loc	1 290 33 is_stmt 1              ; attention_backward.py:290:33
	v_mov_b16_e64 v201.h, v205.l
	.loc	1 311 21                        ; attention_backward.py:311:21
	v_cvt_f32_i32_e32 v205, v208
	.loc	1 309 31                        ; attention_backward.py:309:31
	v_mov_b16_e64 v208.h, v209.l
	.loc	1 306 36                        ; attention_backward.py:306:36
	v_cmp_lt_u16_e32 vcc_lo, 7, v76.l
	.loc	1 305 30                        ; attention_backward.py:305:30
	v_lshrrev_b16 v76.l, 4, v207.l
	.loc	1 306 50                        ; attention_backward.py:306:50
	v_or_b32_e32 v215, -16, v214
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 305 30                        ; attention_backward.py:305:30
	v_and_b16 v76.l, v76.l, 15
	.loc	1 306 27                        ; attention_backward.py:306:27
	v_cndmask_b32_e32 v214, v214, v215, vcc_lo
	.loc	1 307 37                        ; attention_backward.py:307:37
	v_cmp_gt_i16_e64 vcc_lo, 0, v207.l
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 307 52 is_stmt 0              ; attention_backward.py:307:52
	v_or_b32_e32 v215, -16, v76
	.loc	1 307 28                        ; attention_backward.py:307:28
	v_cndmask_b32_e32 v207, v76, v215, vcc_lo
	.loc	1 305 30 is_stmt 1              ; attention_backward.py:305:30
	v_lshrrev_b16 v76.l, 4, v206.l
	.loc	1 307 37                        ; attention_backward.py:307:37
	v_cmp_gt_i16_e64 vcc_lo, 0, v206.l
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 311 21                        ; attention_backward.py:311:21
	v_cvt_f32_i32_e32 v207, v207
	.loc	1 305 30                        ; attention_backward.py:305:30
	v_and_b16 v76.l, v76.l, 15
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 307 52                        ; attention_backward.py:307:52
	v_or_b32_e32 v215, -16, v76
	.loc	1 307 28 is_stmt 0              ; attention_backward.py:307:28
	v_cndmask_b32_e32 v206, v76, v215, vcc_lo
	.loc	1 305 30 is_stmt 1              ; attention_backward.py:305:30
	v_lshrrev_b16 v76.l, 4, v202.l
	.loc	1 307 37                        ; attention_backward.py:307:37
	v_cmp_gt_i16_e64 vcc_lo, 0, v202.l
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 311 21                        ; attention_backward.py:311:21
	v_cvt_f32_i32_e32 v206, v206
	.loc	1 305 30                        ; attention_backward.py:305:30
	v_and_b16 v76.l, v76.l, 15
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 311 21                        ; attention_backward.py:311:21
	v_mul_f32_e32 v206, v209, v206
	.loc	1 307 52                        ; attention_backward.py:307:52
	v_or_b32_e32 v215, -16, v76
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 309 31                        ; attention_backward.py:309:31
	v_cndmask_b32_e64 v206, 0, v206, s1
	.loc	1 307 28                        ; attention_backward.py:307:28
	v_cndmask_b32_e32 v202, v76, v215, vcc_lo
	.loc	1 305 30                        ; attention_backward.py:305:30
	v_lshrrev_b16 v76.l, 4, v201.l
	.loc	1 307 37                        ; attention_backward.py:307:37
	v_cmp_gt_i16_e64 vcc_lo, 0, v201.l
	.loc	1 290 33                        ; attention_backward.py:290:33
	v_mov_b16_e64 v201.l, v209.l
	.loc	1 309 31                        ; attention_backward.py:309:31
	v_cmp_o_f32_e64 s19, v206, v206
	.loc	1 311 21                        ; attention_backward.py:311:21
	v_cvt_f32_i32_e32 v202, v202
	.loc	1 305 30                        ; attention_backward.py:305:30
	v_and_b16 v76.l, v76.l, 15
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	.loc	1 311 21                        ; attention_backward.py:311:21
	v_mul_f32_e32 v205, v205, v201
	v_mul_f32_e32 v201, v207, v201
	v_cvt_f32_i32_e32 v207, v213
	.loc	1 307 52                        ; attention_backward.py:307:52
	v_or_b32_e32 v215, -16, v76
	.loc	1 311 21                        ; attention_backward.py:311:21
	v_mul_f32_e32 v202, v202, v204
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 309 31                        ; attention_backward.py:309:31
	v_cndmask_b32_e64 v201, 0, v201, s1
	.loc	1 311 21                        ; attention_backward.py:311:21
	v_dual_mul_f32 v207, v207, v204 :: v_dual_cndmask_b32 v76, v76, v215
	v_cvt_f32_i32_e32 v204, v214
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 309 31                        ; attention_backward.py:309:31
	v_cndmask_b32_e64 v202, 0, v202, s1
	v_cmp_o_f32_e64 s16, v201, v201
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 311 21                        ; attention_backward.py:311:21
	v_cvt_f32_i32_e32 v76, v76
	v_mul_f32_e32 v204, v204, v203
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 309 31                        ; attention_backward.py:309:31
	v_cmp_o_f32_e64 s17, v202, v202
	.loc	1 311 21                        ; attention_backward.py:311:21
	v_mul_f32_e32 v76, v76, v203
	.loc	1 309 31                        ; attention_backward.py:309:31
	v_cndmask_b32_e64 v203, 0, v205, s0
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cndmask_b32_e64 v204, 0, v204, s0
	v_cndmask_b32_e64 v76, 0, v76, s1
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_bfe_u32 v205, v203, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v203, v203
	v_cmp_o_f32_e64 s14, v204, v204
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cmp_o_f32_e64 s18, v76, v76
	v_add3_u32 v203, v203, v205, 0x7fff
	v_cndmask_b32_e64 v205, 0, v207, s0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_bfe_u32 v207, v205, 16, 1
	v_cmp_o_f32_e64 s13, v205, v205
	v_add3_u32 v205, v205, v207, 0x7fff
	v_bfe_u32 v207, v204, 16, 1
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_add3_u32 v204, v204, v207, 0x7fff
	.loc	1 311 21                        ; attention_backward.py:311:21
	v_cvt_f32_i32_e32 v207, v212
	.loc	1 396 43                        ; attention_backward.py:396:43
	v_sub_f32_e32 v78, v219, v93
	.loc	1 309 31                        ; attention_backward.py:309:31
	v_cndmask_b16 v203.l, 0x7fff, v204.h, s14
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 311 21                        ; attention_backward.py:311:21
	v_dual_mul_f32 v207, v209, v207 :: v_dual_add_nc_u32 v204, v110, v108
	.loc	1 290 33                        ; attention_backward.py:290:33
	v_mov_b16_e64 v209.h, v186.l
	.loc	1 309 31                        ; attention_backward.py:309:31
	v_cndmask_b32_e64 v207, 0, v207, s0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_mov_b16_e64 v208.l, v207.h
	v_cmp_o_f32_e64 s15, v207, v207
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v208, 1, v208
	v_add3_u32 v207, v207, v208, 0x7fff
	v_bfe_u32 v208, v201, 16, 1
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_add3_u32 v201, v201, v208, 0x7fff
	v_bfe_u32 v208, v202, 16, 1
	v_cndmask_b16 v201.l, 0x7fff, v203.h, vcc_lo
	v_cndmask_b16 v201.h, 0x7fff, v201.h, s16
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_add3_u32 v202, v202, v208, 0x7fff
	v_bfe_u32 v208, v76, 16, 1
	v_cndmask_b16 v202.l, 0x7fff, v205.h, s13
	v_cndmask_b16 v202.h, 0x7fff, v202.h, s17
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_add3_u32 v76, v76, v208, 0x7fff
	v_mov_b16_e64 v208.h, v209.l
	v_mov_b16_e64 v208.l, v206.h
	v_cndmask_b16 v76.l, 0x7fff, v207.h, s15
	v_cndmask_b16 v203.h, 0x7fff, v76.h, s18
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v208, 1, v208
	v_add3_u32 v206, v206, v208, 0x7fff
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_cndmask_b16 v76.h, 0x7fff, v206.h, s19
	ds_store_2addr_stride64_b32 v204, v76, v201 offset1:1
	v_bfe_i32 v76, v198, 0, 8
	v_mov_b16_e64 v198.l, v76.l
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 304 28                        ; attention_backward.py:304:28
	v_and_b16 v76.l, v198.l, 15
	.loc	1 304 27 is_stmt 0              ; attention_backward.py:304:27
	v_and_b32_e32 v201, 15, v198
	.loc	1 306 36 is_stmt 1              ; attention_backward.py:306:36
	v_cmp_lt_u16_e32 vcc_lo, 7, v76.l
	v_bfe_i32 v76, v197, 0, 8
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 306 50 is_stmt 0              ; attention_backward.py:306:50
	v_or_b32_e32 v205, -16, v201
	.loc	1 305 28 is_stmt 1              ; attention_backward.py:305:28
	v_mov_b16_e64 v76.h, v209.l
	v_mov_b16_e64 v197.l, v76.l
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 306 27                        ; attention_backward.py:306:27
	v_cndmask_b32_e32 v201, v201, v205, vcc_lo
	.loc	1 304 28                        ; attention_backward.py:304:28
	v_and_b16 v76.l, v197.l, 15
	.loc	1 304 27 is_stmt 0              ; attention_backward.py:304:27
	v_and_b32_e32 v205, 15, v197
	.loc	1 290 33 is_stmt 1              ; attention_backward.py:290:33
	v_mov_b16_e64 v197.h, v200.l
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 311 21                        ; attention_backward.py:311:21
	v_cvt_f32_i32_e32 v200, v201
	.loc	1 306 36                        ; attention_backward.py:306:36
	v_cmp_lt_u16_e32 vcc_lo, 7, v76.l
	.loc	1 305 30                        ; attention_backward.py:305:30
	v_lshrrev_b16 v76.l, 4, v198.l
	.loc	1 306 50                        ; attention_backward.py:306:50
	v_or_b32_e32 v206, -16, v205
	.loc	1 396 43                        ; attention_backward.py:396:43
	v_sub_f32_e32 v74, v223, v93
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 305 30                        ; attention_backward.py:305:30
	v_and_b16 v76.l, v76.l, 15
	.loc	1 306 27                        ; attention_backward.py:306:27
	v_cndmask_b32_e32 v205, v205, v206, vcc_lo
	.loc	1 307 37                        ; attention_backward.py:307:37
	v_cmp_gt_i16_e64 vcc_lo, 0, v198.l
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 307 52 is_stmt 0              ; attention_backward.py:307:52
	v_or_b32_e32 v206, -16, v76
	.loc	1 307 28                        ; attention_backward.py:307:28
	v_cndmask_b32_e32 v198, v76, v206, vcc_lo
	.loc	1 305 30 is_stmt 1              ; attention_backward.py:305:30
	v_lshrrev_b16 v76.l, 4, v197.l
	.loc	1 307 37                        ; attention_backward.py:307:37
	v_cmp_gt_i16_e64 vcc_lo, 0, v197.l
	.loc	1 290 33                        ; attention_backward.py:290:33
	v_mov_b16_e64 v197.l, v209.l
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 311 21                        ; attention_backward.py:311:21
	v_cvt_f32_i32_e32 v198, v198
	.loc	1 305 30                        ; attention_backward.py:305:30
	v_and_b16 v76.l, v76.l, 15
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 311 21                        ; attention_backward.py:311:21
	v_mul_f32_e32 v200, v200, v197
	v_mul_f32_e32 v197, v198, v197
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 307 52                        ; attention_backward.py:307:52
	v_or_b32_e32 v206, -16, v76
	.loc	1 290 33                        ; attention_backward.py:290:33
	v_mov_b16_e64 v198.h, v199.l
	v_mov_b16_e64 v198.l, v209.l
	.loc	1 311 21                        ; attention_backward.py:311:21
	v_cvt_f32_i32_e32 v199, v205
	.loc	1 309 31                        ; attention_backward.py:309:31
	v_cndmask_b32_e64 v197, 0, v197, s1
	.loc	1 307 28                        ; attention_backward.py:307:28
	v_cndmask_b32_e32 v76, v76, v206, vcc_lo
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 311 21                        ; attention_backward.py:311:21
	v_mul_f32_e32 v199, v199, v198
	.loc	1 309 31                        ; attention_backward.py:309:31
	v_cmp_o_f32_e64 s14, v197, v197
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 311 21                        ; attention_backward.py:311:21
	v_cvt_f32_i32_e32 v76, v76
	.loc	1 309 31                        ; attention_backward.py:309:31
	v_cndmask_b32_e64 v199, 0, v199, s0
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 311 21                        ; attention_backward.py:311:21
	v_mul_f32_e32 v76, v76, v198
	.loc	1 309 31                        ; attention_backward.py:309:31
	v_cndmask_b32_e64 v198, 0, v200, s0
	v_cmp_o_f32_e64 s13, v199, v199
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cndmask_b32_e64 v76, 0, v76, s1
	v_bfe_u32 v200, v198, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v198, v198
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cmp_o_f32_e64 s15, v76, v76
	v_add3_u32 v198, v198, v200, 0x7fff
	v_bfe_u32 v200, v199, 16, 1
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_add3_u32 v199, v199, v200, 0x7fff
	v_bfe_u32 v200, v197, 16, 1
	v_cndmask_b16 v198.l, 0x7fff, v199.h, s13
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_add3_u32 v197, v197, v200, 0x7fff
	v_bfe_u32 v200, v76, 16, 1
	v_cndmask_b16 v197.l, 0x7fff, v198.h, vcc_lo
	v_cndmask_b16 v197.h, 0x7fff, v197.h, s14
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add3_u32 v76, v76, v200, 0x7fff
	v_cndmask_b16 v198.h, 0x7fff, v76.h, s15
	v_bfe_i32 v76, v193, 0, 8
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b16_e64 v193.l, v76.l
	.loc	1 304 28                        ; attention_backward.py:304:28
	v_and_b16 v76.l, v193.l, 15
	.loc	1 304 27 is_stmt 0              ; attention_backward.py:304:27
	v_and_b32_e32 v199, 15, v193
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 306 36 is_stmt 1              ; attention_backward.py:306:36
	v_cmp_lt_u16_e32 vcc_lo, 7, v76.l
	v_bfe_i32 v76, v191, 0, 8
	.loc	1 306 50 is_stmt 0              ; attention_backward.py:306:50
	v_or_b32_e32 v200, -16, v199
	.loc	1 396 43 is_stmt 1              ; attention_backward.py:396:43
	v_sub_f32_e32 v80, v221, v93
	.loc	1 305 28                        ; attention_backward.py:305:28
	v_mov_b16_e64 v76.h, v209.l
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_mov_b16_e64 v191.l, v76.l
	.loc	1 306 27                        ; attention_backward.py:306:27
	v_cndmask_b32_e32 v199, v199, v200, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	.loc	1 304 28                        ; attention_backward.py:304:28
	v_and_b16 v76.l, v191.l, 15
	.loc	1 304 27 is_stmt 0              ; attention_backward.py:304:27
	v_and_b32_e32 v200, 15, v191
	.loc	1 290 33 is_stmt 1              ; attention_backward.py:290:33
	v_mov_b16_e64 v191.h, v196.l
	.loc	1 311 21                        ; attention_backward.py:311:21
	v_cvt_f32_i32_e32 v196, v199
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	.loc	1 306 36                        ; attention_backward.py:306:36
	v_cmp_lt_u16_e32 vcc_lo, 7, v76.l
	.loc	1 305 30                        ; attention_backward.py:305:30
	v_lshrrev_b16 v76.l, 4, v193.l
	.loc	1 306 50                        ; attention_backward.py:306:50
	v_or_b32_e32 v201, -16, v200
	.loc	1 305 30                        ; attention_backward.py:305:30
	v_and_b16 v76.l, v76.l, 15
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 306 27                        ; attention_backward.py:306:27
	v_cndmask_b32_e32 v200, v200, v201, vcc_lo
	.loc	1 307 37                        ; attention_backward.py:307:37
	v_cmp_gt_i16_e64 vcc_lo, 0, v193.l
	.loc	1 307 52 is_stmt 0              ; attention_backward.py:307:52
	v_or_b32_e32 v201, -16, v76
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	.loc	1 307 28                        ; attention_backward.py:307:28
	v_cndmask_b32_e32 v193, v76, v201, vcc_lo
	.loc	1 305 30 is_stmt 1              ; attention_backward.py:305:30
	v_lshrrev_b16 v76.l, 4, v191.l
	.loc	1 307 37                        ; attention_backward.py:307:37
	v_cmp_gt_i16_e64 vcc_lo, 0, v191.l
	.loc	1 290 33                        ; attention_backward.py:290:33
	v_mov_b16_e64 v191.l, v209.l
	.loc	1 311 21                        ; attention_backward.py:311:21
	v_cvt_f32_i32_e32 v193, v193
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 305 30                        ; attention_backward.py:305:30
	v_and_b16 v76.l, v76.l, 15
	.loc	1 311 21                        ; attention_backward.py:311:21
	v_mul_f32_e32 v196, v196, v191
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mul_f32_e32 v191, v193, v191
	.loc	1 307 52                        ; attention_backward.py:307:52
	v_or_b32_e32 v201, -16, v76
	.loc	1 290 33                        ; attention_backward.py:290:33
	v_mov_b16_e64 v193.h, v195.l
	v_mov_b16_e64 v193.l, v209.l
	.loc	1 311 21                        ; attention_backward.py:311:21
	v_cvt_f32_i32_e32 v195, v200
	.loc	1 309 31                        ; attention_backward.py:309:31
	v_cndmask_b32_e64 v191, 0, v191, s1
	.loc	1 307 28                        ; attention_backward.py:307:28
	v_cndmask_b32_e32 v76, v76, v201, vcc_lo
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 311 21                        ; attention_backward.py:311:21
	v_mul_f32_e32 v195, v195, v193
	.loc	1 309 31                        ; attention_backward.py:309:31
	v_cmp_o_f32_e64 s14, v191, v191
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 311 21                        ; attention_backward.py:311:21
	v_cvt_f32_i32_e32 v76, v76
	.loc	1 309 31                        ; attention_backward.py:309:31
	v_cndmask_b32_e64 v195, 0, v195, s0
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 311 21                        ; attention_backward.py:311:21
	v_mul_f32_e32 v76, v76, v193
	.loc	1 309 31                        ; attention_backward.py:309:31
	v_cndmask_b32_e64 v193, 0, v196, s0
	v_cmp_o_f32_e64 s13, v195, v195
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cndmask_b32_e64 v76, 0, v76, s1
	v_bfe_u32 v196, v193, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v193, v193
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cmp_o_f32_e64 s15, v76, v76
	v_add3_u32 v193, v193, v196, 0x7fff
	v_bfe_u32 v196, v195, 16, 1
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add3_u32 v195, v195, v196, 0x7fff
	v_bfe_u32 v196, v191, 16, 1
	v_add3_u32 v191, v191, v196, 0x7fff
	v_bfe_u32 v196, v76, 16, 1
	v_cndmask_b16 v191.l, 0x7fff, v193.h, vcc_lo
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cndmask_b16 v191.h, 0x7fff, v191.h, s14
	v_add3_u32 v76, v76, v196, 0x7fff
	v_cndmask_b16 v76.l, 0x7fff, v195.h, s13
	s_delay_alu instid0(VALU_DEP_2)
	v_cndmask_b16 v76.h, 0x7fff, v76.h, s15
	ds_store_2addr_stride64_b32 v204, v197, v198 offset0:4 offset1:5
	ds_store_2addr_stride64_b32 v204, v191, v76 offset0:6 offset1:7
	.loc	1 290 33                        ; attention_backward.py:290:33
	v_mov_b16_e64 v76.h, v194.l
	v_mov_b16_e64 v76.l, v209.l
	.loc	1 299 21                        ; attention_backward.py:299:21
	v_mul_f32_e32 v191, v136, v210
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	.loc	1 345 58                        ; attention_backward.py:345:58
	v_fma_f32 v76, v191, v76, -v92
	.loc	1 290 33                        ; attention_backward.py:290:33
	v_mov_b16_e64 v191.h, v192.l
	v_mov_b16_e64 v191.l, v209.l
	.loc	1 299 21                        ; attention_backward.py:299:21
	v_mul_f32_e32 v192, v136, v211
	.loc	1 345 58                        ; attention_backward.py:345:58
	v_fma_f32 v191, v192, v191, -v92
	.loc	1 345 45 is_stmt 0              ; attention_backward.py:345:45
	v_exp_f32_e32 v192, v76
	.loc	1 340 21 is_stmt 1              ; attention_backward.py:340:21
	v_and_b16 v76.l, 1, v109.l
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 345 45                        ; attention_backward.py:345:45
	v_exp_f32_e32 v191, v191
	.loc	1 340 21                        ; attention_backward.py:340:21
	v_cmp_eq_u16_e32 vcc_lo, 1, v76.l
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 345 29                        ; attention_backward.py:345:29
	v_cndmask_b32_e32 v76, 0, v192, vcc_lo
	.loc	1 396 26                        ; attention_backward.py:396:26
	v_mul_f32_e32 v77, v76, v77
	.loc	1 340 21                        ; attention_backward.py:340:21
	v_and_b16 v76.l, 1, v185.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 397 34                        ; attention_backward.py:397:34
	v_mul_f32_e32 v77, s38, v77
	.loc	1 340 21                        ; attention_backward.py:340:21
	v_cmp_eq_u16_e32 vcc_lo, 1, v76.l
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 345 29                        ; attention_backward.py:345:29
	v_cndmask_b32_e32 v76, 0, v191, vcc_lo
	.loc	1 397 33                        ; attention_backward.py:397:33
	v_cmp_o_f32_e32 vcc_lo, v77, v77
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 396 26                        ; attention_backward.py:396:26
	v_mul_f32_e32 v76, v76, v78
	.loc	1 397 33                        ; attention_backward.py:397:33
	v_bfe_u32 v78, v77, 16, 1
	.loc	1 397 34 is_stmt 0              ; attention_backward.py:397:34
	v_mul_f32_e32 v76, s38, v76
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 397 33                        ; attention_backward.py:397:33
	v_add3_u32 v77, v77, v78, 0x7fff
	v_bfe_u32 v78, v76, 16, 1
	v_cmp_o_f32_e64 s13, v76, v76
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_add3_u32 v76, v76, v78, 0x7fff
	v_cndmask_b16 v76.l, 0x7fff, v77.h, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_cndmask_b16 v76.h, 0x7fff, v76.h, s13
	v_permlanex16_b32 v77, v76, s66, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	v_perm_b32 v191, v77, v76, v96
	v_perm_b32 v192, v77, v76, v97
	.loc	1 290 33 is_stmt 1              ; attention_backward.py:290:33
	v_mov_b16_e64 v76.h, v190.l
	v_mov_b16_e64 v76.l, v209.l
	.loc	1 345 58                        ; attention_backward.py:345:58
	v_fma_f32 v71, v71, v76, -v92
	.loc	1 290 33                        ; attention_backward.py:290:33
	v_mov_b16_e64 v76.h, v189.l
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 345 45                        ; attention_backward.py:345:45
	v_exp_f32_e32 v71, v71
	.loc	1 345 58 is_stmt 0              ; attention_backward.py:345:58
	v_fma_f32 v76, v70, v76, -v92
	.loc	1 340 21 is_stmt 1              ; attention_backward.py:340:21
	v_and_b16 v70.l, 1, v187.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 345 45                        ; attention_backward.py:345:45
	v_exp_f32_e32 v76, v76
	.loc	1 340 21                        ; attention_backward.py:340:21
	v_cmp_eq_u16_e32 vcc_lo, 1, v70.l
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 345 29                        ; attention_backward.py:345:29
	v_cndmask_b32_e32 v70, 0, v71, vcc_lo
	.loc	1 396 26                        ; attention_backward.py:396:26
	v_mul_f32_e32 v71, v70, v79
	.loc	1 340 21                        ; attention_backward.py:340:21
	v_and_b16 v70.l, 1, v189.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 397 34                        ; attention_backward.py:397:34
	v_mul_f32_e32 v71, s38, v71
	.loc	1 340 21                        ; attention_backward.py:340:21
	v_cmp_eq_u16_e32 vcc_lo, 1, v70.l
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 345 29                        ; attention_backward.py:345:29
	v_cndmask_b32_e32 v70, 0, v76, vcc_lo
	.loc	1 397 33                        ; attention_backward.py:397:33
	v_bfe_u32 v76, v71, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v71, v71
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 396 26                        ; attention_backward.py:396:26
	v_mul_f32_e32 v70, v70, v80
	.loc	1 397 33                        ; attention_backward.py:397:33
	v_add3_u32 v71, v71, v76, 0x7fff
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 397 34 is_stmt 0              ; attention_backward.py:397:34
	v_mul_f32_e32 v70, s38, v70
	.loc	1 397 33                        ; attention_backward.py:397:33
	v_bfe_u32 v76, v70, 16, 1
	v_cmp_o_f32_e64 s13, v70, v70
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_add3_u32 v70, v70, v76, 0x7fff
	v_cndmask_b16 v70.l, 0x7fff, v71.h, vcc_lo
	v_cndmask_b16 v70.h, 0x7fff, v70.h, s13
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_permlanex16_b32 v71, v70, s66, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v193, v71, v70, v96
	v_perm_b32 v194, v71, v70, v97
	.loc	1 290 33 is_stmt 1              ; attention_backward.py:290:33
	v_mov_b16_e64 v70.h, v188.l
	v_mov_b16_e64 v70.l, v209.l
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 345 58                        ; attention_backward.py:345:58
	v_fma_f32 v69, v69, v70, -v92
	.loc	1 290 33                        ; attention_backward.py:290:33
	v_mov_b16_e64 v70.h, v187.l
	.loc	1 345 45                        ; attention_backward.py:345:45
	v_exp_f32_e32 v69, v69
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 345 58 is_stmt 0              ; attention_backward.py:345:58
	v_fma_f32 v70, v68, v70, -v92
	.loc	1 340 21 is_stmt 1              ; attention_backward.py:340:21
	v_and_b16 v68.l, 1, v109.h
	.loc	1 345 45                        ; attention_backward.py:345:45
	v_exp_f32_e32 v70, v70
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	.loc	1 340 21                        ; attention_backward.py:340:21
	v_cmp_eq_u16_e32 vcc_lo, 1, v68.l
	.loc	1 345 29                        ; attention_backward.py:345:29
	v_cndmask_b32_e32 v68, 0, v69, vcc_lo
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 396 26                        ; attention_backward.py:396:26
	v_mul_f32_e32 v69, v68, v75
	.loc	1 340 21                        ; attention_backward.py:340:21
	v_and_b16 v68.l, 1, v186.h
	.loc	1 309 31                        ; attention_backward.py:309:31
	ds_store_2addr_stride64_b32 v204, v202, v203 offset0:2 offset1:3
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 397 34                        ; attention_backward.py:397:34
	v_mul_f32_e32 v69, s38, v69
	.loc	1 340 21                        ; attention_backward.py:340:21
	v_cmp_eq_u16_e32 vcc_lo, 1, v68.l
	.loc	1 345 29                        ; attention_backward.py:345:29
	v_cndmask_b32_e32 v68, 0, v70, vcc_lo
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 397 33                        ; attention_backward.py:397:33
	v_bfe_u32 v70, v69, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v69, v69
	.loc	1 396 26                        ; attention_backward.py:396:26
	v_mul_f32_e32 v68, v68, v74
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 397 33                        ; attention_backward.py:397:33
	v_add3_u32 v69, v69, v70, 0x7fff
	.loc	1 397 34 is_stmt 0              ; attention_backward.py:397:34
	v_mul_f32_e32 v68, s38, v68
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 397 33                        ; attention_backward.py:397:33
	v_bfe_u32 v70, v68, 16, 1
	v_cmp_o_f32_e64 s13, v68, v68
	v_add3_u32 v68, v68, v70, 0x7fff
	v_cndmask_b16 v68.l, 0x7fff, v69.h, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_cndmask_b16 v68.h, 0x7fff, v68.h, s13
	v_permlanex16_b32 v69, v68, s66, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	v_perm_b32 v195, v69, v68, v96
	v_perm_b32 v196, v69, v68, v97
	.loc	1 290 33 is_stmt 1              ; attention_backward.py:290:33
	v_mov_b16_e64 v68.h, v185.l
	v_mov_b16_e64 v68.l, v209.l
	.loc	1 345 58                        ; attention_backward.py:345:58
	v_fma_f32 v67, v67, v68, -v92
	v_fma_f32 v68, v66, v209, -v92
	.loc	1 340 21                        ; attention_backward.py:340:21
	v_and_b16 v66.l, 1, v188.h
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 345 45                        ; attention_backward.py:345:45
	v_exp_f32_e32 v67, v67
	v_exp_f32_e32 v68, v68
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	.loc	1 340 21                        ; attention_backward.py:340:21
	v_cmp_eq_u16_e32 vcc_lo, 1, v66.l
	.loc	1 345 29                        ; attention_backward.py:345:29
	v_cndmask_b32_e32 v66, 0, v67, vcc_lo
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 396 26                        ; attention_backward.py:396:26
	v_mul_f32_e32 v67, v66, v73
	.loc	1 340 21                        ; attention_backward.py:340:21
	v_and_b16 v66.l, 1, v190.h
	.loc	1 397 34                        ; attention_backward.py:397:34
	v_mul_f32_e32 v67, s38, v67
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 340 21                        ; attention_backward.py:340:21
	v_cmp_eq_u16_e32 vcc_lo, 1, v66.l
	.loc	1 345 29                        ; attention_backward.py:345:29
	v_cndmask_b32_e32 v66, 0, v68, vcc_lo
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 397 33                        ; attention_backward.py:397:33
	v_bfe_u32 v68, v67, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v67, v67
	.loc	1 396 26                        ; attention_backward.py:396:26
	v_mul_f32_e32 v66, v66, v72
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 397 33                        ; attention_backward.py:397:33
	v_add3_u32 v67, v67, v68, 0x7fff
	.loc	1 397 34 is_stmt 0              ; attention_backward.py:397:34
	v_mul_f32_e32 v66, s38, v66
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 397 33                        ; attention_backward.py:397:33
	v_bfe_u32 v68, v66, 16, 1
	v_cmp_o_f32_e64 s13, v66, v66
	v_add3_u32 v68, v66, v68, 0x7fff
	v_cndmask_b16 v66.l, 0x7fff, v67.h, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_cndmask_b16 v66.h, 0x7fff, v68.h, s13
	v_permlanex16_b32 v67, v66, s66, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1)
	v_perm_b32 v197, v67, v66, v96
	v_perm_b32 v198, v67, v66, v97
	.loc	1 309 31 is_stmt 1              ; attention_backward.py:309:31
	ds_load_u16_d16 v68, v98 offset:608
	ds_load_u16_d16 v67, v98 offset:352
	ds_load_u16_d16 v201, v98 offset:512
	ds_load_u16_d16 v202, v98 offset:768
	ds_load_u16_d16 v200, v98 offset:256
	ds_load_u16_d16 v209, v98 offset:576
	ds_load_u16_d16 v210, v98 offset:832
	ds_load_u16_d16 v203, v98 offset:1024
	ds_load_u16_d16 v211, v98 offset:1088
	ds_load_u16_d16 v204, v98 offset:1280
	ds_load_u16_d16 v212, v98 offset:1344
	ds_load_u16_d16 v205, v98 offset:1536
	ds_load_u16_d16 v213, v98 offset:1600
	ds_load_u16_d16 v206, v98 offset:1792
	ds_load_u16_d16 v199, v98
	ds_load_u16_d16 v216, v98 offset:288
	ds_load_u16_d16 v215, v98 offset:32
	ds_load_u16_d16 v207, v98 offset:64
	ds_load_u16_d16 v208, v98 offset:320
	s_waitcnt lgkmcnt(17)
	ds_load_u16_d16_hi v67, v98 offset:480
	ds_load_u16_d16 v66, v98 offset:96
	s_waitcnt lgkmcnt(18)
	ds_load_u16_d16_hi v201, v98 offset:640
	s_waitcnt lgkmcnt(17)
	ds_load_u16_d16_hi v200, v98 offset:384
	s_waitcnt lgkmcnt(17)
	ds_load_u16_d16_hi v209, v98 offset:704
	ds_load_u16_d16_hi v202, v98 offset:896
	s_waitcnt lgkmcnt(18)
	ds_load_u16_d16_hi v210, v98 offset:960
	s_waitcnt lgkmcnt(18)
	ds_load_u16_d16_hi v203, v98 offset:1152
	s_waitcnt lgkmcnt(18)
	ds_load_u16_d16_hi v211, v98 offset:1216
	s_waitcnt lgkmcnt(18)
	ds_load_u16_d16_hi v204, v98 offset:1408
	s_waitcnt lgkmcnt(18)
	ds_load_u16_d16_hi v212, v98 offset:1472
	s_waitcnt lgkmcnt(18)
	ds_load_u16_d16_hi v205, v98 offset:1664
	ds_load_u16_d16 v214, v98 offset:1856
	s_waitcnt lgkmcnt(19)
	ds_load_u16_d16_hi v213, v98 offset:1728
	s_waitcnt lgkmcnt(19)
	ds_load_u16_d16_hi v206, v98 offset:1920
	s_waitcnt lgkmcnt(19)
	ds_load_u16_d16_hi v199, v98 offset:128
	s_waitcnt lgkmcnt(18)
	ds_load_u16_d16_hi v215, v98 offset:160
	s_waitcnt lgkmcnt(18)
	ds_load_u16_d16_hi v207, v98 offset:192
	s_waitcnt lgkmcnt(16)
	ds_load_u16_d16_hi v66, v98 offset:224
	ds_load_u16_d16 v217, v98 offset:544
	ds_load_u16_d16_hi v216, v98 offset:416
	ds_load_u16_d16_hi v208, v98 offset:448
	ds_load_u16_d16 v69, v98 offset:864
	ds_load_u16_d16 v70, v98 offset:1120
	ds_load_u16_d16 v71, v98 offset:1376
	ds_load_u16_d16 v72, v98 offset:1632
	s_waitcnt lgkmcnt(13)
	ds_load_u16_d16_hi v214, v98 offset:1984
	ds_load_u16_d16 v73, v98 offset:1888
	ds_load_u16_d16 v218, v98 offset:800
	ds_load_u16_d16 v219, v98 offset:1056
	ds_load_u16_d16 v220, v98 offset:1312
	ds_load_u16_d16 v221, v98 offset:1568
	ds_load_u16_d16 v222, v98 offset:1824
	s_waitcnt lgkmcnt(13)
	ds_load_u16_d16_hi v217, v98 offset:672
	ds_load_u16_d16_hi v68, v98 offset:736
	s_waitcnt lgkmcnt(6)
	ds_load_u16_d16_hi v218, v98 offset:928
	ds_load_u16_d16_hi v69, v98 offset:992
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v219, v98 offset:1184
	ds_load_u16_d16_hi v70, v98 offset:1248
	s_waitcnt lgkmcnt(8)
	ds_load_u16_d16_hi v220, v98 offset:1440
	ds_load_u16_d16_hi v71, v98 offset:1504
	s_waitcnt lgkmcnt(9)
	ds_load_u16_d16_hi v221, v98 offset:1696
	ds_load_u16_d16_hi v72, v98 offset:1760
	s_waitcnt lgkmcnt(10)
	ds_load_u16_d16_hi v222, v98 offset:1952
	ds_load_u16_d16_hi v73, v98 offset:2016
	.loc	1 398 31                        ; attention_backward.py:398:31
	v_wmma_f32_16x16x16_bf16 v[57:64], v[199:206], v[191:198], v[57:64]
	v_wmma_f32_16x16x16_bf16 v[41:48], v[207:214], v[191:198], v[41:48]
	s_waitcnt lgkmcnt(1)
	v_wmma_f32_16x16x16_bf16 v[49:56], v[215:222], v[191:198], v[49:56]
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[33:40], v[66:73], v[191:198], v[33:40]
	s_cbranch_scc0 .LBB0_52
.LBB0_32:                               ; =>This Inner Loop Header: Depth=1
	.loc	1 271 27                        ; attention_backward.py:271:27
	v_add_nc_u32_e32 v66, s70, v102
	.loc	1 290 33                        ; attention_backward.py:290:33
	v_add_nc_u32_e32 v67, s65, v159
	.loc	1 275 21                        ; attention_backward.py:275:21
	v_add_nc_u32_e32 v79, v81, v163
	v_add_nc_u32_e32 v76, v81, v166
	v_add_nc_u32_e32 v75, v81, v167
	.loc	1 271 27                        ; attention_backward.py:271:27
	v_add_nc_u32_e32 v74, 14, v66
	.loc	1 277 24                        ; attention_backward.py:277:24
	v_cmp_gt_i32_e32 vcc_lo, s31, v66
	.loc	1 271 27                        ; attention_backward.py:271:27
	v_add_nc_u32_e32 v68, 2, v66
	v_add_nc_u32_e32 v69, 4, v66
	v_add_nc_u32_e32 v70, 6, v66
	v_add_nc_u32_e32 v73, 12, v66
	.loc	1 275 21                        ; attention_backward.py:275:21
	v_add_nc_u32_e32 v77, v81, v165
	.loc	1 271 27                        ; attention_backward.py:271:27
	v_add_nc_u32_e32 v72, 10, v66
	.loc	1 275 21                        ; attention_backward.py:275:21
	v_add_nc_u32_e32 v80, v81, v162
	.loc	1 271 27                        ; attention_backward.py:271:27
	v_add_nc_u32_e32 v71, 8, v66
	.loc	1 277 24                        ; attention_backward.py:277:24
	v_cmp_gt_i32_e64 s13, s31, v68
	v_cmp_gt_i32_e64 s19, s31, v74
	.loc	1 275 21                        ; attention_backward.py:275:21
	v_add_nc_u32_e32 v74, v81, v168
	.loc	1 277 24                        ; attention_backward.py:277:24
	v_cmp_gt_i32_e64 s14, s31, v69
	.loc	1 290 33                        ; attention_backward.py:290:33
	v_add_nc_u32_e32 v68, 8, v67
	v_add_nc_u32_e32 v69, 12, v67
	.loc	1 277 24                        ; attention_backward.py:277:24
	v_cmp_gt_i32_e64 s15, s31, v70
	.loc	1 290 33                        ; attention_backward.py:290:33
	v_add_nc_u32_e32 v70, 16, v67
	.loc	1 277 24                        ; attention_backward.py:277:24
	v_cmp_gt_i32_e64 s16, s31, v71
	v_cmp_gt_i32_e64 s17, s31, v72
	.loc	1 290 33                        ; attention_backward.py:290:33
	v_add_nc_u32_e32 v72, 24, v67
	.loc	1 277 24                        ; attention_backward.py:277:24
	v_cmp_gt_i32_e64 s18, s31, v73
	.loc	1 290 33                        ; attention_backward.py:290:33
	v_add_nc_u32_e32 v73, 28, v67
	.loc	1 275 21                        ; attention_backward.py:275:21
	v_add_nc_u32_e32 v78, v81, v164
	.loc	1 290 33                        ; attention_backward.py:290:33
	v_add_nc_u32_e32 v71, 20, v67
	.loc	1 274 28                        ; attention_backward.py:274:28
	v_add_nc_u32_e32 v109, v81, v161
	.loc	1 290 33                        ; attention_backward.py:290:33
	v_add_nc_u32_e32 v66, 4, v67
	v_cndmask_b32_e32 v67, 0x80000000, v67, vcc_lo
	.loc	1 276 26                        ; attention_backward.py:276:26
	s_and_b32 vcc_lo, s2, vcc_lo
	.loc	1 290 33                        ; attention_backward.py:290:33
	v_cndmask_b32_e64 v72, 0x80000000, v72, s18
	.loc	1 274 28                        ; attention_backward.py:274:28
	v_cndmask_b32_e32 v74, 0x80000000, v74, vcc_lo
	.loc	1 276 26                        ; attention_backward.py:276:26
	s_and_b32 vcc_lo, s2, s13
	.loc	1 290 33                        ; attention_backward.py:290:33
	v_cndmask_b32_e64 v69, 0x80000000, v69, s15
	.loc	1 274 28                        ; attention_backward.py:274:28
	v_cndmask_b32_e32 v75, 0x80000000, v75, vcc_lo
	.loc	1 276 26                        ; attention_backward.py:276:26
	s_and_b32 vcc_lo, s2, s14
	.loc	1 274 28                        ; attention_backward.py:274:28
	v_cndmask_b32_e32 v76, 0x80000000, v76, vcc_lo
	.loc	1 276 26                        ; attention_backward.py:276:26
	s_and_b32 vcc_lo, s2, s15
	.loc	1 274 28                        ; attention_backward.py:274:28
	v_cndmask_b32_e32 v77, 0x80000000, v77, vcc_lo
	.loc	1 276 26                        ; attention_backward.py:276:26
	s_and_b32 vcc_lo, s2, s16
	.loc	1 274 28                        ; attention_backward.py:274:28
	v_cndmask_b32_e32 v78, 0x80000000, v78, vcc_lo
	.loc	1 276 26                        ; attention_backward.py:276:26
	s_and_b32 vcc_lo, s2, s17
	.loc	1 290 33                        ; attention_backward.py:290:33
	v_cndmask_b32_e64 v71, 0x80000000, v71, s17
	.loc	1 274 28                        ; attention_backward.py:274:28
	v_cndmask_b32_e32 v79, 0x80000000, v79, vcc_lo
	.loc	1 276 26                        ; attention_backward.py:276:26
	s_and_b32 vcc_lo, s2, s18
	.loc	1 274 28                        ; attention_backward.py:274:28
	v_cndmask_b32_e32 v80, 0x80000000, v80, vcc_lo
	.loc	1 276 26                        ; attention_backward.py:276:26
	s_and_b32 vcc_lo, s2, s19
	.loc	1 274 28                        ; attention_backward.py:274:28
	v_cndmask_b32_e32 v109, 0x80000000, v109, vcc_lo
	s_clause 0x7
	buffer_load_u8 v206, v74, s[40:43], 0 offen
	buffer_load_u8 v207, v75, s[40:43], 0 offen
	buffer_load_u8 v202, v76, s[40:43], 0 offen
	buffer_load_u8 v201, v77, s[40:43], 0 offen
	buffer_load_u8 v198, v78, s[40:43], 0 offen
	buffer_load_u8 v197, v79, s[40:43], 0 offen
	buffer_load_u8 v193, v80, s[40:43], 0 offen
	buffer_load_u8 v191, v109, s[40:43], 0 offen
	.loc	1 271 27                        ; attention_backward.py:271:27
	v_add_nc_u32_e32 v74, s70, v125
	.loc	1 290 33                        ; attention_backward.py:290:33
	v_add_nc_u32_e32 v75, s65, v160
	v_cndmask_b32_e64 v66, 0x80000000, v66, s13
	.loc	1 274 28                        ; attention_backward.py:274:28
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 271 27                        ; attention_backward.py:271:27
	v_add_nc_u32_e32 v76, 2, v74
	.loc	1 292 26                        ; attention_backward.py:292:26
	v_cmp_gt_i32_e32 vcc_lo, s31, v74
	.loc	1 271 27                        ; attention_backward.py:271:27
	v_add_nc_u32_e32 v77, 4, v74
	v_add_nc_u32_e32 v78, 6, v74
	v_add_nc_u32_e32 v79, 8, v74
	v_add_nc_u32_e32 v80, 10, v74
	v_add_nc_u32_e32 v109, 12, v74
	v_add_nc_u32_e32 v185, 14, v74
	.loc	1 290 33                        ; attention_backward.py:290:33
	v_cndmask_b32_e32 v74, 0x80000000, v75, vcc_lo
	v_add_nc_u32_e32 v186, 4, v75
	.loc	1 292 26                        ; attention_backward.py:292:26
	v_cmp_gt_i32_e32 vcc_lo, s31, v76
	.loc	1 290 33                        ; attention_backward.py:290:33
	v_add_nc_u32_e32 v187, 8, v75
	v_add_nc_u32_e32 v188, 12, v75
	v_add_nc_u32_e32 v189, 16, v75
	v_add_nc_u32_e32 v190, 20, v75
	v_cndmask_b32_e32 v76, 0x80000000, v186, vcc_lo
	.loc	1 292 26                        ; attention_backward.py:292:26
	v_cmp_gt_i32_e32 vcc_lo, s31, v77
	.loc	1 290 33                        ; attention_backward.py:290:33
	v_add_nc_u32_e32 v192, 24, v75
	v_add_nc_u32_e32 v75, 28, v75
	v_cndmask_b32_e64 v73, 0x80000000, v73, s19
	.loc	1 274 28                        ; attention_backward.py:274:28
	s_waitcnt vmcnt(7)
	ds_store_b8 v103, v206
	s_waitcnt vmcnt(6)
	ds_store_b8 v103, v207 offset:64
	s_waitcnt vmcnt(5)
	ds_store_b8 v104, v202
	s_waitcnt vmcnt(4)
	ds_store_b8 v104, v201 offset:64
	s_waitcnt vmcnt(3)
	ds_store_b8 v105, v198
	s_waitcnt vmcnt(2)
	ds_store_b8 v105, v197 offset:64
	s_waitcnt vmcnt(1)
	ds_store_b8 v106, v193
	s_waitcnt vmcnt(0)
	ds_store_b8 v106, v191 offset:64
	.loc	1 290 33                        ; attention_backward.py:290:33
	v_cndmask_b32_e32 v77, 0x80000000, v187, vcc_lo
	.loc	1 292 26                        ; attention_backward.py:292:26
	v_cmp_gt_i32_e32 vcc_lo, s31, v78
	.loc	1 274 28                        ; attention_backward.py:274:28
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b64 v[213:214], v170
	ds_load_b64 v[215:216], v171
	.loc	1 290 33                        ; attention_backward.py:290:33
	v_cndmask_b32_e32 v78, 0x80000000, v188, vcc_lo
	.loc	1 292 26                        ; attention_backward.py:292:26
	v_cmp_gt_i32_e32 vcc_lo, s31, v79
	.loc	1 290 33                        ; attention_backward.py:290:33
	v_cndmask_b32_e32 v79, 0x80000000, v189, vcc_lo
	.loc	1 292 26                        ; attention_backward.py:292:26
	v_cmp_gt_i32_e32 vcc_lo, s31, v80
	.loc	1 290 33                        ; attention_backward.py:290:33
	v_cndmask_b32_e64 v68, 0x80000000, v68, s14
	v_cndmask_b32_e32 v80, 0x80000000, v190, vcc_lo
	.loc	1 292 26                        ; attention_backward.py:292:26
	v_cmp_gt_i32_e32 vcc_lo, s31, v109
	.loc	1 290 33                        ; attention_backward.py:290:33
	v_cndmask_b32_e32 v109, 0x80000000, v192, vcc_lo
	.loc	1 292 26                        ; attention_backward.py:292:26
	v_cmp_gt_i32_e32 vcc_lo, s31, v185
	.loc	1 290 33                        ; attention_backward.py:290:33
	v_cndmask_b32_e64 v70, 0x80000000, v70, s16
	v_cndmask_b32_e32 v75, 0x80000000, v75, vcc_lo
	s_clause 0xf
	buffer_load_u16 v208, v67, s[44:47], 0 offen
	buffer_load_u16 v205, v66, s[44:47], 0 offen
	buffer_load_u16 v204, v68, s[44:47], 0 offen
	buffer_load_u16 v203, v69, s[44:47], 0 offen
	buffer_load_u16 v200, v70, s[44:47], 0 offen
	buffer_load_u16 v199, v71, s[44:47], 0 offen
	buffer_load_u16 v196, v72, s[44:47], 0 offen
	buffer_load_u16 v195, v73, s[44:47], 0 offen
	buffer_load_u16 v194, v74, s[44:47], 0 offen
	buffer_load_u16 v192, v76, s[44:47], 0 offen
	buffer_load_u16 v190, v77, s[44:47], 0 offen
	buffer_load_u16 v189, v78, s[44:47], 0 offen
	buffer_load_u16 v188, v79, s[44:47], 0 offen
	buffer_load_u16 v187, v80, s[44:47], 0 offen
	buffer_load_u16 v185, v109, s[44:47], 0 offen
	buffer_load_u16 v186, v75, s[44:47], 0 offen
	.loc	1 274 28                        ; attention_backward.py:274:28
	v_add_nc_u32_e32 v66, 0, v137
	ds_load_b64 v[209:210], v66
	ds_load_b64 v[211:212], v169
	.loc	1 280 29                        ; attention_backward.py:280:29
	v_mov_b32_e32 v72, v65
	v_mov_b32_e32 v66, v65
	v_mov_b32_e32 v67, v65
	v_mov_b32_e32 v68, v65
	v_mov_b32_e32 v69, v65
	v_mov_b32_e32 v70, v65
	v_mov_b32_e32 v71, v65
	v_mov_b32_e32 v80, v72
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_mov_b32 v76, v68 :: v_dual_mov_b32 v77, v69
	v_dual_mov_b32 v78, v70 :: v_dual_mov_b32 v79, v71
	v_dual_mov_b32 v75, v67 :: v_dual_mov_b32 v74, v66
	v_dual_mov_b32 v73, v65 :: v_dual_add_nc_u32 v66, s70, v107
	.loc	1 326 13                        ; attention_backward.py:326:13
	v_cmp_ne_u32_e32 vcc_lo, 1, v127
	.loc	1 280 29                        ; attention_backward.py:280:29
	s_waitcnt lgkmcnt(1)
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_wmma_i32_16x16x16_iu4 v[73:80], v[209:210], v[82:83], v[73:80] neg_lo:[1,1,0]
	.loc	1 277 24                        ; attention_backward.py:277:24
	v_cmp_gt_i32_e64 s13, s31, v66
	.loc	1 326 13                        ; attention_backward.py:326:13
	s_and_b32 vcc_lo, exec_lo, vcc_lo
	.loc	1 280 29                        ; attention_backward.py:280:29
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[73:80], v[211:212], v[84:85], v[73:80] neg_lo:[1,1,0]
	.loc	1 324 21                        ; attention_backward.py:324:21
	s_and_b32 s75, s5, s13
	s_and_b32 s73, s6, s13
	s_and_b32 s55, s7, s13
	s_and_b32 s54, s8, s13
	.loc	1 280 29                        ; attention_backward.py:280:29
	v_wmma_i32_16x16x16_iu4 v[73:80], v[213:214], v[86:87], v[73:80] neg_lo:[1,1,0]
	.loc	1 324 21                        ; attention_backward.py:324:21
	s_and_b32 s76, s9, s13
	s_and_b32 s74, s10, s13
	s_and_b32 s72, s11, s13
	s_and_b32 s67, s12, s13
	.loc	1 280 29                        ; attention_backward.py:280:29
	v_wmma_i32_16x16x16_iu4 v[73:80], v[215:216], v[88:89], v[73:80] neg_lo:[1,1,0]
	s_cbranch_vccz .LBB0_49
; %bb.33:                               ;   in Loop: Header=BB0_32 Depth=1
	.loc	1 328 13                        ; attention_backward.py:328:13
	s_and_not1_b32 vcc_lo, exec_lo, s33
	s_cbranch_vccz .LBB0_50
.LBB0_34:                               ;   in Loop: Header=BB0_32 Depth=1
	.loc	1 0 13 is_stmt 0                ; attention_backward.py:0:13
	v_mov_b16_e32 v66.l, 0
	s_delay_alu instid0(VALU_DEP_1)
	v_mov_b16_e32 v68.l, v66.l
	.loc	1 340 30 is_stmt 1              ; attention_backward.py:340:30
	s_and_saveexec_b32 s13, s75
	s_cbranch_execnz .LBB0_51
.LBB0_35:                               ;   in Loop: Header=BB0_32 Depth=1
	.loc	1 0 30 is_stmt 0                ; attention_backward.py:0:30
	s_or_b32 exec_lo, exec_lo, s13
	.loc	1 340 30                        ; attention_backward.py:340:30
	s_and_saveexec_b32 s13, s73
	s_cbranch_execz .LBB0_37
.LBB0_36:                               ;   in Loop: Header=BB0_32 Depth=1
	.loc	1 0 30                          ; attention_backward.py:0:30
	v_add_nc_u32_e32 v66, v158, v90
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 340 30                        ; attention_backward.py:340:30
	v_ashrrev_i32_e32 v67, 31, v66
	v_add_co_u32 v66, vcc_lo, s34, v66
	v_add_co_ci_u32_e64 v67, null, s35, v67, vcc_lo
	global_load_d16_u8 v66, v[66:67], off
.LBB0_37:                               ;   in Loop: Header=BB0_32 Depth=1
	.loc	1 0 30                          ; attention_backward.py:0:30
	s_or_b32 exec_lo, exec_lo, s13
	s_waitcnt vmcnt(0)
	v_mov_b16_e32 v66.h, 0
	s_delay_alu instid0(VALU_DEP_1)
	v_mov_b16_e32 v67.l, v66.h
	.loc	1 340 30                        ; attention_backward.py:340:30
	s_and_saveexec_b32 s13, s55
	s_cbranch_execz .LBB0_39
; %bb.38:                               ;   in Loop: Header=BB0_32 Depth=1
	.loc	1 0 30                          ; attention_backward.py:0:30
	v_add_nc_u32_e32 v67, v157, v90
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 340 30                        ; attention_backward.py:340:30
	v_ashrrev_i32_e32 v70, 31, v67
	v_add_co_u32 v69, vcc_lo, s34, v67
	v_add_co_ci_u32_e64 v70, null, s35, v70, vcc_lo
	global_load_d16_u8 v67, v[69:70], off
.LBB0_39:                               ;   in Loop: Header=BB0_32 Depth=1
	.loc	1 0 30                          ; attention_backward.py:0:30
	s_or_b32 exec_lo, exec_lo, s13
	.loc	1 340 30                        ; attention_backward.py:340:30
	s_and_saveexec_b32 s13, s54
	s_cbranch_execz .LBB0_41
; %bb.40:                               ;   in Loop: Header=BB0_32 Depth=1
	.loc	1 0 30                          ; attention_backward.py:0:30
	v_add_nc_u32_e32 v69, v156, v90
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 340 30                        ; attention_backward.py:340:30
	v_ashrrev_i32_e32 v70, 31, v69
	v_add_co_u32 v69, vcc_lo, s34, v69
	v_add_co_ci_u32_e64 v70, null, s35, v70, vcc_lo
	global_load_d16_hi_u8 v66, v[69:70], off
.LBB0_41:                               ;   in Loop: Header=BB0_32 Depth=1
	.loc	1 0 30                          ; attention_backward.py:0:30
	s_or_b32 exec_lo, exec_lo, s13
	s_waitcnt vmcnt(0)
	v_mov_b16_e32 v67.h, 0
	s_delay_alu instid0(VALU_DEP_1)
	v_mov_b16_e32 v69.h, v67.h
	.loc	1 340 30                        ; attention_backward.py:340:30
	s_and_saveexec_b32 s13, s76
	s_cbranch_execz .LBB0_43
; %bb.42:                               ;   in Loop: Header=BB0_32 Depth=1
	.loc	1 0 30                          ; attention_backward.py:0:30
	v_add_nc_u32_e32 v69, v155, v90
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 340 30                        ; attention_backward.py:340:30
	v_ashrrev_i32_e32 v70, 31, v69
	v_add_co_u32 v69, vcc_lo, s34, v69
	v_add_co_ci_u32_e64 v70, null, s35, v70, vcc_lo
	global_load_d16_hi_u8 v69, v[69:70], off
.LBB0_43:                               ;   in Loop: Header=BB0_32 Depth=1
	.loc	1 0 30                          ; attention_backward.py:0:30
	s_or_b32 exec_lo, exec_lo, s13
	.loc	1 340 30                        ; attention_backward.py:340:30
	s_and_saveexec_b32 s13, s74
	s_cbranch_execz .LBB0_45
; %bb.44:                               ;   in Loop: Header=BB0_32 Depth=1
	.loc	1 0 30                          ; attention_backward.py:0:30
	v_add_nc_u32_e32 v70, v154, v90
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 340 30                        ; attention_backward.py:340:30
	v_ashrrev_i32_e32 v71, 31, v70
	v_add_co_u32 v70, vcc_lo, s34, v70
	v_add_co_ci_u32_e64 v71, null, s35, v71, vcc_lo
	global_load_d16_hi_u8 v67, v[70:71], off
.LBB0_45:                               ;   in Loop: Header=BB0_32 Depth=1
	.loc	1 0 30                          ; attention_backward.py:0:30
	s_or_b32 exec_lo, exec_lo, s13
	v_mov_b16_e32 v68.h, 0
	s_waitcnt vmcnt(0)
	s_delay_alu instid0(VALU_DEP_1)
	v_mov_b16_e32 v69.l, v68.h
	.loc	1 340 30                        ; attention_backward.py:340:30
	s_and_saveexec_b32 s13, s72
	s_cbranch_execz .LBB0_47
; %bb.46:                               ;   in Loop: Header=BB0_32 Depth=1
	.loc	1 0 30                          ; attention_backward.py:0:30
	v_add_nc_u32_e32 v70, v101, v90
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 340 30                        ; attention_backward.py:340:30
	v_ashrrev_i32_e32 v71, 31, v70
	v_add_co_u32 v70, vcc_lo, s34, v70
	v_add_co_ci_u32_e64 v71, null, s35, v71, vcc_lo
	global_load_d16_u8 v69, v[70:71], off
.LBB0_47:                               ;   in Loop: Header=BB0_32 Depth=1
	.loc	1 0 30                          ; attention_backward.py:0:30
	s_or_b32 exec_lo, exec_lo, s13
	.loc	1 340 30                        ; attention_backward.py:340:30
	s_and_saveexec_b32 s13, s67
	s_cbranch_execz .LBB0_31
; %bb.48:                               ;   in Loop: Header=BB0_32 Depth=1
	v_add_nc_u32_e32 v70, v91, v90
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_ashrrev_i32_e32 v71, 31, v70
	v_add_co_u32 v70, vcc_lo, s34, v70
	v_add_co_ci_u32_e64 v71, null, s35, v71, vcc_lo
	global_load_d16_hi_u8 v68, v[70:71], off
	s_branch .LBB0_31
.LBB0_49:                               ;   in Loop: Header=BB0_32 Depth=1
	.loc	1 327 26 is_stmt 1              ; attention_backward.py:327:26
	v_cmp_le_i32_e32 vcc_lo, v66, v128
	v_cmp_le_i32_e64 s13, v66, v129
	v_cmp_le_i32_e64 s14, v66, v130
	v_cmp_le_i32_e64 s15, v66, v131
	v_cmp_le_i32_e64 s16, v66, v132
	v_cmp_le_i32_e64 s17, v66, v133
	.loc	1 327 17 is_stmt 0              ; attention_backward.py:327:17
	s_and_b32 s20, vcc_lo, s75
	s_and_b32 s13, s13, s73
	.loc	1 327 26                        ; attention_backward.py:327:26
	v_cmp_le_i32_e64 s18, v66, v134
	v_cmp_le_i32_e64 s19, v66, v135
	.loc	1 327 17                        ; attention_backward.py:327:17
	s_and_b32 s14, s14, s55
	s_and_b32 s15, s15, s54
	s_and_not1_b32 s21, s75, exec_lo
	s_and_b32 s20, s20, exec_lo
	s_and_not1_b32 s22, s73, exec_lo
	s_and_b32 s13, s13, exec_lo
	s_and_b32 s16, s16, s76
	s_and_b32 s17, s17, s74
	s_or_b32 s75, s21, s20
	s_or_b32 s73, s22, s13
	s_and_not1_b32 s13, s55, exec_lo
	s_and_b32 s14, s14, exec_lo
	s_and_not1_b32 s20, s54, exec_lo
	s_and_b32 s15, s15, exec_lo
	s_and_b32 s18, s18, s72
	s_and_b32 s19, s19, s67
	s_or_b32 s55, s13, s14
	s_or_b32 s54, s20, s15
	s_and_not1_b32 s13, s76, exec_lo
	s_and_b32 s14, s16, exec_lo
	s_and_not1_b32 s15, s74, exec_lo
	s_and_b32 s16, s17, exec_lo
	s_or_b32 s76, s13, s14
	s_or_b32 s74, s15, s16
	s_and_not1_b32 s13, s72, exec_lo
	s_and_b32 s14, s18, exec_lo
	s_and_not1_b32 s15, s67, exec_lo
	s_and_b32 s16, s19, exec_lo
	s_or_b32 s72, s13, s14
	s_or_b32 s67, s15, s16
	.loc	1 328 13 is_stmt 1              ; attention_backward.py:328:13
	s_and_not1_b32 vcc_lo, exec_lo, s33
	s_cbranch_vccnz .LBB0_34
.LBB0_50:                               ;   in Loop: Header=BB0_32 Depth=1
	.loc	1 329 26                        ; attention_backward.py:329:26
	v_cmp_ge_i32_e32 vcc_lo, v66, v138
	v_cmp_ge_i32_e64 s13, v66, v139
	.loc	1 330 26                        ; attention_backward.py:330:26
	v_cmp_le_i32_e64 s20, v66, v146
	v_cmp_le_i32_e64 s21, v66, v147
	.loc	1 329 26                        ; attention_backward.py:329:26
	v_cmp_ge_i32_e64 s14, v66, v140
	v_cmp_ge_i32_e64 s15, v66, v141
	.loc	1 330 26                        ; attention_backward.py:330:26
	v_cmp_le_i32_e64 s22, v66, v148
	v_cmp_le_i32_e64 s23, v66, v149
	.loc	1 329 26                        ; attention_backward.py:329:26
	v_cmp_ge_i32_e64 s16, v66, v142
	v_cmp_ge_i32_e64 s17, v66, v143
	.loc	1 330 26                        ; attention_backward.py:330:26
	v_cmp_le_i32_e64 s24, v66, v150
	v_cmp_le_i32_e64 s25, v66, v151
	.loc	1 330 17 is_stmt 0              ; attention_backward.py:330:17
	s_and_b32 s20, vcc_lo, s20
	s_and_b32 s13, s13, s21
	.loc	1 329 26 is_stmt 1              ; attention_backward.py:329:26
	v_cmp_ge_i32_e64 s18, v66, v144
	v_cmp_ge_i32_e64 s19, v66, v145
	.loc	1 330 26                        ; attention_backward.py:330:26
	v_cmp_le_i32_e64 s26, v66, v152
	v_cmp_le_i32_e64 s27, v66, v153
	.loc	1 330 17 is_stmt 0              ; attention_backward.py:330:17
	s_and_b32 s20, s20, s75
	s_and_b32 s13, s13, s73
	s_and_b32 s14, s14, s22
	s_and_b32 s15, s15, s23
	s_and_b32 s14, s14, s55
	s_and_b32 s15, s15, s54
	s_and_b32 s16, s16, s24
	s_and_b32 s17, s17, s25
	s_and_not1_b32 s21, s75, exec_lo
	s_and_b32 s20, s20, exec_lo
	s_and_not1_b32 s22, s73, exec_lo
	s_and_b32 s13, s13, exec_lo
	s_and_b32 s16, s16, s76
	s_and_b32 s17, s17, s74
	s_and_b32 s18, s18, s26
	s_and_b32 s19, s19, s27
	s_or_b32 s75, s21, s20
	s_or_b32 s73, s22, s13
	s_and_not1_b32 s13, s55, exec_lo
	s_and_b32 s14, s14, exec_lo
	s_and_not1_b32 s20, s54, exec_lo
	s_and_b32 s15, s15, exec_lo
	s_and_b32 s18, s18, s72
	s_and_b32 s19, s19, s67
	s_or_b32 s55, s13, s14
	s_or_b32 s54, s20, s15
	s_and_not1_b32 s13, s76, exec_lo
	s_and_b32 s14, s16, exec_lo
	s_and_not1_b32 s15, s74, exec_lo
	s_and_b32 s16, s17, exec_lo
	s_or_b32 s76, s13, s14
	s_or_b32 s74, s15, s16
	s_and_not1_b32 s13, s72, exec_lo
	s_and_b32 s14, s18, exec_lo
	s_and_not1_b32 s15, s67, exec_lo
	s_and_b32 s16, s19, exec_lo
	s_or_b32 s72, s13, s14
	s_or_b32 s67, s15, s16
	v_mov_b16_e32 v66.l, 0
	s_delay_alu instid0(VALU_DEP_1)
	v_mov_b16_e32 v68.l, v66.l
	.loc	1 340 30 is_stmt 1              ; attention_backward.py:340:30
	s_and_saveexec_b32 s13, s75
	s_cbranch_execz .LBB0_35
.LBB0_51:                               ;   in Loop: Header=BB0_32 Depth=1
	v_add_nc_u32_e32 v67, v100, v90
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_ashrrev_i32_e32 v68, 31, v67
	v_add_co_u32 v67, vcc_lo, s34, v67
	v_add_co_ci_u32_e64 v68, null, s35, v68, vcc_lo
	global_load_d16_u8 v68, v[67:68], off
	s_or_b32 exec_lo, exec_lo, s13
	s_and_saveexec_b32 s13, s73
	s_cbranch_execnz .LBB0_36
	s_branch .LBB0_37
.LBB0_52:                               ; %._crit_edge82
	.loc	1 401 13                        ; attention_backward.py:401:13
	scratch_load_b32 v24, off, off          ; 4-byte Folded Reload
	.loc	1 408 40                        ; attention_backward.py:408:40
	v_cmp_gt_i32_e64 s1, s60, v125
	v_cmp_gt_i32_e64 s2, s60, v126
	v_cmp_gt_i32_e64 s3, s60, v124
	v_cmp_gt_i32_e64 s5, s60, v123
	.loc	1 405 9                         ; attention_backward.py:405:9
	s_and_b32 s37, s37, 0xffff
	.loc	1 408 18                        ; attention_backward.py:408:18
	s_and_b32 s1, s4, s1
	s_mov_b32 s39, 0x31027000
	s_mov_b32 s38, 0x7ffffffe
	.loc	1 408 40 is_stmt 0              ; attention_backward.py:408:40
	v_cmp_gt_i32_e64 s6, s60, v122
	v_cmp_gt_i32_e64 s7, s60, v121
	.loc	1 168 40 is_stmt 1              ; attention_backward.py:168:40
	v_or_b32_e32 v23, 16, v125
	.loc	1 408 40                        ; attention_backward.py:408:40
	v_cmp_gt_i32_e64 s8, s60, v120
	.loc	1 168 40                        ; attention_backward.py:168:40
	v_or_b32_e32 v22, 18, v125
	.loc	1 408 40                        ; attention_backward.py:408:40
	v_cmp_gt_i32_e64 s9, s60, v119
	.loc	1 168 40                        ; attention_backward.py:168:40
	v_or_b32_e32 v21, 20, v125
	.loc	1 408 40                        ; attention_backward.py:408:40
	v_cmp_gt_i32_e64 s10, s60, v23
	.loc	1 168 40                        ; attention_backward.py:168:40
	v_or_b32_e32 v20, 22, v125
	.loc	1 408 40                        ; attention_backward.py:408:40
	v_cmp_gt_i32_e64 s11, s60, v22
	.loc	1 168 40                        ; attention_backward.py:168:40
	v_or_b32_e32 v19, 24, v125
	.loc	1 408 40                        ; attention_backward.py:408:40
	v_cmp_gt_i32_e64 s12, s60, v21
	.loc	1 168 40                        ; attention_backward.py:168:40
	v_or_b32_e32 v18, 26, v125
	.loc	1 408 40                        ; attention_backward.py:408:40
	v_cmp_gt_i32_e64 s13, s60, v20
	.loc	1 168 40                        ; attention_backward.py:168:40
	v_or_b32_e32 v17, 28, v125
	.loc	1 408 40                        ; attention_backward.py:408:40
	v_cmp_gt_i32_e64 s14, s60, v19
	.loc	1 168 40                        ; attention_backward.py:168:40
	v_or_b32_e32 v16, 30, v125
	.loc	1 408 40                        ; attention_backward.py:408:40
	v_cmp_gt_i32_e64 s15, s60, v18
	.loc	1 168 40                        ; attention_backward.py:168:40
	v_or_b32_e32 v15, 32, v125
	.loc	1 408 40                        ; attention_backward.py:408:40
	v_cmp_gt_i32_e64 s16, s60, v17
	.loc	1 168 40                        ; attention_backward.py:168:40
	v_or_b32_e32 v14, 34, v125
	.loc	1 408 40                        ; attention_backward.py:408:40
	v_cmp_gt_i32_e64 s17, s60, v16
	.loc	1 168 40                        ; attention_backward.py:168:40
	v_or_b32_e32 v13, 36, v125
	.loc	1 408 40                        ; attention_backward.py:408:40
	v_cmp_gt_i32_e64 s18, s60, v15
	.loc	1 168 40                        ; attention_backward.py:168:40
	v_or_b32_e32 v12, 38, v125
	.loc	1 408 40                        ; attention_backward.py:408:40
	v_cmp_gt_i32_e64 s19, s60, v14
	.loc	1 168 40                        ; attention_backward.py:168:40
	v_or_b32_e32 v11, 40, v125
	.loc	1 408 40                        ; attention_backward.py:408:40
	v_cmp_gt_i32_e64 s20, s60, v13
	.loc	1 168 40                        ; attention_backward.py:168:40
	v_or_b32_e32 v10, 42, v125
	.loc	1 408 40                        ; attention_backward.py:408:40
	v_cmp_gt_i32_e64 s21, s60, v12
	.loc	1 168 40                        ; attention_backward.py:168:40
	v_or_b32_e32 v9, 44, v125
	.loc	1 408 40                        ; attention_backward.py:408:40
	v_cmp_gt_i32_e64 s22, s60, v11
	.loc	1 168 40                        ; attention_backward.py:168:40
	v_or_b32_e32 v8, 46, v125
	.loc	1 408 40                        ; attention_backward.py:408:40
	v_cmp_gt_i32_e64 s23, s60, v10
	.loc	1 168 40                        ; attention_backward.py:168:40
	v_or_b32_e32 v7, 48, v125
	.loc	1 408 40                        ; attention_backward.py:408:40
	v_cmp_gt_i32_e64 s24, s60, v9
	.loc	1 168 40                        ; attention_backward.py:168:40
	v_or_b32_e32 v6, 50, v125
	.loc	1 408 40                        ; attention_backward.py:408:40
	v_cmp_gt_i32_e64 s25, s60, v8
	.loc	1 168 40                        ; attention_backward.py:168:40
	v_or_b32_e32 v5, 52, v125
	.loc	1 408 40                        ; attention_backward.py:408:40
	v_cmp_gt_i32_e64 s26, s60, v7
	.loc	1 168 40                        ; attention_backward.py:168:40
	v_or_b32_e32 v4, 54, v125
	.loc	1 408 40                        ; attention_backward.py:408:40
	v_cmp_gt_i32_e64 s27, s60, v6
	.loc	1 168 40                        ; attention_backward.py:168:40
	v_or_b32_e32 v3, 56, v125
	v_or_b32_e32 v1, 60, v125
	v_or_b32_e32 v2, 58, v125
	.loc	1 408 40                        ; attention_backward.py:408:40
	v_cmp_gt_i32_e64 s28, s60, v5
	.loc	1 168 40                        ; attention_backward.py:168:40
	v_or_b32_e32 v0, 62, v125
	.loc	1 408 40                        ; attention_backward.py:408:40
	v_cmp_gt_i32_e64 s29, s60, v4
	v_cmp_gt_i32_e64 s30, s60, v3
	v_cmp_gt_i32_e64 s0, s60, v2
	v_cmp_gt_i32_e32 vcc_lo, s60, v1
	.loc	1 408 18 is_stmt 0              ; attention_backward.py:408:18
	s_and_b32 s0, s4, s0
	s_and_b32 vcc_lo, s4, vcc_lo
	.loc	1 401 13 is_stmt 1              ; attention_backward.py:401:13
	s_waitcnt vmcnt(0)
	v_mul_lo_u32 v24, v24, s60
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 405 9                         ; attention_backward.py:405:9
	v_add_lshl_u32 v25, v24, v125, 2
	v_add_lshl_u32 v26, v24, v126, 2
	v_add_lshl_u32 v27, v24, v124, 2
	v_add_lshl_u32 v28, v24, v120, 2
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
	buffer_store_b32 v57, v25, s[36:39], 0 offen
	v_cndmask_b32_e64 v27, 0x80000000, v27, s1
	v_add_lshl_u32 v25, v24, v123, 2
	s_clause 0x1
	buffer_store_b32 v58, v26, s[36:39], 0 offen
	buffer_store_b32 v59, v27, s[36:39], 0 offen
	v_add_lshl_u32 v26, v24, v122, 2
	v_cndmask_b32_e64 v25, 0x80000000, v25, s2
	.loc	1 408 18                        ; attention_backward.py:408:18
	s_and_b32 s2, s4, s6
	.loc	1 405 9                         ; attention_backward.py:405:9
	v_add_lshl_u32 v27, v24, v121, 2
	v_add_lshl_u32 v22, v24, v22, 2
	v_cndmask_b32_e64 v26, 0x80000000, v26, s2
	.loc	1 408 18                        ; attention_backward.py:408:18
	s_and_b32 s2, s4, s7
	.loc	1 405 9                         ; attention_backward.py:405:9
	s_clause 0x1
	buffer_store_b32 v60, v25, s[36:39], 0 offen
	buffer_store_b32 v61, v26, s[36:39], 0 offen
	v_add_lshl_u32 v25, v24, v119, 2
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
	v_cmp_gt_i32_e64 s1, s60, v0
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
	buffer_store_b32 v62, v27, s[36:39], 0 offen
	buffer_store_b32 v63, v28, s[36:39], 0 offen
	v_cndmask_b32_e32 v0, 0x80000000, v0, vcc_lo
	s_clause 0x18
	buffer_store_b32 v64, v25, s[36:39], 0 offen
	buffer_store_b32 v49, v23, s[36:39], 0 offen
	buffer_store_b32 v50, v22, s[36:39], 0 offen
	buffer_store_b32 v51, v21, s[36:39], 0 offen
	buffer_store_b32 v52, v20, s[36:39], 0 offen
	buffer_store_b32 v53, v19, s[36:39], 0 offen
	buffer_store_b32 v54, v18, s[36:39], 0 offen
	buffer_store_b32 v55, v17, s[36:39], 0 offen
	buffer_store_b32 v56, v16, s[36:39], 0 offen
	buffer_store_b32 v41, v15, s[36:39], 0 offen
	buffer_store_b32 v42, v14, s[36:39], 0 offen
	buffer_store_b32 v43, v13, s[36:39], 0 offen
	buffer_store_b32 v44, v12, s[36:39], 0 offen
	buffer_store_b32 v45, v11, s[36:39], 0 offen
	buffer_store_b32 v46, v10, s[36:39], 0 offen
	buffer_store_b32 v47, v9, s[36:39], 0 offen
	buffer_store_b32 v48, v8, s[36:39], 0 offen
	buffer_store_b32 v33, v7, s[36:39], 0 offen
	buffer_store_b32 v34, v6, s[36:39], 0 offen
	buffer_store_b32 v35, v5, s[36:39], 0 offen
	buffer_store_b32 v36, v4, s[36:39], 0 offen
	buffer_store_b32 v37, v3, s[36:39], 0 offen
	buffer_store_b32 v38, v2, s[36:39], 0 offen
	buffer_store_b32 v39, v1, s[36:39], 0 offen
	buffer_store_b32 v40, v0, s[36:39], 0 offen
	.loc	1 60 5                          ; attention_backward.py:60:5
	s_endpgm
.Ltmp381:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_attention_bwd_dq_int4xint4_bool_runtime_outbfloat16_doutbfloat16_float32_d64_dv64_shaperuntime_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1
		.amdhsa_group_segment_fixed_size 0
		.amdhsa_private_segment_fixed_size 20
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
	.size	amd_strix_halo_gfx1151_attention_bwd_dq_int4xint4_bool_runtime_outbfloat16_doutbfloat16_float32_d64_dv64_shaperuntime_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1, .Lfunc_end0-amd_strix_halo_gfx1151_attention_bwd_dq_int4xint4_bool_runtime_outbfloat16_doutbfloat16_float32_d64_dv64_shaperuntime_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_attention_bwd_dq_int4xint4_bool_runtime_outbfloat16_doutbfloat16_float32_d64_dv64_shaperuntime_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.num_vgpr, 256
	.set amd_strix_halo_gfx1151_attention_bwd_dq_int4xint4_bool_runtime_outbfloat16_doutbfloat16_float32_d64_dv64_shaperuntime_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.num_agpr, 0
	.set amd_strix_halo_gfx1151_attention_bwd_dq_int4xint4_bool_runtime_outbfloat16_doutbfloat16_float32_d64_dv64_shaperuntime_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.numbered_sgpr, 87
	.set amd_strix_halo_gfx1151_attention_bwd_dq_int4xint4_bool_runtime_outbfloat16_doutbfloat16_float32_d64_dv64_shaperuntime_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_attention_bwd_dq_int4xint4_bool_runtime_outbfloat16_doutbfloat16_float32_d64_dv64_shaperuntime_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.private_seg_size, 20
	.set amd_strix_halo_gfx1151_attention_bwd_dq_int4xint4_bool_runtime_outbfloat16_doutbfloat16_float32_d64_dv64_shaperuntime_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.uses_vcc, 1
	.set amd_strix_halo_gfx1151_attention_bwd_dq_int4xint4_bool_runtime_outbfloat16_doutbfloat16_float32_d64_dv64_shaperuntime_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.uses_flat_scratch, 1
	.set amd_strix_halo_gfx1151_attention_bwd_dq_int4xint4_bool_runtime_outbfloat16_doutbfloat16_float32_d64_dv64_shaperuntime_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_attention_bwd_dq_int4xint4_bool_runtime_outbfloat16_doutbfloat16_float32_d64_dv64_shaperuntime_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.has_recursion, 0
	.set amd_strix_halo_gfx1151_attention_bwd_dq_int4xint4_bool_runtime_outbfloat16_doutbfloat16_float32_d64_dv64_shaperuntime_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 25980
; TotalNumSgprs: 89
; NumVgprs: 256
; ScratchSize: 20
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
	.quad	.Ltmp4-.Lfunc_begin0
	.quad	.Ltmp5-.Lfunc_begin0
	.quad	.Ltmp6-.Lfunc_begin0
	.quad	.Ltmp7-.Lfunc_begin0
	.quad	.Ltmp8-.Lfunc_begin0
	.quad	.Ltmp9-.Lfunc_begin0
	.quad	.Ltmp12-.Lfunc_begin0
	.quad	.Ltmp13-.Lfunc_begin0
	.quad	.Ltmp14-.Lfunc_begin0
	.quad	.Ltmp15-.Lfunc_begin0
	.quad	.Ltmp16-.Lfunc_begin0
	.quad	.Ltmp17-.Lfunc_begin0
	.quad	.Ltmp18-.Lfunc_begin0
	.quad	.Ltmp19-.Lfunc_begin0
	.quad	.Ltmp20-.Lfunc_begin0
	.quad	.Ltmp21-.Lfunc_begin0
	.quad	.Ltmp22-.Lfunc_begin0
	.quad	.Ltmp23-.Lfunc_begin0
	.quad	.Ltmp25-.Lfunc_begin0
	.quad	.Ltmp26-.Lfunc_begin0
	.quad	.Ltmp34-.Lfunc_begin0
	.quad	.Ltmp35-.Lfunc_begin0
	.quad	.Ltmp36-.Lfunc_begin0
	.quad	.Ltmp37-.Lfunc_begin0
	.quad	.Ltmp39-.Lfunc_begin0
	.quad	.Ltmp40-.Lfunc_begin0
	.quad	.Ltmp42-.Lfunc_begin0
	.quad	.Ltmp43-.Lfunc_begin0
	.quad	.Ltmp44-.Lfunc_begin0
	.quad	.Ltmp45-.Lfunc_begin0
	.quad	.Ltmp47-.Lfunc_begin0
	.quad	.Ltmp48-.Lfunc_begin0
	.quad	.Ltmp50-.Lfunc_begin0
	.quad	.Ltmp51-.Lfunc_begin0
	.quad	.Ltmp52-.Lfunc_begin0
	.quad	.Ltmp53-.Lfunc_begin0
	.quad	.Ltmp54-.Lfunc_begin0
	.quad	.Ltmp55-.Lfunc_begin0
	.quad	.Ltmp56-.Lfunc_begin0
	.quad	.Ltmp57-.Lfunc_begin0
	.quad	.Ltmp58-.Lfunc_begin0
	.quad	.Ltmp59-.Lfunc_begin0
	.quad	.Ltmp60-.Lfunc_begin0
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
	.quad	.Ltmp76-.Lfunc_begin0
	.quad	.Ltmp77-.Lfunc_begin0
	.quad	.Ltmp79-.Lfunc_begin0
	.quad	.Ltmp80-.Lfunc_begin0
	.quad	.Ltmp83-.Lfunc_begin0
	.quad	.Ltmp84-.Lfunc_begin0
	.quad	.Ltmp85-.Lfunc_begin0
	.quad	.Ltmp86-.Lfunc_begin0
	.quad	.Ltmp88-.Lfunc_begin0
	.quad	.Ltmp89-.Lfunc_begin0
	.quad	.Ltmp94-.Lfunc_begin0
	.quad	.Ltmp95-.Lfunc_begin0
	.quad	.Ltmp107-.Lfunc_begin0
	.quad	.Ltmp108-.Lfunc_begin0
	.quad	.Ltmp119-.Lfunc_begin0
	.quad	.Ltmp120-.Lfunc_begin0
	.quad	.Ltmp132-.Lfunc_begin0
	.quad	.Ltmp133-.Lfunc_begin0
	.quad	.Ltmp137-.Lfunc_begin0
	.quad	.Ltmp138-.Lfunc_begin0
	.quad	.Ltmp144-.Lfunc_begin0
	.quad	.Ltmp145-.Lfunc_begin0
	.quad	.Ltmp150-.Lfunc_begin0
	.quad	.Ltmp151-.Lfunc_begin0
	.quad	.Ltmp158-.Lfunc_begin0
	.quad	.Ltmp159-.Lfunc_begin0
	.quad	.Ltmp173-.Lfunc_begin0
	.quad	.Ltmp174-.Lfunc_begin0
	.quad	.Ltmp175-.Lfunc_begin0
	.quad	.Ltmp176-.Lfunc_begin0
	.quad	.Ltmp184-.Lfunc_begin0
	.quad	.Ltmp185-.Lfunc_begin0
	.quad	.Ltmp186-.Lfunc_begin0
	.quad	.Ltmp187-.Lfunc_begin0
	.quad	.Ltmp190-.Lfunc_begin0
	.quad	.Ltmp191-.Lfunc_begin0
	.quad	.Ltmp201-.Lfunc_begin0
	.quad	.Ltmp202-.Lfunc_begin0
	.quad	.Ltmp210-.Lfunc_begin0
	.quad	.Ltmp369-.Lfunc_begin0
	.quad	.Ltmp370-.Lfunc_begin0
	.quad	.Ltmp371-.Lfunc_begin0
	.quad	.Ltmp372-.Lfunc_begin0
	.quad	.Ltmp373-.Lfunc_begin0
	.quad	.Ltmp374-.Lfunc_begin0
	.quad	.Ltmp375-.Lfunc_begin0
	.quad	.Ltmp376-.Lfunc_begin0
	.quad	.Ltmp377-.Lfunc_begin0
	.quad	.Ltmp378-.Lfunc_begin0
	.quad	.Ltmp379-.Lfunc_begin0
	.quad	.Ltmp380-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges1:
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
	.quad	.Ltmp21-.Lfunc_begin0
	.quad	.Ltmp22-.Lfunc_begin0
	.quad	.Ltmp23-.Lfunc_begin0
	.quad	.Ltmp24-.Lfunc_begin0
	.quad	.Ltmp27-.Lfunc_begin0
	.quad	.Ltmp28-.Lfunc_begin0
	.quad	.Ltmp29-.Lfunc_begin0
	.quad	.Ltmp30-.Lfunc_begin0
	.quad	.Ltmp31-.Lfunc_begin0
	.quad	.Ltmp32-.Lfunc_begin0
	.quad	.Ltmp33-.Lfunc_begin0
	.quad	.Ltmp34-.Lfunc_begin0
	.quad	.Ltmp35-.Lfunc_begin0
	.quad	.Ltmp36-.Lfunc_begin0
	.quad	.Ltmp37-.Lfunc_begin0
	.quad	.Ltmp38-.Lfunc_begin0
	.quad	.Ltmp41-.Lfunc_begin0
	.quad	.Ltmp42-.Lfunc_begin0
	.quad	.Ltmp43-.Lfunc_begin0
	.quad	.Ltmp44-.Lfunc_begin0
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
	.quad	.Ltmp59-.Lfunc_begin0
	.quad	.Ltmp60-.Lfunc_begin0
	.quad	.Ltmp61-.Lfunc_begin0
	.quad	.Ltmp62-.Lfunc_begin0
	.quad	.Ltmp63-.Lfunc_begin0
	.quad	.Ltmp64-.Lfunc_begin0
	.quad	.Ltmp72-.Lfunc_begin0
	.quad	.Ltmp73-.Lfunc_begin0
	.quad	.Ltmp74-.Lfunc_begin0
	.quad	.Ltmp75-.Lfunc_begin0
	.quad	.Ltmp77-.Lfunc_begin0
	.quad	.Ltmp78-.Lfunc_begin0
	.quad	.Ltmp80-.Lfunc_begin0
	.quad	.Ltmp81-.Lfunc_begin0
	.quad	.Ltmp82-.Lfunc_begin0
	.quad	.Ltmp83-.Lfunc_begin0
	.quad	.Ltmp84-.Lfunc_begin0
	.quad	.Ltmp85-.Lfunc_begin0
	.quad	.Ltmp86-.Lfunc_begin0
	.quad	.Ltmp87-.Lfunc_begin0
	.quad	.Ltmp89-.Lfunc_begin0
	.quad	.Ltmp90-.Lfunc_begin0
	.quad	.Ltmp91-.Lfunc_begin0
	.quad	.Ltmp92-.Lfunc_begin0
	.quad	.Ltmp93-.Lfunc_begin0
	.quad	.Ltmp94-.Lfunc_begin0
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
	.quad	.Ltmp121-.Lfunc_begin0
	.quad	.Ltmp122-.Lfunc_begin0
	.quad	.Ltmp123-.Lfunc_begin0
	.quad	.Ltmp124-.Lfunc_begin0
	.quad	.Ltmp125-.Lfunc_begin0
	.quad	.Ltmp126-.Lfunc_begin0
	.quad	.Ltmp127-.Lfunc_begin0
	.quad	.Ltmp128-.Lfunc_begin0
	.quad	.Ltmp129-.Lfunc_begin0
	.quad	.Ltmp130-.Lfunc_begin0
	.quad	.Ltmp131-.Lfunc_begin0
	.quad	.Ltmp132-.Lfunc_begin0
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
	.quad	.Ltmp145-.Lfunc_begin0
	.quad	.Ltmp146-.Lfunc_begin0
	.quad	.Ltmp147-.Lfunc_begin0
	.quad	.Ltmp148-.Lfunc_begin0
	.quad	.Ltmp149-.Lfunc_begin0
	.quad	.Ltmp150-.Lfunc_begin0
	.quad	.Ltmp152-.Lfunc_begin0
	.quad	.Ltmp153-.Lfunc_begin0
	.quad	.Ltmp154-.Lfunc_begin0
	.quad	.Ltmp155-.Lfunc_begin0
	.quad	.Ltmp156-.Lfunc_begin0
	.quad	.Ltmp157-.Lfunc_begin0
	.quad	.Ltmp159-.Lfunc_begin0
	.quad	.Ltmp160-.Lfunc_begin0
	.quad	.Ltmp161-.Lfunc_begin0
	.quad	.Ltmp162-.Lfunc_begin0
	.quad	.Ltmp163-.Lfunc_begin0
	.quad	.Ltmp164-.Lfunc_begin0
	.quad	.Ltmp165-.Lfunc_begin0
	.quad	.Ltmp166-.Lfunc_begin0
	.quad	.Ltmp167-.Lfunc_begin0
	.quad	.Ltmp168-.Lfunc_begin0
	.quad	.Ltmp169-.Lfunc_begin0
	.quad	.Ltmp170-.Lfunc_begin0
	.quad	.Ltmp171-.Lfunc_begin0
	.quad	.Ltmp172-.Lfunc_begin0
	.quad	.Ltmp177-.Lfunc_begin0
	.quad	.Ltmp178-.Lfunc_begin0
	.quad	.Ltmp179-.Lfunc_begin0
	.quad	.Ltmp180-.Lfunc_begin0
	.quad	.Ltmp181-.Lfunc_begin0
	.quad	.Ltmp182-.Lfunc_begin0
	.quad	.Ltmp183-.Lfunc_begin0
	.quad	.Ltmp184-.Lfunc_begin0
	.quad	.Ltmp185-.Lfunc_begin0
	.quad	.Ltmp186-.Lfunc_begin0
	.quad	.Ltmp187-.Lfunc_begin0
	.quad	.Ltmp188-.Lfunc_begin0
	.quad	.Ltmp189-.Lfunc_begin0
	.quad	.Ltmp190-.Lfunc_begin0
	.quad	.Ltmp192-.Lfunc_begin0
	.quad	.Ltmp193-.Lfunc_begin0
	.quad	.Ltmp194-.Lfunc_begin0
	.quad	.Ltmp195-.Lfunc_begin0
	.quad	.Ltmp196-.Lfunc_begin0
	.quad	.Ltmp197-.Lfunc_begin0
	.quad	.Ltmp198-.Lfunc_begin0
	.quad	.Ltmp199-.Lfunc_begin0
	.quad	.Ltmp200-.Lfunc_begin0
	.quad	.Ltmp201-.Lfunc_begin0
	.quad	.Ltmp202-.Lfunc_begin0
	.quad	.Ltmp203-.Lfunc_begin0
	.quad	.Ltmp204-.Lfunc_begin0
	.quad	.Ltmp205-.Lfunc_begin0
	.quad	.Ltmp206-.Lfunc_begin0
	.quad	.Ltmp207-.Lfunc_begin0
	.quad	.Ltmp208-.Lfunc_begin0
	.quad	.Ltmp209-.Lfunc_begin0
	.quad	.Ltmp369-.Lfunc_begin0
	.quad	.Ltmp370-.Lfunc_begin0
	.quad	.Ltmp371-.Lfunc_begin0
	.quad	.Ltmp372-.Lfunc_begin0
	.quad	.Ltmp373-.Lfunc_begin0
	.quad	.Ltmp374-.Lfunc_begin0
	.quad	.Ltmp375-.Lfunc_begin0
	.quad	.Ltmp376-.Lfunc_begin0
	.quad	.Ltmp377-.Lfunc_begin0
	.quad	.Ltmp378-.Lfunc_begin0
	.quad	.Ltmp379-.Lfunc_begin0
	.quad	.Ltmp380-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges2:
	.quad	.Ltmp211-.Lfunc_begin0
	.quad	.Ltmp222-.Lfunc_begin0
	.quad	.Ltmp233-.Lfunc_begin0
	.quad	.Ltmp241-.Lfunc_begin0
	.quad	.Ltmp252-.Lfunc_begin0
	.quad	.Ltmp260-.Lfunc_begin0
	.quad	.Ltmp261-.Lfunc_begin0
	.quad	.Ltmp262-.Lfunc_begin0
	.quad	.Ltmp273-.Lfunc_begin0
	.quad	.Ltmp281-.Lfunc_begin0
	.quad	.Ltmp292-.Lfunc_begin0
	.quad	.Ltmp300-.Lfunc_begin0
	.quad	.Ltmp311-.Lfunc_begin0
	.quad	.Ltmp319-.Lfunc_begin0
	.quad	.Ltmp330-.Lfunc_begin0
	.quad	.Ltmp338-.Lfunc_begin0
	.quad	.Ltmp346-.Lfunc_begin0
	.quad	.Ltmp347-.Lfunc_begin0
	.quad	.Ltmp350-.Lfunc_begin0
	.quad	.Ltmp358-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges3:
	.quad	.Ltmp211-.Lfunc_begin0
	.quad	.Ltmp212-.Lfunc_begin0
	.quad	.Ltmp213-.Lfunc_begin0
	.quad	.Ltmp214-.Lfunc_begin0
	.quad	.Ltmp215-.Lfunc_begin0
	.quad	.Ltmp216-.Lfunc_begin0
	.quad	.Ltmp217-.Lfunc_begin0
	.quad	.Ltmp218-.Lfunc_begin0
	.quad	.Ltmp219-.Lfunc_begin0
	.quad	.Ltmp220-.Lfunc_begin0
	.quad	.Ltmp221-.Lfunc_begin0
	.quad	.Ltmp222-.Lfunc_begin0
	.quad	.Ltmp234-.Lfunc_begin0
	.quad	.Ltmp235-.Lfunc_begin0
	.quad	.Ltmp236-.Lfunc_begin0
	.quad	.Ltmp237-.Lfunc_begin0
	.quad	.Ltmp238-.Lfunc_begin0
	.quad	.Ltmp239-.Lfunc_begin0
	.quad	.Ltmp240-.Lfunc_begin0
	.quad	.Ltmp241-.Lfunc_begin0
	.quad	.Ltmp253-.Lfunc_begin0
	.quad	.Ltmp254-.Lfunc_begin0
	.quad	.Ltmp255-.Lfunc_begin0
	.quad	.Ltmp256-.Lfunc_begin0
	.quad	.Ltmp257-.Lfunc_begin0
	.quad	.Ltmp258-.Lfunc_begin0
	.quad	.Ltmp259-.Lfunc_begin0
	.quad	.Ltmp260-.Lfunc_begin0
	.quad	.Ltmp261-.Lfunc_begin0
	.quad	.Ltmp262-.Lfunc_begin0
	.quad	.Ltmp274-.Lfunc_begin0
	.quad	.Ltmp275-.Lfunc_begin0
	.quad	.Ltmp276-.Lfunc_begin0
	.quad	.Ltmp277-.Lfunc_begin0
	.quad	.Ltmp278-.Lfunc_begin0
	.quad	.Ltmp279-.Lfunc_begin0
	.quad	.Ltmp280-.Lfunc_begin0
	.quad	.Ltmp281-.Lfunc_begin0
	.quad	.Ltmp293-.Lfunc_begin0
	.quad	.Ltmp294-.Lfunc_begin0
	.quad	.Ltmp295-.Lfunc_begin0
	.quad	.Ltmp296-.Lfunc_begin0
	.quad	.Ltmp297-.Lfunc_begin0
	.quad	.Ltmp298-.Lfunc_begin0
	.quad	.Ltmp299-.Lfunc_begin0
	.quad	.Ltmp300-.Lfunc_begin0
	.quad	.Ltmp312-.Lfunc_begin0
	.quad	.Ltmp313-.Lfunc_begin0
	.quad	.Ltmp314-.Lfunc_begin0
	.quad	.Ltmp315-.Lfunc_begin0
	.quad	.Ltmp316-.Lfunc_begin0
	.quad	.Ltmp317-.Lfunc_begin0
	.quad	.Ltmp318-.Lfunc_begin0
	.quad	.Ltmp319-.Lfunc_begin0
	.quad	.Ltmp331-.Lfunc_begin0
	.quad	.Ltmp332-.Lfunc_begin0
	.quad	.Ltmp333-.Lfunc_begin0
	.quad	.Ltmp334-.Lfunc_begin0
	.quad	.Ltmp335-.Lfunc_begin0
	.quad	.Ltmp336-.Lfunc_begin0
	.quad	.Ltmp337-.Lfunc_begin0
	.quad	.Ltmp338-.Lfunc_begin0
	.quad	.Ltmp346-.Lfunc_begin0
	.quad	.Ltmp347-.Lfunc_begin0
	.quad	.Ltmp351-.Lfunc_begin0
	.quad	.Ltmp352-.Lfunc_begin0
	.quad	.Ltmp353-.Lfunc_begin0
	.quad	.Ltmp354-.Lfunc_begin0
	.quad	.Ltmp355-.Lfunc_begin0
	.quad	.Ltmp356-.Lfunc_begin0
	.quad	.Ltmp357-.Lfunc_begin0
	.quad	.Ltmp358-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges4:
	.quad	.Ltmp223-.Lfunc_begin0
	.quad	.Ltmp229-.Lfunc_begin0
	.quad	.Ltmp230-.Lfunc_begin0
	.quad	.Ltmp232-.Lfunc_begin0
	.quad	.Ltmp242-.Lfunc_begin0
	.quad	.Ltmp248-.Lfunc_begin0
	.quad	.Ltmp249-.Lfunc_begin0
	.quad	.Ltmp251-.Lfunc_begin0
	.quad	.Ltmp263-.Lfunc_begin0
	.quad	.Ltmp269-.Lfunc_begin0
	.quad	.Ltmp270-.Lfunc_begin0
	.quad	.Ltmp272-.Lfunc_begin0
	.quad	.Ltmp282-.Lfunc_begin0
	.quad	.Ltmp288-.Lfunc_begin0
	.quad	.Ltmp289-.Lfunc_begin0
	.quad	.Ltmp291-.Lfunc_begin0
	.quad	.Ltmp301-.Lfunc_begin0
	.quad	.Ltmp307-.Lfunc_begin0
	.quad	.Ltmp308-.Lfunc_begin0
	.quad	.Ltmp310-.Lfunc_begin0
	.quad	.Ltmp320-.Lfunc_begin0
	.quad	.Ltmp326-.Lfunc_begin0
	.quad	.Ltmp327-.Lfunc_begin0
	.quad	.Ltmp329-.Lfunc_begin0
	.quad	.Ltmp339-.Lfunc_begin0
	.quad	.Ltmp345-.Lfunc_begin0
	.quad	.Ltmp347-.Lfunc_begin0
	.quad	.Ltmp349-.Lfunc_begin0
	.quad	.Ltmp359-.Lfunc_begin0
	.quad	.Ltmp365-.Lfunc_begin0
	.quad	.Ltmp366-.Lfunc_begin0
	.quad	.Ltmp368-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges5:
	.quad	.Ltmp224-.Lfunc_begin0
	.quad	.Ltmp225-.Lfunc_begin0
	.quad	.Ltmp226-.Lfunc_begin0
	.quad	.Ltmp227-.Lfunc_begin0
	.quad	.Ltmp228-.Lfunc_begin0
	.quad	.Ltmp229-.Lfunc_begin0
	.quad	.Ltmp231-.Lfunc_begin0
	.quad	.Ltmp232-.Lfunc_begin0
	.quad	.Ltmp243-.Lfunc_begin0
	.quad	.Ltmp244-.Lfunc_begin0
	.quad	.Ltmp245-.Lfunc_begin0
	.quad	.Ltmp246-.Lfunc_begin0
	.quad	.Ltmp247-.Lfunc_begin0
	.quad	.Ltmp248-.Lfunc_begin0
	.quad	.Ltmp250-.Lfunc_begin0
	.quad	.Ltmp251-.Lfunc_begin0
	.quad	.Ltmp264-.Lfunc_begin0
	.quad	.Ltmp265-.Lfunc_begin0
	.quad	.Ltmp266-.Lfunc_begin0
	.quad	.Ltmp267-.Lfunc_begin0
	.quad	.Ltmp268-.Lfunc_begin0
	.quad	.Ltmp269-.Lfunc_begin0
	.quad	.Ltmp271-.Lfunc_begin0
	.quad	.Ltmp272-.Lfunc_begin0
	.quad	.Ltmp283-.Lfunc_begin0
	.quad	.Ltmp284-.Lfunc_begin0
	.quad	.Ltmp285-.Lfunc_begin0
	.quad	.Ltmp286-.Lfunc_begin0
	.quad	.Ltmp287-.Lfunc_begin0
	.quad	.Ltmp288-.Lfunc_begin0
	.quad	.Ltmp290-.Lfunc_begin0
	.quad	.Ltmp291-.Lfunc_begin0
	.quad	.Ltmp302-.Lfunc_begin0
	.quad	.Ltmp303-.Lfunc_begin0
	.quad	.Ltmp304-.Lfunc_begin0
	.quad	.Ltmp305-.Lfunc_begin0
	.quad	.Ltmp306-.Lfunc_begin0
	.quad	.Ltmp307-.Lfunc_begin0
	.quad	.Ltmp309-.Lfunc_begin0
	.quad	.Ltmp310-.Lfunc_begin0
	.quad	.Ltmp321-.Lfunc_begin0
	.quad	.Ltmp322-.Lfunc_begin0
	.quad	.Ltmp323-.Lfunc_begin0
	.quad	.Ltmp324-.Lfunc_begin0
	.quad	.Ltmp325-.Lfunc_begin0
	.quad	.Ltmp326-.Lfunc_begin0
	.quad	.Ltmp328-.Lfunc_begin0
	.quad	.Ltmp329-.Lfunc_begin0
	.quad	.Ltmp340-.Lfunc_begin0
	.quad	.Ltmp341-.Lfunc_begin0
	.quad	.Ltmp342-.Lfunc_begin0
	.quad	.Ltmp343-.Lfunc_begin0
	.quad	.Ltmp344-.Lfunc_begin0
	.quad	.Ltmp345-.Lfunc_begin0
	.quad	.Ltmp348-.Lfunc_begin0
	.quad	.Ltmp349-.Lfunc_begin0
	.quad	.Ltmp360-.Lfunc_begin0
	.quad	.Ltmp361-.Lfunc_begin0
	.quad	.Ltmp362-.Lfunc_begin0
	.quad	.Ltmp363-.Lfunc_begin0
	.quad	.Ltmp364-.Lfunc_begin0
	.quad	.Ltmp365-.Lfunc_begin0
	.quad	.Ltmp367-.Lfunc_begin0
	.quad	.Ltmp368-.Lfunc_begin0
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
	.asciz	"amd_strix_halo_gfx1151_attention_bwd_dq_int4xint4_bool_runtime_outbfloat16_doutbfloat16_float32_d64_dv64_shaperuntime_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1"                        ; string offset=97 ; amd_strix_halo_gfx1151_attention_bwd_dq_int4xint4_bool_runtime_outbfloat16_doutbfloat16_float32_d64_dv64_shaperuntime_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1
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
    .name:           amd_strix_halo_gfx1151_attention_bwd_dq_int4xint4_bool_runtime_outbfloat16_doutbfloat16_float32_d64_dv64_shaperuntime_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1
    .private_segment_fixed_size: 20
    .sgpr_count:     89
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_attention_bwd_dq_int4xint4_bool_runtime_outbfloat16_doutbfloat16_float32_d64_dv64_shaperuntime_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     256
    .vgpr_spill_count: 4
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
