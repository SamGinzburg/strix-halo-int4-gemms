	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_attention_bwd_dq_int4xbf16_bool_runtime_outfloat32_doutbfloat16_float32_d64_dv64_shaperuntime_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1                          ; -- Begin function amd_strix_halo_gfx1151_attention_bwd_dq_int4xbf16_bool_runtime_outfloat32_doutbfloat16_float32_d64_dv64_shaperuntime_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1
	.p2align	8
	.type	amd_strix_halo_gfx1151_attention_bwd_dq_int4xbf16_bool_runtime_outfloat32_doutbfloat16_float32_d64_dv64_shaperuntime_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1,@function
amd_strix_halo_gfx1151_attention_bwd_dq_int4xbf16_bool_runtime_outfloat32_doutbfloat16_float32_d64_dv64_shaperuntime_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1:                                 ; @amd_strix_halo_gfx1151_attention_bwd_dq_int4xbf16_bool_runtime_outfloat32_doutbfloat16_float32_d64_dv64_shaperuntime_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1
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
	s_clause 0x1
	s_load_b64 s[40:41], s[0:1], 0x0
	s_load_b64 s[24:25], s[0:1], 0x18
	.loc	1 134 28                        ; attention_backward.py:134:28
	v_xor_b32_e32 v20, 0x198, v0
	s_load_b128 s[36:39], s[0:1], 0x38
	.loc	1 124 31                        ; attention_backward.py:124:31
	v_and_b32_e32 v121, 15, v0
	v_or_b32_e32 v9, 14, v106
	v_and_b32_e32 v78, 31, v0
	v_or_b32_e32 v2, 2, v106
	v_or_b32_e32 v3, 4, v106
	v_or_b32_e32 v4, 6, v106
	v_mov_b32_e32 v113, v9
	v_or_b32_e32 v6, 8, v106
	v_or_b32_e32 v7, 10, v106
	v_or_b32_e32 v8, 12, v106
	v_and_b32_e32 v103, 32, v0
	s_waitcnt lgkmcnt(0)
	s_and_b32 s4, 1, s20
	s_bitcmp1_b32 s20, 8
	.loc	1 133 26                        ; attention_backward.py:133:26
	s_mul_i32 s47, s3, s30
	s_cselect_b32 s33, -1, 0
	s_cmp_eq_u32 s4, 1
	.loc	1 135 17                        ; attention_backward.py:135:17
	v_mad_u64_u32 v[84:85], null, s34, v106, v[78:79]
	s_cselect_b32 s17, -1, 0
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
	.loc	1 135 17                        ; attention_backward.py:135:17
	v_lshl_add_u32 v114, s34, 1, v84
	.loc	1 124 21                        ; attention_backward.py:124:21
	v_or_b32_e32 v4, s46, v4
	.loc	1 135 17                        ; attention_backward.py:135:17
	v_lshl_add_u32 v115, s34, 2, v84
	v_mad_u64_u32 v[86:87], null, s34, 10, v[84:85]
	v_lshl_add_u32 v116, s34, 3, v84
	v_mad_u64_u32 v[87:88], null, s34, 12, v[84:85]
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_2) | instid1(SALU_CYCLE_3)
	.loc	1 121 23                        ; attention_backward.py:121:23
	v_readfirstlane_b32 s5, v1
	.loc	1 135 17                        ; attention_backward.py:135:17
	v_mad_u64_u32 v[88:89], null, s34, 14, v[84:85]
	.loc	1 121 23                        ; attention_backward.py:121:23
	s_mul_f32 s5, s5, 0x4f7ffffe
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
	s_sub_i32 s18, s7, s5
	.loc	1 123 34                        ; attention_backward.py:123:34
	s_xor_b32 s10, s28, s29
	v_rcp_iflag_f32_e32 v1, s2
	.loc	1 133 27                        ; attention_backward.py:133:27
	s_mul_i32 s7, s18, s28
	.loc	1 123 34                        ; attention_backward.py:123:34
	s_ashr_i32 s10, s10, 31
	.loc	1 122 22                        ; attention_backward.py:122:22
	s_sub_i32 s19, s3, s7
	.loc	1 139 44                        ; attention_backward.py:139:44
	v_cmp_gt_i32_e64 s2, s34, v78
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 123 34                        ; attention_backward.py:123:34
	v_readfirstlane_b32 s8, v1
	.loc	1 124 31                        ; attention_backward.py:124:31
	v_or_b32_e32 v1, s46, v106
	.loc	1 123 34                        ; attention_backward.py:123:34
	s_mul_f32 s8, s8, 0x4f7ffffe
	.loc	1 124 21                        ; attention_backward.py:124:21
	v_or_b32_e32 v11, 20, v1
	.loc	1 128 21                        ; attention_backward.py:128:21
	v_cmp_gt_i32_e32 vcc_lo, s30, v1
	.loc	1 124 21                        ; attention_backward.py:124:21
	v_or_b32_e32 v10, 18, v1
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
	s_abs_i32 s52, s19
	.loc	1 123 34                        ; attention_backward.py:123:34
	s_xor_b32 s3, s3, s10
	.loc	1 124 21 is_stmt 1              ; attention_backward.py:124:21
	s_or_b32 s4, s46, 1
	.loc	1 123 34                        ; attention_backward.py:123:34
	s_sub_i32 s54, s3, s10
	.loc	1 124 21                        ; attention_backward.py:124:21
	s_or_b32 s5, s46, 2
	.loc	1 123 19                        ; attention_backward.py:123:19
	s_abs_i32 s53, s54
	.loc	1 124 21                        ; attention_backward.py:124:21
	s_or_b32 s6, s46, 3
	.loc	1 123 19                        ; attention_backward.py:123:19
	s_cvt_f32_u32 s11, s53
	.loc	1 124 21                        ; attention_backward.py:124:21
	s_or_b32 s7, s46, 4
	s_or_b32 s8, s46, 5
	s_or_b32 s9, s46, 6
	.loc	1 123 19                        ; attention_backward.py:123:19
	v_rcp_iflag_f32_e32 v5, s11
	.loc	1 124 21                        ; attention_backward.py:124:21
	s_or_b32 s3, s46, 7
	s_or_b32 s10, s46, 8
	s_or_b32 s12, s46, 9
	s_or_b32 s13, s46, 10
	s_or_b32 s14, s46, 11
	s_or_b32 s11, s46, 12
	s_or_b32 s15, s46, 13
	s_or_b32 s16, s46, 14
	s_or_b32 s26, s46, 15
	.loc	1 123 19                        ; attention_backward.py:123:19
	v_readfirstlane_b32 s27, v5
	.loc	1 124 21                        ; attention_backward.py:124:21
	s_or_b32 s42, s46, 16
	s_or_b32 s43, s46, 17
	s_or_b32 s50, s46, 18
	s_or_b32 s51, s46, 19
	.loc	1 123 19                        ; attention_backward.py:123:19
	s_mul_f32 s27, s27, 0x4f7ffffe
	.loc	1 124 21                        ; attention_backward.py:124:21
	s_or_b32 s55, s46, 20
	s_or_b32 s57, s46, 21
	s_or_b32 s59, s46, 22
	.loc	1 123 19                        ; attention_backward.py:123:19
	s_cvt_u32_f32 s44, s27
	s_sub_i32 s27, 0, s53
	.loc	1 124 21                        ; attention_backward.py:124:21
	s_or_b32 s61, s46, 23
	s_or_b32 s63, s46, 24
	.loc	1 123 19                        ; attention_backward.py:123:19
	s_mul_i32 s27, s27, s44
	.loc	1 124 21                        ; attention_backward.py:124:21
	s_or_b32 s79, s46, 25
	.loc	1 123 19                        ; attention_backward.py:123:19
	s_mul_hi_u32 s27, s44, s27
	.loc	1 124 21                        ; attention_backward.py:124:21
	s_or_b32 s80, s46, 26
	s_or_b32 s81, s46, 27
	s_or_b32 s82, s46, 28
	s_or_b32 s83, s46, 29
	s_or_b32 s84, s46, 30
	s_or_b32 s85, s46, 31
	.loc	1 123 19                        ; attention_backward.py:123:19
	s_add_i32 s44, s44, s27
	.loc	1 128 21                        ; attention_backward.py:128:21
	s_cmp_lt_i32 s46, s30
	.loc	1 124 21                        ; attention_backward.py:124:21
	v_or_b32_e32 v5, s46, v6
	.loc	1 128 21                        ; attention_backward.py:128:21
	s_cselect_b32 s78, -1, 0
	s_cmp_lt_i32 s4, s30
	.loc	1 124 21                        ; attention_backward.py:124:21
	v_or_b32_e32 v6, s46, v7
	.loc	1 128 21                        ; attention_backward.py:128:21
	s_cselect_b32 s73, -1, 0
	s_cmp_lt_i32 s5, s30
	.loc	1 124 21                        ; attention_backward.py:124:21
	v_or_b32_e32 v7, s46, v8
	.loc	1 128 21                        ; attention_backward.py:128:21
	s_cselect_b32 s70, -1, 0
	s_cmp_lt_i32 s6, s30
	.loc	1 124 21                        ; attention_backward.py:124:21
	v_or_b32_e32 v8, s46, v9
	.loc	1 128 21                        ; attention_backward.py:128:21
	s_cselect_b32 s68, -1, 0
	s_cmp_lt_i32 s7, s30
	.loc	1 124 21                        ; attention_backward.py:124:21
	v_or_b32_e32 v9, 16, v1
	.loc	1 128 21                        ; attention_backward.py:128:21
	s_cselect_b32 s66, -1, 0
	s_cmp_lt_i32 s8, s30
	v_cmp_gt_i32_e64 s4, s30, v3
	s_cselect_b32 s64, -1, 0
	s_cmp_lt_i32 s9, s30
	v_cmp_gt_i32_e64 s5, s30, v4
	s_cselect_b32 s62, -1, 0
	s_cmp_lt_i32 s3, s30
	v_cmp_gt_i32_e64 s3, s30, v2
	s_cselect_b32 s60, -1, 0
	s_cmp_lt_i32 s10, s30
	v_cmp_gt_i32_e64 s7, s30, v6
	s_cselect_b32 s58, -1, 0
	s_cmp_lt_i32 s12, s30
	v_cmp_gt_i32_e64 s12, s30, v11
	s_cselect_b32 s56, -1, 0
	s_cmp_lt_i32 s13, s30
	v_cmp_gt_i32_e64 s6, s30, v5
	s_cselect_b32 s49, -1, 0
	s_cmp_lt_i32 s14, s30
	v_cmp_gt_i32_e64 s8, s30, v7
	s_cselect_b32 s48, -1, 0
	s_cmp_lt_i32 s11, s30
	v_cmp_gt_i32_e64 s9, s30, v8
	s_cselect_b32 s45, -1, 0
	s_cmp_lt_i32 s15, s30
	v_cmp_gt_i32_e64 s10, s30, v9
	s_cselect_b32 s28, -1, 0
	s_cmp_lt_i32 s16, s30
	v_cmp_gt_i32_e64 s11, s30, v10
	s_cselect_b32 s27, -1, 0
	s_cmp_lt_i32 s26, s30
	v_cmp_gt_i32_e64 s13, s30, v12
	s_cselect_b32 s26, -1, 0
	s_cmp_lt_i32 s42, s30
	v_cmp_gt_i32_e64 s14, s30, v13
	s_cselect_b32 s77, -1, 0
	s_cmp_lt_i32 s43, s30
	s_mov_b32 s43, 0x31027000
	s_cselect_b32 s76, -1, 0
	s_cmp_lt_i32 s50, s30
	v_cmp_gt_i32_e64 s16, s30, v15
	s_cselect_b32 s75, -1, 0
	s_cmp_lt_i32 s51, s30
	v_cmp_gt_i32_e64 s15, s30, v14
	s_cselect_b32 s74, -1, 0
	s_cmp_lt_i32 s55, s30
	s_cselect_b32 s72, -1, 0
	s_cmp_lt_i32 s57, s30
	s_cselect_b32 s71, -1, 0
	s_cmp_lt_i32 s59, s30
	s_cselect_b32 s69, -1, 0
	s_cmp_lt_i32 s61, s30
	s_cselect_b32 s67, -1, 0
	s_cmp_lt_i32 s63, s30
	s_cselect_b32 s65, -1, 0
	s_cmp_lt_i32 s79, s30
	s_cselect_b32 s63, -1, 0
	s_cmp_lt_i32 s80, s30
	s_cselect_b32 s61, -1, 0
	s_cmp_lt_i32 s81, s30
	s_cselect_b32 s59, -1, 0
	s_cmp_lt_i32 s82, s30
	s_cselect_b32 s57, -1, 0
	s_cmp_lt_i32 s83, s30
	s_cselect_b32 s55, -1, 0
	s_cmp_lt_i32 s84, s30
	s_cselect_b32 s50, -1, 0
	s_cmp_lt_i32 s85, s30
	s_cselect_b32 s51, -1, 0
	.loc	1 135 17                        ; attention_backward.py:135:17
	s_add_i32 s47, s47, s46
	.loc	1 139 22                        ; attention_backward.py:139:22
	s_and_b32 vcc_lo, vcc_lo, s2
	.loc	1 135 17                        ; attention_backward.py:135:17
	s_mul_i32 s42, s47, s34
	.loc	1 134 28                        ; attention_backward.py:134:28
	s_and_b32 s41, s41, 0xffff
	.loc	1 135 17                        ; attention_backward.py:135:17
	v_add_nc_u32_e32 v11, s42, v84
	v_add_nc_u32_e32 v1, s42, v114
	v_add_nc_u32_e32 v2, s42, v115
	v_add_nc_u32_e32 v3, s42, v85
	v_add_nc_u32_e32 v4, s42, v116
	.loc	1 134 28                        ; attention_backward.py:134:28
	v_cndmask_b32_e32 v6, 0x80000000, v11, vcc_lo
	.loc	1 139 22                        ; attention_backward.py:139:22
	s_and_b32 vcc_lo, s3, s2
	.loc	1 135 17                        ; attention_backward.py:135:17
	v_mad_u64_u32 v[7:8], null, s34, 18, v[11:12]
	.loc	1 134 28                        ; attention_backward.py:134:28
	v_cndmask_b32_e32 v1, 0x80000000, v1, vcc_lo
	.loc	1 139 22                        ; attention_backward.py:139:22
	s_and_b32 vcc_lo, s4, s2
	.loc	1 135 17                        ; attention_backward.py:135:17
	v_mad_u64_u32 v[8:9], null, s34, 20, v[11:12]
	.loc	1 134 28                        ; attention_backward.py:134:28
	v_cndmask_b32_e32 v2, 0x80000000, v2, vcc_lo
	.loc	1 139 22                        ; attention_backward.py:139:22
	s_and_b32 vcc_lo, s5, s2
	.loc	1 135 17                        ; attention_backward.py:135:17
	v_add_nc_u32_e32 v5, s42, v86
	v_mad_u64_u32 v[9:10], null, s34, 22, v[11:12]
	.loc	1 134 28                        ; attention_backward.py:134:28
	v_cndmask_b32_e32 v10, 0x80000000, v3, vcc_lo
	.loc	1 139 22                        ; attention_backward.py:139:22
	s_and_b32 vcc_lo, s6, s2
	.loc	1 135 17                        ; attention_backward.py:135:17
	v_mad_u64_u32 v[12:13], null, s34, 24, v[11:12]
	v_add_nc_u32_e32 v17, s42, v87
	v_add_nc_u32_e32 v18, s42, v88
	s_mov_b32 s42, 0x7ffffffe
	.loc	1 134 28                        ; attention_backward.py:134:28
	v_cndmask_b32_e32 v13, 0x80000000, v4, vcc_lo
	.loc	1 139 22                        ; attention_backward.py:139:22
	s_and_b32 vcc_lo, s7, s2
	.loc	1 135 17                        ; attention_backward.py:135:17
	v_lshl_add_u32 v14, s34, 4, v11
	.loc	1 134 28                        ; attention_backward.py:134:28
	v_cndmask_b32_e32 v15, 0x80000000, v5, vcc_lo
	s_clause 0x5
	buffer_load_u8 v5, v6, s[40:43], 0 offen
	buffer_load_u8 v6, v1, s[40:43], 0 offen
	buffer_load_u8 v3, v2, s[40:43], 0 offen
	buffer_load_u8 v4, v10, s[40:43], 0 offen
	buffer_load_u8 v1, v13, s[40:43], 0 offen
	buffer_load_u8 v2, v15, s[40:43], 0 offen
	.loc	1 139 22                        ; attention_backward.py:139:22
	s_and_b32 vcc_lo, s10, s2
	s_and_b32 s3, s9, s2
	.loc	1 134 28                        ; attention_backward.py:134:28
	v_cndmask_b32_e32 v10, 0x80000000, v14, vcc_lo
	.loc	1 139 22                        ; attention_backward.py:139:22
	s_and_b32 vcc_lo, s11, s2
	.loc	1 135 17                        ; attention_backward.py:135:17
	v_mad_u64_u32 v[13:14], null, s34, 26, v[11:12]
	.loc	1 134 28                        ; attention_backward.py:134:28
	v_cndmask_b32_e32 v7, 0x80000000, v7, vcc_lo
	.loc	1 139 22                        ; attention_backward.py:139:22
	s_and_b32 vcc_lo, s12, s2
	.loc	1 135 17                        ; attention_backward.py:135:17
	v_mad_u64_u32 v[14:15], null, s34, 28, v[11:12]
	.loc	1 134 28                        ; attention_backward.py:134:28
	v_cndmask_b32_e32 v8, 0x80000000, v8, vcc_lo
	.loc	1 139 22                        ; attention_backward.py:139:22
	s_and_b32 vcc_lo, s13, s2
	.loc	1 142 31                        ; attention_backward.py:142:31
	s_and_b32 s25, s25, 0xffff
	.loc	1 134 28                        ; attention_backward.py:134:28
	v_cndmask_b32_e32 v15, 0x80000000, v9, vcc_lo
	.loc	1 139 22                        ; attention_backward.py:139:22
	s_and_b32 vcc_lo, s14, s2
	.loc	1 134 28                        ; attention_backward.py:134:28
	s_clause 0x3
	buffer_load_u8 v9, v10, s[40:43], 0 offen
	buffer_load_u8 v10, v7, s[40:43], 0 offen
	buffer_load_u8 v7, v8, s[40:43], 0 offen
	buffer_load_u8 v8, v15, s[40:43], 0 offen
	v_cndmask_b32_e32 v19, 0x80000000, v12, vcc_lo
	.loc	1 139 22                        ; attention_backward.py:139:22
	s_and_b32 vcc_lo, s8, s2
	.loc	1 135 17                        ; attention_backward.py:135:17
	v_mad_u64_u32 v[11:12], null, s34, 30, v[11:12]
	.loc	1 134 28                        ; attention_backward.py:134:28
	v_cndmask_b32_e32 v17, 0x80000000, v17, vcc_lo
	.loc	1 139 22                        ; attention_backward.py:139:22
	s_and_b32 vcc_lo, s15, s2
	.loc	1 134 28                        ; attention_backward.py:134:28
	v_cndmask_b32_e64 v15, 0x80000000, v18, s3
	v_cndmask_b32_e32 v12, 0x80000000, v13, vcc_lo
	.loc	1 128 21                        ; attention_backward.py:128:21
	v_cmp_gt_i32_e32 vcc_lo, s30, v16
	.loc	1 139 22                        ; attention_backward.py:139:22
	s_and_b32 s3, s16, s2
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 134 28                        ; attention_backward.py:134:28
	v_cndmask_b32_e64 v16, 0x80000000, v14, s3
	.loc	1 168 40                        ; attention_backward.py:168:40
	v_cmp_gt_i32_e64 s3, s35, v0
	.loc	1 139 22                        ; attention_backward.py:139:22
	s_and_b32 vcc_lo, vcc_lo, s2
	.loc	1 134 28                        ; attention_backward.py:134:28
	v_cndmask_b32_e32 v18, 0x80000000, v11, vcc_lo
	s_clause 0x5
	buffer_load_u8 v13, v19, s[40:43], 0 offen
	buffer_load_u8 v14, v12, s[40:43], 0 offen
	buffer_load_u8 v11, v17, s[40:43], 0 offen
	buffer_load_u8 v12, v15, s[40:43], 0 offen
	buffer_load_u8 v15, v16, s[40:43], 0 offen
	buffer_load_u8 v16, v18, s[40:43], 0 offen
	v_xor_b32_e32 v19, 0x88, v0
	.loc	1 168 18                        ; attention_backward.py:168:18
	s_and_b32 vcc_lo, s78, s3
	s_and_b32 s4, s77, s3
	s_and_b32 s5, s63, s3
	s_and_b32 s6, s61, s3
	.loc	1 134 28                        ; attention_backward.py:134:28
	v_add_nc_u32_e32 v118, 0, v19
	.loc	1 166 23                        ; attention_backward.py:166:23
	s_and_b32 s41, s37, 0xffff
	s_mov_b32 s40, s36
	.loc	1 168 18                        ; attention_backward.py:168:18
	s_and_b32 s7, s51, s3
	.loc	1 167 13                        ; attention_backward.py:167:13
	s_waitcnt vmcnt(11)
	v_mad_u64_u32 v[17:18], null, s47, s35, v[0:1]
	.loc	1 134 28                        ; attention_backward.py:134:28
	v_xor_b32_e32 v18, 0x110, v0
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 167 13                        ; attention_backward.py:167:13
	v_add_nc_u32_e32 v24, s35, v17
	v_lshl_add_u32 v19, s35, 4, v17
	v_add_nc_u32_e32 v21, s35, v24
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_lshlrev_b32_e32 v23, 2, v24
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 167 13                        ; attention_backward.py:167:13
	v_add_nc_u32_e32 v25, s35, v21
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_lshlrev_b32_e32 v27, 2, v21
	.loc	1 171 28                        ; attention_backward.py:171:28
	v_lshlrev_b32_e32 v21, 1, v21
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_lshlrev_b32_e32 v31, 2, v25
	.loc	1 171 28                        ; attention_backward.py:171:28
	v_lshlrev_b32_e32 v24, 1, v24
	.loc	1 134 28                        ; attention_backward.py:134:28
	v_add_nc_u32_e32 v119, 0, v18
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_lshlrev_b32_e32 v18, 2, v17
	.loc	1 171 28                        ; attention_backward.py:171:28
	v_lshlrev_b32_e32 v17, 1, v17
	.loc	1 134 28                        ; attention_backward.py:134:28
	v_add_nc_u32_e32 v117, 0, v0
	.loc	1 167 13                        ; attention_backward.py:167:13
	v_add_nc_u32_e32 v29, s35, v25
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_dual_cndmask_b32 v18, 0x80000000, v18 :: v_dual_lshlrev_b32 v25, 1, v25
	.loc	1 171 28                        ; attention_backward.py:171:28
	v_cndmask_b32_e32 v17, 0x80000000, v17, vcc_lo
	.loc	1 168 18                        ; attention_backward.py:168:18
	s_and_b32 vcc_lo, s73, s3
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_dual_cndmask_b32 v23, 0x80000000, v23 :: v_dual_add_nc_u32 v120, 0, v20
	.loc	1 167 13                        ; attention_backward.py:167:13
	v_add_nc_u32_e32 v20, s35, v19
	v_add_nc_u32_e32 v33, s35, v29
	.loc	1 171 28                        ; attention_backward.py:171:28
	v_cndmask_b32_e32 v24, 0x80000000, v24, vcc_lo
	.loc	1 168 18                        ; attention_backward.py:168:18
	s_and_b32 vcc_lo, s70, s3
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_lshlrev_b32_e32 v35, 2, v29
	.loc	1 167 13                        ; attention_backward.py:167:13
	v_add_nc_u32_e32 v26, s35, v20
	v_add_nc_u32_e32 v37, s35, v33
	.loc	1 171 28                        ; attention_backward.py:171:28
	v_lshlrev_b32_e32 v29, 1, v29
	v_dual_cndmask_b32 v21, 0x80000000, v21 :: v_dual_lshlrev_b32 v22, 2, v19
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 167 13                        ; attention_backward.py:167:13
	v_add_nc_u32_e32 v30, s35, v26
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_cndmask_b32_e32 v27, 0x80000000, v27, vcc_lo
	.loc	1 168 18                        ; attention_backward.py:168:18
	s_and_b32 vcc_lo, s68, s3
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_lshlrev_b32_e32 v39, 2, v33
	.loc	1 171 28                        ; attention_backward.py:171:28
	v_lshlrev_b32_e32 v33, 1, v33
	.loc	1 167 13                        ; attention_backward.py:167:13
	v_add_nc_u32_e32 v34, s35, v30
	.loc	1 171 28                        ; attention_backward.py:171:28
	v_dual_cndmask_b32 v25, 0x80000000, v25 :: v_dual_lshlrev_b32 v28, 2, v20
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_cndmask_b32_e32 v31, 0x80000000, v31, vcc_lo
	.loc	1 168 18                        ; attention_backward.py:168:18
	s_and_b32 vcc_lo, s66, s3
	.loc	1 171 28                        ; attention_backward.py:171:28
	v_lshlrev_b32_e32 v19, 1, v19
	.loc	1 167 13                        ; attention_backward.py:167:13
	v_add_nc_u32_e32 v38, s35, v34
	v_add_nc_u32_e32 v41, s35, v37
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_lshlrev_b32_e32 v43, 2, v37
	v_dual_cndmask_b32 v35, 0x80000000, v35 :: v_dual_lshlrev_b32 v20, 1, v20
	.loc	1 171 28                        ; attention_backward.py:171:28
	v_dual_cndmask_b32 v29, 0x80000000, v29 :: v_dual_lshlrev_b32 v32, 2, v26
	.loc	1 168 18                        ; attention_backward.py:168:18
	s_and_b32 vcc_lo, s64, s3
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_dual_cndmask_b32 v39, 0x80000000, v39 :: v_dual_lshlrev_b32 v26, 1, v26
	.loc	1 171 28                        ; attention_backward.py:171:28
	v_dual_cndmask_b32 v33, 0x80000000, v33 :: v_dual_lshlrev_b32 v36, 2, v30
	v_lshlrev_b32_e32 v37, 1, v37
	.loc	1 168 18                        ; attention_backward.py:168:18
	s_and_b32 vcc_lo, s62, s3
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_cndmask_b32_e64 v22, 0x80000000, v22, s4
	.loc	1 171 28                        ; attention_backward.py:171:28
	v_cndmask_b32_e64 v19, 0x80000000, v19, s4
	.loc	1 168 18                        ; attention_backward.py:168:18
	s_and_b32 s4, s76, s3
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_dual_cndmask_b32 v47, 0x80000000, v43 :: v_dual_lshlrev_b32 v30, 1, v30
	.loc	1 167 13                        ; attention_backward.py:167:13
	v_add_nc_u32_e32 v42, s35, v38
	v_add_nc_u32_e32 v45, s35, v41
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_lshlrev_b32_e32 v43, 2, v41
	.loc	1 171 28                        ; attention_backward.py:171:28
	v_lshlrev_b32_e32 v41, 1, v41
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_cndmask_b32_e64 v28, 0x80000000, v28, s4
	.loc	1 171 28                        ; attention_backward.py:171:28
	v_cndmask_b32_e64 v20, 0x80000000, v20, s4
	.loc	1 168 18                        ; attention_backward.py:168:18
	s_and_b32 s4, s75, s3
	.loc	1 171 28                        ; attention_backward.py:171:28
	v_dual_cndmask_b32 v55, 0x80000000, v37 :: v_dual_lshlrev_b32 v40, 2, v34
	.loc	1 168 18                        ; attention_backward.py:168:18
	s_and_b32 vcc_lo, s60, s3
	.loc	1 171 28                        ; attention_backward.py:171:28
	v_dual_cndmask_b32 v65, 0x80000000, v41 :: v_dual_lshlrev_b32 v34, 1, v34
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_cndmask_b32_e64 v32, 0x80000000, v32, s4
	.loc	1 171 28                        ; attention_backward.py:171:28
	v_cndmask_b32_e64 v26, 0x80000000, v26, s4
	.loc	1 168 18                        ; attention_backward.py:168:18
	s_and_b32 s4, s74, s3
	.loc	1 167 13                        ; attention_backward.py:167:13
	v_add_nc_u32_e32 v46, s35, v42
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_dual_cndmask_b32 v48, 0x80000000, v43 :: v_dual_lshlrev_b32 v43, 2, v45
	.loc	1 168 18                        ; attention_backward.py:168:18
	s_and_b32 vcc_lo, s58, s3
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_lshlrev_b32_e32 v44, 2, v38
	v_cndmask_b32_e64 v36, 0x80000000, v36, s4
	.loc	1 171 28                        ; attention_backward.py:171:28
	v_cndmask_b32_e64 v30, 0x80000000, v30, s4
	.loc	1 168 18                        ; attention_backward.py:168:18
	s_and_b32 s4, s72, s3
	.loc	1 171 28                        ; attention_backward.py:171:28
	v_lshlrev_b32_e32 v38, 1, v38
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_cndmask_b32_e64 v40, 0x80000000, v40, s4
	.loc	1 171 28                        ; attention_backward.py:171:28
	v_cndmask_b32_e64 v34, 0x80000000, v34, s4
	.loc	1 168 18                        ; attention_backward.py:168:18
	s_and_b32 s4, s71, s3
	.loc	1 171 28                        ; attention_backward.py:171:28
	v_lshlrev_b32_e32 v37, 1, v42
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_cndmask_b32_e32 v49, 0x80000000, v43, vcc_lo
	v_cndmask_b32_e64 v54, 0x80000000, v44, s4
	v_lshlrev_b32_e32 v44, 2, v42
	.loc	1 167 13                        ; attention_backward.py:167:13
	v_add_nc_u32_e32 v42, s35, v46
	.loc	1 171 28                        ; attention_backward.py:171:28
	v_cndmask_b32_e64 v62, 0x80000000, v38, s4
	.loc	1 168 18                        ; attention_backward.py:168:18
	s_and_b32 s4, s69, s3
	.loc	1 167 13                        ; attention_backward.py:167:13
	v_add_nc_u32_e32 v38, s35, v45
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_cndmask_b32_e64 v57, 0x80000000, v44, s4
	v_lshlrev_b32_e32 v44, 2, v46
	.loc	1 171 28                        ; attention_backward.py:171:28
	v_lshlrev_b32_e32 v41, 1, v45
	v_cndmask_b32_e64 v64, 0x80000000, v37, s4
	v_lshlrev_b32_e32 v37, 1, v46
	.loc	1 167 13                        ; attention_backward.py:167:13
	v_add_nc_u32_e32 v46, s35, v42
	.loc	1 168 18                        ; attention_backward.py:168:18
	s_and_b32 s4, s67, s3
	.loc	1 167 13                        ; attention_backward.py:167:13
	v_add_nc_u32_e32 v45, s35, v38
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_lshlrev_b32_e32 v43, 2, v38
	v_cndmask_b32_e64 v63, 0x80000000, v44, s4
	v_lshlrev_b32_e32 v44, 2, v42
	.loc	1 171 28                        ; attention_backward.py:171:28
	v_cndmask_b32_e32 v66, 0x80000000, v41, vcc_lo
	v_lshlrev_b32_e32 v38, 1, v38
	.loc	1 167 13                        ; attention_backward.py:167:13
	v_add_nc_u32_e32 v41, s35, v46
	.loc	1 168 18                        ; attention_backward.py:168:18
	s_and_b32 vcc_lo, s56, s3
	.loc	1 171 28                        ; attention_backward.py:171:28
	v_cndmask_b32_e64 v74, 0x80000000, v37, s4
	.loc	1 168 18                        ; attention_backward.py:168:18
	s_and_b32 s4, s65, s3
	.loc	1 171 28                        ; attention_backward.py:171:28
	v_lshlrev_b32_e32 v89, 1, v42
	.loc	1 167 13                        ; attention_backward.py:167:13
	v_add_nc_u32_e32 v37, s35, v45
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_dual_cndmask_b32 v42, 0x80000000, v43 :: v_dual_lshlrev_b32 v43, 2, v45
	v_cndmask_b32_e64 v72, 0x80000000, v44, s4
	v_lshlrev_b32_e32 v44, 2, v46
	.loc	1 171 28                        ; attention_backward.py:171:28
	v_dual_cndmask_b32 v77, 0x80000000, v38 :: v_dual_lshlrev_b32 v38, 1, v45
	v_lshlrev_b32_e32 v90, 1, v46
	.loc	1 167 13                        ; attention_backward.py:167:13
	v_add_nc_u32_e32 v46, s35, v41
	.loc	1 168 18                        ; attention_backward.py:168:18
	s_and_b32 vcc_lo, s49, s3
	.loc	1 167 13                        ; attention_backward.py:167:13
	v_add_nc_u32_e32 v45, s35, v37
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_dual_cndmask_b32 v50, 0x80000000, v43 :: v_dual_lshlrev_b32 v43, 2, v37
	v_cndmask_b32_e64 v73, 0x80000000, v44, s5
	.loc	1 171 28                        ; attention_backward.py:171:28
	v_dual_cndmask_b32 v79, 0x80000000, v38 :: v_dual_lshlrev_b32 v44, 2, v41
	v_lshlrev_b32_e32 v37, 1, v37
	v_lshlrev_b32_e32 v38, 1, v41
	.loc	1 167 13                        ; attention_backward.py:167:13
	v_add_nc_u32_e32 v51, s35, v46
	.loc	1 168 18                        ; attention_backward.py:168:18
	s_and_b32 vcc_lo, s48, s3
	.loc	1 167 13                        ; attention_backward.py:167:13
	v_add_nc_u32_e32 v41, s35, v45
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_dual_cndmask_b32 v56, 0x80000000, v43 :: v_dual_lshlrev_b32 v43, 2, v45
	v_cndmask_b32_e64 v75, 0x80000000, v44, s6
	v_lshlrev_b32_e32 v44, 2, v46
	.loc	1 171 28                        ; attention_backward.py:171:28
	v_cndmask_b32_e32 v80, 0x80000000, v37, vcc_lo
	v_lshlrev_b32_e32 v37, 1, v45
	v_cndmask_b32_e64 v81, 0x80000000, v38, s6
	v_lshlrev_b32_e32 v38, 1, v46
	.loc	1 167 13                        ; attention_backward.py:167:13
	v_add_nc_u32_e32 v46, s35, v51
	.loc	1 168 18                        ; attention_backward.py:168:18
	s_and_b32 vcc_lo, s45, s3
	.loc	1 167 13                        ; attention_backward.py:167:13
	v_add_nc_u32_e32 v45, s35, v41
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_dual_cndmask_b32 v68, 0x80000000, v43 :: v_dual_lshlrev_b32 v43, 2, v41
	.loc	1 171 28                        ; attention_backward.py:171:28
	v_cndmask_b32_e32 v83, 0x80000000, v37, vcc_lo
	v_lshlrev_b32_e32 v37, 1, v51
	.loc	1 167 13                        ; attention_backward.py:167:13
	v_add_nc_u32_e32 v91, s35, v46
	.loc	1 168 18                        ; attention_backward.py:168:18
	s_and_b32 s6, s59, s3
	.loc	1 171 28                        ; attention_backward.py:171:28
	v_lshlrev_b32_e32 v41, 1, v41
	.loc	1 168 18                        ; attention_backward.py:168:18
	s_and_b32 vcc_lo, s28, s3
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_cndmask_b32_e64 v76, 0x80000000, v44, s6
	v_lshlrev_b32_e32 v44, 2, v51
	.loc	1 171 28                        ; attention_backward.py:171:28
	v_cndmask_b32_e64 v82, 0x80000000, v38, s6
	.loc	1 168 18                        ; attention_backward.py:168:18
	s_and_b32 s6, s57, s3
	.loc	1 167 13                        ; attention_backward.py:167:13
	v_add_nc_u32_e32 v38, s35, v45
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_cndmask_b32_e32 v69, 0x80000000, v43, vcc_lo
	v_lshlrev_b32_e32 v43, 2, v45
	.loc	1 171 28                        ; attention_backward.py:171:28
	v_cndmask_b32_e64 v94, 0x80000000, v37, s6
	v_lshlrev_b32_e32 v37, 1, v46
	.loc	1 167 13                        ; attention_backward.py:167:13
	v_add_nc_u32_e32 v95, s35, v91
	.loc	1 171 28                        ; attention_backward.py:171:28
	v_lshlrev_b32_e32 v45, 1, v45
	v_cndmask_b32_e32 v93, 0x80000000, v41, vcc_lo
	.loc	1 168 18                        ; attention_backward.py:168:18
	s_and_b32 vcc_lo, s27, s3
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_cndmask_b32_e64 v92, 0x80000000, v44, s6
	v_lshlrev_b32_e32 v44, 2, v46
	.loc	1 168 18                        ; attention_backward.py:168:18
	s_and_b32 s6, s55, s3
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_cndmask_b32_e32 v41, 0x80000000, v43, vcc_lo
	v_lshlrev_b32_e32 v43, 2, v38
	v_lshlrev_b32_e32 v46, 2, v91
	.loc	1 171 28                        ; attention_backward.py:171:28
	v_cndmask_b32_e64 v99, 0x80000000, v37, s6
	v_dual_cndmask_b32 v98, 0x80000000, v45 :: v_dual_lshlrev_b32 v37, 2, v95
	.loc	1 168 18                        ; attention_backward.py:168:18
	s_and_b32 vcc_lo, s26, s3
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_cndmask_b32_e64 v96, 0x80000000, v44, s6
	.loc	1 168 18                        ; attention_backward.py:168:18
	s_and_b32 s6, s50, s3
	.loc	1 171 28                        ; attention_backward.py:171:28
	v_lshlrev_b32_e32 v97, 1, v38
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_cndmask_b32_e32 v38, 0x80000000, v43, vcc_lo
	.loc	1 134 28                        ; attention_backward.py:134:28
	ds_store_b8 v117, v5
	ds_store_b8 v117, v6 offset:64
	s_waitcnt vmcnt(9)
	ds_store_b8 v117, v9 offset:512
	s_waitcnt vmcnt(8)
	ds_store_b8 v117, v10 offset:576
	ds_store_b8 v118, v3
	ds_store_b8 v118, v4 offset:64
	s_waitcnt vmcnt(7)
	ds_store_b8 v118, v7 offset:512
	s_waitcnt vmcnt(6)
	ds_store_b8 v118, v8 offset:576
	ds_store_b8 v119, v1
	ds_store_b8 v119, v2 offset:64
	s_waitcnt vmcnt(5)
	ds_store_b8 v119, v13 offset:512
	s_waitcnt vmcnt(4)
	ds_store_b8 v119, v14 offset:576
	s_waitcnt vmcnt(3)
	ds_store_b8 v120, v11
	s_waitcnt vmcnt(2)
	ds_store_b8 v120, v12 offset:64
	s_waitcnt vmcnt(1)
	ds_store_b8 v120, v15 offset:512
	s_waitcnt vmcnt(0)
	ds_store_b8 v120, v16 offset:576
	.loc	1 171 28                        ; attention_backward.py:171:28
	v_lshlrev_b32_e32 v10, 1, v95
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_cndmask_b32_e64 v100, 0x80000000, v46, s6
	v_cndmask_b32_e64 v101, 0x80000000, v37, s7
	.loc	1 134 28                        ; attention_backward.py:134:28
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 166 23                        ; attention_backward.py:166:23
	s_clause 0x1f
	buffer_load_b32 v51, v18, s[40:43], 0 offen
	buffer_load_b32 v52, v23, s[40:43], 0 offen
	buffer_load_b32 v53, v27, s[40:43], 0 offen
	buffer_load_b32 v58, v31, s[40:43], 0 offen
	buffer_load_b32 v43, v35, s[40:43], 0 offen
	buffer_load_b32 v44, v39, s[40:43], 0 offen
	buffer_load_b32 v45, v47, s[40:43], 0 offen
	buffer_load_b32 v46, v48, s[40:43], 0 offen
	buffer_load_b32 v59, v49, s[40:43], 0 offen
	buffer_load_b32 v60, v42, s[40:43], 0 offen
	buffer_load_b32 v61, v50, s[40:43], 0 offen
	buffer_load_b32 v67, v56, s[40:43], 0 offen
	buffer_load_b32 v47, v68, s[40:43], 0 offen
	buffer_load_b32 v48, v69, s[40:43], 0 offen
	buffer_load_b32 v49, v41, s[40:43], 0 offen
	buffer_load_b32 v50, v38, s[40:43], 0 offen
	buffer_load_b32 v68, v22, s[40:43], 0 offen
	buffer_load_b32 v69, v28, s[40:43], 0 offen
	buffer_load_b32 v70, v32, s[40:43], 0 offen
	buffer_load_b32 v71, v36, s[40:43], 0 offen
	buffer_load_b32 v56, v40, s[40:43], 0 offen
	buffer_load_b32 v39, v54, s[40:43], 0 offen
	buffer_load_b32 v40, v57, s[40:43], 0 offen
	buffer_load_b32 v41, v63, s[40:43], 0 offen
	buffer_load_b32 v72, v72, s[40:43], 0 offen
	buffer_load_b32 v73, v73, s[40:43], 0 offen
	buffer_load_b32 v75, v75, s[40:43], 0 offen
	buffer_load_b32 v76, v76, s[40:43], 0 offen
	buffer_load_b32 v37, v92, s[40:43], 0 offen
	buffer_load_b32 v38, v96, s[40:43], 0 offen
	buffer_load_b32 v35, v100, s[40:43], 0 offen
	buffer_load_b32 v36, v101, s[40:43], 0 offen
	.loc	1 171 28                        ; attention_backward.py:171:28
	v_lshlrev_b32_e32 v1, 1, v91
	s_and_b32 s41, s39, 0xffff
	s_mov_b32 s40, s38
	v_cndmask_b32_e64 v10, 0x80000000, v10, s7
	s_clause 0x7
	buffer_load_u16 v2, v17, s[40:43], 0 offen
	buffer_load_u16 v3, v24, s[40:43], 0 offen
	buffer_load_u16 v4, v21, s[40:43], 0 offen
	buffer_load_u16 v5, v25, s[40:43], 0 offen
	buffer_load_u16 v6, v66, s[40:43], 0 offen
	buffer_load_u16 v7, v77, s[40:43], 0 offen
	buffer_load_u16 v8, v79, s[40:43], 0 offen
	buffer_load_u16 v9, v80, s[40:43], 0 offen
	v_cndmask_b32_e32 v11, 0x80000000, v97, vcc_lo
	s_clause 0x1
	buffer_load_u16 v12, v26, s[40:43], 0 offen
	buffer_load_u16 v13, v81, s[40:43], 0 offen
	v_cndmask_b32_e64 v1, 0x80000000, v1, s6
	s_clause 0x11
	buffer_load_u16 v14, v30, s[40:43], 0 offen
	buffer_load_u16 v15, v82, s[40:43], 0 offen
	buffer_load_u16 v82, v29, s[40:43], 0 offen
	buffer_load_u16 v77, v83, s[40:43], 0 offen
	buffer_load_u16 v42, v34, s[40:43], 0 offen
	buffer_load_u16 v57, v94, s[40:43], 0 offen
	buffer_load_u16 v83, v33, s[40:43], 0 offen
	buffer_load_u16 v79, v93, s[40:43], 0 offen
	buffer_load_u16 v63, v62, s[40:43], 0 offen
	buffer_load_u16 v62, v99, s[40:43], 0 offen
	buffer_load_u16 v97, v55, s[40:43], 0 offen
	buffer_load_u16 v80, v98, s[40:43], 0 offen
	buffer_load_u16 v64, v64, s[40:43], 0 offen
	buffer_load_u16 v54, v1, s[40:43], 0 offen
	buffer_load_u16 v98, v65, s[40:43], 0 offen
	buffer_load_u16 v81, v11, s[40:43], 0 offen
	buffer_load_u16 v65, v74, s[40:43], 0 offen
	buffer_load_u16 v55, v10, s[40:43], 0 offen
	v_cndmask_b32_e64 v10, 0x80000000, v90, s5
	v_cndmask_b32_e64 v1, 0x80000000, v89, s4
	s_clause 0x3
	buffer_load_u16 v11, v19, s[40:43], 0 offen
	buffer_load_u16 v16, v20, s[40:43], 0 offen
	buffer_load_u16 v10, v10, s[40:43], 0 offen
	buffer_load_u16 v1, v1, s[40:43], 0 offen
	v_lshlrev_b32_e32 v17, 4, v0
	v_lshlrev_b32_e32 v27, 7, v121
	v_lshlrev_b32_e32 v18, 6, v103
	.loc	1 124 31                        ; attention_backward.py:124:31
	v_lshrrev_b32_e32 v28, 1, v103
	.loc	1 134 28                        ; attention_backward.py:134:28
	v_and_b32_e32 v104, 12, v0
	.loc	1 171 28                        ; attention_backward.py:171:28
	v_and_b32_e32 v17, 0x70, v17
	.loc	1 134 28                        ; attention_backward.py:134:28
	v_lshlrev_b32_e32 v33, 5, v121
	v_lshlrev_b32_e32 v19, 4, v103
	.loc	1 171 28                        ; attention_backward.py:171:28
	v_lshlrev_b32_e32 v26, 1, v0
	.loc	1 134 28                        ; attention_backward.py:134:28
	v_lshlrev_b32_e32 v34, 1, v104
	.loc	1 171 28                        ; attention_backward.py:171:28
	v_or3_b32 v17, v17, v18, v27
	.loc	1 124 31                        ; attention_backward.py:124:31
	v_or_b32_e32 v18, v28, v121
	.loc	1 142 31                        ; attention_backward.py:142:31
	s_mov_b32 s26, s42
	.loc	1 171 28                        ; attention_backward.py:171:28
	v_xad_u32 v20, 0x120, v26, 0
	.loc	1 134 28                        ; attention_backward.py:134:28
	v_or3_b32 v19, v33, v19, v34
	.loc	1 171 28                        ; attention_backward.py:171:28
	v_add_nc_u32_e32 v30, 0, v17
	.loc	1 143 17                        ; attention_backward.py:143:17
	v_add_nc_u32_e32 v32, s47, v18
	.loc	1 124 21                        ; attention_backward.py:124:21
	v_or_b32_e32 v18, s46, v18
	.loc	1 171 28                        ; attention_backward.py:171:28
	v_xad_u32 v31, v17, 16, 0
	.loc	1 134 28                        ; attention_backward.py:134:28
	v_add_nc_u32_e32 v27, 0, v19
	v_xad_u32 v28, v19, 8, 0
	scratch_store_b32 off, v32, off offset:96 ; 4-byte Folded Spill
	.loc	1 142 31                        ; attention_backward.py:142:31
	v_lshlrev_b32_e32 v32, 1, v32
	.loc	1 128 21                        ; attention_backward.py:128:21
	v_cmp_gt_i32_e64 s4, s30, v18
	.loc	1 134 28                        ; attention_backward.py:134:28
	v_xad_u32 v29, v19, 16, 0
	.loc	1 142 31                        ; attention_backward.py:142:31
	s_mov_b32 s27, s43
	.loc	1 134 28                        ; attention_backward.py:134:28
	v_xad_u32 v19, v19, 24, 0
	.loc	1 171 28                        ; attention_backward.py:171:28
	v_xad_u32 v21, 0x1b0, v26, 0
	.loc	1 142 31                        ; attention_backward.py:142:31
	v_cndmask_b32_e64 v18, 0x80000000, v32, s4
	.loc	1 171 28                        ; attention_backward.py:171:28
	v_add_nc_u32_e32 v124, v117, v0
	v_xad_u32 v22, 0x240, v26, 0
	v_xad_u32 v23, 0x2d0, v26, 0
	v_xad_u32 v24, 0x360, v26, 0
	v_xad_u32 v25, 0x3f0, v26, 0
	v_xad_u32 v26, 0x90, v26, 0
	.loc	1 142 31                        ; attention_backward.py:142:31
	buffer_load_u16 v74, v18, s[24:27], 0 offen
	.loc	1 134 28                        ; attention_backward.py:134:28
	ds_load_b64 v[89:90], v27
	ds_load_b64 v[91:92], v28
	ds_load_b64 v[93:94], v29
	.loc	1 143 17                        ; attention_backward.py:143:17
	ds_load_b64 v[95:96], v19
	.loc	1 171 28                        ; attention_backward.py:171:28
	s_waitcnt lgkmcnt(0)
	s_barrier
	v_xad_u32 v99, v17, 32, 0
	v_xad_u32 v100, v17, 48, 0
	v_xad_u32 v101, v17, 64, 0
	v_xad_u32 v32, 0x50, v17, 0
	v_xad_u32 v102, 0x60, v17, 0
	v_xad_u32 v105, 0x70, v17, 0
	s_waitcnt vmcnt(30)
	ds_store_b16 v20, v4
	s_waitcnt vmcnt(26)
	ds_store_b16 v20, v8 offset:1024
	s_waitcnt vmcnt(24)
	ds_store_b16 v20, v12 offset:2048
	s_waitcnt vmcnt(23)
	ds_store_b16 v20, v13 offset:3072
	ds_store_b16 v21, v5
	ds_store_b16 v21, v9 offset:1024
	s_waitcnt vmcnt(22)
	ds_store_b16 v21, v14 offset:2048
	s_waitcnt vmcnt(21)
	ds_store_b16 v21, v15 offset:3072
	s_waitcnt vmcnt(20)
	ds_store_b16 v22, v82
	s_waitcnt vmcnt(19)
	ds_store_b16 v22, v77 offset:1024
	s_waitcnt vmcnt(18)
	ds_store_b16 v22, v42 offset:2048
	s_waitcnt vmcnt(17)
	ds_store_b16 v22, v57 offset:3072
	s_waitcnt vmcnt(16)
	ds_store_b16 v23, v83
	s_waitcnt vmcnt(15)
	ds_store_b16 v23, v79 offset:1024
	s_waitcnt vmcnt(14)
	ds_store_b16 v23, v63 offset:2048
	s_waitcnt vmcnt(13)
	ds_store_b16 v23, v62 offset:3072
	s_waitcnt vmcnt(12)
	ds_store_b16 v24, v97
	s_waitcnt vmcnt(11)
	ds_store_b16 v24, v80 offset:1024
	s_waitcnt vmcnt(10)
	ds_store_b16 v24, v64 offset:2048
	s_waitcnt vmcnt(9)
	ds_store_b16 v24, v54 offset:3072
	s_waitcnt vmcnt(8)
	ds_store_b16 v25, v98
	s_waitcnt vmcnt(7)
	ds_store_b16 v25, v81 offset:1024
	s_waitcnt vmcnt(6)
	ds_store_b16 v25, v65 offset:2048
	s_waitcnt vmcnt(5)
	ds_store_b16 v25, v55 offset:3072
	ds_store_b16 v124, v2
	ds_store_b16 v124, v6 offset:1024
	s_waitcnt vmcnt(4)
	ds_store_b16 v124, v11 offset:2048
	ds_store_b16 v26, v3
	ds_store_b16 v26, v7 offset:1024
	s_waitcnt vmcnt(3)
	ds_store_b16 v26, v16 offset:2048
	s_waitcnt vmcnt(2)
	ds_store_b16 v26, v10 offset:3072
	s_waitcnt vmcnt(1)
	ds_store_b16 v124, v1 offset:3072
	v_lshlrev_b32_e32 v107, 16, v2
	v_lshlrev_b32_e32 v108, 16, v3
	v_lshlrev_b32_e32 v109, 16, v4
	v_lshlrev_b32_e32 v110, 16, v5
	v_lshlrev_b32_e32 v111, 16, v6
	v_lshlrev_b32_e32 v112, 16, v7
	v_lshlrev_b32_e32 v122, 16, v8
	v_lshlrev_b32_e32 v123, 16, v9
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[2:5], v30
	ds_load_b128 v[6:9], v31
	s_waitcnt lgkmcnt(1)
	scratch_store_b128 off, v[2:5], off     ; 16-byte Folded Spill
	s_waitcnt lgkmcnt(0)
	scratch_store_b128 off, v[6:9], off offset:16 ; 16-byte Folded Spill
	ds_load_b128 v[2:5], v99
	ds_load_b128 v[6:9], v100
	s_waitcnt lgkmcnt(1)
	scratch_store_b128 off, v[2:5], off offset:32 ; 16-byte Folded Spill
	s_waitcnt lgkmcnt(0)
	scratch_store_b128 off, v[6:9], off offset:48 ; 16-byte Folded Spill
	ds_load_b128 v[2:5], v101
	ds_load_b128 v[6:9], v32
	s_waitcnt lgkmcnt(1)
	scratch_store_b128 off, v[2:5], off offset:64 ; 16-byte Folded Spill
	s_waitcnt lgkmcnt(0)
	scratch_store_b128 off, v[6:9], off offset:80 ; 16-byte Folded Spill
	v_lshlrev_b32_e32 v5, 16, v14
	v_lshlrev_b32_e32 v1, 16, v1
	v_lshlrev_b32_e32 v7, 16, v13
	v_lshlrev_b32_e32 v9, 16, v82
	v_lshlrev_b32_e32 v13, 16, v77
	.loc	1 176 24                        ; attention_backward.py:176:24
	v_mul_f32_e32 v77, v51, v107
	v_mul_f32_e32 v82, v59, v111
	.loc	1 171 28                        ; attention_backward.py:171:28
	ds_load_b128 v[25:28], v102
	ds_load_b128 v[29:32], v105
	v_lshlrev_b32_e32 v3, 16, v16
	v_lshlrev_b32_e32 v8, 16, v15
	v_lshlrev_b32_e32 v15, 16, v80
	.loc	1 176 24                        ; attention_backward.py:176:24
	v_mul_f32_e32 v80, v53, v109
	v_mul_f32_e32 v102, v71, v5
	v_mul_f32_e32 v105, v72, v1
.Ltmp1:
	.file	2 "<triton>/python/triton/language" "standard.py"
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_mov_b32_dpp v77, v77 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_mov_b32_dpp v82, v82 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp2:
	.loc	1 176 24                        ; attention_backward.py:176:24
	v_mul_f32_e32 v100, v69, v3
.Ltmp3:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_mov_b32_dpp v80, v80 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_mov_b32_dpp v102, v102 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_mov_b32_dpp v105, v105 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp4:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_fmac_f32_e32 v77, v51, v107
	v_fmac_f32_e32 v82, v59, v111
.Ltmp5:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_mov_b32_dpp v100, v100 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp6:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_fmac_f32_e32 v80, v53, v109
	v_fmac_f32_e32 v102, v71, v5
	v_fmac_f32_e32 v105, v72, v1
	v_add_f32_dpp v1, v77, v77 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v5, v82, v82 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_fmac_f32_e32 v100, v69, v3
	v_add_f32_dpp v3, v80, v80 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp7:
	.loc	1 176 24                        ; attention_backward.py:176:24
	v_mul_f32_e32 v125, v75, v7
.Ltmp8:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_dpp v1, v1, v1 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v5, v5, v5 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp9:
	.loc	1 176 24                        ; attention_backward.py:176:24
	v_mul_f32_e32 v127, v43, v9
.Ltmp10:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_dpp v3, v3, v3 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp11:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_mov_b32_dpp v125, v125 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp12:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_dpp v1, v1, v1 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v5, v5, v5 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp13:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_mov_b32_dpp v127, v127 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp14:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_dpp v3, v3, v3 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_fmac_f32_e32 v125, v75, v7
.Ltmp15:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_permlanex16_b32 v51, v1, -1, -1 op_sel:[1,0]
	v_permlanex16_b32 v59, v5, -1, -1 op_sel:[1,0]
.Ltmp16:
	.loc	1 176 24                        ; attention_backward.py:176:24
	v_mul_f32_e32 v133, v49, v15
.Ltmp17:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_permlanex16_b32 v53, v3, -1, -1 op_sel:[1,0]
.Ltmp18:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_fmac_f32_e32 v127, v43, v9
	v_add_f32_e32 v1, v1, v51
	v_add_f32_e32 v5, v5, v59
.Ltmp19:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_mov_b32_dpp v133, v133 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp20:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_e32 v3, v3, v53
	v_add_f32_dpp v43, v127, v127 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp21:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_readlane_b32 s5, v1, 31
	v_readlane_b32 s9, v5, 31
.Ltmp22:
	.loc	1 171 28                        ; attention_backward.py:171:28
	v_lshlrev_b32_e32 v4, 16, v12
.Ltmp23:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_readlane_b32 s7, v3, 31
.Ltmp24:
	.loc	1 171 28                        ; attention_backward.py:171:28
	v_lshlrev_b32_e32 v2, 16, v11
	v_lshlrev_b32_e32 v11, 16, v97
.Ltmp25:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_mov_b32_e32 v1, s5
.Ltmp26:
	.loc	1 176 24                        ; attention_backward.py:176:24
	v_mul_f32_e32 v97, v61, v122
.Ltmp27:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_mov_b32_e32 v5, s9
.Ltmp28:
	.loc	1 176 24                        ; attention_backward.py:176:24
	v_mul_f32_e32 v101, v70, v4
	v_mul_f32_e32 v129, v45, v11
.Ltmp29:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_mov_b32_e32 v3, s7
	v_mov_b32_dpp v97, v97 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp30:
	.loc	1 176 24                        ; attention_backward.py:176:24
	v_mul_f32_e32 v99, v68, v2
.Ltmp31:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_mov_b32_dpp v101, v101 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_mov_b32_dpp v129, v129 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp32:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_fmac_f32_e32 v133, v49, v15
	v_fmac_f32_e32 v97, v61, v122
.Ltmp33:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_mov_b32_dpp v99, v99 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp34:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_fmac_f32_e32 v101, v70, v4
	v_fmac_f32_e32 v129, v45, v11
	v_add_f32_dpp v15, v125, v125 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v7, v97, v97 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_fmac_f32_e32 v99, v68, v2
	v_add_f32_dpp v11, v101, v101 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v45, v129, v129 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v43, v43, v43 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v7, v7, v7 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v9, v99, v99 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v11, v11, v11 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v45, v45, v45 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v15, v15, v15 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v7, v7, v7 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v9, v9, v9 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v11, v11, v11 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v45, v45, v45 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v43, v43, v43 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp35:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_permlanex16_b32 v61, v7, -1, -1 op_sel:[1,0]
.Ltmp36:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_dpp v9, v9, v9 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp37:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_permlanex16_b32 v70, v11, -1, -1 op_sel:[1,0]
	v_permlanex16_b32 v80, v45, -1, -1 op_sel:[1,0]
.Ltmp38:
	.loc	1 176 24                        ; attention_backward.py:176:24
	v_mul_f32_e32 v131, v47, v13
.Ltmp39:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_e32 v7, v7, v61
.Ltmp40:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_permlanex16_b32 v68, v9, -1, -1 op_sel:[1,0]
.Ltmp41:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_e32 v11, v11, v70
	v_add_f32_e32 v45, v45, v80
	v_add_f32_dpp v49, v133, v133 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp42:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_readlane_b32 s11, v7, 31
.Ltmp43:
	.loc	1 171 28                        ; attention_backward.py:171:28
	v_lshlrev_b32_e32 v6, 16, v10
.Ltmp44:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_readlane_b32 s15, v11, 31
.Ltmp45:
	.loc	1 171 28                        ; attention_backward.py:171:28
	v_lshlrev_b32_e32 v10, 16, v83
.Ltmp46:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_dpp v15, v15, v15 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp47:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_permlanex16_b32 v77, v43, -1, -1 op_sel:[1,0]
.Ltmp48:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_e32 v9, v9, v68
.Ltmp49:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_readlane_b32 s37, v45, 31
	v_dual_mov_b32 v45, s15 :: v_dual_mul_f32 v128, v44, v10
	v_mov_b32_dpp v131, v131 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp50:
	.loc	1 171 28                        ; attention_backward.py:171:28
	v_lshlrev_b32_e32 v12, 16, v98
.Ltmp51:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_dpp v49, v49, v49 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp52:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_permlanex16_b32 v75, v15, -1, -1 op_sel:[1,0]
	v_mov_b32_dpp v128, v128 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp53:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_e32 v43, v43, v77
.Ltmp54:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_readlane_b32 s13, v9, 31
.Ltmp55:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_dual_fmac_f32 v131, v47, v13 :: v_dual_mul_f32 v130, v46, v12
	s_delay_alu instid0(VALU_DEP_4)
	v_fmac_f32_e32 v128, v44, v10
	v_add_f32_dpp v10, v100, v100 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v49, v49, v49 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_e32 v15, v15, v75
.Ltmp56:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_readlane_b32 s28, v43, 31
	v_dual_mov_b32 v43, s13 :: v_dual_lshlrev_b32 v16, 16, v81
.Ltmp57:
	.loc	1 176 24                        ; attention_backward.py:176:24
	v_mul_f32_e32 v126, v76, v8
.Ltmp58:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_dpp v47, v131, v131 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp59:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_mov_b32_dpp v130, v130 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_4)
.Ltmp60:
	.loc	1 176 24                        ; attention_backward.py:176:24
	v_mul_f32_e32 v134, v50, v16
.Ltmp61:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_dpp v10, v10, v10 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp62:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_mov_b32_dpp v126, v126 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_permlanex16_b32 v97, v49, -1, -1 op_sel:[1,0]
	v_readlane_b32 s26, v15, 31
	v_dual_mov_b32 v7, s11 :: v_dual_lshlrev_b32 v14, 16, v79
.Ltmp63:
	.loc	1 176 24                        ; attention_backward.py:176:24
	v_mul_f32_e32 v124, v73, v6
.Ltmp64:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_dpp v47, v47, v47 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp65:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_mov_b32_dpp v134, v134 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp66:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_fmac_f32_e32 v126, v76, v8
	v_fmac_f32_e32 v130, v46, v12
.Ltmp67:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_mov_b32_dpp v124, v124 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp68:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_dpp v12, v102, v102 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v10, v10, v10 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_e32 v51, v49, v97
.Ltmp69:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_dual_mov_b32 v49, s26 :: v_dual_mul_f32 v132, v48, v14
.Ltmp70:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_dpp v47, v47, v47 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_fmac_f32_e32 v124, v73, v6
	v_fmac_f32_e32 v134, v50, v16
	v_add_f32_dpp v16, v126, v126 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp71:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_mov_b32_dpp v132, v132 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp72:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_dpp v12, v12, v12 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp73:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_permlanex16_b32 v69, v10, -1, -1 op_sel:[1,0]
	v_permlanex16_b32 v82, v47, -1, -1 op_sel:[1,0]
.Ltmp74:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_dpp v16, v16, v16 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_fmac_f32_e32 v132, v48, v14
	v_add_f32_dpp v14, v124, v124 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v12, v12, v12 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_dual_add_f32 v10, v10, v69 :: v_dual_lshlrev_b32 v9, 16, v42
.Ltmp75:
	.loc	1 176 24                        ; attention_backward.py:176:24
	v_mul_f32_e32 v79, v52, v108
.Ltmp76:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_e32 v47, v47, v82
.Ltmp77:
	.loc	1 176 24                        ; attention_backward.py:176:24
	v_mul_f32_e32 v81, v58, v110
	v_dual_mul_f32 v83, v60, v112 :: v_dual_mul_f32 v98, v67, v123
.Ltmp78:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_dpp v14, v14, v14 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v16, v16, v16 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp79:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_permlanex16_b32 v71, v12, -1, -1 op_sel:[1,0]
	v_readlane_b32 s14, v10, 31
.Ltmp80:
	.loc	1 176 24                        ; attention_backward.py:176:24
	v_mul_f32_e32 v10, v56, v9
.Ltmp81:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_mov_b32_dpp v79, v79 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_mov_b32_dpp v81, v81 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_mov_b32_dpp v83, v83 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_mov_b32_dpp v98, v98 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp82:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_dpp v14, v14, v14 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp83:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_permlanex16_b32 v76, v16, -1, -1 op_sel:[1,0]
.Ltmp84:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_e32 v12, v12, v71
.Ltmp85:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_mov_b32_dpp v10, v10 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp86:
	.loc	1 171 28                        ; attention_backward.py:171:28
	v_lshlrev_b32_e32 v11, 16, v63
.Ltmp87:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_fmac_f32_e32 v79, v52, v108
	v_fmac_f32_e32 v81, v58, v110
	v_dual_fmac_f32 v83, v60, v112 :: v_dual_fmac_f32 v98, v67, v123
.Ltmp88:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_permlanex16_b32 v73, v14, -1, -1 op_sel:[1,0]
.Ltmp89:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_e32 v16, v16, v76
.Ltmp90:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_readlane_b32 s16, v12, 31
.Ltmp91:
	.loc	1 171 28                        ; attention_backward.py:171:28
	v_lshlrev_b32_e32 v12, 16, v64
.Ltmp92:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_dual_fmac_f32 v10, v56, v9 :: v_dual_mul_f32 v9, v39, v11
	v_add_f32_dpp v2, v79, v79 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v4, v81, v81 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v6, v83, v83 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v8, v98, v98 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v13, v105, v105 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_e32 v14, v14, v73
.Ltmp93:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_readlane_b32 s27, v16, 31
	v_mov_b32_dpp v9, v9 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp94:
	.loc	1 171 28                        ; attention_backward.py:171:28
	v_lshlrev_b32_e32 v16, 16, v57
.Ltmp95:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_dpp v2, v2, v2 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v4, v4, v4 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v6, v6, v6 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v8, v8, v8 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v44, v128, v128 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v46, v130, v130 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v48, v132, v132 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v13, v13, v13 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp96:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_readlane_b32 s25, v14, 31
.Ltmp97:
	.loc	1 176 24                        ; attention_backward.py:176:24
	v_dual_mul_f32 v14, v40, v12 :: v_dual_fmac_f32 v9, v39, v11
	v_dual_mul_f32 v57, v37, v16 :: v_dual_lshlrev_b32 v56, 16, v62
.Ltmp98:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_dpp v2, v2, v2 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v4, v4, v4 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v6, v6, v6 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v8, v8, v8 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v44, v44, v44 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v46, v46, v46 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v50, v134, v134 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v48, v48, v48 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v13, v13, v13 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp99:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_mov_b32_dpp v14, v14 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp100:
	.loc	1 176 24                        ; attention_backward.py:176:24
	v_mul_f32_e32 v62, v38, v56
.Ltmp101:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_mov_b32_dpp v11, v57 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_permlanex16_b32 v52, v2, -1, -1 op_sel:[1,0]
	v_permlanex16_b32 v58, v4, -1, -1 op_sel:[1,0]
	v_permlanex16_b32 v60, v6, -1, -1 op_sel:[1,0]
	v_permlanex16_b32 v67, v8, -1, -1 op_sel:[1,0]
.Ltmp102:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_dpp v44, v44, v44 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v46, v46, v46 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v50, v50, v50 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v48, v48, v48 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp103:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_permlanex16_b32 v72, v13, -1, -1 op_sel:[1,0]
.Ltmp104:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_fmac_f32_e32 v14, v40, v12
.Ltmp105:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_mov_b32_dpp v12, v62 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp106:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_dual_fmac_f32 v11, v37, v16 :: v_dual_lshlrev_b32 v16, 16, v55
	v_dual_add_f32 v2, v2, v52 :: v_dual_lshlrev_b32 v161, 1, v103
	v_add_f32_e32 v4, v4, v58
	v_add_f32_e32 v6, v6, v60
	v_add_f32_e32 v8, v8, v67
.Ltmp107:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_permlanex16_b32 v79, v44, -1, -1 op_sel:[1,0]
	v_permlanex16_b32 v81, v46, -1, -1 op_sel:[1,0]
.Ltmp108:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_dpp v50, v50, v50 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp109:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_permlanex16_b32 v83, v48, -1, -1 op_sel:[1,0]
.Ltmp110:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_e32 v13, v13, v72
	v_fmac_f32_e32 v12, v38, v56
.Ltmp111:
	.loc	1 176 24                        ; attention_backward.py:176:24
	v_mul_f32_e32 v38, v36, v16
.Ltmp112:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_add_nc_u32_e32 v66, 0, v161
	v_readlane_b32 s6, v2, 31
	v_readlane_b32 s8, v4, 31
	v_readlane_b32 s10, v6, 31
	v_readlane_b32 s12, v8, 31
.Ltmp113:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_e32 v44, v44, v79
	v_add_f32_e32 v46, v46, v81
.Ltmp114:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_permlanex16_b32 v98, v50, -1, -1 op_sel:[1,0]
.Ltmp115:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_e32 v48, v48, v83
.Ltmp116:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_readlane_b32 s24, v13, 31
	v_mov_b32_e32 v2, s6
	v_mov_b32_e32 v4, s8
	v_and_b32_e32 v76, 1, v0
	v_mov_b32_e32 v6, s10
	v_mov_b32_e32 v8, s12
	v_readlane_b32 s36, v44, 31
	v_readlane_b32 s38, v46, 31
	v_mov_b32_e32 v44, s14
	v_mov_b32_e32 v46, s16
.Ltmp117:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_e32 v52, v50, v98
.Ltmp118:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_readlane_b32 s39, v47, 31
	v_readlane_b32 s40, v48, 31
	v_dual_mov_b32 v47, s24 :: v_dual_mov_b32 v48, s25
	v_mov_b32_e32 v50, s27
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v66, v[1:4]
	ds_store_b128 v66, v[5:8] offset:16
	ds_store_b128 v66, v[43:46] offset:32
	ds_store_b128 v66, v[47:50] offset:48
	v_mov_b32_e32 v3, s37
	v_lshlrev_b32_e32 v75, 6, v76
	v_mov_b32_e32 v5, s39
	v_readlane_b32 s5, v51, 31
	v_readlane_b32 s6, v52, 31
	s_waitcnt lgkmcnt(0)
	v_add_nc_u32_e32 v162, 0, v75
	s_barrier
	ds_load_b128 v[58:61], v162
	ds_load_b128 v[50:53], v162 offset:16
	ds_load_b128 v[46:49], v162 offset:32
	ds_load_b128 v[42:45], v162 offset:48
.Ltmp119:
	.loc	1 171 28                        ; attention_backward.py:171:28
	v_lshlrev_b32_e32 v13, 16, v65
.Ltmp120:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_dpp v9, v9, v9 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v10, v10, v10 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp121:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_mov_b32_e32 v7, s5
	v_mov_b32_dpp v38, v38 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_mov_b32_e32 v8, s6
.Ltmp122:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_dpp v9, v9, v9 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v10, v10, v10 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
.Ltmp123:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_dual_mov_b32 v1, s28 :: v_dual_fmac_f32 v38, v36, v16
	v_mov_b32_e32 v2, s36
.Ltmp124:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_dpp v9, v9, v9 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_4)
	v_add_f32_dpp v10, v10, v10 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp125:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_mov_b32_e32 v4, s38
	v_mov_b32_e32 v6, s40
	s_waitcnt lgkmcnt(0)
	v_permlanex16_b32 v40, v9, -1, -1 op_sel:[1,0]
	v_permlanex16_b32 v39, v10, -1, -1 op_sel:[1,0]
	v_mov_b32_e32 v196, v49
.Ltmp126:
	.loc	1 176 24                        ; attention_backward.py:176:24
	v_dual_mul_f32 v15, v41, v13 :: v_dual_mov_b32 v178, v44
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
.Ltmp127:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_dual_add_f32 v9, v9, v40 :: v_dual_add_f32 v10, v10, v39
.Ltmp128:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_mov_b32_e32 v176, v42
	v_mov_b32_dpp v15, v15 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_barrier
	s_delay_alu instid0(VALU_DEP_3)
	v_readlane_b32 s6, v9, 31
	v_readlane_b32 s5, v10, 31
.Ltmp129:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_dpp v10, v11, v11 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_fmac_f32_e32 v15, v41, v13
	v_add_f32_dpp v13, v14, v14 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp130:
	.loc	1 171 28                        ; attention_backward.py:171:28
	v_lshlrev_b32_e32 v14, 16, v54
.Ltmp131:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_dpp v11, v12, v12 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v10, v10, v10 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v9, v15, v15 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v13, v13, v13 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp132:
	.loc	1 176 24                        ; attention_backward.py:176:24
	v_mul_f32_e32 v37, v35, v14
.Ltmp133:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_dpp v11, v11, v11 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v10, v10, v10 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v9, v9, v9 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v13, v13, v13 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp134:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_mov_b32_dpp v37, v37 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp135:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_dpp v11, v11, v11 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp136:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_permlanex16_b32 v15, v10, -1, -1 op_sel:[1,0]
.Ltmp137:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_dpp v9, v9, v9 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp138:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_permlanex16_b32 v41, v13, -1, -1 op_sel:[1,0]
.Ltmp139:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_fmac_f32_e32 v37, v35, v14
.Ltmp140:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_permlanex16_b32 v16, v11, -1, -1 op_sel:[1,0]
.Ltmp141:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_e32 v10, v10, v15
.Ltmp142:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_permlanex16_b32 v14, v9, -1, -1 op_sel:[1,0]
.Ltmp143:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_e32 v13, v13, v41
	v_add_f32_dpp v12, v37, v37 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_e32 v11, v11, v16
.Ltmp144:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_readlane_b32 s9, v10, 31
.Ltmp145:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_e32 v9, v9, v14
.Ltmp146:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_readlane_b32 s7, v13, 31
.Ltmp147:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_dpp v13, v38, v38 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v12, v12, v12 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp148:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_readlane_b32 s10, v11, 31
	v_readlane_b32 s8, v9, 31
	v_mov_b32_e32 v37, s7
.Ltmp149:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_dpp v13, v13, v13 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v12, v12, v12 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp150:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_mov_b32_e32 v54, s9
	v_dual_mov_b32 v38, s8 :: v_dual_mov_b32 v55, s10
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp151:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_dpp v13, v13, v13 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp152:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_permlanex16_b32 v35, v12, -1, -1 op_sel:[1,0]
	v_dual_mov_b32 v190, v58 :: v_dual_mov_b32 v191, v59
	v_mov_b32_e32 v192, v60
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_permlanex16_b32 v36, v13, -1, -1 op_sel:[1,0]
.Ltmp153:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_dual_add_f32 v12, v12, v35 :: v_dual_mov_b32 v35, s5
.Ltmp154:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_mov_b32_e32 v193, v61
	v_mov_b32_e32 v201, v50
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp155:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_e32 v13, v13, v36
.Ltmp156:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_readlane_b32 s11, v12, 31
	v_mov_b32_e32 v36, s6
	v_dual_mov_b32 v202, v51 :: v_dual_mov_b32 v203, v52
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_readlane_b32 s12, v13, 31
	v_mov_b32_e32 v56, s11
	v_dual_mov_b32 v206, v53 :: v_dual_mov_b32 v211, v46
	s_delay_alu instid0(VALU_DEP_3)
	v_dual_mov_b32 v212, v47 :: v_dual_mov_b32 v57, s12
	ds_store_b128 v66, v[1:4]
	ds_store_b128 v66, v[5:8] offset:16
	ds_store_b128 v66, v[35:38] offset:32
	ds_store_b128 v66, v[54:57] offset:48
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[70:73], v162
	ds_load_b128 v[66:69], v162 offset:16
	ds_load_b128 v[62:65], v162 offset:32
	ds_load_b128 v[54:57], v162 offset:48
	v_dual_mov_b32 v204, v48 :: v_dual_mov_b32 v177, v43
	v_mov_b32_e32 v179, v45
.Ltmp157:
	.loc	1 179 16                        ; attention_backward.py:179:16
	s_add_i32 s5, s31, 15
.Ltmp158:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_mov_b32_dpp v190, v190 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp159:
	.loc	1 179 15                        ; attention_backward.py:179:15
	s_ashr_i32 s6, s5, 31
.Ltmp160:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_mov_b32_dpp v191, v191 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp161:
	.loc	1 179 15                        ; attention_backward.py:179:15
	s_lshr_b32 s6, s6, 28
.Ltmp162:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_mov_b32_dpp v192, v192 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v193, v193 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v201, v201 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v202, v202 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v203, v203 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v206, v206 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v211, v211 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v212, v212 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_waitcnt lgkmcnt(3)
	v_mov_b32_e32 v194, v70
	v_dual_mov_b32 v198, v71 :: v_dual_mov_b32 v199, v72
	s_waitcnt lgkmcnt(2)
	v_dual_mov_b32 v200, v73 :: v_dual_mov_b32 v207, v66
	v_dual_mov_b32 v208, v67 :: v_dual_mov_b32 v209, v68
	s_waitcnt lgkmcnt(1)
	v_dual_mov_b32 v210, v69 :: v_dual_mov_b32 v197, v62
	v_dual_mov_b32 v195, v63 :: v_dual_mov_b32 v188, v64
	s_waitcnt lgkmcnt(0)
	v_dual_mov_b32 v189, v65 :: v_dual_mov_b32 v180, v54
	v_dual_mov_b32 v182, v55 :: v_dual_mov_b32 v183, v56
	v_mov_b32_e32 v175, v57
	v_mov_b32_dpp v194, v194 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v198, v198 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v199, v199 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v200, v200 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v207, v207 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v208, v208 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v209, v209 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v210, v210 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v204, v204 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v196, v196 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v197, v197 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v195, v195 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v188, v188 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v189, v189 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v176, v176 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v177, v177 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v178, v178 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v179, v179 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v180, v180 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v182, v182 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v183, v183 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v175, v175 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp163:
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
	v_cndmask_b32_e64 v133, 0, 1, s17
	.loc	1 0 0 is_stmt 0                 ; attention_backward.py:0
	s_ashr_i32 s6, s19, 31
	.loc	1 188 9                         ; attention_backward.py:188:9
	s_and_not1_b32 vcc_lo, exec_lo, s17
	.loc	1 0 0                           ; attention_backward.py:0
	s_ashr_i32 s7, s54, 31
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
	v_lshrrev_b32_e32 v167, 4, v0
	.loc	1 123 19                        ; attention_backward.py:123:19
	s_cselect_b32 s5, s8, s5
	s_cselect_b32 s7, s9, s7
	s_add_i32 s8, s5, 1
	s_cmp_ge_u32 s7, s53
	s_clause 0x2
	s_load_b64 s[36:37], s[0:1], 0x58
	s_load_b128 s[56:59], s[0:1], 0x48
	s_load_b64 s[52:53], s[0:1], 0x10
	.loc	1 124 31                        ; attention_backward.py:124:31
	v_or_b32_e32 v170, 4, v167
	v_or_b32_e32 v171, 8, v167
	v_or_b32_e32 v172, 12, v167
	v_or_b32_e32 v173, 16, v167
	v_or_b32_e32 v174, 20, v167
	v_or_b32_e32 v169, 24, v167
	v_or_b32_e32 v168, 28, v167
	.loc	1 123 19                        ; attention_backward.py:123:19
	s_cselect_b32 s5, s8, s5
	.loc	1 124 21                        ; attention_backward.py:124:21
	v_or_b32_e32 v1, s46, v167
	v_or_b32_e32 v2, s46, v170
	v_or_b32_e32 v3, s46, v171
	v_or_b32_e32 v4, s46, v172
	v_or_b32_e32 v5, s46, v173
	v_or_b32_e32 v6, s46, v174
	v_or_b32_e32 v7, s46, v169
	v_or_b32_e32 v8, s46, v168
	.loc	1 123 19                        ; attention_backward.py:123:19
	s_xor_b32 s5, s5, s6
	.loc	1 197 29                        ; attention_backward.py:197:29
	s_mul_i32 s14, s18, s29
	.loc	1 123 19                        ; attention_backward.py:123:19
	s_sub_i32 s13, s5, s6
	.loc	1 125 21                        ; attention_backward.py:125:21
	v_bfe_u32 v131, v0, 4, 1
	v_and_b32_e32 v163, 16, v0
	.loc	1 128 21                        ; attention_backward.py:128:21
	v_cmp_gt_i32_e64 s5, s30, v1
	.loc	1 129 27                        ; attention_backward.py:129:27
	v_add_nc_u32_e32 v134, s23, v1
	v_add_nc_u32_e32 v135, s23, v2
	v_add_nc_u32_e32 v136, s23, v3
	v_add_nc_u32_e32 v137, s23, v4
	v_add_nc_u32_e32 v138, s23, v5
	v_add_nc_u32_e32 v139, s23, v6
	v_add_nc_u32_e32 v140, s23, v7
	v_add_nc_u32_e32 v141, s23, v8
	v_mov_b16_e32 v1.l, 0
	.loc	1 142 31                        ; attention_backward.py:142:31
	s_waitcnt vmcnt(0)
	v_mov_b16_e32 v1.h, v74.l
	v_or_b32_e32 v143, v33, v34
	.loc	1 197 29                        ; attention_backward.py:197:29
	s_add_i32 s29, s13, s14
	.loc	1 220 21                        ; attention_backward.py:220:21
	s_waitcnt lgkmcnt(0)
	s_mul_f32 s13, s48, 0x3fb8aa3b
	v_mul_lo_u32 v79, s69, v121
	.loc	1 246 23                        ; attention_backward.py:246:23
	s_mul_i32 s18, s18, s49
	.loc	1 247 23                        ; attention_backward.py:247:23
	s_mul_i32 s42, s19, s50
	.loc	1 219 37                        ; attention_backward.py:219:37
	v_dual_mul_f32 v142, s13, v1 :: v_dual_and_b32 v205, 48, v0
	.loc	1 125 21                        ; attention_backward.py:125:21
	v_or_b32_e32 v132, 2, v131
	v_or_b32_e32 v130, 4, v131
	v_or_b32_e32 v129, 6, v131
	v_or_b32_e32 v128, 8, v131
	v_or_b32_e32 v127, 10, v131
	v_or_b32_e32 v126, 12, v131
	v_or_b32_e32 v125, 14, v131
	.loc	1 128 21                        ; attention_backward.py:128:21
	v_cmp_gt_i32_e64 s6, s30, v2
	v_cmp_gt_i32_e64 s7, s30, v3
	v_cmp_gt_i32_e64 s8, s30, v4
	v_cmp_gt_i32_e64 s9, s30, v5
	v_cmp_gt_i32_e64 s10, s30, v6
	v_cmp_gt_i32_e64 s11, s30, v7
	v_cmp_gt_i32_e64 s12, s30, v8
	.loc	1 245 21                        ; attention_backward.py:245:21
	s_add_i32 s42, s42, s18
	v_subrev_nc_u32_e32 v144, s21, v134
	v_subrev_nc_u32_e32 v145, s21, v135
	v_subrev_nc_u32_e32 v146, s21, v136
	v_subrev_nc_u32_e32 v147, s21, v137
	v_subrev_nc_u32_e32 v148, s21, v138
	v_subrev_nc_u32_e32 v149, s21, v139
	v_subrev_nc_u32_e32 v150, s21, v140
	v_subrev_nc_u32_e32 v151, s21, v141
	v_add_nc_u32_e32 v152, s22, v134
	v_add_nc_u32_e32 v153, s22, v135
	v_add_nc_u32_e32 v154, s22, v136
	v_add_nc_u32_e32 v155, s22, v137
	v_add_nc_u32_e32 v156, s22, v138
	v_add_nc_u32_e32 v157, s22, v139
	v_add_nc_u32_e32 v158, s22, v140
	v_add_nc_u32_e32 v159, s22, v141
	v_xor_b32_e32 v164, 8, v143
	v_xor_b32_e32 v165, 16, v143
	v_xor_b32_e32 v166, 24, v143
	v_lshlrev_b32_e32 v17, 3, v121
	v_lshrrev_b32_e32 v18, 2, v163
	v_lshrrev_b32_e32 v181, 4, v103
	v_lshlrev_b32_e32 v20, 2, v0
	v_lshrrev_b32_e32 v19, 1, v163
	.loc	1 194 9                         ; attention_backward.py:194:9
	s_cmp_lt_i32 s28, s68
	.loc	1 197 28                        ; attention_backward.py:197:28
	s_mul_i32 s29, s29, s31
	.loc	1 194 9                         ; attention_backward.py:194:9
	s_cselect_b32 s50, -1, 0
	s_cmp_ge_i32 s28, s68
	.loc	1 245 21                        ; attention_backward.py:245:21
	s_mul_i32 s43, s51, s46
	v_cmp_eq_u32_e32 vcc_lo, 0, v103
	.loc	1 194 9                         ; attention_backward.py:194:9
	s_cbranch_scc1 .LBB0_27
; %bb.5:                                ; %.lr.ph
	v_mad_u64_u32 v[80:81], null, s51, v170, v[79:80]
	v_dual_mov_b32 v232, 0xff800000 :: v_dual_and_b32 v1, 52, v20
	v_and_or_b32 v4, v0, 2, v19
	v_dual_mov_b32 v234, 0xff800000 :: v_dual_and_b32 v3, 14, v0
	s_delay_alu instid0(VALU_DEP_3)
	v_lshl_or_b32 v1, v104, 5, v1
	v_mad_u64_u32 v[97:98], null, s51, v173, v[79:80]
	v_mad_u64_u32 v[98:99], null, s51, v174, v[79:80]
	v_mad_u64_u32 v[99:100], null, s51, v169, v[79:80]
	v_mad_u64_u32 v[100:101], null, s51, v168, v[79:80]
	v_mad_u64_u32 v[101:102], null, s51, v167, v[79:80]
	v_or3_b32 v102, v4, v1, v106
	v_dual_mov_b32 v254, 0 :: v_dual_lshlrev_b32 v1, 1, v0
	v_dual_mov_b32 v236, 0xff800000 :: v_dual_lshlrev_b32 v5, 2, v205
	v_cndmask_b32_e64 v4, 0x104, 0, vcc_lo
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_dual_mov_b32 v252, 0xff800000 :: v_dual_and_b32 v1, 60, v1
	v_dual_mov_b32 v238, 0xff800000 :: v_dual_lshlrev_b32 v7, 1, v3
	v_dual_mov_b32 v33, 0 :: v_dual_lshlrev_b32 v8, 5, v76
	v_lshl_or_b32 v3, v3, 7, v5
	v_xor_b32_e32 v214, v4, v1
	v_mad_u64_u32 v[81:82], null, s51, v171, v[79:80]
	v_mad_u64_u32 v[82:83], null, s51, v172, v[79:80]
	v_or3_b32 v83, v18, v181, v17
	v_or3_b32 v213, v3, v8, v7
	v_or_b32_e32 v10, v214, v75
	v_xor_b32_e32 v3, 16, v102
	v_xor_b32_e32 v7, 32, v102
	v_xor_b32_e32 v2, 0x90, v83
	v_xor_b32_e32 v6, 0x120, v83
	v_xor_b32_e32 v5, 0x1b0, v83
	v_xor_b32_e32 v1, 48, v102
	v_xor_b32_e32 v4, 4, v213
	v_xor_b32_e32 v8, 8, v213
	v_xor_b32_e32 v9, 12, v213
	v_xor_b32_e32 v11, 16, v213
	v_xor_b32_e32 v12, 20, v213
	v_xor_b32_e32 v13, 24, v213
	v_xor_b32_e32 v14, 28, v213
	v_xor_b32_e32 v15, 0x208, v10
	v_xor_b32_e32 v16, 0x410, v10
	v_xor_b32_e32 v10, 0x618, v10
	v_dual_mov_b32 v253, 0xff800000 :: v_dual_add_nc_u32 v216, 0, v6
	v_dual_mov_b32 v250, 0xff800000 :: v_dual_add_nc_u32 v215, 0, v2
	v_dual_mov_b32 v248, 0xff800000 :: v_dual_add_nc_u32 v217, 0, v5
	v_dual_mov_b32 v231, 0xff800000 :: v_dual_add_nc_u32 v218, 0, v3
	v_dual_mov_b32 v246, 0xff800000 :: v_dual_add_nc_u32 v219, 0, v7
	v_dual_mov_b32 v233, 0xff800000 :: v_dual_add_nc_u32 v220, 0, v1
	v_dual_mov_b32 v244, 0xff800000 :: v_dual_add_nc_u32 v221, 0, v4
	v_dual_mov_b32 v235, 0xff800000 :: v_dual_add_nc_u32 v222, 0, v8
	v_dual_mov_b32 v242, 0xff800000 :: v_dual_add_nc_u32 v223, 0, v9
	v_dual_mov_b32 v237, 0xff800000 :: v_dual_add_nc_u32 v224, 0, v11
	v_dual_mov_b32 v240, 0xff800000 :: v_dual_add_nc_u32 v225, 0, v12
	v_dual_mov_b32 v251, 0 :: v_dual_add_nc_u32 v226, 0, v13
	v_add_nc_u32_e32 v227, 0, v14
	v_dual_mov_b32 v249, 0 :: v_dual_add_nc_u32 v228, 0, v15
	v_add_nc_u32_e32 v229, 0, v16
	v_dual_mov_b32 v247, 0 :: v_dual_add_nc_u32 v230, 0, v10
	v_mov_b32_e32 v245, 0
	v_mov_b32_e32 v243, 0
	v_mov_b32_e32 v241, 0
	v_mov_b32_e32 v239, 0
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
	.loc	1 0 9 is_stmt 0                 ; attention_backward.py:0:9
	s_or_b32 exec_lo, exec_lo, s14
	.loc	1 252 30 is_stmt 1              ; attention_backward.py:252:30
	v_and_b16 v1.l, 0xff, v77.h
	.loc	1 223 21                        ; attention_backward.py:223:21
	v_cvt_f32_i32_e32 v5, v35
	.loc	1 252 21                        ; attention_backward.py:252:21
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 223 21                        ; attention_backward.py:223:21
	v_cvt_f32_i32_e32 v7, v37
	.loc	1 252 30                        ; attention_backward.py:252:30
	v_cmp_ne_u16_e32 vcc_lo, 0, v1.l
	v_and_b16 v1.l, 0xff, v77.l
	.loc	1 223 21                        ; attention_backward.py:223:21
	v_cvt_f32_i32_e32 v4, v34
	.loc	1 214 33                        ; attention_backward.py:214:33
	v_mov_b16_e32 v12.h, v124.l
	v_mov_b16_e32 v12.l, 0
	.loc	1 252 21                        ; attention_backward.py:252:21
	s_and_b32 s15, s76, vcc_lo
	.loc	1 252 30 is_stmt 0              ; attention_backward.py:252:30
	v_cmp_ne_u16_e64 s13, 0, v1.l
	v_and_b16 v1.l, 0xff, v74.l
	.loc	1 214 33 is_stmt 1              ; attention_backward.py:214:33
	v_mov_b16_e64 v15.h, v186.l
	v_mov_b16_e32 v15.l, v12.l
	.loc	1 223 21                        ; attention_backward.py:223:21
	v_cvt_f32_i32_e32 v8, v38
	.loc	1 252 21                        ; attention_backward.py:252:21
	s_and_b32 s19, s74, s13
	.loc	1 252 30 is_stmt 0              ; attention_backward.py:252:30
	v_cmp_ne_u16_e64 s16, 0, v1.l
	s_waitcnt vmcnt(0)
	v_and_b16 v1.l, 0xff, v76.h
	.loc	1 252 21                        ; attention_backward.py:252:21
	v_cndmask_b32_e64 v2, 0, 1, s19
	.loc	1 223 21 is_stmt 1              ; attention_backward.py:223:21
	v_cvt_f32_i32_e32 v9, v39
	.loc	1 214 33                        ; attention_backward.py:214:33
	v_mov_b16_e64 v16.h, v185.l
	.loc	1 252 21                        ; attention_backward.py:252:21
	s_and_b32 s18, s73, s16
	.loc	1 252 30 is_stmt 0              ; attention_backward.py:252:30
	v_cmp_ne_u16_e64 s14, 0, v1.l
	.loc	1 252 21                        ; attention_backward.py:252:21
	v_cndmask_b32_e64 v1, 0, 1, s15
	.loc	1 214 33 is_stmt 1              ; attention_backward.py:214:33
	v_mov_b16_e32 v16.l, v12.l
	.loc	1 223 21                        ; attention_backward.py:223:21
	v_mul_f32_e32 v8, v142, v8
	.loc	1 214 33                        ; attention_backward.py:214:33
	v_mov_b16_e64 v34.h, v184.l
	.loc	1 252 21                        ; attention_backward.py:252:21
	s_and_b32 s14, s75, s14
	v_lshlrev_b16 v1.l, 8, v1.l
	.loc	1 214 33                        ; attention_backward.py:214:33
	v_mov_b16_e32 v34.l, v12.l
	.loc	1 223 21                        ; attention_backward.py:223:21
	v_dual_mul_f32 v8, v8, v16 :: v_dual_mul_f32 v9, v142, v9
	.loc	1 257 22                        ; attention_backward.py:257:22
	v_add_nc_u32_e32 v14, 0, v213
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 252 21                        ; attention_backward.py:252:21
	v_or_b16 v1.l, v2.l, v1.l
	v_cndmask_b32_e64 v2, 0, 1, s14
	.loc	1 223 21                        ; attention_backward.py:223:21
	v_cvt_f32_i32_e32 v6, v36
	v_cvt_f32_i32_e32 v11, v41
	v_mul_f32_e32 v9, v9, v34
	v_cvt_f32_i32_e32 v10, v40
	.loc	1 252 21                        ; attention_backward.py:252:21
	v_lshlrev_b16 v1.h, 8, v2.l
	v_cndmask_b32_e64 v2, 0, 1, s18
	.loc	1 223 21                        ; attention_backward.py:223:21
	v_mul_f32_e32 v5, v142, v5
	v_mul_f32_e32 v4, v142, v4
	v_mul_f32_e32 v11, v142, v11
	.loc	1 214 33                        ; attention_backward.py:214:33
	v_mov_b16_e64 v35.h, v160.l
	.loc	1 252 21                        ; attention_backward.py:252:21
	v_or_b16 v1.h, v2.l, v1.h
	v_add_nc_u32_e32 v2, 0, v83
	.loc	1 214 33                        ; attention_backward.py:214:33
	v_mov_b16_e32 v35.l, v12.l
	.loc	1 223 21                        ; attention_backward.py:223:21
	v_mul_f32_e32 v10, v142, v10
	.loc	1 194 9                         ; attention_backward.py:194:9
	s_add_i32 s54, s54, 16
	.loc	1 252 21                        ; attention_backward.py:252:21
	ds_store_b16 v2, v1
	.loc	1 252 30 is_stmt 0              ; attention_backward.py:252:30
	v_and_b16 v1.l, 0xff, v75.l
	.loc	1 223 21 is_stmt 1              ; attention_backward.py:223:21
	v_mul_f32_e32 v10, v10, v35
	.loc	1 252 21                        ; attention_backward.py:252:21
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 252 30 is_stmt 0              ; attention_backward.py:252:30
	v_cmp_ne_u16_e32 vcc_lo, 0, v1.l
	v_and_b16 v1.l, 0xff, v74.h
	.loc	1 252 21                        ; attention_backward.py:252:21
	s_and_b32 s17, s71, vcc_lo
	.loc	1 252 30                        ; attention_backward.py:252:30
	v_cmp_ne_u16_e64 s16, 0, v1.l
	v_and_b16 v1.l, 0xff, v76.l
	.loc	1 223 21 is_stmt 1              ; attention_backward.py:223:21
	v_dual_mul_f32 v7, v142, v7 :: v_dual_mul_f32 v4, v4, v12
	.loc	1 214 33                        ; attention_backward.py:214:33
	v_mov_b16_e64 v12.h, v255.l
	.loc	1 252 21                        ; attention_backward.py:252:21
	s_and_b32 s16, s55, s16
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_4) | instid1(VALU_DEP_3)
	.loc	1 252 30 is_stmt 0              ; attention_backward.py:252:30
	v_cmp_ne_u16_e64 s13, 0, v1.l
	v_and_b16 v1.l, 0xff, v75.h
	.loc	1 252 21                        ; attention_backward.py:252:21
	v_cndmask_b32_e64 v3, 0, 1, s16
	.loc	1 223 21 is_stmt 1              ; attention_backward.py:223:21
	v_dual_mul_f32 v6, v142, v6 :: v_dual_mul_f32 v11, v11, v12
	.loc	1 252 21                        ; attention_backward.py:252:21
	s_and_b32 s13, s72, s13
	.loc	1 252 30 is_stmt 0              ; attention_backward.py:252:30
	v_cmp_ne_u16_e64 s20, 0, v1.l
	.loc	1 252 21                        ; attention_backward.py:252:21
	v_cndmask_b32_e64 v2, 0, 1, s13
	.loc	1 223 21 is_stmt 1              ; attention_backward.py:223:21
	v_mul_f32_e32 v7, v7, v15
	.loc	1 252 21                        ; attention_backward.py:252:21
	s_and_b32 vcc_lo, s70, s20
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_mov_b16_e32 v1.l, v2.l
	v_cndmask_b32_e64 v2, 0, 1, s17
	.loc	1 194 9                         ; attention_backward.py:194:9
	s_cmp_lt_i32 s54, s68
	.loc	1 252 21                        ; attention_backward.py:252:21
	v_lshlrev_b16 v1.l, 8, v1.l
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_or_b16 v1.l, v2.l, v1.l
	v_cndmask_b32_e64 v2, 0, 1, vcc_lo
	v_lshlrev_b16 v2.l, 8, v2.l
	s_delay_alu instid0(VALU_DEP_1)
	v_or_b16 v2.l, v3.l, v2.l
	ds_store_b16_d16_hi v215, v1
	ds_store_b16 v216, v1
	ds_store_b16 v217, v2
	v_add_nc_u32_e32 v2, 0, v102
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_u8_d16 v1, v2
	s_waitcnt lgkmcnt(0)
	ds_load_u8_d16_hi v1, v2 offset:64
	ds_load_u8_d16 v2, v218
	s_waitcnt lgkmcnt(0)
	ds_load_u8_d16_hi v2, v220 offset:64
	ds_load_u8_d16 v3, v219 offset:64
	s_waitcnt lgkmcnt(0)
	ds_load_u8_d16_hi v3, v218 offset:64
	v_and_b16 v1.l, 1, v1.l
	v_and_b16 v2.l, 1, v2.l
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_cmp_eq_u16_e64 s20, 1, v1.l
	.loc	1 257 22                        ; attention_backward.py:257:22
	v_cndmask_b32_e64 v13, 0xff800000, v4, s20
	.loc	1 252 21                        ; attention_backward.py:252:21
	ds_load_u8_d16 v1, v219
	ds_load_u8_d16 v4, v220
	.loc	1 257 22                        ; attention_backward.py:257:22
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 252 21                        ; attention_backward.py:252:21
	v_cmp_eq_u16_e64 s20, 1, v2.l
	.loc	1 257 22                        ; attention_backward.py:257:22
	ds_store_b32 v14, v13
	.loc	1 214 33                        ; attention_backward.py:214:33
	v_mov_b16_e32 v13.h, v105.l
	v_mov_b16_e32 v13.l, v12.l
	v_mov_b16_e64 v14.h, v187.l
	v_mov_b16_e32 v14.l, v12.l
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 223 21                        ; attention_backward.py:223:21
	v_dual_mul_f32 v5, v5, v13 :: v_dual_mul_f32 v6, v6, v14
	.loc	1 257 22                        ; attention_backward.py:257:22
	v_cndmask_b32_e64 v5, 0xff800000, v5, s20
	.loc	1 252 21                        ; attention_backward.py:252:21
	v_and_b16 v1.l, 1, v1.l
	.loc	1 257 22                        ; attention_backward.py:257:22
	ds_store_b32 v221, v5
	.loc	1 252 21                        ; attention_backward.py:252:21
	v_cmp_eq_u16_e64 s20, 1, v1.l
	v_and_b16 v1.l, 1, v4.l
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 257 22                        ; attention_backward.py:257:22
	v_cndmask_b32_e64 v5, 0xff800000, v6, s20
	.loc	1 252 21                        ; attention_backward.py:252:21
	v_cmp_eq_u16_e64 s20, 1, v1.l
	v_and_b16 v1.l, 1, v1.h
	.loc	1 257 22                        ; attention_backward.py:257:22
	ds_store_b32 v222, v5
	v_cndmask_b32_e64 v4, 0xff800000, v7, s20
	.loc	1 252 21                        ; attention_backward.py:252:21
	v_cmp_eq_u16_e64 s20, 1, v1.l
	.loc	1 257 22                        ; attention_backward.py:257:22
	ds_store_b32 v223, v4
	v_cndmask_b32_e64 v1, 0xff800000, v8, s20
	ds_store_b32 v224, v1
	.loc	1 252 21                        ; attention_backward.py:252:21
	v_and_b16 v1.l, 1, v3.h
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_cmp_eq_u16_e64 s20, 1, v1.l
	.loc	1 257 22                        ; attention_backward.py:257:22
	v_cndmask_b32_e64 v1, 0xff800000, v9, s20
	ds_store_b32 v225, v1
	.loc	1 252 21                        ; attention_backward.py:252:21
	v_and_b16 v1.l, 1, v3.l
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_cmp_eq_u16_e64 s20, 1, v1.l
	.loc	1 257 22                        ; attention_backward.py:257:22
	v_cndmask_b32_e64 v1, 0xff800000, v10, s20
	ds_store_b32 v226, v1
	.loc	1 252 21                        ; attention_backward.py:252:21
	v_and_b16 v1.l, 1, v2.h
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_cmp_eq_u16_e64 s20, 1, v1.l
	.loc	1 257 22                        ; attention_backward.py:257:22
	v_cndmask_b32_e64 v1, 0xff800000, v11, s20
	ds_store_b32 v227, v1
	v_add_nc_u32_e32 v1, v162, v214
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_2addr_b32 v[34:35], v1 offset1:32
.Ltmp164:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention_backward.py:258:25 ]
	s_waitcnt lgkmcnt(0)
	v_mov_b32_e32 v1, v34
.Ltmp165:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention_backward.py:258:25 ] ]
	v_max_f32_e32 v2, v34, v34
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp166:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention_backward.py:258:25 ]
	v_mov_b32_dpp v1, v1 row_xmask:8 row_mask:0xf bank_mask:0xf
.Ltmp167:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention_backward.py:258:25 ] ]
	v_max_f32_e32 v1, v1, v1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_max_f32_e32 v1, v2, v1
.Ltmp168:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention_backward.py:258:25 ]
	v_mov_b32_e32 v2, v1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v2, v2 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp169:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention_backward.py:258:25 ] ]
	v_max_f32_e32 v2, v2, v2
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_max_f32_e32 v1, v1, v2
.Ltmp170:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention_backward.py:258:25 ]
	v_mov_b32_e32 v2, v1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v2, v2 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp171:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention_backward.py:258:25 ] ]
	v_max_f32_e32 v2, v2, v2
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_max_f32_e32 v1, v1, v2
.Ltmp172:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention_backward.py:258:25 ]
	v_mov_b32_e32 v2, v1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v2, v2 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp173:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention_backward.py:258:25 ] ]
	v_max_f32_e32 v2, v2, v2
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_dual_max_f32 v1, v1, v2 :: v_dual_max_f32 v2, v231, v231
.Ltmp174:
	.loc	1 259 20                        ; attention_backward.py:259:20
	v_max_f32_e32 v231, v2, v1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 261 58                        ; attention_backward.py:261:58
	v_sub_f32_e32 v2, v34, v231
	.loc	1 261 45 is_stmt 0              ; attention_backward.py:261:45
	v_exp_f32_e32 v2, v2
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 261 29                        ; attention_backward.py:261:29
	v_cndmask_b32_e64 v2, 0, v2, s19
	.loc	1 260 21 is_stmt 1              ; attention_backward.py:260:21
	v_cmp_neq_f32_e64 s19, 0xff800000, v253
.Ltmp175:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:262:33 ]
	v_mov_b32_e32 v3, v2
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v3, v3 row_xmask:8 row_mask:0xf bank_mask:0xf
.Ltmp176:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:262:33 ] ]
	v_add_f32_e32 v2, v2, v3
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp177:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:262:33 ]
	v_mov_b32_e32 v3, v2
	v_mov_b32_dpp v3, v3 row_xmask:4 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp178:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:262:33 ] ]
	v_add_f32_e32 v2, v2, v3
.Ltmp179:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:262:33 ]
	v_mov_b32_e32 v3, v2
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v3, v3 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp180:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:262:33 ] ]
	v_dual_add_f32 v2, v2, v3 :: v_dual_max_f32 v3, v253, v253
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp181:
	.loc	1 259 20                        ; attention_backward.py:259:20
	v_dual_max_f32 v36, v3, v1 :: v_dual_mov_b32 v1, v2
.Ltmp182:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:262:33 ]
	v_mov_b32_dpp v1, v1 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
.Ltmp183:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:262:33 ] ]
	v_dual_add_f32 v34, v2, v1 :: v_dual_sub_f32 v1, v253, v36
	v_mov_b32_e32 v253, v36
.Ltmp184:
	.loc	1 260 57                        ; attention_backward.py:260:57
	v_exp_f32_e32 v1, v1
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 260 21 is_stmt 0              ; attention_backward.py:260:21
	v_cndmask_b32_e64 v1, 0, v1, s19
	.loc	1 262 19 is_stmt 1              ; attention_backward.py:262:19
	v_fmac_f32_e32 v34, v254, v1
	.loc	1 257 22                        ; attention_backward.py:257:22
	ds_load_2addr_b32 v[1:2], v228 offset1:32
.Ltmp185:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention_backward.py:258:25 ]
	s_waitcnt lgkmcnt(0)
	v_mov_b32_e32 v3, v1
.Ltmp186:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention_backward.py:258:25 ] ]
	v_max_f32_e32 v4, v1, v1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp187:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention_backward.py:258:25 ]
	v_mov_b32_dpp v3, v3 row_xmask:8 row_mask:0xf bank_mask:0xf
.Ltmp188:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention_backward.py:258:25 ] ]
	v_max_f32_e32 v3, v3, v3
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_max_f32_e32 v3, v4, v3
.Ltmp189:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention_backward.py:258:25 ]
	v_mov_b32_e32 v4, v3
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v4, v4 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp190:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention_backward.py:258:25 ] ]
	v_max_f32_e32 v4, v4, v4
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_max_f32_e32 v3, v3, v4
.Ltmp191:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention_backward.py:258:25 ]
	v_mov_b32_e32 v4, v3
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v4, v4 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp192:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention_backward.py:258:25 ] ]
	v_max_f32_e32 v4, v4, v4
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_max_f32_e32 v3, v3, v4
.Ltmp193:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention_backward.py:258:25 ]
	v_mov_b32_e32 v4, v3
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v4, v4 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp194:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention_backward.py:258:25 ] ]
	v_max_f32_e32 v4, v4, v4
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_max_f32_e32 v3, v3, v4
.Ltmp195:
	.loc	1 259 20                        ; attention_backward.py:259:20
	v_max_f32_e32 v4, v232, v232
	v_max_f32_e32 v232, v4, v3
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 261 58                        ; attention_backward.py:261:58
	v_sub_f32_e32 v1, v1, v232
	.loc	1 261 45 is_stmt 0              ; attention_backward.py:261:45
	v_exp_f32_e32 v1, v1
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 261 29                        ; attention_backward.py:261:29
	v_cndmask_b32_e64 v1, 0, v1, s18
	.loc	1 260 21 is_stmt 1              ; attention_backward.py:260:21
	v_cmp_neq_f32_e64 s18, 0xff800000, v252
.Ltmp196:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:262:33 ]
	v_mov_b32_e32 v4, v1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v4, v4 row_xmask:8 row_mask:0xf bank_mask:0xf
.Ltmp197:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:262:33 ] ]
	v_add_f32_e32 v1, v1, v4
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp198:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:262:33 ]
	v_mov_b32_e32 v4, v1
	v_mov_b32_dpp v4, v4 row_xmask:4 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp199:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:262:33 ] ]
	v_add_f32_e32 v1, v1, v4
.Ltmp200:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:262:33 ]
	v_mov_b32_e32 v4, v1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v4, v4 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp201:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:262:33 ] ]
	v_add_f32_e32 v1, v1, v4
.Ltmp202:
	.loc	1 259 20                        ; attention_backward.py:259:20
	v_max_f32_e32 v4, v252, v252
	v_mov_b32_e32 v254, v34
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_dual_max_f32 v38, v4, v3 :: v_dual_mov_b32 v3, v1
.Ltmp203:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:262:33 ]
	v_mov_b32_dpp v3, v3 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp204:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:262:33 ] ]
	v_add_f32_e32 v37, v1, v3
.Ltmp205:
	.loc	1 260 70                        ; attention_backward.py:260:70
	v_sub_f32_e32 v1, v252, v38
	.loc	1 257 22                        ; attention_backward.py:257:22
	ds_load_2addr_b32 v[3:4], v229 offset1:32
	.loc	1 260 57                        ; attention_backward.py:260:57
	v_exp_f32_e32 v1, v1
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 260 21 is_stmt 0              ; attention_backward.py:260:21
	v_cndmask_b32_e64 v1, 0, v1, s18
	.loc	1 262 19 is_stmt 1              ; attention_backward.py:262:19
	v_fmac_f32_e32 v37, v251, v1
.Ltmp206:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention_backward.py:258:25 ]
	s_waitcnt lgkmcnt(0)
	v_mov_b32_e32 v1, v3
.Ltmp207:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention_backward.py:258:25 ] ]
	v_max_f32_e32 v5, v3, v3
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mov_b32_e32 v251, v37
.Ltmp208:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention_backward.py:258:25 ]
	v_mov_b32_dpp v1, v1 row_xmask:8 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp209:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention_backward.py:258:25 ] ]
	v_max_f32_e32 v1, v1, v1
	v_dual_max_f32 v1, v5, v1 :: v_dual_mov_b32 v252, v38
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp210:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention_backward.py:258:25 ]
	v_mov_b32_e32 v5, v1
	v_mov_b32_dpp v5, v5 row_xmask:4 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp211:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention_backward.py:258:25 ] ]
	v_max_f32_e32 v5, v5, v5
	v_max_f32_e32 v1, v1, v5
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp212:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention_backward.py:258:25 ]
	v_mov_b32_e32 v5, v1
	v_mov_b32_dpp v5, v5 row_xmask:2 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp213:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention_backward.py:258:25 ] ]
	v_max_f32_e32 v5, v5, v5
	v_max_f32_e32 v1, v1, v5
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp214:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention_backward.py:258:25 ]
	v_mov_b32_e32 v5, v1
	v_mov_b32_dpp v5, v5 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp215:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention_backward.py:258:25 ] ]
	v_max_f32_e32 v5, v5, v5
	v_max_f32_e32 v1, v1, v5
.Ltmp216:
	.loc	1 259 20                        ; attention_backward.py:259:20
	v_max_f32_e32 v5, v233, v233
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_max_f32_e32 v233, v5, v1
	.loc	1 261 58                        ; attention_backward.py:261:58
	v_sub_f32_e32 v3, v3, v233
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 261 45 is_stmt 0              ; attention_backward.py:261:45
	v_exp_f32_e32 v3, v3
	.loc	1 261 29                        ; attention_backward.py:261:29
	v_cndmask_b32_e64 v3, 0, v3, s17
	.loc	1 260 21 is_stmt 1              ; attention_backward.py:260:21
	v_cmp_neq_f32_e64 s17, 0xff800000, v250
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp217:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:262:33 ]
	v_mov_b32_e32 v5, v3
	v_mov_b32_dpp v5, v5 row_xmask:8 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp218:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:262:33 ] ]
	v_add_f32_e32 v3, v3, v5
.Ltmp219:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:262:33 ]
	v_mov_b32_e32 v5, v3
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v5, v5 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp220:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:262:33 ] ]
	v_add_f32_e32 v3, v3, v5
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp221:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:262:33 ]
	v_mov_b32_e32 v5, v3
	v_mov_b32_dpp v5, v5 row_xmask:2 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
.Ltmp222:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:262:33 ] ]
	v_add_f32_e32 v3, v3, v5
.Ltmp223:
	.loc	1 259 20                        ; attention_backward.py:259:20
	v_max_f32_e32 v5, v250, v250
	v_dual_max_f32 v40, v5, v1 :: v_dual_mov_b32 v1, v3
	.loc	1 257 22                        ; attention_backward.py:257:22
	ds_load_2addr_b32 v[5:6], v230 offset1:32
.Ltmp224:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:262:33 ]
	v_mov_b32_dpp v1, v1 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
.Ltmp225:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:262:33 ] ]
	v_add_f32_e32 v39, v3, v1
.Ltmp226:
	.loc	1 260 70                        ; attention_backward.py:260:70
	v_dual_sub_f32 v1, v250, v40 :: v_dual_mov_b32 v250, v40
	.loc	1 260 57 is_stmt 0              ; attention_backward.py:260:57
	v_exp_f32_e32 v1, v1
.Ltmp227:
	.loc	2 170 12 is_stmt 1              ; standard.py:170:12 @[ standard.py:191:16 @[ attention_backward.py:258:25 ] ]
	s_waitcnt lgkmcnt(0)
	v_max_f32_e32 v3, v5, v5
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp228:
	.loc	1 260 21                        ; attention_backward.py:260:21
	v_cndmask_b32_e64 v1, 0, v1, s17
	.loc	1 262 19                        ; attention_backward.py:262:19
	v_fmac_f32_e32 v39, v249, v1
.Ltmp229:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention_backward.py:258:25 ]
	v_mov_b32_e32 v1, v5
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v1, v1 row_xmask:8 row_mask:0xf bank_mask:0xf
.Ltmp230:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention_backward.py:258:25 ] ]
	v_max_f32_e32 v1, v1, v1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_max_f32_e32 v1, v3, v1
.Ltmp231:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention_backward.py:258:25 ]
	v_mov_b32_e32 v3, v1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v3, v3 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp232:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention_backward.py:258:25 ] ]
	v_max_f32_e32 v3, v3, v3
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_max_f32_e32 v1, v1, v3
.Ltmp233:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention_backward.py:258:25 ]
	v_mov_b32_e32 v3, v1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v3, v3 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp234:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention_backward.py:258:25 ] ]
	v_max_f32_e32 v3, v3, v3
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_max_f32_e32 v1, v1, v3
.Ltmp235:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention_backward.py:258:25 ]
	v_mov_b32_e32 v3, v1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v3, v3 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp236:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention_backward.py:258:25 ] ]
	v_max_f32_e32 v3, v3, v3
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_max_f32_e32 v1, v1, v3
.Ltmp237:
	.loc	1 259 20                        ; attention_backward.py:259:20
	v_max_f32_e32 v3, v234, v234
	v_max_f32_e32 v234, v3, v1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 261 58                        ; attention_backward.py:261:58
	v_sub_f32_e32 v3, v5, v234
	.loc	1 261 45 is_stmt 0              ; attention_backward.py:261:45
	v_exp_f32_e32 v3, v3
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 261 29                        ; attention_backward.py:261:29
	v_cndmask_b32_e64 v3, 0, v3, s16
	.loc	1 260 21 is_stmt 1              ; attention_backward.py:260:21
	v_cmp_neq_f32_e64 s16, 0xff800000, v248
.Ltmp238:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:262:33 ]
	v_mov_b32_e32 v5, v3
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v5, v5 row_xmask:8 row_mask:0xf bank_mask:0xf
.Ltmp239:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:262:33 ] ]
	v_add_f32_e32 v3, v3, v5
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp240:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:262:33 ]
	v_mov_b32_e32 v5, v3
	v_mov_b32_dpp v5, v5 row_xmask:4 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp241:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:262:33 ] ]
	v_add_f32_e32 v3, v3, v5
.Ltmp242:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:262:33 ]
	v_mov_b32_e32 v5, v3
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v5, v5 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp243:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:262:33 ] ]
	v_add_f32_e32 v3, v3, v5
.Ltmp244:
	.loc	1 259 20                        ; attention_backward.py:259:20
	v_max_f32_e32 v5, v248, v248
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_dual_max_f32 v74, v5, v1 :: v_dual_mov_b32 v1, v3
.Ltmp245:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:262:33 ]
	v_mov_b32_dpp v1, v1 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp246:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:262:33 ] ]
	v_add_f32_e32 v41, v3, v1
.Ltmp247:
	.loc	1 260 70                        ; attention_backward.py:260:70
	v_sub_f32_e32 v1, v248, v74
.Ltmp248:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention_backward.py:258:25 ] ]
	v_dual_max_f32 v3, v35, v35 :: v_dual_mov_b32 v248, v74
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
.Ltmp249:
	.loc	1 260 57                        ; attention_backward.py:260:57
	v_exp_f32_e32 v1, v1
	.loc	1 260 21 is_stmt 0              ; attention_backward.py:260:21
	v_cndmask_b32_e64 v1, 0, v1, s16
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 262 19 is_stmt 1              ; attention_backward.py:262:19
	v_fmac_f32_e32 v41, v247, v1
.Ltmp250:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention_backward.py:258:25 ]
	v_mov_b32_e32 v1, v35
	v_mov_b32_e32 v247, v41
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v1, v1 row_xmask:8 row_mask:0xf bank_mask:0xf
.Ltmp251:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention_backward.py:258:25 ] ]
	v_max_f32_e32 v1, v1, v1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_max_f32_e32 v1, v3, v1
.Ltmp252:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention_backward.py:258:25 ]
	v_mov_b32_e32 v3, v1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v3, v3 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp253:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention_backward.py:258:25 ] ]
	v_max_f32_e32 v3, v3, v3
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_max_f32_e32 v1, v1, v3
.Ltmp254:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention_backward.py:258:25 ]
	v_mov_b32_e32 v3, v1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v3, v3 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp255:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention_backward.py:258:25 ] ]
	v_max_f32_e32 v3, v3, v3
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_max_f32_e32 v1, v1, v3
.Ltmp256:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention_backward.py:258:25 ]
	v_mov_b32_e32 v3, v1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v3, v3 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp257:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention_backward.py:258:25 ] ]
	v_max_f32_e32 v3, v3, v3
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_max_f32_e32 v1, v1, v3
.Ltmp258:
	.loc	1 259 20                        ; attention_backward.py:259:20
	v_max_f32_e32 v3, v235, v235
	v_max_f32_e32 v235, v3, v1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 261 58                        ; attention_backward.py:261:58
	v_sub_f32_e32 v3, v35, v235
	.loc	1 261 45 is_stmt 0              ; attention_backward.py:261:45
	v_exp_f32_e32 v3, v3
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 261 29                        ; attention_backward.py:261:29
	v_cndmask_b32_e64 v3, 0, v3, s15
	.loc	1 260 21 is_stmt 1              ; attention_backward.py:260:21
	v_cmp_neq_f32_e64 s15, 0xff800000, v246
.Ltmp259:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:262:33 ]
	v_mov_b32_e32 v5, v3
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v5, v5 row_xmask:8 row_mask:0xf bank_mask:0xf
.Ltmp260:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:262:33 ] ]
	v_add_f32_e32 v3, v3, v5
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp261:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:262:33 ]
	v_mov_b32_e32 v5, v3
	v_mov_b32_dpp v5, v5 row_xmask:4 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp262:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:262:33 ] ]
	v_add_f32_e32 v3, v3, v5
.Ltmp263:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:262:33 ]
	v_mov_b32_e32 v5, v3
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v5, v5 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp264:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:262:33 ] ]
	v_add_f32_e32 v3, v3, v5
.Ltmp265:
	.loc	1 259 20                        ; attention_backward.py:259:20
	v_max_f32_e32 v5, v246, v246
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_max_f32_e32 v75, v5, v1
.Ltmp266:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:262:33 ]
	v_mov_b32_e32 v1, v3
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v1, v1 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp267:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:262:33 ] ]
	v_add_f32_e32 v35, v3, v1
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_2)
.Ltmp268:
	.loc	1 260 70                        ; attention_backward.py:260:70
	v_sub_f32_e32 v1, v246, v75
.Ltmp269:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention_backward.py:258:25 ] ]
	v_dual_max_f32 v3, v2, v2 :: v_dual_mov_b32 v246, v75
.Ltmp270:
	.loc	1 260 57                        ; attention_backward.py:260:57
	v_exp_f32_e32 v1, v1
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 260 21 is_stmt 0              ; attention_backward.py:260:21
	v_cndmask_b32_e64 v1, 0, v1, s15
	.loc	1 262 19 is_stmt 1              ; attention_backward.py:262:19
	v_fmac_f32_e32 v35, v245, v1
.Ltmp271:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention_backward.py:258:25 ]
	v_mov_b32_e32 v1, v2
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_mov_b32_e32 v245, v35
	v_mov_b32_dpp v1, v1 row_xmask:8 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp272:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention_backward.py:258:25 ] ]
	v_max_f32_e32 v1, v1, v1
	v_max_f32_e32 v1, v3, v1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp273:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention_backward.py:258:25 ]
	v_mov_b32_e32 v3, v1
	v_mov_b32_dpp v3, v3 row_xmask:4 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp274:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention_backward.py:258:25 ] ]
	v_max_f32_e32 v3, v3, v3
	v_max_f32_e32 v1, v1, v3
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp275:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention_backward.py:258:25 ]
	v_mov_b32_e32 v3, v1
	v_mov_b32_dpp v3, v3 row_xmask:2 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp276:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention_backward.py:258:25 ] ]
	v_max_f32_e32 v3, v3, v3
	v_max_f32_e32 v1, v1, v3
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp277:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention_backward.py:258:25 ]
	v_mov_b32_e32 v3, v1
	v_mov_b32_dpp v3, v3 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp278:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention_backward.py:258:25 ] ]
	v_max_f32_e32 v3, v3, v3
	v_max_f32_e32 v1, v1, v3
.Ltmp279:
	.loc	1 259 20                        ; attention_backward.py:259:20
	v_max_f32_e32 v3, v236, v236
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_max_f32_e32 v236, v3, v1
	.loc	1 261 58                        ; attention_backward.py:261:58
	v_sub_f32_e32 v2, v2, v236
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 261 45 is_stmt 0              ; attention_backward.py:261:45
	v_exp_f32_e32 v2, v2
	.loc	1 261 29                        ; attention_backward.py:261:29
	v_cndmask_b32_e64 v2, 0, v2, s14
	.loc	1 260 21 is_stmt 1              ; attention_backward.py:260:21
	v_cmp_neq_f32_e64 s14, 0xff800000, v244
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp280:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:262:33 ]
	v_mov_b32_e32 v3, v2
	v_mov_b32_dpp v3, v3 row_xmask:8 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp281:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:262:33 ] ]
	v_add_f32_e32 v2, v2, v3
.Ltmp282:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:262:33 ]
	v_mov_b32_e32 v3, v2
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v3, v3 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp283:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:262:33 ] ]
	v_add_f32_e32 v2, v2, v3
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp284:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:262:33 ]
	v_mov_b32_e32 v3, v2
	v_mov_b32_dpp v3, v3 row_xmask:2 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp285:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:262:33 ] ]
	v_dual_add_f32 v2, v2, v3 :: v_dual_max_f32 v3, v244, v244
.Ltmp286:
	.loc	1 259 20                        ; attention_backward.py:259:20
	v_max_f32_e32 v77, v3, v1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp287:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:262:33 ]
	v_mov_b32_e32 v1, v2
	v_mov_b32_dpp v1, v1 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp288:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:262:33 ] ]
	v_add_f32_e32 v76, v2, v1
.Ltmp289:
	.loc	1 260 70                        ; attention_backward.py:260:70
	v_sub_f32_e32 v1, v244, v77
.Ltmp290:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention_backward.py:258:25 ] ]
	v_max_f32_e32 v2, v4, v4
	v_mov_b32_e32 v244, v77
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_1)
.Ltmp291:
	.loc	1 260 57                        ; attention_backward.py:260:57
	v_exp_f32_e32 v1, v1
	.loc	1 260 21 is_stmt 0              ; attention_backward.py:260:21
	v_cndmask_b32_e64 v1, 0, v1, s14
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 262 19 is_stmt 1              ; attention_backward.py:262:19
	v_dual_fmac_f32 v76, v243, v1 :: v_dual_mov_b32 v1, v4
	v_mov_b32_e32 v243, v76
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp292:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention_backward.py:258:25 ]
	v_mov_b32_dpp v1, v1 row_xmask:8 row_mask:0xf bank_mask:0xf
.Ltmp293:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention_backward.py:258:25 ] ]
	v_max_f32_e32 v1, v1, v1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_max_f32_e32 v1, v2, v1
.Ltmp294:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention_backward.py:258:25 ]
	v_mov_b32_e32 v2, v1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v2, v2 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp295:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention_backward.py:258:25 ] ]
	v_max_f32_e32 v2, v2, v2
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_max_f32_e32 v1, v1, v2
.Ltmp296:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention_backward.py:258:25 ]
	v_mov_b32_e32 v2, v1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v2, v2 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp297:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention_backward.py:258:25 ] ]
	v_max_f32_e32 v2, v2, v2
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_max_f32_e32 v1, v1, v2
.Ltmp298:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention_backward.py:258:25 ]
	v_mov_b32_e32 v2, v1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v2, v2 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp299:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention_backward.py:258:25 ] ]
	v_max_f32_e32 v2, v2, v2
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_max_f32_e32 v1, v1, v2
.Ltmp300:
	.loc	1 259 20                        ; attention_backward.py:259:20
	v_max_f32_e32 v2, v237, v237
	v_max_f32_e32 v237, v2, v1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 261 58                        ; attention_backward.py:261:58
	v_sub_f32_e32 v2, v4, v237
	.loc	1 261 45 is_stmt 0              ; attention_backward.py:261:45
	v_exp_f32_e32 v2, v2
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 261 29                        ; attention_backward.py:261:29
	v_cndmask_b32_e64 v2, 0, v2, s13
	.loc	1 260 21 is_stmt 1              ; attention_backward.py:260:21
	v_cmp_neq_f32_e64 s13, 0xff800000, v242
.Ltmp301:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:262:33 ]
	v_mov_b32_e32 v3, v2
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v3, v3 row_xmask:8 row_mask:0xf bank_mask:0xf
.Ltmp302:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:262:33 ] ]
	v_add_f32_e32 v2, v2, v3
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp303:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:262:33 ]
	v_mov_b32_e32 v3, v2
	v_mov_b32_dpp v3, v3 row_xmask:4 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp304:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:262:33 ] ]
	v_dual_add_f32 v2, v2, v3 :: v_dual_mov_b32 v249, v39
.Ltmp305:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:262:33 ]
	v_mov_b32_e32 v3, v2
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v3, v3 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp306:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:262:33 ] ]
	v_add_f32_e32 v2, v2, v3
.Ltmp307:
	.loc	1 259 20                        ; attention_backward.py:259:20
	v_max_f32_e32 v3, v242, v242
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_dual_max_f32 v124, v3, v1 :: v_dual_mov_b32 v1, v2
.Ltmp308:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:262:33 ]
	v_mov_b32_dpp v1, v1 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp309:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:262:33 ] ]
	v_add_f32_e32 v105, v2, v1
.Ltmp310:
	.loc	1 260 70                        ; attention_backward.py:260:70
	v_sub_f32_e32 v1, v242, v124
.Ltmp311:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention_backward.py:258:25 ] ]
	v_max_f32_e32 v2, v6, v6
	v_mov_b32_e32 v242, v124
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_1)
.Ltmp312:
	.loc	1 260 57                        ; attention_backward.py:260:57
	v_exp_f32_e32 v1, v1
	.loc	1 260 21 is_stmt 0              ; attention_backward.py:260:21
	v_cndmask_b32_e64 v1, 0, v1, s13
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 262 19 is_stmt 1              ; attention_backward.py:262:19
	v_fmac_f32_e32 v105, v241, v1
.Ltmp313:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention_backward.py:258:25 ]
	v_mov_b32_e32 v1, v6
	v_mov_b32_e32 v241, v105
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v1, v1 row_xmask:8 row_mask:0xf bank_mask:0xf
.Ltmp314:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention_backward.py:258:25 ] ]
	v_max_f32_e32 v1, v1, v1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_max_f32_e32 v1, v2, v1
.Ltmp315:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention_backward.py:258:25 ]
	v_mov_b32_e32 v2, v1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v2, v2 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp316:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention_backward.py:258:25 ] ]
	v_max_f32_e32 v2, v2, v2
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_max_f32_e32 v1, v1, v2
.Ltmp317:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention_backward.py:258:25 ]
	v_mov_b32_e32 v2, v1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v2, v2 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp318:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention_backward.py:258:25 ] ]
	v_max_f32_e32 v2, v2, v2
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_max_f32_e32 v1, v1, v2
.Ltmp319:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention_backward.py:258:25 ]
	v_mov_b32_e32 v2, v1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v2, v2 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp320:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention_backward.py:258:25 ] ]
	v_max_f32_e32 v2, v2, v2
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_max_f32_e32 v1, v1, v2
.Ltmp321:
	.loc	1 259 20                        ; attention_backward.py:259:20
	v_max_f32_e32 v2, v238, v238
	v_max_f32_e32 v238, v2, v1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 261 58                        ; attention_backward.py:261:58
	v_sub_f32_e32 v2, v6, v238
	.loc	1 261 45 is_stmt 0              ; attention_backward.py:261:45
	v_exp_f32_e32 v2, v2
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 261 29                        ; attention_backward.py:261:29
	v_cndmask_b32_e32 v2, 0, v2, vcc_lo
	.loc	1 260 21 is_stmt 1              ; attention_backward.py:260:21
	v_cmp_neq_f32_e32 vcc_lo, 0xff800000, v240
.Ltmp322:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:262:33 ]
	v_mov_b32_e32 v3, v2
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v3, v3 row_xmask:8 row_mask:0xf bank_mask:0xf
.Ltmp323:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:262:33 ] ]
	v_add_f32_e32 v2, v2, v3
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp324:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:262:33 ]
	v_mov_b32_e32 v3, v2
	v_mov_b32_dpp v3, v3 row_xmask:4 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp325:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:262:33 ] ]
	v_add_f32_e32 v2, v2, v3
.Ltmp326:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:262:33 ]
	v_mov_b32_e32 v3, v2
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v3, v3 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp327:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:262:33 ] ]
	v_dual_add_f32 v2, v2, v3 :: v_dual_max_f32 v3, v240, v240
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp328:
	.loc	1 259 20                        ; attention_backward.py:259:20
	v_dual_max_f32 v184, v3, v1 :: v_dual_mov_b32 v1, v2
.Ltmp329:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:262:33 ]
	v_mov_b32_dpp v1, v1 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
.Ltmp330:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:262:33 ] ]
	v_dual_add_f32 v160, v2, v1 :: v_dual_sub_f32 v1, v240, v184
	v_mov_b32_e32 v240, v184
.Ltmp331:
	.loc	1 260 57                        ; attention_backward.py:260:57
	v_exp_f32_e32 v1, v1
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 260 21 is_stmt 0              ; attention_backward.py:260:21
	v_cndmask_b32_e32 v1, 0, v1, vcc_lo
	.loc	1 262 19 is_stmt 1              ; attention_backward.py:262:19
	v_fmac_f32_e32 v160, v239, v1
	s_delay_alu instid0(VALU_DEP_1)
	v_mov_b32_e32 v239, v160
	.loc	1 194 9                         ; attention_backward.py:194:9
	s_cbranch_scc0 .LBB0_28
.LBB0_7:                                ; =>This Inner Loop Header: Depth=1
	.loc	1 195 27                        ; attention_backward.py:195:27
	v_or_b32_e32 v1, s54, v106
	.loc	1 199 21                        ; attention_backward.py:199:21
	s_add_i32 s20, s54, s29
	.loc	1 195 27                        ; attention_backward.py:195:27
	v_or_b32_e32 v74, s54, v121
	.loc	1 199 21                        ; attention_backward.py:199:21
	s_mul_i32 s21, s20, s34
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_4) | instid1(VALU_DEP_3)
	.loc	1 204 29                        ; attention_backward.py:204:29
	v_dual_mov_b32 v35, v33 :: v_dual_add_nc_u32 v2, s21, v114
	.loc	1 201 24                        ; attention_backward.py:201:24
	v_cmp_gt_i32_e32 vcc_lo, s31, v1
	.loc	1 195 27                        ; attention_backward.py:195:27
	v_or_b32_e32 v1, 2, v106
	.loc	1 204 29                        ; attention_backward.py:204:29
	v_dual_mov_b32 v36, v33 :: v_dual_add_nc_u32 v3, s21, v115
	v_dual_mov_b32 v37, v33 :: v_dual_add_nc_u32 v4, s21, v85
	.loc	1 195 27                        ; attention_backward.py:195:27
	v_or_b32_e32 v1, s54, v1
	.loc	1 200 26                        ; attention_backward.py:200:26
	s_and_b32 vcc_lo, s2, vcc_lo
	.loc	1 204 29                        ; attention_backward.py:204:29
	v_dual_mov_b32 v38, v33 :: v_dual_add_nc_u32 v5, s21, v116
	v_dual_mov_b32 v39, v33 :: v_dual_add_nc_u32 v6, s21, v86
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_4) | instid1(VALU_DEP_4)
	.loc	1 201 24                        ; attention_backward.py:201:24
	v_cmp_gt_i32_e64 s13, s31, v1
	.loc	1 195 27                        ; attention_backward.py:195:27
	v_or_b32_e32 v1, 4, v106
	.loc	1 204 29                        ; attention_backward.py:204:29
	v_dual_mov_b32 v40, v33 :: v_dual_add_nc_u32 v7, s21, v87
	v_mov_b32_e32 v34, v33
	.loc	1 199 21                        ; attention_backward.py:199:21
	v_add_nc_u32_e32 v8, s21, v88
	.loc	1 195 27                        ; attention_backward.py:195:27
	v_or_b32_e32 v1, s54, v1
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	.loc	1 204 29                        ; attention_backward.py:204:29
	v_mov_b32_e32 v41, v40
	v_mov_b32_e32 v40, v39
	v_mov_b32_e32 v39, v38
	.loc	1 201 24                        ; attention_backward.py:201:24
	v_cmp_gt_i32_e64 s14, s31, v1
	.loc	1 195 27                        ; attention_backward.py:195:27
	v_or_b32_e32 v1, 6, v106
	.loc	1 204 29                        ; attention_backward.py:204:29
	v_mov_b32_e32 v38, v37
	v_mov_b32_e32 v37, v36
	v_mov_b32_e32 v36, v35
	v_mov_b32_e32 v35, v34
	.loc	1 195 27                        ; attention_backward.py:195:27
	v_or_b32_e32 v1, s54, v1
	.loc	1 204 29                        ; attention_backward.py:204:29
	v_mov_b32_e32 v34, v33
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 201 24                        ; attention_backward.py:201:24
	v_cmp_gt_i32_e64 s15, s31, v1
	.loc	1 195 27                        ; attention_backward.py:195:27
	v_or_b32_e32 v1, 8, v106
	v_or_b32_e32 v1, s54, v1
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 201 24                        ; attention_backward.py:201:24
	v_cmp_gt_i32_e64 s16, s31, v1
	.loc	1 195 27                        ; attention_backward.py:195:27
	v_or_b32_e32 v1, 10, v106
	v_or_b32_e32 v1, s54, v1
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 201 24                        ; attention_backward.py:201:24
	v_cmp_gt_i32_e64 s17, s31, v1
	.loc	1 195 27                        ; attention_backward.py:195:27
	v_or_b32_e32 v1, 12, v106
	v_or_b32_e32 v1, s54, v1
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 201 24                        ; attention_backward.py:201:24
	v_cmp_gt_i32_e64 s18, s31, v1
	.loc	1 195 27                        ; attention_backward.py:195:27
	v_or_b32_e32 v1, s54, v113
	.loc	1 201 24                        ; attention_backward.py:201:24
	v_cmp_gt_i32_e64 s19, s31, v1
	.loc	1 199 21                        ; attention_backward.py:199:21
	v_add_nc_u32_e32 v1, s21, v84
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 198 28                        ; attention_backward.py:198:28
	v_cndmask_b32_e32 v1, 0x80000000, v1, vcc_lo
	.loc	1 200 26                        ; attention_backward.py:200:26
	s_and_b32 vcc_lo, s2, s13
	.loc	1 198 28                        ; attention_backward.py:198:28
	v_cndmask_b32_e32 v2, 0x80000000, v2, vcc_lo
	.loc	1 200 26                        ; attention_backward.py:200:26
	s_and_b32 vcc_lo, s2, s14
	.loc	1 198 28                        ; attention_backward.py:198:28
	v_cndmask_b32_e32 v3, 0x80000000, v3, vcc_lo
	.loc	1 200 26                        ; attention_backward.py:200:26
	s_and_b32 vcc_lo, s2, s15
	.loc	1 198 28                        ; attention_backward.py:198:28
	v_cndmask_b32_e32 v4, 0x80000000, v4, vcc_lo
	.loc	1 200 26                        ; attention_backward.py:200:26
	s_and_b32 vcc_lo, s2, s16
	.loc	1 198 28                        ; attention_backward.py:198:28
	v_cndmask_b32_e32 v5, 0x80000000, v5, vcc_lo
	.loc	1 200 26                        ; attention_backward.py:200:26
	s_and_b32 vcc_lo, s2, s17
	.loc	1 198 28                        ; attention_backward.py:198:28
	v_cndmask_b32_e32 v6, 0x80000000, v6, vcc_lo
	.loc	1 200 26                        ; attention_backward.py:200:26
	s_and_b32 vcc_lo, s2, s18
	.loc	1 198 28                        ; attention_backward.py:198:28
	v_cndmask_b32_e32 v7, 0x80000000, v7, vcc_lo
	.loc	1 200 26                        ; attention_backward.py:200:26
	s_and_b32 vcc_lo, s2, s19
	.loc	1 198 28                        ; attention_backward.py:198:28
	v_cndmask_b32_e32 v8, 0x80000000, v8, vcc_lo
	s_clause 0x7
	buffer_load_u8 v1, v1, s[60:63], 0 offen
	buffer_load_u8 v2, v2, s[60:63], 0 offen
	buffer_load_u8 v3, v3, s[60:63], 0 offen
	buffer_load_u8 v4, v4, s[60:63], 0 offen
	buffer_load_u8 v5, v5, s[60:63], 0 offen
	buffer_load_u8 v6, v6, s[60:63], 0 offen
	buffer_load_u8 v7, v7, s[60:63], 0 offen
	buffer_load_u8 v8, v8, s[60:63], 0 offen
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_waitcnt vmcnt(7)
	ds_store_b8 v117, v1
	s_waitcnt vmcnt(6)
	ds_store_b8 v117, v2 offset:64
	s_waitcnt vmcnt(5)
	ds_store_b8 v118, v3
	s_waitcnt vmcnt(4)
	ds_store_b8 v118, v4 offset:64
	s_waitcnt vmcnt(3)
	ds_store_b8 v119, v5
	s_waitcnt vmcnt(2)
	ds_store_b8 v119, v6 offset:64
	s_waitcnt vmcnt(1)
	ds_store_b8 v120, v7
	s_waitcnt vmcnt(0)
	ds_store_b8 v120, v8 offset:64
	v_add_nc_u32_e32 v1, 0, v143
	s_waitcnt lgkmcnt(0)
	s_barrier
	v_add_nc_u32_e32 v3, 0, v164
	v_add_nc_u32_e32 v5, 0, v165
	ds_load_b64 v[1:2], v1
	v_add_nc_u32_e32 v7, 0, v166
	ds_load_b64 v[3:4], v3
	ds_load_b64 v[5:6], v5
	ds_load_b64 v[7:8], v7
	.loc	1 204 29                        ; attention_backward.py:204:29
	s_waitcnt lgkmcnt(3)
	v_wmma_i32_16x16x16_iu4 v[34:41], v[1:2], v[89:90], v[34:41] neg_lo:[1,1,0]
	.loc	1 195 27                        ; attention_backward.py:195:27
	v_or_b32_e32 v2, s54, v132
	.loc	1 215 21                        ; attention_backward.py:215:21
	v_add_lshl_u32 v1, s20, v131, 1
	.loc	1 204 29                        ; attention_backward.py:204:29
	s_waitcnt lgkmcnt(2)
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_wmma_i32_16x16x16_iu4 v[34:41], v[3:4], v[91:92], v[34:41] neg_lo:[1,1,0]
	.loc	1 216 26                        ; attention_backward.py:216:26
	v_cmp_gt_i32_e32 vcc_lo, s31, v2
	.loc	1 195 27                        ; attention_backward.py:195:27
	v_or_b32_e32 v2, s54, v130
	.loc	1 214 33                        ; attention_backward.py:214:33
	v_add_nc_u32_e32 v3, 4, v1
	v_add_nc_u32_e32 v4, 8, v1
	.loc	1 204 29                        ; attention_backward.py:204:29
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu4 v[34:41], v[5:6], v[93:94], v[34:41] neg_lo:[1,1,0]
	.loc	1 214 33                        ; attention_backward.py:214:33
	v_add_nc_u32_e32 v5, 12, v1
	.loc	1 216 26                        ; attention_backward.py:216:26
	v_cmp_gt_i32_e64 s13, s31, v2
	.loc	1 195 27                        ; attention_backward.py:195:27
	v_or_b32_e32 v2, s54, v129
	.loc	1 214 33                        ; attention_backward.py:214:33
	v_add_nc_u32_e32 v6, 16, v1
	.loc	1 204 29                        ; attention_backward.py:204:29
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[34:41], v[7:8], v[95:96], v[34:41] neg_lo:[1,1,0]
	.loc	1 214 33                        ; attention_backward.py:214:33
	v_add_nc_u32_e32 v7, 20, v1
	v_add_nc_u32_e32 v8, 24, v1
	.loc	1 216 26                        ; attention_backward.py:216:26
	v_cmp_gt_i32_e64 s14, s31, v2
	.loc	1 195 27                        ; attention_backward.py:195:27
	v_or_b32_e32 v2, s54, v128
	.loc	1 214 33                        ; attention_backward.py:214:33
	v_add_nc_u32_e32 v9, 28, v1
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 216 26                        ; attention_backward.py:216:26
	v_cmp_gt_i32_e64 s15, s31, v2
	.loc	1 195 27                        ; attention_backward.py:195:27
	v_or_b32_e32 v2, s54, v127
	.loc	1 216 26                        ; attention_backward.py:216:26
	v_cmp_gt_i32_e64 s16, s31, v2
	.loc	1 195 27                        ; attention_backward.py:195:27
	v_or_b32_e32 v2, s54, v126
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 216 26                        ; attention_backward.py:216:26
	v_cmp_gt_i32_e64 s17, s31, v2
	.loc	1 195 27                        ; attention_backward.py:195:27
	v_or_b32_e32 v2, s54, v125
	.loc	1 216 26                        ; attention_backward.py:216:26
	v_cmp_gt_i32_e64 s18, s31, v2
	.loc	1 195 27                        ; attention_backward.py:195:27
	v_or_b32_e32 v2, s54, v131
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 216 26                        ; attention_backward.py:216:26
	v_cmp_gt_i32_e64 s19, s31, v2
	.loc	1 214 33                        ; attention_backward.py:214:33
	v_cndmask_b32_e32 v2, 0x80000000, v3, vcc_lo
	v_cndmask_b32_e64 v3, 0x80000000, v4, s13
	v_cndmask_b32_e64 v4, 0x80000000, v5, s14
	v_cndmask_b32_e64 v5, 0x80000000, v6, s15
	v_cndmask_b32_e64 v1, 0x80000000, v1, s19
	v_cndmask_b32_e64 v6, 0x80000000, v7, s16
	v_cndmask_b32_e64 v7, 0x80000000, v8, s17
	v_cndmask_b32_e64 v8, 0x80000000, v9, s18
	s_clause 0x7
	buffer_load_u16 v124, v1, s[64:67], 0 offen
	buffer_load_u16 v105, v2, s[64:67], 0 offen
	buffer_load_u16 v187, v3, s[64:67], 0 offen
	buffer_load_u16 v186, v4, s[64:67], 0 offen
	buffer_load_u16 v185, v5, s[64:67], 0 offen
	buffer_load_u16 v184, v6, s[64:67], 0 offen
	buffer_load_u16 v160, v7, s[64:67], 0 offen
	buffer_load_u16 v255, v8, s[64:67], 0 offen
	.loc	1 201 24                        ; attention_backward.py:201:24
	v_cmp_gt_i32_e64 s13, s31, v74
	.loc	1 238 13                        ; attention_backward.py:238:13
	v_cmp_ne_u32_e32 vcc_lo, 1, v133
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
	v_cmp_le_i32_e32 vcc_lo, v74, v134
	v_cmp_le_i32_e64 s13, v74, v135
	v_cmp_le_i32_e64 s14, v74, v136
	v_cmp_le_i32_e64 s15, v74, v137
	v_cmp_le_i32_e64 s16, v74, v138
	v_cmp_le_i32_e64 s17, v74, v139
	.loc	1 239 17 is_stmt 0              ; attention_backward.py:239:17
	s_and_b32 s20, vcc_lo, s74
	s_and_b32 s13, s13, s73
	.loc	1 239 26                        ; attention_backward.py:239:26
	v_cmp_le_i32_e64 s18, v74, v140
	v_cmp_le_i32_e64 s19, v74, v141
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
	v_cmp_ge_i32_e32 vcc_lo, v74, v144
	v_cmp_ge_i32_e64 s13, v74, v145
	.loc	1 242 26                        ; attention_backward.py:242:26
	v_cmp_le_i32_e64 s20, v74, v152
	v_cmp_le_i32_e64 s21, v74, v153
	.loc	1 241 26                        ; attention_backward.py:241:26
	v_cmp_ge_i32_e64 s14, v74, v146
	v_cmp_ge_i32_e64 s15, v74, v147
	.loc	1 242 26                        ; attention_backward.py:242:26
	v_cmp_le_i32_e64 s22, v74, v154
	v_cmp_le_i32_e64 s23, v74, v155
	.loc	1 241 26                        ; attention_backward.py:241:26
	v_cmp_ge_i32_e64 s16, v74, v148
	v_cmp_ge_i32_e64 s17, v74, v149
	.loc	1 242 26                        ; attention_backward.py:242:26
	v_cmp_le_i32_e64 s24, v74, v156
	v_cmp_le_i32_e64 s25, v74, v157
	.loc	1 242 17 is_stmt 0              ; attention_backward.py:242:17
	s_and_b32 s20, vcc_lo, s20
	s_and_b32 s13, s13, s21
	.loc	1 241 26 is_stmt 1              ; attention_backward.py:241:26
	v_cmp_ge_i32_e64 s18, v74, v150
	v_cmp_ge_i32_e64 s19, v74, v151
	.loc	1 242 26                        ; attention_backward.py:242:26
	v_cmp_le_i32_e64 s26, v74, v158
	v_cmp_le_i32_e64 s27, v74, v159
	.loc	1 242 17 is_stmt 0              ; attention_backward.py:242:17
	s_and_b32 s20, s20, s74
	s_and_b32 s13, s13, s73
	s_and_b32 s14, s14, s22
	s_and_b32 s15, s15, s23
	s_and_b32 s14, s14, s71
	s_and_b32 s15, s15, s55
	s_and_b32 s16, s16, s24
	s_and_b32 s17, s17, s25
	s_and_not1_b32 s21, s74, exec_lo
	s_and_b32 s20, s20, exec_lo
	s_and_not1_b32 s22, s73, exec_lo
	s_and_b32 s13, s13, exec_lo
	s_and_b32 s16, s16, s76
	s_and_b32 s17, s17, s75
	s_and_b32 s18, s18, s26
	s_and_b32 s19, s19, s27
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
.LBB0_11:                               ;   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 17                          ; attention_backward.py:0:17
	v_mov_b16_e32 v74.l, 0
	.loc	1 245 21 is_stmt 1              ; attention_backward.py:245:21
	s_mul_i32 s13, s54, s69
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	s_add_i32 s13, s49, s13
	v_mov_b16_e32 v77.l, v74.l
	.loc	1 252 30                        ; attention_backward.py:252:30
	s_and_saveexec_b32 s14, s74
	s_cbranch_execz .LBB0_13
; %bb.12:                               ;   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 30 is_stmt 0                ; attention_backward.py:0:30
	v_add_nc_u32_e32 v1, s13, v101
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 252 30                        ; attention_backward.py:252:30
	v_ashrrev_i32_e32 v2, 31, v1
	v_add_co_u32 v1, vcc_lo, s38, v1
	v_add_co_ci_u32_e64 v2, null, s39, v2, vcc_lo
	global_load_d16_u8 v77, v[1:2], off
.LBB0_13:                               ;   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 30                          ; attention_backward.py:0:30
	s_or_b32 exec_lo, exec_lo, s14
	.loc	1 252 30                        ; attention_backward.py:252:30
	s_and_saveexec_b32 s14, s73
	s_cbranch_execz .LBB0_15
; %bb.14:                               ;   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 30                          ; attention_backward.py:0:30
	v_add_nc_u32_e32 v1, s13, v80
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 252 30                        ; attention_backward.py:252:30
	v_ashrrev_i32_e32 v2, 31, v1
	v_add_co_u32 v1, vcc_lo, s38, v1
	v_add_co_ci_u32_e64 v2, null, s39, v2, vcc_lo
	global_load_d16_u8 v74, v[1:2], off
.LBB0_15:                               ;   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 30                          ; attention_backward.py:0:30
	s_or_b32 exec_lo, exec_lo, s14
	s_waitcnt vmcnt(0)
	v_mov_b16_e32 v74.h, 0
	s_delay_alu instid0(VALU_DEP_1)
	v_mov_b16_e32 v75.l, v74.h
	.loc	1 252 30                        ; attention_backward.py:252:30
	s_and_saveexec_b32 s14, s71
	s_cbranch_execz .LBB0_17
; %bb.16:                               ;   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 30                          ; attention_backward.py:0:30
	v_add_nc_u32_e32 v1, s13, v81
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 252 30                        ; attention_backward.py:252:30
	v_ashrrev_i32_e32 v2, 31, v1
	v_add_co_u32 v1, vcc_lo, s38, v1
	v_add_co_ci_u32_e64 v2, null, s39, v2, vcc_lo
	global_load_d16_u8 v75, v[1:2], off
.LBB0_17:                               ;   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 30                          ; attention_backward.py:0:30
	s_or_b32 exec_lo, exec_lo, s14
	.loc	1 252 30                        ; attention_backward.py:252:30
	s_and_saveexec_b32 s14, s55
	s_cbranch_execz .LBB0_19
; %bb.18:                               ;   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 30                          ; attention_backward.py:0:30
	v_add_nc_u32_e32 v1, s13, v82
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 252 30                        ; attention_backward.py:252:30
	v_ashrrev_i32_e32 v2, 31, v1
	v_add_co_u32 v1, vcc_lo, s38, v1
	v_add_co_ci_u32_e64 v2, null, s39, v2, vcc_lo
	global_load_d16_hi_u8 v74, v[1:2], off
.LBB0_19:                               ;   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 30                          ; attention_backward.py:0:30
	s_or_b32 exec_lo, exec_lo, s14
	v_mov_b16_e32 v76.h, 0
	s_delay_alu instid0(VALU_DEP_1)
	v_mov_b16_e32 v77.h, v76.h
	.loc	1 252 30                        ; attention_backward.py:252:30
	s_and_saveexec_b32 s14, s76
	s_cbranch_execz .LBB0_21
; %bb.20:                               ;   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 30                          ; attention_backward.py:0:30
	v_add_nc_u32_e32 v1, s13, v97
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 252 30                        ; attention_backward.py:252:30
	v_ashrrev_i32_e32 v2, 31, v1
	v_add_co_u32 v1, vcc_lo, s38, v1
	v_add_co_ci_u32_e64 v2, null, s39, v2, vcc_lo
	global_load_d16_hi_u8 v77, v[1:2], off
.LBB0_21:                               ;   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 30                          ; attention_backward.py:0:30
	s_or_b32 exec_lo, exec_lo, s14
	.loc	1 252 30                        ; attention_backward.py:252:30
	s_and_saveexec_b32 s14, s75
	s_cbranch_execz .LBB0_23
; %bb.22:                               ;   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 30                          ; attention_backward.py:0:30
	v_add_nc_u32_e32 v1, s13, v98
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 252 30                        ; attention_backward.py:252:30
	v_ashrrev_i32_e32 v2, 31, v1
	v_add_co_u32 v1, vcc_lo, s38, v1
	v_add_co_ci_u32_e64 v2, null, s39, v2, vcc_lo
	global_load_d16_hi_u8 v76, v[1:2], off
.LBB0_23:                               ;   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 30                          ; attention_backward.py:0:30
	s_or_b32 exec_lo, exec_lo, s14
	s_waitcnt vmcnt(0)
	v_mov_b16_e32 v75.h, 0
	s_delay_alu instid0(VALU_DEP_1)
	v_mov_b16_e32 v76.l, v75.h
	.loc	1 252 30                        ; attention_backward.py:252:30
	s_and_saveexec_b32 s14, s72
	s_cbranch_execz .LBB0_25
; %bb.24:                               ;   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 30                          ; attention_backward.py:0:30
	v_add_nc_u32_e32 v1, s13, v99
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 252 30                        ; attention_backward.py:252:30
	v_ashrrev_i32_e32 v2, 31, v1
	v_add_co_u32 v1, vcc_lo, s38, v1
	v_add_co_ci_u32_e64 v2, null, s39, v2, vcc_lo
	global_load_d16_u8 v76, v[1:2], off
.LBB0_25:                               ;   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 30                          ; attention_backward.py:0:30
	s_or_b32 exec_lo, exec_lo, s14
	.loc	1 252 30                        ; attention_backward.py:252:30
	s_and_saveexec_b32 s14, s70
	s_cbranch_execz .LBB0_6
; %bb.26:                               ;   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 30                          ; attention_backward.py:0:30
	v_add_nc_u32_e32 v1, s13, v100
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 252 30                        ; attention_backward.py:252:30
	v_ashrrev_i32_e32 v2, 31, v1
	v_add_co_u32 v1, vcc_lo, s38, v1
	v_add_co_ci_u32_e64 v2, null, s39, v2, vcc_lo
	global_load_d16_hi_u8 v75, v[1:2], off
	s_branch .LBB0_6
.LBB0_27:
	.loc	1 0 30                          ; attention_backward.py:0:30
	v_dual_mov_b32 v184, 0xff800000 :: v_dual_mov_b32 v105, 0
	v_dual_mov_b32 v160, 0 :: v_dual_mov_b32 v35, 0
	v_dual_mov_b32 v76, 0 :: v_dual_mov_b32 v41, 0
	v_dual_mov_b32 v39, 0 :: v_dual_mov_b32 v34, 0
	v_dual_mov_b32 v37, 0 :: v_dual_mov_b32 v124, 0xff800000
	v_dual_mov_b32 v77, 0xff800000 :: v_dual_mov_b32 v74, 0xff800000
	v_dual_mov_b32 v75, 0xff800000 :: v_dual_mov_b32 v40, 0xff800000
	v_mov_b32_e32 v38, 0xff800000
	v_mov_b32_e32 v36, 0xff800000
.LBB0_28:                               ; %Flow278
	s_load_b32 s49, s[0:1], 0x74
	.loc	1 264 43 is_stmt 1              ; attention_backward.py:264:43
	v_cmp_gt_f32_e64 s0, 0x800000, v34
	v_cmp_gt_f32_e64 s1, 0x800000, v37
	v_cmp_gt_f32_e64 s13, 0x800000, v39
.Ltmp332:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_dual_add_f32 v1, v58, v190 :: v_dual_add_f32 v2, v59, v191
	s_delay_alu instid0(VALU_DEP_4)
.Ltmp333:
	.loc	1 264 43                        ; attention_backward.py:264:43
	v_cndmask_b32_e64 v10, 0, 32, s0
	v_cndmask_b32_e64 v9, 0, 0x42000000, s0
	v_cndmask_b32_e64 v12, 0, 32, s1
	v_cmp_gt_f32_e64 s0, 0x800000, v41
	v_cndmask_b32_e64 v11, 0, 0x42000000, s1
	v_ldexp_f32 v10, v34, v10
	v_cndmask_b32_e64 v14, 0, 32, s13
	v_ldexp_f32 v12, v37, v12
	v_cmp_gt_f32_e64 s1, 0x800000, v35
	v_cndmask_b32_e64 v15, 0, 0x42000000, s0
	v_log_f32_e32 v10, v10
	v_cndmask_b32_e64 v16, 0, 32, s0
	v_cmp_gt_f32_e64 s0, 0x800000, v76
.Ltmp334:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_dual_add_f32 v3, v60, v192 :: v_dual_add_f32 v4, v61, v193
	v_dual_add_f32 v58, v66, v207 :: v_dual_add_f32 v59, v67, v208
	v_dual_add_f32 v60, v68, v209 :: v_dual_add_f32 v61, v69, v210
	v_dual_add_f32 v49, v49, v196 :: v_dual_add_f32 v66, v62, v197
.Ltmp335:
	.loc	1 264 43                        ; attention_backward.py:264:43
	v_ldexp_f32 v14, v39, v14
	v_log_f32_e32 v12, v12
	v_cndmask_b32_e64 v33, 0, 0x42000000, s1
	v_cndmask_b32_e64 v62, 0, 32, s1
	v_cmp_gt_f32_e64 s1, 0x800000, v105
	v_cndmask_b32_e64 v68, 0, 32, s0
	.loc	1 124 21                        ; attention_backward.py:124:21
	v_or_b32_e32 v5, s46, v78
	.loc	1 264 43                        ; attention_backward.py:264:43
	v_cndmask_b32_e64 v13, 0, 0x42000000, s13
	v_log_f32_e32 v14, v14
	v_cmp_gt_f32_e64 s13, 0x800000, v160
	v_cndmask_b32_e64 v69, 0, 32, s1
	v_ldexp_f32 v16, v41, v16
	v_ldexp_f32 v62, v35, v62
	v_ldexp_f32 v68, v76, v68
	v_dual_sub_f32 v9, v10, v9 :: v_dual_sub_f32 v10, v12, v11
	.loc	1 128 21                        ; attention_backward.py:128:21
	v_cmp_gt_i32_e32 vcc_lo, s30, v5
.Ltmp336:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_dual_add_f32 v5, v70, v194 :: v_dual_add_f32 v8, v73, v200
	v_dual_add_f32 v6, v71, v198 :: v_dual_add_f32 v7, v72, v199
	v_dual_add_f32 v48, v48, v204 :: v_dual_add_f32 v67, v63, v195
.Ltmp337:
	.loc	1 264 43                        ; attention_backward.py:264:43
	v_cndmask_b32_e64 v63, 0, 0x42000000, s0
	v_cndmask_b32_e64 v72, 0, 32, s13
	v_ldexp_f32 v69, v105, v69
	v_log_f32_e32 v16, v16
	v_log_f32_e32 v62, v62
	v_log_f32_e32 v73, v68
	.loc	1 264 37 is_stmt 0              ; attention_backward.py:264:37
	v_dual_add_f32 v9, v36, v9 :: v_dual_add_f32 v10, v38, v10
	.loc	1 264 26                        ; attention_backward.py:264:26
	v_cmp_lt_f32_e64 s0, 0, v34
	.loc	1 264 43                        ; attention_backward.py:264:43
	v_ldexp_f32 v72, v160, v72
	v_log_f32_e32 v80, v69
	v_sub_f32_e32 v11, v14, v13
	v_cndmask_b32_e64 v70, 0, 0x42000000, s1
	.loc	1 264 17                        ; attention_backward.py:264:17
	v_cndmask_b32_e64 v36, 0, v9, s0
	.loc	1 264 26                        ; attention_backward.py:264:26
	v_cmp_lt_f32_e64 s0, 0, v37
	.loc	1 264 43                        ; attention_backward.py:264:43
	v_log_f32_e32 v72, v72
	v_dual_sub_f32 v12, v16, v15 :: v_dual_sub_f32 v13, v62, v33
	v_sub_f32_e32 v14, v73, v63
	.loc	1 264 37                        ; attention_backward.py:264:37
	v_add_f32_e32 v11, v40, v11
	.loc	1 264 17                        ; attention_backward.py:264:17
	v_cndmask_b32_e64 v37, 0, v10, s0
	.loc	1 264 26                        ; attention_backward.py:264:26
	v_cmp_lt_f32_e64 s0, 0, v39
	.loc	1 264 43                        ; attention_backward.py:264:43
	v_cndmask_b32_e64 v71, 0, 0x42000000, s13
	v_dual_sub_f32 v15, v80, v70 :: v_dual_add_f32 v12, v74, v12
	.loc	1 264 37                        ; attention_backward.py:264:37
	v_add_f32_e32 v14, v77, v14
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	.loc	1 264 17                        ; attention_backward.py:264:17
	v_cndmask_b32_e64 v38, 0, v11, s0
	.loc	1 264 26                        ; attention_backward.py:264:26
	v_cmp_lt_f32_e64 s0, 0, v41
	.loc	1 264 43                        ; attention_backward.py:264:43
	v_dual_sub_f32 v16, v72, v71 :: v_dual_add_f32 v13, v75, v13
.Ltmp338:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_dual_add_f32 v72, v44, v178 :: v_dual_lshlrev_b32 v9, 5, v0
.Ltmp339:
	.loc	1 264 17                        ; attention_backward.py:264:17
	v_cndmask_b32_e64 v39, 0, v12, s0
	.loc	1 264 26 is_stmt 0              ; attention_backward.py:264:26
	v_cmp_lt_f32_e64 s0, 0, v35
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 264 37                        ; attention_backward.py:264:37
	v_dual_add_f32 v16, v184, v16 :: v_dual_and_b32 v9, 0x60, v9
	v_dual_add_f32 v15, v124, v15 :: v_dual_and_b32 v12, 28, v0
	.loc	1 264 17                        ; attention_backward.py:264:17
	v_cndmask_b32_e64 v62, 0, v13, s0
	.loc	1 264 26                        ; attention_backward.py:264:26
	v_cmp_lt_f32_e64 s0, 0, v76
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_4)
.Ltmp340:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_dual_add_f32 v70, v42, v176 :: v_dual_add_nc_u32 v9, 0, v9
.Ltmp341:
	.loc	1 264 17                        ; attention_backward.py:264:17
	v_lshrrev_b32_e32 v11, 1, v103
.Ltmp342:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_dual_add_f32 v68, v64, v188 :: v_dual_add_f32 v69, v65, v189
.Ltmp343:
	.loc	1 264 17                        ; attention_backward.py:264:17
	v_cndmask_b32_e64 v63, 0, v14, s0
	.loc	1 264 26 is_stmt 0              ; attention_backward.py:264:26
	v_cmp_lt_f32_e64 s0, 0, v105
	.loc	1 264 17                        ; attention_backward.py:264:17
	v_lshl_add_u32 v10, v205, 1, 0
	v_add3_u32 v11, v9, v11, v104
.Ltmp344:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_dual_add_f32 v76, v56, v183 :: v_dual_add_nc_u32 v9, v9, v12
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_4) | instid1(VALU_DEP_2)
.Ltmp345:
	.loc	1 264 17                        ; attention_backward.py:264:17
	v_cndmask_b32_e64 v64, 0, v15, s0
	.loc	1 264 26 is_stmt 0              ; attention_backward.py:264:26
	v_cmp_lt_f32_e64 s0, 0, v160
	.loc	1 264 17                        ; attention_backward.py:264:17
	s_waitcnt lgkmcnt(0)
	s_barrier
.Ltmp346:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_dual_add_f32 v75, v55, v182 :: v_dual_mov_b32 v40, 0
.Ltmp347:
	.loc	1 264 17                        ; attention_backward.py:264:17
	v_cndmask_b32_e64 v65, 0, v16, s0
	ds_store_b128 v10, v[36:39]
	ds_store_b128 v10, v[62:65] offset:16
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b32 v162, v11
	.loc	1 266 9                         ; attention_backward.py:266:9
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v10, v[36:39]
	ds_store_b128 v10, v[62:65] offset:16
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b32 v9, v9
	v_cmp_eq_u32_e64 s0, 0, v103
	v_add_lshl_u32 v10, s47, v78, 2
	v_dual_mov_b32 v36, v40 :: v_dual_lshlrev_b32 v65, 2, v78
	s_mov_b32 s55, 0x31027000
	s_and_b32 vcc_lo, s0, vcc_lo
	s_delay_alu instid0(VALU_DEP_2)
.Ltmp348:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_dual_add_f32 v73, v45, v179 :: v_dual_cndmask_b32 v10, 0x80000000, v10
	s_mov_b32 s54, 0x7ffffffe
.Ltmp349:
	.loc	1 266 9                         ; attention_backward.py:266:9
	s_and_b32 s17, s57, 0xffff
	s_mov_b32 s16, s56
	s_mov_b32 s18, s54
	s_mov_b32 s19, s55
.Ltmp350:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_dual_add_f32 v50, v50, v201 :: v_dual_add_f32 v51, v51, v202
	v_dual_add_f32 v52, v52, v203 :: v_dual_add_f32 v53, v53, v206
	v_dual_add_f32 v71, v43, v177 :: v_dual_add_f32 v74, v54, v180
.Ltmp351:
	.loc	1 266 9                         ; attention_backward.py:266:9
	s_waitcnt lgkmcnt(0)
	buffer_store_b32 v9, v10, s[16:19], 0 offen
	v_dual_mov_b32 v34, v40 :: v_dual_add_nc_u32 v9, 0, v65
.Ltmp352:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_dual_add_f32 v77, v57, v175 :: v_dual_mov_b32 v38, v40
	v_dual_add_f32 v46, v46, v211 :: v_dual_add_f32 v47, v47, v212
.Ltmp353:
	.loc	1 267 9                         ; attention_backward.py:267:9
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v40, v[1:4]
	ds_store_b128 v40, v[5:8] offset:16
	ds_store_b128 v40, v[50:53] offset:32
	ds_store_b128 v40, v[58:61] offset:48
	ds_store_b128 v40, v[46:49] offset:64
	ds_store_b128 v40, v[66:69] offset:80
	ds_store_b128 v40, v[70:73] offset:96
	ds_store_b128 v40, v[74:77] offset:112
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b32 v9, v9
	s_and_b32 s17, s59, 0xffff
	s_mov_b32 s16, s58
	v_mov_b32_e32 v39, v40
	v_mov_b32_e32 v37, v40
	v_mov_b32_e32 v35, v40
	v_mov_b32_e32 v33, v40
	v_mov_b32_e32 v45, v40
	v_mov_b32_e32 v44, v40
	v_mov_b32_e32 v43, v40
	v_mov_b32_e32 v42, v40
	v_mov_b32_e32 v41, v40
	v_mov_b32_e32 v56, v40
	v_mov_b32_e32 v55, v40
	v_mov_b32_e32 v54, v40
	v_mov_b32_e32 v64, v40
	v_mov_b32_e32 v63, v40
	v_mov_b32_e32 v62, v40
	v_mov_b32_e32 v57, v40
	.loc	1 270 9                         ; attention_backward.py:270:9
	s_and_not1_b32 vcc_lo, exec_lo, s50
	.loc	1 267 9                         ; attention_backward.py:267:9
	s_waitcnt lgkmcnt(0)
	buffer_store_b32 v9, v10, s[16:19], 0 offen
	.loc	1 396 43                        ; attention_backward.py:396:43
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v40, v[1:4]
	ds_store_b128 v40, v[5:8] offset:16
	ds_store_b128 v40, v[50:53] offset:32
	ds_store_b128 v40, v[58:61] offset:48
	ds_store_b128 v40, v[46:49] offset:64
	ds_store_b128 v40, v[66:69] offset:80
	v_mov_b32_e32 v48, v40
	v_mov_b32_e32 v47, v40
	v_mov_b32_e32 v46, v40
	v_mov_b32_e32 v53, v40
	v_mov_b32_e32 v52, v40
	v_mov_b32_e32 v51, v40
	v_mov_b32_e32 v50, v40
	v_mov_b32_e32 v49, v40
	v_mov_b32_e32 v61, v40
	v_mov_b32_e32 v60, v40
	v_mov_b32_e32 v59, v40
	v_mov_b32_e32 v58, v40
	ds_store_b128 v40, v[70:73] offset:96
	ds_store_b128 v40, v[74:77] offset:112
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_cbranch_vccnz .LBB0_51
; %bb.29:                               ; %.lr.ph81
	.loc	1 168 40                        ; attention_backward.py:168:40
	v_lshlrev_b32_e32 v1, 1, v78
	.loc	1 270 9                         ; attention_backward.py:270:9
	v_mad_u64_u32 v[97:98], null, s51, v170, v[79:80]
	v_mad_u64_u32 v[98:99], null, s51, v171, v[79:80]
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	.loc	1 168 40                        ; attention_backward.py:168:40
	v_or_b32_e32 v3, 1, v1
	.loc	1 310 21                        ; attention_backward.py:310:21
	v_cmp_gt_i32_e64 s0, s49, v1
	v_and_b32_e32 v1, 52, v20
	.loc	1 270 9                         ; attention_backward.py:270:9
	v_mad_u64_u32 v[99:100], null, s51, v172, v[79:80]
	.loc	1 310 21                        ; attention_backward.py:310:21
	v_cmp_gt_i32_e64 s1, s49, v3
	.loc	1 270 9                         ; attention_backward.py:270:9
	v_mad_u64_u32 v[100:101], null, s51, v173, v[79:80]
	v_and_or_b32 v3, v0, 2, v19
	v_lshl_or_b32 v1, v104, 5, v1
	v_mad_u64_u32 v[101:102], null, s51, v174, v[79:80]
	v_mad_u64_u32 v[102:103], null, s51, v169, v[79:80]
	v_mad_u64_u32 v[103:104], null, s51, v168, v[79:80]
	v_mad_u64_u32 v[104:105], null, s51, v167, v[79:80]
	.loc	1 396 43                        ; attention_backward.py:396:43
	v_lshlrev_b32_e32 v2, 2, v121
	v_or3_b32 v105, v3, v1, v106
	v_lshlrev_b32_e32 v1, 7, v121
	v_cmp_eq_u32_e32 vcc_lo, 0, v163
	v_or3_b32 v169, v18, v17, v181
	v_dual_mov_b32 v39, 0x7632 :: v_dual_add_nc_u32 v164, 0, v164
	s_delay_alu instid0(VALU_DEP_4)
	v_or_b32_e32 v160, v1, v2
	v_mov_b32_e32 v1, 0x5410
	v_add3_u32 v4, 0, v2, v161
	v_add_nc_u32_e32 v166, 0, v166
	v_xor_b32_e32 v6, 16, v105
	v_or_b32_e32 v167, v181, v65
	v_cndmask_b32_e32 v1, 0x1054, v1, vcc_lo
	ds_load_b32 v161, v4
	v_xor_b32_e32 v4, 0x120, v169
	v_cndmask_b32_e32 v39, 0x3276, v39, vcc_lo
	v_xor_b32_e32 v3, 0x90, v169
	v_lshl_or_b32 v1, v1, 8, v1
	v_xor_b32_e32 v5, 0x1b0, v169
	v_add_nc_u32_e32 v172, 0, v4
	v_lshl_or_b32 v39, v39, 8, v39
	v_add_nc_u32_e32 v174, 0, v6
	v_and_b32_e32 v1, 0x540054, v1
	v_xor_b32_e32 v7, 32, v105
	v_xor_b32_e32 v8, 48, v105
	v_xor_b32_e32 v9, 0x84, v167
	v_xor_b32_e32 v10, 0x108, v167
	v_lshl_or_b32 v1, v1, 4, v1
	v_xor_b32_e32 v11, 0x18c, v167
	v_xor_b32_e32 v12, 0x210, v167
	v_xor_b32_e32 v13, 0x294, v167
	v_xor_b32_e32 v14, 0x318, v167
	v_and_b32_e32 v163, 0x5040504, v1
	v_mov_b32_e32 v1, 0
	v_and_b32_e32 v39, 0x760076, v39
	v_xor_b32_e32 v15, 0x39c, v167
	v_xor_b32_e32 v16, 0x420, v167
	v_xor_b32_e32 v33, 0x4a4, v167
	v_xor_b32_e32 v34, 0x528, v167
	v_xor_b32_e32 v35, 0x5ac, v167
	v_xor_b32_e32 v36, 0x630, v167
	v_xor_b32_e32 v37, 0x6b4, v167
	v_xor_b32_e32 v38, 0x738, v167
	v_xor_b32_e32 v2, 0x7bc, v167
	v_xor_b32_e32 v40, 4, v160
	v_xor_b32_e32 v41, 8, v160
	v_xor_b32_e32 v42, 12, v160
	v_xor_b32_e32 v43, 16, v160
	v_xor_b32_e32 v44, 20, v160
	v_xor_b32_e32 v45, 24, v160
	v_xor_b32_e32 v46, 28, v160
	v_xor_b32_e32 v47, 32, v160
	v_xor_b32_e32 v48, 36, v160
	v_xor_b32_e32 v49, 40, v160
	v_xor_b32_e32 v50, 44, v160
	v_xor_b32_e32 v51, 48, v160
	v_xor_b32_e32 v52, 52, v160
	v_xor_b32_e32 v53, 56, v160
	v_xor_b32_e32 v54, 60, v160
	v_mov_b32_e32 v58, v1
	v_lshl_or_b32 v39, v39, 4, v39
	v_lshl_add_u32 v170, v121, 1, 0
	v_dual_mov_b32 v62, v1 :: v_dual_add_nc_u32 v165, 0, v165
	v_dual_mov_b32 v64, v1 :: v_dual_add_nc_u32 v171, 0, v3
	s_delay_alu instid0(VALU_DEP_4)
	v_dual_mov_b32 v57, 0 :: v_dual_and_b32 v168, 0x7060706, v39
	v_add_nc_u32_e32 v173, 0, v5
	v_add_nc_u32_e32 v175, 0, v7
	v_dual_mov_b32 v59, v1 :: v_dual_add_nc_u32 v176, 0, v8
	v_add_nc_u32_e32 v177, 0, v9
	v_dual_mov_b32 v61, v1 :: v_dual_add_nc_u32 v178, 0, v10
	v_dual_mov_b32 v56, v1 :: v_dual_add_nc_u32 v179, 0, v11
	v_dual_mov_b32 v63, v1 :: v_dual_add_nc_u32 v180, 0, v12
	v_add_nc_u32_e32 v181, 0, v13
	v_add_nc_u32_e32 v182, 0, v14
	v_add_nc_u32_e32 v183, 0, v15
	v_add_nc_u32_e32 v184, 0, v16
	v_add_nc_u32_e32 v185, 0, v33
	v_add_nc_u32_e32 v186, 0, v34
	v_add_nc_u32_e32 v187, 0, v35
	v_dual_mov_b32 v55, v1 :: v_dual_add_nc_u32 v188, 0, v36
	v_dual_mov_b32 v34, v1 :: v_dual_add_nc_u32 v189, 0, v37
	v_add_nc_u32_e32 v190, 0, v38
	v_dual_mov_b32 v36, v1 :: v_dual_add_nc_u32 v191, 0, v2
	v_add_nc_u32_e32 v192, 0, v40
	v_dual_mov_b32 v38, v1 :: v_dual_add_nc_u32 v193, 0, v41
	v_add_nc_u32_e32 v194, 0, v42
	v_dual_mov_b32 v40, v1 :: v_dual_add_nc_u32 v195, 0, v43
	v_add_nc_u32_e32 v196, 0, v44
	v_add_nc_u32_e32 v197, 0, v45
	v_dual_mov_b32 v33, 0 :: v_dual_add_nc_u32 v198, 0, v46
	v_add_nc_u32_e32 v199, 0, v47
	v_dual_mov_b32 v35, v1 :: v_dual_add_nc_u32 v200, 0, v48
	v_add_nc_u32_e32 v201, 0, v49
	v_dual_mov_b32 v37, v1 :: v_dual_add_nc_u32 v202, 0, v50
	v_add_nc_u32_e32 v203, 0, v51
	v_dual_mov_b32 v39, v1 :: v_dual_add_nc_u32 v204, 0, v52
	v_add_nc_u32_e32 v205, 0, v53
	v_add_nc_u32_e32 v206, 0, v54
	v_dual_mov_b32 v60, v1 :: v_dual_mov_b32 v49, 0
	v_mov_b32_e32 v50, v1
	v_mov_b32_e32 v51, v1
	v_mov_b32_e32 v52, v1
	v_mov_b32_e32 v53, v1
	v_dual_mov_b32 v54, v1 :: v_dual_mov_b32 v41, 0
	v_mov_b32_e32 v42, v1
	v_mov_b32_e32 v43, v1
	v_mov_b32_e32 v44, v1
	v_mov_b32_e32 v45, v1
	v_mov_b32_e32 v46, v1
	v_mov_b32_e32 v47, v1
	v_mov_b32_e32 v48, v1
	s_and_b32 s41, s41, 0xffff
	s_and_b32 s45, s45, 0xffff
	s_add_i32 s30, s42, s43
	s_and_b32 s53, s53, 0xffff
	s_mov_b32 s42, s54
	s_mov_b32 s43, s55
	s_mov_b32 s46, s54
	s_mov_b32 s47, s55
	s_mov_b32 s50, 0x76543210
	s_branch .LBB0_31
.LBB0_30:                               ;   in Loop: Header=BB0_31 Depth=1
	.loc	1 0 43 is_stmt 0                ; attention_backward.py:0:43
	s_or_b32 exec_lo, exec_lo, s14
	.loc	1 340 30 is_stmt 1              ; attention_backward.py:340:30
	s_waitcnt vmcnt(0)
	v_and_b16 v2.l, 0xff, v69.h
	.loc	1 340 21 is_stmt 0              ; attention_backward.py:340:21
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 271 27 is_stmt 1              ; attention_backward.py:271:27
	s_or_b32 s16, s28, 4
	s_or_b32 s17, s28, 5
	.loc	1 340 30                        ; attention_backward.py:340:30
	v_cmp_ne_u16_e64 s13, 0, v2.l
	v_and_b16 v2.l, 0xff, v69.l
	.loc	1 271 27                        ; attention_backward.py:271:27
	s_or_b32 s18, s28, 6
	s_or_b32 s19, s28, 7
	s_or_b32 s20, s28, 8
	.loc	1 340 21                        ; attention_backward.py:340:21
	s_and_b32 s13, s63, s13
	.loc	1 340 30 is_stmt 0              ; attention_backward.py:340:30
	v_cmp_ne_u16_e32 vcc_lo, 0, v2.l
	v_and_b16 v2.l, 0xff, v66.l
	.loc	1 271 27 is_stmt 1              ; attention_backward.py:271:27
	s_or_b32 s21, s28, 9
	s_or_b32 s22, s28, 10
	s_or_b32 s23, s28, 11
	s_or_b32 s24, s28, 12
	.loc	1 340 30                        ; attention_backward.py:340:30
	v_cmp_ne_u16_e64 s14, 0, v2.l
	v_and_b16 v2.l, 0xff, v67.h
	.loc	1 271 27                        ; attention_backward.py:271:27
	s_or_b32 s25, s28, 13
	s_or_b32 s26, s28, 14
	s_or_b32 s27, s28, 15
	.loc	1 340 21                        ; attention_backward.py:340:21
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(SALU_CYCLE_1)
	.loc	1 340 30 is_stmt 0              ; attention_backward.py:340:30
	v_cmp_ne_u16_e64 s15, 0, v2.l
	.loc	1 340 21                        ; attention_backward.py:340:21
	v_cndmask_b32_e64 v2, 0, 1, s13
	s_and_b32 s13, s62, vcc_lo
	v_cndmask_b32_e64 v3, 0, 1, s13
	s_and_b32 s13, s61, s15
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b16 v2.l, 8, v2.l
	v_or_b16 v2.l, v3.l, v2.l
	v_cndmask_b32_e64 v3, 0, 1, s13
	s_and_b32 s13, s60, s14
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b32_e64 v4, 0, 1, s13
	v_lshlrev_b16 v2.h, 8, v3.l
	v_add_nc_u32_e32 v3, 0, v169
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_or_b16 v2.h, v4.l, v2.h
	ds_store_b16 v3, v2
	.loc	1 340 30                        ; attention_backward.py:340:30
	v_and_b16 v2.l, 0xff, v67.l
	v_cmp_ne_u16_e32 vcc_lo, 0, v2.l
	v_and_b16 v2.l, 0xff, v66.h
	.loc	1 340 21                        ; attention_backward.py:340:21
	v_add_nc_u32_e32 v66, 0, v105
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 340 30                        ; attention_backward.py:340:30
	v_cmp_ne_u16_e64 s13, 0, v2.l
	v_and_b16 v2.l, 0xff, v68.h
	.loc	1 340 21                        ; attention_backward.py:340:21
	s_and_b32 s13, s56, s13
	.loc	1 340 30                        ; attention_backward.py:340:30
	v_cmp_ne_u16_e64 s14, 0, v2.l
	v_and_b16 v2.l, 0xff, v68.l
	.loc	1 340 21                        ; attention_backward.py:340:21
	v_cndmask_b32_e64 v4, 0, 1, s13
	.loc	1 271 27 is_stmt 1              ; attention_backward.py:271:27
	s_or_b32 s13, s28, 1
	.loc	1 340 21                        ; attention_backward.py:340:21
	s_and_b32 s14, s59, s14
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 340 30 is_stmt 0              ; attention_backward.py:340:30
	v_cmp_ne_u16_e64 s15, 0, v2.l
	.loc	1 340 21                        ; attention_backward.py:340:21
	v_cndmask_b32_e64 v3, 0, 1, s14
	s_and_b32 s14, s57, vcc_lo
	v_mov_b16_e32 v2.l, v3.l
	v_cndmask_b32_e64 v3, 0, 1, s14
	s_and_b32 s14, s58, s15
	.loc	1 271 27 is_stmt 1              ; attention_backward.py:271:27
	s_or_b32 s15, s28, 3
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 340 21                        ; attention_backward.py:340:21
	v_lshlrev_b16 v2.l, 8, v2.l
	v_or_b16 v2.l, v3.l, v2.l
	v_cndmask_b32_e64 v3, 0, 1, s14
	.loc	1 271 27                        ; attention_backward.py:271:27
	s_or_b32 s14, s28, 2
	.loc	1 387 27                        ; attention_backward.py:387:27
	s_cmp_lt_i32 s28, s31
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 340 21                        ; attention_backward.py:340:21
	v_lshlrev_b16 v3.l, 8, v3.l
	v_or_b16 v3.l, v4.l, v3.l
	ds_store_b16_d16_hi v171, v2
	ds_store_b16 v172, v2
	ds_store_b16 v173, v3
	.loc	1 386 21                        ; attention_backward.py:386:21
	v_mad_u64_u32 v[2:3], null, s51, s35, v[0:1]
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
	v_add_nc_u32_e32 v3, s35, v2
	.loc	1 387 27                        ; attention_backward.py:387:27
	s_cselect_b32 s14, -1, 0
	s_cmp_lt_i32 s15, s31
	.loc	1 340 21                        ; attention_backward.py:340:21
	ds_load_u8_d16 v124, v66
	ds_load_u8_d16 v82, v66 offset:64
	s_waitcnt lgkmcnt(1)
	ds_load_u8_d16_hi v124, v174
	ds_load_u8_d16_hi v83, v175
	s_waitcnt lgkmcnt(0)
	ds_load_u8_d16 v83, v176
	ds_load_u8_d16 v81, v176 offset:64
	s_waitcnt lgkmcnt(0)
	ds_load_u8_d16_hi v81, v175 offset:64
	ds_load_u8_d16_hi v82, v174 offset:64
	.loc	1 387 27                        ; attention_backward.py:387:27
	s_cselect_b32 s15, -1, 0
	.loc	1 386 21                        ; attention_backward.py:386:21
	v_add_nc_u32_e32 v4, s35, v3
	.loc	1 387 27                        ; attention_backward.py:387:27
	s_cmp_lt_i32 s16, s31
	.loc	1 393 17                        ; attention_backward.py:393:17
	v_add_nc_u32_e32 v66, 0, v167
	.loc	1 387 27                        ; attention_backward.py:387:27
	s_cselect_b32 s16, -1, 0
	s_cmp_lt_i32 s17, s31
	.loc	1 386 21                        ; attention_backward.py:386:21
	v_add_nc_u32_e32 v5, s35, v4
	.loc	1 387 27                        ; attention_backward.py:387:27
	s_cselect_b32 s17, -1, 0
	s_cmp_lt_i32 s18, s31
	s_cselect_b32 s18, -1, 0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	.loc	1 386 21                        ; attention_backward.py:386:21
	v_add_nc_u32_e32 v6, s35, v5
	.loc	1 387 27                        ; attention_backward.py:387:27
	s_cmp_lt_i32 s19, s31
	s_cselect_b32 s19, -1, 0
	s_cmp_lt_i32 s20, s31
	.loc	1 386 21                        ; attention_backward.py:386:21
	v_add_nc_u32_e32 v7, s35, v6
	.loc	1 387 27                        ; attention_backward.py:387:27
	s_cselect_b32 s20, -1, 0
	s_cmp_lt_i32 s21, s31
	s_cselect_b32 s21, -1, 0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	.loc	1 386 21                        ; attention_backward.py:386:21
	v_add_nc_u32_e32 v8, s35, v7
	.loc	1 387 27                        ; attention_backward.py:387:27
	s_cmp_lt_i32 s22, s31
	s_cselect_b32 s22, -1, 0
	s_cmp_lt_i32 s23, s31
	.loc	1 386 21                        ; attention_backward.py:386:21
	v_add_nc_u32_e32 v9, s35, v8
	.loc	1 387 27                        ; attention_backward.py:387:27
	s_cselect_b32 s23, -1, 0
	s_cmp_lt_i32 s24, s31
	s_cselect_b32 s24, -1, 0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	.loc	1 386 21                        ; attention_backward.py:386:21
	v_add_nc_u32_e32 v10, s35, v9
	.loc	1 387 27                        ; attention_backward.py:387:27
	s_cmp_lt_i32 s25, s31
	s_cselect_b32 s25, -1, 0
	s_cmp_lt_i32 s26, s31
	.loc	1 386 21                        ; attention_backward.py:386:21
	v_add_nc_u32_e32 v11, s35, v10
	.loc	1 387 27                        ; attention_backward.py:387:27
	s_cselect_b32 s26, -1, 0
	s_cmp_lt_i32 s27, s31
	s_cselect_b32 s27, -1, 0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 386 21                        ; attention_backward.py:386:21
	v_add_nc_u32_e32 v12, s35, v11
	.loc	1 387 26                        ; attention_backward.py:387:26
	s_and_b32 vcc_lo, s3, s51
	.loc	1 270 9                         ; attention_backward.py:270:9
	s_add_i32 s28, s28, 16
	.loc	1 386 21                        ; attention_backward.py:386:21
	v_add_nc_u32_e32 v13, s35, v12
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add_nc_u32_e32 v14, s35, v13
	v_add_nc_u32_e32 v15, s35, v14
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add_nc_u32_e32 v16, s35, v15
	.loc	1 385 30                        ; attention_backward.py:385:30
	v_lshlrev_b32_e32 v65, 1, v16
	v_add_lshl_u32 v16, v16, s35, 1
	v_lshlrev_b32_e32 v15, 1, v15
	v_lshlrev_b32_e32 v14, 1, v14
	v_lshlrev_b32_e32 v13, 1, v13
	v_lshlrev_b32_e32 v12, 1, v12
	v_lshlrev_b32_e32 v11, 1, v11
	v_lshlrev_b32_e32 v10, 1, v10
	v_lshlrev_b32_e32 v9, 1, v9
	v_lshlrev_b32_e32 v8, 1, v8
	v_lshlrev_b32_e32 v7, 1, v7
	v_lshlrev_b32_e32 v6, 1, v6
	v_lshlrev_b32_e32 v5, 1, v5
	v_lshlrev_b32_e32 v4, 1, v4
	v_lshlrev_b32_e32 v3, 1, v3
	v_lshlrev_b32_e32 v2, 1, v2
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_cndmask_b32_e32 v2, 0x80000000, v2, vcc_lo
	.loc	1 387 26                        ; attention_backward.py:387:26
	s_and_b32 vcc_lo, s3, s13
	.loc	1 385 30                        ; attention_backward.py:385:30
	v_cndmask_b32_e32 v3, 0x80000000, v3, vcc_lo
	.loc	1 387 26                        ; attention_backward.py:387:26
	s_and_b32 vcc_lo, s3, s14
	.loc	1 385 30                        ; attention_backward.py:385:30
	v_cndmask_b32_e32 v4, 0x80000000, v4, vcc_lo
	.loc	1 387 26                        ; attention_backward.py:387:26
	s_and_b32 vcc_lo, s3, s15
	.loc	1 385 30                        ; attention_backward.py:385:30
	v_cndmask_b32_e32 v5, 0x80000000, v5, vcc_lo
	.loc	1 387 26                        ; attention_backward.py:387:26
	s_and_b32 vcc_lo, s3, s16
	.loc	1 385 30                        ; attention_backward.py:385:30
	v_cndmask_b32_e32 v6, 0x80000000, v6, vcc_lo
	.loc	1 387 26                        ; attention_backward.py:387:26
	s_and_b32 vcc_lo, s3, s17
	.loc	1 385 30                        ; attention_backward.py:385:30
	v_cndmask_b32_e32 v7, 0x80000000, v7, vcc_lo
	.loc	1 387 26                        ; attention_backward.py:387:26
	s_and_b32 vcc_lo, s3, s18
	.loc	1 385 30                        ; attention_backward.py:385:30
	v_cndmask_b32_e32 v8, 0x80000000, v8, vcc_lo
	.loc	1 387 26                        ; attention_backward.py:387:26
	s_and_b32 vcc_lo, s3, s19
	.loc	1 385 30                        ; attention_backward.py:385:30
	v_cndmask_b32_e32 v9, 0x80000000, v9, vcc_lo
	.loc	1 387 26                        ; attention_backward.py:387:26
	s_and_b32 vcc_lo, s3, s20
	.loc	1 385 30                        ; attention_backward.py:385:30
	s_clause 0x7
	buffer_load_u16 v2, v2, s[52:55], 0 offen
	buffer_load_u16 v3, v3, s[52:55], 0 offen
	buffer_load_u16 v4, v4, s[52:55], 0 offen
	buffer_load_u16 v5, v5, s[52:55], 0 offen
	buffer_load_u16 v6, v6, s[52:55], 0 offen
	buffer_load_u16 v7, v7, s[52:55], 0 offen
	buffer_load_u16 v8, v8, s[52:55], 0 offen
	buffer_load_u16 v9, v9, s[52:55], 0 offen
	v_cndmask_b32_e32 v10, 0x80000000, v10, vcc_lo
	.loc	1 387 26                        ; attention_backward.py:387:26
	s_and_b32 vcc_lo, s3, s21
	.loc	1 385 30                        ; attention_backward.py:385:30
	v_cndmask_b32_e32 v11, 0x80000000, v11, vcc_lo
	.loc	1 387 26                        ; attention_backward.py:387:26
	s_and_b32 vcc_lo, s3, s22
	.loc	1 385 30                        ; attention_backward.py:385:30
	v_cndmask_b32_e32 v12, 0x80000000, v12, vcc_lo
	.loc	1 387 26                        ; attention_backward.py:387:26
	s_and_b32 vcc_lo, s3, s23
	.loc	1 385 30                        ; attention_backward.py:385:30
	v_cndmask_b32_e32 v13, 0x80000000, v13, vcc_lo
	.loc	1 387 26                        ; attention_backward.py:387:26
	s_and_b32 vcc_lo, s3, s24
	.loc	1 385 30                        ; attention_backward.py:385:30
	v_cndmask_b32_e32 v14, 0x80000000, v14, vcc_lo
	.loc	1 387 26                        ; attention_backward.py:387:26
	s_and_b32 vcc_lo, s3, s25
	.loc	1 385 30                        ; attention_backward.py:385:30
	v_cndmask_b32_e32 v15, 0x80000000, v15, vcc_lo
	.loc	1 387 26                        ; attention_backward.py:387:26
	s_and_b32 vcc_lo, s3, s26
	.loc	1 385 30                        ; attention_backward.py:385:30
	v_cndmask_b32_e32 v65, 0x80000000, v65, vcc_lo
	.loc	1 387 26                        ; attention_backward.py:387:26
	s_and_b32 vcc_lo, s3, s27
	.loc	1 270 9                         ; attention_backward.py:270:9
	s_cmp_lt_i32 s28, s68
	.loc	1 385 30                        ; attention_backward.py:385:30
	v_cndmask_b32_e32 v16, 0x80000000, v16, vcc_lo
	s_clause 0x7
	buffer_load_u16 v10, v10, s[52:55], 0 offen
	buffer_load_u16 v11, v11, s[52:55], 0 offen
	buffer_load_u16 v12, v12, s[52:55], 0 offen
	buffer_load_u16 v13, v13, s[52:55], 0 offen
	buffer_load_u16 v14, v14, s[52:55], 0 offen
	buffer_load_u16 v15, v15, s[52:55], 0 offen
	buffer_load_u16 v65, v65, s[52:55], 0 offen
	buffer_load_u16 v16, v16, s[52:55], 0 offen
	.loc	1 393 17                        ; attention_backward.py:393:17
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_waitcnt vmcnt(15)
	ds_store_b16 v66, v2
	s_waitcnt vmcnt(14)
	ds_store_b16 v177, v3
	s_waitcnt vmcnt(13)
	ds_store_b16 v178, v4
	s_waitcnt vmcnt(12)
	ds_store_b16 v179, v5
	s_waitcnt vmcnt(11)
	ds_store_b16 v180, v6
	s_waitcnt vmcnt(10)
	ds_store_b16 v181, v7
	s_waitcnt vmcnt(9)
	ds_store_b16 v182, v8
	s_waitcnt vmcnt(8)
	ds_store_b16 v183, v9
	s_waitcnt vmcnt(7)
	ds_store_b16 v184, v10
	s_waitcnt vmcnt(6)
	ds_store_b16 v185, v11
	s_waitcnt vmcnt(5)
	ds_store_b16 v186, v12
	s_waitcnt vmcnt(4)
	ds_store_b16 v187, v13
	s_waitcnt vmcnt(3)
	ds_store_b16 v188, v14
	s_waitcnt vmcnt(2)
	ds_store_b16 v189, v15
	s_waitcnt vmcnt(1)
	ds_store_b16 v190, v65
	s_waitcnt vmcnt(0)
	ds_store_b16 v191, v16
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 391 32                        ; attention_backward.py:391:32
	s_clause 0x1                            ; 32-byte Folded Reload
	scratch_load_b128 v[17:20], off, off
	scratch_load_b128 v[21:24], off, off offset:16
	ds_load_2addr_b32 v[231:232], v192 offset1:16
	ds_load_2addr_b32 v[233:234], v196 offset1:16
	ds_load_2addr_b32 v[235:236], v200 offset1:16
	ds_load_2addr_b32 v[237:238], v204 offset1:16
	.loc	1 393 17                        ; attention_backward.py:393:17
	v_add_nc_u32_e32 v9, 0, v160
	.loc	1 391 32                        ; attention_backward.py:391:32
	ds_load_2addr_b32 v[251:252], v193 offset1:16
	ds_load_2addr_b32 v[253:254], v194 offset1:16
	ds_load_2addr_b32 v[122:123], v195 offset1:16
	ds_load_2addr_b32 v[107:108], v197 offset1:16
	ds_load_2addr_b32 v[249:250], v9 offset1:16
	ds_load_2addr_b32 v[109:110], v198 offset1:16
	ds_load_2addr_b32 v[111:112], v199 offset1:16
	ds_load_2addr_b32 v[9:10], v201 offset1:16
	ds_load_2addr_b32 v[11:12], v202 offset1:16
	ds_load_2addr_b32 v[13:14], v203 offset1:16
	ds_load_2addr_b32 v[15:16], v205 offset1:16
	ds_load_2addr_b32 v[247:248], v206 offset1:16
	v_mov_b32_e32 v8, v1
	v_mov_b32_e32 v2, v1
	v_mov_b32_e32 v3, v1
	v_mov_b32_e32 v4, v1
	v_mov_b32_e32 v5, v1
	v_mov_b32_e32 v6, v1
	v_mov_b32_e32 v7, v1
	v_mov_b32_e32 v72, v8
	s_waitcnt lgkmcnt(15)
	v_mov_b16_e64 v239.h, v231.l
	s_waitcnt lgkmcnt(11)
	v_mov_b16_e64 v240.l, v251.l
	s_waitcnt lgkmcnt(10)
	v_mov_b16_e64 v240.h, v253.l
	s_waitcnt lgkmcnt(9)
	v_mov_b16_e64 v241.l, v122.l
	s_waitcnt lgkmcnt(7)
	v_mov_b16_e64 v239.l, v249.l
	v_mov_b16_e64 v241.h, v233.l
	v_mov_b16_e64 v242.l, v107.l
	s_waitcnt lgkmcnt(6)
	v_mov_b16_e64 v242.h, v109.l
	s_waitcnt lgkmcnt(5)
	v_mov_b16_e64 v243.l, v111.l
	v_mov_b16_e64 v243.h, v235.l
	s_waitcnt lgkmcnt(4)
	v_mov_b16_e64 v244.l, v9.l
	s_waitcnt lgkmcnt(3)
	v_mov_b16_e64 v244.h, v11.l
	s_waitcnt lgkmcnt(2)
	v_mov_b16_e64 v245.l, v13.l
	v_mov_b16_e64 v245.h, v237.l
	s_waitcnt lgkmcnt(1)
	v_mov_b16_e64 v246.l, v15.l
	s_waitcnt lgkmcnt(0)
	v_mov_b16_e64 v246.h, v247.l
	v_dual_mov_b32 v71, v7 :: v_dual_mov_b32 v70, v6
	v_dual_mov_b32 v69, v5 :: v_dual_mov_b32 v68, v4
	v_dual_mov_b32 v67, v3 :: v_dual_mov_b32 v66, v2
	v_mov_b32_e32 v65, v1
	v_mov_b16_e32 v11.l, v9.h
	s_clause 0x1                            ; 32-byte Folded Reload
	scratch_load_b128 v[2:5], off, off offset:64
	scratch_load_b128 v[6:9], off, off offset:80
	v_mov_b16_e64 v231.l, v249.h
	v_mov_b16_e64 v253.l, v251.h
	v_mov_b16_e64 v233.l, v122.h
	v_mov_b16_e32 v109.l, v107.h
	v_mov_b16_e64 v235.l, v111.h
	v_mov_b16_e64 v237.l, v13.h
	v_mov_b16_e64 v247.l, v15.h
	s_waitcnt vmcnt(2)
	v_wmma_f32_16x16x16_bf16 v[65:72], v[239:246], v[17:24], v[65:72]
	s_clause 0x1                            ; 32-byte Folded Reload
	scratch_load_b128 v[17:20], off, off offset:32
	scratch_load_b128 v[21:24], off, off offset:48
	v_mov_b16_e64 v239.l, v250.l
	v_mov_b16_e64 v239.h, v232.l
	v_mov_b16_e64 v240.l, v252.l
	v_mov_b16_e64 v240.h, v254.l
	v_mov_b16_e64 v241.l, v123.l
	v_mov_b16_e64 v241.h, v234.l
	v_mov_b16_e64 v242.l, v108.l
	v_mov_b16_e64 v242.h, v110.l
	v_mov_b16_e64 v243.l, v112.l
	v_mov_b16_e64 v243.h, v236.l
	v_mov_b16_e64 v244.l, v10.l
	v_mov_b16_e64 v244.h, v12.l
	v_mov_b16_e64 v245.l, v14.l
	v_mov_b16_e64 v245.h, v238.l
	v_mov_b16_e64 v246.l, v16.l
	v_mov_b16_e64 v246.h, v248.l
	v_mov_b16_e64 v248.l, v16.h
	v_mov_b16_e64 v254.l, v252.h
	v_mov_b16_e32 v110.l, v108.h
	v_mov_b16_e32 v12.l, v10.h
	v_mov_b16_e64 v232.l, v250.h
	v_mov_b16_e64 v234.l, v123.h
	v_mov_b16_e64 v236.l, v112.h
	v_mov_b16_e64 v238.l, v14.h
	.loc	1 299 21                        ; attention_backward.py:299:21
	v_cvt_f32_i32_e32 v10, v74
	.loc	1 309 31                        ; attention_backward.py:309:31
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 299 21                        ; attention_backward.py:299:21
	v_mul_f32_e32 v10, v142, v10
	.loc	1 391 32                        ; attention_backward.py:391:32
	s_waitcnt vmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[65:72], v[239:246], v[17:24], v[65:72]
	v_dual_mov_b32 v240, v231 :: v_dual_mov_b32 v241, v253
	v_dual_mov_b32 v242, v233 :: v_dual_mov_b32 v245, v11
	v_dual_mov_b32 v243, v109 :: v_dual_mov_b32 v244, v235
	v_dual_mov_b32 v246, v237 :: v_dual_mov_b32 v239, v248
	v_mov_b32_e32 v233, v254
	v_mov_b32_e32 v235, v110
	v_mov_b32_e32 v237, v12
	s_delay_alu instid0(VALU_DEP_4)
	v_wmma_f32_16x16x16_bf16 v[65:72], v[240:247], v[2:9], v[65:72]
	v_bfe_i32 v8, v230, 0, 8
	.loc	1 299 21                        ; attention_backward.py:299:21
	v_cvt_f32_i32_e32 v231, v75
	v_cvt_f32_i32_e32 v75, v76
	v_cvt_f32_i32_e32 v9, v73
	.loc	1 391 32                        ; attention_backward.py:391:32
	v_wmma_f32_16x16x16_bf16 v[65:72], v[232:239], v[25:32], v[65:72]
	v_mov_b16_e32 v13.l, v8.l
	.loc	1 299 21                        ; attention_backward.py:299:21
	v_cvt_f32_i32_e32 v73, v77
	.loc	1 305 28                        ; attention_backward.py:305:28
	v_mov_b16_e32 v77.l, 0
	.loc	1 290 33                        ; attention_backward.py:290:33
	v_mov_b16_e64 v77.h, v228.l
	.loc	1 396 43                        ; attention_backward.py:396:43
	v_sub_f32_e32 v76, v67, v161
	.loc	1 304 27                        ; attention_backward.py:304:27
	v_and_b32_e32 v14, 15, v13
	.loc	1 304 28 is_stmt 0              ; attention_backward.py:304:28
	v_and_b16 v8.l, v13.l, 15
	.loc	1 396 43 is_stmt 1              ; attention_backward.py:396:43
	v_sub_f32_e32 v74, v68, v161
	v_sub_f32_e32 v12, v66, v161
	.loc	1 299 21                        ; attention_backward.py:299:21
	v_cvt_f32_i32_e32 v3, v79
	.loc	1 306 50                        ; attention_backward.py:306:50
	v_or_b32_e32 v15, -16, v14
	.loc	1 306 36 is_stmt 0              ; attention_backward.py:306:36
	v_cmp_lt_u16_e32 vcc_lo, 7, v8.l
	v_bfe_i32 v8, v229, 0, 8
	.loc	1 396 43 is_stmt 1              ; attention_backward.py:396:43
	v_sub_f32_e32 v11, v65, v161
	.loc	1 299 21                        ; attention_backward.py:299:21
	v_cvt_f32_i32_e32 v6, v78
	v_cvt_f32_i32_e32 v2, v80
	.loc	1 306 27                        ; attention_backward.py:306:27
	v_cndmask_b32_e32 v14, v14, v15, vcc_lo
	v_mov_b16_e32 v15.l, v8.l
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 396 43                        ; attention_backward.py:396:43
	v_dual_sub_f32 v7, v69, v161 :: v_dual_mul_f32 v6, v142, v6
	.loc	1 299 21                        ; attention_backward.py:299:21
	v_mul_f32_e32 v2, v142, v2
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 311 21                        ; attention_backward.py:311:21
	v_cvt_f32_i32_e32 v14, v14
	.loc	1 304 27                        ; attention_backward.py:304:27
	v_and_b32_e32 v16, 15, v15
	.loc	1 304 28 is_stmt 0              ; attention_backward.py:304:28
	v_and_b16 v8.l, v15.l, 15
	.loc	1 299 21 is_stmt 1              ; attention_backward.py:299:21
	v_mul_f32_e32 v9, v142, v9
	v_mul_f32_e32 v3, v142, v3
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 306 50                        ; attention_backward.py:306:50
	v_or_b32_e32 v65, -16, v16
	.loc	1 306 36 is_stmt 0              ; attention_backward.py:306:36
	v_cmp_lt_u16_e32 vcc_lo, 7, v8.l
	v_bfe_i32 v8, v224, 0, 8
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 306 27                        ; attention_backward.py:306:27
	v_cndmask_b32_e32 v16, v16, v65, vcc_lo
	v_mov_b16_e32 v65.l, v8.l
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 304 27 is_stmt 1              ; attention_backward.py:304:27
	v_and_b32_e32 v67, 15, v65
	.loc	1 304 28 is_stmt 0              ; attention_backward.py:304:28
	v_and_b16 v8.l, v65.l, 15
	.loc	1 306 50 is_stmt 1              ; attention_backward.py:306:50
	v_or_b32_e32 v68, -16, v67
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 306 36 is_stmt 0              ; attention_backward.py:306:36
	v_cmp_lt_u16_e32 vcc_lo, 7, v8.l
	v_bfe_i32 v8, v223, 0, 8
	.loc	1 396 43 is_stmt 1              ; attention_backward.py:396:43
	v_sub_f32_e32 v66, v72, v161
	.loc	1 305 28                        ; attention_backward.py:305:28
	v_mov_b16_e32 v8.h, v77.l
	.loc	1 396 43                        ; attention_backward.py:396:43
	v_sub_f32_e32 v5, v70, v161
	.loc	1 306 27                        ; attention_backward.py:306:27
	v_cndmask_b32_e32 v67, v67, v68, vcc_lo
	v_mov_b16_e32 v68.l, v8.l
	.loc	1 396 43                        ; attention_backward.py:396:43
	v_sub_f32_e32 v4, v71, v161
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 311 21                        ; attention_backward.py:311:21
	v_cvt_f32_i32_e32 v67, v67
	.loc	1 304 28                        ; attention_backward.py:304:28
	v_and_b16 v8.l, v68.l, 15
	.loc	1 304 27 is_stmt 0              ; attention_backward.py:304:27
	v_and_b32_e32 v69, 15, v68
	.loc	1 290 33 is_stmt 1              ; attention_backward.py:290:33
	v_mov_b16_e64 v68.h, v227.l
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 306 36                        ; attention_backward.py:306:36
	v_cmp_lt_u16_e32 vcc_lo, 7, v8.l
	.loc	1 305 30                        ; attention_backward.py:305:30
	v_lshrrev_b16 v8.l, 4, v13.l
	.loc	1 306 50                        ; attention_backward.py:306:50
	v_or_b32_e32 v70, -16, v69
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 305 30                        ; attention_backward.py:305:30
	v_and_b16 v8.l, v8.l, 15
	.loc	1 306 27                        ; attention_backward.py:306:27
	v_cndmask_b32_e32 v69, v69, v70, vcc_lo
	.loc	1 307 37                        ; attention_backward.py:307:37
	v_cmp_gt_i16_e32 vcc_lo, 0, v13.l
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 307 52 is_stmt 0              ; attention_backward.py:307:52
	v_or_b32_e32 v70, -16, v8
	.loc	1 311 21 is_stmt 1              ; attention_backward.py:311:21
	v_cvt_f32_i32_e32 v69, v69
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 307 28                        ; attention_backward.py:307:28
	v_cndmask_b32_e32 v13, v8, v70, vcc_lo
	.loc	1 305 30                        ; attention_backward.py:305:30
	v_lshrrev_b16 v8.l, 4, v15.l
	.loc	1 307 37                        ; attention_backward.py:307:37
	v_cmp_gt_i16_e32 vcc_lo, 0, v15.l
	.loc	1 311 21                        ; attention_backward.py:311:21
	v_cvt_f32_i32_e32 v13, v13
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 305 30                        ; attention_backward.py:305:30
	v_and_b16 v8.l, v8.l, 15
	.loc	1 307 52                        ; attention_backward.py:307:52
	v_or_b32_e32 v70, -16, v8
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	.loc	1 307 28 is_stmt 0              ; attention_backward.py:307:28
	v_cndmask_b32_e32 v15, v8, v70, vcc_lo
	.loc	1 305 30 is_stmt 1              ; attention_backward.py:305:30
	v_lshrrev_b16 v8.l, 4, v65.l
	.loc	1 307 37                        ; attention_backward.py:307:37
	v_cmp_gt_i16_e32 vcc_lo, 0, v65.l
	.loc	1 305 30                        ; attention_backward.py:305:30
	v_and_b16 v8.l, v8.l, 15
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 307 52                        ; attention_backward.py:307:52
	v_or_b32_e32 v70, -16, v8
	.loc	1 307 28 is_stmt 0              ; attention_backward.py:307:28
	v_cndmask_b32_e32 v65, v8, v70, vcc_lo
	.loc	1 305 30 is_stmt 1              ; attention_backward.py:305:30
	v_lshrrev_b16 v8.l, 4, v68.l
	.loc	1 307 37                        ; attention_backward.py:307:37
	v_cmp_gt_i16_e32 vcc_lo, 0, v68.l
	.loc	1 290 33                        ; attention_backward.py:290:33
	v_mov_b16_e32 v68.l, v77.l
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 311 21                        ; attention_backward.py:311:21
	v_cvt_f32_i32_e32 v65, v65
	.loc	1 305 30                        ; attention_backward.py:305:30
	v_and_b16 v8.l, v8.l, 15
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	.loc	1 311 21                        ; attention_backward.py:311:21
	v_mul_f32_e32 v14, v14, v68
	v_mul_f32_e32 v13, v13, v68
	.loc	1 290 33                        ; attention_backward.py:290:33
	v_mov_b16_e64 v68.h, v226.l
	.loc	1 307 52                        ; attention_backward.py:307:52
	v_or_b32_e32 v70, -16, v8
	.loc	1 311 21                        ; attention_backward.py:311:21
	v_cvt_f32_i32_e32 v16, v16
	.loc	1 309 31                        ; attention_backward.py:309:31
	v_cndmask_b32_e64 v14, 0, v14, s0
	v_cndmask_b32_e64 v13, 0, v13, s1
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	.loc	1 311 21                        ; attention_backward.py:311:21
	v_dual_mul_f32 v67, v67, v68 :: v_dual_cndmask_b32 v8, v8, v70
	v_mul_f32_e32 v65, v65, v68
	.loc	1 290 33                        ; attention_backward.py:290:33
	v_mov_b16_e64 v68.h, v225.l
	.loc	1 309 31                        ; attention_backward.py:309:31
	v_cmp_o_f32_e32 vcc_lo, v14, v14
	v_cndmask_b32_e64 v67, 0, v67, s0
	.loc	1 311 21                        ; attention_backward.py:311:21
	v_cvt_f32_i32_e32 v8, v8
	v_mul_f32_e32 v16, v77, v16
	v_mul_f32_e32 v69, v69, v68
	.loc	1 309 31                        ; attention_backward.py:309:31
	v_cndmask_b32_e64 v65, 0, v65, s1
	v_cmp_o_f32_e64 s13, v67, v67
	.loc	1 311 21                        ; attention_backward.py:311:21
	v_mul_f32_e32 v8, v8, v68
	.loc	1 309 31                        ; attention_backward.py:309:31
	v_bfe_u32 v68, v14, 16, 1
	v_cndmask_b32_e64 v16, 0, v16, s0
	v_cmp_o_f32_e64 s16, v13, v13
	v_cmp_o_f32_e64 s17, v65, v65
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_add3_u32 v14, v14, v68, 0x7fff
	v_bfe_u32 v68, v67, 16, 1
	v_cmp_o_f32_e64 s15, v16, v16
	v_add3_u32 v67, v67, v68, 0x7fff
	v_cndmask_b32_e64 v68, 0, v69, s0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b16 v14.l, 0x7fff, v67.h, s13
	v_bfe_u32 v69, v68, 16, 1
	v_cmp_o_f32_e64 s14, v68, v68
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_add3_u32 v68, v68, v69, 0x7fff
	v_mov_b16_e32 v69.h, v77.l
	v_mov_b16_e32 v69.l, v16.h
	v_and_b32_e32 v69, 1, v69
	v_cndmask_b32_e64 v8, 0, v8, s1
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_add3_u32 v16, v16, v69, 0x7fff
	v_bfe_u32 v69, v13, 16, 1
	v_cmp_o_f32_e64 s18, v8, v8
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_add3_u32 v13, v13, v69, 0x7fff
	v_bfe_u32 v69, v65, 16, 1
	v_cndmask_b16 v13.l, 0x7fff, v14.h, vcc_lo
	v_cndmask_b16 v13.h, 0x7fff, v13.h, s16
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_add3_u32 v65, v65, v69, 0x7fff
	v_bfe_u32 v69, v8, 16, 1
	v_cndmask_b16 v65.l, 0x7fff, v68.h, s14
	v_cndmask_b16 v14.h, 0x7fff, v65.h, s17
	s_delay_alu instid0(VALU_DEP_3)
	v_add3_u32 v8, v8, v69, 0x7fff
	v_cndmask_b16 v8.l, 0x7fff, v16.h, s15
	v_add_nc_u32_e32 v16, v117, v0
	.loc	1 311 21                        ; attention_backward.py:311:21
	v_cvt_f32_i32_e32 v15, v15
	.loc	1 309 31                        ; attention_backward.py:309:31
	v_mov_b16_e32 v69.h, v77.l
	v_cndmask_b16 v65.h, 0x7fff, v8.h, s18
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 311 21                        ; attention_backward.py:311:21
	v_mul_f32_e32 v15, v77, v15
	.loc	1 290 33                        ; attention_backward.py:290:33
	v_mov_b16_e64 v77.h, v207.l
	.loc	1 309 31                        ; attention_backward.py:309:31
	v_cndmask_b32_e64 v15, 0, v15, s1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_mov_b16_e32 v69.l, v15.h
	v_cmp_o_f32_e64 s19, v15, v15
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v69, 1, v69
	v_add3_u32 v15, v15, v69, 0x7fff
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_cndmask_b16 v8.h, 0x7fff, v15.h, s19
	v_lshlrev_b32_e32 v15, 1, v0
	v_add_nc_u32_e32 v15, v16, v15
	ds_store_2addr_stride64_b32 v15, v8, v13 offset1:1
	ds_store_2addr_stride64_b32 v15, v14, v65 offset0:2 offset1:3
	v_bfe_i32 v8, v220, 0, 8
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b16_e32 v13.l, v8.l
	.loc	1 304 27                        ; attention_backward.py:304:27
	v_and_b32_e32 v16, 15, v13
	.loc	1 304 28 is_stmt 0              ; attention_backward.py:304:28
	v_and_b16 v8.l, v13.l, 15
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 306 50 is_stmt 1              ; attention_backward.py:306:50
	v_or_b32_e32 v67, -16, v16
	.loc	1 306 36 is_stmt 0              ; attention_backward.py:306:36
	v_cmp_lt_u16_e32 vcc_lo, 7, v8.l
	v_bfe_i32 v8, v219, 0, 8
	.loc	1 305 28 is_stmt 1              ; attention_backward.py:305:28
	v_mov_b16_e32 v8.h, v77.l
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 306 27                        ; attention_backward.py:306:27
	v_cndmask_b32_e32 v16, v16, v67, vcc_lo
	v_mov_b16_e32 v67.l, v8.l
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 311 21                        ; attention_backward.py:311:21
	v_cvt_f32_i32_e32 v16, v16
	.loc	1 304 28                        ; attention_backward.py:304:28
	v_and_b16 v8.l, v67.l, 15
	.loc	1 304 27 is_stmt 0              ; attention_backward.py:304:27
	v_and_b32_e32 v68, 15, v67
	.loc	1 290 33 is_stmt 1              ; attention_backward.py:290:33
	v_mov_b16_e64 v67.h, v222.l
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 306 36                        ; attention_backward.py:306:36
	v_cmp_lt_u16_e32 vcc_lo, 7, v8.l
	.loc	1 305 30                        ; attention_backward.py:305:30
	v_lshrrev_b16 v8.l, 4, v13.l
	.loc	1 306 50                        ; attention_backward.py:306:50
	v_or_b32_e32 v69, -16, v68
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 305 30                        ; attention_backward.py:305:30
	v_and_b16 v8.l, v8.l, 15
	.loc	1 306 27                        ; attention_backward.py:306:27
	v_cndmask_b32_e32 v68, v68, v69, vcc_lo
	.loc	1 307 37                        ; attention_backward.py:307:37
	v_cmp_gt_i16_e32 vcc_lo, 0, v13.l
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 307 52 is_stmt 0              ; attention_backward.py:307:52
	v_or_b32_e32 v69, -16, v8
	.loc	1 311 21 is_stmt 1              ; attention_backward.py:311:21
	v_cvt_f32_i32_e32 v68, v68
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	.loc	1 307 28                        ; attention_backward.py:307:28
	v_cndmask_b32_e32 v13, v8, v69, vcc_lo
	.loc	1 305 30                        ; attention_backward.py:305:30
	v_lshrrev_b16 v8.l, 4, v67.l
	.loc	1 307 37                        ; attention_backward.py:307:37
	v_cmp_gt_i16_e32 vcc_lo, 0, v67.l
	.loc	1 290 33                        ; attention_backward.py:290:33
	v_mov_b16_e32 v67.l, v77.l
	.loc	1 311 21                        ; attention_backward.py:311:21
	v_cvt_f32_i32_e32 v13, v13
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 305 30                        ; attention_backward.py:305:30
	v_and_b16 v8.l, v8.l, 15
	.loc	1 311 21                        ; attention_backward.py:311:21
	v_mul_f32_e32 v16, v16, v67
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mul_f32_e32 v13, v13, v67
	.loc	1 307 52                        ; attention_backward.py:307:52
	v_or_b32_e32 v69, -16, v8
	.loc	1 290 33                        ; attention_backward.py:290:33
	v_mov_b16_e64 v67.h, v221.l
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 309 31                        ; attention_backward.py:309:31
	v_cndmask_b32_e64 v16, 0, v16, s0
	v_cndmask_b32_e64 v13, 0, v13, s1
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 307 28                        ; attention_backward.py:307:28
	v_cndmask_b32_e32 v8, v8, v69, vcc_lo
	.loc	1 311 21                        ; attention_backward.py:311:21
	v_mul_f32_e32 v68, v68, v67
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 309 31                        ; attention_backward.py:309:31
	v_cmp_o_f32_e32 vcc_lo, v16, v16
	v_cmp_o_f32_e64 s13, v13, v13
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 311 21                        ; attention_backward.py:311:21
	v_cvt_f32_i32_e32 v8, v8
	v_mul_f32_e32 v8, v8, v67
	.loc	1 309 31                        ; attention_backward.py:309:31
	v_bfe_u32 v67, v16, 16, 1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b32_e64 v8, 0, v8, s1
	v_add3_u32 v67, v16, v67, 0x7fff
	v_bfe_u32 v16, v13, 16, 1
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cmp_o_f32_e64 s15, v8, v8
	v_add3_u32 v16, v13, v16, 0x7fff
	v_cndmask_b32_e64 v13, 0, v68, s0
	v_cndmask_b16 v16.l, 0x7fff, v67.h, vcc_lo
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cndmask_b16 v16.h, 0x7fff, v16.h, s13
	v_bfe_u32 v68, v13, 16, 1
	v_cmp_o_f32_e64 s14, v13, v13
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add3_u32 v68, v13, v68, 0x7fff
	v_bfe_u32 v13, v8, 16, 1
	v_add3_u32 v13, v8, v13, 0x7fff
	v_bfe_i32 v8, v216, 0, 8
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cndmask_b16 v13.l, 0x7fff, v68.h, s14
	v_cndmask_b16 v13.h, 0x7fff, v13.h, s15
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b16_e32 v14.l, v8.l
	.loc	1 304 27                        ; attention_backward.py:304:27
	v_and_b32_e32 v65, 15, v14
	.loc	1 304 28 is_stmt 0              ; attention_backward.py:304:28
	v_and_b16 v8.l, v14.l, 15
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 306 50 is_stmt 1              ; attention_backward.py:306:50
	v_or_b32_e32 v67, -16, v65
	.loc	1 306 36 is_stmt 0              ; attention_backward.py:306:36
	v_cmp_lt_u16_e32 vcc_lo, 7, v8.l
	v_bfe_i32 v8, v213, 0, 8
	.loc	1 305 28 is_stmt 1              ; attention_backward.py:305:28
	v_mov_b16_e32 v8.h, v77.l
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 306 27                        ; attention_backward.py:306:27
	v_cndmask_b32_e32 v65, v65, v67, vcc_lo
	v_mov_b16_e32 v67.l, v8.l
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 304 28                        ; attention_backward.py:304:28
	v_and_b16 v8.l, v67.l, 15
	.loc	1 304 27 is_stmt 0              ; attention_backward.py:304:27
	v_and_b32_e32 v68, 15, v67
	.loc	1 290 33 is_stmt 1              ; attention_backward.py:290:33
	v_mov_b16_e64 v67.h, v218.l
	.loc	1 306 36                        ; attention_backward.py:306:36
	v_cmp_lt_u16_e32 vcc_lo, 7, v8.l
	.loc	1 305 30                        ; attention_backward.py:305:30
	v_lshrrev_b16 v8.l, 4, v14.l
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 306 50                        ; attention_backward.py:306:50
	v_or_b32_e32 v69, -16, v68
	.loc	1 305 30                        ; attention_backward.py:305:30
	v_and_b16 v8.l, v8.l, 15
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 306 27                        ; attention_backward.py:306:27
	v_cndmask_b32_e32 v68, v68, v69, vcc_lo
	.loc	1 307 37                        ; attention_backward.py:307:37
	v_cmp_gt_i16_e32 vcc_lo, 0, v14.l
	.loc	1 307 52 is_stmt 0              ; attention_backward.py:307:52
	v_or_b32_e32 v69, -16, v8
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 311 21 is_stmt 1              ; attention_backward.py:311:21
	v_cvt_f32_i32_e32 v68, v68
	.loc	1 307 28                        ; attention_backward.py:307:28
	v_cndmask_b32_e32 v14, v8, v69, vcc_lo
	.loc	1 305 30                        ; attention_backward.py:305:30
	v_lshrrev_b16 v8.l, 4, v67.l
	.loc	1 307 37                        ; attention_backward.py:307:37
	v_cmp_gt_i16_e32 vcc_lo, 0, v67.l
	.loc	1 290 33                        ; attention_backward.py:290:33
	v_mov_b16_e32 v67.l, v77.l
	.loc	1 311 21                        ; attention_backward.py:311:21
	v_cvt_f32_i32_e32 v65, v65
	v_cvt_f32_i32_e32 v14, v14
	.loc	1 305 30                        ; attention_backward.py:305:30
	v_and_b16 v8.l, v8.l, 15
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 311 21                        ; attention_backward.py:311:21
	v_mul_f32_e32 v65, v65, v67
	v_mul_f32_e32 v14, v14, v67
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 307 52                        ; attention_backward.py:307:52
	v_or_b32_e32 v69, -16, v8
	.loc	1 290 33                        ; attention_backward.py:290:33
	v_mov_b16_e64 v67.h, v217.l
	.loc	1 309 31                        ; attention_backward.py:309:31
	v_cndmask_b32_e64 v65, 0, v65, s0
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cndmask_b32_e64 v14, 0, v14, s1
	.loc	1 307 28                        ; attention_backward.py:307:28
	v_cndmask_b32_e32 v8, v8, v69, vcc_lo
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 311 21                        ; attention_backward.py:311:21
	v_mul_f32_e32 v68, v68, v67
	.loc	1 309 31                        ; attention_backward.py:309:31
	v_cmp_o_f32_e32 vcc_lo, v65, v65
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cmp_o_f32_e64 s13, v14, v14
	.loc	1 311 21                        ; attention_backward.py:311:21
	v_cvt_f32_i32_e32 v8, v8
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_mul_f32_e32 v8, v8, v67
	.loc	1 309 31                        ; attention_backward.py:309:31
	v_bfe_u32 v67, v65, 16, 1
	v_cndmask_b32_e64 v8, 0, v8, s1
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_add3_u32 v67, v65, v67, 0x7fff
	v_bfe_u32 v65, v14, 16, 1
	v_cmp_o_f32_e64 s15, v8, v8
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add3_u32 v65, v14, v65, 0x7fff
	v_cndmask_b32_e64 v14, 0, v68, s0
	v_bfe_u32 v68, v14, 16, 1
	v_cmp_o_f32_e64 s14, v14, v14
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add3_u32 v68, v14, v68, 0x7fff
	v_bfe_u32 v14, v8, 16, 1
	v_add3_u32 v14, v8, v14, 0x7fff
	v_cndmask_b16 v8.l, 0x7fff, v67.h, vcc_lo
	v_cndmask_b16 v8.h, 0x7fff, v65.h, s13
	v_cndmask_b16 v14.l, 0x7fff, v68.h, s14
	s_delay_alu instid0(VALU_DEP_4)
	v_cndmask_b16 v14.h, 0x7fff, v14.h, s15
	ds_store_2addr_stride64_b32 v15, v16, v13 offset0:4 offset1:5
	ds_store_2addr_stride64_b32 v15, v8, v14 offset0:6 offset1:7
	.loc	1 290 33                        ; attention_backward.py:290:33
	v_mov_b16_e64 v8.h, v215.l
	v_mov_b16_e32 v8.l, v77.l
	.loc	1 309 31                        ; attention_backward.py:309:31
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 345 58                        ; attention_backward.py:345:58
	v_fma_f32 v8, v9, v8, -v162
	.loc	1 290 33                        ; attention_backward.py:290:33
	v_mov_b16_e64 v9.h, v214.l
	v_mov_b16_e32 v9.l, v77.l
	.loc	1 345 58                        ; attention_backward.py:345:58
	v_fma_f32 v9, v10, v9, -v162
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 345 45 is_stmt 0              ; attention_backward.py:345:45
	v_exp_f32_e32 v10, v8
	.loc	1 340 21 is_stmt 1              ; attention_backward.py:340:21
	v_and_b16 v8.l, 1, v124.l
	.loc	1 345 45                        ; attention_backward.py:345:45
	v_exp_f32_e32 v9, v9
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	.loc	1 340 21                        ; attention_backward.py:340:21
	v_cmp_eq_u16_e32 vcc_lo, 1, v8.l
	.loc	1 345 29                        ; attention_backward.py:345:29
	v_cndmask_b32_e32 v8, 0, v10, vcc_lo
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 396 26                        ; attention_backward.py:396:26
	v_mul_f32_e32 v10, v8, v11
	.loc	1 340 21                        ; attention_backward.py:340:21
	v_and_b16 v8.l, 1, v124.h
	v_cmp_eq_u16_e32 vcc_lo, 1, v8.l
	s_delay_alu instid0(TRANS32_DEP_1) | instid1(VALU_DEP_3)
	.loc	1 345 29                        ; attention_backward.py:345:29
	v_dual_cndmask_b32 v8, 0, v9 :: v_dual_mul_f32 v9, s48, v10
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 396 26                        ; attention_backward.py:396:26
	v_mul_f32_e32 v8, v8, v12
	.loc	1 397 33                        ; attention_backward.py:397:33
	v_bfe_u32 v10, v9, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v9, v9
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 397 34 is_stmt 0              ; attention_backward.py:397:34
	v_mul_f32_e32 v8, s48, v8
	.loc	1 397 33                        ; attention_backward.py:397:33
	v_add3_u32 v10, v9, v10, 0x7fff
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_bfe_u32 v9, v8, 16, 1
	v_cmp_o_f32_e64 s13, v8, v8
	v_add3_u32 v9, v8, v9, 0x7fff
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_cndmask_b16 v8.l, 0x7fff, v10.h, vcc_lo
	.loc	1 299 21 is_stmt 1              ; attention_backward.py:299:21
	v_mul_f32_e32 v10, v142, v75
	.loc	1 397 33                        ; attention_backward.py:397:33
	v_cndmask_b16 v8.h, 0x7fff, v9.h, s13
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_permlanex16_b32 v9, v8, s50, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v67, v9, v8, v163
	v_perm_b32 v68, v9, v8, v168
	.loc	1 290 33                        ; attention_backward.py:290:33
	v_mov_b16_e64 v8.h, v212.l
	v_mov_b16_e32 v8.l, v77.l
	.loc	1 299 21                        ; attention_backward.py:299:21
	v_mul_f32_e32 v9, v142, v231
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 345 58                        ; attention_backward.py:345:58
	v_fma_f32 v8, v9, v8, -v162
	.loc	1 290 33                        ; attention_backward.py:290:33
	v_mov_b16_e64 v9.h, v211.l
	v_mov_b16_e32 v9.l, v77.l
	.loc	1 345 58                        ; attention_backward.py:345:58
	v_fma_f32 v9, v10, v9, -v162
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 345 45 is_stmt 0              ; attention_backward.py:345:45
	v_exp_f32_e32 v10, v8
	.loc	1 340 21 is_stmt 1              ; attention_backward.py:340:21
	v_and_b16 v8.l, 1, v83.h
	.loc	1 345 45                        ; attention_backward.py:345:45
	v_exp_f32_e32 v9, v9
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	.loc	1 340 21                        ; attention_backward.py:340:21
	v_cmp_eq_u16_e32 vcc_lo, 1, v8.l
	.loc	1 345 29                        ; attention_backward.py:345:29
	v_cndmask_b32_e32 v8, 0, v10, vcc_lo
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 396 26                        ; attention_backward.py:396:26
	v_mul_f32_e32 v10, v8, v76
	.loc	1 340 21                        ; attention_backward.py:340:21
	v_and_b16 v8.l, 1, v83.l
	v_cmp_eq_u16_e32 vcc_lo, 1, v8.l
	s_delay_alu instid0(TRANS32_DEP_1) | instid1(VALU_DEP_3)
	.loc	1 345 29                        ; attention_backward.py:345:29
	v_dual_cndmask_b32 v8, 0, v9 :: v_dual_mul_f32 v9, s48, v10
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 396 26                        ; attention_backward.py:396:26
	v_mul_f32_e32 v8, v8, v74
	.loc	1 397 33                        ; attention_backward.py:397:33
	v_bfe_u32 v10, v9, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v9, v9
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 397 34 is_stmt 0              ; attention_backward.py:397:34
	v_mul_f32_e32 v8, s48, v8
	.loc	1 397 33                        ; attention_backward.py:397:33
	v_add3_u32 v10, v9, v10, 0x7fff
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_bfe_u32 v9, v8, 16, 1
	v_cmp_o_f32_e64 s13, v8, v8
	v_add3_u32 v9, v8, v9, 0x7fff
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b16 v8.l, 0x7fff, v10.h, vcc_lo
	v_cndmask_b16 v8.h, 0x7fff, v9.h, s13
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_permlanex16_b32 v9, v8, s50, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v69, v9, v8, v163
	v_perm_b32 v70, v9, v8, v168
	.loc	1 290 33 is_stmt 1              ; attention_backward.py:290:33
	v_mov_b16_e64 v8.h, v210.l
	v_mov_b16_e32 v8.l, v77.l
	.loc	1 299 21                        ; attention_backward.py:299:21
	v_mul_f32_e32 v9, v142, v73
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 345 58                        ; attention_backward.py:345:58
	v_fma_f32 v8, v9, v8, -v162
	.loc	1 290 33                        ; attention_backward.py:290:33
	v_mov_b16_e64 v9.h, v209.l
	v_mov_b16_e32 v9.l, v77.l
	.loc	1 345 45                        ; attention_backward.py:345:45
	v_exp_f32_e32 v8, v8
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 345 58 is_stmt 0              ; attention_backward.py:345:58
	v_fma_f32 v9, v6, v9, -v162
	.loc	1 340 21 is_stmt 1              ; attention_backward.py:340:21
	v_and_b16 v6.l, 1, v82.l
	v_cmp_eq_u16_e32 vcc_lo, 1, v6.l
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 345 29                        ; attention_backward.py:345:29
	v_cndmask_b32_e32 v6, 0, v8, vcc_lo
	.loc	1 345 45 is_stmt 0              ; attention_backward.py:345:45
	v_exp_f32_e32 v8, v9
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 396 26 is_stmt 1              ; attention_backward.py:396:26
	v_mul_f32_e32 v7, v6, v7
	.loc	1 340 21                        ; attention_backward.py:340:21
	v_and_b16 v6.l, 1, v82.h
	v_cmp_eq_u16_e32 vcc_lo, 1, v6.l
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 345 29                        ; attention_backward.py:345:29
	v_cndmask_b32_e32 v6, 0, v8, vcc_lo
	.loc	1 396 26                        ; attention_backward.py:396:26
	v_dual_mul_f32 v5, v6, v5 :: v_dual_mul_f32 v6, s48, v7
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 397 34                        ; attention_backward.py:397:34
	v_mul_f32_e32 v5, s48, v5
	.loc	1 397 33 is_stmt 0              ; attention_backward.py:397:33
	v_bfe_u32 v7, v6, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v6, v6
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cmp_o_f32_e64 s13, v5, v5
	v_add3_u32 v7, v6, v7, 0x7fff
	v_bfe_u32 v6, v5, 16, 1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_add3_u32 v6, v5, v6, 0x7fff
	v_cndmask_b16 v5.l, 0x7fff, v7.h, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_cndmask_b16 v5.h, 0x7fff, v6.h, s13
	v_permlanex16_b32 v6, v5, s50, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	v_perm_b32 v71, v6, v5, v163
	v_perm_b32 v72, v6, v5, v168
	.loc	1 290 33 is_stmt 1              ; attention_backward.py:290:33
	v_mov_b16_e64 v5.h, v208.l
	v_mov_b16_e32 v5.l, v77.l
	.loc	1 345 58                        ; attention_backward.py:345:58
	v_fma_f32 v3, v3, v5, -v162
	v_fma_f32 v5, v2, v77, -v162
	.loc	1 309 31                        ; attention_backward.py:309:31
	ds_load_u16_d16 v77, v170 offset:608
	ds_load_u16_d16 v76, v170 offset:352
	ds_load_u16_d16 v209, v170 offset:512
	ds_load_u16_d16 v210, v170 offset:768
	ds_load_u16_d16 v208, v170 offset:256
	ds_load_u16_d16 v217, v170 offset:576
	ds_load_u16_d16 v218, v170 offset:832
	ds_load_u16_d16 v211, v170 offset:1024
	ds_load_u16_d16 v219, v170 offset:1088
	ds_load_u16_d16 v212, v170 offset:1280
	ds_load_u16_d16 v220, v170 offset:1344
	ds_load_u16_d16 v213, v170 offset:1536
	ds_load_u16_d16 v221, v170 offset:1600
	ds_load_u16_d16 v214, v170 offset:1792
	ds_load_u16_d16 v207, v170
	ds_load_u16_d16 v224, v170 offset:288
	ds_load_u16_d16 v223, v170 offset:32
	ds_load_u16_d16 v215, v170 offset:64
	ds_load_u16_d16 v216, v170 offset:320
	.loc	1 340 21                        ; attention_backward.py:340:21
	v_and_b16 v2.l, 1, v81.h
	.loc	1 309 31                        ; attention_backward.py:309:31
	s_waitcnt lgkmcnt(17)
	ds_load_u16_d16_hi v76, v170 offset:480
	ds_load_u16_d16 v75, v170 offset:96
	s_waitcnt lgkmcnt(18)
	ds_load_u16_d16_hi v209, v170 offset:640
	s_waitcnt lgkmcnt(17)
	ds_load_u16_d16_hi v208, v170 offset:384
	s_waitcnt lgkmcnt(17)
	ds_load_u16_d16_hi v217, v170 offset:704
	ds_load_u16_d16_hi v210, v170 offset:896
	s_waitcnt lgkmcnt(18)
	ds_load_u16_d16_hi v218, v170 offset:960
	s_waitcnt lgkmcnt(18)
	ds_load_u16_d16_hi v211, v170 offset:1152
	s_waitcnt lgkmcnt(18)
	ds_load_u16_d16_hi v219, v170 offset:1216
	s_waitcnt lgkmcnt(18)
	ds_load_u16_d16_hi v212, v170 offset:1408
	s_waitcnt lgkmcnt(18)
	ds_load_u16_d16_hi v220, v170 offset:1472
	s_waitcnt lgkmcnt(18)
	ds_load_u16_d16_hi v213, v170 offset:1664
	ds_load_u16_d16 v222, v170 offset:1856
	s_waitcnt lgkmcnt(19)
	ds_load_u16_d16_hi v221, v170 offset:1728
	s_waitcnt lgkmcnt(19)
	ds_load_u16_d16_hi v214, v170 offset:1920
	s_waitcnt lgkmcnt(19)
	ds_load_u16_d16_hi v207, v170 offset:128
	s_waitcnt lgkmcnt(18)
	ds_load_u16_d16_hi v223, v170 offset:160
	s_waitcnt lgkmcnt(18)
	ds_load_u16_d16_hi v215, v170 offset:192
	.loc	1 345 45                        ; attention_backward.py:345:45
	v_exp_f32_e32 v3, v3
	.loc	1 340 21                        ; attention_backward.py:340:21
	v_cmp_eq_u16_e32 vcc_lo, 1, v2.l
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 345 29                        ; attention_backward.py:345:29
	v_cndmask_b32_e32 v2, 0, v3, vcc_lo
	.loc	1 396 26                        ; attention_backward.py:396:26
	v_mul_f32_e32 v3, v2, v4
	.loc	1 345 45                        ; attention_backward.py:345:45
	v_exp_f32_e32 v4, v5
	.loc	1 340 21                        ; attention_backward.py:340:21
	v_and_b16 v2.l, 1, v81.l
	.loc	1 309 31                        ; attention_backward.py:309:31
	s_waitcnt lgkmcnt(16)
	ds_load_u16_d16_hi v75, v170 offset:224
	ds_load_u16_d16 v225, v170 offset:544
	ds_load_u16_d16_hi v224, v170 offset:416
	ds_load_u16_d16_hi v216, v170 offset:448
	ds_load_u16_d16 v78, v170 offset:864
	ds_load_u16_d16 v79, v170 offset:1120
	ds_load_u16_d16 v80, v170 offset:1376
	ds_load_u16_d16 v81, v170 offset:1632
	s_waitcnt lgkmcnt(13)
	ds_load_u16_d16_hi v222, v170 offset:1984
	ds_load_u16_d16 v82, v170 offset:1888
	ds_load_u16_d16 v226, v170 offset:800
	ds_load_u16_d16 v227, v170 offset:1056
	ds_load_u16_d16 v228, v170 offset:1312
	ds_load_u16_d16 v229, v170 offset:1568
	ds_load_u16_d16 v230, v170 offset:1824
	s_waitcnt lgkmcnt(13)
	ds_load_u16_d16_hi v225, v170 offset:672
	ds_load_u16_d16_hi v77, v170 offset:736
	.loc	1 340 21                        ; attention_backward.py:340:21
	v_cmp_eq_u16_e32 vcc_lo, 1, v2.l
	.loc	1 397 34                        ; attention_backward.py:397:34
	v_mul_f32_e32 v3, s48, v3
	.loc	1 309 31                        ; attention_backward.py:309:31
	s_waitcnt lgkmcnt(6)
	ds_load_u16_d16_hi v226, v170 offset:928
	ds_load_u16_d16_hi v78, v170 offset:992
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v227, v170 offset:1184
	ds_load_u16_d16_hi v79, v170 offset:1248
	s_waitcnt lgkmcnt(8)
	ds_load_u16_d16_hi v228, v170 offset:1440
	ds_load_u16_d16_hi v80, v170 offset:1504
	s_waitcnt lgkmcnt(9)
	ds_load_u16_d16_hi v229, v170 offset:1696
	ds_load_u16_d16_hi v81, v170 offset:1760
	s_waitcnt lgkmcnt(10)
	ds_load_u16_d16_hi v230, v170 offset:1952
	ds_load_u16_d16_hi v82, v170 offset:2016
	.loc	1 345 29                        ; attention_backward.py:345:29
	v_cndmask_b32_e32 v2, 0, v4, vcc_lo
	.loc	1 397 33                        ; attention_backward.py:397:33
	v_bfe_u32 v4, v3, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v3, v3
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 396 26                        ; attention_backward.py:396:26
	v_mul_f32_e32 v2, v2, v66
	.loc	1 397 33                        ; attention_backward.py:397:33
	v_add3_u32 v4, v3, v4, 0x7fff
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 397 34 is_stmt 0              ; attention_backward.py:397:34
	v_mul_f32_e32 v2, s48, v2
	.loc	1 397 33                        ; attention_backward.py:397:33
	v_bfe_u32 v3, v2, 16, 1
	v_cmp_o_f32_e64 s13, v2, v2
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_add3_u32 v3, v2, v3, 0x7fff
	v_cndmask_b16 v2.l, 0x7fff, v4.h, vcc_lo
	v_cndmask_b16 v2.h, 0x7fff, v3.h, s13
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_permlanex16_b32 v3, v2, s50, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v73, v3, v2, v163
	v_perm_b32 v74, v3, v2, v168
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 398 31 is_stmt 1              ; attention_backward.py:398:31
	v_wmma_f32_16x16x16_bf16 v[57:64], v[207:214], v[67:74], v[57:64]
	s_waitcnt lgkmcnt(1)
	v_wmma_f32_16x16x16_bf16 v[49:56], v[223:230], v[67:74], v[49:56]
	v_wmma_f32_16x16x16_bf16 v[41:48], v[215:222], v[67:74], v[41:48]
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[33:40], v[75:82], v[67:74], v[33:40]
	s_cbranch_scc0 .LBB0_51
.LBB0_31:                               ; =>This Inner Loop Header: Depth=1
	.loc	1 271 27                        ; attention_backward.py:271:27
	v_or_b32_e32 v3, 2, v106
	v_or_b32_e32 v4, 4, v106
	v_or_b32_e32 v2, s28, v106
	v_or_b32_e32 v5, 6, v106
	v_or_b32_e32 v6, 8, v106
	v_or_b32_e32 v8, 10, v106
	v_or_b32_e32 v9, 12, v106
	v_or_b32_e32 v3, s28, v3
	v_or_b32_e32 v10, s28, v113
	.loc	1 275 21                        ; attention_backward.py:275:21
	s_add_i32 s51, s28, s29
	.loc	1 271 27                        ; attention_backward.py:271:27
	v_or_b32_e32 v4, s28, v4
	v_or_b32_e32 v5, s28, v5
	v_or_b32_e32 v6, s28, v6
	.loc	1 291 21                        ; attention_backward.py:291:21
	v_add_lshl_u32 v7, s51, v106, 1
	.loc	1 271 27                        ; attention_backward.py:271:27
	v_or_b32_e32 v8, s28, v8
	v_or_b32_e32 v9, s28, v9
	.loc	1 277 24                        ; attention_backward.py:277:24
	v_cmp_gt_i32_e32 vcc_lo, s31, v2
	.loc	1 275 21                        ; attention_backward.py:275:21
	s_mul_i32 s20, s51, s34
	.loc	1 277 24                        ; attention_backward.py:277:24
	v_cmp_gt_i32_e64 s13, s31, v3
	v_cmp_gt_i32_e64 s19, s31, v10
	.loc	1 275 21                        ; attention_backward.py:275:21
	v_add_nc_u32_e32 v10, s20, v84
	.loc	1 277 24                        ; attention_backward.py:277:24
	v_cmp_gt_i32_e64 s14, s31, v4
	.loc	1 275 21                        ; attention_backward.py:275:21
	v_add_nc_u32_e32 v11, s20, v114
	.loc	1 290 33                        ; attention_backward.py:290:33
	v_add_nc_u32_e32 v3, 8, v7
	.loc	1 277 24                        ; attention_backward.py:277:24
	v_cmp_gt_i32_e64 s15, s31, v5
	v_cmp_gt_i32_e64 s16, s31, v6
	.loc	1 290 33                        ; attention_backward.py:290:33
	v_add_nc_u32_e32 v6, 20, v7
	.loc	1 277 24                        ; attention_backward.py:277:24
	v_cmp_gt_i32_e64 s17, s31, v8
	.loc	1 290 33                        ; attention_backward.py:290:33
	v_add_nc_u32_e32 v8, 24, v7
	.loc	1 277 24                        ; attention_backward.py:277:24
	v_cmp_gt_i32_e64 s18, s31, v9
	.loc	1 275 21                        ; attention_backward.py:275:21
	v_add_nc_u32_e32 v12, s20, v115
	.loc	1 290 33                        ; attention_backward.py:290:33
	v_add_nc_u32_e32 v5, 16, v7
	.loc	1 275 21                        ; attention_backward.py:275:21
	v_add_nc_u32_e32 v13, s20, v85
	.loc	1 290 33                        ; attention_backward.py:290:33
	v_add_nc_u32_e32 v2, 4, v7
	.loc	1 275 21                        ; attention_backward.py:275:21
	v_add_nc_u32_e32 v14, s20, v116
	.loc	1 290 33                        ; attention_backward.py:290:33
	v_add_nc_u32_e32 v9, 28, v7
	.loc	1 275 21                        ; attention_backward.py:275:21
	v_add_nc_u32_e32 v16, s20, v87
	v_add_nc_u32_e32 v65, s20, v88
	.loc	1 290 33                        ; attention_backward.py:290:33
	v_add_nc_u32_e32 v4, 12, v7
	v_cndmask_b32_e32 v7, 0x80000000, v7, vcc_lo
	.loc	1 276 26                        ; attention_backward.py:276:26
	s_and_b32 vcc_lo, s2, vcc_lo
	.loc	1 275 21                        ; attention_backward.py:275:21
	v_add_nc_u32_e32 v15, s20, v86
	.loc	1 274 28                        ; attention_backward.py:274:28
	v_cndmask_b32_e32 v10, 0x80000000, v10, vcc_lo
	.loc	1 276 26                        ; attention_backward.py:276:26
	s_and_b32 vcc_lo, s2, s13
	.loc	1 271 27                        ; attention_backward.py:271:27
	v_or_b32_e32 v66, s28, v125
	.loc	1 274 28                        ; attention_backward.py:274:28
	v_cndmask_b32_e32 v11, 0x80000000, v11, vcc_lo
	.loc	1 276 26                        ; attention_backward.py:276:26
	s_and_b32 vcc_lo, s2, s14
	.loc	1 290 33                        ; attention_backward.py:290:33
	v_cndmask_b32_e64 v3, 0x80000000, v3, s14
	.loc	1 274 28                        ; attention_backward.py:274:28
	v_cndmask_b32_e32 v12, 0x80000000, v12, vcc_lo
	.loc	1 276 26                        ; attention_backward.py:276:26
	s_and_b32 vcc_lo, s2, s15
	.loc	1 290 33                        ; attention_backward.py:290:33
	v_cndmask_b32_e64 v5, 0x80000000, v5, s16
	.loc	1 274 28                        ; attention_backward.py:274:28
	v_cndmask_b32_e32 v13, 0x80000000, v13, vcc_lo
	.loc	1 276 26                        ; attention_backward.py:276:26
	s_and_b32 vcc_lo, s2, s16
	.loc	1 290 33                        ; attention_backward.py:290:33
	v_cndmask_b32_e64 v2, 0x80000000, v2, s13
	.loc	1 274 28                        ; attention_backward.py:274:28
	v_cndmask_b32_e32 v14, 0x80000000, v14, vcc_lo
	.loc	1 276 26                        ; attention_backward.py:276:26
	s_and_b32 vcc_lo, s2, s17
	.loc	1 290 33                        ; attention_backward.py:290:33
	v_cndmask_b32_e64 v9, 0x80000000, v9, s19
	.loc	1 274 28                        ; attention_backward.py:274:28
	v_cndmask_b32_e32 v15, 0x80000000, v15, vcc_lo
	.loc	1 276 26                        ; attention_backward.py:276:26
	s_and_b32 vcc_lo, s2, s18
	.loc	1 274 28                        ; attention_backward.py:274:28
	v_cndmask_b32_e32 v16, 0x80000000, v16, vcc_lo
	.loc	1 276 26                        ; attention_backward.py:276:26
	s_and_b32 vcc_lo, s2, s19
	.loc	1 274 28                        ; attention_backward.py:274:28
	v_cndmask_b32_e32 v65, 0x80000000, v65, vcc_lo
	s_clause 0x7
	buffer_load_u8 v229, v10, s[40:43], 0 offen
	buffer_load_u8 v230, v11, s[40:43], 0 offen
	buffer_load_u8 v224, v12, s[40:43], 0 offen
	buffer_load_u8 v223, v13, s[40:43], 0 offen
	buffer_load_u8 v220, v14, s[40:43], 0 offen
	buffer_load_u8 v219, v15, s[40:43], 0 offen
	buffer_load_u8 v216, v16, s[40:43], 0 offen
	buffer_load_u8 v213, v65, s[40:43], 0 offen
	.loc	1 271 27                        ; attention_backward.py:271:27
	v_or_b32_e32 v10, s28, v131
	v_or_b32_e32 v11, s28, v132
	.loc	1 291 21                        ; attention_backward.py:291:21
	v_add_lshl_u32 v15, s51, v131, 1
	.loc	1 271 27                        ; attention_backward.py:271:27
	v_or_b32_e32 v12, s28, v130
	v_or_b32_e32 v13, s28, v129
	.loc	1 292 26                        ; attention_backward.py:292:26
	v_cmp_gt_i32_e32 vcc_lo, s31, v10
	.loc	1 271 27                        ; attention_backward.py:271:27
	v_or_b32_e32 v14, s28, v128
	.loc	1 290 33                        ; attention_backward.py:290:33
	v_add_nc_u32_e32 v67, 4, v15
	v_add_nc_u32_e32 v68, 8, v15
	v_add_nc_u32_e32 v69, 12, v15
	v_cndmask_b32_e32 v10, 0x80000000, v15, vcc_lo
	.loc	1 292 26                        ; attention_backward.py:292:26
	v_cmp_gt_i32_e32 vcc_lo, s31, v11
	.loc	1 271 27                        ; attention_backward.py:271:27
	v_or_b32_e32 v16, s28, v127
	.loc	1 290 33                        ; attention_backward.py:290:33
	v_add_nc_u32_e32 v70, 16, v15
	.loc	1 271 27                        ; attention_backward.py:271:27
	v_or_b32_e32 v65, s28, v126
	.loc	1 290 33                        ; attention_backward.py:290:33
	v_add_nc_u32_e32 v71, 20, v15
	v_cndmask_b32_e32 v11, 0x80000000, v67, vcc_lo
	.loc	1 292 26                        ; attention_backward.py:292:26
	v_cmp_gt_i32_e32 vcc_lo, s31, v12
	.loc	1 290 33                        ; attention_backward.py:290:33
	v_add_nc_u32_e32 v72, 24, v15
	v_add_nc_u32_e32 v15, 28, v15
	v_cndmask_b32_e64 v4, 0x80000000, v4, s15
	.loc	1 274 28                        ; attention_backward.py:274:28
	s_waitcnt lgkmcnt(0)
	.loc	1 290 33                        ; attention_backward.py:290:33
	v_cndmask_b32_e32 v12, 0x80000000, v68, vcc_lo
	.loc	1 292 26                        ; attention_backward.py:292:26
	v_cmp_gt_i32_e32 vcc_lo, s31, v13
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
	v_cndmask_b32_e32 v13, 0x80000000, v69, vcc_lo
	.loc	1 292 26                        ; attention_backward.py:292:26
	v_cmp_gt_i32_e32 vcc_lo, s31, v14
	.loc	1 290 33                        ; attention_backward.py:290:33
	v_cndmask_b32_e64 v6, 0x80000000, v6, s17
	.loc	1 274 28                        ; attention_backward.py:274:28
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 290 33                        ; attention_backward.py:290:33
	v_cndmask_b32_e32 v14, 0x80000000, v70, vcc_lo
	.loc	1 292 26                        ; attention_backward.py:292:26
	v_cmp_gt_i32_e32 vcc_lo, s31, v16
	.loc	1 290 33                        ; attention_backward.py:290:33
	v_cndmask_b32_e32 v16, 0x80000000, v71, vcc_lo
	.loc	1 292 26                        ; attention_backward.py:292:26
	v_cmp_gt_i32_e32 vcc_lo, s31, v65
	.loc	1 290 33                        ; attention_backward.py:290:33
	v_cndmask_b32_e32 v65, 0x80000000, v72, vcc_lo
	.loc	1 292 26                        ; attention_backward.py:292:26
	v_cmp_gt_i32_e32 vcc_lo, s31, v66
	.loc	1 290 33                        ; attention_backward.py:290:33
	v_cndmask_b32_e64 v8, 0x80000000, v8, s18
	.loc	1 274 28                        ; attention_backward.py:274:28
	ds_load_b64 v[69:70], v165
	ds_load_b64 v[71:72], v166
	.loc	1 290 33                        ; attention_backward.py:290:33
	v_cndmask_b32_e32 v15, 0x80000000, v15, vcc_lo
	s_clause 0xf
	buffer_load_u16 v228, v7, s[44:47], 0 offen
	buffer_load_u16 v227, v2, s[44:47], 0 offen
	buffer_load_u16 v226, v3, s[44:47], 0 offen
	buffer_load_u16 v225, v4, s[44:47], 0 offen
	buffer_load_u16 v222, v5, s[44:47], 0 offen
	buffer_load_u16 v221, v6, s[44:47], 0 offen
	buffer_load_u16 v218, v8, s[44:47], 0 offen
	buffer_load_u16 v217, v9, s[44:47], 0 offen
	buffer_load_u16 v215, v10, s[44:47], 0 offen
	buffer_load_u16 v214, v11, s[44:47], 0 offen
	buffer_load_u16 v212, v12, s[44:47], 0 offen
	buffer_load_u16 v211, v13, s[44:47], 0 offen
	buffer_load_u16 v210, v14, s[44:47], 0 offen
	buffer_load_u16 v209, v16, s[44:47], 0 offen
	buffer_load_u16 v208, v65, s[44:47], 0 offen
	buffer_load_u16 v207, v15, s[44:47], 0 offen
	.loc	1 274 28                        ; attention_backward.py:274:28
	v_add_nc_u32_e32 v2, 0, v143
	ds_load_b64 v[65:66], v2
	ds_load_b64 v[67:68], v164
	.loc	1 280 29                        ; attention_backward.py:280:29
	v_mov_b32_e32 v8, v1
	v_mov_b32_e32 v2, v1
	v_mov_b32_e32 v3, v1
	v_mov_b32_e32 v4, v1
	v_mov_b32_e32 v5, v1
	v_mov_b32_e32 v6, v1
	v_mov_b32_e32 v7, v1
	v_mov_b32_e32 v80, v8
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_mov_b32 v76, v4 :: v_dual_mov_b32 v77, v5
	v_dual_mov_b32 v78, v6 :: v_dual_mov_b32 v79, v7
	v_dual_mov_b32 v75, v3 :: v_dual_mov_b32 v74, v2
	v_mov_b32_e32 v73, v1
	.loc	1 326 13                        ; attention_backward.py:326:13
	v_cmp_ne_u32_e32 vcc_lo, 1, v133
	.loc	1 280 29                        ; attention_backward.py:280:29
	s_waitcnt lgkmcnt(1)
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	v_wmma_i32_16x16x16_iu4 v[73:80], v[65:66], v[89:90], v[73:80] neg_lo:[1,1,0]
	.loc	1 271 27                        ; attention_backward.py:271:27
	v_or_b32_e32 v66, s28, v121
	.loc	1 326 13                        ; attention_backward.py:326:13
	s_and_b32 vcc_lo, exec_lo, vcc_lo
	.loc	1 280 29                        ; attention_backward.py:280:29
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[73:80], v[67:68], v[91:92], v[73:80] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 277 24                        ; attention_backward.py:277:24
	v_cmp_gt_i32_e64 s13, s31, v66
	.loc	1 280 29                        ; attention_backward.py:280:29
	v_wmma_i32_16x16x16_iu4 v[73:80], v[69:70], v[93:94], v[73:80] neg_lo:[1,1,0]
	.loc	1 324 21                        ; attention_backward.py:324:21
	s_and_b32 s62, s5, s13
	s_and_b32 s60, s6, s13
	s_and_b32 s57, s7, s13
	s_and_b32 s56, s8, s13
	.loc	1 280 29                        ; attention_backward.py:280:29
	v_wmma_i32_16x16x16_iu4 v[73:80], v[71:72], v[95:96], v[73:80] neg_lo:[1,1,0]
	.loc	1 324 21                        ; attention_backward.py:324:21
	s_and_b32 s63, s9, s13
	s_and_b32 s61, s10, s13
	s_and_b32 s59, s11, s13
	s_and_b32 s58, s12, s13
	s_cbranch_vccnz .LBB0_33
; %bb.32:                               ;   in Loop: Header=BB0_31 Depth=1
	.loc	1 327 26                        ; attention_backward.py:327:26
	v_cmp_le_i32_e32 vcc_lo, v66, v134
	v_cmp_le_i32_e64 s13, v66, v135
	v_cmp_le_i32_e64 s14, v66, v136
	v_cmp_le_i32_e64 s15, v66, v137
	v_cmp_le_i32_e64 s16, v66, v138
	v_cmp_le_i32_e64 s17, v66, v139
	.loc	1 327 17 is_stmt 0              ; attention_backward.py:327:17
	s_and_b32 s20, vcc_lo, s62
	s_and_b32 s13, s13, s60
	.loc	1 327 26                        ; attention_backward.py:327:26
	v_cmp_le_i32_e64 s18, v66, v140
	v_cmp_le_i32_e64 s19, v66, v141
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
.LBB0_33:                               ;   in Loop: Header=BB0_31 Depth=1
	.loc	1 328 13 is_stmt 1              ; attention_backward.py:328:13
	s_and_not1_b32 vcc_lo, exec_lo, s33
	s_cbranch_vccnz .LBB0_35
; %bb.34:                               ;   in Loop: Header=BB0_31 Depth=1
	.loc	1 329 26                        ; attention_backward.py:329:26
	v_cmp_ge_i32_e32 vcc_lo, v66, v144
	v_cmp_ge_i32_e64 s13, v66, v145
	.loc	1 330 26                        ; attention_backward.py:330:26
	v_cmp_le_i32_e64 s20, v66, v152
	v_cmp_le_i32_e64 s21, v66, v153
	.loc	1 329 26                        ; attention_backward.py:329:26
	v_cmp_ge_i32_e64 s14, v66, v146
	v_cmp_ge_i32_e64 s15, v66, v147
	.loc	1 330 26                        ; attention_backward.py:330:26
	v_cmp_le_i32_e64 s22, v66, v154
	v_cmp_le_i32_e64 s23, v66, v155
	.loc	1 329 26                        ; attention_backward.py:329:26
	v_cmp_ge_i32_e64 s16, v66, v148
	v_cmp_ge_i32_e64 s17, v66, v149
	.loc	1 330 26                        ; attention_backward.py:330:26
	v_cmp_le_i32_e64 s24, v66, v156
	v_cmp_le_i32_e64 s25, v66, v157
	.loc	1 330 17 is_stmt 0              ; attention_backward.py:330:17
	s_and_b32 s20, vcc_lo, s20
	s_and_b32 s13, s13, s21
	.loc	1 329 26 is_stmt 1              ; attention_backward.py:329:26
	v_cmp_ge_i32_e64 s18, v66, v150
	v_cmp_ge_i32_e64 s19, v66, v151
	.loc	1 330 26                        ; attention_backward.py:330:26
	v_cmp_le_i32_e64 s26, v66, v158
	v_cmp_le_i32_e64 s27, v66, v159
	.loc	1 330 17 is_stmt 0              ; attention_backward.py:330:17
	s_and_b32 s20, s20, s62
	s_and_b32 s13, s13, s60
	s_and_b32 s14, s14, s22
	s_and_b32 s15, s15, s23
	s_and_b32 s14, s14, s57
	s_and_b32 s15, s15, s56
	s_and_b32 s16, s16, s24
	s_and_b32 s17, s17, s25
	s_and_not1_b32 s21, s62, exec_lo
	s_and_b32 s20, s20, exec_lo
	s_and_not1_b32 s22, s60, exec_lo
	s_and_b32 s13, s13, exec_lo
	s_and_b32 s16, s16, s63
	s_and_b32 s17, s17, s61
	s_and_b32 s18, s18, s26
	s_and_b32 s19, s19, s27
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
.LBB0_35:                               ;   in Loop: Header=BB0_31 Depth=1
	.loc	1 0 17                          ; attention_backward.py:0:17
	v_mov_b16_e32 v66.l, 0
	.loc	1 333 21 is_stmt 1              ; attention_backward.py:333:21
	s_mul_i32 s13, s28, s69
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	s_add_i32 s13, s30, s13
	v_mov_b16_e32 v69.l, v66.l
	.loc	1 340 30                        ; attention_backward.py:340:30
	s_and_saveexec_b32 s14, s62
	s_cbranch_execz .LBB0_37
; %bb.36:                               ;   in Loop: Header=BB0_31 Depth=1
	.loc	1 0 30 is_stmt 0                ; attention_backward.py:0:30
	v_add_nc_u32_e32 v2, s13, v104
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 340 30                        ; attention_backward.py:340:30
	v_ashrrev_i32_e32 v3, 31, v2
	v_add_co_u32 v2, vcc_lo, s38, v2
	v_add_co_ci_u32_e64 v3, null, s39, v3, vcc_lo
	global_load_d16_u8 v69, v[2:3], off
.LBB0_37:                               ;   in Loop: Header=BB0_31 Depth=1
	.loc	1 0 30                          ; attention_backward.py:0:30
	s_or_b32 exec_lo, exec_lo, s14
	.loc	1 340 30                        ; attention_backward.py:340:30
	s_and_saveexec_b32 s14, s60
	s_cbranch_execz .LBB0_39
; %bb.38:                               ;   in Loop: Header=BB0_31 Depth=1
	.loc	1 0 30                          ; attention_backward.py:0:30
	v_add_nc_u32_e32 v2, s13, v97
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 340 30                        ; attention_backward.py:340:30
	v_ashrrev_i32_e32 v3, 31, v2
	v_add_co_u32 v2, vcc_lo, s38, v2
	v_add_co_ci_u32_e64 v3, null, s39, v3, vcc_lo
	global_load_d16_u8 v66, v[2:3], off
.LBB0_39:                               ;   in Loop: Header=BB0_31 Depth=1
	.loc	1 0 30                          ; attention_backward.py:0:30
	s_or_b32 exec_lo, exec_lo, s14
	s_waitcnt vmcnt(0)
	v_mov_b16_e32 v66.h, 0
	s_delay_alu instid0(VALU_DEP_1)
	v_mov_b16_e32 v67.l, v66.h
	.loc	1 340 30                        ; attention_backward.py:340:30
	s_and_saveexec_b32 s14, s57
	s_cbranch_execz .LBB0_41
; %bb.40:                               ;   in Loop: Header=BB0_31 Depth=1
	.loc	1 0 30                          ; attention_backward.py:0:30
	v_add_nc_u32_e32 v2, s13, v98
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 340 30                        ; attention_backward.py:340:30
	v_ashrrev_i32_e32 v3, 31, v2
	v_add_co_u32 v2, vcc_lo, s38, v2
	v_add_co_ci_u32_e64 v3, null, s39, v3, vcc_lo
	global_load_d16_u8 v67, v[2:3], off
.LBB0_41:                               ;   in Loop: Header=BB0_31 Depth=1
	.loc	1 0 30                          ; attention_backward.py:0:30
	s_or_b32 exec_lo, exec_lo, s14
	.loc	1 340 30                        ; attention_backward.py:340:30
	s_and_saveexec_b32 s14, s56
	s_cbranch_execz .LBB0_43
; %bb.42:                               ;   in Loop: Header=BB0_31 Depth=1
	.loc	1 0 30                          ; attention_backward.py:0:30
	v_add_nc_u32_e32 v2, s13, v99
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 340 30                        ; attention_backward.py:340:30
	v_ashrrev_i32_e32 v3, 31, v2
	v_add_co_u32 v2, vcc_lo, s38, v2
	v_add_co_ci_u32_e64 v3, null, s39, v3, vcc_lo
	global_load_d16_hi_u8 v66, v[2:3], off
.LBB0_43:                               ;   in Loop: Header=BB0_31 Depth=1
	.loc	1 0 30                          ; attention_backward.py:0:30
	s_or_b32 exec_lo, exec_lo, s14
	s_waitcnt vmcnt(0)
	v_mov_b16_e32 v67.h, 0
	s_delay_alu instid0(VALU_DEP_1)
	v_mov_b16_e32 v69.h, v67.h
	.loc	1 340 30                        ; attention_backward.py:340:30
	s_and_saveexec_b32 s14, s63
	s_cbranch_execz .LBB0_45
; %bb.44:                               ;   in Loop: Header=BB0_31 Depth=1
	.loc	1 0 30                          ; attention_backward.py:0:30
	v_add_nc_u32_e32 v2, s13, v100
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 340 30                        ; attention_backward.py:340:30
	v_ashrrev_i32_e32 v3, 31, v2
	v_add_co_u32 v2, vcc_lo, s38, v2
	v_add_co_ci_u32_e64 v3, null, s39, v3, vcc_lo
	global_load_d16_hi_u8 v69, v[2:3], off
.LBB0_45:                               ;   in Loop: Header=BB0_31 Depth=1
	.loc	1 0 30                          ; attention_backward.py:0:30
	s_or_b32 exec_lo, exec_lo, s14
	.loc	1 340 30                        ; attention_backward.py:340:30
	s_and_saveexec_b32 s14, s61
	s_cbranch_execz .LBB0_47
; %bb.46:                               ;   in Loop: Header=BB0_31 Depth=1
	.loc	1 0 30                          ; attention_backward.py:0:30
	v_add_nc_u32_e32 v2, s13, v101
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 340 30                        ; attention_backward.py:340:30
	v_ashrrev_i32_e32 v3, 31, v2
	v_add_co_u32 v2, vcc_lo, s38, v2
	v_add_co_ci_u32_e64 v3, null, s39, v3, vcc_lo
	global_load_d16_hi_u8 v67, v[2:3], off
.LBB0_47:                               ;   in Loop: Header=BB0_31 Depth=1
	.loc	1 0 30                          ; attention_backward.py:0:30
	s_or_b32 exec_lo, exec_lo, s14
	v_mov_b16_e32 v68.l, 0
	s_delay_alu instid0(VALU_DEP_1)
	v_mov_b16_e32 v68.h, v68.l
	.loc	1 340 30                        ; attention_backward.py:340:30
	s_and_saveexec_b32 s14, s59
	s_cbranch_execz .LBB0_49
; %bb.48:                               ;   in Loop: Header=BB0_31 Depth=1
	.loc	1 0 30                          ; attention_backward.py:0:30
	v_add_nc_u32_e32 v2, s13, v102
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 340 30                        ; attention_backward.py:340:30
	v_ashrrev_i32_e32 v3, 31, v2
	v_add_co_u32 v2, vcc_lo, s38, v2
	v_add_co_ci_u32_e64 v3, null, s39, v3, vcc_lo
	global_load_d16_hi_u8 v68, v[2:3], off
.LBB0_49:                               ;   in Loop: Header=BB0_31 Depth=1
	.loc	1 0 30                          ; attention_backward.py:0:30
	s_or_b32 exec_lo, exec_lo, s14
	.loc	1 340 30                        ; attention_backward.py:340:30
	s_and_saveexec_b32 s14, s58
	s_cbranch_execz .LBB0_30
; %bb.50:                               ;   in Loop: Header=BB0_31 Depth=1
	.loc	1 0 30                          ; attention_backward.py:0:30
	v_add_nc_u32_e32 v2, s13, v103
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 340 30                        ; attention_backward.py:340:30
	v_ashrrev_i32_e32 v3, 31, v2
	v_add_co_u32 v2, vcc_lo, s38, v2
	v_add_co_ci_u32_e64 v3, null, s39, v3, vcc_lo
	global_load_d16_u8 v68, v[2:3], off
	s_branch .LBB0_30
.LBB0_51:                               ; %._crit_edge82
	.loc	1 401 13 is_stmt 1              ; attention_backward.py:401:13
	scratch_load_b32 v24, off, off offset:96 ; 4-byte Folded Reload
	.loc	1 408 40                        ; attention_backward.py:408:40
	v_cmp_gt_i32_e64 s1, s49, v131
	v_cmp_gt_i32_e64 s2, s49, v132
	v_cmp_gt_i32_e64 s3, s49, v130
	v_cmp_gt_i32_e64 s5, s49, v129
	.loc	1 405 9                         ; attention_backward.py:405:9
	s_and_b32 s37, s37, 0xffff
	.loc	1 408 18                        ; attention_backward.py:408:18
	s_and_b32 s1, s4, s1
	s_mov_b32 s39, 0x31027000
	s_mov_b32 s38, 0x7ffffffe
	.loc	1 408 40 is_stmt 0              ; attention_backward.py:408:40
	v_cmp_gt_i32_e64 s6, s49, v128
	v_cmp_gt_i32_e64 s7, s49, v127
	.loc	1 168 40 is_stmt 1              ; attention_backward.py:168:40
	v_or_b32_e32 v23, 16, v131
	.loc	1 408 40                        ; attention_backward.py:408:40
	v_cmp_gt_i32_e64 s8, s49, v126
	.loc	1 168 40                        ; attention_backward.py:168:40
	v_or_b32_e32 v22, 18, v131
	.loc	1 408 40                        ; attention_backward.py:408:40
	v_cmp_gt_i32_e64 s9, s49, v125
	.loc	1 168 40                        ; attention_backward.py:168:40
	v_or_b32_e32 v21, 20, v131
	.loc	1 408 40                        ; attention_backward.py:408:40
	v_cmp_gt_i32_e64 s10, s49, v23
	.loc	1 168 40                        ; attention_backward.py:168:40
	v_or_b32_e32 v20, 22, v131
	.loc	1 408 40                        ; attention_backward.py:408:40
	v_cmp_gt_i32_e64 s11, s49, v22
	.loc	1 168 40                        ; attention_backward.py:168:40
	v_or_b32_e32 v19, 24, v131
	.loc	1 408 40                        ; attention_backward.py:408:40
	v_cmp_gt_i32_e64 s12, s49, v21
	.loc	1 168 40                        ; attention_backward.py:168:40
	v_or_b32_e32 v18, 26, v131
	.loc	1 408 40                        ; attention_backward.py:408:40
	v_cmp_gt_i32_e64 s13, s49, v20
	.loc	1 168 40                        ; attention_backward.py:168:40
	v_or_b32_e32 v17, 28, v131
	.loc	1 408 40                        ; attention_backward.py:408:40
	v_cmp_gt_i32_e64 s14, s49, v19
	.loc	1 168 40                        ; attention_backward.py:168:40
	v_or_b32_e32 v16, 30, v131
	.loc	1 408 40                        ; attention_backward.py:408:40
	v_cmp_gt_i32_e64 s15, s49, v18
	.loc	1 168 40                        ; attention_backward.py:168:40
	v_or_b32_e32 v15, 32, v131
	.loc	1 408 40                        ; attention_backward.py:408:40
	v_cmp_gt_i32_e64 s16, s49, v17
	.loc	1 168 40                        ; attention_backward.py:168:40
	v_or_b32_e32 v14, 34, v131
	.loc	1 408 40                        ; attention_backward.py:408:40
	v_cmp_gt_i32_e64 s17, s49, v16
	.loc	1 168 40                        ; attention_backward.py:168:40
	v_or_b32_e32 v13, 36, v131
	.loc	1 408 40                        ; attention_backward.py:408:40
	v_cmp_gt_i32_e64 s18, s49, v15
	.loc	1 168 40                        ; attention_backward.py:168:40
	v_or_b32_e32 v12, 38, v131
	.loc	1 408 40                        ; attention_backward.py:408:40
	v_cmp_gt_i32_e64 s19, s49, v14
	.loc	1 168 40                        ; attention_backward.py:168:40
	v_or_b32_e32 v11, 40, v131
	.loc	1 408 40                        ; attention_backward.py:408:40
	v_cmp_gt_i32_e64 s20, s49, v13
	.loc	1 168 40                        ; attention_backward.py:168:40
	v_or_b32_e32 v10, 42, v131
	.loc	1 408 40                        ; attention_backward.py:408:40
	v_cmp_gt_i32_e64 s21, s49, v12
	.loc	1 168 40                        ; attention_backward.py:168:40
	v_or_b32_e32 v9, 44, v131
	.loc	1 408 40                        ; attention_backward.py:408:40
	v_cmp_gt_i32_e64 s22, s49, v11
	.loc	1 168 40                        ; attention_backward.py:168:40
	v_or_b32_e32 v8, 46, v131
	.loc	1 408 40                        ; attention_backward.py:408:40
	v_cmp_gt_i32_e64 s23, s49, v10
	.loc	1 168 40                        ; attention_backward.py:168:40
	v_or_b32_e32 v7, 48, v131
	.loc	1 408 40                        ; attention_backward.py:408:40
	v_cmp_gt_i32_e64 s24, s49, v9
	.loc	1 168 40                        ; attention_backward.py:168:40
	v_or_b32_e32 v6, 50, v131
	.loc	1 408 40                        ; attention_backward.py:408:40
	v_cmp_gt_i32_e64 s25, s49, v8
	.loc	1 168 40                        ; attention_backward.py:168:40
	v_or_b32_e32 v5, 52, v131
	.loc	1 408 40                        ; attention_backward.py:408:40
	v_cmp_gt_i32_e64 s26, s49, v7
	.loc	1 168 40                        ; attention_backward.py:168:40
	v_or_b32_e32 v4, 54, v131
	.loc	1 408 40                        ; attention_backward.py:408:40
	v_cmp_gt_i32_e64 s27, s49, v6
	.loc	1 168 40                        ; attention_backward.py:168:40
	v_or_b32_e32 v3, 56, v131
	v_or_b32_e32 v1, 60, v131
	v_or_b32_e32 v2, 58, v131
	.loc	1 408 40                        ; attention_backward.py:408:40
	v_cmp_gt_i32_e64 s28, s49, v5
	.loc	1 168 40                        ; attention_backward.py:168:40
	v_or_b32_e32 v0, 62, v131
	.loc	1 408 40                        ; attention_backward.py:408:40
	v_cmp_gt_i32_e64 s29, s49, v4
	v_cmp_gt_i32_e64 s30, s49, v3
	v_cmp_gt_i32_e64 s0, s49, v2
	v_cmp_gt_i32_e32 vcc_lo, s49, v1
	.loc	1 408 18 is_stmt 0              ; attention_backward.py:408:18
	s_and_b32 s0, s4, s0
	s_and_b32 vcc_lo, s4, vcc_lo
	.loc	1 401 13 is_stmt 1              ; attention_backward.py:401:13
	s_waitcnt vmcnt(0)
	v_mul_lo_u32 v24, v24, s49
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 405 9                         ; attention_backward.py:405:9
	v_add_lshl_u32 v25, v24, v131, 2
	v_add_lshl_u32 v26, v24, v132, 2
	v_add_lshl_u32 v27, v24, v130, 2
	v_add_lshl_u32 v28, v24, v126, 2
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
	v_add_lshl_u32 v25, v24, v129, 2
	s_clause 0x1
	buffer_store_b32 v58, v26, s[36:39], 0 offen
	buffer_store_b32 v59, v27, s[36:39], 0 offen
	v_add_lshl_u32 v26, v24, v128, 2
	v_cndmask_b32_e64 v25, 0x80000000, v25, s2
	.loc	1 408 18                        ; attention_backward.py:408:18
	s_and_b32 s2, s4, s6
	.loc	1 405 9                         ; attention_backward.py:405:9
	v_add_lshl_u32 v27, v24, v127, 2
	v_add_lshl_u32 v22, v24, v22, 2
	v_cndmask_b32_e64 v26, 0x80000000, v26, s2
	.loc	1 408 18                        ; attention_backward.py:408:18
	s_and_b32 s2, s4, s7
	.loc	1 405 9                         ; attention_backward.py:405:9
	s_clause 0x1
	buffer_store_b32 v60, v25, s[36:39], 0 offen
	buffer_store_b32 v61, v26, s[36:39], 0 offen
	v_add_lshl_u32 v25, v24, v125, 2
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
	v_cmp_gt_i32_e64 s1, s49, v0
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
.Ltmp354:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_attention_bwd_dq_int4xbf16_bool_runtime_outfloat32_doutbfloat16_float32_d64_dv64_shaperuntime_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1
		.amdhsa_group_segment_fixed_size 0
		.amdhsa_private_segment_fixed_size 104
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
	.size	amd_strix_halo_gfx1151_attention_bwd_dq_int4xbf16_bool_runtime_outfloat32_doutbfloat16_float32_d64_dv64_shaperuntime_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1, .Lfunc_end0-amd_strix_halo_gfx1151_attention_bwd_dq_int4xbf16_bool_runtime_outfloat32_doutbfloat16_float32_d64_dv64_shaperuntime_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_attention_bwd_dq_int4xbf16_bool_runtime_outfloat32_doutbfloat16_float32_d64_dv64_shaperuntime_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.num_vgpr, 256
	.set amd_strix_halo_gfx1151_attention_bwd_dq_int4xbf16_bool_runtime_outfloat32_doutbfloat16_float32_d64_dv64_shaperuntime_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.num_agpr, 0
	.set amd_strix_halo_gfx1151_attention_bwd_dq_int4xbf16_bool_runtime_outfloat32_doutbfloat16_float32_d64_dv64_shaperuntime_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.numbered_sgpr, 86
	.set amd_strix_halo_gfx1151_attention_bwd_dq_int4xbf16_bool_runtime_outfloat32_doutbfloat16_float32_d64_dv64_shaperuntime_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_attention_bwd_dq_int4xbf16_bool_runtime_outfloat32_doutbfloat16_float32_d64_dv64_shaperuntime_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.private_seg_size, 104
	.set amd_strix_halo_gfx1151_attention_bwd_dq_int4xbf16_bool_runtime_outfloat32_doutbfloat16_float32_d64_dv64_shaperuntime_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.uses_vcc, 1
	.set amd_strix_halo_gfx1151_attention_bwd_dq_int4xbf16_bool_runtime_outfloat32_doutbfloat16_float32_d64_dv64_shaperuntime_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.uses_flat_scratch, 1
	.set amd_strix_halo_gfx1151_attention_bwd_dq_int4xbf16_bool_runtime_outfloat32_doutbfloat16_float32_d64_dv64_shaperuntime_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_attention_bwd_dq_int4xbf16_bool_runtime_outfloat32_doutbfloat16_float32_d64_dv64_shaperuntime_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.has_recursion, 0
	.set amd_strix_halo_gfx1151_attention_bwd_dq_int4xbf16_bool_runtime_outfloat32_doutbfloat16_float32_d64_dv64_shaperuntime_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 24908
; TotalNumSgprs: 88
; NumVgprs: 256
; ScratchSize: 104
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 31
; NumSGPRsForWavesPerEU: 88
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
	.quad	.Ltmp16-.Lfunc_begin0
	.quad	.Ltmp17-.Lfunc_begin0
	.quad	.Ltmp22-.Lfunc_begin0
	.quad	.Ltmp23-.Lfunc_begin0
	.quad	.Ltmp24-.Lfunc_begin0
	.quad	.Ltmp25-.Lfunc_begin0
	.quad	.Ltmp26-.Lfunc_begin0
	.quad	.Ltmp27-.Lfunc_begin0
	.quad	.Ltmp28-.Lfunc_begin0
	.quad	.Ltmp29-.Lfunc_begin0
	.quad	.Ltmp30-.Lfunc_begin0
	.quad	.Ltmp31-.Lfunc_begin0
	.quad	.Ltmp38-.Lfunc_begin0
	.quad	.Ltmp39-.Lfunc_begin0
	.quad	.Ltmp43-.Lfunc_begin0
	.quad	.Ltmp44-.Lfunc_begin0
	.quad	.Ltmp45-.Lfunc_begin0
	.quad	.Ltmp46-.Lfunc_begin0
	.quad	.Ltmp50-.Lfunc_begin0
	.quad	.Ltmp51-.Lfunc_begin0
	.quad	.Ltmp57-.Lfunc_begin0
	.quad	.Ltmp58-.Lfunc_begin0
	.quad	.Ltmp60-.Lfunc_begin0
	.quad	.Ltmp61-.Lfunc_begin0
	.quad	.Ltmp63-.Lfunc_begin0
	.quad	.Ltmp64-.Lfunc_begin0
	.quad	.Ltmp75-.Lfunc_begin0
	.quad	.Ltmp76-.Lfunc_begin0
	.quad	.Ltmp77-.Lfunc_begin0
	.quad	.Ltmp78-.Lfunc_begin0
	.quad	.Ltmp80-.Lfunc_begin0
	.quad	.Ltmp81-.Lfunc_begin0
	.quad	.Ltmp86-.Lfunc_begin0
	.quad	.Ltmp87-.Lfunc_begin0
	.quad	.Ltmp91-.Lfunc_begin0
	.quad	.Ltmp92-.Lfunc_begin0
	.quad	.Ltmp94-.Lfunc_begin0
	.quad	.Ltmp95-.Lfunc_begin0
	.quad	.Ltmp97-.Lfunc_begin0
	.quad	.Ltmp98-.Lfunc_begin0
	.quad	.Ltmp100-.Lfunc_begin0
	.quad	.Ltmp101-.Lfunc_begin0
	.quad	.Ltmp111-.Lfunc_begin0
	.quad	.Ltmp112-.Lfunc_begin0
	.quad	.Ltmp119-.Lfunc_begin0
	.quad	.Ltmp120-.Lfunc_begin0
	.quad	.Ltmp126-.Lfunc_begin0
	.quad	.Ltmp127-.Lfunc_begin0
	.quad	.Ltmp130-.Lfunc_begin0
	.quad	.Ltmp131-.Lfunc_begin0
	.quad	.Ltmp132-.Lfunc_begin0
	.quad	.Ltmp133-.Lfunc_begin0
	.quad	.Ltmp157-.Lfunc_begin0
	.quad	.Ltmp158-.Lfunc_begin0
	.quad	.Ltmp159-.Lfunc_begin0
	.quad	.Ltmp160-.Lfunc_begin0
	.quad	.Ltmp161-.Lfunc_begin0
	.quad	.Ltmp162-.Lfunc_begin0
	.quad	.Ltmp163-.Lfunc_begin0
	.quad	.Ltmp332-.Lfunc_begin0
	.quad	.Ltmp333-.Lfunc_begin0
	.quad	.Ltmp334-.Lfunc_begin0
	.quad	.Ltmp335-.Lfunc_begin0
	.quad	.Ltmp336-.Lfunc_begin0
	.quad	.Ltmp337-.Lfunc_begin0
	.quad	.Ltmp338-.Lfunc_begin0
	.quad	.Ltmp339-.Lfunc_begin0
	.quad	.Ltmp340-.Lfunc_begin0
	.quad	.Ltmp341-.Lfunc_begin0
	.quad	.Ltmp342-.Lfunc_begin0
	.quad	.Ltmp343-.Lfunc_begin0
	.quad	.Ltmp344-.Lfunc_begin0
	.quad	.Ltmp345-.Lfunc_begin0
	.quad	.Ltmp346-.Lfunc_begin0
	.quad	.Ltmp347-.Lfunc_begin0
	.quad	.Ltmp348-.Lfunc_begin0
	.quad	.Ltmp349-.Lfunc_begin0
	.quad	.Ltmp350-.Lfunc_begin0
	.quad	.Ltmp351-.Lfunc_begin0
	.quad	.Ltmp352-.Lfunc_begin0
	.quad	.Ltmp353-.Lfunc_begin0
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
	.quad	.Ltmp18-.Lfunc_begin0
	.quad	.Ltmp19-.Lfunc_begin0
	.quad	.Ltmp20-.Lfunc_begin0
	.quad	.Ltmp21-.Lfunc_begin0
	.quad	.Ltmp32-.Lfunc_begin0
	.quad	.Ltmp33-.Lfunc_begin0
	.quad	.Ltmp34-.Lfunc_begin0
	.quad	.Ltmp35-.Lfunc_begin0
	.quad	.Ltmp36-.Lfunc_begin0
	.quad	.Ltmp37-.Lfunc_begin0
	.quad	.Ltmp39-.Lfunc_begin0
	.quad	.Ltmp40-.Lfunc_begin0
	.quad	.Ltmp41-.Lfunc_begin0
	.quad	.Ltmp42-.Lfunc_begin0
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
	.quad	.Ltmp58-.Lfunc_begin0
	.quad	.Ltmp59-.Lfunc_begin0
	.quad	.Ltmp61-.Lfunc_begin0
	.quad	.Ltmp62-.Lfunc_begin0
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
	.quad	.Ltmp82-.Lfunc_begin0
	.quad	.Ltmp83-.Lfunc_begin0
	.quad	.Ltmp84-.Lfunc_begin0
	.quad	.Ltmp85-.Lfunc_begin0
	.quad	.Ltmp87-.Lfunc_begin0
	.quad	.Ltmp88-.Lfunc_begin0
	.quad	.Ltmp89-.Lfunc_begin0
	.quad	.Ltmp90-.Lfunc_begin0
	.quad	.Ltmp92-.Lfunc_begin0
	.quad	.Ltmp93-.Lfunc_begin0
	.quad	.Ltmp95-.Lfunc_begin0
	.quad	.Ltmp96-.Lfunc_begin0
	.quad	.Ltmp98-.Lfunc_begin0
	.quad	.Ltmp99-.Lfunc_begin0
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
	.quad	.Ltmp113-.Lfunc_begin0
	.quad	.Ltmp114-.Lfunc_begin0
	.quad	.Ltmp115-.Lfunc_begin0
	.quad	.Ltmp116-.Lfunc_begin0
	.quad	.Ltmp117-.Lfunc_begin0
	.quad	.Ltmp118-.Lfunc_begin0
	.quad	.Ltmp120-.Lfunc_begin0
	.quad	.Ltmp121-.Lfunc_begin0
	.quad	.Ltmp122-.Lfunc_begin0
	.quad	.Ltmp123-.Lfunc_begin0
	.quad	.Ltmp124-.Lfunc_begin0
	.quad	.Ltmp125-.Lfunc_begin0
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
	.quad	.Ltmp139-.Lfunc_begin0
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
	.quad	.Ltmp150-.Lfunc_begin0
	.quad	.Ltmp151-.Lfunc_begin0
	.quad	.Ltmp152-.Lfunc_begin0
	.quad	.Ltmp153-.Lfunc_begin0
	.quad	.Ltmp154-.Lfunc_begin0
	.quad	.Ltmp155-.Lfunc_begin0
	.quad	.Ltmp156-.Lfunc_begin0
	.quad	.Ltmp332-.Lfunc_begin0
	.quad	.Ltmp333-.Lfunc_begin0
	.quad	.Ltmp334-.Lfunc_begin0
	.quad	.Ltmp335-.Lfunc_begin0
	.quad	.Ltmp336-.Lfunc_begin0
	.quad	.Ltmp337-.Lfunc_begin0
	.quad	.Ltmp338-.Lfunc_begin0
	.quad	.Ltmp339-.Lfunc_begin0
	.quad	.Ltmp340-.Lfunc_begin0
	.quad	.Ltmp341-.Lfunc_begin0
	.quad	.Ltmp342-.Lfunc_begin0
	.quad	.Ltmp343-.Lfunc_begin0
	.quad	.Ltmp344-.Lfunc_begin0
	.quad	.Ltmp345-.Lfunc_begin0
	.quad	.Ltmp346-.Lfunc_begin0
	.quad	.Ltmp347-.Lfunc_begin0
	.quad	.Ltmp348-.Lfunc_begin0
	.quad	.Ltmp349-.Lfunc_begin0
	.quad	.Ltmp350-.Lfunc_begin0
	.quad	.Ltmp351-.Lfunc_begin0
	.quad	.Ltmp352-.Lfunc_begin0
	.quad	.Ltmp353-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges2:
	.quad	.Ltmp164-.Lfunc_begin0
	.quad	.Ltmp174-.Lfunc_begin0
	.quad	.Ltmp185-.Lfunc_begin0
	.quad	.Ltmp195-.Lfunc_begin0
	.quad	.Ltmp206-.Lfunc_begin0
	.quad	.Ltmp216-.Lfunc_begin0
	.quad	.Ltmp227-.Lfunc_begin0
	.quad	.Ltmp228-.Lfunc_begin0
	.quad	.Ltmp229-.Lfunc_begin0
	.quad	.Ltmp237-.Lfunc_begin0
	.quad	.Ltmp248-.Lfunc_begin0
	.quad	.Ltmp249-.Lfunc_begin0
	.quad	.Ltmp250-.Lfunc_begin0
	.quad	.Ltmp258-.Lfunc_begin0
	.quad	.Ltmp269-.Lfunc_begin0
	.quad	.Ltmp270-.Lfunc_begin0
	.quad	.Ltmp271-.Lfunc_begin0
	.quad	.Ltmp279-.Lfunc_begin0
	.quad	.Ltmp290-.Lfunc_begin0
	.quad	.Ltmp291-.Lfunc_begin0
	.quad	.Ltmp292-.Lfunc_begin0
	.quad	.Ltmp300-.Lfunc_begin0
	.quad	.Ltmp311-.Lfunc_begin0
	.quad	.Ltmp312-.Lfunc_begin0
	.quad	.Ltmp313-.Lfunc_begin0
	.quad	.Ltmp321-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges3:
	.quad	.Ltmp165-.Lfunc_begin0
	.quad	.Ltmp166-.Lfunc_begin0
	.quad	.Ltmp167-.Lfunc_begin0
	.quad	.Ltmp168-.Lfunc_begin0
	.quad	.Ltmp169-.Lfunc_begin0
	.quad	.Ltmp170-.Lfunc_begin0
	.quad	.Ltmp171-.Lfunc_begin0
	.quad	.Ltmp172-.Lfunc_begin0
	.quad	.Ltmp173-.Lfunc_begin0
	.quad	.Ltmp174-.Lfunc_begin0
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
	.quad	.Ltmp207-.Lfunc_begin0
	.quad	.Ltmp208-.Lfunc_begin0
	.quad	.Ltmp209-.Lfunc_begin0
	.quad	.Ltmp210-.Lfunc_begin0
	.quad	.Ltmp211-.Lfunc_begin0
	.quad	.Ltmp212-.Lfunc_begin0
	.quad	.Ltmp213-.Lfunc_begin0
	.quad	.Ltmp214-.Lfunc_begin0
	.quad	.Ltmp215-.Lfunc_begin0
	.quad	.Ltmp216-.Lfunc_begin0
	.quad	.Ltmp227-.Lfunc_begin0
	.quad	.Ltmp228-.Lfunc_begin0
	.quad	.Ltmp230-.Lfunc_begin0
	.quad	.Ltmp231-.Lfunc_begin0
	.quad	.Ltmp232-.Lfunc_begin0
	.quad	.Ltmp233-.Lfunc_begin0
	.quad	.Ltmp234-.Lfunc_begin0
	.quad	.Ltmp235-.Lfunc_begin0
	.quad	.Ltmp236-.Lfunc_begin0
	.quad	.Ltmp237-.Lfunc_begin0
	.quad	.Ltmp248-.Lfunc_begin0
	.quad	.Ltmp249-.Lfunc_begin0
	.quad	.Ltmp251-.Lfunc_begin0
	.quad	.Ltmp252-.Lfunc_begin0
	.quad	.Ltmp253-.Lfunc_begin0
	.quad	.Ltmp254-.Lfunc_begin0
	.quad	.Ltmp255-.Lfunc_begin0
	.quad	.Ltmp256-.Lfunc_begin0
	.quad	.Ltmp257-.Lfunc_begin0
	.quad	.Ltmp258-.Lfunc_begin0
	.quad	.Ltmp269-.Lfunc_begin0
	.quad	.Ltmp270-.Lfunc_begin0
	.quad	.Ltmp272-.Lfunc_begin0
	.quad	.Ltmp273-.Lfunc_begin0
	.quad	.Ltmp274-.Lfunc_begin0
	.quad	.Ltmp275-.Lfunc_begin0
	.quad	.Ltmp276-.Lfunc_begin0
	.quad	.Ltmp277-.Lfunc_begin0
	.quad	.Ltmp278-.Lfunc_begin0
	.quad	.Ltmp279-.Lfunc_begin0
	.quad	.Ltmp290-.Lfunc_begin0
	.quad	.Ltmp291-.Lfunc_begin0
	.quad	.Ltmp293-.Lfunc_begin0
	.quad	.Ltmp294-.Lfunc_begin0
	.quad	.Ltmp295-.Lfunc_begin0
	.quad	.Ltmp296-.Lfunc_begin0
	.quad	.Ltmp297-.Lfunc_begin0
	.quad	.Ltmp298-.Lfunc_begin0
	.quad	.Ltmp299-.Lfunc_begin0
	.quad	.Ltmp300-.Lfunc_begin0
	.quad	.Ltmp311-.Lfunc_begin0
	.quad	.Ltmp312-.Lfunc_begin0
	.quad	.Ltmp314-.Lfunc_begin0
	.quad	.Ltmp315-.Lfunc_begin0
	.quad	.Ltmp316-.Lfunc_begin0
	.quad	.Ltmp317-.Lfunc_begin0
	.quad	.Ltmp318-.Lfunc_begin0
	.quad	.Ltmp319-.Lfunc_begin0
	.quad	.Ltmp320-.Lfunc_begin0
	.quad	.Ltmp321-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges4:
	.quad	.Ltmp175-.Lfunc_begin0
	.quad	.Ltmp181-.Lfunc_begin0
	.quad	.Ltmp182-.Lfunc_begin0
	.quad	.Ltmp184-.Lfunc_begin0
	.quad	.Ltmp196-.Lfunc_begin0
	.quad	.Ltmp202-.Lfunc_begin0
	.quad	.Ltmp203-.Lfunc_begin0
	.quad	.Ltmp205-.Lfunc_begin0
	.quad	.Ltmp217-.Lfunc_begin0
	.quad	.Ltmp223-.Lfunc_begin0
	.quad	.Ltmp224-.Lfunc_begin0
	.quad	.Ltmp226-.Lfunc_begin0
	.quad	.Ltmp238-.Lfunc_begin0
	.quad	.Ltmp244-.Lfunc_begin0
	.quad	.Ltmp245-.Lfunc_begin0
	.quad	.Ltmp247-.Lfunc_begin0
	.quad	.Ltmp259-.Lfunc_begin0
	.quad	.Ltmp265-.Lfunc_begin0
	.quad	.Ltmp266-.Lfunc_begin0
	.quad	.Ltmp268-.Lfunc_begin0
	.quad	.Ltmp280-.Lfunc_begin0
	.quad	.Ltmp286-.Lfunc_begin0
	.quad	.Ltmp287-.Lfunc_begin0
	.quad	.Ltmp289-.Lfunc_begin0
	.quad	.Ltmp301-.Lfunc_begin0
	.quad	.Ltmp307-.Lfunc_begin0
	.quad	.Ltmp308-.Lfunc_begin0
	.quad	.Ltmp310-.Lfunc_begin0
	.quad	.Ltmp322-.Lfunc_begin0
	.quad	.Ltmp328-.Lfunc_begin0
	.quad	.Ltmp329-.Lfunc_begin0
	.quad	.Ltmp331-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges5:
	.quad	.Ltmp176-.Lfunc_begin0
	.quad	.Ltmp177-.Lfunc_begin0
	.quad	.Ltmp178-.Lfunc_begin0
	.quad	.Ltmp179-.Lfunc_begin0
	.quad	.Ltmp180-.Lfunc_begin0
	.quad	.Ltmp181-.Lfunc_begin0
	.quad	.Ltmp183-.Lfunc_begin0
	.quad	.Ltmp184-.Lfunc_begin0
	.quad	.Ltmp197-.Lfunc_begin0
	.quad	.Ltmp198-.Lfunc_begin0
	.quad	.Ltmp199-.Lfunc_begin0
	.quad	.Ltmp200-.Lfunc_begin0
	.quad	.Ltmp201-.Lfunc_begin0
	.quad	.Ltmp202-.Lfunc_begin0
	.quad	.Ltmp204-.Lfunc_begin0
	.quad	.Ltmp205-.Lfunc_begin0
	.quad	.Ltmp218-.Lfunc_begin0
	.quad	.Ltmp219-.Lfunc_begin0
	.quad	.Ltmp220-.Lfunc_begin0
	.quad	.Ltmp221-.Lfunc_begin0
	.quad	.Ltmp222-.Lfunc_begin0
	.quad	.Ltmp223-.Lfunc_begin0
	.quad	.Ltmp225-.Lfunc_begin0
	.quad	.Ltmp226-.Lfunc_begin0
	.quad	.Ltmp239-.Lfunc_begin0
	.quad	.Ltmp240-.Lfunc_begin0
	.quad	.Ltmp241-.Lfunc_begin0
	.quad	.Ltmp242-.Lfunc_begin0
	.quad	.Ltmp243-.Lfunc_begin0
	.quad	.Ltmp244-.Lfunc_begin0
	.quad	.Ltmp246-.Lfunc_begin0
	.quad	.Ltmp247-.Lfunc_begin0
	.quad	.Ltmp260-.Lfunc_begin0
	.quad	.Ltmp261-.Lfunc_begin0
	.quad	.Ltmp262-.Lfunc_begin0
	.quad	.Ltmp263-.Lfunc_begin0
	.quad	.Ltmp264-.Lfunc_begin0
	.quad	.Ltmp265-.Lfunc_begin0
	.quad	.Ltmp267-.Lfunc_begin0
	.quad	.Ltmp268-.Lfunc_begin0
	.quad	.Ltmp281-.Lfunc_begin0
	.quad	.Ltmp282-.Lfunc_begin0
	.quad	.Ltmp283-.Lfunc_begin0
	.quad	.Ltmp284-.Lfunc_begin0
	.quad	.Ltmp285-.Lfunc_begin0
	.quad	.Ltmp286-.Lfunc_begin0
	.quad	.Ltmp288-.Lfunc_begin0
	.quad	.Ltmp289-.Lfunc_begin0
	.quad	.Ltmp302-.Lfunc_begin0
	.quad	.Ltmp303-.Lfunc_begin0
	.quad	.Ltmp304-.Lfunc_begin0
	.quad	.Ltmp305-.Lfunc_begin0
	.quad	.Ltmp306-.Lfunc_begin0
	.quad	.Ltmp307-.Lfunc_begin0
	.quad	.Ltmp309-.Lfunc_begin0
	.quad	.Ltmp310-.Lfunc_begin0
	.quad	.Ltmp323-.Lfunc_begin0
	.quad	.Ltmp324-.Lfunc_begin0
	.quad	.Ltmp325-.Lfunc_begin0
	.quad	.Ltmp326-.Lfunc_begin0
	.quad	.Ltmp327-.Lfunc_begin0
	.quad	.Ltmp328-.Lfunc_begin0
	.quad	.Ltmp330-.Lfunc_begin0
	.quad	.Ltmp331-.Lfunc_begin0
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
	.asciz	"amd_strix_halo_gfx1151_attention_bwd_dq_int4xbf16_bool_runtime_outfloat32_doutbfloat16_float32_d64_dv64_shaperuntime_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1"                        ; string offset=97 ; amd_strix_halo_gfx1151_attention_bwd_dq_int4xbf16_bool_runtime_outfloat32_doutbfloat16_float32_d64_dv64_shaperuntime_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1
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
    .name:           amd_strix_halo_gfx1151_attention_bwd_dq_int4xbf16_bool_runtime_outfloat32_doutbfloat16_float32_d64_dv64_shaperuntime_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1
    .private_segment_fixed_size: 104
    .sgpr_count:     88
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_attention_bwd_dq_int4xbf16_bool_runtime_outfloat32_doutbfloat16_float32_d64_dv64_shaperuntime_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     256
    .vgpr_spill_count: 25
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
