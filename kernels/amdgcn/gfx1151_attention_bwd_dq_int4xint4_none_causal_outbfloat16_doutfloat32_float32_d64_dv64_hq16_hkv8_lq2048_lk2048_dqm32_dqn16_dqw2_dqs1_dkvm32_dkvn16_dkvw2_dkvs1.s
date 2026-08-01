	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_attention_bwd_dq_int4xint4_none_causal_outbfloat16_doutfloat32_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1                          ; -- Begin function amd_strix_halo_gfx1151_attention_bwd_dq_int4xint4_none_causal_outbfloat16_doutfloat32_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1
	.p2align	8
	.type	amd_strix_halo_gfx1151_attention_bwd_dq_int4xint4_none_causal_outbfloat16_doutfloat32_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1,@function
amd_strix_halo_gfx1151_attention_bwd_dq_int4xint4_none_causal_outbfloat16_doutfloat32_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1:                                 ; @amd_strix_halo_gfx1151_attention_bwd_dq_int4xint4_none_causal_outbfloat16_doutfloat32_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1
.Lfunc_begin0:
	.file	1 "<repo>/src/amd_strix_halo_kernels" "attention_backward.py"
	.loc	1 60 0                          ; attention_backward.py:60:0
	.cfi_sections .debug_frame
	.cfi_startproc
; %bb.0:
	s_load_b64 s[34:35], s[0:1], 0x78
.Ltmp0:
	.loc	1 124 31 prologue_end           ; attention_backward.py:124:31
	v_and_b32_e32 v70, 32, v0
	v_and_b32_e32 v69, 15, v0
	v_lshrrev_b32_e32 v1, 1, v0
	v_lshrrev_b32_e32 v5, 3, v0
	.loc	1 139 44                        ; attention_backward.py:139:44
	v_lshlrev_b32_e32 v41, 4, v0
	.loc	1 124 31                        ; attention_backward.py:124:31
	v_lshrrev_b32_e32 v2, 1, v70
	s_clause 0x1
	s_load_b256 s[16:23], s[0:1], 0x38
	s_load_b256 s[24:31], s[0:1], 0x0
	.loc	1 119 19                        ; attention_backward.py:119:19
	s_lshl_b32 s14, s2, 5
	.loc	1 133 26                        ; attention_backward.py:133:26
	s_lshl_b32 s46, s3, 11
	.loc	1 124 21                        ; attention_backward.py:124:21
	v_or_b32_e32 v3, s14, v1
	.loc	1 135 17                        ; attention_backward.py:135:17
	s_add_i32 s33, s14, s46
	.loc	1 124 31                        ; attention_backward.py:124:31
	v_or_b32_e32 v157, v2, v69
	.loc	1 124 21 is_stmt 0              ; attention_backward.py:124:21
	v_or_b32_e32 v4, s14, v5
	.loc	1 139 44 is_stmt 1              ; attention_backward.py:139:44
	v_and_b32_e32 v2, 16, v41
	.loc	1 135 17                        ; attention_backward.py:135:17
	v_or_b32_e32 v6, s33, v1
	.loc	1 168 40                        ; attention_backward.py:168:40
	v_and_b32_e32 v42, 7, v0
	.loc	1 128 21                        ; attention_backward.py:128:21
	v_cmp_gt_i32_e32 vcc_lo, 0x800, v3
	v_cmp_gt_i32_e64 s4, 0x800, v4
	s_mov_b32 s43, 0x31027000
	.loc	1 135 17                        ; attention_backward.py:135:17
	s_waitcnt lgkmcnt(0)
	v_mad_u64_u32 v[3:4], null, s34, v6, v[2:3]
	.loc	1 139 44                        ; attention_backward.py:139:44
	v_cmp_gt_i32_e64 s2, s34, v2
	.loc	1 168 40                        ; attention_backward.py:168:40
	v_lshlrev_b32_e32 v159, 3, v42
	.loc	1 143 17                        ; attention_backward.py:143:17
	v_or_b32_e32 v4, s33, v157
	s_mov_b32 s42, 0x7ffffffe
	.loc	1 167 13                        ; attention_backward.py:167:13
	v_mul_lo_u32 v2, s35, v5
	.loc	1 139 22                        ; attention_backward.py:139:22
	s_and_b32 vcc_lo, vcc_lo, s2
	.loc	1 168 40                        ; attention_backward.py:168:40
	v_cmp_gt_i32_e64 s6, s35, v159
	.loc	1 134 28                        ; attention_backward.py:134:28
	v_cndmask_b32_e32 v3, 0x80000000, v3, vcc_lo
	s_and_b32 s41, s25, 0xffff
	s_mov_b32 s40, s24
	.loc	1 124 21                        ; attention_backward.py:124:21
	v_or_b32_e32 v59, s14, v157
	.loc	1 168 18                        ; attention_backward.py:168:18
	s_and_b32 vcc_lo, s4, s6
	.loc	1 142 31                        ; attention_backward.py:142:31
	v_lshlrev_b32_e32 v7, 1, v4
	.loc	1 134 28                        ; attention_backward.py:134:28
	buffer_load_b128 v[3:6], v3, s[40:43], 0 offen
	.loc	1 167 13                        ; attention_backward.py:167:13
	v_add_nc_u32_e32 v137, v2, v159
	.loc	1 128 21                        ; attention_backward.py:128:21
	v_cmp_gt_i32_e64 s2, 0x800, v59
	.loc	1 167 13                        ; attention_backward.py:167:13
	s_mul_i32 s5, s35, s33
	v_lshl_add_u32 v10, s35, 3, v2
	v_add_nc_u32_e32 v11, s5, v159
	v_add_nc_u32_e32 v9, s5, v137
	.loc	1 142 31                        ; attention_backward.py:142:31
	v_cndmask_b32_e64 v7, 0x80000000, v7, s2
	s_and_b32 s41, s31, 0xffff
	s_mov_b32 s40, s30
	.loc	1 167 13                        ; attention_backward.py:167:13
	v_add_nc_u32_e32 v13, v11, v10
	v_lshl_add_u32 v12, s35, 4, v2
	.loc	1 142 31                        ; attention_backward.py:142:31
	buffer_load_u16 v60, v7, s[40:43], 0 offen
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_lshlrev_b32_e32 v7, 1, v9
	s_and_b32 s41, s17, 0xffff
	s_mov_b32 s40, s16
	s_clause 0x2
	s_load_b32 s38, s[0:1], 0x80
	s_load_b64 s[36:37], s[0:1], 0x58
	s_load_b32 s5, s[0:1], 0xa0
	v_cndmask_b32_e32 v14, 0x80000000, v7, vcc_lo
	.loc	1 125 21                        ; attention_backward.py:125:21
	v_bfe_u32 v158, v0, 4, 1
	.loc	1 121 23                        ; attention_backward.py:121:23
	s_ashr_i32 s4, s3, 31
	s_mov_b64 s[44:45], s[22:23]
	s_lshr_b32 s4, s4, 28
	.loc	1 166 23                        ; attention_backward.py:166:23
	buffer_load_b128 v[43:46], v14, s[40:43], 0 offen
	.loc	1 121 23                        ; attention_backward.py:121:23
	s_add_i32 s4, s3, s4
	.loc	1 125 21                        ; attention_backward.py:125:21
	v_or_b32_e32 v165, 2, v158
	.loc	1 122 22                        ; attention_backward.py:122:22
	s_and_b32 s7, s4, 0xfff0
	.loc	1 121 23                        ; attention_backward.py:121:23
	s_ashr_i32 s4, s4, 4
	.loc	1 122 22                        ; attention_backward.py:122:22
	s_sub_i32 s3, s3, s7
	.loc	1 125 21                        ; attention_backward.py:125:21
	v_or_b32_e32 v163, 4, v158
	.loc	1 123 19                        ; attention_backward.py:123:19
	s_bfe_u32 s7, s3, 0x10007
	.loc	1 125 21                        ; attention_backward.py:125:21
	v_or_b32_e32 v160, 6, v158
	.loc	1 123 19                        ; attention_backward.py:123:19
	s_add_i32 s3, s3, s7
	.loc	1 125 21                        ; attention_backward.py:125:21
	v_or_b32_e32 v161, 8, v158
	.loc	1 123 19                        ; attention_backward.py:123:19
	s_sext_i32_i8 s3, s3
	.loc	1 220 21                        ; attention_backward.py:220:21
	s_waitcnt lgkmcnt(0)
	s_mul_f32 s8, s38, 0x3fb8aa3b
	.loc	1 123 19                        ; attention_backward.py:123:19
	s_ashr_i32 s3, s3, 1
	.loc	1 125 21                        ; attention_backward.py:125:21
	v_or_b32_e32 v162, 10, v158
	.loc	1 197 29                        ; attention_backward.py:197:29
	s_lshl3_add_u32 s15, s4, s3
	.loc	1 125 21                        ; attention_backward.py:125:21
	v_or_b32_e32 v164, 12, v158
	.loc	1 197 28                        ; attention_backward.py:197:28
	s_lshl_b32 s7, s15, 11
	.loc	1 125 21                        ; attention_backward.py:125:21
	v_or_b32_e32 v166, 14, v158
	v_or_b32_e32 v168, s7, v158
	v_or_b32_e32 v169, s7, v165
	v_or_b32_e32 v170, s7, v163
	v_or_b32_e32 v171, s7, v160
	v_or_b32_e32 v172, s7, v161
	v_or_b32_e32 v173, s7, v162
	v_or_b32_e32 v174, s7, v164
	v_or_b32_e32 v175, s7, v166
	s_mov_b32 s22, 0
	.loc	1 167 13                        ; attention_backward.py:167:13
	s_waitcnt vmcnt(2)
	v_mad_u64_u32 v[7:8], null, s35, 24, v[2:3]
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_lshlrev_b32_e32 v8, 1, v13
	s_delay_alu instid0(VALU_DEP_1)
	v_dual_cndmask_b32 v8, 0x80000000, v8 :: v_dual_add_nc_u32 v15, v11, v7
	buffer_load_b128 v[47:50], v8, s[40:43], 0 offen
	s_waitcnt vmcnt(1)
	v_mov_b16_e32 v64.h, v43.l
	v_mov_b16_e32 v62.h, v45.l
	v_and_b32_e32 v45, 0xffff0000, v45
	v_mov_b16_e32 v63.h, v44.l
	s_waitcnt vmcnt(0)
	v_mov_b16_e32 v67.h, v48.l
	v_and_b32_e32 v48, 0xffff0000, v48
	v_and_b32_e32 v43, 0xffff0000, v43
	.loc	1 167 13                        ; attention_backward.py:167:13
	v_add_nc_u32_e32 v14, v11, v12
	v_or_b32_e32 v11, 4, v11
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_mov_b16_e32 v66.h, v49.l
	v_and_b32_e32 v49, 0xffff0000, v49
	v_lshlrev_b32_e32 v8, 1, v15
	v_lshlrev_b32_e32 v16, 1, v14
	.loc	1 171 28                        ; attention_backward.py:171:28
	v_add_lshl_u32 v7, v11, v7, 2
	v_lshlrev_b32_e32 v9, 2, v9
	v_add_lshl_u32 v2, v11, v2, 2
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_cndmask_b32_e32 v8, 0x80000000, v8, vcc_lo
	v_cndmask_b32_e32 v16, 0x80000000, v16, vcc_lo
	.loc	1 171 28                        ; attention_backward.py:171:28
	v_add_lshl_u32 v10, v11, v10, 2
	s_delay_alu instid0(VALU_DEP_4)
	v_dual_cndmask_b32 v9, 0x80000000, v9 :: v_dual_cndmask_b32 v2, 0x80000000, v2
	.loc	1 166 23                        ; attention_backward.py:166:23
	s_clause 0x1
	buffer_load_b128 v[55:58], v8, s[40:43], 0 offen
	buffer_load_b128 v[51:54], v16, s[40:43], 0 offen
	.loc	1 171 28                        ; attention_backward.py:171:28
	s_and_b32 s41, s19, 0xffff
	s_mov_b32 s40, s18
	s_clause 0x1
	buffer_load_b128 v[37:40], v9, s[40:43], 0 offen
	buffer_load_b128 v[33:36], v2, s[40:43], 0 offen
	v_cndmask_b32_e32 v9, 0x80000000, v10, vcc_lo
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_mov_b16_e32 v65.h, v50.l
	v_mov_b16_e32 v68.h, v47.l
	s_load_b128 s[16:19], s[0:1], 0x20
	.loc	1 189 48                        ; attention_backward.py:189:48
	s_add_i32 s3, s14, s5
	.loc	1 171 28                        ; attention_backward.py:171:28
	buffer_load_b128 v[25:28], v9, s[40:43], 0 offen
	.loc	1 189 48                        ; attention_backward.py:189:48
	s_add_i32 s3, s3, 32
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	.loc	1 189 25 is_stmt 0              ; attention_backward.py:189:25
	s_min_i32 s9, s3, 0x800
	.loc	1 190 35 is_stmt 1              ; attention_backward.py:190:35
	s_add_i32 s9, s9, 15
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	.loc	1 190 34 is_stmt 0              ; attention_backward.py:190:34
	s_ashr_i32 s10, s9, 31
	s_lshr_b32 s10, s10, 28
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_add_i32 s9, s9, s10
	.loc	1 190 33                        ; attention_backward.py:190:33
	s_and_b32 s39, s9, -16
	.loc	1 194 9 is_stmt 1               ; attention_backward.py:194:9
	s_cmp_gt_i32 s3, 0
	s_cselect_b32 s24, -1, 0
	s_cmp_lt_i32 s3, 1
	.loc	1 166 23                        ; attention_backward.py:166:23
	s_waitcnt vmcnt(4)
	v_mov_b16_e32 v78.h, v56.l
	s_waitcnt vmcnt(3)
	v_mov_b16_e32 v75.h, v51.l
	v_and_b32_e32 v51, 0xffff0000, v51
	v_and_b32_e32 v56, 0xffff0000, v56
	v_and_b32_e32 v47, 0xffff0000, v47
	.loc	1 176 24                        ; attention_backward.py:176:24
	s_waitcnt vmcnt(2)
	v_dual_mul_f32 v43, v38, v43 :: v_dual_lshlrev_b32 v8, 2, v13
	.loc	1 171 28                        ; attention_backward.py:171:28
	v_lshlrev_b32_e32 v2, 2, v14
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_mov_b16_e32 v73.h, v53.l
	v_mov_b16_e32 v74.h, v52.l
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 171 28                        ; attention_backward.py:171:28
	v_cndmask_b32_e32 v8, 0x80000000, v8, vcc_lo
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_mov_b16_e32 v79.h, v55.l
	.loc	1 171 28                        ; attention_backward.py:171:28
	v_cndmask_b32_e32 v2, 0x80000000, v2, vcc_lo
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_mov_b16_e32 v77.h, v57.l
	v_mov_b16_e32 v76.h, v58.l
	.loc	1 171 28                        ; attention_backward.py:171:28
	buffer_load_b128 v[29:32], v8, s[40:43], 0 offen
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_and_b32_e32 v58, 0xffff0000, v58
	.loc	1 171 28                        ; attention_backward.py:171:28
	buffer_load_b128 v[21:24], v2, s[40:43], 0 offen
	v_add_lshl_u32 v8, v11, v12, 2
	v_cndmask_b32_e32 v2, 0x80000000, v7, vcc_lo
	v_mov_b16_e32 v7.l, 0
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_mov_b16_e32 v7.h, v46.l
	v_mov_b16_e32 v72.h, v54.l
	.loc	1 171 28                        ; attention_backward.py:171:28
	v_cndmask_b32_e32 v8, 0x80000000, v8, vcc_lo
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_mov_b16_e32 v63.l, v7.l
	v_and_b32_e32 v53, 0xffff0000, v53
	.loc	1 171 28                        ; attention_backward.py:171:28
	v_lshlrev_b32_e32 v10, 2, v15
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_mov_b16_e32 v74.l, v7.l
	v_and_b32_e32 v55, 0xffff0000, v55
	v_mov_b16_e32 v79.l, v7.l
	v_mov_b16_e32 v65.l, v7.l
	.loc	1 171 28                        ; attention_backward.py:171:28
	v_cndmask_b32_e32 v9, 0x80000000, v10, vcc_lo
	s_clause 0x2
	buffer_load_b128 v[17:20], v8, s[40:43], 0 offen
	buffer_load_b128 v[13:16], v9, s[40:43], 0 offen
	buffer_load_b128 v[9:12], v2, s[40:43], 0 offen
	.loc	1 134 28                        ; attention_backward.py:134:28
	v_lshlrev_b32_e32 v2, 1, v0
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_mov_b16_e32 v68.l, v7.l
	v_mov_b16_e32 v75.l, v7.l
	v_mov_b16_e32 v73.l, v7.l
	v_mov_b16_e32 v77.l, v7.l
	v_mov_b16_e32 v62.l, v7.l
	v_mov_b16_e32 v64.l, v7.l
	v_mov_b16_e32 v66.l, v7.l
	v_mov_b16_e32 v67.l, v7.l
	v_mov_b16_e32 v76.l, v7.l
	v_mov_b16_e32 v72.l, v7.l
	v_mov_b16_e32 v78.l, v7.l
	.loc	1 125 21                        ; attention_backward.py:125:21
	v_lshrrev_b32_e32 v8, 2, v0
.Ltmp1:
	.file	2 "<triton>/python/triton/language" "standard.py"
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_fmac_f32_e32 v43, v37, v64
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	v_or_b32_e32 v167, s7, v8
.Ltmp2:
	.loc	1 176 24                        ; attention_backward.py:176:24
	s_waitcnt vmcnt(1)
	v_dual_mul_f32 v55, v14, v55 :: v_dual_and_b32 v50, 0xffff0000, v50
	v_dual_mul_f32 v56, v16, v56 :: v_dual_mul_f32 v47, v30, v47
.Ltmp3:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_dual_fmac_f32 v55, v13, v79 :: v_dual_and_b32 v46, 0xffff0000, v46
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
.Ltmp4:
	.loc	1 176 24                        ; attention_backward.py:176:24
	v_dual_mul_f32 v50, v28, v50 :: v_dual_and_b32 v61, 16, v0
	.loc	1 134 28                        ; attention_backward.py:134:28
	v_and_or_b32 v80, v2, 30, v158
.Ltmp5:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_dual_fmac_f32 v47, v29, v68 :: v_dual_mul_f32 v46, v36, v46
.Ltmp6:
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_and_b32_e32 v57, 0xffff0000, v57
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
.Ltmp7:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_dual_fmac_f32 v50, v27, v65 :: v_dual_mul_f32 v51, v22, v51
.Ltmp8:
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_and_b32_e32 v44, 0xffff0000, v44
.Ltmp9:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_fmac_f32_e32 v46, v35, v7
.Ltmp10:
	.loc	1 176 24                        ; attention_backward.py:176:24
	s_waitcnt vmcnt(0)
	v_dual_mul_f32 v57, v10, v57 :: v_dual_lshlrev_b32 v80, 2, v80
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_3)
.Ltmp11:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_dual_fmac_f32 v51, v21, v75 :: v_dual_mul_f32 v44, v40, v44
.Ltmp12:
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_and_b32_e32 v52, 0xffff0000, v52
	.loc	1 176 24                        ; attention_backward.py:176:24
	v_dual_mul_f32 v58, v12, v58 :: v_dual_mul_f32 v49, v26, v49
.Ltmp13:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_dual_fmac_f32 v57, v9, v77 :: v_dual_fmac_f32 v44, v39, v63
.Ltmp14:
	.loc	1 176 24                        ; attention_backward.py:176:24
	v_dual_mul_f32 v53, v18, v53 :: v_dual_and_b32 v54, 0xffff0000, v54
	.loc	1 168 40                        ; attention_backward.py:168:40
	v_and_b32_e32 v71, 3, v0
	.loc	1 176 24                        ; attention_backward.py:176:24
	v_dual_mul_f32 v52, v24, v52 :: v_dual_mul_f32 v45, v34, v45
	s_delay_alu instid0(VALU_DEP_3)
.Ltmp15:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_dual_fmac_f32 v53, v17, v73 :: v_dual_mul_f32 v48, v32, v48
.Ltmp16:
	.loc	1 129 27                        ; attention_backward.py:129:27
	v_add_nc_u32_e32 v176, s5, v59
.Ltmp17:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_dual_fmac_f32 v49, v25, v66 :: v_dual_lshlrev_b32 v60, 16, v60
.Ltmp18:
	.loc	1 176 24                        ; attention_backward.py:176:24
	v_mul_f32_e32 v54, v20, v54
.Ltmp19:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_dual_fmac_f32 v45, v33, v62 :: v_dual_lshlrev_b32 v138, 3, v71
	v_fmac_f32_e32 v48, v31, v67
	v_fmac_f32_e32 v58, v11, v76
	s_delay_alu instid0(VALU_DEP_4)
	v_fmac_f32_e32 v54, v19, v72
	v_add_f32_e32 v7, v43, v44
	v_add_f32_e32 v43, v45, v46
	v_add_f32_e32 v45, v49, v50
	v_dual_add_f32 v49, v57, v58 :: v_dual_add_f32 v44, v47, v48
	v_fmac_f32_e32 v56, v15, v78
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_add_f32_e32 v7, v7, v43
.Ltmp20:
	.loc	1 134 28                        ; attention_backward.py:134:28
	v_xor_b32_e32 v81, 4, v80
.Ltmp21:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_dual_fmac_f32 v52, v23, v74 :: v_dual_add_f32 v43, v44, v45
	s_delay_alu instid0(VALU_DEP_4)
	v_add_f32_e32 v48, v55, v56
.Ltmp22:
	.loc	1 134 28                        ; attention_backward.py:134:28
	ds_bpermute_b32 v8, v80, v3
	ds_bpermute_b32 v3, v81, v3
.Ltmp23:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_e32 v47, v53, v54
.Ltmp24:
	.loc	1 134 28                        ; attention_backward.py:134:28
	ds_bpermute_b32 v59, v80, v4
.Ltmp25:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_dual_add_f32 v45, v48, v49 :: v_dual_add_f32 v46, v51, v52
.Ltmp26:
	.loc	1 134 28                        ; attention_backward.py:134:28
	ds_bpermute_b32 v4, v81, v4
	v_cmp_eq_u32_e64 s5, 0, v61
	ds_bpermute_b32 v82, v80, v5
.Ltmp27:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_dual_mov_b32 v49, v45 :: v_dual_add_f32 v44, v46, v47
	v_mov_b32_e32 v47, v43
.Ltmp28:
	.loc	1 134 28                        ; attention_backward.py:134:28
	ds_bpermute_b32 v80, v80, v6
	ds_bpermute_b32 v5, v81, v5
.Ltmp29:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_mov_b32_dpp v49, v49 row_xmask:4 row_mask:0xf bank_mask:0xf
	v_mov_b32_e32 v48, v44
	v_mov_b32_dpp v47, v47 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp30:
	.loc	1 134 28                        ; attention_backward.py:134:28
	ds_bpermute_b32 v6, v81, v6
	.loc	1 200 27                        ; attention_backward.py:200:27
	v_cmp_gt_i32_e64 s4, s34, v138
.Ltmp31:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_dual_add_f32 v45, v45, v49 :: v_dual_mov_b32 v46, v7
.Ltmp32:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_mov_b32_dpp v48, v48 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp33:
	.loc	1 134 28                        ; attention_backward.py:134:28
	s_waitcnt lgkmcnt(0)
	v_cndmask_b32_e64 v139, v3, v8, s5
	v_cndmask_b32_e64 v141, v8, v3, s5
	.loc	1 219 37                        ; attention_backward.py:219:37
	v_mul_f32_e32 v177, s8, v60
.Ltmp34:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_mov_b32_dpp v46, v46 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp35:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_e32 v8, v44, v48
.Ltmp36:
	.loc	1 134 28                        ; attention_backward.py:134:28
	v_cndmask_b32_e64 v140, v4, v59, s5
	v_cndmask_b32_e64 v142, v59, v4, s5
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp37:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_dual_add_f32 v3, v7, v46 :: v_dual_lshlrev_b32 v72, 3, v0
	v_dual_add_f32 v7, v43, v47 :: v_dual_mov_b32 v44, v8
.Ltmp38:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_mov_b32_e32 v47, v45
.Ltmp39:
	.loc	1 134 28                        ; attention_backward.py:134:28
	v_cndmask_b32_e64 v143, v5, v82, s5
	v_cndmask_b32_e64 v145, v82, v5, s5
	s_delay_alu instid0(VALU_DEP_4)
.Ltmp40:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_mov_b32_dpp v44, v44 row_xmask:2 row_mask:0xf bank_mask:0xf
	v_mov_b32_e32 v43, v7
	v_mov_b32_dpp v47, v47 row_xmask:2 row_mask:0xf bank_mask:0xf
	v_mov_b32_e32 v4, v3
.Ltmp41:
	.loc	1 134 28                        ; attention_backward.py:134:28
	v_cndmask_b32_e64 v144, v6, v80, s5
.Ltmp42:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_e32 v44, v8, v44
.Ltmp43:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_mov_b32_dpp v43, v43 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp44:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_e32 v45, v45, v47
.Ltmp45:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_mov_b32_dpp v4, v4 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp46:
	.loc	1 134 28                        ; attention_backward.py:134:28
	v_cndmask_b32_e64 v146, v80, v6, s5
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp47:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_dual_mov_b32 v48, v44 :: v_dual_mov_b32 v49, v45
.Ltmp48:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_e32 v46, v3, v4
	v_add_f32_e32 v43, v7, v43
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp49:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_mov_b32_dpp v48, v48 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v49, v49 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_dual_mov_b32 v50, v46 :: v_dual_mov_b32 v47, v43
	v_mov_b32_dpp v50, v50 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_2)
	v_mov_b32_dpp v47, v47 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp50:
	.loc	1 194 9                         ; attention_backward.py:194:9
	s_cbranch_scc1 .LBB0_3
; %bb.1:                                ; %.lr.ph
	.loc	1 223 21                        ; attention_backward.py:223:21
	v_dual_mov_b32 v53, v177 :: v_dual_and_b32 v2, 24, v2
	v_dual_mov_b32 v52, v177 :: v_dual_and_b32 v1, 24, v1
	v_mov_b32_e32 v54, v177
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_lshl_or_b32 v51, v69, 5, v2
	s_and_b32 s41, s27, 0xffff
	v_xor_b32_e32 v3, v72, v1
	v_dual_mov_b32 v2, 0xff800000 :: v_dual_mov_b32 v1, 0
	s_delay_alu instid0(VALU_DEP_3)
	v_xor_b32_e32 v4, 8, v51
	v_xor_b32_e32 v5, 16, v51
	v_xor_b32_e32 v6, 24, v51
	v_add_nc_u32_e32 v55, 0, v3
	s_mov_b32 s40, s26
	v_dual_mov_b32 v3, 0 :: v_dual_add_nc_u32 v56, 0, v4
	v_add_nc_u32_e32 v57, 0, v5
	v_add_nc_u32_e32 v58, 0, v6
	s_and_b32 s49, s17, 0xffff
	s_mov_b32 s48, s16
	s_mov_b32 s23, 0x76543210
	s_mov_b32 s50, s42
	s_mov_b32 s51, s43
.LBB0_2:                                ; =>This Inner Loop Header: Depth=1
	.loc	1 0 21 is_stmt 0                ; attention_backward.py:0:21
	s_delay_alu instid0(VALU_DEP_1)
	v_dual_mov_b32 v79, v2 :: v_dual_mov_b32 v80, v3
	.loc	1 199 21 is_stmt 1              ; attention_backward.py:199:21
	v_add_nc_u32_e32 v2, s22, v167
	.loc	1 204 29                        ; attention_backward.py:204:29
	v_mov_b32_e32 v8, v1
	v_mov_b32_e32 v4, v1
	v_mov_b32_e32 v6, v1
	v_mov_b32_e32 v7, v1
	.loc	1 199 21                        ; attention_backward.py:199:21
	v_mad_u64_u32 v[2:3], null, v2, s34, v[138:139]
	.loc	1 195 27                        ; attention_backward.py:195:27
	v_or_b32_e32 v84, s22, v160
	v_or_b32_e32 v81, s22, v158
	v_or_b32_e32 v82, s22, v165
	v_or_b32_e32 v83, s22, v163
	v_or_b32_e32 v85, s22, v161
	.loc	1 239 26                        ; attention_backward.py:239:26
	v_cmp_le_i32_e32 vcc_lo, v84, v176
	.loc	1 198 28                        ; attention_backward.py:198:28
	v_cndmask_b32_e64 v2, 0x80000000, v2, s4
	.loc	1 239 26                        ; attention_backward.py:239:26
	v_cmp_le_i32_e64 s8, v81, v176
	.loc	1 195 27                        ; attention_backward.py:195:27
	v_or_b32_e32 v86, s22, v162
	v_or_b32_e32 v87, s22, v164
	.loc	1 239 17                        ; attention_backward.py:239:17
	s_and_b32 vcc_lo, s2, vcc_lo
	.loc	1 198 28                        ; attention_backward.py:198:28
	buffer_load_b64 v[2:3], v2, s[40:43], 0 offen
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 195 27                        ; attention_backward.py:195:27
	v_or_b32_e32 v88, s22, v166
	.loc	1 239 17                        ; attention_backward.py:239:17
	s_and_b32 s8, s2, s8
	.loc	1 239 26 is_stmt 0              ; attention_backward.py:239:26
	v_cmp_le_i32_e64 s3, v83, v176
	v_cmp_le_i32_e64 s7, v82, v176
	v_cmp_le_i32_e64 s10, v87, v176
	v_cmp_le_i32_e64 s9, v88, v176
	v_cmp_le_i32_e64 s11, v86, v176
	v_cmp_le_i32_e64 s12, v85, v176
	.loc	1 239 17                        ; attention_backward.py:239:17
	s_and_b32 s3, s2, s3
	s_and_b32 s7, s2, s7
	s_and_b32 s9, s2, s9
	s_and_b32 s10, s2, s10
	s_and_b32 s11, s2, s11
	s_and_b32 s12, s2, s12
	.loc	1 260 21 is_stmt 1              ; attention_backward.py:260:21
	v_cmp_neq_f32_e64 s13, 0xff800000, v79
	.loc	1 204 29                        ; attention_backward.py:204:29
	v_mov_b32_e32 v5, v1
	.loc	1 198 28                        ; attention_backward.py:198:28
	s_waitcnt vmcnt(0)
	ds_store_b64 v55, v[2:3]
	v_add_nc_u32_e32 v2, 0, v51
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b64 v[67:68], v2
	ds_load_b64 v[73:74], v56
	ds_load_b64 v[75:76], v57
	ds_load_b64 v[77:78], v58
	.loc	1 204 29                        ; attention_backward.py:204:29
	v_mov_b32_e32 v2, v1
	v_mov_b32_e32 v3, v1
	v_dual_mov_b32 v66, v8 :: v_dual_mov_b32 v65, v7
	v_dual_mov_b32 v64, v6 :: v_dual_mov_b32 v63, v5
	s_delay_alu instid0(VALU_DEP_3)
	v_dual_mov_b32 v62, v4 :: v_dual_mov_b32 v61, v3
	v_dual_mov_b32 v60, v2 :: v_dual_mov_b32 v59, v1
	.loc	1 214 33                        ; attention_backward.py:214:33
	v_add_lshl_u32 v2, v168, s22, 1
	v_add_lshl_u32 v3, v169, s22, 1
	v_add_lshl_u32 v4, v170, s22, 1
	v_add_lshl_u32 v5, v171, s22, 1
	v_add_lshl_u32 v6, v172, s22, 1
	s_clause 0x4
	buffer_load_u16 v2, v2, s[48:51], 0 offen
	buffer_load_u16 v3, v3, s[48:51], 0 offen
	buffer_load_u16 v4, v4, s[48:51], 0 offen
	buffer_load_u16 v5, v5, s[48:51], 0 offen
	buffer_load_u16 v6, v6, s[48:51], 0 offen
	.loc	1 204 29                        ; attention_backward.py:204:29
	s_waitcnt lgkmcnt(3)
	v_wmma_i32_16x16x16_iu4 v[59:66], v[67:68], v[139:140], v[59:66] neg_lo:[1,1,0]
	.loc	1 214 33                        ; attention_backward.py:214:33
	v_add_lshl_u32 v7, v173, s22, 1
	v_add_lshl_u32 v8, v174, s22, 1
	v_add_lshl_u32 v67, v175, s22, 1
	.loc	1 194 9                         ; attention_backward.py:194:9
	s_add_i32 s22, s22, 16
	.loc	1 204 29                        ; attention_backward.py:204:29
	s_waitcnt lgkmcnt(2)
	v_wmma_i32_16x16x16_iu4 v[59:66], v[73:74], v[143:144], v[59:66] neg_lo:[1,1,0]
	.loc	1 214 33                        ; attention_backward.py:214:33
	s_clause 0x2
	buffer_load_u16 v7, v7, s[48:51], 0 offen
	buffer_load_u16 v8, v8, s[48:51], 0 offen
	buffer_load_u16 v67, v67, s[48:51], 0 offen
	.loc	1 194 9                         ; attention_backward.py:194:9
	s_cmp_lt_i32 s22, s39
	.loc	1 204 29                        ; attention_backward.py:204:29
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu4 v[59:66], v[75:76], v[141:142], v[59:66] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[59:66], v[77:78], v[145:146], v[59:66] neg_lo:[1,1,0]
	.loc	1 223 21                        ; attention_backward.py:223:21
	v_cvt_f32_i32_e32 v62, v62
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cvt_f32_i32_e32 v59, v59
	v_cvt_f32_i32_e32 v60, v60
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cvt_f32_i32_e32 v61, v61
	v_dual_mul_f32 v62, v54, v62 :: v_dual_mul_f32 v59, v177, v59
	s_waitcnt vmcnt(7)
	s_delay_alu instid0(VALU_DEP_2)
	v_dual_mul_f32 v61, v53, v61 :: v_dual_lshlrev_b32 v2, 16, v2
	.loc	1 214 33                        ; attention_backward.py:214:33
	s_waitcnt vmcnt(6)
	v_lshlrev_b32_e32 v3, 16, v3
	s_waitcnt vmcnt(5)
	v_lshlrev_b32_e32 v4, 16, v4
	s_waitcnt vmcnt(4)
	v_lshlrev_b32_e32 v5, 16, v5
	s_waitcnt vmcnt(3)
	v_lshlrev_b32_e32 v6, 16, v6
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 223 21                        ; attention_backward.py:223:21
	v_dual_mul_f32 v2, v59, v2 :: v_dual_mul_f32 v5, v62, v5
	v_mul_f32_e32 v60, v52, v60
	v_cvt_f32_i32_e32 v62, v65
	.loc	1 214 33                        ; attention_backward.py:214:33
	s_waitcnt vmcnt(2)
	v_lshlrev_b32_e32 v7, 16, v7
	.loc	1 257 22                        ; attention_backward.py:257:22
	v_cndmask_b32_e64 v59, 0xff800000, v2, s8
	v_cndmask_b32_e32 v5, 0xff800000, v5, vcc_lo
	.loc	1 223 21                        ; attention_backward.py:223:21
	v_mul_f32_e32 v3, v60, v3
	v_cvt_f32_i32_e32 v60, v63
	v_cvt_f32_i32_e32 v63, v66
	v_mul_f32_e32 v4, v61, v4
	v_cvt_f32_i32_e32 v61, v64
	.loc	1 214 33                        ; attention_backward.py:214:33
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v2, 16, v67
	.loc	1 223 21                        ; attention_backward.py:223:21
	v_dual_mul_f32 v62, v53, v62 :: v_dual_mul_f32 v63, v54, v63
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_dual_mul_f32 v60, v177, v60 :: v_dual_mul_f32 v61, v52, v61
	.loc	1 214 33                        ; attention_backward.py:214:33
	v_lshlrev_b32_e32 v8, 16, v8
	.loc	1 257 22                        ; attention_backward.py:257:22
	v_cndmask_b32_e64 v4, 0xff800000, v4, s3
	.loc	1 223 21                        ; attention_backward.py:223:21
	v_mul_f32_e32 v2, v63, v2
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_dual_mul_f32 v6, v60, v6 :: v_dual_mul_f32 v7, v61, v7
	v_mul_f32_e32 v8, v62, v8
	.loc	1 257 22                        ; attention_backward.py:257:22
	v_cndmask_b32_e64 v3, 0xff800000, v3, s7
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cndmask_b32_e64 v60, 0xff800000, v2, s9
	v_cndmask_b32_e64 v6, 0xff800000, v6, s12
	v_cndmask_b32_e64 v7, 0xff800000, v7, s11
	v_cndmask_b32_e64 v8, 0xff800000, v8, s10
.Ltmp51:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention_backward.py:258:25 ] ]
	v_max3_f32 v2, v59, v3, v4
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_max3_f32 v61, v5, v6, v7
	v_max_f32_e32 v62, v8, v60
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_max3_f32 v2, v2, v61, v62
.Ltmp52:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention_backward.py:258:25 ]
	v_permlanex16_b32 v61, v2, s23, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp53:
	.loc	1 259 20                        ; attention_backward.py:259:20
	v_max3_f32 v2, v79, v2, v61
	.loc	1 261 58                        ; attention_backward.py:261:58
	v_sub_f32_e32 v8, v8, v2
	v_sub_f32_e32 v60, v60, v2
	v_sub_f32_e32 v59, v59, v2
	v_sub_f32_e32 v3, v3, v2
	v_sub_f32_e32 v4, v4, v2
	.loc	1 261 45 is_stmt 0              ; attention_backward.py:261:45
	v_exp_f32_e32 v8, v8
	v_exp_f32_e32 v60, v60
	v_exp_f32_e32 v59, v59
	v_exp_f32_e32 v3, v3
	v_exp_f32_e32 v4, v4
	.loc	1 260 70 is_stmt 1              ; attention_backward.py:260:70
	v_sub_f32_e32 v61, v79, v2
	.loc	1 261 29                        ; attention_backward.py:261:29
	v_cndmask_b32_e64 v8, 0, v8, s10
	v_cndmask_b32_e64 v60, 0, v60, s9
	.loc	1 261 58 is_stmt 0              ; attention_backward.py:261:58
	v_sub_f32_e32 v5, v5, v2
	s_delay_alu instid0(TRANS32_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	.loc	1 261 29                        ; attention_backward.py:261:29
	v_cndmask_b32_e64 v59, 0, v59, s8
	v_cndmask_b32_e64 v3, 0, v3, s7
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_cndmask_b32_e64 v4, 0, v4, s3
	.loc	1 260 57 is_stmt 1              ; attention_backward.py:260:57
	v_exp_f32_e32 v61, v61
	.loc	1 261 45                        ; attention_backward.py:261:45
	v_exp_f32_e32 v5, v5
.Ltmp54:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:262:33 ] ]
	v_add_f32_e32 v3, v59, v3
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
.Ltmp55:
	.loc	1 260 21                        ; attention_backward.py:260:21
	v_cndmask_b32_e64 v61, 0, v61, s13
	.loc	1 261 29                        ; attention_backward.py:261:29
	v_cndmask_b32_e32 v5, 0, v5, vcc_lo
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 261 58 is_stmt 0              ; attention_backward.py:261:58
	v_dual_sub_f32 v7, v7, v2 :: v_dual_add_f32 v4, v4, v5
	.loc	1 261 45                        ; attention_backward.py:261:45
	v_exp_f32_e32 v7, v7
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp56:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:262:33 ] ]
	v_dual_add_f32 v3, v3, v4 :: v_dual_sub_f32 v6, v6, v2
.Ltmp57:
	.loc	1 261 45                        ; attention_backward.py:261:45
	v_exp_f32_e32 v6, v6
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 261 29 is_stmt 0              ; attention_backward.py:261:29
	v_cndmask_b32_e64 v7, 0, v7, s11
	v_cndmask_b32_e64 v6, 0, v6, s12
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp58:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:262:33 ] ]
	v_dual_add_f32 v5, v6, v7 :: v_dual_add_f32 v6, v8, v60
	v_add_f32_e32 v4, v5, v6
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add_f32_e32 v3, v3, v4
.Ltmp59:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:262:33 ]
	v_permlanex16_b32 v4, v3, s23, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp60:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:262:33 ] ]
	v_add_f32_e32 v3, v3, v4
.Ltmp61:
	.loc	1 262 19                        ; attention_backward.py:262:19
	v_fmac_f32_e32 v3, v80, v61
	.loc	1 194 9                         ; attention_backward.py:194:9
	s_cbranch_scc1 .LBB0_2
	s_branch .LBB0_4
.LBB0_3:
	.loc	1 0 9 is_stmt 0                 ; attention_backward.py:0:9
	v_dual_mov_b32 v2, 0xff800000 :: v_dual_mov_b32 v3, 0
.LBB0_4:                                ; %Flow143
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 264 43 is_stmt 1              ; attention_backward.py:264:43
	v_cmp_gt_f32_e32 vcc_lo, 0x800000, v3
.Ltmp62:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_dual_add_f32 v66, v43, v47 :: v_dual_and_b32 v1, 56, v0
	s_load_b32 s48, s[0:1], 0x74
	v_dual_add_f32 v65, v46, v50 :: v_dual_and_b32 v6, 31, v0
.Ltmp63:
	.loc	1 264 43                        ; attention_backward.py:264:43
	v_cndmask_b32_e64 v5, 0, 32, vcc_lo
	v_cndmask_b32_e64 v4, 0, 0x42000000, vcc_lo
	v_mov_b32_e32 v8, 0
	.loc	1 266 9                         ; attention_backward.py:266:9
	v_lshl_add_u32 v7, v69, 2, 0
	.loc	1 264 26                        ; attention_backward.py:264:26
	v_cmp_lt_f32_e64 s0, 0, v3
	.loc	1 264 43 is_stmt 0              ; attention_backward.py:264:43
	v_ldexp_f32 v5, v3, v5
	.loc	1 124 21 is_stmt 1              ; attention_backward.py:124:21
	v_or_b32_e32 v3, s14, v6
	.loc	1 266 9                         ; attention_backward.py:266:9
	s_waitcnt lgkmcnt(0)
	s_barrier
	v_cmp_eq_u32_e32 vcc_lo, 0, v70
	.loc	1 264 43                        ; attention_backward.py:264:43
	v_log_f32_e32 v5, v5
	.loc	1 128 21                        ; attention_backward.py:128:21
	v_cmp_gt_i32_e64 s8, 0x800, v3
.Ltmp64:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_dual_add_f32 v67, v44, v48 :: v_dual_add_f32 v68, v45, v49
.Ltmp65:
	.loc	1 266 9                         ; attention_backward.py:266:9
	s_and_b32 s21, s21, 0xffff
	s_mov_b32 s23, 0x31027000
	s_and_b32 vcc_lo, vcc_lo, s8
	s_mov_b32 s22, 0x7ffffffe
	.loc	1 392 17                        ; attention_backward.py:392:17
	v_cmp_o_f32_e64 s1, v37, v37
	s_delay_alu instid0(TRANS32_DEP_1)
	.loc	1 264 43                        ; attention_backward.py:264:43
	v_dual_sub_f32 v4, v5, v4 :: v_dual_lshlrev_b32 v73, 4, v42
	.loc	1 267 9                         ; attention_backward.py:267:9
	v_lshlrev_b32_e32 v5, 1, v1
	.loc	1 392 17                        ; attention_backward.py:392:17
	v_cmp_o_f32_e64 s7, v39, v39
	v_mov_b16_e32 v42.l, v35.h
	.loc	1 267 9                         ; attention_backward.py:267:9
	s_and_b32 s45, s45, 0xffff
	.loc	1 264 37                        ; attention_backward.py:264:37
	v_add_f32_e32 v1, v2, v4
	.loc	1 266 9                         ; attention_backward.py:266:9
	v_lshl_add_u32 v2, v70, 1, v7
	.loc	1 266 18 is_stmt 0              ; attention_backward.py:266:18
	v_or_b32_e32 v4, s46, v6
	.loc	1 267 9 is_stmt 1               ; attention_backward.py:267:9
	v_add_nc_u32_e32 v75, 0, v5
	.loc	1 392 17                        ; attention_backward.py:392:17
	v_mov_b16_e32 v7.h, 0
	.loc	1 264 17                        ; attention_backward.py:264:17
	v_cndmask_b32_e64 v179, 0, v1, s0
	.loc	1 266 9                         ; attention_backward.py:266:9
	v_lshl_add_u32 v1, v6, 2, 0
	v_add_lshl_u32 v3, v4, s14, 2
	.loc	1 267 9                         ; attention_backward.py:267:9
	v_and_b32_e32 v74, 24, v0
	.loc	1 392 17                        ; attention_backward.py:392:17
	v_mov_b16_e32 v7.l, v38.h
	.loc	1 266 9                         ; attention_backward.py:266:9
	ds_store_b32 v2, v179
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b32 v1, v1
	v_cndmask_b32_e32 v3, 0x80000000, v3, vcc_lo
	.loc	1 267 9                         ; attention_backward.py:267:9
	v_lshrrev_b32_e32 v43, 1, v74
	.loc	1 392 17                        ; attention_backward.py:392:17
	v_mov_b16_e32 v2.l, v37.h
	v_mov_b16_e32 v6.l, v39.h
	v_mov_b16_e32 v2.h, v7.h
	v_mov_b16_e32 v6.h, v7.h
	.loc	1 267 9                         ; attention_backward.py:267:9
	v_add3_u32 v43, 0, v73, v43
	.loc	1 392 17                        ; attention_backward.py:392:17
	v_cmp_o_f32_e64 s0, v38, v38
	v_mov_b16_e32 v4.l, v33.h
	v_and_b32_e32 v2, 1, v2
	v_and_b32_e32 v6, 1, v6
	v_mov_b16_e32 v4.h, v7.h
	v_mov_b16_e32 v42.h, v7.h
	.loc	1 267 9                         ; attention_backward.py:267:9
	s_mov_b32 s46, s22
	.loc	1 392 17                        ; attention_backward.py:392:17
	v_add3_u32 v2, v37, v2, 0x7fff
	v_add3_u32 v6, v39, v6, 0x7fff
	.loc	1 267 9                         ; attention_backward.py:267:9
	s_mov_b32 s47, s23
	.loc	1 392 17                        ; attention_backward.py:392:17
	v_and_b32_e32 v4, 1, v4
	v_cmp_o_f32_e32 vcc_lo, v34, v34
	.loc	1 266 9                         ; attention_backward.py:266:9
	s_waitcnt lgkmcnt(0)
	buffer_store_b32 v1, v3, s[20:23], 0 offen
	.loc	1 267 9                         ; attention_backward.py:267:9
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v75, v[65:68]
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b32 v43, v43
	.loc	1 392 17                        ; attention_backward.py:392:17
	v_and_b32_e32 v1, 1, v7
	v_mov_b16_e32 v7.l, v40.h
	v_cndmask_b16 v2.l, 0x7fff, v6.h, s7
	v_and_b32_e32 v6, 1, v42
	v_add3_u32 v4, v33, v4, 0x7fff
	v_add3_u32 v1, v38, v1, 0x7fff
	v_and_b32_e32 v38, 1, v7
	v_mov_b16_e32 v7.l, v34.h
	v_cndmask_b16 v1.l, 0x7fff, v2.h, s1
	v_add3_u32 v6, v35, v6, 0x7fff
	v_cndmask_b16 v1.h, 0x7fff, v1.h, s0
	v_add3_u32 v37, v40, v38, 0x7fff
	v_and_b32_e32 v38, 1, v7
	v_mov_b16_e32 v7.l, v36.h
	v_cmp_o_f32_e64 s0, v36, v36
	v_cmp_o_f32_e64 s1, v35, v35
	v_cmp_o_f32_e64 s3, v40, v40
	v_xad_u32 v5, v41, v5, 0
	v_lshrrev_b32_e32 v178, 4, v0
	.loc	1 267 9                         ; attention_backward.py:267:9
	s_waitcnt lgkmcnt(0)
	buffer_store_b32 v43, v3, s[44:47], 0 offen
	.loc	1 392 17                        ; attention_backward.py:392:17
	v_add3_u32 v3, v34, v38, 0x7fff
	v_and_b32_e32 v34, 1, v7
	v_mov_b16_e32 v7.l, v30.h
	v_cndmask_b16 v4.l, 0x7fff, v6.h, s1
	v_cmp_o_f32_e64 s1, v25, v25
	v_cndmask_b16 v3.h, 0x7fff, v3.h, vcc_lo
	v_cmp_o_f32_e32 vcc_lo, v33, v33
	v_add3_u32 v33, v36, v34, 0x7fff
	v_mov_b16_e32 v34.l, v29.h
	v_mov_b16_e32 v34.h, v7.h
	v_and_b32_e32 v35, 1, v7
	v_cndmask_b16 v3.l, 0x7fff, v4.h, vcc_lo
	v_cndmask_b16 v4.h, 0x7fff, v33.h, s0
	v_cmp_o_f32_e32 vcc_lo, v30, v30
	v_and_b32_e32 v6, 1, v34
	v_add3_u32 v33, v30, v35, 0x7fff
	v_mov_b16_e32 v7.l, v32.h
	v_mov_b16_e32 v30.l, v31.h
	v_mov_b16_e32 v30.h, v7.h
	v_add3_u32 v6, v29, v6, 0x7fff
	v_cndmask_b16 v33.h, 0x7fff, v33.h, vcc_lo
	v_cmp_o_f32_e32 vcc_lo, v29, v29
	v_and_b32_e32 v29, 1, v7
	v_mov_b16_e32 v34.l, v25.h
	v_mov_b16_e32 v7.l, v26.h
	v_and_b32_e32 v30, 1, v30
	v_cmp_o_f32_e64 s0, v32, v32
	v_add3_u32 v29, v32, v29, 0x7fff
	v_cndmask_b16 v33.l, 0x7fff, v6.h, vcc_lo
	v_dual_mov_b32 v55, v8 :: v_dual_and_b32 v6, 1, v34
	v_dual_mov_b32 v53, v8 :: v_dual_and_b32 v32, 1, v7
	v_mov_b16_e32 v7.l, v28.h
	v_add3_u32 v30, v31, v30, 0x7fff
	v_cndmask_b16 v34.h, 0x7fff, v29.h, s0
	v_cmp_o_f32_e32 vcc_lo, v31, v31
	v_add3_u32 v6, v25, v6, 0x7fff
	v_add3_u32 v29, v26, v32, 0x7fff
	v_cmp_o_f32_e64 s0, v26, v26
	v_mov_b16_e32 v25.l, v27.h
	v_mov_b16_e32 v25.h, v7.h
	v_dual_mov_b32 v51, v8 :: v_dual_and_b32 v26, 1, v7
	v_cndmask_b16 v34.l, 0x7fff, v30.h, vcc_lo
	v_cndmask_b16 v35.l, 0x7fff, v6.h, s1
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_dual_mov_b32 v49, v8 :: v_dual_and_b32 v6, 1, v25
	v_add3_u32 v25, v28, v26, 0x7fff
	v_cmp_o_f32_e32 vcc_lo, v28, v28
	v_mov_b16_e32 v7.l, v22.h
	v_mov_b16_e32 v26.l, v21.h
	v_mov_b16_e32 v26.h, v7.h
	v_add3_u32 v6, v27, v6, 0x7fff
	v_cndmask_b16 v36.h, 0x7fff, v25.h, vcc_lo
	v_cmp_o_f32_e32 vcc_lo, v27, v27
	v_and_b32_e32 v25, 1, v7
	v_mov_b16_e32 v27.l, v23.h
	v_mov_b16_e32 v27.h, v7.h
	v_mov_b16_e32 v7.l, v24.h
	v_cndmask_b16 v35.h, 0x7fff, v29.h, s0
	v_dual_mov_b32 v63, v8 :: v_dual_and_b32 v26, 1, v26
	v_add3_u32 v25, v22, v25, 0x7fff
	v_cmp_o_f32_e64 s0, v22, v22
	v_cndmask_b16 v36.l, 0x7fff, v6.h, vcc_lo
	v_dual_mov_b32 v61, v8 :: v_dual_and_b32 v6, 1, v27
	v_and_b32_e32 v27, 1, v7
	v_mov_b16_e32 v7.l, v18.h
	v_add3_u32 v26, v21, v26, 0x7fff
	v_cndmask_b16 v22.h, 0x7fff, v25.h, s0
	v_cmp_o_f32_e32 vcc_lo, v21, v21
	v_add3_u32 v6, v23, v6, 0x7fff
	v_add3_u32 v21, v24, v27, 0x7fff
	v_cmp_o_f32_e64 s0, v24, v24
	v_cmp_o_f32_e64 s1, v23, v23
	v_mov_b16_e32 v24.l, v17.h
	v_mov_b16_e32 v24.h, v7.h
	v_and_b32_e32 v25, 1, v7
	v_cndmask_b16 v22.l, 0x7fff, v26.h, vcc_lo
	v_cndmask_b16 v23.h, 0x7fff, v21.h, s0
	v_cndmask_b16 v23.l, 0x7fff, v6.h, s1
	v_dual_mov_b32 v59, v8 :: v_dual_and_b32 v6, 1, v24
	v_add3_u32 v21, v18, v25, 0x7fff
	v_cmp_o_f32_e32 vcc_lo, v18, v18
	v_mov_b16_e32 v7.l, v20.h
	s_delay_alu instid0(VALU_DEP_4)
	v_add3_u32 v6, v17, v6, 0x7fff
	v_mov_b16_e32 v21.l, v13.h
	v_mov_b16_e32 v18.l, v19.h
	v_cndmask_b16 v24.h, 0x7fff, v21.h, vcc_lo
	v_cmp_o_f32_e32 vcc_lo, v17, v17
	v_dual_mov_b32 v56, v8 :: v_dual_and_b32 v17, 1, v7
	v_mov_b16_e32 v21.h, v7.h
	v_mov_b16_e32 v7.l, v14.h
	v_mov_b16_e32 v18.h, v7.h
	s_delay_alu instid0(VALU_DEP_4)
	v_add3_u32 v17, v20, v17, 0x7fff
	v_cmp_o_f32_e64 s0, v20, v20
	v_cndmask_b16 v24.l, 0x7fff, v6.h, vcc_lo
	v_and_b32_e32 v6, 1, v21
	v_and_b32_e32 v20, 1, v7
	v_dual_mov_b32 v57, v8 :: v_dual_and_b32 v18, 1, v18
	v_cndmask_b16 v25.h, 0x7fff, v17.h, s0
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_add3_u32 v6, v13, v6, 0x7fff
	v_add3_u32 v17, v14, v20, 0x7fff
	v_mov_b16_e32 v7.l, v16.h
	v_cmp_o_f32_e64 s0, v14, v14
	v_cmp_o_f32_e64 s1, v13, v13
	v_mov_b16_e32 v14.l, v15.h
	v_mov_b16_e32 v14.h, v7.h
	v_add3_u32 v18, v19, v18, 0x7fff
	v_cmp_o_f32_e32 vcc_lo, v19, v19
	v_dual_mov_b32 v54, v8 :: v_dual_and_b32 v19, 1, v7
	v_cndmask_b16 v13.h, 0x7fff, v17.h, s0
	v_cndmask_b16 v13.l, 0x7fff, v6.h, s1
	v_and_b32_e32 v6, 1, v14
	v_mov_b16_e32 v17.l, v9.h
	v_mov_b16_e32 v17.h, v7.h
	v_mov_b16_e32 v7.l, v10.h
	v_cndmask_b16 v25.l, 0x7fff, v18.h, vcc_lo
	v_add3_u32 v14, v16, v19, 0x7fff
	v_cmp_o_f32_e32 vcc_lo, v16, v16
	v_add3_u32 v6, v15, v6, 0x7fff
	v_cmp_o_f32_e64 s0, v15, v15
	v_dual_mov_b32 v52, v8 :: v_dual_and_b32 v15, 1, v17
	v_and_b32_e32 v16, 1, v7
	v_mov_b16_e32 v7.l, v12.h
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cndmask_b16 v14.l, 0x7fff, v6.h, s0
	v_add3_u32 v6, v9, v15, 0x7fff
	v_mov_b16_e32 v15.l, v11.h
	v_mov_b16_e32 v15.h, v7.h
	v_dual_mov_b32 v50, v8 :: v_dual_and_b32 v7, 1, v7
	v_cndmask_b16 v14.h, 0x7fff, v14.h, vcc_lo
	v_add3_u32 v16, v10, v16, 0x7fff
	v_cmp_o_f32_e32 vcc_lo, v10, v10
	v_cmp_o_f32_e64 s0, v9, v9
	v_dual_mov_b32 v64, v8 :: v_dual_and_b32 v9, 1, v15
	v_add3_u32 v7, v12, v7, 0x7fff
	v_cmp_o_f32_e64 s1, v12, v12
	v_cndmask_b16 v15.h, 0x7fff, v16.h, vcc_lo
	v_cndmask_b16 v15.l, 0x7fff, v6.h, s0
	v_add3_u32 v6, v11, v9, 0x7fff
	v_cmp_o_f32_e32 vcc_lo, v11, v11
	v_cndmask_b16 v16.h, 0x7fff, v7.h, s1
	v_dual_mov_b32 v62, v8 :: v_dual_lshlrev_b32 v7, 7, v69
	v_dual_mov_b32 v60, v8 :: v_dual_lshlrev_b32 v9, 6, v70
	v_cndmask_b16 v2.h, 0x7fff, v37.h, s3
	v_cndmask_b16 v16.l, 0x7fff, v6.h, vcc_lo
	s_waitcnt lgkmcnt(0)
	s_delay_alu instid0(VALU_DEP_3)
	v_or3_b32 v6, v7, v9, v73
	s_barrier
	ds_store_b128 v5, v[1:4]
	ds_store_b128 v5, v[33:36] offset:1024
	ds_store_b128 v5, v[22:25] offset:2048
	ds_store_b128 v5, v[13:16] offset:3072
	s_waitcnt lgkmcnt(0)
	s_barrier
	v_dual_mov_b32 v58, v8 :: v_dual_add_nc_u32 v1, 0, v6
	v_xad_u32 v2, v6, 16, 0
	v_xad_u32 v3, v6, 32, 0
	v_xad_u32 v4, v6, 48, 0
	ds_load_b128 v[17:20], v1
	ds_load_b128 v[21:24], v2
	v_xad_u32 v1, v6, 64, 0
	v_xad_u32 v2, 0x50, v6, 0
	ds_load_b128 v[25:28], v3
	ds_load_b128 v[29:32], v4
	v_xad_u32 v3, 0x60, v6, 0
	v_xad_u32 v4, 0x70, v6, 0
	ds_load_b128 v[33:36], v1
	ds_load_b128 v[37:40], v2
	ds_load_b128 v[41:44], v3
	ds_load_b128 v[45:48], v4
	v_mov_b32_e32 v7, v8
	v_mov_b32_e32 v6, v8
	v_mov_b32_e32 v5, v8
	v_mov_b32_e32 v4, v8
	v_mov_b32_e32 v3, v8
	v_mov_b32_e32 v2, v8
	v_mov_b32_e32 v1, v8
	v_mov_b32_e32 v16, v8
	v_mov_b32_e32 v15, v8
	v_mov_b32_e32 v14, v8
	v_mov_b32_e32 v13, v8
	v_mov_b32_e32 v12, v8
	v_mov_b32_e32 v11, v8
	v_mov_b32_e32 v10, v8
	v_mov_b32_e32 v9, v8
	s_mov_b32 s49, 0
	.loc	1 270 9                         ; attention_backward.py:270:9
	s_and_not1_b32 vcc_lo, exec_lo, s24
	.loc	1 396 43                        ; attention_backward.py:396:43
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v75, v[65:68]
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_cbranch_vccnz .LBB0_7
; %bb.5:                                ; %.lr.ph111
	.loc	1 0 43 is_stmt 0                ; attention_backward.py:0:43
	v_dual_mov_b32 v10, 0x7632 :: v_dual_and_b32 v1, 8, v0
	v_dual_mov_b32 v65, 0 :: v_dual_and_b32 v4, 48, v0
	.loc	1 396 43                        ; attention_backward.py:396:43
	v_lshrrev_b32_e32 v7, 2, v70
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_lshrrev_b32_e32 v1, 1, v1
	.loc	1 168 40 is_stmt 1              ; attention_backward.py:168:40
	v_lshlrev_b32_e32 v2, 4, v71
	v_dual_mov_b32 v58, v65 :: v_dual_and_b32 v3, 12, v0
	.loc	1 396 43                        ; attention_backward.py:396:43
	v_bfe_i32 v6, v0, 3, 1
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_mov_b32 v62, v65 :: v_dual_add_nc_u32 v1, 0, v1
	v_dual_mov_b32 v60, v65 :: v_dual_lshlrev_b32 v5, 1, v3
	v_dual_mov_b32 v50, v65 :: v_dual_lshlrev_b32 v13, 9, v71
	s_delay_alu instid0(VALU_DEP_3)
	v_add3_u32 v1, v1, v7, v73
	v_cndmask_b32_e64 v10, 0x3276, v10, s5
	v_dual_mov_b32 v52, v65 :: v_dual_lshlrev_b32 v3, 5, v3
	v_lshrrev_b32_e32 v8, 1, v4
	ds_load_b32 v181, v1
	v_mov_b32_e32 v1, 0x5410
	.loc	1 310 21                        ; attention_backward.py:310:21
	v_cmp_gt_i32_e32 vcc_lo, s48, v2
	v_lshl_or_b32 v10, v10, 8, v10
	v_or3_b32 v182, v3, v13, v2
	v_dual_mov_b32 v57, 0 :: v_dual_and_b32 v2, 0x420, v6
	v_cndmask_b32_e64 v1, 0x1054, v1, s5
	v_lshl_or_b32 v3, v4, 3, v73
	v_lshl_or_b32 v180, v69, 5, v5
	v_dual_mov_b32 v64, v65 :: v_dual_lshlrev_b32 v11, 1, v74
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_lshl_or_b32 v1, v1, 8, v1
	v_lshl_or_b32 v12, v74, 6, v73
	v_dual_mov_b32 v59, v65 :: v_dual_and_b32 v4, 0x760076, v10
	v_xor_b32_e32 v183, v3, v2
	v_dual_mov_b32 v54, v65 :: v_dual_and_b32 v1, 0x540054, v1
	v_xor_b32_e32 v5, v72, v8
	v_xor_b32_e32 v7, 8, v180
	v_xor_b32_e32 v8, 16, v180
	s_delay_alu instid0(VALU_DEP_4)
	v_lshl_or_b32 v1, v1, 4, v1
	v_xor_b32_e32 v9, 24, v180
	v_xor_b32_e32 v11, v12, v11
	v_lshl_add_u32 v6, v70, 2, 0
	v_xor_b32_e32 v10, 16, v182
	v_lshl_or_b32 v2, v4, 4, v4
	v_xor_b32_e32 v3, 32, v182
	v_xor_b32_e32 v4, 48, v182
	v_xor_b32_e32 v12, 0x210, v183
	v_dual_mov_b32 v61, v65 :: v_dual_and_b32 v184, 0x5040504, v1
	v_lshlrev_b32_e32 v1, 5, v0
	v_dual_mov_b32 v56, v65 :: v_dual_and_b32 v185, 0x7060706, v2
	v_lshl_add_u32 v0, v69, 1, 0
	v_dual_mov_b32 v63, v65 :: v_dual_add_nc_u32 v186, 0, v5
	v_add_nc_u32_e32 v187, 0, v7
	v_dual_mov_b32 v49, 0 :: v_dual_add_nc_u32 v188, 0, v8
	v_dual_mov_b32 v14, v65 :: v_dual_add_nc_u32 v189, 0, v9
	v_dual_mov_b32 v51, v65 :: v_dual_add_nc_u32 v190, v6, v11
	v_dual_mov_b32 v16, v65 :: v_dual_add_nc_u32 v191, 0, v10
	v_dual_mov_b32 v53, v65 :: v_dual_add_nc_u32 v192, 0, v3
	v_dual_mov_b32 v2, v65 :: v_dual_add_nc_u32 v193, 0, v4
	v_dual_mov_b32 v55, v65 :: v_dual_add_nc_u32 v194, 0, v12
	v_dual_mov_b32 v9, 0 :: v_dual_mov_b32 v6, v65
	v_dual_mov_b32 v10, v65 :: v_dual_add_nc_u32 v195, 0, v1
	v_mov_b32_e32 v4, v65
	v_mov_b32_e32 v11, v65
	v_mov_b32_e32 v12, v65
	v_mov_b32_e32 v13, v65
	v_mov_b32_e32 v15, v65
	v_dual_mov_b32 v1, 0 :: v_dual_mov_b32 v8, v65
	v_mov_b32_e32 v3, v65
	v_mov_b32_e32 v5, v65
	v_mov_b32_e32 v7, v65
	v_mov_b16_e64 v204.h, 0
	s_and_b32 s27, s27, 0xffff
	s_and_b32 s17, s17, 0xffff
	.loc	1 349 30                        ; attention_backward.py:349:30
	s_lshl_b32 s44, s15, 10
	.loc	1 371 21                        ; attention_backward.py:371:21
	s_lshl_b32 s45, s15, 7
	s_and_b32 s29, s29, 0xffff
	s_and_b32 s41, s19, 0xffff
	s_mov_b32 s20, s26
	s_mov_b32 s21, s27
	s_mov_b32 s24, s16
	s_mov_b32 s25, s17
	s_mov_b32 s26, s22
	s_mov_b32 s27, s23
	s_mov_b32 s30, s22
	s_mov_b32 s31, s23
	s_mov_b32 s46, 0x76543210
	s_mov_b32 s40, s18
	s_mov_b32 s42, s22
	s_mov_b32 s43, s23
.LBB0_6:                                ; =>This Inner Loop Header: Depth=1
	.loc	1 347 36                        ; attention_backward.py:347:36
	s_lshr_b32 s0, s49, 1
	.loc	1 275 21                        ; attention_backward.py:275:21
	v_add_nc_u32_e32 v69, s49, v167
	.loc	1 351 21                        ; attention_backward.py:351:21
	s_add_i32 s0, s0, s44
	.loc	1 382 31                        ; attention_backward.py:382:31
	v_add_nc_u32_e32 v228, 0, v183
	.loc	1 351 21                        ; attention_backward.py:351:21
	v_mad_u64_u32 v[66:67], null, s0, s35, v[137:138]
	.loc	1 376 24                        ; attention_backward.py:376:24
	s_lshr_b32 s0, s49, 4
	.loc	1 307 37                        ; attention_backward.py:307:37
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	.loc	1 374 21                        ; attention_backward.py:374:21
	s_add_i32 s0, s0, s45
	.loc	1 364 39                        ; attention_backward.py:364:39
	.loc	1 374 21                        ; attention_backward.py:374:21
	s_mul_i32 s0, s0, s35
	.loc	1 364 39                        ; attention_backward.py:364:39
	.loc	1 350 32                        ; attention_backward.py:350:32
	v_cndmask_b32_e64 v68, 0x80000000, v66, s6
	.loc	1 275 21                        ; attention_backward.py:275:21
	v_mad_u64_u32 v[66:67], null, v69, s34, v[138:139]
	.loc	1 290 33                        ; attention_backward.py:290:33
	v_lshlrev_b32_e32 v67, 1, v69
	.loc	1 373 36                        ; attention_backward.py:373:36
	v_add_lshl_u32 v69, s0, v159, 1
	.loc	1 307 37                        ; attention_backward.py:307:37
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 274 28                        ; attention_backward.py:274:28
	v_cndmask_b32_e64 v66, 0x80000000, v66, s4
	.loc	1 373 36                        ; attention_backward.py:373:36
	v_cndmask_b32_e64 v69, 0x80000000, v69, s6
	.loc	1 364 39                        ; attention_backward.py:364:39
	.loc	1 274 28                        ; attention_backward.py:274:28
	buffer_load_b64 v[147:148], v66, s[20:23], 0 offen
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 290 33                        ; attention_backward.py:290:33
	v_add_lshl_u32 v66, v168, s49, 1
	.loc	1 364 39                        ; attention_backward.py:364:39
	.loc	1 307 37                        ; attention_backward.py:307:37
	.loc	1 274 28                        ; attention_backward.py:274:28
	s_waitcnt vmcnt(0)
	ds_store_b64 v186, v[147:148]
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 290 33                        ; attention_backward.py:290:33
	s_clause 0x1
	buffer_load_u16 v105, v67, s[24:27], 0 offen
	buffer_load_u16 v202, v66, s[24:27], 0 offen
	v_add_lshl_u32 v66, v169, s49, 1
	.loc	1 304 27                        ; attention_backward.py:304:27
	v_bfe_u32 v110, v148, 16, 4
	.loc	1 274 28                        ; attention_backward.py:274:28
	v_lshrrev_b32_e32 v113, 8, v147
	.loc	1 304 27                        ; attention_backward.py:304:27
	v_bfe_u32 v114, v147, 8, 4
	.loc	1 290 33                        ; attention_backward.py:290:33
	buffer_load_u16 v203, v66, s[24:27], 0 offen
	v_add_lshl_u32 v66, v170, s49, 1
	.loc	1 306 50                        ; attention_backward.py:306:50
	v_or_b32_e32 v111, -16, v110
	v_or_b32_e32 v115, -16, v114
	.loc	1 290 33                        ; attention_backward.py:290:33
	buffer_load_u16 v200, v66, s[24:27], 0 offen
	v_add_lshl_u32 v66, v171, s49, 1
	buffer_load_u16 v201, v66, s[24:27], 0 offen
	v_add_lshl_u32 v66, v172, s49, 1
	buffer_load_u16 v198, v66, s[24:27], 0 offen
	v_add_lshl_u32 v66, v173, s49, 1
	buffer_load_u16 v199, v66, s[24:27], 0 offen
	v_add_lshl_u32 v66, v174, s49, 1
	buffer_load_u16 v197, v66, s[24:27], 0 offen
	v_add_lshl_u32 v66, v175, s49, 1
	buffer_load_u16 v196, v66, s[24:27], 0 offen
	.loc	1 350 32                        ; attention_backward.py:350:32
	buffer_load_b64 v[66:67], v68, s[28:31], 0 offen
	.loc	1 290 33                        ; attention_backward.py:290:33
	s_waitcnt vmcnt(9)
	v_lshlrev_b32_e32 v205, 16, v105
	.loc	1 274 28                        ; attention_backward.py:274:28
	v_add_nc_u32_e32 v70, 0, v180
	ds_load_b64 v[149:150], v70
	ds_load_b64 v[151:152], v187
	ds_load_b64 v[153:154], v188
	ds_load_b64 v[155:156], v189
	.loc	1 373 36                        ; attention_backward.py:373:36
	buffer_load_b128 v[68:71], v69, s[40:43], 0 offen
	.loc	1 393 17                        ; attention_backward.py:393:17
	s_waitcnt lgkmcnt(0)
	s_barrier
	v_add_nc_u32_e32 v227, 0, v182
	.loc	1 304 27                        ; attention_backward.py:304:27
	v_and_b32_e32 v108, 15, v148
	.loc	1 393 17                        ; attention_backward.py:393:17
	s_waitcnt vmcnt(0)
	ds_store_b128 v190, v[68:71]
	ds_store_b128 v190, v[68:71] offset:256
	.loc	1 360 76                        ; attention_backward.py:360:76
	v_and_b16 v68.l, v66.l, 15
	.loc	1 361 29                        ; attention_backward.py:361:29
	v_bfe_u32 v71, v66, 16, 4
	.loc	1 350 32                        ; attention_backward.py:350:32
	v_lshrrev_b32_e32 v106, 8, v66
	.loc	1 361 29                        ; attention_backward.py:361:29
	v_and_b32_e32 v69, 15, v66
	.loc	1 350 32                        ; attention_backward.py:350:32
	v_lshrrev_b64 v[80:81], 24, v[66:67]
	.loc	1 363 38                        ; attention_backward.py:363:38
	v_cmp_lt_u16_e64 s0, 7, v68.l
	.loc	1 360 76                        ; attention_backward.py:360:76
	v_and_b16 v68.l, v66.h, 15
	.loc	1 363 54                        ; attention_backward.py:363:54
	v_or_b32_e32 v72, -16, v71
	v_or_b32_e32 v70, -16, v69
	.loc	1 393 17                        ; attention_backward.py:393:17
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 363 38                        ; attention_backward.py:363:38
	v_cmp_lt_u16_e64 s1, 7, v68.l
	.loc	1 360 76                        ; attention_backward.py:360:76
	v_and_b16 v68.l, v106.l, 15
	.loc	1 363 29                        ; attention_backward.py:363:29
	v_cndmask_b32_e64 v69, v69, v70, s0
	.loc	1 306 50                        ; attention_backward.py:306:50
	v_or_b32_e32 v109, -16, v108
	.loc	1 362 30                        ; attention_backward.py:362:30
	v_bfe_u32 v118, v66, 20, 4
	.loc	1 363 29                        ; attention_backward.py:363:29
	v_cndmask_b32_e64 v71, v71, v72, s1
	.loc	1 361 29                        ; attention_backward.py:361:29
	v_bfe_u32 v72, v66, 8, 4
	.loc	1 363 38                        ; attention_backward.py:363:38
	v_cmp_lt_u16_e64 s1, 7, v68.l
	.loc	1 350 32                        ; attention_backward.py:350:32
	v_alignbit_b32 v68, v67, v66, 24
	.loc	1 364 56                        ; attention_backward.py:364:56
	v_or_b32_e32 v119, -16, v118
	.loc	1 350 32                        ; attention_backward.py:350:32
	v_lshrrev_b32_e32 v229, 8, v67
	.loc	1 363 54                        ; attention_backward.py:363:54
	v_or_b32_e32 v73, -16, v72
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 361 29                        ; attention_backward.py:361:29
	v_and_b32_e32 v70, 15, v68
	.loc	1 360 76                        ; attention_backward.py:360:76
	v_and_b16 v68.l, v80.l, 15
	.loc	1 363 29                        ; attention_backward.py:363:29
	v_cndmask_b32_e64 v72, v72, v73, s1
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 363 54 is_stmt 0              ; attention_backward.py:363:54
	v_or_b32_e32 v73, -16, v70
	.loc	1 363 38                        ; attention_backward.py:363:38
	v_cmp_lt_u16_e64 s0, 7, v68.l
	.loc	1 382 31 is_stmt 1              ; attention_backward.py:382:31
	v_cvt_f32_i32_e32 v68, v69
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cvt_f32_i32_e32 v69, v72
	.loc	1 363 29                        ; attention_backward.py:363:29
	v_cndmask_b32_e64 v73, v70, v73, s0
	.loc	1 382 31                        ; attention_backward.py:382:31
	v_cvt_f32_i32_e32 v70, v71
	s_delay_alu instid0(VALU_DEP_2)
	v_cvt_f32_i32_e32 v71, v73
	.loc	1 373 36                        ; attention_backward.py:373:36
	ds_load_b128 v[72:75], v227
	ds_load_b128 v[93:96], v227 offset:64
	ds_load_b128 v[76:79], v191
	ds_load_b128 v[89:92], v191 offset:64
	ds_load_b128 v[101:104], v192
	ds_load_b128 v[85:88], v192 offset:64
	ds_load_b128 v[97:100], v193
	ds_load_b128 v[81:84], v193 offset:64
	.loc	1 382 31                        ; attention_backward.py:382:31
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v228, v[68:71]
	.loc	1 304 28                        ; attention_backward.py:304:28
	v_and_b16 v68.l, v147.h, 15
	.loc	1 274 28                        ; attention_backward.py:274:28
	v_lshrrev_b64 v[69:70], 24, v[147:148]
	.loc	1 304 27                        ; attention_backward.py:304:27
	v_bfe_u32 v71, v147, 16, 4
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 306 36                        ; attention_backward.py:306:36
	v_cmp_lt_u16_e64 s0, 7, v68.l
	.loc	1 304 28                        ; attention_backward.py:304:28
	v_and_b16 v68.l, v148.l, 15
	.loc	1 274 28                        ; attention_backward.py:274:28
	v_bfe_i32 v112, v69, 0, 8
	.loc	1 304 28                        ; attention_backward.py:304:28
	v_and_b16 v68.h, v69.l, 15
	.loc	1 306 50                        ; attention_backward.py:306:50
	v_or_b32_e32 v107, -16, v71
	.loc	1 373 36                        ; attention_backward.py:373:36
	v_lshlrev_b32_e32 v230, 16, v78
	.loc	1 306 36                        ; attention_backward.py:306:36
	v_cmp_lt_u16_e64 s1, 7, v68.l
	.loc	1 304 28                        ; attention_backward.py:304:28
	v_and_b16 v68.l, v148.h, 15
	.loc	1 373 36                        ; attention_backward.py:373:36
	v_and_b32_e32 v78, 0xffff0000, v78
	.loc	1 306 27                        ; attention_backward.py:306:27
	v_cndmask_b32_e64 v107, v71, v107, s0
	.loc	1 304 27                        ; attention_backward.py:304:27
	v_bfe_u32 v71, v148, 8, 4
	.loc	1 306 27                        ; attention_backward.py:306:27
	v_cndmask_b32_e64 v108, v108, v109, s1
	.loc	1 306 36 is_stmt 0              ; attention_backward.py:306:36
	v_cmp_lt_u16_e64 s3, 7, v68.l
	.loc	1 305 30 is_stmt 1              ; attention_backward.py:305:30
	v_lshrrev_b16 v68.l, 4, v69.l
	v_lshrrev_b16 v69.l, 4, v147.l
	.loc	1 274 28                        ; attention_backward.py:274:28
	v_lshrrev_b32_e32 v109, 8, v148
	.loc	1 373 36                        ; attention_backward.py:373:36
	v_lshlrev_b32_e32 v231, 16, v79
	.loc	1 306 27                        ; attention_backward.py:306:27
	v_cndmask_b32_e64 v110, v110, v111, s3
	.loc	1 274 28                        ; attention_backward.py:274:28
	v_lshrrev_b32_e32 v111, 24, v148
	.loc	1 305 30                        ; attention_backward.py:305:30
	v_and_b16 v204.l, v69.l, 15
	.loc	1 274 28                        ; attention_backward.py:274:28
	v_bfe_i32 v69, v147, 0, 8
	.loc	1 373 36                        ; attention_backward.py:373:36
	v_and_b32_e32 v79, 0xffff0000, v79
	v_lshlrev_b32_e32 v237, 16, v100
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 307 52                        ; attention_backward.py:307:52
	v_or_b32_e32 v70, -16, v204
	.loc	1 307 37 is_stmt 0              ; attention_backward.py:307:37
	v_cmp_gt_i16_e64 s5, 0, v69.l
	.loc	1 304 28 is_stmt 1              ; attention_backward.py:304:28
	v_and_b16 v69.l, v113.l, 15
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 306 36                        ; attention_backward.py:306:36
	v_cmp_lt_u16_e64 s7, 7, v69.l
	.loc	1 304 28                        ; attention_backward.py:304:28
	v_and_b16 v69.l, v109.l, 15
	.loc	1 306 27                        ; attention_backward.py:306:27
	v_cndmask_b32_e64 v114, v114, v115, s7
	.loc	1 306 50 is_stmt 0              ; attention_backward.py:306:50
	v_or_b32_e32 v115, -16, v71
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 306 36                        ; attention_backward.py:306:36
	v_cmp_lt_u16_e64 s0, 7, v69.l
	.loc	1 304 28 is_stmt 1              ; attention_backward.py:304:28
	v_and_b16 v69.l, v111.l, 15
	.loc	1 306 27                        ; attention_backward.py:306:27
	v_cndmask_b32_e64 v115, v71, v115, s0
	.loc	1 304 27                        ; attention_backward.py:304:27
	v_bfe_u32 v71, v148, 24, 4
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 306 36                        ; attention_backward.py:306:36
	v_cmp_lt_u16_e64 s0, 7, v69.l
	.loc	1 274 28                        ; attention_backward.py:274:28
	v_alignbit_b32 v69, v148, v147, 24
	.loc	1 306 50                        ; attention_backward.py:306:50
	v_or_b32_e32 v116, -16, v71
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 304 27                        ; attention_backward.py:304:27
	v_and_b32_e32 v69, 15, v69
	.loc	1 306 27                        ; attention_backward.py:306:27
	v_cndmask_b32_e64 v116, v71, v116, s0
	.loc	1 306 36 is_stmt 0              ; attention_backward.py:306:36
	v_cmp_lt_u16_e64 s0, 7, v68.h
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 306 50                        ; attention_backward.py:306:50
	v_or_b32_e32 v71, -16, v69
	.loc	1 362 32 is_stmt 1              ; attention_backward.py:362:32
	v_lshrrev_b16 v68.h, 4, v80.l
	.loc	1 306 27                        ; attention_backward.py:306:27
	v_cndmask_b32_e64 v117, v69, v71, s0
	.loc	1 362 32                        ; attention_backward.py:362:32
	v_lshrrev_b16 v69.l, 4, v106.l
	.loc	1 350 32                        ; attention_backward.py:350:32
	v_bfe_i32 v71, v80, 0, 8
	.loc	1 362 30                        ; attention_backward.py:362:30
	v_mov_b16_e64 v80.h, v204.h
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 362 32 is_stmt 0              ; attention_backward.py:362:32
	v_and_b16 v80.l, v69.l, 15
	.loc	1 350 32 is_stmt 1              ; attention_backward.py:350:32
	v_bfe_i32 v69, v106, 0, 8
	.loc	1 364 56                        ; attention_backward.py:364:56
	v_or_b32_e32 v106, -16, v80
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 364 39 is_stmt 0              ; attention_backward.py:364:39
	v_cmp_gt_i16_e64 s0, 0, v69.l
	.loc	1 350 32 is_stmt 1              ; attention_backward.py:350:32
	v_mov_b16_e32 v69.l, v66.h
	.loc	1 364 30                        ; attention_backward.py:364:30
	v_cndmask_b32_e64 v80, v80, v106, s0
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 350 32                        ; attention_backward.py:350:32
	v_bfe_i32 v69, v69, 0, 8
	.loc	1 311 21                        ; attention_backward.py:311:21
	v_cvt_f32_i32_e32 v106, v107
	.loc	1 364 39                        ; attention_backward.py:364:39
	v_cmp_gt_i16_e64 s1, 0, v69.l
	v_mov_b16_e32 v69.l, v71.l
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 311 21                        ; attention_backward.py:311:21
	v_mul_f32_e32 v106, v106, v205
	.loc	1 364 30                        ; attention_backward.py:364:30
	v_cndmask_b32_e64 v118, v118, v119, s1
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 364 39 is_stmt 0              ; attention_backward.py:364:39
	v_cmp_gt_i16_e64 s1, 0, v69.l
	.loc	1 307 28 is_stmt 1              ; attention_backward.py:307:28
	v_cndmask_b32_e64 v69, v204, v70, s5
	.loc	1 362 32                        ; attention_backward.py:362:32
	v_and_b16 v119.l, v68.h, 15
	.loc	1 305 30                        ; attention_backward.py:305:30
	v_lshrrev_b16 v68.h, 4, v113.l
	.loc	1 309 31                        ; attention_backward.py:309:31
	v_cndmask_b32_e32 v221, 0, v106, vcc_lo
	.loc	1 362 30                        ; attention_backward.py:362:30
	v_mov_b16_e64 v119.h, v204.h
	.loc	1 311 21                        ; attention_backward.py:311:21
	v_cvt_f32_i32_e32 v69, v69
	.loc	1 382 31                        ; attention_backward.py:382:31
	v_cvt_f32_i32_e32 v70, v118
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 364 56                        ; attention_backward.py:364:56
	v_or_b32_e32 v71, -16, v119
	.loc	1 311 21                        ; attention_backward.py:311:21
	v_mul_f32_e32 v69, v69, v205
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 364 30                        ; attention_backward.py:364:30
	v_cndmask_b32_e64 v71, v119, v71, s1
	.loc	1 309 31                        ; attention_backward.py:309:31
	v_cndmask_b32_e32 v225, 0, v69, vcc_lo
	.loc	1 274 28                        ; attention_backward.py:274:28
	v_bfe_i32 v69, v113, 0, 8
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 382 31                        ; attention_backward.py:382:31
	v_cvt_f32_i32_e32 v71, v71
	.loc	1 309 31                        ; attention_backward.py:309:31
	v_mov_b16_e64 v204.l, v225.h
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	.loc	1 307 37                        ; attention_backward.py:307:37
	v_cmp_gt_i16_e64 s0, 0, v69.l
	.loc	1 382 31                        ; attention_backward.py:382:31
	v_cvt_f32_i32_e32 v69, v80
	.loc	1 311 21                        ; attention_backward.py:311:21
	v_cvt_f32_i32_e32 v80, v114
	.loc	1 309 31                        ; attention_backward.py:309:31
	v_and_b32_e32 v226, 1, v204
	.loc	1 305 30                        ; attention_backward.py:305:30
	v_and_b16 v204.l, v68.h, 15
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 311 21                        ; attention_backward.py:311:21
	v_mul_f32_e32 v80, v80, v205
	.loc	1 307 52                        ; attention_backward.py:307:52
	v_or_b32_e32 v105, -16, v204
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 309 31                        ; attention_backward.py:309:31
	v_cndmask_b32_e32 v222, 0, v80, vcc_lo
	.loc	1 307 28                        ; attention_backward.py:307:28
	v_cndmask_b32_e64 v220, v204, v105, s0
	.loc	1 311 21                        ; attention_backward.py:311:21
	v_cvt_f32_i32_e32 v105, v110
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 309 31                        ; attention_backward.py:309:31
	v_mov_b16_e64 v204.l, v222.h
	v_and_b32_e32 v223, 1, v204
	v_mov_b16_e64 v204.l, v221.h
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_and_b32_e32 v224, 1, v204
	.loc	1 305 30                        ; attention_backward.py:305:30
	v_and_b16 v204.l, v68.l, 15
	.loc	1 307 37                        ; attention_backward.py:307:37
	v_mov_b16_e32 v68.l, v112.l
	.loc	1 307 52 is_stmt 0              ; attention_backward.py:307:52
	v_or_b32_e32 v80, -16, v204
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 307 37                        ; attention_backward.py:307:37
	v_cmp_gt_i16_e64 s0, 0, v68.l
	.loc	1 311 21 is_stmt 1              ; attention_backward.py:311:21
	v_cvt_f32_i32_e32 v68, v117
	.loc	1 307 28                        ; attention_backward.py:307:28
	v_cndmask_b32_e64 v214, v204, v80, s0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 311 21                        ; attention_backward.py:311:21
	v_mul_f32_e32 v68, v68, v205
	.loc	1 309 31                        ; attention_backward.py:309:31
	v_cndmask_b32_e32 v216, 0, v68, vcc_lo
	.loc	1 305 30                        ; attention_backward.py:305:30
	v_lshrrev_b16 v68.l, 4, v148.l
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 309 31                        ; attention_backward.py:309:31
	v_mov_b16_e64 v204.l, v216.h
	v_and_b32_e32 v217, 1, v204
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 305 30                        ; attention_backward.py:305:30
	v_and_b16 v204.l, v68.l, 15
	.loc	1 274 28                        ; attention_backward.py:274:28
	v_bfe_i32 v68, v148, 0, 8
	.loc	1 307 52                        ; attention_backward.py:307:52
	v_or_b32_e32 v80, -16, v204
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 307 37 is_stmt 0              ; attention_backward.py:307:37
	v_cmp_gt_i16_e64 s0, 0, v68.l
	.loc	1 311 21 is_stmt 1              ; attention_backward.py:311:21
	v_cvt_f32_i32_e32 v68, v108
	.loc	1 307 28                        ; attention_backward.py:307:28
	v_cndmask_b32_e64 v212, v204, v80, s0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 311 21                        ; attention_backward.py:311:21
	v_mul_f32_e32 v68, v68, v205
	.loc	1 309 31                        ; attention_backward.py:309:31
	v_cndmask_b32_e32 v218, 0, v68, vcc_lo
	.loc	1 305 30                        ; attention_backward.py:305:30
	v_lshrrev_b16 v68.l, 4, v109.l
	.loc	1 311 21                        ; attention_backward.py:311:21
	v_mul_f32_e32 v105, v105, v205
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 309 31                        ; attention_backward.py:309:31
	v_mov_b16_e64 v204.l, v218.h
	v_cndmask_b32_e32 v210, 0, v105, vcc_lo
	.loc	1 361 29                        ; attention_backward.py:361:29
	v_bfe_u32 v105, v67, 24, 4
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	.loc	1 309 31                        ; attention_backward.py:309:31
	v_and_b32_e32 v219, 1, v204
	.loc	1 305 30                        ; attention_backward.py:305:30
	v_and_b16 v204.l, v68.l, 15
	.loc	1 274 28                        ; attention_backward.py:274:28
	v_bfe_i32 v68, v109, 0, 8
	.loc	1 363 54                        ; attention_backward.py:363:54
	v_or_b32_e32 v106, -16, v105
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 307 52                        ; attention_backward.py:307:52
	v_or_b32_e32 v80, -16, v204
	.loc	1 307 37 is_stmt 0              ; attention_backward.py:307:37
	v_cmp_gt_i16_e64 s0, 0, v68.l
	.loc	1 311 21 is_stmt 1              ; attention_backward.py:311:21
	v_cvt_f32_i32_e32 v68, v115
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 307 28                        ; attention_backward.py:307:28
	v_cndmask_b32_e64 v209, v204, v80, s0
	.loc	1 311 21                        ; attention_backward.py:311:21
	v_mul_f32_e32 v68, v68, v205
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 309 31                        ; attention_backward.py:309:31
	v_cndmask_b32_e32 v213, 0, v68, vcc_lo
	.loc	1 274 28                        ; attention_backward.py:274:28
	v_bfe_i32 v68, v111, 0, 8
	.loc	1 307 37                        ; attention_backward.py:307:37
	v_cmp_gt_i16_e64 s0, 0, v68.l
	.loc	1 311 21                        ; attention_backward.py:311:21
	v_cvt_f32_i32_e32 v68, v116
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_mul_f32_e32 v68, v68, v205
	.loc	1 309 31                        ; attention_backward.py:309:31
	v_mov_b16_e64 v204.l, v213.h
	v_cndmask_b32_e32 v207, 0, v68, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_and_b32_e32 v215, 1, v204
	v_mov_b16_e64 v204.l, v210.h
	.loc	1 362 32                        ; attention_backward.py:362:32
	v_lshrrev_b16 v68.l, 4, v66.l
	.loc	1 350 32                        ; attention_backward.py:350:32
	v_bfe_i32 v66, v66, 0, 8
	.loc	1 309 31                        ; attention_backward.py:309:31
	v_and_b32_e32 v211, 1, v204
	.loc	1 305 30                        ; attention_backward.py:305:30
	v_lshrrev_b16 v204.l, 4, v111.l
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 307 52                        ; attention_backward.py:307:52
	v_or_b32_e32 v80, -16, v204
	.loc	1 307 28 is_stmt 0              ; attention_backward.py:307:28
	v_cndmask_b32_e64 v206, v204, v80, s0
	.loc	1 309 31 is_stmt 1              ; attention_backward.py:309:31
	v_mov_b16_e64 v204.l, v207.h
	.loc	1 364 39                        ; attention_backward.py:364:39
	v_cmp_gt_i16_e64 s0, 0, v66.l
	.loc	1 350 32                        ; attention_backward.py:350:32
	v_lshrrev_b32_e32 v80, 24, v67
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 309 31                        ; attention_backward.py:309:31
	v_and_b32_e32 v208, 1, v204
	.loc	1 362 32                        ; attention_backward.py:362:32
	v_and_b16 v204.l, v68.l, 15
	.loc	1 364 56                        ; attention_backward.py:364:56
	v_or_b32_e32 v68, -16, v204
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 364 30 is_stmt 0              ; attention_backward.py:364:30
	v_cndmask_b32_e64 v66, v204, v68, s0
	.loc	1 382 31 is_stmt 1              ; attention_backward.py:382:31
	v_cvt_f32_i32_e32 v68, v66
	.loc	1 360 76                        ; attention_backward.py:360:76
	v_and_b16 v66.l, v67.h, 15
	.loc	1 382 31                        ; attention_backward.py:382:31
	ds_store_b128 v194, v[68:71]
	.loc	1 363 38                        ; attention_backward.py:363:38
	v_cmp_lt_u16_e64 s0, 7, v66.l
	.loc	1 361 29                        ; attention_backward.py:361:29
	v_and_b32_e32 v70, 15, v67
	.loc	1 360 76                        ; attention_backward.py:360:76
	v_and_b16 v66.l, v67.l, 15
	.loc	1 361 29                        ; attention_backward.py:361:29
	v_bfe_u32 v68, v67, 16, 4
	.loc	1 382 31                        ; attention_backward.py:382:31
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 363 54                        ; attention_backward.py:363:54
	v_or_b32_e32 v71, -16, v70
	.loc	1 363 38 is_stmt 0              ; attention_backward.py:363:38
	v_cmp_lt_u16_e64 s1, 7, v66.l
	.loc	1 360 76 is_stmt 1              ; attention_backward.py:360:76
	v_and_b16 v66.l, v80.l, 15
	.loc	1 363 54                        ; attention_backward.py:363:54
	v_or_b32_e32 v69, -16, v68
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 363 29 is_stmt 0              ; attention_backward.py:363:29
	v_cndmask_b32_e64 v70, v70, v71, s1
	.loc	1 363 38                        ; attention_backward.py:363:38
	v_cmp_lt_u16_e64 s3, 7, v66.l
	.loc	1 361 29 is_stmt 1              ; attention_backward.py:361:29
	v_bfe_u32 v71, v67, 8, 4
	.loc	1 360 76                        ; attention_backward.py:360:76
	v_and_b16 v66.l, v229.l, 15
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 363 29                        ; attention_backward.py:363:29
	v_cndmask_b32_e64 v105, v105, v106, s3
	.loc	1 363 54 is_stmt 0              ; attention_backward.py:363:54
	v_or_b32_e32 v106, -16, v71
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 363 38                        ; attention_backward.py:363:38
	v_cmp_lt_u16_e64 s1, 7, v66.l
	.loc	1 363 29                        ; attention_backward.py:363:29
	v_cndmask_b32_e64 v66, v71, v106, s1
	v_cndmask_b32_e64 v106, v68, v69, s0
	.loc	1 382 31 is_stmt 1              ; attention_backward.py:382:31
	v_cvt_f32_i32_e32 v68, v70
	v_cvt_f32_i32_e32 v71, v105
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cvt_f32_i32_e32 v69, v66
	v_cvt_f32_i32_e32 v70, v106
	ds_load_b128 v[121:124], v227
	ds_load_b128 v[117:120], v227 offset:64
	ds_load_b128 v[125:128], v191
	ds_load_b128 v[113:116], v191 offset:64
	ds_load_b128 v[133:136], v192
	ds_load_b128 v[109:112], v192 offset:64
	ds_load_b128 v[129:132], v193
	ds_load_b128 v[105:108], v193 offset:64
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 362 32                        ; attention_backward.py:362:32
	v_lshrrev_b16 v66.l, 4, v67.l
	.loc	1 382 31                        ; attention_backward.py:382:31
	ds_store_b128 v228, v[68:71]
	.loc	1 350 32                        ; attention_backward.py:350:32
	v_bfe_i32 v68, v67, 0, 8
	v_mov_b16_e32 v69.l, v67.h
	.loc	1 362 30                        ; attention_backward.py:362:30
	v_mov_b16_e64 v70.h, v204.h
	.loc	1 362 32 is_stmt 0              ; attention_backward.py:362:32
	v_and_b16 v70.l, v66.l, 15
	.loc	1 362 30                        ; attention_backward.py:362:30
	v_bfe_u32 v67, v67, 20, 4
	.loc	1 364 39 is_stmt 1              ; attention_backward.py:364:39
	v_mov_b16_e32 v66.l, v68.l
	.loc	1 373 36                        ; attention_backward.py:373:36
	v_lshlrev_b32_e32 v228, 16, v75
	v_and_b32_e32 v236, 0xffff0000, v99
	.loc	1 364 56                        ; attention_backward.py:364:56
	v_or_b32_e32 v68, -16, v70
	.loc	1 373 36                        ; attention_backward.py:373:36
	v_lshlrev_b32_e32 v235, 16, v99
	.loc	1 364 39                        ; attention_backward.py:364:39
	v_cmp_gt_i16_e64 s0, 0, v66.l
	.loc	1 350 32                        ; attention_backward.py:350:32
	v_bfe_i32 v66, v69, 0, 8
	.loc	1 364 56                        ; attention_backward.py:364:56
	v_or_b32_e32 v69, -16, v67
	.loc	1 373 36                        ; attention_backward.py:373:36
	v_and_b32_e32 v238, 0xffff0000, v100
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 364 30                        ; attention_backward.py:364:30
	v_cndmask_b32_e64 v68, v70, v68, s0
	.loc	1 364 39 is_stmt 0              ; attention_backward.py:364:39
	v_cmp_gt_i16_e64 s0, 0, v66.l
	.loc	1 350 32 is_stmt 1              ; attention_backward.py:350:32
	v_bfe_i32 v66, v80, 0, 8
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	.loc	1 364 30                        ; attention_backward.py:364:30
	v_cndmask_b32_e64 v67, v67, v69, s0
	.loc	1 362 30                        ; attention_backward.py:362:30
	v_mov_b16_e64 v69.h, v204.h
	.loc	1 362 32 is_stmt 0              ; attention_backward.py:362:32
	v_lshrrev_b16 v69.l, 4, v80.l
	.loc	1 364 39 is_stmt 1              ; attention_backward.py:364:39
	v_cmp_gt_i16_e64 s0, 0, v66.l
	.loc	1 362 32                        ; attention_backward.py:362:32
	v_lshrrev_b16 v66.l, 4, v229.l
	.loc	1 373 36                        ; attention_backward.py:373:36
	v_lshlrev_b32_e32 v80, 16, v74
	v_and_b32_e32 v74, 0xffff0000, v74
	.loc	1 364 56                        ; attention_backward.py:364:56
	v_or_b32_e32 v70, -16, v69
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	.loc	1 364 30 is_stmt 0              ; attention_backward.py:364:30
	v_cndmask_b32_e64 v69, v69, v70, s0
	.loc	1 362 32 is_stmt 1              ; attention_backward.py:362:32
	v_and_b16 v70.l, v66.l, 15
	.loc	1 362 30 is_stmt 0              ; attention_backward.py:362:30
	v_mov_b16_e64 v70.h, v204.h
	.loc	1 350 32 is_stmt 1              ; attention_backward.py:350:32
	v_bfe_i32 v66, v229, 0, 8
	.loc	1 382 31                        ; attention_backward.py:382:31
	v_cvt_f32_i32_e32 v69, v69
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 364 56                        ; attention_backward.py:364:56
	v_or_b32_e32 v71, -16, v70
	.loc	1 364 39 is_stmt 0              ; attention_backward.py:364:39
	v_cmp_gt_i16_e64 s0, 0, v66.l
	.loc	1 382 31 is_stmt 1              ; attention_backward.py:382:31
	v_cvt_f32_i32_e32 v66, v68
	v_cvt_f32_i32_e32 v68, v67
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 364 30                        ; attention_backward.py:364:30
	v_cndmask_b32_e64 v70, v70, v71, s0
	.loc	1 382 31                        ; attention_backward.py:382:31
	v_cvt_f32_i32_e32 v67, v70
	ds_store_b128 v194, v[66:69]
	.loc	1 373 36                        ; attention_backward.py:373:36
	v_lshlrev_b32_e32 v66, 16, v72
	.loc	1 382 31                        ; attention_backward.py:382:31
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_mul_f32_e32 v70, v121, v66
	.loc	1 373 36                        ; attention_backward.py:373:36
	v_and_b32_e32 v66, 0xffff0000, v72
	.loc	1 382 30                        ; attention_backward.py:382:30
	v_cmp_o_f32_e64 s0, v70, v70
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 382 31 is_stmt 0              ; attention_backward.py:382:31
	v_dual_mul_f32 v71, v122, v66 :: v_dual_lshlrev_b32 v66, 16, v73
	.loc	1 382 30                        ; attention_backward.py:382:30
	v_cmp_o_f32_e64 s1, v71, v71
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 382 31                        ; attention_backward.py:382:31
	v_mul_f32_e32 v72, v123, v66
	.loc	1 373 36 is_stmt 1              ; attention_backward.py:373:36
	v_and_b32_e32 v66, 0xffff0000, v73
	.loc	1 382 30                        ; attention_backward.py:382:30
	v_cmp_o_f32_e64 s3, v72, v72
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 382 31 is_stmt 0              ; attention_backward.py:382:31
	v_mul_f32_e32 v73, v124, v66
	ds_load_b128 v[66:69], v227
	ds_load_b128 v[121:124], v227 offset:64
	.loc	1 373 36 is_stmt 1              ; attention_backward.py:373:36
	v_and_b32_e32 v75, 0xffff0000, v75
	.loc	1 382 30                        ; attention_backward.py:382:30
	v_cmp_o_f32_e64 s5, v73, v73
	.loc	1 382 31 is_stmt 0              ; attention_backward.py:382:31
	s_waitcnt lgkmcnt(1)
	v_mul_f32_e32 v80, v66, v80
	.loc	1 373 36 is_stmt 1              ; attention_backward.py:373:36
	v_lshlrev_b32_e32 v66, 16, v76
	.loc	1 382 31                        ; attention_backward.py:382:31
	v_dual_mul_f32 v227, v68, v228 :: v_dual_mul_f32 v74, v67, v74
	v_mul_f32_e32 v75, v69, v75
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 382 30 is_stmt 0              ; attention_backward.py:382:30
	v_cmp_o_f32_e64 s7, v80, v80
	.loc	1 382 31                        ; attention_backward.py:382:31
	v_mul_f32_e32 v228, v125, v66
	.loc	1 373 36 is_stmt 1              ; attention_backward.py:373:36
	v_and_b32_e32 v66, 0xffff0000, v76
	.loc	1 382 30                        ; attention_backward.py:382:30
	v_cmp_o_f32_e64 s9, v227, v227
	v_cmp_o_f32_e64 s8, v74, v74
	v_cmp_o_f32_e64 s10, v75, v75
	v_cmp_o_f32_e64 s11, v228, v228
	.loc	1 382 31 is_stmt 0              ; attention_backward.py:382:31
	v_mul_f32_e32 v76, v126, v66
	.loc	1 373 36 is_stmt 1              ; attention_backward.py:373:36
	v_lshlrev_b32_e32 v66, 16, v77
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 382 30                        ; attention_backward.py:382:30
	v_cmp_o_f32_e64 s12, v76, v76
	.loc	1 382 31 is_stmt 0              ; attention_backward.py:382:31
	v_dual_mul_f32 v229, v127, v66 :: v_dual_and_b32 v66, 0xffff0000, v77
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 382 30                        ; attention_backward.py:382:30
	v_cmp_o_f32_e64 s13, v229, v229
	.loc	1 382 31                        ; attention_backward.py:382:31
	v_mul_f32_e32 v77, v128, v66
	ds_load_b128 v[66:69], v191
	ds_load_b128 v[125:128], v191 offset:64
	s_waitcnt lgkmcnt(1)
	v_mul_f32_e32 v67, v67, v78
	.loc	1 382 30                        ; attention_backward.py:382:30
	v_bfe_u32 v78, v70, 16, 1
	.loc	1 382 31                        ; attention_backward.py:382:31
	v_dual_mul_f32 v69, v69, v79 :: v_dual_mul_f32 v66, v66, v230
	v_mul_f32_e32 v68, v68, v231
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 382 30                        ; attention_backward.py:382:30
	v_cmp_o_f32_e64 s16, v67, v67
	v_add3_u32 v70, v70, v78, 0x7fff
	v_bfe_u32 v78, v71, 16, 1
	v_cmp_o_f32_e64 s15, v66, v66
	v_cmp_o_f32_e64 s17, v68, v68
	v_cmp_o_f32_e64 s18, v69, v69
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add3_u32 v71, v71, v78, 0x7fff
	v_bfe_u32 v78, v72, 16, 1
	v_add3_u32 v72, v72, v78, 0x7fff
	v_bfe_u32 v78, v73, 16, 1
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add3_u32 v78, v73, v78, 0x7fff
	v_bfe_u32 v73, v80, 16, 1
	v_add3_u32 v79, v80, v73, 0x7fff
	v_bfe_u32 v73, v74, 16, 1
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_4)
	v_add3_u32 v80, v74, v73, 0x7fff
	v_bfe_u32 v73, v227, 16, 1
	v_cndmask_b16 v74.l, 0x7fff, v72.h, s3
	.loc	1 280 29 is_stmt 1              ; attention_backward.py:280:29
	v_mov_b32_e32 v72, v65
	.loc	1 382 30                        ; attention_backward.py:382:30
	v_cndmask_b16 v74.h, 0x7fff, v78.h, s5
	v_add3_u32 v227, v227, v73, 0x7fff
	v_bfe_u32 v73, v75, 16, 1
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_add3_u32 v230, v75, v73, 0x7fff
	v_bfe_u32 v73, v228, 16, 1
	v_cndmask_b16 v75.l, 0x7fff, v79.h, s7
	v_cndmask_b16 v75.h, 0x7fff, v80.h, s8
	v_add3_u32 v228, v228, v73, 0x7fff
	v_bfe_u32 v73, v76, 16, 1
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_add3_u32 v231, v76, v73, 0x7fff
	v_bfe_u32 v73, v229, 16, 1
	v_cndmask_b16 v76.l, 0x7fff, v227.h, s9
	v_cndmask_b16 v76.h, 0x7fff, v230.h, s10
	v_add3_u32 v229, v229, v73, 0x7fff
	v_bfe_u32 v73, v77, 16, 1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b16 v78.l, 0x7fff, v229.h, s13
	v_add3_u32 v232, v77, v73, 0x7fff
	v_bfe_u32 v73, v66, 16, 1
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_add3_u32 v66, v66, v73, 0x7fff
	v_bfe_u32 v73, v67, 16, 1
	v_cndmask_b16 v79.l, 0x7fff, v66.h, s15
	s_delay_alu instid0(VALU_DEP_2)
	v_add3_u32 v67, v67, v73, 0x7fff
	v_bfe_u32 v73, v68, 16, 1
	.loc	1 280 29                        ; attention_backward.py:280:29
	v_mov_b32_e32 v66, v65
	.loc	1 382 30                        ; attention_backward.py:382:30
	v_cmp_o_f32_e64 s14, v77, v77
	v_cndmask_b16 v77.l, 0x7fff, v228.h, s11
	v_cndmask_b16 v79.h, 0x7fff, v67.h, s16
	v_add3_u32 v68, v68, v73, 0x7fff
	v_bfe_u32 v73, v69, 16, 1
	.loc	1 280 29                        ; attention_backward.py:280:29
	v_mov_b32_e32 v67, v65
	.loc	1 382 30                        ; attention_backward.py:382:30
	v_cndmask_b16 v77.h, 0x7fff, v231.h, s12
	v_cndmask_b16 v78.h, 0x7fff, v232.h, s14
	v_cndmask_b16 v80.l, 0x7fff, v68.h, s17
	v_add3_u32 v69, v69, v73, 0x7fff
	v_cndmask_b16 v73.l, 0x7fff, v70.h, s0
	v_cndmask_b16 v73.h, 0x7fff, v71.h, s1
	.loc	1 280 29                        ; attention_backward.py:280:29
	v_mov_b32_e32 v68, v65
	v_mov_b32_e32 v70, v65
	.loc	1 382 30                        ; attention_backward.py:382:30
	v_cndmask_b16 v80.h, 0x7fff, v69.h, s18
	.loc	1 280 29                        ; attention_backward.py:280:29
	v_mov_b32_e32 v69, v65
	v_mov_b32_e32 v71, v65
	.loc	1 391 32                        ; attention_backward.py:391:32
	v_mov_b32_e32 v234, v72
	v_mov_b32_e32 v232, v70
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_dual_mov_b32 v230, v68 :: v_dual_mov_b32 v231, v69
	v_mov_b32_e32 v233, v71
	v_dual_mov_b32 v229, v67 :: v_dual_mov_b32 v228, v66
	v_mov_b32_e32 v227, v65
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_wmma_f32_16x16x16_bf16 v[227:234], v[73:80], v[17:24], v[227:234]
	.loc	1 373 36                        ; attention_backward.py:373:36
	v_lshlrev_b32_e32 v73, 16, v101
	.loc	1 382 31                        ; attention_backward.py:382:31
	v_mul_f32_e32 v77, v133, v73
	.loc	1 373 36                        ; attention_backward.py:373:36
	v_and_b32_e32 v73, 0xffff0000, v101
	v_lshlrev_b32_e32 v133, 16, v103
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 382 30                        ; attention_backward.py:382:30
	v_cmp_o_f32_e64 s0, v77, v77
	.loc	1 382 31 is_stmt 0              ; attention_backward.py:382:31
	v_dual_mul_f32 v78, v134, v73 :: v_dual_lshlrev_b32 v73, 16, v102
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_dual_mul_f32 v79, v135, v73 :: v_dual_and_b32 v134, 0xffff0000, v103
	.loc	1 373 36 is_stmt 1              ; attention_backward.py:373:36
	v_and_b32_e32 v73, 0xffff0000, v102
	v_lshlrev_b32_e32 v135, 16, v104
	.loc	1 382 30                        ; attention_backward.py:382:30
	v_cmp_o_f32_e64 s3, v79, v79
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 382 31 is_stmt 0              ; attention_backward.py:382:31
	v_mul_f32_e32 v80, v136, v73
	.loc	1 373 36 is_stmt 1              ; attention_backward.py:373:36
	v_and_b32_e32 v136, 0xffff0000, v104
	.loc	1 382 31                        ; attention_backward.py:382:31
	ds_load_b128 v[73:76], v192
	ds_load_b128 v[101:104], v192 offset:64
	s_waitcnt lgkmcnt(1)
	v_mul_f32_e32 v133, v73, v133
	.loc	1 373 36                        ; attention_backward.py:373:36
	v_lshlrev_b32_e32 v73, 16, v97
	.loc	1 382 31                        ; attention_backward.py:382:31
	v_mul_f32_e32 v135, v75, v135
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 382 30 is_stmt 0              ; attention_backward.py:382:30
	v_cmp_o_f32_e64 s7, v133, v133
	.loc	1 382 31                        ; attention_backward.py:382:31
	v_dual_mul_f32 v129, v129, v73 :: v_dual_mul_f32 v134, v74, v134
	.loc	1 373 36 is_stmt 1              ; attention_backward.py:373:36
	v_and_b32_e32 v73, 0xffff0000, v97
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 382 30                        ; attention_backward.py:382:30
	v_cmp_o_f32_e64 s9, v135, v135
	v_cmp_o_f32_e64 s11, v129, v129
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cmp_o_f32_e64 s8, v134, v134
	.loc	1 382 31 is_stmt 0              ; attention_backward.py:382:31
	v_dual_mul_f32 v130, v130, v73 :: v_dual_lshlrev_b32 v73, 16, v98
	.loc	1 382 30                        ; attention_backward.py:382:30
	v_cmp_o_f32_e64 s1, v78, v78
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cmp_o_f32_e64 s12, v130, v130
	.loc	1 382 31                        ; attention_backward.py:382:31
	v_mul_f32_e32 v131, v131, v73
	v_dual_mul_f32 v136, v76, v136 :: v_dual_and_b32 v73, 0xffff0000, v98
	.loc	1 382 30                        ; attention_backward.py:382:30
	v_cmp_o_f32_e64 s5, v80, v80
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cmp_o_f32_e64 s13, v131, v131
	.loc	1 382 31                        ; attention_backward.py:382:31
	v_mul_f32_e32 v132, v132, v73
	ds_load_b128 v[73:76], v193
	ds_load_b128 v[97:100], v193 offset:64
	.loc	1 309 31 is_stmt 1              ; attention_backward.py:309:31
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 382 30                        ; attention_backward.py:382:30
	v_cmp_o_f32_e64 s14, v132, v132
	.loc	1 382 31 is_stmt 0              ; attention_backward.py:382:31
	v_dual_mul_f32 v74, v74, v236 :: v_dual_mul_f32 v73, v73, v235
	.loc	1 382 30                        ; attention_backward.py:382:30
	v_bfe_u32 v235, v77, 16, 1
	.loc	1 382 31                        ; attention_backward.py:382:31
	v_mul_f32_e32 v75, v75, v237
	.loc	1 382 30                        ; attention_backward.py:382:30
	v_cmp_o_f32_e64 s10, v136, v136
	.loc	1 382 31                        ; attention_backward.py:382:31
	v_mul_f32_e32 v76, v76, v238
	.loc	1 382 30                        ; attention_backward.py:382:30
	v_cmp_o_f32_e64 s15, v73, v73
	v_add3_u32 v77, v77, v235, 0x7fff
	v_bfe_u32 v235, v78, 16, 1
	v_cmp_o_f32_e64 s16, v74, v74
	v_cmp_o_f32_e64 s17, v75, v75
	v_cmp_o_f32_e64 s18, v76, v76
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add3_u32 v78, v78, v235, 0x7fff
	v_bfe_u32 v235, v79, 16, 1
	v_add3_u32 v79, v79, v235, 0x7fff
	v_bfe_u32 v235, v80, 16, 1
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add3_u32 v80, v80, v235, 0x7fff
	v_bfe_u32 v235, v133, 16, 1
	v_add3_u32 v133, v133, v235, 0x7fff
	v_bfe_u32 v235, v134, 16, 1
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add3_u32 v134, v134, v235, 0x7fff
	v_bfe_u32 v235, v135, 16, 1
	v_add3_u32 v135, v135, v235, 0x7fff
	v_bfe_u32 v235, v136, 16, 1
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add3_u32 v136, v136, v235, 0x7fff
	v_bfe_u32 v235, v129, 16, 1
	v_add3_u32 v129, v129, v235, 0x7fff
	v_bfe_u32 v235, v130, 16, 1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b16 v77.l, 0x7fff, v129.h, s11
	v_add3_u32 v130, v130, v235, 0x7fff
	v_bfe_u32 v235, v131, 16, 1
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_add3_u32 v131, v131, v235, 0x7fff
	v_bfe_u32 v235, v132, 16, 1
	v_cndmask_b16 v78.l, 0x7fff, v131.h, s13
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add3_u32 v132, v132, v235, 0x7fff
	v_bfe_u32 v235, v73, 16, 1
	v_add3_u32 v235, v73, v235, 0x7fff
	v_bfe_u32 v73, v74, 16, 1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b16 v79.l, 0x7fff, v235.h, s15
	v_add3_u32 v236, v74, v73, 0x7fff
	v_bfe_u32 v73, v75, 16, 1
	v_cndmask_b16 v74.l, 0x7fff, v79.h, s3
	v_cndmask_b16 v74.h, 0x7fff, v80.h, s5
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cndmask_b16 v79.h, 0x7fff, v236.h, s16
	v_add3_u32 v237, v75, v73, 0x7fff
	v_bfe_u32 v73, v76, 16, 1
	v_cndmask_b16 v75.l, 0x7fff, v133.h, s7
	v_cndmask_b16 v75.h, 0x7fff, v134.h, s8
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cndmask_b16 v80.l, 0x7fff, v237.h, s17
	v_add3_u32 v238, v76, v73, 0x7fff
	v_cndmask_b16 v73.l, 0x7fff, v77.h, s0
	v_cndmask_b16 v73.h, 0x7fff, v78.h, s1
	v_cndmask_b16 v76.l, 0x7fff, v135.h, s9
	v_cndmask_b16 v76.h, 0x7fff, v136.h, s10
	v_cndmask_b16 v77.h, 0x7fff, v130.h, s12
	v_cndmask_b16 v78.h, 0x7fff, v132.h, s14
	v_cndmask_b16 v80.h, 0x7fff, v238.h, s18
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_4)
	.loc	1 391 32 is_stmt 1              ; attention_backward.py:391:32
	v_wmma_f32_16x16x16_bf16 v[227:234], v[73:80], v[25:32], v[227:234]
	.loc	1 373 36                        ; attention_backward.py:373:36
	v_lshlrev_b32_e32 v79, 16, v96
	v_and_b32_e32 v74, 0xffff0000, v93
	v_lshlrev_b32_e32 v73, 16, v93
	v_lshlrev_b32_e32 v77, 16, v95
	.loc	1 382 31                        ; attention_backward.py:382:31
	v_dual_mul_f32 v79, v123, v79 :: v_dual_and_b32 v76, 0xffff0000, v94
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_dual_mul_f32 v74, v118, v74 :: v_dual_mul_f32 v73, v117, v73
	v_dual_mul_f32 v77, v121, v77 :: v_dual_mul_f32 v76, v120, v76
	.loc	1 373 36                        ; attention_backward.py:373:36
	v_lshlrev_b32_e32 v93, 16, v89
	v_lshlrev_b32_e32 v75, 16, v94
	v_and_b32_e32 v78, 0xffff0000, v95
	.loc	1 382 30                        ; attention_backward.py:382:30
	v_cmp_o_f32_e64 s0, v73, v73
	v_cmp_o_f32_e64 s1, v74, v74
	.loc	1 382 31 is_stmt 0              ; attention_backward.py:382:31
	v_mul_f32_e32 v93, v113, v93
	.loc	1 382 30                        ; attention_backward.py:382:30
	v_bfe_u32 v113, v73, 16, 1
	.loc	1 382 31                        ; attention_backward.py:382:31
	v_dual_mul_f32 v75, v119, v75 :: v_dual_mul_f32 v78, v122, v78
	.loc	1 373 36 is_stmt 1              ; attention_backward.py:373:36
	v_lshlrev_b32_e32 v94, 16, v90
	.loc	1 382 30                        ; attention_backward.py:382:30
	v_cmp_o_f32_e64 s5, v76, v76
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_4) | instid1(VALU_DEP_4)
	v_add3_u32 v73, v73, v113, 0x7fff
	v_bfe_u32 v113, v74, 16, 1
	v_cmp_o_f32_e64 s3, v75, v75
	.loc	1 382 31 is_stmt 0              ; attention_backward.py:382:31
	v_dual_mul_f32 v94, v115, v94 :: v_dual_and_b32 v89, 0xffff0000, v89
	.loc	1 373 36 is_stmt 1              ; attention_backward.py:373:36
	v_and_b32_e32 v80, 0xffff0000, v96
	.loc	1 382 30                        ; attention_backward.py:382:30
	v_add3_u32 v74, v74, v113, 0x7fff
	v_bfe_u32 v113, v75, 16, 1
	v_cmp_o_f32_e64 s7, v77, v77
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 382 31 is_stmt 0              ; attention_backward.py:382:31
	v_dual_mul_f32 v89, v114, v89 :: v_dual_mul_f32 v80, v124, v80
	.loc	1 373 36 is_stmt 1              ; attention_backward.py:373:36
	v_lshlrev_b32_e32 v95, 16, v91
	.loc	1 382 30                        ; attention_backward.py:382:30
	v_add3_u32 v75, v75, v113, 0x7fff
	v_bfe_u32 v113, v76, 16, 1
	v_cmp_o_f32_e64 s8, v78, v78
	v_cmp_o_f32_e64 s9, v79, v79
	.loc	1 373 36                        ; attention_backward.py:373:36
	v_lshlrev_b32_e32 v96, 16, v92
	.loc	1 382 30                        ; attention_backward.py:382:30
	v_cmp_o_f32_e64 s10, v80, v80
	v_add3_u32 v76, v76, v113, 0x7fff
	v_bfe_u32 v113, v77, 16, 1
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	.loc	1 382 31 is_stmt 0              ; attention_backward.py:382:31
	v_dual_mul_f32 v96, v127, v96 :: v_dual_and_b32 v91, 0xffff0000, v91
	.loc	1 373 36 is_stmt 1              ; attention_backward.py:373:36
	v_and_b32_e32 v90, 0xffff0000, v90
	.loc	1 382 30                        ; attention_backward.py:382:30
	v_cmp_o_f32_e64 s11, v93, v93
	v_add3_u32 v77, v77, v113, 0x7fff
	v_bfe_u32 v113, v78, 16, 1
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	.loc	1 382 31 is_stmt 0              ; attention_backward.py:382:31
	v_dual_mul_f32 v91, v126, v91 :: v_dual_mul_f32 v90, v116, v90
	.loc	1 382 30                        ; attention_backward.py:382:30
	v_cmp_o_f32_e64 s12, v89, v89
	.loc	1 382 31                        ; attention_backward.py:382:31
	v_mul_f32_e32 v95, v125, v95
	.loc	1 382 30                        ; attention_backward.py:382:30
	v_add3_u32 v78, v78, v113, 0x7fff
	v_bfe_u32 v113, v79, 16, 1
	v_cmp_o_f32_e64 s13, v94, v94
	v_cmp_o_f32_e64 s14, v90, v90
	.loc	1 373 36 is_stmt 1              ; attention_backward.py:373:36
	v_and_b32_e32 v92, 0xffff0000, v92
	.loc	1 382 30                        ; attention_backward.py:382:30
	v_cmp_o_f32_e64 s15, v95, v95
	v_add3_u32 v79, v79, v113, 0x7fff
	v_bfe_u32 v113, v80, 16, 1
	v_cmp_o_f32_e64 s16, v91, v91
	.loc	1 382 31 is_stmt 0              ; attention_backward.py:382:31
	v_mul_f32_e32 v92, v128, v92
	.loc	1 382 30                        ; attention_backward.py:382:30
	v_cmp_o_f32_e64 s17, v96, v96
	v_cndmask_b16 v73.l, 0x7fff, v73.h, s0
	v_add3_u32 v80, v80, v113, 0x7fff
	v_bfe_u32 v113, v93, 16, 1
	v_cmp_o_f32_e64 s18, v92, v92
	v_cndmask_b16 v73.h, 0x7fff, v74.h, s1
	v_cndmask_b16 v74.l, 0x7fff, v75.h, s3
	v_cndmask_b16 v74.h, 0x7fff, v76.h, s5
	v_add3_u32 v93, v93, v113, 0x7fff
	v_bfe_u32 v113, v89, 16, 1
	v_cndmask_b16 v75.l, 0x7fff, v77.h, s7
	v_cndmask_b16 v75.h, 0x7fff, v78.h, s8
	v_cndmask_b16 v76.l, 0x7fff, v79.h, s9
	v_cndmask_b16 v76.h, 0x7fff, v80.h, s10
	v_add3_u32 v89, v89, v113, 0x7fff
	v_bfe_u32 v113, v94, 16, 1
	v_cndmask_b16 v77.l, 0x7fff, v93.h, s11
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cndmask_b16 v77.h, 0x7fff, v89.h, s12
	v_add3_u32 v94, v94, v113, 0x7fff
	v_bfe_u32 v113, v90, 16, 1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b16 v78.l, 0x7fff, v94.h, s13
	v_add3_u32 v90, v90, v113, 0x7fff
	v_bfe_u32 v113, v95, 16, 1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b16 v78.h, 0x7fff, v90.h, s14
	v_add3_u32 v95, v95, v113, 0x7fff
	v_bfe_u32 v113, v91, 16, 1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b16 v79.l, 0x7fff, v95.h, s15
	v_add3_u32 v91, v91, v113, 0x7fff
	v_bfe_u32 v113, v96, 16, 1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b16 v79.h, 0x7fff, v91.h, s16
	v_add3_u32 v96, v96, v113, 0x7fff
	v_bfe_u32 v113, v92, 16, 1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b16 v80.l, 0x7fff, v96.h, s17
	v_add3_u32 v92, v92, v113, 0x7fff
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_cndmask_b16 v80.h, 0x7fff, v92.h, s18
	.loc	1 391 32 is_stmt 1              ; attention_backward.py:391:32
	v_wmma_f32_16x16x16_bf16 v[227:234], v[73:80], v[33:40], v[227:234]
	.loc	1 373 36                        ; attention_backward.py:373:36
	v_lshlrev_b32_e32 v73, 16, v85
	v_lshlrev_b32_e32 v79, 16, v88
	v_and_b32_e32 v74, 0xffff0000, v85
	v_lshlrev_b32_e32 v75, 16, v86
	v_lshlrev_b32_e32 v77, 16, v87
	.loc	1 382 31                        ; attention_backward.py:382:31
	v_mul_f32_e32 v73, v109, v73
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_dual_mul_f32 v79, v103, v79 :: v_dual_mul_f32 v74, v110, v74
	v_dual_mul_f32 v75, v111, v75 :: v_dual_and_b32 v76, 0xffff0000, v86
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_mul_f32_e32 v77, v101, v77
	.loc	1 382 30 is_stmt 0              ; attention_backward.py:382:30
	v_bfe_u32 v89, v73, 16, 1
	v_cmp_o_f32_e64 s0, v73, v73
	v_cmp_o_f32_e64 s1, v74, v74
	.loc	1 382 31                        ; attention_backward.py:382:31
	v_dual_mul_f32 v76, v112, v76 :: v_dual_lshlrev_b32 v85, 16, v81
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_4) | instid1(VALU_DEP_4)
	.loc	1 382 30                        ; attention_backward.py:382:30
	v_add3_u32 v73, v73, v89, 0x7fff
	v_bfe_u32 v89, v74, 16, 1
	.loc	1 373 36 is_stmt 1              ; attention_backward.py:373:36
	v_and_b32_e32 v78, 0xffff0000, v87
	.loc	1 382 30                        ; attention_backward.py:382:30
	v_cmp_o_f32_e64 s3, v75, v75
	.loc	1 382 31 is_stmt 0              ; attention_backward.py:382:31
	v_dual_mul_f32 v85, v105, v85 :: v_dual_lshlrev_b32 v86, 16, v82
	.loc	1 382 30                        ; attention_backward.py:382:30
	v_add3_u32 v74, v74, v89, 0x7fff
	v_bfe_u32 v89, v75, 16, 1
	.loc	1 382 31                        ; attention_backward.py:382:31
	v_mul_f32_e32 v78, v102, v78
	.loc	1 382 30                        ; attention_backward.py:382:30
	v_cmp_o_f32_e64 s5, v76, v76
	.loc	1 382 31                        ; attention_backward.py:382:31
	v_dual_mul_f32 v86, v107, v86 :: v_dual_and_b32 v81, 0xffff0000, v81
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 382 30                        ; attention_backward.py:382:30
	v_add3_u32 v75, v75, v89, 0x7fff
	v_bfe_u32 v89, v76, 16, 1
	.loc	1 382 31                        ; attention_backward.py:382:31
	v_dual_mul_f32 v81, v106, v81 :: v_dual_and_b32 v80, 0xffff0000, v88
	.loc	1 382 30                        ; attention_backward.py:382:30
	v_cmp_o_f32_e64 s7, v77, v77
	v_cmp_o_f32_e64 s8, v78, v78
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_4) | instid1(VALU_DEP_4)
	v_add3_u32 v76, v76, v89, 0x7fff
	v_bfe_u32 v89, v77, 16, 1
	.loc	1 382 31                        ; attention_backward.py:382:31
	v_dual_mul_f32 v80, v104, v80 :: v_dual_lshlrev_b32 v87, 16, v83
	.loc	1 382 30                        ; attention_backward.py:382:30
	v_cmp_o_f32_e64 s9, v79, v79
	.loc	1 373 36 is_stmt 1              ; attention_backward.py:373:36
	v_lshlrev_b32_e32 v88, 16, v84
	.loc	1 382 30                        ; attention_backward.py:382:30
	v_add3_u32 v77, v77, v89, 0x7fff
	v_bfe_u32 v89, v78, 16, 1
	v_cmp_o_f32_e64 s10, v80, v80
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 382 31 is_stmt 0              ; attention_backward.py:382:31
	v_dual_mul_f32 v88, v99, v88 :: v_dual_and_b32 v83, 0xffff0000, v83
	.loc	1 373 36 is_stmt 1              ; attention_backward.py:373:36
	v_and_b32_e32 v82, 0xffff0000, v82
	.loc	1 382 30                        ; attention_backward.py:382:30
	v_add3_u32 v78, v78, v89, 0x7fff
	v_bfe_u32 v89, v79, 16, 1
	v_cmp_o_f32_e64 s11, v85, v85
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 382 31 is_stmt 0              ; attention_backward.py:382:31
	v_dual_mul_f32 v83, v98, v83 :: v_dual_mul_f32 v82, v108, v82
	.loc	1 382 30                        ; attention_backward.py:382:30
	v_cmp_o_f32_e64 s12, v81, v81
	v_add3_u32 v79, v79, v89, 0x7fff
	v_bfe_u32 v89, v80, 16, 1
	.loc	1 382 31                        ; attention_backward.py:382:31
	v_mul_f32_e32 v87, v97, v87
	.loc	1 382 30                        ; attention_backward.py:382:30
	v_cmp_o_f32_e64 s13, v86, v86
	v_cmp_o_f32_e64 s14, v82, v82
	.loc	1 373 36 is_stmt 1              ; attention_backward.py:373:36
	v_and_b32_e32 v84, 0xffff0000, v84
	.loc	1 382 30                        ; attention_backward.py:382:30
	v_add3_u32 v80, v80, v89, 0x7fff
	v_bfe_u32 v89, v85, 16, 1
	v_cmp_o_f32_e64 s15, v87, v87
	v_cmp_o_f32_e64 s16, v83, v83
	.loc	1 382 31 is_stmt 0              ; attention_backward.py:382:31
	v_mul_f32_e32 v84, v100, v84
	.loc	1 382 30                        ; attention_backward.py:382:30
	v_cmp_o_f32_e64 s17, v88, v88
	v_add3_u32 v85, v85, v89, 0x7fff
	v_bfe_u32 v89, v81, 16, 1
	v_cndmask_b16 v73.l, 0x7fff, v73.h, s0
	v_cmp_o_f32_e64 s18, v84, v84
	v_cndmask_b16 v73.h, 0x7fff, v74.h, s1
	v_cndmask_b16 v74.l, 0x7fff, v75.h, s3
	v_add3_u32 v81, v81, v89, 0x7fff
	v_bfe_u32 v89, v86, 16, 1
	v_cndmask_b16 v74.h, 0x7fff, v76.h, s5
	v_cndmask_b16 v75.l, 0x7fff, v77.h, s7
	v_cndmask_b16 v75.h, 0x7fff, v78.h, s8
	v_cndmask_b16 v76.l, 0x7fff, v79.h, s9
	v_add3_u32 v86, v86, v89, 0x7fff
	v_bfe_u32 v89, v82, 16, 1
	v_cndmask_b16 v76.h, 0x7fff, v80.h, s10
	v_cndmask_b16 v77.l, 0x7fff, v85.h, s11
	v_cndmask_b16 v77.h, 0x7fff, v81.h, s12
	v_cndmask_b16 v78.l, 0x7fff, v86.h, s13
	v_add3_u32 v82, v82, v89, 0x7fff
	v_bfe_u32 v89, v87, 16, 1
	.loc	1 309 31 is_stmt 1              ; attention_backward.py:309:31
	v_cmp_o_f32_e64 s1, v225, v225
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 382 30                        ; attention_backward.py:382:30
	v_cndmask_b16 v78.h, 0x7fff, v82.h, s14
	v_add3_u32 v87, v87, v89, 0x7fff
	v_bfe_u32 v89, v83, 16, 1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b16 v79.l, 0x7fff, v87.h, s15
	v_add3_u32 v83, v83, v89, 0x7fff
	v_bfe_u32 v89, v88, 16, 1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b16 v79.h, 0x7fff, v83.h, s16
	v_add3_u32 v88, v88, v89, 0x7fff
	v_bfe_u32 v89, v84, 16, 1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b16 v80.l, 0x7fff, v88.h, s17
	v_add3_u32 v84, v84, v89, 0x7fff
	.loc	1 280 29                        ; attention_backward.py:280:29
	v_wmma_i32_16x16x16_iu4 v[89:96], v[149:150], v[139:140], v[65:72] neg_lo:[1,1,0]
	.loc	1 274 28                        ; attention_backward.py:274:28
	v_mov_b16_e64 v67.l, v147.h
	.loc	1 304 27                        ; attention_backward.py:304:27
	v_and_b32_e32 v68, 15, v147
	.loc	1 304 28 is_stmt 0              ; attention_backward.py:304:28
	v_and_b16 v66.l, v147.l, 15
	.loc	1 305 28 is_stmt 1              ; attention_backward.py:305:28
	v_bfe_u32 v70, v147, 20, 4
	.loc	1 274 28                        ; attention_backward.py:274:28
	v_mov_b16_e64 v69.l, v148.h
	.loc	1 280 29                        ; attention_backward.py:280:29
	v_wmma_i32_16x16x16_iu4 v[89:96], v[151:152], v[143:144], v[89:96] neg_lo:[1,1,0]
	.loc	1 306 50                        ; attention_backward.py:306:50
	v_or_b32_e32 v72, -16, v68
	.loc	1 306 36 is_stmt 0              ; attention_backward.py:306:36
	v_cmp_lt_u16_e64 s0, 7, v66.l
	.loc	1 274 28 is_stmt 1              ; attention_backward.py:274:28
	v_bfe_i32 v66, v67, 0, 8
	.loc	1 307 52                        ; attention_backward.py:307:52
	v_or_b32_e32 v67, -16, v70
	.loc	1 305 28                        ; attention_backward.py:305:28
	v_bfe_u32 v71, v148, 20, 4
	.loc	1 280 29                        ; attention_backward.py:280:29
	v_wmma_i32_16x16x16_iu4 v[89:96], v[153:154], v[141:142], v[89:96] neg_lo:[1,1,0]
	.loc	1 306 27                        ; attention_backward.py:306:27
	v_cndmask_b32_e64 v68, v68, v72, s0
	.loc	1 307 37                        ; attention_backward.py:307:37
	v_cmp_gt_i16_e64 s0, 0, v66.l
	.loc	1 274 28                        ; attention_backward.py:274:28
	v_bfe_i32 v66, v69, 0, 8
	.loc	1 307 52                        ; attention_backward.py:307:52
	v_or_b32_e32 v69, -16, v71
	.loc	1 382 30                        ; attention_backward.py:382:30
	v_cndmask_b16 v80.h, 0x7fff, v84.h, s18
	.loc	1 280 29                        ; attention_backward.py:280:29
	v_wmma_i32_16x16x16_iu4 v[89:96], v[155:156], v[145:146], v[89:96] neg_lo:[1,1,0]
	.loc	1 307 28                        ; attention_backward.py:307:28
	v_cndmask_b32_e64 v67, v70, v67, s0
	.loc	1 307 37 is_stmt 0              ; attention_backward.py:307:37
	v_cmp_gt_i16_e64 s0, 0, v66.l
	.loc	1 311 21 is_stmt 1              ; attention_backward.py:311:21
	v_cvt_f32_i32_e32 v68, v68
	v_cvt_f32_i32_e32 v72, v214
	.loc	1 391 32                        ; attention_backward.py:391:32
	v_wmma_f32_16x16x16_bf16 v[227:234], v[73:80], v[41:48], v[227:234]
	.loc	1 311 21                        ; attention_backward.py:311:21
	v_cvt_f32_i32_e32 v67, v67
	.loc	1 307 28                        ; attention_backward.py:307:28
	v_cndmask_b32_e64 v66, v71, v69, s0
	.loc	1 299 21                        ; attention_backward.py:299:21
	v_cvt_f32_i32_e32 v83, v92
	.loc	1 311 21                        ; attention_backward.py:311:21
	v_mul_f32_e32 v68, v68, v205
	v_mul_f32_e32 v72, v72, v205
	v_mul_f32_e32 v67, v67, v205
	v_cvt_f32_i32_e32 v66, v66
	.loc	1 299 21                        ; attention_backward.py:299:21
	v_cvt_f32_i32_e32 v87, v90
	.loc	1 396 43                        ; attention_backward.py:396:43
	v_sub_f32_e32 v82, v230, v181
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 309 31                        ; attention_backward.py:309:31
	v_dual_cndmask_b32 v68, 0, v68 :: v_dual_cndmask_b32 v67, 0, v67
	v_mov_b16_e64 v70.h, v204.h
	.loc	1 311 21                        ; attention_backward.py:311:21
	v_mul_f32_e32 v66, v66, v205
	.loc	1 309 31                        ; attention_backward.py:309:31
	v_cndmask_b32_e32 v72, 0, v72, vcc_lo
	v_mov_b16_e64 v69.h, v204.h
	v_mov_b16_e32 v70.l, v67.h
	v_mov_b16_e32 v69.l, v68.h
	v_mov_b16_e64 v73.h, v204.h
	v_mov_b16_e32 v73.l, v72.h
	v_cndmask_b32_e32 v66, 0, v66, vcc_lo
	v_and_b32_e32 v70, 1, v70
	v_and_b32_e32 v69, 1, v69
	v_cmp_o_f32_e64 s3, v67, v67
	v_and_b32_e32 v73, 1, v73
	v_cmp_o_f32_e64 s0, v68, v68
	v_add3_u32 v67, v67, v70, 0x7fff
	v_mov_b16_e64 v70.h, v204.h
	v_mov_b16_e32 v70.l, v66.h
	v_add3_u32 v68, v68, v69, 0x7fff
	v_add3_u32 v69, v225, v226, 0x7fff
	v_cmp_o_f32_e64 s5, v66, v66
	v_mov_b16_e64 v71.h, v204.h
	v_and_b32_e32 v70, 1, v70
	v_add3_u32 v73, v72, v73, 0x7fff
	v_mov_b16_e64 v90.h, v204.h
	.loc	1 299 21                        ; attention_backward.py:299:21
	v_cvt_f32_i32_e32 v85, v91
	.loc	1 311 21                        ; attention_backward.py:311:21
	v_cvt_f32_i32_e32 v91, v206
	.loc	1 309 31                        ; attention_backward.py:309:31
	v_add3_u32 v70, v66, v70, 0x7fff
	v_cndmask_b16 v66.h, 0x7fff, v69.h, s1
	v_cmp_o_f32_e64 s1, v221, v221
	v_add3_u32 v69, v221, v224, 0x7fff
	v_cndmask_b16 v66.l, 0x7fff, v68.h, s0
	v_cndmask_b16 v68.h, 0x7fff, v67.h, s3
	v_cmp_o_f32_e64 s0, v222, v222
	v_add3_u32 v67, v222, v223, 0x7fff
	v_cndmask_b16 v68.l, 0x7fff, v69.h, s1
	.loc	1 311 21                        ; attention_backward.py:311:21
	v_cvt_f32_i32_e32 v69, v220
	.loc	1 309 31                        ; attention_backward.py:309:31
	v_cmp_o_f32_e64 s1, v216, v216
	v_cmp_o_f32_e64 s3, v210, v210
	v_cndmask_b16 v67.l, 0x7fff, v67.h, s0
	.loc	1 311 21                        ; attention_backward.py:311:21
	v_mul_f32_e32 v91, v91, v205
	v_mul_f32_e32 v69, v69, v205
	.loc	1 299 21                        ; attention_backward.py:299:21
	v_cvt_f32_i32_e32 v89, v89
	.loc	1 396 43                        ; attention_backward.py:396:43
	v_sub_f32_e32 v84, v229, v181
	.loc	1 299 21                        ; attention_backward.py:299:21
	v_cvt_f32_i32_e32 v76, v96
	v_cvt_f32_i32_e32 v79, v94
	.loc	1 309 31                        ; attention_backward.py:309:31
	v_cndmask_b32_e32 v69, 0, v69, vcc_lo
	.loc	1 396 43                        ; attention_backward.py:396:43
	v_sub_f32_e32 v74, v234, v181
	.loc	1 299 21                        ; attention_backward.py:299:21
	v_cvt_f32_i32_e32 v81, v93
	v_cvt_f32_i32_e32 v77, v95
	.loc	1 396 43                        ; attention_backward.py:396:43
	v_sub_f32_e32 v75, v233, v181
	.loc	1 309 31                        ; attention_backward.py:309:31
	v_mov_b16_e32 v71.l, v69.h
	.loc	1 396 43                        ; attention_backward.py:396:43
	v_sub_f32_e32 v88, v227, v181
	.loc	1 309 31                        ; attention_backward.py:309:31
	v_cmp_o_f32_e64 s0, v69, v69
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v71, 1, v71
	v_add3_u32 v69, v69, v71, 0x7fff
	v_add3_u32 v71, v216, v217, 0x7fff
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b16 v67.h, 0x7fff, v69.h, s0
	v_cndmask_b16 v69.l, 0x7fff, v71.h, s1
	v_cmp_o_f32_e64 s1, v72, v72
	v_cndmask_b16 v72.h, 0x7fff, v70.h, s5
	v_cmp_o_f32_e64 s0, v218, v218
	v_add3_u32 v71, v218, v219, 0x7fff
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_cndmask_b16 v69.h, 0x7fff, v73.h, s1
	.loc	1 311 21                        ; attention_backward.py:311:21
	v_cvt_f32_i32_e32 v73, v212
	.loc	1 309 31                        ; attention_backward.py:309:31
	v_cndmask_b16 v70.l, 0x7fff, v71.h, s0
	v_cmp_o_f32_e64 s0, v213, v213
	v_add3_u32 v71, v213, v215, 0x7fff
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 311 21                        ; attention_backward.py:311:21
	v_mul_f32_e32 v73, v73, v205
	.loc	1 309 31                        ; attention_backward.py:309:31
	v_cndmask_b16 v71.l, 0x7fff, v71.h, s0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_cndmask_b32_e32 v73, 0, v73, vcc_lo
	v_mov_b16_e32 v90.l, v73.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cmp_o_f32_e64 s1, v73, v73
	v_and_b32_e32 v90, 1, v90
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_add3_u32 v73, v73, v90, 0x7fff
	v_add3_u32 v90, v210, v211, 0x7fff
	v_cndmask_b16 v70.h, 0x7fff, v73.h, s1
	.loc	1 311 21                        ; attention_backward.py:311:21
	v_cvt_f32_i32_e32 v73, v209
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	.loc	1 309 31                        ; attention_backward.py:309:31
	v_cndmask_b16 v72.l, 0x7fff, v90.h, s3
	v_mov_b16_e64 v90.h, v204.h
	v_cmp_o_f32_e64 s1, v207, v207
	.loc	1 311 21                        ; attention_backward.py:311:21
	v_mul_f32_e32 v73, v73, v205
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 309 31                        ; attention_backward.py:309:31
	v_cndmask_b32_e32 v73, 0, v73, vcc_lo
	v_mov_b16_e32 v90.l, v73.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cmp_o_f32_e64 s0, v73, v73
	v_and_b32_e32 v90, 1, v90
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_add3_u32 v73, v73, v90, 0x7fff
	v_add3_u32 v90, v207, v208, 0x7fff
	v_cndmask_b16 v71.h, 0x7fff, v73.h, s0
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_cndmask_b16 v73.l, 0x7fff, v90.h, s1
	v_cndmask_b32_e32 v90, 0, v91, vcc_lo
	v_mov_b16_e64 v204.l, v90.h
	.loc	1 396 43                        ; attention_backward.py:396:43
	v_sub_f32_e32 v86, v228, v181
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 309 31                        ; attention_backward.py:309:31
	v_cmp_o_f32_e64 s0, v90, v90
	v_and_b32_e32 v91, 1, v204
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add3_u32 v90, v90, v91, 0x7fff
	v_cndmask_b16 v73.h, 0x7fff, v90.h, s0
	ds_store_b128 v195, v[66:69]
	ds_store_b128 v195, v[70:73] offset:16
	.loc	1 271 27                        ; attention_backward.py:271:27
	v_or_b32_e32 v66, s49, v158
	.loc	1 290 33                        ; attention_backward.py:290:33
	v_lshlrev_b32_e32 v67, 16, v202
	v_lshlrev_b32_e32 v68, 16, v203
	v_lshlrev_b32_e32 v69, 16, v200
	v_lshlrev_b32_e32 v70, 16, v201
	.loc	1 327 26                        ; attention_backward.py:327:26
	v_cmp_le_i32_e64 s0, v66, v176
	.loc	1 271 27                        ; attention_backward.py:271:27
	v_or_b32_e32 v66, s49, v165
	.loc	1 290 33                        ; attention_backward.py:290:33
	v_lshlrev_b32_e32 v73, 16, v197
	v_lshlrev_b32_e32 v71, 16, v198
	v_lshlrev_b32_e32 v72, 16, v199
	.loc	1 327 17                        ; attention_backward.py:327:17
	s_and_b32 s0, s2, s0
	.loc	1 327 26 is_stmt 0              ; attention_backward.py:327:26
	v_cmp_le_i32_e64 s1, v66, v176
	.loc	1 299 21 is_stmt 1              ; attention_backward.py:299:21
	v_mul_f32_e32 v66, v177, v89
	.loc	1 309 31                        ; attention_backward.py:309:31
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 345 58                        ; attention_backward.py:345:58
	v_fma_f32 v66, v66, v67, -v179
	.loc	1 299 21                        ; attention_backward.py:299:21
	v_mul_f32_e32 v67, v177, v87
	.loc	1 345 45                        ; attention_backward.py:345:45
	v_exp_f32_e32 v66, v66
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 345 58 is_stmt 0              ; attention_backward.py:345:58
	v_fma_f32 v67, v67, v68, -v179
	.loc	1 345 45                        ; attention_backward.py:345:45
	v_exp_f32_e32 v67, v67
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 345 29                        ; attention_backward.py:345:29
	v_cndmask_b32_e64 v66, 0, v66, s0
	.loc	1 327 17 is_stmt 1              ; attention_backward.py:327:17
	s_and_b32 s0, s2, s1
	.loc	1 396 26                        ; attention_backward.py:396:26
	v_mul_f32_e32 v66, v66, v88
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 345 29                        ; attention_backward.py:345:29
	v_cndmask_b32_e64 v67, 0, v67, s0
	.loc	1 396 43                        ; attention_backward.py:396:43
	v_sub_f32_e32 v78, v232, v181
	.loc	1 397 34                        ; attention_backward.py:397:34
	v_mul_f32_e32 v66, s38, v66
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 396 26                        ; attention_backward.py:396:26
	v_mul_f32_e32 v67, v67, v86
	.loc	1 396 43 is_stmt 0              ; attention_backward.py:396:43
	v_sub_f32_e32 v80, v231, v181
	.loc	1 397 33 is_stmt 1              ; attention_backward.py:397:33
	v_bfe_u32 v68, v66, 16, 1
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 397 34 is_stmt 0              ; attention_backward.py:397:34
	v_mul_f32_e32 v67, s38, v67
	.loc	1 397 33                        ; attention_backward.py:397:33
	v_cmp_o_f32_e64 s0, v66, v66
	v_add3_u32 v66, v66, v68, 0x7fff
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_bfe_u32 v68, v67, 16, 1
	v_cmp_o_f32_e64 s1, v67, v67
	v_add3_u32 v67, v67, v68, 0x7fff
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b16 v67.l, 0x7fff, v66.h, s0
	v_cndmask_b16 v67.h, 0x7fff, v67.h, s1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_permlanex16_b32 v68, v67, s46, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v66, v68, v67, v184
	v_perm_b32 v67, v68, v67, v185
	.loc	1 271 27 is_stmt 1              ; attention_backward.py:271:27
	v_or_b32_e32 v68, s49, v163
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 327 26                        ; attention_backward.py:327:26
	v_cmp_le_i32_e64 s0, v68, v176
	.loc	1 271 27                        ; attention_backward.py:271:27
	v_or_b32_e32 v68, s49, v160
	.loc	1 327 17                        ; attention_backward.py:327:17
	s_and_b32 s0, s2, s0
	.loc	1 327 26 is_stmt 0              ; attention_backward.py:327:26
	v_cmp_le_i32_e64 s1, v68, v176
	.loc	1 299 21 is_stmt 1              ; attention_backward.py:299:21
	v_mul_f32_e32 v68, v177, v85
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 345 58                        ; attention_backward.py:345:58
	v_fma_f32 v68, v68, v69, -v179
	.loc	1 299 21                        ; attention_backward.py:299:21
	v_mul_f32_e32 v69, v177, v83
	.loc	1 345 45                        ; attention_backward.py:345:45
	v_exp_f32_e32 v68, v68
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 345 58 is_stmt 0              ; attention_backward.py:345:58
	v_fma_f32 v69, v69, v70, -v179
	.loc	1 345 45                        ; attention_backward.py:345:45
	v_exp_f32_e32 v69, v69
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 345 29                        ; attention_backward.py:345:29
	v_cndmask_b32_e64 v68, 0, v68, s0
	.loc	1 327 17 is_stmt 1              ; attention_backward.py:327:17
	s_and_b32 s0, s2, s1
	.loc	1 396 26                        ; attention_backward.py:396:26
	v_mul_f32_e32 v68, v68, v84
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 345 29                        ; attention_backward.py:345:29
	v_cndmask_b32_e64 v69, 0, v69, s0
	.loc	1 397 34                        ; attention_backward.py:397:34
	v_dual_mul_f32 v68, s38, v68 :: v_dual_mul_f32 v69, v69, v82
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 397 33 is_stmt 0              ; attention_backward.py:397:33
	v_bfe_u32 v70, v68, 16, 1
	.loc	1 397 34                        ; attention_backward.py:397:34
	v_mul_f32_e32 v69, s38, v69
	.loc	1 397 33                        ; attention_backward.py:397:33
	v_cmp_o_f32_e64 s0, v68, v68
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_add3_u32 v68, v68, v70, 0x7fff
	v_bfe_u32 v70, v69, 16, 1
	v_cmp_o_f32_e64 s1, v69, v69
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_add3_u32 v69, v69, v70, 0x7fff
	v_cndmask_b16 v69.l, 0x7fff, v68.h, s0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_cndmask_b16 v69.h, 0x7fff, v69.h, s1
	v_permlanex16_b32 v70, v69, s46, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_perm_b32 v68, v70, v69, v184
	v_perm_b32 v69, v70, v69, v185
	.loc	1 271 27 is_stmt 1              ; attention_backward.py:271:27
	v_or_b32_e32 v70, s49, v161
	.loc	1 327 26                        ; attention_backward.py:327:26
	v_cmp_le_i32_e64 s0, v70, v176
	.loc	1 271 27                        ; attention_backward.py:271:27
	v_or_b32_e32 v70, s49, v162
	.loc	1 327 17                        ; attention_backward.py:327:17
	s_and_b32 s0, s2, s0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 327 26 is_stmt 0              ; attention_backward.py:327:26
	v_cmp_le_i32_e64 s1, v70, v176
	.loc	1 299 21 is_stmt 1              ; attention_backward.py:299:21
	v_mul_f32_e32 v70, v177, v81
	.loc	1 345 58                        ; attention_backward.py:345:58
	v_fma_f32 v70, v70, v71, -v179
	.loc	1 299 21                        ; attention_backward.py:299:21
	v_mul_f32_e32 v71, v177, v79
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 345 45                        ; attention_backward.py:345:45
	v_exp_f32_e32 v70, v70
	.loc	1 345 58 is_stmt 0              ; attention_backward.py:345:58
	v_fma_f32 v71, v71, v72, -v179
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	.loc	1 345 45                        ; attention_backward.py:345:45
	v_exp_f32_e32 v71, v71
	.loc	1 345 29                        ; attention_backward.py:345:29
	v_cndmask_b32_e64 v70, 0, v70, s0
	.loc	1 327 17 is_stmt 1              ; attention_backward.py:327:17
	s_and_b32 s0, s2, s1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 396 26                        ; attention_backward.py:396:26
	v_mul_f32_e32 v70, v70, v80
	.loc	1 345 29                        ; attention_backward.py:345:29
	v_cndmask_b32_e64 v71, 0, v71, s0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 397 34                        ; attention_backward.py:397:34
	v_mul_f32_e32 v70, s38, v70
	.loc	1 396 26                        ; attention_backward.py:396:26
	v_mul_f32_e32 v71, v71, v78
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 397 33                        ; attention_backward.py:397:33
	v_bfe_u32 v72, v70, 16, 1
	.loc	1 397 34 is_stmt 0              ; attention_backward.py:397:34
	v_mul_f32_e32 v71, s38, v71
	.loc	1 397 33                        ; attention_backward.py:397:33
	v_cmp_o_f32_e64 s0, v70, v70
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_add3_u32 v70, v70, v72, 0x7fff
	v_bfe_u32 v72, v71, 16, 1
	v_cmp_o_f32_e64 s1, v71, v71
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_add3_u32 v71, v71, v72, 0x7fff
	v_cndmask_b16 v71.l, 0x7fff, v70.h, s0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_cndmask_b16 v71.h, 0x7fff, v71.h, s1
	v_permlanex16_b32 v72, v71, s46, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_perm_b32 v70, v72, v71, v184
	v_perm_b32 v71, v72, v71, v185
	.loc	1 271 27 is_stmt 1              ; attention_backward.py:271:27
	v_or_b32_e32 v72, s49, v164
	.loc	1 327 26                        ; attention_backward.py:327:26
	v_cmp_le_i32_e64 s0, v72, v176
	.loc	1 271 27                        ; attention_backward.py:271:27
	v_or_b32_e32 v72, s49, v166
	.loc	1 270 9                         ; attention_backward.py:270:9
	s_add_i32 s49, s49, 16
	.loc	1 327 17                        ; attention_backward.py:327:17
	s_and_b32 s0, s2, s0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 327 26 is_stmt 0              ; attention_backward.py:327:26
	v_cmp_le_i32_e64 s1, v72, v176
	.loc	1 299 21 is_stmt 1              ; attention_backward.py:299:21
	v_mul_f32_e32 v72, v177, v77
	.loc	1 345 58                        ; attention_backward.py:345:58
	v_fma_f32 v72, v72, v73, -v179
	.loc	1 299 21                        ; attention_backward.py:299:21
	v_mul_f32_e32 v73, v177, v76
	.loc	1 290 33                        ; attention_backward.py:290:33
	v_lshlrev_b32_e32 v76, 16, v196
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 345 45                        ; attention_backward.py:345:45
	v_exp_f32_e32 v72, v72
	.loc	1 345 58 is_stmt 0              ; attention_backward.py:345:58
	v_fma_f32 v73, v73, v76, -v179
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	.loc	1 345 45                        ; attention_backward.py:345:45
	v_exp_f32_e32 v73, v73
	.loc	1 345 29                        ; attention_backward.py:345:29
	v_cndmask_b32_e64 v72, 0, v72, s0
	.loc	1 327 17 is_stmt 1              ; attention_backward.py:327:17
	s_and_b32 s0, s2, s1
	.loc	1 270 9                         ; attention_backward.py:270:9
	s_cmp_lt_i32 s49, s39
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 396 26                        ; attention_backward.py:396:26
	v_mul_f32_e32 v72, v72, v75
	.loc	1 309 31                        ; attention_backward.py:309:31
	ds_load_u16_d16 v76, v0 offset:608
	ds_load_u16_d16 v75, v0 offset:352
	ds_load_u16_d16 v93, v0 offset:768
	ds_load_u16_d16 v90, v0
	ds_load_u16_d16 v84, v0 offset:576
	ds_load_u16_d16 v85, v0 offset:832
	ds_load_u16_d16 v94, v0 offset:1024
	ds_load_u16_d16 v86, v0 offset:1088
	ds_load_u16_d16 v95, v0 offset:1280
	ds_load_u16_d16 v87, v0 offset:1344
	ds_load_u16_d16 v96, v0 offset:1536
	ds_load_u16_d16 v88, v0 offset:1600
	ds_load_u16_d16 v97, v0 offset:1792
	ds_load_u16_d16 v92, v0 offset:512
	ds_load_u16_d16 v91, v0 offset:256
	ds_load_u16_d16 v89, v0 offset:1856
	ds_load_u16_d16 v99, v0 offset:288
	ds_load_u16_d16 v98, v0 offset:32
	ds_load_u16_d16 v82, v0 offset:64
	ds_load_u16_d16 v83, v0 offset:320
	.loc	1 345 29                        ; attention_backward.py:345:29
	v_cndmask_b32_e64 v73, 0, v73, s0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 397 34                        ; attention_backward.py:397:34
	v_dual_mul_f32 v72, s38, v72 :: v_dual_mul_f32 v73, v73, v74
	.loc	1 397 33 is_stmt 0              ; attention_backward.py:397:33
	v_bfe_u32 v74, v72, 16, 1
	v_cmp_o_f32_e64 s0, v72, v72
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 397 34                        ; attention_backward.py:397:34
	v_mul_f32_e32 v73, s38, v73
	.loc	1 397 33                        ; attention_backward.py:397:33
	v_add3_u32 v72, v72, v74, 0x7fff
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_bfe_u32 v74, v73, 16, 1
	v_cmp_o_f32_e64 s1, v73, v73
	v_add3_u32 v73, v73, v74, 0x7fff
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b16 v73.l, 0x7fff, v72.h, s0
	v_cndmask_b16 v73.h, 0x7fff, v73.h, s1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_permlanex16_b32 v74, v73, s46, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v72, v74, v73, v184
	v_perm_b32 v73, v74, v73, v185
	.loc	1 309 31 is_stmt 1              ; attention_backward.py:309:31
	s_waitcnt lgkmcnt(18)
	ds_load_u16_d16_hi v75, v0 offset:480
	ds_load_u16_d16 v74, v0 offset:96
	s_waitcnt lgkmcnt(18)
	ds_load_u16_d16_hi v90, v0 offset:128
	s_waitcnt lgkmcnt(18)
	ds_load_u16_d16_hi v84, v0 offset:704
	ds_load_u16_d16_hi v93, v0 offset:896
	s_waitcnt lgkmcnt(19)
	ds_load_u16_d16_hi v85, v0 offset:960
	s_waitcnt lgkmcnt(19)
	ds_load_u16_d16_hi v94, v0 offset:1152
	s_waitcnt lgkmcnt(19)
	ds_load_u16_d16_hi v86, v0 offset:1216
	s_waitcnt lgkmcnt(19)
	ds_load_u16_d16_hi v95, v0 offset:1408
	s_waitcnt lgkmcnt(19)
	ds_load_u16_d16_hi v87, v0 offset:1472
	s_waitcnt lgkmcnt(19)
	ds_load_u16_d16_hi v96, v0 offset:1664
	s_waitcnt lgkmcnt(19)
	ds_load_u16_d16_hi v88, v0 offset:1728
	s_waitcnt lgkmcnt(19)
	ds_load_u16_d16_hi v97, v0 offset:1920
	s_waitcnt lgkmcnt(19)
	ds_load_u16_d16_hi v92, v0 offset:640
	s_waitcnt lgkmcnt(19)
	ds_load_u16_d16_hi v91, v0 offset:384
	ds_load_u16_d16 v100, v0 offset:544
	ds_load_u16_d16 v77, v0 offset:864
	ds_load_u16_d16 v78, v0 offset:1120
	ds_load_u16_d16 v79, v0 offset:1376
	ds_load_u16_d16 v80, v0 offset:1632
	s_waitcnt lgkmcnt(24)
	ds_load_u16_d16_hi v89, v0 offset:1984
	ds_load_u16_d16 v81, v0 offset:1888
	s_waitcnt lgkmcnt(24)
	ds_load_u16_d16_hi v98, v0 offset:160
	s_waitcnt lgkmcnt(24)
	ds_load_u16_d16_hi v82, v0 offset:192
	ds_load_u16_d16 v101, v0 offset:800
	ds_load_u16_d16 v102, v0 offset:1056
	ds_load_u16_d16 v103, v0 offset:1312
	ds_load_u16_d16 v104, v0 offset:1568
	ds_load_u16_d16 v105, v0 offset:1824
	s_waitcnt lgkmcnt(13)
	ds_load_u16_d16_hi v100, v0 offset:672
	ds_load_u16_d16_hi v76, v0 offset:736
	ds_load_u16_d16_hi v74, v0 offset:224
	ds_load_u16_d16_hi v99, v0 offset:416
	ds_load_u16_d16_hi v83, v0 offset:448
	s_waitcnt lgkmcnt(9)
	ds_load_u16_d16_hi v101, v0 offset:928
	ds_load_u16_d16_hi v77, v0 offset:992
	s_waitcnt lgkmcnt(10)
	ds_load_u16_d16_hi v102, v0 offset:1184
	ds_load_u16_d16_hi v78, v0 offset:1248
	s_waitcnt lgkmcnt(11)
	ds_load_u16_d16_hi v103, v0 offset:1440
	ds_load_u16_d16_hi v79, v0 offset:1504
	s_waitcnt lgkmcnt(12)
	ds_load_u16_d16_hi v104, v0 offset:1696
	ds_load_u16_d16_hi v80, v0 offset:1760
	s_waitcnt lgkmcnt(13)
	ds_load_u16_d16_hi v105, v0 offset:1952
	ds_load_u16_d16_hi v81, v0 offset:2016
	.loc	1 398 31                        ; attention_backward.py:398:31
	v_wmma_f32_16x16x16_bf16 v[57:64], v[90:97], v[66:73], v[57:64]
	s_waitcnt lgkmcnt(10)
	v_wmma_f32_16x16x16_bf16 v[9:16], v[82:89], v[66:73], v[9:16]
	s_waitcnt lgkmcnt(1)
	v_wmma_f32_16x16x16_bf16 v[49:56], v[98:105], v[66:73], v[49:56]
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[1:8], v[74:81], v[66:73], v[1:8]
	s_cbranch_scc1 .LBB0_6
.LBB0_7:                                ; %._crit_edge112
	.loc	1 401 13                        ; attention_backward.py:401:13
	v_mul_lo_u32 v0, s48, v157
	s_mul_i32 s4, s48, s33
	.loc	1 408 40                        ; attention_backward.py:408:40
	v_cmp_gt_i32_e32 vcc_lo, s48, v158
	.loc	1 405 9                         ; attention_backward.py:405:9
	s_and_b32 s37, s37, 0xffff
	s_mov_b32 s39, 0x31027000
	s_mov_b32 s38, 0x7ffffffe
	.loc	1 168 40                        ; attention_backward.py:168:40
	v_or_b32_e32 v19, 32, v158
	.loc	1 408 18                        ; attention_backward.py:408:18
	s_and_b32 vcc_lo, s2, vcc_lo
	.loc	1 401 13                        ; attention_backward.py:401:13
	v_add_nc_u32_e32 v21, s4, v0
	.loc	1 168 40                        ; attention_backward.py:168:40
	v_or_b32_e32 v20, 16, v158
	v_or_b32_e32 v18, 48, v158
	.loc	1 408 40                        ; attention_backward.py:408:40
	v_cmp_gt_i32_e64 s1, s48, v19
	.loc	1 168 40                        ; attention_backward.py:168:40
	v_or_b32_e32 v17, 62, v178
	.loc	1 405 9                         ; attention_backward.py:405:9
	v_add_lshl_u32 v22, v21, v158, 2
	v_add_lshl_u32 v23, v21, v165, 2
	v_add_lshl_u32 v24, v21, v163, 2
	v_add_lshl_u32 v25, v21, v164, 2
	.loc	1 401 13                        ; attention_backward.py:401:13
	v_add_nc_u32_e32 v0, v0, v158
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 405 9                         ; attention_backward.py:405:9
	v_dual_cndmask_b32 v22, 0x80000000, v22 :: v_dual_cndmask_b32 v23, 0x80000000, v23
	v_dual_cndmask_b32 v24, 0x80000000, v24 :: v_dual_cndmask_b32 v25, 0x80000000, v25
	v_add_lshl_u32 v26, v21, v166, 2
	s_clause 0x2
	buffer_store_b32 v57, v22, s[36:39], 0 offen
	buffer_store_b32 v58, v23, s[36:39], 0 offen
	buffer_store_b32 v59, v24, s[36:39], 0 offen
	v_add_lshl_u32 v22, v21, v160, 2
	v_add_lshl_u32 v23, v21, v161, 2
	v_add_lshl_u32 v24, v21, v162, 2
	.loc	1 401 13                        ; attention_backward.py:401:13
	v_add_lshl_u32 v0, v0, s4, 2
	.loc	1 408 40                        ; attention_backward.py:408:40
	v_cmp_gt_i32_e64 s0, s48, v20
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 405 9                         ; attention_backward.py:405:9
	v_dual_cndmask_b32 v22, 0x80000000, v22 :: v_dual_cndmask_b32 v23, 0x80000000, v23
	v_add_lshl_u32 v19, v21, v19, 2
	v_cndmask_b32_e32 v24, 0x80000000, v24, vcc_lo
	v_cndmask_b32_e32 v26, 0x80000000, v26, vcc_lo
	v_add_lshl_u32 v20, v21, v20, 2
	s_clause 0x4
	buffer_store_b32 v60, v22, s[36:39], 0 offen
	buffer_store_b32 v61, v23, s[36:39], 0 offen
	buffer_store_b32 v62, v24, s[36:39], 0 offen
	buffer_store_b32 v63, v25, s[36:39], 0 offen
	buffer_store_b32 v64, v26, s[36:39], 0 offen
	v_add_nc_u32_e32 v22, 0x48, v0
	v_add_nc_u32_e32 v23, 0x50, v0
	.loc	1 408 18                        ; attention_backward.py:408:18
	s_and_b32 vcc_lo, s2, s0
	.loc	1 405 9                         ; attention_backward.py:405:9
	v_add_nc_u32_e32 v24, 0x58, v0
	v_cndmask_b32_e32 v20, 0x80000000, v20, vcc_lo
	v_add_nc_u32_e32 v25, 0x60, v0
	v_dual_cndmask_b32 v22, 0x80000000, v22 :: v_dual_cndmask_b32 v23, 0x80000000, v23
	s_delay_alu instid0(VALU_DEP_4)
	v_cndmask_b32_e32 v24, 0x80000000, v24, vcc_lo
	s_clause 0x2
	buffer_store_b32 v49, v20, s[36:39], 0 offen
	buffer_store_b32 v50, v22, s[36:39], 0 offen
	buffer_store_b32 v51, v23, s[36:39], 0 offen
	v_cndmask_b32_e32 v20, 0x80000000, v25, vcc_lo
	v_add_nc_u32_e32 v22, 0x68, v0
	buffer_store_b32 v52, v24, s[36:39], 0 offen
	v_add_nc_u32_e32 v23, 0x70, v0
	v_add_nc_u32_e32 v24, 0x78, v0
	buffer_store_b32 v53, v20, s[36:39], 0 offen
	v_cndmask_b32_e32 v20, 0x80000000, v22, vcc_lo
	.loc	1 408 40                        ; attention_backward.py:408:40
	v_cmp_gt_i32_e64 s3, s48, v18
	.loc	1 405 9                         ; attention_backward.py:405:9
	v_dual_cndmask_b32 v22, 0x80000000, v23 :: v_dual_cndmask_b32 v23, 0x80000000, v24
	.loc	1 408 18                        ; attention_backward.py:408:18
	s_and_b32 vcc_lo, s2, s1
	.loc	1 405 9                         ; attention_backward.py:405:9
	buffer_store_b32 v54, v20, s[36:39], 0 offen
	v_add_nc_u32_e32 v20, 0x88, v0
	v_cndmask_b32_e32 v19, 0x80000000, v19, vcc_lo
	s_clause 0x2
	buffer_store_b32 v55, v22, s[36:39], 0 offen
	buffer_store_b32 v56, v23, s[36:39], 0 offen
	buffer_store_b32 v9, v19, s[36:39], 0 offen
	v_add_nc_u32_e32 v9, 0x90, v0
	v_cndmask_b32_e32 v19, 0x80000000, v20, vcc_lo
	v_add_nc_u32_e32 v20, 0x98, v0
	v_add_nc_u32_e32 v22, 0xa0, v0
	v_add_nc_u32_e32 v23, 0xa8, v0
	v_cndmask_b32_e32 v9, 0x80000000, v9, vcc_lo
	buffer_store_b32 v10, v19, s[36:39], 0 offen
	v_dual_cndmask_b32 v10, 0x80000000, v20 :: v_dual_cndmask_b32 v19, 0x80000000, v22
	v_cndmask_b32_e32 v20, 0x80000000, v23, vcc_lo
	buffer_store_b32 v11, v9, s[36:39], 0 offen
	v_add_nc_u32_e32 v9, 0xb0, v0
	s_clause 0x2
	buffer_store_b32 v12, v10, s[36:39], 0 offen
	buffer_store_b32 v13, v19, s[36:39], 0 offen
	buffer_store_b32 v14, v20, s[36:39], 0 offen
	v_add_nc_u32_e32 v10, 0xb8, v0
	v_add_lshl_u32 v11, v21, v18, 2
	v_add_nc_u32_e32 v12, 0xc8, v0
	v_add_nc_u32_e32 v13, 0xd0, v0
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_dual_cndmask_b32 v9, 0x80000000, v9 :: v_dual_cndmask_b32 v10, 0x80000000, v10
	.loc	1 408 18                        ; attention_backward.py:408:18
	s_and_b32 vcc_lo, s2, s3
	.loc	1 405 9                         ; attention_backward.py:405:9
	v_dual_cndmask_b32 v11, 0x80000000, v11 :: v_dual_cndmask_b32 v12, 0x80000000, v12
	s_delay_alu instid0(VALU_DEP_3)
	v_cndmask_b32_e32 v13, 0x80000000, v13, vcc_lo
	s_clause 0x4
	buffer_store_b32 v15, v9, s[36:39], 0 offen
	buffer_store_b32 v16, v10, s[36:39], 0 offen
	buffer_store_b32 v1, v11, s[36:39], 0 offen
	buffer_store_b32 v2, v12, s[36:39], 0 offen
	buffer_store_b32 v3, v13, s[36:39], 0 offen
	v_add_nc_u32_e32 v1, 0xd8, v0
	v_add_nc_u32_e32 v2, 0xe0, v0
	v_add_nc_u32_e32 v3, 0xe8, v0
	v_add_nc_u32_e32 v0, 0xf0, v0
	v_add_lshl_u32 v9, v21, v17, 2
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_cndmask_b32 v1, 0x80000000, v1 :: v_dual_cndmask_b32 v2, 0x80000000, v2
	v_dual_cndmask_b32 v3, 0x80000000, v3 :: v_dual_cndmask_b32 v0, 0x80000000, v0
	s_delay_alu instid0(VALU_DEP_3)
	v_cndmask_b32_e32 v9, 0x80000000, v9, vcc_lo
	s_clause 0x4
	buffer_store_b32 v4, v1, s[36:39], 0 offen
	buffer_store_b32 v5, v2, s[36:39], 0 offen
	buffer_store_b32 v6, v3, s[36:39], 0 offen
	buffer_store_b32 v7, v0, s[36:39], 0 offen
	buffer_store_b32 v8, v9, s[36:39], 0 offen
	.loc	1 60 5                          ; attention_backward.py:60:5
	s_nop 0
	s_sendmsg sendmsg(MSG_DEALLOC_VGPRS)
	s_endpgm
.Ltmp66:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_attention_bwd_dq_int4xint4_none_causal_outbfloat16_doutfloat32_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1
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
		.amdhsa_next_free_vgpr 239
		.amdhsa_next_free_sgpr 52
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
	.size	amd_strix_halo_gfx1151_attention_bwd_dq_int4xint4_none_causal_outbfloat16_doutfloat32_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1, .Lfunc_end0-amd_strix_halo_gfx1151_attention_bwd_dq_int4xint4_none_causal_outbfloat16_doutfloat32_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_attention_bwd_dq_int4xint4_none_causal_outbfloat16_doutfloat32_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.num_vgpr, 239
	.set amd_strix_halo_gfx1151_attention_bwd_dq_int4xint4_none_causal_outbfloat16_doutfloat32_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.num_agpr, 0
	.set amd_strix_halo_gfx1151_attention_bwd_dq_int4xint4_none_causal_outbfloat16_doutfloat32_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.numbered_sgpr, 52
	.set amd_strix_halo_gfx1151_attention_bwd_dq_int4xint4_none_causal_outbfloat16_doutfloat32_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_attention_bwd_dq_int4xint4_none_causal_outbfloat16_doutfloat32_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.private_seg_size, 0
	.set amd_strix_halo_gfx1151_attention_bwd_dq_int4xint4_none_causal_outbfloat16_doutfloat32_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.uses_vcc, 1
	.set amd_strix_halo_gfx1151_attention_bwd_dq_int4xint4_none_causal_outbfloat16_doutfloat32_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.uses_flat_scratch, 0
	.set amd_strix_halo_gfx1151_attention_bwd_dq_int4xint4_none_causal_outbfloat16_doutfloat32_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_attention_bwd_dq_int4xint4_none_causal_outbfloat16_doutfloat32_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.has_recursion, 0
	.set amd_strix_halo_gfx1151_attention_bwd_dq_int4xint4_none_causal_outbfloat16_doutfloat32_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 15012
; TotalNumSgprs: 54
; NumVgprs: 239
; ScratchSize: 0
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 29
; NumSGPRsForWavesPerEU: 54
; NumVGPRsForWavesPerEU: 239
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
	.byte	17                              ; DW_AT_low_pc
	.byte	1                               ; DW_FORM_addr
	.byte	18                              ; DW_AT_high_pc
	.byte	6                               ; DW_FORM_data4
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
	.byte	17                              ; DW_AT_low_pc
	.byte	1                               ; DW_FORM_addr
	.byte	18                              ; DW_AT_high_pc
	.byte	6                               ; DW_FORM_data4
	.byte	88                              ; DW_AT_call_file
	.byte	11                              ; DW_FORM_data1
	.byte	89                              ; DW_AT_call_line
	.byte	11                              ; DW_FORM_data1
	.byte	87                              ; DW_AT_call_column
	.byte	11                              ; DW_FORM_data1
	.byte	0                               ; EOM(1)
	.byte	0                               ; EOM(2)
	.byte	8                               ; Abbreviation Code
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
	.byte	0                               ; EOM(3)
	.section	.debug_info,"",@progbits
.Lcu_begin0:
	.long	.Ldebug_info_end0-.Ldebug_info_start0 ; Length of Unit
.Ldebug_info_start0:
	.short	4                               ; DWARF version number
	.long	.debug_abbrev                   ; Offset Into Abbrev. Section
	.byte	8                               ; Address Size (in bytes)
	.byte	1                               ; Abbrev [1] 0xb:0x97 DW_TAG_compile_unit
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
	.byte	3                               ; Abbrev [3] 0x30:0x71 DW_TAG_subprogram
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
	.byte	6                               ; Abbrev [6] 0x5b:0x2a DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.quad	.Ltmp51                         ; DW_AT_low_pc
	.long	.Ltmp53-.Ltmp51                 ; DW_AT_high_pc
	.byte	1                               ; DW_AT_call_file
	.short	258                             ; DW_AT_call_line
	.byte	25                              ; DW_AT_call_column
	.byte	7                               ; Abbrev [7] 0x70:0x14 DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.quad	.Ltmp51                         ; DW_AT_low_pc
	.long	.Ltmp52-.Ltmp51                 ; DW_AT_high_pc
	.byte	2                               ; DW_AT_call_file
	.byte	191                             ; DW_AT_call_line
	.byte	16                              ; DW_AT_call_column
	.byte	0                               ; End Of Children Mark
	.byte	8                               ; Abbrev [8] 0x85:0x1b DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges2                 ; DW_AT_ranges
	.byte	1                               ; DW_AT_call_file
	.short	262                             ; DW_AT_call_line
	.byte	33                              ; DW_AT_call_column
	.byte	5                               ; Abbrev [5] 0x92:0xd DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges3                 ; DW_AT_ranges
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
	.quad	.Ltmp28-.Lfunc_begin0
	.quad	.Ltmp29-.Lfunc_begin0
	.quad	.Ltmp30-.Lfunc_begin0
	.quad	.Ltmp31-.Lfunc_begin0
	.quad	.Ltmp33-.Lfunc_begin0
	.quad	.Ltmp34-.Lfunc_begin0
	.quad	.Ltmp36-.Lfunc_begin0
	.quad	.Ltmp37-.Lfunc_begin0
	.quad	.Ltmp39-.Lfunc_begin0
	.quad	.Ltmp40-.Lfunc_begin0
	.quad	.Ltmp41-.Lfunc_begin0
	.quad	.Ltmp42-.Lfunc_begin0
	.quad	.Ltmp46-.Lfunc_begin0
	.quad	.Ltmp47-.Lfunc_begin0
	.quad	.Ltmp50-.Lfunc_begin0
	.quad	.Ltmp62-.Lfunc_begin0
	.quad	.Ltmp63-.Lfunc_begin0
	.quad	.Ltmp64-.Lfunc_begin0
	.quad	.Ltmp65-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges1:
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
	.quad	.Ltmp31-.Lfunc_begin0
	.quad	.Ltmp32-.Lfunc_begin0
	.quad	.Ltmp35-.Lfunc_begin0
	.quad	.Ltmp36-.Lfunc_begin0
	.quad	.Ltmp37-.Lfunc_begin0
	.quad	.Ltmp38-.Lfunc_begin0
	.quad	.Ltmp42-.Lfunc_begin0
	.quad	.Ltmp43-.Lfunc_begin0
	.quad	.Ltmp44-.Lfunc_begin0
	.quad	.Ltmp45-.Lfunc_begin0
	.quad	.Ltmp48-.Lfunc_begin0
	.quad	.Ltmp49-.Lfunc_begin0
	.quad	.Ltmp62-.Lfunc_begin0
	.quad	.Ltmp63-.Lfunc_begin0
	.quad	.Ltmp64-.Lfunc_begin0
	.quad	.Ltmp65-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges2:
	.quad	.Ltmp54-.Lfunc_begin0
	.quad	.Ltmp55-.Lfunc_begin0
	.quad	.Ltmp56-.Lfunc_begin0
	.quad	.Ltmp57-.Lfunc_begin0
	.quad	.Ltmp58-.Lfunc_begin0
	.quad	.Ltmp61-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges3:
	.quad	.Ltmp54-.Lfunc_begin0
	.quad	.Ltmp55-.Lfunc_begin0
	.quad	.Ltmp56-.Lfunc_begin0
	.quad	.Ltmp57-.Lfunc_begin0
	.quad	.Ltmp58-.Lfunc_begin0
	.quad	.Ltmp59-.Lfunc_begin0
	.quad	.Ltmp60-.Lfunc_begin0
	.quad	.Ltmp61-.Lfunc_begin0
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
	.asciz	"amd_strix_halo_gfx1151_attention_bwd_dq_int4xint4_none_causal_outbfloat16_doutfloat32_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1"                        ; string offset=97 ; amd_strix_halo_gfx1151_attention_bwd_dq_int4xint4_none_causal_outbfloat16_doutfloat32_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1
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
    .name:           amd_strix_halo_gfx1151_attention_bwd_dq_int4xint4_none_causal_outbfloat16_doutfloat32_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1
    .private_segment_fixed_size: 0
    .sgpr_count:     54
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_attention_bwd_dq_int4xint4_none_causal_outbfloat16_doutfloat32_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     239
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
