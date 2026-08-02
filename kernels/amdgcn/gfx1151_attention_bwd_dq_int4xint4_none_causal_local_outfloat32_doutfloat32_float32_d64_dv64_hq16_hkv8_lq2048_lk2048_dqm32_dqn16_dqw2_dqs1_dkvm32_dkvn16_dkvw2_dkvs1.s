	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_attention_bwd_dq_int4xint4_none_causal_local_outfloat32_doutfloat32_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1                          ; -- Begin function amd_strix_halo_gfx1151_attention_bwd_dq_int4xint4_none_causal_local_outfloat32_doutfloat32_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1
	.p2align	8
	.type	amd_strix_halo_gfx1151_attention_bwd_dq_int4xint4_none_causal_local_outfloat32_doutfloat32_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1,@function
amd_strix_halo_gfx1151_attention_bwd_dq_int4xint4_none_causal_local_outfloat32_doutfloat32_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1:                                 ; @amd_strix_halo_gfx1151_attention_bwd_dq_int4xint4_none_causal_local_outfloat32_doutfloat32_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1
.Lfunc_begin0:
	.file	1 "<repo>/src/amd_strix_halo_kernels" "attention_backward.py"
	.loc	1 60 0                          ; attention_backward.py:60:0
	.cfi_sections .debug_frame
	.cfi_startproc
; %bb.0:
	s_clause 0x1
	s_load_b64 s[70:71], s[0:1], 0x78
	s_load_b128 s[24:27], s[0:1], 0x18
.Ltmp0:
	.loc	1 124 31 prologue_end           ; attention_backward.py:124:31
	v_and_b32_e32 v74, 32, v0
	.loc	1 139 44                        ; attention_backward.py:139:44
	v_lshlrev_b32_e32 v1, 4, v0
	.loc	1 124 31                        ; attention_backward.py:124:31
	v_lshrrev_b32_e32 v2, 1, v0
	s_clause 0x1
	s_load_b128 s[8:11], s[0:1], 0x38
	s_load_b128 s[20:23], s[0:1], 0x0
	.loc	1 119 19                        ; attention_backward.py:119:19
	s_lshl_b32 s33, s2, 5
	.loc	1 133 26                        ; attention_backward.py:133:26
	s_lshl_b32 s34, s3, 11
	.loc	1 124 31                        ; attention_backward.py:124:31
	v_and_b32_e32 v73, 15, v0
	.loc	1 135 17                        ; attention_backward.py:135:17
	s_add_i32 s88, s33, s34
	.loc	1 124 31                        ; attention_backward.py:124:31
	v_lshrrev_b32_e32 v75, 1, v74
	.loc	1 139 44                        ; attention_backward.py:139:44
	v_and_b32_e32 v1, 16, v1
	.loc	1 135 17                        ; attention_backward.py:135:17
	v_or_b32_e32 v3, s88, v2
	.loc	1 124 21                        ; attention_backward.py:124:21
	v_or_b32_e32 v4, s33, v2
	.loc	1 124 31 is_stmt 0              ; attention_backward.py:124:31
	v_lshrrev_b32_e32 v100, 4, v0
	v_or_b32_e32 v99, v75, v73
	s_mov_b32 s7, 0x31027000
	s_mov_b32 s6, 0x7ffffffe
	.loc	1 128 21 is_stmt 1              ; attention_backward.py:128:21
	v_cmp_gt_i32_e32 vcc_lo, 0x800, v4
	.loc	1 168 40                        ; attention_backward.py:168:40
	v_lshlrev_b32_e32 v41, 2, v73
	.loc	1 135 17                        ; attention_backward.py:135:17
	s_waitcnt lgkmcnt(0)
	v_mad_u64_u32 v[2:3], null, s70, v3, v[1:2]
	.loc	1 139 44                        ; attention_backward.py:139:44
	v_cmp_gt_i32_e64 s2, s70, v1
	.loc	1 143 17                        ; attention_backward.py:143:17
	v_or_b32_e32 v1, s88, v99
	.loc	1 124 21                        ; attention_backward.py:124:21
	v_or_b32_e32 v3, s33, v99
	.loc	1 134 28                        ; attention_backward.py:134:28
	s_and_b32 s5, s21, 0xffff
	s_mov_b32 s4, s20
	.loc	1 139 22                        ; attention_backward.py:139:22
	s_and_b32 vcc_lo, vcc_lo, s2
	.loc	1 134 28                        ; attention_backward.py:134:28
	v_dual_cndmask_b32 v2, 0x80000000, v2 :: v_dual_lshlrev_b32 v1, 1, v1
	.loc	1 128 21                        ; attention_backward.py:128:21
	v_cmp_gt_i32_e64 s2, 0x800, v3
	.loc	1 124 21                        ; attention_backward.py:124:21
	v_or_b32_e32 v4, s33, v100
	.loc	1 167 13                        ; attention_backward.py:167:13
	s_lshl_b32 s12, s71, 2
	s_lshl_b32 s13, s71, 3
	.loc	1 134 28                        ; attention_backward.py:134:28
	buffer_load_b128 v[42:45], v2, s[4:7], 0 offen
	.loc	1 167 13                        ; attention_backward.py:167:13
	v_mul_lo_u32 v2, s71, v100
	.loc	1 142 31                        ; attention_backward.py:142:31
	v_cndmask_b32_e64 v1, 0x80000000, v1, s2
	s_and_b32 s5, s25, 0xffff
	s_mov_b32 s4, s24
	.loc	1 128 21                        ; attention_backward.py:128:21
	v_cmp_gt_i32_e32 vcc_lo, 0x800, v4
	.loc	1 167 13                        ; attention_backward.py:167:13
	s_mul_i32 s14, s71, 12
	.loc	1 142 31                        ; attention_backward.py:142:31
	buffer_load_u16 v7, v1, s[4:7], 0 offen
	.loc	1 167 13                        ; attention_backward.py:167:13
	s_mul_i32 s5, s71, s88
	.loc	1 168 40                        ; attention_backward.py:168:40
	v_cmp_gt_i32_e64 s4, s71, v41
	.loc	1 167 13                        ; attention_backward.py:167:13
	v_add3_u32 v1, s5, v41, v2
	s_lshl_b32 s15, s71, 4
	s_mul_i32 s16, s71, 20
	.loc	1 166 23                        ; attention_backward.py:166:23
	s_and_b32 s5, s9, 0xffff
	.loc	1 168 18                        ; attention_backward.py:168:18
	s_and_b32 vcc_lo, vcc_lo, s4
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_lshlrev_b32_e32 v2, 2, v1
	v_add_lshl_u32 v4, v1, s12, 2
	v_add_lshl_u32 v5, v1, s13, 2
	v_add_lshl_u32 v6, v1, s14, 2
	.loc	1 167 13                        ; attention_backward.py:167:13
	s_mul_i32 s12, s71, 24
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_cndmask_b32_e32 v2, 0x80000000, v2, vcc_lo
	v_cndmask_b32_e32 v4, 0x80000000, v4, vcc_lo
	v_add_lshl_u32 v8, v1, s15, 2
	s_mov_b32 s4, s8
	.loc	1 167 13                        ; attention_backward.py:167:13
	s_mul_i32 s8, s71, 28
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_add_lshl_u32 v9, v1, s16, 2
	v_add_lshl_u32 v10, v1, s12, 2
	v_cndmask_b32_e32 v5, 0x80000000, v5, vcc_lo
	v_add_lshl_u32 v1, v1, s8, 2
	s_clause 0x1
	buffer_load_b128 v[46:49], v2, s[4:7], 0 offen
	buffer_load_b128 v[50:53], v4, s[4:7], 0 offen
	v_cndmask_b32_e32 v6, 0x80000000, v6, vcc_lo
	v_dual_cndmask_b32 v8, 0x80000000, v8 :: v_dual_cndmask_b32 v9, 0x80000000, v9
	v_dual_cndmask_b32 v10, 0x80000000, v10 :: v_dual_cndmask_b32 v1, 0x80000000, v1
	s_clause 0x5
	buffer_load_b128 v[54:57], v5, s[4:7], 0 offen
	buffer_load_b128 v[64:67], v6, s[4:7], 0 offen
	buffer_load_b128 v[68:71], v8, s[4:7], 0 offen
	buffer_load_b128 v[77:80], v9, s[4:7], 0 offen
	buffer_load_b128 v[81:84], v10, s[4:7], 0 offen
	buffer_load_b128 v[85:88], v1, s[4:7], 0 offen
	.loc	1 171 28                        ; attention_backward.py:171:28
	s_and_b32 s5, s11, 0xffff
	s_mov_b32 s4, s10
	s_clause 0x7
	buffer_load_b128 v[37:40], v2, s[4:7], 0 offen
	buffer_load_b128 v[33:36], v4, s[4:7], 0 offen
	buffer_load_b128 v[29:32], v5, s[4:7], 0 offen
	buffer_load_b128 v[25:28], v6, s[4:7], 0 offen
	buffer_load_b128 v[21:24], v8, s[4:7], 0 offen
	buffer_load_b128 v[17:20], v9, s[4:7], 0 offen
	buffer_load_b128 v[13:16], v10, s[4:7], 0 offen
	buffer_load_b128 v[9:12], v1, s[4:7], 0 offen
	.loc	1 125 21                        ; attention_backward.py:125:21
	v_bfe_u32 v130, v0, 4, 1
	.loc	1 134 28                        ; attention_backward.py:134:28
	v_lshlrev_b32_e32 v1, 1, v0
	.loc	1 168 40                        ; attention_backward.py:168:40
	v_and_b32_e32 v76, 3, v0
	s_clause 0x2
	s_load_b32 s89, s[0:1], 0x80
	s_load_b64 s[6:7], s[0:1], 0x98
	s_load_b32 s8, s[0:1], 0xa0
	.loc	1 121 23                        ; attention_backward.py:121:23
	s_ashr_i32 s4, s3, 31
	.loc	1 134 28                        ; attention_backward.py:134:28
	v_and_b32_e32 v4, 16, v0
	v_and_or_b32 v5, v1, 30, v130
	.loc	1 121 23                        ; attention_backward.py:121:23
	s_lshr_b32 s4, s4, 28
	.loc	1 125 21                        ; attention_backward.py:125:21
	v_lshrrev_b32_e32 v2, 2, v0
	.loc	1 121 23                        ; attention_backward.py:121:23
	s_add_i32 s4, s3, s4
	.loc	1 125 21                        ; attention_backward.py:125:21
	v_or_b32_e32 v251, 2, v130
	.loc	1 134 28                        ; attention_backward.py:134:28
	v_lshlrev_b32_e32 v5, 2, v5
	.loc	1 122 22                        ; attention_backward.py:122:22
	s_and_b32 s9, s4, 0xfff0
	.loc	1 121 23                        ; attention_backward.py:121:23
	s_ashr_i32 s10, s4, 4
	.loc	1 134 28                        ; attention_backward.py:134:28
	v_cmp_eq_u32_e64 s4, 0, v4
	.loc	1 122 22                        ; attention_backward.py:122:22
	s_sub_i32 s3, s3, s9
	.loc	1 134 28                        ; attention_backward.py:134:28
	v_xor_b32_e32 v6, 4, v5
	.loc	1 123 19                        ; attention_backward.py:123:19
	s_bfe_u32 s9, s3, 0x10007
	.loc	1 125 21                        ; attention_backward.py:125:21
	v_or_b32_e32 v252, 4, v130
	.loc	1 123 19                        ; attention_backward.py:123:19
	s_add_i32 s3, s3, s9
	.loc	1 125 21                        ; attention_backward.py:125:21
	v_or_b32_e32 v254, 6, v130
	.loc	1 123 19                        ; attention_backward.py:123:19
	s_bfe_i32 s3, s3, 0x80000
	.loc	1 181 39                        ; attention_backward.py:181:39
	s_waitcnt lgkmcnt(0)
	s_sub_i32 s9, s33, s6
	.loc	1 129 27                        ; attention_backward.py:129:27
	v_add_nc_u32_e32 v3, s8, v3
	.loc	1 123 19                        ; attention_backward.py:123:19
	s_sext_i32_i16 s3, s3
	.loc	1 184 17                        ; attention_backward.py:184:17
	s_add_i32 s11, s8, s33
	.loc	1 123 19                        ; attention_backward.py:123:19
	s_ashr_i32 s3, s3, 1
	.loc	1 181 39                        ; attention_backward.py:181:39
	s_add_i32 s9, s9, s8
	.loc	1 197 29                        ; attention_backward.py:197:29
	s_lshl3_add_u32 s20, s10, s3
	.loc	1 184 17                        ; attention_backward.py:184:17
	s_add_i32 s3, s11, 32
	.loc	1 181 25                        ; attention_backward.py:181:25
	s_max_i32 s8, s9, 0
	.loc	1 184 17                        ; attention_backward.py:184:17
	s_add_i32 s9, s3, s7
	.loc	1 189 25                        ; attention_backward.py:189:25
	s_min_i32 s3, s3, 0x800
	.loc	1 182 25                        ; attention_backward.py:182:25
	s_min_i32 s9, s9, 0x800
	.loc	1 190 35                        ; attention_backward.py:190:35
	s_add_i32 s3, s3, 15
	.loc	1 187 35                        ; attention_backward.py:187:35
	s_add_i32 s9, s9, 15
	.loc	1 190 34                        ; attention_backward.py:190:34
	s_ashr_i32 s10, s3, 31
	.loc	1 187 34                        ; attention_backward.py:187:34
	s_ashr_i32 s11, s9, 31
	.loc	1 190 34                        ; attention_backward.py:190:34
	s_lshr_b32 s10, s10, 28
	.loc	1 187 34                        ; attention_backward.py:187:34
	s_lshr_b32 s11, s11, 28
	.loc	1 190 34                        ; attention_backward.py:190:34
	s_add_i32 s3, s3, s10
	.loc	1 187 34                        ; attention_backward.py:187:34
	s_add_i32 s9, s9, s11
	.loc	1 190 33                        ; attention_backward.py:190:33
	s_and_b32 s3, s3, -16
	.loc	1 187 33                        ; attention_backward.py:187:33
	s_and_b32 s9, s9, -16
	.loc	1 186 33                        ; attention_backward.py:186:33
	s_and_b32 s90, s8, 0x7ffffff0
	.loc	1 190 18                        ; attention_backward.py:190:18
	s_min_i32 s91, s9, s3
	.loc	1 197 28                        ; attention_backward.py:197:28
	s_lshl_b32 s8, s20, 11
	.loc	1 194 9                         ; attention_backward.py:194:9
	s_cmp_lt_i32 s90, s91
	.loc	1 125 21                        ; attention_backward.py:125:21
	v_or_b32_e32 v253, 8, v130
	v_or_b32_e32 v102, 10, v130
	v_or_b32_e32 v101, 12, v130
	v_or_b32_e32 v103, 14, v130
	.loc	1 194 9                         ; attention_backward.py:194:9
	s_cselect_b32 s21, -1, 0
	s_mov_b32 s5, 0
	s_and_b32 vcc_lo, exec_lo, s21
	.loc	1 134 28                        ; attention_backward.py:134:28
	s_waitcnt vmcnt(17)
	ds_bpermute_b32 v8, v5, v44
	ds_bpermute_b32 v63, v6, v42
	ds_bpermute_b32 v62, v6, v43
	ds_bpermute_b32 v61, v6, v44
	ds_bpermute_b32 v6, v6, v45
	.loc	1 176 24                        ; attention_backward.py:176:24
	s_waitcnt vmcnt(6)
	v_mul_f32_e32 v44, v51, v34
	.loc	1 134 28                        ; attention_backward.py:134:28
	ds_bpermute_b32 v60, v5, v42
	ds_bpermute_b32 v59, v5, v43
	.loc	1 176 24                        ; attention_backward.py:176:24
	v_dual_mul_f32 v42, v47, v38 :: v_dual_mul_f32 v43, v49, v40
	.loc	1 142 31                        ; attention_backward.py:142:31
	v_lshlrev_b32_e32 v7, 16, v7
	.loc	1 176 24                        ; attention_backward.py:176:24
	s_waitcnt vmcnt(5)
	v_mul_f32_e32 v47, v55, v30
	v_dual_mul_f32 v49, v57, v32 :: v_dual_fmac_f32 v44, v50, v33
.Ltmp1:
	.file	2 "<repo>/.venv/lib/python3.12/site-packages/triton/language" "standard.py"
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_dual_fmac_f32 v42, v46, v37 :: v_dual_fmac_f32 v43, v48, v39
.Ltmp2:
	.loc	1 176 24                        ; attention_backward.py:176:24
	s_waitcnt vmcnt(3)
	v_mul_f32_e32 v55, v69, v22
	s_waitcnt vmcnt(2)
	v_dual_mul_f32 v58, v78, v18 :: v_dual_lshlrev_b32 v131, 3, v76
	.loc	1 134 28                        ; attention_backward.py:134:28
	ds_bpermute_b32 v5, v5, v45
.Ltmp3:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_dual_add_f32 v42, v42, v43 :: v_dual_mul_f32 v57, v71, v24
.Ltmp4:
	.loc	1 176 24                        ; attention_backward.py:176:24
	v_mul_f32_e32 v45, v53, v36
	v_dual_mul_f32 v53, v67, v28 :: v_dual_fmac_f32 v58, v77, v17
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_3)
.Ltmp5:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_mov_b32_e32 v50, v42
.Ltmp6:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	s_waitcnt vmcnt(0)
	v_dual_fmac_f32 v57, v70, v23 :: v_dual_mul_f32 v72, v88, v12
	v_dual_fmac_f32 v47, v54, v29 :: v_dual_add_nc_u32 v4, s7, v3
.Ltmp7:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_mov_b32_dpp v50, v50 row_xmask:8 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_1)
.Ltmp8:
	.loc	1 176 24                        ; attention_backward.py:176:24
	v_dual_mul_f32 v51, v65, v26 :: v_dual_fmac_f32 v72, v87, v11
	.loc	1 200 27                        ; attention_backward.py:200:27
	v_cmp_gt_i32_e64 s3, s70, v131
	.loc	1 220 21                        ; attention_backward.py:220:21
	s_mul_f32 s7, s89, 0x3fb8aa3b
.Ltmp9:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_dual_add_f32 v42, v42, v50 :: v_dual_fmac_f32 v49, v56, v31
.Ltmp10:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_dual_mov_b32 v50, v42 :: v_dual_mul_f32 v65, v80, v20
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v50, v50 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp11:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_dual_fmac_f32 v55, v68, v21 :: v_dual_add_f32 v42, v42, v50
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp12:
	.loc	1 176 24                        ; attention_backward.py:176:24
	v_dual_mul_f32 v67, v82, v14 :: v_dual_add_f32 v46, v55, v57
	v_dual_mul_f32 v69, v84, v16 :: v_dual_mov_b32 v50, v42
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp13:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_dual_mov_b32 v54, v46 :: v_dual_fmac_f32 v69, v83, v15
	v_mov_b32_dpp v50, v50 row_xmask:2 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_mov_b32_dpp v54, v54 row_xmask:8 row_mask:0xf bank_mask:0xf
.Ltmp14:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_dual_fmac_f32 v45, v52, v35 :: v_dual_add_f32 v42, v42, v50
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_dual_add_f32 v46, v46, v54 :: v_dual_fmac_f32 v51, v64, v25
.Ltmp15:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_mov_b32_e32 v50, v42
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_mov_b32_e32 v54, v46
	v_mov_b32_dpp v50, v50 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_mov_b32_dpp v54, v54 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp16:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_e32 v43, v44, v45
	v_add_f32_e32 v44, v47, v49
	v_add_f32_e32 v46, v46, v54
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp17:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_mov_b32_e32 v52, v44
	v_mov_b32_e32 v54, v46
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_mov_b32_dpp v52, v52 row_xmask:8 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v54, v54 row_xmask:2 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp18:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_dual_add_f32 v44, v44, v52 :: v_dual_fmac_f32 v67, v81, v13
	v_add_f32_e32 v46, v46, v54
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp19:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_dual_mov_b32 v52, v44 :: v_dual_mul_f32 v71, v86, v10
.Ltmp20:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_dual_add_f32 v48, v67, v69 :: v_dual_fmac_f32 v53, v66, v27
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp21:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_mov_b32_e32 v54, v46
	v_mov_b32_dpp v52, v52 row_xmask:4 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp22:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_dual_fmac_f32 v71, v85, v9 :: v_dual_mov_b32 v56, v48
.Ltmp23:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_mov_b32_dpp v54, v54 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp24:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_e32 v44, v44, v52
	v_add_f32_e32 v49, v71, v72
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp25:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_mov_b32_dpp v56, v56 row_xmask:8 row_mask:0xf bank_mask:0xf
.Ltmp26:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_dual_fmac_f32 v65, v79, v19 :: v_dual_mov_b32 v52, v44
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_dual_add_f32 v48, v48, v56 :: v_dual_add_f32 v47, v58, v65
	v_lshlrev_b32_e32 v58, 3, v0
.Ltmp27:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_mov_b32_dpp v52, v52 row_xmask:2 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_dual_mov_b32 v57, v49 :: v_dual_mov_b32 v56, v48
	v_dual_mov_b32 v55, v47 :: v_dual_add_f32 v44, v44, v52
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mov_b32_dpp v57, v57 row_xmask:8 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v56, v56 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp28:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_e32 v45, v51, v53
.Ltmp29:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_mov_b32_e32 v51, v43
	v_mov_b32_dpp v55, v55 row_xmask:8 row_mask:0xf bank_mask:0xf
.Ltmp30:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_dual_add_f32 v49, v49, v57 :: v_dual_mov_b32 v52, v44
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_dual_add_f32 v48, v48, v56 :: v_dual_mov_b32 v53, v45
.Ltmp31:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_mov_b32_dpp v51, v51 row_xmask:8 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp32:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_e32 v47, v47, v55
.Ltmp33:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_dual_mov_b32 v57, v49 :: v_dual_mov_b32 v56, v48
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_mov_b32_dpp v53, v53 row_xmask:8 row_mask:0xf bank_mask:0xf
.Ltmp34:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_e32 v43, v43, v51
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp35:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_mov_b32_e32 v55, v47
	v_mov_b32_dpp v57, v57 row_xmask:4 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v56, v56 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp36:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_e32 v45, v45, v53
.Ltmp37:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_mov_b32_e32 v51, v43
	v_mov_b32_dpp v55, v55 row_xmask:4 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp38:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_dual_add_f32 v49, v49, v57 :: v_dual_add_f32 v48, v48, v56
.Ltmp39:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_mov_b32_e32 v53, v45
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_mov_b32_dpp v51, v51 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp40:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_e32 v47, v47, v55
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp41:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_dual_mov_b32 v57, v49 :: v_dual_mov_b32 v56, v48
	v_mov_b32_dpp v53, v53 row_xmask:4 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp42:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_e32 v43, v43, v51
.Ltmp43:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_mov_b32_e32 v55, v47
	s_delay_alu instid0(VALU_DEP_4)
	v_mov_b32_dpp v57, v57 row_xmask:2 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v52, v52 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp44:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_e32 v45, v45, v53
.Ltmp45:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_mov_b32_e32 v51, v43
	v_mov_b32_dpp v55, v55 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp46:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_e32 v49, v49, v57
.Ltmp47:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_mov_b32_dpp v56, v56 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_e32 v53, v45
	v_mov_b32_dpp v51, v51 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp48:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_e32 v47, v47, v55
.Ltmp49:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_mov_b32_e32 v57, v49
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_mov_b32_dpp v53, v53 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp50:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_e32 v43, v43, v51
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp51:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_mov_b32_e32 v55, v47
	v_mov_b32_dpp v57, v57 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp52:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_e32 v45, v45, v53
.Ltmp53:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_mov_b32_e32 v51, v43
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mov_b32_dpp v55, v55 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_e32 v53, v45
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_mov_b32_dpp v51, v51 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v53, v53 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp54:
	.loc	1 194 9                         ; attention_backward.py:194:9
	s_cbranch_vccnz .LBB0_2
; %bb.1:                                ; %.._crit_edge_crit_edge
	.loc	1 392 17                        ; attention_backward.py:392:17
	v_lshlrev_b32_e32 v79, 3, v0
	s_branch .LBB0_3
.LBB0_2:
	.loc	1 0 17 is_stmt 0                ; attention_backward.py:0:17
	s_mov_b32 s5, -1
                                        ; implicit-def: $vgpr79
.LBB0_3:                                ; %Flow143
	s_clause 0x3
	s_load_b64 s[68:69], s[0:1], 0x58
	s_load_b128 s[28:31], s[0:1], 0x48
	s_load_b64 s[72:73], s[0:1], 0x10
	s_load_b64 s[76:77], s[0:1], 0x28
	v_dual_mul_f32 v138, s7, v7 :: v_dual_and_b32 v77, 48, v0
	s_waitcnt lgkmcnt(0)
	v_cndmask_b32_e64 v119, v63, v60, s4
	v_cndmask_b32_e64 v121, v60, v63, s4
	v_cndmask_b32_e64 v120, v62, v59, s4
	v_cndmask_b32_e64 v122, v59, v62, s4
	v_cndmask_b32_e64 v123, v61, v8, s4
	v_cndmask_b32_e64 v125, v8, v61, s4
	v_cndmask_b32_e64 v124, v6, v5, s4
	v_cndmask_b32_e64 v126, v5, v6, s4
	v_subrev_nc_u32_e32 v139, s6, v3
	v_or_b32_e32 v135, s8, v2
	v_or_b32_e32 v132, s8, v130
	v_or_b32_e32 v136, s8, v251
	v_or_b32_e32 v137, s8, v252
	v_or_b32_e32 v117, s8, v254
	v_or_b32_e32 v148, s8, v253
	v_or_b32_e32 v128, s8, v102
	v_or_b32_e32 v162, s8, v101
	v_or_b32_e32 v166, s8, v103
	v_min_i32_e32 v149, v3, v4
	v_lshrrev_b32_e32 v78, 1, v77
	s_and_not1_b32 vcc_lo, exec_lo, s5
	s_cbranch_vccnz .LBB0_7
; %bb.4:                                ; %.lr.ph
	.loc	1 223 21 is_stmt 1              ; attention_backward.py:223:21
	v_dual_mov_b32 v60, v138 :: v_dual_and_b32 v1, 24, v1
	v_dual_mov_b32 v62, v138 :: v_dual_mov_b32 v81, 0xff800000
	s_mov_b32 s39, 0x31027000
	s_delay_alu instid0(VALU_DEP_2)
	v_lshl_or_b32 v2, v73, 5, v1
	v_xor_b32_e32 v1, v58, v78
	v_mov_b32_e32 v61, v138
	s_mov_b32 s38, 0x7ffffffe
	s_and_b32 s37, s23, 0xffff
	v_xor_b32_e32 v3, 8, v2
	v_xor_b32_e32 v4, 16, v2
	v_xor_b32_e32 v5, 24, v2
	v_add_nc_u32_e32 v63, 0, v1
	v_mov_b32_e32 v1, 0
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_dual_mov_b32 v59, 0 :: v_dual_add_nc_u32 v66, 0, v4
	v_add_nc_u32_e32 v64, 0, v2
	v_dual_mov_b32 v4, v1 :: v_dual_add_nc_u32 v65, 0, v3
	v_dual_mov_b32 v6, v1 :: v_dual_add_nc_u32 v67, 0, v5
	v_mov_b32_e32 v2, v1
	v_mov_b32_e32 v3, v1
	v_mov_b32_e32 v5, v1
	v_mov_b32_e32 v7, v1
	v_mov_b32_e32 v8, v1
	s_mov_b32 s36, s22
	s_and_b32 s41, s27, 0xffff
	s_mov_b32 s40, s26
	s_mov_b32 s42, s38
	s_mov_b32 s43, s39
	s_mov_b32 s24, 0x76543210
	s_mov_b32 s25, s90
.LBB0_5:                                ; =>This Inner Loop Header: Depth=1
	.loc	1 0 21 is_stmt 0                ; attention_backward.py:0:21
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 199 21 is_stmt 1              ; attention_backward.py:199:21
	v_add_nc_u32_e32 v68, s25, v135
	.loc	1 214 33                        ; attention_backward.py:214:33
	v_add_lshl_u32 v79, v117, s25, 1
	v_add_lshl_u32 v72, v137, s25, 1
	v_add_lshl_u32 v71, v136, s25, 1
	v_add_lshl_u32 v70, v132, s25, 1
	.loc	1 199 21                        ; attention_backward.py:199:21
	v_mad_u64_u32 v[68:69], null, v68, s70, v[131:132]
	.loc	1 214 33                        ; attention_backward.py:214:33
	v_add_lshl_u32 v84, v166, s25, 1
	v_add_lshl_u32 v80, v148, s25, 1
	v_add_lshl_u32 v82, v128, s25, 1
	v_add_lshl_u32 v83, v162, s25, 1
	v_mov_b32_e32 v98, v81
	.loc	1 195 27                        ; attention_backward.py:195:27
	v_or_b32_e32 v81, s25, v101
	.loc	1 198 28                        ; attention_backward.py:198:28
	v_cndmask_b32_e64 v68, 0x80000000, v68, s3
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 241 26                        ; attention_backward.py:241:26
	v_cmp_ge_i32_e64 s13, v81, v139
	.loc	1 198 28                        ; attention_backward.py:198:28
	buffer_load_b64 v[68:69], v68, s[36:39], 0 offen
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 241 17                        ; attention_backward.py:241:17
	v_cmp_ge_i32_e64 s17, v149, v81
	.loc	1 198 28                        ; attention_backward.py:198:28
	s_waitcnt vmcnt(0)
	ds_store_b64 v63, v[68:69]
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 214 33                        ; attention_backward.py:214:33
	s_clause 0x7
	buffer_load_u16 v91, v79, s[40:43], 0 offen
	buffer_load_u16 v72, v72, s[40:43], 0 offen
	buffer_load_u16 v92, v71, s[40:43], 0 offen
	buffer_load_u16 v93, v70, s[40:43], 0 offen
	buffer_load_u16 v94, v84, s[40:43], 0 offen
	buffer_load_u16 v95, v83, s[40:43], 0 offen
	buffer_load_u16 v96, v82, s[40:43], 0 offen
	buffer_load_u16 v97, v80, s[40:43], 0 offen
	.loc	1 195 27                        ; attention_backward.py:195:27
	v_or_b32_e32 v68, s25, v130
	v_or_b32_e32 v69, s25, v251
	v_or_b32_e32 v70, s25, v252
	v_or_b32_e32 v71, s25, v254
	v_or_b32_e32 v79, s25, v253
	.loc	1 241 26                        ; attention_backward.py:241:26
	v_cmp_ge_i32_e64 s7, v68, v139
	v_cmp_ge_i32_e64 s6, v69, v139
	v_cmp_ge_i32_e64 s5, v70, v139
	v_cmp_ge_i32_e32 vcc_lo, v71, v139
	.loc	1 241 17 is_stmt 0              ; attention_backward.py:241:17
	v_cmp_ge_i32_e64 s8, v149, v71
	v_cmp_ge_i32_e64 s9, v149, v70
	v_cmp_ge_i32_e64 s10, v149, v69
	v_cmp_ge_i32_e64 s11, v149, v68
	.loc	1 198 28 is_stmt 1              ; attention_backward.py:198:28
	ds_load_b64 v[68:69], v64
	ds_load_b64 v[70:71], v65
	ds_load_b64 v[87:88], v66
	ds_load_b64 v[89:90], v67
	.loc	1 195 27                        ; attention_backward.py:195:27
	v_or_b32_e32 v80, s25, v102
	v_or_b32_e32 v82, s25, v103
	.loc	1 241 26                        ; attention_backward.py:241:26
	v_cmp_ge_i32_e64 s15, v79, v139
	.loc	1 241 17 is_stmt 0              ; attention_backward.py:241:17
	v_cmp_ge_i32_e64 s19, v149, v79
	.loc	1 242 17 is_stmt 1              ; attention_backward.py:242:17
	s_and_b32 s35, s8, vcc_lo
	.loc	1 241 26                        ; attention_backward.py:241:26
	v_cmp_ge_i32_e64 s14, v80, v139
	v_cmp_ge_i32_e64 s12, v82, v139
	.loc	1 241 17 is_stmt 0              ; attention_backward.py:241:17
	v_cmp_ge_i32_e64 s16, v149, v82
	v_cmp_ge_i32_e64 s18, v149, v80
	.loc	1 242 17 is_stmt 1              ; attention_backward.py:242:17
	s_and_b32 s5, s9, s5
	s_and_b32 s6, s10, s6
	s_and_b32 s7, s11, s7
	s_and_b32 s8, s16, s12
	s_and_b32 s9, s17, s13
	s_and_b32 s10, s18, s14
	s_and_b32 s11, s19, s15
	.loc	1 204 29                        ; attention_backward.py:204:29
	s_waitcnt lgkmcnt(3)
	v_wmma_i32_16x16x16_iu4 v[79:86], v[68:69], v[119:120], v[1:8] neg_lo:[1,1,0]
	.loc	1 242 17                        ; attention_backward.py:242:17
	s_and_b32 vcc_lo, s2, s5
	s_and_b32 s5, s2, s6
	s_and_b32 s6, s2, s7
	.loc	1 204 29                        ; attention_backward.py:204:29
	s_waitcnt lgkmcnt(2)
	v_wmma_i32_16x16x16_iu4 v[79:86], v[70:71], v[123:124], v[79:86] neg_lo:[1,1,0]
	.loc	1 242 17                        ; attention_backward.py:242:17
	s_and_b32 s7, s2, s8
	s_and_b32 s8, s2, s9
	s_and_b32 s9, s2, s10
	s_and_b32 s10, s2, s11
	.loc	1 204 29                        ; attention_backward.py:204:29
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu4 v[79:86], v[87:88], v[121:122], v[79:86] neg_lo:[1,1,0]
	.loc	1 242 17                        ; attention_backward.py:242:17
	s_and_b32 s11, s2, s35
	.loc	1 194 9                         ; attention_backward.py:194:9
	s_add_i32 s25, s25, 16
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	s_cmp_lt_i32 s25, s91
	.loc	1 204 29                        ; attention_backward.py:204:29
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[79:86], v[89:90], v[125:126], v[79:86] neg_lo:[1,1,0]
	.loc	1 223 21                        ; attention_backward.py:223:21
	v_cvt_f32_i32_e32 v71, v82
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cvt_f32_i32_e32 v82, v86
	v_cvt_f32_i32_e32 v68, v79
	s_delay_alu instid0(VALU_DEP_4)
	v_cvt_f32_i32_e32 v69, v80
	v_cvt_f32_i32_e32 v70, v81
	v_cvt_f32_i32_e32 v79, v83
	v_cvt_f32_i32_e32 v80, v84
	v_cvt_f32_i32_e32 v81, v85
	v_mul_f32_e32 v71, v62, v71
	v_mul_f32_e32 v82, v62, v82
	v_dual_mul_f32 v70, v61, v70 :: v_dual_mul_f32 v79, v138, v79
	v_dual_mul_f32 v69, v60, v69 :: v_dual_mul_f32 v68, v138, v68
	v_dual_mul_f32 v81, v61, v81 :: v_dual_mul_f32 v80, v60, v80
	.loc	1 214 33                        ; attention_backward.py:214:33
	s_waitcnt vmcnt(7)
	v_lshlrev_b32_e32 v83, 16, v91
	s_waitcnt vmcnt(6)
	v_lshlrev_b32_e32 v72, 16, v72
	s_waitcnt vmcnt(4)
	v_lshlrev_b32_e32 v85, 16, v93
	s_waitcnt vmcnt(3)
	v_lshlrev_b32_e32 v86, 16, v94
	v_lshlrev_b32_e32 v84, 16, v92
	s_waitcnt vmcnt(2)
	v_lshlrev_b32_e32 v87, 16, v95
	.loc	1 223 21                        ; attention_backward.py:223:21
	s_waitcnt vmcnt(1)
	v_dual_mul_f32 v71, v71, v83 :: v_dual_lshlrev_b32 v88, 16, v96
	s_waitcnt vmcnt(0)
	v_dual_mul_f32 v70, v70, v72 :: v_dual_lshlrev_b32 v89, 16, v97
	v_mul_f32_e32 v68, v68, v85
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 257 22                        ; attention_backward.py:257:22
	v_cndmask_b32_e64 v71, 0xff800000, v71, s11
	.loc	1 223 21                        ; attention_backward.py:223:21
	v_dual_mul_f32 v72, v79, v89 :: v_dual_mul_f32 v79, v80, v88
	v_dual_mul_f32 v80, v81, v87 :: v_dual_mul_f32 v81, v82, v86
	v_mul_f32_e32 v69, v69, v84
	.loc	1 257 22                        ; attention_backward.py:257:22
	v_cndmask_b32_e64 v68, 0xff800000, v68, s6
	s_delay_alu instid0(VALU_DEP_4)
	v_cndmask_b32_e64 v79, 0xff800000, v79, s9
	v_cndmask_b32_e32 v70, 0xff800000, v70, vcc_lo
	v_cndmask_b32_e64 v82, 0xff800000, v81, s7
	v_cndmask_b32_e64 v69, 0xff800000, v69, s5
	v_cndmask_b32_e64 v72, 0xff800000, v72, s10
	v_cndmask_b32_e64 v80, 0xff800000, v80, s8
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp55:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention_backward.py:258:25 ] ]
	v_max3_f32 v81, v68, v69, v70
	v_max3_f32 v83, v71, v72, v79
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_max_f32_e32 v84, v80, v82
	v_max3_f32 v81, v81, v83, v84
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp56:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention_backward.py:258:25 ]
	v_permlanex16_b32 v83, v81, s24, 0xfedcba98 op_sel:[1,0]
.Ltmp57:
	.loc	1 259 20                        ; attention_backward.py:259:20
	v_max3_f32 v81, v98, v81, v83
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 261 58                        ; attention_backward.py:261:58
	v_sub_f32_e32 v80, v80, v81
	v_sub_f32_e32 v82, v82, v81
	v_sub_f32_e32 v68, v68, v81
	v_sub_f32_e32 v69, v69, v81
	v_sub_f32_e32 v71, v71, v81
	.loc	1 261 45 is_stmt 0              ; attention_backward.py:261:45
	v_exp_f32_e32 v80, v80
	v_exp_f32_e32 v82, v82
	.loc	1 261 58                        ; attention_backward.py:261:58
	v_sub_f32_e32 v72, v72, v81
	v_sub_f32_e32 v79, v79, v81
	.loc	1 261 45                        ; attention_backward.py:261:45
	v_exp_f32_e32 v68, v68
	v_exp_f32_e32 v69, v69
	v_exp_f32_e32 v71, v71
	v_exp_f32_e32 v72, v72
	v_exp_f32_e32 v79, v79
	.loc	1 261 29                        ; attention_backward.py:261:29
	v_cndmask_b32_e64 v80, 0, v80, s8
	v_cndmask_b32_e64 v82, 0, v82, s7
	.loc	1 261 58                        ; attention_backward.py:261:58
	v_sub_f32_e32 v70, v70, v81
	.loc	1 261 29                        ; attention_backward.py:261:29
	v_cndmask_b32_e64 v68, 0, v68, s6
	v_cndmask_b32_e64 v69, 0, v69, s5
	s_delay_alu instid0(TRANS32_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cndmask_b32_e64 v71, 0, v71, s11
	.loc	1 261 45                        ; attention_backward.py:261:45
	v_exp_f32_e32 v70, v70
	s_delay_alu instid0(TRANS32_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	.loc	1 261 29                        ; attention_backward.py:261:29
	v_cndmask_b32_e64 v72, 0, v72, s10
	v_cndmask_b32_e64 v79, 0, v79, s9
.Ltmp58:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:262:33 ] ]
	v_add_f32_e32 v68, v68, v69
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
.Ltmp59:
	.loc	1 261 29                        ; attention_backward.py:261:29
	v_cndmask_b32_e32 v70, 0, v70, vcc_lo
	.loc	1 260 21                        ; attention_backward.py:260:21
	v_cmp_neq_f32_e32 vcc_lo, 0xff800000, v98
.Ltmp60:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:262:33 ] ]
	v_add_f32_e32 v69, v70, v71
	v_add_f32_e32 v70, v72, v79
	v_dual_add_f32 v71, v80, v82 :: v_dual_sub_f32 v72, v98, v81
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_dual_add_f32 v68, v68, v69 :: v_dual_add_f32 v69, v70, v71
.Ltmp61:
	.loc	1 260 57                        ; attention_backward.py:260:57
	v_exp_f32_e32 v70, v72
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_dual_mov_b32 v71, v59 :: v_dual_add_f32 v68, v68, v69
.Ltmp62:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:262:33 ]
	v_permlanex16_b32 v69, v68, s24, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(TRANS32_DEP_1) | instid1(VALU_DEP_1)
.Ltmp63:
	.loc	1 260 21                        ; attention_backward.py:260:21
	v_dual_cndmask_b32 v70, 0, v70 :: v_dual_add_f32 v59, v68, v69
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 262 19                        ; attention_backward.py:262:19
	v_fmac_f32_e32 v59, v71, v70
	.loc	1 194 9                         ; attention_backward.py:194:9
	s_cbranch_scc1 .LBB0_5
; %bb.6:                                ; %Flow142
	.loc	1 0 9 is_stmt 0                 ; attention_backward.py:0:9
	v_mov_b32_e32 v79, v58
	s_branch .LBB0_8
.LBB0_7:
	v_mov_b32_e32 v81, 0xff800000
	v_mov_b32_e32 v59, 0
.LBB0_8:                                ; %Flow144
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 264 43 is_stmt 1              ; attention_backward.py:264:43
	v_cmp_gt_f32_e32 vcc_lo, 0x800000, v59
.Ltmp64:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_dual_add_f32 v66, v43, v51 :: v_dual_and_b32 v3, 31, v0
	s_load_b32 s92, s[0:1], 0x74
.Ltmp65:
	.loc	1 392 17                        ; attention_backward.py:392:17
	v_mov_b16_e32 v7.h, 0
	.loc	1 264 43                        ; attention_backward.py:264:43
	v_cndmask_b32_e64 v2, 0, 32, vcc_lo
	v_cndmask_b32_e64 v1, 0, 0x42000000, vcc_lo
	.loc	1 264 26 is_stmt 0              ; attention_backward.py:264:26
	v_cmp_lt_f32_e32 vcc_lo, 0, v59
	.loc	1 124 21 is_stmt 1              ; attention_backward.py:124:21
	v_or_b32_e32 v4, s33, v3
	.loc	1 392 17                        ; attention_backward.py:392:17
	v_mov_b16_e32 v7.l, v38.h
	.loc	1 264 43                        ; attention_backward.py:264:43
	v_ldexp_f32 v2, v59, v2
	.loc	1 266 9                         ; attention_backward.py:266:9
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 128 21                        ; attention_backward.py:128:21
	v_cmp_gt_i32_e64 s0, 0x800, v4
.Ltmp66:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_dual_add_f32 v65, v42, v50 :: v_dual_and_b32 v80, 7, v0
.Ltmp67:
	.loc	1 264 43                        ; attention_backward.py:264:43
	v_log_f32_e32 v2, v2
.Ltmp68:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_dual_add_f32 v67, v44, v52 :: v_dual_add_f32 v68, v45, v53
.Ltmp69:
	.loc	1 267 9                         ; attention_backward.py:267:9
	v_lshl_add_u32 v83, v77, 1, 0
.Ltmp70:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_dual_add_f32 v69, v46, v54 :: v_dual_add_f32 v70, v47, v55
	v_dual_add_f32 v71, v48, v56 :: v_dual_add_f32 v72, v49, v57
.Ltmp71:
	.loc	1 266 9                         ; attention_backward.py:266:9
	s_and_b32 s81, s29, 0xffff
	s_delay_alu instid0(TRANS32_DEP_1)
	v_dual_mov_b32 v8, 0 :: v_dual_sub_f32 v1, v2, v1
	s_mov_b32 s83, 0x31027000
	s_mov_b32 s82, 0x7ffffffe
	s_mov_b32 s80, s28
	.loc	1 392 17                        ; attention_backward.py:392:17
	v_mov_b16_e32 v5.l, v37.h
	.loc	1 264 37                        ; attention_backward.py:264:37
	v_add_f32_e32 v1, v81, v1
	.loc	1 267 9                         ; attention_backward.py:267:9
	v_lshl_add_u32 v81, v76, 5, 0
	.loc	1 392 17                        ; attention_backward.py:392:17
	v_mov_b16_e32 v5.h, v7.h
	v_mov_b16_e32 v4.l, v39.h
	v_mov_b16_e32 v4.h, v7.h
	.loc	1 264 17                        ; attention_backward.py:264:17
	v_cndmask_b32_e32 v150, 0, v1, vcc_lo
	.loc	1 266 9                         ; attention_backward.py:266:9
	v_lshl_add_u32 v1, v3, 2, 0
	v_cmp_eq_u32_e32 vcc_lo, 0, v74
	.loc	1 266 18 is_stmt 0              ; attention_backward.py:266:18
	v_or_b32_e32 v3, s34, v3
	.loc	1 392 17 is_stmt 1              ; attention_backward.py:392:17
	v_cmp_o_f32_e64 s5, v37, v37
	v_and_b32_e32 v4, 1, v4
	v_mov_b16_e32 v6.l, v33.h
	.loc	1 266 9                         ; attention_backward.py:266:9
	s_and_b32 vcc_lo, vcc_lo, s0
	v_add_lshl_u32 v3, v3, s33, 2
	v_add_nc_u32_e32 v2, 0, v41
	.loc	1 392 17                        ; attention_backward.py:392:17
	v_cmp_o_f32_e64 s0, v39, v39
	v_mov_b16_e32 v6.h, v7.h
	v_add3_u32 v4, v39, v4, 0x7fff
	.loc	1 266 9                         ; attention_backward.py:266:9
	v_cndmask_b32_e32 v3, 0x80000000, v3, vcc_lo
	v_lshl_add_u32 v2, v74, 1, v2
	.loc	1 392 17                        ; attention_backward.py:392:17
	v_cmp_o_f32_e32 vcc_lo, v40, v40
	v_cmp_o_f32_e64 s1, v38, v38
	v_dual_mov_b32 v55, v8 :: v_dual_lshlrev_b32 v82, 4, v80
	.loc	1 266 9                         ; attention_backward.py:266:9
	ds_store_b32 v2, v150
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b32 v1, v1
	.loc	1 267 9                         ; attention_backward.py:267:9
	v_and_b32_e32 v2, 28, v0
	v_mov_b32_e32 v56, v8
	v_mov_b32_e32 v53, v8
	v_mov_b32_e32 v54, v8
	s_delay_alu instid0(VALU_DEP_4)
	v_dual_mov_b32 v51, v8 :: v_dual_add_nc_u32 v2, v81, v2
	v_mov_b32_e32 v52, v8
	v_mov_b32_e32 v50, v8
	v_mov_b32_e32 v49, v8
	v_mov_b32_e32 v64, v8
	v_mov_b32_e32 v63, v8
	v_mov_b32_e32 v61, v8
	v_mov_b32_e32 v62, v8
	v_mov_b32_e32 v59, v8
	v_mov_b32_e32 v60, v8
	v_mov_b32_e32 v58, v8
	v_mov_b32_e32 v57, v8
	.loc	1 266 9                         ; attention_backward.py:266:9
	s_waitcnt lgkmcnt(0)
	buffer_store_b32 v1, v3, s[80:83], 0 offen
	.loc	1 267 9                         ; attention_backward.py:267:9
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v83, v[65:68]
	ds_store_b128 v83, v[69:72] offset:16
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b32 v41, v2
	.loc	1 392 17                        ; attention_backward.py:392:17
	v_and_b32_e32 v1, 1, v7
	v_mov_b16_e32 v7.l, v40.h
	v_and_b32_e32 v2, 1, v5
	.loc	1 267 9                         ; attention_backward.py:267:9
	s_and_b32 s81, s31, 0xffff
	s_mov_b32 s80, s30
	.loc	1 392 17                        ; attention_backward.py:392:17
	v_add3_u32 v1, v38, v1, 0x7fff
	v_and_b32_e32 v5, 1, v7
	v_mov_b16_e32 v7.l, v34.h
	v_add3_u32 v2, v37, v2, 0x7fff
	v_cndmask_b16 v2.l, 0x7fff, v4.h, s0
	v_cndmask_b16 v1.h, 0x7fff, v1.h, s1
	v_add3_u32 v5, v40, v5, 0x7fff
	v_and_b32_e32 v37, 1, v7
	v_cndmask_b16 v1.l, 0x7fff, v2.h, s5
	v_mov_b16_e32 v5.l, v35.h
	v_mov_b16_e32 v7.l, v36.h
	v_cndmask_b16 v2.h, 0x7fff, v5.h, vcc_lo
	v_mov_b16_e32 v5.h, v7.h
	v_cmp_o_f32_e32 vcc_lo, v34, v34
	.loc	1 267 9                         ; attention_backward.py:267:9
	s_waitcnt lgkmcnt(0)
	buffer_store_b32 v41, v3, s[80:83], 0 offen
	.loc	1 392 17                        ; attention_backward.py:392:17
	v_and_b32_e32 v3, 1, v6
	v_add3_u32 v6, v34, v37, 0x7fff
	v_and_b32_e32 v4, 1, v5
	v_and_b32_e32 v5, 1, v7
	v_mov_b16_e32 v7.l, v30.h
	v_add3_u32 v34, v33, v3, 0x7fff
	v_cndmask_b16 v3.h, 0x7fff, v6.h, vcc_lo
	v_cmp_o_f32_e32 vcc_lo, v33, v33
	v_add3_u32 v6, v35, v4, 0x7fff
	v_add3_u32 v4, v36, v5, 0x7fff
	v_cmp_o_f32_e64 s1, v35, v35
	v_mov_b16_e32 v5.l, v29.h
	v_mov_b16_e32 v5.h, v7.h
	v_and_b32_e32 v33, 1, v7
	v_cndmask_b16 v3.l, 0x7fff, v34.h, vcc_lo
	v_cndmask_b16 v4.l, 0x7fff, v6.h, s1
	v_cmp_o_f32_e32 vcc_lo, v30, v30
	v_and_b32_e32 v5, 1, v5
	v_add3_u32 v6, v30, v33, 0x7fff
	v_mov_b16_e32 v7.l, v32.h
	v_cmp_o_f32_e64 s0, v36, v36
	v_mov_b16_e32 v30.l, v31.h
	v_mov_b16_e32 v30.h, v7.h
	v_add3_u32 v33, v29, v5, 0x7fff
	v_cndmask_b16 v5.h, 0x7fff, v6.h, vcc_lo
	v_and_b32_e32 v6, 1, v7
	v_mov_b16_e32 v7.l, v26.h
	v_cndmask_b16 v4.h, 0x7fff, v4.h, s0
	v_cmp_o_f32_e32 vcc_lo, v29, v29
	v_and_b32_e32 v29, 1, v30
	v_mov_b16_e32 v30.l, v25.h
	v_add3_u32 v6, v32, v6, 0x7fff
	v_cmp_o_f32_e64 s0, v32, v32
	v_and_b32_e32 v32, 1, v7
	v_mov_b16_e32 v7.l, v28.h
	v_cndmask_b16 v5.l, 0x7fff, v33.h, vcc_lo
	v_and_b32_e32 v30, 1, v30
	v_add3_u32 v29, v31, v29, 0x7fff
	v_cndmask_b16 v6.h, 0x7fff, v6.h, s0
	v_cmp_o_f32_e32 vcc_lo, v31, v31
	v_add3_u32 v31, v26, v32, 0x7fff
	v_cmp_o_f32_e64 s0, v26, v26
	v_mov_b16_e32 v26.l, v27.h
	v_mov_b16_e32 v26.h, v7.h
	v_and_b32_e32 v32, 1, v7
	v_add3_u32 v30, v25, v30, 0x7fff
	v_cmp_o_f32_e64 s1, v25, v25
	v_cndmask_b16 v6.l, 0x7fff, v29.h, vcc_lo
	v_and_b32_e32 v26, 1, v26
	v_add3_u32 v29, v28, v32, 0x7fff
	v_cmp_o_f32_e32 vcc_lo, v28, v28
	v_mov_b16_e32 v7.l, v22.h
	v_cndmask_b16 v25.l, 0x7fff, v30.h, s1
	v_mov_b16_e32 v28.l, v21.h
	v_mov_b16_e32 v28.h, v7.h
	v_add3_u32 v30, v27, v26, 0x7fff
	v_cndmask_b16 v26.h, 0x7fff, v29.h, vcc_lo
	v_cmp_o_f32_e32 vcc_lo, v27, v27
	v_and_b32_e32 v27, 1, v7
	v_mov_b16_e32 v29.l, v23.h
	v_mov_b16_e32 v29.h, v7.h
	v_mov_b16_e32 v7.l, v24.h
	v_cndmask_b16 v25.h, 0x7fff, v31.h, s0
	v_and_b32_e32 v28, 1, v28
	v_add3_u32 v27, v22, v27, 0x7fff
	v_cmp_o_f32_e64 s0, v22, v22
	v_cndmask_b16 v26.l, 0x7fff, v30.h, vcc_lo
	v_and_b32_e32 v29, 1, v29
	v_and_b32_e32 v30, 1, v7
	v_mov_b16_e32 v7.l, v18.h
	v_add3_u32 v28, v21, v28, 0x7fff
	v_cndmask_b16 v22.h, 0x7fff, v27.h, s0
	v_cmp_o_f32_e32 vcc_lo, v21, v21
	v_add3_u32 v21, v23, v29, 0x7fff
	v_add3_u32 v27, v24, v30, 0x7fff
	v_cmp_o_f32_e64 s0, v24, v24
	v_cmp_o_f32_e64 s1, v23, v23
	v_mov_b16_e32 v24.l, v17.h
	v_mov_b16_e32 v24.h, v7.h
	v_and_b32_e32 v29, 1, v7
	v_cndmask_b16 v22.l, 0x7fff, v28.h, vcc_lo
	v_cndmask_b16 v23.l, 0x7fff, v21.h, s1
	v_cmp_o_f32_e32 vcc_lo, v18, v18
	v_and_b32_e32 v21, 1, v24
	v_add3_u32 v24, v18, v29, 0x7fff
	v_mov_b16_e32 v7.l, v20.h
	v_mov_b16_e32 v18.l, v19.h
	v_mov_b16_e32 v18.h, v7.h
	v_cndmask_b16 v23.h, 0x7fff, v27.h, s0
	v_add3_u32 v21, v17, v21, 0x7fff
	v_cndmask_b16 v27.h, 0x7fff, v24.h, vcc_lo
	v_and_b32_e32 v24, 1, v7
	v_cmp_o_f32_e32 vcc_lo, v17, v17
	v_and_b32_e32 v17, 1, v18
	v_mov_b16_e32 v18.l, v13.h
	v_mov_b16_e32 v7.l, v14.h
	v_add3_u32 v24, v20, v24, 0x7fff
	v_cmp_o_f32_e64 s0, v20, v20
	v_cndmask_b16 v27.l, 0x7fff, v21.h, vcc_lo
	v_and_b32_e32 v18, 1, v18
	v_add3_u32 v17, v19, v17, 0x7fff
	v_and_b32_e32 v20, 1, v7
	v_cmp_o_f32_e32 vcc_lo, v19, v19
	v_mov_b16_e32 v19.l, v15.h
	v_mov_b16_e32 v19.h, v7.h
	v_mov_b16_e32 v7.l, v16.h
	v_cndmask_b16 v28.h, 0x7fff, v24.h, s0
	v_add3_u32 v18, v13, v18, 0x7fff
	v_add3_u32 v20, v14, v20, 0x7fff
	v_cmp_o_f32_e64 s0, v14, v14
	v_cmp_o_f32_e64 s1, v13, v13
	v_and_b32_e32 v14, 1, v19
	v_cndmask_b16 v28.l, 0x7fff, v17.h, vcc_lo
	v_and_b32_e32 v17, 1, v7
	v_mov_b16_e32 v7.l, v10.h
	v_cndmask_b16 v13.h, 0x7fff, v20.h, s0
	v_cndmask_b16 v13.l, 0x7fff, v18.h, s1
	v_add3_u32 v18, v15, v14, 0x7fff
	v_mov_b16_e32 v14.l, v9.h
	v_mov_b16_e32 v14.h, v7.h
	v_add3_u32 v17, v16, v17, 0x7fff
	v_cmp_o_f32_e32 vcc_lo, v16, v16
	v_cmp_o_f32_e64 s0, v15, v15
	v_and_b32_e32 v15, 1, v7
	v_mov_b16_e32 v19.l, v11.h
	v_mov_b16_e32 v7.l, v12.h
	v_and_b32_e32 v16, 1, v14
	v_cndmask_b16 v14.h, 0x7fff, v17.h, vcc_lo
	v_add3_u32 v15, v10, v15, 0x7fff
	v_and_b32_e32 v17, 1, v19
	v_and_b32_e32 v7, 1, v7
	v_cmp_o_f32_e32 vcc_lo, v10, v10
	v_cmp_o_f32_e64 s1, v12, v12
	v_cmp_o_f32_e64 s5, v11, v11
	v_add3_u32 v17, v11, v17, 0x7fff
	v_add3_u32 v7, v12, v7, 0x7fff
	v_xor_b32_e32 v11, v79, v77
	v_cndmask_b16 v14.l, 0x7fff, v18.h, s0
	v_add3_u32 v16, v9, v16, 0x7fff
	v_cmp_o_f32_e64 s0, v9, v9
	v_cndmask_b16 v9.h, 0x7fff, v15.h, vcc_lo
	v_cndmask_b16 v10.h, 0x7fff, v7.h, s1
	v_add_nc_u32_e32 v7, 0, v11
	v_lshlrev_b32_e32 v12, 7, v73
	v_lshlrev_b32_e32 v15, 6, v74
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_2addr_stride64_b64 v7, v[1:2], v[5:6] offset1:2
	v_xad_u32 v11, 0x240, v11, 0
	v_or3_b32 v1, v12, v15, v82
	v_cndmask_b16 v9.l, 0x7fff, v16.h, s0
	v_cndmask_b16 v10.l, 0x7fff, v17.h, s5
	ds_store_2addr_stride64_b64 v7, v[22:23], v[13:14] offset0:4 offset1:6
	ds_store_2addr_stride64_b64 v11, v[3:4], v[25:26] offset1:2
	ds_store_2addr_stride64_b64 v11, v[27:28], v[9:10] offset0:4 offset1:6
	v_add_nc_u32_e32 v2, 0, v1
	v_xad_u32 v3, v1, 16, 0
	v_xad_u32 v4, v1, 32, 0
	v_xad_u32 v5, v1, 48, 0
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[106:109], v2
	ds_load_b128 v[110:113], v3
	v_xad_u32 v2, v1, 64, 0
	v_xad_u32 v3, 0x50, v1, 0
	ds_load_b128 v[33:36], v4
	ds_load_b128 v[37:40], v5
	v_xad_u32 v4, 0x60, v1, 0
	v_xad_u32 v1, 0x70, v1, 0
	ds_load_b128 v[41:44], v2
	ds_load_b128 v[45:48], v3
	ds_load_b128 v[140:143], v4
	ds_load_b128 v[144:147], v1
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
	.loc	1 270 9                         ; attention_backward.py:270:9
	s_and_not1_b32 vcc_lo, exec_lo, s21
	.loc	1 396 43                        ; attention_backward.py:396:43
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v83, v[65:68]
	ds_store_b128 v83, v[69:72] offset:16
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_cbranch_vccnz .LBB0_12
; %bb.9:                                ; %.lr.ph81
	.loc	1 0 43 is_stmt 0                ; attention_backward.py:0:43
	v_dual_mov_b32 v9, 0x7632 :: v_dual_lshlrev_b32 v2, 4, v76
	v_mov_b32_e32 v65, 0
	.loc	1 168 40 is_stmt 1              ; attention_backward.py:168:40
	v_lshlrev_b32_e32 v7, 3, v80
	v_lshlrev_b32_e32 v11, 9, v76
	v_bfe_i32 v12, v0, 3, 1
	v_cndmask_b32_e64 v9, 0x3276, v9, s4
	v_dual_mov_b32 v58, v65 :: v_dual_and_b32 v1, 12, v0
	v_mov_b32_e32 v6, v7
	.loc	1 310 21                        ; attention_backward.py:310:21
	v_cmp_gt_i32_e32 vcc_lo, s92, v2
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_lshl_or_b32 v9, v9, 8, v9
	v_dual_mov_b32 v60, v65 :: v_dual_lshlrev_b32 v3, 1, v1
	.loc	1 396 43                        ; attention_backward.py:396:43
	v_add3_u32 v5, v81, v75, v1
	v_dual_mov_b32 v62, v65 :: v_dual_lshlrev_b32 v1, 5, v1
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_dual_mov_b32 v50, v65 :: v_dual_and_b32 v9, 0x760076, v9
	.loc	1 125 21                        ; attention_backward.py:125:21
	v_lshrrev_b32_e32 v4, 3, v0
	v_or3_b32 v13, v1, v11, v2
	v_dual_mov_b32 v64, v65 :: v_dual_and_b32 v1, 0x420, v12
	v_lshl_or_b32 v2, v77, 3, v82
	v_lshl_or_b32 v8, v73, 5, v3
	v_xor_b32_e32 v3, v79, v78
	.loc	1 168 40                        ; attention_backward.py:168:40
	scratch_store_b64 off, v[6:7], off offset:32 ; 8-byte Folded Spill
	v_cmp_gt_i32_e64 s0, s71, v7
	v_xor_b32_e32 v12, v2, v1
	v_lshl_or_b32 v2, v9, 4, v9
	.loc	1 396 43                        ; attention_backward.py:396:43
	ds_load_b32 v152, v5
	v_xor_b32_e32 v5, 8, v8
	v_xor_b32_e32 v6, 16, v8
	v_xor_b32_e32 v7, 24, v8
	v_lshl_or_b32 v4, s20, 10, v4
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v8, off offset:40
	scratch_store_b32 off, v13, off offset:48
	v_mov_b32_e32 v8, 0x5410
	v_and_b32_e32 v157, 0x7060706, v2
	v_add_nc_u32_e32 v2, 0, v3
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v4, off offset:44
	scratch_store_b32 off, v12, off offset:52
	v_dual_mov_b32 v57, 0 :: v_dual_and_b32 v4, 24, v0
	v_cndmask_b32_e64 v8, 0x1054, v8, s4
	scratch_store_b32 off, v2, off offset:56 ; 4-byte Folded Spill
	v_dual_mov_b32 v49, 0 :: v_dual_add_nc_u32 v2, 0, v5
	v_dual_mov_b32 v59, v65 :: v_dual_lshlrev_b32 v10, 1, v4
	v_lshl_or_b32 v4, v4, 6, v82
	v_lshl_or_b32 v8, v8, 8, v8
	scratch_store_b32 off, v2, off offset:60 ; 4-byte Folded Spill
	v_dual_mov_b32 v51, v65 :: v_dual_add_nc_u32 v2, 0, v6
	v_xor_b32_e32 v4, v4, v10
	v_dual_mov_b32 v61, v65 :: v_dual_and_b32 v8, 0x540054, v8
	v_lshl_add_u32 v10, v74, 2, 0
	scratch_store_b32 off, v2, off offset:64 ; 4-byte Folded Spill
	v_dual_mov_b32 v53, v65 :: v_dual_add_nc_u32 v2, 0, v7
	v_lshl_or_b32 v1, v8, 4, v8
	v_xor_b32_e32 v12, 0x210, v12
	v_xor_b32_e32 v11, 16, v13
	scratch_store_b32 off, v2, off offset:68 ; 4-byte Folded Spill
	v_dual_mov_b32 v55, v65 :: v_dual_add_nc_u32 v2, v10, v4
	v_xor_b32_e32 v8, 32, v13
	v_xor_b32_e32 v9, 48, v13
	v_dual_mov_b32 v63, v65 :: v_dual_and_b32 v156, 0x5040504, v1
	v_dual_mov_b32 v54, v65 :: v_dual_lshlrev_b32 v1, 5, v0
	scratch_store_b32 off, v2, off offset:72 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v2, 0, v12
	v_lshl_add_u32 v0, v73, 1, 0
	v_dual_mov_b32 v56, v65 :: v_dual_add_nc_u32 v163, 0, v11
	v_add_nc_u32_e32 v164, 0, v8
	v_dual_mov_b32 v10, v65 :: v_dual_add_nc_u32 v165, 0, v9
	v_dual_mov_b32 v12, v65 :: v_dual_add_nc_u32 v167, 0, v1
	v_dual_mov_b32 v52, v65 :: v_dual_mov_b32 v9, 0
	v_mov_b32_e32 v11, v65
	scratch_store_b32 off, v2, off offset:76 ; 4-byte Folded Spill
	v_mov_b32_e32 v13, v65
	v_dual_mov_b32 v14, v65 :: v_dual_mov_b32 v1, 0
	v_mov_b32_e32 v15, v65
	v_mov_b32_e32 v16, v65
	v_mov_b32_e32 v2, v65
	v_mov_b32_e32 v3, v65
	v_mov_b32_e32 v4, v65
	v_mov_b32_e32 v5, v65
	v_mov_b32_e32 v6, v65
	v_mov_b32_e32 v7, v65
	v_mov_b32_e32 v8, v65
	.loc	1 371 21                        ; attention_backward.py:371:21
	s_lshl_b32 s93, s20, 7
	s_and_b32 s81, s23, 0xffff
	s_and_b32 s85, s27, 0xffff
	s_and_b32 s73, s73, 0xffff
	s_and_b32 s77, s77, 0xffff
	s_mov_b32 s80, s22
	s_mov_b32 s84, s26
	s_mov_b32 s86, s82
	s_mov_b32 s87, s83
	s_mov_b32 s74, s82
	s_mov_b32 s75, s83
	s_mov_b32 s94, 0x76543210
	s_mov_b32 s78, s82
	s_mov_b32 s79, s83
	.loc	1 270 9                         ; attention_backward.py:270:9
	s_clause 0x3                            ; 40-byte Folded Spill
	scratch_store_b32 off, v100, off offset:84
	scratch_store_b32 off, v99, off offset:80
	scratch_store_b128 off, v[140:143], off
	scratch_store_b128 off, v[144:147], off offset:16
.LBB0_10:                               ; =>This Inner Loop Header: Depth=1
	.loc	1 274 28                        ; attention_backward.py:274:28
	scratch_load_b32 v17, off, off offset:40 ; 4-byte Folded Reload
	.loc	1 347 36                        ; attention_backward.py:347:36
	s_lshr_b32 s1, s90, 1
	.loc	1 280 29                        ; attention_backward.py:280:29
	v_dual_mov_b32 v66, v65 :: v_dual_add_nc_u32 v87, s90, v135
	.loc	1 376 24                        ; attention_backward.py:376:24
	s_lshr_b32 s4, s90, 4
	.loc	1 280 29                        ; attention_backward.py:280:29
	v_mov_b32_e32 v69, v65
	.loc	1 374 21                        ; attention_backward.py:374:21
	s_add_i32 s4, s4, s93
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 275 21                        ; attention_backward.py:275:21
	v_mad_u64_u32 v[73:74], null, v87, s70, v[131:132]
	v_dual_mov_b32 v147, v48 :: v_dual_lshlrev_b32 v88, 1, v87
	v_mov_b32_e32 v144, v45
	.loc	1 290 33                        ; attention_backward.py:290:33
	v_add_lshl_u32 v76, v132, s90, 1
	.loc	1 280 29                        ; attention_backward.py:280:29
	v_dual_mov_b32 v71, v65 :: v_dual_mov_b32 v146, v47
	.loc	1 274 28                        ; attention_backward.py:274:28
	v_cndmask_b32_e64 v73, 0x80000000, v73, s3
	v_dual_mov_b32 v145, v46 :: v_dual_mov_b32 v142, v43
	v_dual_mov_b32 v143, v44 :: v_dual_mov_b32 v140, v41
	v_dual_mov_b32 v141, v42 :: v_dual_mov_b32 v48, v40
	.loc	1 290 33                        ; attention_backward.py:290:33
	v_add_lshl_u32 v77, v136, s90, 1
	v_add_lshl_u32 v78, v137, s90, 1
	v_add_lshl_u32 v79, v117, s90, 1
	v_dual_mov_b32 v47, v39 :: v_dual_mov_b32 v46, v38
	v_dual_mov_b32 v45, v37 :: v_dual_mov_b32 v44, v36
	v_dual_mov_b32 v43, v35 :: v_dual_mov_b32 v42, v34
	v_mov_b32_e32 v41, v33
	v_dual_mov_b32 v33, v106 :: v_dual_mov_b32 v36, v109
	v_add_lshl_u32 v80, v148, s90, 1
	v_add_lshl_u32 v81, v128, s90, 1
	v_add_lshl_u32 v82, v162, s90, 1
	v_add_lshl_u32 v83, v166, s90, 1
	v_dual_mov_b32 v34, v107 :: v_dual_mov_b32 v35, v108
	v_dual_mov_b32 v38, v111 :: v_dual_mov_b32 v37, v110
	v_dual_mov_b32 v40, v113 :: v_dual_mov_b32 v39, v112
	v_mov_b32_e32 v118, v117
	.loc	1 274 28                        ; attention_backward.py:274:28
	v_mov_b16_e32 v86.h, 0
	.loc	1 280 29                        ; attention_backward.py:280:29
	v_mov_b32_e32 v68, v65
	v_mov_b32_e32 v67, v65
	v_mov_b32_e32 v70, v65
	v_mov_b32_e32 v26, v251
	.loc	1 362 30                        ; attention_backward.py:362:30
	v_mov_b16_e32 v87.h, v86.h
	.loc	1 309 31                        ; attention_backward.py:309:31
	v_mov_b16_e32 v90.h, v86.h
	.loc	1 362 30                        ; attention_backward.py:362:30
	v_mov_b16_e32 v92.h, v86.h
	v_mov_b16_e32 v93.h, v86.h
	v_mov_b16_e32 v95.h, v86.h
	.loc	1 309 31                        ; attention_backward.py:309:31
	v_mov_b16_e32 v94.h, v86.h
	v_mov_b16_e32 v96.h, v86.h
	.loc	1 362 30                        ; attention_backward.py:362:30
	v_mov_b16_e32 v74.h, v86.h
	.loc	1 309 31                        ; attention_backward.py:309:31
	v_mov_b16_e64 v191.h, v86.h
	v_mov_b16_e32 v91.h, v86.h
	v_mov_b16_e32 v109.h, v86.h
	v_mov_b16_e64 v182.h, v86.h
	v_mov_b16_e64 v215.h, v86.h
	s_waitcnt vmcnt(0)
	v_dual_mov_b32 v28, v253 :: v_dual_add_nc_u32 v75, 0, v17
	.loc	1 393 17                        ; attention_backward.py:393:17
	scratch_load_b32 v17, off, off offset:48 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v84, 0, v17
	.loc	1 382 31                        ; attention_backward.py:382:31
	scratch_load_b32 v17, off, off offset:52 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v85, 0, v17
	.loc	1 351 21                        ; attention_backward.py:351:21
	scratch_load_b32 v17, off, off offset:44 ; 4-byte Folded Reload
	.loc	1 280 29                        ; attention_backward.py:280:29
	s_waitcnt vmcnt(0)
	v_dual_mov_b32 v72, v65 :: v_dual_add_nc_u32 v89, s1, v17
	scratch_load_b64 v[17:18], off, off offset:32 ; 8-byte Folded Reload
	.loc	1 374 21                        ; attention_backward.py:374:21
	s_mul_i32 s1, s4, s71
	.loc	1 351 21                        ; attention_backward.py:351:21
	s_waitcnt vmcnt(0)
	v_mad_u64_u32 v[97:98], null, v89, s71, v[17:18]
	.loc	1 373 36                        ; attention_backward.py:373:36
	v_add_lshl_u32 v99, s1, v17, 1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cndmask_b32_e64 v89, 0x80000000, v99, s0
	.loc	1 350 32                        ; attention_backward.py:350:32
	v_cndmask_b32_e64 v99, 0x80000000, v97, s0
	.loc	1 274 28                        ; attention_backward.py:274:28
	buffer_load_b64 v[97:98], v73, s[80:83], 0 offen
	s_waitcnt lgkmcnt(0)
	s_barrier
	scratch_load_b32 v17, off, off offset:56 ; 4-byte Folded Reload
	.loc	1 304 28                        ; attention_backward.py:304:28
	s_waitcnt vmcnt(1)
	v_and_b16 v74.l, v97.h, 15
	.loc	1 304 27 is_stmt 0              ; attention_backward.py:304:27
	v_bfe_u32 v100, v97, 8, 4
	.loc	1 274 28 is_stmt 1              ; attention_backward.py:274:28
	v_lshrrev_b32_e32 v101, 8, v98
	s_waitcnt vmcnt(0)
	ds_store_b64 v17, v[97:98]
	s_waitcnt lgkmcnt(0)
	s_barrier
	scratch_load_b32 v17, off, off offset:60 ; 4-byte Folded Reload
	.loc	1 373 36                        ; attention_backward.py:373:36
	buffer_load_b128 v[105:108], v89, s[76:79], 0 offen
	.loc	1 350 32                        ; attention_backward.py:350:32
	buffer_load_b64 v[110:111], v99, s[72:75], 0 offen
	.loc	1 290 33                        ; attention_backward.py:290:33
	s_clause 0x8
	buffer_load_u16 v192, v88, s[84:87], 0 offen
	buffer_load_u16 v173, v76, s[84:87], 0 offen
	buffer_load_u16 v172, v77, s[84:87], 0 offen
	buffer_load_u16 v171, v78, s[84:87], 0 offen
	buffer_load_u16 v170, v79, s[84:87], 0 offen
	buffer_load_u16 v169, v80, s[84:87], 0 offen
	buffer_load_u16 v168, v81, s[84:87], 0 offen
	buffer_load_u16 v73, v82, s[84:87], 0 offen
	buffer_load_u16 v76, v83, s[84:87], 0 offen
	.loc	1 274 28                        ; attention_backward.py:274:28
	ds_load_b64 v[78:79], v75
	.loc	1 304 27                        ; attention_backward.py:304:27
	v_bfe_u32 v82, v97, 16, 4
	.loc	1 274 28                        ; attention_backward.py:274:28
	v_lshrrev_b32_e32 v89, 8, v97
	.loc	1 306 36                        ; attention_backward.py:306:36
	v_cmp_lt_u16_e64 s1, 7, v74.l
	.loc	1 274 28                        ; attention_backward.py:274:28
	v_lshrrev_b64 v[80:81], 24, v[97:98]
	.loc	1 305 30                        ; attention_backward.py:305:30
	v_lshrrev_b16 v77.l, 4, v97.l
	.loc	1 306 50                        ; attention_backward.py:306:50
	v_or_b32_e32 v176, -16, v82
	.loc	1 274 28                        ; attention_backward.py:274:28
	v_bfe_i32 v81, v97, 0, 8
	.loc	1 304 27                        ; attention_backward.py:304:27
	v_bfe_u32 v102, v98, 8, 4
	.loc	1 274 28                        ; attention_backward.py:274:28
	v_lshrrev_b32_e32 v200, 24, v98
	.loc	1 306 50                        ; attention_backward.py:306:50
	v_or_b32_e32 v179, -16, v100
	.loc	1 306 27 is_stmt 0              ; attention_backward.py:306:27
	v_cndmask_b32_e64 v176, v82, v176, s1
	.loc	1 304 27 is_stmt 1              ; attention_backward.py:304:27
	v_bfe_u32 v103, v98, 24, 4
	.loc	1 304 28 is_stmt 0              ; attention_backward.py:304:28
	v_and_b16 v77.h, v97.l, 15
	.loc	1 305 30 is_stmt 1              ; attention_backward.py:305:30
	v_and_b16 v86.l, v77.l, 15
	.loc	1 307 37                        ; attention_backward.py:307:37
	v_mov_b16_e32 v74.l, v81.l
	.loc	1 306 50                        ; attention_backward.py:306:50
	v_or_b32_e32 v180, -16, v102
	.loc	1 304 28                        ; attention_backward.py:304:28
	v_and_b16 v77.l, v200.l, 15
	.loc	1 305 30                        ; attention_backward.py:305:30
	v_lshrrev_b16 v88.h, 4, v101.l
	.loc	1 306 50                        ; attention_backward.py:306:50
	v_or_b32_e32 v181, -16, v103
	.loc	1 274 28                        ; attention_backward.py:274:28
	v_bfe_i32 v183, v89, 0, 8
	.loc	1 306 36                        ; attention_backward.py:306:36
	v_cmp_lt_u16_e64 s6, 7, v77.h
	.loc	1 274 28                        ; attention_backward.py:274:28
	v_bfe_i32 v189, v80, 0, 8
	.loc	1 305 30                        ; attention_backward.py:305:30
	v_lshrrev_b16 v89.h, 4, v80.l
	.loc	1 304 28                        ; attention_backward.py:304:28
	v_and_b16 v77.h, v80.l, 15
	.loc	1 307 52                        ; attention_backward.py:307:52
	v_or_b32_e32 v80, -16, v86
	.loc	1 307 37 is_stmt 0              ; attention_backward.py:307:37
	v_cmp_gt_i16_e64 s7, 0, v74.l
	.loc	1 274 28 is_stmt 1              ; attention_backward.py:274:28
	v_alignbit_b32 v104, v98, v97, 24
	v_mov_b16_e32 v87.l, v97.h
	v_mov_b16_e32 v90.l, v98.h
	.loc	1 304 27                        ; attention_backward.py:304:27
	v_bfe_u32 v99, v98, 16, 4
	.loc	1 305 30                        ; attention_backward.py:305:30
	v_lshrrev_b16 v88.l, 4, v98.l
	.loc	1 274 28                        ; attention_backward.py:274:28
	v_bfe_i32 v174, v98, 0, 8
	v_bfe_i32 v185, v87, 0, 8
	v_bfe_i32 v187, v90, 0, 8
	.loc	1 306 50                        ; attention_backward.py:306:50
	v_or_b32_e32 v178, -16, v99
	.loc	1 305 30                        ; attention_backward.py:305:30
	v_lshrrev_b16 v81.l, 4, v89.l
	.loc	1 307 37                        ; attention_backward.py:307:37
	v_mov_b16_e64 v82.l, v183.l
	v_mov_b16_e64 v74.l, v185.l
	v_mov_b16_e64 v90.l, v189.l
	.loc	1 311 21                        ; attention_backward.py:311:21
	v_cvt_f32_i32_e32 v193, v176
	.loc	1 360 76                        ; attention_backward.py:360:76
	s_waitcnt vmcnt(9)
	v_and_b16 v82.h, v111.l, 15
	.loc	1 290 33                        ; attention_backward.py:290:33
	s_waitcnt vmcnt(8)
	v_lshlrev_b32_e32 v209, 16, v192
	.loc	1 304 27                        ; attention_backward.py:304:27
	v_and_b32_e32 v83, 15, v98
	.loc	1 350 32                        ; attention_backward.py:350:32
	v_lshrrev_b32_e32 v210, 8, v111
	v_mov_b16_e32 v87.l, v110.h
	.loc	1 360 76                        ; attention_backward.py:360:76
	v_and_b16 v81.h, v111.h, 15
	.loc	1 361 29                        ; attention_backward.py:361:29
	v_bfe_u32 v192, v111, 24, 4
	.loc	1 306 50                        ; attention_backward.py:306:50
	v_or_b32_e32 v177, -16, v83
	.loc	1 274 28                        ; attention_backward.py:274:28
	ds_load_b64 v[112:113], v17
	scratch_load_b32 v17, off, off offset:64 ; 4-byte Folded Reload
	.loc	1 304 28                        ; attention_backward.py:304:28
	v_and_b16 v75.l, v98.l, 15
	v_and_b16 v75.h, v98.h, 15
	.loc	1 305 28                        ; attention_backward.py:305:28
	v_bfe_u32 v98, v98, 20, 4
	.loc	1 350 32                        ; attention_backward.py:350:32
	v_bfe_i32 v224, v210, 0, 8
	.loc	1 361 29                        ; attention_backward.py:361:29
	v_bfe_u32 v211, v111, 8, 4
	.loc	1 306 36                        ; attention_backward.py:306:36
	v_cmp_lt_u16_e64 s4, 7, v75.l
	.loc	1 304 28                        ; attention_backward.py:304:28
	v_and_b16 v75.l, v89.l, 15
	.loc	1 306 36                        ; attention_backward.py:306:36
	v_cmp_lt_u16_e64 s5, 7, v75.h
	.loc	1 304 28                        ; attention_backward.py:304:28
	v_and_b16 v75.h, v101.l, 15
	.loc	1 274 28                        ; attention_backward.py:274:28
	v_bfe_i32 v101, v101, 0, 8
	.loc	1 306 27                        ; attention_backward.py:306:27
	v_cndmask_b32_e64 v83, v83, v177, s4
	.loc	1 306 36 is_stmt 0              ; attention_backward.py:306:36
	v_cmp_lt_u16_e64 s1, 7, v75.l
	.loc	1 307 37 is_stmt 1              ; attention_backward.py:307:37
	v_mov_b16_e64 v75.l, v187.l
	.loc	1 307 52 is_stmt 0              ; attention_backward.py:307:52
	v_or_b32_e32 v188, -16, v98
	.loc	1 307 37                        ; attention_backward.py:307:37
	v_mov_b16_e32 v109.l, v101.l
	.loc	1 306 27 is_stmt 1              ; attention_backward.py:306:27
	v_cndmask_b32_e64 v99, v99, v178, s5
	v_cndmask_b32_e64 v100, v100, v179, s1
	.loc	1 306 36 is_stmt 0              ; attention_backward.py:306:36
	v_cmp_lt_u16_e64 s1, 7, v75.h
	.loc	1 311 21 is_stmt 1              ; attention_backward.py:311:21
	v_cvt_f32_i32_e32 v194, v83
	.loc	1 307 37                        ; attention_backward.py:307:37
	v_mov_b16_e64 v89.l, v174.l
	.loc	1 311 21                        ; attention_backward.py:311:21
	v_cvt_f32_i32_e32 v199, v99
	v_cvt_f32_i32_e32 v201, v100
	.loc	1 306 27                        ; attention_backward.py:306:27
	v_cndmask_b32_e64 v101, v102, v180, s1
	.loc	1 306 36 is_stmt 0              ; attention_backward.py:306:36
	v_cmp_lt_u16_e64 s1, 7, v77.l
	.loc	1 274 28 is_stmt 1              ; attention_backward.py:274:28
	v_bfe_i32 v174, v200, 0, 8
	.loc	1 350 32                        ; attention_backward.py:350:32
	v_bfe_i32 v212, v111, 0, 8
	.loc	1 311 21                        ; attention_backward.py:311:21
	v_mul_f32_e32 v201, v201, v209
	v_cvt_f32_i32_e32 v202, v101
	.loc	1 306 27                        ; attention_backward.py:306:27
	v_cndmask_b32_e64 v102, v103, v181, s1
	.loc	1 306 36 is_stmt 0              ; attention_backward.py:306:36
	v_cmp_lt_u16_e64 s1, 7, v77.h
	.loc	1 307 28 is_stmt 1              ; attention_backward.py:307:28
	v_cndmask_b32_e64 v77, v86, v80, s7
	.loc	1 307 37 is_stmt 0              ; attention_backward.py:307:37
	v_mov_b16_e64 v182.l, v174.l
	.loc	1 362 32 is_stmt 1              ; attention_backward.py:362:32
	v_lshrrev_b16 v86.l, 4, v111.l
	.loc	1 311 21                        ; attention_backward.py:311:21
	v_cvt_f32_i32_e32 v203, v102
	.loc	1 350 32                        ; attention_backward.py:350:32
	v_mov_b16_e32 v92.l, v111.h
	.loc	1 311 21                        ; attention_backward.py:311:21
	v_cvt_f32_i32_e32 v205, v77
	.loc	1 304 27                        ; attention_backward.py:304:27
	v_and_b32_e32 v104, 15, v104
	.loc	1 362 32                        ; attention_backward.py:362:32
	v_and_b16 v93.l, v86.l, 15
	v_lshrrev_b16 v86.l, 4, v210.l
	.loc	1 362 30 is_stmt 0              ; attention_backward.py:362:30
	v_bfe_u32 v213, v111, 20, 4
	.loc	1 311 21 is_stmt 1              ; attention_backward.py:311:21
	v_mul_f32_e32 v205, v205, v209
	.loc	1 306 50                        ; attention_backward.py:306:50
	v_or_b32_e32 v177, -16, v104
	.loc	1 363 38                        ; attention_backward.py:363:38
	v_cmp_lt_u16_e64 s5, 7, v81.h
	.loc	1 363 54 is_stmt 0              ; attention_backward.py:363:54
	v_or_b32_e32 v221, -16, v192
	v_or_b32_e32 v222, -16, v211
	.loc	1 364 39 is_stmt 1              ; attention_backward.py:364:39
	v_mov_b16_e64 v91.l, v212.l
	.loc	1 306 27                        ; attention_backward.py:306:27
	v_cndmask_b32_e64 v80, v104, v177, s1
	.loc	1 307 37                        ; attention_backward.py:307:37
	v_cmp_gt_i16_e64 s1, 0, v74.l
	.loc	1 360 76                        ; attention_backward.py:360:76
	v_and_b16 v74.l, v110.l, 15
	.loc	1 350 32                        ; attention_backward.py:350:32
	v_bfe_i32 v212, v92, 0, 8
	.loc	1 364 56                        ; attention_backward.py:364:56
	v_or_b32_e32 v225, -16, v213
	.loc	1 311 21                        ; attention_backward.py:311:21
	v_cvt_f32_i32_e32 v206, v80
	.loc	1 362 32                        ; attention_backward.py:362:32
	v_and_b16 v92.l, v86.l, 15
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 311 21                        ; attention_backward.py:311:21
	v_mul_f32_e32 v206, v206, v209
	.loc	1 304 27                        ; attention_backward.py:304:27
	v_and_b32_e32 v175, 15, v97
	.loc	1 305 28                        ; attention_backward.py:305:28
	v_bfe_u32 v97, v97, 20, 4
	.loc	1 309 31                        ; attention_backward.py:309:31
	v_cndmask_b32_e32 v206, 0, v206, vcc_lo
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 306 50                        ; attention_backward.py:306:50
	v_or_b32_e32 v184, -16, v175
	.loc	1 307 52                        ; attention_backward.py:307:52
	v_or_b32_e32 v186, -16, v97
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 309 31                        ; attention_backward.py:309:31
	v_cmp_o_f32_e64 s10, v206, v206
	.loc	1 306 27                        ; attention_backward.py:306:27
	v_cndmask_b32_e64 v103, v175, v184, s6
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 307 28                        ; attention_backward.py:307:28
	v_cndmask_b32_e64 v83, v97, v186, s1
	.loc	1 307 37 is_stmt 0              ; attention_backward.py:307:37
	v_cmp_gt_i16_e64 s1, 0, v75.l
	.loc	1 363 38 is_stmt 1              ; attention_backward.py:363:38
	v_cmp_lt_u16_e64 s6, 7, v82.h
	.loc	1 360 76                        ; attention_backward.py:360:76
	v_and_b16 v82.h, v210.l, 15
	.loc	1 311 21                        ; attention_backward.py:311:21
	v_cvt_f32_i32_e32 v204, v103
	v_cvt_f32_i32_e32 v207, v83
	.loc	1 307 28                        ; attention_backward.py:307:28
	v_cndmask_b32_e64 v75, v98, v188, s1
	.loc	1 280 29                        ; attention_backward.py:280:29
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu4 v[97:104], v[78:79], v[119:120], v[65:72] neg_lo:[1,1,0]
	.loc	1 363 38                        ; attention_backward.py:363:38
	v_cmp_lt_u16_e64 s1, 7, v74.l
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 311 21                        ; attention_backward.py:311:21
	v_cvt_f32_i32_e32 v208, v75
	.loc	1 280 29                        ; attention_backward.py:280:29
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[97:104], v[112:113], v[123:124], v[97:104] neg_lo:[1,1,0]
	.loc	1 360 76                        ; attention_backward.py:360:76
	v_and_b16 v75.l, v110.h, 15
	.loc	1 350 32                        ; attention_backward.py:350:32
	v_lshrrev_b32_e32 v112, 8, v110
	.loc	1 361 29                        ; attention_backward.py:361:29
	v_bfe_u32 v113, v110, 8, 4
	.loc	1 362 32                        ; attention_backward.py:362:32
	v_lshrrev_b16 v75.h, 4, v110.l
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 363 38                        ; attention_backward.py:363:38
	v_cmp_lt_u16_e64 s4, 7, v75.l
	.loc	1 360 76                        ; attention_backward.py:360:76
	v_and_b16 v74.l, v112.l, 15
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 363 54                        ; attention_backward.py:363:54
	v_or_b32_e32 v216, -16, v113
	.loc	1 362 32                        ; attention_backward.py:362:32
	v_lshrrev_b16 v75.l, 4, v112.l
	.loc	1 350 32                        ; attention_backward.py:350:32
	v_bfe_i32 v112, v112, 0, 8
	.loc	1 274 28                        ; attention_backward.py:274:28
	s_waitcnt vmcnt(0)
	ds_load_b64 v[114:115], v17
	scratch_load_b32 v17, off, off offset:68 ; 4-byte Folded Reload
	.loc	1 280 29                        ; attention_backward.py:280:29
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[97:104], v[114:115], v[121:122], v[97:104] neg_lo:[1,1,0]
	.loc	1 350 32                        ; attention_backward.py:350:32
	v_alignbit_b32 v114, v111, v110, 24
	.loc	1 274 28                        ; attention_backward.py:274:28
	s_waitcnt vmcnt(0)
	ds_load_b64 v[116:117], v17
	.loc	1 393 17                        ; attention_backward.py:393:17
	s_waitcnt lgkmcnt(0)
	s_barrier
	scratch_load_b32 v17, off, off offset:72 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_store_b128 v17, v[105:108]
	ds_store_b128 v17, v[105:108] offset:256
	.loc	1 280 29                        ; attention_backward.py:280:29
	v_wmma_i32_16x16x16_iu4 v[97:104], v[116:117], v[125:126], v[97:104] neg_lo:[1,1,0]
	.loc	1 393 17                        ; attention_backward.py:393:17
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 361 29                        ; attention_backward.py:361:29
	v_bfe_u32 v108, v110, 16, 4
	.loc	1 350 32                        ; attention_backward.py:350:32
	v_lshrrev_b64 v[105:106], 24, v[110:111]
	.loc	1 299 21                        ; attention_backward.py:299:21
	v_cvt_f32_i32_e32 v244, v97
	v_cvt_f32_i32_e32 v245, v98
	v_cvt_f32_i32_e32 v246, v99
	v_cvt_f32_i32_e32 v247, v100
	v_cvt_f32_i32_e32 v248, v101
	v_cvt_f32_i32_e32 v249, v102
	v_cvt_f32_i32_e32 v250, v103
	v_cvt_f32_i32_e32 v83, v104
	.loc	1 373 36                        ; attention_backward.py:373:36
	ds_load_b128 v[77:80], v84
	ds_load_b128 v[101:104], v84 offset:64
	ds_load_b128 v[97:100], v163
	ds_load_b128 v[183:186], v163 offset:64
	ds_load_b128 v[174:177], v164
	ds_load_b128 v[187:190], v164 offset:64
	ds_load_b128 v[178:181], v165
	ds_load_b128 v[195:198], v165 offset:64
	.loc	1 382 31                        ; attention_backward.py:382:31
	s_waitcnt lgkmcnt(0)
	s_barrier
	scratch_load_b32 v17, off, off offset:76 ; 4-byte Folded Reload
	.loc	1 363 54                        ; attention_backward.py:363:54
	v_or_b32_e32 v214, -16, v108
	.loc	1 362 30                        ; attention_backward.py:362:30
	v_bfe_u32 v117, v110, 20, 4
	.loc	1 350 32                        ; attention_backward.py:350:32
	v_bfe_i32 v106, v110, 0, 8
	v_lshrrev_b32_e32 v116, 24, v111
	.loc	1 360 76                        ; attention_backward.py:360:76
	v_and_b16 v94.l, v105.l, 15
	.loc	1 363 29                        ; attention_backward.py:363:29
	v_cndmask_b32_e64 v210, v108, v214, s4
	.loc	1 309 31                        ; attention_backward.py:309:31
	v_dual_cndmask_b32 v214, 0, v201 :: v_dual_and_b32 v107, 15, v110
	.loc	1 311 21                        ; attention_backward.py:311:21
	v_mul_f32_e32 v194, v194, v209
	.loc	1 361 29                        ; attention_backward.py:361:29
	v_bfe_u32 v110, v111, 16, 4
	v_and_b32_e32 v115, 15, v111
	v_and_b32_e32 v217, 15, v114
	.loc	1 363 54                        ; attention_backward.py:363:54
	v_or_b32_e32 v111, -16, v107
	.loc	1 360 76                        ; attention_backward.py:360:76
	v_and_b16 v81.h, v116.l, 15
	.loc	1 350 32                        ; attention_backward.py:350:32
	v_bfe_i32 v223, v116, 0, 8
	.loc	1 362 32                        ; attention_backward.py:362:32
	v_lshrrev_b16 v95.l, 4, v116.l
	.loc	1 311 21                        ; attention_backward.py:311:21
	v_mul_f32_e32 v116, v204, v209
	v_mul_f32_e32 v204, v207, v209
	v_mul_f32_e32 v207, v208, v209
	.loc	1 350 32                        ; attention_backward.py:350:32
	v_bfe_i32 v208, v105, 0, 8
	.loc	1 362 32                        ; attention_backward.py:362:32
	v_lshrrev_b16 v96.l, 4, v105.l
	.loc	1 363 29                        ; attention_backward.py:363:29
	v_cndmask_b32_e64 v105, v107, v111, s1
	.loc	1 363 38 is_stmt 0              ; attention_backward.py:363:38
	v_cmp_lt_u16_e64 s1, 7, v74.l
	.loc	1 350 32 is_stmt 1              ; attention_backward.py:350:32
	v_bfe_i32 v114, v87, 0, 8
	.loc	1 311 21                        ; attention_backward.py:311:21
	v_dual_mul_f32 v193, v193, v209 :: v_dual_cndmask_b32 v204, 0, v204
	.loc	1 363 54                        ; attention_backward.py:363:54
	v_or_b32_e32 v111, -16, v217
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 363 29 is_stmt 0              ; attention_backward.py:363:29
	v_cndmask_b32_e64 v113, v113, v216, s1
	.loc	1 363 38                        ; attention_backward.py:363:38
	v_cmp_lt_u16_e64 s1, 7, v81.h
	.loc	1 364 39 is_stmt 1              ; attention_backward.py:364:39
	v_mov_b16_e32 v108.l, v114.l
	.loc	1 363 38                        ; attention_backward.py:363:38
	v_cmp_lt_u16_e64 s4, 7, v94.l
	.loc	1 364 56                        ; attention_backward.py:364:56
	v_or_b32_e32 v218, -16, v117
	.loc	1 363 54                        ; attention_backward.py:363:54
	v_or_b32_e32 v220, -16, v115
	.loc	1 363 29 is_stmt 0              ; attention_backward.py:363:29
	v_cndmask_b32_e64 v192, v192, v221, s1
	.loc	1 363 38                        ; attention_backward.py:363:38
	v_cmp_lt_u16_e64 s1, 7, v82.h
	.loc	1 309 31 is_stmt 1              ; attention_backward.py:309:31
	v_cndmask_b32_e32 v205, 0, v205, vcc_lo
	v_dual_cndmask_b32 v226, 0, v193 :: v_dual_cndmask_b32 v227, 0, v194
	.loc	1 364 56                        ; attention_backward.py:364:56
	v_or_b32_e32 v194, -16, v93
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 363 29                        ; attention_backward.py:363:29
	v_cndmask_b32_e64 v193, v211, v222, s1
	.loc	1 364 39                        ; attention_backward.py:364:39
	v_cmp_gt_i16_e64 s1, 0, v91.l
	v_mov_b16_e64 v91.l, v212.l
	.loc	1 382 31                        ; attention_backward.py:382:31
	v_cvt_f32_i32_e32 v107, v210
	.loc	1 363 29                        ; attention_backward.py:363:29
	v_cndmask_b32_e64 v210, v217, v111, s4
	.loc	1 364 39                        ; attention_backward.py:364:39
	v_cmp_gt_i16_e64 s4, 0, v108.l
	v_dual_mov_b32 v127, v126 :: v_dual_lshlrev_b32 v158, 16, v100
	.loc	1 309 31                        ; attention_backward.py:309:31
	v_dual_cndmask_b32 v201, 0, v116 :: v_dual_mov_b32 v126, v125
	.loc	1 362 32                        ; attention_backward.py:362:32
	v_and_b16 v87.l, v75.l, 15
	.loc	1 364 39                        ; attention_backward.py:364:39
	v_mov_b16_e32 v75.l, v112.l
	.loc	1 363 29                        ; attention_backward.py:363:29
	v_cndmask_b32_e64 v112, v115, v220, s6
	.loc	1 364 39                        ; attention_backward.py:364:39
	v_mov_b16_e64 v114.l, v223.l
	v_mov_b16_e64 v115.l, v224.l
	.loc	1 362 32                        ; attention_backward.py:362:32
	v_and_b16 v74.l, v96.l, 15
	.loc	1 364 30                        ; attention_backward.py:364:30
	v_cndmask_b32_e64 v117, v117, v218, s4
	v_cndmask_b32_e64 v93, v93, v194, s1
	.loc	1 364 39 is_stmt 0              ; attention_backward.py:364:39
	v_cmp_gt_i16_e64 s4, 0, v91.l
	.loc	1 309 31 is_stmt 1              ; attention_backward.py:309:31
	v_mov_b16_e64 v94.l, v201.h
	v_mov_b16_e64 v96.l, v204.h
	.loc	1 311 21                        ; attention_backward.py:311:21
	v_mul_f32_e32 v199, v199, v209
	v_dual_mov_b32 v27, v252 :: v_dual_and_b32 v252, 0xffff0000, v79
	.loc	1 309 31                        ; attention_backward.py:309:31
	v_mov_b16_e64 v86.l, v205.h
	.loc	1 311 21                        ; attention_backward.py:311:21
	v_mul_f32_e32 v219, v202, v209
	.loc	1 364 39                        ; attention_backward.py:364:39
	v_mov_b16_e64 v202.l, v106.l
	.loc	1 363 54                        ; attention_backward.py:363:54
	v_or_b32_e32 v106, -16, v110
	.loc	1 309 31                        ; attention_backward.py:309:31
	v_cndmask_b32_e32 v207, 0, v207, vcc_lo
	.loc	1 364 39                        ; attention_backward.py:364:39
	v_mov_b16_e64 v116.l, v208.l
	v_cmp_gt_i16_e64 s1, 0, v115.l
	.loc	1 364 30 is_stmt 0              ; attention_backward.py:364:30
	v_cndmask_b32_e64 v115, v213, v225, s4
	.loc	1 363 29 is_stmt 1              ; attention_backward.py:363:29
	v_cndmask_b32_e64 v106, v110, v106, s5
	.loc	1 364 39                        ; attention_backward.py:364:39
	v_cmp_gt_i16_e64 s4, 0, v114.l
	.loc	1 382 31                        ; attention_backward.py:382:31
	v_cvt_f32_i32_e32 v114, v93
	v_dual_mov_b32 v125, v124 :: v_dual_lshlrev_b32 v160, 16, v174
	v_dual_mov_b32 v124, v123 :: v_dual_and_b32 v93, 1, v94
	.loc	1 309 31                        ; attention_backward.py:309:31
	v_and_b32_e32 v94, 1, v96
	v_cndmask_b32_e32 v228, 0, v199, vcc_lo
	.loc	1 364 56                        ; attention_backward.py:364:56
	v_or_b32_e32 v199, -16, v95
	.loc	1 382 31                        ; attention_backward.py:382:31
	v_cvt_f32_i32_e32 v110, v112
	v_cvt_f32_i32_e32 v112, v106
	v_cvt_f32_i32_e32 v106, v113
	v_cvt_f32_i32_e32 v113, v192
	v_cvt_f32_i32_e32 v111, v193
	.loc	1 364 56                        ; attention_backward.py:364:56
	v_or_b32_e32 v192, -16, v92
	.loc	1 364 30 is_stmt 0              ; attention_backward.py:364:30
	v_cndmask_b32_e64 v95, v95, v199, s4
	.loc	1 364 56                        ; attention_backward.py:364:56
	v_or_b32_e32 v193, -16, v74
	.loc	1 364 39                        ; attention_backward.py:364:39
	v_cmp_gt_i16_e64 s16, 0, v116.l
	.loc	1 309 31 is_stmt 1              ; attention_backward.py:309:31
	v_and_b32_e32 v194, 1, v86
	.loc	1 305 30                        ; attention_backward.py:305:30
	v_and_b16 v86.l, v81.l, 15
	v_dual_mov_b32 v29, v254 :: v_dual_lshlrev_b32 v134, 16, v99
	.loc	1 373 36                        ; attention_backward.py:373:36
	v_and_b32_e32 v254, 0xffff0000, v80
	.loc	1 309 31                        ; attention_backward.py:309:31
	v_mov_b16_e64 v191.l, v207.h
	v_mov_b32_e32 v123, v122
	v_dual_cndmask_b32 v219, 0, v219 :: v_dual_and_b32 v218, 0xffff0000, v77
	.loc	1 382 31                        ; attention_backward.py:382:31
	v_cvt_f32_i32_e32 v81, v117
	.loc	1 364 30                        ; attention_backward.py:364:30
	v_cndmask_b32_e64 v92, v92, v192, s1
	.loc	1 382 31                        ; attention_backward.py:382:31
	v_cvt_f32_i32_e32 v117, v95
	v_dual_mov_b32 v122, v121 :: v_dual_and_b32 v95, 1, v191
	v_mov_b32_e32 v121, v120
	.loc	1 373 36                        ; attention_backward.py:373:36
	v_lshlrev_b32_e32 v217, 16, v77
	.loc	1 364 30                        ; attention_backward.py:364:30
	v_cndmask_b32_e64 v74, v74, v193, s16
	.loc	1 307 52                        ; attention_backward.py:307:52
	v_or_b32_e32 v77, -16, v86
	.loc	1 307 37 is_stmt 0              ; attention_backward.py:307:37
	v_cmp_gt_i16_e64 s1, 0, v82.l
	.loc	1 311 21 is_stmt 1              ; attention_backward.py:311:21
	v_dual_mul_f32 v203, v203, v209 :: v_dual_lshlrev_b32 v220, 16, v78
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 382 31                        ; attention_backward.py:382:31
	v_cvt_f32_i32_e32 v82, v74
	.loc	1 309 31                        ; attention_backward.py:309:31
	v_cmp_o_f32_e64 s4, v201, v201
	.loc	1 307 28                        ; attention_backward.py:307:28
	v_cndmask_b32_e64 v74, v86, v77, s1
	.loc	1 309 31                        ; attention_backward.py:309:31
	v_mov_b16_e64 v86.l, v214.h
	v_cmp_o_f32_e64 s6, v205, v205
	.loc	1 364 56                        ; attention_backward.py:364:56
	v_or_b32_e32 v208, -16, v87
	.loc	1 364 39 is_stmt 0              ; attention_backward.py:364:39
	v_cmp_gt_i16_e64 s5, 0, v75.l
	.loc	1 311 21 is_stmt 1              ; attention_backward.py:311:21
	v_cvt_f32_i32_e32 v74, v74
	.loc	1 373 36                        ; attention_backward.py:373:36
	v_and_b32_e32 v221, 0xffff0000, v78
	.loc	1 309 31                        ; attention_backward.py:309:31
	v_add3_u32 v78, v201, v93, 0x7fff
	v_cmp_o_f32_e64 s8, v214, v214
	.loc	1 307 37                        ; attention_backward.py:307:37
	v_cmp_gt_i16_e64 s1, 0, v90.l
	.loc	1 311 21                        ; attention_backward.py:311:21
	v_dual_mul_f32 v74, v74, v209 :: v_dual_lshlrev_b32 v251, 16, v79
	.loc	1 309 31                        ; attention_backward.py:309:31
	v_add3_u32 v79, v205, v194, 0x7fff
	v_cndmask_b16 v191.l, 0x7fff, v78.h, s4
	v_cmp_o_f32_e64 s9, v226, v226
	s_delay_alu instid0(VALU_DEP_4)
	v_cndmask_b32_e32 v74, 0, v74, vcc_lo
	v_and_b32_e32 v77, 1, v86
	v_mov_b16_e64 v86.l, v226.h
	v_cndmask_b16 v191.h, 0x7fff, v79.h, s6
	.loc	1 364 30                        ; attention_backward.py:364:30
	v_cndmask_b32_e64 v87, v87, v208, s5
	.loc	1 309 31                        ; attention_backward.py:309:31
	v_cndmask_b32_e32 v203, 0, v203, vcc_lo
	v_add3_u32 v77, v214, v77, 0x7fff
	v_and_b32_e32 v78, 1, v86
	.loc	1 305 30                        ; attention_backward.py:305:30
	v_and_b16 v86.l, v89.h, 15
	.loc	1 309 31                        ; attention_backward.py:309:31
	v_cmp_o_f32_e64 s7, v204, v204
	.loc	1 373 36                        ; attention_backward.py:373:36
	v_lshlrev_b32_e32 v253, 16, v80
	.loc	1 309 31                        ; attention_backward.py:309:31
	v_cndmask_b16 v192.l, 0x7fff, v77.h, s8
	v_add3_u32 v78, v226, v78, 0x7fff
	.loc	1 307 52                        ; attention_backward.py:307:52
	v_or_b32_e32 v79, -16, v86
	.loc	1 382 31                        ; attention_backward.py:382:31
	v_cvt_f32_i32_e32 v80, v87
	.loc	1 309 31                        ; attention_backward.py:309:31
	v_add3_u32 v87, v204, v94, 0x7fff
	v_mov_b16_e32 v91.l, v74.h
	v_cndmask_b16 v193.l, 0x7fff, v78.h, s9
	.loc	1 307 28                        ; attention_backward.py:307:28
	v_cndmask_b32_e64 v77, v86, v79, s1
	.loc	1 309 31                        ; attention_backward.py:309:31
	v_mov_b16_e64 v86.l, v206.h
	v_cndmask_b16 v193.h, 0x7fff, v87.h, s7
	v_and_b32_e32 v79, 1, v91
	.loc	1 307 37                        ; attention_backward.py:307:37
	v_cmp_gt_i16_e64 s4, 0, v89.l
	.loc	1 309 31                        ; attention_backward.py:309:31
	v_cmp_o_f32_e64 s1, v74, v74
	v_and_b32_e32 v78, 1, v86
	.loc	1 305 30                        ; attention_backward.py:305:30
	v_and_b16 v86.l, v88.l, 15
	.loc	1 309 31                        ; attention_backward.py:309:31
	v_add3_u32 v74, v74, v79, 0x7fff
	v_mov_b32_e32 v120, v119
	.loc	1 311 21                        ; attention_backward.py:311:21
	v_cvt_f32_i32_e32 v77, v77
	.loc	1 309 31                        ; attention_backward.py:309:31
	v_add3_u32 v78, v206, v78, 0x7fff
	.loc	1 307 52                        ; attention_backward.py:307:52
	v_or_b32_e32 v87, -16, v86
	.loc	1 309 31                        ; attention_backward.py:309:31
	v_cndmask_b16 v192.h, 0x7fff, v74.h, s1
	v_cmp_o_f32_e64 s12, v227, v227
	v_cmp_o_f32_e64 s13, v219, v219
	v_cndmask_b16 v194.l, 0x7fff, v78.h, s10
	.loc	1 307 28                        ; attention_backward.py:307:28
	v_cndmask_b32_e64 v79, v86, v87, s4
	.loc	1 309 31                        ; attention_backward.py:309:31
	v_mov_b16_e64 v86.l, v227.h
	v_mov_b32_e32 v119, v128
	.loc	1 307 37                        ; attention_backward.py:307:37
	v_cmp_gt_i16_e64 s4, 0, v109.l
	.loc	1 309 31                        ; attention_backward.py:309:31
	v_cmp_o_f32_e64 s14, v228, v228
	.loc	1 311 21                        ; attention_backward.py:311:21
	v_cvt_f32_i32_e32 v78, v79
	.loc	1 309 31                        ; attention_backward.py:309:31
	v_and_b32_e32 v74, 1, v86
	.loc	1 305 30                        ; attention_backward.py:305:30
	v_and_b16 v86.l, v88.h, 15
	.loc	1 382 31                        ; attention_backward.py:382:31
	v_cvt_f32_i32_e32 v105, v105
	.loc	1 309 31                        ; attention_backward.py:309:31
	v_cmp_o_f32_e64 s11, v207, v207
	.loc	1 311 21                        ; attention_backward.py:311:21
	v_mul_f32_e32 v78, v78, v209
	.loc	1 309 31                        ; attention_backward.py:309:31
	v_add3_u32 v74, v227, v74, 0x7fff
	.loc	1 307 52                        ; attention_backward.py:307:52
	v_or_b32_e32 v79, -16, v86
	.loc	1 373 36                        ; attention_backward.py:373:36
	v_lshlrev_b32_e32 v255, 16, v97
	.loc	1 382 31                        ; attention_backward.py:382:31
	v_cvt_f32_i32_e32 v108, v210
	.loc	1 309 31                        ; attention_backward.py:309:31
	v_cndmask_b32_e32 v78, 0, v78, vcc_lo
	v_cndmask_b16 v199.l, 0x7fff, v74.h, s12
	.loc	1 307 28                        ; attention_backward.py:307:28
	v_cndmask_b32_e64 v79, v86, v79, s4
	.loc	1 309 31                        ; attention_backward.py:309:31
	v_mov_b16_e64 v86.l, v219.h
	.loc	1 311 21                        ; attention_backward.py:311:21
	v_mul_f32_e32 v77, v77, v209
	.loc	1 309 31                        ; attention_backward.py:309:31
	v_mov_b16_e32 v109.l, v78.h
	.loc	1 307 37                        ; attention_backward.py:307:37
	v_cmp_gt_i16_e64 s4, 0, v182.l
	.loc	1 382 31                        ; attention_backward.py:382:31
	v_cvt_f32_i32_e32 v116, v115
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	.loc	1 309 31                        ; attention_backward.py:309:31
	v_dual_cndmask_b32 v77, 0, v77 :: v_dual_and_b32 v74, 1, v86
	v_mov_b16_e64 v86.l, v228.h
	.loc	1 382 31                        ; attention_backward.py:382:31
	v_cvt_f32_i32_e32 v115, v92
	.loc	1 309 31                        ; attention_backward.py:309:31
	v_add3_u32 v92, v207, v95, 0x7fff
	v_add3_u32 v74, v219, v74, 0x7fff
	v_mov_b16_e32 v90.l, v77.h
	v_cmp_o_f32_e64 s1, v77, v77
	v_cmp_o_f32_e64 s15, v203, v203
	.loc	1 373 36                        ; attention_backward.py:373:36
	v_and_b32_e32 v128, 0xffff0000, v97
	.loc	1 382 31                        ; attention_backward.py:382:31
	ds_store_b128 v85, v[105:108]
	.loc	1 309 31                        ; attention_backward.py:309:31
	v_and_b32_e32 v87, 1, v90
	v_cndmask_b16 v201.h, 0x7fff, v92.h, s11
	.loc	1 373 36                        ; attention_backward.py:373:36
	v_lshlrev_b32_e32 v20, 16, v179
	v_and_b32_e32 v25, 0xffff0000, v181
	v_lshlrev_b32_e32 v22, 16, v180
	.loc	1 309 31                        ; attention_backward.py:309:31
	v_add3_u32 v77, v77, v87, 0x7fff
	v_and_b32_e32 v87, 1, v109
	.loc	1 373 36                        ; attention_backward.py:373:36
	v_and_b32_e32 v23, 0xffff0000, v180
	v_lshlrev_b32_e32 v216, 16, v101
	v_and_b32_e32 v161, 0xffff0000, v175
	.loc	1 309 31                        ; attention_backward.py:309:31
	v_cndmask_b16 v194.h, 0x7fff, v77.h, s1
	.loc	1 311 21                        ; attention_backward.py:311:21
	v_cvt_f32_i32_e32 v77, v79
	.loc	1 309 31                        ; attention_backward.py:309:31
	v_and_b32_e32 v79, 1, v86
	.loc	1 305 30                        ; attention_backward.py:305:30
	v_lshrrev_b16 v86.l, 4, v200.l
	.loc	1 309 31                        ; attention_backward.py:309:31
	v_cmp_o_f32_e64 s1, v78, v78
	v_add3_u32 v78, v78, v87, 0x7fff
	.loc	1 311 21                        ; attention_backward.py:311:21
	v_mul_f32_e32 v77, v77, v209
	.loc	1 373 36                        ; attention_backward.py:373:36
	v_lshlrev_b32_e32 v129, 16, v98
	.loc	1 307 52                        ; attention_backward.py:307:52
	v_or_b32_e32 v88, -16, v86
	.loc	1 309 31                        ; attention_backward.py:309:31
	v_cndmask_b16 v200.l, 0x7fff, v74.h, s13
	v_add3_u32 v79, v228, v79, 0x7fff
	v_cndmask_b32_e32 v74, 0, v77, vcc_lo
	v_cndmask_b16 v199.h, 0x7fff, v78.h, s1
	.loc	1 307 28                        ; attention_backward.py:307:28
	v_cndmask_b32_e64 v77, v86, v88, s4
	.loc	1 309 31                        ; attention_backward.py:309:31
	v_mov_b16_e64 v86.l, v203.h
	v_cndmask_b16 v201.l, 0x7fff, v79.h, s14
	v_mov_b16_e64 v182.l, v74.h
	.loc	1 364 39                        ; attention_backward.py:364:39
	v_cmp_gt_i16_e64 s4, 0, v202.l
	.loc	1 309 31                        ; attention_backward.py:309:31
	v_cmp_o_f32_e64 s1, v74, v74
	v_and_b32_e32 v78, 1, v86
	.loc	1 362 32                        ; attention_backward.py:362:32
	v_and_b16 v86.l, v75.h, 15
	.loc	1 309 31                        ; attention_backward.py:309:31
	v_and_b32_e32 v75, 1, v182
	.loc	1 311 21                        ; attention_backward.py:311:21
	v_cvt_f32_i32_e32 v77, v77
	.loc	1 373 36                        ; attention_backward.py:373:36
	v_lshlrev_b32_e32 v155, 16, v176
	.loc	1 299 21                        ; attention_backward.py:299:21
	v_mul_f32_e32 v83, v138, v83
	.loc	1 364 56                        ; attention_backward.py:364:56
	v_or_b32_e32 v79, -16, v86
	.loc	1 309 31                        ; attention_backward.py:309:31
	v_add3_u32 v74, v74, v75, 0x7fff
	v_add3_u32 v75, v203, v78, 0x7fff
	.loc	1 311 21                        ; attention_backward.py:311:21
	v_mul_f32_e32 v77, v77, v209
	.loc	1 373 36                        ; attention_backward.py:373:36
	v_and_b32_e32 v133, 0xffff0000, v98
	.loc	1 364 30                        ; attention_backward.py:364:30
	v_cndmask_b32_e64 v78, v86, v79, s4
	.loc	1 309 31                        ; attention_backward.py:309:31
	v_cndmask_b16 v200.h, 0x7fff, v74.h, s1
	v_cndmask_b16 v202.l, 0x7fff, v75.h, s15
	v_cndmask_b32_e32 v74, 0, v77, vcc_lo
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 382 31                        ; attention_backward.py:382:31
	v_cvt_f32_i32_e32 v79, v78
	.loc	1 309 31                        ; attention_backward.py:309:31
	v_mov_b16_e64 v215.l, v74.h
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cmp_o_f32_e64 s1, v74, v74
	v_and_b32_e32 v75, 1, v215
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add3_u32 v74, v74, v75, 0x7fff
	v_cndmask_b16 v202.h, 0x7fff, v74.h, s1
	.loc	1 373 36                        ; attention_backward.py:373:36
	v_and_b32_e32 v74, 0xffff0000, v174
	.loc	1 382 31                        ; attention_backward.py:382:31
	s_waitcnt vmcnt(0)
	ds_store_b128 v17, v[79:82]
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[203:206], v84
	ds_load_b128 v[89:92], v84 offset:64
	ds_load_b128 v[207:210], v163
	ds_load_b128 v[77:80], v163 offset:64
	ds_load_b128 v[224:227], v164
	ds_load_b128 v[106:109], v164 offset:64
	ds_load_b128 v[228:231], v165
	ds_load_b128 v[93:96], v165 offset:64
	.loc	1 373 36                        ; attention_backward.py:373:36
	v_and_b32_e32 v153, 0xffff0000, v99
	v_and_b32_e32 v159, 0xffff0000, v100
	.loc	1 382 31                        ; attention_backward.py:382:31
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v85, v[110:113]
	ds_store_b128 v17, v[114:117]
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[211:214], v84
	ds_load_b128 v[97:100], v84 offset:64
	.loc	1 373 36                        ; attention_backward.py:373:36
	v_lshlrev_b32_e32 v24, 16, v181
	v_lshlrev_b32_e32 v18, 16, v178
	v_and_b32_e32 v19, 0xffff0000, v178
	.loc	1 382 31                        ; attention_backward.py:382:31
	ds_load_b128 v[232:235], v163
	ds_load_b128 v[85:88], v163 offset:64
	ds_load_b128 v[236:239], v164
	ds_load_b128 v[114:117], v164 offset:64
	ds_load_b128 v[240:243], v165
	.loc	1 373 36                        ; attention_backward.py:373:36
	v_lshlrev_b32_e32 v154, 16, v177
	v_and_b32_e32 v17, 0xffff0000, v177
	.loc	1 382 31                        ; attention_backward.py:382:31
	v_mul_f32_e32 v177, v204, v218
	.loc	1 373 36                        ; attention_backward.py:373:36
	v_lshlrev_b32_e32 v218, 16, v102
	.loc	1 382 31                        ; attention_backward.py:382:31
	ds_load_b128 v[110:113], v165 offset:64
	.loc	1 309 31                        ; attention_backward.py:309:31
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v167, v[191:194]
	ds_store_b128 v167, v[199:202] offset:16
	.loc	1 382 31                        ; attention_backward.py:382:31
	v_dual_mul_f32 v82, v206, v221 :: v_dual_and_b32 v151, 0xffff0000, v176
	.loc	1 373 36                        ; attention_backward.py:373:36
	v_and_b32_e32 v192, 0xffff0000, v195
	.loc	1 382 31                        ; attention_backward.py:382:31
	v_dual_mul_f32 v206, v207, v255 :: v_dual_lshlrev_b32 v31, 16, v169
	v_dual_mul_f32 v182, v211, v251 :: v_dual_mov_b32 v251, v26
	.loc	1 271 27                        ; attention_backward.py:271:27
	v_or_b32_e32 v26, s90, v130
	.loc	1 382 31                        ; attention_backward.py:382:31
	v_dual_mul_f32 v181, v212, v252 :: v_dual_mov_b32 v252, v27
	v_mul_f32_e32 v178, v214, v254
	v_mov_b32_e32 v254, v29
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 329 26                        ; attention_backward.py:329:26
	v_cmp_ge_i32_e64 s1, v26, v139
	.loc	1 329 17 is_stmt 0              ; attention_backward.py:329:17
	v_cmp_ge_i32_e64 s4, v149, v26
	.loc	1 271 27 is_stmt 1              ; attention_backward.py:271:27
	v_or_b32_e32 v26, s90, v251
	.loc	1 382 31                        ; attention_backward.py:382:31
	v_dual_mul_f32 v180, v213, v253 :: v_dual_mov_b32 v253, v28
	.loc	1 290 33                        ; attention_backward.py:290:33
	v_lshlrev_b32_e32 v27, 16, v173
	v_lshlrev_b32_e32 v28, 16, v172
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_4) | instid1(VALU_DEP_3)
	.loc	1 329 26                        ; attention_backward.py:329:26
	v_cmp_ge_i32_e64 s5, v26, v139
	.loc	1 329 17 is_stmt 0              ; attention_backward.py:329:17
	v_cmp_ge_i32_e64 s6, v149, v26
	.loc	1 271 27 is_stmt 1              ; attention_backward.py:271:27
	v_or_b32_e32 v26, s90, v252
	.loc	1 382 31                        ; attention_backward.py:382:31
	v_dual_mul_f32 v202, v232, v134 :: v_dual_lshlrev_b32 v29, 16, v171
	v_dual_mul_f32 v207, v239, v17 :: v_dual_lshlrev_b32 v30, 16, v170
	.loc	1 329 26                        ; attention_backward.py:329:26
	v_cmp_ge_i32_e64 s7, v26, v139
	.loc	1 329 17 is_stmt 0              ; attention_backward.py:329:17
	v_cmp_ge_i32_e64 s8, v149, v26
	.loc	1 271 27 is_stmt 1              ; attention_backward.py:271:27
	v_or_b32_e32 v26, s90, v254
	.loc	1 382 31                        ; attention_backward.py:382:31
	v_dual_mul_f32 v200, v234, v158 :: v_dual_and_b32 v21, 0xffff0000, v179
	v_dual_mul_f32 v179, v203, v217 :: v_dual_mul_f32 v176, v205, v220
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 329 26                        ; attention_backward.py:329:26
	v_cmp_ge_i32_e64 s9, v26, v139
	.loc	1 329 17 is_stmt 0              ; attention_backward.py:329:17
	v_cmp_ge_i32_e64 s10, v149, v26
	.loc	1 271 27 is_stmt 1              ; attention_backward.py:271:27
	v_or_b32_e32 v26, s90, v253
	.loc	1 373 36                        ; attention_backward.py:373:36
	v_lshlrev_b32_e32 v220, 16, v103
	.loc	1 382 31                        ; attention_backward.py:382:31
	v_dual_mul_f32 v17, v228, v18 :: v_dual_lshlrev_b32 v32, 16, v168
	.loc	1 290 33                        ; attention_backward.py:290:33
	v_lshlrev_b32_e32 v73, 16, v73
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_4) | instid1(VALU_DEP_3)
	.loc	1 329 26                        ; attention_backward.py:329:26
	v_cmp_ge_i32_e64 s11, v26, v139
	.loc	1 329 17 is_stmt 0              ; attention_backward.py:329:17
	v_cmp_ge_i32_e64 s12, v149, v26
	.loc	1 271 27 is_stmt 1              ; attention_backward.py:271:27
	v_or_b32_e32 v26, 10, v130
	.loc	1 382 31                        ; attention_backward.py:382:31
	v_dual_mul_f32 v214, v224, v160 :: v_dual_and_b32 v221, 0xffff0000, v103
	v_dual_mul_f32 v203, v210, v133 :: v_dual_lshlrev_b32 v222, 16, v104
	.loc	1 271 27                        ; attention_backward.py:271:27
	v_or_b32_e32 v26, s90, v26
	.loc	1 382 31                        ; attention_backward.py:382:31
	v_dual_mul_f32 v204, v209, v129 :: v_dual_lshlrev_b32 v105, 16, v186
	.loc	1 290 33                        ; attention_backward.py:290:33
	v_lshlrev_b32_e32 v76, 16, v76
	.loc	1 382 31                        ; attention_backward.py:382:31
	v_mul_f32_e32 v18, v229, v19
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 329 26                        ; attention_backward.py:329:26
	v_cmp_ge_i32_e64 s13, v26, v139
	.loc	1 329 17 is_stmt 0              ; attention_backward.py:329:17
	v_cmp_ge_i32_e64 s14, v149, v26
	.loc	1 271 27 is_stmt 1              ; attention_backward.py:271:27
	v_or_b32_e32 v26, 12, v130
	.loc	1 382 31                        ; attention_backward.py:382:31
	v_dual_mul_f32 v19, v230, v20 :: v_dual_mul_f32 v20, v231, v21
	v_mul_f32_e32 v21, v240, v22
	.loc	1 330 17                        ; attention_backward.py:330:17
	s_and_b32 s19, s4, s1
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 271 27                        ; attention_backward.py:271:27
	v_or_b32_e32 v26, s90, v26
	.loc	1 330 17                        ; attention_backward.py:330:17
	s_and_b32 s4, s8, s7
	s_and_b32 s1, s6, s5
	s_and_b32 s5, s10, s9
	s_and_b32 s4, s2, s4
	.loc	1 329 26                        ; attention_backward.py:329:26
	v_cmp_ge_i32_e64 s15, v26, v139
	.loc	1 329 17 is_stmt 0              ; attention_backward.py:329:17
	v_cmp_ge_i32_e64 s16, v149, v26
	.loc	1 271 27 is_stmt 1              ; attention_backward.py:271:27
	v_or_b32_e32 v26, 14, v130
	.loc	1 330 17                        ; attention_backward.py:330:17
	s_and_b32 s10, s2, s19
	.loc	1 373 36                        ; attention_backward.py:373:36
	v_lshlrev_b32_e32 v84, 16, v175
	v_lshlrev_b32_e32 v75, 16, v183
	v_and_b32_e32 v81, 0xffff0000, v183
	.loc	1 271 27                        ; attention_backward.py:271:27
	v_or_b32_e32 v26, s90, v26
	.loc	1 382 31                        ; attention_backward.py:382:31
	v_dual_mul_f32 v205, v208, v128 :: v_dual_mul_f32 v208, v238, v154
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_mul_f32 v128, v78, v81 :: v_dual_lshlrev_b32 v191, 16, v195
	.loc	1 329 26                        ; attention_backward.py:329:26
	v_cmp_ge_i32_e64 s17, v26, v139
	.loc	1 329 17 is_stmt 0              ; attention_backward.py:329:17
	v_cmp_ge_i32_e64 s18, v149, v26
	.loc	1 299 21 is_stmt 1              ; attention_backward.py:299:21
	v_mul_f32_e32 v26, v138, v244
	.loc	1 330 17                        ; attention_backward.py:330:17
	s_and_b32 s8, s16, s15
	.loc	1 382 30                        ; attention_backward.py:382:30
	v_cmp_o_f32_e64 s39, v178, v178
	.loc	1 330 17                        ; attention_backward.py:330:17
	s_and_b32 s8, s2, s8
	s_and_b32 s5, s2, s5
	.loc	1 345 58                        ; attention_backward.py:345:58
	v_fma_f32 v26, v26, v27, -v150
	.loc	1 299 21                        ; attention_backward.py:299:21
	v_mul_f32_e32 v27, v138, v245
	.loc	1 382 30                        ; attention_backward.py:382:30
	v_cmp_o_f32_e64 s41, v205, v205
	.loc	1 345 58                        ; attention_backward.py:345:58
	v_fma_f32 v76, v83, v76, -v150
	.loc	1 382 30                        ; attention_backward.py:382:30
	v_cmp_o_f32_e64 s42, v204, v204
	.loc	1 345 45                        ; attention_backward.py:345:45
	v_exp_f32_e32 v26, v26
	.loc	1 345 58 is_stmt 0              ; attention_backward.py:345:58
	v_fma_f32 v27, v27, v28, -v150
	.loc	1 299 21 is_stmt 1              ; attention_backward.py:299:21
	v_mul_f32_e32 v28, v138, v246
	.loc	1 382 30                        ; attention_backward.py:382:30
	v_cmp_o_f32_e64 s22, v128, v128
	.loc	1 382 31 is_stmt 0              ; attention_backward.py:382:31
	v_mul_f32_e32 v201, v233, v153
	v_mul_f32_e32 v199, v235, v159
	.loc	1 345 45 is_stmt 1              ; attention_backward.py:345:45
	v_exp_f32_e32 v27, v27
	.loc	1 345 58 is_stmt 0              ; attention_backward.py:345:58
	v_fma_f32 v28, v28, v29, -v150
	.loc	1 299 21 is_stmt 1              ; attention_backward.py:299:21
	v_mul_f32_e32 v29, v138, v247
	.loc	1 345 45                        ; attention_backward.py:345:45
	v_exp_f32_e32 v76, v76
	.loc	1 345 29 is_stmt 0              ; attention_backward.py:345:29
	v_cndmask_b32_e64 v168, 0, v26, s10
	.loc	1 382 31 is_stmt 1              ; attention_backward.py:382:31
	v_mul_f32_e32 v213, v225, v74
	.loc	1 345 45                        ; attention_backward.py:345:45
	v_exp_f32_e32 v28, v28
	.loc	1 345 58 is_stmt 0              ; attention_backward.py:345:58
	v_fma_f32 v29, v29, v30, -v150
	.loc	1 299 21 is_stmt 1              ; attention_backward.py:299:21
	v_dual_mul_f32 v30, v138, v248 :: v_dual_mul_f32 v211, v227, v161
	.loc	1 330 17                        ; attention_backward.py:330:17
	s_and_b32 s6, s12, s11
	s_and_b32 s7, s14, s13
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 345 45                        ; attention_backward.py:345:45
	v_exp_f32_e32 v29, v29
	.loc	1 345 58 is_stmt 0              ; attention_backward.py:345:58
	v_fma_f32 v30, v30, v31, -v150
	.loc	1 299 21 is_stmt 1              ; attention_backward.py:299:21
	v_mul_f32_e32 v31, v138, v249
	.loc	1 330 17                        ; attention_backward.py:330:17
	s_and_b32 s1, s2, s1
	s_delay_alu instid0(TRANS32_DEP_2)
	.loc	1 345 29                        ; attention_backward.py:345:29
	v_cndmask_b32_e64 v170, 0, v28, s4
	.loc	1 330 17                        ; attention_backward.py:330:17
	s_and_b32 s6, s2, s6
	.loc	1 345 45                        ; attention_backward.py:345:45
	v_exp_f32_e32 v30, v30
	.loc	1 345 58 is_stmt 0              ; attention_backward.py:345:58
	v_fma_f32 v31, v31, v32, -v150
	.loc	1 299 21 is_stmt 1              ; attention_backward.py:299:21
	v_dual_mul_f32 v32, v138, v250 :: v_dual_and_b32 v223, 0xffff0000, v104
	.loc	1 382 31                        ; attention_backward.py:382:31
	v_mul_f32_e32 v210, v236, v155
	.loc	1 373 36                        ; attention_backward.py:373:36
	v_and_b32_e32 v104, 0xffff0000, v185
	.loc	1 345 29                        ; attention_backward.py:345:29
	v_cndmask_b32_e64 v171, 0, v29, s5
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 345 58 is_stmt 0              ; attention_backward.py:345:58
	v_fma_f32 v32, v32, v73, -v150
	.loc	1 391 32 is_stmt 1              ; attention_backward.py:391:32
	v_mov_b32_e32 v73, v72
	v_dual_mov_b32 v72, v71 :: v_dual_lshlrev_b32 v103, 16, v185
	.loc	1 382 31                        ; attention_backward.py:382:31
	v_dual_mul_f32 v22, v241, v23 :: v_dual_lshlrev_b32 v193, 16, v196
	.loc	1 391 32                        ; attention_backward.py:391:32
	v_dual_mov_b32 v71, v70 :: v_dual_and_b32 v194, 0xffff0000, v196
	v_mov_b32_e32 v70, v69
	v_mov_b32_e32 v69, v68
	v_dual_mov_b32 v68, v67 :: v_dual_and_b32 v217, 0xffff0000, v101
	.loc	1 373 36                        ; attention_backward.py:373:36
	v_lshlrev_b32_e32 v101, 16, v184
	.loc	1 391 32                        ; attention_backward.py:391:32
	v_dual_mov_b32 v67, v66 :: v_dual_and_b32 v196, 0xffff0000, v197
	v_dual_mov_b32 v66, v65 :: v_dual_and_b32 v219, 0xffff0000, v102
	.loc	1 373 36                        ; attention_backward.py:373:36
	v_lshlrev_b32_e32 v185, 16, v188
	.loc	1 345 45                        ; attention_backward.py:345:45
	v_exp_f32_e32 v32, v32
	.loc	1 373 36                        ; attention_backward.py:373:36
	v_and_b32_e32 v102, 0xffff0000, v184
	v_and_b32_e32 v215, 0xffff0000, v186
	.loc	1 382 31                        ; attention_backward.py:382:31
	v_dual_mul_f32 v26, v90, v217 :: v_dual_lshlrev_b32 v183, 16, v187
	.loc	1 373 36                        ; attention_backward.py:373:36
	v_and_b32_e32 v184, 0xffff0000, v187
	v_lshlrev_b32_e32 v187, 16, v189
	.loc	1 382 31                        ; attention_backward.py:382:31
	v_dual_mul_f32 v23, v242, v24 :: v_dual_mul_f32 v24, v243, v25
	v_dual_mul_f32 v154, v88, v215 :: v_dual_lshlrev_b32 v195, 16, v197
	v_dual_mul_f32 v106, v106, v183 :: v_dual_lshlrev_b32 v197, 16, v198
	v_mul_f32_e32 v28, v92, v219
	v_mul_f32_e32 v108, v108, v185
	.loc	1 382 30 is_stmt 0              ; attention_backward.py:382:30
	v_bfe_u32 v185, v178, 16, 1
	.loc	1 373 36 is_stmt 1              ; attention_backward.py:373:36
	v_and_b32_e32 v186, 0xffff0000, v188
	v_and_b32_e32 v188, 0xffff0000, v189
	.loc	1 345 29                        ; attention_backward.py:345:29
	v_cndmask_b32_e64 v174, 0, v32, s8
	.loc	1 382 31                        ; attention_backward.py:382:31
	v_mul_f32_e32 v32, v100, v223
	v_mul_f32_e32 v134, v85, v103
	v_mul_f32_e32 v114, v114, v187
	v_mul_f32_e32 v112, v112, v197
	.loc	1 382 30 is_stmt 0              ; attention_backward.py:382:30
	v_bfe_u32 v187, v205, 16, 1
	v_add3_u32 v178, v178, v185, 0x7fff
	v_bfe_u32 v185, v17, 16, 1
	v_bfe_u32 v197, v20, 16, 1
	.loc	1 382 31                        ; attention_backward.py:382:31
	v_mul_f32_e32 v115, v115, v188
	v_mul_f32_e32 v111, v111, v196
	.loc	1 382 30                        ; attention_backward.py:382:30
	v_bfe_u32 v188, v204, 16, 1
	v_cmp_o_f32_e64 s5, v17, v17
	v_add3_u32 v187, v205, v187, 0x7fff
	v_cmp_o_f32_e64 s8, v20, v20
	v_bfe_u32 v205, v28, 16, 1
	v_add3_u32 v17, v17, v185, 0x7fff
	v_bfe_u32 v185, v128, 16, 1
	v_add3_u32 v20, v20, v197, 0x7fff
	v_bfe_u32 v197, v134, 16, 1
	.loc	1 373 36 is_stmt 1              ; attention_backward.py:373:36
	v_lshlrev_b32_e32 v189, 16, v190
	v_and_b32_e32 v190, 0xffff0000, v190
	.loc	1 345 45                        ; attention_backward.py:345:45
	v_exp_f32_e32 v31, v31
	.loc	1 382 30                        ; attention_backward.py:382:30
	v_add3_u32 v188, v204, v188, 0x7fff
	v_cmp_o_f32_e64 s16, v28, v28
	v_cmp_o_f32_e64 s25, v134, v134
	v_add3_u32 v28, v28, v205, 0x7fff
	v_bfe_u32 v205, v114, 16, 1
	v_add3_u32 v128, v128, v185, 0x7fff
	v_add3_u32 v134, v134, v197, 0x7fff
	v_bfe_u32 v197, v111, 16, 1
	.loc	1 382 31 is_stmt 0              ; attention_backward.py:382:31
	v_dual_mul_f32 v209, v237, v151 :: v_dual_and_b32 v198, 0xffff0000, v198
	v_mul_f32_e32 v107, v107, v184
	v_mul_f32_e32 v117, v117, v190
	.loc	1 382 30                        ; attention_backward.py:382:30
	v_bfe_u32 v184, v180, 16, 1
	v_bfe_u32 v190, v202, 16, 1
	.loc	1 382 31                        ; attention_backward.py:382:31
	v_mul_f32_e32 v29, v97, v220
	.loc	1 382 30                        ; attention_backward.py:382:30
	v_cmp_o_f32_e64 s56, v114, v114
	v_cmp_o_f32_e64 s65, v111, v111
	v_add3_u32 v114, v114, v205, 0x7fff
	v_add3_u32 v205, v111, v197, 0x7fff
	v_cndmask_b16 v111.l, 0x7fff, v188.h, s42
	v_cndmask_b16 v188.h, 0x7fff, v128.h, s22
	v_dual_mov_b32 v128, v119 :: v_dual_mov_b32 v119, v120
	.loc	1 330 17 is_stmt 1              ; attention_backward.py:330:17
	s_and_b32 s7, s2, s7
	.loc	1 345 29                        ; attention_backward.py:345:29
	v_cndmask_b32_e64 v169, 0, v27, s1
	.loc	1 382 31                        ; attention_backward.py:382:31
	v_dual_mul_f32 v27, v91, v218 :: v_dual_mov_b32 v120, v121
	v_mov_b32_e32 v121, v122
	v_dual_mul_f32 v212, v226, v84 :: v_dual_mul_f32 v97, v77, v75
	v_dual_mov_b32 v122, v123 :: v_dual_mov_b32 v123, v124
	.loc	1 345 29                        ; attention_backward.py:345:29
	v_cndmask_b32_e64 v172, 0, v30, s6
	v_cndmask_b32_e64 v173, 0, v31, s7
	.loc	1 382 31                        ; attention_backward.py:382:31
	v_dual_mul_f32 v25, v89, v216 :: v_dual_mul_f32 v110, v110, v195
	v_dual_mul_f32 v30, v98, v221 :: v_dual_mul_f32 v31, v99, v222
	v_dual_mov_b32 v124, v125 :: v_dual_mul_f32 v151, v86, v104
	v_mul_f32_e32 v153, v87, v105
	v_dual_mul_f32 v116, v116, v189 :: v_dual_mul_f32 v93, v93, v191
	v_dual_mul_f32 v94, v94, v192 :: v_dual_mul_f32 v95, v95, v193
	v_mul_f32_e32 v113, v113, v198
	.loc	1 382 30 is_stmt 0              ; attention_backward.py:382:30
	v_cmp_o_f32_e64 s38, v180, v180
	v_bfe_u32 v189, v203, 16, 1
	v_cmp_o_f32_e64 s44, v202, v202
	v_bfe_u32 v191, v201, 16, 1
	v_bfe_u32 v192, v200, 16, 1
	v_bfe_u32 v193, v199, 16, 1
	v_add3_u32 v180, v180, v184, 0x7fff
	v_bfe_u32 v184, v207, 16, 1
	v_bfe_u32 v196, v19, 16, 1
	v_bfe_u32 v198, v21, 16, 1
	v_add3_u32 v190, v202, v190, 0x7fff
	v_bfe_u32 v202, v22, 16, 1
	v_mov_b32_e32 v125, v126
	.loc	1 382 31                        ; attention_backward.py:382:31
	v_dual_mul_f32 v133, v80, v102 :: v_dual_mov_b32 v126, v127
	.loc	1 330 17 is_stmt 1              ; attention_backward.py:330:17
	s_and_b32 s9, s18, s17
	.loc	1 382 31                        ; attention_backward.py:382:31
	v_mul_f32_e32 v109, v109, v186
	.loc	1 330 17                        ; attention_backward.py:330:17
	s_and_b32 s9, s2, s9
	.loc	1 382 30                        ; attention_backward.py:382:30
	v_bfe_u32 v155, v179, 16, 1
	.loc	1 345 29                        ; attention_backward.py:345:29
	v_cndmask_b32_e64 v175, 0, v76, s9
	.loc	1 382 30                        ; attention_backward.py:382:30
	v_bfe_u32 v158, v177, 16, 1
	v_bfe_u32 v159, v176, 16, 1
	v_bfe_u32 v160, v82, 16, 1
	v_bfe_u32 v161, v182, 16, 1
	v_bfe_u32 v183, v181, 16, 1
	v_bfe_u32 v186, v206, 16, 1
	v_cmp_o_f32_e64 s43, v203, v203
	v_cmp_o_f32_e64 s45, v201, v201
	v_cmp_o_f32_e64 s46, v200, v200
	v_cmp_o_f32_e64 s47, v199, v199
	v_cmp_o_f32_e64 s4, v207, v207
	v_cmp_o_f32_e64 s7, v19, v19
	v_cmp_o_f32_e64 s9, v21, v21
	v_add3_u32 v189, v203, v189, 0x7fff
	v_cmp_o_f32_e64 s10, v22, v22
	v_add3_u32 v191, v201, v191, 0x7fff
	v_bfe_u32 v201, v23, 16, 1
	v_add3_u32 v192, v200, v192, 0x7fff
	v_bfe_u32 v200, v24, 16, 1
	v_add3_u32 v193, v199, v193, 0x7fff
	v_bfe_u32 v199, v25, 16, 1
	v_bfe_u32 v203, v26, 16, 1
	v_bfe_u32 v204, v27, 16, 1
	v_add3_u32 v184, v207, v184, 0x7fff
	v_bfe_u32 v207, v97, 16, 1
	v_add3_u32 v19, v19, v196, 0x7fff
	v_bfe_u32 v196, v133, 16, 1
	v_add3_u32 v21, v21, v198, 0x7fff
	v_bfe_u32 v198, v151, 16, 1
	v_add3_u32 v22, v22, v202, 0x7fff
	v_bfe_u32 v202, v153, 16, 1
	v_cmp_o_f32_e64 s31, v179, v179
	v_cmp_o_f32_e64 s33, v177, v177
	v_cmp_o_f32_e64 s34, v176, v176
	v_cmp_o_f32_e64 s35, v82, v82
	v_cmp_o_f32_e64 s36, v182, v182
	v_cmp_o_f32_e64 s37, v181, v181
	v_cmp_o_f32_e64 s40, v206, v206
	v_add3_u32 v155, v179, v155, 0x7fff
	v_add3_u32 v158, v177, v158, 0x7fff
	v_add3_u32 v159, v176, v159, 0x7fff
	v_add3_u32 v82, v82, v160, 0x7fff
	v_add3_u32 v161, v182, v161, 0x7fff
	v_add3_u32 v181, v181, v183, 0x7fff
	v_add3_u32 v186, v206, v186, 0x7fff
	v_cmp_o_f32_e64 s11, v23, v23
	v_cmp_o_f32_e64 s12, v24, v24
	v_cmp_o_f32_e64 s13, v25, v25
	v_cmp_o_f32_e64 s14, v26, v26
	v_cmp_o_f32_e64 s15, v27, v27
	v_cmp_o_f32_e64 s21, v97, v97
	v_cmp_o_f32_e64 s24, v133, v133
	v_cmp_o_f32_e64 s26, v151, v151
	v_cmp_o_f32_e64 s27, v153, v153
	v_add3_u32 v23, v23, v201, 0x7fff
	v_bfe_u32 v201, v154, 16, 1
	v_add3_u32 v24, v24, v200, 0x7fff
	v_bfe_u32 v200, v106, 16, 1
	v_add3_u32 v25, v25, v199, 0x7fff
	v_bfe_u32 v199, v107, 16, 1
	v_add3_u32 v26, v26, v203, 0x7fff
	v_bfe_u32 v203, v108, 16, 1
	v_add3_u32 v27, v27, v204, 0x7fff
	v_bfe_u32 v204, v109, 16, 1
	v_add3_u32 v97, v97, v207, 0x7fff
	v_bfe_u32 v207, v94, 16, 1
	v_add3_u32 v133, v133, v196, 0x7fff
	v_bfe_u32 v196, v110, 16, 1
	v_add3_u32 v151, v151, v198, 0x7fff
	v_bfe_u32 v198, v112, 16, 1
	v_add3_u32 v153, v153, v202, 0x7fff
	v_bfe_u32 v202, v113, 16, 1
	v_cmp_o_f32_e64 s28, v154, v154
	v_cmp_o_f32_e64 s29, v106, v106
	v_cmp_o_f32_e64 s30, v107, v107
	v_cmp_o_f32_e64 s54, v108, v108
	v_cmp_o_f32_e64 s55, v109, v109
	v_cmp_o_f32_e64 s61, v94, v94
	v_cmp_o_f32_e64 s64, v110, v110
	v_cmp_o_f32_e64 s66, v112, v112
	v_cmp_o_f32_e64 s67, v113, v113
	v_add3_u32 v154, v154, v201, 0x7fff
	v_add3_u32 v200, v106, v200, 0x7fff
	v_add3_u32 v199, v107, v199, 0x7fff
	v_add3_u32 v201, v108, v203, 0x7fff
	v_add3_u32 v203, v109, v204, 0x7fff
	v_add3_u32 v94, v94, v207, 0x7fff
	v_add3_u32 v204, v110, v196, 0x7fff
	v_add3_u32 v207, v112, v198, 0x7fff
	v_add3_u32 v202, v113, v202, 0x7fff
	v_cndmask_b16 v106.l, 0x7fff, v155.h, s31
	v_cndmask_b16 v106.h, 0x7fff, v158.h, s33
	v_cndmask_b16 v107.l, 0x7fff, v159.h, s34
	v_cndmask_b16 v107.h, 0x7fff, v82.h, s35
	v_cndmask_b16 v108.l, 0x7fff, v161.h, s36
	v_cndmask_b16 v108.h, 0x7fff, v181.h, s37
	v_cndmask_b16 v109.l, 0x7fff, v180.h, s38
	v_cndmask_b16 v109.h, 0x7fff, v178.h, s39
	v_cndmask_b16 v110.l, 0x7fff, v186.h, s40
	v_cndmask_b16 v110.h, 0x7fff, v187.h, s41
	v_cndmask_b16 v111.h, 0x7fff, v189.h, s43
	v_cndmask_b16 v112.l, 0x7fff, v190.h, s44
	v_cndmask_b16 v112.h, 0x7fff, v191.h, s45
	v_cndmask_b16 v113.l, 0x7fff, v192.h, s46
	v_cndmask_b16 v113.h, 0x7fff, v193.h, s47
	.loc	1 382 31 is_stmt 0              ; attention_backward.py:382:31
	v_mul_f32_e32 v129, v79, v101
	.loc	1 309 31 is_stmt 1              ; attention_backward.py:309:31
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 382 30                        ; attention_backward.py:382:30
	v_bfe_u32 v176, v211, 16, 1
	.loc	1 391 32                        ; attention_backward.py:391:32
	v_wmma_f32_16x16x16_bf16 v[66:73], v[106:113], v[33:40], v[66:73]
	v_dual_mov_b32 v113, v40 :: v_dual_mov_b32 v112, v39
	v_dual_mov_b32 v111, v38 :: v_dual_mov_b32 v110, v37
	v_dual_mov_b32 v109, v36 :: v_dual_mov_b32 v108, v35
	v_dual_mov_b32 v107, v34 :: v_dual_mov_b32 v106, v33
	v_dual_mov_b32 v33, v41 :: v_dual_mov_b32 v34, v42
	v_dual_mov_b32 v35, v43 :: v_dual_mov_b32 v36, v44
	v_dual_mov_b32 v37, v45 :: v_dual_mov_b32 v38, v46
	v_dual_mov_b32 v39, v47 :: v_dual_mov_b32 v40, v48
	v_dual_mov_b32 v41, v140 :: v_dual_mov_b32 v42, v141
	v_dual_mov_b32 v43, v142 :: v_dual_mov_b32 v44, v143
	v_dual_mov_b32 v45, v144 :: v_dual_mov_b32 v46, v145
	v_dual_mov_b32 v47, v146 :: v_dual_mov_b32 v48, v147
	s_clause 0x1                            ; 32-byte Folded Reload
	scratch_load_b128 v[140:143], off, off
	scratch_load_b128 v[144:147], off, off offset:16
	.loc	1 382 31                        ; attention_backward.py:382:31
	v_mul_f32_e32 v96, v96, v194
	.loc	1 382 30 is_stmt 0              ; attention_backward.py:382:30
	v_bfe_u32 v194, v214, 16, 1
	v_bfe_u32 v179, v213, 16, 1
	v_bfe_u32 v177, v212, 16, 1
	v_bfe_u32 v160, v210, 16, 1
	v_bfe_u32 v182, v209, 16, 1
	v_bfe_u32 v183, v208, 16, 1
	v_bfe_u32 v195, v18, 16, 1
	v_add3_u32 v206, v211, v176, 0x7fff
	v_bfe_u32 v176, v29, 16, 1
	v_cmp_o_f32_e64 s48, v214, v214
	v_cmp_o_f32_e64 s49, v213, v213
	v_cmp_o_f32_e64 s50, v212, v212
	v_cmp_o_f32_e64 s51, v211, v211
	v_cmp_o_f32_e64 s52, v210, v210
	v_cmp_o_f32_e64 s53, v209, v209
	v_cmp_o_f32_e64 s1, v208, v208
	v_cmp_o_f32_e64 s6, v18, v18
	v_add3_u32 v194, v214, v194, 0x7fff
	v_add3_u32 v179, v213, v179, 0x7fff
	v_add3_u32 v177, v212, v177, 0x7fff
	v_cmp_o_f32_e64 s17, v29, v29
	v_add3_u32 v160, v210, v160, 0x7fff
	v_bfe_u32 v210, v30, 16, 1
	v_add3_u32 v182, v209, v182, 0x7fff
	v_bfe_u32 v209, v31, 16, 1
	v_add3_u32 v183, v208, v183, 0x7fff
	v_bfe_u32 v208, v32, 16, 1
	v_add3_u32 v18, v18, v195, 0x7fff
	v_bfe_u32 v195, v129, 16, 1
	v_add3_u32 v29, v29, v176, 0x7fff
	v_bfe_u32 v176, v115, 16, 1
	v_cmp_o_f32_e64 s18, v30, v30
	v_cmp_o_f32_e64 s19, v31, v31
	v_cmp_o_f32_e64 s20, v32, v32
	v_cmp_o_f32_e64 s23, v129, v129
	v_cmp_o_f32_e64 s57, v115, v115
	v_add3_u32 v30, v30, v210, 0x7fff
	v_bfe_u32 v210, v116, 16, 1
	v_add3_u32 v31, v31, v209, 0x7fff
	v_bfe_u32 v209, v117, 16, 1
	v_add3_u32 v32, v32, v208, 0x7fff
	v_bfe_u32 v208, v93, 16, 1
	v_bfe_u32 v185, v95, 16, 1
	v_add3_u32 v129, v129, v195, 0x7fff
	v_bfe_u32 v195, v96, 16, 1
	v_add3_u32 v115, v115, v176, 0x7fff
	v_cndmask_b16 v176.l, 0x7fff, v194.h, s48
	v_cndmask_b16 v176.h, 0x7fff, v179.h, s49
	v_cndmask_b16 v177.l, 0x7fff, v177.h, s50
	v_cndmask_b16 v177.h, 0x7fff, v206.h, s51
	v_cndmask_b16 v178.l, 0x7fff, v160.h, s52
	v_cndmask_b16 v178.h, 0x7fff, v182.h, s53
	v_cndmask_b16 v179.l, 0x7fff, v183.h, s1
	v_cndmask_b16 v179.h, 0x7fff, v184.h, s4
	v_cndmask_b16 v180.l, 0x7fff, v17.h, s5
	v_cndmask_b16 v180.h, 0x7fff, v18.h, s6
	v_cndmask_b16 v181.l, 0x7fff, v19.h, s7
	v_cndmask_b16 v181.h, 0x7fff, v20.h, s8
	v_cndmask_b16 v182.l, 0x7fff, v21.h, s9
	v_cndmask_b16 v182.h, 0x7fff, v22.h, s10
	v_cndmask_b16 v183.l, 0x7fff, v23.h, s11
	v_cndmask_b16 v183.h, 0x7fff, v24.h, s12
	.loc	1 309 31 is_stmt 1              ; attention_backward.py:309:31
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
	.loc	1 382 30                        ; attention_backward.py:382:30
	v_cmp_o_f32_e64 s58, v116, v116
	v_cmp_o_f32_e64 s59, v117, v117
	v_cmp_o_f32_e64 s60, v93, v93
	v_cmp_o_f32_e64 s62, v95, v95
	v_cmp_o_f32_e64 s63, v96, v96
	v_add3_u32 v116, v116, v210, 0x7fff
	v_add3_u32 v117, v117, v209, 0x7fff
	v_add3_u32 v93, v93, v208, 0x7fff
	v_add3_u32 v95, v95, v185, 0x7fff
	v_add3_u32 v96, v96, v195, 0x7fff
	v_cndmask_b16 v184.l, 0x7fff, v25.h, s13
	v_cndmask_b16 v184.h, 0x7fff, v26.h, s14
	v_cndmask_b16 v185.l, 0x7fff, v27.h, s15
	v_cndmask_b16 v185.h, 0x7fff, v28.h, s16
	v_cndmask_b16 v186.l, 0x7fff, v29.h, s17
	v_cndmask_b16 v186.h, 0x7fff, v30.h, s18
	v_cndmask_b16 v187.l, 0x7fff, v31.h, s19
	v_cndmask_b16 v187.h, 0x7fff, v32.h, s20
	v_cndmask_b16 v188.l, 0x7fff, v97.h, s21
	v_cndmask_b16 v189.l, 0x7fff, v129.h, s23
	v_cndmask_b16 v189.h, 0x7fff, v133.h, s24
	v_cndmask_b16 v190.l, 0x7fff, v134.h, s25
	v_cndmask_b16 v190.h, 0x7fff, v151.h, s26
	v_cndmask_b16 v191.l, 0x7fff, v153.h, s27
	v_cndmask_b16 v191.h, 0x7fff, v154.h, s28
	.loc	1 391 32                        ; attention_backward.py:391:32
	v_wmma_f32_16x16x16_bf16 v[66:73], v[176:183], v[33:40], v[66:73]
	.loc	1 382 30                        ; attention_backward.py:382:30
	v_cndmask_b16 v192.l, 0x7fff, v200.h, s29
	v_cndmask_b16 v192.h, 0x7fff, v199.h, s30
	v_cndmask_b16 v193.l, 0x7fff, v201.h, s54
	v_cndmask_b16 v193.h, 0x7fff, v203.h, s55
	v_cndmask_b16 v194.l, 0x7fff, v114.h, s56
	v_cndmask_b16 v194.h, 0x7fff, v115.h, s57
	v_cndmask_b16 v195.l, 0x7fff, v116.h, s58
	v_cndmask_b16 v195.h, 0x7fff, v117.h, s59
	v_cndmask_b16 v196.l, 0x7fff, v93.h, s60
	v_cndmask_b16 v196.h, 0x7fff, v94.h, s61
	v_cndmask_b16 v197.l, 0x7fff, v95.h, s62
	v_cndmask_b16 v197.h, 0x7fff, v96.h, s63
	v_cndmask_b16 v198.l, 0x7fff, v204.h, s64
	v_cndmask_b16 v198.h, 0x7fff, v205.h, s65
	v_cndmask_b16 v199.l, 0x7fff, v207.h, s66
	v_cndmask_b16 v199.h, 0x7fff, v202.h, s67
	.loc	1 391 32                        ; attention_backward.py:391:32
	v_wmma_f32_16x16x16_bf16 v[66:73], v[184:191], v[41:48], v[66:73]
	.loc	1 309 31                        ; attention_backward.py:309:31
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
	.loc	1 270 9                         ; attention_backward.py:270:9
	s_add_i32 s90, s90, 16
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	s_cmp_lt_i32 s90, s91
	.loc	1 391 32                        ; attention_backward.py:391:32
	s_waitcnt vmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[66:73], v[192:199], v[140:147], v[66:73]
	v_dual_mov_b32 v117, v118 :: v_dual_sub_f32 v24, v73, v152
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 396 43                        ; attention_backward.py:396:43
	v_sub_f32_e32 v17, v66, v152
	v_sub_f32_e32 v18, v67, v152
	s_delay_alu instid0(VALU_DEP_4)
	v_sub_f32_e32 v19, v68, v152
	v_sub_f32_e32 v20, v69, v152
	v_sub_f32_e32 v21, v70, v152
	v_sub_f32_e32 v22, v71, v152
	v_sub_f32_e32 v23, v72, v152
	.loc	1 396 26 is_stmt 0              ; attention_backward.py:396:26
	v_dual_mul_f32 v17, v168, v17 :: v_dual_mul_f32 v18, v169, v18
	v_dual_mul_f32 v19, v170, v19 :: v_dual_mul_f32 v20, v171, v20
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_dual_mul_f32 v21, v172, v21 :: v_dual_mul_f32 v22, v173, v22
	v_dual_mul_f32 v23, v174, v23 :: v_dual_mul_f32 v24, v175, v24
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 397 34 is_stmt 1              ; attention_backward.py:397:34
	v_dual_mul_f32 v17, s89, v17 :: v_dual_mul_f32 v18, s89, v18
	v_dual_mul_f32 v19, s89, v19 :: v_dual_mul_f32 v20, s89, v20
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_dual_mul_f32 v21, s89, v21 :: v_dual_mul_f32 v22, s89, v22
	v_dual_mul_f32 v23, s89, v23 :: v_dual_mul_f32 v24, s89, v24
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
	v_cmp_o_f32_e64 s1, v17, v17
	v_cmp_o_f32_e64 s4, v18, v18
	v_cmp_o_f32_e64 s5, v19, v19
	v_cmp_o_f32_e64 s6, v20, v20
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
	v_cndmask_b16 v17.l, 0x7fff, v17.h, s1
	v_cndmask_b16 v17.h, 0x7fff, v18.h, s4
	v_cndmask_b16 v18.l, 0x7fff, v19.h, s5
	v_cndmask_b16 v18.h, 0x7fff, v20.h, s6
	v_cndmask_b16 v19.l, 0x7fff, v21.h, s7
	v_cndmask_b16 v19.h, 0x7fff, v22.h, s8
	v_cndmask_b16 v20.l, 0x7fff, v23.h, s9
	v_cndmask_b16 v20.h, 0x7fff, v24.h, s10
	v_permlanex16_b32 v21, v17, s94, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v22, v18, s94, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v23, v19, s94, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_permlanex16_b32 v24, v20, s94, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v66, v21, v17, v156
	v_perm_b32 v67, v21, v17, v157
	v_perm_b32 v68, v22, v18, v156
	v_perm_b32 v69, v22, v18, v157
	v_perm_b32 v70, v23, v19, v156
	v_perm_b32 v71, v23, v19, v157
	v_perm_b32 v72, v24, v20, v156
	v_perm_b32 v73, v24, v20, v157
	.loc	1 398 31 is_stmt 1              ; attention_backward.py:398:31
	s_waitcnt lgkmcnt(17)
	s_delay_alu instid0(VALU_DEP_1)
	v_wmma_f32_16x16x16_bf16 v[57:64], v[74:81], v[66:73], v[57:64]
	s_waitcnt lgkmcnt(1)
	v_wmma_f32_16x16x16_bf16 v[49:56], v[90:97], v[66:73], v[49:56]
	v_wmma_f32_16x16x16_bf16 v[9:16], v[98:105], v[66:73], v[9:16]
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[1:8], v[82:89], v[66:73], v[1:8]
	s_cbranch_scc1 .LBB0_10
; %bb.11:                               ; %Flow
	.loc	1 0 31 is_stmt 0                ; attention_backward.py:0:31
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v99, off, off offset:80
	scratch_load_b32 v100, off, off offset:84
	v_or_b32_e32 v101, 12, v130
	v_or_b32_e32 v102, 10, v130
	v_or_b32_e32 v103, 14, v130
.LBB0_12:                               ; %._crit_edge82
	.loc	1 401 13 is_stmt 1              ; attention_backward.py:401:13
	s_waitcnt vmcnt(1)
	v_mul_lo_u32 v0, s92, v99
	s_mul_i32 s4, s92, s88
	.loc	1 408 40                        ; attention_backward.py:408:40
	v_cmp_gt_i32_e32 vcc_lo, s92, v130
	.loc	1 405 9                         ; attention_backward.py:405:9
	s_and_b32 s69, s69, 0xffff
	s_mov_b32 s71, 0x31027000
	s_mov_b32 s70, 0x7ffffffe
	.loc	1 168 40                        ; attention_backward.py:168:40
	v_or_b32_e32 v19, 32, v130
	.loc	1 408 18                        ; attention_backward.py:408:18
	s_and_b32 vcc_lo, s2, vcc_lo
	.loc	1 401 13                        ; attention_backward.py:401:13
	v_add_nc_u32_e32 v21, s4, v0
	.loc	1 168 40                        ; attention_backward.py:168:40
	v_or_b32_e32 v20, 16, v130
	v_or_b32_e32 v18, 48, v130
	.loc	1 408 40                        ; attention_backward.py:408:40
	v_cmp_gt_i32_e64 s1, s92, v19
	.loc	1 168 40                        ; attention_backward.py:168:40
	s_waitcnt vmcnt(0)
	v_or_b32_e32 v17, 62, v100
	.loc	1 405 9                         ; attention_backward.py:405:9
	v_add_lshl_u32 v22, v21, v130, 2
	v_add_lshl_u32 v23, v21, v251, 2
	v_add_lshl_u32 v24, v21, v252, 2
	v_add_lshl_u32 v25, v21, v101, 2
	.loc	1 401 13                        ; attention_backward.py:401:13
	v_add_nc_u32_e32 v0, v0, v130
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 405 9                         ; attention_backward.py:405:9
	v_dual_cndmask_b32 v22, 0x80000000, v22 :: v_dual_cndmask_b32 v23, 0x80000000, v23
	v_dual_cndmask_b32 v24, 0x80000000, v24 :: v_dual_cndmask_b32 v25, 0x80000000, v25
	v_add_lshl_u32 v26, v21, v103, 2
	s_clause 0x2
	buffer_store_b32 v57, v22, s[68:71], 0 offen
	buffer_store_b32 v58, v23, s[68:71], 0 offen
	buffer_store_b32 v59, v24, s[68:71], 0 offen
	v_add_lshl_u32 v22, v21, v254, 2
	v_add_lshl_u32 v23, v21, v253, 2
	v_add_lshl_u32 v24, v21, v102, 2
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
	buffer_store_b32 v60, v22, s[68:71], 0 offen
	buffer_store_b32 v61, v23, s[68:71], 0 offen
	buffer_store_b32 v62, v24, s[68:71], 0 offen
	buffer_store_b32 v63, v25, s[68:71], 0 offen
	buffer_store_b32 v64, v26, s[68:71], 0 offen
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
	buffer_store_b32 v49, v20, s[68:71], 0 offen
	buffer_store_b32 v50, v22, s[68:71], 0 offen
	buffer_store_b32 v51, v23, s[68:71], 0 offen
	v_cndmask_b32_e32 v20, 0x80000000, v25, vcc_lo
	v_add_nc_u32_e32 v22, 0x68, v0
	buffer_store_b32 v52, v24, s[68:71], 0 offen
	v_add_nc_u32_e32 v23, 0x70, v0
	v_add_nc_u32_e32 v24, 0x78, v0
	buffer_store_b32 v53, v20, s[68:71], 0 offen
	v_cndmask_b32_e32 v20, 0x80000000, v22, vcc_lo
	.loc	1 408 40                        ; attention_backward.py:408:40
	v_cmp_gt_i32_e64 s3, s92, v18
	.loc	1 405 9                         ; attention_backward.py:405:9
	v_dual_cndmask_b32 v22, 0x80000000, v23 :: v_dual_cndmask_b32 v23, 0x80000000, v24
	.loc	1 408 18                        ; attention_backward.py:408:18
	s_and_b32 vcc_lo, s2, s1
	.loc	1 405 9                         ; attention_backward.py:405:9
	buffer_store_b32 v54, v20, s[68:71], 0 offen
	v_add_nc_u32_e32 v20, 0x88, v0
	v_cndmask_b32_e32 v19, 0x80000000, v19, vcc_lo
	s_clause 0x2
	buffer_store_b32 v55, v22, s[68:71], 0 offen
	buffer_store_b32 v56, v23, s[68:71], 0 offen
	buffer_store_b32 v9, v19, s[68:71], 0 offen
	v_add_nc_u32_e32 v9, 0x90, v0
	v_cndmask_b32_e32 v19, 0x80000000, v20, vcc_lo
	v_add_nc_u32_e32 v20, 0x98, v0
	v_add_nc_u32_e32 v22, 0xa0, v0
	v_add_nc_u32_e32 v23, 0xa8, v0
	v_cndmask_b32_e32 v9, 0x80000000, v9, vcc_lo
	buffer_store_b32 v10, v19, s[68:71], 0 offen
	v_dual_cndmask_b32 v10, 0x80000000, v20 :: v_dual_cndmask_b32 v19, 0x80000000, v22
	v_cndmask_b32_e32 v20, 0x80000000, v23, vcc_lo
	buffer_store_b32 v11, v9, s[68:71], 0 offen
	v_add_nc_u32_e32 v9, 0xb0, v0
	s_clause 0x2
	buffer_store_b32 v12, v10, s[68:71], 0 offen
	buffer_store_b32 v13, v19, s[68:71], 0 offen
	buffer_store_b32 v14, v20, s[68:71], 0 offen
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
	buffer_store_b32 v15, v9, s[68:71], 0 offen
	buffer_store_b32 v16, v10, s[68:71], 0 offen
	buffer_store_b32 v1, v11, s[68:71], 0 offen
	buffer_store_b32 v2, v12, s[68:71], 0 offen
	buffer_store_b32 v3, v13, s[68:71], 0 offen
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
	buffer_store_b32 v4, v1, s[68:71], 0 offen
	buffer_store_b32 v5, v2, s[68:71], 0 offen
	buffer_store_b32 v6, v3, s[68:71], 0 offen
	buffer_store_b32 v7, v0, s[68:71], 0 offen
	buffer_store_b32 v8, v9, s[68:71], 0 offen
	.loc	1 60 5                          ; attention_backward.py:60:5
	s_endpgm
.Ltmp72:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_attention_bwd_dq_int4xint4_none_causal_local_outfloat32_doutfloat32_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1
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
		.amdhsa_next_free_sgpr 95
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
	.size	amd_strix_halo_gfx1151_attention_bwd_dq_int4xint4_none_causal_local_outfloat32_doutfloat32_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1, .Lfunc_end0-amd_strix_halo_gfx1151_attention_bwd_dq_int4xint4_none_causal_local_outfloat32_doutfloat32_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_attention_bwd_dq_int4xint4_none_causal_local_outfloat32_doutfloat32_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.num_vgpr, 256
	.set amd_strix_halo_gfx1151_attention_bwd_dq_int4xint4_none_causal_local_outfloat32_doutfloat32_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.num_agpr, 0
	.set amd_strix_halo_gfx1151_attention_bwd_dq_int4xint4_none_causal_local_outfloat32_doutfloat32_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.numbered_sgpr, 95
	.set amd_strix_halo_gfx1151_attention_bwd_dq_int4xint4_none_causal_local_outfloat32_doutfloat32_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_attention_bwd_dq_int4xint4_none_causal_local_outfloat32_doutfloat32_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.private_seg_size, 92
	.set amd_strix_halo_gfx1151_attention_bwd_dq_int4xint4_none_causal_local_outfloat32_doutfloat32_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.uses_vcc, 1
	.set amd_strix_halo_gfx1151_attention_bwd_dq_int4xint4_none_causal_local_outfloat32_doutfloat32_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.uses_flat_scratch, 1
	.set amd_strix_halo_gfx1151_attention_bwd_dq_int4xint4_none_causal_local_outfloat32_doutfloat32_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_attention_bwd_dq_int4xint4_none_causal_local_outfloat32_doutfloat32_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.has_recursion, 0
	.set amd_strix_halo_gfx1151_attention_bwd_dq_int4xint4_none_causal_local_outfloat32_doutfloat32_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 15484
; TotalNumSgprs: 97
; NumVgprs: 256
; ScratchSize: 92
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 31
; NumSGPRsForWavesPerEU: 97
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
	.quad	.Ltmp55                         ; DW_AT_low_pc
	.long	.Ltmp57-.Ltmp55                 ; DW_AT_high_pc
	.byte	1                               ; DW_AT_call_file
	.short	258                             ; DW_AT_call_line
	.byte	25                              ; DW_AT_call_column
	.byte	7                               ; Abbrev [7] 0x70:0x14 DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.quad	.Ltmp55                         ; DW_AT_low_pc
	.long	.Ltmp56-.Ltmp55                 ; DW_AT_high_pc
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
	.quad	.Ltmp8-.Lfunc_begin0
	.quad	.Ltmp9-.Lfunc_begin0
	.quad	.Ltmp12-.Lfunc_begin0
	.quad	.Ltmp13-.Lfunc_begin0
	.quad	.Ltmp54-.Lfunc_begin0
	.quad	.Ltmp64-.Lfunc_begin0
	.quad	.Ltmp65-.Lfunc_begin0
	.quad	.Ltmp66-.Lfunc_begin0
	.quad	.Ltmp67-.Lfunc_begin0
	.quad	.Ltmp68-.Lfunc_begin0
	.quad	.Ltmp69-.Lfunc_begin0
	.quad	.Ltmp70-.Lfunc_begin0
	.quad	.Ltmp71-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges1:
	.quad	.Ltmp1-.Lfunc_begin0
	.quad	.Ltmp2-.Lfunc_begin0
	.quad	.Ltmp3-.Lfunc_begin0
	.quad	.Ltmp4-.Lfunc_begin0
	.quad	.Ltmp6-.Lfunc_begin0
	.quad	.Ltmp7-.Lfunc_begin0
	.quad	.Ltmp9-.Lfunc_begin0
	.quad	.Ltmp10-.Lfunc_begin0
	.quad	.Ltmp11-.Lfunc_begin0
	.quad	.Ltmp12-.Lfunc_begin0
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
	.quad	.Ltmp35-.Lfunc_begin0
	.quad	.Ltmp36-.Lfunc_begin0
	.quad	.Ltmp37-.Lfunc_begin0
	.quad	.Ltmp38-.Lfunc_begin0
	.quad	.Ltmp39-.Lfunc_begin0
	.quad	.Ltmp40-.Lfunc_begin0
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
	.quad	.Ltmp53-.Lfunc_begin0
	.quad	.Ltmp64-.Lfunc_begin0
	.quad	.Ltmp65-.Lfunc_begin0
	.quad	.Ltmp66-.Lfunc_begin0
	.quad	.Ltmp67-.Lfunc_begin0
	.quad	.Ltmp68-.Lfunc_begin0
	.quad	.Ltmp69-.Lfunc_begin0
	.quad	.Ltmp70-.Lfunc_begin0
	.quad	.Ltmp71-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges2:
	.quad	.Ltmp58-.Lfunc_begin0
	.quad	.Ltmp59-.Lfunc_begin0
	.quad	.Ltmp60-.Lfunc_begin0
	.quad	.Ltmp61-.Lfunc_begin0
	.quad	.Ltmp62-.Lfunc_begin0
	.quad	.Ltmp63-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges3:
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
	.asciz	"amd_strix_halo_gfx1151_attention_bwd_dq_int4xint4_none_causal_local_outfloat32_doutfloat32_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1"                        ; string offset=97 ; amd_strix_halo_gfx1151_attention_bwd_dq_int4xint4_none_causal_local_outfloat32_doutfloat32_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1
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
    .name:           amd_strix_halo_gfx1151_attention_bwd_dq_int4xint4_none_causal_local_outfloat32_doutfloat32_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1
    .private_segment_fixed_size: 92
    .sgpr_count:     97
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_attention_bwd_dq_int4xint4_none_causal_local_outfloat32_doutfloat32_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.kd
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
