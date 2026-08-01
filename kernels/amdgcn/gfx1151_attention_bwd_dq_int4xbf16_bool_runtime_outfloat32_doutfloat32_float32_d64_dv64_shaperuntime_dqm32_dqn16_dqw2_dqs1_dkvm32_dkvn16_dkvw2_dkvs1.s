	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_attention_bwd_dq_int4xbf16_bool_runtime_outfloat32_doutfloat32_float32_d64_dv64_shaperuntime_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1                          ; -- Begin function amd_strix_halo_gfx1151_attention_bwd_dq_int4xbf16_bool_runtime_outfloat32_doutfloat32_float32_d64_dv64_shaperuntime_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1
	.p2align	8
	.type	amd_strix_halo_gfx1151_attention_bwd_dq_int4xbf16_bool_runtime_outfloat32_doutfloat32_float32_d64_dv64_shaperuntime_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1,@function
amd_strix_halo_gfx1151_attention_bwd_dq_int4xbf16_bool_runtime_outfloat32_doutfloat32_float32_d64_dv64_shaperuntime_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1:                                 ; @amd_strix_halo_gfx1151_attention_bwd_dq_int4xbf16_bool_runtime_outfloat32_doutfloat32_float32_d64_dv64_shaperuntime_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1
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
	v_lshrrev_b32_e32 v106, 5, v0
	v_and_b32_e32 v73, 31, v0
	s_clause 0x1
	s_load_b64 s[36:37], s[0:1], 0x0
	s_load_b64 s[24:25], s[0:1], 0x18
	.loc	1 134 28                        ; attention_backward.py:134:28
	v_xor_b32_e32 v21, 0x198, v0
	v_xor_b32_e32 v20, 0x110, v0
	.loc	1 124 31                        ; attention_backward.py:124:31
	v_or_b32_e32 v2, 2, v106
	v_or_b32_e32 v3, 4, v106
	v_or_b32_e32 v7, 10, v106
	v_or_b32_e32 v8, 12, v106
	v_or_b32_e32 v9, 14, v106
	v_or_b32_e32 v4, 6, v106
	v_or_b32_e32 v5, 8, v106
	.loc	1 134 28                        ; attention_backward.py:134:28
	v_add_nc_u32_e32 v119, 0, v20
	s_load_b128 s[40:43], s[0:1], 0x38
	.loc	1 124 31                        ; attention_backward.py:124:31
	v_and_b32_e32 v255, 15, v0
	.loc	1 134 28                        ; attention_backward.py:134:28
	v_add_nc_u32_e32 v120, 0, v21
	.loc	1 124 31                        ; attention_backward.py:124:31
	v_and_b32_e32 v78, 32, v0
	s_waitcnt lgkmcnt(0)
	s_and_b32 s4, 1, s20
	s_bitcmp1_b32 s20, 8
	.loc	1 133 26                        ; attention_backward.py:133:26
	s_mul_i32 s47, s3, s30
	s_cselect_b32 s33, -1, 0
	s_cmp_eq_u32 s4, 1
	.loc	1 135 17                        ; attention_backward.py:135:17
	v_mad_u64_u32 v[84:85], null, s34, v106, v[73:74]
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
	v_mad_u64_u32 v[85:86], null, s34, 6, v[84:85]
	.loc	1 121 23                        ; attention_backward.py:121:23
	v_rcp_iflag_f32_e32 v1, s5
	.loc	1 124 21                        ; attention_backward.py:124:21
	v_or_b32_e32 v2, s46, v2
	v_or_b32_e32 v3, s46, v3
	v_or_b32_e32 v4, s46, v4
	v_or_b32_e32 v5, s46, v5
	.loc	1 135 17                        ; attention_backward.py:135:17
	v_lshl_add_u32 v114, s34, 1, v84
	v_lshl_add_u32 v115, s34, 2, v84
	v_lshl_add_u32 v116, s34, 3, v84
	v_mad_u64_u32 v[86:87], null, s34, 10, v[84:85]
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_4) | instid1(SALU_CYCLE_2)
	.loc	1 121 23                        ; attention_backward.py:121:23
	v_readfirstlane_b32 s5, v1
	.loc	1 135 17                        ; attention_backward.py:135:17
	v_mad_u64_u32 v[87:88], null, s34, 12, v[84:85]
	v_mad_u64_u32 v[88:89], null, s34, 14, v[84:85]
	.loc	1 121 23                        ; attention_backward.py:121:23
	s_mul_f32 s5, s5, 0x4f7ffffe
	.loc	1 124 31                        ; attention_backward.py:124:31
	v_lshrrev_b32_e32 v113, 1, v78
	.loc	1 121 23                        ; attention_backward.py:121:23
	s_cvt_u32_f32 s5, s5
	s_delay_alu instid0(SALU_CYCLE_3) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_mul_i32 s6, s6, s5
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
	s_sub_i32 s19, s7, s5
	.loc	1 123 34                        ; attention_backward.py:123:34
	s_xor_b32 s10, s28, s29
	v_rcp_iflag_f32_e32 v1, s2
	.loc	1 133 27                        ; attention_backward.py:133:27
	s_mul_i32 s7, s19, s28
	.loc	1 123 34                        ; attention_backward.py:123:34
	s_ashr_i32 s10, s10, 31
	.loc	1 122 22                        ; attention_backward.py:122:22
	s_sub_i32 s54, s3, s7
	.loc	1 139 44                        ; attention_backward.py:139:44
	v_cmp_gt_i32_e64 s2, s34, v73
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 123 34                        ; attention_backward.py:123:34
	v_readfirstlane_b32 s8, v1
	.loc	1 124 31                        ; attention_backward.py:124:31
	v_or_b32_e32 v1, s46, v106
	.loc	1 123 34                        ; attention_backward.py:123:34
	s_mul_f32 s8, s8, 0x4f7ffffe
	.loc	1 124 21                        ; attention_backward.py:124:21
	v_or_b32_e32 v10, 18, v1
	v_or_b32_e32 v11, 20, v1
	v_or_b32_e32 v12, 22, v1
	.loc	1 123 34                        ; attention_backward.py:123:34
	s_cvt_u32_f32 s8, s8
	.loc	1 124 21                        ; attention_backward.py:124:21
	v_or_b32_e32 v13, 24, v1
	v_or_b32_e32 v14, 26, v1
	v_or_b32_e32 v15, 28, v1
	.loc	1 123 34                        ; attention_backward.py:123:34
	s_mul_i32 s9, s9, s8
	.loc	1 124 21                        ; attention_backward.py:124:21
	v_or_b32_e32 v16, 30, v1
	.loc	1 123 34                        ; attention_backward.py:123:34
	s_mul_hi_u32 s9, s8, s9
	.loc	1 128 21                        ; attention_backward.py:128:21
	v_cmp_gt_i32_e32 vcc_lo, s30, v1
	.loc	1 123 34                        ; attention_backward.py:123:34
	s_add_i32 s8, s8, s9
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_mul_hi_u32 s5, s4, s8
	s_mul_i32 s8, s5, s6
	s_delay_alu instid0(SALU_CYCLE_1)
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
	s_abs_i32 s52, s54
	.loc	1 123 34                        ; attention_backward.py:123:34
	s_xor_b32 s3, s3, s10
	.loc	1 124 21 is_stmt 1              ; attention_backward.py:124:21
	s_or_b32 s4, s46, 1
	.loc	1 123 34                        ; attention_backward.py:123:34
	s_sub_i32 s55, s3, s10
	.loc	1 124 21                        ; attention_backward.py:124:21
	s_or_b32 s5, s46, 2
	.loc	1 123 19                        ; attention_backward.py:123:19
	s_abs_i32 s53, s55
	.loc	1 124 21                        ; attention_backward.py:124:21
	s_or_b32 s6, s46, 3
	.loc	1 123 19                        ; attention_backward.py:123:19
	s_cvt_f32_u32 s11, s53
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
	s_sub_i32 s26, 0, s53
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
	v_or_b32_e32 v6, s46, v7
	.loc	1 128 21                        ; attention_backward.py:128:21
	s_cselect_b32 s79, -1, 0
	s_cmp_lt_i32 s4, s30
	.loc	1 124 21                        ; attention_backward.py:124:21
	v_or_b32_e32 v7, s46, v8
	.loc	1 128 21                        ; attention_backward.py:128:21
	s_cselect_b32 s70, -1, 0
	s_cmp_lt_i32 s5, s30
	.loc	1 124 21                        ; attention_backward.py:124:21
	v_or_b32_e32 v8, s46, v9
	.loc	1 128 21                        ; attention_backward.py:128:21
	s_cselect_b32 s67, -1, 0
	s_cmp_lt_i32 s6, s30
	.loc	1 124 21                        ; attention_backward.py:124:21
	v_or_b32_e32 v9, 16, v1
	.loc	1 128 21                        ; attention_backward.py:128:21
	s_cselect_b32 s65, -1, 0
	s_cmp_lt_i32 s7, s30
	v_cmp_gt_i32_e64 s4, s30, v3
	s_cselect_b32 s63, -1, 0
	s_cmp_lt_i32 s8, s30
	v_cmp_gt_i32_e64 s5, s30, v4
	s_cselect_b32 s61, -1, 0
	s_cmp_lt_i32 s9, s30
	v_cmp_gt_i32_e64 s6, s30, v5
	s_cselect_b32 s59, -1, 0
	s_cmp_lt_i32 s3, s30
	v_cmp_gt_i32_e64 s3, s30, v2
	s_cselect_b32 s56, -1, 0
	s_cmp_lt_i32 s10, s30
	v_cmp_gt_i32_e64 s7, s30, v6
	s_cselect_b32 s51, -1, 0
	s_cmp_lt_i32 s12, s30
	v_cmp_gt_i32_e64 s8, s30, v7
	s_cselect_b32 s50, -1, 0
	s_cmp_lt_i32 s13, s30
	v_cmp_gt_i32_e64 s9, s30, v8
	s_cselect_b32 s49, -1, 0
	s_cmp_lt_i32 s14, s30
	v_cmp_gt_i32_e64 s12, s30, v11
	s_cselect_b32 s48, -1, 0
	s_cmp_lt_i32 s11, s30
	v_cmp_gt_i32_e64 s11, s30, v10
	s_cselect_b32 s45, -1, 0
	s_cmp_lt_i32 s15, s30
	v_cmp_gt_i32_e64 s10, s30, v9
	s_cselect_b32 s28, -1, 0
	s_cmp_lt_i32 s16, s30
	v_cmp_gt_i32_e64 s13, s30, v12
	s_cselect_b32 s26, -1, 0
	s_cmp_lt_i32 s17, s30
	v_cmp_gt_i32_e64 s14, s30, v13
	s_cselect_b32 s27, -1, 0
	s_cmp_lt_i32 s38, s30
	v_cmp_gt_i32_e64 s15, s30, v14
	s_cselect_b32 s78, -1, 0
	s_cmp_lt_i32 s39, s30
	v_cmp_gt_i32_e64 s16, s30, v15
	s_cselect_b32 s77, -1, 0
	s_cmp_lt_i32 s57, s30
	v_cmp_gt_i32_e64 s17, s30, v16
	s_cselect_b32 s76, -1, 0
	s_cmp_lt_i32 s58, s30
	s_mov_b32 s39, 0x31027000
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
	v_add_nc_u32_e32 v1, s38, v84
	v_add_nc_u32_e32 v10, s38, v114
	v_add_nc_u32_e32 v11, s38, v115
	v_add_nc_u32_e32 v12, s38, v85
	v_add_nc_u32_e32 v13, s38, v116
	v_mad_u64_u32 v[2:3], null, s34, 18, v[1:2]
	v_lshl_add_u32 v17, s34, 4, v1
	v_add_nc_u32_e32 v14, s38, v86
	v_add_nc_u32_e32 v15, s38, v87
	v_add_nc_u32_e32 v16, s38, v88
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
	v_mad_u64_u32 v[1:2], null, s47, s35, v[0:1]
	.loc	1 134 28                        ; attention_backward.py:134:28
	v_xor_b32_e32 v2, 0x88, v0
	.loc	1 168 18                        ; attention_backward.py:168:18
	s_and_b32 vcc_lo, s79, s3
	.loc	1 166 23                        ; attention_backward.py:166:23
	s_and_b32 s37, s41, 0xffff
	s_mov_b32 s36, s40
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 134 28                        ; attention_backward.py:134:28
	v_add_nc_u32_e32 v118, 0, v2
	.loc	1 167 13                        ; attention_backward.py:167:13
	v_add_nc_u32_e32 v22, s35, v1
	v_mad_u64_u32 v[2:3], null, s35, 17, v[1:2]
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_lshlrev_b32_e32 v20, 2, v22
	v_lshlrev_b32_e32 v1, 2, v1
	.loc	1 167 13                        ; attention_backward.py:167:13
	v_add_nc_u32_e32 v3, s35, v22
	v_add_nc_u32_e32 v21, s35, v2
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_dual_cndmask_b32 v35, 0x80000000, v1 :: v_dual_lshlrev_b32 v2, 2, v2
	.loc	1 168 18                        ; attention_backward.py:168:18
	s_and_b32 vcc_lo, s70, s3
	.loc	1 167 13                        ; attention_backward.py:167:13
	v_add_nc_u32_e32 v22, s35, v3
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_cndmask_b32_e32 v36, 0x80000000, v20, vcc_lo
	v_lshl_add_u32 v1, s35, 6, v1
	.loc	1 168 18                        ; attention_backward.py:168:18
	s_and_b32 vcc_lo, s78, s3
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_lshlrev_b32_e32 v3, 2, v3
	.loc	1 167 13                        ; attention_backward.py:167:13
	v_add_nc_u32_e32 v20, s35, v21
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_lshlrev_b32_e32 v21, 2, v21
	v_cndmask_b32_e32 v1, 0x80000000, v1, vcc_lo
	.loc	1 168 18                        ; attention_backward.py:168:18
	s_and_b32 vcc_lo, s77, s3
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_dual_cndmask_b32 v2, 0x80000000, v2 :: v_dual_add_nc_u32 v117, 0, v0
	.loc	1 168 18                        ; attention_backward.py:168:18
	s_and_b32 vcc_lo, s67, s3
	.loc	1 167 13                        ; attention_backward.py:167:13
	v_add_nc_u32_e32 v23, s35, v22
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_cndmask_b32_e32 v37, 0x80000000, v3, vcc_lo
	v_lshlrev_b32_e32 v3, 2, v22
	.loc	1 168 18                        ; attention_backward.py:168:18
	s_and_b32 vcc_lo, s76, s3
	.loc	1 167 13                        ; attention_backward.py:167:13
	v_add_nc_u32_e32 v22, s35, v20
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_cndmask_b32_e32 v38, 0x80000000, v21, vcc_lo
	v_lshlrev_b32_e32 v20, 2, v20
	.loc	1 168 18                        ; attention_backward.py:168:18
	s_and_b32 vcc_lo, s65, s3
	.loc	1 167 13                        ; attention_backward.py:167:13
	v_add_nc_u32_e32 v21, s35, v23
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_cndmask_b32_e32 v39, 0x80000000, v3, vcc_lo
	v_lshlrev_b32_e32 v3, 2, v23
	.loc	1 168 18                        ; attention_backward.py:168:18
	s_and_b32 vcc_lo, s75, s3
	.loc	1 167 13                        ; attention_backward.py:167:13
	v_add_nc_u32_e32 v23, s35, v22
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_cndmask_b32_e32 v40, 0x80000000, v20, vcc_lo
	v_lshlrev_b32_e32 v20, 2, v22
	.loc	1 168 18                        ; attention_backward.py:168:18
	s_and_b32 vcc_lo, s63, s3
	.loc	1 167 13                        ; attention_backward.py:167:13
	v_add_nc_u32_e32 v22, s35, v21
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_cndmask_b32_e32 v41, 0x80000000, v3, vcc_lo
	v_lshlrev_b32_e32 v3, 2, v21
	.loc	1 168 18                        ; attention_backward.py:168:18
	s_and_b32 vcc_lo, s74, s3
	.loc	1 167 13                        ; attention_backward.py:167:13
	v_add_nc_u32_e32 v21, s35, v23
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_cndmask_b32_e32 v42, 0x80000000, v20, vcc_lo
	v_lshlrev_b32_e32 v20, 2, v23
	.loc	1 168 18                        ; attention_backward.py:168:18
	s_and_b32 vcc_lo, s61, s3
	.loc	1 167 13                        ; attention_backward.py:167:13
	v_add_nc_u32_e32 v23, s35, v22
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_cndmask_b32_e32 v43, 0x80000000, v3, vcc_lo
	v_lshlrev_b32_e32 v3, 2, v22
	.loc	1 168 18                        ; attention_backward.py:168:18
	s_and_b32 vcc_lo, s73, s3
	.loc	1 167 13                        ; attention_backward.py:167:13
	v_add_nc_u32_e32 v22, s35, v21
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_cndmask_b32_e32 v44, 0x80000000, v20, vcc_lo
	v_lshlrev_b32_e32 v20, 2, v21
	.loc	1 168 18                        ; attention_backward.py:168:18
	s_and_b32 vcc_lo, s59, s3
	.loc	1 167 13                        ; attention_backward.py:167:13
	v_add_nc_u32_e32 v21, s35, v23
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_cndmask_b32_e32 v45, 0x80000000, v3, vcc_lo
	v_lshlrev_b32_e32 v3, 2, v23
	.loc	1 168 18                        ; attention_backward.py:168:18
	s_and_b32 vcc_lo, s72, s3
	.loc	1 167 13                        ; attention_backward.py:167:13
	v_add_nc_u32_e32 v23, s35, v22
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_cndmask_b32_e32 v46, 0x80000000, v20, vcc_lo
	v_lshlrev_b32_e32 v20, 2, v22
	.loc	1 168 18                        ; attention_backward.py:168:18
	s_and_b32 vcc_lo, s56, s3
	.loc	1 167 13                        ; attention_backward.py:167:13
	v_add_nc_u32_e32 v22, s35, v21
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_cndmask_b32_e32 v47, 0x80000000, v3, vcc_lo
	v_lshlrev_b32_e32 v3, 2, v21
	.loc	1 168 18                        ; attention_backward.py:168:18
	s_and_b32 vcc_lo, s71, s3
	.loc	1 167 13                        ; attention_backward.py:167:13
	v_add_nc_u32_e32 v21, s35, v23
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_cndmask_b32_e32 v48, 0x80000000, v20, vcc_lo
	v_lshlrev_b32_e32 v20, 2, v23
	.loc	1 168 18                        ; attention_backward.py:168:18
	s_and_b32 vcc_lo, s51, s3
	.loc	1 167 13                        ; attention_backward.py:167:13
	v_add_nc_u32_e32 v23, s35, v22
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_cndmask_b32_e32 v49, 0x80000000, v3, vcc_lo
	v_lshlrev_b32_e32 v3, 2, v22
	.loc	1 168 18                        ; attention_backward.py:168:18
	s_and_b32 vcc_lo, s69, s3
	.loc	1 167 13                        ; attention_backward.py:167:13
	v_add_nc_u32_e32 v22, s35, v21
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_cndmask_b32_e32 v50, 0x80000000, v20, vcc_lo
	v_lshlrev_b32_e32 v20, 2, v21
	.loc	1 168 18                        ; attention_backward.py:168:18
	s_and_b32 vcc_lo, s50, s3
	.loc	1 167 13                        ; attention_backward.py:167:13
	v_add_nc_u32_e32 v21, s35, v23
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_cndmask_b32_e32 v51, 0x80000000, v3, vcc_lo
	v_lshlrev_b32_e32 v3, 2, v23
	.loc	1 168 18                        ; attention_backward.py:168:18
	s_and_b32 vcc_lo, s68, s3
	.loc	1 167 13                        ; attention_backward.py:167:13
	v_add_nc_u32_e32 v23, s35, v22
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_cndmask_b32_e32 v52, 0x80000000, v20, vcc_lo
	v_lshlrev_b32_e32 v20, 2, v22
	.loc	1 168 18                        ; attention_backward.py:168:18
	s_and_b32 vcc_lo, s49, s3
	.loc	1 167 13                        ; attention_backward.py:167:13
	v_add_nc_u32_e32 v22, s35, v21
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_cndmask_b32_e32 v53, 0x80000000, v3, vcc_lo
	v_lshlrev_b32_e32 v3, 2, v21
	.loc	1 168 18                        ; attention_backward.py:168:18
	s_and_b32 vcc_lo, s66, s3
	.loc	1 167 13                        ; attention_backward.py:167:13
	v_add_nc_u32_e32 v21, s35, v23
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_cndmask_b32_e32 v54, 0x80000000, v20, vcc_lo
	v_lshlrev_b32_e32 v20, 2, v23
	.loc	1 168 18                        ; attention_backward.py:168:18
	s_and_b32 vcc_lo, s48, s3
	.loc	1 167 13                        ; attention_backward.py:167:13
	v_add_nc_u32_e32 v23, s35, v22
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_cndmask_b32_e32 v57, 0x80000000, v3, vcc_lo
	v_lshlrev_b32_e32 v3, 2, v22
	.loc	1 168 18                        ; attention_backward.py:168:18
	s_and_b32 vcc_lo, s64, s3
	.loc	1 167 13                        ; attention_backward.py:167:13
	v_add_nc_u32_e32 v22, s35, v21
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_cndmask_b32_e32 v58, 0x80000000, v20, vcc_lo
	v_lshlrev_b32_e32 v20, 2, v21
	.loc	1 168 18                        ; attention_backward.py:168:18
	s_and_b32 vcc_lo, s45, s3
	.loc	1 167 13                        ; attention_backward.py:167:13
	v_add_nc_u32_e32 v21, s35, v23
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_cndmask_b32_e32 v59, 0x80000000, v3, vcc_lo
	v_lshlrev_b32_e32 v3, 2, v23
	.loc	1 168 18                        ; attention_backward.py:168:18
	s_and_b32 vcc_lo, s62, s3
	.loc	1 167 13                        ; attention_backward.py:167:13
	v_add_nc_u32_e32 v23, s35, v22
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_cndmask_b32_e32 v60, 0x80000000, v20, vcc_lo
	v_lshlrev_b32_e32 v20, 2, v22
	.loc	1 168 18                        ; attention_backward.py:168:18
	s_and_b32 vcc_lo, s28, s3
	.loc	1 134 28                        ; attention_backward.py:134:28
	s_waitcnt vmcnt(15)
	ds_store_b8 v117, v14
	s_waitcnt vmcnt(14)
	ds_store_b8 v117, v9 offset:64
	s_waitcnt vmcnt(9)
	ds_store_b8 v117, v15 offset:512
	s_waitcnt vmcnt(8)
	ds_store_b8 v117, v17 offset:576
	ds_store_b8 v118, v10
	ds_store_b8 v118, v11 offset:64
	s_waitcnt vmcnt(7)
	ds_store_b8 v118, v18 offset:512
	s_waitcnt vmcnt(6)
	ds_store_b8 v118, v4 offset:576
	ds_store_b8 v119, v12
	ds_store_b8 v119, v13 offset:64
	s_waitcnt vmcnt(5)
	ds_store_b8 v119, v7 offset:512
	s_waitcnt vmcnt(4)
	ds_store_b8 v119, v8 offset:576
	s_waitcnt vmcnt(3)
	ds_store_b8 v120, v19
	s_waitcnt vmcnt(2)
	ds_store_b8 v120, v16 offset:64
	s_waitcnt vmcnt(1)
	ds_store_b8 v120, v5 offset:512
	s_waitcnt vmcnt(0)
	ds_store_b8 v120, v6 offset:576
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_cndmask_b32_e32 v61, 0x80000000, v3, vcc_lo
	v_lshlrev_b32_e32 v3, 2, v21
	.loc	1 168 18                        ; attention_backward.py:168:18
	s_and_b32 vcc_lo, s60, s3
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_add_lshl_u32 v21, v21, s35, 2
	v_cndmask_b32_e32 v62, 0x80000000, v20, vcc_lo
	.loc	1 168 18                        ; attention_backward.py:168:18
	s_and_b32 vcc_lo, s26, s3
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_lshlrev_b32_e32 v20, 2, v23
	v_cndmask_b32_e32 v63, 0x80000000, v3, vcc_lo
	.loc	1 168 18                        ; attention_backward.py:168:18
	s_and_b32 vcc_lo, s27, s3
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_add_lshl_u32 v22, v23, s35, 2
	v_cndmask_b32_e32 v64, 0x80000000, v21, vcc_lo
	.loc	1 168 18                        ; attention_backward.py:168:18
	s_and_b32 vcc_lo, s57, s3
	.loc	1 134 28                        ; attention_backward.py:134:28
	s_waitcnt lgkmcnt(0)
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_cndmask_b32_e32 v65, 0x80000000, v20, vcc_lo
	.loc	1 168 18                        ; attention_backward.py:168:18
	s_and_b32 vcc_lo, s58, s3
	.loc	1 134 28                        ; attention_backward.py:134:28
	s_barrier
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_cndmask_b32_e32 v66, 0x80000000, v22, vcc_lo
	s_clause 0x1f
	buffer_load_b32 v15, v35, s[36:39], 0 offen
	buffer_load_b32 v16, v36, s[36:39], 0 offen
	buffer_load_b32 v17, v37, s[36:39], 0 offen
	buffer_load_b32 v18, v39, s[36:39], 0 offen
	buffer_load_b32 v3, v41, s[36:39], 0 offen
	buffer_load_b32 v4, v43, s[36:39], 0 offen
	buffer_load_b32 v5, v45, s[36:39], 0 offen
	buffer_load_b32 v6, v47, s[36:39], 0 offen
	buffer_load_b32 v23, v49, s[36:39], 0 offen
	buffer_load_b32 v24, v51, s[36:39], 0 offen
	buffer_load_b32 v25, v53, s[36:39], 0 offen
	buffer_load_b32 v26, v57, s[36:39], 0 offen
	buffer_load_b32 v7, v59, s[36:39], 0 offen
	buffer_load_b32 v8, v61, s[36:39], 0 offen
	buffer_load_b32 v9, v63, s[36:39], 0 offen
	buffer_load_b32 v10, v64, s[36:39], 0 offen
	buffer_load_b32 v27, v1, s[36:39], 0 offen
	buffer_load_b32 v28, v2, s[36:39], 0 offen
	buffer_load_b32 v29, v38, s[36:39], 0 offen
	buffer_load_b32 v30, v40, s[36:39], 0 offen
	buffer_load_b32 v11, v42, s[36:39], 0 offen
	buffer_load_b32 v12, v44, s[36:39], 0 offen
	buffer_load_b32 v13, v46, s[36:39], 0 offen
	buffer_load_b32 v14, v48, s[36:39], 0 offen
	buffer_load_b32 v31, v50, s[36:39], 0 offen
	buffer_load_b32 v32, v52, s[36:39], 0 offen
	buffer_load_b32 v33, v54, s[36:39], 0 offen
	buffer_load_b32 v34, v58, s[36:39], 0 offen
	buffer_load_b32 v19, v60, s[36:39], 0 offen
	buffer_load_b32 v20, v62, s[36:39], 0 offen
	buffer_load_b32 v21, v65, s[36:39], 0 offen
	buffer_load_b32 v22, v66, s[36:39], 0 offen
	.loc	1 171 28                        ; attention_backward.py:171:28
	s_and_b32 s37, s43, 0xffff
	s_mov_b32 s36, s42
	s_clause 0x1f
	buffer_load_b32 v77, v35, s[36:39], 0 offen
	buffer_load_b32 v76, v36, s[36:39], 0 offen
	buffer_load_b32 v56, v37, s[36:39], 0 offen
	buffer_load_b32 v55, v39, s[36:39], 0 offen
	buffer_load_b32 v82, v49, s[36:39], 0 offen
	buffer_load_b32 v81, v51, s[36:39], 0 offen
	buffer_load_b32 v80, v53, s[36:39], 0 offen
	buffer_load_b32 v79, v57, s[36:39], 0 offen
	buffer_load_b32 v161, v1, s[36:39], 0 offen
	buffer_load_b32 v159, v2, s[36:39], 0 offen
	buffer_load_b32 v105, v38, s[36:39], 0 offen
	buffer_load_b32 v104, v40, s[36:39], 0 offen
	buffer_load_b32 v100, v50, s[36:39], 0 offen
	buffer_load_b32 v98, v52, s[36:39], 0 offen
	buffer_load_b32 v97, v54, s[36:39], 0 offen
	buffer_load_b32 v83, v58, s[36:39], 0 offen
	buffer_load_b32 v172, v41, s[36:39], 0 offen
	buffer_load_b32 v171, v43, s[36:39], 0 offen
	buffer_load_b32 v170, v45, s[36:39], 0 offen
	buffer_load_b32 v169, v47, s[36:39], 0 offen
	buffer_load_b32 v168, v59, s[36:39], 0 offen
	buffer_load_b32 v167, v61, s[36:39], 0 offen
	buffer_load_b32 v166, v63, s[36:39], 0 offen
	buffer_load_b32 v165, v64, s[36:39], 0 offen
	buffer_load_b32 v164, v42, s[36:39], 0 offen
	buffer_load_b32 v163, v44, s[36:39], 0 offen
	buffer_load_b32 v162, v46, s[36:39], 0 offen
	buffer_load_b32 v160, v48, s[36:39], 0 offen
	buffer_load_b32 v103, v60, s[36:39], 0 offen
	buffer_load_b32 v102, v62, s[36:39], 0 offen
	buffer_load_b32 v101, v65, s[36:39], 0 offen
	buffer_load_b32 v99, v66, s[36:39], 0 offen
	.loc	1 142 31                        ; attention_backward.py:142:31
	s_mov_b32 s26, s38
	s_mov_b32 s27, s39
	.loc	1 134 28                        ; attention_backward.py:134:28
	v_lshlrev_b32_e32 v36, 4, v78
.Ltmp1:
	.file	2 "<triton>/python/triton/language" "standard.py"
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_and_b32_e32 v2, 1, v0
.Ltmp2:
	.loc	1 176 24                        ; attention_backward.py:176:24
	s_waitcnt vmcnt(25)
	v_dual_mul_f32 v40, v24, v81 :: v_dual_mul_f32 v41, v25, v80
	s_waitcnt vmcnt(24)
	v_mul_f32_e32 v45, v26, v79
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp3:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_mov_b32_dpp v40, v40 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_mov_b32_dpp v41, v41 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_3)
	v_mov_b32_dpp v45, v45 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp4:
	.loc	1 176 24                        ; attention_backward.py:176:24
	s_waitcnt vmcnt(22)
	v_dual_mul_f32 v47, v28, v159 :: v_dual_mul_f32 v46, v27, v161
.Ltmp5:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_fmac_f32_e32 v40, v24, v81
.Ltmp6:
	.loc	1 176 24                        ; attention_backward.py:176:24
	s_waitcnt vmcnt(15)
	v_mul_f32_e32 v58, v3, v172
	v_mul_f32_e32 v50, v30, v104
	s_waitcnt vmcnt(12)
	v_dual_mul_f32 v60, v5, v170 :: v_dual_mul_f32 v61, v6, v169
	s_waitcnt vmcnt(11)
	v_mul_f32_e32 v62, v7, v168
.Ltmp7:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_mov_b32_dpp v58, v58 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp8:
	.loc	1 176 24                        ; attention_backward.py:176:24
	s_waitcnt vmcnt(9)
	v_mul_f32_e32 v64, v9, v166
	v_mul_f32_e32 v54, v34, v83
.Ltmp9:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_mov_b32_dpp v60, v60 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_mov_b32_dpp v62, v62 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp10:
	.loc	1 134 28                        ; attention_backward.py:134:28
	v_and_b32_e32 v75, 12, v0
.Ltmp11:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_mov_b32_dpp v64, v64 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_mov_b32_dpp v54, v54 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp12:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_fmac_f32_e32 v60, v5, v170
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_dual_fmac_f32 v62, v7, v168 :: v_dual_lshlrev_b32 v43, 1, v75
	v_fmac_f32_e32 v58, v3, v172
	v_fmac_f32_e32 v54, v34, v83
.Ltmp13:
	.loc	1 124 31                        ; attention_backward.py:124:31
	v_or_b32_e32 v35, v113, v255
.Ltmp14:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_fmac_f32_e32 v64, v9, v166
.Ltmp15:
	.loc	1 134 28                        ; attention_backward.py:134:28
	v_lshlrev_b32_e32 v42, 5, v255
	.loc	1 176 24                        ; attention_backward.py:176:24
	v_mul_f32_e32 v52, v32, v98
	v_mul_f32_e32 v63, v8, v167
	.loc	1 143 17                        ; attention_backward.py:143:17
	v_add_nc_u32_e32 v37, s47, v35
	.loc	1 124 21                        ; attention_backward.py:124:21
	v_or_b32_e32 v35, s46, v35
	.loc	1 134 28                        ; attention_backward.py:134:28
	v_or3_b32 v36, v42, v36, v43
.Ltmp16:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_mov_b32_dpp v52, v52 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_mov_b32_dpp v63, v63 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
	scratch_store_b32 off, v37, off offset:60 ; 4-byte Folded Spill
.Ltmp17:
	.loc	1 142 31                        ; attention_backward.py:142:31
	v_lshlrev_b32_e32 v37, 1, v37
	.loc	1 128 21                        ; attention_backward.py:128:21
	v_cmp_gt_i32_e64 s4, s30, v35
	.loc	1 134 28                        ; attention_backward.py:134:28
	v_add_nc_u32_e32 v38, 0, v36
	v_xad_u32 v39, v36, 16, 0
.Ltmp18:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	s_waitcnt vmcnt(8)
	v_dual_fmac_f32 v52, v32, v98 :: v_dual_mul_f32 v65, v10, v165
.Ltmp19:
	.loc	1 142 31                        ; attention_backward.py:142:31
	v_cndmask_b32_e64 v35, 0x80000000, v37, s4
	.loc	1 134 28                        ; attention_backward.py:134:28
	v_xad_u32 v37, v36, 8, 0
	v_xad_u32 v36, v36, 24, 0
	ds_load_b64 v[89:90], v38
	ds_load_b64 v[91:92], v37
	ds_load_b64 v[93:94], v39
	.loc	1 143 17                        ; attention_backward.py:143:17
	ds_load_b64 v[95:96], v36
	.loc	1 142 31                        ; attention_backward.py:142:31
	buffer_load_u16 v44, v35, s[24:27], 0 offen
	.loc	1 176 24                        ; attention_backward.py:176:24
	v_mul_f32_e32 v38, v18, v55
	v_mul_f32_e32 v36, v16, v76
	s_waitcnt vmcnt(2)
	v_dual_mul_f32 v72, v21, v101 :: v_dual_mul_f32 v69, v14, v160
.Ltmp20:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_mov_b32_dpp v50, v50 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_mov_b32_dpp v38, v38 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_mov_b32_dpp v36, v36 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp21:
	.loc	1 176 24                        ; attention_backward.py:176:24
	v_mul_f32_e32 v70, v19, v103
	s_waitcnt vmcnt(1)
	v_mul_f32_e32 v74, v22, v99
.Ltmp22:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_mov_b32_dpp v61, v61 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp23:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_fmac_f32_e32 v38, v18, v55
	v_add_f32_dpp v18, v54, v54 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_fmac_f32_e32 v36, v16, v76
	v_add_f32_dpp v16, v52, v52 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp24:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_mov_b32_dpp v65, v65 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_mov_b32_dpp v72, v72 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp25:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_dpp v18, v18, v18 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_fmac_f32_e32 v45, v26, v79
	v_add_f32_dpp v16, v16, v16 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp26:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_mov_b32_dpp v69, v69 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp27:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_fmac_f32_e32 v50, v30, v104
	v_add_f32_dpp v18, v18, v18 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp28:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_mov_b32_dpp v70, v70 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp29:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_dpp v16, v16, v16 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp30:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_lshlrev_b32_e32 v1, 6, v2
	v_mov_b32_dpp v74, v74 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_permlanex16_b32 v54, v18, -1, -1 op_sel:[1,0]
.Ltmp31:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_fmac_f32_e32 v63, v8, v167
	v_add_f32_dpp v8, v40, v40 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_fmac_f32_e32 v72, v21, v101
.Ltmp32:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_permlanex16_b32 v52, v16, -1, -1 op_sel:[1,0]
.Ltmp33:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_fmac_f32_e32 v65, v10, v165
	v_add_f32_dpp v10, v45, v45 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v8, v8, v8 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_fmac_f32_e32 v69, v14, v160
	v_add_f32_dpp v14, v50, v50 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_dual_fmac_f32 v70, v19, v103 :: v_dual_add_nc_u32 v57, 0, v1
	v_fmac_f32_e32 v74, v22, v99
	v_add_f32_dpp v8, v8, v8 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v10, v10, v10 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp34:
	.loc	1 176 24                        ; attention_backward.py:176:24
	v_mul_f32_e32 v59, v4, v171
.Ltmp35:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_dpp v14, v14, v14 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_e32 v16, v16, v52
.Ltmp36:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_permlanex16_b32 v40, v8, -1, -1 op_sel:[1,0]
.Ltmp37:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_fmac_f32_e32 v61, v6, v169
	v_add_f32_dpp v26, v65, v65 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp38:
	.loc	1 176 24                        ; attention_backward.py:176:24
	v_mul_f32_e32 v67, v12, v163
.Ltmp39:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_mov_b32_dpp v47, v47 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp40:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_e32 v8, v8, v40
	v_add_f32_dpp v22, v61, v61 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v10, v10, v10 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp41:
	.loc	1 176 24                        ; attention_backward.py:176:24
	v_mul_f32_e32 v71, v20, v102
.Ltmp42:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_mov_b32_dpp v59, v59 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp43:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_dpp v26, v26, v26 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v22, v22, v22 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v14, v14, v14 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp44:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_mov_b32_dpp v67, v67 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_permlanex16_b32 v45, v10, -1, -1 op_sel:[1,0]
.Ltmp45:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_fmac_f32_e32 v47, v28, v159
	v_add_f32_dpp v22, v22, v22 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp46:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_mov_b32_dpp v71, v71 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp47:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_dpp v26, v26, v26 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp48:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_permlanex16_b32 v50, v14, -1, -1 op_sel:[1,0]
.Ltmp49:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_fmac_f32_e32 v59, v4, v171
	v_add_f32_dpp v6, v38, v38 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v4, v36, v36 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp50:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_permlanex16_b32 v61, v22, -1, -1 op_sel:[1,0]
.Ltmp51:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_dual_fmac_f32 v67, v12, v163 :: v_dual_add_f32 v10, v10, v45
	v_add_f32_dpp v12, v47, v47 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp52:
	.loc	1 176 24                        ; attention_backward.py:176:24
	v_mul_f32_e32 v35, v15, v77
	v_mul_f32_e32 v37, v17, v56
.Ltmp53:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_permlanex16_b32 v65, v26, -1, -1 op_sel:[1,0]
.Ltmp54:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_fmac_f32_e32 v71, v20, v102
	v_add_f32_e32 v14, v14, v50
	v_add_f32_dpp v20, v59, v59 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp55:
	.loc	1 176 24                        ; attention_backward.py:176:24
	v_mul_f32_e32 v39, v23, v82
.Ltmp56:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_dpp v6, v6, v6 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp57:
	.loc	1 176 24                        ; attention_backward.py:176:24
	v_dual_mul_f32 v48, v29, v105 :: v_dual_mul_f32 v51, v31, v100
	v_mul_f32_e32 v53, v33, v97
.Ltmp58:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_dpp v4, v4, v4 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v12, v12, v12 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp59:
	.loc	1 176 24                        ; attention_backward.py:176:24
	v_mul_f32_e32 v66, v11, v164
	v_mul_f32_e32 v68, v13, v162
.Ltmp60:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_mov_b32_dpp v35, v35 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_mov_b32_dpp v37, v37 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp61:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_dpp v20, v20, v20 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp62:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_mov_b32_dpp v39, v39 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp63:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_dpp v6, v6, v6 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp64:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_mov_b32_dpp v46, v46 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_mov_b32_dpp v48, v48 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_mov_b32_dpp v51, v51 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_mov_b32_dpp v53, v53 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp65:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_dpp v4, v4, v4 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v12, v12, v12 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp66:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_mov_b32_dpp v66, v66 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_lshlrev_b32_e32 v173, 1, v78
	v_mov_b32_dpp v68, v68 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp67:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_fmac_f32_e32 v35, v15, v77
	v_fmac_f32_e32 v37, v17, v56
	v_add_f32_dpp v20, v20, v20 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_fmac_f32_e32 v39, v23, v82
.Ltmp68:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_permlanex16_b32 v38, v6, -1, -1 op_sel:[1,0]
.Ltmp69:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_dual_fmac_f32 v41, v25, v80 :: v_dual_fmac_f32 v46, v27, v161
	v_fmac_f32_e32 v48, v29, v105
.Ltmp70:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_permlanex16_b32 v36, v4, -1, -1 op_sel:[1,0]
.Ltmp71:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_fmac_f32_e32 v53, v33, v97
.Ltmp72:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_permlanex16_b32 v47, v12, -1, -1 op_sel:[1,0]
.Ltmp73:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_fmac_f32_e32 v51, v31, v100
	v_dual_fmac_f32 v66, v11, v164 :: v_dual_add_nc_u32 v49, 0, v173
	v_fmac_f32_e32 v68, v13, v162
	v_add_f32_dpp v3, v35, v35 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v5, v37, v37 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v19, v58, v58 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp74:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_permlanex16_b32 v59, v20, -1, -1 op_sel:[1,0]
.Ltmp75:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_dpp v7, v39, v39 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_e32 v6, v6, v38
	v_add_f32_dpp v9, v41, v41 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v11, v46, v46 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v13, v48, v48 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_e32 v4, v4, v36
	v_add_f32_dpp v17, v53, v53 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_e32 v12, v12, v47
	v_add_f32_dpp v15, v51, v51 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v25, v64, v64 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v27, v66, v66 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v29, v68, v68 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v34, v74, v74 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v3, v3, v3 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v5, v5, v5 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v19, v19, v19 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_e32 v18, v18, v54
	v_add_f32_dpp v24, v63, v63 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_e32 v20, v20, v59
	v_add_f32_dpp v30, v69, v69 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_e32 v26, v26, v65
	v_add_f32_dpp v32, v71, v71 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v7, v7, v7 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v9, v9, v9 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_e32 v22, v22, v61
	v_add_f32_dpp v28, v67, v67 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v11, v11, v11 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v13, v13, v13 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v15, v15, v15 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v17, v17, v17 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v21, v60, v60 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v23, v62, v62 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v24, v24, v24 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v25, v25, v25 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v27, v27, v27 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v29, v29, v29 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v30, v30, v30 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v32, v32, v32 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v34, v34, v34 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v3, v3, v3 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v5, v5, v5 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v19, v19, v19 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v28, v28, v28 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v7, v7, v7 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v9, v9, v9 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v11, v11, v11 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v13, v13, v13 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v15, v15, v15 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v17, v17, v17 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v21, v21, v21 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v23, v23, v23 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v24, v24, v24 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v25, v25, v25 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v27, v27, v27 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v29, v29, v29 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v30, v30, v30 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v32, v32, v32 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v34, v34, v34 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp76:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_permlanex16_b32 v35, v3, -1, -1 op_sel:[1,0]
	v_permlanex16_b32 v37, v5, -1, -1 op_sel:[1,0]
	v_permlanex16_b32 v58, v19, -1, -1 op_sel:[1,0]
.Ltmp77:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_dpp v28, v28, v28 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp78:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_permlanex16_b32 v39, v7, -1, -1 op_sel:[1,0]
	v_permlanex16_b32 v41, v9, -1, -1 op_sel:[1,0]
	v_permlanex16_b32 v46, v11, -1, -1 op_sel:[1,0]
	v_permlanex16_b32 v48, v13, -1, -1 op_sel:[1,0]
	v_permlanex16_b32 v51, v15, -1, -1 op_sel:[1,0]
	v_permlanex16_b32 v53, v17, -1, -1 op_sel:[1,0]
.Ltmp79:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_dpp v21, v21, v21 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v23, v23, v23 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp80:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_permlanex16_b32 v63, v24, -1, -1 op_sel:[1,0]
	v_permlanex16_b32 v64, v25, -1, -1 op_sel:[1,0]
	v_permlanex16_b32 v66, v27, -1, -1 op_sel:[1,0]
	v_permlanex16_b32 v68, v29, -1, -1 op_sel:[1,0]
	v_permlanex16_b32 v69, v30, -1, -1 op_sel:[1,0]
	v_permlanex16_b32 v71, v32, -1, -1 op_sel:[1,0]
	v_permlanex16_b32 v74, v34, -1, -1 op_sel:[1,0]
.Ltmp81:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_e32 v3, v3, v35
	v_dual_add_f32 v5, v5, v37 :: v_dual_add_f32 v24, v24, v63
.Ltmp82:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_readlane_b32 s12, v10, 31
.Ltmp83:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_e32 v19, v19, v58
.Ltmp84:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_permlanex16_b32 v67, v28, -1, -1 op_sel:[1,0]
.Ltmp85:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_dual_add_f32 v7, v7, v39 :: v_dual_add_f32 v34, v34, v74
	v_add_f32_e32 v9, v9, v41
	v_add_f32_dpp v31, v70, v70 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v33, v72, v72 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_dual_add_f32 v11, v11, v46 :: v_dual_add_f32 v32, v32, v71
.Ltmp86:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_readlane_b32 s6, v4, 31
.Ltmp87:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_e32 v13, v13, v48
.Ltmp88:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_readlane_b32 s8, v6, 31
.Ltmp89:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_e32 v15, v15, v51
.Ltmp90:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_readlane_b32 s10, v8, 31
.Ltmp91:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_e32 v17, v17, v53
.Ltmp92:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_permlanex16_b32 v60, v21, -1, -1 op_sel:[1,0]
	v_permlanex16_b32 v62, v23, -1, -1 op_sel:[1,0]
.Ltmp93:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_e32 v30, v30, v69
.Ltmp94:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_readlane_b32 s5, v3, 31
	v_readlane_b32 s7, v5, 31
	v_readlane_b32 s24, v16, 31
.Ltmp95:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_e32 v25, v25, v64
.Ltmp96:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_readlane_b32 s26, v18, 31
.Ltmp97:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_dual_add_f32 v27, v27, v66 :: v_dual_mov_b32 v10, s12
.Ltmp98:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_readlane_b32 s27, v19, 31
.Ltmp99:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_dual_add_f32 v29, v29, v68 :: v_dual_add_f32 v28, v28, v67
.Ltmp100:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_readlane_b32 s9, v7, 31
	v_readlane_b32 s11, v9, 31
.Ltmp101:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_dpp v31, v31, v31 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v33, v33, v33 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp102:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_readlane_b32 s13, v11, 31
	v_readlane_b32 s14, v12, 31
	v_readlane_b32 s16, v14, 31
	v_mov_b32_e32 v4, s6
	v_readlane_b32 s15, v13, 31
	v_mov_b32_e32 v6, s8
	v_readlane_b32 s17, v15, 31
	v_mov_b32_e32 v8, s10
	v_readlane_b32 s25, v17, 31
.Ltmp103:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_dual_add_f32 v21, v21, v60 :: v_dual_mov_b32 v12, s14
	v_dual_add_f32 v23, v23, v62 :: v_dual_mov_b32 v14, s16
.Ltmp104:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_readlane_b32 s48, v30, 31
	v_readlane_b32 s50, v32, 31
	v_readlane_b32 s56, v34, 31
	v_mov_b32_e32 v16, s24
	v_readlane_b32 s40, v25, 31
	v_dual_mov_b32 v3, s5 :: v_dual_mov_b32 v18, s26
	v_readlane_b32 s42, v27, 31
	v_dual_mov_b32 v5, s7 :: v_dual_mov_b32 v30, s27
	v_readlane_b32 s45, v29, 31
	v_mov_b32_e32 v7, s9
	v_dual_mov_b32 v9, s11 :: v_dual_mov_b32 v46, s50
.Ltmp105:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_dpp v31, v31, v31 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v33, v33, v33 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp106:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_dual_mov_b32 v11, s13 :: v_dual_mov_b32 v48, s56
	v_mov_b32_e32 v13, s15
	v_mov_b32_e32 v15, s17
	v_mov_b32_e32 v17, s25
	s_waitcnt lgkmcnt(0)
	s_barrier
	v_readlane_b32 s28, v20, 31
	v_readlane_b32 s36, v21, 31
	v_readlane_b32 s37, v22, 31
	v_readlane_b32 s38, v23, 31
	v_readlane_b32 s39, v24, 31
	v_readlane_b32 s41, v26, 31
	v_readlane_b32 s43, v28, 31
	v_mov_b32_e32 v36, s40
	v_mov_b32_e32 v38, s42
	v_mov_b32_e32 v40, s45
	ds_store_b128 v49, v[3:6]
	ds_store_b128 v49, v[7:10] offset:16
	ds_store_b128 v49, v[11:14] offset:32
	ds_store_b128 v49, v[15:18] offset:48
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[26:29], v57
	ds_load_b128 v[22:25], v57 offset:16
	ds_load_b128 v[18:21], v57 offset:32
	ds_load_b128 v[10:13], v57 offset:48
	v_permlanex16_b32 v70, v31, -1, -1 op_sel:[1,0]
	v_permlanex16_b32 v72, v33, -1, -1 op_sel:[1,0]
	v_mov_b32_e32 v32, s36
	v_dual_mov_b32 v34, s38 :: v_dual_mov_b32 v35, s39
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp107:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_e32 v31, v31, v70
	v_add_f32_e32 v33, v33, v72
.Ltmp108:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_mov_b32_e32 v37, s41
	v_mov_b32_e32 v39, s43
	v_mov_b32_e32 v41, s48
	v_readlane_b32 s49, v31, 31
	v_readlane_b32 s51, v33, 31
	v_mov_b32_e32 v31, s28
	v_mov_b32_e32 v33, s37
	s_waitcnt lgkmcnt(0)
	v_mov_b32_e32 v45, s49
	v_mov_b32_e32 v47, s51
	s_barrier
	v_mov_b32_e32 v204, v23
	v_mov_b32_e32 v206, v25
	v_mov_b32_e32 v212, v19
	v_mov_b32_e32 v200, v21
	ds_store_b128 v49, v[30:33]
	ds_store_b128 v49, v[34:37] offset:16
	ds_store_b128 v49, v[38:41] offset:32
	ds_store_b128 v49, v[45:48] offset:48
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[38:41], v57
	ds_load_b128 v[34:37], v57 offset:16
	ds_load_b128 v[30:33], v57 offset:32
	ds_load_b128 v[14:17], v57 offset:48
.Ltmp109:
	.loc	1 179 16                        ; attention_backward.py:179:16
	s_add_i32 s5, s31, 15
.Ltmp110:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_dual_mov_b32 v58, v26 :: v_dual_mov_b32 v59, v27
	v_dual_mov_b32 v60, v28 :: v_dual_mov_b32 v65, v29
	v_dual_mov_b32 v194, v11 :: v_dual_mov_b32 v203, v22
	v_mov_b32_e32 v205, v24
	v_mov_b32_e32 v211, v18
	v_mov_b32_e32 v201, v20
	v_mov_b32_e32 v193, v10
	v_dual_mov_b32 v195, v12 :: v_dual_mov_b32 v196, v13
.Ltmp111:
	.loc	1 179 15                        ; attention_backward.py:179:15
	s_ashr_i32 s6, s5, 31
.Ltmp112:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_mov_b32_dpp v58, v58 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp113:
	.loc	1 179 15                        ; attention_backward.py:179:15
	s_lshr_b32 s6, s6, 28
.Ltmp114:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_mov_b32_dpp v60, v60 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_waitcnt lgkmcnt(3)
	v_dual_mov_b32 v61, v38 :: v_dual_mov_b32 v62, v39
	s_waitcnt lgkmcnt(0)
	v_dual_mov_b32 v63, v40 :: v_dual_mov_b32 v198, v15
	v_dual_mov_b32 v64, v41 :: v_dual_mov_b32 v207, v34
	v_dual_mov_b32 v208, v35 :: v_dual_mov_b32 v209, v36
	v_dual_mov_b32 v210, v37 :: v_dual_mov_b32 v69, v30
	v_dual_mov_b32 v70, v31 :: v_dual_mov_b32 v71, v32
	v_dual_mov_b32 v72, v33 :: v_dual_mov_b32 v197, v14
	v_dual_mov_b32 v199, v16 :: v_dual_mov_b32 v192, v17
	v_mov_b32_dpp v59, v59 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v65, v65 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v61, v61 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v62, v62 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v63, v63 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v64, v64 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v203, v203 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v204, v204 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v205, v205 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v206, v206 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v207, v207 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v208, v208 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v209, v209 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v210, v210 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v211, v211 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v212, v212 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v201, v201 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v200, v200 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v69, v69 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v70, v70 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v71, v71 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v72, v72 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v193, v193 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v194, v194 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v195, v195 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v196, v196 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v197, v197 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v198, v198 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v199, v199 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v192, v192 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp115:
	.loc	1 179 15                        ; attention_backward.py:179:15
	s_add_i32 s6, s5, s6
	s_mov_b32 s28, 0
	.loc	1 123 19                        ; attention_backward.py:123:19
	s_mul_hi_u32 s5, s52, s44
	.loc	1 179 14                        ; attention_backward.py:179:14
	s_and_b32 s68, s6, -16
	.loc	1 180 9                         ; attention_backward.py:180:9
	s_bfe_u32 s6, s20, 0x10008
	s_cbranch_scc0 .LBB0_2
; %bb.1:
	.loc	1 184 17                        ; attention_backward.py:184:17
	s_add_i32 s6, s46, s22
	.loc	1 181 39                        ; attention_backward.py:181:39
	s_sub_i32 s8, s46, s21
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
	s_and_b32 s28, s7, 0x7ffffff0
	.loc	1 187 18                        ; attention_backward.py:187:18
	s_min_i32 s68, s68, s6
.LBB0_2:
	.loc	1 0 18 is_stmt 0                ; attention_backward.py:0:18
	s_clause 0x4
	s_load_b64 s[40:41], s[0:1], 0x8
	s_load_b64 s[44:45], s[0:1], 0x20
	s_load_b64 s[38:39], s[0:1], 0x30
	s_load_b32 s69, s[0:1], 0x90
	s_load_b128 s[48:51], s[0:1], 0x80
	.loc	1 188 9 is_stmt 1               ; attention_backward.py:188:9
	v_cndmask_b32_e64 v131, 0, 1, s18
	.loc	1 0 0 is_stmt 0                 ; attention_backward.py:0
	s_ashr_i32 s6, s54, 31
	.loc	1 188 9                         ; attention_backward.py:188:9
	s_and_not1_b32 vcc_lo, exec_lo, s18
	.loc	1 0 0                           ; attention_backward.py:0
	s_ashr_i32 s7, s55, 31
	.loc	1 188 9                         ; attention_backward.py:188:9
	s_cbranch_vccnz .LBB0_4
; %bb.3:
	.loc	1 0 9                           ; attention_backward.py:0:9
	s_add_i32 s8, s46, s23
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
	s_min_i32 s68, s68, s8
.LBB0_4:
	.loc	1 123 19 is_stmt 1              ; attention_backward.py:123:19
	s_mul_i32 s8, s5, s53
	s_xor_b32 s6, s6, s7
	s_sub_i32 s7, s52, s8
	s_add_i32 s8, s5, 1
	s_sub_i32 s9, s7, s53
	s_cmp_ge_u32 s7, s53
	.loc	1 124 31                        ; attention_backward.py:124:31
	v_lshrrev_b32_e32 v179, 4, v0
	.loc	1 123 19                        ; attention_backward.py:123:19
	s_cselect_b32 s5, s8, s5
	s_cselect_b32 s7, s9, s7
	s_add_i32 s8, s5, 1
	s_cmp_ge_u32 s7, s53
	.loc	1 124 31                        ; attention_backward.py:124:31
	v_or_b32_e32 v182, 4, v179
	.loc	1 123 19                        ; attention_backward.py:123:19
	s_cselect_b32 s5, s8, s5
	.loc	1 124 21                        ; attention_backward.py:124:21
	v_or_b32_e32 v3, s46, v179
	.loc	1 123 19                        ; attention_backward.py:123:19
	s_xor_b32 s5, s5, s6
	.loc	1 197 29                        ; attention_backward.py:197:29
	s_mul_i32 s14, s19, s29
	.loc	1 123 19                        ; attention_backward.py:123:19
	s_sub_i32 s13, s5, s6
	.loc	1 124 31                        ; attention_backward.py:124:31
	v_or_b32_e32 v183, 8, v179
	.loc	1 124 21 is_stmt 0              ; attention_backward.py:124:21
	v_or_b32_e32 v4, s46, v182
	.loc	1 128 21 is_stmt 1              ; attention_backward.py:128:21
	v_cmp_gt_i32_e64 s5, s30, v3
	.loc	1 129 27                        ; attention_backward.py:129:27
	v_add_nc_u32_e32 v132, s23, v3
	v_mov_b16_e32 v3.l, 0
	.loc	1 142 31                        ; attention_backward.py:142:31
	s_waitcnt vmcnt(0)
	v_mov_b16_e32 v3.h, v44.l
	.loc	1 197 29                        ; attention_backward.py:197:29
	s_add_i32 s29, s13, s14
	.loc	1 220 21                        ; attention_backward.py:220:21
	s_waitcnt lgkmcnt(0)
	s_mul_f32 s13, s48, 0x3fb8aa3b
	.loc	1 124 31                        ; attention_backward.py:124:31
	v_or_b32_e32 v184, 12, v179
	.loc	1 124 21 is_stmt 0              ; attention_backward.py:124:21
	v_or_b32_e32 v5, s46, v183
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 219 37 is_stmt 1              ; attention_backward.py:219:37
	v_dual_mul_f32 v140, s13, v3 :: v_dual_and_b32 v175, 16, v0
	.loc	1 129 27                        ; attention_backward.py:129:27
	v_add_nc_u32_e32 v133, s23, v4
	v_subrev_nc_u32_e32 v3, s21, v132
	.loc	1 124 31                        ; attention_backward.py:124:31
	v_or_b32_e32 v185, 16, v179
	.loc	1 124 21 is_stmt 0              ; attention_backward.py:124:21
	v_or_b32_e32 v6, s46, v184
	.loc	1 129 27 is_stmt 1              ; attention_backward.py:129:27
	v_add_nc_u32_e32 v134, s23, v5
	.loc	1 124 31                        ; attention_backward.py:124:31
	v_or_b32_e32 v186, 20, v179
	scratch_store_b32 off, v3, off          ; 4-byte Folded Spill
	v_subrev_nc_u32_e32 v3, s21, v133
	.loc	1 124 21 is_stmt 0              ; attention_backward.py:124:21
	v_or_b32_e32 v7, s46, v185
	.loc	1 129 27 is_stmt 1              ; attention_backward.py:129:27
	v_add_nc_u32_e32 v135, s23, v6
	.loc	1 124 31                        ; attention_backward.py:124:31
	v_or_b32_e32 v181, 24, v179
	.loc	1 124 21 is_stmt 0              ; attention_backward.py:124:21
	v_or_b32_e32 v8, s46, v186
	scratch_store_b32 off, v3, off offset:4 ; 4-byte Folded Spill
	v_subrev_nc_u32_e32 v3, s21, v134
	.loc	1 129 27 is_stmt 1              ; attention_backward.py:129:27
	v_add_nc_u32_e32 v136, s23, v7
	.loc	1 124 31                        ; attention_backward.py:124:31
	v_or_b32_e32 v180, 28, v179
	.loc	1 124 21 is_stmt 0              ; attention_backward.py:124:21
	v_or_b32_e32 v9, s46, v181
	.loc	1 129 27 is_stmt 1              ; attention_backward.py:129:27
	v_add_nc_u32_e32 v137, s23, v8
	scratch_store_b32 off, v3, off offset:8 ; 4-byte Folded Spill
	v_subrev_nc_u32_e32 v3, s21, v135
	.loc	1 124 21                        ; attention_backward.py:124:21
	v_or_b32_e32 v45, s46, v180
	.loc	1 129 27                        ; attention_backward.py:129:27
	v_add_nc_u32_e32 v138, s23, v9
	s_clause 0x2
	s_load_b64 s[36:37], s[0:1], 0x58
	s_load_b128 s[56:59], s[0:1], 0x48
	s_load_b64 s[52:53], s[0:1], 0x10
	scratch_store_b32 off, v3, off offset:12 ; 4-byte Folded Spill
	v_subrev_nc_u32_e32 v3, s21, v136
	v_add_nc_u32_e32 v139, s23, v45
	.loc	1 125 21                        ; attention_backward.py:125:21
	v_bfe_u32 v129, v0, 4, 1
	v_or_b32_e32 v141, v42, v43
	v_mul_lo_u32 v74, s69, v255
	scratch_store_b32 off, v3, off offset:16 ; 4-byte Folded Spill
	v_subrev_nc_u32_e32 v3, s21, v137
	.loc	1 246 23                        ; attention_backward.py:246:23
	s_mul_i32 s19, s19, s49
	.loc	1 247 23                        ; attention_backward.py:247:23
	s_mul_i32 s42, s54, s50
	.loc	1 124 31                        ; attention_backward.py:124:31
	v_and_b32_e32 v202, 48, v0
	.loc	1 125 21                        ; attention_backward.py:125:21
	v_or_b32_e32 v130, 2, v129
	scratch_store_b32 off, v3, off offset:20 ; 4-byte Folded Spill
	v_subrev_nc_u32_e32 v3, s21, v138
	v_or_b32_e32 v128, 4, v129
	v_or_b32_e32 v127, 6, v129
	v_or_b32_e32 v126, 8, v129
	v_or_b32_e32 v125, 10, v129
	scratch_store_b32 off, v3, off offset:24 ; 4-byte Folded Spill
	v_subrev_nc_u32_e32 v3, s21, v139
	v_or_b32_e32 v124, 12, v129
	v_or_b32_e32 v123, 14, v129
	.loc	1 128 21                        ; attention_backward.py:128:21
	v_cmp_gt_i32_e64 s6, s30, v4
	v_cmp_gt_i32_e64 s7, s30, v5
	scratch_store_b32 off, v3, off offset:28 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v3, s22, v132
	v_cmp_gt_i32_e64 s8, s30, v6
	v_cmp_gt_i32_e64 s9, s30, v7
	v_cmp_gt_i32_e64 s10, s30, v8
	v_cmp_gt_i32_e64 s11, s30, v9
	scratch_store_b32 off, v3, off offset:32 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v3, s22, v133
	v_cmp_gt_i32_e64 s12, s30, v45
	.loc	1 245 21                        ; attention_backward.py:245:21
	s_add_i32 s42, s42, s19
	v_add_nc_u32_e32 v158, s22, v139
	v_xor_b32_e32 v176, 8, v141
	scratch_store_b32 off, v3, off offset:36 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v3, s22, v134
	v_xor_b32_e32 v177, 16, v141
	v_xor_b32_e32 v178, 24, v141
	v_lshlrev_b32_e32 v122, 3, v255
	v_lshrrev_b32_e32 v151, 2, v175
	scratch_store_b32 off, v3, off offset:40 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v3, s22, v135
	v_lshrrev_b32_e32 v187, 4, v78
	v_lshlrev_b32_e32 v153, 2, v0
	v_lshrrev_b32_e32 v152, 1, v175
	v_lshlrev_b32_e32 v150, 1, v0
	scratch_store_b32 off, v3, off offset:44 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v3, s22, v136
	.loc	1 194 9                         ; attention_backward.py:194:9
	s_cmp_lt_i32 s28, s68
	.loc	1 197 28                        ; attention_backward.py:197:28
	s_mul_i32 s29, s29, s31
	.loc	1 194 9                         ; attention_backward.py:194:9
	s_cselect_b32 s50, -1, 0
	s_cmp_ge_i32 s28, s68
	scratch_store_b32 off, v3, off offset:48 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v3, s22, v137
	.loc	1 245 21                        ; attention_backward.py:245:21
	s_mul_i32 s43, s51, s46
	v_cmp_eq_u32_e32 vcc_lo, 0, v78
	scratch_store_b32 off, v3, off offset:52 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v3, s22, v138
	scratch_store_b32 off, v3, off offset:56 ; 4-byte Folded Spill
	.loc	1 194 9                         ; attention_backward.py:194:9
	s_cbranch_scc1 .LBB0_27
; %bb.5:                                ; %.lr.ph
	.loc	1 0 9 is_stmt 0                 ; attention_backward.py:0:9
	v_dual_mov_b32 v230, 0xff800000 :: v_dual_and_b32 v3, 52, v153
	.loc	1 194 9                         ; attention_backward.py:194:9
	v_mad_u64_u32 v[46:47], null, s51, v182, v[74:75]
	v_mad_u64_u32 v[47:48], null, s51, v183, v[74:75]
	v_mad_u64_u32 v[48:49], null, s51, v184, v[74:75]
	v_mad_u64_u32 v[49:50], null, s51, v185, v[74:75]
	v_and_or_b32 v6, v0, 2, v152
	v_lshl_or_b32 v3, v75, 5, v3
	v_mad_u64_u32 v[50:51], null, s51, v186, v[74:75]
	v_mad_u64_u32 v[51:52], null, s51, v181, v[74:75]
	v_mad_u64_u32 v[52:53], null, s51, v180, v[74:75]
	v_mad_u64_u32 v[53:54], null, s51, v179, v[74:75]
	v_dual_mov_b32 v232, 0xff800000 :: v_dual_and_b32 v5, 14, v0
	v_dual_mov_b32 v234, 0xff800000 :: v_dual_lshlrev_b32 v7, 2, v202
	v_or3_b32 v54, v6, v3, v106
	v_dual_mov_b32 v252, 0 :: v_dual_and_b32 v3, 60, v150
	v_cndmask_b32_e64 v6, 0x104, 0, vcc_lo
	v_dual_mov_b32 v121, v255 :: v_dual_lshlrev_b32 v2, 5, v2
	v_dual_mov_b32 v236, 0xff800000 :: v_dual_lshlrev_b32 v9, 1, v5
	v_lshl_or_b32 v5, v5, 7, v7
	s_delay_alu instid0(VALU_DEP_4)
	v_xor_b32_e32 v68, v6, v3
	v_or3_b32 v66, v151, v187, v122
	v_xor_b32_e32 v3, 48, v54
	v_mov_b32_e32 v229, 0xff800000
	v_or3_b32 v67, v5, v2, v9
	v_or_b32_e32 v1, v68, v1
	v_xor_b32_e32 v4, 0x90, v66
	v_xor_b32_e32 v8, 0x120, v66
	v_xor_b32_e32 v7, 0x1b0, v66
	v_xor_b32_e32 v2, 16, v54
	v_xor_b32_e32 v5, 32, v54
	v_xor_b32_e32 v6, 4, v67
	v_xor_b32_e32 v9, 8, v67
	v_xor_b32_e32 v42, 12, v67
	v_xor_b32_e32 v43, 16, v67
	v_xor_b32_e32 v44, 20, v67
	v_xor_b32_e32 v45, 24, v67
	v_xor_b32_e32 v107, 28, v67
	v_xor_b32_e32 v108, 0x208, v1
	v_xor_b32_e32 v109, 0x410, v1
	v_xor_b32_e32 v110, 0x618, v1
	v_dual_mov_b32 v1, 0 :: v_dual_add_nc_u32 v214, 0, v8
	v_dual_mov_b32 v251, 0xff800000 :: v_dual_add_nc_u32 v216, 0, v2
	v_dual_mov_b32 v250, 0xff800000 :: v_dual_add_nc_u32 v213, 0, v4
	v_dual_mov_b32 v248, 0xff800000 :: v_dual_add_nc_u32 v215, 0, v7
	v_dual_mov_b32 v246, 0xff800000 :: v_dual_add_nc_u32 v217, 0, v5
	v_add_nc_u32_e32 v218, 0, v3
	v_dual_mov_b32 v244, 0xff800000 :: v_dual_add_nc_u32 v219, 0, v6
	v_dual_mov_b32 v231, 0xff800000 :: v_dual_add_nc_u32 v220, 0, v9
	v_dual_mov_b32 v242, 0xff800000 :: v_dual_add_nc_u32 v221, 0, v42
	v_dual_mov_b32 v233, 0xff800000 :: v_dual_add_nc_u32 v222, 0, v43
	v_dual_mov_b32 v240, 0xff800000 :: v_dual_add_nc_u32 v223, 0, v44
	v_dual_mov_b32 v235, 0xff800000 :: v_dual_add_nc_u32 v224, 0, v45
	v_dual_mov_b32 v238, 0xff800000 :: v_dual_add_nc_u32 v225, 0, v107
	v_dual_mov_b32 v249, 0 :: v_dual_add_nc_u32 v226, 0, v108
	v_add_nc_u32_e32 v227, 0, v109
	v_dual_mov_b32 v247, 0 :: v_dual_add_nc_u32 v228, 0, v110
	v_mov_b32_e32 v245, 0
	v_mov_b32_e32 v243, 0
	v_mov_b32_e32 v241, 0
	v_mov_b32_e32 v239, 0
	v_mov_b32_e32 v237, 0
	s_mov_b32 s63, 0x31027000
	s_mov_b32 s62, 0x7ffffffe
	s_and_b32 s61, s41, 0xffff
	s_mov_b32 s60, s40
	s_and_b32 s65, s45, 0xffff
	s_mov_b32 s64, s44
	s_add_i32 s49, s42, s43
	s_mov_b32 s66, s62
	s_mov_b32 s67, s63
	s_mov_b32 s54, s28
	s_branch .LBB0_7
.LBB0_6:                                ;   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 9                           ; attention_backward.py:0:9
	s_or_b32 exec_lo, exec_lo, s14
	.loc	1 223 21 is_stmt 1              ; attention_backward.py:223:21
	v_cvt_f32_i32_e32 v107, v2
	.loc	1 252 30                        ; attention_backward.py:252:30
	v_and_b16 v2.l, 0xff, v45.h
	.loc	1 223 21                        ; attention_backward.py:223:21
	v_cvt_f32_i32_e32 v108, v3
	.loc	1 252 21                        ; attention_backward.py:252:21
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 223 21                        ; attention_backward.py:223:21
	v_cvt_f32_i32_e32 v109, v4
	.loc	1 252 30                        ; attention_backward.py:252:30
	v_cmp_ne_u16_e32 vcc_lo, 0, v2.l
	v_and_b16 v2.l, 0xff, v45.l
	.loc	1 223 21                        ; attention_backward.py:223:21
	v_cvt_f32_i32_e32 v110, v5
	v_mul_f32_e32 v5, v140, v107
	v_cvt_f32_i32_e32 v9, v9
	.loc	1 252 21                        ; attention_backward.py:252:21
	s_and_b32 s15, s76, vcc_lo
	.loc	1 252 30 is_stmt 0              ; attention_backward.py:252:30
	v_cmp_ne_u16_e64 s13, 0, v2.l
	v_and_b16 v2.l, 0xff, v42.l
	v_mov_b16_e32 v42.l, 0
	.loc	1 223 21 is_stmt 1              ; attention_backward.py:223:21
	v_cvt_f32_i32_e32 v7, v7
	v_cvt_f32_i32_e32 v8, v8
	.loc	1 252 21                        ; attention_backward.py:252:21
	s_and_b32 s19, s74, s13
	.loc	1 252 30 is_stmt 0              ; attention_backward.py:252:30
	v_cmp_ne_u16_e64 s16, 0, v2.l
	s_waitcnt vmcnt(0)
	v_and_b16 v2.l, 0xff, v44.h
	.loc	1 252 21                        ; attention_backward.py:252:21
	v_cndmask_b32_e64 v3, 0, 1, s19
	.loc	1 223 21 is_stmt 1              ; attention_backward.py:223:21
	v_mul_f32_e32 v9, v140, v9
	v_cvt_f32_i32_e32 v6, v6
	.loc	1 252 21                        ; attention_backward.py:252:21
	s_and_b32 s18, s73, s16
	.loc	1 252 30 is_stmt 0              ; attention_backward.py:252:30
	v_cmp_ne_u16_e64 s14, 0, v2.l
	.loc	1 252 21                        ; attention_backward.py:252:21
	v_cndmask_b32_e64 v2, 0, 1, s15
	.loc	1 214 33 is_stmt 1              ; attention_backward.py:214:33
	v_mov_b16_e64 v45.h, v189.l
	v_mov_b16_e32 v45.l, v42.l
	v_mov_b16_e32 v107.l, v42.l
	.loc	1 252 21                        ; attention_backward.py:252:21
	s_and_b32 s14, s75, s14
	v_lshlrev_b16 v2.l, 8, v2.l
	.loc	1 214 33                        ; attention_backward.py:214:33
	v_mov_b16_e64 v111.h, v255.l
	v_mov_b16_e32 v111.l, v42.l
	v_mov_b16_e32 v112.l, v42.l
	.loc	1 223 21                        ; attention_backward.py:223:21
	v_mul_f32_e32 v7, v140, v7
	.loc	1 252 21                        ; attention_backward.py:252:21
	v_or_b16 v2.l, v3.l, v2.l
	v_cndmask_b32_e64 v3, 0, 1, s14
	.loc	1 214 33                        ; attention_backward.py:214:33
	v_mov_b16_e64 v107.h, v188.l
	.loc	1 223 21                        ; attention_backward.py:223:21
	v_mul_f32_e32 v6, v140, v6
	.loc	1 214 33                        ; attention_backward.py:214:33
	v_mov_b16_e64 v112.h, v254.l
	.loc	1 223 21                        ; attention_backward.py:223:21
	v_mul_f32_e32 v108, v140, v108
	.loc	1 252 21                        ; attention_backward.py:252:21
	v_lshlrev_b16 v2.h, 8, v3.l
	v_cndmask_b32_e64 v3, 0, 1, s18
	.loc	1 194 9                         ; attention_backward.py:194:9
	s_add_i32 s54, s54, 16
	.loc	1 252 21                        ; attention_backward.py:252:21
	s_delay_alu instid0(VALU_DEP_1)
	v_or_b16 v2.h, v3.l, v2.h
	v_add_nc_u32_e32 v3, 0, v66
	ds_store_b16 v3, v2
	.loc	1 252 30 is_stmt 0              ; attention_backward.py:252:30
	v_and_b16 v2.l, 0xff, v43.l
	.loc	1 223 21 is_stmt 1              ; attention_backward.py:223:21
	v_mul_f32_e32 v7, v7, v111
	v_mul_f32_e32 v6, v6, v107
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	.loc	1 252 30                        ; attention_backward.py:252:30
	v_cmp_ne_u16_e32 vcc_lo, 0, v2.l
	v_and_b16 v2.l, 0xff, v42.h
	.loc	1 214 33                        ; attention_backward.py:214:33
	v_mov_b16_e64 v42.h, v174.l
	.loc	1 252 21                        ; attention_backward.py:252:21
	s_and_b32 s17, s71, vcc_lo
	.loc	1 252 30 is_stmt 0              ; attention_backward.py:252:30
	v_cmp_ne_u16_e64 s16, 0, v2.l
	v_and_b16 v2.l, 0xff, v44.l
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 223 21 is_stmt 1              ; attention_backward.py:223:21
	v_dual_mul_f32 v5, v5, v42 :: v_dual_add_nc_u32 v44, 0, v67
	.loc	1 214 33                        ; attention_backward.py:214:33
	v_mov_b16_e64 v42.h, v253.l
	.loc	1 252 21                        ; attention_backward.py:252:21
	s_and_b32 s16, s55, s16
	.loc	1 252 30 is_stmt 0              ; attention_backward.py:252:30
	v_cmp_ne_u16_e64 s13, 0, v2.l
	v_and_b16 v2.l, 0xff, v43.h
	.loc	1 252 21                        ; attention_backward.py:252:21
	v_cndmask_b32_e64 v4, 0, 1, s16
	.loc	1 223 21 is_stmt 1              ; attention_backward.py:223:21
	v_dual_mul_f32 v8, v140, v8 :: v_dual_mul_f32 v9, v9, v42
	.loc	1 252 21                        ; attention_backward.py:252:21
	s_and_b32 s13, s72, s13
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 252 30 is_stmt 0              ; attention_backward.py:252:30
	v_cmp_ne_u16_e64 s20, 0, v2.l
	.loc	1 252 21                        ; attention_backward.py:252:21
	v_cndmask_b32_e64 v3, 0, 1, s13
	.loc	1 223 21 is_stmt 1              ; attention_backward.py:223:21
	v_mul_f32_e32 v8, v8, v112
	.loc	1 252 21                        ; attention_backward.py:252:21
	s_and_b32 vcc_lo, s70, s20
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_mov_b16_e32 v2.l, v3.l
	v_cndmask_b32_e64 v3, 0, 1, s17
	.loc	1 194 9                         ; attention_backward.py:194:9
	s_cmp_lt_i32 s54, s68
	.loc	1 252 21                        ; attention_backward.py:252:21
	v_lshlrev_b16 v2.l, 8, v2.l
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_or_b16 v2.l, v3.l, v2.l
	v_cndmask_b32_e64 v3, 0, 1, vcc_lo
	v_lshlrev_b16 v3.l, 8, v3.l
	s_delay_alu instid0(VALU_DEP_1)
	v_or_b16 v3.l, v4.l, v3.l
	ds_store_b16_d16_hi v213, v2
	ds_store_b16 v214, v2
	ds_store_b16 v215, v3
	v_add_nc_u32_e32 v3, 0, v54
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_u8_d16 v2, v3
	s_waitcnt lgkmcnt(0)
	ds_load_u8_d16_hi v2, v3 offset:64
	ds_load_u8_d16 v3, v216
	s_waitcnt lgkmcnt(0)
	ds_load_u8_d16_hi v3, v218 offset:64
	ds_load_u8_d16 v4, v217 offset:64
	s_waitcnt lgkmcnt(0)
	ds_load_u8_d16_hi v4, v216 offset:64
	v_and_b16 v2.l, 1, v2.l
	v_and_b16 v3.l, 1, v3.l
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_cmp_eq_u16_e64 s20, 1, v2.l
	.loc	1 257 22                        ; attention_backward.py:257:22
	v_cndmask_b32_e64 v43, 0xff800000, v5, s20
	.loc	1 252 21                        ; attention_backward.py:252:21
	ds_load_u8_d16 v2, v217
	ds_load_u8_d16 v5, v218
	.loc	1 257 22                        ; attention_backward.py:257:22
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 252 21                        ; attention_backward.py:252:21
	v_cmp_eq_u16_e64 s20, 1, v3.l
	.loc	1 257 22                        ; attention_backward.py:257:22
	ds_store_b32 v44, v43
	.loc	1 214 33                        ; attention_backward.py:214:33
	v_mov_b16_e64 v43.h, v191.l
	v_mov_b16_e32 v43.l, v42.l
	v_mov_b16_e64 v44.h, v190.l
	v_mov_b16_e32 v44.l, v42.l
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 223 21                        ; attention_backward.py:223:21
	v_mul_f32_e32 v43, v108, v43
	v_mul_f32_e32 v108, v140, v109
	.loc	1 257 22                        ; attention_backward.py:257:22
	v_cndmask_b32_e64 v42, 0xff800000, v43, s20
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 223 21                        ; attention_backward.py:223:21
	v_mul_f32_e32 v44, v108, v44
	v_mul_f32_e32 v108, v140, v110
	.loc	1 252 21                        ; attention_backward.py:252:21
	v_and_b16 v2.l, 1, v2.l
	.loc	1 257 22                        ; attention_backward.py:257:22
	ds_store_b32 v219, v42
	.loc	1 223 21                        ; attention_backward.py:223:21
	v_mul_f32_e32 v45, v108, v45
	.loc	1 252 21                        ; attention_backward.py:252:21
	v_cmp_eq_u16_e64 s20, 1, v2.l
	v_and_b16 v2.l, 1, v5.l
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 257 22                        ; attention_backward.py:257:22
	v_cndmask_b32_e64 v42, 0xff800000, v44, s20
	.loc	1 252 21                        ; attention_backward.py:252:21
	v_cmp_eq_u16_e64 s20, 1, v2.l
	v_and_b16 v2.l, 1, v2.h
	.loc	1 257 22                        ; attention_backward.py:257:22
	ds_store_b32 v220, v42
	v_cndmask_b32_e64 v5, 0xff800000, v45, s20
	.loc	1 252 21                        ; attention_backward.py:252:21
	v_cmp_eq_u16_e64 s20, 1, v2.l
	.loc	1 257 22                        ; attention_backward.py:257:22
	ds_store_b32 v221, v5
	v_cndmask_b32_e64 v2, 0xff800000, v6, s20
	ds_store_b32 v222, v2
	.loc	1 252 21                        ; attention_backward.py:252:21
	v_and_b16 v2.l, 1, v4.h
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_cmp_eq_u16_e64 s20, 1, v2.l
	.loc	1 257 22                        ; attention_backward.py:257:22
	v_cndmask_b32_e64 v2, 0xff800000, v7, s20
	ds_store_b32 v223, v2
	.loc	1 252 21                        ; attention_backward.py:252:21
	v_and_b16 v2.l, 1, v4.l
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_cmp_eq_u16_e64 s20, 1, v2.l
	.loc	1 257 22                        ; attention_backward.py:257:22
	v_cndmask_b32_e64 v2, 0xff800000, v8, s20
	ds_store_b32 v224, v2
	.loc	1 252 21                        ; attention_backward.py:252:21
	v_and_b16 v2.l, 1, v3.h
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_cmp_eq_u16_e64 s20, 1, v2.l
	.loc	1 257 22                        ; attention_backward.py:257:22
	v_cndmask_b32_e64 v2, 0xff800000, v9, s20
	ds_store_b32 v225, v2
	v_add_nc_u32_e32 v2, v57, v68
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_2addr_b32 v[142:143], v226 offset1:32
	ds_load_2addr_b32 v[144:145], v227 offset1:32
	ds_load_2addr_b32 v[2:3], v2 offset1:32
	ds_load_2addr_b32 v[146:147], v228 offset1:32
.Ltmp116:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention_backward.py:258:25 ]
	s_waitcnt lgkmcnt(1)
	v_mov_b32_e32 v4, v2
.Ltmp117:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention_backward.py:258:25 ] ]
	v_max_f32_e32 v5, v2, v2
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp118:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention_backward.py:258:25 ]
	v_mov_b32_dpp v4, v4 row_xmask:8 row_mask:0xf bank_mask:0xf
.Ltmp119:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention_backward.py:258:25 ] ]
	v_max_f32_e32 v4, v4, v4
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_max_f32_e32 v4, v5, v4
.Ltmp120:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention_backward.py:258:25 ]
	v_mov_b32_e32 v5, v4
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v5, v5 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp121:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention_backward.py:258:25 ] ]
	v_max_f32_e32 v5, v5, v5
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_max_f32_e32 v4, v4, v5
.Ltmp122:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention_backward.py:258:25 ]
	v_mov_b32_e32 v5, v4
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v5, v5 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp123:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention_backward.py:258:25 ] ]
	v_max_f32_e32 v5, v5, v5
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_max_f32_e32 v4, v4, v5
.Ltmp124:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention_backward.py:258:25 ]
	v_mov_b32_e32 v5, v4
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v5, v5 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp125:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention_backward.py:258:25 ] ]
	v_max_f32_e32 v5, v5, v5
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_max_f32_e32 v4, v4, v5
.Ltmp126:
	.loc	1 259 20                        ; attention_backward.py:259:20
	v_max_f32_e32 v5, v229, v229
	v_max_f32_e32 v229, v5, v4
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 261 58                        ; attention_backward.py:261:58
	v_sub_f32_e32 v2, v2, v229
	.loc	1 261 45 is_stmt 0              ; attention_backward.py:261:45
	v_exp_f32_e32 v2, v2
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 261 29                        ; attention_backward.py:261:29
	v_cndmask_b32_e64 v2, 0, v2, s19
	.loc	1 260 21 is_stmt 1              ; attention_backward.py:260:21
	v_cmp_neq_f32_e64 s19, 0xff800000, v251
.Ltmp127:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:262:33 ]
	v_mov_b32_e32 v5, v2
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v5, v5 row_xmask:8 row_mask:0xf bank_mask:0xf
.Ltmp128:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:262:33 ] ]
	v_add_f32_e32 v2, v2, v5
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp129:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:262:33 ]
	v_mov_b32_e32 v5, v2
	v_mov_b32_dpp v5, v5 row_xmask:4 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp130:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:262:33 ] ]
	v_add_f32_e32 v2, v2, v5
.Ltmp131:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:262:33 ]
	v_mov_b32_e32 v5, v2
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v5, v5 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp132:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:262:33 ] ]
	v_dual_add_f32 v2, v2, v5 :: v_dual_max_f32 v5, v251, v251
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp133:
	.loc	1 259 20                        ; attention_backward.py:259:20
	v_max_f32_e32 v6, v5, v4
.Ltmp134:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:262:33 ]
	v_mov_b32_e32 v4, v2
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v4, v4 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp135:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:262:33 ] ]
	v_dual_add_f32 v5, v2, v4 :: v_dual_sub_f32 v2, v251, v6
.Ltmp136:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention_backward.py:258:25 ] ]
	v_max_f32_e32 v4, v142, v142
	v_mov_b32_e32 v251, v6
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_1)
.Ltmp137:
	.loc	1 260 57                        ; attention_backward.py:260:57
	v_exp_f32_e32 v2, v2
	.loc	1 260 21 is_stmt 0              ; attention_backward.py:260:21
	v_cndmask_b32_e64 v2, 0, v2, s19
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 262 19 is_stmt 1              ; attention_backward.py:262:19
	v_dual_fmac_f32 v5, v252, v2 :: v_dual_mov_b32 v2, v142
.Ltmp138:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention_backward.py:258:25 ]
	v_mov_b32_dpp v2, v2 row_xmask:8 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp139:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention_backward.py:258:25 ] ]
	v_max_f32_e32 v2, v2, v2
	v_max_f32_e32 v2, v4, v2
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
.Ltmp140:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention_backward.py:258:25 ]
	v_mov_b32_e32 v4, v2
	v_mov_b32_e32 v252, v5
	v_mov_b32_dpp v4, v4 row_xmask:4 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp141:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention_backward.py:258:25 ] ]
	v_max_f32_e32 v4, v4, v4
	v_max_f32_e32 v2, v2, v4
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp142:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention_backward.py:258:25 ]
	v_mov_b32_e32 v4, v2
	v_mov_b32_dpp v4, v4 row_xmask:2 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp143:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention_backward.py:258:25 ] ]
	v_max_f32_e32 v4, v4, v4
	v_max_f32_e32 v2, v2, v4
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp144:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention_backward.py:258:25 ]
	v_mov_b32_e32 v4, v2
	v_mov_b32_dpp v4, v4 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp145:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention_backward.py:258:25 ] ]
	v_max_f32_e32 v4, v4, v4
	v_max_f32_e32 v2, v2, v4
.Ltmp146:
	.loc	1 259 20                        ; attention_backward.py:259:20
	v_max_f32_e32 v4, v230, v230
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_max_f32_e32 v230, v4, v2
	.loc	1 261 58                        ; attention_backward.py:261:58
	v_sub_f32_e32 v4, v142, v230
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 261 45 is_stmt 0              ; attention_backward.py:261:45
	v_exp_f32_e32 v4, v4
	.loc	1 261 29                        ; attention_backward.py:261:29
	v_cndmask_b32_e64 v4, 0, v4, s18
	.loc	1 260 21 is_stmt 1              ; attention_backward.py:260:21
	v_cmp_neq_f32_e64 s18, 0xff800000, v250
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp147:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:262:33 ]
	v_mov_b32_e32 v7, v4
	v_mov_b32_dpp v7, v7 row_xmask:8 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp148:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:262:33 ] ]
	v_add_f32_e32 v4, v4, v7
.Ltmp149:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:262:33 ]
	v_mov_b32_e32 v7, v4
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v7, v7 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp150:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:262:33 ] ]
	v_add_f32_e32 v4, v4, v7
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp151:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:262:33 ]
	v_mov_b32_e32 v7, v4
	v_mov_b32_dpp v7, v7 row_xmask:2 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp152:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:262:33 ] ]
	v_dual_add_f32 v4, v4, v7 :: v_dual_max_f32 v7, v250, v250
.Ltmp153:
	.loc	1 259 20                        ; attention_backward.py:259:20
	v_max_f32_e32 v8, v7, v2
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp154:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:262:33 ]
	v_mov_b32_e32 v2, v4
	v_mov_b32_dpp v2, v2 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
.Ltmp155:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:262:33 ] ]
	v_dual_add_f32 v7, v4, v2 :: v_dual_sub_f32 v2, v250, v8
.Ltmp156:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention_backward.py:258:25 ] ]
	v_max_f32_e32 v4, v144, v144
.Ltmp157:
	.loc	1 260 57                        ; attention_backward.py:260:57
	v_exp_f32_e32 v2, v2
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 260 21 is_stmt 0              ; attention_backward.py:260:21
	v_cndmask_b32_e64 v2, 0, v2, s18
	.loc	1 262 19 is_stmt 1              ; attention_backward.py:262:19
	v_dual_fmac_f32 v7, v249, v2 :: v_dual_mov_b32 v2, v144
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_mov_b32_e32 v249, v7
.Ltmp158:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention_backward.py:258:25 ]
	v_mov_b32_dpp v2, v2 row_xmask:8 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp159:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention_backward.py:258:25 ] ]
	v_max_f32_e32 v2, v2, v2
	v_max_f32_e32 v2, v4, v2
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp160:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention_backward.py:258:25 ]
	v_mov_b32_e32 v4, v2
	v_mov_b32_dpp v4, v4 row_xmask:4 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp161:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention_backward.py:258:25 ] ]
	v_max_f32_e32 v4, v4, v4
	v_max_f32_e32 v2, v2, v4
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp162:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention_backward.py:258:25 ]
	v_mov_b32_e32 v4, v2
	v_mov_b32_dpp v4, v4 row_xmask:2 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp163:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention_backward.py:258:25 ] ]
	v_max_f32_e32 v4, v4, v4
	v_max_f32_e32 v2, v2, v4
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp164:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention_backward.py:258:25 ]
	v_mov_b32_e32 v4, v2
	v_mov_b32_dpp v4, v4 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp165:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention_backward.py:258:25 ] ]
	v_max_f32_e32 v4, v4, v4
	v_max_f32_e32 v2, v2, v4
.Ltmp166:
	.loc	1 259 20                        ; attention_backward.py:259:20
	v_max_f32_e32 v4, v231, v231
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_max_f32_e32 v231, v4, v2
	.loc	1 261 58                        ; attention_backward.py:261:58
	v_sub_f32_e32 v4, v144, v231
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 261 45 is_stmt 0              ; attention_backward.py:261:45
	v_exp_f32_e32 v4, v4
	.loc	1 261 29                        ; attention_backward.py:261:29
	v_cndmask_b32_e64 v4, 0, v4, s17
	.loc	1 260 21 is_stmt 1              ; attention_backward.py:260:21
	v_cmp_neq_f32_e64 s17, 0xff800000, v248
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp167:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:262:33 ]
	v_mov_b32_e32 v9, v4
	v_mov_b32_dpp v9, v9 row_xmask:8 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp168:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:262:33 ] ]
	v_add_f32_e32 v4, v4, v9
.Ltmp169:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:262:33 ]
	v_mov_b32_e32 v9, v4
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v9, v9 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp170:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:262:33 ] ]
	v_add_f32_e32 v4, v4, v9
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
.Ltmp171:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:262:33 ]
	v_mov_b32_e32 v9, v4
	v_mov_b32_e32 v250, v8
	v_mov_b32_dpp v9, v9 row_xmask:2 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
.Ltmp172:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:262:33 ] ]
	v_add_f32_e32 v4, v4, v9
.Ltmp173:
	.loc	1 259 20                        ; attention_backward.py:259:20
	v_max_f32_e32 v9, v248, v248
	v_max_f32_e32 v42, v9, v2
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp174:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:262:33 ]
	v_mov_b32_e32 v2, v4
	v_mov_b32_dpp v2, v2 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp175:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:262:33 ] ]
	v_add_f32_e32 v9, v4, v2
.Ltmp176:
	.loc	1 260 70                        ; attention_backward.py:260:70
	v_sub_f32_e32 v2, v248, v42
.Ltmp177:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention_backward.py:258:25 ] ]
	s_waitcnt lgkmcnt(0)
	v_max_f32_e32 v4, v146, v146
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
.Ltmp178:
	.loc	1 260 57                        ; attention_backward.py:260:57
	v_exp_f32_e32 v2, v2
	.loc	1 260 21 is_stmt 0              ; attention_backward.py:260:21
	v_cndmask_b32_e64 v2, 0, v2, s17
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 262 19 is_stmt 1              ; attention_backward.py:262:19
	v_dual_fmac_f32 v9, v247, v2 :: v_dual_mov_b32 v2, v146
	v_mov_b32_e32 v247, v9
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp179:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention_backward.py:258:25 ]
	v_mov_b32_dpp v2, v2 row_xmask:8 row_mask:0xf bank_mask:0xf
.Ltmp180:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention_backward.py:258:25 ] ]
	v_max_f32_e32 v2, v2, v2
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_max_f32_e32 v2, v4, v2
.Ltmp181:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention_backward.py:258:25 ]
	v_mov_b32_e32 v4, v2
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v4, v4 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp182:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention_backward.py:258:25 ] ]
	v_max_f32_e32 v4, v4, v4
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_max_f32_e32 v2, v2, v4
.Ltmp183:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention_backward.py:258:25 ]
	v_mov_b32_e32 v4, v2
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v4, v4 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp184:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention_backward.py:258:25 ] ]
	v_max_f32_e32 v4, v4, v4
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_max_f32_e32 v2, v2, v4
.Ltmp185:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention_backward.py:258:25 ]
	v_mov_b32_e32 v4, v2
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v4, v4 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp186:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention_backward.py:258:25 ] ]
	v_max_f32_e32 v4, v4, v4
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_max_f32_e32 v2, v2, v4
.Ltmp187:
	.loc	1 259 20                        ; attention_backward.py:259:20
	v_max_f32_e32 v4, v232, v232
	v_max_f32_e32 v232, v4, v2
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 261 58                        ; attention_backward.py:261:58
	v_sub_f32_e32 v4, v146, v232
	.loc	1 261 45 is_stmt 0              ; attention_backward.py:261:45
	v_exp_f32_e32 v4, v4
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 261 29                        ; attention_backward.py:261:29
	v_cndmask_b32_e64 v4, 0, v4, s16
	.loc	1 260 21 is_stmt 1              ; attention_backward.py:260:21
	v_cmp_neq_f32_e64 s16, 0xff800000, v246
.Ltmp188:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:262:33 ]
	v_mov_b32_e32 v43, v4
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v43, v43 row_xmask:8 row_mask:0xf bank_mask:0xf
.Ltmp189:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:262:33 ] ]
	v_add_f32_e32 v4, v4, v43
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp190:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:262:33 ]
	v_mov_b32_e32 v43, v4
	v_mov_b32_dpp v43, v43 row_xmask:4 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp191:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:262:33 ] ]
	v_add_f32_e32 v4, v4, v43
.Ltmp192:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:262:33 ]
	v_mov_b32_e32 v43, v4
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v43, v43 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp193:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:262:33 ] ]
	v_dual_add_f32 v4, v4, v43 :: v_dual_max_f32 v43, v246, v246
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp194:
	.loc	1 259 20                        ; attention_backward.py:259:20
	v_max_f32_e32 v44, v43, v2
.Ltmp195:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:262:33 ]
	v_mov_b32_e32 v2, v4
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v2, v2 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp196:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:262:33 ] ]
	v_dual_add_f32 v43, v4, v2 :: v_dual_sub_f32 v2, v246, v44
.Ltmp197:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention_backward.py:258:25 ] ]
	v_max_f32_e32 v4, v3, v3
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
.Ltmp198:
	.loc	1 260 57                        ; attention_backward.py:260:57
	v_exp_f32_e32 v2, v2
	.loc	1 260 21 is_stmt 0              ; attention_backward.py:260:21
	v_cndmask_b32_e64 v2, 0, v2, s16
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 262 19 is_stmt 1              ; attention_backward.py:262:19
	v_dual_fmac_f32 v43, v245, v2 :: v_dual_mov_b32 v2, v3
	v_mov_b32_e32 v245, v43
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp199:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention_backward.py:258:25 ]
	v_mov_b32_dpp v2, v2 row_xmask:8 row_mask:0xf bank_mask:0xf
.Ltmp200:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention_backward.py:258:25 ] ]
	v_max_f32_e32 v2, v2, v2
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_max_f32_e32 v2, v4, v2
.Ltmp201:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention_backward.py:258:25 ]
	v_mov_b32_e32 v4, v2
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v4, v4 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp202:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention_backward.py:258:25 ] ]
	v_max_f32_e32 v4, v4, v4
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_max_f32_e32 v2, v2, v4
.Ltmp203:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention_backward.py:258:25 ]
	v_mov_b32_e32 v4, v2
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v4, v4 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp204:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention_backward.py:258:25 ] ]
	v_max_f32_e32 v4, v4, v4
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_max_f32_e32 v2, v2, v4
.Ltmp205:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention_backward.py:258:25 ]
	v_mov_b32_e32 v4, v2
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v4, v4 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp206:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention_backward.py:258:25 ] ]
	v_max_f32_e32 v4, v4, v4
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_max_f32_e32 v2, v2, v4
.Ltmp207:
	.loc	1 259 20                        ; attention_backward.py:259:20
	v_max_f32_e32 v4, v233, v233
	v_max_f32_e32 v233, v4, v2
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 261 58                        ; attention_backward.py:261:58
	v_sub_f32_e32 v3, v3, v233
	.loc	1 261 45 is_stmt 0              ; attention_backward.py:261:45
	v_exp_f32_e32 v3, v3
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 261 29                        ; attention_backward.py:261:29
	v_cndmask_b32_e64 v3, 0, v3, s15
	.loc	1 260 21 is_stmt 1              ; attention_backward.py:260:21
	v_cmp_neq_f32_e64 s15, 0xff800000, v244
.Ltmp208:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:262:33 ]
	v_mov_b32_e32 v4, v3
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v4, v4 row_xmask:8 row_mask:0xf bank_mask:0xf
.Ltmp209:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:262:33 ] ]
	v_add_f32_e32 v3, v3, v4
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp210:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:262:33 ]
	v_mov_b32_e32 v4, v3
	v_mov_b32_dpp v4, v4 row_xmask:4 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp211:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:262:33 ] ]
	v_add_f32_e32 v3, v3, v4
.Ltmp212:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:262:33 ]
	v_mov_b32_e32 v4, v3
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v4, v4 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp213:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:262:33 ] ]
	v_add_f32_e32 v3, v3, v4
.Ltmp214:
	.loc	1 259 20                        ; attention_backward.py:259:20
	v_max_f32_e32 v4, v244, v244
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_max_f32_e32 v174, v4, v2
.Ltmp215:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:262:33 ]
	v_mov_b32_e32 v2, v3
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v2, v2 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp216:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:262:33 ] ]
	v_add_f32_e32 v45, v3, v2
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp217:
	.loc	1 260 70                        ; attention_backward.py:260:70
	v_dual_sub_f32 v2, v244, v174 :: v_dual_max_f32 v3, v143, v143
	.loc	1 260 57 is_stmt 0              ; attention_backward.py:260:57
	v_exp_f32_e32 v2, v2
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 260 21                        ; attention_backward.py:260:21
	v_cndmask_b32_e64 v2, 0, v2, s15
	.loc	1 262 19 is_stmt 1              ; attention_backward.py:262:19
	v_fmac_f32_e32 v45, v243, v2
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp218:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention_backward.py:258:25 ]
	v_dual_mov_b32 v2, v143 :: v_dual_mov_b32 v243, v45
	v_mov_b32_dpp v2, v2 row_xmask:8 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp219:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention_backward.py:258:25 ] ]
	v_max_f32_e32 v2, v2, v2
	v_max_f32_e32 v2, v3, v2
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp220:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention_backward.py:258:25 ]
	v_mov_b32_e32 v3, v2
	v_mov_b32_dpp v3, v3 row_xmask:4 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp221:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention_backward.py:258:25 ] ]
	v_max_f32_e32 v3, v3, v3
	v_max_f32_e32 v2, v2, v3
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp222:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention_backward.py:258:25 ]
	v_mov_b32_e32 v3, v2
	v_mov_b32_dpp v3, v3 row_xmask:2 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp223:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention_backward.py:258:25 ] ]
	v_max_f32_e32 v3, v3, v3
	v_max_f32_e32 v2, v2, v3
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp224:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention_backward.py:258:25 ]
	v_mov_b32_e32 v3, v2
	v_mov_b32_dpp v3, v3 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp225:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention_backward.py:258:25 ] ]
	v_max_f32_e32 v3, v3, v3
	v_max_f32_e32 v2, v2, v3
.Ltmp226:
	.loc	1 259 20                        ; attention_backward.py:259:20
	v_max_f32_e32 v3, v234, v234
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_max_f32_e32 v234, v3, v2
	.loc	1 261 58                        ; attention_backward.py:261:58
	v_sub_f32_e32 v3, v143, v234
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 261 45 is_stmt 0              ; attention_backward.py:261:45
	v_exp_f32_e32 v3, v3
	.loc	1 261 29                        ; attention_backward.py:261:29
	v_cndmask_b32_e64 v3, 0, v3, s14
	.loc	1 260 21 is_stmt 1              ; attention_backward.py:260:21
	v_cmp_neq_f32_e64 s14, 0xff800000, v242
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp227:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:262:33 ]
	v_mov_b32_e32 v4, v3
	v_mov_b32_dpp v4, v4 row_xmask:8 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp228:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:262:33 ] ]
	v_dual_add_f32 v3, v3, v4 :: v_dual_mov_b32 v248, v42
.Ltmp229:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:262:33 ]
	v_mov_b32_e32 v4, v3
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v4, v4 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp230:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:262:33 ] ]
	v_add_f32_e32 v3, v3, v4
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp231:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:262:33 ]
	v_mov_b32_e32 v4, v3
	v_mov_b32_dpp v4, v4 row_xmask:2 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp232:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:262:33 ] ]
	v_dual_add_f32 v3, v3, v4 :: v_dual_max_f32 v4, v242, v242
.Ltmp233:
	.loc	1 259 20                        ; attention_backward.py:259:20
	v_dual_max_f32 v189, v4, v2 :: v_dual_mov_b32 v2, v3
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp234:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:262:33 ]
	v_mov_b32_dpp v2, v2 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp235:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:262:33 ] ]
	v_add_f32_e32 v188, v3, v2
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_3)
.Ltmp236:
	.loc	1 260 70                        ; attention_backward.py:260:70
	v_sub_f32_e32 v2, v242, v189
.Ltmp237:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention_backward.py:258:25 ] ]
	v_max_f32_e32 v3, v145, v145
	v_mov_b32_e32 v242, v189
.Ltmp238:
	.loc	1 260 57                        ; attention_backward.py:260:57
	v_exp_f32_e32 v2, v2
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 260 21 is_stmt 0              ; attention_backward.py:260:21
	v_cndmask_b32_e64 v2, 0, v2, s14
	.loc	1 262 19 is_stmt 1              ; attention_backward.py:262:19
	v_fmac_f32_e32 v188, v241, v2
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp239:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention_backward.py:258:25 ]
	v_dual_mov_b32 v2, v145 :: v_dual_mov_b32 v241, v188
	v_mov_b32_dpp v2, v2 row_xmask:8 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp240:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention_backward.py:258:25 ] ]
	v_max_f32_e32 v2, v2, v2
	v_max_f32_e32 v2, v3, v2
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp241:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention_backward.py:258:25 ]
	v_mov_b32_e32 v3, v2
	v_mov_b32_dpp v3, v3 row_xmask:4 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp242:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention_backward.py:258:25 ] ]
	v_max_f32_e32 v3, v3, v3
	v_max_f32_e32 v2, v2, v3
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp243:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention_backward.py:258:25 ]
	v_mov_b32_e32 v3, v2
	v_mov_b32_dpp v3, v3 row_xmask:2 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp244:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention_backward.py:258:25 ] ]
	v_max_f32_e32 v3, v3, v3
	v_max_f32_e32 v2, v2, v3
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp245:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention_backward.py:258:25 ]
	v_mov_b32_e32 v3, v2
	v_mov_b32_dpp v3, v3 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp246:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention_backward.py:258:25 ] ]
	v_max_f32_e32 v3, v3, v3
	v_max_f32_e32 v2, v2, v3
.Ltmp247:
	.loc	1 259 20                        ; attention_backward.py:259:20
	v_max_f32_e32 v3, v235, v235
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_max_f32_e32 v235, v3, v2
	.loc	1 261 58                        ; attention_backward.py:261:58
	v_sub_f32_e32 v3, v145, v235
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 261 45 is_stmt 0              ; attention_backward.py:261:45
	v_exp_f32_e32 v3, v3
	.loc	1 261 29                        ; attention_backward.py:261:29
	v_cndmask_b32_e64 v3, 0, v3, s13
	.loc	1 260 21 is_stmt 1              ; attention_backward.py:260:21
	v_cmp_neq_f32_e64 s13, 0xff800000, v240
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp248:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:262:33 ]
	v_mov_b32_e32 v4, v3
	v_mov_b32_dpp v4, v4 row_xmask:8 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp249:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:262:33 ] ]
	v_add_f32_e32 v3, v3, v4
.Ltmp250:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:262:33 ]
	v_mov_b32_e32 v4, v3
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v4, v4 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp251:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:262:33 ] ]
	v_add_f32_e32 v3, v3, v4
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp252:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:262:33 ]
	v_mov_b32_e32 v4, v3
	v_mov_b32_dpp v4, v4 row_xmask:2 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
.Ltmp253:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:262:33 ] ]
	v_add_f32_e32 v3, v3, v4
.Ltmp254:
	.loc	1 259 20                        ; attention_backward.py:259:20
	v_max_f32_e32 v4, v240, v240
	v_dual_max_f32 v191, v4, v2 :: v_dual_mov_b32 v2, v3
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp255:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:262:33 ]
	v_mov_b32_dpp v2, v2 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp256:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:262:33 ] ]
	v_add_f32_e32 v190, v3, v2
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_3)
.Ltmp257:
	.loc	1 260 70                        ; attention_backward.py:260:70
	v_sub_f32_e32 v2, v240, v191
.Ltmp258:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention_backward.py:258:25 ] ]
	v_max_f32_e32 v3, v147, v147
	v_mov_b32_e32 v240, v191
.Ltmp259:
	.loc	1 260 57                        ; attention_backward.py:260:57
	v_exp_f32_e32 v2, v2
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 260 21 is_stmt 0              ; attention_backward.py:260:21
	v_cndmask_b32_e64 v2, 0, v2, s13
	.loc	1 262 19 is_stmt 1              ; attention_backward.py:262:19
	v_fmac_f32_e32 v190, v239, v2
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp260:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention_backward.py:258:25 ]
	v_dual_mov_b32 v2, v147 :: v_dual_mov_b32 v239, v190
	v_mov_b32_dpp v2, v2 row_xmask:8 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp261:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention_backward.py:258:25 ] ]
	v_max_f32_e32 v2, v2, v2
	v_max_f32_e32 v2, v3, v2
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp262:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention_backward.py:258:25 ]
	v_mov_b32_e32 v3, v2
	v_mov_b32_dpp v3, v3 row_xmask:4 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp263:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention_backward.py:258:25 ] ]
	v_max_f32_e32 v3, v3, v3
	v_max_f32_e32 v2, v2, v3
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp264:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention_backward.py:258:25 ]
	v_mov_b32_e32 v3, v2
	v_mov_b32_dpp v3, v3 row_xmask:2 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp265:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention_backward.py:258:25 ] ]
	v_max_f32_e32 v3, v3, v3
	v_max_f32_e32 v2, v2, v3
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp266:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention_backward.py:258:25 ]
	v_mov_b32_e32 v3, v2
	v_mov_b32_dpp v3, v3 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp267:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention_backward.py:258:25 ] ]
	v_max_f32_e32 v3, v3, v3
	v_dual_max_f32 v2, v2, v3 :: v_dual_max_f32 v3, v236, v236
	v_mov_b32_e32 v246, v44
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp268:
	.loc	1 259 20                        ; attention_backward.py:259:20
	v_max_f32_e32 v236, v3, v2
	.loc	1 261 58                        ; attention_backward.py:261:58
	v_sub_f32_e32 v3, v147, v236
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 261 45 is_stmt 0              ; attention_backward.py:261:45
	v_exp_f32_e32 v3, v3
	.loc	1 261 29                        ; attention_backward.py:261:29
	v_cndmask_b32_e32 v3, 0, v3, vcc_lo
	.loc	1 260 21 is_stmt 1              ; attention_backward.py:260:21
	v_cmp_neq_f32_e32 vcc_lo, 0xff800000, v238
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp269:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:262:33 ]
	v_mov_b32_e32 v4, v3
	v_mov_b32_dpp v4, v4 row_xmask:8 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp270:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:262:33 ] ]
	v_add_f32_e32 v3, v3, v4
.Ltmp271:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:262:33 ]
	v_mov_b32_e32 v4, v3
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v4, v4 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp272:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:262:33 ] ]
	v_add_f32_e32 v3, v3, v4
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp273:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:262:33 ]
	v_mov_b32_e32 v4, v3
	v_mov_b32_dpp v4, v4 row_xmask:2 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
.Ltmp274:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:262:33 ] ]
	v_dual_add_f32 v3, v3, v4 :: v_dual_max_f32 v4, v238, v238
	v_mov_b32_e32 v244, v174
.Ltmp275:
	.loc	1 259 20                        ; attention_backward.py:259:20
	v_max_f32_e32 v254, v4, v2
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp276:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:262:33 ]
	v_mov_b32_e32 v2, v3
	v_mov_b32_dpp v2, v2 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp277:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:262:33 ] ]
	v_add_f32_e32 v253, v3, v2
.Ltmp278:
	.loc	1 260 70                        ; attention_backward.py:260:70
	v_sub_f32_e32 v2, v238, v254
	v_mov_b32_e32 v238, v254
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 260 57 is_stmt 0              ; attention_backward.py:260:57
	v_exp_f32_e32 v2, v2
	.loc	1 260 21                        ; attention_backward.py:260:21
	v_cndmask_b32_e32 v2, 0, v2, vcc_lo
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 262 19 is_stmt 1              ; attention_backward.py:262:19
	v_fmac_f32_e32 v253, v237, v2
	v_mov_b32_e32 v237, v253
	.loc	1 194 9                         ; attention_backward.py:194:9
	s_cbranch_scc0 .LBB0_28
.LBB0_7:                                ; =>This Inner Loop Header: Depth=1
	.loc	1 195 27                        ; attention_backward.py:195:27
	v_or_b32_e32 v2, s54, v106
	.loc	1 199 21                        ; attention_backward.py:199:21
	s_add_i32 s20, s54, s29
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_mul_i32 s21, s20, s34
	v_add_nc_u32_e32 v3, s21, v114
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 201 24                        ; attention_backward.py:201:24
	v_cmp_gt_i32_e32 vcc_lo, s31, v2
	.loc	1 195 27                        ; attention_backward.py:195:27
	v_or_b32_e32 v2, 2, v106
	.loc	1 199 21                        ; attention_backward.py:199:21
	v_add_nc_u32_e32 v4, s21, v115
	v_add_nc_u32_e32 v5, s21, v85
	v_add_nc_u32_e32 v6, s21, v116
	.loc	1 200 26                        ; attention_backward.py:200:26
	s_and_b32 vcc_lo, s2, vcc_lo
	.loc	1 195 27                        ; attention_backward.py:195:27
	v_or_b32_e32 v2, s54, v2
	.loc	1 199 21                        ; attention_backward.py:199:21
	v_add_nc_u32_e32 v7, s21, v86
	v_add_nc_u32_e32 v8, s21, v87
	v_add_nc_u32_e32 v9, s21, v88
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 201 24                        ; attention_backward.py:201:24
	v_cmp_gt_i32_e64 s13, s31, v2
	.loc	1 195 27                        ; attention_backward.py:195:27
	v_or_b32_e32 v2, 4, v106
	v_or_b32_e32 v2, s54, v2
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 201 24                        ; attention_backward.py:201:24
	v_cmp_gt_i32_e64 s14, s31, v2
	.loc	1 195 27                        ; attention_backward.py:195:27
	v_or_b32_e32 v2, 6, v106
	v_or_b32_e32 v2, s54, v2
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 201 24                        ; attention_backward.py:201:24
	v_cmp_gt_i32_e64 s15, s31, v2
	.loc	1 195 27                        ; attention_backward.py:195:27
	v_or_b32_e32 v2, 8, v106
	v_or_b32_e32 v2, s54, v2
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 201 24                        ; attention_backward.py:201:24
	v_cmp_gt_i32_e64 s16, s31, v2
	.loc	1 195 27                        ; attention_backward.py:195:27
	v_or_b32_e32 v2, 10, v106
	v_or_b32_e32 v2, s54, v2
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 201 24                        ; attention_backward.py:201:24
	v_cmp_gt_i32_e64 s17, s31, v2
	.loc	1 195 27                        ; attention_backward.py:195:27
	v_or_b32_e32 v2, 12, v106
	v_or_b32_e32 v2, s54, v2
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 201 24                        ; attention_backward.py:201:24
	v_cmp_gt_i32_e64 s18, s31, v2
	.loc	1 195 27                        ; attention_backward.py:195:27
	v_or_b32_e32 v2, 14, v106
	v_or_b32_e32 v2, s54, v2
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 201 24                        ; attention_backward.py:201:24
	v_cmp_gt_i32_e64 s19, s31, v2
	.loc	1 199 21                        ; attention_backward.py:199:21
	v_add_nc_u32_e32 v2, s21, v84
	.loc	1 198 28                        ; attention_backward.py:198:28
	v_cndmask_b32_e32 v2, 0x80000000, v2, vcc_lo
	.loc	1 200 26                        ; attention_backward.py:200:26
	s_and_b32 vcc_lo, s2, s13
	.loc	1 198 28                        ; attention_backward.py:198:28
	v_cndmask_b32_e32 v3, 0x80000000, v3, vcc_lo
	.loc	1 200 26                        ; attention_backward.py:200:26
	s_and_b32 vcc_lo, s2, s14
	.loc	1 198 28                        ; attention_backward.py:198:28
	v_cndmask_b32_e32 v4, 0x80000000, v4, vcc_lo
	.loc	1 200 26                        ; attention_backward.py:200:26
	s_and_b32 vcc_lo, s2, s15
	.loc	1 198 28                        ; attention_backward.py:198:28
	v_cndmask_b32_e32 v5, 0x80000000, v5, vcc_lo
	.loc	1 200 26                        ; attention_backward.py:200:26
	s_and_b32 vcc_lo, s2, s16
	.loc	1 198 28                        ; attention_backward.py:198:28
	v_cndmask_b32_e32 v6, 0x80000000, v6, vcc_lo
	.loc	1 200 26                        ; attention_backward.py:200:26
	s_and_b32 vcc_lo, s2, s17
	.loc	1 198 28                        ; attention_backward.py:198:28
	v_cndmask_b32_e32 v7, 0x80000000, v7, vcc_lo
	.loc	1 200 26                        ; attention_backward.py:200:26
	s_and_b32 vcc_lo, s2, s18
	.loc	1 198 28                        ; attention_backward.py:198:28
	v_cndmask_b32_e32 v8, 0x80000000, v8, vcc_lo
	.loc	1 200 26                        ; attention_backward.py:200:26
	s_and_b32 vcc_lo, s2, s19
	.loc	1 198 28                        ; attention_backward.py:198:28
	v_cndmask_b32_e32 v9, 0x80000000, v9, vcc_lo
	s_clause 0x7
	buffer_load_u8 v2, v2, s[60:63], 0 offen
	buffer_load_u8 v3, v3, s[60:63], 0 offen
	buffer_load_u8 v4, v4, s[60:63], 0 offen
	buffer_load_u8 v5, v5, s[60:63], 0 offen
	buffer_load_u8 v6, v6, s[60:63], 0 offen
	buffer_load_u8 v7, v7, s[60:63], 0 offen
	buffer_load_u8 v8, v8, s[60:63], 0 offen
	buffer_load_u8 v9, v9, s[60:63], 0 offen
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_waitcnt vmcnt(7)
	ds_store_b8 v117, v2
	s_waitcnt vmcnt(6)
	ds_store_b8 v117, v3 offset:64
	s_waitcnt vmcnt(5)
	ds_store_b8 v118, v4
	s_waitcnt vmcnt(4)
	ds_store_b8 v118, v5 offset:64
	s_waitcnt vmcnt(3)
	ds_store_b8 v119, v6
	s_waitcnt vmcnt(2)
	ds_store_b8 v119, v7 offset:64
	s_waitcnt vmcnt(1)
	ds_store_b8 v120, v8
	s_waitcnt vmcnt(0)
	ds_store_b8 v120, v9 offset:64
	v_add_nc_u32_e32 v9, 0, v141
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 204 29                        ; attention_backward.py:204:29
	v_mov_b32_e32 v8, v1
	v_mov_b32_e32 v2, v1
	.loc	1 198 28                        ; attention_backward.py:198:28
	ds_load_b64 v[42:43], v9
	v_add_nc_u32_e32 v9, 0, v176
	.loc	1 204 29                        ; attention_backward.py:204:29
	v_mov_b32_e32 v3, v1
	v_mov_b32_e32 v4, v1
	v_mov_b32_e32 v5, v1
	v_mov_b32_e32 v6, v1
	.loc	1 198 28                        ; attention_backward.py:198:28
	ds_load_b64 v[44:45], v9
	v_add_nc_u32_e32 v9, 0, v177
	.loc	1 204 29                        ; attention_backward.py:204:29
	v_mov_b32_e32 v7, v1
	.loc	1 198 28                        ; attention_backward.py:198:28
	ds_load_b64 v[142:143], v9
	v_add_nc_u32_e32 v9, 0, v178
	ds_load_b64 v[144:145], v9
	.loc	1 204 29                        ; attention_backward.py:204:29
	v_mov_b32_e32 v9, v8
	v_mov_b32_e32 v8, v7
	v_mov_b32_e32 v7, v6
	v_mov_b32_e32 v6, v5
	v_mov_b32_e32 v5, v4
	v_mov_b32_e32 v4, v3
	v_mov_b32_e32 v3, v2
	v_mov_b32_e32 v2, v1
	s_waitcnt lgkmcnt(3)
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_wmma_i32_16x16x16_iu4 v[2:9], v[42:43], v[89:90], v[2:9] neg_lo:[1,1,0]
	.loc	1 195 27                        ; attention_backward.py:195:27
	v_or_b32_e32 v43, s54, v130
	.loc	1 215 21                        ; attention_backward.py:215:21
	v_add_lshl_u32 v42, s20, v129, 1
	.loc	1 204 29                        ; attention_backward.py:204:29
	s_waitcnt lgkmcnt(2)
	v_wmma_i32_16x16x16_iu4 v[2:9], v[44:45], v[91:92], v[2:9] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 216 26                        ; attention_backward.py:216:26
	v_cmp_gt_i32_e32 vcc_lo, s31, v43
	.loc	1 195 27                        ; attention_backward.py:195:27
	v_or_b32_e32 v43, s54, v128
	.loc	1 214 33                        ; attention_backward.py:214:33
	v_add_nc_u32_e32 v44, 4, v42
	v_add_nc_u32_e32 v45, 8, v42
	v_add_nc_u32_e32 v107, 12, v42
	v_add_nc_u32_e32 v108, 16, v42
	.loc	1 216 26                        ; attention_backward.py:216:26
	v_cmp_gt_i32_e64 s13, s31, v43
	.loc	1 195 27                        ; attention_backward.py:195:27
	v_or_b32_e32 v43, s54, v127
	.loc	1 214 33                        ; attention_backward.py:214:33
	v_add_nc_u32_e32 v109, 20, v42
	v_add_nc_u32_e32 v110, 24, v42
	v_add_nc_u32_e32 v111, 28, v42
	.loc	1 204 29                        ; attention_backward.py:204:29
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu4 v[2:9], v[142:143], v[93:94], v[2:9] neg_lo:[1,1,0]
	.loc	1 216 26                        ; attention_backward.py:216:26
	v_cmp_gt_i32_e64 s14, s31, v43
	.loc	1 195 27                        ; attention_backward.py:195:27
	v_or_b32_e32 v43, s54, v126
	.loc	1 204 29                        ; attention_backward.py:204:29
	s_waitcnt lgkmcnt(0)
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_wmma_i32_16x16x16_iu4 v[2:9], v[144:145], v[95:96], v[2:9] neg_lo:[1,1,0]
	.loc	1 216 26                        ; attention_backward.py:216:26
	v_cmp_gt_i32_e64 s15, s31, v43
	.loc	1 195 27                        ; attention_backward.py:195:27
	v_or_b32_e32 v43, s54, v125
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 216 26                        ; attention_backward.py:216:26
	v_cmp_gt_i32_e64 s16, s31, v43
	.loc	1 195 27                        ; attention_backward.py:195:27
	v_or_b32_e32 v43, s54, v124
	.loc	1 216 26                        ; attention_backward.py:216:26
	v_cmp_gt_i32_e64 s17, s31, v43
	.loc	1 195 27                        ; attention_backward.py:195:27
	v_or_b32_e32 v43, s54, v123
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 216 26                        ; attention_backward.py:216:26
	v_cmp_gt_i32_e64 s18, s31, v43
	.loc	1 195 27                        ; attention_backward.py:195:27
	v_or_b32_e32 v43, s54, v129
	.loc	1 216 26                        ; attention_backward.py:216:26
	v_cmp_gt_i32_e64 s19, s31, v43
	.loc	1 214 33                        ; attention_backward.py:214:33
	v_cndmask_b32_e32 v43, 0x80000000, v44, vcc_lo
	v_cndmask_b32_e64 v44, 0x80000000, v45, s13
	v_cndmask_b32_e64 v45, 0x80000000, v107, s14
	v_cndmask_b32_e64 v107, 0x80000000, v108, s15
	v_cndmask_b32_e64 v42, 0x80000000, v42, s19
	v_cndmask_b32_e64 v108, 0x80000000, v109, s16
	v_cndmask_b32_e64 v109, 0x80000000, v110, s17
	v_cndmask_b32_e64 v110, 0x80000000, v111, s18
	s_clause 0x7
	buffer_load_u16 v174, v42, s[64:67], 0 offen
	buffer_load_u16 v191, v43, s[64:67], 0 offen
	buffer_load_u16 v190, v44, s[64:67], 0 offen
	buffer_load_u16 v189, v45, s[64:67], 0 offen
	buffer_load_u16 v188, v107, s[64:67], 0 offen
	buffer_load_u16 v255, v108, s[64:67], 0 offen
	buffer_load_u16 v254, v109, s[64:67], 0 offen
	buffer_load_u16 v253, v110, s[64:67], 0 offen
	.loc	1 195 27                        ; attention_backward.py:195:27
	v_or_b32_e32 v42, s54, v121
	.loc	1 238 13                        ; attention_backward.py:238:13
	v_cmp_ne_u32_e32 vcc_lo, 1, v131
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 201 24                        ; attention_backward.py:201:24
	v_cmp_gt_i32_e64 s13, s31, v42
	.loc	1 238 13                        ; attention_backward.py:238:13
	s_and_b32 vcc_lo, exec_lo, vcc_lo
	.loc	1 236 21                        ; attention_backward.py:236:21
	s_and_b32 s74, s5, s13
	s_and_b32 s73, s6, s13
	s_and_b32 s71, s7, s13
	s_and_b32 s55, s8, s13
	s_and_b32 s76, s9, s13
	s_and_b32 s75, s10, s13
	s_and_b32 s72, s11, s13
	s_and_b32 s70, s12, s13
	.loc	1 238 13                        ; attention_backward.py:238:13
	s_cbranch_vccnz .LBB0_9
; %bb.8:                                ;   in Loop: Header=BB0_7 Depth=1
	.loc	1 239 26                        ; attention_backward.py:239:26
	v_cmp_le_i32_e32 vcc_lo, v42, v132
	v_cmp_le_i32_e64 s13, v42, v133
	v_cmp_le_i32_e64 s14, v42, v134
	v_cmp_le_i32_e64 s15, v42, v135
	v_cmp_le_i32_e64 s16, v42, v136
	v_cmp_le_i32_e64 s17, v42, v137
	.loc	1 239 17 is_stmt 0              ; attention_backward.py:239:17
	s_and_b32 s20, vcc_lo, s74
	s_and_b32 s13, s13, s73
	.loc	1 239 26                        ; attention_backward.py:239:26
	v_cmp_le_i32_e64 s18, v42, v138
	v_cmp_le_i32_e64 s19, v42, v139
	.loc	1 239 17                        ; attention_backward.py:239:17
	s_and_b32 s14, s14, s71
	s_and_b32 s15, s15, s55
	s_and_not1_b32 s21, s74, exec_lo
	s_and_b32 s20, s20, exec_lo
	s_and_not1_b32 s22, s73, exec_lo
	s_and_b32 s13, s13, exec_lo
	s_and_b32 s16, s16, s76
	s_and_b32 s17, s17, s75
	s_or_b32 s74, s21, s20
	s_or_b32 s73, s22, s13
	s_and_not1_b32 s13, s71, exec_lo
	s_and_b32 s14, s14, exec_lo
	s_and_not1_b32 s20, s55, exec_lo
	s_and_b32 s15, s15, exec_lo
	s_and_b32 s18, s18, s72
	s_and_b32 s19, s19, s70
	s_or_b32 s71, s13, s14
	s_or_b32 s55, s20, s15
	s_and_not1_b32 s13, s76, exec_lo
	s_and_b32 s14, s16, exec_lo
	s_and_not1_b32 s15, s75, exec_lo
	s_and_b32 s16, s17, exec_lo
	s_or_b32 s76, s13, s14
	s_or_b32 s75, s15, s16
	s_and_not1_b32 s13, s72, exec_lo
	s_and_b32 s14, s18, exec_lo
	s_and_not1_b32 s15, s70, exec_lo
	s_and_b32 s16, s19, exec_lo
	s_or_b32 s72, s13, s14
	s_or_b32 s70, s15, s16
.LBB0_9:                                ;   in Loop: Header=BB0_7 Depth=1
	.loc	1 240 13 is_stmt 1              ; attention_backward.py:240:13
	s_and_not1_b32 vcc_lo, exec_lo, s33
	s_cbranch_vccnz .LBB0_11
; %bb.10:                               ;   in Loop: Header=BB0_7 Depth=1
	.loc	1 241 26                        ; attention_backward.py:241:26
	scratch_load_b32 v43, off, off          ; 4-byte Folded Reload
	.loc	1 242 26                        ; attention_backward.py:242:26
	v_cmp_le_i32_e64 s27, v42, v158
	.loc	1 241 26                        ; attention_backward.py:241:26
	s_waitcnt vmcnt(0)
	v_cmp_ge_i32_e32 vcc_lo, v42, v43
	scratch_load_b32 v43, off, off offset:4 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_cmp_ge_i32_e64 s13, v42, v43
	scratch_load_b32 v43, off, off offset:8 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_cmp_ge_i32_e64 s14, v42, v43
	scratch_load_b32 v43, off, off offset:12 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_cmp_ge_i32_e64 s15, v42, v43
	scratch_load_b32 v43, off, off offset:16 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_cmp_ge_i32_e64 s16, v42, v43
	scratch_load_b32 v43, off, off offset:20 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_cmp_ge_i32_e64 s17, v42, v43
	scratch_load_b32 v43, off, off offset:24 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_cmp_ge_i32_e64 s18, v42, v43
	scratch_load_b32 v43, off, off offset:28 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_cmp_ge_i32_e64 s19, v42, v43
	.loc	1 242 26                        ; attention_backward.py:242:26
	scratch_load_b32 v43, off, off offset:32 ; 4-byte Folded Reload
	.loc	1 242 17 is_stmt 0              ; attention_backward.py:242:17
	s_and_b32 s19, s19, s27
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_4) | instid1(SALU_CYCLE_1)
	s_and_b32 s19, s19, s70
	.loc	1 242 26                        ; attention_backward.py:242:26
	s_waitcnt vmcnt(0)
	v_cmp_le_i32_e64 s20, v42, v43
	scratch_load_b32 v43, off, off offset:36 ; 4-byte Folded Reload
	.loc	1 242 17                        ; attention_backward.py:242:17
	s_and_b32 s20, vcc_lo, s20
	s_and_b32 s20, s20, s74
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_b32 s20, s20, exec_lo
	.loc	1 242 26                        ; attention_backward.py:242:26
	s_waitcnt vmcnt(0)
	v_cmp_le_i32_e64 s21, v42, v43
	scratch_load_b32 v43, off, off offset:40 ; 4-byte Folded Reload
	.loc	1 242 17                        ; attention_backward.py:242:17
	s_and_b32 s13, s13, s21
	s_and_not1_b32 s21, s74, exec_lo
	s_and_b32 s13, s13, s73
	s_or_b32 s74, s21, s20
	s_and_b32 s13, s13, exec_lo
	s_and_not1_b32 s20, s55, exec_lo
	.loc	1 242 26                        ; attention_backward.py:242:26
	s_waitcnt vmcnt(0)
	v_cmp_le_i32_e64 s22, v42, v43
	scratch_load_b32 v43, off, off offset:44 ; 4-byte Folded Reload
	.loc	1 242 17                        ; attention_backward.py:242:17
	s_and_b32 s14, s14, s22
	s_and_not1_b32 s22, s73, exec_lo
	s_and_b32 s14, s14, s71
	s_or_b32 s73, s22, s13
	s_and_not1_b32 s13, s71, exec_lo
	s_and_b32 s14, s14, exec_lo
	s_delay_alu instid0(SALU_CYCLE_1)
	s_or_b32 s71, s13, s14
	s_and_not1_b32 s13, s76, exec_lo
	.loc	1 242 26                        ; attention_backward.py:242:26
	s_waitcnt vmcnt(0)
	v_cmp_le_i32_e64 s23, v42, v43
	scratch_load_b32 v43, off, off offset:48 ; 4-byte Folded Reload
	.loc	1 242 17                        ; attention_backward.py:242:17
	s_and_b32 s15, s15, s23
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_and_b32 s15, s15, s55
	s_and_b32 s15, s15, exec_lo
	s_delay_alu instid0(SALU_CYCLE_1)
	s_or_b32 s55, s20, s15
	s_and_not1_b32 s15, s75, exec_lo
	.loc	1 242 26                        ; attention_backward.py:242:26
	s_waitcnt vmcnt(0)
	v_cmp_le_i32_e64 s24, v42, v43
	scratch_load_b32 v43, off, off offset:52 ; 4-byte Folded Reload
	.loc	1 242 17                        ; attention_backward.py:242:17
	s_and_b32 s16, s16, s24
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_and_b32 s16, s16, s76
	s_and_b32 s14, s16, exec_lo
	s_delay_alu instid0(SALU_CYCLE_1)
	s_or_b32 s76, s13, s14
	s_and_not1_b32 s13, s72, exec_lo
	.loc	1 242 26                        ; attention_backward.py:242:26
	s_waitcnt vmcnt(0)
	v_cmp_le_i32_e64 s25, v42, v43
	scratch_load_b32 v43, off, off offset:56 ; 4-byte Folded Reload
	.loc	1 242 17                        ; attention_backward.py:242:17
	s_and_b32 s17, s17, s25
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_and_b32 s17, s17, s75
	s_and_b32 s16, s17, exec_lo
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_2) | instid1(SALU_CYCLE_1)
	s_or_b32 s75, s15, s16
	s_and_not1_b32 s15, s70, exec_lo
	s_and_b32 s16, s19, exec_lo
	s_or_b32 s70, s15, s16
	.loc	1 242 26                        ; attention_backward.py:242:26
	s_waitcnt vmcnt(0)
	v_cmp_le_i32_e64 s26, v42, v43
	.loc	1 242 17                        ; attention_backward.py:242:17
	s_and_b32 s18, s18, s26
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_and_b32 s18, s18, s72
	s_and_b32 s14, s18, exec_lo
	s_delay_alu instid0(SALU_CYCLE_1)
	s_or_b32 s72, s13, s14
.LBB0_11:                               ;   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 17                          ; attention_backward.py:0:17
	v_mov_b16_e32 v42.l, 0
	.loc	1 245 21 is_stmt 1              ; attention_backward.py:245:21
	s_mul_i32 s13, s54, s69
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	s_add_i32 s13, s49, s13
	v_mov_b16_e32 v45.l, v42.l
	.loc	1 252 30                        ; attention_backward.py:252:30
	s_and_saveexec_b32 s14, s74
	s_cbranch_execz .LBB0_13
; %bb.12:                               ;   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 30 is_stmt 0                ; attention_backward.py:0:30
	v_add_nc_u32_e32 v43, s13, v53
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 252 30                        ; attention_backward.py:252:30
	v_ashrrev_i32_e32 v44, 31, v43
	v_add_co_u32 v43, vcc_lo, s38, v43
	v_add_co_ci_u32_e64 v44, null, s39, v44, vcc_lo
	global_load_d16_u8 v45, v[43:44], off
.LBB0_13:                               ;   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 30                          ; attention_backward.py:0:30
	s_or_b32 exec_lo, exec_lo, s14
	.loc	1 252 30                        ; attention_backward.py:252:30
	s_and_saveexec_b32 s14, s73
	s_cbranch_execz .LBB0_15
; %bb.14:                               ;   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 30                          ; attention_backward.py:0:30
	v_add_nc_u32_e32 v42, s13, v46
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 252 30                        ; attention_backward.py:252:30
	v_ashrrev_i32_e32 v43, 31, v42
	v_add_co_u32 v42, vcc_lo, s38, v42
	v_add_co_ci_u32_e64 v43, null, s39, v43, vcc_lo
	global_load_d16_u8 v42, v[42:43], off
.LBB0_15:                               ;   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 30                          ; attention_backward.py:0:30
	s_or_b32 exec_lo, exec_lo, s14
	s_waitcnt vmcnt(0)
	v_mov_b16_e32 v42.h, 0
	s_delay_alu instid0(VALU_DEP_1)
	v_mov_b16_e32 v43.l, v42.h
	.loc	1 252 30                        ; attention_backward.py:252:30
	s_and_saveexec_b32 s14, s71
	s_cbranch_execz .LBB0_17
; %bb.16:                               ;   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 30                          ; attention_backward.py:0:30
	v_add_nc_u32_e32 v43, s13, v47
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 252 30                        ; attention_backward.py:252:30
	v_ashrrev_i32_e32 v44, 31, v43
	v_add_co_u32 v43, vcc_lo, s38, v43
	v_add_co_ci_u32_e64 v44, null, s39, v44, vcc_lo
	global_load_d16_u8 v43, v[43:44], off
.LBB0_17:                               ;   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 30                          ; attention_backward.py:0:30
	s_or_b32 exec_lo, exec_lo, s14
	.loc	1 252 30                        ; attention_backward.py:252:30
	s_and_saveexec_b32 s14, s55
	s_cbranch_execz .LBB0_19
; %bb.18:                               ;   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 30                          ; attention_backward.py:0:30
	v_add_nc_u32_e32 v44, s13, v48
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 252 30                        ; attention_backward.py:252:30
	v_ashrrev_i32_e32 v107, 31, v44
	v_add_co_u32 v142, vcc_lo, s38, v44
	v_add_co_ci_u32_e64 v143, null, s39, v107, vcc_lo
	global_load_d16_hi_u8 v42, v[142:143], off
.LBB0_19:                               ;   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 30                          ; attention_backward.py:0:30
	s_or_b32 exec_lo, exec_lo, s14
	v_mov_b16_e32 v44.h, 0
	s_delay_alu instid0(VALU_DEP_1)
	v_mov_b16_e32 v45.h, v44.h
	.loc	1 252 30                        ; attention_backward.py:252:30
	s_and_saveexec_b32 s14, s76
	s_cbranch_execz .LBB0_21
; %bb.20:                               ;   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 30                          ; attention_backward.py:0:30
	v_add_nc_u32_e32 v107, s13, v49
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 252 30                        ; attention_backward.py:252:30
	v_ashrrev_i32_e32 v108, 31, v107
	v_add_co_u32 v142, vcc_lo, s38, v107
	v_add_co_ci_u32_e64 v143, null, s39, v108, vcc_lo
	global_load_d16_hi_u8 v45, v[142:143], off
.LBB0_21:                               ;   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 30                          ; attention_backward.py:0:30
	s_or_b32 exec_lo, exec_lo, s14
	.loc	1 252 30                        ; attention_backward.py:252:30
	s_and_saveexec_b32 s14, s75
	s_cbranch_execz .LBB0_23
; %bb.22:                               ;   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 30                          ; attention_backward.py:0:30
	v_add_nc_u32_e32 v44, s13, v50
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 252 30                        ; attention_backward.py:252:30
	v_ashrrev_i32_e32 v107, 31, v44
	v_add_co_u32 v142, vcc_lo, s38, v44
	v_add_co_ci_u32_e64 v143, null, s39, v107, vcc_lo
	global_load_d16_hi_u8 v44, v[142:143], off
.LBB0_23:                               ;   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 30                          ; attention_backward.py:0:30
	s_or_b32 exec_lo, exec_lo, s14
	s_waitcnt vmcnt(0)
	v_mov_b16_e32 v43.h, 0
	s_delay_alu instid0(VALU_DEP_1)
	v_mov_b16_e32 v44.l, v43.h
	.loc	1 252 30                        ; attention_backward.py:252:30
	s_and_saveexec_b32 s14, s72
	s_cbranch_execz .LBB0_25
; %bb.24:                               ;   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 30                          ; attention_backward.py:0:30
	v_add_nc_u32_e32 v107, s13, v51
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 252 30                        ; attention_backward.py:252:30
	v_ashrrev_i32_e32 v108, 31, v107
	v_add_co_u32 v142, vcc_lo, s38, v107
	v_add_co_ci_u32_e64 v143, null, s39, v108, vcc_lo
	global_load_d16_u8 v44, v[142:143], off
.LBB0_25:                               ;   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 30                          ; attention_backward.py:0:30
	s_or_b32 exec_lo, exec_lo, s14
	.loc	1 252 30                        ; attention_backward.py:252:30
	s_and_saveexec_b32 s14, s70
	s_cbranch_execz .LBB0_6
; %bb.26:                               ;   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 30                          ; attention_backward.py:0:30
	v_add_nc_u32_e32 v107, s13, v52
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 252 30                        ; attention_backward.py:252:30
	v_ashrrev_i32_e32 v108, 31, v107
	v_add_co_u32 v142, vcc_lo, s38, v107
	v_add_co_ci_u32_e64 v143, null, s39, v108, vcc_lo
	global_load_d16_hi_u8 v43, v[142:143], off
	s_branch .LBB0_6
.LBB0_27:
	.loc	1 0 30                          ; attention_backward.py:0:30
	v_dual_mov_b32 v254, 0xff800000 :: v_dual_mov_b32 v253, 0
	v_dual_mov_b32 v190, 0 :: v_dual_mov_b32 v45, 0
	v_dual_mov_b32 v188, 0 :: v_dual_mov_b32 v43, 0
	v_dual_mov_b32 v9, 0 :: v_dual_mov_b32 v174, 0xff800000
	v_dual_mov_b32 v7, 0 :: v_dual_mov_b32 v44, 0xff800000
	v_dual_mov_b32 v5, 0 :: v_dual_mov_b32 v42, 0xff800000
	v_dual_mov_b32 v191, 0xff800000 :: v_dual_mov_b32 v8, 0xff800000
	v_dual_mov_b32 v189, 0xff800000 :: v_dual_mov_b32 v6, 0xff800000
	s_branch .LBB0_29
.LBB0_28:                               ; %Flow277
	v_mov_b32_e32 v255, v121
.LBB0_29:                               ; %Flow278
	s_load_b32 s49, s[0:1], 0x74
	.loc	1 124 21 is_stmt 1              ; attention_backward.py:124:21
	v_or_b32_e32 v1, s46, v73
	.loc	1 264 43                        ; attention_backward.py:264:43
	v_cmp_gt_f32_e64 s0, 0x800000, v5
	v_cmp_gt_f32_e64 s1, 0x800000, v7
.Ltmp279:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_dual_add_f32 v3, v24, v205 :: v_dual_add_f32 v4, v25, v206
	s_delay_alu instid0(VALU_DEP_4)
.Ltmp280:
	.loc	1 128 21                        ; attention_backward.py:128:21
	v_cmp_gt_i32_e32 vcc_lo, s30, v1
.Ltmp281:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_dual_add_f32 v1, v22, v203 :: v_dual_add_f32 v2, v23, v204
.Ltmp282:
	.loc	1 264 43                        ; attention_backward.py:264:43
	v_cndmask_b32_e64 v22, 0, 0x42000000, s0
	v_cndmask_b32_e64 v23, 0, 32, s0
	v_cndmask_b32_e64 v24, 0, 0x42000000, s1
	v_cndmask_b32_e64 v25, 0, 32, s1
	v_cmp_gt_f32_e64 s0, 0x800000, v43
	v_cmp_gt_f32_e64 s1, 0x800000, v45
.Ltmp283:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_dual_add_f32 v57, v26, v58 :: v_dual_add_f32 v58, v27, v59
	v_dual_add_f32 v59, v28, v60 :: v_dual_add_f32 v60, v29, v65
.Ltmp284:
	.loc	1 264 43                        ; attention_backward.py:264:43
	v_cmp_gt_f32_e64 s13, 0x800000, v9
.Ltmp285:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_dual_add_f32 v69, v30, v69 :: v_dual_add_f32 v70, v31, v70
.Ltmp286:
	.loc	1 264 43                        ; attention_backward.py:264:43
	v_cndmask_b32_e64 v28, 0, 0x42000000, s0
	v_cndmask_b32_e64 v29, 0, 32, s0
	v_cndmask_b32_e64 v30, 0, 0x42000000, s1
	v_cmp_gt_f32_e64 s0, 0x800000, v188
	v_cndmask_b32_e64 v31, 0, 32, s1
	v_cmp_gt_f32_e64 s1, 0x800000, v190
.Ltmp287:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_dual_add_f32 v65, v38, v61 :: v_dual_add_f32 v66, v39, v62
	v_dual_add_f32 v67, v40, v63 :: v_dual_add_f32 v68, v41, v64
	v_dual_add_f32 v61, v34, v207 :: v_dual_add_f32 v62, v35, v208
	v_dual_add_f32 v63, v36, v209 :: v_dual_add_f32 v64, v37, v210
.Ltmp288:
	.loc	1 264 43                        ; attention_backward.py:264:43
	v_cndmask_b32_e64 v26, 0, 0x42000000, s13
	v_cndmask_b32_e64 v27, 0, 32, s13
	v_ldexp_f32 v23, v5, v23
	v_cmp_gt_f32_e64 s13, 0x800000, v253
	v_cndmask_b32_e64 v35, 0, 32, s0
	v_cndmask_b32_e64 v37, 0, 32, s1
	v_ldexp_f32 v25, v7, v25
	v_ldexp_f32 v27, v9, v27
	v_log_f32_e32 v23, v23
	v_cndmask_b32_e64 v39, 0, 32, s13
	v_ldexp_f32 v29, v43, v29
	v_ldexp_f32 v35, v188, v35
	v_ldexp_f32 v37, v190, v37
	v_log_f32_e32 v25, v25
	v_log_f32_e32 v27, v27
	v_ldexp_f32 v31, v45, v31
	v_ldexp_f32 v39, v253, v39
	v_log_f32_e32 v29, v29
	v_log_f32_e32 v35, v35
	v_log_f32_e32 v37, v37
	v_cndmask_b32_e64 v34, 0, 0x42000000, s0
	v_cndmask_b32_e64 v36, 0, 0x42000000, s1
	v_log_f32_e32 v31, v31
	v_log_f32_e32 v39, v39
	v_dual_sub_f32 v22, v23, v22 :: v_dual_sub_f32 v23, v25, v24
	v_cndmask_b32_e64 v38, 0, 0x42000000, s13
	v_dual_sub_f32 v24, v27, v26 :: v_dual_sub_f32 v25, v29, v28
	s_delay_alu instid0(TRANS32_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_dual_sub_f32 v27, v35, v34 :: v_dual_sub_f32 v28, v37, v36
	.loc	1 264 37 is_stmt 0              ; attention_backward.py:264:37
	v_add_f32_e32 v6, v6, v22
	.loc	1 264 26                        ; attention_backward.py:264:26
	v_cmp_lt_f32_e64 s0, 0, v5
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 264 43                        ; attention_backward.py:264:43
	v_sub_f32_e32 v26, v31, v30
	v_dual_sub_f32 v29, v39, v38 :: v_dual_add_f32 v8, v8, v23
	.loc	1 264 37                        ; attention_backward.py:264:37
	v_add_f32_e32 v23, v44, v25
	v_add_f32_e32 v25, v189, v27
	.loc	1 264 17                        ; attention_backward.py:264:17
	v_cndmask_b32_e64 v5, 0, v6, s0
	.loc	1 264 26                        ; attention_backward.py:264:26
	v_cmp_lt_f32_e64 s0, 0, v7
.Ltmp289:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_e32 v142, v10, v193
.Ltmp290:
	.loc	1 264 37                        ; attention_backward.py:264:37
	v_add_f32_e32 v27, v254, v29
.Ltmp291:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_e32 v143, v11, v194
.Ltmp292:
	.loc	1 264 17                        ; attention_backward.py:264:17
	s_waitcnt lgkmcnt(0)
	v_cndmask_b32_e64 v6, 0, v8, s0
	.loc	1 264 26 is_stmt 0              ; attention_backward.py:264:26
	v_cmp_lt_f32_e64 s0, 0, v9
	.loc	1 264 17                        ; attention_backward.py:264:17
	v_lshlrev_b32_e32 v9, 5, v0
	.loc	1 264 37                        ; attention_backward.py:264:37
	v_add_f32_e32 v22, v42, v24
	.loc	1 264 17                        ; attention_backward.py:264:17
	s_barrier
.Ltmp293:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_e32 v144, v12, v195
	s_mov_b32 s55, 0x31027000
.Ltmp294:
	.loc	1 264 17                        ; attention_backward.py:264:17
	v_and_b32_e32 v9, 0x60, v9
	v_cndmask_b32_e64 v7, 0, v22, s0
	.loc	1 264 26 is_stmt 0              ; attention_backward.py:264:26
	v_cmp_lt_f32_e64 s0, 0, v43
	.loc	1 264 37                        ; attention_backward.py:264:37
	v_add_f32_e32 v24, v174, v26
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_dual_add_f32 v26, v191, v28 :: v_dual_add_nc_u32 v9, 0, v9
	.loc	1 266 9 is_stmt 1               ; attention_backward.py:266:9
	v_and_b32_e32 v28, 28, v0
	.loc	1 264 17                        ; attention_backward.py:264:17
	v_cndmask_b32_e64 v8, 0, v23, s0
	.loc	1 264 26 is_stmt 0              ; attention_backward.py:264:26
	v_cmp_lt_f32_e64 s0, 0, v45
	s_mov_b32 s54, 0x7ffffffe
	.loc	1 266 9 is_stmt 1               ; attention_backward.py:266:9
	s_and_b32 s17, s57, 0xffff
	s_mov_b32 s16, s56
	s_mov_b32 s18, s54
	.loc	1 264 17                        ; attention_backward.py:264:17
	v_cndmask_b32_e64 v22, 0, v24, s0
	.loc	1 264 26 is_stmt 0              ; attention_backward.py:264:26
	v_cmp_lt_f32_e64 s0, 0, v188
	.loc	1 267 9 is_stmt 1               ; attention_backward.py:267:9
	v_lshlrev_b32_e32 v188, 2, v73
	.loc	1 266 9                         ; attention_backward.py:266:9
	s_mov_b32 s19, s55
.Ltmp295:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_dual_add_f32 v145, v13, v196 :: v_dual_add_f32 v146, v14, v197
.Ltmp296:
	.loc	1 264 17                        ; attention_backward.py:264:17
	v_cndmask_b32_e64 v23, 0, v25, s0
	.loc	1 264 26 is_stmt 0              ; attention_backward.py:264:26
	v_cmp_lt_f32_e64 s0, 0, v190
.Ltmp297:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_e32 v149, v17, v192
	v_dual_add_f32 v147, v15, v198 :: v_dual_add_f32 v148, v16, v199
	v_dual_add_f32 v18, v18, v211 :: v_dual_add_f32 v19, v19, v212
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_4) | instid1(VALU_DEP_4)
.Ltmp298:
	.loc	1 264 17                        ; attention_backward.py:264:17
	v_cndmask_b32_e64 v24, 0, v26, s0
	.loc	1 264 26 is_stmt 0              ; attention_backward.py:264:26
	v_cmp_lt_f32_e64 s0, 0, v253
	.loc	1 264 17                        ; attention_backward.py:264:17
	v_lshl_add_u32 v26, v202, 1, 0
.Ltmp299:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_dual_add_f32 v20, v20, v201 :: v_dual_add_f32 v21, v21, v200
	v_dual_add_f32 v71, v32, v71 :: v_dual_add_f32 v72, v33, v72
.Ltmp300:
	.loc	1 264 17                        ; attention_backward.py:264:17
	v_cndmask_b32_e64 v25, 0, v27, s0
	v_add3_u32 v27, v9, v113, v75
	.loc	1 266 9                         ; attention_backward.py:266:9
	v_add_nc_u32_e32 v9, v9, v28
	.loc	1 264 17                        ; attention_backward.py:264:17
	ds_store_b128 v26, v[5:8]
	ds_store_b128 v26, v[22:25] offset:16
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b32 v174, v27
	.loc	1 266 9                         ; attention_backward.py:266:9
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v26, v[5:8]
	ds_store_b128 v26, v[22:25] offset:16
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b32 v5, v9
	v_cmp_eq_u32_e64 s0, 0, v78
	v_add_lshl_u32 v6, s47, v73, 2
	.loc	1 267 9                         ; attention_backward.py:267:9
	v_mov_b32_e32 v8, 0
	.loc	1 392 17                        ; attention_backward.py:392:17
	v_bfe_u32 v7, v77, 16, 1
	v_bfe_u32 v9, v55, 16, 1
	.loc	1 266 9                         ; attention_backward.py:266:9
	s_and_b32 vcc_lo, s0, vcc_lo
	.loc	1 392 17                        ; attention_backward.py:392:17
	v_cmp_o_f32_e64 s13, v55, v55
	.loc	1 266 9                         ; attention_backward.py:266:9
	v_cndmask_b32_e32 v6, 0x80000000, v6, vcc_lo
	.loc	1 392 17                        ; attention_backward.py:392:17
	v_cmp_o_f32_e32 vcc_lo, v77, v77
	v_add3_u32 v9, v55, v9, 0x7fff
	v_bfe_u32 v10, v172, 16, 1
	v_cmp_o_f32_e64 s1, v56, v56
	v_bfe_u32 v11, v169, 16, 1
	v_bfe_u32 v12, v82, 16, 1
	v_bfe_u32 v13, v79, 16, 1
	v_bfe_u32 v14, v168, 16, 1
	v_bfe_u32 v15, v165, 16, 1
	v_add3_u32 v11, v169, v11, 0x7fff
	v_bfe_u32 v16, v161, 16, 1
	.loc	1 266 9                         ; attention_backward.py:266:9
	s_waitcnt lgkmcnt(0)
	buffer_store_b32 v5, v6, s[16:19], 0 offen
	.loc	1 267 9                         ; attention_backward.py:267:9
	v_add_nc_u32_e32 v5, 0, v188
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v8, v[57:60]
	ds_store_b128 v8, v[65:68] offset:16
	ds_store_b128 v8, v[1:4] offset:32
	ds_store_b128 v8, v[61:64] offset:48
	ds_store_b128 v8, v[18:21] offset:64
	ds_store_b128 v8, v[69:72] offset:80
	ds_store_b128 v8, v[142:145] offset:96
	ds_store_b128 v8, v[146:149] offset:112
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b32 v5, v5
	s_and_b32 s17, s59, 0xffff
	s_mov_b32 s16, s58
	.loc	1 392 17                        ; attention_backward.py:392:17
	v_add3_u32 v13, v79, v13, 0x7fff
	v_add3_u32 v15, v165, v15, 0x7fff
	v_bfe_u32 v17, v104, 16, 1
	v_cmp_o_f32_e64 s0, v76, v76
	v_bfe_u32 v22, v164, 16, 1
	v_bfe_u32 v23, v160, 16, 1
	v_bfe_u32 v24, v100, 16, 1
	v_add3_u32 v17, v104, v17, 0x7fff
	v_bfe_u32 v25, v83, 16, 1
	v_bfe_u32 v26, v103, 16, 1
	v_add3_u32 v23, v160, v23, 0x7fff
	v_bfe_u32 v27, v99, 16, 1
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_add3_u32 v25, v83, v25, 0x7fff
	v_add3_u32 v27, v99, v27, 0x7fff
	.loc	1 267 9                         ; attention_backward.py:267:9
	s_waitcnt lgkmcnt(0)
	buffer_store_b32 v5, v6, s[16:19], 0 offen
	.loc	1 392 17                        ; attention_backward.py:392:17
	v_bfe_u32 v5, v76, 16, 1
	v_add3_u32 v6, v77, v7, 0x7fff
	v_bfe_u32 v7, v56, 16, 1
	s_waitcnt lgkmcnt(0)
	s_barrier
	v_add3_u32 v5, v76, v5, 0x7fff
	v_cndmask_b16 v5.l, 0x7fff, v6.h, vcc_lo
	v_add3_u32 v7, v56, v7, 0x7fff
	v_cndmask_b16 v6.h, 0x7fff, v9.h, s13
	v_add3_u32 v9, v172, v10, 0x7fff
	v_bfe_u32 v10, v170, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v172, v172
	v_cndmask_b16 v6.l, 0x7fff, v7.h, s1
	v_bfe_u32 v7, v171, 16, 1
	v_cmp_o_f32_e64 s1, v170, v170
	v_add3_u32 v10, v170, v10, 0x7fff
	v_cmp_o_f32_e64 s13, v169, v169
	v_cndmask_b16 v5.h, 0x7fff, v5.h, s0
	v_add3_u32 v7, v171, v7, 0x7fff
	v_cndmask_b16 v7.l, 0x7fff, v9.h, vcc_lo
	v_cndmask_b16 v9.l, 0x7fff, v10.h, s1
	v_bfe_u32 v10, v81, 16, 1
	v_cndmask_b16 v9.h, 0x7fff, v11.h, s13
	v_add3_u32 v11, v82, v12, 0x7fff
	v_bfe_u32 v12, v80, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v82, v82
	v_cmp_o_f32_e64 s13, v79, v79
	v_add3_u32 v10, v81, v10, 0x7fff
	v_cmp_o_f32_e64 s1, v80, v80
	v_add3_u32 v12, v80, v12, 0x7fff
	v_cndmask_b16 v10.l, 0x7fff, v11.h, vcc_lo
	v_cndmask_b16 v11.h, 0x7fff, v13.h, s13
	v_add3_u32 v13, v168, v14, 0x7fff
	v_bfe_u32 v14, v166, 16, 1
	v_cndmask_b16 v11.l, 0x7fff, v12.h, s1
	v_bfe_u32 v12, v167, 16, 1
	v_cmp_o_f32_e64 s1, v166, v166
	v_cmp_o_f32_e32 vcc_lo, v168, v168
	v_add3_u32 v14, v166, v14, 0x7fff
	v_cmp_o_f32_e64 s13, v165, v165
	v_add3_u32 v12, v167, v12, 0x7fff
	v_cmp_o_f32_e64 s0, v171, v171
	v_cndmask_b16 v12.l, 0x7fff, v13.h, vcc_lo
	v_cndmask_b16 v13.l, 0x7fff, v14.h, s1
	v_bfe_u32 v14, v159, 16, 1
	v_cndmask_b16 v13.h, 0x7fff, v15.h, s13
	v_add3_u32 v15, v161, v16, 0x7fff
	v_bfe_u32 v16, v105, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v161, v161
	v_cmp_o_f32_e64 s13, v104, v104
	v_add3_u32 v14, v159, v14, 0x7fff
	v_cmp_o_f32_e64 s1, v105, v105
	v_add3_u32 v16, v105, v16, 0x7fff
	v_cndmask_b16 v14.l, 0x7fff, v15.h, vcc_lo
	v_cndmask_b16 v15.h, 0x7fff, v17.h, s13
	v_add3_u32 v17, v164, v22, 0x7fff
	v_bfe_u32 v22, v162, 16, 1
	v_cndmask_b16 v7.h, 0x7fff, v7.h, s0
	v_cmp_o_f32_e64 s0, v81, v81
	v_cndmask_b16 v15.l, 0x7fff, v16.h, s1
	v_bfe_u32 v16, v163, 16, 1
	v_add3_u32 v22, v162, v22, 0x7fff
	v_cmp_o_f32_e64 s1, v162, v162
	v_cmp_o_f32_e32 vcc_lo, v164, v164
	v_cmp_o_f32_e64 s13, v160, v160
	v_cndmask_b16 v10.h, 0x7fff, v10.h, s0
	v_cmp_o_f32_e64 s0, v167, v167
	v_add3_u32 v16, v163, v16, 0x7fff
	v_cndmask_b16 v17.l, 0x7fff, v22.h, s1
	v_bfe_u32 v22, v98, 16, 1
	v_cndmask_b16 v16.l, 0x7fff, v17.h, vcc_lo
	v_cndmask_b16 v17.h, 0x7fff, v23.h, s13
	v_add3_u32 v23, v100, v24, 0x7fff
	v_bfe_u32 v24, v97, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v100, v100
	v_cmp_o_f32_e64 s13, v83, v83
	v_cndmask_b16 v12.h, 0x7fff, v12.h, s0
	v_cmp_o_f32_e64 s0, v159, v159
	v_add3_u32 v22, v98, v22, 0x7fff
	v_add3_u32 v24, v97, v24, 0x7fff
	v_cmp_o_f32_e64 s1, v97, v97
	v_cndmask_b16 v22.l, 0x7fff, v23.h, vcc_lo
	v_cndmask_b16 v23.h, 0x7fff, v25.h, s13
	v_add3_u32 v25, v103, v26, 0x7fff
	v_bfe_u32 v26, v101, 16, 1
	v_cndmask_b16 v14.h, 0x7fff, v14.h, s0
	v_cmp_o_f32_e64 s0, v163, v163
	v_cndmask_b16 v23.l, 0x7fff, v24.h, s1
	v_cmp_o_f32_e64 s1, v101, v101
	v_add3_u32 v26, v101, v26, 0x7fff
	v_add_nc_u32_e32 v159, v117, v0
	v_cndmask_b16 v16.h, 0x7fff, v16.h, s0
	v_cmp_o_f32_e64 s0, v98, v98
	v_bfe_u32 v24, v102, 16, 1
	v_cndmask_b16 v25.l, 0x7fff, v26.h, s1
	v_xad_u32 v26, 0x90, v150, 0
	v_lshlrev_b32_e32 v76, 7, v255
	v_cndmask_b16 v22.h, 0x7fff, v22.h, s0
	ds_store_b16 v159, v5
	ds_store_b16 v159, v10 offset:1024
	ds_store_b16 v159, v14 offset:2048
	ds_store_b16 v159, v22 offset:3072
	ds_store_b16_d16_hi v26, v5
	ds_store_b16_d16_hi v26, v10 offset:1024
	ds_store_b16_d16_hi v26, v14 offset:2048
	ds_store_b16_d16_hi v26, v22 offset:3072
	v_lshlrev_b32_e32 v5, 4, v0
	v_lshlrev_b32_e32 v26, 6, v78
	v_cmp_o_f32_e32 vcc_lo, v103, v103
	v_xad_u32 v10, 0x120, v150, 0
	v_add3_u32 v24, v102, v24, 0x7fff
	v_and_b32_e32 v5, 0x70, v5
	v_cmp_o_f32_e64 s0, v102, v102
	v_xad_u32 v22, 0x240, v150, 0
	v_cndmask_b16 v24.l, 0x7fff, v25.h, vcc_lo
	v_xad_u32 v14, 0x1b0, v150, 0
	v_or3_b32 v5, v5, v26, v76
	v_cmp_o_f32_e64 s13, v99, v99
	ds_store_b16 v10, v6
	ds_store_b16 v10, v11 offset:1024
	ds_store_b16 v10, v15 offset:2048
	ds_store_b16 v10, v23 offset:3072
	ds_store_b16_d16_hi v14, v6
	ds_store_b16_d16_hi v14, v11 offset:1024
	ds_store_b16_d16_hi v14, v15 offset:2048
	ds_store_b16_d16_hi v14, v23 offset:3072
	v_xad_u32 v6, 0x2d0, v150, 0
	v_xad_u32 v10, 0x360, v150, 0
	v_cndmask_b16 v24.h, 0x7fff, v24.h, s0
	ds_store_b16 v22, v7
	ds_store_b16 v22, v12 offset:1024
	ds_store_b16 v22, v16 offset:2048
	ds_store_b16 v22, v24 offset:3072
	ds_store_b16_d16_hi v6, v7
	ds_store_b16_d16_hi v6, v12 offset:1024
	ds_store_b16_d16_hi v6, v16 offset:2048
	ds_store_b16_d16_hi v6, v24 offset:3072
	v_dual_mov_b32 v16, v8 :: v_dual_add_nc_u32 v7, 0, v5
	v_xad_u32 v11, v5, 16, 0
	v_xad_u32 v6, 0x3f0, v150, 0
	v_cndmask_b16 v25.h, 0x7fff, v27.h, s13
	ds_store_b16 v10, v9
	ds_store_b16 v10, v13 offset:1024
	ds_store_b16 v10, v17 offset:2048
	ds_store_b16 v10, v25 offset:3072
	ds_store_b16_d16_hi v6, v9
	ds_store_b16_d16_hi v6, v13 offset:1024
	ds_store_b16_d16_hi v6, v17 offset:2048
	ds_store_b16_d16_hi v6, v25 offset:3072
	v_xad_u32 v6, v5, 32, 0
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[25:28], v7
	ds_load_b128 v[29:32], v11
	v_xad_u32 v7, v5, 48, 0
	v_xad_u32 v9, v5, 64, 0
	v_xad_u32 v10, 0x50, v5, 0
	v_xad_u32 v11, 0x60, v5, 0
	v_xad_u32 v5, 0x70, v5, 0
	ds_load_b128 v[33:36], v6
	ds_load_b128 v[37:40], v7
	ds_load_b128 v[41:44], v9
	ds_load_b128 v[45:48], v10
	ds_load_b128 v[49:52], v11
	ds_load_b128 v[53:56], v5
	.loc	1 396 43                        ; attention_backward.py:396:43
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v8, v[57:60]
	ds_store_b128 v8, v[65:68] offset:16
	ds_store_b128 v8, v[1:4] offset:32
	ds_store_b128 v8, v[61:64] offset:48
	ds_store_b128 v8, v[18:21] offset:64
	ds_store_b128 v8, v[69:72] offset:80
	v_mov_b32_e32 v7, v8
	v_mov_b32_e32 v6, v8
	v_mov_b32_e32 v5, v8
	v_mov_b32_e32 v4, v8
	v_mov_b32_e32 v3, v8
	v_mov_b32_e32 v2, v8
	v_mov_b32_e32 v1, v8
	v_mov_b32_e32 v15, v8
	v_mov_b32_e32 v14, v8
	v_mov_b32_e32 v13, v8
	v_mov_b32_e32 v12, v8
	v_mov_b32_e32 v11, v8
	v_mov_b32_e32 v10, v8
	v_mov_b32_e32 v9, v8
	v_mov_b32_e32 v24, v8
	v_mov_b32_e32 v23, v8
	v_mov_b32_e32 v22, v8
	v_mov_b32_e32 v21, v8
	v_mov_b32_e32 v20, v8
	v_mov_b32_e32 v19, v8
	v_mov_b32_e32 v18, v8
	v_mov_b32_e32 v17, v8
	v_mov_b32_e32 v64, v8
	v_mov_b32_e32 v63, v8
	v_mov_b32_e32 v62, v8
	v_mov_b32_e32 v61, v8
	v_mov_b32_e32 v60, v8
	v_mov_b32_e32 v59, v8
	v_mov_b32_e32 v58, v8
	v_mov_b32_e32 v57, v8
	.loc	1 270 9                         ; attention_backward.py:270:9
	s_and_not1_b32 vcc_lo, exec_lo, s50
	.loc	1 396 43                        ; attention_backward.py:396:43
	ds_store_b128 v8, v[142:145] offset:96
	ds_store_b128 v8, v[146:149] offset:112
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_cbranch_vccnz .LBB0_52
; %bb.30:                               ; %.lr.ph81
	.loc	1 0 43 is_stmt 0                ; attention_backward.py:0:43
	v_dual_mov_b32 v22, 0x5410 :: v_dual_lshlrev_b32 v1, 1, v73
	v_dual_mov_b32 v23, 0x7632 :: v_dual_lshlrev_b32 v2, 2, v255
	v_cmp_eq_u32_e32 vcc_lo, 0, v175
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 168 40 is_stmt 1              ; attention_backward.py:168:40
	v_or_b32_e32 v3, 1, v1
	.loc	1 310 21                        ; attention_backward.py:310:21
	v_cmp_gt_i32_e64 s0, s49, v1
	.loc	1 396 43                        ; attention_backward.py:396:43
	v_add3_u32 v4, 0, v2, v173
	v_dual_cndmask_b32 v22, 0x1054, v22 :: v_dual_and_b32 v1, 52, v153
	v_dual_cndmask_b32 v23, 0x3276, v23 :: v_dual_mov_b32 v142, 0
	.loc	1 270 9                         ; attention_backward.py:270:9
	v_mad_u64_u32 v[97:98], null, s51, v182, v[74:75]
	v_mad_u64_u32 v[98:99], null, s51, v183, v[74:75]
	v_mad_u64_u32 v[99:100], null, s51, v184, v[74:75]
	.loc	1 310 21                        ; attention_backward.py:310:21
	v_cmp_gt_i32_e64 s1, s49, v3
	.loc	1 396 43                        ; attention_backward.py:396:43
	ds_load_b32 v160, v4
	.loc	1 270 9                         ; attention_backward.py:270:9
	v_mad_u64_u32 v[100:101], null, s51, v185, v[74:75]
	v_and_or_b32 v3, v0, 2, v152
	v_lshl_or_b32 v1, v75, 5, v1
	v_or_b32_e32 v163, v76, v2
	v_lshl_or_b32 v22, v22, 8, v22
	v_lshl_or_b32 v23, v23, 8, v23
	v_mad_u64_u32 v[101:102], null, s51, v186, v[74:75]
	v_mad_u64_u32 v[102:103], null, s51, v181, v[74:75]
	v_mad_u64_u32 v[103:104], null, s51, v180, v[74:75]
	v_mad_u64_u32 v[104:105], null, s51, v179, v[74:75]
	v_or3_b32 v161, v151, v122, v187
	v_or3_b32 v105, v3, v1, v106
	v_or_b32_e32 v162, v187, v188
	v_xor_b32_e32 v57, 8, v163
	v_xor_b32_e32 v58, 12, v163
	v_and_b32_e32 v22, 0x540054, v22
	v_and_b32_e32 v23, 0x760076, v23
	v_xor_b32_e32 v1, 0x90, v161
	v_xor_b32_e32 v3, 0x120, v161
	v_xor_b32_e32 v4, 0x1b0, v161
	v_xor_b32_e32 v5, 16, v105
	v_xor_b32_e32 v6, 32, v105
	v_xor_b32_e32 v7, 48, v105
	v_xor_b32_e32 v8, 0x84, v162
	v_xor_b32_e32 v9, 0x108, v162
	v_xor_b32_e32 v10, 0x18c, v162
	v_xor_b32_e32 v11, 0x210, v162
	v_xor_b32_e32 v12, 0x294, v162
	v_xor_b32_e32 v13, 0x318, v162
	v_xor_b32_e32 v14, 0x39c, v162
	v_xor_b32_e32 v15, 0x420, v162
	v_xor_b32_e32 v16, 0x4a4, v162
	v_xor_b32_e32 v17, 0x528, v162
	v_xor_b32_e32 v18, 0x5ac, v162
	v_xor_b32_e32 v19, 0x630, v162
	v_xor_b32_e32 v20, 0x6b4, v162
	v_xor_b32_e32 v21, 0x738, v162
	v_xor_b32_e32 v2, 0x7bc, v162
	v_xor_b32_e32 v24, 4, v163
	v_xor_b32_e32 v59, 16, v163
	v_xor_b32_e32 v60, 20, v163
	v_xor_b32_e32 v61, 24, v163
	v_xor_b32_e32 v62, 28, v163
	v_xor_b32_e32 v63, 32, v163
	v_xor_b32_e32 v64, 36, v163
	v_xor_b32_e32 v65, 40, v163
	v_xor_b32_e32 v66, 44, v163
	v_xor_b32_e32 v67, 48, v163
	v_xor_b32_e32 v68, 52, v163
	v_xor_b32_e32 v69, 56, v163
	v_xor_b32_e32 v70, 60, v163
	v_add_nc_u32_e32 v193, 0, v57
	v_dual_mov_b32 v57, 0 :: v_dual_add_nc_u32 v194, 0, v58
	v_lshl_or_b32 v22, v22, 4, v22
	v_mov_b32_e32 v58, v142
	v_lshl_or_b32 v23, v23, 4, v23
	v_lshl_add_u32 v166, v255, 1, 0
	v_add_nc_u32_e32 v167, 0, v176
	v_and_b32_e32 v164, 0x5040504, v22
	v_add_nc_u32_e32 v168, 0, v177
	v_and_b32_e32 v165, 0x7060706, v23
	v_add_nc_u32_e32 v169, 0, v178
	v_add_nc_u32_e32 v170, 0, v1
	v_add_nc_u32_e32 v171, 0, v3
	v_add_nc_u32_e32 v172, 0, v4
	v_add_nc_u32_e32 v173, 0, v5
	v_dual_mov_b32 v22, v142 :: v_dual_add_nc_u32 v175, 0, v6
	v_add_nc_u32_e32 v176, 0, v7
	v_add_nc_u32_e32 v177, 0, v8
	v_add_nc_u32_e32 v178, 0, v9
	v_add_nc_u32_e32 v179, 0, v10
	v_mov_b32_e32 v10, v142
	v_dual_mov_b32 v23, v142 :: v_dual_add_nc_u32 v180, 0, v11
	v_add_nc_u32_e32 v181, 0, v12
	v_mov_b32_e32 v12, v142
	v_dual_mov_b32 v9, 0 :: v_dual_add_nc_u32 v182, 0, v13
	v_add_nc_u32_e32 v183, 0, v14
	v_mov_b32_e32 v14, v142
	v_dual_mov_b32 v11, v142 :: v_dual_add_nc_u32 v184, 0, v15
	v_add_nc_u32_e32 v185, 0, v16
	v_mov_b32_e32 v16, v142
	v_dual_mov_b32 v13, v142 :: v_dual_add_nc_u32 v186, 0, v17
	v_add_nc_u32_e32 v187, 0, v18
	v_dual_mov_b32 v15, v142 :: v_dual_add_nc_u32 v188, 0, v19
	v_dual_mov_b32 v4, v142 :: v_dual_add_nc_u32 v189, 0, v20
	v_dual_mov_b32 v1, 0 :: v_dual_add_nc_u32 v190, 0, v21
	v_dual_mov_b32 v6, v142 :: v_dual_add_nc_u32 v191, 0, v2
	v_dual_mov_b32 v3, v142 :: v_dual_add_nc_u32 v192, 0, v24
	v_add_nc_u32_e32 v195, 0, v59
	v_dual_mov_b32 v7, v142 :: v_dual_add_nc_u32 v196, 0, v60
	v_add_nc_u32_e32 v197, 0, v61
	v_add_nc_u32_e32 v198, 0, v62
	v_add_nc_u32_e32 v199, 0, v63
	v_add_nc_u32_e32 v200, 0, v64
	v_add_nc_u32_e32 v201, 0, v65
	v_add_nc_u32_e32 v202, 0, v66
	v_add_nc_u32_e32 v203, 0, v67
	v_add_nc_u32_e32 v204, 0, v68
	v_add_nc_u32_e32 v205, 0, v69
	v_dual_mov_b32 v59, v142 :: v_dual_add_nc_u32 v206, 0, v70
	v_mov_b32_e32 v60, v142
	v_mov_b32_e32 v61, v142
	v_mov_b32_e32 v62, v142
	v_mov_b32_e32 v63, v142
	v_dual_mov_b32 v64, v142 :: v_dual_mov_b32 v17, 0
	v_mov_b32_e32 v18, v142
	v_mov_b32_e32 v19, v142
	v_mov_b32_e32 v20, v142
	v_mov_b32_e32 v21, v142
	v_mov_b32_e32 v24, v142
	v_mov_b32_e32 v2, v142
	v_mov_b32_e32 v5, v142
	v_mov_b32_e32 v8, v142
	s_and_b32 s41, s41, 0xffff
	s_and_b32 s45, s45, 0xffff
	s_add_i32 s30, s42, s43
	s_and_b32 s53, s53, 0xffff
	s_mov_b32 s42, s54
	s_mov_b32 s43, s55
	s_mov_b32 s46, s54
	s_mov_b32 s47, s55
	s_mov_b32 s50, 0x76543210
	s_branch .LBB0_32
.LBB0_31:                               ;   in Loop: Header=BB0_32 Depth=1
	.loc	1 0 9 is_stmt 0                 ; attention_backward.py:0:9
	s_or_b32 exec_lo, exec_lo, s14
	.loc	1 340 30 is_stmt 1              ; attention_backward.py:340:30
	s_waitcnt vmcnt(0)
	v_and_b16 v65.l, 0xff, v69.h
	.loc	1 340 21 is_stmt 0              ; attention_backward.py:340:21
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 271 27 is_stmt 1              ; attention_backward.py:271:27
	s_or_b32 s16, s28, 4
	s_or_b32 s17, s28, 5
	.loc	1 340 30                        ; attention_backward.py:340:30
	v_cmp_ne_u16_e64 s13, 0, v65.l
	v_and_b16 v65.l, 0xff, v69.l
	.loc	1 271 27                        ; attention_backward.py:271:27
	s_or_b32 s18, s28, 6
	s_or_b32 s19, s28, 7
	s_or_b32 s20, s28, 8
	.loc	1 340 21                        ; attention_backward.py:340:21
	s_and_b32 s13, s63, s13
	.loc	1 340 30 is_stmt 0              ; attention_backward.py:340:30
	v_cmp_ne_u16_e32 vcc_lo, 0, v65.l
	v_and_b16 v65.l, 0xff, v66.l
	.loc	1 271 27 is_stmt 1              ; attention_backward.py:271:27
	s_or_b32 s21, s28, 9
	s_or_b32 s22, s28, 10
	s_or_b32 s23, s28, 11
	s_or_b32 s24, s28, 12
	.loc	1 340 30                        ; attention_backward.py:340:30
	v_cmp_ne_u16_e64 s14, 0, v65.l
	v_and_b16 v65.l, 0xff, v67.h
	.loc	1 271 27                        ; attention_backward.py:271:27
	s_or_b32 s25, s28, 13
	s_or_b32 s26, s28, 14
	s_or_b32 s27, s28, 15
	.loc	1 393 17                        ; attention_backward.py:393:17
	v_add_nc_u32_e32 v143, 0, v162
	.loc	1 340 30                        ; attention_backward.py:340:30
	v_cmp_ne_u16_e64 s15, 0, v65.l
	.loc	1 340 21 is_stmt 0              ; attention_backward.py:340:21
	v_cndmask_b32_e64 v65, 0, 1, s13
	s_and_b32 s13, s62, vcc_lo
	.loc	1 299 21 is_stmt 1              ; attention_backward.py:299:21
	v_cvt_f32_i32_e32 v79, v79
	.loc	1 340 21                        ; attention_backward.py:340:21
	v_cndmask_b32_e64 v69, 0, 1, s13
	s_and_b32 s13, s61, s15
	v_lshlrev_b16 v65.l, 8, v65.l
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_mov_b16_e32 v66.l, v69.l
	v_cndmask_b32_e64 v69, 0, 1, s13
	s_and_b32 s13, s60, s14
	v_or_b16 v65.l, v66.l, v65.l
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_mov_b16_e32 v66.l, v69.l
	v_cndmask_b32_e64 v69, 0, 1, s13
	.loc	1 391 32                        ; attention_backward.py:391:32
	v_mov_b32_e32 v144, v142
	v_mov_b32_e32 v145, v142
	.loc	1 340 21                        ; attention_backward.py:340:21
	v_lshlrev_b16 v65.h, 8, v66.l
	.loc	1 391 32                        ; attention_backward.py:391:32
	v_mov_b32_e32 v146, v142
	v_mov_b32_e32 v147, v142
	v_mov_b32_e32 v148, v142
	v_mov_b32_e32 v149, v142
	.loc	1 340 21                        ; attention_backward.py:340:21
	v_or_b16 v65.h, v69.l, v65.h
	v_add_nc_u32_e32 v69, 0, v161
	ds_store_b16 v69, v65
	.loc	1 340 30 is_stmt 0              ; attention_backward.py:340:30
	v_and_b16 v65.l, 0xff, v67.l
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_cmp_ne_u16_e32 vcc_lo, 0, v65.l
	v_and_b16 v65.l, 0xff, v66.h
	v_cmp_ne_u16_e64 s13, 0, v65.l
	v_and_b16 v65.l, 0xff, v68.h
	.loc	1 340 21                        ; attention_backward.py:340:21
	s_and_b32 s13, s56, s13
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_2)
	.loc	1 340 30                        ; attention_backward.py:340:30
	v_cmp_ne_u16_e64 s14, 0, v65.l
	v_and_b16 v65.l, 0xff, v68.l
	.loc	1 340 21                        ; attention_backward.py:340:21
	v_cndmask_b32_e64 v67, 0, 1, s13
	.loc	1 271 27 is_stmt 1              ; attention_backward.py:271:27
	s_or_b32 s13, s28, 1
	.loc	1 340 21                        ; attention_backward.py:340:21
	s_and_b32 s14, s59, s14
	.loc	1 340 30 is_stmt 0              ; attention_backward.py:340:30
	v_cmp_ne_u16_e64 s15, 0, v65.l
	.loc	1 340 21                        ; attention_backward.py:340:21
	v_cndmask_b32_e64 v66, 0, 1, s14
	s_and_b32 s14, s57, vcc_lo
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	v_mov_b16_e32 v65.l, v66.l
	v_cndmask_b32_e64 v66, 0, 1, s14
	s_and_b32 s14, s58, s15
	.loc	1 271 27 is_stmt 1              ; attention_backward.py:271:27
	s_or_b32 s15, s28, 3
	.loc	1 340 21                        ; attention_backward.py:340:21
	v_lshlrev_b16 v65.l, 8, v65.l
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	v_or_b16 v65.l, v66.l, v65.l
	v_cndmask_b32_e64 v66, 0, 1, s14
	.loc	1 271 27                        ; attention_backward.py:271:27
	s_or_b32 s14, s28, 2
	.loc	1 387 27                        ; attention_backward.py:387:27
	s_cmp_lt_i32 s28, s31
	.loc	1 340 21                        ; attention_backward.py:340:21
	v_lshlrev_b16 v66.l, 8, v66.l
	s_delay_alu instid0(VALU_DEP_1)
	v_or_b16 v66.l, v67.l, v66.l
	ds_store_b16_d16_hi v170, v65
	ds_store_b16 v171, v65
	ds_store_b16 v172, v66
	.loc	1 386 21                        ; attention_backward.py:386:21
	v_mad_u64_u32 v[65:66], null, s51, s35, v[0:1]
	.loc	1 387 27                        ; attention_backward.py:387:27
	s_cselect_b32 s51, -1, 0
	s_cmp_lt_i32 s13, s31
	.loc	1 340 21                        ; attention_backward.py:340:21
	s_waitcnt lgkmcnt(0)
	.loc	1 387 27                        ; attention_backward.py:387:27
	s_cselect_b32 s13, -1, 0
	s_cmp_lt_i32 s14, s31
	.loc	1 340 21                        ; attention_backward.py:340:21
	s_barrier
	.loc	1 386 21                        ; attention_backward.py:386:21
	v_add_nc_u32_e32 v66, s35, v65
	.loc	1 387 27                        ; attention_backward.py:387:27
	s_cselect_b32 s14, -1, 0
	s_cmp_lt_i32 s15, s31
	s_cselect_b32 s15, -1, 0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	.loc	1 386 21                        ; attention_backward.py:386:21
	v_add_nc_u32_e32 v67, s35, v66
	.loc	1 387 27                        ; attention_backward.py:387:27
	s_cmp_lt_i32 s16, s31
	s_cselect_b32 s16, -1, 0
	s_cmp_lt_i32 s17, s31
	.loc	1 386 21                        ; attention_backward.py:386:21
	v_add_nc_u32_e32 v68, s35, v67
	.loc	1 387 27                        ; attention_backward.py:387:27
	s_cselect_b32 s17, -1, 0
	s_cmp_lt_i32 s18, s31
	s_cselect_b32 s18, -1, 0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	.loc	1 386 21                        ; attention_backward.py:386:21
	v_add_nc_u32_e32 v69, s35, v68
	.loc	1 387 27                        ; attention_backward.py:387:27
	s_cmp_lt_i32 s19, s31
	s_cselect_b32 s19, -1, 0
	s_cmp_lt_i32 s20, s31
	.loc	1 386 21                        ; attention_backward.py:386:21
	v_add_nc_u32_e32 v70, s35, v69
	.loc	1 387 27                        ; attention_backward.py:387:27
	s_cselect_b32 s20, -1, 0
	s_cmp_lt_i32 s21, s31
	s_cselect_b32 s21, -1, 0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	.loc	1 386 21                        ; attention_backward.py:386:21
	v_add_nc_u32_e32 v71, s35, v70
	.loc	1 387 27                        ; attention_backward.py:387:27
	s_cmp_lt_i32 s22, s31
	s_cselect_b32 s22, -1, 0
	s_cmp_lt_i32 s23, s31
	.loc	1 386 21                        ; attention_backward.py:386:21
	v_add_nc_u32_e32 v72, s35, v71
	.loc	1 387 27                        ; attention_backward.py:387:27
	s_cselect_b32 s23, -1, 0
	s_cmp_lt_i32 s24, s31
	s_cselect_b32 s24, -1, 0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	.loc	1 386 21                        ; attention_backward.py:386:21
	v_add_nc_u32_e32 v81, s35, v72
	.loc	1 387 27                        ; attention_backward.py:387:27
	s_cmp_lt_i32 s25, s31
	s_cselect_b32 s25, -1, 0
	s_cmp_lt_i32 s26, s31
	.loc	1 386 21                        ; attention_backward.py:386:21
	v_add_nc_u32_e32 v82, s35, v81
	.loc	1 387 27                        ; attention_backward.py:387:27
	s_cselect_b32 s26, -1, 0
	s_cmp_lt_i32 s27, s31
	s_cselect_b32 s27, -1, 0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 386 21                        ; attention_backward.py:386:21
	v_add_nc_u32_e32 v83, s35, v82
	.loc	1 387 26                        ; attention_backward.py:387:26
	s_and_b32 vcc_lo, s3, s51
	.loc	1 270 9                         ; attention_backward.py:270:9
	s_add_i32 s28, s28, 16
	.loc	1 386 21                        ; attention_backward.py:386:21
	v_add_nc_u32_e32 v107, s35, v83
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_add_nc_u32_e32 v108, s35, v107
	.loc	1 385 30                        ; attention_backward.py:385:30
	v_lshlrev_b32_e32 v107, 1, v107
	.loc	1 386 21                        ; attention_backward.py:386:21
	v_add_nc_u32_e32 v109, s35, v108
	.loc	1 385 30                        ; attention_backward.py:385:30
	v_lshlrev_b32_e32 v108, 1, v108
	v_lshlrev_b32_e32 v81, 1, v81
	v_lshlrev_b32_e32 v82, 1, v82
	v_lshlrev_b32_e32 v71, 1, v71
	v_lshlrev_b32_e32 v72, 1, v72
	v_lshlrev_b32_e32 v69, 1, v69
	v_lshlrev_b32_e32 v70, 1, v70
	v_lshlrev_b32_e32 v67, 1, v67
	v_lshlrev_b32_e32 v68, 1, v68
	v_lshlrev_b32_e32 v65, 1, v65
	v_lshlrev_b32_e32 v66, 1, v66
	.loc	1 386 21                        ; attention_backward.py:386:21
	v_add_nc_u32_e32 v110, s35, v109
	.loc	1 385 30                        ; attention_backward.py:385:30
	v_lshlrev_b32_e32 v109, 1, v109
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_cndmask_b32_e32 v65, 0x80000000, v65, vcc_lo
	.loc	1 387 26                        ; attention_backward.py:387:26
	s_and_b32 vcc_lo, s3, s13
	.loc	1 385 30                        ; attention_backward.py:385:30
	v_lshlrev_b32_e32 v111, 1, v110
	v_cndmask_b32_e32 v66, 0x80000000, v66, vcc_lo
	.loc	1 387 26                        ; attention_backward.py:387:26
	s_and_b32 vcc_lo, s3, s14
	.loc	1 385 30                        ; attention_backward.py:385:30
	v_add_lshl_u32 v110, v110, s35, 1
	v_cndmask_b32_e32 v67, 0x80000000, v67, vcc_lo
	.loc	1 387 26                        ; attention_backward.py:387:26
	s_and_b32 vcc_lo, s3, s15
	.loc	1 385 30                        ; attention_backward.py:385:30
	v_dual_cndmask_b32 v68, 0x80000000, v68 :: v_dual_lshlrev_b32 v83, 1, v83
	.loc	1 387 26                        ; attention_backward.py:387:26
	s_and_b32 vcc_lo, s3, s16
	.loc	1 385 30                        ; attention_backward.py:385:30
	v_cndmask_b32_e32 v69, 0x80000000, v69, vcc_lo
	.loc	1 387 26                        ; attention_backward.py:387:26
	s_and_b32 vcc_lo, s3, s17
	.loc	1 385 30                        ; attention_backward.py:385:30
	v_cndmask_b32_e32 v70, 0x80000000, v70, vcc_lo
	.loc	1 387 26                        ; attention_backward.py:387:26
	s_and_b32 vcc_lo, s3, s18
	.loc	1 385 30                        ; attention_backward.py:385:30
	v_cndmask_b32_e32 v71, 0x80000000, v71, vcc_lo
	.loc	1 387 26                        ; attention_backward.py:387:26
	s_and_b32 vcc_lo, s3, s19
	.loc	1 385 30                        ; attention_backward.py:385:30
	v_cndmask_b32_e32 v72, 0x80000000, v72, vcc_lo
	.loc	1 387 26                        ; attention_backward.py:387:26
	s_and_b32 vcc_lo, s3, s20
	.loc	1 385 30                        ; attention_backward.py:385:30
	s_clause 0x7
	buffer_load_u16 v65, v65, s[52:55], 0 offen
	buffer_load_u16 v66, v66, s[52:55], 0 offen
	buffer_load_u16 v67, v67, s[52:55], 0 offen
	buffer_load_u16 v68, v68, s[52:55], 0 offen
	buffer_load_u16 v69, v69, s[52:55], 0 offen
	buffer_load_u16 v70, v70, s[52:55], 0 offen
	buffer_load_u16 v71, v71, s[52:55], 0 offen
	buffer_load_u16 v72, v72, s[52:55], 0 offen
	v_cndmask_b32_e32 v81, 0x80000000, v81, vcc_lo
	.loc	1 387 26                        ; attention_backward.py:387:26
	s_and_b32 vcc_lo, s3, s21
	.loc	1 385 30                        ; attention_backward.py:385:30
	v_cndmask_b32_e32 v82, 0x80000000, v82, vcc_lo
	.loc	1 387 26                        ; attention_backward.py:387:26
	s_and_b32 vcc_lo, s3, s22
	.loc	1 385 30                        ; attention_backward.py:385:30
	v_cndmask_b32_e32 v83, 0x80000000, v83, vcc_lo
	.loc	1 387 26                        ; attention_backward.py:387:26
	s_and_b32 vcc_lo, s3, s23
	.loc	1 385 30                        ; attention_backward.py:385:30
	v_cndmask_b32_e32 v107, 0x80000000, v107, vcc_lo
	.loc	1 387 26                        ; attention_backward.py:387:26
	s_and_b32 vcc_lo, s3, s24
	.loc	1 385 30                        ; attention_backward.py:385:30
	v_cndmask_b32_e32 v108, 0x80000000, v108, vcc_lo
	.loc	1 387 26                        ; attention_backward.py:387:26
	s_and_b32 vcc_lo, s3, s25
	.loc	1 385 30                        ; attention_backward.py:385:30
	v_cndmask_b32_e32 v109, 0x80000000, v109, vcc_lo
	.loc	1 387 26                        ; attention_backward.py:387:26
	s_and_b32 vcc_lo, s3, s26
	.loc	1 385 30                        ; attention_backward.py:385:30
	v_cndmask_b32_e32 v111, 0x80000000, v111, vcc_lo
	.loc	1 387 26                        ; attention_backward.py:387:26
	s_and_b32 vcc_lo, s3, s27
	.loc	1 270 9                         ; attention_backward.py:270:9
	s_cmp_lt_i32 s28, s68
	.loc	1 385 30                        ; attention_backward.py:385:30
	v_cndmask_b32_e32 v110, 0x80000000, v110, vcc_lo
	s_clause 0x7
	buffer_load_u16 v112, v81, s[52:55], 0 offen
	buffer_load_u16 v121, v82, s[52:55], 0 offen
	buffer_load_u16 v122, v83, s[52:55], 0 offen
	buffer_load_u16 v107, v107, s[52:55], 0 offen
	buffer_load_u16 v108, v108, s[52:55], 0 offen
	buffer_load_u16 v109, v109, s[52:55], 0 offen
	buffer_load_u16 v111, v111, s[52:55], 0 offen
	buffer_load_u16 v110, v110, s[52:55], 0 offen
	.loc	1 340 21                        ; attention_backward.py:340:21
	v_add_nc_u32_e32 v81, 0, v105
	ds_load_u8_d16_hi v207, v81
	ds_load_u8_d16 v82, v81 offset:64
	ds_load_u8_d16_hi v208, v173
	ds_load_u8_d16_hi v83, v175
	s_waitcnt lgkmcnt(0)
	ds_load_u8_d16 v83, v176
	ds_load_u8_d16 v81, v176 offset:64
	s_waitcnt lgkmcnt(0)
	ds_load_u8_d16_hi v81, v175 offset:64
	ds_load_u8_d16_hi v82, v173 offset:64
	.loc	1 393 17                        ; attention_backward.py:393:17
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_waitcnt vmcnt(15)
	ds_store_b16 v143, v65
	s_waitcnt vmcnt(14)
	ds_store_b16 v177, v66
	s_waitcnt vmcnt(13)
	ds_store_b16 v178, v67
	s_waitcnt vmcnt(12)
	ds_store_b16 v179, v68
	s_waitcnt vmcnt(11)
	ds_store_b16 v180, v69
	s_waitcnt vmcnt(10)
	ds_store_b16 v181, v70
	s_waitcnt vmcnt(9)
	ds_store_b16 v182, v71
	s_waitcnt vmcnt(8)
	ds_store_b16 v183, v72
	s_waitcnt vmcnt(7)
	ds_store_b16 v184, v112
	s_waitcnt vmcnt(6)
	ds_store_b16 v185, v121
	s_waitcnt vmcnt(5)
	ds_store_b16 v186, v122
	s_waitcnt vmcnt(4)
	ds_store_b16 v187, v107
	s_waitcnt vmcnt(3)
	ds_store_b16 v188, v108
	s_waitcnt vmcnt(2)
	ds_store_b16 v189, v109
	s_waitcnt vmcnt(1)
	ds_store_b16 v190, v111
	s_waitcnt vmcnt(0)
	ds_store_b16 v191, v110
	v_add_nc_u32_e32 v65, 0, v163
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 391 32                        ; attention_backward.py:391:32
	ds_load_2addr_b32 v[231:232], v192 offset1:16
	ds_load_2addr_b32 v[233:234], v196 offset1:16
	ds_load_2addr_b32 v[235:236], v200 offset1:16
	ds_load_2addr_b32 v[237:238], v204 offset1:16
	ds_load_2addr_b32 v[251:252], v193 offset1:16
	ds_load_2addr_b32 v[249:250], v65 offset1:16
	ds_load_2addr_b32 v[253:254], v194 offset1:16
	ds_load_2addr_b32 v[121:122], v195 offset1:16
	ds_load_2addr_b32 v[107:108], v197 offset1:16
	ds_load_2addr_b32 v[109:110], v198 offset1:16
	ds_load_2addr_b32 v[111:112], v199 offset1:16
	ds_load_2addr_b32 v[150:151], v201 offset1:16
	ds_load_2addr_b32 v[152:153], v202 offset1:16
	ds_load_2addr_b32 v[154:155], v203 offset1:16
	ds_load_2addr_b32 v[156:157], v205 offset1:16
	ds_load_2addr_b32 v[247:248], v206 offset1:16
	v_mov_b32_e32 v143, v142
	v_mov_b32_e32 v65, v142
	v_dual_mov_b32 v67, v144 :: v_dual_mov_b32 v68, v145
	s_waitcnt lgkmcnt(15)
	v_mov_b16_e64 v239.h, v231.l
	s_waitcnt lgkmcnt(14)
	v_mov_b16_e64 v241.h, v233.l
	s_waitcnt lgkmcnt(13)
	v_mov_b16_e64 v243.h, v235.l
	s_waitcnt lgkmcnt(12)
	v_mov_b16_e64 v245.h, v237.l
	s_waitcnt lgkmcnt(11)
	v_mov_b16_e64 v240.l, v251.l
	s_waitcnt lgkmcnt(10)
	v_mov_b16_e64 v239.l, v249.l
	s_waitcnt lgkmcnt(9)
	v_mov_b16_e64 v240.h, v253.l
	s_waitcnt lgkmcnt(8)
	v_mov_b16_e64 v241.l, v121.l
	s_waitcnt lgkmcnt(7)
	v_mov_b16_e64 v242.l, v107.l
	s_waitcnt lgkmcnt(6)
	v_mov_b16_e64 v242.h, v109.l
	s_waitcnt lgkmcnt(5)
	v_mov_b16_e64 v243.l, v111.l
	s_waitcnt lgkmcnt(4)
	v_mov_b16_e64 v244.l, v150.l
	s_waitcnt lgkmcnt(3)
	v_mov_b16_e64 v244.h, v152.l
	s_waitcnt lgkmcnt(2)
	v_mov_b16_e64 v245.l, v154.l
	s_waitcnt lgkmcnt(1)
	v_mov_b16_e64 v246.l, v156.l
	s_waitcnt lgkmcnt(0)
	v_mov_b16_e64 v246.h, v247.l
	v_dual_mov_b32 v66, v143 :: v_dual_mov_b32 v69, v146
	v_dual_mov_b32 v70, v147 :: v_dual_mov_b32 v71, v148
	v_mov_b32_e32 v72, v149
	v_mov_b16_e64 v231.l, v249.h
	v_mov_b16_e64 v253.l, v251.h
	v_mov_b16_e64 v233.l, v121.h
	v_mov_b16_e32 v109.l, v107.h
	v_wmma_f32_16x16x16_bf16 v[65:72], v[239:246], v[25:32], v[65:72]
	v_mov_b16_e64 v239.l, v250.l
	v_mov_b16_e64 v239.h, v232.l
	v_mov_b16_e64 v240.l, v252.l
	v_mov_b16_e64 v240.h, v254.l
	v_mov_b16_e64 v241.l, v122.l
	v_mov_b16_e64 v241.h, v234.l
	v_mov_b16_e64 v242.l, v108.l
	v_mov_b16_e64 v242.h, v110.l
	v_mov_b16_e64 v243.l, v112.l
	v_mov_b16_e64 v243.h, v236.l
	v_mov_b16_e64 v244.l, v151.l
	v_mov_b16_e64 v244.h, v153.l
	v_mov_b16_e64 v245.l, v155.l
	v_mov_b16_e64 v245.h, v238.l
	v_mov_b16_e64 v246.l, v157.l
	v_mov_b16_e64 v246.h, v248.l
	v_mov_b16_e64 v235.l, v111.h
	v_mov_b16_e64 v152.l, v150.h
	v_mov_b16_e64 v237.l, v154.h
	v_mov_b16_e64 v247.l, v156.h
	v_wmma_f32_16x16x16_bf16 v[65:72], v[239:246], v[33:40], v[65:72]
	v_mov_b16_e64 v248.l, v157.h
	v_dual_mov_b32 v240, v231 :: v_dual_mov_b32 v241, v253
	v_mov_b32_e32 v242, v233
	v_dual_mov_b32 v243, v109 :: v_dual_mov_b32 v244, v235
	v_dual_mov_b32 v245, v152 :: v_dual_mov_b32 v246, v237
	v_mov_b16_e64 v254.l, v252.h
	v_mov_b16_e32 v110.l, v108.h
	v_mov_b16_e64 v153.l, v151.h
	v_mov_b32_e32 v239, v248
	v_wmma_f32_16x16x16_bf16 v[65:72], v[240:247], v[41:48], v[65:72]
	v_mov_b16_e64 v232.l, v250.h
	v_mov_b16_e64 v234.l, v122.h
	v_mov_b16_e64 v236.l, v112.h
	v_mov_b16_e64 v238.l, v155.h
	v_mov_b32_e32 v233, v254
	v_mov_b32_e32 v235, v110
	v_mov_b32_e32 v237, v153
	.loc	1 299 21                        ; attention_backward.py:299:21
	v_cvt_f32_i32_e32 v108, v74
	v_cvt_f32_i32_e32 v231, v75
	v_cvt_f32_i32_e32 v75, v76
	v_cvt_f32_i32_e32 v143, v78
	.loc	1 391 32                        ; attention_backward.py:391:32
	v_wmma_f32_16x16x16_bf16 v[65:72], v[232:239], v[49:56], v[65:72]
	.loc	1 299 21                        ; attention_backward.py:299:21
	v_cvt_f32_i32_e32 v78, v80
	v_cvt_f32_i32_e32 v107, v73
	v_cvt_f32_i32_e32 v73, v77
	v_mov_b32_e32 v150, v113
	.loc	1 396 43                        ; attention_backward.py:396:43
	v_sub_f32_e32 v74, v68, v160
	v_sub_f32_e32 v68, v69, v160
	v_bfe_i32 v69, v230, 0, 8
	v_sub_f32_e32 v76, v67, v160
	v_sub_f32_e32 v67, v70, v160
	v_sub_f32_e32 v80, v65, v160
	v_sub_f32_e32 v65, v71, v160
	v_mov_b16_e32 v70.l, v69.l
	v_sub_f32_e32 v109, v66, v160
	v_sub_f32_e32 v66, v72, v160
	.loc	1 309 31                        ; attention_backward.py:309:31
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 304 27                        ; attention_backward.py:304:27
	v_and_b32_e32 v71, 15, v70
	.loc	1 304 28 is_stmt 0              ; attention_backward.py:304:28
	v_and_b16 v69.l, v70.l, 15
	.loc	1 299 21 is_stmt 1              ; attention_backward.py:299:21
	v_mul_f32_e32 v75, v140, v75
	v_mul_f32_e32 v73, v140, v73
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 306 50                        ; attention_backward.py:306:50
	v_or_b32_e32 v72, -16, v71
	.loc	1 306 36 is_stmt 0              ; attention_backward.py:306:36
	v_cmp_lt_u16_e32 vcc_lo, 7, v69.l
	v_bfe_i32 v69, v229, 0, 8
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 306 27                        ; attention_backward.py:306:27
	v_cndmask_b32_e32 v71, v71, v72, vcc_lo
	v_mov_b16_e32 v72.l, v69.l
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 311 21 is_stmt 1              ; attention_backward.py:311:21
	v_cvt_f32_i32_e32 v71, v71
	.loc	1 304 28                        ; attention_backward.py:304:28
	v_and_b16 v69.l, v72.l, 15
	.loc	1 304 27 is_stmt 0              ; attention_backward.py:304:27
	v_and_b32_e32 v77, 15, v72
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 306 36 is_stmt 1              ; attention_backward.py:306:36
	v_cmp_lt_u16_e32 vcc_lo, 7, v69.l
	v_bfe_i32 v69, v224, 0, 8
	.loc	1 306 50 is_stmt 0              ; attention_backward.py:306:50
	v_or_b32_e32 v110, -16, v77
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_mov_b16_e32 v111.l, v69.l
	.loc	1 306 27                        ; attention_backward.py:306:27
	v_cndmask_b32_e32 v110, v77, v110, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 304 28 is_stmt 1              ; attention_backward.py:304:28
	v_and_b16 v69.l, v111.l, 15
	.loc	1 304 27 is_stmt 0              ; attention_backward.py:304:27
	v_and_b32_e32 v77, 15, v111
	.loc	1 311 21 is_stmt 1              ; attention_backward.py:311:21
	v_cvt_f32_i32_e32 v110, v110
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 306 36                        ; attention_backward.py:306:36
	v_cmp_lt_u16_e32 vcc_lo, 7, v69.l
	v_bfe_i32 v69, v223, 0, 8
	.loc	1 306 50 is_stmt 0              ; attention_backward.py:306:50
	v_or_b32_e32 v112, -16, v77
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b16_e32 v121.l, v69.l
	.loc	1 306 27                        ; attention_backward.py:306:27
	v_dual_cndmask_b32 v112, v77, v112 :: v_dual_and_b32 v77, 15, v121
	.loc	1 304 28 is_stmt 1              ; attention_backward.py:304:28
	v_and_b16 v69.l, v121.l, 15
	.loc	1 290 33                        ; attention_backward.py:290:33
	v_mov_b16_e64 v121.h, v227.l
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 311 21                        ; attention_backward.py:311:21
	v_cvt_f32_i32_e32 v112, v112
	.loc	1 306 50                        ; attention_backward.py:306:50
	v_or_b32_e32 v122, -16, v77
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 306 36 is_stmt 0              ; attention_backward.py:306:36
	v_cmp_lt_u16_e32 vcc_lo, 7, v69.l
	.loc	1 305 30 is_stmt 1              ; attention_backward.py:305:30
	v_lshrrev_b16 v69.l, 4, v70.l
	.loc	1 306 27                        ; attention_backward.py:306:27
	v_cndmask_b32_e32 v122, v77, v122, vcc_lo
	.loc	1 305 28                        ; attention_backward.py:305:28
	v_mov_b16_e32 v77.l, 0
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_4) | instid1(VALU_DEP_3)
	.loc	1 305 30 is_stmt 0              ; attention_backward.py:305:30
	v_and_b16 v69.l, v69.l, 15
	.loc	1 307 37 is_stmt 1              ; attention_backward.py:307:37
	v_cmp_gt_i16_e32 vcc_lo, 0, v70.l
	.loc	1 290 33                        ; attention_backward.py:290:33
	v_mov_b16_e64 v77.h, v228.l
	.loc	1 311 21                        ; attention_backward.py:311:21
	v_cvt_f32_i32_e32 v122, v122
	.loc	1 305 28                        ; attention_backward.py:305:28
	v_mov_b16_e32 v69.h, v77.l
	.loc	1 311 21                        ; attention_backward.py:311:21
	v_mul_f32_e32 v110, v77, v110
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 307 52                        ; attention_backward.py:307:52
	v_or_b32_e32 v144, -16, v69
	.loc	1 309 31                        ; attention_backward.py:309:31
	v_cndmask_b32_e64 v110, 0, v110, s0
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	.loc	1 307 28                        ; attention_backward.py:307:28
	v_cndmask_b32_e32 v70, v69, v144, vcc_lo
	.loc	1 305 30                        ; attention_backward.py:305:30
	v_lshrrev_b16 v69.l, 4, v72.l
	.loc	1 307 37                        ; attention_backward.py:307:37
	v_cmp_gt_i16_e32 vcc_lo, 0, v72.l
	.loc	1 309 31                        ; attention_backward.py:309:31
	v_cmp_o_f32_e64 s15, v110, v110
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 311 21                        ; attention_backward.py:311:21
	v_cvt_f32_i32_e32 v70, v70
	.loc	1 305 30                        ; attention_backward.py:305:30
	v_and_b16 v69.l, v69.l, 15
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 307 52                        ; attention_backward.py:307:52
	v_or_b32_e32 v144, -16, v69
	.loc	1 307 28 is_stmt 0              ; attention_backward.py:307:28
	v_cndmask_b32_e32 v72, v69, v144, vcc_lo
	.loc	1 305 30 is_stmt 1              ; attention_backward.py:305:30
	v_lshrrev_b16 v69.l, 4, v111.l
	.loc	1 307 37                        ; attention_backward.py:307:37
	v_cmp_gt_i16_e32 vcc_lo, 0, v111.l
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 311 21                        ; attention_backward.py:311:21
	v_cvt_f32_i32_e32 v72, v72
	.loc	1 305 30                        ; attention_backward.py:305:30
	v_and_b16 v69.l, v69.l, 15
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 311 21                        ; attention_backward.py:311:21
	v_mul_f32_e32 v72, v77, v72
	.loc	1 307 52                        ; attention_backward.py:307:52
	v_or_b32_e32 v144, -16, v69
	.loc	1 290 33                        ; attention_backward.py:290:33
	v_mov_b16_e64 v77.h, v207.l
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 309 31                        ; attention_backward.py:309:31
	v_cndmask_b32_e64 v72, 0, v72, s1
	.loc	1 307 28                        ; attention_backward.py:307:28
	v_cndmask_b32_e32 v111, v69, v144, vcc_lo
	.loc	1 305 30                        ; attention_backward.py:305:30
	v_lshrrev_b16 v69.l, 4, v121.l
	.loc	1 307 37                        ; attention_backward.py:307:37
	v_cmp_gt_i16_e32 vcc_lo, 0, v121.l
	.loc	1 290 33                        ; attention_backward.py:290:33
	v_mov_b16_e32 v121.l, v77.l
	.loc	1 309 31                        ; attention_backward.py:309:31
	v_cmp_o_f32_e64 s19, v72, v72
	.loc	1 311 21                        ; attention_backward.py:311:21
	v_cvt_f32_i32_e32 v111, v111
	.loc	1 305 30                        ; attention_backward.py:305:30
	v_and_b16 v69.l, v69.l, 15
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	.loc	1 311 21                        ; attention_backward.py:311:21
	v_mul_f32_e32 v71, v71, v121
	v_mul_f32_e32 v70, v70, v121
	.loc	1 290 33                        ; attention_backward.py:290:33
	v_mov_b16_e64 v121.h, v226.l
	.loc	1 307 52                        ; attention_backward.py:307:52
	v_or_b32_e32 v144, -16, v69
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 309 31                        ; attention_backward.py:309:31
	v_cndmask_b32_e64 v71, 0, v71, s0
	v_cndmask_b32_e64 v70, 0, v70, s1
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	.loc	1 311 21                        ; attention_backward.py:311:21
	v_dual_mul_f32 v112, v112, v121 :: v_dual_cndmask_b32 v69, v69, v144
	v_mul_f32_e32 v111, v111, v121
	.loc	1 290 33                        ; attention_backward.py:290:33
	v_mov_b16_e64 v121.h, v225.l
	.loc	1 309 31                        ; attention_backward.py:309:31
	v_cmp_o_f32_e32 vcc_lo, v71, v71
	v_cndmask_b32_e64 v112, 0, v112, s0
	.loc	1 311 21                        ; attention_backward.py:311:21
	v_cvt_f32_i32_e32 v69, v69
	.loc	1 309 31                        ; attention_backward.py:309:31
	v_cndmask_b32_e64 v111, 0, v111, s1
	.loc	1 311 21                        ; attention_backward.py:311:21
	v_mul_f32_e32 v122, v122, v121
	.loc	1 309 31                        ; attention_backward.py:309:31
	v_cmp_o_f32_e64 s16, v70, v70
	v_cmp_o_f32_e64 s13, v112, v112
	.loc	1 311 21                        ; attention_backward.py:311:21
	v_mul_f32_e32 v69, v69, v121
	.loc	1 309 31                        ; attention_backward.py:309:31
	v_bfe_u32 v121, v71, 16, 1
	v_cmp_o_f32_e64 s17, v111, v111
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cndmask_b32_e64 v69, 0, v69, s1
	v_add3_u32 v71, v71, v121, 0x7fff
	v_bfe_u32 v121, v112, 16, 1
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cmp_o_f32_e64 s18, v69, v69
	v_add3_u32 v112, v112, v121, 0x7fff
	v_cndmask_b32_e64 v121, 0, v122, s0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b16 v71.l, 0x7fff, v112.h, s13
	v_bfe_u32 v122, v121, 16, 1
	v_cmp_o_f32_e64 s14, v121, v121
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_add3_u32 v121, v121, v122, 0x7fff
	v_mov_b16_e32 v122.h, v77.l
	v_mov_b16_e32 v122.l, v110.h
	v_and_b32_e32 v122, 1, v122
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add3_u32 v110, v110, v122, 0x7fff
	v_bfe_u32 v122, v70, 16, 1
	v_add3_u32 v70, v70, v122, 0x7fff
	v_bfe_u32 v122, v111, 16, 1
	v_cndmask_b16 v70.l, 0x7fff, v71.h, vcc_lo
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cndmask_b16 v70.h, 0x7fff, v70.h, s16
	v_add3_u32 v111, v111, v122, 0x7fff
	v_bfe_u32 v122, v69, 16, 1
	v_cndmask_b16 v111.l, 0x7fff, v121.h, s14
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cndmask_b16 v71.h, 0x7fff, v111.h, s17
	v_add3_u32 v69, v69, v122, 0x7fff
	v_mov_b16_e32 v122.h, v77.l
	v_mov_b16_e32 v122.l, v72.h
	v_cndmask_b16 v69.l, 0x7fff, v110.h, s15
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cndmask_b16 v111.h, 0x7fff, v69.h, s18
	v_and_b32_e32 v122, 1, v122
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add3_u32 v72, v72, v122, 0x7fff
	v_cndmask_b16 v69.h, 0x7fff, v72.h, s19
	v_add_nc_u32_e32 v72, v159, v150
	ds_store_2addr_stride64_b32 v72, v69, v70 offset1:1
	ds_store_2addr_stride64_b32 v72, v71, v111 offset0:2 offset1:3
	v_bfe_i32 v69, v220, 0, 8
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b16_e32 v70.l, v69.l
	.loc	1 304 27                        ; attention_backward.py:304:27
	v_and_b32_e32 v110, 15, v70
	.loc	1 304 28 is_stmt 0              ; attention_backward.py:304:28
	v_and_b16 v69.l, v70.l, 15
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 306 50 is_stmt 1              ; attention_backward.py:306:50
	v_or_b32_e32 v112, -16, v110
	.loc	1 306 36 is_stmt 0              ; attention_backward.py:306:36
	v_cmp_lt_u16_e32 vcc_lo, 7, v69.l
	v_bfe_i32 v69, v219, 0, 8
	.loc	1 305 28 is_stmt 1              ; attention_backward.py:305:28
	v_mov_b16_e32 v69.h, v77.l
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 306 27                        ; attention_backward.py:306:27
	v_cndmask_b32_e32 v110, v110, v112, vcc_lo
	v_mov_b16_e32 v112.l, v69.l
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 311 21                        ; attention_backward.py:311:21
	v_cvt_f32_i32_e32 v110, v110
	.loc	1 304 28                        ; attention_backward.py:304:28
	v_and_b16 v69.l, v112.l, 15
	.loc	1 304 27 is_stmt 0              ; attention_backward.py:304:27
	v_and_b32_e32 v121, 15, v112
	.loc	1 290 33 is_stmt 1              ; attention_backward.py:290:33
	v_mov_b16_e64 v112.h, v222.l
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 306 36                        ; attention_backward.py:306:36
	v_cmp_lt_u16_e32 vcc_lo, 7, v69.l
	.loc	1 305 30                        ; attention_backward.py:305:30
	v_lshrrev_b16 v69.l, 4, v70.l
	.loc	1 306 50                        ; attention_backward.py:306:50
	v_or_b32_e32 v122, -16, v121
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 305 30                        ; attention_backward.py:305:30
	v_and_b16 v69.l, v69.l, 15
	.loc	1 306 27                        ; attention_backward.py:306:27
	v_cndmask_b32_e32 v121, v121, v122, vcc_lo
	.loc	1 307 37                        ; attention_backward.py:307:37
	v_cmp_gt_i16_e32 vcc_lo, 0, v70.l
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 307 52 is_stmt 0              ; attention_backward.py:307:52
	v_or_b32_e32 v122, -16, v69
	.loc	1 311 21 is_stmt 1              ; attention_backward.py:311:21
	v_cvt_f32_i32_e32 v121, v121
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	.loc	1 307 28                        ; attention_backward.py:307:28
	v_cndmask_b32_e32 v70, v69, v122, vcc_lo
	.loc	1 305 30                        ; attention_backward.py:305:30
	v_lshrrev_b16 v69.l, 4, v112.l
	.loc	1 307 37                        ; attention_backward.py:307:37
	v_cmp_gt_i16_e32 vcc_lo, 0, v112.l
	.loc	1 290 33                        ; attention_backward.py:290:33
	v_mov_b16_e32 v112.l, v77.l
	.loc	1 311 21                        ; attention_backward.py:311:21
	v_cvt_f32_i32_e32 v70, v70
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 305 30                        ; attention_backward.py:305:30
	v_and_b16 v69.l, v69.l, 15
	.loc	1 311 21                        ; attention_backward.py:311:21
	v_mul_f32_e32 v110, v110, v112
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mul_f32_e32 v70, v70, v112
	.loc	1 307 52                        ; attention_backward.py:307:52
	v_or_b32_e32 v122, -16, v69
	.loc	1 290 33                        ; attention_backward.py:290:33
	v_mov_b16_e64 v112.h, v221.l
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 309 31                        ; attention_backward.py:309:31
	v_cndmask_b32_e64 v110, 0, v110, s0
	v_cndmask_b32_e64 v70, 0, v70, s1
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 307 28                        ; attention_backward.py:307:28
	v_cndmask_b32_e32 v69, v69, v122, vcc_lo
	.loc	1 311 21                        ; attention_backward.py:311:21
	v_mul_f32_e32 v121, v121, v112
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 309 31                        ; attention_backward.py:309:31
	v_cmp_o_f32_e32 vcc_lo, v110, v110
	v_cmp_o_f32_e64 s13, v70, v70
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 311 21                        ; attention_backward.py:311:21
	v_cvt_f32_i32_e32 v69, v69
	v_mul_f32_e32 v69, v69, v112
	.loc	1 309 31                        ; attention_backward.py:309:31
	v_bfe_u32 v112, v110, 16, 1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b32_e64 v69, 0, v69, s1
	v_add3_u32 v112, v110, v112, 0x7fff
	v_bfe_u32 v110, v70, 16, 1
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cmp_o_f32_e64 s15, v69, v69
	v_add3_u32 v110, v70, v110, 0x7fff
	v_cndmask_b32_e64 v70, 0, v121, s0
	v_cndmask_b16 v110.l, 0x7fff, v112.h, vcc_lo
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cndmask_b16 v110.h, 0x7fff, v110.h, s13
	v_bfe_u32 v121, v70, 16, 1
	v_cmp_o_f32_e64 s14, v70, v70
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add3_u32 v121, v70, v121, 0x7fff
	v_bfe_u32 v70, v69, 16, 1
	v_add3_u32 v70, v69, v70, 0x7fff
	v_bfe_i32 v69, v216, 0, 8
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cndmask_b16 v70.l, 0x7fff, v121.h, s14
	v_cndmask_b16 v70.h, 0x7fff, v70.h, s15
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b16_e32 v71.l, v69.l
	.loc	1 304 27                        ; attention_backward.py:304:27
	v_and_b32_e32 v111, 15, v71
	.loc	1 304 28 is_stmt 0              ; attention_backward.py:304:28
	v_and_b16 v69.l, v71.l, 15
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 306 50 is_stmt 1              ; attention_backward.py:306:50
	v_or_b32_e32 v112, -16, v111
	.loc	1 306 36 is_stmt 0              ; attention_backward.py:306:36
	v_cmp_lt_u16_e32 vcc_lo, 7, v69.l
	v_bfe_i32 v69, v213, 0, 8
	.loc	1 305 28 is_stmt 1              ; attention_backward.py:305:28
	v_mov_b16_e32 v69.h, v77.l
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 306 27                        ; attention_backward.py:306:27
	v_cndmask_b32_e32 v111, v111, v112, vcc_lo
	v_mov_b16_e32 v112.l, v69.l
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 311 21                        ; attention_backward.py:311:21
	v_cvt_f32_i32_e32 v111, v111
	.loc	1 304 28                        ; attention_backward.py:304:28
	v_and_b16 v69.l, v112.l, 15
	.loc	1 304 27 is_stmt 0              ; attention_backward.py:304:27
	v_and_b32_e32 v121, 15, v112
	.loc	1 290 33 is_stmt 1              ; attention_backward.py:290:33
	v_mov_b16_e64 v112.h, v218.l
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 306 36                        ; attention_backward.py:306:36
	v_cmp_lt_u16_e32 vcc_lo, 7, v69.l
	.loc	1 305 30                        ; attention_backward.py:305:30
	v_lshrrev_b16 v69.l, 4, v71.l
	.loc	1 306 50                        ; attention_backward.py:306:50
	v_or_b32_e32 v122, -16, v121
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 305 30                        ; attention_backward.py:305:30
	v_and_b16 v69.l, v69.l, 15
	.loc	1 306 27                        ; attention_backward.py:306:27
	v_cndmask_b32_e32 v121, v121, v122, vcc_lo
	.loc	1 307 37                        ; attention_backward.py:307:37
	v_cmp_gt_i16_e32 vcc_lo, 0, v71.l
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 307 52 is_stmt 0              ; attention_backward.py:307:52
	v_or_b32_e32 v122, -16, v69
	.loc	1 311 21 is_stmt 1              ; attention_backward.py:311:21
	v_cvt_f32_i32_e32 v121, v121
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	.loc	1 307 28                        ; attention_backward.py:307:28
	v_cndmask_b32_e32 v71, v69, v122, vcc_lo
	.loc	1 305 30                        ; attention_backward.py:305:30
	v_lshrrev_b16 v69.l, 4, v112.l
	.loc	1 307 37                        ; attention_backward.py:307:37
	v_cmp_gt_i16_e32 vcc_lo, 0, v112.l
	.loc	1 290 33                        ; attention_backward.py:290:33
	v_mov_b16_e32 v112.l, v77.l
	.loc	1 311 21                        ; attention_backward.py:311:21
	v_cvt_f32_i32_e32 v71, v71
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 305 30                        ; attention_backward.py:305:30
	v_and_b16 v69.l, v69.l, 15
	.loc	1 311 21                        ; attention_backward.py:311:21
	v_mul_f32_e32 v111, v111, v112
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mul_f32_e32 v71, v71, v112
	.loc	1 307 52                        ; attention_backward.py:307:52
	v_or_b32_e32 v122, -16, v69
	.loc	1 290 33                        ; attention_backward.py:290:33
	v_mov_b16_e64 v112.h, v217.l
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 309 31                        ; attention_backward.py:309:31
	v_cndmask_b32_e64 v111, 0, v111, s0
	v_cndmask_b32_e64 v71, 0, v71, s1
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 307 28                        ; attention_backward.py:307:28
	v_cndmask_b32_e32 v69, v69, v122, vcc_lo
	.loc	1 311 21                        ; attention_backward.py:311:21
	v_mul_f32_e32 v121, v121, v112
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 309 31                        ; attention_backward.py:309:31
	v_cmp_o_f32_e32 vcc_lo, v111, v111
	v_cmp_o_f32_e64 s13, v71, v71
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 311 21                        ; attention_backward.py:311:21
	v_cvt_f32_i32_e32 v69, v69
	v_mul_f32_e32 v69, v69, v112
	.loc	1 309 31                        ; attention_backward.py:309:31
	v_bfe_u32 v112, v111, 16, 1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b32_e64 v69, 0, v69, s1
	v_add3_u32 v112, v111, v112, 0x7fff
	v_bfe_u32 v111, v71, 16, 1
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cmp_o_f32_e64 s15, v69, v69
	v_add3_u32 v111, v71, v111, 0x7fff
	v_cndmask_b32_e64 v71, 0, v121, s0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_bfe_u32 v121, v71, 16, 1
	v_cmp_o_f32_e64 s14, v71, v71
	v_add3_u32 v121, v71, v121, 0x7fff
	v_bfe_u32 v71, v69, 16, 1
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_add3_u32 v71, v69, v71, 0x7fff
	v_cndmask_b16 v69.l, 0x7fff, v112.h, vcc_lo
	v_cndmask_b16 v69.h, 0x7fff, v111.h, s13
	v_cndmask_b16 v71.l, 0x7fff, v121.h, s14
	v_cndmask_b16 v71.h, 0x7fff, v71.h, s15
	ds_store_2addr_stride64_b32 v72, v110, v70 offset0:4 offset1:5
	ds_store_2addr_stride64_b32 v72, v69, v71 offset0:6 offset1:7
	.loc	1 290 33                        ; attention_backward.py:290:33
	v_mov_b16_e64 v69.h, v215.l
	v_mov_b16_e32 v69.l, v77.l
	.loc	1 299 21                        ; attention_backward.py:299:21
	v_mul_f32_e32 v70, v140, v107
	v_mul_f32_e32 v71, v140, v108
	v_mul_f32_e32 v72, v140, v231
	.loc	1 309 31                        ; attention_backward.py:309:31
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 345 58                        ; attention_backward.py:345:58
	v_fma_f32 v69, v70, v69, -v174
	.loc	1 290 33                        ; attention_backward.py:290:33
	v_mov_b16_e64 v70.h, v214.l
	v_mov_b16_e32 v70.l, v77.l
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 345 58                        ; attention_backward.py:345:58
	v_fma_f32 v70, v71, v70, -v174
	.loc	1 345 45 is_stmt 0              ; attention_backward.py:345:45
	v_exp_f32_e32 v71, v69
	.loc	1 340 21 is_stmt 1              ; attention_backward.py:340:21
	v_and_b16 v69.l, 1, v207.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 345 45                        ; attention_backward.py:345:45
	v_exp_f32_e32 v70, v70
	.loc	1 340 21                        ; attention_backward.py:340:21
	v_cmp_eq_u16_e32 vcc_lo, 1, v69.l
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 345 29                        ; attention_backward.py:345:29
	v_cndmask_b32_e32 v69, 0, v71, vcc_lo
	.loc	1 396 26                        ; attention_backward.py:396:26
	v_mul_f32_e32 v71, v69, v80
	.loc	1 340 21                        ; attention_backward.py:340:21
	v_and_b16 v69.l, 1, v208.h
	s_delay_alu instid0(VALU_DEP_1)
	v_cmp_eq_u16_e32 vcc_lo, 1, v69.l
	s_delay_alu instid0(TRANS32_DEP_1) | instid1(VALU_DEP_3)
	.loc	1 345 29                        ; attention_backward.py:345:29
	v_dual_cndmask_b32 v69, 0, v70 :: v_dual_mul_f32 v70, s48, v71
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 396 26                        ; attention_backward.py:396:26
	v_mul_f32_e32 v69, v69, v109
	.loc	1 397 33                        ; attention_backward.py:397:33
	v_bfe_u32 v71, v70, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v70, v70
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 397 34 is_stmt 0              ; attention_backward.py:397:34
	v_mul_f32_e32 v69, s48, v69
	.loc	1 397 33                        ; attention_backward.py:397:33
	v_add3_u32 v71, v70, v71, 0x7fff
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_bfe_u32 v70, v69, 16, 1
	v_cmp_o_f32_e64 s13, v69, v69
	v_add3_u32 v70, v69, v70, 0x7fff
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b16 v70.l, 0x7fff, v71.h, vcc_lo
	v_cndmask_b16 v70.h, 0x7fff, v70.h, s13
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_permlanex16_b32 v71, v70, s50, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v69, v71, v70, v164
	v_perm_b32 v70, v71, v70, v165
	.loc	1 290 33 is_stmt 1              ; attention_backward.py:290:33
	v_mov_b16_e64 v71.h, v212.l
	v_mov_b16_e32 v71.l, v77.l
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 345 58                        ; attention_backward.py:345:58
	v_fma_f32 v71, v72, v71, -v174
	.loc	1 290 33                        ; attention_backward.py:290:33
	v_mov_b16_e64 v72.h, v211.l
	v_mov_b16_e32 v72.l, v77.l
	.loc	1 345 58                        ; attention_backward.py:345:58
	v_fma_f32 v72, v75, v72, -v174
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 345 45 is_stmt 0              ; attention_backward.py:345:45
	v_exp_f32_e32 v75, v71
	.loc	1 340 21 is_stmt 1              ; attention_backward.py:340:21
	v_and_b16 v71.l, 1, v83.h
	.loc	1 345 45                        ; attention_backward.py:345:45
	v_exp_f32_e32 v72, v72
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	.loc	1 340 21                        ; attention_backward.py:340:21
	v_cmp_eq_u16_e32 vcc_lo, 1, v71.l
	.loc	1 345 29                        ; attention_backward.py:345:29
	v_cndmask_b32_e32 v71, 0, v75, vcc_lo
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 396 26                        ; attention_backward.py:396:26
	v_mul_f32_e32 v75, v71, v76
	.loc	1 340 21                        ; attention_backward.py:340:21
	v_and_b16 v71.l, 1, v83.l
	v_cmp_eq_u16_e32 vcc_lo, 1, v71.l
	s_delay_alu instid0(TRANS32_DEP_1) | instid1(VALU_DEP_3)
	.loc	1 345 29                        ; attention_backward.py:345:29
	v_dual_cndmask_b32 v71, 0, v72 :: v_dual_mul_f32 v72, s48, v75
	.loc	1 299 21                        ; attention_backward.py:299:21
	v_mul_f32_e32 v75, v140, v143
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 396 26                        ; attention_backward.py:396:26
	v_mul_f32_e32 v71, v71, v74
	.loc	1 397 33                        ; attention_backward.py:397:33
	v_bfe_u32 v74, v72, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v72, v72
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 397 34 is_stmt 0              ; attention_backward.py:397:34
	v_mul_f32_e32 v71, s48, v71
	.loc	1 397 33                        ; attention_backward.py:397:33
	v_add3_u32 v74, v72, v74, 0x7fff
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_bfe_u32 v72, v71, 16, 1
	v_cmp_o_f32_e64 s13, v71, v71
	v_add3_u32 v72, v71, v72, 0x7fff
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b16 v72.l, 0x7fff, v74.h, vcc_lo
	v_cndmask_b16 v72.h, 0x7fff, v72.h, s13
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_permlanex16_b32 v74, v72, s50, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v71, v74, v72, v164
	v_perm_b32 v72, v74, v72, v165
	.loc	1 290 33 is_stmt 1              ; attention_backward.py:290:33
	v_mov_b16_e64 v74.h, v210.l
	v_mov_b16_e32 v74.l, v77.l
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 345 58                        ; attention_backward.py:345:58
	v_fma_f32 v73, v73, v74, -v174
	.loc	1 290 33                        ; attention_backward.py:290:33
	v_mov_b16_e64 v74.h, v209.l
	.loc	1 345 58                        ; attention_backward.py:345:58
	v_fma_f32 v74, v75, v74, -v174
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 345 45 is_stmt 0              ; attention_backward.py:345:45
	v_exp_f32_e32 v75, v73
	.loc	1 340 21 is_stmt 1              ; attention_backward.py:340:21
	v_and_b16 v73.l, 1, v82.l
	.loc	1 345 45                        ; attention_backward.py:345:45
	v_exp_f32_e32 v74, v74
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	.loc	1 340 21                        ; attention_backward.py:340:21
	v_cmp_eq_u16_e32 vcc_lo, 1, v73.l
	.loc	1 345 29                        ; attention_backward.py:345:29
	v_cndmask_b32_e32 v73, 0, v75, vcc_lo
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 396 26                        ; attention_backward.py:396:26
	v_mul_f32_e32 v73, v73, v68
	.loc	1 340 21                        ; attention_backward.py:340:21
	v_and_b16 v68.l, 1, v82.h
	v_cmp_eq_u16_e32 vcc_lo, 1, v68.l
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 345 29                        ; attention_backward.py:345:29
	v_cndmask_b32_e32 v68, 0, v74, vcc_lo
	.loc	1 396 26                        ; attention_backward.py:396:26
	v_dual_mul_f32 v67, v68, v67 :: v_dual_mul_f32 v68, s48, v73
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 397 34                        ; attention_backward.py:397:34
	v_mul_f32_e32 v67, s48, v67
	.loc	1 397 33 is_stmt 0              ; attention_backward.py:397:33
	v_bfe_u32 v73, v68, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v68, v68
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cmp_o_f32_e64 s13, v67, v67
	v_add3_u32 v73, v68, v73, 0x7fff
	v_bfe_u32 v68, v67, 16, 1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_add3_u32 v68, v67, v68, 0x7fff
	v_cndmask_b16 v67.l, 0x7fff, v73.h, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_cndmask_b16 v67.h, 0x7fff, v68.h, s13
	v_permlanex16_b32 v68, v67, s50, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1)
	v_perm_b32 v73, v68, v67, v164
	v_perm_b32 v74, v68, v67, v165
	.loc	1 290 33 is_stmt 1              ; attention_backward.py:290:33
	v_mov_b16_e64 v67.h, v208.l
	.loc	1 309 31                        ; attention_backward.py:309:31
	ds_load_u16_d16 v209, v166 offset:608
	ds_load_u16_d16 v208, v166 offset:352
	ds_load_u16_d16 v217, v166 offset:512
	ds_load_u16_d16 v218, v166 offset:768
	ds_load_u16_d16 v216, v166 offset:256
	ds_load_u16_d16 v225, v166 offset:576
	ds_load_u16_d16 v226, v166 offset:832
	ds_load_u16_d16 v219, v166 offset:1024
	ds_load_u16_d16 v227, v166 offset:1088
	ds_load_u16_d16 v220, v166 offset:1280
	ds_load_u16_d16 v228, v166 offset:1344
	ds_load_u16_d16 v221, v166 offset:1536
	ds_load_u16_d16 v229, v166 offset:1600
	ds_load_u16_d16 v222, v166 offset:1792
	ds_load_u16_d16 v215, v166
	ds_load_u16_d16 v232, v166 offset:288
	ds_load_u16_d16 v231, v166 offset:32
	ds_load_u16_d16 v223, v166 offset:64
	ds_load_u16_d16 v224, v166 offset:320
	.loc	1 290 33                        ; attention_backward.py:290:33
	v_mov_b16_e32 v67.l, v77.l
	.loc	1 299 21                        ; attention_backward.py:299:21
	v_mul_f32_e32 v68, v140, v79
	.loc	1 309 31                        ; attention_backward.py:309:31
	s_waitcnt lgkmcnt(17)
	ds_load_u16_d16_hi v208, v166 offset:480
	ds_load_u16_d16 v207, v166 offset:96
	s_waitcnt lgkmcnt(18)
	ds_load_u16_d16_hi v217, v166 offset:640
	s_waitcnt lgkmcnt(17)
	ds_load_u16_d16_hi v216, v166 offset:384
	s_waitcnt lgkmcnt(17)
	ds_load_u16_d16_hi v225, v166 offset:704
	ds_load_u16_d16_hi v218, v166 offset:896
	s_waitcnt lgkmcnt(18)
	ds_load_u16_d16_hi v226, v166 offset:960
	s_waitcnt lgkmcnt(18)
	ds_load_u16_d16_hi v219, v166 offset:1152
	s_waitcnt lgkmcnt(18)
	ds_load_u16_d16_hi v227, v166 offset:1216
	s_waitcnt lgkmcnt(18)
	ds_load_u16_d16_hi v220, v166 offset:1408
	s_waitcnt lgkmcnt(18)
	ds_load_u16_d16_hi v228, v166 offset:1472
	s_waitcnt lgkmcnt(18)
	ds_load_u16_d16_hi v221, v166 offset:1664
	ds_load_u16_d16 v230, v166 offset:1856
	s_waitcnt lgkmcnt(19)
	ds_load_u16_d16_hi v229, v166 offset:1728
	s_waitcnt lgkmcnt(19)
	ds_load_u16_d16_hi v222, v166 offset:1920
	s_waitcnt lgkmcnt(19)
	ds_load_u16_d16_hi v215, v166 offset:128
	s_waitcnt lgkmcnt(18)
	ds_load_u16_d16_hi v231, v166 offset:160
	s_waitcnt lgkmcnt(18)
	ds_load_u16_d16_hi v223, v166 offset:192
	.loc	1 345 58                        ; attention_backward.py:345:58
	v_fma_f32 v67, v68, v67, -v174
	.loc	1 299 21                        ; attention_backward.py:299:21
	v_mul_f32_e32 v68, v140, v78
	.loc	1 309 31                        ; attention_backward.py:309:31
	s_waitcnt lgkmcnt(16)
	ds_load_u16_d16_hi v207, v166 offset:224
	ds_load_u16_d16 v233, v166 offset:544
	ds_load_u16_d16_hi v232, v166 offset:416
	ds_load_u16_d16_hi v224, v166 offset:448
	ds_load_u16_d16 v210, v166 offset:864
	ds_load_u16_d16 v211, v166 offset:1120
	ds_load_u16_d16 v212, v166 offset:1376
	ds_load_u16_d16 v213, v166 offset:1632
	s_waitcnt lgkmcnt(13)
	ds_load_u16_d16_hi v230, v166 offset:1984
	ds_load_u16_d16 v214, v166 offset:1888
	.loc	1 345 45                        ; attention_backward.py:345:45
	v_exp_f32_e32 v75, v67
	.loc	1 340 21                        ; attention_backward.py:340:21
	v_and_b16 v67.l, 1, v81.h
	.loc	1 345 58                        ; attention_backward.py:345:58
	v_fma_f32 v68, v68, v77, -v174
	.loc	1 309 31                        ; attention_backward.py:309:31
	ds_load_u16_d16 v234, v166 offset:800
	ds_load_u16_d16 v235, v166 offset:1056
	ds_load_u16_d16 v236, v166 offset:1312
	ds_load_u16_d16 v237, v166 offset:1568
	ds_load_u16_d16 v238, v166 offset:1824
	s_waitcnt lgkmcnt(13)
	ds_load_u16_d16_hi v233, v166 offset:672
	ds_load_u16_d16_hi v209, v166 offset:736
	.loc	1 340 21                        ; attention_backward.py:340:21
	v_cmp_eq_u16_e32 vcc_lo, 1, v67.l
	.loc	1 345 45                        ; attention_backward.py:345:45
	v_exp_f32_e32 v68, v68
	.loc	1 309 31                        ; attention_backward.py:309:31
	s_waitcnt lgkmcnt(6)
	ds_load_u16_d16_hi v234, v166 offset:928
	ds_load_u16_d16_hi v210, v166 offset:992
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v235, v166 offset:1184
	ds_load_u16_d16_hi v211, v166 offset:1248
	s_waitcnt lgkmcnt(8)
	ds_load_u16_d16_hi v236, v166 offset:1440
	ds_load_u16_d16_hi v212, v166 offset:1504
	s_waitcnt lgkmcnt(9)
	ds_load_u16_d16_hi v237, v166 offset:1696
	ds_load_u16_d16_hi v213, v166 offset:1760
	s_waitcnt lgkmcnt(10)
	ds_load_u16_d16_hi v238, v166 offset:1952
	ds_load_u16_d16_hi v214, v166 offset:2016
	.loc	1 345 29                        ; attention_backward.py:345:29
	v_cndmask_b32_e32 v67, 0, v75, vcc_lo
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 396 26                        ; attention_backward.py:396:26
	v_mul_f32_e32 v67, v67, v65
	.loc	1 340 21                        ; attention_backward.py:340:21
	v_and_b16 v65.l, 1, v81.l
	v_cmp_eq_u16_e32 vcc_lo, 1, v65.l
	.loc	1 345 29                        ; attention_backward.py:345:29
	v_cndmask_b32_e32 v65, 0, v68, vcc_lo
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 396 26                        ; attention_backward.py:396:26
	v_dual_mul_f32 v65, v65, v66 :: v_dual_mul_f32 v66, s48, v67
	.loc	1 397 34                        ; attention_backward.py:397:34
	v_mul_f32_e32 v65, s48, v65
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 397 33 is_stmt 0              ; attention_backward.py:397:33
	v_bfe_u32 v67, v66, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v66, v66
	v_cmp_o_f32_e64 s13, v65, v65
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add3_u32 v67, v66, v67, 0x7fff
	v_bfe_u32 v66, v65, 16, 1
	v_add3_u32 v66, v65, v66, 0x7fff
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b16 v65.l, 0x7fff, v67.h, vcc_lo
	v_cndmask_b16 v65.h, 0x7fff, v66.h, s13
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_permlanex16_b32 v66, v65, s50, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v75, v66, v65, v164
	v_perm_b32 v76, v66, v65, v165
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 398 31 is_stmt 1              ; attention_backward.py:398:31
	v_wmma_f32_16x16x16_bf16 v[57:64], v[215:222], v[69:76], v[57:64]
	s_waitcnt lgkmcnt(1)
	v_wmma_f32_16x16x16_bf16 v[17:24], v[231:238], v[69:76], v[17:24]
	v_wmma_f32_16x16x16_bf16 v[9:16], v[223:230], v[69:76], v[9:16]
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[1:8], v[207:214], v[69:76], v[1:8]
	s_cbranch_scc0 .LBB0_52
.LBB0_32:                               ; =>This Inner Loop Header: Depth=1
	.loc	1 271 27                        ; attention_backward.py:271:27
	v_or_b32_e32 v66, 2, v106
	v_or_b32_e32 v73, 14, v106
	v_or_b32_e32 v67, 4, v106
	v_or_b32_e32 v65, s28, v106
	v_or_b32_e32 v68, 6, v106
	v_or_b32_e32 v69, 8, v106
	v_or_b32_e32 v71, 10, v106
	v_or_b32_e32 v72, 12, v106
	v_or_b32_e32 v66, s28, v66
	v_or_b32_e32 v73, s28, v73
	.loc	1 275 21                        ; attention_backward.py:275:21
	s_add_i32 s51, s28, s29
	.loc	1 271 27                        ; attention_backward.py:271:27
	v_or_b32_e32 v67, s28, v67
	v_or_b32_e32 v68, s28, v68
	v_or_b32_e32 v69, s28, v69
	.loc	1 291 21                        ; attention_backward.py:291:21
	v_add_lshl_u32 v70, s51, v106, 1
	.loc	1 271 27                        ; attention_backward.py:271:27
	v_or_b32_e32 v71, s28, v71
	v_or_b32_e32 v72, s28, v72
	.loc	1 277 24                        ; attention_backward.py:277:24
	v_cmp_gt_i32_e32 vcc_lo, s31, v65
	.loc	1 275 21                        ; attention_backward.py:275:21
	s_mul_i32 s20, s51, s34
	.loc	1 277 24                        ; attention_backward.py:277:24
	v_cmp_gt_i32_e64 s13, s31, v66
	v_cmp_gt_i32_e64 s19, s31, v73
	.loc	1 280 29                        ; attention_backward.py:280:29
	v_dual_mov_b32 v146, v142 :: v_dual_add_nc_u32 v73, s20, v84
	.loc	1 277 24                        ; attention_backward.py:277:24
	v_cmp_gt_i32_e64 s14, s31, v67
	.loc	1 280 29                        ; attention_backward.py:280:29
	v_dual_mov_b32 v143, v142 :: v_dual_add_nc_u32 v74, s20, v114
	.loc	1 290 33                        ; attention_backward.py:290:33
	v_add_nc_u32_e32 v66, 8, v70
	.loc	1 277 24                        ; attention_backward.py:277:24
	v_cmp_gt_i32_e64 s15, s31, v68
	v_cmp_gt_i32_e64 s16, s31, v69
	.loc	1 290 33                        ; attention_backward.py:290:33
	v_add_nc_u32_e32 v69, 20, v70
	.loc	1 277 24                        ; attention_backward.py:277:24
	v_cmp_gt_i32_e64 s17, s31, v71
	.loc	1 280 29                        ; attention_backward.py:280:29
	v_dual_mov_b32 v144, v142 :: v_dual_add_nc_u32 v71, 24, v70
	.loc	1 277 24                        ; attention_backward.py:277:24
	v_cmp_gt_i32_e64 s18, s31, v72
	.loc	1 280 29                        ; attention_backward.py:280:29
	v_dual_mov_b32 v148, v142 :: v_dual_add_nc_u32 v75, s20, v115
	.loc	1 290 33                        ; attention_backward.py:290:33
	v_add_nc_u32_e32 v68, 16, v70
	.loc	1 280 29                        ; attention_backward.py:280:29
	v_dual_mov_b32 v145, v142 :: v_dual_add_nc_u32 v76, s20, v85
	.loc	1 290 33                        ; attention_backward.py:290:33
	v_add_nc_u32_e32 v65, 4, v70
	.loc	1 280 29                        ; attention_backward.py:280:29
	v_dual_mov_b32 v147, v142 :: v_dual_add_nc_u32 v78, s20, v86
	v_dual_mov_b32 v149, v142 :: v_dual_add_nc_u32 v80, s20, v88
	.loc	1 290 33                        ; attention_backward.py:290:33
	v_add_nc_u32_e32 v67, 12, v70
	.loc	1 275 21                        ; attention_backward.py:275:21
	v_add_nc_u32_e32 v77, s20, v116
	.loc	1 290 33                        ; attention_backward.py:290:33
	v_add_nc_u32_e32 v72, 28, v70
	.loc	1 275 21                        ; attention_backward.py:275:21
	v_add_nc_u32_e32 v79, s20, v87
	.loc	1 290 33                        ; attention_backward.py:290:33
	v_cndmask_b32_e32 v70, 0x80000000, v70, vcc_lo
	.loc	1 276 26                        ; attention_backward.py:276:26
	s_and_b32 vcc_lo, s2, vcc_lo
	.loc	1 271 27                        ; attention_backward.py:271:27
	v_or_b32_e32 v81, s28, v123
	.loc	1 274 28                        ; attention_backward.py:274:28
	v_cndmask_b32_e32 v73, 0x80000000, v73, vcc_lo
	.loc	1 276 26                        ; attention_backward.py:276:26
	s_and_b32 vcc_lo, s2, s13
	.loc	1 290 33                        ; attention_backward.py:290:33
	v_cndmask_b32_e64 v66, 0x80000000, v66, s14
	.loc	1 274 28                        ; attention_backward.py:274:28
	v_cndmask_b32_e32 v74, 0x80000000, v74, vcc_lo
	.loc	1 276 26                        ; attention_backward.py:276:26
	s_and_b32 vcc_lo, s2, s14
	.loc	1 290 33                        ; attention_backward.py:290:33
	v_cndmask_b32_e64 v71, 0x80000000, v71, s18
	.loc	1 274 28                        ; attention_backward.py:274:28
	v_cndmask_b32_e32 v75, 0x80000000, v75, vcc_lo
	.loc	1 276 26                        ; attention_backward.py:276:26
	s_and_b32 vcc_lo, s2, s15
	.loc	1 290 33                        ; attention_backward.py:290:33
	v_cndmask_b32_e64 v68, 0x80000000, v68, s16
	.loc	1 274 28                        ; attention_backward.py:274:28
	v_cndmask_b32_e32 v76, 0x80000000, v76, vcc_lo
	.loc	1 276 26                        ; attention_backward.py:276:26
	s_and_b32 vcc_lo, s2, s16
	.loc	1 290 33                        ; attention_backward.py:290:33
	v_cndmask_b32_e64 v65, 0x80000000, v65, s13
	.loc	1 274 28                        ; attention_backward.py:274:28
	v_cndmask_b32_e32 v77, 0x80000000, v77, vcc_lo
	.loc	1 276 26                        ; attention_backward.py:276:26
	s_and_b32 vcc_lo, s2, s17
	.loc	1 290 33                        ; attention_backward.py:290:33
	v_cndmask_b32_e64 v72, 0x80000000, v72, s19
	.loc	1 274 28                        ; attention_backward.py:274:28
	v_cndmask_b32_e32 v78, 0x80000000, v78, vcc_lo
	.loc	1 276 26                        ; attention_backward.py:276:26
	s_and_b32 vcc_lo, s2, s18
	.loc	1 274 28                        ; attention_backward.py:274:28
	v_cndmask_b32_e32 v79, 0x80000000, v79, vcc_lo
	.loc	1 276 26                        ; attention_backward.py:276:26
	s_and_b32 vcc_lo, s2, s19
	.loc	1 274 28                        ; attention_backward.py:274:28
	v_cndmask_b32_e32 v80, 0x80000000, v80, vcc_lo
	s_clause 0x7
	buffer_load_u8 v229, v73, s[40:43], 0 offen
	buffer_load_u8 v230, v74, s[40:43], 0 offen
	buffer_load_u8 v224, v75, s[40:43], 0 offen
	buffer_load_u8 v223, v76, s[40:43], 0 offen
	buffer_load_u8 v220, v77, s[40:43], 0 offen
	buffer_load_u8 v219, v78, s[40:43], 0 offen
	buffer_load_u8 v216, v79, s[40:43], 0 offen
	buffer_load_u8 v213, v80, s[40:43], 0 offen
	.loc	1 271 27                        ; attention_backward.py:271:27
	v_or_b32_e32 v73, s28, v129
	v_or_b32_e32 v74, s28, v130
	.loc	1 291 21                        ; attention_backward.py:291:21
	v_add_lshl_u32 v78, s51, v129, 1
	.loc	1 271 27                        ; attention_backward.py:271:27
	v_or_b32_e32 v75, s28, v128
	v_or_b32_e32 v76, s28, v127
	.loc	1 292 26                        ; attention_backward.py:292:26
	v_cmp_gt_i32_e32 vcc_lo, s31, v73
	.loc	1 271 27                        ; attention_backward.py:271:27
	v_or_b32_e32 v77, s28, v126
	.loc	1 290 33                        ; attention_backward.py:290:33
	v_add_nc_u32_e32 v109, 20, v78
	v_add_nc_u32_e32 v82, 4, v78
	v_add_nc_u32_e32 v83, 8, v78
	v_cndmask_b32_e32 v73, 0x80000000, v78, vcc_lo
	.loc	1 292 26                        ; attention_backward.py:292:26
	v_cmp_gt_i32_e32 vcc_lo, s31, v74
	.loc	1 290 33                        ; attention_backward.py:290:33
	v_add_nc_u32_e32 v107, 12, v78
	.loc	1 271 27                        ; attention_backward.py:271:27
	v_or_b32_e32 v79, s28, v125
	.loc	1 290 33                        ; attention_backward.py:290:33
	v_add_nc_u32_e32 v108, 16, v78
	.loc	1 271 27                        ; attention_backward.py:271:27
	v_or_b32_e32 v80, s28, v124
	.loc	1 290 33                        ; attention_backward.py:290:33
	v_cndmask_b32_e32 v74, 0x80000000, v82, vcc_lo
	.loc	1 292 26                        ; attention_backward.py:292:26
	v_cmp_gt_i32_e32 vcc_lo, s31, v75
	.loc	1 290 33                        ; attention_backward.py:290:33
	v_add_nc_u32_e32 v110, 24, v78
	v_add_nc_u32_e32 v78, 28, v78
	v_cndmask_b32_e64 v67, 0x80000000, v67, s15
	.loc	1 274 28                        ; attention_backward.py:274:28
	s_waitcnt lgkmcnt(0)
	.loc	1 290 33                        ; attention_backward.py:290:33
	v_cndmask_b32_e32 v75, 0x80000000, v83, vcc_lo
	.loc	1 292 26                        ; attention_backward.py:292:26
	v_cmp_gt_i32_e32 vcc_lo, s31, v76
	.loc	1 274 28                        ; attention_backward.py:274:28
	s_barrier
	s_waitcnt vmcnt(7)
	ds_store_b8 v117, v229
	s_waitcnt vmcnt(6)
	ds_store_b8 v117, v230 offset:64
	s_waitcnt vmcnt(5)
	ds_store_b8 v118, v224
	s_waitcnt vmcnt(4)
	ds_store_b8 v118, v223 offset:64
	s_waitcnt vmcnt(3)
	ds_store_b8 v119, v220
	s_waitcnt vmcnt(2)
	ds_store_b8 v119, v219 offset:64
	s_waitcnt vmcnt(1)
	ds_store_b8 v120, v216
	s_waitcnt vmcnt(0)
	ds_store_b8 v120, v213 offset:64
	.loc	1 290 33                        ; attention_backward.py:290:33
	v_cndmask_b32_e32 v76, 0x80000000, v107, vcc_lo
	.loc	1 292 26                        ; attention_backward.py:292:26
	v_cmp_gt_i32_e32 vcc_lo, s31, v77
	.loc	1 290 33                        ; attention_backward.py:290:33
	v_cndmask_b32_e64 v69, 0x80000000, v69, s17
	.loc	1 274 28                        ; attention_backward.py:274:28
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 290 33                        ; attention_backward.py:290:33
	v_cndmask_b32_e32 v77, 0x80000000, v108, vcc_lo
	.loc	1 292 26                        ; attention_backward.py:292:26
	v_cmp_gt_i32_e32 vcc_lo, s31, v79
	.loc	1 290 33                        ; attention_backward.py:290:33
	v_cndmask_b32_e32 v79, 0x80000000, v109, vcc_lo
	.loc	1 292 26                        ; attention_backward.py:292:26
	v_cmp_gt_i32_e32 vcc_lo, s31, v80
	.loc	1 290 33                        ; attention_backward.py:290:33
	v_cndmask_b32_e32 v80, 0x80000000, v110, vcc_lo
	.loc	1 292 26                        ; attention_backward.py:292:26
	v_cmp_gt_i32_e32 vcc_lo, s31, v81
	.loc	1 290 33                        ; attention_backward.py:290:33
	v_cndmask_b32_e32 v78, 0x80000000, v78, vcc_lo
	s_clause 0xf
	buffer_load_u16 v228, v70, s[44:47], 0 offen
	buffer_load_u16 v227, v65, s[44:47], 0 offen
	buffer_load_u16 v226, v66, s[44:47], 0 offen
	buffer_load_u16 v225, v67, s[44:47], 0 offen
	buffer_load_u16 v222, v68, s[44:47], 0 offen
	buffer_load_u16 v221, v69, s[44:47], 0 offen
	buffer_load_u16 v218, v71, s[44:47], 0 offen
	buffer_load_u16 v217, v72, s[44:47], 0 offen
	buffer_load_u16 v215, v73, s[44:47], 0 offen
	buffer_load_u16 v214, v74, s[44:47], 0 offen
	buffer_load_u16 v212, v75, s[44:47], 0 offen
	buffer_load_u16 v211, v76, s[44:47], 0 offen
	buffer_load_u16 v210, v77, s[44:47], 0 offen
	buffer_load_u16 v209, v79, s[44:47], 0 offen
	buffer_load_u16 v208, v80, s[44:47], 0 offen
	buffer_load_u16 v207, v78, s[44:47], 0 offen
	.loc	1 274 28                        ; attention_backward.py:274:28
	v_add_nc_u32_e32 v65, 0, v141
	ds_load_b64 v[65:66], v65
	ds_load_b64 v[67:68], v167
	ds_load_b64 v[69:70], v168
	ds_load_b64 v[71:72], v169
	.loc	1 280 29                        ; attention_backward.py:280:29
	v_dual_mov_b32 v73, v142 :: v_dual_mov_b32 v74, v143
	v_dual_mov_b32 v75, v144 :: v_dual_mov_b32 v76, v145
	v_dual_mov_b32 v77, v146 :: v_dual_mov_b32 v78, v147
	v_dual_mov_b32 v79, v148 :: v_dual_mov_b32 v80, v149
	.loc	1 326 13                        ; attention_backward.py:326:13
	v_cmp_ne_u32_e32 vcc_lo, 1, v131
	s_and_b32 vcc_lo, exec_lo, vcc_lo
	.loc	1 280 29                        ; attention_backward.py:280:29
	s_waitcnt lgkmcnt(3)
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_wmma_i32_16x16x16_iu4 v[73:80], v[65:66], v[89:90], v[73:80] neg_lo:[1,1,0]
	.loc	1 271 27                        ; attention_backward.py:271:27
	v_or_b32_e32 v66, s28, v255
	.loc	1 280 29                        ; attention_backward.py:280:29
	s_waitcnt lgkmcnt(2)
	v_wmma_i32_16x16x16_iu4 v[73:80], v[67:68], v[91:92], v[73:80] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 277 24                        ; attention_backward.py:277:24
	v_cmp_gt_i32_e64 s13, s31, v66
	.loc	1 280 29                        ; attention_backward.py:280:29
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu4 v[73:80], v[69:70], v[93:94], v[73:80] neg_lo:[1,1,0]
	.loc	1 324 21                        ; attention_backward.py:324:21
	s_and_b32 s62, s5, s13
	s_and_b32 s60, s6, s13
	s_and_b32 s57, s7, s13
	s_and_b32 s56, s8, s13
	.loc	1 280 29                        ; attention_backward.py:280:29
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[73:80], v[71:72], v[95:96], v[73:80] neg_lo:[1,1,0]
	.loc	1 324 21                        ; attention_backward.py:324:21
	s_and_b32 s63, s9, s13
	s_and_b32 s61, s10, s13
	s_and_b32 s59, s11, s13
	s_and_b32 s58, s12, s13
	s_cbranch_vccnz .LBB0_34
; %bb.33:                               ;   in Loop: Header=BB0_32 Depth=1
	.loc	1 327 26                        ; attention_backward.py:327:26
	v_cmp_le_i32_e32 vcc_lo, v66, v132
	v_cmp_le_i32_e64 s13, v66, v133
	v_cmp_le_i32_e64 s14, v66, v134
	v_cmp_le_i32_e64 s15, v66, v135
	v_cmp_le_i32_e64 s16, v66, v136
	v_cmp_le_i32_e64 s17, v66, v137
	.loc	1 327 17 is_stmt 0              ; attention_backward.py:327:17
	s_and_b32 s20, vcc_lo, s62
	s_and_b32 s13, s13, s60
	.loc	1 327 26                        ; attention_backward.py:327:26
	v_cmp_le_i32_e64 s18, v66, v138
	v_cmp_le_i32_e64 s19, v66, v139
	.loc	1 327 17                        ; attention_backward.py:327:17
	s_and_b32 s14, s14, s57
	s_and_b32 s15, s15, s56
	s_and_not1_b32 s21, s62, exec_lo
	s_and_b32 s20, s20, exec_lo
	s_and_not1_b32 s22, s60, exec_lo
	s_and_b32 s13, s13, exec_lo
	s_and_b32 s16, s16, s63
	s_and_b32 s17, s17, s61
	s_or_b32 s62, s21, s20
	s_or_b32 s60, s22, s13
	s_and_not1_b32 s13, s57, exec_lo
	s_and_b32 s14, s14, exec_lo
	s_and_not1_b32 s20, s56, exec_lo
	s_and_b32 s15, s15, exec_lo
	s_and_b32 s18, s18, s59
	s_and_b32 s19, s19, s58
	s_or_b32 s57, s13, s14
	s_or_b32 s56, s20, s15
	s_and_not1_b32 s13, s63, exec_lo
	s_and_b32 s14, s16, exec_lo
	s_and_not1_b32 s15, s61, exec_lo
	s_and_b32 s16, s17, exec_lo
	s_or_b32 s63, s13, s14
	s_or_b32 s61, s15, s16
	s_and_not1_b32 s13, s59, exec_lo
	s_and_b32 s14, s18, exec_lo
	s_and_not1_b32 s15, s58, exec_lo
	s_and_b32 s16, s19, exec_lo
	s_or_b32 s59, s13, s14
	s_or_b32 s58, s15, s16
.LBB0_34:                               ;   in Loop: Header=BB0_32 Depth=1
	.loc	1 328 13 is_stmt 1              ; attention_backward.py:328:13
	s_and_not1_b32 vcc_lo, exec_lo, s33
	s_cbranch_vccnz .LBB0_36
; %bb.35:                               ;   in Loop: Header=BB0_32 Depth=1
	.loc	1 329 26                        ; attention_backward.py:329:26
	scratch_load_b32 v65, off, off          ; 4-byte Folded Reload
	.loc	1 330 26                        ; attention_backward.py:330:26
	v_cmp_le_i32_e64 s27, v66, v158
	.loc	1 329 26                        ; attention_backward.py:329:26
	s_waitcnt vmcnt(0)
	v_cmp_ge_i32_e32 vcc_lo, v66, v65
	scratch_load_b32 v65, off, off offset:4 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_cmp_ge_i32_e64 s13, v66, v65
	scratch_load_b32 v65, off, off offset:8 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_cmp_ge_i32_e64 s14, v66, v65
	scratch_load_b32 v65, off, off offset:12 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_cmp_ge_i32_e64 s15, v66, v65
	scratch_load_b32 v65, off, off offset:16 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_cmp_ge_i32_e64 s16, v66, v65
	scratch_load_b32 v65, off, off offset:20 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_cmp_ge_i32_e64 s17, v66, v65
	scratch_load_b32 v65, off, off offset:24 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_cmp_ge_i32_e64 s18, v66, v65
	scratch_load_b32 v65, off, off offset:28 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_cmp_ge_i32_e64 s19, v66, v65
	.loc	1 330 26                        ; attention_backward.py:330:26
	scratch_load_b32 v65, off, off offset:32 ; 4-byte Folded Reload
	.loc	1 330 17 is_stmt 0              ; attention_backward.py:330:17
	s_and_b32 s19, s19, s27
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_4) | instid1(SALU_CYCLE_1)
	s_and_b32 s19, s19, s58
	.loc	1 330 26                        ; attention_backward.py:330:26
	s_waitcnt vmcnt(0)
	v_cmp_le_i32_e64 s20, v66, v65
	scratch_load_b32 v65, off, off offset:36 ; 4-byte Folded Reload
	.loc	1 330 17                        ; attention_backward.py:330:17
	s_and_b32 s20, vcc_lo, s20
	s_and_b32 s20, s20, s62
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_b32 s20, s20, exec_lo
	.loc	1 330 26                        ; attention_backward.py:330:26
	s_waitcnt vmcnt(0)
	v_cmp_le_i32_e64 s21, v66, v65
	scratch_load_b32 v65, off, off offset:40 ; 4-byte Folded Reload
	.loc	1 330 17                        ; attention_backward.py:330:17
	s_and_b32 s13, s13, s21
	s_and_not1_b32 s21, s62, exec_lo
	s_and_b32 s13, s13, s60
	s_or_b32 s62, s21, s20
	s_and_b32 s13, s13, exec_lo
	s_and_not1_b32 s20, s56, exec_lo
	.loc	1 330 26                        ; attention_backward.py:330:26
	s_waitcnt vmcnt(0)
	v_cmp_le_i32_e64 s22, v66, v65
	scratch_load_b32 v65, off, off offset:44 ; 4-byte Folded Reload
	.loc	1 330 17                        ; attention_backward.py:330:17
	s_and_b32 s14, s14, s22
	s_and_not1_b32 s22, s60, exec_lo
	s_and_b32 s14, s14, s57
	s_or_b32 s60, s22, s13
	s_and_not1_b32 s13, s57, exec_lo
	s_and_b32 s14, s14, exec_lo
	s_delay_alu instid0(SALU_CYCLE_1)
	s_or_b32 s57, s13, s14
	s_and_not1_b32 s13, s63, exec_lo
	.loc	1 330 26                        ; attention_backward.py:330:26
	s_waitcnt vmcnt(0)
	v_cmp_le_i32_e64 s23, v66, v65
	scratch_load_b32 v65, off, off offset:48 ; 4-byte Folded Reload
	.loc	1 330 17                        ; attention_backward.py:330:17
	s_and_b32 s15, s15, s23
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_and_b32 s15, s15, s56
	s_and_b32 s15, s15, exec_lo
	s_delay_alu instid0(SALU_CYCLE_1)
	s_or_b32 s56, s20, s15
	s_and_not1_b32 s15, s61, exec_lo
	.loc	1 330 26                        ; attention_backward.py:330:26
	s_waitcnt vmcnt(0)
	v_cmp_le_i32_e64 s24, v66, v65
	scratch_load_b32 v65, off, off offset:52 ; 4-byte Folded Reload
	.loc	1 330 17                        ; attention_backward.py:330:17
	s_and_b32 s16, s16, s24
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_and_b32 s16, s16, s63
	s_and_b32 s14, s16, exec_lo
	s_delay_alu instid0(SALU_CYCLE_1)
	s_or_b32 s63, s13, s14
	s_and_not1_b32 s13, s59, exec_lo
	.loc	1 330 26                        ; attention_backward.py:330:26
	s_waitcnt vmcnt(0)
	v_cmp_le_i32_e64 s25, v66, v65
	scratch_load_b32 v65, off, off offset:56 ; 4-byte Folded Reload
	.loc	1 330 17                        ; attention_backward.py:330:17
	s_and_b32 s17, s17, s25
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_and_b32 s17, s17, s61
	s_and_b32 s16, s17, exec_lo
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_2) | instid1(SALU_CYCLE_1)
	s_or_b32 s61, s15, s16
	s_and_not1_b32 s15, s58, exec_lo
	s_and_b32 s16, s19, exec_lo
	s_or_b32 s58, s15, s16
	.loc	1 330 26                        ; attention_backward.py:330:26
	s_waitcnt vmcnt(0)
	v_cmp_le_i32_e64 s26, v66, v65
	.loc	1 330 17                        ; attention_backward.py:330:17
	s_and_b32 s18, s18, s26
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_and_b32 s18, s18, s59
	s_and_b32 s14, s18, exec_lo
	s_delay_alu instid0(SALU_CYCLE_1)
	s_or_b32 s59, s13, s14
.LBB0_36:                               ;   in Loop: Header=BB0_32 Depth=1
	.loc	1 0 17                          ; attention_backward.py:0:17
	v_mov_b16_e32 v66.l, 0
	.loc	1 333 21 is_stmt 1              ; attention_backward.py:333:21
	s_mul_i32 s13, s28, s69
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	s_add_i32 s13, s30, s13
	v_mov_b16_e32 v69.l, v66.l
	.loc	1 340 30                        ; attention_backward.py:340:30
	s_and_saveexec_b32 s14, s62
	s_cbranch_execz .LBB0_38
; %bb.37:                               ;   in Loop: Header=BB0_32 Depth=1
	.loc	1 0 30 is_stmt 0                ; attention_backward.py:0:30
	v_add_nc_u32_e32 v65, s13, v104
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 340 30                        ; attention_backward.py:340:30
	v_ashrrev_i32_e32 v68, 31, v65
	v_add_co_u32 v67, vcc_lo, s38, v65
	v_add_co_ci_u32_e64 v68, null, s39, v68, vcc_lo
	global_load_d16_u8 v69, v[67:68], off
.LBB0_38:                               ;   in Loop: Header=BB0_32 Depth=1
	.loc	1 0 30                          ; attention_backward.py:0:30
	s_or_b32 exec_lo, exec_lo, s14
	.loc	1 340 30                        ; attention_backward.py:340:30
	s_and_saveexec_b32 s14, s60
	s_cbranch_execz .LBB0_40
; %bb.39:                               ;   in Loop: Header=BB0_32 Depth=1
	.loc	1 0 30                          ; attention_backward.py:0:30
	v_add_nc_u32_e32 v65, s13, v97
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 340 30                        ; attention_backward.py:340:30
	v_ashrrev_i32_e32 v66, 31, v65
	v_add_co_u32 v65, vcc_lo, s38, v65
	v_add_co_ci_u32_e64 v66, null, s39, v66, vcc_lo
	global_load_d16_u8 v66, v[65:66], off
.LBB0_40:                               ;   in Loop: Header=BB0_32 Depth=1
	.loc	1 0 30                          ; attention_backward.py:0:30
	s_or_b32 exec_lo, exec_lo, s14
	s_waitcnt vmcnt(0)
	v_mov_b16_e32 v66.h, 0
	s_delay_alu instid0(VALU_DEP_1)
	v_mov_b16_e32 v67.l, v66.h
	.loc	1 340 30                        ; attention_backward.py:340:30
	s_and_saveexec_b32 s14, s57
	s_cbranch_execz .LBB0_42
; %bb.41:                               ;   in Loop: Header=BB0_32 Depth=1
	.loc	1 0 30                          ; attention_backward.py:0:30
	v_add_nc_u32_e32 v65, s13, v98
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 340 30                        ; attention_backward.py:340:30
	v_ashrrev_i32_e32 v68, 31, v65
	v_add_co_u32 v67, vcc_lo, s38, v65
	v_add_co_ci_u32_e64 v68, null, s39, v68, vcc_lo
	global_load_d16_u8 v67, v[67:68], off
.LBB0_42:                               ;   in Loop: Header=BB0_32 Depth=1
	.loc	1 0 30                          ; attention_backward.py:0:30
	s_or_b32 exec_lo, exec_lo, s14
	.loc	1 340 30                        ; attention_backward.py:340:30
	s_and_saveexec_b32 s14, s56
	s_cbranch_execz .LBB0_44
; %bb.43:                               ;   in Loop: Header=BB0_32 Depth=1
	.loc	1 0 30                          ; attention_backward.py:0:30
	v_add_nc_u32_e32 v65, s13, v99
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 340 30                        ; attention_backward.py:340:30
	v_ashrrev_i32_e32 v68, 31, v65
	v_add_co_u32 v70, vcc_lo, s38, v65
	v_add_co_ci_u32_e64 v71, null, s39, v68, vcc_lo
	global_load_d16_hi_u8 v66, v[70:71], off
.LBB0_44:                               ;   in Loop: Header=BB0_32 Depth=1
	.loc	1 0 30                          ; attention_backward.py:0:30
	s_or_b32 exec_lo, exec_lo, s14
	s_waitcnt vmcnt(0)
	v_mov_b16_e32 v67.h, 0
	s_delay_alu instid0(VALU_DEP_1)
	v_mov_b16_e32 v69.h, v67.h
	.loc	1 340 30                        ; attention_backward.py:340:30
	s_and_saveexec_b32 s14, s63
	s_cbranch_execz .LBB0_46
; %bb.45:                               ;   in Loop: Header=BB0_32 Depth=1
	.loc	1 0 30                          ; attention_backward.py:0:30
	v_add_nc_u32_e32 v65, s13, v100
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 340 30                        ; attention_backward.py:340:30
	v_ashrrev_i32_e32 v68, 31, v65
	v_add_co_u32 v70, vcc_lo, s38, v65
	v_add_co_ci_u32_e64 v71, null, s39, v68, vcc_lo
	global_load_d16_hi_u8 v69, v[70:71], off
.LBB0_46:                               ;   in Loop: Header=BB0_32 Depth=1
	.loc	1 0 30                          ; attention_backward.py:0:30
	s_or_b32 exec_lo, exec_lo, s14
	.loc	1 340 30                        ; attention_backward.py:340:30
	s_and_saveexec_b32 s14, s61
	s_cbranch_execz .LBB0_48
; %bb.47:                               ;   in Loop: Header=BB0_32 Depth=1
	.loc	1 0 30                          ; attention_backward.py:0:30
	v_add_nc_u32_e32 v65, s13, v101
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 340 30                        ; attention_backward.py:340:30
	v_ashrrev_i32_e32 v68, 31, v65
	v_add_co_u32 v70, vcc_lo, s38, v65
	v_add_co_ci_u32_e64 v71, null, s39, v68, vcc_lo
	global_load_d16_hi_u8 v67, v[70:71], off
.LBB0_48:                               ;   in Loop: Header=BB0_32 Depth=1
	.loc	1 0 30                          ; attention_backward.py:0:30
	s_or_b32 exec_lo, exec_lo, s14
	v_mov_b16_e32 v68.l, 0
	s_delay_alu instid0(VALU_DEP_1)
	v_mov_b16_e32 v68.h, v68.l
	.loc	1 340 30                        ; attention_backward.py:340:30
	s_and_saveexec_b32 s14, s59
	s_cbranch_execz .LBB0_50
; %bb.49:                               ;   in Loop: Header=BB0_32 Depth=1
	.loc	1 0 30                          ; attention_backward.py:0:30
	v_add_nc_u32_e32 v65, s13, v102
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 340 30                        ; attention_backward.py:340:30
	v_ashrrev_i32_e32 v71, 31, v65
	v_add_co_u32 v70, vcc_lo, s38, v65
	v_add_co_ci_u32_e64 v71, null, s39, v71, vcc_lo
	global_load_d16_hi_u8 v68, v[70:71], off
.LBB0_50:                               ;   in Loop: Header=BB0_32 Depth=1
	.loc	1 0 30                          ; attention_backward.py:0:30
	s_or_b32 exec_lo, exec_lo, s14
	v_mov_b32_e32 v113, v150
	.loc	1 340 30                        ; attention_backward.py:340:30
	s_and_saveexec_b32 s14, s58
	s_cbranch_execz .LBB0_31
; %bb.51:                               ;   in Loop: Header=BB0_32 Depth=1
	.loc	1 0 30                          ; attention_backward.py:0:30
	v_add_nc_u32_e32 v65, s13, v103
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 340 30                        ; attention_backward.py:340:30
	v_ashrrev_i32_e32 v71, 31, v65
	v_add_co_u32 v70, vcc_lo, s38, v65
	v_add_co_ci_u32_e64 v71, null, s39, v71, vcc_lo
	global_load_d16_u8 v68, v[70:71], off
	s_branch .LBB0_31
.LBB0_52:                               ; %._crit_edge82
	.loc	1 401 13 is_stmt 1              ; attention_backward.py:401:13
	scratch_load_b32 v48, off, off offset:60 ; 4-byte Folded Reload
	.loc	1 408 40                        ; attention_backward.py:408:40
	v_cmp_gt_i32_e64 s1, s49, v129
	v_cmp_gt_i32_e64 s2, s49, v130
	v_cmp_gt_i32_e64 s3, s49, v128
	v_cmp_gt_i32_e64 s5, s49, v127
	.loc	1 405 9                         ; attention_backward.py:405:9
	s_and_b32 s37, s37, 0xffff
	.loc	1 408 18                        ; attention_backward.py:408:18
	s_and_b32 s1, s4, s1
	s_mov_b32 s39, 0x31027000
	s_mov_b32 s38, 0x7ffffffe
	.loc	1 408 40 is_stmt 0              ; attention_backward.py:408:40
	v_cmp_gt_i32_e64 s6, s49, v126
	v_cmp_gt_i32_e64 s7, s49, v125
	.loc	1 168 40 is_stmt 1              ; attention_backward.py:168:40
	v_or_b32_e32 v47, 16, v129
	.loc	1 408 40                        ; attention_backward.py:408:40
	v_cmp_gt_i32_e64 s8, s49, v124
	.loc	1 168 40                        ; attention_backward.py:168:40
	v_or_b32_e32 v46, 18, v129
	.loc	1 408 40                        ; attention_backward.py:408:40
	v_cmp_gt_i32_e64 s9, s49, v123
	.loc	1 168 40                        ; attention_backward.py:168:40
	v_or_b32_e32 v45, 20, v129
	.loc	1 408 40                        ; attention_backward.py:408:40
	v_cmp_gt_i32_e64 s10, s49, v47
	.loc	1 168 40                        ; attention_backward.py:168:40
	v_or_b32_e32 v44, 22, v129
	.loc	1 408 40                        ; attention_backward.py:408:40
	v_cmp_gt_i32_e64 s11, s49, v46
	.loc	1 168 40                        ; attention_backward.py:168:40
	v_or_b32_e32 v43, 24, v129
	.loc	1 408 40                        ; attention_backward.py:408:40
	v_cmp_gt_i32_e64 s12, s49, v45
	.loc	1 168 40                        ; attention_backward.py:168:40
	v_or_b32_e32 v42, 26, v129
	.loc	1 408 40                        ; attention_backward.py:408:40
	v_cmp_gt_i32_e64 s13, s49, v44
	.loc	1 168 40                        ; attention_backward.py:168:40
	v_or_b32_e32 v41, 28, v129
	.loc	1 408 40                        ; attention_backward.py:408:40
	v_cmp_gt_i32_e64 s14, s49, v43
	.loc	1 168 40                        ; attention_backward.py:168:40
	v_or_b32_e32 v40, 30, v129
	.loc	1 408 40                        ; attention_backward.py:408:40
	v_cmp_gt_i32_e64 s15, s49, v42
	.loc	1 168 40                        ; attention_backward.py:168:40
	v_or_b32_e32 v39, 32, v129
	.loc	1 408 40                        ; attention_backward.py:408:40
	v_cmp_gt_i32_e64 s16, s49, v41
	.loc	1 168 40                        ; attention_backward.py:168:40
	v_or_b32_e32 v38, 34, v129
	.loc	1 408 40                        ; attention_backward.py:408:40
	v_cmp_gt_i32_e64 s17, s49, v40
	.loc	1 168 40                        ; attention_backward.py:168:40
	v_or_b32_e32 v37, 36, v129
	.loc	1 408 40                        ; attention_backward.py:408:40
	v_cmp_gt_i32_e64 s18, s49, v39
	.loc	1 168 40                        ; attention_backward.py:168:40
	v_or_b32_e32 v36, 38, v129
	.loc	1 408 40                        ; attention_backward.py:408:40
	v_cmp_gt_i32_e64 s19, s49, v38
	.loc	1 168 40                        ; attention_backward.py:168:40
	v_or_b32_e32 v35, 40, v129
	.loc	1 408 40                        ; attention_backward.py:408:40
	v_cmp_gt_i32_e64 s20, s49, v37
	.loc	1 168 40                        ; attention_backward.py:168:40
	v_or_b32_e32 v34, 42, v129
	.loc	1 408 40                        ; attention_backward.py:408:40
	v_cmp_gt_i32_e64 s21, s49, v36
	.loc	1 168 40                        ; attention_backward.py:168:40
	v_or_b32_e32 v33, 44, v129
	.loc	1 408 40                        ; attention_backward.py:408:40
	v_cmp_gt_i32_e64 s22, s49, v35
	.loc	1 168 40                        ; attention_backward.py:168:40
	v_or_b32_e32 v32, 46, v129
	.loc	1 408 40                        ; attention_backward.py:408:40
	v_cmp_gt_i32_e64 s23, s49, v34
	.loc	1 168 40                        ; attention_backward.py:168:40
	v_or_b32_e32 v31, 48, v129
	.loc	1 408 40                        ; attention_backward.py:408:40
	v_cmp_gt_i32_e64 s24, s49, v33
	.loc	1 168 40                        ; attention_backward.py:168:40
	v_or_b32_e32 v30, 50, v129
	.loc	1 408 40                        ; attention_backward.py:408:40
	v_cmp_gt_i32_e64 s25, s49, v32
	.loc	1 168 40                        ; attention_backward.py:168:40
	v_or_b32_e32 v29, 52, v129
	.loc	1 408 40                        ; attention_backward.py:408:40
	v_cmp_gt_i32_e64 s26, s49, v31
	.loc	1 168 40                        ; attention_backward.py:168:40
	v_or_b32_e32 v28, 54, v129
	.loc	1 408 40                        ; attention_backward.py:408:40
	v_cmp_gt_i32_e64 s27, s49, v30
	.loc	1 168 40                        ; attention_backward.py:168:40
	v_or_b32_e32 v27, 56, v129
	.loc	1 408 40                        ; attention_backward.py:408:40
	v_cmp_gt_i32_e64 s28, s49, v29
	.loc	1 168 40                        ; attention_backward.py:168:40
	v_or_b32_e32 v25, 60, v129
	v_or_b32_e32 v26, 58, v129
	v_or_b32_e32 v0, 62, v129
	.loc	1 408 40                        ; attention_backward.py:408:40
	v_cmp_gt_i32_e64 s29, s49, v28
	v_cmp_gt_i32_e64 s30, s49, v27
	v_cmp_gt_i32_e32 vcc_lo, s49, v25
	v_cmp_gt_i32_e64 s0, s49, v26
	.loc	1 408 18 is_stmt 0              ; attention_backward.py:408:18
	s_and_b32 vcc_lo, s4, vcc_lo
	s_and_b32 s0, s4, s0
	.loc	1 401 13 is_stmt 1              ; attention_backward.py:401:13
	s_waitcnt vmcnt(0)
	v_mul_lo_u32 v48, v48, s49
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 405 9                         ; attention_backward.py:405:9
	v_add_lshl_u32 v49, v48, v129, 2
	v_add_lshl_u32 v50, v48, v130, 2
	v_add_lshl_u32 v51, v48, v128, 2
	v_add_lshl_u32 v52, v48, v124, 2
	v_add_lshl_u32 v47, v48, v47, 2
	v_cndmask_b32_e64 v49, 0x80000000, v49, s1
	.loc	1 408 18                        ; attention_backward.py:408:18
	s_and_b32 s1, s4, s2
	s_and_b32 s2, s4, s5
	.loc	1 405 9                         ; attention_backward.py:405:9
	v_cndmask_b32_e64 v50, 0x80000000, v50, s1
	.loc	1 408 18                        ; attention_backward.py:408:18
	s_and_b32 s1, s4, s3
	.loc	1 405 9                         ; attention_backward.py:405:9
	buffer_store_b32 v57, v49, s[36:39], 0 offen
	v_cndmask_b32_e64 v51, 0x80000000, v51, s1
	v_add_lshl_u32 v49, v48, v127, 2
	s_clause 0x1
	buffer_store_b32 v58, v50, s[36:39], 0 offen
	buffer_store_b32 v59, v51, s[36:39], 0 offen
	v_add_lshl_u32 v50, v48, v126, 2
	v_cndmask_b32_e64 v49, 0x80000000, v49, s2
	.loc	1 408 18                        ; attention_backward.py:408:18
	s_and_b32 s2, s4, s6
	.loc	1 405 9                         ; attention_backward.py:405:9
	v_add_lshl_u32 v51, v48, v125, 2
	v_add_lshl_u32 v46, v48, v46, 2
	v_cndmask_b32_e64 v50, 0x80000000, v50, s2
	.loc	1 408 18                        ; attention_backward.py:408:18
	s_and_b32 s2, s4, s7
	.loc	1 405 9                         ; attention_backward.py:405:9
	s_clause 0x1
	buffer_store_b32 v60, v49, s[36:39], 0 offen
	buffer_store_b32 v61, v50, s[36:39], 0 offen
	v_add_lshl_u32 v49, v48, v123, 2
	v_cndmask_b32_e64 v51, 0x80000000, v51, s2
	.loc	1 408 18                        ; attention_backward.py:408:18
	s_and_b32 s2, s4, s8
	.loc	1 405 9                         ; attention_backward.py:405:9
	v_add_lshl_u32 v45, v48, v45, 2
	v_cndmask_b32_e64 v52, 0x80000000, v52, s2
	.loc	1 408 18                        ; attention_backward.py:408:18
	s_and_b32 s2, s4, s9
	.loc	1 405 9                         ; attention_backward.py:405:9
	s_clause 0x1
	buffer_store_b32 v62, v51, s[36:39], 0 offen
	buffer_store_b32 v63, v52, s[36:39], 0 offen
	v_cndmask_b32_e64 v49, 0x80000000, v49, s2
	.loc	1 408 18                        ; attention_backward.py:408:18
	s_and_b32 s2, s4, s10
	.loc	1 405 9                         ; attention_backward.py:405:9
	v_add_lshl_u32 v41, v48, v41, 2
	v_cndmask_b32_e64 v47, 0x80000000, v47, s2
	.loc	1 408 18                        ; attention_backward.py:408:18
	s_and_b32 s2, s4, s11
	.loc	1 405 9                         ; attention_backward.py:405:9
	s_clause 0x1
	buffer_store_b32 v64, v49, s[36:39], 0 offen
	buffer_store_b32 v17, v47, s[36:39], 0 offen
	v_cndmask_b32_e64 v46, 0x80000000, v46, s2
	.loc	1 408 18                        ; attention_backward.py:408:18
	s_and_b32 s2, s4, s12
	.loc	1 405 9                         ; attention_backward.py:405:9
	v_add_lshl_u32 v17, v48, v44, 2
	v_cndmask_b32_e64 v45, 0x80000000, v45, s2
	s_clause 0x1
	buffer_store_b32 v18, v46, s[36:39], 0 offen
	buffer_store_b32 v19, v45, s[36:39], 0 offen
	v_add_lshl_u32 v18, v48, v43, 2
	.loc	1 408 18                        ; attention_backward.py:408:18
	s_and_b32 s2, s4, s13
	.loc	1 405 9                         ; attention_backward.py:405:9
	v_add_lshl_u32 v19, v48, v42, 2
	v_cndmask_b32_e64 v17, 0x80000000, v17, s2
	.loc	1 408 18                        ; attention_backward.py:408:18
	s_and_b32 s2, s4, s14
	.loc	1 408 40 is_stmt 0              ; attention_backward.py:408:40
	v_cmp_gt_i32_e64 s1, s49, v0
	.loc	1 405 9 is_stmt 1               ; attention_backward.py:405:9
	v_cndmask_b32_e64 v18, 0x80000000, v18, s2
	.loc	1 408 18                        ; attention_backward.py:408:18
	s_and_b32 s2, s4, s15
	.loc	1 405 9                         ; attention_backward.py:405:9
	s_clause 0x1
	buffer_store_b32 v20, v17, s[36:39], 0 offen
	buffer_store_b32 v21, v18, s[36:39], 0 offen
	v_cndmask_b32_e64 v19, 0x80000000, v19, s2
	.loc	1 408 18                        ; attention_backward.py:408:18
	s_and_b32 s2, s4, s16
	.loc	1 405 9                         ; attention_backward.py:405:9
	v_add_lshl_u32 v17, v48, v40, 2
	v_cndmask_b32_e64 v41, 0x80000000, v41, s2
	v_add_lshl_u32 v18, v48, v39, 2
	.loc	1 408 18                        ; attention_backward.py:408:18
	s_and_b32 s2, s4, s17
	.loc	1 405 9                         ; attention_backward.py:405:9
	s_clause 0x1
	buffer_store_b32 v22, v19, s[36:39], 0 offen
	buffer_store_b32 v23, v41, s[36:39], 0 offen
	v_add_lshl_u32 v19, v48, v38, 2
	v_cndmask_b32_e64 v17, 0x80000000, v17, s2
	.loc	1 408 18                        ; attention_backward.py:408:18
	s_and_b32 s2, s4, s18
	.loc	1 405 9                         ; attention_backward.py:405:9
	v_add_lshl_u32 v20, v48, v37, 2
	v_cndmask_b32_e64 v18, 0x80000000, v18, s2
	.loc	1 408 18                        ; attention_backward.py:408:18
	s_and_b32 s2, s4, s19
	.loc	1 405 9                         ; attention_backward.py:405:9
	s_clause 0x1
	buffer_store_b32 v24, v17, s[36:39], 0 offen
	buffer_store_b32 v9, v18, s[36:39], 0 offen
	v_cndmask_b32_e64 v19, 0x80000000, v19, s2
	.loc	1 408 18                        ; attention_backward.py:408:18
	s_and_b32 s2, s4, s20
	.loc	1 405 9                         ; attention_backward.py:405:9
	v_add_lshl_u32 v9, v48, v36, 2
	v_cndmask_b32_e64 v20, 0x80000000, v20, s2
	s_clause 0x1
	buffer_store_b32 v10, v19, s[36:39], 0 offen
	buffer_store_b32 v11, v20, s[36:39], 0 offen
	v_add_lshl_u32 v10, v48, v35, 2
	.loc	1 408 18                        ; attention_backward.py:408:18
	s_and_b32 s2, s4, s21
	.loc	1 405 9                         ; attention_backward.py:405:9
	v_add_lshl_u32 v11, v48, v34, 2
	v_cndmask_b32_e64 v9, 0x80000000, v9, s2
	.loc	1 408 18                        ; attention_backward.py:408:18
	s_and_b32 s2, s4, s22
	.loc	1 405 9                         ; attention_backward.py:405:9
	v_add_lshl_u32 v17, v48, v33, 2
	v_cndmask_b32_e64 v10, 0x80000000, v10, s2
	.loc	1 408 18                        ; attention_backward.py:408:18
	s_and_b32 s2, s4, s23
	.loc	1 405 9                         ; attention_backward.py:405:9
	s_clause 0x1
	buffer_store_b32 v12, v9, s[36:39], 0 offen
	buffer_store_b32 v13, v10, s[36:39], 0 offen
	v_cndmask_b32_e64 v11, 0x80000000, v11, s2
	.loc	1 408 18                        ; attention_backward.py:408:18
	s_and_b32 s2, s4, s24
	.loc	1 405 9                         ; attention_backward.py:405:9
	v_add_lshl_u32 v9, v48, v32, 2
	v_cndmask_b32_e64 v17, 0x80000000, v17, s2
	v_add_lshl_u32 v10, v48, v31, 2
	.loc	1 408 18                        ; attention_backward.py:408:18
	s_and_b32 s2, s4, s25
	.loc	1 405 9                         ; attention_backward.py:405:9
	s_clause 0x1
	buffer_store_b32 v14, v11, s[36:39], 0 offen
	buffer_store_b32 v15, v17, s[36:39], 0 offen
	v_add_lshl_u32 v11, v48, v30, 2
	v_cndmask_b32_e64 v9, 0x80000000, v9, s2
	.loc	1 408 18                        ; attention_backward.py:408:18
	s_and_b32 s2, s4, s26
	.loc	1 405 9                         ; attention_backward.py:405:9
	v_add_lshl_u32 v12, v48, v29, 2
	v_cndmask_b32_e64 v10, 0x80000000, v10, s2
	.loc	1 408 18                        ; attention_backward.py:408:18
	s_and_b32 s2, s4, s27
	.loc	1 405 9                         ; attention_backward.py:405:9
	s_clause 0x1
	buffer_store_b32 v16, v9, s[36:39], 0 offen
	buffer_store_b32 v1, v10, s[36:39], 0 offen
	v_cndmask_b32_e64 v11, 0x80000000, v11, s2
	.loc	1 408 18                        ; attention_backward.py:408:18
	s_and_b32 s2, s4, s28
	.loc	1 405 9                         ; attention_backward.py:405:9
	v_add_lshl_u32 v1, v48, v28, 2
	v_cndmask_b32_e64 v12, 0x80000000, v12, s2
	s_clause 0x1
	buffer_store_b32 v2, v11, s[36:39], 0 offen
	buffer_store_b32 v3, v12, s[36:39], 0 offen
	v_add_lshl_u32 v2, v48, v27, 2
	.loc	1 408 18                        ; attention_backward.py:408:18
	s_and_b32 s2, s4, s29
	.loc	1 405 9                         ; attention_backward.py:405:9
	v_add_lshl_u32 v3, v48, v26, 2
	v_add_lshl_u32 v9, v48, v25, 2
	v_cndmask_b32_e64 v1, 0x80000000, v1, s2
	.loc	1 408 18                        ; attention_backward.py:408:18
	s_and_b32 s2, s4, s30
	.loc	1 405 9                         ; attention_backward.py:405:9
	v_add_lshl_u32 v0, v48, v0, 2
	v_cndmask_b32_e64 v2, 0x80000000, v2, s2
	v_cndmask_b32_e64 v3, 0x80000000, v3, s0
	v_cndmask_b32_e32 v9, 0x80000000, v9, vcc_lo
	.loc	1 408 18                        ; attention_backward.py:408:18
	s_and_b32 vcc_lo, s4, s1
	.loc	1 405 9                         ; attention_backward.py:405:9
	v_cndmask_b32_e32 v0, 0x80000000, v0, vcc_lo
	s_clause 0x4
	buffer_store_b32 v4, v1, s[36:39], 0 offen
	buffer_store_b32 v5, v2, s[36:39], 0 offen
	buffer_store_b32 v6, v3, s[36:39], 0 offen
	buffer_store_b32 v7, v9, s[36:39], 0 offen
	buffer_store_b32 v8, v0, s[36:39], 0 offen
	.loc	1 60 5                          ; attention_backward.py:60:5
	s_endpgm
.Ltmp301:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_attention_bwd_dq_int4xbf16_bool_runtime_outfloat32_doutfloat32_float32_d64_dv64_shaperuntime_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1
		.amdhsa_group_segment_fixed_size 0
		.amdhsa_private_segment_fixed_size 68
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
	.size	amd_strix_halo_gfx1151_attention_bwd_dq_int4xbf16_bool_runtime_outfloat32_doutfloat32_float32_d64_dv64_shaperuntime_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1, .Lfunc_end0-amd_strix_halo_gfx1151_attention_bwd_dq_int4xbf16_bool_runtime_outfloat32_doutfloat32_float32_d64_dv64_shaperuntime_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_attention_bwd_dq_int4xbf16_bool_runtime_outfloat32_doutfloat32_float32_d64_dv64_shaperuntime_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.num_vgpr, 256
	.set amd_strix_halo_gfx1151_attention_bwd_dq_int4xbf16_bool_runtime_outfloat32_doutfloat32_float32_d64_dv64_shaperuntime_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.num_agpr, 0
	.set amd_strix_halo_gfx1151_attention_bwd_dq_int4xbf16_bool_runtime_outfloat32_doutfloat32_float32_d64_dv64_shaperuntime_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.numbered_sgpr, 87
	.set amd_strix_halo_gfx1151_attention_bwd_dq_int4xbf16_bool_runtime_outfloat32_doutfloat32_float32_d64_dv64_shaperuntime_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_attention_bwd_dq_int4xbf16_bool_runtime_outfloat32_doutfloat32_float32_d64_dv64_shaperuntime_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.private_seg_size, 68
	.set amd_strix_halo_gfx1151_attention_bwd_dq_int4xbf16_bool_runtime_outfloat32_doutfloat32_float32_d64_dv64_shaperuntime_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.uses_vcc, 1
	.set amd_strix_halo_gfx1151_attention_bwd_dq_int4xbf16_bool_runtime_outfloat32_doutfloat32_float32_d64_dv64_shaperuntime_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.uses_flat_scratch, 0
	.set amd_strix_halo_gfx1151_attention_bwd_dq_int4xbf16_bool_runtime_outfloat32_doutfloat32_float32_d64_dv64_shaperuntime_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_attention_bwd_dq_int4xbf16_bool_runtime_outfloat32_doutfloat32_float32_d64_dv64_shaperuntime_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.has_recursion, 0
	.set amd_strix_halo_gfx1151_attention_bwd_dq_int4xbf16_bool_runtime_outfloat32_doutfloat32_float32_d64_dv64_shaperuntime_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 25928
; TotalNumSgprs: 89
; NumVgprs: 256
; ScratchSize: 68
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
	.quad	.Ltmp10-.Lfunc_begin0
	.quad	.Ltmp11-.Lfunc_begin0
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
	.quad	.Ltmp34-.Lfunc_begin0
	.quad	.Ltmp35-.Lfunc_begin0
	.quad	.Ltmp38-.Lfunc_begin0
	.quad	.Ltmp39-.Lfunc_begin0
	.quad	.Ltmp41-.Lfunc_begin0
	.quad	.Ltmp42-.Lfunc_begin0
	.quad	.Ltmp52-.Lfunc_begin0
	.quad	.Ltmp53-.Lfunc_begin0
	.quad	.Ltmp55-.Lfunc_begin0
	.quad	.Ltmp56-.Lfunc_begin0
	.quad	.Ltmp57-.Lfunc_begin0
	.quad	.Ltmp58-.Lfunc_begin0
	.quad	.Ltmp59-.Lfunc_begin0
	.quad	.Ltmp60-.Lfunc_begin0
	.quad	.Ltmp109-.Lfunc_begin0
	.quad	.Ltmp110-.Lfunc_begin0
	.quad	.Ltmp111-.Lfunc_begin0
	.quad	.Ltmp112-.Lfunc_begin0
	.quad	.Ltmp113-.Lfunc_begin0
	.quad	.Ltmp114-.Lfunc_begin0
	.quad	.Ltmp115-.Lfunc_begin0
	.quad	.Ltmp279-.Lfunc_begin0
	.quad	.Ltmp280-.Lfunc_begin0
	.quad	.Ltmp281-.Lfunc_begin0
	.quad	.Ltmp282-.Lfunc_begin0
	.quad	.Ltmp283-.Lfunc_begin0
	.quad	.Ltmp284-.Lfunc_begin0
	.quad	.Ltmp285-.Lfunc_begin0
	.quad	.Ltmp286-.Lfunc_begin0
	.quad	.Ltmp287-.Lfunc_begin0
	.quad	.Ltmp288-.Lfunc_begin0
	.quad	.Ltmp289-.Lfunc_begin0
	.quad	.Ltmp290-.Lfunc_begin0
	.quad	.Ltmp291-.Lfunc_begin0
	.quad	.Ltmp292-.Lfunc_begin0
	.quad	.Ltmp293-.Lfunc_begin0
	.quad	.Ltmp294-.Lfunc_begin0
	.quad	.Ltmp295-.Lfunc_begin0
	.quad	.Ltmp296-.Lfunc_begin0
	.quad	.Ltmp297-.Lfunc_begin0
	.quad	.Ltmp298-.Lfunc_begin0
	.quad	.Ltmp299-.Lfunc_begin0
	.quad	.Ltmp300-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges1:
	.quad	.Ltmp5-.Lfunc_begin0
	.quad	.Ltmp6-.Lfunc_begin0
	.quad	.Ltmp12-.Lfunc_begin0
	.quad	.Ltmp13-.Lfunc_begin0
	.quad	.Ltmp14-.Lfunc_begin0
	.quad	.Ltmp15-.Lfunc_begin0
	.quad	.Ltmp18-.Lfunc_begin0
	.quad	.Ltmp19-.Lfunc_begin0
	.quad	.Ltmp23-.Lfunc_begin0
	.quad	.Ltmp24-.Lfunc_begin0
	.quad	.Ltmp25-.Lfunc_begin0
	.quad	.Ltmp26-.Lfunc_begin0
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
	.quad	.Ltmp40-.Lfunc_begin0
	.quad	.Ltmp41-.Lfunc_begin0
	.quad	.Ltmp43-.Lfunc_begin0
	.quad	.Ltmp44-.Lfunc_begin0
	.quad	.Ltmp45-.Lfunc_begin0
	.quad	.Ltmp46-.Lfunc_begin0
	.quad	.Ltmp47-.Lfunc_begin0
	.quad	.Ltmp48-.Lfunc_begin0
	.quad	.Ltmp49-.Lfunc_begin0
	.quad	.Ltmp50-.Lfunc_begin0
	.quad	.Ltmp51-.Lfunc_begin0
	.quad	.Ltmp52-.Lfunc_begin0
	.quad	.Ltmp54-.Lfunc_begin0
	.quad	.Ltmp55-.Lfunc_begin0
	.quad	.Ltmp56-.Lfunc_begin0
	.quad	.Ltmp57-.Lfunc_begin0
	.quad	.Ltmp58-.Lfunc_begin0
	.quad	.Ltmp59-.Lfunc_begin0
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
	.quad	.Ltmp91-.Lfunc_begin0
	.quad	.Ltmp92-.Lfunc_begin0
	.quad	.Ltmp93-.Lfunc_begin0
	.quad	.Ltmp94-.Lfunc_begin0
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
	.quad	.Ltmp279-.Lfunc_begin0
	.quad	.Ltmp280-.Lfunc_begin0
	.quad	.Ltmp281-.Lfunc_begin0
	.quad	.Ltmp282-.Lfunc_begin0
	.quad	.Ltmp283-.Lfunc_begin0
	.quad	.Ltmp284-.Lfunc_begin0
	.quad	.Ltmp285-.Lfunc_begin0
	.quad	.Ltmp286-.Lfunc_begin0
	.quad	.Ltmp287-.Lfunc_begin0
	.quad	.Ltmp288-.Lfunc_begin0
	.quad	.Ltmp289-.Lfunc_begin0
	.quad	.Ltmp290-.Lfunc_begin0
	.quad	.Ltmp291-.Lfunc_begin0
	.quad	.Ltmp292-.Lfunc_begin0
	.quad	.Ltmp293-.Lfunc_begin0
	.quad	.Ltmp294-.Lfunc_begin0
	.quad	.Ltmp295-.Lfunc_begin0
	.quad	.Ltmp296-.Lfunc_begin0
	.quad	.Ltmp297-.Lfunc_begin0
	.quad	.Ltmp298-.Lfunc_begin0
	.quad	.Ltmp299-.Lfunc_begin0
	.quad	.Ltmp300-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges2:
	.quad	.Ltmp116-.Lfunc_begin0
	.quad	.Ltmp126-.Lfunc_begin0
	.quad	.Ltmp136-.Lfunc_begin0
	.quad	.Ltmp137-.Lfunc_begin0
	.quad	.Ltmp138-.Lfunc_begin0
	.quad	.Ltmp146-.Lfunc_begin0
	.quad	.Ltmp156-.Lfunc_begin0
	.quad	.Ltmp157-.Lfunc_begin0
	.quad	.Ltmp158-.Lfunc_begin0
	.quad	.Ltmp166-.Lfunc_begin0
	.quad	.Ltmp177-.Lfunc_begin0
	.quad	.Ltmp178-.Lfunc_begin0
	.quad	.Ltmp179-.Lfunc_begin0
	.quad	.Ltmp187-.Lfunc_begin0
	.quad	.Ltmp197-.Lfunc_begin0
	.quad	.Ltmp198-.Lfunc_begin0
	.quad	.Ltmp199-.Lfunc_begin0
	.quad	.Ltmp207-.Lfunc_begin0
	.quad	.Ltmp218-.Lfunc_begin0
	.quad	.Ltmp226-.Lfunc_begin0
	.quad	.Ltmp237-.Lfunc_begin0
	.quad	.Ltmp238-.Lfunc_begin0
	.quad	.Ltmp239-.Lfunc_begin0
	.quad	.Ltmp247-.Lfunc_begin0
	.quad	.Ltmp258-.Lfunc_begin0
	.quad	.Ltmp259-.Lfunc_begin0
	.quad	.Ltmp260-.Lfunc_begin0
	.quad	.Ltmp268-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges3:
	.quad	.Ltmp117-.Lfunc_begin0
	.quad	.Ltmp118-.Lfunc_begin0
	.quad	.Ltmp119-.Lfunc_begin0
	.quad	.Ltmp120-.Lfunc_begin0
	.quad	.Ltmp121-.Lfunc_begin0
	.quad	.Ltmp122-.Lfunc_begin0
	.quad	.Ltmp123-.Lfunc_begin0
	.quad	.Ltmp124-.Lfunc_begin0
	.quad	.Ltmp125-.Lfunc_begin0
	.quad	.Ltmp126-.Lfunc_begin0
	.quad	.Ltmp136-.Lfunc_begin0
	.quad	.Ltmp137-.Lfunc_begin0
	.quad	.Ltmp139-.Lfunc_begin0
	.quad	.Ltmp140-.Lfunc_begin0
	.quad	.Ltmp141-.Lfunc_begin0
	.quad	.Ltmp142-.Lfunc_begin0
	.quad	.Ltmp143-.Lfunc_begin0
	.quad	.Ltmp144-.Lfunc_begin0
	.quad	.Ltmp145-.Lfunc_begin0
	.quad	.Ltmp146-.Lfunc_begin0
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
	.quad	.Ltmp177-.Lfunc_begin0
	.quad	.Ltmp178-.Lfunc_begin0
	.quad	.Ltmp180-.Lfunc_begin0
	.quad	.Ltmp181-.Lfunc_begin0
	.quad	.Ltmp182-.Lfunc_begin0
	.quad	.Ltmp183-.Lfunc_begin0
	.quad	.Ltmp184-.Lfunc_begin0
	.quad	.Ltmp185-.Lfunc_begin0
	.quad	.Ltmp186-.Lfunc_begin0
	.quad	.Ltmp187-.Lfunc_begin0
	.quad	.Ltmp197-.Lfunc_begin0
	.quad	.Ltmp198-.Lfunc_begin0
	.quad	.Ltmp200-.Lfunc_begin0
	.quad	.Ltmp201-.Lfunc_begin0
	.quad	.Ltmp202-.Lfunc_begin0
	.quad	.Ltmp203-.Lfunc_begin0
	.quad	.Ltmp204-.Lfunc_begin0
	.quad	.Ltmp205-.Lfunc_begin0
	.quad	.Ltmp206-.Lfunc_begin0
	.quad	.Ltmp207-.Lfunc_begin0
	.quad	.Ltmp219-.Lfunc_begin0
	.quad	.Ltmp220-.Lfunc_begin0
	.quad	.Ltmp221-.Lfunc_begin0
	.quad	.Ltmp222-.Lfunc_begin0
	.quad	.Ltmp223-.Lfunc_begin0
	.quad	.Ltmp224-.Lfunc_begin0
	.quad	.Ltmp225-.Lfunc_begin0
	.quad	.Ltmp226-.Lfunc_begin0
	.quad	.Ltmp237-.Lfunc_begin0
	.quad	.Ltmp238-.Lfunc_begin0
	.quad	.Ltmp240-.Lfunc_begin0
	.quad	.Ltmp241-.Lfunc_begin0
	.quad	.Ltmp242-.Lfunc_begin0
	.quad	.Ltmp243-.Lfunc_begin0
	.quad	.Ltmp244-.Lfunc_begin0
	.quad	.Ltmp245-.Lfunc_begin0
	.quad	.Ltmp246-.Lfunc_begin0
	.quad	.Ltmp247-.Lfunc_begin0
	.quad	.Ltmp258-.Lfunc_begin0
	.quad	.Ltmp259-.Lfunc_begin0
	.quad	.Ltmp261-.Lfunc_begin0
	.quad	.Ltmp262-.Lfunc_begin0
	.quad	.Ltmp263-.Lfunc_begin0
	.quad	.Ltmp264-.Lfunc_begin0
	.quad	.Ltmp265-.Lfunc_begin0
	.quad	.Ltmp266-.Lfunc_begin0
	.quad	.Ltmp267-.Lfunc_begin0
	.quad	.Ltmp268-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges4:
	.quad	.Ltmp127-.Lfunc_begin0
	.quad	.Ltmp133-.Lfunc_begin0
	.quad	.Ltmp134-.Lfunc_begin0
	.quad	.Ltmp136-.Lfunc_begin0
	.quad	.Ltmp147-.Lfunc_begin0
	.quad	.Ltmp153-.Lfunc_begin0
	.quad	.Ltmp154-.Lfunc_begin0
	.quad	.Ltmp156-.Lfunc_begin0
	.quad	.Ltmp167-.Lfunc_begin0
	.quad	.Ltmp173-.Lfunc_begin0
	.quad	.Ltmp174-.Lfunc_begin0
	.quad	.Ltmp176-.Lfunc_begin0
	.quad	.Ltmp188-.Lfunc_begin0
	.quad	.Ltmp194-.Lfunc_begin0
	.quad	.Ltmp195-.Lfunc_begin0
	.quad	.Ltmp197-.Lfunc_begin0
	.quad	.Ltmp208-.Lfunc_begin0
	.quad	.Ltmp214-.Lfunc_begin0
	.quad	.Ltmp215-.Lfunc_begin0
	.quad	.Ltmp217-.Lfunc_begin0
	.quad	.Ltmp227-.Lfunc_begin0
	.quad	.Ltmp233-.Lfunc_begin0
	.quad	.Ltmp234-.Lfunc_begin0
	.quad	.Ltmp236-.Lfunc_begin0
	.quad	.Ltmp248-.Lfunc_begin0
	.quad	.Ltmp254-.Lfunc_begin0
	.quad	.Ltmp255-.Lfunc_begin0
	.quad	.Ltmp257-.Lfunc_begin0
	.quad	.Ltmp269-.Lfunc_begin0
	.quad	.Ltmp275-.Lfunc_begin0
	.quad	.Ltmp276-.Lfunc_begin0
	.quad	.Ltmp278-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges5:
	.quad	.Ltmp128-.Lfunc_begin0
	.quad	.Ltmp129-.Lfunc_begin0
	.quad	.Ltmp130-.Lfunc_begin0
	.quad	.Ltmp131-.Lfunc_begin0
	.quad	.Ltmp132-.Lfunc_begin0
	.quad	.Ltmp133-.Lfunc_begin0
	.quad	.Ltmp135-.Lfunc_begin0
	.quad	.Ltmp136-.Lfunc_begin0
	.quad	.Ltmp148-.Lfunc_begin0
	.quad	.Ltmp149-.Lfunc_begin0
	.quad	.Ltmp150-.Lfunc_begin0
	.quad	.Ltmp151-.Lfunc_begin0
	.quad	.Ltmp152-.Lfunc_begin0
	.quad	.Ltmp153-.Lfunc_begin0
	.quad	.Ltmp155-.Lfunc_begin0
	.quad	.Ltmp156-.Lfunc_begin0
	.quad	.Ltmp168-.Lfunc_begin0
	.quad	.Ltmp169-.Lfunc_begin0
	.quad	.Ltmp170-.Lfunc_begin0
	.quad	.Ltmp171-.Lfunc_begin0
	.quad	.Ltmp172-.Lfunc_begin0
	.quad	.Ltmp173-.Lfunc_begin0
	.quad	.Ltmp175-.Lfunc_begin0
	.quad	.Ltmp176-.Lfunc_begin0
	.quad	.Ltmp189-.Lfunc_begin0
	.quad	.Ltmp190-.Lfunc_begin0
	.quad	.Ltmp191-.Lfunc_begin0
	.quad	.Ltmp192-.Lfunc_begin0
	.quad	.Ltmp193-.Lfunc_begin0
	.quad	.Ltmp194-.Lfunc_begin0
	.quad	.Ltmp196-.Lfunc_begin0
	.quad	.Ltmp197-.Lfunc_begin0
	.quad	.Ltmp209-.Lfunc_begin0
	.quad	.Ltmp210-.Lfunc_begin0
	.quad	.Ltmp211-.Lfunc_begin0
	.quad	.Ltmp212-.Lfunc_begin0
	.quad	.Ltmp213-.Lfunc_begin0
	.quad	.Ltmp214-.Lfunc_begin0
	.quad	.Ltmp216-.Lfunc_begin0
	.quad	.Ltmp217-.Lfunc_begin0
	.quad	.Ltmp228-.Lfunc_begin0
	.quad	.Ltmp229-.Lfunc_begin0
	.quad	.Ltmp230-.Lfunc_begin0
	.quad	.Ltmp231-.Lfunc_begin0
	.quad	.Ltmp232-.Lfunc_begin0
	.quad	.Ltmp233-.Lfunc_begin0
	.quad	.Ltmp235-.Lfunc_begin0
	.quad	.Ltmp236-.Lfunc_begin0
	.quad	.Ltmp249-.Lfunc_begin0
	.quad	.Ltmp250-.Lfunc_begin0
	.quad	.Ltmp251-.Lfunc_begin0
	.quad	.Ltmp252-.Lfunc_begin0
	.quad	.Ltmp253-.Lfunc_begin0
	.quad	.Ltmp254-.Lfunc_begin0
	.quad	.Ltmp256-.Lfunc_begin0
	.quad	.Ltmp257-.Lfunc_begin0
	.quad	.Ltmp270-.Lfunc_begin0
	.quad	.Ltmp271-.Lfunc_begin0
	.quad	.Ltmp272-.Lfunc_begin0
	.quad	.Ltmp273-.Lfunc_begin0
	.quad	.Ltmp274-.Lfunc_begin0
	.quad	.Ltmp275-.Lfunc_begin0
	.quad	.Ltmp277-.Lfunc_begin0
	.quad	.Ltmp278-.Lfunc_begin0
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
	.asciz	"amd_strix_halo_gfx1151_attention_bwd_dq_int4xbf16_bool_runtime_outfloat32_doutfloat32_float32_d64_dv64_shaperuntime_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1"                        ; string offset=97 ; amd_strix_halo_gfx1151_attention_bwd_dq_int4xbf16_bool_runtime_outfloat32_doutfloat32_float32_d64_dv64_shaperuntime_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1
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
    .name:           amd_strix_halo_gfx1151_attention_bwd_dq_int4xbf16_bool_runtime_outfloat32_doutfloat32_float32_d64_dv64_shaperuntime_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1
    .private_segment_fixed_size: 68
    .sgpr_count:     89
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_attention_bwd_dq_int4xbf16_bool_runtime_outfloat32_doutfloat32_float32_d64_dv64_shaperuntime_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     256
    .vgpr_spill_count: 16
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
