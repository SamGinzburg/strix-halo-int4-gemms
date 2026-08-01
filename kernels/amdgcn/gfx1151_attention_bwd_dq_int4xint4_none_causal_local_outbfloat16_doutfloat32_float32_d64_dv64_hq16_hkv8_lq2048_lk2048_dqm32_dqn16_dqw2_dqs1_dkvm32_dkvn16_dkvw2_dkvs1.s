	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_attention_bwd_dq_int4xint4_none_causal_local_outbfloat16_doutfloat32_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1                          ; -- Begin function amd_strix_halo_gfx1151_attention_bwd_dq_int4xint4_none_causal_local_outbfloat16_doutfloat32_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1
	.p2align	8
	.type	amd_strix_halo_gfx1151_attention_bwd_dq_int4xint4_none_causal_local_outbfloat16_doutfloat32_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1,@function
amd_strix_halo_gfx1151_attention_bwd_dq_int4xint4_none_causal_local_outbfloat16_doutfloat32_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1:                                 ; @amd_strix_halo_gfx1151_attention_bwd_dq_int4xint4_none_causal_local_outbfloat16_doutfloat32_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1
.Lfunc_begin0:
	.file	1 "<repo>/src/amd_strix_halo_kernels" "attention_backward.py"
	.loc	1 60 0                          ; attention_backward.py:60:0
	.cfi_sections .debug_frame
	.cfi_startproc
; %bb.0:
	s_clause 0x1
	s_load_b64 s[82:83], s[0:1], 0x78
	s_load_b128 s[24:27], s[0:1], 0x20
.Ltmp0:
	.loc	1 124 31 prologue_end           ; attention_backward.py:124:31
	v_lshrrev_b32_e32 v1, 1, v0
	v_lshrrev_b32_e32 v6, 3, v0
	.loc	1 139 44                        ; attention_backward.py:139:44
	v_lshlrev_b32_e32 v41, 4, v0
	.loc	1 119 19                        ; attention_backward.py:119:19
	s_lshl_b32 s21, s2, 5
	.loc	1 133 26                        ; attention_backward.py:133:26
	s_lshl_b32 s22, s3, 11
	.loc	1 168 40                        ; attention_backward.py:168:40
	v_and_b32_e32 v42, 7, v0
	.loc	1 135 17                        ; attention_backward.py:135:17
	s_add_i32 s88, s21, s22
	.loc	1 124 21                        ; attention_backward.py:124:21
	v_or_b32_e32 v4, s21, v1
	v_or_b32_e32 v5, s21, v6
	.loc	1 139 44                        ; attention_backward.py:139:44
	v_and_b32_e32 v3, 16, v41
	.loc	1 135 17                        ; attention_backward.py:135:17
	v_or_b32_e32 v7, s88, v1
	.loc	1 168 40                        ; attention_backward.py:168:40
	v_lshlrev_b32_e32 v97, 3, v42
	.loc	1 128 21                        ; attention_backward.py:128:21
	v_cmp_gt_i32_e32 vcc_lo, 0x800, v4
	v_cmp_gt_i32_e64 s4, 0x800, v5
	s_clause 0x1
	s_load_b256 s[64:71], s[0:1], 0x38
	s_load_b256 s[72:79], s[0:1], 0x0
	s_mov_b32 s31, 0x31027000
	s_mov_b32 s30, 0x7ffffffe
	s_load_b64 s[8:9], s[0:1], 0x98
	.loc	1 135 17                        ; attention_backward.py:135:17
	s_waitcnt lgkmcnt(0)
	v_mad_u64_u32 v[4:5], null, s82, v7, v[3:4]
	.loc	1 139 44                        ; attention_backward.py:139:44
	v_cmp_gt_i32_e64 s2, s82, v3
	.loc	1 168 40                        ; attention_backward.py:168:40
	v_cmp_gt_i32_e64 s6, s83, v97
	.loc	1 167 13                        ; attention_backward.py:167:13
	v_mul_lo_u32 v3, s83, v6
	s_mul_i32 s5, s83, s88
	s_clause 0x1
	s_load_b32 s89, s[0:1], 0x80
	s_load_b64 s[80:81], s[0:1], 0x58
	.loc	1 139 22                        ; attention_backward.py:139:22
	s_and_b32 vcc_lo, vcc_lo, s2
	.loc	1 167 13                        ; attention_backward.py:167:13
	v_add_nc_u32_e32 v12, s5, v97
	.loc	1 134 28                        ; attention_backward.py:134:28
	v_cndmask_b32_e32 v4, 0x80000000, v4, vcc_lo
	.loc	1 168 18                        ; attention_backward.py:168:18
	s_and_b32 vcc_lo, s4, s6
	.loc	1 124 31                        ; attention_backward.py:124:31
	v_and_b32_e32 v70, 32, v0
	.loc	1 167 13                        ; attention_backward.py:167:13
	v_add_nc_u32_e32 v9, v3, v97
	.loc	1 124 31                        ; attention_backward.py:124:31
	v_and_b32_e32 v69, 15, v0
	.loc	1 167 13                        ; attention_backward.py:167:13
	v_lshl_add_u32 v11, s83, 3, v3
	v_lshl_add_u32 v13, s83, 4, v3
	.loc	1 124 31                        ; attention_backward.py:124:31
	v_lshrrev_b32_e32 v2, 1, v70
	v_mov_b32_e32 v92, v9
	.loc	1 134 28                        ; attention_backward.py:134:28
	s_and_b32 s29, s73, 0xffff
	s_mov_b32 s28, s72
	.loc	1 167 13                        ; attention_backward.py:167:13
	v_add_nc_u32_e32 v10, s5, v9
	.loc	1 124 31                        ; attention_backward.py:124:31
	v_or_b32_e32 v91, v2, v69
	s_load_b32 s5, s[0:1], 0xa0
	.loc	1 125 21                        ; attention_backward.py:125:21
	v_bfe_u32 v129, v0, 4, 1
	.loc	1 121 23                        ; attention_backward.py:121:23
	s_ashr_i32 s4, s3, 31
	.loc	1 220 21                        ; attention_backward.py:220:21
	s_waitcnt lgkmcnt(0)
	s_mul_f32 s11, s89, 0x3fb8aa3b
	.loc	1 143 17                        ; attention_backward.py:143:17
	v_or_b32_e32 v5, s88, v91
	.loc	1 124 21                        ; attention_backward.py:124:21
	v_or_b32_e32 v2, s21, v91
	.loc	1 121 23                        ; attention_backward.py:121:23
	s_lshr_b32 s4, s4, 28
	.loc	1 125 21                        ; attention_backward.py:125:21
	v_lshrrev_b32_e32 v60, 2, v0
	.loc	1 121 23                        ; attention_backward.py:121:23
	s_add_i32 s4, s3, s4
	.loc	1 142 31                        ; attention_backward.py:142:31
	v_lshlrev_b32_e32 v8, 1, v5
	.loc	1 134 28                        ; attention_backward.py:134:28
	buffer_load_b128 v[4:7], v4, s[28:31], 0 offen
	.loc	1 128 21                        ; attention_backward.py:128:21
	v_cmp_gt_i32_e64 s2, 0x800, v2
	.loc	1 142 31                        ; attention_backward.py:142:31
	s_and_b32 s29, s79, 0xffff
	s_mov_b32 s28, s78
	.loc	1 122 22                        ; attention_backward.py:122:22
	s_and_b32 s7, s4, 0xfff0
	.loc	1 121 23                        ; attention_backward.py:121:23
	s_ashr_i32 s4, s4, 4
	.loc	1 142 31                        ; attention_backward.py:142:31
	v_cndmask_b32_e64 v8, 0x80000000, v8, s2
	.loc	1 122 22                        ; attention_backward.py:122:22
	s_sub_i32 s3, s3, s7
	.loc	1 125 21                        ; attention_backward.py:125:21
	v_or_b32_e32 v253, 2, v129
	.loc	1 123 19                        ; attention_backward.py:123:19
	s_bfe_u32 s7, s3, 0x10007
	.loc	1 125 21                        ; attention_backward.py:125:21
	v_or_b32_e32 v252, 4, v129
	.loc	1 142 31                        ; attention_backward.py:142:31
	buffer_load_u16 v59, v8, s[28:31], 0 offen
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_lshlrev_b32_e32 v8, 1, v10
	.loc	1 167 13                        ; attention_backward.py:167:13
	v_add_nc_u32_e32 v14, v12, v11
	.loc	1 166 23                        ; attention_backward.py:166:23
	s_and_b32 s29, s65, 0xffff
	s_mov_b32 s28, s64
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	v_dual_cndmask_b32 v15, 0x80000000, v8 :: v_dual_lshlrev_b32 v10, 2, v10
	.loc	1 123 19                        ; attention_backward.py:123:19
	s_add_i32 s3, s3, s7
	.loc	1 184 17                        ; attention_backward.py:184:17
	s_add_i32 s7, s5, s21
	.loc	1 123 19                        ; attention_backward.py:123:19
	s_sext_i32_i8 s3, s3
	.loc	1 171 28                        ; attention_backward.py:171:28
	v_cndmask_b32_e32 v10, 0x80000000, v10, vcc_lo
	.loc	1 166 23                        ; attention_backward.py:166:23
	buffer_load_b128 v[43:46], v15, s[28:31], 0 offen
	.loc	1 123 19                        ; attention_backward.py:123:19
	s_ashr_i32 s3, s3, 1
	.loc	1 184 17                        ; attention_backward.py:184:17
	s_add_i32 s7, s7, 32
	.loc	1 197 29                        ; attention_backward.py:197:29
	s_lshl3_add_u32 s23, s4, s3
	.loc	1 181 39                        ; attention_backward.py:181:39
	s_sub_i32 s3, s21, s8
	.loc	1 125 21                        ; attention_backward.py:125:21
	v_or_b32_e32 v255, 6, v129
	.loc	1 181 39                        ; attention_backward.py:181:39
	s_add_i32 s3, s3, s5
	.loc	1 125 21                        ; attention_backward.py:125:21
	v_or_b32_e32 v103, 8, v129
	v_or_b32_e32 v104, 10, v129
	v_or_b32_e32 v105, 12, v129
	v_or_b32_e32 v114, 14, v129
	.loc	1 197 28                        ; attention_backward.py:197:28
	s_lshl_b32 s10, s23, 11
	.loc	1 181 25                        ; attention_backward.py:181:25
	s_max_i32 s3, s3, 0
	v_or_b32_e32 v93, s10, v60
	.loc	1 186 33                        ; attention_backward.py:186:33
	s_and_b32 s90, s3, 0x7ffffff0
	v_or_b32_e32 v94, s10, v129
	v_or_b32_e32 v95, s10, v253
	v_or_b32_e32 v96, s10, v252
	v_or_b32_e32 v98, s10, v255
	v_or_b32_e32 v99, s10, v103
	v_or_b32_e32 v147, s10, v104
	v_or_b32_e32 v146, s10, v105
	v_or_b32_e32 v149, s10, v114
	s_mov_b64 s[36:37], s[70:71]
	.loc	1 167 13                        ; attention_backward.py:167:13
	s_waitcnt vmcnt(2)
	v_mad_u64_u32 v[8:9], null, s83, 24, v[3:4]
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_lshlrev_b32_e32 v9, 1, v14
	s_delay_alu instid0(VALU_DEP_1)
	v_dual_cndmask_b32 v9, 0x80000000, v9 :: v_dual_add_nc_u32 v16, v12, v8
	buffer_load_b128 v[47:50], v9, s[28:31], 0 offen
	s_waitcnt vmcnt(1)
	v_mov_b16_e32 v63.h, v44.l
	.loc	1 167 13                        ; attention_backward.py:167:13
	v_add_nc_u32_e32 v15, v12, v13
	v_or_b32_e32 v12, 4, v12
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_mov_b16_e32 v62.h, v45.l
	v_mov_b16_e32 v64.h, v43.l
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_lshlrev_b32_e32 v17, 1, v15
	.loc	1 171 28                        ; attention_backward.py:171:28
	v_add_lshl_u32 v3, v12, v3, 2
	v_add_lshl_u32 v8, v12, v8, 2
	v_add_lshl_u32 v11, v12, v11, 2
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_cndmask_b32_e32 v17, 0x80000000, v17, vcc_lo
	.loc	1 171 28                        ; attention_backward.py:171:28
	v_cndmask_b32_e32 v3, 0x80000000, v3, vcc_lo
	.loc	1 166 23                        ; attention_backward.py:166:23
	buffer_load_b128 v[51:54], v17, s[28:31], 0 offen
	s_waitcnt vmcnt(1)
	v_mov_b16_e32 v65.h, v50.l
	v_and_b32_e32 v50, 0xffff0000, v50
	v_lshlrev_b32_e32 v9, 1, v16
	v_mov_b16_e32 v67.h, v48.l
	v_mov_b16_e32 v68.h, v47.l
	v_mov_b16_e32 v66.h, v49.l
	s_delay_alu instid0(VALU_DEP_4)
	v_cndmask_b32_e32 v9, 0x80000000, v9, vcc_lo
	buffer_load_b128 v[55:58], v9, s[28:31], 0 offen
	.loc	1 171 28                        ; attention_backward.py:171:28
	s_and_b32 s29, s67, 0xffff
	s_mov_b32 s28, s66
	s_clause 0x1
	buffer_load_b128 v[37:40], v10, s[28:31], 0 offen
	buffer_load_b128 v[33:36], v3, s[28:31], 0 offen
	v_cndmask_b32_e32 v10, 0x80000000, v11, vcc_lo
	buffer_load_b128 v[25:28], v10, s[28:31], 0 offen
	.loc	1 166 23                        ; attention_backward.py:166:23
	s_waitcnt vmcnt(4)
	v_mov_b16_e32 v74.h, v52.l
	v_and_b32_e32 v52, 0xffff0000, v52
	.loc	1 171 28                        ; attention_backward.py:171:28
	v_lshlrev_b32_e32 v3, 2, v15
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_mov_b16_e32 v72.h, v54.l
	v_mov_b16_e32 v75.h, v51.l
	v_mov_b16_e32 v73.h, v53.l
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 171 28                        ; attention_backward.py:171:28
	v_cndmask_b32_e32 v3, 0x80000000, v3, vcc_lo
	buffer_load_b128 v[21:24], v3, s[28:31], 0 offen
	.loc	1 166 23                        ; attention_backward.py:166:23
	s_waitcnt vmcnt(4)
	v_mov_b16_e32 v79.h, v55.l
	v_and_b32_e32 v55, 0xffff0000, v55
	v_and_b32_e32 v48, 0xffff0000, v48
	.loc	1 171 28                        ; attention_backward.py:171:28
	v_lshlrev_b32_e32 v9, 2, v14
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_mov_b16_e32 v76.h, v58.l
	v_mov_b16_e32 v78.h, v56.l
	v_mov_b16_e32 v77.h, v57.l
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 171 28                        ; attention_backward.py:171:28
	v_cndmask_b32_e32 v9, 0x80000000, v9, vcc_lo
	buffer_load_b128 v[29:32], v9, s[28:31], 0 offen
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_and_b32_e32 v58, 0xffff0000, v58
	.loc	1 171 28                        ; attention_backward.py:171:28
	v_cndmask_b32_e32 v3, 0x80000000, v8, vcc_lo
	v_mov_b16_e32 v8.l, 0
	v_add_lshl_u32 v9, v12, v13, 2
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_mov_b16_e32 v8.h, v46.l
	s_delay_alu instid0(VALU_DEP_3)
	v_mov_b16_e32 v64.l, v8.l
	v_and_b32_e32 v54, 0xffff0000, v54
	.loc	1 171 28                        ; attention_backward.py:171:28
	v_lshlrev_b32_e32 v11, 2, v16
	v_cndmask_b32_e32 v9, 0x80000000, v9, vcc_lo
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_mov_b16_e32 v76.l, v8.l
	v_mov_b16_e32 v67.l, v8.l
	v_mov_b16_e32 v68.l, v8.l
	.loc	1 171 28                        ; attention_backward.py:171:28
	v_cndmask_b32_e32 v10, 0x80000000, v11, vcc_lo
	s_clause 0x2
	buffer_load_b128 v[17:20], v9, s[28:31], 0 offen
	buffer_load_b128 v[13:16], v10, s[28:31], 0 offen
	buffer_load_b128 v[9:12], v3, s[28:31], 0 offen
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_mov_b16_e32 v66.l, v8.l
	v_mov_b16_e32 v74.l, v8.l
	v_mov_b16_e32 v75.l, v8.l
	v_and_b32_e32 v56, 0xffff0000, v56
	v_mov_b16_e32 v72.l, v8.l
	v_mov_b16_e32 v78.l, v8.l
	v_mov_b16_e32 v62.l, v8.l
	v_mov_b16_e32 v63.l, v8.l
	v_mov_b16_e32 v73.l, v8.l
	v_mov_b16_e32 v65.l, v8.l
	v_mov_b16_e32 v77.l, v8.l
	v_mov_b16_e32 v79.l, v8.l
	.loc	1 176 24                        ; attention_backward.py:176:24
	s_waitcnt vmcnt(4)
	v_mul_f32_e32 v52, v24, v52
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
.Ltmp1:
	.file	2 "<triton>/python/triton/language" "standard.py"
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_dual_fmac_f32 v52, v23, v74 :: v_dual_and_b32 v71, 3, v0
.Ltmp2:
	.loc	1 176 24                        ; attention_backward.py:176:24
	s_waitcnt vmcnt(2)
	v_dual_mul_f32 v54, v20, v54 :: v_dual_lshlrev_b32 v115, 3, v71
	s_waitcnt vmcnt(0)
	v_dual_mul_f32 v55, v14, v55 :: v_dual_mul_f32 v58, v12, v58
	v_dual_mul_f32 v48, v32, v48 :: v_dual_and_b32 v47, 0xffff0000, v47
	.loc	1 134 28                        ; attention_backward.py:134:28
	v_lshlrev_b32_e32 v3, 1, v0
.Ltmp3:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_dual_fmac_f32 v54, v19, v72 :: v_dual_and_b32 v43, 0xffff0000, v43
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_dual_fmac_f32 v58, v11, v76 :: v_dual_mul_f32 v47, v30, v47
	v_fmac_f32_e32 v48, v31, v67
.Ltmp4:
	.loc	1 176 24                        ; attention_backward.py:176:24
	v_dual_mul_f32 v56, v16, v56 :: v_dual_and_b32 v45, 0xffff0000, v45
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_mul_f32_e32 v43, v38, v43
.Ltmp5:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_fmac_f32_e32 v47, v29, v68
.Ltmp6:
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_and_b32_e32 v51, 0xffff0000, v51
	v_and_b32_e32 v44, 0xffff0000, v44
.Ltmp7:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_fmac_f32_e32 v56, v15, v78
.Ltmp8:
	.loc	1 176 24                        ; attention_backward.py:176:24
	v_dual_mul_f32 v45, v34, v45 :: v_dual_add_nc_u32 v116, s5, v2
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_dual_mul_f32 v51, v22, v51 :: v_dual_mul_f32 v44, v40, v44
.Ltmp9:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_fmac_f32_e32 v43, v37, v64
.Ltmp10:
	.loc	1 134 28                        ; attention_backward.py:134:28
	v_and_or_b32 v80, v3, 30, v129
.Ltmp11:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_fmac_f32_e32 v45, v33, v62
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v51, v21, v75
.Ltmp12:
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_and_b32_e32 v53, 0xffff0000, v53
	v_and_b32_e32 v46, 0xffff0000, v46
.Ltmp13:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_dual_fmac_f32 v44, v39, v63 :: v_dual_and_b32 v49, 0xffff0000, v49
.Ltmp14:
	.loc	1 176 24                        ; attention_backward.py:176:24
	v_dual_mul_f32 v53, v18, v53 :: v_dual_lshlrev_b32 v80, 2, v80
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_dual_mul_f32 v46, v36, v46 :: v_dual_lshlrev_b32 v59, 16, v59
	.loc	1 184 17                        ; attention_backward.py:184:17
	s_add_i32 s5, s7, s9
	.loc	1 134 28                        ; attention_backward.py:134:28
	v_xor_b32_e32 v81, 4, v80
	ds_bpermute_b32 v2, v80, v4
.Ltmp15:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_dual_fmac_f32 v46, v35, v8 :: v_dual_fmac_f32 v53, v17, v73
.Ltmp16:
	.loc	1 219 37                        ; attention_backward.py:219:37
	v_mul_f32_e32 v150, s11, v59
.Ltmp17:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_e32 v8, v43, v44
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_dual_add_f32 v44, v47, v48 :: v_dual_add_f32 v43, v45, v46
	v_dual_add_f32 v47, v53, v54 :: v_dual_add_nc_u32 v254, s9, v116
.Ltmp18:
	.loc	1 176 24                        ; attention_backward.py:176:24
	v_mul_f32_e32 v49, v26, v49
	.loc	1 134 28                        ; attention_backward.py:134:28
	ds_bpermute_b32 v4, v81, v4
.Ltmp19:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_e32 v8, v8, v43
	v_fmac_f32_e32 v55, v13, v79
.Ltmp20:
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_and_b32_e32 v57, 0xffff0000, v57
.Ltmp21:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_fmac_f32_e32 v49, v25, v66
.Ltmp22:
	.loc	1 189 25                        ; attention_backward.py:189:25
	s_min_i32 s7, s7, 0x800
	.loc	1 182 25                        ; attention_backward.py:182:25
	s_min_i32 s5, s5, 0x800
	s_delay_alu instid0(VALU_DEP_2)
.Ltmp23:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_dual_add_f32 v48, v55, v56 :: v_dual_mul_f32 v57, v10, v57
.Ltmp24:
	.loc	1 176 24                        ; attention_backward.py:176:24
	v_dual_mul_f32 v50, v28, v50 :: v_dual_and_b32 v61, 16, v0
	.loc	1 190 35                        ; attention_backward.py:190:35
	s_add_i32 s3, s7, 15
	.loc	1 187 35                        ; attention_backward.py:187:35
	s_add_i32 s5, s5, 15
	.loc	1 134 28                        ; attention_backward.py:134:28
	ds_bpermute_b32 v60, v80, v5
.Ltmp25:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_fmac_f32_e32 v50, v27, v65
.Ltmp26:
	.loc	1 134 28                        ; attention_backward.py:134:28
	ds_bpermute_b32 v5, v81, v5
.Ltmp27:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_e32 v46, v51, v52
.Ltmp28:
	.loc	1 190 34                        ; attention_backward.py:190:34
	s_ashr_i32 s7, s3, 31
	.loc	1 187 34                        ; attention_backward.py:187:34
	s_ashr_i32 s10, s5, 31
.Ltmp29:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_e32 v45, v49, v50
.Ltmp30:
	.loc	1 190 34                        ; attention_backward.py:190:34
	s_lshr_b32 s7, s7, 28
	.loc	1 187 34                        ; attention_backward.py:187:34
	s_lshr_b32 s10, s10, 28
.Ltmp31:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_fmac_f32_e32 v57, v9, v77
.Ltmp32:
	.loc	1 190 34                        ; attention_backward.py:190:34
	s_add_i32 s3, s3, s7
.Ltmp33:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_dual_add_f32 v43, v44, v45 :: v_dual_add_f32 v44, v46, v47
.Ltmp34:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_mov_b32_e32 v46, v8
.Ltmp35:
	.loc	1 187 34                        ; attention_backward.py:187:34
	s_add_i32 s5, s5, s10
	.loc	1 190 33                        ; attention_backward.py:190:33
	s_and_b32 s3, s3, -16
	.loc	1 187 33                        ; attention_backward.py:187:33
	s_and_b32 s5, s5, -16
.Ltmp36:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_e32 v49, v57, v58
.Ltmp37:
	.loc	1 190 18                        ; attention_backward.py:190:18
	s_min_i32 s91, s5, s3
	.loc	1 134 28                        ; attention_backward.py:134:28
	v_cmp_eq_u32_e64 s5, 0, v61
.Ltmp38:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_mov_b32_dpp v46, v46 row_xmask:4 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_3)
.Ltmp39:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_dual_add_f32 v45, v48, v49 :: v_dual_lshlrev_b32 v72, 3, v0
.Ltmp40:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_mov_b32_e32 v48, v44
.Ltmp41:
	.loc	1 134 28                        ; attention_backward.py:134:28
	s_waitcnt lgkmcnt(2)
	v_cndmask_b32_e64 v167, v4, v2, s5
	v_cndmask_b32_e64 v155, v2, v4, s5
.Ltmp42:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_e32 v2, v8, v46
.Ltmp43:
	.loc	1 134 28                        ; attention_backward.py:134:28
	s_waitcnt lgkmcnt(0)
	v_cndmask_b32_e64 v168, v5, v60, s5
.Ltmp44:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_mov_b32_dpp v48, v48 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp45:
	.loc	1 134 28                        ; attention_backward.py:134:28
	v_cndmask_b32_e64 v156, v60, v5, s5
	ds_bpermute_b32 v82, v80, v6
.Ltmp46:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_mov_b32_e32 v5, v2
.Ltmp47:
	.loc	1 134 28                        ; attention_backward.py:134:28
	ds_bpermute_b32 v80, v80, v7
.Ltmp48:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_e32 v8, v44, v48
.Ltmp49:
	.loc	1 134 28                        ; attention_backward.py:134:28
	ds_bpermute_b32 v6, v81, v6
	ds_bpermute_b32 v7, v81, v7
.Ltmp50:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_mov_b32_dpp v5, v5 row_xmask:2 row_mask:0xf bank_mask:0xf
	v_dual_mov_b32 v49, v45 :: v_dual_mov_b32 v44, v8
.Ltmp51:
	.loc	1 200 27                        ; attention_backward.py:200:27
	v_cmp_gt_i32_e64 s4, s82, v115
	.loc	1 241 43                        ; attention_backward.py:241:43
	v_subrev_nc_u32_e32 v148, s8, v116
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp52:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_e32 v46, v2, v5
.Ltmp53:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_mov_b32_dpp v49, v49 row_xmask:4 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v44, v44 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp54:
	.loc	1 194 9                         ; attention_backward.py:194:9
	s_cmp_lt_i32 s90, s91
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp55:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_dual_mov_b32 v50, v46 :: v_dual_mov_b32 v47, v43
.Ltmp56:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_dual_add_f32 v44, v8, v44 :: v_dual_add_f32 v45, v45, v49
.Ltmp57:
	.loc	1 194 9                         ; attention_backward.py:194:9
	s_cselect_b32 s33, -1, 0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp58:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_mov_b32_dpp v50, v50 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v47, v47 row_xmask:4 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_3)
	v_mov_b32_e32 v48, v44
.Ltmp59:
	.loc	1 134 28                        ; attention_backward.py:134:28
	s_waitcnt lgkmcnt(1)
	v_cndmask_b32_e64 v159, v6, v82, s5
	v_cndmask_b32_e64 v163, v82, v6, s5
	s_waitcnt lgkmcnt(0)
	v_cndmask_b32_e64 v160, v7, v80, s5
.Ltmp60:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_dual_add_f32 v4, v43, v47 :: v_dual_mov_b32 v47, v45
.Ltmp61:
	.loc	1 134 28                        ; attention_backward.py:134:28
	v_cndmask_b32_e64 v164, v80, v7, s5
.Ltmp62:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_mov_b32_dpp v48, v48 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp63:
	.loc	1 194 9                         ; attention_backward.py:194:9
	s_cmp_ge_i32 s90, s91
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_2)
.Ltmp64:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_mov_b32_e32 v43, v4
	v_mov_b32_dpp v47, v47 row_xmask:2 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v43, v43 row_xmask:2 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp65:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_e32 v45, v45, v47
	v_add_f32_e32 v43, v4, v43
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp66:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_mov_b32_e32 v49, v45
	v_mov_b32_e32 v47, v43
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_mov_b32_dpp v49, v49 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v47, v47 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp67:
	.loc	1 194 9                         ; attention_backward.py:194:9
	s_cbranch_scc1 .LBB0_3
; %bb.1:                                ; %.lr.ph
	.loc	1 223 21                        ; attention_backward.py:223:21
	v_dual_mov_b32 v53, v150 :: v_dual_and_b32 v2, 24, v3
	v_dual_mov_b32 v54, v150 :: v_dual_and_b32 v1, 24, v1
	v_mov_b32_e32 v55, v150
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_lshl_or_b32 v52, v69, 5, v2
	v_mov_b32_e32 v2, 0xff800000
	v_xor_b32_e32 v3, v72, v1
	v_mov_b32_e32 v1, 0
	s_and_b32 s29, s75, 0xffff
	v_xor_b32_e32 v4, 8, v52
	v_xor_b32_e32 v5, 16, v52
	v_xor_b32_e32 v6, 24, v52
	v_add_nc_u32_e32 v56, 0, v3
	s_mov_b32 s28, s74
	v_add_nc_u32_e32 v57, 0, v4
	v_dual_mov_b32 v51, 0 :: v_dual_add_nc_u32 v58, 0, v5
	v_add_nc_u32_e32 v59, 0, v6
	s_and_b32 s41, s25, 0xffff
	s_mov_b32 s40, s24
	s_mov_b32 s34, 0x76543210
	s_mov_b32 s42, s30
	s_mov_b32 s43, s31
	s_mov_b32 s35, s90
.LBB0_2:                                ; =>This Inner Loop Header: Depth=1
	.loc	1 0 21 is_stmt 0                ; attention_backward.py:0:21
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_dual_mov_b32 v82, v2 :: v_dual_add_nc_u32 v3, s35, v93
	.loc	1 214 33 is_stmt 1              ; attention_backward.py:214:33
	v_add_lshl_u32 v8, v98, s35, 1
	v_add_lshl_u32 v7, v96, s35, 1
	v_add_lshl_u32 v6, v95, s35, 1
	.loc	1 199 21                        ; attention_backward.py:199:21
	v_mad_u64_u32 v[3:4], null, v3, s82, v[115:116]
	.loc	1 214 33                        ; attention_backward.py:214:33
	v_add_lshl_u32 v5, v94, s35, 1
	v_add_lshl_u32 v63, v149, s35, 1
	v_add_lshl_u32 v60, v99, s35, 1
	v_add_lshl_u32 v61, v147, s35, 1
	v_add_lshl_u32 v62, v146, s35, 1
	.loc	1 195 27                        ; attention_backward.py:195:27
	v_or_b32_e32 v73, s35, v129
	.loc	1 198 28                        ; attention_backward.py:198:28
	v_cndmask_b32_e64 v3, 0x80000000, v3, s4
	.loc	1 195 27                        ; attention_backward.py:195:27
	v_or_b32_e32 v74, s35, v253
	.loc	1 204 29                        ; attention_backward.py:204:29
	v_dual_mov_b32 v2, v1 :: v_dual_add_nc_u32 v89, 0, v52
	.loc	1 241 17                        ; attention_backward.py:241:17
	v_min_i32_e32 v90, v116, v254
	.loc	1 198 28                        ; attention_backward.py:198:28
	buffer_load_b64 v[3:4], v3, s[28:31], 0 offen
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 241 26                        ; attention_backward.py:241:26
	v_cmp_ge_i32_e64 s7, v74, v148
	v_cmp_ge_i32_e64 s8, v73, v148
	.loc	1 241 17 is_stmt 0              ; attention_backward.py:241:17
	v_cmp_ge_i32_e64 s11, v90, v74
	v_cmp_ge_i32_e64 s12, v90, v73
	.loc	1 195 27 is_stmt 1              ; attention_backward.py:195:27
	v_or_b32_e32 v83, s35, v252
	v_or_b32_e32 v84, s35, v255
	v_or_b32_e32 v88, s35, v114
	.loc	1 242 17                        ; attention_backward.py:242:17
	s_and_b32 s7, s11, s7
	.loc	1 195 27                        ; attention_backward.py:195:27
	v_or_b32_e32 v85, s35, v103
	.loc	1 241 26                        ; attention_backward.py:241:26
	v_cmp_ge_i32_e64 s3, v83, v148
	.loc	1 241 17 is_stmt 0              ; attention_backward.py:241:17
	v_cmp_ge_i32_e64 s10, v90, v83
	.loc	1 241 26                        ; attention_backward.py:241:26
	v_cmp_ge_i32_e32 vcc_lo, v84, v148
	.loc	1 241 17                        ; attention_backward.py:241:17
	v_cmp_ge_i32_e64 s9, v90, v84
	.loc	1 241 26                        ; attention_backward.py:241:26
	v_cmp_ge_i32_e64 s13, v88, v148
	.loc	1 241 17                        ; attention_backward.py:241:17
	v_cmp_ge_i32_e64 s17, v90, v88
	.loc	1 242 17 is_stmt 1              ; attention_backward.py:242:17
	s_and_b32 s3, s10, s3
	.loc	1 195 27                        ; attention_backward.py:195:27
	v_or_b32_e32 v86, s35, v104
	.loc	1 242 17                        ; attention_backward.py:242:17
	s_and_b32 s38, s9, vcc_lo
	s_and_b32 vcc_lo, s2, s3
	s_and_b32 s3, s2, s7
	.loc	1 195 27                        ; attention_backward.py:195:27
	v_or_b32_e32 v87, s35, v105
	.loc	1 242 17                        ; attention_backward.py:242:17
	s_and_b32 s8, s12, s8
	s_and_b32 s9, s17, s13
	s_and_b32 s7, s2, s8
	s_and_b32 s8, s2, s9
	.loc	1 241 26                        ; attention_backward.py:241:26
	v_cmp_ge_i32_e64 s14, v87, v148
	v_cmp_ge_i32_e64 s15, v86, v148
	v_cmp_ge_i32_e64 s16, v85, v148
	.loc	1 241 17 is_stmt 0              ; attention_backward.py:241:17
	v_cmp_ge_i32_e64 s18, v90, v87
	v_cmp_ge_i32_e64 s19, v90, v86
	v_cmp_ge_i32_e64 s20, v90, v85
	.loc	1 194 9 is_stmt 1               ; attention_backward.py:194:9
	s_add_i32 s35, s35, 16
	.loc	1 242 17                        ; attention_backward.py:242:17
	s_and_b32 s10, s18, s14
	s_and_b32 s11, s19, s15
	s_and_b32 s12, s20, s16
	s_and_b32 s9, s2, s10
	s_and_b32 s10, s2, s11
	s_and_b32 s11, s2, s12
	s_and_b32 s12, s2, s38
	.loc	1 194 9                         ; attention_backward.py:194:9
	s_cmp_lt_i32 s35, s91
	.loc	1 198 28                        ; attention_backward.py:198:28
	s_waitcnt vmcnt(0)
	ds_store_b64 v56, v[3:4]
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 214 33                        ; attention_backward.py:214:33
	s_clause 0x7
	buffer_load_u16 v68, v8, s[40:43], 0 offen
	buffer_load_u16 v75, v7, s[40:43], 0 offen
	buffer_load_u16 v76, v6, s[40:43], 0 offen
	buffer_load_u16 v77, v5, s[40:43], 0 offen
	buffer_load_u16 v78, v63, s[40:43], 0 offen
	buffer_load_u16 v79, v62, s[40:43], 0 offen
	buffer_load_u16 v80, v61, s[40:43], 0 offen
	buffer_load_u16 v81, v60, s[40:43], 0 offen
	.loc	1 204 29                        ; attention_backward.py:204:29
	v_mov_b32_e32 v8, v1
	v_mov_b32_e32 v3, v1
	v_mov_b32_e32 v4, v1
	v_mov_b32_e32 v5, v1
	v_mov_b32_e32 v6, v1
	v_mov_b32_e32 v7, v1
	v_mov_b32_e32 v67, v8
	v_dual_mov_b32 v63, v4 :: v_dual_mov_b32 v62, v3
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_dual_mov_b32 v65, v6 :: v_dual_mov_b32 v64, v5
	v_dual_mov_b32 v66, v7 :: v_dual_mov_b32 v61, v2
	v_mov_b32_e32 v60, v1
	.loc	1 198 28                        ; attention_backward.py:198:28
	ds_load_b64 v[2:3], v89
	ds_load_b64 v[4:5], v57
	ds_load_b64 v[6:7], v58
	ds_load_b64 v[73:74], v59
	.loc	1 204 29                        ; attention_backward.py:204:29
	s_waitcnt lgkmcnt(3)
	v_wmma_i32_16x16x16_iu4 v[60:67], v[2:3], v[167:168], v[60:67] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(2)
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[60:67], v[4:5], v[159:160], v[60:67] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu4 v[60:67], v[6:7], v[155:156], v[60:67] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[60:67], v[73:74], v[163:164], v[60:67] neg_lo:[1,1,0]
	.loc	1 223 21                        ; attention_backward.py:223:21
	v_cvt_f32_i32_e32 v3, v61
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cvt_f32_i32_e32 v2, v60
	v_cvt_f32_i32_e32 v5, v63
	s_delay_alu instid0(VALU_DEP_4)
	v_cvt_f32_i32_e32 v8, v66
	v_cvt_f32_i32_e32 v60, v67
	v_mul_f32_e32 v3, v53, v3
	v_cvt_f32_i32_e32 v4, v62
	v_cvt_f32_i32_e32 v6, v64
	v_cvt_f32_i32_e32 v7, v65
	v_mul_f32_e32 v2, v150, v2
	v_mul_f32_e32 v60, v55, v60
	v_dual_mul_f32 v8, v54, v8 :: v_dual_mul_f32 v5, v55, v5
	s_delay_alu instid0(VALU_DEP_4)
	v_dual_mul_f32 v4, v54, v4 :: v_dual_mul_f32 v7, v53, v7
	s_waitcnt vmcnt(7)
	v_dual_mul_f32 v6, v150, v6 :: v_dual_lshlrev_b32 v61, 16, v68
	.loc	1 214 33                        ; attention_backward.py:214:33
	s_waitcnt vmcnt(6)
	v_lshlrev_b32_e32 v62, 16, v75
	s_waitcnt vmcnt(5)
	v_lshlrev_b32_e32 v63, 16, v76
	s_waitcnt vmcnt(4)
	v_lshlrev_b32_e32 v64, 16, v77
	.loc	1 223 21                        ; attention_backward.py:223:21
	v_mul_f32_e32 v5, v5, v61
	s_waitcnt vmcnt(1)
	v_dual_mul_f32 v4, v4, v62 :: v_dual_lshlrev_b32 v67, 16, v80
	v_mul_f32_e32 v3, v3, v63
	v_dual_mul_f32 v2, v2, v64 :: v_dual_lshlrev_b32 v65, 16, v78
	s_waitcnt vmcnt(0)
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_mul_f32 v7, v7, v67 :: v_dual_lshlrev_b32 v68, 16, v81
	.loc	1 257 22                        ; attention_backward.py:257:22
	v_cndmask_b32_e64 v3, 0xff800000, v3, s3
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 223 21                        ; attention_backward.py:223:21
	v_mul_f32_e32 v60, v60, v65
	.loc	1 257 22                        ; attention_backward.py:257:22
	v_cndmask_b32_e64 v61, 0xff800000, v2, s7
	.loc	1 223 21                        ; attention_backward.py:223:21
	v_mul_f32_e32 v6, v6, v68
	.loc	1 257 22                        ; attention_backward.py:257:22
	v_cndmask_b32_e64 v5, 0xff800000, v5, s12
	v_cndmask_b32_e32 v4, 0xff800000, v4, vcc_lo
	v_cndmask_b32_e64 v60, 0xff800000, v60, s8
	.loc	1 214 33                        ; attention_backward.py:214:33
	v_lshlrev_b32_e32 v66, 16, v79
	.loc	1 257 22                        ; attention_backward.py:257:22
	v_cndmask_b32_e64 v7, 0xff800000, v7, s10
	v_cndmask_b32_e64 v6, 0xff800000, v6, s11
.Ltmp68:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention_backward.py:258:25 ] ]
	v_max3_f32 v2, v61, v3, v4
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp69:
	.loc	1 223 21                        ; attention_backward.py:223:21
	v_mul_f32_e32 v8, v8, v66
.Ltmp70:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention_backward.py:258:25 ] ]
	v_max3_f32 v62, v5, v6, v7
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp71:
	.loc	1 257 22                        ; attention_backward.py:257:22
	v_cndmask_b32_e64 v8, 0xff800000, v8, s9
.Ltmp72:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention_backward.py:258:25 ] ]
	v_max_f32_e32 v63, v8, v60
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_max3_f32 v2, v2, v62, v63
.Ltmp73:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention_backward.py:258:25 ]
	v_permlanex16_b32 v62, v2, s34, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp74:
	.loc	1 259 20                        ; attention_backward.py:259:20
	v_max3_f32 v2, v82, v2, v62
	.loc	1 261 58                        ; attention_backward.py:261:58
	v_sub_f32_e32 v61, v61, v2
	v_sub_f32_e32 v3, v3, v2
	v_sub_f32_e32 v7, v7, v2
	v_sub_f32_e32 v5, v5, v2
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 261 45 is_stmt 0              ; attention_backward.py:261:45
	v_exp_f32_e32 v61, v61
	v_exp_f32_e32 v3, v3
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_exp_f32_e32 v7, v7
	v_exp_f32_e32 v5, v5
	.loc	1 261 29                        ; attention_backward.py:261:29
	v_cndmask_b32_e64 v61, 0, v61, s7
	s_delay_alu instid0(TRANS32_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	v_cndmask_b32_e64 v3, 0, v3, s3
	v_cndmask_b32_e64 v7, 0, v7, s10
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cndmask_b32_e64 v5, 0, v5, s12
.Ltmp75:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:262:33 ] ]
	v_dual_add_f32 v3, v61, v3 :: v_dual_sub_f32 v6, v6, v2
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
.Ltmp76:
	.loc	1 261 45                        ; attention_backward.py:261:45
	v_exp_f32_e32 v6, v6
	.loc	1 261 29 is_stmt 0              ; attention_backward.py:261:29
	v_cndmask_b32_e64 v6, 0, v6, s11
	.loc	1 261 58                        ; attention_backward.py:261:58
	v_sub_f32_e32 v4, v4, v2
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 261 45                        ; attention_backward.py:261:45
	v_exp_f32_e32 v4, v4
	.loc	1 261 29                        ; attention_backward.py:261:29
	v_cndmask_b32_e32 v4, 0, v4, vcc_lo
	.loc	1 260 21 is_stmt 1              ; attention_backward.py:260:21
	v_cmp_neq_f32_e32 vcc_lo, 0xff800000, v82
	.loc	1 261 58                        ; attention_backward.py:261:58
	v_sub_f32_e32 v60, v60, v2
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
.Ltmp77:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:262:33 ] ]
	v_dual_add_f32 v4, v4, v5 :: v_dual_add_f32 v5, v6, v7
.Ltmp78:
	.loc	1 260 70                        ; attention_backward.py:260:70
	v_sub_f32_e32 v7, v82, v2
	.loc	1 261 45                        ; attention_backward.py:261:45
	v_exp_f32_e32 v60, v60
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp79:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:262:33 ] ]
	v_dual_add_f32 v3, v3, v4 :: v_dual_sub_f32 v8, v8, v2
.Ltmp80:
	.loc	1 261 45                        ; attention_backward.py:261:45
	v_exp_f32_e32 v8, v8
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 261 29 is_stmt 0              ; attention_backward.py:261:29
	v_cndmask_b32_e64 v60, 0, v60, s8
	v_cndmask_b32_e64 v8, 0, v8, s9
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp81:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:262:33 ] ]
	v_add_f32_e32 v6, v8, v60
	v_add_f32_e32 v4, v5, v6
.Ltmp82:
	.loc	1 260 57                        ; attention_backward.py:260:57
	v_exp_f32_e32 v5, v7
	v_mov_b32_e32 v6, v51
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp83:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:262:33 ] ]
	v_add_f32_e32 v3, v3, v4
.Ltmp84:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:262:33 ]
	v_permlanex16_b32 v4, v3, s34, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp85:
	.loc	1 260 21                        ; attention_backward.py:260:21
	v_cndmask_b32_e32 v5, 0, v5, vcc_lo
.Ltmp86:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:262:33 ] ]
	v_add_f32_e32 v51, v3, v4
	s_delay_alu instid0(VALU_DEP_1)
.Ltmp87:
	.loc	1 262 19                        ; attention_backward.py:262:19
	v_fmac_f32_e32 v51, v6, v5
	.loc	1 194 9                         ; attention_backward.py:194:9
	s_cbranch_scc1 .LBB0_2
	s_branch .LBB0_4
.LBB0_3:
	.loc	1 0 9 is_stmt 0                 ; attention_backward.py:0:9
	v_dual_mov_b32 v2, 0xff800000 :: v_dual_mov_b32 v51, 0
.LBB0_4:                                ; %Flow143
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 264 43 is_stmt 1              ; attention_backward.py:264:43
	v_cmp_gt_f32_e32 vcc_lo, 0x800000, v51
.Ltmp88:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_dual_add_f32 v68, v45, v49 :: v_dual_and_b32 v5, 31, v0
	v_dual_add_f32 v66, v43, v47 :: v_dual_and_b32 v1, 56, v0
.Ltmp89:
	.loc	1 264 43                        ; attention_backward.py:264:43
	v_cndmask_b32_e64 v4, 0, 32, vcc_lo
	v_cndmask_b32_e64 v3, 0, 0x42000000, vcc_lo
	.loc	1 266 9                         ; attention_backward.py:266:9
	v_cmp_eq_u32_e32 vcc_lo, 0, v70
	s_load_b32 s92, s[0:1], 0x74
	v_lshl_add_u32 v6, v69, 2, 0
	.loc	1 264 43                        ; attention_backward.py:264:43
	v_ldexp_f32 v4, v51, v4
	.loc	1 264 26 is_stmt 0              ; attention_backward.py:264:26
	v_cmp_lt_f32_e64 s0, 0, v51
	.loc	1 266 9 is_stmt 1               ; attention_backward.py:266:9
	s_waitcnt lgkmcnt(0)
	s_barrier
.Ltmp90:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_dual_add_f32 v65, v46, v50 :: v_dual_mov_b32 v8, 0
.Ltmp91:
	.loc	1 264 43                        ; attention_backward.py:264:43
	v_log_f32_e32 v4, v4
	.loc	1 267 9                         ; attention_backward.py:267:9
	v_lshlrev_b32_e32 v73, 4, v42
	.loc	1 266 9                         ; attention_backward.py:266:9
	s_and_b32 s69, s69, 0xffff
	s_mov_b32 s71, 0x31027000
	s_mov_b32 s70, 0x7ffffffe
	.loc	1 392 17                        ; attention_backward.py:392:17
	v_cmp_o_f32_e64 s1, v37, v37
	v_cmp_o_f32_e64 s7, v39, v39
	v_mov_b16_e32 v42.l, v33.h
	.loc	1 267 9                         ; attention_backward.py:267:9
	s_and_b32 s37, s37, 0xffff
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	.loc	1 264 43                        ; attention_backward.py:264:43
	v_dual_sub_f32 v3, v4, v3 :: v_dual_and_b32 v74, 24, v0
	.loc	1 124 21                        ; attention_backward.py:124:21
	v_or_b32_e32 v4, s21, v5
	.loc	1 267 9                         ; attention_backward.py:267:9
	s_mov_b32 s38, s70
	s_mov_b32 s39, s71
	v_lshrrev_b32_e32 v43, 1, v74
	.loc	1 392 17                        ; attention_backward.py:392:17
	v_cmp_o_f32_e64 s3, v40, v40
	.loc	1 128 21                        ; attention_backward.py:128:21
	v_cmp_gt_i32_e64 s8, 0x800, v4
	v_lshrrev_b32_e32 v76, 4, v0
	v_mov_b32_e32 v49, v8
	.loc	1 267 9                         ; attention_backward.py:267:9
	v_add3_u32 v43, 0, v73, v43
	v_mov_b32_e32 v63, v8
	.loc	1 266 9                         ; attention_backward.py:266:9
	s_and_b32 vcc_lo, vcc_lo, s8
	.loc	1 267 9                         ; attention_backward.py:267:9
	v_lshlrev_b32_e32 v7, 1, v1
	.loc	1 264 37                        ; attention_backward.py:264:37
	v_add_f32_e32 v1, v2, v3
	.loc	1 266 9                         ; attention_backward.py:266:9
	v_lshl_add_u32 v2, v70, 1, v6
	.loc	1 392 17                        ; attention_backward.py:392:17
	v_mov_b16_e32 v6.h, 0
	v_mov_b16_e32 v6.l, v38.h
	v_mov_b16_e32 v3.l, v37.h
	.loc	1 264 17                        ; attention_backward.py:264:17
	v_cndmask_b32_e64 v152, 0, v1, s0
	.loc	1 266 9                         ; attention_backward.py:266:9
	v_lshl_add_u32 v1, v5, 2, 0
	.loc	1 266 18 is_stmt 0              ; attention_backward.py:266:18
	v_or_b32_e32 v5, s22, v5
	.loc	1 392 17 is_stmt 1              ; attention_backward.py:392:17
	v_cmp_o_f32_e64 s0, v38, v38
	v_mov_b16_e32 v3.h, v6.h
	.loc	1 266 9                         ; attention_backward.py:266:9
	ds_store_b32 v2, v152
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b32 v1, v1
	v_add_lshl_u32 v4, v5, s21, 2
	.loc	1 392 17                        ; attention_backward.py:392:17
	v_mov_b16_e32 v2.l, v39.h
	v_mov_b16_e32 v2.h, v6.h
	v_and_b32_e32 v3, 1, v3
	v_mov_b16_e32 v5.l, v35.h
	.loc	1 266 9                         ; attention_backward.py:266:9
	v_dual_cndmask_b32 v4, 0x80000000, v4 :: v_dual_add_nc_u32 v75, 0, v7
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 392 17                        ; attention_backward.py:392:17
	v_and_b32_e32 v2, 1, v2
	v_mov_b16_e32 v42.h, v6.h
	v_mov_b16_e32 v5.h, v6.h
	v_add3_u32 v3, v37, v3, 0x7fff
	v_cmp_o_f32_e32 vcc_lo, v34, v34
	v_xad_u32 v7, v41, v7, 0
	v_dual_mov_b32 v61, v8 :: v_dual_and_b32 v42, 1, v42
	v_mov_b32_e32 v59, v8
	v_mov_b32_e32 v57, v8
	v_mov_b32_e32 v56, v8
	v_mov_b32_e32 v54, v8
	.loc	1 266 9                         ; attention_backward.py:266:9
	s_waitcnt lgkmcnt(0)
	buffer_store_b32 v1, v4, s[68:71], 0 offen
	.loc	1 392 17                        ; attention_backward.py:392:17
	v_and_b32_e32 v1, 1, v6
	v_mov_b16_e32 v6.l, v40.h
.Ltmp92:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_e32 v67, v44, v48
.Ltmp93:
	.loc	1 267 9                         ; attention_backward.py:267:9
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 392 17                        ; attention_backward.py:392:17
	v_add3_u32 v1, v38, v1, 0x7fff
	v_and_b32_e32 v38, 1, v6
	.loc	1 267 9                         ; attention_backward.py:267:9
	ds_store_b128 v75, v[65:68]
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b32 v43, v43
	.loc	1 392 17                        ; attention_backward.py:392:17
	v_mov_b16_e32 v6.l, v34.h
	v_add3_u32 v37, v40, v38, 0x7fff
	v_add3_u32 v38, v39, v2, 0x7fff
	v_cndmask_b16 v1.l, 0x7fff, v3.h, s1
	v_cmp_o_f32_e64 s1, v35, v35
	v_and_b32_e32 v39, 1, v6
	v_mov_b16_e32 v6.l, v36.h
	v_cndmask_b16 v1.h, 0x7fff, v1.h, s0
	v_cmp_o_f32_e64 s0, v36, v36
	v_cndmask_b16 v2.h, 0x7fff, v37.h, s3
	v_add3_u32 v3, v34, v39, 0x7fff
	v_add3_u32 v34, v33, v42, 0x7fff
	v_mov_b16_e32 v34.l, v25.h
	v_cndmask_b16 v2.l, 0x7fff, v38.h, s7
	v_mov_b32_e32 v52, v8
	v_cndmask_b16 v3.h, 0x7fff, v3.h, vcc_lo
	v_cmp_o_f32_e32 vcc_lo, v33, v33
	v_mov_b32_e32 v50, v8
	v_mov_b32_e32 v64, v8
	.loc	1 267 9                         ; attention_backward.py:267:9
	s_waitcnt lgkmcnt(0)
	buffer_store_b32 v43, v4, s[36:39], 0 offen
	.loc	1 392 17                        ; attention_backward.py:392:17
	v_and_b32_e32 v4, 1, v5
	v_and_b32_e32 v5, 1, v6
	v_mov_b16_e32 v6.l, v30.h
	v_cndmask_b16 v3.l, 0x7fff, v34.h, vcc_lo
	v_cmp_o_f32_e32 vcc_lo, v30, v30
	v_add3_u32 v33, v35, v4, 0x7fff
	v_add3_u32 v4, v36, v5, 0x7fff
	v_mov_b16_e32 v5.l, v29.h
	v_mov_b16_e32 v5.h, v6.h
	v_and_b32_e32 v35, 1, v6
	v_cndmask_b16 v4.l, 0x7fff, v33.h, s1
	v_mov_b16_e32 v6.l, v32.h
	v_mov_b16_e32 v34.h, v6.h
	v_and_b32_e32 v5, 1, v5
	v_add3_u32 v33, v30, v35, 0x7fff
	v_mov_b16_e32 v30.l, v31.h
	v_mov_b16_e32 v30.h, v6.h
	v_cndmask_b16 v4.h, 0x7fff, v4.h, s0
	v_add3_u32 v5, v29, v5, 0x7fff
	v_cndmask_b16 v33.h, 0x7fff, v33.h, vcc_lo
	v_cmp_o_f32_e32 vcc_lo, v29, v29
	v_and_b32_e32 v29, 1, v6
	v_mov_b16_e32 v6.l, v26.h
	v_and_b32_e32 v30, 1, v30
	v_cmp_o_f32_e64 s0, v32, v32
	v_cndmask_b16 v33.l, 0x7fff, v5.h, vcc_lo
	v_add3_u32 v29, v32, v29, 0x7fff
	v_and_b32_e32 v5, 1, v34
	v_and_b32_e32 v32, 1, v6
	v_mov_b16_e32 v6.l, v28.h
	v_add3_u32 v30, v31, v30, 0x7fff
	v_cndmask_b16 v34.h, 0x7fff, v29.h, s0
	v_cmp_o_f32_e32 vcc_lo, v31, v31
	v_add3_u32 v5, v25, v5, 0x7fff
	v_add3_u32 v29, v26, v32, 0x7fff
	v_cmp_o_f32_e64 s0, v26, v26
	v_cmp_o_f32_e64 s1, v25, v25
	v_mov_b16_e32 v25.l, v27.h
	v_mov_b16_e32 v25.h, v6.h
	v_and_b32_e32 v26, 1, v6
	v_cndmask_b16 v34.l, 0x7fff, v30.h, vcc_lo
	v_cndmask_b16 v35.l, 0x7fff, v5.h, s1
	v_cmp_o_f32_e32 vcc_lo, v28, v28
	v_and_b32_e32 v5, 1, v25
	v_add3_u32 v25, v28, v26, 0x7fff
	v_mov_b16_e32 v6.l, v22.h
	v_mov_b16_e32 v26.l, v21.h
	v_mov_b16_e32 v26.h, v6.h
	v_add3_u32 v5, v27, v5, 0x7fff
	v_cndmask_b16 v36.h, 0x7fff, v25.h, vcc_lo
	v_cmp_o_f32_e32 vcc_lo, v27, v27
	v_and_b32_e32 v25, 1, v6
	v_mov_b16_e32 v27.l, v23.h
	v_mov_b16_e32 v27.h, v6.h
	v_mov_b16_e32 v6.l, v24.h
	v_cndmask_b16 v35.h, 0x7fff, v29.h, s0
	v_and_b32_e32 v26, 1, v26
	v_add3_u32 v25, v22, v25, 0x7fff
	v_cmp_o_f32_e64 s0, v22, v22
	v_cndmask_b16 v36.l, 0x7fff, v5.h, vcc_lo
	v_dual_mov_b32 v62, v8 :: v_dual_and_b32 v5, 1, v27
	v_dual_mov_b32 v60, v8 :: v_dual_and_b32 v27, 1, v6
	v_mov_b16_e32 v6.l, v18.h
	v_add3_u32 v26, v21, v26, 0x7fff
	v_cndmask_b16 v22.h, 0x7fff, v25.h, s0
	v_cmp_o_f32_e32 vcc_lo, v21, v21
	v_add3_u32 v5, v23, v5, 0x7fff
	v_add3_u32 v21, v24, v27, 0x7fff
	v_cmp_o_f32_e64 s0, v24, v24
	v_cmp_o_f32_e64 s1, v23, v23
	v_mov_b16_e32 v24.l, v17.h
	v_mov_b16_e32 v24.h, v6.h
	v_dual_mov_b32 v58, v8 :: v_dual_and_b32 v25, 1, v6
	v_cndmask_b16 v22.l, 0x7fff, v26.h, vcc_lo
	v_cndmask_b16 v23.h, 0x7fff, v21.h, s0
	v_cndmask_b16 v23.l, 0x7fff, v5.h, s1
	v_and_b32_e32 v5, 1, v24
	v_add3_u32 v21, v18, v25, 0x7fff
	v_cmp_o_f32_e32 vcc_lo, v18, v18
	v_mov_b16_e32 v6.l, v20.h
	v_mov_b16_e32 v21.l, v13.h
	v_add3_u32 v5, v17, v5, 0x7fff
	v_mov_b16_e32 v18.l, v19.h
	v_cndmask_b16 v24.h, 0x7fff, v21.h, vcc_lo
	v_cmp_o_f32_e32 vcc_lo, v17, v17
	v_and_b32_e32 v17, 1, v6
	v_mov_b16_e32 v21.h, v6.h
	v_mov_b16_e32 v6.l, v14.h
	v_mov_b16_e32 v18.h, v6.h
	v_cmp_o_f32_e64 s0, v20, v20
	v_add3_u32 v17, v20, v17, 0x7fff
	v_cndmask_b16 v24.l, 0x7fff, v5.h, vcc_lo
	v_and_b32_e32 v5, 1, v21
	v_and_b32_e32 v20, 1, v6
	v_and_b32_e32 v18, 1, v18
	v_cndmask_b16 v25.h, 0x7fff, v17.h, s0
	v_mov_b16_e32 v6.l, v16.h
	v_add3_u32 v5, v13, v5, 0x7fff
	v_add3_u32 v17, v14, v20, 0x7fff
	v_cmp_o_f32_e64 s0, v14, v14
	v_cmp_o_f32_e64 s1, v13, v13
	v_mov_b16_e32 v14.l, v15.h
	v_mov_b16_e32 v14.h, v6.h
	v_add3_u32 v18, v19, v18, 0x7fff
	v_cmp_o_f32_e32 vcc_lo, v19, v19
	v_and_b32_e32 v19, 1, v6
	v_cndmask_b16 v13.h, 0x7fff, v17.h, s0
	v_cndmask_b16 v13.l, 0x7fff, v5.h, s1
	v_and_b32_e32 v5, 1, v14
	v_mov_b16_e32 v17.l, v9.h
	v_mov_b16_e32 v17.h, v6.h
	v_mov_b16_e32 v6.l, v10.h
	v_cndmask_b16 v25.l, 0x7fff, v18.h, vcc_lo
	v_add3_u32 v14, v16, v19, 0x7fff
	v_cmp_o_f32_e32 vcc_lo, v16, v16
	v_add3_u32 v5, v15, v5, 0x7fff
	v_cmp_o_f32_e64 s0, v15, v15
	v_and_b32_e32 v15, 1, v17
	v_dual_mov_b32 v55, v8 :: v_dual_and_b32 v16, 1, v6
	v_mov_b16_e32 v6.l, v12.h
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cndmask_b16 v14.l, 0x7fff, v5.h, s0
	v_add3_u32 v5, v9, v15, 0x7fff
	v_mov_b16_e32 v15.l, v11.h
	v_mov_b16_e32 v15.h, v6.h
	v_dual_mov_b32 v53, v8 :: v_dual_and_b32 v6, 1, v6
	v_cndmask_b16 v14.h, 0x7fff, v14.h, vcc_lo
	v_add3_u32 v16, v10, v16, 0x7fff
	v_cmp_o_f32_e32 vcc_lo, v10, v10
	v_cmp_o_f32_e64 s0, v9, v9
	v_and_b32_e32 v9, 1, v15
	v_add3_u32 v6, v12, v6, 0x7fff
	v_cmp_o_f32_e64 s1, v12, v12
	v_cndmask_b16 v15.h, 0x7fff, v16.h, vcc_lo
	v_cndmask_b16 v15.l, 0x7fff, v5.h, s0
	v_add3_u32 v5, v11, v9, 0x7fff
	v_cmp_o_f32_e32 vcc_lo, v11, v11
	v_cndmask_b16 v16.h, 0x7fff, v6.h, s1
	v_dual_mov_b32 v51, v8 :: v_dual_lshlrev_b32 v6, 7, v69
	v_lshlrev_b32_e32 v9, 6, v70
	v_cndmask_b16 v16.l, 0x7fff, v5.h, vcc_lo
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v7, v[1:4]
	ds_store_b128 v7, v[33:36] offset:1024
	ds_store_b128 v7, v[22:25] offset:2048
	ds_store_b128 v7, v[13:16] offset:3072
	v_or3_b32 v5, v6, v9, v73
	s_waitcnt lgkmcnt(0)
	s_barrier
	v_mov_b32_e32 v7, v8
	s_delay_alu instid0(VALU_DEP_2)
	v_dual_mov_b32 v6, v8 :: v_dual_add_nc_u32 v1, 0, v5
	v_xad_u32 v2, v5, 16, 0
	v_xad_u32 v3, v5, 32, 0
	v_xad_u32 v4, v5, 48, 0
	ds_load_b128 v[106:109], v1
	ds_load_b128 v[110:113], v2
	v_xad_u32 v1, v5, 64, 0
	v_xad_u32 v2, 0x50, v5, 0
	ds_load_b128 v[34:37], v3
	ds_load_b128 v[38:41], v4
	v_xad_u32 v3, 0x60, v5, 0
	v_xad_u32 v4, 0x70, v5, 0
	ds_load_b128 v[138:141], v1
	ds_load_b128 v[142:145], v2
	ds_load_b128 v[117:120], v3
	ds_load_b128 v[121:124], v4
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
	.loc	1 270 9                         ; attention_backward.py:270:9
	s_and_not1_b32 vcc_lo, exec_lo, s33
	.loc	1 396 43                        ; attention_backward.py:396:43
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v75, v[65:68]
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_cbranch_vccnz .LBB0_8
; %bb.5:                                ; %.lr.ph111
	.loc	1 0 43 is_stmt 0                ; attention_backward.py:0:43
	v_dual_mov_b32 v10, 0x7632 :: v_dual_and_b32 v1, 8, v0
	v_dual_mov_b32 v65, 0 :: v_dual_and_b32 v4, 48, v0
	v_and_b32_e32 v3, 12, v0
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 396 43                        ; attention_backward.py:396:43
	v_lshrrev_b32_e32 v1, 1, v1
	v_lshrrev_b32_e32 v7, 2, v70
	v_cndmask_b32_e64 v10, 0x3276, v10, s5
	.loc	1 168 40 is_stmt 1              ; attention_backward.py:168:40
	v_lshlrev_b32_e32 v2, 4, v71
	.loc	1 396 43                        ; attention_backward.py:396:43
	v_bfe_i32 v6, v0, 3, 1
	v_dual_mov_b32 v62, v65 :: v_dual_add_nc_u32 v1, 0, v1
	v_dual_mov_b32 v64, v65 :: v_dual_lshlrev_b32 v11, 1, v74
	v_lshl_or_b32 v12, v74, 6, v73
	s_delay_alu instid0(VALU_DEP_3)
	v_add3_u32 v1, v1, v7, v73
	v_dual_mov_b32 v50, v65 :: v_dual_lshlrev_b32 v13, 9, v71
	v_lshl_or_b32 v10, v10, 8, v10
	v_dual_mov_b32 v58, v65 :: v_dual_lshlrev_b32 v5, 1, v3
	v_dual_mov_b32 v60, v65 :: v_dual_lshlrev_b32 v3, 5, v3
	v_mov_b32_e32 v52, v65
	v_lshrrev_b32_e32 v8, 1, v4
	ds_load_b32 v154, v1
	v_mov_b32_e32 v1, 0x5410
	.loc	1 310 21                        ; attention_backward.py:310:21
	v_cmp_gt_i32_e32 vcc_lo, s92, v2
	v_xor_b32_e32 v11, v12, v11
	v_or3_b32 v12, v3, v13, v2
	v_dual_mov_b32 v57, 0 :: v_dual_and_b32 v2, 0x420, v6
	v_lshl_or_b32 v3, v4, 3, v73
	v_dual_mov_b32 v59, v65 :: v_dual_and_b32 v4, 0x760076, v10
	v_lshl_or_b32 v9, v69, 5, v5
	v_xor_b32_e32 v5, v72, v8
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_xor_b32_e32 v13, v3, v2
	v_lshl_or_b32 v2, v4, 4, v4
	v_cndmask_b32_e64 v1, 0x1054, v1, s5
	v_xor_b32_e32 v7, 8, v9
	v_xor_b32_e32 v8, 16, v9
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v9, off offset:32
	scratch_store_b32 off, v12, off offset:36
	v_and_b32_e32 v127, 0x7060706, v2
	v_dual_mov_b32 v61, v65 :: v_dual_add_nc_u32 v2, 0, v5
	scratch_store_b32 off, v13, off offset:40 ; 4-byte Folded Spill
	v_xor_b32_e32 v9, 24, v9
	v_lshl_or_b32 v1, v1, 8, v1
	scratch_store_b32 off, v2, off offset:44 ; 4-byte Folded Spill
	v_dual_mov_b32 v63, v65 :: v_dual_add_nc_u32 v2, 0, v7
	v_lshl_add_u32 v6, v70, 2, 0
	v_dual_mov_b32 v54, v65 :: v_dual_and_b32 v1, 0x540054, v1
	scratch_store_b32 off, v2, off offset:48 ; 4-byte Folded Spill
	v_dual_mov_b32 v49, 0 :: v_dual_add_nc_u32 v2, 0, v8
	v_xor_b32_e32 v10, 16, v12
	v_lshl_or_b32 v1, v1, 4, v1
	v_xor_b32_e32 v3, 32, v12
	scratch_store_b32 off, v2, off offset:52 ; 4-byte Folded Spill
	v_dual_mov_b32 v51, v65 :: v_dual_add_nc_u32 v2, 0, v9
	v_xor_b32_e32 v4, 48, v12
	v_xor_b32_e32 v12, 0x210, v13
	v_dual_mov_b32 v56, v65 :: v_dual_and_b32 v137, 0x5040504, v1
	scratch_store_b32 off, v2, off offset:56 ; 4-byte Folded Spill
	v_dual_mov_b32 v53, v65 :: v_dual_add_nc_u32 v2, v6, v11
	v_lshlrev_b32_e32 v1, 5, v0
	v_lshl_add_u32 v0, v69, 1, 0
	v_dual_mov_b32 v14, v65 :: v_dual_add_nc_u32 v133, 0, v10
	scratch_store_b32 off, v2, off offset:60 ; 4-byte Folded Spill
	v_dual_mov_b32 v9, 0 :: v_dual_add_nc_u32 v2, 0, v12
	v_dual_mov_b32 v16, v65 :: v_dual_add_nc_u32 v165, 0, v3
	v_dual_mov_b32 v55, v65 :: v_dual_add_nc_u32 v166, 0, v4
	scratch_store_b32 off, v2, off offset:64 ; 4-byte Folded Spill
	v_mov_b32_e32 v10, v65
	v_mov_b32_e32 v11, v65
	v_dual_mov_b32 v12, v65 :: v_dual_add_nc_u32 v135, 0, v1
	v_mov_b32_e32 v2, v65
	v_mov_b32_e32 v13, v65
	v_mov_b32_e32 v15, v65
	v_dual_mov_b32 v1, 0 :: v_dual_mov_b32 v4, v65
	v_mov_b32_e32 v3, v65
	v_mov_b32_e32 v5, v65
	v_mov_b32_e32 v6, v65
	v_mov_b32_e32 v7, v65
	v_mov_b32_e32 v8, v65
	s_and_b32 s75, s75, 0xffff
	s_and_b32 s25, s25, 0xffff
	.loc	1 349 30                        ; attention_backward.py:349:30
	s_lshl_b32 s93, s23, 10
	.loc	1 371 21                        ; attention_backward.py:371:21
	s_lshl_b32 s94, s23, 7
	s_and_b32 s77, s77, 0xffff
	s_and_b32 s85, s27, 0xffff
	s_mov_b32 s68, s74
	s_mov_b32 s69, s75
	s_mov_b32 s72, s24
	s_mov_b32 s73, s25
	s_mov_b32 s74, s70
	s_mov_b32 s75, s71
	s_mov_b32 s78, s70
	s_mov_b32 s79, s71
	s_mov_b32 s95, 0x76543210
	s_mov_b32 s84, s26
	s_mov_b32 s86, s70
	s_mov_b32 s87, s71
	.loc	1 270 9                         ; attention_backward.py:270:9
	s_clause 0x5                            ; 52-byte Folded Spill
	scratch_store_b32 off, v76, off offset:84
	scratch_store_b32 off, v91, off offset:80
	scratch_store_b64 off, v[92:93], off offset:68
	scratch_store_b32 off, v116, off offset:76
	scratch_store_b128 off, v[117:120], off
	scratch_store_b128 off, v[121:124], off offset:16
.LBB0_6:                                ; =>This Inner Loop Header: Depth=1
	.loc	1 274 28                        ; attention_backward.py:274:28
	scratch_load_b32 v17, off, off offset:32 ; 4-byte Folded Reload
	.loc	1 280 29                        ; attention_backward.py:280:29
	v_dual_mov_b32 v67, v65 :: v_dual_add_nc_u32 v88, s90, v93
	.loc	1 347 36                        ; attention_backward.py:347:36
	s_lshr_b32 s0, s90, 1
	v_dual_mov_b32 v44, v93 :: v_dual_mov_b32 v119, v138
	.loc	1 351 21                        ; attention_backward.py:351:21
	s_add_i32 s0, s0, s93
	v_dual_mov_b32 v46, v95 :: v_dual_mov_b32 v121, v140
	v_dual_mov_b32 v120, v139 :: v_dual_mov_b32 v123, v142
	v_dual_mov_b32 v122, v141 :: v_dual_mov_b32 v125, v144
	v_mov_b32_e32 v124, v143
	v_mov_b32_e32 v126, v145
	v_dual_mov_b32 v145, v41 :: v_dual_mov_b32 v144, v40
	v_mov_b32_e32 v141, v37
	v_dual_mov_b32 v143, v39 :: v_dual_mov_b32 v142, v38
	v_dual_mov_b32 v139, v35 :: v_dual_mov_b32 v140, v36
	v_mov_b32_e32 v138, v34
	v_dual_mov_b32 v34, v106 :: v_dual_mov_b32 v39, v111
	v_dual_mov_b32 v35, v107 :: v_dual_mov_b32 v36, v108
	v_mov_b32_e32 v41, v113
	v_dual_mov_b32 v37, v109 :: v_dual_mov_b32 v38, v110
	v_dual_mov_b32 v33, v97 :: v_dual_mov_b32 v40, v112
	v_mov_b32_e32 v43, v99
	.loc	1 376 24                        ; attention_backward.py:376:24
	s_lshr_b32 s1, s90, 4
	.loc	1 280 29                        ; attention_backward.py:280:29
	v_dual_mov_b32 v68, v65 :: v_dual_lshlrev_b32 v89, 1, v88
	.loc	1 374 21                        ; attention_backward.py:374:21
	s_add_i32 s1, s1, s94
	.loc	1 290 33                        ; attention_backward.py:290:33
	v_add_lshl_u32 v77, v94, s90, 1
	v_add_lshl_u32 v78, v95, s90, 1
	v_add_lshl_u32 v79, v96, s90, 1
	v_add_lshl_u32 v80, v98, s90, 1
	v_add_lshl_u32 v81, v99, s90, 1
	v_add_lshl_u32 v82, v147, s90, 1
	v_add_lshl_u32 v83, v146, s90, 1
	v_add_lshl_u32 v84, v149, s90, 1
	.loc	1 274 28                        ; attention_backward.py:274:28
	v_mov_b16_e32 v87.h, 0
	.loc	1 280 29                        ; attention_backward.py:280:29
	v_dual_mov_b32 v70, v65 :: v_dual_mov_b32 v45, v94
	v_dual_mov_b32 v72, v65 :: v_dual_mov_b32 v47, v96
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 309 31                        ; attention_backward.py:309:31
	v_mov_b16_e32 v90.h, v87.h
	.loc	1 362 30                        ; attention_backward.py:362:30
	v_mov_b16_e32 v95.h, v87.h
	.loc	1 309 31                        ; attention_backward.py:309:31
	v_mov_b16_e64 v183.h, v87.h
	v_mov_b16_e32 v94.h, v87.h
	.loc	1 362 30                        ; attention_backward.py:362:30
	v_mov_b16_e32 v93.h, v87.h
	v_mov_b16_e32 v92.h, v87.h
	.loc	1 309 31                        ; attention_backward.py:309:31
	v_mov_b16_e32 v96.h, v87.h
	v_mov_b16_e32 v91.h, v87.h
	v_mov_b16_e32 v107.h, v87.h
	v_mov_b16_e32 v106.h, v87.h
	v_mov_b16_e64 v204.h, v87.h
	.loc	1 307 37                        ; attention_backward.py:307:37
	.loc	1 280 29                        ; attention_backward.py:280:29
	v_mov_b32_e32 v69, v65
	v_mov_b32_e32 v66, v65
	v_mov_b32_e32 v71, v65
	v_mov_b32_e32 v27, v253
	v_mov_b32_e32 v131, v155
	v_dual_mov_b32 v29, v255 :: v_dual_mov_b32 v26, v252
	v_dual_mov_b32 v157, v159 :: v_dual_mov_b32 v132, v156
	.loc	1 274 28                        ; attention_backward.py:274:28
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v76, 0, v17
	.loc	1 393 17                        ; attention_backward.py:393:17
	scratch_load_b32 v17, off, off offset:36 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v85, 0, v17
	.loc	1 382 31                        ; attention_backward.py:382:31
	scratch_load_b32 v17, off, off offset:40 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v86, 0, v17
	.loc	1 351 21                        ; attention_backward.py:351:21
	scratch_load_b64 v[17:18], off, off offset:68 ; 8-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_mad_u64_u32 v[73:74], null, s0, s83, v[17:18]
	.loc	1 275 21                        ; attention_backward.py:275:21
	v_mad_u64_u32 v[74:75], null, v88, s82, v[115:116]
	.loc	1 374 21                        ; attention_backward.py:374:21
	s_mul_i32 s0, s1, s83
	.loc	1 362 30                        ; attention_backward.py:362:30
	v_mov_b16_e32 v88.h, v87.h
	.loc	1 373 36                        ; attention_backward.py:373:36
	v_add_lshl_u32 v97, s0, v33, 1
	.loc	1 362 30                        ; attention_backward.py:362:30
	v_mov_b16_e32 v75.h, v87.h
	.loc	1 350 32                        ; attention_backward.py:350:32
	v_cndmask_b32_e64 v73, 0x80000000, v73, s6
	.loc	1 274 28                        ; attention_backward.py:274:28
	v_cndmask_b32_e64 v74, 0x80000000, v74, s4
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 373 36                        ; attention_backward.py:373:36
	v_cndmask_b32_e64 v97, 0x80000000, v97, s6
	.loc	1 274 28                        ; attention_backward.py:274:28
	buffer_load_b64 v[101:102], v74, s[68:71], 0 offen
	s_waitcnt lgkmcnt(0)
	s_barrier
	scratch_load_b32 v17, off, off offset:44 ; 4-byte Folded Reload
	v_mov_b32_e32 v48, v98
	.loc	1 304 28                        ; attention_backward.py:304:28
	s_waitcnt vmcnt(1)
	v_and_b16 v75.l, v101.h, 15
	.loc	1 304 27 is_stmt 0              ; attention_backward.py:304:27
	v_bfe_u32 v117, v101, 8, 4
	.loc	1 274 28 is_stmt 1              ; attention_backward.py:274:28
	v_lshrrev_b32_e32 v105, 8, v102
	s_waitcnt vmcnt(0)
	ds_store_b64 v17, v[101:102]
	s_waitcnt lgkmcnt(0)
	s_barrier
	scratch_load_b32 v17, off, off offset:48 ; 4-byte Folded Reload
	ds_load_b64 v[103:104], v76
	.loc	1 373 36                        ; attention_backward.py:373:36
	buffer_load_b128 v[97:100], v97, s[84:87], 0 offen
	.loc	1 350 32                        ; attention_backward.py:350:32
	buffer_load_b64 v[108:109], v73, s[76:79], 0 offen
	.loc	1 290 33                        ; attention_backward.py:290:33
	s_clause 0x8
	buffer_load_u16 v116, v89, s[72:75], 0 offen
	buffer_load_u16 v174, v77, s[72:75], 0 offen
	buffer_load_u16 v173, v78, s[72:75], 0 offen
	buffer_load_u16 v172, v79, s[72:75], 0 offen
	buffer_load_u16 v171, v80, s[72:75], 0 offen
	buffer_load_u16 v170, v81, s[72:75], 0 offen
	buffer_load_u16 v169, v82, s[72:75], 0 offen
	buffer_load_u16 v74, v83, s[72:75], 0 offen
	buffer_load_u16 v73, v84, s[72:75], 0 offen
	.loc	1 274 28                        ; attention_backward.py:274:28
	v_alignbit_b32 v89, v102, v101, 24
	v_mov_b32_e32 v42, v115
	.loc	1 304 27                        ; attention_backward.py:304:27
	v_bfe_u32 v80, v101, 16, 4
	.loc	1 274 28                        ; attention_backward.py:274:28
	v_lshrrev_b32_e32 v83, 8, v101
	v_lshrrev_b64 v[78:79], 24, v[101:102]
	v_bfe_i32 v79, v101, 0, 8
	.loc	1 306 36                        ; attention_backward.py:306:36
	v_cmp_lt_u16_e64 s0, 7, v75.l
	.loc	1 306 50 is_stmt 0              ; attention_backward.py:306:50
	v_or_b32_e32 v179, -16, v80
	.loc	1 305 30 is_stmt 1              ; attention_backward.py:305:30
	v_lshrrev_b16 v77.l, 4, v101.l
	.loc	1 304 27                        ; attention_backward.py:304:27
	v_bfe_u32 v175, v102, 8, 4
	.loc	1 274 28                        ; attention_backward.py:274:28
	v_lshrrev_b32_e32 v193, 24, v102
	.loc	1 307 37                        ; attention_backward.py:307:37
	v_mov_b16_e32 v75.l, v79.l
	.loc	1 306 50                        ; attention_backward.py:306:50
	v_or_b32_e32 v79, -16, v117
	.loc	1 306 27 is_stmt 0              ; attention_backward.py:306:27
	v_cndmask_b32_e64 v80, v80, v179, s0
	.loc	1 304 27 is_stmt 1              ; attention_backward.py:304:27
	v_bfe_u32 v176, v102, 24, 4
	.loc	1 304 28 is_stmt 0              ; attention_backward.py:304:28
	v_and_b16 v77.h, v101.l, 15
	.loc	1 305 30 is_stmt 1              ; attention_backward.py:305:30
	v_and_b16 v87.l, v77.l, 15
	.loc	1 306 50                        ; attention_backward.py:306:50
	v_or_b32_e32 v182, -16, v175
	.loc	1 304 28                        ; attention_backward.py:304:28
	v_and_b16 v77.l, v193.l, 15
	.loc	1 305 30                        ; attention_backward.py:305:30
	v_lshrrev_b16 v84.h, 4, v83.l
	.loc	1 274 28                        ; attention_backward.py:274:28
	v_bfe_i32 v177, v102, 0, 8
	.loc	1 306 50                        ; attention_backward.py:306:50
	v_or_b32_e32 v184, -16, v176
	.loc	1 304 27                        ; attention_backward.py:304:27
	v_and_b32_e32 v185, 15, v89
	.loc	1 306 36                        ; attention_backward.py:306:36
	v_cmp_lt_u16_e64 s5, 7, v77.h
	.loc	1 304 28                        ; attention_backward.py:304:28
	v_and_b16 v77.h, v78.l, 15
	.loc	1 307 37                        ; attention_backward.py:307:37
	v_mov_b16_e64 v89.l, v177.l
	.loc	1 274 28                        ; attention_backward.py:274:28
	v_bfe_i32 v177, v193, 0, 8
	.loc	1 306 50                        ; attention_backward.py:306:50
	v_or_b32_e32 v179, -16, v185
	.loc	1 274 28                        ; attention_backward.py:274:28
	v_mov_b16_e32 v90.l, v102.h
	v_mov_b16_e32 v88.l, v101.h
	v_bfe_i32 v191, v78, 0, 8
	.loc	1 307 37                        ; attention_backward.py:307:37
	v_mov_b16_e64 v106.l, v177.l
	v_cmp_gt_i16_e64 s7, 0, v75.l
	.loc	1 274 28                        ; attention_backward.py:274:28
	v_bfe_i32 v189, v90, 0, 8
	.loc	1 305 30                        ; attention_backward.py:305:30
	v_lshrrev_b16 v90.l, 4, v78.l
	.loc	1 307 52                        ; attention_backward.py:307:52
	v_or_b32_e32 v78, -16, v87
	.loc	1 304 27                        ; attention_backward.py:304:27
	v_and_b32_e32 v81, 15, v102
	v_bfe_u32 v82, v102, 16, 4
	.loc	1 274 28                        ; attention_backward.py:274:28
	v_bfe_i32 v187, v88, 0, 8
	.loc	1 311 21                        ; attention_backward.py:311:21
	v_cvt_f32_i32_e32 v192, v80
	.loc	1 305 30                        ; attention_backward.py:305:30
	v_lshrrev_b16 v84.l, 4, v102.l
	.loc	1 306 50                        ; attention_backward.py:306:50
	v_or_b32_e32 v180, -16, v81
	v_or_b32_e32 v181, -16, v82
	.loc	1 307 37                        ; attention_backward.py:307:37
	v_mov_b16_e64 v75.l, v187.l
	v_mov_b16_e64 v107.l, v191.l
	.loc	1 305 30                        ; attention_backward.py:305:30
	v_lshrrev_b16 v89.h, 4, v105.l
	.loc	1 290 33                        ; attention_backward.py:290:33
	s_waitcnt vmcnt(8)
	v_lshlrev_b32_e32 v208, 16, v116
	.loc	1 274 28                        ; attention_backward.py:274:28
	ds_load_b64 v[110:111], v17
	scratch_load_b32 v17, off, off offset:52 ; 4-byte Folded Reload
	.loc	1 304 28                        ; attention_backward.py:304:28
	v_and_b16 v76.l, v102.l, 15
	v_and_b16 v76.h, v102.h, 15
	.loc	1 305 28                        ; attention_backward.py:305:28
	v_bfe_u32 v102, v102, 20, 4
	.loc	1 360 76                        ; attention_backward.py:360:76
	v_and_b16 v92.l, v109.l, 15
	.loc	1 350 32                        ; attention_backward.py:350:32
	v_lshrrev_b32_e32 v116, 24, v109
	.loc	1 306 36                        ; attention_backward.py:306:36
	v_cmp_lt_u16_e64 s1, 7, v76.l
	.loc	1 304 28                        ; attention_backward.py:304:28
	v_and_b16 v76.l, v83.l, 15
	.loc	1 306 36                        ; attention_backward.py:306:36
	v_cmp_lt_u16_e64 s3, 7, v76.h
	.loc	1 304 28                        ; attention_backward.py:304:28
	v_and_b16 v76.h, v105.l, 15
	.loc	1 274 28                        ; attention_backward.py:274:28
	v_bfe_i32 v83, v83, 0, 8
	.loc	1 306 27                        ; attention_backward.py:306:27
	v_cndmask_b32_e64 v81, v81, v180, s1
	.loc	1 306 36 is_stmt 0              ; attention_backward.py:306:36
	v_cmp_lt_u16_e64 s0, 7, v76.l
	.loc	1 306 27                        ; attention_backward.py:306:27
	v_cndmask_b32_e64 v82, v82, v181, s3
	.loc	1 307 37 is_stmt 1              ; attention_backward.py:307:37
	v_mov_b16_e64 v76.l, v189.l
	v_mov_b16_e32 v91.l, v83.l
	.loc	1 311 21                        ; attention_backward.py:311:21
	v_cvt_f32_i32_e32 v194, v81
	.loc	1 306 27                        ; attention_backward.py:306:27
	v_cndmask_b32_e64 v79, v117, v79, s0
	.loc	1 306 36 is_stmt 0              ; attention_backward.py:306:36
	v_cmp_lt_u16_e64 s0, 7, v76.h
	.loc	1 311 21 is_stmt 1              ; attention_backward.py:311:21
	v_cvt_f32_i32_e32 v195, v82
	.loc	1 307 52                        ; attention_backward.py:307:52
	v_or_b32_e32 v190, -16, v102
	.loc	1 350 32                        ; attention_backward.py:350:32
	v_bfe_i32 v212, v109, 0, 8
	.loc	1 311 21                        ; attention_backward.py:311:21
	v_cvt_f32_i32_e32 v200, v79
	.loc	1 306 27                        ; attention_backward.py:306:27
	v_cndmask_b32_e64 v83, v175, v182, s0
	.loc	1 306 36 is_stmt 0              ; attention_backward.py:306:36
	v_cmp_lt_u16_e64 s0, 7, v77.l
	.loc	1 350 32 is_stmt 1              ; attention_backward.py:350:32
	v_mov_b16_e32 v95.l, v109.h
	.loc	1 364 39                        ; attention_backward.py:364:39
	v_mov_b16_e64 v96.l, v212.l
	.loc	1 350 32                        ; attention_backward.py:350:32
	v_bfe_i32 v223, v116, 0, 8
	.loc	1 311 21                        ; attention_backward.py:311:21
	v_cvt_f32_i32_e32 v201, v83
	.loc	1 306 27                        ; attention_backward.py:306:27
	v_cndmask_b32_e64 v117, v176, v184, s0
	.loc	1 306 36 is_stmt 0              ; attention_backward.py:306:36
	v_cmp_lt_u16_e64 s0, 7, v77.h
	.loc	1 307 28 is_stmt 1              ; attention_backward.py:307:28
	v_cndmask_b32_e64 v176, v87, v78, s7
	.loc	1 360 76                        ; attention_backward.py:360:76
	v_and_b16 v87.l, v108.h, 15
	.loc	1 350 32                        ; attention_backward.py:350:32
	v_bfe_i32 v212, v95, 0, 8
	.loc	1 362 32                        ; attention_backward.py:362:32
	v_lshrrev_b16 v95.l, 4, v116.l
	.loc	1 306 27                        ; attention_backward.py:306:27
	v_cndmask_b32_e64 v177, v185, v179, s0
	.loc	1 311 21                        ; attention_backward.py:311:21
	v_cvt_f32_i32_e32 v203, v176
	.loc	1 307 37                        ; attention_backward.py:307:37
	v_cmp_gt_i16_e64 s0, 0, v75.l
	.loc	1 360 76                        ; attention_backward.py:360:76
	v_and_b16 v75.l, v108.l, 15
	.loc	1 350 32                        ; attention_backward.py:350:32
	v_mov_b16_e32 v94.l, v108.h
	.loc	1 311 21                        ; attention_backward.py:311:21
	v_cvt_f32_i32_e32 v205, v177
	.loc	1 360 76                        ; attention_backward.py:360:76
	v_and_b16 v88.l, v109.h, 15
	.loc	1 361 29                        ; attention_backward.py:361:29
	v_bfe_u32 v209, v109, 24, 4
	.loc	1 350 32                        ; attention_backward.py:350:32
	v_lshrrev_b32_e32 v210, 8, v109
	.loc	1 361 29                        ; attention_backward.py:361:29
	v_bfe_u32 v211, v109, 8, 4
	.loc	1 311 21                        ; attention_backward.py:311:21
	v_mul_f32_e32 v205, v205, v208
	.loc	1 362 32                        ; attention_backward.py:362:32
	v_lshrrev_b16 v93.l, 4, v109.l
	.loc	1 362 30 is_stmt 0              ; attention_backward.py:362:30
	v_bfe_u32 v213, v109, 20, 4
	.loc	1 363 38 is_stmt 1              ; attention_backward.py:363:38
	v_cmp_lt_u16_e64 s1, 7, v87.l
	.loc	1 274 28                        ; attention_backward.py:274:28
	v_bfe_i32 v105, v105, 0, 8
	.loc	1 309 31                        ; attention_backward.py:309:31
	v_cndmask_b32_e32 v205, 0, v205, vcc_lo
	.loc	1 311 21                        ; attention_backward.py:311:21
	v_dual_mul_f32 v203, v203, v208 :: v_dual_and_b32 v178, 15, v101
	.loc	1 305 28                        ; attention_backward.py:305:28
	v_bfe_u32 v101, v101, 20, 4
	.loc	1 311 21                        ; attention_backward.py:311:21
	v_cvt_f32_i32_e32 v117, v117
	.loc	1 362 32                        ; attention_backward.py:362:32
	v_lshrrev_b16 v105.h, 4, v108.l
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 306 50                        ; attention_backward.py:306:50
	v_or_b32_e32 v186, -16, v178
	.loc	1 309 31                        ; attention_backward.py:309:31
	v_cndmask_b32_e32 v203, 0, v203, vcc_lo
	.loc	1 307 52                        ; attention_backward.py:307:52
	v_or_b32_e32 v188, -16, v101
	.loc	1 350 32                        ; attention_backward.py:350:32
	v_bfe_i32 v218, v94, 0, 8
	.loc	1 311 21                        ; attention_backward.py:311:21
	v_mul_f32_e32 v200, v200, v208
	.loc	1 306 27                        ; attention_backward.py:306:27
	v_cndmask_b32_e64 v175, v178, v186, s5
	.loc	1 363 38                        ; attention_backward.py:363:38
	v_cmp_lt_u16_e64 s5, 7, v92.l
	.loc	1 307 28                        ; attention_backward.py:307:28
	v_cndmask_b32_e64 v101, v101, v188, s0
	.loc	1 307 37 is_stmt 0              ; attention_backward.py:307:37
	v_cmp_gt_i16_e64 s0, 0, v76.l
	.loc	1 280 29 is_stmt 1              ; attention_backward.py:280:29
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu4 v[76:83], v[103:104], v[167:168], v[65:72] neg_lo:[1,1,0]
	.loc	1 311 21                        ; attention_backward.py:311:21
	v_cvt_f32_i32_e32 v202, v175
	v_cvt_f32_i32_e32 v206, v101
	.loc	1 307 28                        ; attention_backward.py:307:28
	v_cndmask_b32_e64 v102, v102, v190, s0
	.loc	1 280 29                        ; attention_backward.py:280:29
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[76:83], v[110:111], v[159:160], v[76:83] neg_lo:[1,1,0]
	.loc	1 360 76                        ; attention_backward.py:360:76
	v_and_b16 v92.l, v116.l, 15
	.loc	1 311 21                        ; attention_backward.py:311:21
	v_mul_f32_e32 v116, v202, v208
	.loc	1 361 29                        ; attention_backward.py:361:29
	v_bfe_u32 v110, v108, 16, 4
	.loc	1 311 21                        ; attention_backward.py:311:21
	v_cvt_f32_i32_e32 v207, v102
	.loc	1 361 29                        ; attention_backward.py:361:29
	v_bfe_u32 v111, v108, 8, 4
	.loc	1 363 38                        ; attention_backward.py:363:38
	v_cmp_lt_u16_e64 s0, 7, v75.l
	v_cmp_lt_u16_e64 s3, 7, v88.l
	.loc	1 363 54 is_stmt 0              ; attention_backward.py:363:54
	v_or_b32_e32 v214, -16, v110
	.loc	1 360 76 is_stmt 1              ; attention_backward.py:360:76
	v_and_b16 v94.l, v210.l, 15
	.loc	1 363 54                        ; attention_backward.py:363:54
	v_or_b32_e32 v216, -16, v111
	.loc	1 350 32                        ; attention_backward.py:350:32
	v_bfe_i32 v224, v210, 0, 8
	.loc	1 363 54                        ; attention_backward.py:363:54
	v_or_b32_e32 v221, -16, v209
	.loc	1 363 29 is_stmt 0              ; attention_backward.py:363:29
	v_cndmask_b32_e64 v110, v110, v214, s1
	.loc	1 363 54                        ; attention_backward.py:363:54
	v_or_b32_e32 v222, -16, v211
	.loc	1 362 32 is_stmt 1              ; attention_backward.py:362:32
	v_and_b16 v93.l, v93.l, 15
	.loc	1 364 56                        ; attention_backward.py:364:56
	v_or_b32_e32 v225, -16, v213
	.loc	1 309 31                        ; attention_backward.py:309:31
	v_cmp_o_f32_e64 s10, v205, v205
	.loc	1 274 28                        ; attention_backward.py:274:28
	s_waitcnt vmcnt(0)
	ds_load_b64 v[112:113], v17
	scratch_load_b32 v17, off, off offset:56 ; 4-byte Folded Reload
	.loc	1 280 29                        ; attention_backward.py:280:29
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[76:83], v[112:113], v[155:156], v[76:83] neg_lo:[1,1,0]
	.loc	1 350 32                        ; attention_backward.py:350:32
	v_alignbit_b32 v112, v109, v108, 24
	.loc	1 362 30                        ; attention_backward.py:362:30
	v_bfe_u32 v113, v108, 20, 4
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 364 56                        ; attention_backward.py:364:56
	v_or_b32_e32 v219, -16, v113
	.loc	1 274 28                        ; attention_backward.py:274:28
	s_waitcnt vmcnt(0)
	ds_load_b64 v[114:115], v17
	.loc	1 393 17                        ; attention_backward.py:393:17
	s_waitcnt lgkmcnt(0)
	s_barrier
	scratch_load_b32 v17, off, off offset:60 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_store_b128 v17, v[97:100]
	ds_store_b128 v17, v[97:100] offset:256
	.loc	1 280 29                        ; attention_backward.py:280:29
	v_wmma_i32_16x16x16_iu4 v[76:83], v[114:115], v[163:164], v[76:83] neg_lo:[1,1,0]
	.loc	1 393 17                        ; attention_backward.py:393:17
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 361 29                        ; attention_backward.py:361:29
	v_and_b32_e32 v100, 15, v108
	.loc	1 350 32                        ; attention_backward.py:350:32
	v_lshrrev_b32_e32 v97, 8, v108
	.loc	1 299 21                        ; attention_backward.py:299:21
	v_cvt_f32_i32_e32 v215, v76
	v_cvt_f32_i32_e32 v245, v77
	v_cvt_f32_i32_e32 v246, v78
	v_cvt_f32_i32_e32 v247, v79
	v_cvt_f32_i32_e32 v248, v80
	v_cvt_f32_i32_e32 v249, v81
	v_cvt_f32_i32_e32 v250, v82
	v_cvt_f32_i32_e32 v251, v83
	.loc	1 373 36                        ; attention_backward.py:373:36
	ds_load_b128 v[76:79], v85
	ds_load_b128 v[101:104], v85 offset:64
	ds_load_b128 v[80:83], v133
	ds_load_b128 v[184:187], v133 offset:64
	ds_load_b128 v[175:178], v165
	ds_load_b128 v[188:191], v165 offset:64
	ds_load_b128 v[179:182], v166
	ds_load_b128 v[196:199], v166 offset:64
	.loc	1 382 31                        ; attention_backward.py:382:31
	s_waitcnt lgkmcnt(0)
	s_barrier
	scratch_load_b32 v17, off, off offset:64 ; 4-byte Folded Reload
	.loc	1 311 21                        ; attention_backward.py:311:21
	v_mul_f32_e32 v202, v206, v208
	v_mul_f32_e32 v206, v207, v208
	v_mul_f32_e32 v195, v195, v208
	.loc	1 350 32                        ; attention_backward.py:350:32
	v_lshrrev_b64 v[98:99], 24, v[108:109]
	v_bfe_i32 v99, v108, 0, 8
	.loc	1 361 29                        ; attention_backward.py:361:29
	v_bfe_u32 v114, v109, 16, 4
	v_and_b32_e32 v115, 15, v109
	.loc	1 363 54                        ; attention_backward.py:363:54
	v_or_b32_e32 v109, -16, v100
	.loc	1 360 76                        ; attention_backward.py:360:76
	v_and_b16 v75.l, v97.l, 15
	.loc	1 362 32                        ; attention_backward.py:362:32
	v_lshrrev_b16 v87.l, 4, v97.l
	.loc	1 309 31                        ; attention_backward.py:309:31
	v_cndmask_b32_e32 v206, 0, v206, vcc_lo
	.loc	1 311 21                        ; attention_backward.py:311:21
	v_dual_mul_f32 v194, v194, v208 :: v_dual_cndmask_b32 v195, 0, v195
	.loc	1 361 29                        ; attention_backward.py:361:29
	v_and_b32_e32 v217, 15, v112
	.loc	1 350 32                        ; attention_backward.py:350:32
	v_bfe_i32 v112, v97, 0, 8
	.loc	1 364 39                        ; attention_backward.py:364:39
	v_mov_b16_e32 v108.l, v99.l
	.loc	1 363 54                        ; attention_backward.py:363:54
	v_or_b32_e32 v99, -16, v114
	v_or_b32_e32 v220, -16, v115
	.loc	1 362 32                        ; attention_backward.py:362:32
	v_lshrrev_b16 v97.l, 4, v210.l
	.loc	1 360 76                        ; attention_backward.py:360:76
	v_and_b16 v97.h, v98.l, 15
	.loc	1 363 29                        ; attention_backward.py:363:29
	v_cndmask_b32_e64 v210, v100, v109, s0
	.loc	1 362 32                        ; attention_backward.py:362:32
	v_and_b16 v88.l, v87.l, 15
	.loc	1 364 39                        ; attention_backward.py:364:39
	v_mov_b16_e32 v87.l, v112.l
	.loc	1 363 38                        ; attention_backward.py:363:38
	v_cmp_lt_u16_e64 s0, 7, v75.l
	.loc	1 364 39                        ; attention_backward.py:364:39
	v_mov_b16_e64 v100.l, v218.l
	.loc	1 309 31                        ; attention_backward.py:309:31
	v_cndmask_b32_e32 v218, 0, v194, vcc_lo
	.loc	1 363 54                        ; attention_backward.py:363:54
	v_or_b32_e32 v214, -16, v217
	.loc	1 363 29 is_stmt 0              ; attention_backward.py:363:29
	v_cndmask_b32_e64 v112, v115, v220, s5
	v_cndmask_b32_e64 v115, v114, v99, s3
	v_cndmask_b32_e64 v111, v111, v216, s0
	.loc	1 363 38                        ; attention_backward.py:363:38
	v_cmp_lt_u16_e64 s0, 7, v92.l
	v_cmp_lt_u16_e64 s1, 7, v97.h
	.loc	1 364 39 is_stmt 1              ; attention_backward.py:364:39
	v_cmp_gt_i16_e64 s3, 0, v87.l
	.loc	1 309 31                        ; attention_backward.py:309:31
	v_mov_b16_e64 v87.l, v203.h
	.loc	1 311 21                        ; attention_backward.py:311:21
	v_mul_f32_e32 v117, v117, v208
	.loc	1 350 32                        ; attention_backward.py:350:32
	v_bfe_i32 v207, v98, 0, 8
	.loc	1 362 32                        ; attention_backward.py:362:32
	v_and_b16 v92.l, v97.l, 15
	.loc	1 382 31                        ; attention_backward.py:382:31
	v_cvt_f32_i32_e32 v97, v210
	v_cvt_f32_i32_e32 v99, v110
	v_cvt_f32_i32_e32 v110, v112
	v_cvt_f32_i32_e32 v112, v115
	.loc	1 363 29                        ; attention_backward.py:363:29
	v_cndmask_b32_e64 v115, v217, v214, s1
	.loc	1 364 39                        ; attention_backward.py:364:39
	v_cmp_gt_i16_e64 s1, 0, v100.l
	.loc	1 309 31                        ; attention_backward.py:309:31
	v_and_b32_e32 v210, 1, v87
	v_cndmask_b32_e32 v226, 0, v117, vcc_lo
	.loc	1 363 29                        ; attention_backward.py:363:29
	v_cndmask_b32_e64 v117, v209, v221, s0
	.loc	1 363 38 is_stmt 0              ; attention_backward.py:363:38
	v_cmp_lt_u16_e64 s0, 7, v94.l
	.loc	1 364 39 is_stmt 1              ; attention_backward.py:364:39
	v_mov_b16_e64 v94.l, v212.l
	.loc	1 364 56 is_stmt 0              ; attention_backward.py:364:56
	v_or_b32_e32 v209, -16, v93
	.loc	1 364 39                        ; attention_backward.py:364:39
	v_mov_b16_e64 v109.l, v224.l
	v_mov_b16_e64 v114.l, v207.l
	.loc	1 363 29 is_stmt 1              ; attention_backward.py:363:29
	v_cndmask_b32_e64 v194, v211, v222, s0
	.loc	1 364 39                        ; attention_backward.py:364:39
	v_cmp_gt_i16_e64 s0, 0, v96.l
	v_mov_b16_e64 v96.l, v223.l
	.loc	1 364 30 is_stmt 0              ; attention_backward.py:364:30
	v_cndmask_b32_e64 v207, v113, v219, s1
	.loc	1 364 39                        ; attention_backward.py:364:39
	v_cmp_gt_i16_e64 s1, 0, v94.l
	.loc	1 364 56                        ; attention_backward.py:364:56
	v_or_b32_e32 v211, -16, v95
	.loc	1 382 31 is_stmt 1              ; attention_backward.py:382:31
	v_cvt_f32_i32_e32 v113, v117
	.loc	1 364 30                        ; attention_backward.py:364:30
	v_cndmask_b32_e64 v117, v93, v209, s0
	.loc	1 364 39 is_stmt 0              ; attention_backward.py:364:39
	v_cmp_gt_i16_e64 s0, 0, v109.l
	.loc	1 364 30                        ; attention_backward.py:364:30
	v_cndmask_b32_e64 v109, v213, v225, s1
	.loc	1 364 39                        ; attention_backward.py:364:39
	v_cmp_gt_i16_e64 s1, 0, v96.l
	.loc	1 362 32 is_stmt 1              ; attention_backward.py:362:32
	v_lshrrev_b16 v98.l, 4, v98.l
	.loc	1 309 31                        ; attention_backward.py:309:31
	v_mov_b16_e64 v183.l, v206.h
	.loc	1 364 39                        ; attention_backward.py:364:39
	v_cmp_gt_i16_e64 s16, 0, v114.l
	.loc	1 382 31                        ; attention_backward.py:382:31
	v_cvt_f32_i32_e32 v114, v117
	.loc	1 364 30                        ; attention_backward.py:364:30
	v_cndmask_b32_e64 v95, v95, v211, s1
	.loc	1 362 32                        ; attention_backward.py:362:32
	v_and_b16 v75.l, v98.l, 15
	.loc	1 373 36                        ; attention_backward.py:373:36
	v_and_b32_e32 v217, 0xffff0000, v77
	.loc	1 311 21                        ; attention_backward.py:311:21
	v_dual_mul_f32 v201, v201, v208 :: v_dual_cndmask_b32 v202, 0, v202
	v_mul_f32_e32 v192, v192, v208
	.loc	1 382 31                        ; attention_backward.py:382:31
	v_cvt_f32_i32_e32 v117, v95
	.loc	1 309 31                        ; attention_backward.py:309:31
	v_dual_cndmask_b32 v212, 0, v116 :: v_dual_and_b32 v95, 1, v183
	.loc	1 373 36                        ; attention_backward.py:373:36
	v_and_b32_e32 v255, 0xffff0000, v79
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 309 31                        ; attention_backward.py:309:31
	v_dual_cndmask_b32 v201, 0, v201 :: v_dual_cndmask_b32 v192, 0, v192
	.loc	1 382 31                        ; attention_backward.py:382:31
	v_cvt_f32_i32_e32 v98, v111
	v_cvt_f32_i32_e32 v111, v194
	.loc	1 364 56                        ; attention_backward.py:364:56
	v_or_b32_e32 v194, -16, v92
	.loc	1 309 31                        ; attention_backward.py:309:31
	v_mov_b16_e64 v94.l, v212.h
	.loc	1 364 56                        ; attention_backward.py:364:56
	v_or_b32_e32 v209, -16, v75
	.loc	1 305 30                        ; attention_backward.py:305:30
	v_and_b16 v87.l, v84.h, 15
	.loc	1 309 31                        ; attention_backward.py:309:31
	v_dual_cndmask_b32 v200, 0, v200 :: v_dual_and_b32 v253, 0xffff0000, v78
	.loc	1 382 31                        ; attention_backward.py:382:31
	v_cvt_f32_i32_e32 v100, v115
	.loc	1 364 30                        ; attention_backward.py:364:30
	v_cndmask_b32_e64 v115, v92, v194, s0
	.loc	1 309 31                        ; attention_backward.py:309:31
	v_and_b32_e32 v94, 1, v94
	.loc	1 373 36                        ; attention_backward.py:373:36
	v_lshlrev_b32_e32 v216, 16, v77
	.loc	1 364 30                        ; attention_backward.py:364:30
	v_cndmask_b32_e64 v75, v75, v209, s16
	.loc	1 307 52                        ; attention_backward.py:307:52
	v_or_b32_e32 v77, -16, v87
	.loc	1 307 37 is_stmt 0              ; attention_backward.py:307:37
	v_cmp_gt_i16_e64 s0, 0, v91.l
	.loc	1 373 36 is_stmt 1              ; attention_backward.py:373:36
	v_lshlrev_b32_e32 v183, 16, v76
	v_lshlrev_b32_e32 v252, 16, v78
	.loc	1 309 31                        ; attention_backward.py:309:31
	v_add3_u32 v78, v212, v94, 0x7fff
	.loc	1 382 31                        ; attention_backward.py:382:31
	v_cvt_f32_i32_e32 v94, v75
	.loc	1 307 28                        ; attention_backward.py:307:28
	v_cndmask_b32_e64 v75, v87, v77, s0
	.loc	1 309 31                        ; attention_backward.py:309:31
	v_mov_b16_e64 v87.l, v200.h
	v_cmp_o_f32_e64 s1, v212, v212
	v_cmp_o_f32_e64 s5, v203, v203
	v_dual_mov_b32 v28, v254 :: v_dual_lshlrev_b32 v151, 16, v80
	s_delay_alu instid0(VALU_DEP_4)
	v_and_b32_e32 v77, 1, v87
	v_mov_b16_e64 v87.l, v192.h
	.loc	1 373 36                        ; attention_backward.py:373:36
	v_lshlrev_b32_e32 v254, 16, v79
	v_lshlrev_b32_e32 v134, 16, v81
	v_and_b32_e32 v136, 0xffff0000, v81
	.loc	1 309 31                        ; attention_backward.py:309:31
	v_add3_u32 v79, v203, v210, 0x7fff
	v_cndmask_b16 v81.l, 0x7fff, v78.h, s1
	v_and_b32_e32 v78, 1, v87
	.loc	1 305 30                        ; attention_backward.py:305:30
	v_and_b16 v87.l, v90.l, 15
	.loc	1 311 21                        ; attention_backward.py:311:21
	v_cvt_f32_i32_e32 v75, v75
	.loc	1 309 31                        ; attention_backward.py:309:31
	v_cmp_o_f32_e64 s8, v200, v200
	v_cndmask_b16 v81.h, 0x7fff, v79.h, s5
	v_add3_u32 v77, v200, v77, 0x7fff
	.loc	1 307 52                        ; attention_backward.py:307:52
	v_or_b32_e32 v79, -16, v87
	.loc	1 307 37 is_stmt 0              ; attention_backward.py:307:37
	v_cmp_gt_i16_e64 s0, 0, v107.l
	.loc	1 311 21 is_stmt 1              ; attention_backward.py:311:21
	v_dual_mul_f32 v75, v75, v208 :: v_dual_lshlrev_b32 v118, 16, v82
	.loc	1 373 36                        ; attention_backward.py:373:36
	v_and_b32_e32 v130, 0xffff0000, v82
	.loc	1 309 31                        ; attention_backward.py:309:31
	v_add3_u32 v82, v206, v95, 0x7fff
	v_mov_b16_e64 v96.l, v202.h
	v_cndmask_b16 v82.l, 0x7fff, v77.h, s8
	.loc	1 307 28                        ; attention_backward.py:307:28
	v_cndmask_b32_e64 v77, v87, v79, s0
	.loc	1 309 31                        ; attention_backward.py:309:31
	v_cmp_o_f32_e64 s9, v192, v192
	v_add3_u32 v78, v192, v78, 0x7fff
	v_dual_cndmask_b32 v75, 0, v75 :: v_dual_and_b32 v96, 1, v96
	v_mov_b16_e64 v87.l, v205.h
	.loc	1 311 21                        ; attention_backward.py:311:21
	v_cvt_f32_i32_e32 v77, v77
	.loc	1 309 31                        ; attention_backward.py:309:31
	v_cmp_o_f32_e64 s7, v202, v202
	.loc	1 373 36                        ; attention_backward.py:373:36
	v_and_b32_e32 v128, 0xffff0000, v80
	v_dual_mov_b32 v158, v160 :: v_dual_lshlrev_b32 v159, 16, v83
	.loc	1 309 31                        ; attention_backward.py:309:31
	v_add3_u32 v80, v202, v96, 0x7fff
	v_mov_b16_e32 v91.l, v75.h
	.loc	1 311 21                        ; attention_backward.py:311:21
	v_dual_mul_f32 v77, v77, v208 :: v_dual_and_b32 v160, 0xffff0000, v83
	.loc	1 309 31                        ; attention_backward.py:309:31
	v_cndmask_b16 v83.l, 0x7fff, v78.h, s9
	v_and_b32_e32 v78, 1, v87
	.loc	1 305 30                        ; attention_backward.py:305:30
	v_and_b16 v87.l, v84.l, 15
	.loc	1 309 31                        ; attention_backward.py:309:31
	v_cndmask_b16 v83.h, 0x7fff, v80.h, s7
	v_and_b32_e32 v79, 1, v91
	.loc	1 307 37                        ; attention_backward.py:307:37
	v_cmp_gt_i16_e64 s1, 0, v89.l
	.loc	1 309 31                        ; attention_backward.py:309:31
	v_cmp_o_f32_e64 s11, v206, v206
	.loc	1 307 52                        ; attention_backward.py:307:52
	v_or_b32_e32 v80, -16, v87
	.loc	1 309 31                        ; attention_backward.py:309:31
	v_cmp_o_f32_e64 s0, v75, v75
	v_add3_u32 v75, v75, v79, 0x7fff
	v_dual_cndmask_b32 v77, 0, v77 :: v_dual_and_b32 v76, 0xffff0000, v76
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 307 28                        ; attention_backward.py:307:28
	v_cndmask_b32_e64 v79, v87, v80, s1
	.loc	1 309 31                        ; attention_backward.py:309:31
	v_mov_b16_e64 v87.l, v218.h
	v_cndmask_b16 v194.h, 0x7fff, v82.h, s11
	v_add3_u32 v78, v205, v78, 0x7fff
	v_cndmask_b16 v82.h, 0x7fff, v75.h, s0
	v_mov_b16_e32 v90.l, v77.h
	v_and_b32_e32 v75, 1, v87
	.loc	1 305 30                        ; attention_backward.py:305:30
	v_and_b16 v87.l, v89.h, 15
	.loc	1 309 31                        ; attention_backward.py:309:31
	v_cndmask_b16 v84.l, 0x7fff, v78.h, s10
	.loc	1 311 21                        ; attention_backward.py:311:21
	v_cvt_f32_i32_e32 v78, v79
	.loc	1 307 37                        ; attention_backward.py:307:37
	v_cmp_gt_i16_e64 s1, 0, v105.l
	.loc	1 309 31                        ; attention_backward.py:309:31
	v_cmp_o_f32_e64 s12, v218, v218
	.loc	1 307 52                        ; attention_backward.py:307:52
	v_or_b32_e32 v79, -16, v87
	.loc	1 309 31                        ; attention_backward.py:309:31
	v_and_b32_e32 v80, 1, v90
	v_add3_u32 v75, v218, v75, 0x7fff
	.loc	1 311 21                        ; attention_backward.py:311:21
	v_mul_f32_e32 v78, v78, v208
	.loc	1 364 56                        ; attention_backward.py:364:56
	v_or_b32_e32 v116, -16, v88
	.loc	1 307 28                        ; attention_backward.py:307:28
	v_cndmask_b32_e64 v79, v87, v79, s1
	.loc	1 309 31                        ; attention_backward.py:309:31
	v_mov_b16_e64 v87.l, v201.h
	v_cmp_o_f32_e64 s0, v77, v77
	v_add3_u32 v77, v77, v80, 0x7fff
	v_cndmask_b32_e32 v78, 0, v78, vcc_lo
	v_cndmask_b16 v192.l, 0x7fff, v75.h, s12
	v_and_b32_e32 v75, 1, v87
	v_mov_b16_e64 v87.l, v195.h
	.loc	1 364 30                        ; attention_backward.py:364:30
	v_cndmask_b32_e64 v88, v88, v116, s3
	.loc	1 309 31                        ; attention_backward.py:309:31
	v_cndmask_b16 v84.h, 0x7fff, v77.h, s0
	v_mov_b16_e32 v107.l, v78.h
	.loc	1 311 21                        ; attention_backward.py:311:21
	v_cvt_f32_i32_e32 v77, v79
	.loc	1 309 31                        ; attention_backward.py:309:31
	v_and_b32_e32 v79, 1, v87
	.loc	1 305 30                        ; attention_backward.py:305:30
	v_lshrrev_b16 v87.l, 4, v193.l
	.loc	1 309 31                        ; attention_backward.py:309:31
	v_cmp_o_f32_e64 s13, v201, v201
	.loc	1 382 31                        ; attention_backward.py:382:31
	v_cvt_f32_i32_e32 v92, v88
	.loc	1 309 31                        ; attention_backward.py:309:31
	v_and_b32_e32 v80, 1, v107
	v_add3_u32 v75, v201, v75, 0x7fff
	.loc	1 311 21                        ; attention_backward.py:311:21
	v_mul_f32_e32 v77, v77, v208
	.loc	1 307 52                        ; attention_backward.py:307:52
	v_or_b32_e32 v88, -16, v87
	.loc	1 307 37 is_stmt 0              ; attention_backward.py:307:37
	v_cmp_gt_i16_e64 s1, 0, v106.l
	.loc	1 309 31 is_stmt 1              ; attention_backward.py:309:31
	v_cmp_o_f32_e64 s0, v78, v78
	v_add3_u32 v78, v78, v80, 0x7fff
	v_cndmask_b16 v193.l, 0x7fff, v75.h, s13
	v_cndmask_b32_e32 v75, 0, v77, vcc_lo
	.loc	1 307 28                        ; attention_backward.py:307:28
	v_cndmask_b32_e64 v77, v87, v88, s1
	.loc	1 309 31                        ; attention_backward.py:309:31
	v_mov_b16_e64 v87.l, v226.h
	v_cmp_o_f32_e64 s14, v195, v195
	v_add3_u32 v79, v195, v79, 0x7fff
	v_cndmask_b16 v192.h, 0x7fff, v78.h, s0
	v_mov_b16_e32 v106.l, v75.h
	v_and_b32_e32 v78, 1, v87
	.loc	1 362 32                        ; attention_backward.py:362:32
	v_and_b16 v87.l, v105.h, 15
	.loc	1 309 31                        ; attention_backward.py:309:31
	v_cndmask_b16 v194.l, 0x7fff, v79.h, s14
	.loc	1 364 39                        ; attention_backward.py:364:39
	v_cmp_gt_i16_e64 s1, 0, v108.l
	.loc	1 309 31                        ; attention_backward.py:309:31
	v_and_b32_e32 v79, 1, v106
	v_cmp_o_f32_e64 s0, v75, v75
	.loc	1 364 56                        ; attention_backward.py:364:56
	v_or_b32_e32 v80, -16, v87
	.loc	1 311 21                        ; attention_backward.py:311:21
	v_cvt_f32_i32_e32 v77, v77
	.loc	1 309 31                        ; attention_backward.py:309:31
	v_cmp_o_f32_e64 s15, v226, v226
	v_add3_u32 v75, v75, v79, 0x7fff
	.loc	1 382 31                        ; attention_backward.py:382:31
	v_cvt_f32_i32_e32 v93, v207
	.loc	1 364 30                        ; attention_backward.py:364:30
	v_cndmask_b32_e64 v79, v87, v80, s1
	.loc	1 309 31                        ; attention_backward.py:309:31
	v_add3_u32 v78, v226, v78, 0x7fff
	.loc	1 311 21                        ; attention_backward.py:311:21
	v_mul_f32_e32 v77, v77, v208
	.loc	1 382 31                        ; attention_backward.py:382:31
	v_cvt_f32_i32_e32 v116, v109
	v_cvt_f32_i32_e32 v115, v115
	v_cvt_f32_i32_e32 v91, v79
	ds_store_b128 v86, v[97:100]
	.loc	1 309 31                        ; attention_backward.py:309:31
	v_cndmask_b16 v193.h, 0x7fff, v75.h, s0
	v_cndmask_b32_e32 v75, 0, v77, vcc_lo
	v_cndmask_b16 v195.l, 0x7fff, v78.h, s15
	.loc	1 373 36                        ; attention_backward.py:373:36
	v_and_b32_e32 v21, 0xffff0000, v180
	v_lshlrev_b32_e32 v24, 16, v182
	v_lshlrev_b32_e32 v161, 16, v176
	.loc	1 309 31                        ; attention_backward.py:309:31
	v_mov_b16_e64 v204.l, v75.h
	v_cmp_o_f32_e64 s0, v75, v75
	.loc	1 373 36                        ; attention_backward.py:373:36
	v_and_b32_e32 v19, 0xffff0000, v179
	v_and_b32_e32 v153, 0xffff0000, v177
	v_and_b32_e32 v162, 0xffff0000, v176
	.loc	1 309 31                        ; attention_backward.py:309:31
	v_and_b32_e32 v105, 1, v204
	.loc	1 373 36                        ; attention_backward.py:373:36
	v_lshlrev_b32_e32 v155, 16, v178
	.loc	1 382 31                        ; attention_backward.py:382:31
	s_waitcnt vmcnt(0)
	ds_store_b128 v17, v[91:94]
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[200:203], v85
	ds_load_b128 v[89:92], v85 offset:64
	ds_load_b128 v[207:210], v133
	ds_load_b128 v[77:80], v133 offset:64
	ds_load_b128 v[225:228], v165
	ds_load_b128 v[106:109], v165 offset:64
	ds_load_b128 v[229:232], v166
	ds_load_b128 v[93:96], v166 offset:64
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v86, v[110:113]
	ds_store_b128 v17, v[114:117]
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[211:214], v85
	ds_load_b128 v[97:100], v85 offset:64
	ds_load_b128 v[233:236], v133
	ds_load_b128 v[85:88], v133 offset:64
	ds_load_b128 v[237:240], v165
	ds_load_b128 v[114:117], v165 offset:64
	ds_load_b128 v[241:244], v166
	.loc	1 373 36                        ; attention_backward.py:373:36
	v_lshlrev_b32_e32 v20, 16, v180
	.loc	1 382 31                        ; attention_backward.py:382:31
	ds_load_b128 v[110:113], v166 offset:64
	.loc	1 309 31                        ; attention_backward.py:309:31
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 382 31                        ; attention_backward.py:382:31
	v_dual_mul_f32 v180, v200, v183 :: v_dual_and_b32 v25, 0xffff0000, v182
	.loc	1 373 36                        ; attention_backward.py:373:36
	v_lshlrev_b32_e32 v22, 16, v181
	.loc	1 382 31                        ; attention_backward.py:382:31
	v_dual_mul_f32 v206, v208, v128 :: v_dual_and_b32 v23, 0xffff0000, v181
	v_dual_mul_f32 v205, v209, v134 :: v_dual_lshlrev_b32 v18, 16, v179
	v_dual_mul_f32 v207, v207, v151 :: v_dual_lshlrev_b32 v156, 16, v177
	v_dual_mul_f32 v177, v202, v216 :: v_dual_and_b32 v216, 0xffff0000, v187
	.loc	1 290 33                        ; attention_backward.py:290:33
	v_lshlrev_b32_e32 v30, 16, v171
	v_lshlrev_b32_e32 v31, 16, v170
	.loc	1 382 31                        ; attention_backward.py:382:31
	v_dual_mul_f32 v183, v211, v252 :: v_dual_mov_b32 v252, v26
	.loc	1 309 31                        ; attention_backward.py:309:31
	v_add3_u32 v75, v75, v105, 0x7fff
	.loc	1 382 31                        ; attention_backward.py:382:31
	v_dual_mul_f32 v182, v212, v253 :: v_dual_mov_b32 v253, v27
	.loc	1 329 17                        ; attention_backward.py:329:17
	scratch_load_b32 v27, off, off offset:76 ; 4-byte Folded Reload
	.loc	1 382 31                        ; attention_backward.py:382:31
	v_mul_f32_e32 v181, v213, v254
	.loc	1 309 31                        ; attention_backward.py:309:31
	v_cndmask_b16 v195.h, 0x7fff, v75.h, s0
	ds_store_b128 v135, v[81:84]
	v_dual_mov_b32 v254, v28 :: v_dual_lshlrev_b32 v83, 16, v175
	.loc	1 271 27                        ; attention_backward.py:271:27
	v_or_b32_e32 v26, s90, v129
	.loc	1 382 31                        ; attention_backward.py:382:31
	v_mul_f32_e32 v179, v214, v255
	v_dual_mov_b32 v255, v29 :: v_dual_and_b32 v224, 0xffff0000, v104
	.loc	1 290 33                        ; attention_backward.py:290:33
	v_lshlrev_b32_e32 v28, 16, v173
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 329 26                        ; attention_backward.py:329:26
	v_cmp_ge_i32_e64 s0, v26, v148
	.loc	1 290 33                        ; attention_backward.py:290:33
	v_lshlrev_b32_e32 v29, 16, v172
	.loc	1 373 36                        ; attention_backward.py:373:36
	v_and_b32_e32 v84, 0xffff0000, v175
	.loc	1 290 33                        ; attention_backward.py:290:33
	v_lshlrev_b32_e32 v32, 16, v169
	v_lshlrev_b32_e32 v74, 16, v74
	.loc	1 373 36                        ; attention_backward.py:373:36
	v_and_b32_e32 v17, 0xffff0000, v178
	.loc	1 290 33                        ; attention_backward.py:290:33
	v_lshlrev_b32_e32 v73, 16, v73
	.loc	1 382 31                        ; attention_backward.py:382:31
	v_mul_f32_e32 v82, v203, v217
	v_dual_mul_f32 v202, v234, v130 :: v_dual_lshlrev_b32 v217, 16, v101
	v_mul_f32_e32 v203, v233, v118
	v_dual_mul_f32 v178, v201, v76 :: v_dual_lshlrev_b32 v219, 16, v102
	v_mul_f32_e32 v200, v236, v160
	v_dual_mul_f32 v204, v210, v136 :: v_dual_mul_f32 v201, v235, v159
	.loc	1 382 30 is_stmt 0              ; attention_backward.py:382:30
	v_bfe_u32 v159, v177, 16, 1
	.loc	1 309 31 is_stmt 1              ; attention_backward.py:309:31
	ds_store_b128 v135, v[192:195] offset:16
	.loc	1 373 36                        ; attention_backward.py:373:36
	v_lshlrev_b32_e32 v192, 16, v196
	v_and_b32_e32 v193, 0xffff0000, v196
	v_lshlrev_b32_e32 v194, 16, v197
	.loc	1 382 30                        ; attention_backward.py:382:30
	v_cmp_o_f32_e64 s31, v177, v177
	v_bfe_u32 v160, v82, 16, 1
	v_add3_u32 v159, v177, v159, 0x7fff
	v_cmp_o_f32_e64 s38, v207, v207
	v_cmp_o_f32_e64 s30, v178, v178
	v_cmp_o_f32_e64 s33, v82, v82
	v_cmp_o_f32_e64 s41, v204, v204
	v_cmp_o_f32_e64 s42, v203, v203
	v_add3_u32 v82, v82, v160, 0x7fff
	v_cmp_o_f32_e64 s44, v201, v201
	v_cmp_o_f32_e64 s45, v200, v200
	v_cmp_o_f32_e64 s37, v179, v179
	v_cmp_o_f32_e64 s35, v182, v182
	v_cmp_o_f32_e64 s39, v206, v206
	v_cmp_o_f32_e64 s40, v205, v205
	v_cmp_o_f32_e64 s43, v202, v202
	v_cmp_o_f32_e64 s29, v180, v180
	v_cmp_o_f32_e64 s34, v183, v183
	v_cmp_o_f32_e64 s36, v181, v181
	.loc	1 309 31                        ; attention_backward.py:309:31
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 382 31                        ; attention_backward.py:382:31
	v_mul_f32_e32 v213, v227, v161
	v_mul_f32_e32 v211, v237, v156
	.loc	1 382 30 is_stmt 0              ; attention_backward.py:382:30
	v_bfe_u32 v156, v178, 16, 1
	v_bfe_u32 v161, v183, 16, 1
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_bfe_u32 v177, v213, 16, 1
	v_cmp_o_f32_e64 s48, v213, v213
	v_add3_u32 v156, v178, v156, 0x7fff
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_add3_u32 v161, v183, v161, 0x7fff
	v_bfe_u32 v183, v211, 16, 1
	v_cmp_o_f32_e64 s50, v211, v211
	v_add3_u32 v183, v211, v183, 0x7fff
	.loc	1 329 17 is_stmt 1              ; attention_backward.py:329:17
	s_waitcnt vmcnt(0)
	v_min_i32_e32 v27, v27, v254
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_cmp_ge_i32_e64 s1, v27, v26
	.loc	1 271 27                        ; attention_backward.py:271:27
	v_or_b32_e32 v26, s90, v253
	.loc	1 330 17                        ; attention_backward.py:330:17
	s_and_b32 s19, s1, s0
	.loc	1 329 26                        ; attention_backward.py:329:26
	v_cmp_ge_i32_e64 s3, v26, v148
	.loc	1 329 17 is_stmt 0              ; attention_backward.py:329:17
	v_cmp_ge_i32_e64 s5, v27, v26
	.loc	1 271 27 is_stmt 1              ; attention_backward.py:271:27
	v_or_b32_e32 v26, s90, v252
	.loc	1 330 17                        ; attention_backward.py:330:17
	s_and_b32 s0, s5, s3
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	.loc	1 329 26                        ; attention_backward.py:329:26
	v_cmp_ge_i32_e64 s7, v26, v148
	.loc	1 329 17 is_stmt 0              ; attention_backward.py:329:17
	v_cmp_ge_i32_e64 s8, v27, v26
	.loc	1 271 27 is_stmt 1              ; attention_backward.py:271:27
	v_or_b32_e32 v26, s90, v255
	.loc	1 330 17                        ; attention_backward.py:330:17
	s_and_b32 s0, s2, s0
	s_and_b32 s1, s8, s7
	.loc	1 329 26                        ; attention_backward.py:329:26
	v_cmp_ge_i32_e64 s9, v26, v148
	.loc	1 329 17 is_stmt 0              ; attention_backward.py:329:17
	v_cmp_ge_i32_e64 s10, v27, v26
	.loc	1 271 27 is_stmt 1              ; attention_backward.py:271:27
	v_or_b32_e32 v26, 8, v129
	.loc	1 330 17                        ; attention_backward.py:330:17
	s_and_b32 s1, s2, s1
	s_and_b32 s3, s10, s9
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 271 27                        ; attention_backward.py:271:27
	v_or_b32_e32 v26, s90, v26
	.loc	1 330 17                        ; attention_backward.py:330:17
	s_and_b32 s10, s2, s19
	s_and_b32 s3, s2, s3
	.loc	1 329 26                        ; attention_backward.py:329:26
	v_cmp_ge_i32_e64 s11, v26, v148
	.loc	1 329 17 is_stmt 0              ; attention_backward.py:329:17
	v_cmp_ge_i32_e64 s12, v27, v26
	.loc	1 271 27 is_stmt 1              ; attention_backward.py:271:27
	v_or_b32_e32 v26, 10, v129
	.loc	1 330 17                        ; attention_backward.py:330:17
	s_and_b32 s5, s12, s11
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 271 27                        ; attention_backward.py:271:27
	v_or_b32_e32 v26, s90, v26
	.loc	1 330 17                        ; attention_backward.py:330:17
	s_and_b32 s5, s2, s5
	.loc	1 329 26                        ; attention_backward.py:329:26
	v_cmp_ge_i32_e64 s13, v26, v148
	.loc	1 329 17 is_stmt 0              ; attention_backward.py:329:17
	v_cmp_ge_i32_e64 s14, v27, v26
	.loc	1 271 27 is_stmt 1              ; attention_backward.py:271:27
	v_or_b32_e32 v26, 12, v129
	.loc	1 330 17                        ; attention_backward.py:330:17
	s_and_b32 s7, s14, s13
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 271 27                        ; attention_backward.py:271:27
	v_or_b32_e32 v26, s90, v26
	.loc	1 330 17                        ; attention_backward.py:330:17
	s_and_b32 s7, s2, s7
	.loc	1 329 26                        ; attention_backward.py:329:26
	v_cmp_ge_i32_e64 s15, v26, v148
	.loc	1 329 17 is_stmt 0              ; attention_backward.py:329:17
	v_cmp_ge_i32_e64 s16, v27, v26
	.loc	1 271 27 is_stmt 1              ; attention_backward.py:271:27
	v_or_b32_e32 v26, 14, v129
	.loc	1 330 17                        ; attention_backward.py:330:17
	s_and_b32 s8, s16, s15
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 271 27                        ; attention_backward.py:271:27
	v_or_b32_e32 v26, s90, v26
	.loc	1 330 17                        ; attention_backward.py:330:17
	s_and_b32 s8, s2, s8
	.loc	1 270 9                         ; attention_backward.py:270:9
	s_add_i32 s90, s90, 16
	.loc	1 329 17                        ; attention_backward.py:329:17
	v_cmp_ge_i32_e64 s17, v27, v26
	.loc	1 329 26 is_stmt 0              ; attention_backward.py:329:26
	v_cmp_ge_i32_e64 s18, v26, v148
	.loc	1 299 21 is_stmt 1              ; attention_backward.py:299:21
	v_mul_f32_e32 v26, v150, v215
	.loc	1 382 31                        ; attention_backward.py:382:31
	v_mul_f32_e32 v215, v225, v83
	v_dual_mul_f32 v210, v238, v153 :: v_dual_lshlrev_b32 v27, 16, v174
	.loc	1 330 17                        ; attention_backward.py:330:17
	s_and_b32 s9, s17, s18
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	s_and_b32 s9, s2, s9
	.loc	1 345 58                        ; attention_backward.py:345:58
	v_fma_f32 v26, v26, v27, -v152
	.loc	1 299 21                        ; attention_backward.py:299:21
	v_mul_f32_e32 v27, v150, v245
	.loc	1 382 30                        ; attention_backward.py:382:30
	v_cmp_o_f32_e64 s51, v210, v210
	v_cmp_o_f32_e64 s46, v215, v215
	.loc	1 270 9                         ; attention_backward.py:270:9
	s_cmp_lt_i32 s90, s91
	.loc	1 345 45                        ; attention_backward.py:345:45
	v_exp_f32_e32 v26, v26
	.loc	1 345 58 is_stmt 0              ; attention_backward.py:345:58
	v_fma_f32 v27, v27, v28, -v152
	.loc	1 299 21 is_stmt 1              ; attention_backward.py:299:21
	v_mul_f32_e32 v28, v150, v246
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 345 45                        ; attention_backward.py:345:45
	v_exp_f32_e32 v27, v27
	.loc	1 345 58 is_stmt 0              ; attention_backward.py:345:58
	v_fma_f32 v28, v28, v29, -v152
	.loc	1 299 21 is_stmt 1              ; attention_backward.py:299:21
	v_mul_f32_e32 v29, v150, v247
	.loc	1 382 31                        ; attention_backward.py:382:31
	v_dual_mul_f32 v212, v228, v162 :: v_dual_lshlrev_b32 v105, 16, v187
	.loc	1 373 36                        ; attention_backward.py:373:36
	v_and_b32_e32 v187, 0xffff0000, v189
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 345 45                        ; attention_backward.py:345:45
	v_exp_f32_e32 v28, v28
	.loc	1 345 58 is_stmt 0              ; attention_backward.py:345:58
	v_fma_f32 v29, v29, v30, -v152
	.loc	1 299 21 is_stmt 1              ; attention_backward.py:299:21
	v_mul_f32_e32 v30, v150, v248
	.loc	1 345 29                        ; attention_backward.py:345:29
	v_cndmask_b32_e64 v169, 0, v26, s10
	s_delay_alu instid0(TRANS32_DEP_2)
	v_cndmask_b32_e64 v170, 0, v27, s0
	.loc	1 382 31                        ; attention_backward.py:382:31
	v_mul_f32_e32 v27, v91, v219
	.loc	1 345 45                        ; attention_backward.py:345:45
	v_exp_f32_e32 v29, v29
	.loc	1 345 58 is_stmt 0              ; attention_backward.py:345:58
	v_fma_f32 v30, v30, v31, -v152
	.loc	1 299 21 is_stmt 1              ; attention_backward.py:299:21
	v_mul_f32_e32 v31, v150, v249
	.loc	1 382 31                        ; attention_backward.py:382:31
	v_mul_f32_e32 v214, v226, v84
	.loc	1 345 29                        ; attention_backward.py:345:29
	v_cndmask_b32_e64 v171, 0, v28, s1
	.loc	1 382 30                        ; attention_backward.py:382:30
	v_bfe_u32 v162, v182, 16, 1
	.loc	1 345 45                        ; attention_backward.py:345:45
	v_exp_f32_e32 v30, v30
	.loc	1 345 58 is_stmt 0              ; attention_backward.py:345:58
	v_fma_f32 v31, v31, v32, -v152
	.loc	1 299 21 is_stmt 1              ; attention_backward.py:299:21
	v_mul_f32_e32 v32, v150, v250
	.loc	1 382 30                        ; attention_backward.py:382:30
	v_bfe_u32 v178, v214, 16, 1
	v_bfe_u32 v160, v212, 16, 1
	.loc	1 345 29                        ; attention_backward.py:345:29
	v_cndmask_b32_e64 v172, 0, v29, s3
	.loc	1 382 31                        ; attention_backward.py:382:31
	v_mul_f32_e32 v209, v239, v155
	.loc	1 345 58                        ; attention_backward.py:345:58
	v_fma_f32 v32, v32, v74, -v152
	.loc	1 299 21                        ; attention_backward.py:299:21
	v_mul_f32_e32 v74, v150, v251
	.loc	1 382 31                        ; attention_backward.py:382:31
	v_mul_f32_e32 v208, v240, v17
	.loc	1 345 29                        ; attention_backward.py:345:29
	v_cndmask_b32_e64 v173, 0, v30, s5
	.loc	1 382 31                        ; attention_backward.py:382:31
	v_dual_mul_f32 v17, v229, v18 :: v_dual_mul_f32 v18, v230, v19
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 345 58                        ; attention_backward.py:345:58
	v_fma_f32 v74, v74, v73, -v152
	.loc	1 391 32                        ; attention_backward.py:391:32
	v_mov_b32_e32 v73, v72
	v_dual_mov_b32 v72, v71 :: v_dual_lshlrev_b32 v221, 16, v103
	v_dual_mov_b32 v71, v70 :: v_dual_and_b32 v218, 0xffff0000, v101
	v_dual_mov_b32 v70, v69 :: v_dual_lshlrev_b32 v223, 16, v104
	v_dual_mov_b32 v69, v68 :: v_dual_and_b32 v220, 0xffff0000, v102
	v_dual_mov_b32 v68, v67 :: v_dual_lshlrev_b32 v75, 16, v184
	v_dual_mov_b32 v67, v66 :: v_dual_and_b32 v222, 0xffff0000, v103
	.loc	1 373 36                        ; attention_backward.py:373:36
	v_lshlrev_b32_e32 v103, 16, v186
	v_and_b32_e32 v104, 0xffff0000, v186
	.loc	1 382 31                        ; attention_backward.py:382:31
	v_dual_mul_f32 v19, v231, v20 :: v_dual_lshlrev_b32 v186, 16, v189
	.loc	1 391 32                        ; attention_backward.py:391:32
	v_dual_mov_b32 v66, v65 :: v_dual_and_b32 v81, 0xffff0000, v184
	.loc	1 373 36                        ; attention_backward.py:373:36
	v_lshlrev_b32_e32 v101, 16, v185
	v_and_b32_e32 v102, 0xffff0000, v185
	v_lshlrev_b32_e32 v184, 16, v188
	v_and_b32_e32 v185, 0xffff0000, v188
	v_lshlrev_b32_e32 v188, 16, v190
	.loc	1 382 31                        ; attention_backward.py:382:31
	v_dual_mul_f32 v20, v232, v21 :: v_dual_and_b32 v189, 0xffff0000, v190
	v_dual_mul_f32 v21, v241, v22 :: v_dual_lshlrev_b32 v190, 16, v191
	.loc	1 373 36                        ; attention_backward.py:373:36
	v_and_b32_e32 v191, 0xffff0000, v191
	.loc	1 382 31                        ; attention_backward.py:382:31
	v_dual_mul_f32 v26, v90, v218 :: v_dual_and_b32 v195, 0xffff0000, v197
	v_dual_mul_f32 v29, v97, v221 :: v_dual_lshlrev_b32 v196, 16, v198
	v_dual_mul_f32 v28, v92, v220 :: v_dual_and_b32 v197, 0xffff0000, v198
	v_dual_mul_f32 v151, v87, v105 :: v_dual_lshlrev_b32 v198, 16, v199
	v_dual_mul_f32 v30, v98, v222 :: v_dual_and_b32 v199, 0xffff0000, v199
	v_dual_mul_f32 v22, v242, v23 :: v_dual_mul_f32 v23, v243, v24
	v_mul_f32_e32 v24, v244, v25
	v_dual_mul_f32 v25, v89, v217 :: v_dual_mul_f32 v108, v108, v186
	v_mul_f32_e32 v93, v93, v192
	.loc	1 382 30 is_stmt 0              ; attention_backward.py:382:30
	v_bfe_u32 v186, v207, 16, 1
	.loc	1 345 45 is_stmt 1              ; attention_backward.py:345:45
	v_exp_f32_e32 v32, v32
	.loc	1 382 31                        ; attention_backward.py:382:31
	v_dual_mul_f32 v134, v85, v103 :: v_dual_mul_f32 v115, v115, v189
	v_dual_mul_f32 v116, v116, v190 :: v_dual_mul_f32 v111, v111, v197
	.loc	1 382 30 is_stmt 0              ; attention_backward.py:382:30
	v_bfe_u32 v189, v204, 16, 1
	v_bfe_u32 v190, v203, 16, 1
	.loc	1 345 45 is_stmt 1              ; attention_backward.py:345:45
	v_exp_f32_e32 v74, v74
	.loc	1 382 31                        ; attention_backward.py:382:31
	v_mul_f32_e32 v118, v78, v81
	v_dual_mul_f32 v94, v94, v193 :: v_dual_mul_f32 v113, v113, v199
	v_mul_f32_e32 v96, v96, v195
	.loc	1 382 30 is_stmt 0              ; attention_backward.py:382:30
	v_bfe_u32 v192, v201, 16, 1
	v_bfe_u32 v193, v200, 16, 1
	v_add3_u32 v186, v207, v186, 0x7fff
	v_bfe_u32 v195, v18, 16, 1
	v_bfe_u32 v207, v30, 16, 1
	.loc	1 382 31                        ; attention_backward.py:382:31
	v_mul_f32_e32 v107, v107, v185
	.loc	1 382 30                        ; attention_backward.py:382:30
	v_bfe_u32 v185, v179, 16, 1
	v_add3_u32 v189, v204, v189, 0x7fff
	v_add3_u32 v190, v203, v190, 0x7fff
	v_bfe_u32 v203, v26, 16, 1
	v_add3_u32 v204, v213, v177, 0x7fff
	v_bfe_u32 v177, v27, 16, 1
	.loc	1 382 31                        ; attention_backward.py:382:31
	v_dual_mul_f32 v136, v86, v104 :: v_dual_mul_f32 v109, v109, v187
	v_mul_f32_e32 v153, v88, v216
	v_dual_mul_f32 v106, v106, v184 :: v_dual_mul_f32 v117, v117, v191
	v_dual_mul_f32 v114, v114, v188 :: v_dual_mul_f32 v95, v95, v194
	v_mul_f32_e32 v112, v112, v198
	.loc	1 382 30                        ; attention_backward.py:382:30
	v_bfe_u32 v187, v206, 16, 1
	v_bfe_u32 v188, v205, 16, 1
	v_bfe_u32 v191, v202, 16, 1
	v_cmp_o_f32_e64 s3, v18, v18
	v_bfe_u32 v198, v21, 16, 1
	v_bfe_u32 v199, v22, 16, 1
	v_add3_u32 v192, v201, v192, 0x7fff
	v_bfe_u32 v201, v23, 16, 1
	v_add3_u32 v193, v200, v193, 0x7fff
	v_bfe_u32 v200, v24, 16, 1
	v_cmp_o_f32_e64 s17, v30, v30
	v_add3_u32 v18, v18, v195, 0x7fff
	v_bfe_u32 v195, v118, 16, 1
	v_add3_u32 v30, v30, v207, 0x7fff
	v_bfe_u32 v207, v115, 16, 1
	.loc	1 345 29 is_stmt 1              ; attention_backward.py:345:29
	v_cndmask_b32_e64 v175, 0, v32, s8
	.loc	1 382 31                        ; attention_backward.py:382:31
	v_mul_f32_e32 v32, v100, v224
	.loc	1 382 30 is_stmt 0              ; attention_backward.py:382:30
	v_add3_u32 v179, v179, v185, 0x7fff
	v_bfe_u32 v185, v208, 16, 1
	v_cmp_o_f32_e64 s47, v214, v214
	v_cmp_o_f32_e64 s49, v212, v212
	v_add3_u32 v162, v182, v162, 0x7fff
	v_bfe_u32 v182, v210, 16, 1
	v_cmp_o_f32_e64 s13, v26, v26
	v_add3_u32 v178, v214, v178, 0x7fff
	v_cmp_o_f32_e64 s14, v27, v27
	v_add3_u32 v160, v212, v160, 0x7fff
	v_add3_u32 v26, v26, v203, 0x7fff
	v_bfe_u32 v203, v107, 16, 1
	v_add3_u32 v27, v27, v177, 0x7fff
	v_bfe_u32 v177, v108, 16, 1
	.loc	1 345 29 is_stmt 1              ; attention_backward.py:345:29
	v_cndmask_b32_e64 v176, 0, v74, s9
	.loc	1 382 31                        ; attention_backward.py:382:31
	v_mul_f32_e32 v110, v110, v196
	.loc	1 382 30 is_stmt 0              ; attention_backward.py:382:30
	v_bfe_u32 v155, v180, 16, 1
	v_bfe_u32 v184, v181, 16, 1
	v_add3_u32 v187, v206, v187, 0x7fff
	v_add3_u32 v188, v205, v188, 0x7fff
	v_cmp_o_f32_e64 s8, v21, v21
	v_cmp_o_f32_e64 s9, v22, v22
	v_add3_u32 v191, v202, v191, 0x7fff
	v_cmp_o_f32_e64 s10, v23, v23
	v_cmp_o_f32_e64 s11, v24, v24
	v_bfe_u32 v202, v25, 16, 1
	v_bfe_u32 v205, v28, 16, 1
	v_bfe_u32 v206, v29, 16, 1
	v_cmp_o_f32_e64 s21, v118, v118
	v_add3_u32 v21, v21, v198, 0x7fff
	v_bfe_u32 v198, v134, 16, 1
	v_add3_u32 v22, v22, v199, 0x7fff
	v_bfe_u32 v199, v136, 16, 1
	v_add3_u32 v23, v23, v201, 0x7fff
	v_bfe_u32 v201, v151, 16, 1
	v_add3_u32 v24, v24, v200, 0x7fff
	v_bfe_u32 v200, v153, 16, 1
	v_cmp_o_f32_e64 s57, v115, v115
	v_add3_u32 v118, v118, v195, 0x7fff
	v_bfe_u32 v195, v94, 16, 1
	v_add3_u32 v115, v115, v207, 0x7fff
	.loc	1 382 31                        ; attention_backward.py:382:31
	v_mul_f32_e32 v128, v79, v101
	.loc	1 382 30                        ; attention_backward.py:382:30
	v_cmp_o_f32_e64 s0, v208, v208
	v_bfe_u32 v196, v19, 16, 1
	v_add3_u32 v185, v208, v185, 0x7fff
	v_bfe_u32 v208, v32, 16, 1
	v_add3_u32 v182, v210, v182, 0x7fff
	v_cmp_o_f32_e64 s53, v107, v107
	v_add3_u32 v203, v107, v203, 0x7fff
	v_add3_u32 v210, v108, v177, 0x7fff
	v_cndmask_b16 v107.l, 0x7fff, v159.h, s31
	v_cndmask_b16 v177.h, 0x7fff, v178.h, s47
	v_cndmask_b16 v178.h, 0x7fff, v160.h, s49
	v_mov_b32_e32 v160, v158
	v_add3_u32 v155, v180, v155, 0x7fff
	v_add3_u32 v181, v181, v184, 0x7fff
	v_cmp_o_f32_e64 s12, v25, v25
	v_cmp_o_f32_e64 s15, v28, v28
	v_cmp_o_f32_e64 s16, v29, v29
	v_cmp_o_f32_e64 s24, v134, v134
	v_cmp_o_f32_e64 s25, v136, v136
	v_cmp_o_f32_e64 s26, v151, v151
	v_cmp_o_f32_e64 s27, v153, v153
	v_add3_u32 v25, v25, v202, 0x7fff
	v_bfe_u32 v202, v106, 16, 1
	v_add3_u32 v28, v28, v205, 0x7fff
	v_bfe_u32 v205, v109, 16, 1
	v_add3_u32 v29, v29, v206, 0x7fff
	v_bfe_u32 v206, v114, 16, 1
	v_cmp_o_f32_e64 s61, v94, v94
	v_add3_u32 v134, v134, v198, 0x7fff
	v_add3_u32 v136, v136, v199, 0x7fff
	v_bfe_u32 v199, v111, 16, 1
	v_add3_u32 v151, v151, v201, 0x7fff
	v_add3_u32 v153, v153, v200, 0x7fff
	v_bfe_u32 v200, v113, 16, 1
	v_add3_u32 v94, v94, v195, 0x7fff
	v_mov_b32_e32 v159, v157
	v_bfe_u32 v198, v110, 16, 1
	v_cndmask_b16 v195.h, 0x7fff, v115.h, s57
	v_mov_b32_e32 v115, v42
	v_bfe_u32 v201, v112, 16, 1
	v_cmp_o_f32_e64 s5, v19, v19
	v_cmp_o_f32_e64 s19, v32, v32
	v_add3_u32 v19, v19, v196, 0x7fff
	v_bfe_u32 v196, v128, 16, 1
	v_add3_u32 v32, v32, v208, 0x7fff
	v_bfe_u32 v208, v117, 16, 1
	v_cmp_o_f32_e64 s28, v106, v106
	v_cmp_o_f32_e64 s54, v108, v108
	v_cmp_o_f32_e64 s55, v109, v109
	v_cmp_o_f32_e64 s56, v114, v114
	v_cmp_o_f32_e64 s64, v110, v110
	v_cmp_o_f32_e64 s65, v111, v111
	v_cmp_o_f32_e64 s66, v112, v112
	v_cmp_o_f32_e64 s67, v113, v113
	v_add3_u32 v202, v106, v202, 0x7fff
	v_add3_u32 v205, v109, v205, 0x7fff
	v_add3_u32 v114, v114, v206, 0x7fff
	v_add3_u32 v206, v110, v198, 0x7fff
	v_add3_u32 v199, v111, v199, 0x7fff
	v_add3_u32 v201, v112, v201, 0x7fff
	v_add3_u32 v200, v113, v200, 0x7fff
	v_cndmask_b16 v106.l, 0x7fff, v155.h, s29
	v_cndmask_b16 v106.h, 0x7fff, v156.h, s30
	v_cndmask_b16 v107.h, 0x7fff, v82.h, s33
	v_cndmask_b16 v108.l, 0x7fff, v161.h, s34
	v_cndmask_b16 v108.h, 0x7fff, v162.h, s35
	v_cndmask_b16 v109.l, 0x7fff, v181.h, s36
	v_cndmask_b16 v109.h, 0x7fff, v179.h, s37
	v_cndmask_b16 v110.l, 0x7fff, v186.h, s38
	v_cndmask_b16 v110.h, 0x7fff, v187.h, s39
	v_cndmask_b16 v111.l, 0x7fff, v188.h, s40
	v_cndmask_b16 v111.h, 0x7fff, v189.h, s41
	v_cndmask_b16 v112.l, 0x7fff, v190.h, s42
	v_cndmask_b16 v112.h, 0x7fff, v191.h, s43
	v_cndmask_b16 v113.l, 0x7fff, v192.h, s44
	v_cndmask_b16 v113.h, 0x7fff, v193.h, s45
	v_cmp_o_f32_e64 s22, v128, v128
	v_cmp_o_f32_e64 s59, v117, v117
	v_add3_u32 v128, v128, v196, 0x7fff
	v_bfe_u32 v196, v95, 16, 1
	v_add3_u32 v117, v117, v208, 0x7fff
	v_mov_b32_e32 v156, v132
	.loc	1 391 32 is_stmt 1              ; attention_backward.py:391:32
	v_wmma_f32_16x16x16_bf16 v[66:73], v[106:113], v[34:41], v[66:73]
	v_dual_mov_b32 v113, v41 :: v_dual_mov_b32 v112, v40
	v_mov_b32_e32 v109, v37
	v_dual_mov_b32 v111, v39 :: v_dual_mov_b32 v110, v38
	v_dual_mov_b32 v107, v35 :: v_dual_mov_b32 v108, v36
	v_mov_b32_e32 v106, v34
	v_dual_mov_b32 v34, v138 :: v_dual_mov_b32 v39, v143
	v_dual_mov_b32 v35, v139 :: v_dual_mov_b32 v36, v140
	v_mov_b32_e32 v41, v145
	v_dual_mov_b32 v37, v141 :: v_dual_mov_b32 v38, v142
	v_dual_mov_b32 v40, v144 :: v_dual_mov_b32 v145, v126
	.loc	1 382 30                        ; attention_backward.py:382:30
	v_cmp_o_f32_e64 s62, v95, v95
	v_add3_u32 v95, v95, v196, 0x7fff
	v_cndmask_b16 v189.h, 0x7fff, v118.h, s21
	v_cndmask_b16 v196.h, 0x7fff, v117.h, s59
	v_dual_mov_b32 v144, v125 :: v_dual_mov_b32 v141, v122
	v_dual_mov_b32 v143, v124 :: v_dual_mov_b32 v142, v123
	v_dual_mov_b32 v139, v120 :: v_dual_mov_b32 v140, v121
	v_mov_b32_e32 v138, v119
	s_clause 0x1                            ; 32-byte Folded Reload
	scratch_load_b128 v[117:120], off, off
	scratch_load_b128 v[121:124], off, off offset:16
	.loc	1 345 45                        ; attention_backward.py:345:45
	v_exp_f32_e32 v31, v31
	.loc	1 382 31                        ; attention_backward.py:382:31
	v_dual_mul_f32 v97, v77, v75 :: v_dual_mul_f32 v130, v80, v102
	.loc	1 382 30 is_stmt 0              ; attention_backward.py:382:30
	v_bfe_u32 v180, v215, 16, 1
	v_bfe_u32 v184, v209, 16, 1
	v_bfe_u32 v194, v17, 16, 1
	v_bfe_u32 v197, v20, 16, 1
	v_cmp_o_f32_e64 s52, v209, v209
	v_cmp_o_f32_e64 s1, v17, v17
	v_add3_u32 v180, v215, v180, 0x7fff
	s_delay_alu instid0(TRANS32_DEP_1)
	.loc	1 345 29 is_stmt 1              ; attention_backward.py:345:29
	v_cndmask_b32_e64 v174, 0, v31, s7
	.loc	1 382 31                        ; attention_backward.py:382:31
	v_mul_f32_e32 v31, v99, v223
	.loc	1 382 30 is_stmt 0              ; attention_backward.py:382:30
	v_cmp_o_f32_e64 s7, v20, v20
	v_add3_u32 v184, v209, v184, 0x7fff
	v_add3_u32 v17, v17, v194, 0x7fff
	v_bfe_u32 v194, v97, 16, 1
	v_bfe_u32 v209, v31, 16, 1
	v_add3_u32 v20, v20, v197, 0x7fff
	v_bfe_u32 v197, v130, 16, 1
	v_cmp_o_f32_e64 s18, v31, v31
	v_cmp_o_f32_e64 s20, v97, v97
	v_cmp_o_f32_e64 s23, v130, v130
	v_add3_u32 v31, v31, v209, 0x7fff
	v_bfe_u32 v209, v116, 16, 1
	v_add3_u32 v97, v97, v194, 0x7fff
	v_bfe_u32 v194, v93, 16, 1
	v_add3_u32 v130, v130, v197, 0x7fff
	v_mov_b32_e32 v155, v131
	v_bfe_u32 v197, v96, 16, 1
	v_cndmask_b16 v177.l, 0x7fff, v180.h, s46
	v_cndmask_b16 v178.l, 0x7fff, v204.h, s48
	v_cndmask_b16 v179.l, 0x7fff, v183.h, s50
	v_cndmask_b16 v179.h, 0x7fff, v182.h, s51
	v_cndmask_b16 v180.l, 0x7fff, v184.h, s52
	v_cndmask_b16 v180.h, 0x7fff, v185.h, s0
	v_cndmask_b16 v181.l, 0x7fff, v17.h, s1
	v_cndmask_b16 v181.h, 0x7fff, v18.h, s3
	v_cndmask_b16 v182.l, 0x7fff, v19.h, s5
	v_cndmask_b16 v182.h, 0x7fff, v20.h, s7
	v_cndmask_b16 v183.l, 0x7fff, v21.h, s8
	v_cndmask_b16 v183.h, 0x7fff, v22.h, s9
	v_cndmask_b16 v184.l, 0x7fff, v23.h, s10
	v_cndmask_b16 v184.h, 0x7fff, v24.h, s11
	v_cmp_o_f32_e64 s58, v116, v116
	v_cmp_o_f32_e64 s60, v93, v93
	v_cmp_o_f32_e64 s63, v96, v96
	v_add3_u32 v116, v116, v209, 0x7fff
	v_add3_u32 v93, v93, v194, 0x7fff
	v_add3_u32 v96, v96, v197, 0x7fff
	v_cndmask_b16 v185.l, 0x7fff, v25.h, s12
	v_cndmask_b16 v185.h, 0x7fff, v26.h, s13
	v_cndmask_b16 v186.l, 0x7fff, v27.h, s14
	v_cndmask_b16 v186.h, 0x7fff, v28.h, s15
	v_cndmask_b16 v187.l, 0x7fff, v29.h, s16
	v_cndmask_b16 v187.h, 0x7fff, v30.h, s17
	v_cndmask_b16 v188.l, 0x7fff, v31.h, s18
	v_cndmask_b16 v188.h, 0x7fff, v32.h, s19
	v_cndmask_b16 v189.l, 0x7fff, v97.h, s20
	v_cndmask_b16 v190.l, 0x7fff, v128.h, s22
	v_cndmask_b16 v190.h, 0x7fff, v130.h, s23
	v_cndmask_b16 v191.l, 0x7fff, v134.h, s24
	v_cndmask_b16 v191.h, 0x7fff, v136.h, s25
	v_cndmask_b16 v192.l, 0x7fff, v151.h, s26
	v_cndmask_b16 v192.h, 0x7fff, v153.h, s27
	.loc	1 391 32 is_stmt 1              ; attention_backward.py:391:32
	v_wmma_f32_16x16x16_bf16 v[66:73], v[177:184], v[34:41], v[66:73]
	.loc	1 382 30                        ; attention_backward.py:382:30
	v_cndmask_b16 v193.l, 0x7fff, v202.h, s28
	v_cndmask_b16 v193.h, 0x7fff, v203.h, s53
	v_cndmask_b16 v194.l, 0x7fff, v210.h, s54
	v_cndmask_b16 v194.h, 0x7fff, v205.h, s55
	v_cndmask_b16 v195.l, 0x7fff, v114.h, s56
	v_cndmask_b16 v196.l, 0x7fff, v116.h, s58
	v_cndmask_b16 v197.l, 0x7fff, v93.h, s60
	v_cndmask_b16 v197.h, 0x7fff, v94.h, s61
	v_cndmask_b16 v198.l, 0x7fff, v95.h, s62
	v_cndmask_b16 v198.h, 0x7fff, v96.h, s63
	v_cndmask_b16 v199.l, 0x7fff, v206.h, s64
	v_cndmask_b16 v199.h, 0x7fff, v199.h, s65
	v_cndmask_b16 v200.l, 0x7fff, v201.h, s66
	v_cndmask_b16 v200.h, 0x7fff, v200.h, s67
	.loc	1 391 32                        ; attention_backward.py:391:32
	v_wmma_f32_16x16x16_bf16 v[66:73], v[185:192], v[138:145], v[66:73]
	.loc	1 309 31                        ; attention_backward.py:309:31
	ds_load_u16_d16 v84, v0 offset:608
	ds_load_u16_d16 v83, v0 offset:352
	ds_load_u16_d16 v76, v0 offset:512
	ds_load_u16_d16 v100, v0 offset:576
	ds_load_u16_d16 v75, v0 offset:256
	ds_load_u16_d16 v90, v0 offset:32
	ds_load_u16_d16 v98, v0 offset:64
	ds_load_u16_d16 v99, v0 offset:320
	ds_load_u16_d16 v77, v0 offset:768
	ds_load_u16_d16 v101, v0 offset:832
	ds_load_u16_d16 v92, v0 offset:544
	ds_load_u16_d16 v78, v0 offset:1024
	ds_load_u16_d16 v102, v0 offset:1088
	ds_load_u16_d16 v85, v0 offset:864
	ds_load_u16_d16 v79, v0 offset:1280
	ds_load_u16_d16 v103, v0 offset:1344
	ds_load_u16_d16 v86, v0 offset:1120
	ds_load_u16_d16 v80, v0 offset:1536
	ds_load_u16_d16 v104, v0 offset:1600
	ds_load_u16_d16 v87, v0 offset:1376
	ds_load_u16_d16 v81, v0 offset:1792
	ds_load_u16_d16 v105, v0 offset:1856
	ds_load_u16_d16 v88, v0 offset:1632
	ds_load_u16_d16 v89, v0 offset:1888
	s_waitcnt lgkmcnt(22)
	ds_load_u16_d16_hi v83, v0 offset:480
	ds_load_u16_d16 v82, v0 offset:96
	s_waitcnt lgkmcnt(22)
	ds_load_u16_d16_hi v100, v0 offset:704
	s_waitcnt lgkmcnt(18)
	ds_load_u16_d16_hi v77, v0 offset:896
	s_waitcnt lgkmcnt(18)
	ds_load_u16_d16_hi v101, v0 offset:960
	ds_load_u16_d16 v93, v0 offset:800
	s_waitcnt lgkmcnt(18)
	ds_load_u16_d16_hi v78, v0 offset:1152
	s_waitcnt lgkmcnt(18)
	ds_load_u16_d16_hi v102, v0 offset:1216
	ds_load_u16_d16 v94, v0 offset:1056
	s_waitcnt lgkmcnt(18)
	ds_load_u16_d16_hi v79, v0 offset:1408
	s_waitcnt lgkmcnt(18)
	ds_load_u16_d16_hi v103, v0 offset:1472
	ds_load_u16_d16 v95, v0 offset:1312
	s_waitcnt lgkmcnt(18)
	ds_load_u16_d16_hi v80, v0 offset:1664
	s_waitcnt lgkmcnt(18)
	ds_load_u16_d16_hi v104, v0 offset:1728
	ds_load_u16_d16 v96, v0 offset:1568
	s_waitcnt lgkmcnt(18)
	ds_load_u16_d16_hi v81, v0 offset:1920
	s_waitcnt lgkmcnt(18)
	ds_load_u16_d16_hi v105, v0 offset:1984
	ds_load_u16_d16 v97, v0 offset:1824
	ds_load_u16_d16 v74, v0
	ds_load_u16_d16 v91, v0 offset:288
	ds_load_u16_d16_hi v76, v0 offset:640
	ds_load_u16_d16_hi v75, v0 offset:384
	s_waitcnt lgkmcnt(3)
	ds_load_u16_d16_hi v74, v0 offset:128
	ds_load_u16_d16_hi v90, v0 offset:160
	ds_load_u16_d16_hi v98, v0 offset:192
	ds_load_u16_d16_hi v82, v0 offset:224
	s_waitcnt lgkmcnt(6)
	ds_load_u16_d16_hi v91, v0 offset:416
	ds_load_u16_d16_hi v99, v0 offset:448
	ds_load_u16_d16_hi v92, v0 offset:672
	ds_load_u16_d16_hi v84, v0 offset:736
	ds_load_u16_d16_hi v93, v0 offset:928
	ds_load_u16_d16_hi v85, v0 offset:992
	ds_load_u16_d16_hi v94, v0 offset:1184
	ds_load_u16_d16_hi v86, v0 offset:1248
	ds_load_u16_d16_hi v95, v0 offset:1440
	ds_load_u16_d16_hi v87, v0 offset:1504
	ds_load_u16_d16_hi v96, v0 offset:1696
	ds_load_u16_d16_hi v88, v0 offset:1760
	ds_load_u16_d16_hi v97, v0 offset:1952
	ds_load_u16_d16_hi v89, v0 offset:2016
	.loc	1 391 32                        ; attention_backward.py:391:32
	s_waitcnt vmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[66:73], v[193:200], v[117:124], v[66:73]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 396 43                        ; attention_backward.py:396:43
	v_sub_f32_e32 v19, v68, v154
	v_sub_f32_e32 v20, v69, v154
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_sub_f32_e32 v17, v66, v154
	v_sub_f32_e32 v18, v67, v154
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 396 26 is_stmt 0              ; attention_backward.py:396:26
	v_mul_f32_e32 v19, v171, v19
	.loc	1 396 43                        ; attention_backward.py:396:43
	v_dual_sub_f32 v21, v70, v154 :: v_dual_mul_f32 v20, v172, v20
	v_sub_f32_e32 v22, v71, v154
	v_sub_f32_e32 v23, v72, v154
	.loc	1 396 26                        ; attention_backward.py:396:26
	v_dual_mul_f32 v17, v169, v17 :: v_dual_mul_f32 v18, v170, v18
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 397 34 is_stmt 1              ; attention_backward.py:397:34
	v_mul_f32_e32 v20, s89, v20
	.loc	1 396 43                        ; attention_backward.py:396:43
	v_dual_sub_f32 v24, v73, v154 :: v_dual_mul_f32 v23, v175, v23
	.loc	1 396 26 is_stmt 0              ; attention_backward.py:396:26
	v_dual_mul_f32 v21, v173, v21 :: v_dual_mul_f32 v22, v174, v22
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 397 34 is_stmt 1              ; attention_backward.py:397:34
	v_dual_mul_f32 v19, s89, v19 :: v_dual_mul_f32 v24, v176, v24
	v_dual_mul_f32 v17, s89, v17 :: v_dual_mul_f32 v18, s89, v18
	v_mul_f32_e32 v23, s89, v23
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_dual_mul_f32 v21, s89, v21 :: v_dual_mul_f32 v22, s89, v22
	v_mul_f32_e32 v24, s89, v24
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 397 33 is_stmt 0              ; attention_backward.py:397:33
	v_bfe_u32 v25, v17, 16, 1
	v_bfe_u32 v26, v18, 16, 1
	v_bfe_u32 v27, v19, 16, 1
	v_bfe_u32 v28, v20, 16, 1
	v_bfe_u32 v29, v21, 16, 1
	v_bfe_u32 v30, v22, 16, 1
	v_bfe_u32 v31, v23, 16, 1
	v_bfe_u32 v32, v24, 16, 1
	v_cmp_o_f32_e64 s0, v17, v17
	v_cmp_o_f32_e64 s1, v18, v18
	v_cmp_o_f32_e64 s3, v19, v19
	v_cmp_o_f32_e64 s5, v20, v20
	v_cmp_o_f32_e64 s7, v21, v21
	v_cmp_o_f32_e64 s8, v22, v22
	v_cmp_o_f32_e64 s9, v23, v23
	v_cmp_o_f32_e64 s10, v24, v24
	v_add3_u32 v17, v17, v25, 0x7fff
	v_add3_u32 v18, v18, v26, 0x7fff
	v_add3_u32 v19, v19, v27, 0x7fff
	v_add3_u32 v20, v20, v28, 0x7fff
	v_add3_u32 v21, v21, v29, 0x7fff
	v_add3_u32 v22, v22, v30, 0x7fff
	v_add3_u32 v23, v23, v31, 0x7fff
	v_add3_u32 v24, v24, v32, 0x7fff
	v_cndmask_b16 v17.l, 0x7fff, v17.h, s0
	v_cndmask_b16 v17.h, 0x7fff, v18.h, s1
	v_cndmask_b16 v18.l, 0x7fff, v19.h, s3
	v_cndmask_b16 v18.h, 0x7fff, v20.h, s5
	v_cndmask_b16 v19.l, 0x7fff, v21.h, s7
	v_cndmask_b16 v19.h, 0x7fff, v22.h, s8
	v_cndmask_b16 v20.l, 0x7fff, v23.h, s9
	v_cndmask_b16 v20.h, 0x7fff, v24.h, s10
	v_permlanex16_b32 v21, v17, s95, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v22, v18, s95, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v23, v19, s95, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_permlanex16_b32 v24, v20, s95, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v66, v21, v17, v137
	v_perm_b32 v67, v21, v17, v127
	v_perm_b32 v68, v22, v18, v137
	v_perm_b32 v69, v22, v18, v127
	v_perm_b32 v70, v23, v19, v137
	v_perm_b32 v71, v23, v19, v127
	v_perm_b32 v72, v24, v20, v137
	v_perm_b32 v73, v24, v20, v127
	.loc	1 398 31 is_stmt 1              ; attention_backward.py:398:31
	s_waitcnt lgkmcnt(17)
	s_delay_alu instid0(VALU_DEP_1)
	v_wmma_f32_16x16x16_bf16 v[57:64], v[74:81], v[66:73], v[57:64]
	s_waitcnt lgkmcnt(1)
	v_wmma_f32_16x16x16_bf16 v[49:56], v[90:97], v[66:73], v[49:56]
	v_dual_mov_b32 v96, v47 :: v_dual_mov_b32 v97, v33
	v_dual_mov_b32 v95, v46 :: v_dual_mov_b32 v94, v45
	v_mov_b32_e32 v93, v44
	v_wmma_f32_16x16x16_bf16 v[9:16], v[98:105], v[66:73], v[9:16]
	v_dual_mov_b32 v99, v43 :: v_dual_mov_b32 v98, v48
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[1:8], v[82:89], v[66:73], v[1:8]
	s_cbranch_scc1 .LBB0_6
; %bb.7:                                ; %Flow
	.loc	1 0 31 is_stmt 0                ; attention_backward.py:0:31
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v91, off, off offset:80
	scratch_load_b32 v76, off, off offset:84
	v_or_b32_e32 v103, 8, v129
	v_or_b32_e32 v104, 10, v129
	v_or_b32_e32 v105, 12, v129
	v_or_b32_e32 v114, 14, v129
.LBB0_8:                                ; %._crit_edge112
	.loc	1 401 13 is_stmt 1              ; attention_backward.py:401:13
	s_waitcnt vmcnt(1)
	v_mul_lo_u32 v0, s92, v91
	s_mul_i32 s4, s92, s88
	.loc	1 408 40                        ; attention_backward.py:408:40
	v_cmp_gt_i32_e32 vcc_lo, s92, v129
	.loc	1 405 9                         ; attention_backward.py:405:9
	s_and_b32 s81, s81, 0xffff
	s_mov_b32 s83, 0x31027000
	s_mov_b32 s82, 0x7ffffffe
	.loc	1 168 40                        ; attention_backward.py:168:40
	v_or_b32_e32 v19, 32, v129
	.loc	1 408 18                        ; attention_backward.py:408:18
	s_and_b32 vcc_lo, s2, vcc_lo
	.loc	1 401 13                        ; attention_backward.py:401:13
	v_add_nc_u32_e32 v21, s4, v0
	.loc	1 168 40                        ; attention_backward.py:168:40
	v_or_b32_e32 v20, 16, v129
	v_or_b32_e32 v18, 48, v129
	.loc	1 408 40                        ; attention_backward.py:408:40
	v_cmp_gt_i32_e64 s1, s92, v19
	.loc	1 168 40                        ; attention_backward.py:168:40
	s_waitcnt vmcnt(0)
	v_or_b32_e32 v17, 62, v76
	.loc	1 405 9                         ; attention_backward.py:405:9
	v_add_lshl_u32 v22, v21, v129, 2
	v_add_lshl_u32 v23, v21, v253, 2
	v_add_lshl_u32 v24, v21, v252, 2
	v_add_lshl_u32 v25, v21, v105, 2
	.loc	1 401 13                        ; attention_backward.py:401:13
	v_add_nc_u32_e32 v0, v0, v129
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 405 9                         ; attention_backward.py:405:9
	v_dual_cndmask_b32 v22, 0x80000000, v22 :: v_dual_cndmask_b32 v23, 0x80000000, v23
	v_dual_cndmask_b32 v24, 0x80000000, v24 :: v_dual_cndmask_b32 v25, 0x80000000, v25
	v_add_lshl_u32 v26, v21, v114, 2
	s_clause 0x2
	buffer_store_b32 v57, v22, s[80:83], 0 offen
	buffer_store_b32 v58, v23, s[80:83], 0 offen
	buffer_store_b32 v59, v24, s[80:83], 0 offen
	v_add_lshl_u32 v22, v21, v255, 2
	v_add_lshl_u32 v23, v21, v103, 2
	v_add_lshl_u32 v24, v21, v104, 2
	.loc	1 401 13                        ; attention_backward.py:401:13
	v_add_lshl_u32 v0, v0, s4, 2
	.loc	1 408 40                        ; attention_backward.py:408:40
	v_cmp_gt_i32_e64 s0, s92, v20
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 405 9                         ; attention_backward.py:405:9
	v_dual_cndmask_b32 v22, 0x80000000, v22 :: v_dual_cndmask_b32 v23, 0x80000000, v23
	v_add_lshl_u32 v19, v21, v19, 2
	v_cndmask_b32_e32 v24, 0x80000000, v24, vcc_lo
	v_cndmask_b32_e32 v26, 0x80000000, v26, vcc_lo
	v_add_lshl_u32 v20, v21, v20, 2
	s_clause 0x4
	buffer_store_b32 v60, v22, s[80:83], 0 offen
	buffer_store_b32 v61, v23, s[80:83], 0 offen
	buffer_store_b32 v62, v24, s[80:83], 0 offen
	buffer_store_b32 v63, v25, s[80:83], 0 offen
	buffer_store_b32 v64, v26, s[80:83], 0 offen
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
	buffer_store_b32 v49, v20, s[80:83], 0 offen
	buffer_store_b32 v50, v22, s[80:83], 0 offen
	buffer_store_b32 v51, v23, s[80:83], 0 offen
	v_cndmask_b32_e32 v20, 0x80000000, v25, vcc_lo
	v_add_nc_u32_e32 v22, 0x68, v0
	buffer_store_b32 v52, v24, s[80:83], 0 offen
	v_add_nc_u32_e32 v23, 0x70, v0
	v_add_nc_u32_e32 v24, 0x78, v0
	buffer_store_b32 v53, v20, s[80:83], 0 offen
	v_cndmask_b32_e32 v20, 0x80000000, v22, vcc_lo
	.loc	1 408 40                        ; attention_backward.py:408:40
	v_cmp_gt_i32_e64 s3, s92, v18
	.loc	1 405 9                         ; attention_backward.py:405:9
	v_dual_cndmask_b32 v22, 0x80000000, v23 :: v_dual_cndmask_b32 v23, 0x80000000, v24
	.loc	1 408 18                        ; attention_backward.py:408:18
	s_and_b32 vcc_lo, s2, s1
	.loc	1 405 9                         ; attention_backward.py:405:9
	buffer_store_b32 v54, v20, s[80:83], 0 offen
	v_add_nc_u32_e32 v20, 0x88, v0
	v_cndmask_b32_e32 v19, 0x80000000, v19, vcc_lo
	s_clause 0x2
	buffer_store_b32 v55, v22, s[80:83], 0 offen
	buffer_store_b32 v56, v23, s[80:83], 0 offen
	buffer_store_b32 v9, v19, s[80:83], 0 offen
	v_add_nc_u32_e32 v9, 0x90, v0
	v_cndmask_b32_e32 v19, 0x80000000, v20, vcc_lo
	v_add_nc_u32_e32 v20, 0x98, v0
	v_add_nc_u32_e32 v22, 0xa0, v0
	v_add_nc_u32_e32 v23, 0xa8, v0
	v_cndmask_b32_e32 v9, 0x80000000, v9, vcc_lo
	buffer_store_b32 v10, v19, s[80:83], 0 offen
	v_dual_cndmask_b32 v10, 0x80000000, v20 :: v_dual_cndmask_b32 v19, 0x80000000, v22
	v_cndmask_b32_e32 v20, 0x80000000, v23, vcc_lo
	buffer_store_b32 v11, v9, s[80:83], 0 offen
	v_add_nc_u32_e32 v9, 0xb0, v0
	s_clause 0x2
	buffer_store_b32 v12, v10, s[80:83], 0 offen
	buffer_store_b32 v13, v19, s[80:83], 0 offen
	buffer_store_b32 v14, v20, s[80:83], 0 offen
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
	buffer_store_b32 v15, v9, s[80:83], 0 offen
	buffer_store_b32 v16, v10, s[80:83], 0 offen
	buffer_store_b32 v1, v11, s[80:83], 0 offen
	buffer_store_b32 v2, v12, s[80:83], 0 offen
	buffer_store_b32 v3, v13, s[80:83], 0 offen
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
	buffer_store_b32 v4, v1, s[80:83], 0 offen
	buffer_store_b32 v5, v2, s[80:83], 0 offen
	buffer_store_b32 v6, v3, s[80:83], 0 offen
	buffer_store_b32 v7, v0, s[80:83], 0 offen
	buffer_store_b32 v8, v9, s[80:83], 0 offen
	.loc	1 60 5                          ; attention_backward.py:60:5
	s_endpgm
.Ltmp94:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_attention_bwd_dq_int4xint4_none_causal_local_outbfloat16_doutfloat32_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1
		.amdhsa_group_segment_fixed_size 0
		.amdhsa_private_segment_fixed_size 92
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
		.amdhsa_next_free_sgpr 96
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
	.size	amd_strix_halo_gfx1151_attention_bwd_dq_int4xint4_none_causal_local_outbfloat16_doutfloat32_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1, .Lfunc_end0-amd_strix_halo_gfx1151_attention_bwd_dq_int4xint4_none_causal_local_outbfloat16_doutfloat32_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_attention_bwd_dq_int4xint4_none_causal_local_outbfloat16_doutfloat32_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.num_vgpr, 256
	.set amd_strix_halo_gfx1151_attention_bwd_dq_int4xint4_none_causal_local_outbfloat16_doutfloat32_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.num_agpr, 0
	.set amd_strix_halo_gfx1151_attention_bwd_dq_int4xint4_none_causal_local_outbfloat16_doutfloat32_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.numbered_sgpr, 96
	.set amd_strix_halo_gfx1151_attention_bwd_dq_int4xint4_none_causal_local_outbfloat16_doutfloat32_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_attention_bwd_dq_int4xint4_none_causal_local_outbfloat16_doutfloat32_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.private_seg_size, 92
	.set amd_strix_halo_gfx1151_attention_bwd_dq_int4xint4_none_causal_local_outbfloat16_doutfloat32_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.uses_vcc, 1
	.set amd_strix_halo_gfx1151_attention_bwd_dq_int4xint4_none_causal_local_outbfloat16_doutfloat32_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.uses_flat_scratch, 1
	.set amd_strix_halo_gfx1151_attention_bwd_dq_int4xint4_none_causal_local_outbfloat16_doutfloat32_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_attention_bwd_dq_int4xint4_none_causal_local_outbfloat16_doutfloat32_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.has_recursion, 0
	.set amd_strix_halo_gfx1151_attention_bwd_dq_int4xint4_none_causal_local_outbfloat16_doutfloat32_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 15436
; TotalNumSgprs: 98
; NumVgprs: 256
; ScratchSize: 92
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 31
; NumSGPRsForWavesPerEU: 98
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
	.quad	.Ltmp32-.Lfunc_begin0
	.quad	.Ltmp33-.Lfunc_begin0
	.quad	.Ltmp35-.Lfunc_begin0
	.quad	.Ltmp36-.Lfunc_begin0
	.quad	.Ltmp37-.Lfunc_begin0
	.quad	.Ltmp38-.Lfunc_begin0
	.quad	.Ltmp41-.Lfunc_begin0
	.quad	.Ltmp42-.Lfunc_begin0
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
	.quad	.Ltmp57-.Lfunc_begin0
	.quad	.Ltmp58-.Lfunc_begin0
	.quad	.Ltmp59-.Lfunc_begin0
	.quad	.Ltmp60-.Lfunc_begin0
	.quad	.Ltmp61-.Lfunc_begin0
	.quad	.Ltmp62-.Lfunc_begin0
	.quad	.Ltmp63-.Lfunc_begin0
	.quad	.Ltmp64-.Lfunc_begin0
	.quad	.Ltmp67-.Lfunc_begin0
	.quad	.Ltmp88-.Lfunc_begin0
	.quad	.Ltmp89-.Lfunc_begin0
	.quad	.Ltmp90-.Lfunc_begin0
	.quad	.Ltmp91-.Lfunc_begin0
	.quad	.Ltmp92-.Lfunc_begin0
	.quad	.Ltmp93-.Lfunc_begin0
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
	.quad	.Ltmp27-.Lfunc_begin0
	.quad	.Ltmp28-.Lfunc_begin0
	.quad	.Ltmp29-.Lfunc_begin0
	.quad	.Ltmp30-.Lfunc_begin0
	.quad	.Ltmp31-.Lfunc_begin0
	.quad	.Ltmp32-.Lfunc_begin0
	.quad	.Ltmp33-.Lfunc_begin0
	.quad	.Ltmp34-.Lfunc_begin0
	.quad	.Ltmp36-.Lfunc_begin0
	.quad	.Ltmp37-.Lfunc_begin0
	.quad	.Ltmp39-.Lfunc_begin0
	.quad	.Ltmp40-.Lfunc_begin0
	.quad	.Ltmp42-.Lfunc_begin0
	.quad	.Ltmp43-.Lfunc_begin0
	.quad	.Ltmp48-.Lfunc_begin0
	.quad	.Ltmp49-.Lfunc_begin0
	.quad	.Ltmp52-.Lfunc_begin0
	.quad	.Ltmp53-.Lfunc_begin0
	.quad	.Ltmp56-.Lfunc_begin0
	.quad	.Ltmp57-.Lfunc_begin0
	.quad	.Ltmp60-.Lfunc_begin0
	.quad	.Ltmp61-.Lfunc_begin0
	.quad	.Ltmp65-.Lfunc_begin0
	.quad	.Ltmp66-.Lfunc_begin0
	.quad	.Ltmp88-.Lfunc_begin0
	.quad	.Ltmp89-.Lfunc_begin0
	.quad	.Ltmp90-.Lfunc_begin0
	.quad	.Ltmp91-.Lfunc_begin0
	.quad	.Ltmp92-.Lfunc_begin0
	.quad	.Ltmp93-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges2:
	.quad	.Ltmp68-.Lfunc_begin0
	.quad	.Ltmp69-.Lfunc_begin0
	.quad	.Ltmp70-.Lfunc_begin0
	.quad	.Ltmp71-.Lfunc_begin0
	.quad	.Ltmp72-.Lfunc_begin0
	.quad	.Ltmp74-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges3:
	.quad	.Ltmp68-.Lfunc_begin0
	.quad	.Ltmp69-.Lfunc_begin0
	.quad	.Ltmp70-.Lfunc_begin0
	.quad	.Ltmp71-.Lfunc_begin0
	.quad	.Ltmp72-.Lfunc_begin0
	.quad	.Ltmp73-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges4:
	.quad	.Ltmp75-.Lfunc_begin0
	.quad	.Ltmp76-.Lfunc_begin0
	.quad	.Ltmp77-.Lfunc_begin0
	.quad	.Ltmp78-.Lfunc_begin0
	.quad	.Ltmp79-.Lfunc_begin0
	.quad	.Ltmp80-.Lfunc_begin0
	.quad	.Ltmp81-.Lfunc_begin0
	.quad	.Ltmp82-.Lfunc_begin0
	.quad	.Ltmp83-.Lfunc_begin0
	.quad	.Ltmp85-.Lfunc_begin0
	.quad	.Ltmp86-.Lfunc_begin0
	.quad	.Ltmp87-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges5:
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
	.quad	.Ltmp86-.Lfunc_begin0
	.quad	.Ltmp87-.Lfunc_begin0
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
	.asciz	"amd_strix_halo_gfx1151_attention_bwd_dq_int4xint4_none_causal_local_outbfloat16_doutfloat32_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1"                        ; string offset=97 ; amd_strix_halo_gfx1151_attention_bwd_dq_int4xint4_none_causal_local_outbfloat16_doutfloat32_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1
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
    .name:           amd_strix_halo_gfx1151_attention_bwd_dq_int4xint4_none_causal_local_outbfloat16_doutfloat32_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1
    .private_segment_fixed_size: 92
    .sgpr_count:     98
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_attention_bwd_dq_int4xint4_none_causal_local_outbfloat16_doutfloat32_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     256
    .vgpr_spill_count: 22
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
