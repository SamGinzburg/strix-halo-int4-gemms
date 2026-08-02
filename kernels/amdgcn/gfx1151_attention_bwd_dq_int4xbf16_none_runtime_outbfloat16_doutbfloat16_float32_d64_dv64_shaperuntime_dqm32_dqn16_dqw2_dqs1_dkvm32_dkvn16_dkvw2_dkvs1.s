	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_attention_bwd_dq_int4xbf16_none_runtime_outbfloat16_doutbfloat16_float32_d64_dv64_shaperuntime_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1                          ; -- Begin function amd_strix_halo_gfx1151_attention_bwd_dq_int4xbf16_none_runtime_outbfloat16_doutbfloat16_float32_d64_dv64_shaperuntime_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1
	.p2align	8
	.type	amd_strix_halo_gfx1151_attention_bwd_dq_int4xbf16_none_runtime_outbfloat16_doutbfloat16_float32_d64_dv64_shaperuntime_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1,@function
amd_strix_halo_gfx1151_attention_bwd_dq_int4xbf16_none_runtime_outbfloat16_doutbfloat16_float32_d64_dv64_shaperuntime_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1:                                 ; @amd_strix_halo_gfx1151_attention_bwd_dq_int4xbf16_none_runtime_outbfloat16_doutbfloat16_float32_d64_dv64_shaperuntime_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1
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
	v_lshrrev_b32_e32 v95, 5, v0
	v_and_b32_e32 v94, 31, v0
	s_clause 0x1
	s_load_b64 s[36:37], s[0:1], 0x0
	s_load_b64 s[24:25], s[0:1], 0x18
	.loc	1 134 28                        ; attention_backward.py:134:28
	v_xor_b32_e32 v20, 0x110, v0
	v_xor_b32_e32 v21, 0x198, v0
	.loc	1 124 31                        ; attention_backward.py:124:31
	v_or_b32_e32 v96, 2, v95
	v_or_b32_e32 v97, 4, v95
	v_or_b32_e32 v98, 6, v95
	v_or_b32_e32 v99, 8, v95
	v_or_b32_e32 v100, 10, v95
	v_or_b32_e32 v101, 12, v95
	v_or_b32_e32 v102, 14, v95
	.loc	1 134 28                        ; attention_backward.py:134:28
	v_add_nc_u32_e32 v109, 0, v21
	s_load_b128 s[40:43], s[0:1], 0x38
	v_lshlrev_b32_e32 v110, 1, v0
	v_add_nc_u32_e32 v106, 0, v0
	s_waitcnt lgkmcnt(0)
	s_and_b32 s4, 1, s20
	s_bitcmp1_b32 s20, 8
	.loc	1 133 26                        ; attention_backward.py:133:26
	s_mul_i32 s16, s3, s30
	s_cselect_b32 s18, -1, 0
	s_cmp_eq_u32 s4, 1
	.loc	1 135 17                        ; attention_backward.py:135:17
	v_mad_u64_u32 v[81:82], null, s34, v95, v[94:95]
	s_cselect_b32 s19, -1, 0
	.loc	1 123 34                        ; attention_backward.py:123:34
	s_abs_i32 s4, s28
	.loc	1 121 23                        ; attention_backward.py:121:23
	s_abs_i32 s7, s3
	s_cvt_f32_u32 s5, s4
	s_sub_i32 s6, 0, s4
	.loc	1 119 19                        ; attention_backward.py:119:19
	s_lshl_b32 s46, s2, 5
	.loc	1 135 17                        ; attention_backward.py:135:17
	v_mad_u64_u32 v[82:83], null, s34, 6, v[81:82]
	.loc	1 121 23                        ; attention_backward.py:121:23
	v_rcp_iflag_f32_e32 v1, s5
	.loc	1 124 21                        ; attention_backward.py:124:21
	v_or_b32_e32 v2, s46, v96
	v_or_b32_e32 v3, s46, v97
	v_or_b32_e32 v4, s46, v98
	v_or_b32_e32 v5, s46, v99
	.loc	1 135 17                        ; attention_backward.py:135:17
	v_lshl_add_u32 v103, s34, 1, v81
	.loc	1 124 21                        ; attention_backward.py:124:21
	v_or_b32_e32 v7, s46, v101
	v_or_b32_e32 v8, s46, v102
	.loc	1 135 17                        ; attention_backward.py:135:17
	v_lshl_add_u32 v104, s34, 2, v81
	v_mad_u64_u32 v[83:84], null, s34, 10, v[81:82]
	.loc	1 121 23                        ; attention_backward.py:121:23
	v_readfirstlane_b32 s5, v1
	.loc	1 135 17                        ; attention_backward.py:135:17
	v_lshl_add_u32 v105, s34, 3, v81
	v_mad_u64_u32 v[84:85], null, s34, 12, v[81:82]
	v_mad_u64_u32 v[85:86], null, s34, 14, v[81:82]
	.loc	1 121 23                        ; attention_backward.py:121:23
	s_mul_f32 s5, s5, 0x4f7ffffe
	.loc	1 171 28                        ; attention_backward.py:171:28
	v_xad_u32 v72, 0x120, v110, 0
	v_xad_u32 v73, 0x1b0, v110, 0
	v_xad_u32 v74, 0x240, v110, 0
	.loc	1 121 23                        ; attention_backward.py:121:23
	s_cvt_u32_f32 s5, s5
	.loc	1 171 28                        ; attention_backward.py:171:28
	v_xad_u32 v75, 0x2d0, v110, 0
	v_xad_u32 v76, 0x360, v110, 0
	v_xad_u32 v77, 0x3f0, v110, 0
	.loc	1 121 23                        ; attention_backward.py:121:23
	s_mul_i32 s6, s6, s5
	.loc	1 171 28                        ; attention_backward.py:171:28
	v_xad_u32 v78, 0x90, v110, 0
	.loc	1 121 23                        ; attention_backward.py:121:23
	s_mul_hi_u32 s6, s5, s6
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_add_i32 s5, s5, s6
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
	s_sub_i32 s47, s7, s5
	.loc	1 123 34                        ; attention_backward.py:123:34
	s_xor_b32 s10, s28, s29
	v_rcp_iflag_f32_e32 v1, s2
	.loc	1 133 27                        ; attention_backward.py:133:27
	s_mul_i32 s7, s47, s28
	.loc	1 123 34                        ; attention_backward.py:123:34
	s_ashr_i32 s10, s10, 31
	.loc	1 122 22                        ; attention_backward.py:122:22
	s_sub_i32 s50, s3, s7
	.loc	1 139 44                        ; attention_backward.py:139:44
	v_cmp_gt_i32_e64 s2, s34, v94
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 123 34                        ; attention_backward.py:123:34
	v_readfirstlane_b32 s8, v1
	.loc	1 124 31                        ; attention_backward.py:124:31
	v_or_b32_e32 v1, s46, v95
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
	s_abs_i32 s48, s50
	.loc	1 123 34                        ; attention_backward.py:123:34
	s_xor_b32 s3, s3, s10
	.loc	1 124 21 is_stmt 1              ; attention_backward.py:124:21
	s_or_b32 s4, s46, 1
	.loc	1 123 34                        ; attention_backward.py:123:34
	s_sub_i32 s51, s3, s10
	.loc	1 124 21                        ; attention_backward.py:124:21
	s_or_b32 s5, s46, 2
	.loc	1 123 19                        ; attention_backward.py:123:19
	s_abs_i32 s49, s51
	.loc	1 124 21                        ; attention_backward.py:124:21
	s_or_b32 s6, s46, 3
	.loc	1 123 19                        ; attention_backward.py:123:19
	s_cvt_f32_u32 s11, s49
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
	s_or_b32 s17, s46, 14
	s_or_b32 s27, s46, 15
	.loc	1 123 19                        ; attention_backward.py:123:19
	v_readfirstlane_b32 s26, v6
	.loc	1 124 21                        ; attention_backward.py:124:21
	s_or_b32 s28, s46, 16
	s_or_b32 s38, s46, 17
	s_or_b32 s39, s46, 18
	s_or_b32 s57, s46, 19
	.loc	1 123 19                        ; attention_backward.py:123:19
	s_mul_f32 s26, s26, 0x4f7ffffe
	.loc	1 124 21                        ; attention_backward.py:124:21
	s_or_b32 s58, s46, 20
	s_or_b32 s60, s46, 21
	s_or_b32 s62, s46, 22
	.loc	1 123 19                        ; attention_backward.py:123:19
	s_cvt_u32_f32 s44, s26
	s_sub_i32 s26, 0, s49
	.loc	1 124 21                        ; attention_backward.py:124:21
	s_or_b32 s64, s46, 23
	s_or_b32 s66, s46, 24
	.loc	1 123 19                        ; attention_backward.py:123:19
	s_mul_i32 s26, s26, s44
	.loc	1 124 21                        ; attention_backward.py:124:21
	s_or_b32 s68, s46, 25
	.loc	1 123 19                        ; attention_backward.py:123:19
	s_mul_hi_u32 s26, s44, s26
	.loc	1 124 21                        ; attention_backward.py:124:21
	s_or_b32 s80, s46, 26
	s_or_b32 s81, s46, 27
	s_or_b32 s82, s46, 28
	s_or_b32 s83, s46, 29
	s_or_b32 s84, s46, 30
	s_or_b32 s85, s46, 31
	.loc	1 123 19                        ; attention_backward.py:123:19
	s_add_i32 s44, s44, s26
	.loc	1 128 21                        ; attention_backward.py:128:21
	s_cmp_lt_i32 s46, s30
	.loc	1 124 21                        ; attention_backward.py:124:21
	v_or_b32_e32 v6, s46, v100
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
	s_cselect_b32 s56, -1, 0
	s_cmp_lt_i32 s10, s30
	v_cmp_gt_i32_e64 s10, s30, v9
	s_cselect_b32 s55, -1, 0
	s_cmp_lt_i32 s12, s30
	v_cmp_gt_i32_e64 s12, s30, v11
	s_cselect_b32 s54, -1, 0
	s_cmp_lt_i32 s13, s30
	v_cmp_gt_i32_e64 s13, s30, v12
	s_cselect_b32 s53, -1, 0
	s_cmp_lt_i32 s14, s30
	v_cmp_gt_i32_e64 s14, s30, v13
	s_cselect_b32 s52, -1, 0
	s_cmp_lt_i32 s11, s30
	v_cmp_gt_i32_e64 s11, s30, v10
	s_cselect_b32 s45, -1, 0
	s_cmp_lt_i32 s15, s30
	v_cmp_gt_i32_e64 s15, s30, v14
	s_cselect_b32 s33, -1, 0
	s_cmp_lt_i32 s17, s30
	v_cmp_gt_i32_e64 s17, s30, v16
	s_cselect_b32 s26, -1, 0
	s_cmp_lt_i32 s27, s30
	s_cselect_b32 s27, -1, 0
	s_cmp_lt_i32 s28, s30
	s_cselect_b32 s78, -1, 0
	s_cmp_lt_i32 s38, s30
	s_cselect_b32 s77, -1, 0
	s_cmp_lt_i32 s39, s30
	s_mov_b32 s39, 0x31027000
	s_cselect_b32 s76, -1, 0
	s_cmp_lt_i32 s57, s30
	s_cselect_b32 s75, -1, 0
	s_cmp_lt_i32 s58, s30
	s_cselect_b32 s74, -1, 0
	s_cmp_lt_i32 s60, s30
	s_cselect_b32 s73, -1, 0
	s_cmp_lt_i32 s62, s30
	s_cselect_b32 s72, -1, 0
	s_cmp_lt_i32 s64, s30
	s_cselect_b32 s71, -1, 0
	s_cmp_lt_i32 s66, s30
	s_cselect_b32 s69, -1, 0
	s_cmp_lt_i32 s68, s30
	s_cselect_b32 s68, -1, 0
	s_cmp_lt_i32 s80, s30
	s_cselect_b32 s66, -1, 0
	s_cmp_lt_i32 s81, s30
	s_cselect_b32 s64, -1, 0
	s_cmp_lt_i32 s82, s30
	s_cselect_b32 s62, -1, 0
	s_cmp_lt_i32 s83, s30
	s_cselect_b32 s60, -1, 0
	s_cmp_lt_i32 s84, s30
	s_cselect_b32 s57, -1, 0
	s_cmp_lt_i32 s85, s30
	s_cselect_b32 s58, -1, 0
	.loc	1 135 17                        ; attention_backward.py:135:17
	s_add_i32 s28, s16, s46
	.loc	1 139 22                        ; attention_backward.py:139:22
	s_and_b32 vcc_lo, vcc_lo, s2
	.loc	1 135 17                        ; attention_backward.py:135:17
	s_mul_i32 s38, s28, s34
	.loc	1 128 21                        ; attention_backward.py:128:21
	v_cmp_gt_i32_e64 s16, s30, v15
	.loc	1 135 17                        ; attention_backward.py:135:17
	v_add_nc_u32_e32 v1, s38, v81
	v_add_nc_u32_e32 v10, s38, v103
	v_add_nc_u32_e32 v11, s38, v104
	v_add_nc_u32_e32 v12, s38, v82
	v_add_nc_u32_e32 v13, s38, v105
	v_mad_u64_u32 v[2:3], null, s34, 18, v[1:2]
	v_lshl_add_u32 v17, s34, 4, v1
	v_add_nc_u32_e32 v14, s38, v83
	v_add_nc_u32_e32 v15, s38, v84
	v_add_nc_u32_e32 v16, s38, v85
	.loc	1 134 28                        ; attention_backward.py:134:28
	s_and_b32 s37, s37, 0xffff
	s_mov_b32 s38, 0x7ffffffe
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
	.loc	1 142 31                        ; attention_backward.py:142:31
	s_and_b32 s25, s25, 0xffff
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
	buffer_load_u8 v4, v4, s[36:39], 0 offen
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
	v_mad_u64_u32 v[1:2], null, s28, s35, v[0:1]
	.loc	1 134 28                        ; attention_backward.py:134:28
	v_xor_b32_e32 v2, 0x88, v0
	.loc	1 168 18                        ; attention_backward.py:168:18
	s_and_b32 vcc_lo, s79, s3
	.loc	1 134 28                        ; attention_backward.py:134:28
	v_add_nc_u32_e32 v108, 0, v20
	.loc	1 166 23                        ; attention_backward.py:166:23
	s_and_b32 s37, s41, 0xffff
	s_mov_b32 s36, s40
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 167 13                        ; attention_backward.py:167:13
	v_add_nc_u32_e32 v22, s35, v1
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_lshlrev_b32_e32 v20, 1, v22
	.loc	1 134 28                        ; attention_backward.py:134:28
	v_add_nc_u32_e32 v107, 0, v2
	.loc	1 167 13                        ; attention_backward.py:167:13
	v_mad_u64_u32 v[2:3], null, s35, 17, v[1:2]
	v_add_nc_u32_e32 v3, s35, v22
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_add_nc_u32_e32 v22, s35, v3
	v_add_nc_u32_e32 v21, s35, v2
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_lshlrev_b32_e32 v3, 1, v3
	v_lshlrev_b32_e32 v2, 1, v2
	v_lshlrev_b32_e32 v1, 1, v1
	s_delay_alu instid0(VALU_DEP_1)
	v_cndmask_b32_e32 v35, 0x80000000, v1, vcc_lo
	v_lshl_add_u32 v1, s35, 5, v1
	.loc	1 168 18                        ; attention_backward.py:168:18
	s_and_b32 vcc_lo, s70, s3
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_cndmask_b32_e32 v36, 0x80000000, v20, vcc_lo
	.loc	1 168 18                        ; attention_backward.py:168:18
	s_and_b32 vcc_lo, s78, s3
	.loc	1 167 13                        ; attention_backward.py:167:13
	v_add_nc_u32_e32 v20, s35, v22
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_cndmask_b32_e32 v41, 0x80000000, v1, vcc_lo
	.loc	1 168 18                        ; attention_backward.py:168:18
	s_and_b32 vcc_lo, s77, s3
	.loc	1 167 13                        ; attention_backward.py:167:13
	v_add_nc_u32_e32 v1, s35, v21
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_cndmask_b32_e32 v42, 0x80000000, v2, vcc_lo
	v_lshlrev_b32_e32 v2, 1, v21
	.loc	1 168 18                        ; attention_backward.py:168:18
	s_and_b32 vcc_lo, s67, s3
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_cndmask_b32_e32 v39, 0x80000000, v3, vcc_lo
	v_lshlrev_b32_e32 v3, 1, v22
	.loc	1 168 18                        ; attention_backward.py:168:18
	s_and_b32 vcc_lo, s76, s3
	.loc	1 167 13                        ; attention_backward.py:167:13
	v_add_nc_u32_e32 v21, s35, v1
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_lshlrev_b32_e32 v1, 1, v1
	v_cndmask_b32_e32 v45, 0x80000000, v2, vcc_lo
	.loc	1 168 18                        ; attention_backward.py:168:18
	s_and_b32 vcc_lo, s65, s3
	.loc	1 167 13                        ; attention_backward.py:167:13
	v_add_nc_u32_e32 v2, s35, v20
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_dual_cndmask_b32 v40, 0x80000000, v3 :: v_dual_lshlrev_b32 v3, 1, v20
	.loc	1 168 18                        ; attention_backward.py:168:18
	s_and_b32 vcc_lo, s75, s3
	.loc	1 167 13                        ; attention_backward.py:167:13
	v_add_nc_u32_e32 v20, s35, v21
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_cndmask_b32_e32 v46, 0x80000000, v1, vcc_lo
	v_lshlrev_b32_e32 v1, 1, v21
	.loc	1 168 18                        ; attention_backward.py:168:18
	s_and_b32 vcc_lo, s63, s3
	.loc	1 167 13                        ; attention_backward.py:167:13
	v_add_nc_u32_e32 v21, s35, v2
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_cndmask_b32_e32 v47, 0x80000000, v3, vcc_lo
	.loc	1 168 18                        ; attention_backward.py:168:18
	s_and_b32 vcc_lo, s74, s3
	.loc	1 167 13                        ; attention_backward.py:167:13
	v_add_nc_u32_e32 v3, s35, v20
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_dual_cndmask_b32 v48, 0x80000000, v1 :: v_dual_lshlrev_b32 v1, 1, v20
	v_lshlrev_b32_e32 v2, 1, v2
	.loc	1 168 18                        ; attention_backward.py:168:18
	s_and_b32 vcc_lo, s61, s3
	.loc	1 167 13                        ; attention_backward.py:167:13
	v_add_nc_u32_e32 v20, s35, v21
	.loc	1 134 28                        ; attention_backward.py:134:28
	s_waitcnt vmcnt(15)
	ds_store_b8 v106, v14
	s_waitcnt vmcnt(14)
	ds_store_b8 v106, v9 offset:64
	s_waitcnt vmcnt(9)
	ds_store_b8 v106, v15 offset:512
	s_waitcnt vmcnt(8)
	ds_store_b8 v106, v17 offset:576
	ds_store_b8 v107, v10
	ds_store_b8 v107, v11 offset:64
	s_waitcnt vmcnt(7)
	ds_store_b8 v107, v18 offset:512
	s_waitcnt vmcnt(6)
	ds_store_b8 v107, v4 offset:576
	ds_store_b8 v108, v12
	ds_store_b8 v108, v13 offset:64
	s_waitcnt vmcnt(5)
	ds_store_b8 v108, v7 offset:512
	s_waitcnt vmcnt(4)
	ds_store_b8 v108, v8 offset:576
	s_waitcnt vmcnt(3)
	ds_store_b8 v109, v19
	s_waitcnt vmcnt(2)
	ds_store_b8 v109, v16 offset:64
	s_waitcnt vmcnt(1)
	ds_store_b8 v109, v5 offset:512
	s_waitcnt vmcnt(0)
	ds_store_b8 v109, v6 offset:576
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_dual_cndmask_b32 v49, 0x80000000, v2 :: v_dual_lshlrev_b32 v2, 1, v21
	.loc	1 168 18                        ; attention_backward.py:168:18
	s_and_b32 vcc_lo, s73, s3
	.loc	1 167 13                        ; attention_backward.py:167:13
	v_add_nc_u32_e32 v21, s35, v3
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_cndmask_b32_e32 v51, 0x80000000, v1, vcc_lo
	v_lshlrev_b32_e32 v1, 1, v3
	.loc	1 168 18                        ; attention_backward.py:168:18
	s_and_b32 vcc_lo, s59, s3
	.loc	1 167 13                        ; attention_backward.py:167:13
	v_add_nc_u32_e32 v3, s35, v20
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_dual_cndmask_b32 v55, 0x80000000, v2 :: v_dual_lshlrev_b32 v2, 1, v20
	.loc	1 168 18                        ; attention_backward.py:168:18
	s_and_b32 vcc_lo, s72, s3
	.loc	1 167 13                        ; attention_backward.py:167:13
	v_add_nc_u32_e32 v20, s35, v21
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_cndmask_b32_e32 v61, 0x80000000, v1, vcc_lo
	v_lshlrev_b32_e32 v1, 1, v21
	.loc	1 168 18                        ; attention_backward.py:168:18
	s_and_b32 vcc_lo, s56, s3
	.loc	1 167 13                        ; attention_backward.py:167:13
	v_add_nc_u32_e32 v21, s35, v3
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_dual_cndmask_b32 v63, 0x80000000, v2 :: v_dual_lshlrev_b32 v2, 1, v3
	.loc	1 168 18                        ; attention_backward.py:168:18
	s_and_b32 vcc_lo, s71, s3
	.loc	1 167 13                        ; attention_backward.py:167:13
	v_add_nc_u32_e32 v3, s35, v20
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_cndmask_b32_e32 v65, 0x80000000, v1, vcc_lo
	v_lshlrev_b32_e32 v1, 1, v20
	.loc	1 168 18                        ; attention_backward.py:168:18
	s_and_b32 vcc_lo, s55, s3
	.loc	1 167 13                        ; attention_backward.py:167:13
	v_add_nc_u32_e32 v20, s35, v21
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_dual_cndmask_b32 v43, 0x80000000, v2 :: v_dual_lshlrev_b32 v2, 1, v21
	.loc	1 168 18                        ; attention_backward.py:168:18
	s_and_b32 vcc_lo, s69, s3
	.loc	1 167 13                        ; attention_backward.py:167:13
	v_add_nc_u32_e32 v21, s35, v3
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_dual_cndmask_b32 v66, 0x80000000, v1 :: v_dual_lshlrev_b32 v1, 1, v3
	.loc	1 168 18                        ; attention_backward.py:168:18
	s_and_b32 vcc_lo, s54, s3
	.loc	1 167 13                        ; attention_backward.py:167:13
	v_add_nc_u32_e32 v3, s35, v20
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_cndmask_b32_e32 v44, 0x80000000, v2, vcc_lo
	v_lshlrev_b32_e32 v2, 1, v20
	.loc	1 168 18                        ; attention_backward.py:168:18
	s_and_b32 vcc_lo, s68, s3
	.loc	1 167 13                        ; attention_backward.py:167:13
	v_add_nc_u32_e32 v20, s35, v21
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_cndmask_b32_e32 v69, 0x80000000, v1, vcc_lo
	v_lshlrev_b32_e32 v1, 1, v21
	.loc	1 168 18                        ; attention_backward.py:168:18
	s_and_b32 vcc_lo, s53, s3
	.loc	1 167 13                        ; attention_backward.py:167:13
	v_add_nc_u32_e32 v21, s35, v3
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_cndmask_b32_e32 v50, 0x80000000, v2, vcc_lo
	v_lshlrev_b32_e32 v2, 1, v3
	.loc	1 168 18                        ; attention_backward.py:168:18
	s_and_b32 vcc_lo, s66, s3
	.loc	1 167 13                        ; attention_backward.py:167:13
	v_add_nc_u32_e32 v3, s35, v20
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_dual_cndmask_b32 v52, 0x80000000, v1 :: v_dual_lshlrev_b32 v1, 1, v20
	.loc	1 168 18                        ; attention_backward.py:168:18
	s_and_b32 vcc_lo, s52, s3
	.loc	1 167 13                        ; attention_backward.py:167:13
	v_add_nc_u32_e32 v20, s35, v21
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_dual_cndmask_b32 v53, 0x80000000, v2 :: v_dual_lshlrev_b32 v2, 1, v21
	.loc	1 168 18                        ; attention_backward.py:168:18
	s_and_b32 vcc_lo, s64, s3
	.loc	1 167 13                        ; attention_backward.py:167:13
	v_add_nc_u32_e32 v21, s35, v3
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_dual_cndmask_b32 v54, 0x80000000, v1 :: v_dual_lshlrev_b32 v1, 1, v3
	.loc	1 168 18                        ; attention_backward.py:168:18
	s_and_b32 vcc_lo, s45, s3
	.loc	1 167 13                        ; attention_backward.py:167:13
	v_add_nc_u32_e32 v3, s35, v20
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_cndmask_b32_e32 v58, 0x80000000, v2, vcc_lo
	v_lshlrev_b32_e32 v2, 1, v20
	.loc	1 168 18                        ; attention_backward.py:168:18
	s_and_b32 vcc_lo, s62, s3
	.loc	1 167 13                        ; attention_backward.py:167:13
	v_add_nc_u32_e32 v20, s35, v21
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_cndmask_b32_e32 v59, 0x80000000, v1, vcc_lo
	v_lshlrev_b32_e32 v1, 1, v21
	.loc	1 168 18                        ; attention_backward.py:168:18
	s_and_b32 vcc_lo, s33, s3
	.loc	1 134 28                        ; attention_backward.py:134:28
	s_waitcnt lgkmcnt(0)
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_cndmask_b32_e32 v62, 0x80000000, v2, vcc_lo
	v_lshlrev_b32_e32 v2, 1, v3
	.loc	1 168 18                        ; attention_backward.py:168:18
	s_and_b32 vcc_lo, s60, s3
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_add_lshl_u32 v3, v3, s35, 1
	v_dual_cndmask_b32 v64, 0x80000000, v1 :: v_dual_lshlrev_b32 v1, 1, v20
	.loc	1 168 18                        ; attention_backward.py:168:18
	s_and_b32 vcc_lo, s26, s3
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_add_lshl_u32 v20, v20, s35, 1
	v_cndmask_b32_e32 v67, 0x80000000, v2, vcc_lo
	.loc	1 168 18                        ; attention_backward.py:168:18
	s_and_b32 vcc_lo, s27, s3
	.loc	1 134 28                        ; attention_backward.py:134:28
	s_barrier
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_cndmask_b32_e32 v68, 0x80000000, v3, vcc_lo
	.loc	1 168 18                        ; attention_backward.py:168:18
	s_and_b32 vcc_lo, s57, s3
	.loc	1 142 31                        ; attention_backward.py:142:31
	s_mov_b32 s26, s38
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_cndmask_b32_e32 v70, 0x80000000, v1, vcc_lo
	.loc	1 168 18                        ; attention_backward.py:168:18
	s_and_b32 vcc_lo, s58, s3
	.loc	1 142 31                        ; attention_backward.py:142:31
	s_mov_b32 s27, s39
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_cndmask_b32_e32 v71, 0x80000000, v20, vcc_lo
	s_clause 0x1f
	buffer_load_u16 v15, v35, s[36:39], 0 offen
	buffer_load_u16 v16, v36, s[36:39], 0 offen
	buffer_load_u16 v17, v39, s[36:39], 0 offen
	buffer_load_u16 v18, v40, s[36:39], 0 offen
	buffer_load_u16 v10, v47, s[36:39], 0 offen
	buffer_load_u16 v11, v49, s[36:39], 0 offen
	buffer_load_u16 v12, v55, s[36:39], 0 offen
	buffer_load_u16 v13, v63, s[36:39], 0 offen
	buffer_load_u16 v19, v43, s[36:39], 0 offen
	buffer_load_u16 v20, v44, s[36:39], 0 offen
	buffer_load_u16 v21, v50, s[36:39], 0 offen
	buffer_load_u16 v22, v53, s[36:39], 0 offen
	buffer_load_u16 v27, v41, s[36:39], 0 offen
	buffer_load_u16 v28, v42, s[36:39], 0 offen
	buffer_load_u16 v29, v45, s[36:39], 0 offen
	buffer_load_u16 v30, v46, s[36:39], 0 offen
	buffer_load_u16 v31, v66, s[36:39], 0 offen
	buffer_load_u16 v32, v69, s[36:39], 0 offen
	buffer_load_u16 v37, v52, s[36:39], 0 offen
	buffer_load_u16 v38, v54, s[36:39], 0 offen
	buffer_load_u16 v23, v58, s[36:39], 0 offen
	buffer_load_u16 v24, v62, s[36:39], 0 offen
	buffer_load_u16 v25, v67, s[36:39], 0 offen
	buffer_load_u16 v26, v68, s[36:39], 0 offen
	buffer_load_u16 v8, v48, s[36:39], 0 offen
	buffer_load_u16 v7, v51, s[36:39], 0 offen
	buffer_load_u16 v6, v61, s[36:39], 0 offen
	buffer_load_u16 v5, v65, s[36:39], 0 offen
	buffer_load_u16 v2, v59, s[36:39], 0 offen
	buffer_load_u16 v1, v64, s[36:39], 0 offen
	buffer_load_u16 v34, v70, s[36:39], 0 offen
	buffer_load_u16 v33, v71, s[36:39], 0 offen
	.loc	1 171 28                        ; attention_backward.py:171:28
	s_and_b32 s37, s43, 0xffff
	s_mov_b32 s36, s42
	s_clause 0x1f
	buffer_load_u16 v4, v35, s[36:39], 0 offen
	buffer_load_u16 v3, v36, s[36:39], 0 offen
	buffer_load_u16 v14, v39, s[36:39], 0 offen
	buffer_load_u16 v9, v40, s[36:39], 0 offen
	buffer_load_u16 v40, v43, s[36:39], 0 offen
	buffer_load_u16 v39, v44, s[36:39], 0 offen
	buffer_load_u16 v44, v50, s[36:39], 0 offen
	buffer_load_u16 v43, v53, s[36:39], 0 offen
	buffer_load_u16 v57, v45, s[36:39], 0 offen
	buffer_load_u16 v52, v52, s[36:39], 0 offen
	buffer_load_u16 v60, v46, s[36:39], 0 offen
	buffer_load_u16 v56, v54, s[36:39], 0 offen
	buffer_load_u16 v53, v47, s[36:39], 0 offen
	buffer_load_u16 v50, v58, s[36:39], 0 offen
	buffer_load_u16 v48, v48, s[36:39], 0 offen
	buffer_load_u16 v47, v59, s[36:39], 0 offen
	buffer_load_u16 v58, v49, s[36:39], 0 offen
	buffer_load_u16 v54, v62, s[36:39], 0 offen
	buffer_load_u16 v51, v51, s[36:39], 0 offen
	buffer_load_u16 v49, v64, s[36:39], 0 offen
	buffer_load_u16 v62, v55, s[36:39], 0 offen
	buffer_load_u16 v59, v67, s[36:39], 0 offen
	buffer_load_u16 v55, v61, s[36:39], 0 offen
	buffer_load_u16 v36, v70, s[36:39], 0 offen
	buffer_load_u16 v64, v63, s[36:39], 0 offen
	buffer_load_u16 v63, v68, s[36:39], 0 offen
	buffer_load_u16 v61, v65, s[36:39], 0 offen
	buffer_load_u16 v35, v71, s[36:39], 0 offen
	buffer_load_u16 v67, v41, s[36:39], 0 offen
	buffer_load_u16 v68, v42, s[36:39], 0 offen
	buffer_load_u16 v65, v69, s[36:39], 0 offen
	buffer_load_u16 v66, v66, s[36:39], 0 offen
.Ltmp1:
	.file	2 "<repo>/.venv/lib/python3.12/site-packages/triton/language" "standard.py"
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_lshlrev_b32_e32 v45, 6, v0
.Ltmp2:
	.loc	1 171 28                        ; attention_backward.py:171:28
	v_lshlrev_b32_e32 v41, 4, v0
	.loc	1 134 28                        ; attention_backward.py:134:28
	v_and_b32_e32 v42, 24, v110
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp3:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_and_b32_e32 v45, 64, v45
	v_add_nc_u32_e32 v113, 0, v45
.Ltmp4:
	.loc	1 171 28                        ; attention_backward.py:171:28
	s_waitcnt vmcnt(31)
	v_lshlrev_b32_e32 v150, 16, v4
	s_waitcnt vmcnt(30)
	v_lshlrev_b32_e32 v151, 16, v3
	v_and_b32_e32 v46, 0x70, v41
	s_waitcnt vmcnt(29)
	v_lshlrev_b32_e32 v152, 16, v14
	s_waitcnt vmcnt(27)
	v_lshlrev_b32_e32 v154, 16, v40
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_lshlrev_b32_e32 v123, 16, v20
	.loc	1 171 28                        ; attention_backward.py:171:28
	s_waitcnt vmcnt(26)
	v_lshlrev_b32_e32 v155, 16, v39
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_lshlrev_b32_e32 v125, 16, v22
	.loc	1 171 28                        ; attention_backward.py:171:28
	s_waitcnt vmcnt(24)
	v_lshlrev_b32_e32 v157, 16, v43
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_lshlrev_b32_e32 v131, 16, v28
	v_lshlrev_b32_e32 v137, 16, v11
	v_lshlrev_b32_e32 v133, 16, v30
	v_lshlrev_b32_e32 v139, 16, v13
	v_lshlrev_b32_e32 v135, 16, v32
	v_lshlrev_b32_e32 v37, 16, v37
	v_lshlrev_b32_e32 v140, 16, v23
	v_lshlrev_b32_e32 v142, 16, v25
	v_lshlrev_b32_e32 v144, 16, v8
	v_lshlrev_b32_e32 v136, 16, v10
	.loc	1 124 31                        ; attention_backward.py:124:31
	v_and_b32_e32 v128, 32, v0
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_lshlrev_b32_e32 v134, 16, v31
	.loc	1 124 31                        ; attention_backward.py:124:31
	v_and_b32_e32 v130, 15, v0
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_lshlrev_b32_e32 v122, 16, v19
	v_lshlrev_b32_e32 v145, 16, v7
	.loc	1 124 31                        ; attention_backward.py:124:31
	v_lshrrev_b32_e32 v70, 1, v128
	.loc	1 134 28                        ; attention_backward.py:134:28
	v_lshlrev_b32_e32 v71, 4, v128
	v_lshlrev_b32_e32 v41, 5, v130
	.loc	1 171 28                        ; attention_backward.py:171:28
	v_lshlrev_b32_e32 v129, 7, v130
	v_lshlrev_b32_e32 v69, 6, v128
	.loc	1 124 31                        ; attention_backward.py:124:31
	v_or_b32_e32 v70, v70, v130
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_lshlrev_b32_e32 v33, 16, v33
	.loc	1 134 28                        ; attention_backward.py:134:28
	v_or3_b32 v71, v41, v71, v42
	.loc	1 171 28                        ; attention_backward.py:171:28
	v_lshlrev_b32_e32 v153, 16, v9
	v_or3_b32 v46, v46, v69, v129
	.loc	1 143 17                        ; attention_backward.py:143:17
	v_add_nc_u32_e32 v111, s28, v70
	.loc	1 124 21                        ; attention_backward.py:124:21
	v_or_b32_e32 v45, s46, v70
	.loc	1 134 28                        ; attention_backward.py:134:28
	v_add_nc_u32_e32 v79, 0, v71
	v_xad_u32 v80, v71, 8, 0
	v_xad_u32 v90, v71, 16, 0
	.loc	1 142 31                        ; attention_backward.py:142:31
	v_lshlrev_b32_e32 v70, 1, v111
	.loc	1 128 21                        ; attention_backward.py:128:21
	v_cmp_gt_i32_e64 s4, s30, v45
	.loc	1 134 28                        ; attention_backward.py:134:28
	v_xad_u32 v71, v71, 24, 0
	.loc	1 171 28                        ; attention_backward.py:171:28
	v_xad_u32 v115, v46, 16, 0
	v_xad_u32 v116, v46, 32, 0
	v_xad_u32 v117, v46, 48, 0
	.loc	1 142 31                        ; attention_backward.py:142:31
	v_cndmask_b32_e64 v70, 0x80000000, v70, s4
	.loc	1 171 28                        ; attention_backward.py:171:28
	v_xad_u32 v118, v46, 64, 0
	v_xad_u32 v119, 0x50, v46, 0
	v_xad_u32 v120, 0x60, v46, 0
	v_xad_u32 v121, 0x70, v46, 0
	.loc	1 134 28                        ; attention_backward.py:134:28
	ds_load_b64 v[86:87], v79
	ds_load_b64 v[88:89], v80
	ds_load_b64 v[90:91], v90
	.loc	1 143 17                        ; attention_backward.py:143:17
	ds_load_b64 v[92:93], v71
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_lshlrev_b32_e32 v79, 16, v17
	.loc	1 171 28                        ; attention_backward.py:171:28
	v_add_nc_u32_e32 v114, 0, v46
	.loc	1 142 31                        ; attention_backward.py:142:31
	buffer_load_u16 v46, v70, s[24:27], 0 offen
	.loc	1 171 28                        ; attention_backward.py:171:28
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_lshlrev_b32_e32 v80, 16, v18
	.loc	1 171 28                        ; attention_backward.py:171:28
	v_add_nc_u32_e32 v112, v106, v0
	ds_store_b16 v72, v14
	ds_store_b16 v72, v44 offset:1024
	s_waitcnt vmcnt(24)
	ds_store_b16 v72, v57 offset:2048
	s_waitcnt vmcnt(23)
	ds_store_b16 v72, v52 offset:3072
	ds_store_b16 v73, v9
	ds_store_b16 v73, v43 offset:1024
	s_waitcnt vmcnt(22)
	ds_store_b16 v73, v60 offset:2048
	s_waitcnt vmcnt(21)
	ds_store_b16 v73, v56 offset:3072
	s_waitcnt vmcnt(20)
	ds_store_b16 v74, v53
	s_waitcnt vmcnt(19)
	ds_store_b16 v74, v50 offset:1024
	s_waitcnt vmcnt(18)
	ds_store_b16 v74, v48 offset:2048
	s_waitcnt vmcnt(17)
	ds_store_b16 v74, v47 offset:3072
	s_waitcnt vmcnt(16)
	ds_store_b16 v75, v58
	s_waitcnt vmcnt(15)
	ds_store_b16 v75, v54 offset:1024
	s_waitcnt vmcnt(14)
	ds_store_b16 v75, v51 offset:2048
	s_waitcnt vmcnt(13)
	ds_store_b16 v75, v49 offset:3072
	s_waitcnt vmcnt(12)
	ds_store_b16 v76, v62
	s_waitcnt vmcnt(11)
	ds_store_b16 v76, v59 offset:1024
	s_waitcnt vmcnt(10)
	ds_store_b16 v76, v55 offset:2048
	s_waitcnt vmcnt(9)
	ds_store_b16 v76, v36 offset:3072
	s_waitcnt vmcnt(8)
	ds_store_b16 v77, v64
	s_waitcnt vmcnt(7)
	ds_store_b16 v77, v63 offset:1024
	s_waitcnt vmcnt(6)
	ds_store_b16 v77, v61 offset:2048
	s_waitcnt vmcnt(5)
	ds_store_b16 v77, v35 offset:3072
	ds_store_b16 v112, v4
	ds_store_b16 v112, v40 offset:1024
	s_waitcnt vmcnt(4)
	ds_store_b16 v112, v67 offset:2048
	ds_store_b16 v78, v3
	ds_store_b16 v78, v39 offset:1024
	s_waitcnt vmcnt(3)
	ds_store_b16 v78, v68 offset:2048
	s_waitcnt vmcnt(2)
	ds_store_b16 v78, v65 offset:3072
	s_waitcnt vmcnt(1)
	ds_store_b16 v112, v66 offset:3072
	v_lshlrev_b32_e32 v50, 16, v50
	v_lshlrev_b32_e32 v59, 16, v59
	v_lshlrev_b32_e32 v43, 16, v57
	v_lshlrev_b32_e32 v62, 16, v62
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	.loc	1 176 24                        ; attention_backward.py:176:24
	v_dual_mul_f32 v159, v140, v50 :: v_dual_lshlrev_b32 v48, 16, v48
	.loc	1 171 28                        ; attention_backward.py:171:28
	v_lshlrev_b32_e32 v74, 16, v51
	.loc	1 176 24                        ; attention_backward.py:176:24
	v_dual_mul_f32 v51, v79, v152 :: v_dual_lshlrev_b32 v76, 16, v61
	v_mul_f32_e32 v161, v142, v59
.Ltmp5:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_mov_b32_dpp v159, v159 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp6:
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_lshlrev_b32_e32 v138, 16, v12
	.loc	1 171 28                        ; attention_backward.py:171:28
	v_lshlrev_b32_e32 v35, 16, v35
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_lshlrev_b32_e32 v147, 16, v5
	.loc	1 171 28                        ; attention_backward.py:171:28
	v_lshlrev_b32_e32 v39, 16, v67
.Ltmp7:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_dual_fmac_f32 v159, v140, v50 :: v_dual_lshlrev_b32 v132, 16, v29
.Ltmp8:
	.loc	1 176 24                        ; attention_backward.py:176:24
	v_dual_mul_f32 v67, v125, v157 :: v_dual_lshlrev_b32 v56, 16, v56
	v_dual_mul_f32 v163, v144, v48 :: v_dual_mul_f32 v164, v145, v74
	s_delay_alu instid0(VALU_DEP_3)
	v_dual_mul_f32 v73, v132, v43 :: v_dual_mul_f32 v166, v147, v76
.Ltmp9:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_mov_b32_dpp v51, v51 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_mov_b32_dpp v161, v161 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp10:
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_lshlrev_b32_e32 v38, 16, v38
	v_lshlrev_b32_e32 v71, 16, v16
	v_lshlrev_b32_e32 v146, 16, v6
	v_lshlrev_b32_e32 v148, 16, v2
	v_lshlrev_b32_e32 v149, 16, v1
	.loc	1 171 28                        ; attention_backward.py:171:28
	s_waitcnt lgkmcnt(0)
	s_barrier
	v_lshlrev_b32_e32 v52, 16, v52
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_lshlrev_b32_e32 v126, 16, v27
	.loc	1 171 28                        ; attention_backward.py:171:28
	v_lshlrev_b32_e32 v53, 16, v53
	v_lshlrev_b32_e32 v58, 16, v58
.Ltmp11:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_mov_b32_dpp v67, v67 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp12:
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_lshlrev_b32_e32 v70, 16, v15
.Ltmp13:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_mov_b32_dpp v73, v73 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp14:
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_lshlrev_b32_e32 v124, 16, v21
.Ltmp15:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_mov_b32_dpp v163, v163 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_mov_b32_dpp v164, v164 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp16:
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_lshlrev_b32_e32 v141, 16, v24
.Ltmp17:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_mov_b32_dpp v166, v166 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp18:
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_lshlrev_b32_e32 v143, 16, v26
.Ltmp19:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_fmac_f32_e32 v51, v79, v152
.Ltmp20:
	.loc	1 171 28                        ; attention_backward.py:171:28
	ds_load_b128 v[1:4], v114
	ds_load_b128 v[5:8], v115
	ds_load_b128 v[9:12], v116
	ds_load_b128 v[13:16], v117
	ds_load_b128 v[17:20], v118
	ds_load_b128 v[21:24], v119
	ds_load_b128 v[25:28], v120
	ds_load_b128 v[29:32], v121
.Ltmp21:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_fmac_f32_e32 v161, v142, v59
.Ltmp22:
	.loc	1 176 24                        ; attention_backward.py:176:24
	v_mul_f32_e32 v118, v38, v56
	v_dual_mul_f32 v120, v137, v58 :: v_dual_fmac_f32 v163, v144, v48
	v_mul_f32_e32 v119, v136, v53
	.loc	1 171 28                        ; attention_backward.py:171:28
	v_lshlrev_b32_e32 v57, 16, v66
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp23:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_mov_b32_dpp v118, v118 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_mov_b32_dpp v120, v120 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp24:
	.loc	1 176 24                        ; attention_backward.py:176:24
	v_mul_f32_e32 v121, v138, v62
.Ltmp25:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_mov_b32_dpp v119, v119 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp26:
	.loc	1 171 28                        ; attention_backward.py:171:28
	v_lshlrev_b32_e32 v78, 16, v49
.Ltmp27:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_fmac_f32_e32 v118, v38, v56
	v_fmac_f32_e32 v120, v137, v58
.Ltmp28:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_mov_b32_dpp v121, v121 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp29:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_fmac_f32_e32 v119, v136, v53
.Ltmp30:
	.loc	1 176 24                        ; attention_backward.py:176:24
	v_mul_f32_e32 v115, v134, v57
.Ltmp31:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_dpp v56, v118, v118 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v58, v120, v120 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_fmac_f32_e32 v121, v138, v62
.Ltmp32:
	.loc	1 176 24                        ; attention_backward.py:176:24
	v_mul_f32_e32 v49, v71, v151
.Ltmp33:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_mov_b32_dpp v115, v115 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp34:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_dpp v56, v56, v56 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v58, v58, v58 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v59, v121, v121 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp35:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_mov_b32_dpp v49, v49 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp36:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_fmac_f32_e32 v115, v134, v57
	v_add_f32_dpp v57, v119, v119 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v56, v56, v56 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v58, v58, v58 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v59, v59, v59 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_fmac_f32_e32 v49, v71, v151
	v_add_f32_dpp v57, v57, v57 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp37:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_permlanex16_b32 v119, v56, -1, -1 op_sel:[1,0]
	v_permlanex16_b32 v121, v58, -1, -1 op_sel:[1,0]
	v_lshlrev_b32_e32 v127, 1, v128
.Ltmp38:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_dpp v59, v59, v59 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v57, v57, v57 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_e32 v56, v56, v119
.Ltmp39:
	.loc	1 171 28                        ; attention_backward.py:171:28
	v_lshlrev_b32_e32 v156, 16, v44
	v_lshlrev_b32_e32 v44, 16, v60
.Ltmp40:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_e32 v58, v58, v121
.Ltmp41:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_permlanex16_b32 v120, v57, -1, -1 op_sel:[1,0]
.Ltmp42:
	.loc	1 171 28                        ; attention_backward.py:171:28
	v_lshlrev_b32_e32 v60, 16, v65
	.loc	1 176 24                        ; attention_backward.py:176:24
	v_mul_f32_e32 v65, v123, v155
.Ltmp43:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_readlane_b32 s26, v56, 31
	v_readlane_b32 s33, v58, 31
.Ltmp44:
	.loc	1 171 28                        ; attention_backward.py:171:28
	v_lshlrev_b32_e32 v63, 16, v63
	.loc	1 176 24                        ; attention_backward.py:176:24
	v_mul_f32_e32 v117, v37, v52
.Ltmp45:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_mov_b32_dpp v65, v65 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_mov_b32_e32 v58, s26
.Ltmp46:
	.loc	1 176 24                        ; attention_backward.py:176:24
	v_mul_f32_e32 v114, v133, v44
	.loc	1 171 28                        ; attention_backward.py:171:28
	v_lshlrev_b32_e32 v54, 16, v54
.Ltmp47:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_mov_b32_dpp v117, v117 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp48:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_fmac_f32_e32 v65, v123, v155
.Ltmp49:
	.loc	1 171 28                        ; attention_backward.py:171:28
	v_lshlrev_b32_e32 v75, 16, v55
.Ltmp50:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_mov_b32_dpp v114, v114 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp51:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_e32 v57, v57, v120
	v_fmac_f32_e32 v117, v37, v52
.Ltmp52:
	.loc	1 176 24                        ; attention_backward.py:176:24
	v_mul_f32_e32 v116, v135, v60
.Ltmp53:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_fmac_f32_e32 v164, v145, v74
	v_fmac_f32_e32 v114, v133, v44
	v_add_f32_dpp v44, v65, v65 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp54:
	.loc	1 176 24                        ; attention_backward.py:176:24
	v_mul_f32_e32 v160, v141, v54
.Ltmp55:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_mov_b32_dpp v116, v116 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp56:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_fmac_f32_e32 v73, v132, v43
	v_add_f32_dpp v52, v114, v114 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v44, v44, v44 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp57:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_mov_b32_dpp v160, v160 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp58:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_fmac_f32_e32 v116, v135, v60
	v_add_f32_dpp v53, v115, v115 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v52, v52, v52 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v44, v44, v44 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_fmac_f32_e32 v160, v141, v54
	v_add_f32_dpp v54, v116, v116 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v53, v53, v53 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v52, v52, v52 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp59:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_permlanex16_b32 v71, v44, -1, -1 op_sel:[1,0]
	v_readlane_b32 s27, v57, 31
.Ltmp60:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_dpp v54, v54, v54 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v53, v53, v53 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp61:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_permlanex16_b32 v115, v52, -1, -1 op_sel:[1,0]
.Ltmp62:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_e32 v44, v44, v71
	v_add_f32_dpp v38, v49, v49 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v54, v54, v54 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp63:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_permlanex16_b32 v116, v53, -1, -1 op_sel:[1,0]
.Ltmp64:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_e32 v52, v52, v115
.Ltmp65:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_readlane_b32 s10, v44, 31
.Ltmp66:
	.loc	1 176 24                        ; attention_backward.py:176:24
	v_mul_f32_e32 v44, v33, v35
.Ltmp67:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_fmac_f32_e32 v166, v147, v76
.Ltmp68:
	.loc	1 176 24                        ; attention_backward.py:176:24
	v_mul_f32_e32 v162, v143, v63
.Ltmp69:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_readlane_b32 s16, v52, 31
.Ltmp70:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_e32 v53, v53, v116
.Ltmp71:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_mov_b32_dpp v44, v44 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp72:
	.loc	1 171 28                        ; attention_backward.py:171:28
	v_lshlrev_b32_e32 v77, 16, v47
.Ltmp73:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_mov_b32_dpp v162, v162 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp74:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_dpp v38, v38, v38 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp75:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_readlane_b32 s17, v53, 31
.Ltmp76:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_dual_fmac_f32 v44, v33, v35 :: v_dual_mul_f32 v55, v80, v153
	s_delay_alu instid0(VALU_DEP_4)
	v_fmac_f32_e32 v162, v143, v63
	v_add_f32_dpp v63, v161, v161 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v38, v38, v38 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp77:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	s_waitcnt lgkmcnt(0)
	v_mov_b32_dpp v55, v55 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_barrier
.Ltmp78:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_dpp v63, v63, v63 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp79:
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_lshlrev_b32_e32 v34, 16, v34
.Ltmp80:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_dpp v33, v166, v166 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_dual_fmac_f32 v55, v80, v153 :: v_dual_lshlrev_b32 v36, 16, v36
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	v_add_f32_dpp v63, v63, v63 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp81:
	.loc	1 171 28                        ; attention_backward.py:171:28
	v_lshlrev_b32_e32 v40, 16, v68
	.loc	1 176 24                        ; attention_backward.py:176:24
	v_mul_f32_e32 v68, v126, v39
.Ltmp82:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_dpp v33, v33, v33 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp83:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_mov_b32_dpp v68, v68 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp84:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_dpp v33, v33, v33 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_fmac_f32_e32 v68, v126, v39
.Ltmp85:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_permlanex16_b32 v126, v63, -1, -1 op_sel:[1,0]
.Ltmp86:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_dpp v39, v51, v51 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v51, v73, v73 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_add_f32_dpp v49, v68, v68 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_e32 v63, v63, v126
.Ltmp87:
	.loc	1 176 24                        ; attention_backward.py:176:24
	v_mul_f32_e32 v72, v131, v40
	s_delay_alu instid0(VALU_DEP_4)
.Ltmp88:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_dpp v51, v51, v51 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v39, v39, v39 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v49, v49, v49 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp89:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_readlane_b32 s40, v63, 31
	v_mov_b32_dpp v72, v72 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp90:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_dpp v51, v51, v51 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v39, v39, v39 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v49, v49, v49 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_4) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v72, v131, v40
	v_add_f32_dpp v40, v55, v55 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v55, v117, v117 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp91:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_permlanex16_b32 v117, v54, -1, -1 op_sel:[1,0]
	v_permlanex16_b32 v114, v51, -1, -1 op_sel:[1,0]
.Ltmp92:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_dpp v40, v40, v40 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_add_f32_dpp v55, v55, v55 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_dual_add_f32 v54, v54, v117 :: v_dual_add_f32 v51, v51, v114
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_add_f32_dpp v40, v40, v40 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v55, v55, v55 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_4)
.Ltmp93:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_readlane_b32 s24, v54, 31
	v_dual_mov_b32 v54, s16 :: v_dual_fmac_f32 v67, v125, v157
	v_readlane_b32 s15, v51, 31
	v_permlanex16_b32 v118, v55, -1, -1 op_sel:[1,0]
.Ltmp94:
	.loc	1 176 24                        ; attention_backward.py:176:24
	v_mul_f32_e32 v47, v70, v150
.Ltmp95:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_permlanex16_b32 v68, v40, -1, -1 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_dual_mov_b32 v56, s24 :: v_dual_mov_b32 v53, s15
.Ltmp96:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_e32 v55, v55, v118
	v_add_f32_dpp v50, v72, v72 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp97:
	.loc	1 176 24                        ; attention_backward.py:176:24
	v_mul_f32_e32 v61, v122, v154
.Ltmp98:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_mov_b32_dpp v47, v47 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp99:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_e32 v40, v40, v68
.Ltmp100:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_readlane_b32 s25, v55, 31
.Ltmp101:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_dpp v50, v50, v50 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp102:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_mov_b32_dpp v61, v61 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp103:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_fmac_f32_e32 v47, v70, v150
.Ltmp104:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_readlane_b32 s8, v40, 31
	v_mov_b32_e32 v57, s25
.Ltmp105:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_dpp v48, v67, v67 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v50, v50, v50 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_fmac_f32_e32 v61, v122, v154
.Ltmp106:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_permlanex16_b32 v122, v59, -1, -1 op_sel:[1,0]
	v_permlanex16_b32 v67, v39, -1, -1 op_sel:[1,0]
.Ltmp107:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_dpp v48, v48, v48 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp108:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_permlanex16_b32 v80, v50, -1, -1 op_sel:[1,0]
.Ltmp109:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_dpp v43, v61, v61 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_dual_add_f32 v59, v59, v122 :: v_dual_mul_f32 v66, v124, v156
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_add_f32_dpp v48, v48, v48 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_e32 v50, v50, v80
	s_delay_alu instid0(VALU_DEP_4)
	v_add_f32_dpp v43, v43, v43 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v61, v159, v159 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp110:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_mov_b32_dpp v66, v66 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_permlanex16_b32 v73, v48, -1, -1 op_sel:[1,0]
	v_readlane_b32 s14, v50, 31
.Ltmp111:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_dpp v43, v43, v43 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v61, v61, v61 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_fmac_f32_e32 v66, v124, v156
	v_add_f32_e32 v48, v48, v73
.Ltmp112:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_mov_b32_e32 v52, s14
	v_permlanex16_b32 v70, v43, -1, -1 op_sel:[1,0]
.Ltmp113:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_dpp v61, v61, v61 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_e32 v39, v39, v67
.Ltmp114:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_readlane_b32 s12, v48, 31
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_dual_mov_b32 v40, s8 :: v_dual_add_f32 v43, v43, v70
	v_permlanex16_b32 v124, v61, -1, -1 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_readlane_b32 s7, v39, 31
	v_mov_b32_e32 v50, s12
	v_permlanex16_b32 v79, v49, -1, -1 op_sel:[1,0]
	v_readlane_b32 s9, v43, 31
.Ltmp115:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_e32 v61, v61, v124
.Ltmp116:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_dual_mov_b32 v39, s7 :: v_dual_mov_b32 v48, s10
	s_delay_alu instid0(VALU_DEP_4)
.Ltmp117:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_e32 v49, v49, v79
.Ltmp118:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_mov_b32_e32 v55, s17
	v_readlane_b32 s36, v59, 31
	v_readlane_b32 s38, v61, 31
.Ltmp119:
	.loc	1 176 24                        ; attention_backward.py:176:24
	v_mul_f32_e32 v167, v148, v77
.Ltmp120:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_readlane_b32 s13, v49, 31
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_dual_mov_b32 v67, s36 :: v_dual_lshlrev_b32 v64, 16, v64
	v_mov_b32_e32 v70, s38
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mov_b32_dpp v167, v167 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_dual_mov_b32 v51, s13 :: v_dual_mul_f32 v158, v139, v64
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v158, v158 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp121:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_fmac_f32_e32 v158, v139, v64
	v_add_f32_dpp v64, v162, v162 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_add_f32_dpp v60, v158, v158 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v64, v64, v64 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_add_f32_dpp v60, v60, v60 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v64, v64, v64 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_add_f32_dpp v60, v60, v60 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp122:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_permlanex16_b32 v131, v64, -1, -1 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_permlanex16_b32 v123, v60, -1, -1 op_sel:[1,0]
.Ltmp123:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_e32 v64, v64, v131
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_add_f32_e32 v60, v60, v123
.Ltmp124:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_readlane_b32 s41, v64, 31
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_readlane_b32 s37, v60, 31
	v_dual_mov_b32 v73, s41 :: v_dual_mov_b32 v68, s37
.Ltmp125:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_dpp v37, v47, v47 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v47, v66, v66 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp126:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_permlanex16_b32 v66, v38, -1, -1 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp127:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_dpp v37, v37, v37 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v47, v47, v47 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_3)
	v_add_f32_e32 v38, v38, v66
.Ltmp128:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_mov_b32_e32 v66, s33
	s_mov_b32 s33, 0
.Ltmp129:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_dpp v37, v37, v37 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v47, v47, v47 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp130:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_readlane_b32 s6, v38, 31
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_permlanex16_b32 v65, v37, -1, -1 op_sel:[1,0]
	v_permlanex16_b32 v72, v47, -1, -1 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_dual_mov_b32 v38, s6 :: v_dual_add_f32 v37, v37, v65
.Ltmp131:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_e32 v47, v47, v72
.Ltmp132:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_dual_mov_b32 v65, s27 :: v_dual_mov_b32 v72, s40
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_readlane_b32 s5, v37, 31
	v_readlane_b32 s11, v47, 31
	v_mov_b32_e32 v47, s9
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mov_b32_e32 v37, s5
	v_mov_b32_e32 v49, s11
.Ltmp133:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_dpp v62, v160, v160 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add_f32_dpp v62, v62, v62 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v62, v62, v62 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp134:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_permlanex16_b32 v125, v62, -1, -1 op_sel:[1,0]
.Ltmp135:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_dual_add_f32 v62, v62, v125 :: v_dual_add_nc_u32 v69, 0, v127
.Ltmp136:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	ds_store_b128 v69, v[37:40]
	ds_store_b128 v69, v[47:50] offset:16
	ds_store_b128 v69, v[51:54] offset:32
	ds_store_b128 v69, v[55:58] offset:48
	s_waitcnt lgkmcnt(0)
	s_barrier
.Ltmp137:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_dpp v38, v163, v163 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp138:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_readlane_b32 s39, v62, 31
	ds_load_b128 v[61:64], v113
	ds_load_b128 v[57:60], v113 offset:16
	ds_load_b128 v[53:56], v113 offset:32
	ds_load_b128 v[49:52], v113 offset:48
.Ltmp139:
	.loc	1 176 24                        ; attention_backward.py:176:24
	v_mul_f32_e32 v43, v34, v36
.Ltmp140:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_dpp v39, v164, v164 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v38, v38, v38 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp141:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_mov_b32_e32 v71, s39
.Ltmp142:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_fmac_f32_e32 v167, v148, v77
.Ltmp143:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	s_waitcnt lgkmcnt(0)
.Ltmp144:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_dpp v39, v39, v39 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v38, v38, v38 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp145:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	s_barrier
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp146:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_dpp v39, v39, v39 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp147:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_permlanex16_b32 v47, v38, -1, -1 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_permlanex16_b32 v48, v39, -1, -1 op_sel:[1,0]
	v_dual_mov_b32 v142, v57 :: v_dual_mul_f32 v165, v146, v75
.Ltmp148:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_e32 v38, v38, v47
.Ltmp149:
	.loc	1 176 24                        ; attention_backward.py:176:24
	v_mul_f32_e32 v168, v149, v78
.Ltmp150:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_mov_b32_e32 v164, v56
	v_mov_b32_dpp v43, v43 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_mov_b32_dpp v165, v165 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_mov_b32_e32 v144, v59
	v_mov_b32_dpp v37, v168 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_dual_mov_b32 v152, v60 :: v_dual_fmac_f32 v43, v34, v36
.Ltmp151:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_fmac_f32_e32 v165, v146, v75
	v_add_f32_dpp v34, v167, v167 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v37, v149, v78
	v_dual_add_f32 v39, v39, v48 :: v_dual_mov_b32 v162, v54
	v_add_f32_dpp v40, v165, v165 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v36, v43, v43 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_4)
	v_add_f32_dpp v35, v37, v37 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v37, v44, v44 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v34, v34, v34 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v40, v40, v40 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v36, v36, v36 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v35, v35, v35 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v37, v37, v37 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v34, v34, v34 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v40, v40, v40 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v36, v36, v36 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v35, v35, v35 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v37, v37, v37 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp152:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_readlane_b32 s5, v38, 31
	v_permlanex16_b32 v74, v40, -1, -1 op_sel:[1,0]
	v_permlanex16_b32 v38, v33, -1, -1 op_sel:[1,0]
	v_readlane_b32 s6, v39, 31
	v_permlanex16_b32 v39, v34, -1, -1 op_sel:[1,0]
	v_permlanex16_b32 v43, v36, -1, -1 op_sel:[1,0]
.Ltmp153:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_e32 v40, v40, v74
.Ltmp154:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_permlanex16_b32 v44, v37, -1, -1 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp155:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_dual_add_f32 v33, v33, v38 :: v_dual_add_f32 v34, v34, v39
	v_add_f32_e32 v36, v36, v43
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_4) | instid1(VALU_DEP_4)
.Ltmp156:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_readlane_b32 s7, v40, 31
	v_permlanex16_b32 v40, v35, -1, -1 op_sel:[1,0]
.Ltmp157:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_dual_add_f32 v37, v37, v44 :: v_dual_mov_b32 v150, v51
.Ltmp158:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_readlane_b32 s8, v33, 31
	v_readlane_b32 s9, v34, 31
.Ltmp159:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_dual_add_f32 v35, v35, v40 :: v_dual_mov_b32 v148, v49
.Ltmp160:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_readlane_b32 s11, v36, 31
	v_readlane_b32 s12, v37, 31
	v_mov_b32_e32 v33, s5
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_readlane_b32 s10, v35, 31
	v_dual_mov_b32 v34, s6 :: v_dual_mov_b32 v35, s7
	v_dual_mov_b32 v36, s8 :: v_dual_mov_b32 v37, s9
	v_dual_mov_b32 v38, s10 :: v_dual_mov_b32 v39, s11
	v_mov_b32_e32 v40, s12
	ds_store_b128 v69, v[65:68]
	ds_store_b128 v69, v[70:73] offset:16
	ds_store_b128 v69, v[33:36] offset:32
	ds_store_b128 v69, v[37:40] offset:48
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[73:76], v113
	ds_load_b128 v[69:72], v113 offset:16
	ds_load_b128 v[77:80], v113 offset:32
	ds_load_b128 v[65:68], v113 offset:48
	v_dual_mov_b32 v138, v61 :: v_dual_mov_b32 v131, v62
	v_mov_b32_e32 v132, v63
	v_dual_mov_b32 v136, v64 :: v_dual_mov_b32 v143, v58
	v_mov_b32_e32 v161, v53
	v_mov_b32_e32 v157, v55
	v_mov_b32_e32 v149, v50
	v_mov_b32_e32 v151, v52
.Ltmp161:
	.loc	1 179 16                        ; attention_backward.py:179:16
	s_add_i32 s5, s31, 15
.Ltmp162:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_mov_b32_dpp v138, v138 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp163:
	.loc	1 179 15                        ; attention_backward.py:179:15
	s_ashr_i32 s6, s5, 31
.Ltmp164:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_mov_b32_dpp v131, v131 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp165:
	.loc	1 179 15                        ; attention_backward.py:179:15
	s_lshr_b32 s6, s6, 28
.Ltmp166:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_mov_b32_dpp v132, v132 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v136, v136 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_waitcnt lgkmcnt(3)
	v_mov_b32_e32 v137, v73
	v_dual_mov_b32 v139, v74 :: v_dual_mov_b32 v140, v75
	v_mov_b32_e32 v141, v76
	s_waitcnt lgkmcnt(2)
	v_dual_mov_b32 v153, v69 :: v_dual_mov_b32 v154, v70
	v_dual_mov_b32 v155, v71 :: v_dual_mov_b32 v160, v72
	s_waitcnt lgkmcnt(1)
	v_dual_mov_b32 v158, v77 :: v_dual_mov_b32 v159, v78
	v_dual_mov_b32 v145, v79 :: v_dual_mov_b32 v146, v80
	s_waitcnt lgkmcnt(0)
	v_dual_mov_b32 v156, v65 :: v_dual_mov_b32 v165, v66
	v_mov_b32_e32 v163, v67
	v_mov_b32_e32 v147, v68
	v_mov_b32_dpp v137, v137 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v139, v139 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v140, v140 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v141, v141 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v142, v142 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v143, v143 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v144, v144 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v152, v152 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v153, v153 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v154, v154 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v155, v155 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v160, v160 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v161, v161 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v162, v162 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v157, v157 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v164, v164 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v158, v158 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v159, v159 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v145, v145 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v146, v146 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v148, v148 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v149, v149 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v150, v150 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v151, v151 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v156, v156 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v165, v165 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v163, v163 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v147, v147 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp167:
	.loc	1 179 15                        ; attention_backward.py:179:15
	s_add_i32 s5, s5, s6
	.loc	1 123 19                        ; attention_backward.py:123:19
	s_mul_hi_u32 s6, s48, s44
	.loc	1 179 14                        ; attention_backward.py:179:14
	s_and_b32 s38, s5, -16
	.loc	1 180 9                         ; attention_backward.py:180:9
	s_bfe_u32 s5, s20, 0x10008
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
	s_and_b32 s33, s7, 0x7ffffff0
	.loc	1 187 18                        ; attention_backward.py:187:18
	s_min_i32 s38, s38, s5
.LBB0_2:
	.loc	1 0 18 is_stmt 0                ; attention_backward.py:0:18
	s_clause 0x2
	s_load_b64 s[40:41], s[0:1], 0x8
	s_load_b64 s[44:45], s[0:1], 0x20
	s_load_b32 s39, s[0:1], 0x80
	.loc	1 188 9 is_stmt 1               ; attention_backward.py:188:9
	v_cndmask_b32_e64 v33, 0, 1, s19
	.loc	1 0 0 is_stmt 0                 ; attention_backward.py:0
	s_ashr_i32 s7, s50, 31
	.loc	1 188 9                         ; attention_backward.py:188:9
	s_and_not1_b32 vcc_lo, exec_lo, s19
	.loc	1 0 0                           ; attention_backward.py:0
	s_ashr_i32 s8, s51, 31
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 188 9                         ; attention_backward.py:188:9
	v_cmp_ne_u32_e64 s5, 1, v33
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
	s_min_i32 s38, s38, s9
.LBB0_4:
	.loc	1 123 19 is_stmt 1              ; attention_backward.py:123:19
	s_mul_i32 s9, s6, s49
	s_xor_b32 s7, s7, s8
	s_sub_i32 s8, s48, s9
	s_add_i32 s9, s6, 1
	s_sub_i32 s10, s8, s49
	s_cmp_ge_u32 s8, s49
	s_load_b64 s[36:37], s[0:1], 0x58
	s_cselect_b32 s6, s9, s6
	s_cselect_b32 s8, s10, s8
	s_add_i32 s9, s6, 1
	s_cmp_ge_u32 s8, s49
	s_clause 0x1
	s_load_b128 s[24:27], s[0:1], 0x48
	s_load_b64 s[48:49], s[0:1], 0x10
	s_cselect_b32 s6, s9, s6
	v_mov_b16_e32 v33.l, 0
	s_xor_b32 s6, s6, s7
	.loc	1 142 31                        ; attention_backward.py:142:31
	s_waitcnt vmcnt(0)
	v_mov_b16_e32 v33.h, v46.l
	.loc	1 123 19                        ; attention_backward.py:123:19
	s_sub_i32 s6, s6, s7
	.loc	1 220 21                        ; attention_backward.py:220:21
	s_waitcnt lgkmcnt(0)
	s_mul_f32 s7, s39, 0x3fb8aa3b
	.loc	1 125 21                        ; attention_backward.py:125:21
	v_bfe_u32 v119, v0, 4, 1
	.loc	1 129 27                        ; attention_backward.py:129:27
	v_add_nc_u32_e32 v121, s23, v45
	v_cndmask_b32_e64 v34, 0, 1, s18
	.loc	1 219 37                        ; attention_backward.py:219:37
	v_mul_f32_e32 v122, s7, v33
	v_or_b32_e32 v33, v41, v42
	.loc	1 197 29                        ; attention_backward.py:197:29
	s_mul_i32 s47, s47, s29
	.loc	1 125 21                        ; attention_backward.py:125:21
	v_or_b32_e32 v120, 2, v119
	v_or_b32_e32 v118, 4, v119
	v_or_b32_e32 v117, 6, v119
	v_or_b32_e32 v116, 8, v119
	v_or_b32_e32 v115, 10, v119
	v_or_b32_e32 v114, 12, v119
	v_or_b32_e32 v113, 14, v119
	.loc	1 197 29                        ; attention_backward.py:197:29
	s_add_i32 s60, s6, s47
	v_subrev_nc_u32_e32 v123, s21, v121
	v_add_nc_u32_e32 v124, s22, v121
	v_xor_b32_e32 v133, 8, v33
	v_xor_b32_e32 v134, 16, v33
	v_xor_b32_e32 v135, 24, v33
	v_add_nc_u32_e32 v125, 0, v33
	v_cmp_ne_u32_e64 s6, 1, v34
	.loc	1 194 9                         ; attention_backward.py:194:9
	s_cmp_lt_i32 s33, s38
	.loc	1 197 28                        ; attention_backward.py:197:28
	s_mul_i32 s60, s60, s31
	.loc	1 194 9                         ; attention_backward.py:194:9
	s_cselect_b32 s22, -1, 0
	s_cmp_ge_i32 s33, s38
	s_cbranch_scc1 .LBB0_11
; %bb.5:                                ; %.lr.ph
	.loc	1 223 21                        ; attention_backward.py:223:21
	v_dual_mov_b32 v126, v122 :: v_dual_mov_b32 v33, 0
	v_dual_mov_b32 v166, v122 :: v_dual_add_nc_u32 v169, 0, v133
	v_dual_mov_b32 v167, v122 :: v_dual_mov_b32 v168, 0xff800000
	v_dual_mov_b32 v172, 0 :: v_dual_add_nc_u32 v171, 0, v135
	s_delay_alu instid0(VALU_DEP_4)
	v_dual_mov_b32 v35, v33 :: v_dual_add_nc_u32 v170, 0, v134
	v_mov_b32_e32 v34, v33
	v_mov_b32_e32 v36, v33
	v_mov_b32_e32 v37, v33
	v_mov_b32_e32 v38, v33
	v_mov_b32_e32 v39, v33
	v_mov_b32_e32 v40, v33
	s_mov_b32 s55, 0x31027000
	s_mov_b32 s54, 0x7ffffffe
	s_and_b32 s53, s41, 0xffff
	s_mov_b32 s52, s40
	s_and_b32 s57, s45, 0xffff
	s_mov_b32 s56, s44
	s_mov_b32 s58, s54
	s_mov_b32 s59, s55
	s_mov_b32 s23, 0x76543210
	s_mov_b32 s29, s33
	s_branch .LBB0_7
.LBB0_6:                                ;   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 21 is_stmt 0                ; attention_backward.py:0:21
	v_mov_b16_e64 v173.l, 0
	.loc	1 223 21 is_stmt 1              ; attention_backward.py:223:21
	v_cvt_f32_i32_e32 v44, v44
	v_cvt_f32_i32_e32 v43, v43
	v_cvt_f32_i32_e32 v42, v42
	v_cvt_f32_i32_e32 v41, v41
	v_cvt_f32_i32_e32 v48, v48
	v_cvt_f32_i32_e32 v47, v47
	v_cvt_f32_i32_e32 v46, v46
	v_cvt_f32_i32_e32 v45, v45
	.loc	1 214 33                        ; attention_backward.py:214:33
	s_waitcnt vmcnt(4)
	v_mov_b16_e64 v173.h, v188.l
	v_mov_b16_e64 v174.h, v187.l
	v_mov_b16_e64 v175.h, v186.l
	v_mov_b16_e64 v174.l, v173.l
	v_mov_b16_e64 v175.l, v173.l
	v_mov_b16_e64 v176.l, v173.l
	v_mov_b16_e64 v176.h, v184.l
	.loc	1 223 21                        ; attention_backward.py:223:21
	v_dual_mul_f32 v44, v167, v44 :: v_dual_mul_f32 v43, v166, v43
	v_dual_mul_f32 v41, v122, v41 :: v_dual_mul_f32 v48, v167, v48
	v_mul_f32_e32 v42, v126, v42
	.loc	1 214 33                        ; attention_backward.py:214:33
	v_mov_b16_e64 v177.l, v173.l
	s_waitcnt vmcnt(0)
	v_mov_b16_e64 v177.h, v185.l
	v_mov_b16_e64 v178.l, v173.l
	v_mov_b16_e64 v178.h, v183.l
	v_mov_b16_e64 v179.l, v173.l
	v_mov_b16_e64 v179.h, v182.l
	v_mov_b16_e64 v180.l, v173.l
	v_mov_b16_e64 v180.h, v181.l
	.loc	1 223 21                        ; attention_backward.py:223:21
	v_dual_mul_f32 v47, v166, v47 :: v_dual_mul_f32 v44, v44, v173
	v_mul_f32_e32 v45, v122, v45
	v_dual_mul_f32 v46, v126, v46 :: v_dual_mul_f32 v41, v41, v176
	v_dual_mul_f32 v42, v42, v175 :: v_dual_mul_f32 v43, v43, v174
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_dual_mul_f32 v45, v45, v180 :: v_dual_mul_f32 v46, v46, v179
	v_dual_mul_f32 v47, v47, v178 :: v_dual_mul_f32 v48, v48, v177
	.loc	1 257 22                        ; attention_backward.py:257:22
	v_cndmask_b32_e64 v44, 0xff800000, v44, s42
	v_cndmask_b32_e64 v43, 0xff800000, v43, s62
	v_cndmask_b32_e64 v42, 0xff800000, v42, s43
	v_cndmask_b32_e64 v173, 0xff800000, v41, s51
	v_cndmask_b32_e64 v48, 0xff800000, v48, s50
	v_cndmask_b32_e64 v46, 0xff800000, v46, s47
	v_cndmask_b32_e64 v45, 0xff800000, v45, s61
	v_cndmask_b32_e64 v47, 0xff800000, v47, s63
.Ltmp168:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention_backward.py:258:25 ] ]
	v_max3_f32 v41, v173, v42, v43
.Ltmp169:
	.loc	1 260 21                        ; attention_backward.py:260:21
	v_cmp_neq_f32_e32 vcc_lo, 0xff800000, v168
	.loc	1 194 9                         ; attention_backward.py:194:9
	s_add_i32 s29, s29, 16
.Ltmp170:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention_backward.py:258:25 ] ]
	v_max3_f32 v174, v44, v45, v46
	v_max_f32_e32 v175, v47, v48
.Ltmp171:
	.loc	1 194 9                         ; attention_backward.py:194:9
	s_cmp_lt_i32 s29, s38
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp172:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention_backward.py:258:25 ] ]
	v_max3_f32 v41, v41, v174, v175
.Ltmp173:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention_backward.py:258:25 ]
	v_permlanex16_b32 v174, v41, s23, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp174:
	.loc	1 259 20                        ; attention_backward.py:259:20
	v_max3_f32 v41, v168, v41, v174
	.loc	1 261 58                        ; attention_backward.py:261:58
	v_sub_f32_e32 v45, v45, v41
	v_sub_f32_e32 v46, v46, v41
	v_sub_f32_e32 v47, v47, v41
	v_sub_f32_e32 v48, v48, v41
	v_sub_f32_e32 v42, v42, v41
	.loc	1 261 45 is_stmt 0              ; attention_backward.py:261:45
	v_exp_f32_e32 v45, v45
	v_exp_f32_e32 v46, v46
	v_exp_f32_e32 v47, v47
	v_exp_f32_e32 v48, v48
	v_exp_f32_e32 v42, v42
	.loc	1 261 29                        ; attention_backward.py:261:29
	v_cndmask_b32_e64 v45, 0, v45, s61
	v_cndmask_b32_e64 v46, 0, v46, s47
	.loc	1 261 58                        ; attention_backward.py:261:58
	v_sub_f32_e32 v43, v43, v41
	s_delay_alu instid0(TRANS32_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	.loc	1 261 29                        ; attention_backward.py:261:29
	v_cndmask_b32_e64 v47, 0, v47, s63
	v_cndmask_b32_e64 v48, 0, v48, s50
	.loc	1 261 58                        ; attention_backward.py:261:58
	v_sub_f32_e32 v44, v44, v41
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 261 29                        ; attention_backward.py:261:29
	v_cndmask_b32_e64 v42, 0, v42, s43
	.loc	1 261 45                        ; attention_backward.py:261:45
	v_exp_f32_e32 v43, v43
	v_exp_f32_e32 v44, v44
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 261 29                        ; attention_backward.py:261:29
	v_cndmask_b32_e64 v43, 0, v43, s62
	v_cndmask_b32_e64 v44, 0, v44, s42
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_4)
.Ltmp175:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:262:33 ] ]
	v_add_f32_e32 v43, v43, v44
.Ltmp176:
	.loc	1 261 58                        ; attention_backward.py:261:58
	v_sub_f32_e32 v173, v173, v41
.Ltmp177:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:262:33 ] ]
	v_dual_add_f32 v44, v45, v46 :: v_dual_add_f32 v45, v47, v48
.Ltmp178:
	.loc	1 260 70                        ; attention_backward.py:260:70
	v_sub_f32_e32 v46, v168, v41
	v_mov_b32_e32 v168, v41
	.loc	1 261 45                        ; attention_backward.py:261:45
	v_exp_f32_e32 v173, v173
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 261 29 is_stmt 0              ; attention_backward.py:261:29
	v_cndmask_b32_e64 v173, 0, v173, s51
.Ltmp179:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:262:33 ] ]
	v_add_f32_e32 v42, v173, v42
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_dual_add_f32 v42, v42, v43 :: v_dual_add_f32 v43, v44, v45
.Ltmp180:
	.loc	1 260 57                        ; attention_backward.py:260:57
	v_exp_f32_e32 v44, v46
.Ltmp181:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:262:33 ] ]
	v_add_f32_e32 v42, v42, v43
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
.Ltmp182:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:262:33 ]
	v_permlanex16_b32 v43, v42, s23, 0xfedcba98 op_sel:[1,0]
.Ltmp183:
	.loc	1 260 21                        ; attention_backward.py:260:21
	v_cndmask_b32_e32 v44, 0, v44, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp184:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:262:33 ] ]
	v_add_f32_e32 v42, v42, v43
.Ltmp185:
	.loc	1 262 19                        ; attention_backward.py:262:19
	v_fmac_f32_e32 v42, v172, v44
	s_delay_alu instid0(VALU_DEP_1)
	v_mov_b32_e32 v172, v42
	.loc	1 194 9                         ; attention_backward.py:194:9
	s_cbranch_scc0 .LBB0_12
.LBB0_7:                                ; =>This Inner Loop Header: Depth=1
	.loc	1 195 27                        ; attention_backward.py:195:27
	v_or_b32_e32 v41, s29, v95
	v_or_b32_e32 v42, s29, v96
	.loc	1 199 21                        ; attention_backward.py:199:21
	s_add_i32 s64, s29, s60
	.loc	1 195 27                        ; attention_backward.py:195:27
	v_or_b32_e32 v43, s29, v97
	.loc	1 199 21                        ; attention_backward.py:199:21
	s_mul_i32 s14, s64, s34
	.loc	1 201 24                        ; attention_backward.py:201:24
	v_cmp_gt_i32_e32 vcc_lo, s31, v41
	.loc	1 195 27                        ; attention_backward.py:195:27
	v_or_b32_e32 v44, s29, v98
	.loc	1 201 24                        ; attention_backward.py:201:24
	v_cmp_gt_i32_e64 s7, s31, v42
	.loc	1 199 21                        ; attention_backward.py:199:21
	v_add_nc_u32_e32 v41, s14, v81
	.loc	1 195 27                        ; attention_backward.py:195:27
	v_or_b32_e32 v45, s29, v99
	.loc	1 201 24                        ; attention_backward.py:201:24
	v_cmp_gt_i32_e64 s8, s31, v43
	.loc	1 199 21                        ; attention_backward.py:199:21
	v_add_nc_u32_e32 v42, s14, v103
	.loc	1 195 27                        ; attention_backward.py:195:27
	v_or_b32_e32 v46, s29, v100
	.loc	1 200 26                        ; attention_backward.py:200:26
	s_and_b32 vcc_lo, s2, vcc_lo
	.loc	1 201 24                        ; attention_backward.py:201:24
	v_cmp_gt_i32_e64 s9, s31, v44
	.loc	1 199 21                        ; attention_backward.py:199:21
	v_add_nc_u32_e32 v43, s14, v104
	.loc	1 195 27                        ; attention_backward.py:195:27
	v_or_b32_e32 v47, s29, v101
	.loc	1 198 28                        ; attention_backward.py:198:28
	v_cndmask_b32_e32 v41, 0x80000000, v41, vcc_lo
	.loc	1 200 26                        ; attention_backward.py:200:26
	s_and_b32 vcc_lo, s2, s7
	.loc	1 201 24                        ; attention_backward.py:201:24
	v_cmp_gt_i32_e64 s10, s31, v45
	.loc	1 199 21                        ; attention_backward.py:199:21
	v_add_nc_u32_e32 v44, s14, v82
	.loc	1 195 27                        ; attention_backward.py:195:27
	v_or_b32_e32 v48, s29, v102
	.loc	1 198 28                        ; attention_backward.py:198:28
	v_cndmask_b32_e32 v42, 0x80000000, v42, vcc_lo
	.loc	1 200 26                        ; attention_backward.py:200:26
	s_and_b32 vcc_lo, s2, s8
	.loc	1 201 24                        ; attention_backward.py:201:24
	v_cmp_gt_i32_e64 s11, s31, v46
	.loc	1 199 21                        ; attention_backward.py:199:21
	v_add_nc_u32_e32 v45, s14, v105
	.loc	1 198 28                        ; attention_backward.py:198:28
	v_cndmask_b32_e32 v43, 0x80000000, v43, vcc_lo
	.loc	1 200 26                        ; attention_backward.py:200:26
	s_and_b32 vcc_lo, s2, s9
	.loc	1 201 24                        ; attention_backward.py:201:24
	v_cmp_gt_i32_e64 s12, s31, v47
	.loc	1 199 21                        ; attention_backward.py:199:21
	v_add_nc_u32_e32 v46, s14, v83
	.loc	1 198 28                        ; attention_backward.py:198:28
	v_cndmask_b32_e32 v44, 0x80000000, v44, vcc_lo
	.loc	1 200 26                        ; attention_backward.py:200:26
	s_and_b32 vcc_lo, s2, s10
	.loc	1 201 24                        ; attention_backward.py:201:24
	v_cmp_gt_i32_e64 s13, s31, v48
	.loc	1 199 21                        ; attention_backward.py:199:21
	v_add_nc_u32_e32 v47, s14, v84
	.loc	1 198 28                        ; attention_backward.py:198:28
	v_cndmask_b32_e32 v45, 0x80000000, v45, vcc_lo
	.loc	1 200 26                        ; attention_backward.py:200:26
	s_and_b32 vcc_lo, s2, s11
	.loc	1 199 21                        ; attention_backward.py:199:21
	v_add_nc_u32_e32 v48, s14, v85
	.loc	1 198 28                        ; attention_backward.py:198:28
	v_cndmask_b32_e32 v46, 0x80000000, v46, vcc_lo
	.loc	1 200 26                        ; attention_backward.py:200:26
	s_and_b32 vcc_lo, s2, s12
	.loc	1 195 27                        ; attention_backward.py:195:27
	v_or_b32_e32 v173, s29, v119
	.loc	1 198 28                        ; attention_backward.py:198:28
	v_cndmask_b32_e32 v47, 0x80000000, v47, vcc_lo
	.loc	1 200 26                        ; attention_backward.py:200:26
	s_and_b32 vcc_lo, s2, s13
	.loc	1 195 27                        ; attention_backward.py:195:27
	v_or_b32_e32 v174, s29, v120
	.loc	1 198 28                        ; attention_backward.py:198:28
	v_cndmask_b32_e32 v48, 0x80000000, v48, vcc_lo
	s_clause 0x7
	buffer_load_u8 v41, v41, s[52:55], 0 offen
	buffer_load_u8 v42, v42, s[52:55], 0 offen
	buffer_load_u8 v43, v43, s[52:55], 0 offen
	buffer_load_u8 v44, v44, s[52:55], 0 offen
	buffer_load_u8 v45, v45, s[52:55], 0 offen
	buffer_load_u8 v46, v46, s[52:55], 0 offen
	buffer_load_u8 v47, v47, s[52:55], 0 offen
	buffer_load_u8 v48, v48, s[52:55], 0 offen
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 195 27                        ; attention_backward.py:195:27
	v_or_b32_e32 v175, s29, v118
	v_or_b32_e32 v176, s29, v117
	v_or_b32_e32 v177, s29, v116
	v_or_b32_e32 v178, s29, v115
	v_or_b32_e32 v179, s29, v114
	v_or_b32_e32 v180, s29, v113
	.loc	1 201 24                        ; attention_backward.py:201:24
	v_cmp_gt_i32_e64 s8, s31, v176
	v_cmp_gt_i32_e64 s10, s31, v175
	v_cmp_gt_i32_e64 s12, s31, v174
	v_cmp_gt_i32_e64 s14, s31, v173
	v_cmp_gt_i32_e64 s7, s31, v180
	v_cmp_gt_i32_e64 s9, s31, v179
	v_cmp_gt_i32_e64 s11, s31, v178
	v_cmp_gt_i32_e64 s13, s31, v177
	.loc	1 236 21                        ; attention_backward.py:236:21
	s_and_b32 s51, s4, s14
	s_and_b32 s43, s4, s12
	s_and_b32 s62, s4, s10
	s_and_b32 s42, s4, s8
	s_and_b32 s61, s4, s13
	s_and_b32 s47, s4, s11
	s_and_b32 s63, s4, s9
	.loc	1 238 13                        ; attention_backward.py:238:13
	s_and_b32 vcc_lo, exec_lo, s5
	.loc	1 236 21                        ; attention_backward.py:236:21
	s_and_b32 s50, s4, s7
	.loc	1 198 28                        ; attention_backward.py:198:28
	s_waitcnt vmcnt(7)
	ds_store_b8 v106, v41
	s_waitcnt vmcnt(6)
	ds_store_b8 v106, v42 offset:64
	s_waitcnt vmcnt(5)
	ds_store_b8 v107, v43
	s_waitcnt vmcnt(4)
	ds_store_b8 v107, v44 offset:64
	s_waitcnt vmcnt(3)
	ds_store_b8 v108, v45
	s_waitcnt vmcnt(2)
	ds_store_b8 v108, v46 offset:64
	s_waitcnt vmcnt(1)
	ds_store_b8 v109, v47
	s_waitcnt vmcnt(0)
	ds_store_b8 v109, v48 offset:64
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b64 v[181:182], v125
	ds_load_b64 v[183:184], v169
	ds_load_b64 v[185:186], v170
	ds_load_b64 v[187:188], v171
	.loc	1 204 29                        ; attention_backward.py:204:29
	s_waitcnt lgkmcnt(3)
	v_wmma_i32_16x16x16_iu4 v[41:48], v[181:182], v[86:87], v[33:40] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(2)
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[41:48], v[183:184], v[88:89], v[41:48] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu4 v[41:48], v[185:186], v[90:91], v[41:48] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	s_delay_alu instid0(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[41:48], v[187:188], v[92:93], v[41:48] neg_lo:[1,1,0]
	.loc	1 238 13                        ; attention_backward.py:238:13
	s_cbranch_vccnz .LBB0_9
; %bb.8:                                ;   in Loop: Header=BB0_7 Depth=1
	.loc	1 239 26                        ; attention_backward.py:239:26
	v_cmp_le_i32_e64 s15, v174, v121
	v_cmp_le_i32_e64 s16, v175, v121
	v_cmp_le_i32_e64 s17, v176, v121
	v_cmp_le_i32_e64 s18, v177, v121
	v_cmp_le_i32_e64 s19, v178, v121
	.loc	1 239 17 is_stmt 0              ; attention_backward.py:239:17
	s_and_b32 s15, s15, s43
	.loc	1 239 26                        ; attention_backward.py:239:26
	v_cmp_le_i32_e32 vcc_lo, v173, v121
	v_cmp_le_i32_e64 s20, v179, v121
	v_cmp_le_i32_e64 s21, v180, v121
	.loc	1 239 17                        ; attention_backward.py:239:17
	s_and_b32 s16, s16, s62
	s_and_b32 s17, s17, s42
	s_and_not1_b32 s43, s43, exec_lo
	s_and_b32 s15, s15, exec_lo
	s_and_b32 s18, s18, s61
	s_and_b32 s19, s19, s47
	s_or_b32 s43, s43, s15
	s_and_not1_b32 s15, s62, exec_lo
	s_and_b32 s16, s16, exec_lo
	s_and_not1_b32 s42, s42, exec_lo
	s_and_b32 s17, s17, exec_lo
	s_and_b32 s65, vcc_lo, s51
	s_and_b32 s20, s20, s63
	s_and_b32 s21, s21, s50
	s_or_b32 s62, s15, s16
	s_or_b32 s42, s42, s17
	s_and_not1_b32 s15, s61, exec_lo
	s_and_b32 s16, s18, exec_lo
	s_and_not1_b32 s17, s47, exec_lo
	s_and_b32 s18, s19, exec_lo
	s_and_not1_b32 s51, s51, exec_lo
	s_and_b32 s65, s65, exec_lo
	s_or_b32 s61, s15, s16
	s_or_b32 s47, s17, s18
	s_and_not1_b32 s15, s63, exec_lo
	s_and_b32 s16, s20, exec_lo
	s_and_not1_b32 s17, s50, exec_lo
	s_and_b32 s18, s21, exec_lo
	s_or_b32 s51, s51, s65
	s_or_b32 s63, s15, s16
	s_or_b32 s50, s17, s18
.LBB0_9:                                ;   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 0                           ; attention_backward.py:0
	v_add_lshl_u32 v181, s64, v119, 1
	.loc	1 240 13 is_stmt 1              ; attention_backward.py:240:13
	s_and_b32 vcc_lo, exec_lo, s6
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 0 0 is_stmt 0                 ; attention_backward.py:0
	v_add_nc_u32_e32 v182, 4, v181
	v_add_nc_u32_e32 v183, 8, v181
	v_add_nc_u32_e32 v184, 12, v181
	v_add_nc_u32_e32 v185, 16, v181
	v_add_nc_u32_e32 v186, 20, v181
	v_add_nc_u32_e32 v187, 24, v181
	v_add_nc_u32_e32 v188, 28, v181
	v_cndmask_b32_e64 v181, 0x80000000, v181, s14
	v_cndmask_b32_e64 v182, 0x80000000, v182, s12
	v_cndmask_b32_e64 v183, 0x80000000, v183, s10
	v_cndmask_b32_e64 v189, 0x80000000, v184, s8
	v_cndmask_b32_e64 v185, 0x80000000, v185, s13
	v_cndmask_b32_e64 v190, 0x80000000, v186, s11
	v_cndmask_b32_e64 v191, 0x80000000, v187, s9
	v_cndmask_b32_e64 v192, 0x80000000, v188, s7
	s_clause 0x7
	buffer_load_u16 v184, v181, s[56:59], 0 offen
	buffer_load_u16 v186, v182, s[56:59], 0 offen
	buffer_load_u16 v187, v183, s[56:59], 0 offen
	buffer_load_u16 v188, v189, s[56:59], 0 offen
	buffer_load_u16 v181, v185, s[56:59], 0 offen
	buffer_load_u16 v182, v190, s[56:59], 0 offen
	buffer_load_u16 v183, v191, s[56:59], 0 offen
	buffer_load_u16 v185, v192, s[56:59], 0 offen
	.loc	1 240 13                        ; attention_backward.py:240:13
	s_cbranch_vccnz .LBB0_6
; %bb.10:                               ;   in Loop: Header=BB0_7 Depth=1
	.loc	1 241 26 is_stmt 1              ; attention_backward.py:241:26
	v_cmp_ge_i32_e32 vcc_lo, v173, v123
	v_cmp_ge_i32_e64 s7, v174, v123
	.loc	1 242 26                        ; attention_backward.py:242:26
	v_cmp_le_i32_e64 s14, v173, v124
	v_cmp_le_i32_e64 s15, v174, v124
	.loc	1 241 26                        ; attention_backward.py:241:26
	v_cmp_ge_i32_e64 s8, v175, v123
	v_cmp_ge_i32_e64 s9, v176, v123
	.loc	1 242 26                        ; attention_backward.py:242:26
	v_cmp_le_i32_e64 s16, v175, v124
	v_cmp_le_i32_e64 s17, v176, v124
	.loc	1 241 26                        ; attention_backward.py:241:26
	v_cmp_ge_i32_e64 s10, v177, v123
	v_cmp_ge_i32_e64 s11, v178, v123
	.loc	1 242 26                        ; attention_backward.py:242:26
	v_cmp_le_i32_e64 s18, v177, v124
	v_cmp_le_i32_e64 s19, v178, v124
	.loc	1 242 17 is_stmt 0              ; attention_backward.py:242:17
	s_and_b32 s14, vcc_lo, s14
	s_and_b32 s7, s7, s15
	.loc	1 241 26 is_stmt 1              ; attention_backward.py:241:26
	v_cmp_ge_i32_e64 s12, v179, v123
	v_cmp_ge_i32_e64 s13, v180, v123
	.loc	1 242 26                        ; attention_backward.py:242:26
	v_cmp_le_i32_e64 s20, v179, v124
	v_cmp_le_i32_e64 s21, v180, v124
	.loc	1 242 17 is_stmt 0              ; attention_backward.py:242:17
	s_and_b32 s9, s9, s17
	s_and_b32 s8, s8, s16
	s_and_b32 s14, s14, s51
	s_and_b32 s7, s7, s43
	s_and_b32 s8, s8, s62
	s_and_b32 s9, s9, s42
	s_and_b32 s10, s10, s18
	s_and_b32 s11, s11, s19
	s_and_not1_b32 s15, s51, exec_lo
	s_and_b32 s14, s14, exec_lo
	s_and_not1_b32 s16, s43, exec_lo
	s_and_b32 s7, s7, exec_lo
	s_and_b32 s13, s13, s21
	s_and_b32 s12, s12, s20
	s_and_b32 s10, s10, s61
	s_and_b32 s11, s11, s47
	s_or_b32 s51, s15, s14
	s_or_b32 s43, s16, s7
	s_and_not1_b32 s7, s62, exec_lo
	s_and_b32 s8, s8, exec_lo
	s_and_not1_b32 s14, s42, exec_lo
	s_and_b32 s9, s9, exec_lo
	s_and_b32 s12, s12, s63
	s_and_b32 s13, s13, s50
	s_or_b32 s62, s7, s8
	s_or_b32 s42, s14, s9
	s_and_not1_b32 s7, s61, exec_lo
	s_and_b32 s8, s10, exec_lo
	s_and_not1_b32 s9, s47, exec_lo
	s_and_b32 s10, s11, exec_lo
	s_or_b32 s61, s7, s8
	s_or_b32 s47, s9, s10
	s_and_not1_b32 s7, s63, exec_lo
	s_and_b32 s8, s12, exec_lo
	s_and_not1_b32 s9, s50, exec_lo
	s_and_b32 s10, s13, exec_lo
	s_or_b32 s63, s7, s8
	s_or_b32 s50, s9, s10
	s_branch .LBB0_6
.LBB0_11:
	.loc	1 0 17                          ; attention_backward.py:0:17
	v_dual_mov_b32 v41, 0xff800000 :: v_dual_mov_b32 v42, 0
.LBB0_12:                               ; %Flow212
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 264 43 is_stmt 1              ; attention_backward.py:264:43
	v_cmp_gt_f32_e32 vcc_lo, 0x800000, v42
.Ltmp186:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_dual_add_f32 v33, v61, v138 :: v_dual_add_f32 v34, v62, v131
	v_dual_add_f32 v35, v63, v132 :: v_dual_add_f32 v44, v74, v139
.Ltmp187:
	.loc	1 264 43                        ; attention_backward.py:264:43
	v_cndmask_b32_e64 v39, 0, 32, vcc_lo
	v_cndmask_b32_e64 v38, 0, 0x42000000, vcc_lo
.Ltmp188:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_dual_add_f32 v36, v64, v136 :: v_dual_add_f32 v43, v73, v137
	v_dual_add_f32 v61, v57, v142 :: v_dual_add_f32 v62, v58, v143
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_4)
.Ltmp189:
	.loc	1 264 43                        ; attention_backward.py:264:43
	v_ldexp_f32 v39, v42, v39
.Ltmp190:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_dual_add_f32 v63, v59, v144 :: v_dual_add_f32 v70, v70, v154
.Ltmp191:
	.loc	1 266 9                         ; attention_backward.py:266:9
	v_lshlrev_b32_e32 v58, 2, v130
.Ltmp192:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_dual_add_f32 v73, v77, v158 :: v_dual_add_f32 v74, v78, v159
.Ltmp193:
	.loc	1 264 43                        ; attention_backward.py:264:43
	v_log_f32_e32 v39, v39
.Ltmp194:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_dual_add_f32 v78, v50, v149 :: v_dual_lshlrev_b32 v59, 2, v94
.Ltmp195:
	.loc	1 264 26                        ; attention_backward.py:264:26
	v_cmp_lt_f32_e32 vcc_lo, 0, v42
	.loc	1 124 21                        ; attention_backward.py:124:21
	v_or_b32_e32 v37, s46, v94
.Ltmp196:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_dual_add_f32 v45, v75, v140 :: v_dual_add_f32 v46, v76, v141
	v_dual_add_f32 v64, v60, v152 :: v_dual_add_f32 v69, v69, v153
	s_delay_alu instid0(TRANS32_DEP_1)
	v_dual_add_f32 v77, v49, v148 :: v_dual_sub_f32 v38, v39, v38
	v_add_f32_e32 v75, v79, v145
.Ltmp197:
	.loc	1 266 9                         ; attention_backward.py:266:9
	v_add3_u32 v60, 0, v58, v127
.Ltmp198:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_e32 v137, v66, v165
.Ltmp199:
	.loc	1 266 9                         ; attention_backward.py:266:9
	s_waitcnt lgkmcnt(0)
	.loc	1 264 37                        ; attention_backward.py:264:37
	v_add_f32_e32 v38, v41, v38
	.loc	1 266 9                         ; attention_backward.py:266:9
	s_barrier
	s_load_b32 s52, s[0:1], 0x74
	v_cmp_eq_u32_e64 s0, 0, v128
	v_add_lshl_u32 v39, s28, v94, 2
	.loc	1 264 17                        ; attention_backward.py:264:17
	v_dual_cndmask_b32 v127, 0, v38 :: v_dual_add_nc_u32 v38, 0, v59
	.loc	1 128 21                        ; attention_backward.py:128:21
	v_cmp_gt_i32_e32 vcc_lo, s30, v37
.Ltmp200:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_dual_add_f32 v136, v65, v156 :: v_dual_mov_b32 v57, 0
.Ltmp201:
	.loc	1 266 9                         ; attention_backward.py:266:9
	ds_store_b32 v60, v127
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b32 v37, v38
	s_and_b32 vcc_lo, s0, vcc_lo
.Ltmp202:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_dual_add_f32 v76, v80, v146 :: v_dual_cndmask_b32 v39, 0x80000000, v39
	v_dual_add_f32 v71, v71, v155 :: v_dual_add_f32 v72, v72, v160
.Ltmp203:
	.loc	1 266 9                         ; attention_backward.py:266:9
	s_and_b32 s9, s25, 0xffff
	s_mov_b32 s11, 0x31027000
	s_mov_b32 s10, 0x7ffffffe
	s_mov_b32 s8, s24
.Ltmp204:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_dual_add_f32 v53, v53, v161 :: v_dual_add_f32 v54, v54, v162
	v_dual_add_f32 v55, v55, v157 :: v_dual_add_f32 v56, v56, v164
	v_dual_add_f32 v79, v51, v150 :: v_dual_add_f32 v80, v52, v151
	v_dual_add_f32 v139, v68, v147 :: v_dual_mov_b32 v40, 0
	v_add_f32_e32 v138, v67, v163
	v_lshrrev_b32_e32 v126, 4, v0
.Ltmp205:
	.loc	1 266 9                         ; attention_backward.py:266:9
	s_waitcnt lgkmcnt(0)
	buffer_store_b32 v37, v39, s[8:11], 0 offen
	.loc	1 267 9                         ; attention_backward.py:267:9
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v57, v[33:36]
	ds_store_b128 v57, v[43:46] offset:16
	ds_store_b128 v57, v[61:64] offset:32
	ds_store_b128 v57, v[69:72] offset:48
	ds_store_b128 v57, v[53:56] offset:64
	ds_store_b128 v57, v[73:76] offset:80
	ds_store_b128 v57, v[77:80] offset:96
	ds_store_b128 v57, v[136:139] offset:112
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b32 v37, v38
	s_and_b32 s9, s27, 0xffff
	s_mov_b32 s8, s26
	v_mov_b32_e32 v38, v40
	v_mov_b32_e32 v48, v40
	v_mov_b32_e32 v47, v40
	v_mov_b32_e32 v42, v40
	v_mov_b32_e32 v41, v40
	v_mov_b32_e32 v52, v40
	v_mov_b32_e32 v51, v40
	v_mov_b32_e32 v50, v40
	v_mov_b32_e32 v49, v40
	v_mov_b32_e32 v68, v40
	v_mov_b32_e32 v67, v40
	v_mov_b32_e32 v66, v40
	v_mov_b32_e32 v65, v40
	.loc	1 270 9                         ; attention_backward.py:270:9
	s_and_not1_b32 vcc_lo, exec_lo, s22
	.loc	1 267 9                         ; attention_backward.py:267:9
	s_waitcnt lgkmcnt(0)
	buffer_store_b32 v37, v39, s[8:11], 0 offen
	.loc	1 396 43                        ; attention_backward.py:396:43
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v57, v[33:36]
	ds_store_b128 v57, v[43:46] offset:16
	ds_store_b128 v57, v[61:64] offset:32
	ds_store_b128 v57, v[69:72] offset:48
	ds_store_b128 v57, v[53:56] offset:64
	ds_store_b128 v57, v[73:76] offset:80
	v_mov_b32_e32 v39, v40
	v_mov_b32_e32 v37, v40
	v_mov_b32_e32 v36, v40
	v_mov_b32_e32 v35, v40
	v_mov_b32_e32 v34, v40
	v_mov_b32_e32 v33, v40
	v_mov_b32_e32 v46, v40
	v_mov_b32_e32 v45, v40
	v_mov_b32_e32 v44, v40
	v_mov_b32_e32 v43, v40
	v_mov_b32_e32 v56, v40
	v_mov_b32_e32 v55, v40
	v_mov_b32_e32 v54, v40
	v_mov_b32_e32 v53, v40
	v_mov_b32_e32 v72, v40
	v_mov_b32_e32 v71, v40
	v_mov_b32_e32 v70, v40
	v_mov_b32_e32 v69, v40
	ds_store_b128 v57, v[77:80] offset:96
	ds_store_b128 v57, v[136:139] offset:112
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_cbranch_vccnz .LBB0_19
; %bb.13:                               ; %.lr.ph67
	.loc	1 0 43 is_stmt 0                ; attention_backward.py:0:43
	v_dual_mov_b32 v49, 0x5410 :: v_dual_and_b32 v46, 16, v0
	.loc	1 168 40 is_stmt 1              ; attention_backward.py:168:40
	v_lshlrev_b32_e32 v33, 1, v94
	v_lshrrev_b32_e32 v34, 4, v128
	.loc	1 396 43                        ; attention_backward.py:396:43
	ds_load_b32 v94, v60
	v_cmp_eq_u32_e32 vcc_lo, 0, v46
	v_mov_b32_e32 v46, 0x7632
	v_or_b32_e32 v129, v129, v58
	.loc	1 168 40                        ; attention_backward.py:168:40
	v_or_b32_e32 v35, 1, v33
	v_or_b32_e32 v128, v34, v59
	v_dual_cndmask_b32 v49, 0x1054, v49 :: v_dual_add_nc_u32 v134, 0, v134
	v_dual_cndmask_b32 v46, 0x3276, v46 :: v_dual_add_nc_u32 v133, 0, v133
	v_xor_b32_e32 v65, 60, v129
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_lshl_or_b32 v49, v49, 8, v49
	.loc	1 310 21                        ; attention_backward.py:310:21
	v_cmp_gt_i32_e64 s0, s52, v33
	v_lshl_or_b32 v46, v46, 8, v46
	v_cmp_gt_i32_e64 s1, s52, v35
	v_xor_b32_e32 v33, 0x84, v128
	v_dual_mov_b32 v66, v57 :: v_dual_and_b32 v49, 0x540054, v49
	s_delay_alu instid0(VALU_DEP_4)
	v_and_b32_e32 v46, 0x760076, v46
	v_xor_b32_e32 v34, 0x108, v128
	v_xor_b32_e32 v35, 0x18c, v128
	v_xor_b32_e32 v36, 0x210, v128
	v_xor_b32_e32 v37, 0x294, v128
	v_xor_b32_e32 v38, 0x318, v128
	v_xor_b32_e32 v39, 0x39c, v128
	v_xor_b32_e32 v40, 0x420, v128
	v_xor_b32_e32 v41, 0x4a4, v128
	v_xor_b32_e32 v42, 0x528, v128
	v_xor_b32_e32 v43, 0x5ac, v128
	v_xor_b32_e32 v44, 0x630, v128
	v_xor_b32_e32 v45, 0x6b4, v128
	v_xor_b32_e32 v47, 0x738, v128
	v_xor_b32_e32 v48, 0x7bc, v128
	v_xor_b32_e32 v50, 4, v129
	v_xor_b32_e32 v51, 8, v129
	v_xor_b32_e32 v52, 12, v129
	v_xor_b32_e32 v53, 16, v129
	v_xor_b32_e32 v54, 20, v129
	v_xor_b32_e32 v55, 24, v129
	v_xor_b32_e32 v56, 28, v129
	v_xor_b32_e32 v58, 32, v129
	v_xor_b32_e32 v59, 36, v129
	v_xor_b32_e32 v60, 40, v129
	v_xor_b32_e32 v61, 44, v129
	v_xor_b32_e32 v62, 48, v129
	v_lshl_or_b32 v49, v49, 4, v49
	v_xor_b32_e32 v63, 52, v129
	v_xor_b32_e32 v64, 56, v129
	v_add_nc_u32_e32 v165, 0, v65
	v_mov_b32_e32 v65, 0
	v_lshl_or_b32 v46, v46, 4, v46
	v_dual_mov_b32 v68, v57 :: v_dual_and_b32 v131, 0x5040504, v49
	v_lshl_add_u32 v130, v130, 1, 0
	v_dual_mov_b32 v70, v57 :: v_dual_add_nc_u32 v135, 0, v135
	s_delay_alu instid0(VALU_DEP_4)
	v_dual_mov_b32 v67, v57 :: v_dual_and_b32 v132, 0x7060706, v46
	v_dual_mov_b32 v69, v57 :: v_dual_add_nc_u32 v136, 0, v33
	v_dual_mov_b32 v72, v57 :: v_dual_add_nc_u32 v137, 0, v34
	v_dual_mov_b32 v71, v57 :: v_dual_add_nc_u32 v138, 0, v35
	v_add_nc_u32_e32 v139, 0, v36
	v_dual_mov_b32 v49, 0 :: v_dual_add_nc_u32 v140, 0, v37
	v_add_nc_u32_e32 v141, 0, v38
	v_add_nc_u32_e32 v142, 0, v39
	v_add_nc_u32_e32 v143, 0, v40
	v_add_nc_u32_e32 v144, 0, v41
	v_add_nc_u32_e32 v145, 0, v42
	v_add_nc_u32_e32 v146, 0, v43
	v_dual_mov_b32 v42, v57 :: v_dual_add_nc_u32 v147, 0, v44
	v_dual_mov_b32 v41, 0 :: v_dual_add_nc_u32 v148, 0, v45
	v_dual_mov_b32 v44, v57 :: v_dual_add_nc_u32 v149, 0, v47
	v_dual_mov_b32 v43, v57 :: v_dual_add_nc_u32 v150, 0, v48
	v_dual_mov_b32 v46, v57 :: v_dual_add_nc_u32 v151, 0, v50
	v_dual_mov_b32 v45, v57 :: v_dual_add_nc_u32 v152, 0, v51
	v_dual_mov_b32 v48, v57 :: v_dual_add_nc_u32 v153, 0, v52
	v_dual_mov_b32 v47, v57 :: v_dual_add_nc_u32 v154, 0, v53
	v_dual_mov_b32 v34, v57 :: v_dual_add_nc_u32 v155, 0, v54
	v_dual_mov_b32 v33, 0 :: v_dual_add_nc_u32 v156, 0, v55
	v_dual_mov_b32 v36, v57 :: v_dual_add_nc_u32 v157, 0, v56
	v_dual_mov_b32 v35, v57 :: v_dual_add_nc_u32 v158, 0, v58
	v_dual_mov_b32 v38, v57 :: v_dual_add_nc_u32 v159, 0, v59
	v_dual_mov_b32 v37, v57 :: v_dual_add_nc_u32 v160, 0, v60
	v_dual_mov_b32 v40, v57 :: v_dual_add_nc_u32 v161, 0, v61
	v_dual_mov_b32 v39, v57 :: v_dual_add_nc_u32 v162, 0, v62
	v_add_nc_u32_e32 v163, 0, v63
	v_add_nc_u32_e32 v164, 0, v64
	v_mov_b32_e32 v50, v57
	v_mov_b32_e32 v51, v57
	v_mov_b32_e32 v52, v57
	v_mov_b32_e32 v53, v57
	v_mov_b32_e32 v54, v57
	v_mov_b32_e32 v55, v57
	v_mov_b32_e32 v56, v57
	s_and_b32 s41, s41, 0xffff
	s_and_b32 s45, s45, 0xffff
	s_and_b32 s49, s49, 0xffff
	s_mov_b32 s42, s10
	s_mov_b32 s43, s11
	s_mov_b32 s46, s10
	s_mov_b32 s47, s11
	s_mov_b32 s30, 0x76543210
	s_mov_b32 s50, s10
	s_mov_b32 s51, s11
	s_branch .LBB0_15
.LBB0_14:                               ;   in Loop: Header=BB0_15 Depth=1
	.loc	1 271 27                        ; attention_backward.py:271:27
	s_or_b32 s11, s33, 1
	s_or_b32 s10, s33, 2
	s_or_b32 s9, s33, 3
	s_or_b32 s8, s33, 4
	s_or_b32 s7, s33, 5
	s_or_b32 s12, s33, 6
	s_or_b32 s13, s33, 7
	s_or_b32 s14, s33, 8
	s_or_b32 s15, s33, 9
	s_or_b32 s16, s33, 10
	s_or_b32 s17, s33, 11
	s_or_b32 s18, s33, 12
	s_or_b32 s19, s33, 13
	s_or_b32 s20, s33, 14
	s_or_b32 s21, s33, 15
	.loc	1 386 21                        ; attention_backward.py:386:21
	v_mad_u64_u32 v[183:184], null, s62, s35, v[0:1]
	.loc	1 387 27                        ; attention_backward.py:387:27
	s_cmp_lt_i32 s33, s31
	.loc	1 290 33                        ; attention_backward.py:290:33
	s_waitcnt vmcnt(8)
	v_mov_b16_e64 v204.h, v58.l
	.loc	1 387 27                        ; attention_backward.py:387:27
	s_cselect_b32 s22, -1, 0
	s_cmp_lt_i32 s11, s31
	.loc	1 299 21                        ; attention_backward.py:299:21
	v_cvt_f32_i32_e32 v58, v73
	.loc	1 387 27                        ; attention_backward.py:387:27
	s_cselect_b32 s11, -1, 0
	s_cmp_lt_i32 s10, s31
	.loc	1 386 21                        ; attention_backward.py:386:21
	v_add_nc_u32_e32 v184, s35, v183
	.loc	1 387 27                        ; attention_backward.py:387:27
	s_cselect_b32 s10, -1, 0
	s_cmp_lt_i32 s9, s31
	.loc	1 290 33                        ; attention_backward.py:290:33
	v_mov_b16_e64 v202.h, v60.l
	.loc	1 387 27                        ; attention_backward.py:387:27
	s_cselect_b32 s9, -1, 0
	s_cmp_lt_i32 s8, s31
	.loc	1 290 33                        ; attention_backward.py:290:33
	v_mov_b16_e64 v203.h, v59.l
	.loc	1 387 27                        ; attention_backward.py:387:27
	s_cselect_b32 s8, -1, 0
	s_cmp_lt_i32 s7, s31
	.loc	1 299 21                        ; attention_backward.py:299:21
	v_cvt_f32_i32_e32 v59, v74
	.loc	1 387 27                        ; attention_backward.py:387:27
	s_cselect_b32 s7, -1, 0
	s_cmp_lt_i32 s12, s31
	.loc	1 299 21                        ; attention_backward.py:299:21
	v_cvt_f32_i32_e32 v60, v75
	v_mul_f32_e32 v75, v122, v58
	.loc	1 386 21                        ; attention_backward.py:386:21
	v_add_nc_u32_e32 v185, s35, v184
	.loc	1 387 27                        ; attention_backward.py:387:27
	s_cselect_b32 s12, -1, 0
	s_cmp_lt_i32 s13, s31
	.loc	1 290 33                        ; attention_backward.py:290:33
	v_mov_b16_e64 v201.h, v61.l
	.loc	1 387 27                        ; attention_backward.py:387:27
	s_cselect_b32 s13, -1, 0
	s_cmp_lt_i32 s14, s31
	.loc	1 299 21                        ; attention_backward.py:299:21
	v_cvt_f32_i32_e32 v61, v76
	.loc	1 387 27                        ; attention_backward.py:387:27
	s_cselect_b32 s14, -1, 0
	s_cmp_lt_i32 s15, s31
	.loc	1 299 21                        ; attention_backward.py:299:21
	v_mul_f32_e32 v76, v122, v59
	.loc	1 386 21                        ; attention_backward.py:386:21
	v_add_nc_u32_e32 v186, s35, v185
	.loc	1 387 27                        ; attention_backward.py:387:27
	s_cselect_b32 s15, -1, 0
	s_cmp_lt_i32 s16, s31
	.loc	1 0 0 is_stmt 0                 ; attention_backward.py:0
	v_bfe_i32 v172, v172, 0, 8
	.loc	1 387 27                        ; attention_backward.py:387:27
	s_cselect_b32 s16, -1, 0
	s_cmp_lt_i32 s17, s31
	.loc	1 290 33 is_stmt 1              ; attention_backward.py:290:33
	v_mov_b16_e64 v200.h, v62.l
	.loc	1 299 21                        ; attention_backward.py:299:21
	v_cvt_f32_i32_e32 v62, v77
	v_mul_f32_e32 v77, v122, v60
	.loc	1 386 21                        ; attention_backward.py:386:21
	v_add_nc_u32_e32 v187, s35, v186
	.loc	1 387 27                        ; attention_backward.py:387:27
	s_cselect_b32 s17, -1, 0
	s_cmp_lt_i32 s18, s31
	.loc	1 0 0 is_stmt 0                 ; attention_backward.py:0
	v_bfe_i32 v169, v169, 0, 8
	.loc	1 387 27                        ; attention_backward.py:387:27
	s_cselect_b32 s18, -1, 0
	s_cmp_lt_i32 s19, s31
	.loc	1 0 0                           ; attention_backward.py:0
	v_bfe_i32 v166, v166, 0, 8
	.loc	1 387 27                        ; attention_backward.py:387:27
	s_cselect_b32 s19, -1, 0
	s_cmp_lt_i32 s20, s31
	.loc	1 290 33 is_stmt 1              ; attention_backward.py:290:33
	v_mov_b16_e32 v64.h, v63.l
	s_waitcnt vmcnt(0)
	v_mov_b16_e64 v176.h, v175.l
	.loc	1 299 21                        ; attention_backward.py:299:21
	v_cvt_f32_i32_e32 v63, v78
	v_mul_f32_e32 v78, v122, v61
	v_dual_mul_f32 v175, v122, v62 :: v_dual_add_nc_u32 v188, s35, v187
	.loc	1 305 30                        ; attention_backward.py:305:30
	v_lshrrev_b16 v62.l, 4, v172.l
	.loc	1 387 27                        ; attention_backward.py:387:27
	s_cselect_b32 s20, -1, 0
	s_cmp_lt_i32 s21, s31
	.loc	1 0 0 is_stmt 0                 ; attention_backward.py:0
	v_bfe_i32 v173, v173, 0, 8
	.loc	1 387 27                        ; attention_backward.py:387:27
	s_cselect_b32 s21, -1, 0
	.loc	1 387 26                        ; attention_backward.py:387:26
	s_and_b32 vcc_lo, s3, s22
	.loc	1 385 30 is_stmt 1              ; attention_backward.py:385:30
	v_lshlrev_b32_e32 v184, 1, v184
	v_lshlrev_b32_e32 v183, 1, v183
	.loc	1 305 28                        ; attention_backward.py:305:28
	v_mov_b16_e64 v199.l, 0
	.loc	1 299 21                        ; attention_backward.py:299:21
	v_cvt_f32_i32_e32 v73, v79
	.loc	1 386 21                        ; attention_backward.py:386:21
	v_add_nc_u32_e32 v189, s35, v188
	.loc	1 305 30                        ; attention_backward.py:305:30
	v_and_b16 v210.l, v62.l, 15
	v_lshrrev_b16 v62.l, 4, v169.l
	v_lshrrev_b16 v62.h, 4, v166.l
	.loc	1 385 30                        ; attention_backward.py:385:30
	v_cndmask_b32_e32 v183, 0x80000000, v183, vcc_lo
	.loc	1 387 26                        ; attention_backward.py:387:26
	s_and_b32 vcc_lo, s3, s11
	.loc	1 299 21                        ; attention_backward.py:299:21
	v_mul_f32_e32 v214, v122, v73
	v_dual_mul_f32 v213, v122, v63 :: v_dual_add_nc_u32 v190, s35, v189
	.loc	1 305 30                        ; attention_backward.py:305:30
	v_and_b16 v62.l, v62.l, 15
	v_and_b16 v212.l, v62.h, 15
	.loc	1 305 28 is_stmt 0              ; attention_backward.py:305:28
	v_mov_b16_e64 v62.h, v199.l
	.loc	1 385 30 is_stmt 1              ; attention_backward.py:385:30
	v_dual_cndmask_b32 v184, 0x80000000, v184 :: v_dual_and_b32 v79, 15, v173
	.loc	1 387 26                        ; attention_backward.py:387:26
	s_and_b32 vcc_lo, s3, s10
	.loc	1 385 30                        ; attention_backward.py:385:30
	v_lshlrev_b32_e32 v186, 1, v186
	v_lshlrev_b32_e32 v185, 1, v185
	.loc	1 0 0 is_stmt 0                 ; attention_backward.py:0
	v_bfe_i32 v168, v168, 0, 8
	.loc	1 299 21 is_stmt 1              ; attention_backward.py:299:21
	v_cvt_f32_i32_e32 v74, v80
	.loc	1 305 28                        ; attention_backward.py:305:28
	v_mov_b16_e64 v212.h, v199.l
	.loc	1 304 27                        ; attention_backward.py:304:27
	v_and_b32_e32 v205, 15, v166
	.loc	1 306 50                        ; attention_backward.py:306:50
	v_or_b32_e32 v219, -16, v79
	.loc	1 386 21                        ; attention_backward.py:386:21
	v_add_nc_u32_e32 v191, s35, v190
	.loc	1 385 30                        ; attention_backward.py:385:30
	v_cndmask_b32_e32 v185, 0x80000000, v185, vcc_lo
	.loc	1 387 26                        ; attention_backward.py:387:26
	s_and_b32 vcc_lo, s3, s9
	.loc	1 0 0 is_stmt 0                 ; attention_backward.py:0
	v_bfe_i32 v171, v171, 0, 8
	.loc	1 385 30 is_stmt 1              ; attention_backward.py:385:30
	v_cndmask_b32_e32 v186, 0x80000000, v186, vcc_lo
	.loc	1 387 26                        ; attention_backward.py:387:26
	s_and_b32 vcc_lo, s3, s8
	.loc	1 385 30                        ; attention_backward.py:385:30
	v_lshlrev_b32_e32 v188, 1, v188
	v_lshlrev_b32_e32 v187, 1, v187
	.loc	1 299 21                        ; attention_backward.py:299:21
	v_dual_mul_f32 v215, v122, v74 :: v_dual_add_nc_u32 v192, s35, v191
	.loc	1 305 30                        ; attention_backward.py:305:30
	v_lshrrev_b16 v63.h, 4, v168.l
	.loc	1 306 50                        ; attention_backward.py:306:50
	v_or_b32_e32 v221, -16, v205
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 385 30                        ; attention_backward.py:385:30
	v_dual_cndmask_b32 v187, 0x80000000, v187 :: v_dual_and_b32 v74, 15, v172
	.loc	1 387 26                        ; attention_backward.py:387:26
	s_and_b32 vcc_lo, s3, s7
	.loc	1 305 30                        ; attention_backward.py:305:30
	v_lshrrev_b16 v61.h, 4, v171.l
	.loc	1 385 30                        ; attention_backward.py:385:30
	v_cndmask_b32_e32 v188, 0x80000000, v188, vcc_lo
	.loc	1 387 26                        ; attention_backward.py:387:26
	s_and_b32 vcc_lo, s3, s12
	.loc	1 385 30                        ; attention_backward.py:385:30
	v_lshlrev_b32_e32 v190, 1, v190
	v_lshlrev_b32_e32 v189, 1, v189
	.loc	1 305 30                        ; attention_backward.py:305:30
	v_and_b16 v216.l, v63.h, 15
	.loc	1 305 28 is_stmt 0              ; attention_backward.py:305:28
	v_mov_b16_e64 v216.h, v199.l
	.loc	1 304 27 is_stmt 1              ; attention_backward.py:304:27
	v_and_b32_e32 v80, 15, v169
	.loc	1 306 50                        ; attention_backward.py:306:50
	v_or_b32_e32 v218, -16, v74
	.loc	1 386 21                        ; attention_backward.py:386:21
	v_add_nc_u32_e32 v193, s35, v192
	.loc	1 385 30                        ; attention_backward.py:385:30
	v_cndmask_b32_e32 v189, 0x80000000, v189, vcc_lo
	.loc	1 387 26                        ; attention_backward.py:387:26
	s_and_b32 vcc_lo, s3, s13
	.loc	1 305 30                        ; attention_backward.py:305:30
	v_and_b16 v208.l, v61.h, 15
	v_lshrrev_b16 v61.h, 4, v173.l
	.loc	1 306 50                        ; attention_backward.py:306:50
	v_or_b32_e32 v220, -16, v80
	.loc	1 386 21                        ; attention_backward.py:386:21
	v_add_nc_u32_e32 v194, s35, v193
	.loc	1 385 30                        ; attention_backward.py:385:30
	v_cndmask_b32_e32 v190, 0x80000000, v190, vcc_lo
	.loc	1 387 26                        ; attention_backward.py:387:26
	s_and_b32 vcc_lo, s3, s14
	.loc	1 385 30                        ; attention_backward.py:385:30
	v_lshlrev_b32_e32 v192, 1, v192
	v_lshlrev_b32_e32 v191, 1, v191
	.loc	1 0 0 is_stmt 0                 ; attention_backward.py:0
	v_bfe_i32 v167, v167, 0, 8
	.loc	1 305 30 is_stmt 1              ; attention_backward.py:305:30
	v_and_b16 v211.l, v61.h, 15
	.loc	1 305 28 is_stmt 0              ; attention_backward.py:305:28
	v_mov_b16_e64 v208.h, v199.l
	.loc	1 386 21 is_stmt 1              ; attention_backward.py:386:21
	v_add_nc_u32_e32 v195, s35, v194
	.loc	1 305 28                        ; attention_backward.py:305:28
	v_mov_b16_e64 v211.h, v199.l
	.loc	1 304 27                        ; attention_backward.py:304:27
	v_and_b32_e32 v73, 15, v171
	.loc	1 385 30                        ; attention_backward.py:385:30
	v_cndmask_b32_e32 v191, 0x80000000, v191, vcc_lo
	.loc	1 387 26                        ; attention_backward.py:387:26
	s_and_b32 vcc_lo, s3, s15
	.loc	1 290 33                        ; attention_backward.py:290:33
	v_mov_b16_e64 v199.h, v174.l
	.loc	1 385 30                        ; attention_backward.py:385:30
	v_cndmask_b32_e32 v192, 0x80000000, v192, vcc_lo
	.loc	1 387 26                        ; attention_backward.py:387:26
	s_and_b32 vcc_lo, s3, s16
	.loc	1 385 30                        ; attention_backward.py:385:30
	v_lshlrev_b32_e32 v194, 1, v194
	v_lshlrev_b32_e32 v193, 1, v193
	.loc	1 290 33                        ; attention_backward.py:290:33
	v_mov_b16_e64 v174.l, v199.l
	v_mov_b16_e64 v174.h, v64.l
	.loc	1 304 27                        ; attention_backward.py:304:27
	v_and_b32_e32 v207, 15, v168
	v_and_b32_e32 v206, 15, v167
	.loc	1 306 50                        ; attention_backward.py:306:50
	v_or_b32_e32 v217, -16, v73
	.loc	1 386 21                        ; attention_backward.py:386:21
	v_add_nc_u32_e32 v196, s35, v195
	.loc	1 385 30                        ; attention_backward.py:385:30
	v_cndmask_b32_e32 v193, 0x80000000, v193, vcc_lo
	.loc	1 387 26                        ; attention_backward.py:387:26
	s_and_b32 vcc_lo, s3, s17
	.loc	1 305 30                        ; attention_backward.py:305:30
	v_lshrrev_b16 v63.l, 4, v167.l
	.loc	1 306 50                        ; attention_backward.py:306:50
	v_or_b32_e32 v222, -16, v206
	.loc	1 386 21                        ; attention_backward.py:386:21
	v_add_nc_u32_e32 v197, s35, v196
	.loc	1 385 30                        ; attention_backward.py:385:30
	v_cndmask_b32_e32 v194, 0x80000000, v194, vcc_lo
	.loc	1 387 26                        ; attention_backward.py:387:26
	s_and_b32 vcc_lo, s3, s18
	.loc	1 385 30                        ; attention_backward.py:385:30
	v_lshlrev_b32_e32 v196, 1, v196
	v_lshlrev_b32_e32 v195, 1, v195
	.loc	1 305 30                        ; attention_backward.py:305:30
	v_and_b16 v63.l, v63.l, 15
	.loc	1 305 28 is_stmt 0              ; attention_backward.py:305:28
	v_mov_b16_e64 v63.h, v199.l
	.loc	1 385 30 is_stmt 1              ; attention_backward.py:385:30
	v_lshlrev_b32_e32 v198, 1, v197
	v_add_lshl_u32 v197, v197, s35, 1
	v_cndmask_b32_e32 v195, 0x80000000, v195, vcc_lo
	.loc	1 387 26                        ; attention_backward.py:387:26
	s_and_b32 vcc_lo, s3, s19
	.loc	1 385 30                        ; attention_backward.py:385:30
	s_clause 0x7
	buffer_load_u16 v183, v183, s[48:51], 0 offen
	buffer_load_u16 v184, v184, s[48:51], 0 offen
	buffer_load_u16 v185, v185, s[48:51], 0 offen
	buffer_load_u16 v186, v186, s[48:51], 0 offen
	buffer_load_u16 v187, v187, s[48:51], 0 offen
	buffer_load_u16 v188, v188, s[48:51], 0 offen
	buffer_load_u16 v189, v189, s[48:51], 0 offen
	buffer_load_u16 v190, v190, s[48:51], 0 offen
	v_cndmask_b32_e32 v196, 0x80000000, v196, vcc_lo
	.loc	1 387 26                        ; attention_backward.py:387:26
	s_and_b32 vcc_lo, s3, s20
	.loc	1 304 28                        ; attention_backward.py:304:28
	v_and_b16 v58.l, v171.l, 15
	.loc	1 385 30                        ; attention_backward.py:385:30
	v_cndmask_b32_e32 v198, 0x80000000, v198, vcc_lo
	.loc	1 387 26                        ; attention_backward.py:387:26
	s_and_b32 vcc_lo, s3, s21
	.loc	1 304 28                        ; attention_backward.py:304:28
	v_and_b16 v58.h, v172.l, 15
	.loc	1 385 30                        ; attention_backward.py:385:30
	v_cndmask_b32_e32 v197, 0x80000000, v197, vcc_lo
	s_clause 0x7
	buffer_load_u16 v191, v191, s[48:51], 0 offen
	buffer_load_u16 v192, v192, s[48:51], 0 offen
	buffer_load_u16 v193, v193, s[48:51], 0 offen
	buffer_load_u16 v194, v194, s[48:51], 0 offen
	buffer_load_u16 v195, v195, s[48:51], 0 offen
	buffer_load_u16 v196, v196, s[48:51], 0 offen
	buffer_load_u16 v198, v198, s[48:51], 0 offen
	buffer_load_u16 v197, v197, s[48:51], 0 offen
	.loc	1 306 36                        ; attention_backward.py:306:36
	v_cmp_lt_u16_e32 vcc_lo, 7, v58.l
	.loc	1 304 28                        ; attention_backward.py:304:28
	v_and_b16 v59.l, v173.l, 15
	v_and_b16 v59.h, v169.l, 15
	v_and_b16 v60.l, v166.l, 15
	v_and_b16 v60.h, v167.l, 15
	.loc	1 306 27                        ; attention_backward.py:306:27
	v_cndmask_b32_e32 v73, v73, v217, vcc_lo
	.loc	1 306 36 is_stmt 0              ; attention_backward.py:306:36
	v_cmp_lt_u16_e32 vcc_lo, 7, v58.h
	.loc	1 304 28 is_stmt 1              ; attention_backward.py:304:28
	v_and_b16 v61.l, v168.l, 15
	.loc	1 306 50                        ; attention_backward.py:306:50
	v_or_b32_e32 v217, -16, v207
	.loc	1 305 28                        ; attention_backward.py:305:28
	v_mov_b16_e64 v210.h, v199.l
	.loc	1 290 33                        ; attention_backward.py:290:33
	v_mov_b16_e64 v64.l, v199.l
	.loc	1 306 27                        ; attention_backward.py:306:27
	v_cndmask_b32_e32 v58, v74, v218, vcc_lo
	.loc	1 306 36 is_stmt 0              ; attention_backward.py:306:36
	v_cmp_lt_u16_e32 vcc_lo, 7, v59.l
	.loc	1 307 52 is_stmt 1              ; attention_backward.py:307:52
	v_or_b32_e32 v218, -16, v63
	.loc	1 0 0 is_stmt 0                 ; attention_backward.py:0
	v_bfe_i32 v170, v170, 0, 8
	.loc	1 290 33 is_stmt 1              ; attention_backward.py:290:33
	v_mov_b16_e64 v200.l, v199.l
	v_mov_b16_e64 v201.l, v199.l
	.loc	1 306 27                        ; attention_backward.py:306:27
	v_cndmask_b32_e32 v74, v79, v219, vcc_lo
	.loc	1 306 36 is_stmt 0              ; attention_backward.py:306:36
	v_cmp_lt_u16_e32 vcc_lo, 7, v59.h
	.loc	1 307 52 is_stmt 1              ; attention_backward.py:307:52
	v_or_b32_e32 v219, -16, v216
	.loc	1 290 33                        ; attention_backward.py:290:33
	v_mov_b16_e64 v204.l, v199.l
	.loc	1 311 21                        ; attention_backward.py:311:21
	v_cvt_f32_i32_e32 v73, v73
	v_cvt_f32_i32_e32 v74, v74
	.loc	1 306 27                        ; attention_backward.py:306:27
	v_cndmask_b32_e32 v59, v80, v220, vcc_lo
	.loc	1 306 36 is_stmt 0              ; attention_backward.py:306:36
	v_cmp_lt_u16_e32 vcc_lo, 7, v60.l
	.loc	1 307 52 is_stmt 1              ; attention_backward.py:307:52
	v_or_b32_e32 v80, -16, v208
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 311 21                        ; attention_backward.py:311:21
	v_dual_mul_f32 v73, v73, v174 :: v_dual_mul_f32 v74, v74, v200
	v_cvt_f32_i32_e32 v59, v59
	.loc	1 306 27                        ; attention_backward.py:306:27
	v_cndmask_b32_e32 v79, v205, v221, vcc_lo
	.loc	1 306 36 is_stmt 0              ; attention_backward.py:306:36
	v_cmp_lt_u16_e32 vcc_lo, 7, v60.h
	.loc	1 307 52 is_stmt 1              ; attention_backward.py:307:52
	v_or_b32_e32 v205, -16, v210
	.loc	1 290 33                        ; attention_backward.py:290:33
	v_mov_b16_e64 v203.l, v199.l
	.loc	1 309 31                        ; attention_backward.py:309:31
	v_cndmask_b32_e64 v73, 0, v73, s0
	.loc	1 290 33                        ; attention_backward.py:290:33
	v_mov_b16_e64 v202.l, v199.l
	.loc	1 306 27                        ; attention_backward.py:306:27
	v_cndmask_b32_e32 v60, v206, v222, vcc_lo
	.loc	1 306 36 is_stmt 0              ; attention_backward.py:306:36
	v_cmp_lt_u16_e32 vcc_lo, 7, v61.l
	.loc	1 307 52 is_stmt 1              ; attention_backward.py:307:52
	v_or_b32_e32 v206, -16, v211
	.loc	1 311 21                        ; attention_backward.py:311:21
	v_cvt_f32_i32_e32 v79, v79
	v_mul_f32_e32 v59, v59, v201
	v_cvt_f32_i32_e32 v60, v60
	.loc	1 306 27                        ; attention_backward.py:306:27
	v_cndmask_b32_e32 v61, v207, v217, vcc_lo
	.loc	1 307 37                        ; attention_backward.py:307:37
	v_cmp_gt_i16_e64 vcc_lo, 0, v171.l
	.loc	1 307 52 is_stmt 0              ; attention_backward.py:307:52
	v_or_b32_e32 v207, -16, v62
	v_or_b32_e32 v217, -16, v212
	.loc	1 309 31 is_stmt 1              ; attention_backward.py:309:31
	v_cndmask_b32_e64 v74, 0, v74, s0
	.loc	1 311 21                        ; attention_backward.py:311:21
	v_cvt_f32_i32_e32 v61, v61
	.loc	1 307 28                        ; attention_backward.py:307:28
	v_cndmask_b32_e32 v80, v208, v80, vcc_lo
	.loc	1 307 37 is_stmt 0              ; attention_backward.py:307:37
	v_cmp_gt_i16_e64 vcc_lo, 0, v172.l
	.loc	1 311 21 is_stmt 1              ; attention_backward.py:311:21
	v_mul_f32_e32 v79, v79, v202
	.loc	1 309 31                        ; attention_backward.py:309:31
	v_cndmask_b32_e64 v59, 0, v59, s0
	.loc	1 311 21                        ; attention_backward.py:311:21
	v_mul_f32_e32 v61, v61, v204
	v_cvt_f32_i32_e32 v80, v80
	.loc	1 307 28                        ; attention_backward.py:307:28
	v_cndmask_b32_e32 v171, v210, v205, vcc_lo
	.loc	1 307 37 is_stmt 0              ; attention_backward.py:307:37
	v_cmp_gt_i16_e64 vcc_lo, 0, v173.l
	.loc	1 309 31 is_stmt 1              ; attention_backward.py:309:31
	v_cndmask_b32_e64 v79, 0, v79, s0
	v_cndmask_b32_e64 v61, 0, v61, s0
	.loc	1 311 21                        ; attention_backward.py:311:21
	v_mul_f32_e32 v80, v80, v174
	.loc	1 290 33                        ; attention_backward.py:290:33
	v_mov_b16_e64 v209.l, v199.l
	.loc	1 307 28                        ; attention_backward.py:307:28
	v_cndmask_b32_e32 v172, v211, v206, vcc_lo
	.loc	1 307 37 is_stmt 0              ; attention_backward.py:307:37
	v_cmp_gt_i16_e64 vcc_lo, 0, v169.l
	.loc	1 290 33 is_stmt 1              ; attention_backward.py:290:33
	v_mov_b16_e64 v209.h, v182.l
	.loc	1 309 31                        ; attention_backward.py:309:31
	v_cndmask_b32_e64 v80, 0, v80, s1
	.loc	1 290 33                        ; attention_backward.py:290:33
	v_mov_b16_e64 v182.l, v199.l
	v_mov_b16_e64 v182.h, v181.l
	.loc	1 307 28                        ; attention_backward.py:307:28
	v_cndmask_b32_e32 v62, v62, v207, vcc_lo
	.loc	1 307 37 is_stmt 0              ; attention_backward.py:307:37
	v_cmp_gt_i16_e64 vcc_lo, 0, v166.l
	.loc	1 290 33 is_stmt 1              ; attention_backward.py:290:33
	v_mov_b16_e64 v181.l, v199.l
	v_mov_b16_e64 v181.h, v180.l
	v_mov_b16_e64 v180.l, v199.l
	.loc	1 311 21                        ; attention_backward.py:311:21
	v_cvt_f32_i32_e32 v62, v62
	.loc	1 307 28                        ; attention_backward.py:307:28
	v_cndmask_b32_e32 v166, v212, v217, vcc_lo
	.loc	1 307 37 is_stmt 0              ; attention_backward.py:307:37
	v_cmp_gt_i16_e64 vcc_lo, 0, v167.l
	.loc	1 290 33 is_stmt 1              ; attention_backward.py:290:33
	v_mov_b16_e64 v180.h, v179.l
	v_mov_b16_e64 v179.l, v199.l
	.loc	1 311 21                        ; attention_backward.py:311:21
	v_mul_f32_e32 v62, v62, v201
	v_cvt_f32_i32_e32 v166, v166
	.loc	1 307 28                        ; attention_backward.py:307:28
	v_cndmask_b32_e32 v63, v63, v218, vcc_lo
	.loc	1 307 37 is_stmt 0              ; attention_backward.py:307:37
	v_cmp_gt_i16_e64 vcc_lo, 0, v168.l
	.loc	1 311 21 is_stmt 1              ; attention_backward.py:311:21
	v_cvt_f32_i32_e32 v168, v58
	.loc	1 305 30                        ; attention_backward.py:305:30
	v_lshrrev_b16 v58.l, 4, v170.l
	.loc	1 309 31                        ; attention_backward.py:309:31
	v_cndmask_b32_e64 v62, 0, v62, s1
	.loc	1 311 21                        ; attention_backward.py:311:21
	v_cvt_f32_i32_e32 v63, v63
	.loc	1 307 28                        ; attention_backward.py:307:28
	v_cndmask_b32_e32 v167, v216, v219, vcc_lo
	.loc	1 311 21                        ; attention_backward.py:311:21
	v_mul_f32_e32 v168, v168, v64
	v_cvt_f32_i32_e32 v169, v171
	v_cvt_f32_i32_e32 v171, v172
	.loc	1 307 37                        ; attention_backward.py:307:37
	v_cmp_gt_i16_e64 vcc_lo, 0, v170.l
	.loc	1 304 27                        ; attention_backward.py:304:27
	v_and_b32_e32 v172, 15, v170
	.loc	1 311 21                        ; attention_backward.py:311:21
	v_cvt_f32_i32_e32 v167, v167
	v_mul_f32_e32 v64, v169, v64
	v_mul_f32_e32 v169, v171, v200
	.loc	1 305 30                        ; attention_backward.py:305:30
	v_and_b16 v171.l, v58.l, 15
	.loc	1 305 28 is_stmt 0              ; attention_backward.py:305:28
	v_mov_b16_e64 v171.h, v199.l
	.loc	1 304 28 is_stmt 1              ; attention_backward.py:304:28
	v_and_b16 v58.l, v170.l, 15
	.loc	1 306 50                        ; attention_backward.py:306:50
	v_or_b32_e32 v174, -16, v172
	.loc	1 311 21                        ; attention_backward.py:311:21
	v_dual_mul_f32 v60, v60, v203 :: v_dual_mul_f32 v167, v167, v204
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 307 52                        ; attention_backward.py:307:52
	v_or_b32_e32 v173, -16, v171
	.loc	1 309 31                        ; attention_backward.py:309:31
	v_cndmask_b32_e64 v168, 0, v168, s0
	v_cndmask_b32_e64 v64, 0, v64, s1
	v_cndmask_b32_e64 v169, 0, v169, s1
	.loc	1 311 21                        ; attention_backward.py:311:21
	v_dual_mul_f32 v166, v166, v202 :: v_dual_mul_f32 v63, v63, v203
	.loc	1 307 28                        ; attention_backward.py:307:28
	v_cndmask_b32_e32 v170, v171, v173, vcc_lo
	.loc	1 306 36                        ; attention_backward.py:306:36
	v_cmp_lt_u16_e32 vcc_lo, 7, v58.l
	.loc	1 309 31                        ; attention_backward.py:309:31
	v_cmp_o_f32_e64 s8, v168, v168
	s_delay_alu instid0(VALU_DEP_4)
	v_cndmask_b32_e64 v166, 0, v166, s1
	v_cndmask_b32_e64 v60, 0, v60, s0
	.loc	1 311 21                        ; attention_backward.py:311:21
	v_cvt_f32_i32_e32 v170, v170
	.loc	1 309 31                        ; attention_backward.py:309:31
	v_cndmask_b32_e64 v63, 0, v63, s1
	.loc	1 290 33                        ; attention_backward.py:290:33
	v_mov_b16_e64 v179.h, v178.l
	v_mov_b16_e64 v178.l, v199.l
	v_mov_b16_e64 v178.h, v177.l
	.loc	1 311 21                        ; attention_backward.py:311:21
	v_mul_f32_e32 v170, v199, v170
	.loc	1 290 33                        ; attention_backward.py:290:33
	v_mov_b16_e64 v177.l, v199.l
	v_mov_b16_e64 v177.h, v176.l
	v_mov_b16_e64 v176.l, v199.l
	.loc	1 393 17                        ; attention_backward.py:393:17
	s_waitcnt lgkmcnt(0)
	.loc	1 309 31                        ; attention_backward.py:309:31
	v_cndmask_b32_e64 v170, 0, v170, s1
	.loc	1 393 17                        ; attention_backward.py:393:17
	s_barrier
	.loc	1 345 58                        ; attention_backward.py:345:58
	v_fma_f32 v224, v76, v182, -v127
	v_fma_f32 v225, v77, v181, -v127
	v_fma_f32 v180, v78, v180, -v127
	.loc	1 309 31                        ; attention_backward.py:309:31
	v_mov_b16_e64 v171.l, v170.h
	.loc	1 306 27                        ; attention_backward.py:306:27
	v_cndmask_b32_e32 v58, v172, v174, vcc_lo
	.loc	1 309 31                        ; attention_backward.py:309:31
	v_mov_b16_e64 v172.h, v199.l
	v_cmp_o_f32_e32 vcc_lo, v170, v170
	.loc	1 345 58                        ; attention_backward.py:345:58
	v_fma_f32 v174, v75, v209, -v127
	.loc	1 309 31                        ; attention_backward.py:309:31
	v_and_b32_e32 v171, 1, v171
	.loc	1 311 21                        ; attention_backward.py:311:21
	v_cvt_f32_i32_e32 v58, v58
	.loc	1 270 9                         ; attention_backward.py:270:9
	s_add_i32 s33, s33, 16
	.loc	1 0 0 is_stmt 0                 ; attention_backward.py:0
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 270 9                         ; attention_backward.py:270:9
	s_cmp_lt_i32 s33, s38
	.loc	1 309 31 is_stmt 1              ; attention_backward.py:309:31
	v_add3_u32 v171, v170, v171, 0x7fff
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 311 21                        ; attention_backward.py:311:21
	v_mul_f32_e32 v58, v199, v58
	.loc	1 0 0 is_stmt 0                 ; attention_backward.py:0
	.loc	1 309 31 is_stmt 1              ; attention_backward.py:309:31
	v_cndmask_b16 v216.h, 0x7fff, v171.h, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_cndmask_b32_e64 v58, 0, v58, s0
	v_bfe_u32 v171, v80, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v73, v73
	.loc	1 0 0 is_stmt 0                 ; attention_backward.py:0
	.loc	1 309 31                        ; attention_backward.py:309:31
	v_mov_b16_e64 v172.l, v58.h
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cmp_o_f32_e64 s7, v58, v58
	.loc	1 0 0                           ; attention_backward.py:0
	.loc	1 309 31                        ; attention_backward.py:309:31
	v_and_b32_e32 v172, 1, v172
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_add3_u32 v170, v58, v172, 0x7fff
	v_cndmask_b32_e64 v58, 0, v167, s1
	v_bfe_u32 v167, v73, 16, 1
	v_cndmask_b16 v216.l, 0x7fff, v170.h, s7
	v_bfe_u32 v170, v168, 16, 1
	s_delay_alu instid0(VALU_DEP_3)
	v_add3_u32 v167, v73, v167, 0x7fff
	v_add3_u32 v73, v80, v171, 0x7fff
	v_cmp_o_f32_e64 s7, v80, v80
	v_cmp_o_f32_e64 s9, v58, v58
	v_add3_u32 v80, v168, v170, 0x7fff
	v_cndmask_b16 v217.l, 0x7fff, v167.h, vcc_lo
	v_bfe_u32 v167, v64, 16, 1
	v_cndmask_b16 v217.h, 0x7fff, v73.h, s7
	v_bfe_u32 v73, v74, 16, 1
	v_cndmask_b16 v218.l, 0x7fff, v80.h, s8
	v_bfe_u32 v80, v169, 16, 1
	v_add3_u32 v167, v64, v167, 0x7fff
	v_cmp_o_f32_e32 vcc_lo, v64, v64
	v_add3_u32 v64, v74, v73, 0x7fff
	v_cmp_o_f32_e64 s7, v74, v74
	v_add3_u32 v73, v169, v80, 0x7fff
	v_cmp_o_f32_e64 s8, v169, v169
	v_bfe_u32 v74, v59, 16, 1
	v_cndmask_b16 v218.h, 0x7fff, v167.h, vcc_lo
	v_cndmask_b16 v219.l, 0x7fff, v64.h, s7
	v_bfe_u32 v64, v62, 16, 1
	v_cndmask_b16 v219.h, 0x7fff, v73.h, s8
	v_bfe_u32 v73, v79, 16, 1
	v_add3_u32 v74, v59, v74, 0x7fff
	v_cmp_o_f32_e32 vcc_lo, v59, v59
	v_add3_u32 v59, v62, v64, 0x7fff
	v_cmp_o_f32_e64 s7, v62, v62
	v_add3_u32 v62, v79, v73, 0x7fff
	v_cmp_o_f32_e64 s8, v79, v79
	v_bfe_u32 v64, v166, 16, 1
	v_cndmask_b16 v220.l, 0x7fff, v74.h, vcc_lo
	v_cndmask_b16 v220.h, 0x7fff, v59.h, s7
	v_bfe_u32 v59, v60, 16, 1
	v_cndmask_b16 v221.l, 0x7fff, v62.h, s8
	v_bfe_u32 v62, v63, 16, 1
	v_add3_u32 v64, v166, v64, 0x7fff
	v_cmp_o_f32_e32 vcc_lo, v166, v166
	v_add3_u32 v59, v60, v59, 0x7fff
	v_cmp_o_f32_e64 s7, v60, v60
	v_bfe_u32 v60, v61, 16, 1
	v_add3_u32 v62, v63, v62, 0x7fff
	v_cmp_o_f32_e64 s8, v63, v63
	v_bfe_u32 v63, v58, 16, 1
	v_cndmask_b16 v221.h, 0x7fff, v64.h, vcc_lo
	v_add3_u32 v60, v61, v60, 0x7fff
	v_cmp_o_f32_e32 vcc_lo, v61, v61
	.loc	1 393 17 is_stmt 1              ; attention_backward.py:393:17
	v_add_nc_u32_e32 v61, 0, v128
	.loc	1 309 31                        ; attention_backward.py:309:31
	v_add3_u32 v63, v58, v63, 0x7fff
	.loc	1 393 17                        ; attention_backward.py:393:17
	v_add_nc_u32_e32 v58, 0, v129
	s_waitcnt vmcnt(15)
	ds_store_b16 v61, v183
	s_waitcnt vmcnt(14)
	ds_store_b16 v136, v184
	s_waitcnt vmcnt(13)
	ds_store_b16 v137, v185
	s_waitcnt vmcnt(12)
	ds_store_b16 v138, v186
	s_waitcnt vmcnt(11)
	ds_store_b16 v139, v187
	s_waitcnt vmcnt(10)
	ds_store_b16 v140, v188
	s_waitcnt vmcnt(9)
	ds_store_b16 v141, v189
	s_waitcnt vmcnt(8)
	ds_store_b16 v142, v190
	s_waitcnt vmcnt(7)
	ds_store_b16 v143, v191
	s_waitcnt vmcnt(6)
	ds_store_b16 v144, v192
	s_waitcnt vmcnt(5)
	ds_store_b16 v145, v193
	s_waitcnt vmcnt(4)
	ds_store_b16 v146, v194
	s_waitcnt vmcnt(3)
	ds_store_b16 v147, v195
	s_waitcnt vmcnt(2)
	ds_store_b16 v148, v196
	s_waitcnt vmcnt(1)
	ds_store_b16 v149, v198
	s_waitcnt vmcnt(0)
	ds_store_b16 v150, v197
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 309 31                        ; attention_backward.py:309:31
	v_cndmask_b16 v223.h, 0x7fff, v63.h, s9
	.loc	1 391 32                        ; attention_backward.py:391:32
	ds_load_2addr_b32 v[195:196], v153 offset1:16
	ds_load_2addr_b32 v[197:198], v154 offset1:16
	ds_load_2addr_b32 v[168:169], v155 offset1:16
	ds_load_2addr_b32 v[199:200], v156 offset1:16
	ds_load_2addr_b32 v[201:202], v157 offset1:16
	ds_load_2addr_b32 v[203:204], v158 offset1:16
	ds_load_2addr_b32 v[170:171], v159 offset1:16
	ds_load_2addr_b32 v[205:206], v160 offset1:16
	ds_load_2addr_b32 v[207:208], v161 offset1:16
	v_mov_b32_e32 v63, v57
	ds_load_2addr_b32 v[191:192], v58 offset1:16
	ds_load_2addr_b32 v[166:167], v151 offset1:16
	ds_load_2addr_b32 v[193:194], v152 offset1:16
	ds_load_2addr_b32 v[209:210], v162 offset1:16
	ds_load_2addr_b32 v[172:173], v163 offset1:16
	ds_load_2addr_b32 v[211:212], v164 offset1:16
	ds_load_2addr_b32 v[181:182], v165 offset1:16
	v_mov_b32_e32 v64, v57
	.loc	1 309 31                        ; attention_backward.py:309:31
	v_cndmask_b16 v222.l, 0x7fff, v59.h, s7
	v_cndmask_b16 v222.h, 0x7fff, v62.h, s8
	v_cndmask_b16 v223.l, 0x7fff, v60.h, vcc_lo
	.loc	1 391 32                        ; attention_backward.py:391:32
	v_mov_b32_e32 v59, v57
	v_mov_b32_e32 v61, v57
	v_mov_b32_e32 v62, v57
	.loc	1 309 31                        ; attention_backward.py:309:31
	s_waitcnt lgkmcnt(0)
	.loc	1 391 32                        ; attention_backward.py:391:32
	v_mov_b16_e64 v74.h, v195.l
	v_mov_b16_e64 v75.l, v197.l
	v_mov_b16_e64 v75.h, v168.l
	v_mov_b16_e64 v76.l, v199.l
	v_mov_b16_e64 v76.h, v201.l
	v_mov_b16_e64 v77.l, v203.l
	v_mov_b16_e64 v77.h, v170.l
	v_mov_b16_e64 v78.l, v205.l
	v_mov_b16_e64 v78.h, v207.l
	v_mov_b16_e64 v207.l, v205.h
	v_mov_b32_e32 v60, v57
	v_mov_b16_e64 v195.l, v193.h
	v_mov_b32_e32 v58, v57
	v_dual_mov_b32 v190, v64 :: v_dual_mov_b32 v189, v63
	v_mov_b16_e64 v73.l, v191.l
	v_mov_b16_e64 v73.h, v166.l
	v_mov_b16_e64 v74.l, v193.l
	v_mov_b16_e64 v79.l, v209.l
	v_mov_b16_e64 v79.h, v172.l
	v_mov_b16_e64 v80.l, v211.l
	v_mov_b16_e64 v80.h, v181.l
	v_dual_mov_b32 v188, v62 :: v_dual_mov_b32 v187, v61
	v_dual_mov_b32 v186, v60 :: v_dual_mov_b32 v185, v59
	v_dual_mov_b32 v184, v58 :: v_dual_mov_b32 v183, v57
	.loc	1 345 58                        ; attention_backward.py:345:58
	v_fma_f32 v59, v213, v178, -v127
	v_fma_f32 v61, v215, v176, -v127
	.loc	1 345 45 is_stmt 0              ; attention_backward.py:345:45
	v_exp_f32_e32 v63, v224
	v_exp_f32_e32 v213, v180
	.loc	1 391 32 is_stmt 1              ; attention_backward.py:391:32
	v_wmma_f32_16x16x16_bf16 v[183:190], v[73:80], v[1:8], v[183:190]
	v_mov_b16_e64 v73.l, v192.l
	v_mov_b16_e64 v73.h, v167.l
	v_mov_b16_e64 v74.l, v194.l
	v_mov_b16_e64 v74.h, v196.l
	v_mov_b16_e64 v75.l, v198.l
	v_mov_b16_e64 v75.h, v169.l
	v_mov_b16_e64 v76.l, v200.l
	v_mov_b16_e64 v76.h, v202.l
	v_mov_b16_e64 v77.l, v204.l
	v_mov_b16_e64 v77.h, v171.l
	v_mov_b16_e64 v78.l, v206.l
	v_mov_b16_e64 v78.h, v208.l
	v_mov_b16_e64 v79.l, v210.l
	v_mov_b16_e64 v79.h, v173.l
	v_mov_b16_e64 v80.l, v212.l
	v_mov_b16_e64 v80.h, v182.l
	v_mov_b16_e64 v166.l, v191.h
	v_mov_b16_e64 v168.l, v197.h
	v_mov_b16_e64 v201.l, v199.h
	v_mov_b16_e64 v170.l, v203.h
	v_mov_b16_e64 v172.l, v209.h
	.loc	1 345 45                        ; attention_backward.py:345:45
	v_exp_f32_e32 v59, v59
	v_exp_f32_e32 v61, v61
	.loc	1 345 58 is_stmt 0              ; attention_backward.py:345:58
	v_fma_f32 v58, v175, v179, -v127
	v_fma_f32 v60, v214, v177, -v127
	.loc	1 345 45                        ; attention_backward.py:345:45
	v_exp_f32_e32 v62, v174
	.loc	1 391 32 is_stmt 1              ; attention_backward.py:391:32
	v_wmma_f32_16x16x16_bf16 v[183:190], v[73:80], v[9:16], v[183:190]
	v_mov_b16_e64 v181.l, v211.h
	v_dual_mov_b32 v174, v166 :: v_dual_mov_b32 v177, v201
	v_dual_mov_b32 v175, v195 :: v_dual_mov_b32 v178, v170
	v_mov_b32_e32 v179, v207
	v_mov_b16_e64 v196.l, v194.h
	v_mov_b16_e64 v202.l, v200.h
	v_mov_b16_e64 v208.l, v206.h
	v_mov_b16_e64 v182.l, v212.h
	.loc	1 345 29                        ; attention_backward.py:345:29
	v_cndmask_b32_e64 v63, 0, v63, s55
	.loc	1 391 32                        ; attention_backward.py:391:32
	v_mov_b32_e32 v176, v168
	.loc	1 345 29                        ; attention_backward.py:345:29
	v_cndmask_b32_e64 v73, 0, v213, s54
	.loc	1 391 32                        ; attention_backward.py:391:32
	v_mov_b32_e32 v180, v172
	v_mov_b16_e64 v167.l, v192.h
	v_mov_b16_e64 v169.l, v198.h
	v_mov_b16_e64 v171.l, v204.h
	v_mov_b16_e64 v173.l, v210.h
	v_wmma_f32_16x16x16_bf16 v[183:190], v[174:181], v[17:24], v[183:190]
	v_mov_b32_e32 v172, v208
	v_mov_b32_e32 v174, v182
	.loc	1 345 29                        ; attention_backward.py:345:29
	v_cndmask_b32_e64 v59, 0, v59, s53
	.loc	1 391 32                        ; attention_backward.py:391:32
	v_mov_b32_e32 v168, v196
	.loc	1 345 29                        ; attention_backward.py:345:29
	v_cndmask_b32_e64 v61, 0, v61, s56
	.loc	1 391 32                        ; attention_backward.py:391:32
	v_mov_b32_e32 v170, v202
	.loc	1 345 29                        ; attention_backward.py:345:29
	v_cndmask_b32_e64 v62, 0, v62, s59
	.loc	1 345 45 is_stmt 0              ; attention_backward.py:345:45
	v_exp_f32_e32 v64, v225
	v_exp_f32_e32 v58, v58
	.loc	1 309 31 is_stmt 1              ; attention_backward.py:309:31
	s_barrier
	.loc	1 391 32                        ; attention_backward.py:391:32
	v_wmma_f32_16x16x16_bf16 v[183:190], v[167:174], v[25:32], v[183:190]
	.loc	1 345 45                        ; attention_backward.py:345:45
	v_exp_f32_e32 v60, v60
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 396 43                        ; attention_backward.py:396:43
	v_sub_f32_e32 v79, v188, v94
	v_sub_f32_e32 v166, v190, v94
	s_delay_alu instid0(TRANS32_DEP_3)
	.loc	1 345 29                        ; attention_backward.py:345:29
	v_cndmask_b32_e64 v64, 0, v64, s61
	.loc	1 396 43                        ; attention_backward.py:396:43
	v_sub_f32_e32 v75, v184, v94
	v_sub_f32_e32 v77, v186, v94
	.loc	1 396 26 is_stmt 0              ; attention_backward.py:396:26
	v_mul_f32_e32 v59, v59, v79
	.loc	1 396 43                        ; attention_backward.py:396:43
	v_sub_f32_e32 v74, v183, v94
	.loc	1 396 26                        ; attention_backward.py:396:26
	v_mul_f32_e32 v61, v61, v166
	.loc	1 396 43                        ; attention_backward.py:396:43
	v_sub_f32_e32 v76, v185, v94
	.loc	1 345 29 is_stmt 1              ; attention_backward.py:345:29
	v_cndmask_b32_e64 v58, 0, v58, s57
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	.loc	1 397 34                        ; attention_backward.py:397:34
	v_dual_mul_f32 v59, s39, v59 :: v_dual_mul_f32 v62, v62, v74
	.loc	1 396 43                        ; attention_backward.py:396:43
	v_sub_f32_e32 v78, v187, v94
	.loc	1 396 26 is_stmt 0              ; attention_backward.py:396:26
	v_mul_f32_e32 v63, v63, v75
	v_mul_f32_e32 v73, v73, v77
	.loc	1 397 34 is_stmt 1              ; attention_backward.py:397:34
	v_dual_mul_f32 v61, s39, v61 :: v_dual_mul_f32 v62, s39, v62
	.loc	1 396 26                        ; attention_backward.py:396:26
	v_mul_f32_e32 v64, v64, v76
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_dual_mul_f32 v58, v58, v78 :: v_dual_mul_f32 v63, s39, v63
	.loc	1 397 34                        ; attention_backward.py:397:34
	v_mul_f32_e32 v73, s39, v73
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 397 33 is_stmt 0              ; attention_backward.py:397:33
	v_bfe_u32 v74, v62, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v62, v62
	.loc	1 397 34                        ; attention_backward.py:397:34
	v_mul_f32_e32 v64, s39, v64
	v_mul_f32_e32 v58, s39, v58
	.loc	1 397 33                        ; attention_backward.py:397:33
	v_bfe_u32 v76, v73, 16, 1
	v_add3_u32 v74, v62, v74, 0x7fff
	v_bfe_u32 v62, v63, 16, 1
	v_bfe_u32 v75, v64, 16, 1
	v_cmp_o_f32_e64 s7, v64, v64
	v_cmp_o_f32_e64 s8, v73, v73
	v_cndmask_b16 v191.l, 0x7fff, v74.h, vcc_lo
	.loc	1 309 31 is_stmt 1              ; attention_backward.py:309:31
	v_add_nc_u32_e32 v74, v112, v110
	ds_store_2addr_stride64_b32 v74, v216, v217 offset1:1
	ds_store_2addr_stride64_b32 v74, v218, v219 offset0:2 offset1:3
	ds_store_2addr_stride64_b32 v74, v220, v221 offset0:4 offset1:5
	ds_store_2addr_stride64_b32 v74, v222, v223 offset0:6 offset1:7
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_u16_d16 v74, v130 offset:352
	.loc	1 397 33                        ; attention_backward.py:397:33
	v_add3_u32 v62, v63, v62, 0x7fff
	v_cmp_o_f32_e32 vcc_lo, v63, v63
	v_add3_u32 v63, v64, v75, 0x7fff
	v_add3_u32 v64, v73, v76, 0x7fff
	v_bfe_u32 v73, v58, 16, 1
	.loc	1 345 29                        ; attention_backward.py:345:29
	v_cndmask_b32_e64 v60, 0, v60, s58
	.loc	1 396 43                        ; attention_backward.py:396:43
	v_sub_f32_e32 v80, v189, v94
	.loc	1 397 33                        ; attention_backward.py:397:33
	v_cndmask_b16 v191.h, 0x7fff, v62.h, vcc_lo
	v_cndmask_b16 v62.l, 0x7fff, v63.h, s7
	v_add3_u32 v73, v58, v73, 0x7fff
	.loc	1 309 31                        ; attention_backward.py:309:31
	ds_load_u16_d16 v168, v130 offset:512
	ds_load_u16_d16 v175, v130 offset:288
	ds_load_u16_d16 v184, v130 offset:576
	ds_load_u16_d16 v166, v130
	ds_load_u16_d16 v174, v130 offset:32
	ds_load_u16_d16 v167, v130 offset:256
	ds_load_u16_d16 v182, v130 offset:64
	ds_load_u16_d16 v183, v130 offset:320
	s_waitcnt lgkmcnt(8)
	ds_load_u16_d16_hi v74, v130 offset:480
	ds_load_u16_d16 v73, v130 offset:96
	.loc	1 396 26                        ; attention_backward.py:396:26
	v_mul_f32_e32 v60, v60, v80
	.loc	1 397 33                        ; attention_backward.py:397:33
	v_bfe_u32 v63, v59, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v58, v58
	v_cmp_o_f32_e64 s7, v59, v59
	v_bfe_u32 v58, v61, 16, 1
	.loc	1 397 34 is_stmt 0              ; attention_backward.py:397:34
	v_mul_f32_e32 v60, s39, v60
	.loc	1 397 33                        ; attention_backward.py:397:33
	v_add3_u32 v63, v59, v63, 0x7fff
	v_cmp_o_f32_e64 s10, v61, v61
	v_cndmask_b16 v62.h, 0x7fff, v64.h, s8
	v_add3_u32 v58, v61, v58, 0x7fff
	v_bfe_u32 v75, v60, 16, 1
	v_cmp_o_f32_e64 s9, v60, v60
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_permlanex16_b32 v61, v62, s30, 0xfedcba98 op_sel:[1,0]
	v_cndmask_b16 v58.h, 0x7fff, v58.h, s10
	s_delay_alu instid0(VALU_DEP_4)
	v_add3_u32 v59, v60, v75, 0x7fff
	s_waitcnt lgkmcnt(0)
	v_cndmask_b16 v60.l, 0x7fff, v73.h, vcc_lo
	.loc	1 309 31 is_stmt 1              ; attention_backward.py:309:31
	ds_load_u16_d16 v185, v130 offset:832
	ds_load_u16_d16 v169, v130 offset:768
	ds_load_u16_d16 v176, v130 offset:544
	ds_load_u16_d16 v75, v130 offset:608
	ds_load_u16_d16_hi v166, v130 offset:128
	ds_load_u16_d16_hi v174, v130 offset:160
	ds_load_u16_d16_hi v182, v130 offset:192
	ds_load_u16_d16_hi v73, v130 offset:224
	ds_load_u16_d16 v186, v130 offset:1088
	ds_load_u16_d16 v170, v130 offset:1024
	ds_load_u16_d16 v177, v130 offset:800
	ds_load_u16_d16 v76, v130 offset:864
	ds_load_u16_d16 v187, v130 offset:1344
	ds_load_u16_d16 v171, v130 offset:1280
	ds_load_u16_d16 v178, v130 offset:1056
	ds_load_u16_d16 v77, v130 offset:1120
	ds_load_u16_d16 v188, v130 offset:1600
	ds_load_u16_d16 v172, v130 offset:1536
	ds_load_u16_d16 v179, v130 offset:1312
	ds_load_u16_d16 v78, v130 offset:1376
	ds_load_u16_d16 v189, v130 offset:1856
	ds_load_u16_d16 v173, v130 offset:1792
	ds_load_u16_d16 v180, v130 offset:1568
	ds_load_u16_d16 v79, v130 offset:1632
	ds_load_u16_d16 v181, v130 offset:1824
	ds_load_u16_d16 v80, v130 offset:1888
	ds_load_u16_d16_hi v184, v130 offset:704
	ds_load_u16_d16_hi v168, v130 offset:640
	ds_load_u16_d16_hi v167, v130 offset:384
	ds_load_u16_d16_hi v175, v130 offset:416
	ds_load_u16_d16_hi v183, v130 offset:448
	s_waitcnt lgkmcnt(30)
	ds_load_u16_d16_hi v185, v130 offset:960
	s_waitcnt lgkmcnt(30)
	ds_load_u16_d16_hi v169, v130 offset:896
	s_waitcnt lgkmcnt(30)
	ds_load_u16_d16_hi v176, v130 offset:672
	s_waitcnt lgkmcnt(30)
	ds_load_u16_d16_hi v75, v130 offset:736
	s_waitcnt lgkmcnt(26)
	ds_load_u16_d16_hi v186, v130 offset:1216
	s_waitcnt lgkmcnt(26)
	ds_load_u16_d16_hi v170, v130 offset:1152
	s_waitcnt lgkmcnt(26)
	ds_load_u16_d16_hi v177, v130 offset:928
	s_waitcnt lgkmcnt(26)
	ds_load_u16_d16_hi v76, v130 offset:992
	s_waitcnt lgkmcnt(26)
	ds_load_u16_d16_hi v187, v130 offset:1472
	s_waitcnt lgkmcnt(26)
	ds_load_u16_d16_hi v171, v130 offset:1408
	s_waitcnt lgkmcnt(26)
	ds_load_u16_d16_hi v178, v130 offset:1184
	s_waitcnt lgkmcnt(26)
	ds_load_u16_d16_hi v77, v130 offset:1248
	s_waitcnt lgkmcnt(26)
	ds_load_u16_d16_hi v188, v130 offset:1728
	s_waitcnt lgkmcnt(26)
	ds_load_u16_d16_hi v172, v130 offset:1664
	s_waitcnt lgkmcnt(26)
	ds_load_u16_d16_hi v179, v130 offset:1440
	s_waitcnt lgkmcnt(26)
	ds_load_u16_d16_hi v78, v130 offset:1504
	s_waitcnt lgkmcnt(26)
	ds_load_u16_d16_hi v189, v130 offset:1984
	s_waitcnt lgkmcnt(26)
	ds_load_u16_d16_hi v173, v130 offset:1920
	s_waitcnt lgkmcnt(26)
	ds_load_u16_d16_hi v180, v130 offset:1696
	s_waitcnt lgkmcnt(26)
	ds_load_u16_d16_hi v79, v130 offset:1760
	s_waitcnt lgkmcnt(26)
	ds_load_u16_d16_hi v181, v130 offset:1952
	s_waitcnt lgkmcnt(26)
	ds_load_u16_d16_hi v80, v130 offset:2016
	.loc	1 397 33                        ; attention_backward.py:397:33
	v_cndmask_b16 v60.h, 0x7fff, v63.h, s7
	v_cndmask_b16 v58.l, 0x7fff, v59.h, s9
	v_permlanex16_b32 v59, v191, s30, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v192, v61, v62, v131
	v_perm_b32 v193, v61, v62, v132
	v_permlanex16_b32 v63, v60, s30, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v64, v58, s30, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v190, v59, v191, v131
	v_perm_b32 v191, v59, v191, v132
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_perm_b32 v194, v63, v60, v131
	v_perm_b32 v195, v63, v60, v132
	v_perm_b32 v196, v64, v58, v131
	v_perm_b32 v197, v64, v58, v132
	.loc	1 398 31                        ; attention_backward.py:398:31
	s_waitcnt lgkmcnt(4)
	v_wmma_f32_16x16x16_bf16 v[65:72], v[166:173], v[190:197], v[65:72]
	s_waitcnt lgkmcnt(1)
	v_wmma_f32_16x16x16_bf16 v[49:56], v[174:181], v[190:197], v[49:56]
	v_wmma_f32_16x16x16_bf16 v[41:48], v[182:189], v[190:197], v[41:48]
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[33:40], v[73:80], v[190:197], v[33:40]
	s_cbranch_scc0 .LBB0_19
.LBB0_15:                               ; =>This Inner Loop Header: Depth=1
	.loc	1 271 27                        ; attention_backward.py:271:27
	v_or_b32_e32 v58, s33, v95
	v_or_b32_e32 v59, s33, v96
	.loc	1 275 21                        ; attention_backward.py:275:21
	s_add_i32 s62, s33, s60
	.loc	1 271 27                        ; attention_backward.py:271:27
	v_or_b32_e32 v60, s33, v97
	.loc	1 275 21                        ; attention_backward.py:275:21
	s_mul_i32 s15, s62, s34
	.loc	1 277 24                        ; attention_backward.py:277:24
	v_cmp_gt_i32_e64 s14, s31, v58
	.loc	1 271 27                        ; attention_backward.py:271:27
	v_or_b32_e32 v61, s33, v98
	.loc	1 277 24                        ; attention_backward.py:277:24
	v_cmp_gt_i32_e64 s9, s31, v59
	.loc	1 275 21                        ; attention_backward.py:275:21
	v_add_nc_u32_e32 v58, s15, v81
	.loc	1 271 27                        ; attention_backward.py:271:27
	v_or_b32_e32 v62, s33, v99
	.loc	1 277 24                        ; attention_backward.py:277:24
	v_cmp_gt_i32_e64 s10, s31, v60
	.loc	1 275 21                        ; attention_backward.py:275:21
	v_add_nc_u32_e32 v59, s15, v103
	.loc	1 271 27                        ; attention_backward.py:271:27
	v_or_b32_e32 v63, s33, v100
	.loc	1 276 26                        ; attention_backward.py:276:26
	s_and_b32 vcc_lo, s2, s14
	.loc	1 277 24                        ; attention_backward.py:277:24
	v_cmp_gt_i32_e64 s11, s31, v61
	.loc	1 275 21                        ; attention_backward.py:275:21
	v_add_nc_u32_e32 v60, s15, v104
	.loc	1 271 27                        ; attention_backward.py:271:27
	v_or_b32_e32 v64, s33, v101
	.loc	1 274 28                        ; attention_backward.py:274:28
	v_cndmask_b32_e32 v58, 0x80000000, v58, vcc_lo
	.loc	1 276 26                        ; attention_backward.py:276:26
	s_and_b32 vcc_lo, s2, s9
	.loc	1 277 24                        ; attention_backward.py:277:24
	v_cmp_gt_i32_e64 s7, s31, v62
	.loc	1 275 21                        ; attention_backward.py:275:21
	v_add_nc_u32_e32 v61, s15, v82
	.loc	1 271 27                        ; attention_backward.py:271:27
	v_or_b32_e32 v73, s33, v102
	.loc	1 274 28                        ; attention_backward.py:274:28
	v_cndmask_b32_e32 v59, 0x80000000, v59, vcc_lo
	.loc	1 276 26                        ; attention_backward.py:276:26
	s_and_b32 vcc_lo, s2, s10
	.loc	1 277 24                        ; attention_backward.py:277:24
	v_cmp_gt_i32_e64 s8, s31, v63
	.loc	1 275 21                        ; attention_backward.py:275:21
	v_add_nc_u32_e32 v62, s15, v105
	.loc	1 274 28                        ; attention_backward.py:274:28
	v_cndmask_b32_e32 v60, 0x80000000, v60, vcc_lo
	.loc	1 276 26                        ; attention_backward.py:276:26
	s_and_b32 vcc_lo, s2, s11
	.loc	1 277 24                        ; attention_backward.py:277:24
	v_cmp_gt_i32_e64 s12, s31, v64
	.loc	1 275 21                        ; attention_backward.py:275:21
	v_add_nc_u32_e32 v63, s15, v83
	.loc	1 274 28                        ; attention_backward.py:274:28
	v_cndmask_b32_e32 v61, 0x80000000, v61, vcc_lo
	.loc	1 276 26                        ; attention_backward.py:276:26
	s_and_b32 vcc_lo, s2, s7
	.loc	1 277 24                        ; attention_backward.py:277:24
	v_cmp_gt_i32_e64 s13, s31, v73
	.loc	1 275 21                        ; attention_backward.py:275:21
	v_add_nc_u32_e32 v64, s15, v84
	.loc	1 274 28                        ; attention_backward.py:274:28
	v_cndmask_b32_e32 v62, 0x80000000, v62, vcc_lo
	.loc	1 276 26                        ; attention_backward.py:276:26
	s_and_b32 vcc_lo, s2, s8
	.loc	1 275 21                        ; attention_backward.py:275:21
	v_add_nc_u32_e32 v73, s15, v85
	.loc	1 274 28                        ; attention_backward.py:274:28
	v_cndmask_b32_e32 v63, 0x80000000, v63, vcc_lo
	.loc	1 276 26                        ; attention_backward.py:276:26
	s_and_b32 vcc_lo, s2, s12
	.loc	1 271 27                        ; attention_backward.py:271:27
	v_or_b32_e32 v183, s33, v119
	.loc	1 274 28                        ; attention_backward.py:274:28
	v_cndmask_b32_e32 v64, 0x80000000, v64, vcc_lo
	.loc	1 276 26                        ; attention_backward.py:276:26
	s_and_b32 vcc_lo, s2, s13
	.loc	1 271 27                        ; attention_backward.py:271:27
	v_or_b32_e32 v184, s33, v120
	.loc	1 274 28                        ; attention_backward.py:274:28
	v_cndmask_b32_e32 v73, 0x80000000, v73, vcc_lo
	s_clause 0x7
	buffer_load_u8 v170, v58, s[40:43], 0 offen
	buffer_load_u8 v171, v59, s[40:43], 0 offen
	buffer_load_u8 v172, v60, s[40:43], 0 offen
	buffer_load_u8 v173, v61, s[40:43], 0 offen
	buffer_load_u8 v169, v62, s[40:43], 0 offen
	buffer_load_u8 v166, v63, s[40:43], 0 offen
	buffer_load_u8 v167, v64, s[40:43], 0 offen
	buffer_load_u8 v168, v73, s[40:43], 0 offen
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 280 29                        ; attention_backward.py:280:29
	v_mov_b32_e32 v64, v57
	v_mov_b32_e32 v58, v57
	v_mov_b32_e32 v59, v57
	v_mov_b32_e32 v60, v57
	v_mov_b32_e32 v61, v57
	v_mov_b32_e32 v62, v57
	v_mov_b32_e32 v63, v57
	v_mov_b32_e32 v80, v64
	v_dual_mov_b32 v76, v60 :: v_dual_mov_b32 v75, v59
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_dual_mov_b32 v78, v62 :: v_dual_mov_b32 v77, v61
	v_dual_mov_b32 v79, v63 :: v_dual_mov_b32 v74, v58
	v_mov_b32_e32 v73, v57
	.loc	1 271 27                        ; attention_backward.py:271:27
	v_or_b32_e32 v185, s33, v118
	v_or_b32_e32 v186, s33, v117
	v_or_b32_e32 v187, s33, v116
	v_or_b32_e32 v188, s33, v115
	v_or_b32_e32 v189, s33, v114
	v_or_b32_e32 v190, s33, v113
	.loc	1 277 24                        ; attention_backward.py:277:24
	v_cmp_gt_i32_e64 s20, s31, v183
	v_cmp_gt_i32_e64 s21, s31, v184
	v_cmp_gt_i32_e64 s22, s31, v185
	v_cmp_gt_i32_e64 s15, s31, v186
	v_cmp_gt_i32_e64 s16, s31, v187
	v_cmp_gt_i32_e64 s17, s31, v188
	v_cmp_gt_i32_e64 s18, s31, v189
	v_cmp_gt_i32_e64 s19, s31, v190
	.loc	1 324 21                        ; attention_backward.py:324:21
	s_and_b32 s59, s4, s20
	s_and_b32 s55, s4, s21
	s_and_b32 s61, s4, s22
	s_and_b32 s54, s4, s15
	s_and_b32 s57, s4, s16
	s_and_b32 s53, s4, s17
	s_and_b32 s58, s4, s18
	.loc	1 326 13                        ; attention_backward.py:326:13
	s_and_b32 vcc_lo, exec_lo, s5
	.loc	1 324 21                        ; attention_backward.py:324:21
	s_and_b32 s56, s4, s19
	.loc	1 274 28                        ; attention_backward.py:274:28
	s_waitcnt vmcnt(7)
	ds_store_b8 v106, v170
	s_waitcnt vmcnt(6)
	ds_store_b8 v106, v171 offset:64
	s_waitcnt vmcnt(5)
	ds_store_b8 v107, v172
	s_waitcnt vmcnt(4)
	ds_store_b8 v107, v173 offset:64
	s_waitcnt vmcnt(3)
	ds_store_b8 v108, v169
	s_waitcnt vmcnt(2)
	ds_store_b8 v108, v166 offset:64
	s_waitcnt vmcnt(1)
	ds_store_b8 v109, v167
	s_waitcnt vmcnt(0)
	ds_store_b8 v109, v168 offset:64
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b64 v[174:175], v125
	ds_load_b64 v[176:177], v133
	ds_load_b64 v[178:179], v134
	ds_load_b64 v[58:59], v135
	.loc	1 280 29                        ; attention_backward.py:280:29
	s_waitcnt lgkmcnt(3)
	v_wmma_i32_16x16x16_iu4 v[73:80], v[174:175], v[86:87], v[73:80] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(2)
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[73:80], v[176:177], v[88:89], v[73:80] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu4 v[73:80], v[178:179], v[90:91], v[73:80] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	s_delay_alu instid0(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[73:80], v[58:59], v[92:93], v[73:80] neg_lo:[1,1,0]
	s_cbranch_vccnz .LBB0_17
; %bb.16:                               ;   in Loop: Header=BB0_15 Depth=1
	.loc	1 327 26                        ; attention_backward.py:327:26
	v_cmp_le_i32_e64 s23, v184, v121
	v_cmp_le_i32_e64 s24, v185, v121
	v_cmp_le_i32_e64 s25, v186, v121
	v_cmp_le_i32_e64 s26, v187, v121
	v_cmp_le_i32_e64 s27, v188, v121
	.loc	1 327 17 is_stmt 0              ; attention_backward.py:327:17
	s_and_b32 s23, s23, s55
	.loc	1 327 26                        ; attention_backward.py:327:26
	v_cmp_le_i32_e32 vcc_lo, v183, v121
	v_cmp_le_i32_e64 s28, v189, v121
	v_cmp_le_i32_e64 s29, v190, v121
	.loc	1 327 17                        ; attention_backward.py:327:17
	s_and_b32 s24, s24, s61
	s_and_b32 s25, s25, s54
	s_and_not1_b32 s55, s55, exec_lo
	s_and_b32 s23, s23, exec_lo
	s_and_b32 s26, s26, s57
	s_and_b32 s27, s27, s53
	s_or_b32 s55, s55, s23
	s_and_not1_b32 s23, s61, exec_lo
	s_and_b32 s24, s24, exec_lo
	s_and_not1_b32 s54, s54, exec_lo
	s_and_b32 s25, s25, exec_lo
	s_and_b32 s63, vcc_lo, s59
	s_and_b32 s28, s28, s58
	s_and_b32 s29, s29, s56
	s_or_b32 s61, s23, s24
	s_or_b32 s54, s54, s25
	s_and_not1_b32 s23, s57, exec_lo
	s_and_b32 s24, s26, exec_lo
	s_and_not1_b32 s25, s53, exec_lo
	s_and_b32 s26, s27, exec_lo
	s_and_not1_b32 s59, s59, exec_lo
	s_and_b32 s63, s63, exec_lo
	s_or_b32 s57, s23, s24
	s_or_b32 s53, s25, s26
	s_and_not1_b32 s23, s58, exec_lo
	s_and_b32 s24, s28, exec_lo
	s_and_not1_b32 s25, s56, exec_lo
	s_and_b32 s26, s29, exec_lo
	s_or_b32 s59, s59, s63
	s_or_b32 s58, s23, s24
	s_or_b32 s56, s25, s26
.LBB0_17:                               ;   in Loop: Header=BB0_15 Depth=1
	.loc	1 0 0                           ; attention_backward.py:0
	v_add_lshl_u32 v58, s62, v95, 1
	v_add_lshl_u32 v175, s62, v119, 1
	.loc	1 328 13 is_stmt 1              ; attention_backward.py:328:13
	s_and_b32 vcc_lo, exec_lo, s6
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 0 0 is_stmt 0                 ; attention_backward.py:0
	v_add_nc_u32_e32 v60, 4, v58
	v_add_nc_u32_e32 v61, 8, v58
	v_add_nc_u32_e32 v62, 12, v58
	v_cndmask_b32_e64 v59, 0x80000000, v58, s14
	v_add_nc_u32_e32 v63, 16, v58
	v_add_nc_u32_e32 v64, 20, v58
	v_add_nc_u32_e32 v174, 24, v58
	v_add_nc_u32_e32 v58, 28, v58
	v_add_nc_u32_e32 v179, 4, v175
	v_cndmask_b32_e64 v60, 0x80000000, v60, s9
	v_add_nc_u32_e32 v180, 8, v175
	v_cndmask_b32_e64 v61, 0x80000000, v61, s10
	v_cndmask_b32_e64 v62, 0x80000000, v62, s11
	v_cndmask_b32_e64 v176, 0x80000000, v63, s7
	v_cndmask_b32_e64 v177, 0x80000000, v64, s8
	v_cndmask_b32_e64 v58, 0x80000000, v58, s13
	v_cndmask_b32_e64 v178, 0x80000000, v174, s12
	s_clause 0x7
	buffer_load_u16 v174, v59, s[44:47], 0 offen
	buffer_load_u16 v64, v60, s[44:47], 0 offen
	buffer_load_u16 v63, v61, s[44:47], 0 offen
	buffer_load_u16 v62, v62, s[44:47], 0 offen
	buffer_load_u16 v61, v176, s[44:47], 0 offen
	buffer_load_u16 v60, v177, s[44:47], 0 offen
	buffer_load_u16 v59, v178, s[44:47], 0 offen
	buffer_load_u16 v58, v58, s[44:47], 0 offen
	v_cndmask_b32_e64 v177, 0x80000000, v179, s21
	v_add_nc_u32_e32 v179, 12, v175
	v_cndmask_b32_e64 v176, 0x80000000, v175, s20
	v_cndmask_b32_e64 v178, 0x80000000, v180, s22
	v_add_nc_u32_e32 v180, 16, v175
	v_add_nc_u32_e32 v181, 20, v175
	v_add_nc_u32_e32 v182, 24, v175
	v_add_nc_u32_e32 v175, 28, v175
	v_cndmask_b32_e64 v179, 0x80000000, v179, s15
	v_cndmask_b32_e64 v191, 0x80000000, v180, s16
	v_cndmask_b32_e64 v192, 0x80000000, v181, s17
	v_cndmask_b32_e64 v193, 0x80000000, v182, s18
	v_cndmask_b32_e64 v175, 0x80000000, v175, s19
	s_clause 0x7
	buffer_load_u16 v182, v176, s[44:47], 0 offen
	buffer_load_u16 v181, v177, s[44:47], 0 offen
	buffer_load_u16 v180, v178, s[44:47], 0 offen
	buffer_load_u16 v179, v179, s[44:47], 0 offen
	buffer_load_u16 v178, v191, s[44:47], 0 offen
	buffer_load_u16 v177, v192, s[44:47], 0 offen
	buffer_load_u16 v176, v193, s[44:47], 0 offen
	buffer_load_u16 v175, v175, s[44:47], 0 offen
	s_cbranch_vccnz .LBB0_14
; %bb.18:                               ;   in Loop: Header=BB0_15 Depth=1
	.loc	1 329 26 is_stmt 1              ; attention_backward.py:329:26
	v_cmp_ge_i32_e32 vcc_lo, v183, v123
	v_cmp_ge_i32_e64 s7, v184, v123
	.loc	1 330 26                        ; attention_backward.py:330:26
	v_cmp_le_i32_e64 s14, v183, v124
	v_cmp_le_i32_e64 s15, v184, v124
	.loc	1 329 26                        ; attention_backward.py:329:26
	v_cmp_ge_i32_e64 s8, v185, v123
	v_cmp_ge_i32_e64 s9, v186, v123
	.loc	1 330 26                        ; attention_backward.py:330:26
	v_cmp_le_i32_e64 s16, v185, v124
	v_cmp_le_i32_e64 s17, v186, v124
	.loc	1 329 26                        ; attention_backward.py:329:26
	v_cmp_ge_i32_e64 s10, v187, v123
	v_cmp_ge_i32_e64 s11, v188, v123
	.loc	1 330 26                        ; attention_backward.py:330:26
	v_cmp_le_i32_e64 s18, v187, v124
	v_cmp_le_i32_e64 s19, v188, v124
	.loc	1 330 17 is_stmt 0              ; attention_backward.py:330:17
	s_and_b32 s14, vcc_lo, s14
	s_and_b32 s7, s7, s15
	.loc	1 329 26 is_stmt 1              ; attention_backward.py:329:26
	v_cmp_ge_i32_e64 s12, v189, v123
	v_cmp_ge_i32_e64 s13, v190, v123
	.loc	1 330 26                        ; attention_backward.py:330:26
	v_cmp_le_i32_e64 s20, v189, v124
	v_cmp_le_i32_e64 s21, v190, v124
	.loc	1 330 17 is_stmt 0              ; attention_backward.py:330:17
	s_and_b32 s14, s14, s59
	s_and_b32 s7, s7, s55
	s_and_b32 s8, s8, s16
	s_and_b32 s9, s9, s17
	s_and_b32 s8, s8, s61
	s_and_b32 s9, s9, s54
	s_and_b32 s10, s10, s18
	s_and_b32 s11, s11, s19
	s_and_not1_b32 s15, s59, exec_lo
	s_and_b32 s14, s14, exec_lo
	s_and_not1_b32 s16, s55, exec_lo
	s_and_b32 s7, s7, exec_lo
	s_and_b32 s10, s10, s57
	s_and_b32 s11, s11, s53
	s_and_b32 s12, s12, s20
	s_and_b32 s13, s13, s21
	s_or_b32 s59, s15, s14
	s_or_b32 s55, s16, s7
	s_and_not1_b32 s7, s61, exec_lo
	s_and_b32 s8, s8, exec_lo
	s_and_not1_b32 s14, s54, exec_lo
	s_and_b32 s9, s9, exec_lo
	s_and_b32 s12, s12, s58
	s_and_b32 s13, s13, s56
	s_or_b32 s61, s7, s8
	s_or_b32 s54, s14, s9
	s_and_not1_b32 s7, s57, exec_lo
	s_and_b32 s8, s10, exec_lo
	s_and_not1_b32 s9, s53, exec_lo
	s_and_b32 s10, s11, exec_lo
	s_or_b32 s57, s7, s8
	s_or_b32 s53, s9, s10
	s_and_not1_b32 s7, s58, exec_lo
	s_and_b32 s8, s12, exec_lo
	s_and_not1_b32 s9, s56, exec_lo
	s_and_b32 s10, s13, exec_lo
	s_or_b32 s58, s7, s8
	s_or_b32 s56, s9, s10
	s_branch .LBB0_14
.LBB0_19:                               ; %._crit_edge68
	.loc	1 401 13 is_stmt 1              ; attention_backward.py:401:13
	v_mul_lo_u32 v24, v111, s52
	.loc	1 408 40                        ; attention_backward.py:408:40
	v_cmp_gt_i32_e64 s1, s52, v119
	v_cmp_gt_i32_e64 s2, s52, v120
	v_cmp_gt_i32_e64 s3, s52, v118
	v_cmp_gt_i32_e64 s5, s52, v117
	.loc	1 405 9                         ; attention_backward.py:405:9
	s_and_b32 s37, s37, 0xffff
	.loc	1 408 18                        ; attention_backward.py:408:18
	s_and_b32 s1, s4, s1
	s_mov_b32 s39, 0x31027000
	.loc	1 405 9                         ; attention_backward.py:405:9
	v_add_lshl_u32 v25, v24, v119, 2
	v_add_lshl_u32 v26, v24, v120, 2
	v_add_lshl_u32 v27, v24, v118, 2
	s_mov_b32 s38, 0x7ffffffe
	.loc	1 408 40                        ; attention_backward.py:408:40
	v_cmp_gt_i32_e64 s6, s52, v116
	.loc	1 405 9                         ; attention_backward.py:405:9
	v_cndmask_b32_e64 v25, 0x80000000, v25, s1
	.loc	1 408 18                        ; attention_backward.py:408:18
	s_and_b32 s1, s4, s2
	s_and_b32 s2, s4, s5
	.loc	1 405 9                         ; attention_backward.py:405:9
	v_cndmask_b32_e64 v26, 0x80000000, v26, s1
	.loc	1 408 18                        ; attention_backward.py:408:18
	s_and_b32 s1, s4, s3
	.loc	1 405 9                         ; attention_backward.py:405:9
	buffer_store_b32 v65, v25, s[36:39], 0 offen
	v_cndmask_b32_e64 v27, 0x80000000, v27, s1
	v_add_lshl_u32 v25, v24, v117, 2
	s_clause 0x1
	buffer_store_b32 v66, v26, s[36:39], 0 offen
	buffer_store_b32 v67, v27, s[36:39], 0 offen
	v_add_lshl_u32 v26, v24, v116, 2
	.loc	1 408 40                        ; attention_backward.py:408:40
	v_cmp_gt_i32_e64 s7, s52, v115
	.loc	1 405 9                         ; attention_backward.py:405:9
	v_cndmask_b32_e64 v25, 0x80000000, v25, s2
	.loc	1 408 18                        ; attention_backward.py:408:18
	s_and_b32 s2, s4, s6
	.loc	1 168 40                        ; attention_backward.py:168:40
	v_or_b32_e32 v23, 16, v119
	.loc	1 408 40                        ; attention_backward.py:408:40
	v_cmp_gt_i32_e64 s8, s52, v114
	.loc	1 405 9                         ; attention_backward.py:405:9
	v_add_lshl_u32 v27, v24, v115, 2
	v_cndmask_b32_e64 v26, 0x80000000, v26, s2
	.loc	1 168 40                        ; attention_backward.py:168:40
	v_or_b32_e32 v22, 18, v119
	.loc	1 408 40                        ; attention_backward.py:408:40
	v_cmp_gt_i32_e64 s9, s52, v113
	.loc	1 405 9                         ; attention_backward.py:405:9
	v_add_lshl_u32 v28, v24, v114, 2
	.loc	1 168 40                        ; attention_backward.py:168:40
	v_or_b32_e32 v21, 20, v119
	.loc	1 408 18                        ; attention_backward.py:408:18
	s_and_b32 s2, s4, s7
	.loc	1 408 40 is_stmt 0              ; attention_backward.py:408:40
	v_cmp_gt_i32_e64 s10, s52, v23
	.loc	1 405 9 is_stmt 1               ; attention_backward.py:405:9
	s_clause 0x1
	buffer_store_b32 v68, v25, s[36:39], 0 offen
	buffer_store_b32 v69, v26, s[36:39], 0 offen
	v_add_lshl_u32 v25, v24, v113, 2
	.loc	1 168 40                        ; attention_backward.py:168:40
	v_or_b32_e32 v20, 22, v119
	.loc	1 405 9                         ; attention_backward.py:405:9
	v_cndmask_b32_e64 v27, 0x80000000, v27, s2
	.loc	1 408 18                        ; attention_backward.py:408:18
	s_and_b32 s2, s4, s8
	.loc	1 408 40 is_stmt 0              ; attention_backward.py:408:40
	v_cmp_gt_i32_e64 s11, s52, v22
	.loc	1 405 9 is_stmt 1               ; attention_backward.py:405:9
	v_add_lshl_u32 v23, v24, v23, 2
	.loc	1 168 40                        ; attention_backward.py:168:40
	v_or_b32_e32 v19, 24, v119
	.loc	1 405 9                         ; attention_backward.py:405:9
	v_cndmask_b32_e64 v28, 0x80000000, v28, s2
	.loc	1 408 18                        ; attention_backward.py:408:18
	s_and_b32 s2, s4, s9
	.loc	1 408 40 is_stmt 0              ; attention_backward.py:408:40
	v_cmp_gt_i32_e64 s12, s52, v21
	.loc	1 405 9 is_stmt 1               ; attention_backward.py:405:9
	v_add_lshl_u32 v22, v24, v22, 2
	.loc	1 168 40                        ; attention_backward.py:168:40
	v_or_b32_e32 v18, 26, v119
	.loc	1 405 9                         ; attention_backward.py:405:9
	v_cndmask_b32_e64 v25, 0x80000000, v25, s2
	.loc	1 408 18                        ; attention_backward.py:408:18
	s_and_b32 s2, s4, s10
	.loc	1 408 40 is_stmt 0              ; attention_backward.py:408:40
	v_cmp_gt_i32_e64 s13, s52, v20
	.loc	1 405 9 is_stmt 1               ; attention_backward.py:405:9
	v_add_lshl_u32 v21, v24, v21, 2
	.loc	1 168 40                        ; attention_backward.py:168:40
	v_or_b32_e32 v17, 28, v119
	.loc	1 405 9                         ; attention_backward.py:405:9
	v_cndmask_b32_e64 v23, 0x80000000, v23, s2
	.loc	1 408 18                        ; attention_backward.py:408:18
	s_and_b32 s2, s4, s11
	.loc	1 408 40 is_stmt 0              ; attention_backward.py:408:40
	v_cmp_gt_i32_e64 s14, s52, v19
	.loc	1 405 9 is_stmt 1               ; attention_backward.py:405:9
	v_add_lshl_u32 v20, v24, v20, 2
	.loc	1 168 40                        ; attention_backward.py:168:40
	v_or_b32_e32 v16, 30, v119
	.loc	1 405 9                         ; attention_backward.py:405:9
	v_cndmask_b32_e64 v22, 0x80000000, v22, s2
	.loc	1 408 18                        ; attention_backward.py:408:18
	s_and_b32 s2, s4, s12
	.loc	1 408 40 is_stmt 0              ; attention_backward.py:408:40
	v_cmp_gt_i32_e64 s15, s52, v18
	.loc	1 405 9 is_stmt 1               ; attention_backward.py:405:9
	v_add_lshl_u32 v19, v24, v19, 2
	.loc	1 168 40                        ; attention_backward.py:168:40
	v_or_b32_e32 v15, 32, v119
	.loc	1 405 9                         ; attention_backward.py:405:9
	v_cndmask_b32_e64 v21, 0x80000000, v21, s2
	.loc	1 408 18                        ; attention_backward.py:408:18
	s_and_b32 s2, s4, s13
	.loc	1 408 40 is_stmt 0              ; attention_backward.py:408:40
	v_cmp_gt_i32_e64 s16, s52, v17
	.loc	1 405 9 is_stmt 1               ; attention_backward.py:405:9
	v_add_lshl_u32 v18, v24, v18, 2
	.loc	1 168 40                        ; attention_backward.py:168:40
	v_or_b32_e32 v14, 34, v119
	.loc	1 405 9                         ; attention_backward.py:405:9
	v_cndmask_b32_e64 v20, 0x80000000, v20, s2
	.loc	1 408 18                        ; attention_backward.py:408:18
	s_and_b32 s2, s4, s14
	.loc	1 408 40 is_stmt 0              ; attention_backward.py:408:40
	v_cmp_gt_i32_e64 s17, s52, v16
	.loc	1 405 9 is_stmt 1               ; attention_backward.py:405:9
	v_add_lshl_u32 v17, v24, v17, 2
	.loc	1 168 40                        ; attention_backward.py:168:40
	v_or_b32_e32 v13, 36, v119
	.loc	1 405 9                         ; attention_backward.py:405:9
	v_cndmask_b32_e64 v19, 0x80000000, v19, s2
	.loc	1 408 18                        ; attention_backward.py:408:18
	s_and_b32 s2, s4, s15
	.loc	1 408 40 is_stmt 0              ; attention_backward.py:408:40
	v_cmp_gt_i32_e64 s18, s52, v15
	.loc	1 405 9 is_stmt 1               ; attention_backward.py:405:9
	v_add_lshl_u32 v16, v24, v16, 2
	.loc	1 168 40                        ; attention_backward.py:168:40
	v_or_b32_e32 v12, 38, v119
	.loc	1 405 9                         ; attention_backward.py:405:9
	v_cndmask_b32_e64 v18, 0x80000000, v18, s2
	.loc	1 408 18                        ; attention_backward.py:408:18
	s_and_b32 s2, s4, s16
	.loc	1 408 40 is_stmt 0              ; attention_backward.py:408:40
	v_cmp_gt_i32_e64 s19, s52, v14
	.loc	1 405 9 is_stmt 1               ; attention_backward.py:405:9
	v_add_lshl_u32 v15, v24, v15, 2
	.loc	1 168 40                        ; attention_backward.py:168:40
	v_or_b32_e32 v11, 40, v119
	.loc	1 405 9                         ; attention_backward.py:405:9
	v_cndmask_b32_e64 v17, 0x80000000, v17, s2
	.loc	1 408 18                        ; attention_backward.py:408:18
	s_and_b32 s2, s4, s17
	.loc	1 408 40 is_stmt 0              ; attention_backward.py:408:40
	v_cmp_gt_i32_e64 s20, s52, v13
	.loc	1 405 9 is_stmt 1               ; attention_backward.py:405:9
	v_add_lshl_u32 v14, v24, v14, 2
	.loc	1 168 40                        ; attention_backward.py:168:40
	v_or_b32_e32 v10, 42, v119
	.loc	1 405 9                         ; attention_backward.py:405:9
	v_cndmask_b32_e64 v16, 0x80000000, v16, s2
	.loc	1 408 18                        ; attention_backward.py:408:18
	s_and_b32 s2, s4, s18
	.loc	1 408 40 is_stmt 0              ; attention_backward.py:408:40
	v_cmp_gt_i32_e64 s21, s52, v12
	.loc	1 405 9 is_stmt 1               ; attention_backward.py:405:9
	v_add_lshl_u32 v13, v24, v13, 2
	.loc	1 168 40                        ; attention_backward.py:168:40
	v_or_b32_e32 v9, 44, v119
	.loc	1 405 9                         ; attention_backward.py:405:9
	v_cndmask_b32_e64 v15, 0x80000000, v15, s2
	.loc	1 408 18                        ; attention_backward.py:408:18
	s_and_b32 s2, s4, s19
	.loc	1 408 40 is_stmt 0              ; attention_backward.py:408:40
	v_cmp_gt_i32_e64 s22, s52, v11
	.loc	1 405 9 is_stmt 1               ; attention_backward.py:405:9
	v_add_lshl_u32 v12, v24, v12, 2
	.loc	1 168 40                        ; attention_backward.py:168:40
	v_or_b32_e32 v8, 46, v119
	.loc	1 405 9                         ; attention_backward.py:405:9
	v_cndmask_b32_e64 v14, 0x80000000, v14, s2
	.loc	1 408 18                        ; attention_backward.py:408:18
	s_and_b32 s2, s4, s20
	.loc	1 408 40 is_stmt 0              ; attention_backward.py:408:40
	v_cmp_gt_i32_e64 s23, s52, v10
	.loc	1 405 9 is_stmt 1               ; attention_backward.py:405:9
	v_add_lshl_u32 v11, v24, v11, 2
	.loc	1 168 40                        ; attention_backward.py:168:40
	v_or_b32_e32 v7, 48, v119
	.loc	1 405 9                         ; attention_backward.py:405:9
	v_cndmask_b32_e64 v13, 0x80000000, v13, s2
	.loc	1 408 18                        ; attention_backward.py:408:18
	s_and_b32 s2, s4, s21
	.loc	1 408 40 is_stmt 0              ; attention_backward.py:408:40
	v_cmp_gt_i32_e64 s24, s52, v9
	.loc	1 405 9 is_stmt 1               ; attention_backward.py:405:9
	v_add_lshl_u32 v10, v24, v10, 2
	.loc	1 168 40                        ; attention_backward.py:168:40
	v_or_b32_e32 v6, 50, v119
	.loc	1 405 9                         ; attention_backward.py:405:9
	v_cndmask_b32_e64 v12, 0x80000000, v12, s2
	.loc	1 408 18                        ; attention_backward.py:408:18
	s_and_b32 s2, s4, s22
	.loc	1 408 40 is_stmt 0              ; attention_backward.py:408:40
	v_cmp_gt_i32_e64 s25, s52, v8
	.loc	1 405 9 is_stmt 1               ; attention_backward.py:405:9
	v_add_lshl_u32 v9, v24, v9, 2
	.loc	1 168 40                        ; attention_backward.py:168:40
	v_or_b32_e32 v5, 52, v119
	.loc	1 405 9                         ; attention_backward.py:405:9
	v_cndmask_b32_e64 v11, 0x80000000, v11, s2
	.loc	1 408 18                        ; attention_backward.py:408:18
	s_and_b32 s2, s4, s23
	.loc	1 408 40 is_stmt 0              ; attention_backward.py:408:40
	v_cmp_gt_i32_e64 s26, s52, v7
	.loc	1 405 9 is_stmt 1               ; attention_backward.py:405:9
	v_add_lshl_u32 v8, v24, v8, 2
	.loc	1 168 40                        ; attention_backward.py:168:40
	v_or_b32_e32 v4, 54, v119
	.loc	1 405 9                         ; attention_backward.py:405:9
	v_cndmask_b32_e64 v10, 0x80000000, v10, s2
	.loc	1 408 18                        ; attention_backward.py:408:18
	s_and_b32 s2, s4, s24
	.loc	1 408 40 is_stmt 0              ; attention_backward.py:408:40
	v_cmp_gt_i32_e64 s27, s52, v6
	.loc	1 405 9 is_stmt 1               ; attention_backward.py:405:9
	v_add_lshl_u32 v7, v24, v7, 2
	.loc	1 168 40                        ; attention_backward.py:168:40
	v_or_b32_e32 v3, 56, v119
	.loc	1 405 9                         ; attention_backward.py:405:9
	v_cndmask_b32_e64 v9, 0x80000000, v9, s2
	.loc	1 408 18                        ; attention_backward.py:408:18
	s_and_b32 s2, s4, s25
	.loc	1 168 40                        ; attention_backward.py:168:40
	v_or_b32_e32 v1, 60, v119
	v_or_b32_e32 v2, 58, v119
	.loc	1 408 40                        ; attention_backward.py:408:40
	v_cmp_gt_i32_e64 s28, s52, v5
	.loc	1 405 9                         ; attention_backward.py:405:9
	v_add_lshl_u32 v6, v24, v6, 2
	v_cndmask_b32_e64 v8, 0x80000000, v8, s2
	.loc	1 408 18                        ; attention_backward.py:408:18
	s_and_b32 s2, s4, s26
	.loc	1 168 40                        ; attention_backward.py:168:40
	v_or_b32_e32 v0, 62, v126
	.loc	1 408 40                        ; attention_backward.py:408:40
	v_cmp_gt_i32_e64 s29, s52, v4
	.loc	1 405 9                         ; attention_backward.py:405:9
	v_add_lshl_u32 v5, v24, v5, 2
	v_cndmask_b32_e64 v7, 0x80000000, v7, s2
	.loc	1 408 18                        ; attention_backward.py:408:18
	s_and_b32 s2, s4, s27
	.loc	1 408 40 is_stmt 0              ; attention_backward.py:408:40
	v_cmp_gt_i32_e64 s30, s52, v3
	.loc	1 405 9 is_stmt 1               ; attention_backward.py:405:9
	v_add_lshl_u32 v4, v24, v4, 2
	.loc	1 408 40                        ; attention_backward.py:408:40
	v_cmp_gt_i32_e64 s0, s52, v2
	v_cmp_gt_i32_e32 vcc_lo, s52, v1
	.loc	1 405 9                         ; attention_backward.py:405:9
	v_cndmask_b32_e64 v6, 0x80000000, v6, s2
	.loc	1 408 18                        ; attention_backward.py:408:18
	s_and_b32 s2, s4, s28
	.loc	1 405 9                         ; attention_backward.py:405:9
	v_add_lshl_u32 v3, v24, v3, 2
	.loc	1 408 40                        ; attention_backward.py:408:40
	v_cmp_gt_i32_e64 s1, s52, v0
	.loc	1 405 9                         ; attention_backward.py:405:9
	v_cndmask_b32_e64 v5, 0x80000000, v5, s2
	.loc	1 408 18                        ; attention_backward.py:408:18
	s_and_b32 s2, s4, s29
	.loc	1 405 9                         ; attention_backward.py:405:9
	v_add_lshl_u32 v2, v24, v2, 2
	v_add_lshl_u32 v1, v24, v1, 2
	v_cndmask_b32_e64 v4, 0x80000000, v4, s2
	.loc	1 408 18                        ; attention_backward.py:408:18
	s_and_b32 s2, s4, s30
	.loc	1 405 9                         ; attention_backward.py:405:9
	v_add_lshl_u32 v0, v24, v0, 2
	.loc	1 408 18                        ; attention_backward.py:408:18
	s_and_b32 s0, s4, s0
	s_and_b32 vcc_lo, s4, vcc_lo
	.loc	1 405 9                         ; attention_backward.py:405:9
	v_cndmask_b32_e64 v3, 0x80000000, v3, s2
	v_cndmask_b32_e64 v2, 0x80000000, v2, s0
	v_cndmask_b32_e32 v1, 0x80000000, v1, vcc_lo
	.loc	1 408 18                        ; attention_backward.py:408:18
	s_and_b32 vcc_lo, s4, s1
	.loc	1 405 9                         ; attention_backward.py:405:9
	s_clause 0x1
	buffer_store_b32 v70, v27, s[36:39], 0 offen
	buffer_store_b32 v71, v28, s[36:39], 0 offen
	v_cndmask_b32_e32 v0, 0x80000000, v0, vcc_lo
	s_clause 0x18
	buffer_store_b32 v72, v25, s[36:39], 0 offen
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
	s_nop 0
	s_sendmsg sendmsg(MSG_DEALLOC_VGPRS)
	s_endpgm
.Ltmp206:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_attention_bwd_dq_int4xbf16_none_runtime_outbfloat16_doutbfloat16_float32_d64_dv64_shaperuntime_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1
		.amdhsa_group_segment_fixed_size 0
		.amdhsa_private_segment_fixed_size 0
		.amdhsa_kernarg_size 184
		.amdhsa_user_sgpr_count 2
		.amdhsa_user_sgpr_dispatch_ptr 0
		.amdhsa_user_sgpr_queue_ptr 0
		.amdhsa_user_sgpr_kernarg_segment_ptr 1
		.amdhsa_user_sgpr_dispatch_id 0
		.amdhsa_user_sgpr_private_segment_size 0
		.amdhsa_wavefront_size32 1
		.amdhsa_uses_dynamic_stack 0
		.amdhsa_enable_private_segment 0
		.amdhsa_system_sgpr_workgroup_id_x 1
		.amdhsa_system_sgpr_workgroup_id_y 1
		.amdhsa_system_sgpr_workgroup_id_z 0
		.amdhsa_system_sgpr_workgroup_info 0
		.amdhsa_system_vgpr_workitem_id 0
		.amdhsa_next_free_vgpr 226
		.amdhsa_next_free_sgpr 86
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
	.size	amd_strix_halo_gfx1151_attention_bwd_dq_int4xbf16_none_runtime_outbfloat16_doutbfloat16_float32_d64_dv64_shaperuntime_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1, .Lfunc_end0-amd_strix_halo_gfx1151_attention_bwd_dq_int4xbf16_none_runtime_outbfloat16_doutbfloat16_float32_d64_dv64_shaperuntime_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_attention_bwd_dq_int4xbf16_none_runtime_outbfloat16_doutbfloat16_float32_d64_dv64_shaperuntime_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.num_vgpr, 226
	.set amd_strix_halo_gfx1151_attention_bwd_dq_int4xbf16_none_runtime_outbfloat16_doutbfloat16_float32_d64_dv64_shaperuntime_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.num_agpr, 0
	.set amd_strix_halo_gfx1151_attention_bwd_dq_int4xbf16_none_runtime_outbfloat16_doutbfloat16_float32_d64_dv64_shaperuntime_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.numbered_sgpr, 86
	.set amd_strix_halo_gfx1151_attention_bwd_dq_int4xbf16_none_runtime_outbfloat16_doutbfloat16_float32_d64_dv64_shaperuntime_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_attention_bwd_dq_int4xbf16_none_runtime_outbfloat16_doutbfloat16_float32_d64_dv64_shaperuntime_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.private_seg_size, 0
	.set amd_strix_halo_gfx1151_attention_bwd_dq_int4xbf16_none_runtime_outbfloat16_doutbfloat16_float32_d64_dv64_shaperuntime_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.uses_vcc, 1
	.set amd_strix_halo_gfx1151_attention_bwd_dq_int4xbf16_none_runtime_outbfloat16_doutbfloat16_float32_d64_dv64_shaperuntime_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.uses_flat_scratch, 0
	.set amd_strix_halo_gfx1151_attention_bwd_dq_int4xbf16_none_runtime_outbfloat16_doutbfloat16_float32_d64_dv64_shaperuntime_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_attention_bwd_dq_int4xbf16_none_runtime_outbfloat16_doutbfloat16_float32_d64_dv64_shaperuntime_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.has_recursion, 0
	.set amd_strix_halo_gfx1151_attention_bwd_dq_int4xbf16_none_runtime_outbfloat16_doutbfloat16_float32_d64_dv64_shaperuntime_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 18468
; TotalNumSgprs: 88
; NumVgprs: 226
; ScratchSize: 0
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 28
; NumSGPRsForWavesPerEU: 88
; NumVGPRsForWavesPerEU: 226
; Occupancy: 6
; WaveLimiterHint : 0
; COMPUTE_PGM_RSRC2:SCRATCH_EN: 0
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
	.quad	.Ltmp10-.Lfunc_begin0
	.quad	.Ltmp11-.Lfunc_begin0
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
	.quad	.Ltmp24-.Lfunc_begin0
	.quad	.Ltmp25-.Lfunc_begin0
	.quad	.Ltmp26-.Lfunc_begin0
	.quad	.Ltmp27-.Lfunc_begin0
	.quad	.Ltmp30-.Lfunc_begin0
	.quad	.Ltmp31-.Lfunc_begin0
	.quad	.Ltmp32-.Lfunc_begin0
	.quad	.Ltmp33-.Lfunc_begin0
	.quad	.Ltmp39-.Lfunc_begin0
	.quad	.Ltmp40-.Lfunc_begin0
	.quad	.Ltmp42-.Lfunc_begin0
	.quad	.Ltmp43-.Lfunc_begin0
	.quad	.Ltmp44-.Lfunc_begin0
	.quad	.Ltmp45-.Lfunc_begin0
	.quad	.Ltmp46-.Lfunc_begin0
	.quad	.Ltmp47-.Lfunc_begin0
	.quad	.Ltmp49-.Lfunc_begin0
	.quad	.Ltmp50-.Lfunc_begin0
	.quad	.Ltmp52-.Lfunc_begin0
	.quad	.Ltmp53-.Lfunc_begin0
	.quad	.Ltmp54-.Lfunc_begin0
	.quad	.Ltmp55-.Lfunc_begin0
	.quad	.Ltmp66-.Lfunc_begin0
	.quad	.Ltmp67-.Lfunc_begin0
	.quad	.Ltmp68-.Lfunc_begin0
	.quad	.Ltmp69-.Lfunc_begin0
	.quad	.Ltmp72-.Lfunc_begin0
	.quad	.Ltmp73-.Lfunc_begin0
	.quad	.Ltmp79-.Lfunc_begin0
	.quad	.Ltmp80-.Lfunc_begin0
	.quad	.Ltmp81-.Lfunc_begin0
	.quad	.Ltmp82-.Lfunc_begin0
	.quad	.Ltmp87-.Lfunc_begin0
	.quad	.Ltmp88-.Lfunc_begin0
	.quad	.Ltmp94-.Lfunc_begin0
	.quad	.Ltmp95-.Lfunc_begin0
	.quad	.Ltmp97-.Lfunc_begin0
	.quad	.Ltmp98-.Lfunc_begin0
	.quad	.Ltmp119-.Lfunc_begin0
	.quad	.Ltmp120-.Lfunc_begin0
	.quad	.Ltmp139-.Lfunc_begin0
	.quad	.Ltmp140-.Lfunc_begin0
	.quad	.Ltmp149-.Lfunc_begin0
	.quad	.Ltmp150-.Lfunc_begin0
	.quad	.Ltmp161-.Lfunc_begin0
	.quad	.Ltmp162-.Lfunc_begin0
	.quad	.Ltmp163-.Lfunc_begin0
	.quad	.Ltmp164-.Lfunc_begin0
	.quad	.Ltmp165-.Lfunc_begin0
	.quad	.Ltmp166-.Lfunc_begin0
	.quad	.Ltmp167-.Lfunc_begin0
	.quad	.Ltmp186-.Lfunc_begin0
	.quad	.Ltmp187-.Lfunc_begin0
	.quad	.Ltmp188-.Lfunc_begin0
	.quad	.Ltmp189-.Lfunc_begin0
	.quad	.Ltmp190-.Lfunc_begin0
	.quad	.Ltmp191-.Lfunc_begin0
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
	.quad	0
	.quad	0
.Ldebug_ranges1:
	.quad	.Ltmp7-.Lfunc_begin0
	.quad	.Ltmp8-.Lfunc_begin0
	.quad	.Ltmp19-.Lfunc_begin0
	.quad	.Ltmp20-.Lfunc_begin0
	.quad	.Ltmp21-.Lfunc_begin0
	.quad	.Ltmp22-.Lfunc_begin0
	.quad	.Ltmp27-.Lfunc_begin0
	.quad	.Ltmp28-.Lfunc_begin0
	.quad	.Ltmp29-.Lfunc_begin0
	.quad	.Ltmp30-.Lfunc_begin0
	.quad	.Ltmp31-.Lfunc_begin0
	.quad	.Ltmp32-.Lfunc_begin0
	.quad	.Ltmp34-.Lfunc_begin0
	.quad	.Ltmp35-.Lfunc_begin0
	.quad	.Ltmp36-.Lfunc_begin0
	.quad	.Ltmp37-.Lfunc_begin0
	.quad	.Ltmp38-.Lfunc_begin0
	.quad	.Ltmp39-.Lfunc_begin0
	.quad	.Ltmp40-.Lfunc_begin0
	.quad	.Ltmp41-.Lfunc_begin0
	.quad	.Ltmp48-.Lfunc_begin0
	.quad	.Ltmp49-.Lfunc_begin0
	.quad	.Ltmp51-.Lfunc_begin0
	.quad	.Ltmp52-.Lfunc_begin0
	.quad	.Ltmp53-.Lfunc_begin0
	.quad	.Ltmp54-.Lfunc_begin0
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
	.quad	.Ltmp67-.Lfunc_begin0
	.quad	.Ltmp68-.Lfunc_begin0
	.quad	.Ltmp70-.Lfunc_begin0
	.quad	.Ltmp71-.Lfunc_begin0
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
	.quad	.Ltmp91-.Lfunc_begin0
	.quad	.Ltmp92-.Lfunc_begin0
	.quad	.Ltmp93-.Lfunc_begin0
	.quad	.Ltmp96-.Lfunc_begin0
	.quad	.Ltmp97-.Lfunc_begin0
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
	.quad	.Ltmp133-.Lfunc_begin0
	.quad	.Ltmp134-.Lfunc_begin0
	.quad	.Ltmp135-.Lfunc_begin0
	.quad	.Ltmp136-.Lfunc_begin0
	.quad	.Ltmp137-.Lfunc_begin0
	.quad	.Ltmp138-.Lfunc_begin0
	.quad	.Ltmp140-.Lfunc_begin0
	.quad	.Ltmp141-.Lfunc_begin0
	.quad	.Ltmp142-.Lfunc_begin0
	.quad	.Ltmp143-.Lfunc_begin0
	.quad	.Ltmp144-.Lfunc_begin0
	.quad	.Ltmp145-.Lfunc_begin0
	.quad	.Ltmp146-.Lfunc_begin0
	.quad	.Ltmp147-.Lfunc_begin0
	.quad	.Ltmp148-.Lfunc_begin0
	.quad	.Ltmp149-.Lfunc_begin0
	.quad	.Ltmp151-.Lfunc_begin0
	.quad	.Ltmp152-.Lfunc_begin0
	.quad	.Ltmp153-.Lfunc_begin0
	.quad	.Ltmp154-.Lfunc_begin0
	.quad	.Ltmp155-.Lfunc_begin0
	.quad	.Ltmp156-.Lfunc_begin0
	.quad	.Ltmp157-.Lfunc_begin0
	.quad	.Ltmp158-.Lfunc_begin0
	.quad	.Ltmp159-.Lfunc_begin0
	.quad	.Ltmp160-.Lfunc_begin0
	.quad	.Ltmp186-.Lfunc_begin0
	.quad	.Ltmp187-.Lfunc_begin0
	.quad	.Ltmp188-.Lfunc_begin0
	.quad	.Ltmp189-.Lfunc_begin0
	.quad	.Ltmp190-.Lfunc_begin0
	.quad	.Ltmp191-.Lfunc_begin0
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
	.quad	0
	.quad	0
.Ldebug_ranges2:
	.quad	.Ltmp168-.Lfunc_begin0
	.quad	.Ltmp169-.Lfunc_begin0
	.quad	.Ltmp170-.Lfunc_begin0
	.quad	.Ltmp171-.Lfunc_begin0
	.quad	.Ltmp172-.Lfunc_begin0
	.quad	.Ltmp174-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges3:
	.quad	.Ltmp168-.Lfunc_begin0
	.quad	.Ltmp169-.Lfunc_begin0
	.quad	.Ltmp170-.Lfunc_begin0
	.quad	.Ltmp171-.Lfunc_begin0
	.quad	.Ltmp172-.Lfunc_begin0
	.quad	.Ltmp173-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges4:
	.quad	.Ltmp175-.Lfunc_begin0
	.quad	.Ltmp176-.Lfunc_begin0
	.quad	.Ltmp177-.Lfunc_begin0
	.quad	.Ltmp178-.Lfunc_begin0
	.quad	.Ltmp179-.Lfunc_begin0
	.quad	.Ltmp180-.Lfunc_begin0
	.quad	.Ltmp181-.Lfunc_begin0
	.quad	.Ltmp183-.Lfunc_begin0
	.quad	.Ltmp184-.Lfunc_begin0
	.quad	.Ltmp185-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges5:
	.quad	.Ltmp175-.Lfunc_begin0
	.quad	.Ltmp176-.Lfunc_begin0
	.quad	.Ltmp177-.Lfunc_begin0
	.quad	.Ltmp178-.Lfunc_begin0
	.quad	.Ltmp179-.Lfunc_begin0
	.quad	.Ltmp180-.Lfunc_begin0
	.quad	.Ltmp181-.Lfunc_begin0
	.quad	.Ltmp182-.Lfunc_begin0
	.quad	.Ltmp184-.Lfunc_begin0
	.quad	.Ltmp185-.Lfunc_begin0
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
	.asciz	"amd_strix_halo_gfx1151_attention_bwd_dq_int4xbf16_none_runtime_outbfloat16_doutbfloat16_float32_d64_dv64_shaperuntime_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1"                        ; string offset=97 ; amd_strix_halo_gfx1151_attention_bwd_dq_int4xbf16_none_runtime_outbfloat16_doutbfloat16_float32_d64_dv64_shaperuntime_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1
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
    .name:           amd_strix_halo_gfx1151_attention_bwd_dq_int4xbf16_none_runtime_outbfloat16_doutbfloat16_float32_d64_dv64_shaperuntime_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1
    .private_segment_fixed_size: 0
    .sgpr_count:     88
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_attention_bwd_dq_int4xbf16_none_runtime_outbfloat16_doutbfloat16_float32_d64_dv64_shaperuntime_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     226
    .vgpr_spill_count: 0
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
