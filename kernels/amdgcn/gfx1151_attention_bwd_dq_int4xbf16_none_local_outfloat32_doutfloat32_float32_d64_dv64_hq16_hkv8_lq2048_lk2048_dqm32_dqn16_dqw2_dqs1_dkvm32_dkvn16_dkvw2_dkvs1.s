	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_attention_bwd_dq_int4xbf16_none_local_outfloat32_doutfloat32_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1                          ; -- Begin function amd_strix_halo_gfx1151_attention_bwd_dq_int4xbf16_none_local_outfloat32_doutfloat32_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1
	.p2align	8
	.type	amd_strix_halo_gfx1151_attention_bwd_dq_int4xbf16_none_local_outfloat32_doutfloat32_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1,@function
amd_strix_halo_gfx1151_attention_bwd_dq_int4xbf16_none_local_outfloat32_doutfloat32_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1:                                 ; @amd_strix_halo_gfx1151_attention_bwd_dq_int4xbf16_none_local_outfloat32_doutfloat32_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1
.Lfunc_begin0:
	.file	1 "<repo>/src/amd_strix_halo_kernels" "attention_backward.py"
	.loc	1 60 0                          ; attention_backward.py:60:0
	.cfi_sections .debug_frame
	.cfi_startproc
; %bb.0:
	s_clause 0x1
	s_load_b64 s[34:35], s[0:1], 0x78
	s_load_b128 s[24:27], s[0:1], 0x18
.Ltmp0:
	.loc	1 139 44 prologue_end           ; attention_backward.py:139:44
	v_lshlrev_b32_e32 v1, 4, v0
	.loc	1 124 31                        ; attention_backward.py:124:31
	v_lshrrev_b32_e32 v2, 1, v0
	.loc	1 119 19                        ; attention_backward.py:119:19
	s_lshl_b32 s42, s2, 5
	.loc	1 133 26                        ; attention_backward.py:133:26
	s_lshl_b32 s43, s3, 11
	s_clause 0x1
	s_load_b128 s[8:11], s[0:1], 0x38
	s_load_b128 s[20:23], s[0:1], 0x0
	.loc	1 135 17                        ; attention_backward.py:135:17
	s_add_i32 s33, s42, s43
	.loc	1 139 44                        ; attention_backward.py:139:44
	v_and_b32_e32 v1, 16, v1
	.loc	1 124 21                        ; attention_backward.py:124:21
	v_or_b32_e32 v4, s42, v2
	.loc	1 135 17                        ; attention_backward.py:135:17
	v_or_b32_e32 v3, s33, v2
	.loc	1 124 31                        ; attention_backward.py:124:31
	v_and_b32_e32 v73, 15, v0
	v_lshrrev_b32_e32 v86, 4, v0
	s_mov_b32 s7, 0x31027000
	.loc	1 128 21                        ; attention_backward.py:128:21
	v_cmp_gt_i32_e32 vcc_lo, 0x800, v4
	s_mov_b32 s6, 0x7ffffffe
	.loc	1 168 40                        ; attention_backward.py:168:40
	v_lshlrev_b32_e32 v41, 2, v73
	.loc	1 124 21                        ; attention_backward.py:124:21
	v_or_b32_e32 v4, s42, v86
	.loc	1 125 21                        ; attention_backward.py:125:21
	v_bfe_u32 v87, v0, 4, 1
	v_lshrrev_b32_e32 v88, 2, v0
	.loc	1 139 44                        ; attention_backward.py:139:44
	s_waitcnt lgkmcnt(0)
	v_cmp_gt_i32_e64 s2, s34, v1
	.loc	1 135 17                        ; attention_backward.py:135:17
	v_mad_u64_u32 v[2:3], null, s34, v3, v[1:2]
	.loc	1 167 13                        ; attention_backward.py:167:13
	s_lshl_b32 s12, s35, 2
	s_lshl_b32 s38, s35, 3
	.loc	1 139 22                        ; attention_backward.py:139:22
	s_and_b32 vcc_lo, vcc_lo, s2
	.loc	1 124 31                        ; attention_backward.py:124:31
	v_and_b32_e32 v111, 32, v0
	.loc	1 134 28                        ; attention_backward.py:134:28
	s_and_b32 s5, s21, 0xffff
	s_mov_b32 s4, s20
	v_cndmask_b32_e32 v2, 0x80000000, v2, vcc_lo
	.loc	1 128 21                        ; attention_backward.py:128:21
	v_cmp_gt_i32_e32 vcc_lo, 0x800, v4
	.loc	1 124 31                        ; attention_backward.py:124:31
	v_lshrrev_b32_e32 v83, 1, v111
	.loc	1 167 13                        ; attention_backward.py:167:13
	s_mul_i32 s15, s35, 20
	s_mul_i32 s13, s35, 12
	.loc	1 134 28                        ; attention_backward.py:134:28
	buffer_load_b128 v[42:45], v2, s[4:7], 0 offen
	.loc	1 167 13                        ; attention_backward.py:167:13
	v_mul_lo_u32 v2, s35, v86
	.loc	1 124 31                        ; attention_backward.py:124:31
	v_or_b32_e32 v85, v83, v73
	.loc	1 142 31                        ; attention_backward.py:142:31
	s_and_b32 s5, s25, 0xffff
	s_mov_b32 s4, s24
	.loc	1 167 13                        ; attention_backward.py:167:13
	s_lshl_b32 s14, s35, 4
	.loc	1 125 21                        ; attention_backward.py:125:21
	v_or_b32_e32 v94, 2, v87
	.loc	1 143 17                        ; attention_backward.py:143:17
	v_or_b32_e32 v1, s33, v85
	.loc	1 124 21                        ; attention_backward.py:124:21
	v_or_b32_e32 v3, s42, v85
	.loc	1 125 21                        ; attention_backward.py:125:21
	v_or_b32_e32 v95, 4, v87
	v_or_b32_e32 v93, 6, v87
	v_or_b32_e32 v91, 8, v87
	.loc	1 142 31                        ; attention_backward.py:142:31
	v_lshlrev_b32_e32 v1, 1, v1
	.loc	1 128 21                        ; attention_backward.py:128:21
	v_cmp_gt_i32_e64 s2, 0x800, v3
	.loc	1 125 21                        ; attention_backward.py:125:21
	v_or_b32_e32 v92, 10, v87
	v_or_b32_e32 v90, 12, v87
	v_or_b32_e32 v89, 14, v87
	.loc	1 168 40                        ; attention_backward.py:168:40
	v_and_b32_e32 v112, 3, v0
	.loc	1 142 31                        ; attention_backward.py:142:31
	v_cndmask_b32_e64 v1, 0x80000000, v1, s2
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 200 27                        ; attention_backward.py:200:27
	v_lshlrev_b32_e32 v74, 3, v112
	.loc	1 142 31                        ; attention_backward.py:142:31
	buffer_load_u16 v7, v1, s[4:7], 0 offen
	.loc	1 167 13                        ; attention_backward.py:167:13
	s_mul_i32 s5, s35, s33
	.loc	1 168 40                        ; attention_backward.py:168:40
	v_cmp_gt_i32_e64 s4, s35, v41
	.loc	1 167 13                        ; attention_backward.py:167:13
	v_add3_u32 v1, s5, v41, v2
	.loc	1 166 23                        ; attention_backward.py:166:23
	s_and_b32 s5, s9, 0xffff
	.loc	1 168 18                        ; attention_backward.py:168:18
	s_and_b32 vcc_lo, vcc_lo, s4
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_lshlrev_b32_e32 v2, 2, v1
	v_add_lshl_u32 v4, v1, s12, 2
	v_add_lshl_u32 v5, v1, s38, 2
	v_add_lshl_u32 v9, v1, s15, 2
	v_add_lshl_u32 v6, v1, s13, 2
	.loc	1 167 13                        ; attention_backward.py:167:13
	s_mul_i32 s12, s35, 24
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_add_lshl_u32 v8, v1, s14, 2
	v_cndmask_b32_e32 v2, 0x80000000, v2, vcc_lo
	s_mov_b32 s4, s8
	.loc	1 167 13                        ; attention_backward.py:167:13
	s_mul_i32 s8, s35, 28
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_cndmask_b32_e32 v4, 0x80000000, v4, vcc_lo
	v_add_lshl_u32 v10, v1, s12, 2
	v_cndmask_b32_e32 v5, 0x80000000, v5, vcc_lo
	v_add_lshl_u32 v1, v1, s8, 2
	v_dual_cndmask_b32 v9, 0x80000000, v9 :: v_dual_cndmask_b32 v6, 0x80000000, v6
	v_cndmask_b32_e32 v8, 0x80000000, v8, vcc_lo
	s_clause 0x1
	buffer_load_b128 v[46:49], v2, s[4:7], 0 offen
	buffer_load_b128 v[50:53], v4, s[4:7], 0 offen
	v_dual_cndmask_b32 v10, 0x80000000, v10 :: v_dual_cndmask_b32 v1, 0x80000000, v1
	s_clause 0x5
	buffer_load_b128 v[54:57], v5, s[4:7], 0 offen
	buffer_load_b128 v[63:66], v6, s[4:7], 0 offen
	buffer_load_b128 v[67:70], v8, s[4:7], 0 offen
	buffer_load_b128 v[75:78], v9, s[4:7], 0 offen
	buffer_load_b128 v[79:82], v10, s[4:7], 0 offen
	buffer_load_b128 v[96:99], v1, s[4:7], 0 offen
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
	.loc	1 134 28                        ; attention_backward.py:134:28
	v_lshlrev_b32_e32 v1, 1, v0
	s_clause 0x2
	s_load_b32 s39, s[0:1], 0x80
	s_load_b64 s[6:7], s[0:1], 0x98
	s_load_b32 s8, s[0:1], 0xa0
	.loc	1 121 23                        ; attention_backward.py:121:23
	s_ashr_i32 s4, s3, 31
	.loc	1 134 28                        ; attention_backward.py:134:28
	v_and_b32_e32 v2, 16, v0
	.loc	1 121 23                        ; attention_backward.py:121:23
	s_lshr_b32 s4, s4, 28
	.loc	1 134 28                        ; attention_backward.py:134:28
	v_and_or_b32 v4, v1, 30, v87
	.loc	1 121 23                        ; attention_backward.py:121:23
	s_add_i32 s4, s3, s4
	s_mov_b32 s5, 0
	.loc	1 122 22                        ; attention_backward.py:122:22
	s_and_b32 s9, s4, 0xfff0
	.loc	1 197 28                        ; attention_backward.py:197:28
	s_lshl_b32 s10, s4, 10
	.loc	1 134 28                        ; attention_backward.py:134:28
	v_lshlrev_b32_e32 v4, 2, v4
	v_cmp_eq_u32_e64 s4, 0, v2
	.loc	1 122 22                        ; attention_backward.py:122:22
	s_sub_i32 s3, s3, s9
	.loc	1 197 28                        ; attention_backward.py:197:28
	s_and_b32 s9, s10, 0xffffc000
	.loc	1 123 19                        ; attention_backward.py:123:19
	s_bfe_u32 s10, s3, 0x10007
	.loc	1 134 28                        ; attention_backward.py:134:28
	v_xor_b32_e32 v58, 4, v4
	.loc	1 123 19                        ; attention_backward.py:123:19
	s_add_i32 s3, s3, s10
	s_delay_alu instid0(SALU_CYCLE_1)
	s_bfe_i32 s3, s3, 0x80000
	.loc	1 184 17                        ; attention_backward.py:184:17
	s_waitcnt lgkmcnt(0)
	s_add_i32 s10, s42, s7
	.loc	1 129 27                        ; attention_backward.py:129:27
	v_add_nc_u32_e32 v2, s8, v3
	.loc	1 184 17                        ; attention_backward.py:184:17
	s_add_i32 s10, s10, s8
	.loc	1 123 19                        ; attention_backward.py:123:19
	s_sext_i32_i16 s3, s3
	.loc	1 184 17                        ; attention_backward.py:184:17
	s_add_i32 s10, s10, 32
	.loc	1 197 28                        ; attention_backward.py:197:28
	s_lshl_b32 s3, s3, 10
	.loc	1 182 25                        ; attention_backward.py:182:25
	s_min_i32 s10, s10, 0x800
	.loc	1 181 39                        ; attention_backward.py:181:39
	s_sub_i32 s11, s42, s6
	.loc	1 187 35                        ; attention_backward.py:187:35
	s_add_i32 s10, s10, 15
	.loc	1 197 28                        ; attention_backward.py:197:28
	s_and_b32 s54, s3, 0xfffff800
	.loc	1 187 34                        ; attention_backward.py:187:34
	s_ashr_i32 s3, s10, 31
	.loc	1 181 39                        ; attention_backward.py:181:39
	s_add_i32 s11, s11, s8
	.loc	1 187 34                        ; attention_backward.py:187:34
	s_lshr_b32 s3, s3, 28
	.loc	1 181 25                        ; attention_backward.py:181:25
	s_max_i32 s11, s11, 0
	.loc	1 187 34                        ; attention_backward.py:187:34
	s_add_i32 s10, s10, s3
	.loc	1 186 33                        ; attention_backward.py:186:33
	s_and_b32 s52, s11, 0x7ffffff0
	.loc	1 187 33                        ; attention_backward.py:187:33
	s_and_b32 s53, s10, -16
	.loc	1 197 28                        ; attention_backward.py:197:28
	s_add_i32 s54, s54, s9
	.loc	1 194 9                         ; attention_backward.py:194:9
	s_cmp_lt_i32 s52, s53
	.loc	1 200 27                        ; attention_backward.py:200:27
	v_cmp_gt_i32_e64 s3, s34, v74
	.loc	1 194 9                         ; attention_backward.py:194:9
	s_cselect_b32 s20, -1, 0
	.loc	1 220 21                        ; attention_backward.py:220:21
	s_mul_f32 s8, s39, 0x3fb8aa3b
	.loc	1 194 9                         ; attention_backward.py:194:9
	s_and_b32 vcc_lo, exec_lo, s20
	.loc	1 134 28                        ; attention_backward.py:134:28
	s_waitcnt vmcnt(17)
	ds_bpermute_b32 v8, v4, v42
	ds_bpermute_b32 v62, v58, v42
	ds_bpermute_b32 v61, v58, v43
	ds_bpermute_b32 v60, v58, v44
	.loc	1 176 24                        ; attention_backward.py:176:24
	s_waitcnt vmcnt(7)
	v_dual_mul_f32 v42, v47, v38 :: v_dual_lshlrev_b32 v7, 16, v7
	s_waitcnt vmcnt(5)
	v_mul_f32_e32 v47, v55, v30
	.loc	1 134 28                        ; attention_backward.py:134:28
	ds_bpermute_b32 v6, v4, v43
	.loc	1 176 24                        ; attention_backward.py:176:24
	v_mul_f32_e32 v43, v49, v40
	.loc	1 134 28                        ; attention_backward.py:134:28
	ds_bpermute_b32 v5, v4, v44
	ds_bpermute_b32 v3, v4, v45
	ds_bpermute_b32 v4, v58, v45
	.loc	1 176 24                        ; attention_backward.py:176:24
	v_dual_mul_f32 v44, v51, v34 :: v_dual_mul_f32 v45, v53, v36
	s_waitcnt vmcnt(2)
	v_dual_mul_f32 v49, v57, v32 :: v_dual_mul_f32 v58, v76, v18
	v_mul_f32_e32 v51, v64, v26
	s_waitcnt vmcnt(1)
	v_dual_mul_f32 v53, v66, v28 :: v_dual_mul_f32 v64, v80, v14
	v_dual_mul_f32 v55, v68, v22 :: v_dual_fmac_f32 v42, v46, v37
.Ltmp1:
	.file	2 "<triton>/python/triton/language" "standard.py"
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_fmac_f32_e32 v43, v48, v39
.Ltmp2:
	.loc	1 176 24                        ; attention_backward.py:176:24
	s_waitcnt vmcnt(0)
	v_dual_mul_f32 v57, v70, v24 :: v_dual_mul_f32 v68, v97, v10
	v_dual_mul_f32 v59, v78, v20 :: v_dual_fmac_f32 v58, v75, v17
	v_mul_f32_e32 v66, v82, v16
	v_mul_f32_e32 v70, v99, v12
.Ltmp3:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_dual_fmac_f32 v44, v50, v33 :: v_dual_fmac_f32 v45, v52, v35
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_dual_fmac_f32 v47, v54, v29 :: v_dual_fmac_f32 v66, v81, v15
	v_dual_fmac_f32 v49, v56, v31 :: v_dual_fmac_f32 v64, v79, v13
	v_dual_fmac_f32 v51, v63, v25 :: v_dual_fmac_f32 v70, v98, v11
	v_dual_fmac_f32 v53, v65, v27 :: v_dual_fmac_f32 v68, v96, v9
	v_dual_fmac_f32 v55, v67, v21 :: v_dual_add_f32 v42, v42, v43
	v_fmac_f32_e32 v57, v69, v23
	v_add_f32_e32 v43, v44, v45
	v_dual_add_f32 v44, v47, v49 :: v_dual_fmac_f32 v59, v77, v19
	v_dual_add_f32 v45, v51, v53 :: v_dual_add_f32 v48, v64, v66
.Ltmp4:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_mov_b32_e32 v50, v42
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp5:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_dual_add_f32 v46, v55, v57 :: v_dual_add_f32 v47, v58, v59
.Ltmp6:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_dual_mov_b32 v52, v44 :: v_dual_mov_b32 v51, v43
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_mov_b32_e32 v56, v48
	v_mov_b32_dpp v50, v50 row_xmask:8 row_mask:0xf bank_mask:0xf
	v_mov_b32_e32 v53, v45
.Ltmp7:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_dual_add_f32 v49, v68, v70 :: v_dual_mov_b32 v54, v46
.Ltmp8:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_mov_b32_dpp v51, v51 row_xmask:8 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v52, v52 row_xmask:8 row_mask:0xf bank_mask:0xf
	v_dual_mov_b32 v55, v47 :: v_dual_add_f32 v42, v42, v50
	v_mov_b32_dpp v53, v53 row_xmask:8 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v54, v54 row_xmask:8 row_mask:0xf bank_mask:0xf
	v_mov_b32_e32 v57, v49
	v_mov_b32_dpp v56, v56 row_xmask:8 row_mask:0xf bank_mask:0xf
.Ltmp9:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_dual_add_f32 v43, v43, v51 :: v_dual_add_f32 v44, v44, v52
.Ltmp10:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_mov_b32_dpp v55, v55 row_xmask:8 row_mask:0xf bank_mask:0xf
.Ltmp11:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_dual_add_f32 v45, v45, v53 :: v_dual_mov_b32 v50, v42
	v_add_f32_e32 v46, v46, v54
.Ltmp12:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_mov_b32_dpp v57, v57 row_xmask:8 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_4) | instid1(VALU_DEP_4)
.Ltmp13:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_dual_add_f32 v47, v47, v55 :: v_dual_mov_b32 v52, v44
	v_dual_add_f32 v48, v48, v56 :: v_dual_mov_b32 v51, v43
.Ltmp14:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_mov_b32_dpp v50, v50 row_xmask:4 row_mask:0xf bank_mask:0xf
	v_mov_b32_e32 v53, v45
.Ltmp15:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_dual_add_f32 v49, v49, v57 :: v_dual_mov_b32 v54, v46
.Ltmp16:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_mov_b32_e32 v56, v48
	v_mov_b32_dpp v51, v51 row_xmask:4 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v52, v52 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp17:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_e32 v42, v42, v50
.Ltmp18:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_mov_b32_dpp v53, v53 row_xmask:4 row_mask:0xf bank_mask:0xf
	v_mov_b32_e32 v55, v47
	v_dual_mov_b32 v57, v49 :: v_dual_add_f32 v50, v43, v51
	v_mov_b32_dpp v54, v54 row_xmask:4 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp19:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_dual_add_f32 v51, v44, v52 :: v_dual_add_f32 v52, v45, v53
.Ltmp20:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_mov_b32_dpp v55, v55 row_xmask:4 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v56, v56 row_xmask:4 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v57, v57 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp21:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_e32 v53, v46, v54
.Ltmp22:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_dual_mov_b32 v43, v42 :: v_dual_mov_b32 v46, v52
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_3)
.Ltmp23:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_dual_add_f32 v54, v47, v55 :: v_dual_add_f32 v55, v48, v56
.Ltmp24:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_mov_b32_e32 v44, v50
.Ltmp25:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_dual_add_f32 v56, v49, v57 :: v_dual_mov_b32 v45, v51
.Ltmp26:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_mov_b32_e32 v48, v54
	v_mov_b32_dpp v46, v46 row_xmask:2 row_mask:0xf bank_mask:0xf
	v_mov_b32_e32 v49, v55
	v_mov_b32_dpp v44, v44 row_xmask:2 row_mask:0xf bank_mask:0xf
	v_mov_b32_e32 v47, v53
	v_mov_b32_dpp v48, v48 row_xmask:2 row_mask:0xf bank_mask:0xf
	v_mov_b32_e32 v57, v56
	v_mov_b32_dpp v43, v43 row_xmask:2 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v45, v45 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp27:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_e32 v44, v50, v44
.Ltmp28:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_mov_b32_dpp v47, v47 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp29:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_e32 v46, v52, v46
.Ltmp30:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_mov_b32_dpp v49, v49 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp31:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_e32 v48, v54, v48
.Ltmp32:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_mov_b32_dpp v57, v57 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp33:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_e32 v43, v42, v43
	v_dual_add_f32 v45, v51, v45 :: v_dual_mov_b32 v52, v44
	v_dual_add_f32 v47, v53, v47 :: v_dual_mov_b32 v54, v46
	v_add_f32_e32 v49, v55, v49
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_dual_add_f32 v50, v56, v57 :: v_dual_mov_b32 v51, v43
.Ltmp34:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_mov_b32_e32 v53, v45
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_mov_b32 v55, v47 :: v_dual_mov_b32 v56, v48
	v_dual_mov_b32 v57, v49 :: v_dual_mov_b32 v58, v50
	s_delay_alu instid0(VALU_DEP_4)
	v_mov_b32_dpp v51, v51 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v52, v52 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v53, v53 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v54, v54 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v55, v55 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v56, v56 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v57, v57 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v58, v58 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_lshlrev_b32_e32 v59, 3, v0
.Ltmp35:
	.loc	1 194 9                         ; attention_backward.py:194:9
	s_cbranch_vccnz .LBB0_2
; %bb.1:                                ; %.._crit_edge_crit_edge
	.loc	1 392 17                        ; attention_backward.py:392:17
	v_lshlrev_b32_e32 v109, 3, v0
	s_branch .LBB0_3
.LBB0_2:
	.loc	1 0 17 is_stmt 0                ; attention_backward.py:0:17
	s_mov_b32 s5, -1
                                        ; implicit-def: $vgpr109
.LBB0_3:                                ; %Flow143
	s_clause 0x2
	s_load_b64 s[36:37], s[0:1], 0x58
	s_load_b128 s[28:31], s[0:1], 0x48
	s_load_b64 s[40:41], s[0:1], 0x10
	v_and_b32_e32 v42, 48, v0
	s_waitcnt lgkmcnt(0)
	v_cndmask_b32_e64 v75, v62, v8, s4
	v_cndmask_b32_e64 v77, v8, v62, s4
	v_cndmask_b32_e64 v76, v61, v6, s4
	v_cndmask_b32_e64 v78, v6, v61, s4
	v_cndmask_b32_e64 v79, v60, v5, s4
	v_cndmask_b32_e64 v81, v5, v60, s4
	v_cndmask_b32_e64 v80, v4, v3, s4
	v_cndmask_b32_e64 v82, v3, v4, s4
	v_mul_f32_e32 v96, s8, v7
	v_subrev_nc_u32_e32 v97, s6, v2
	v_add_nc_u32_e32 v98, s7, v2
	v_or_b32_e32 v99, s54, v88
	v_or_b32_e32 v100, s54, v87
	v_or_b32_e32 v101, s54, v94
	v_or_b32_e32 v102, s54, v95
	v_or_b32_e32 v103, s54, v93
	v_or_b32_e32 v104, s54, v91
	v_or_b32_e32 v105, s54, v92
	v_or_b32_e32 v106, s54, v90
	v_or_b32_e32 v107, s54, v89
	v_lshrrev_b32_e32 v84, 1, v42
	s_and_not1_b32 vcc_lo, exec_lo, s5
	s_cbranch_vccnz .LBB0_7
; %bb.4:                                ; %.lr.ph
	.loc	1 223 21 is_stmt 1              ; attention_backward.py:223:21
	v_dual_mov_b32 v62, v96 :: v_dual_and_b32 v1, 24, v1
	v_dual_mov_b32 v61, v96 :: v_dual_mov_b32 v108, 0xff800000
	v_dual_mov_b32 v63, v96 :: v_dual_mov_b32 v60, 0
	s_delay_alu instid0(VALU_DEP_3)
	v_lshl_or_b32 v2, v73, 5, v1
	v_xor_b32_e32 v1, v59, v84
	s_mov_b32 s47, 0x31027000
	s_mov_b32 s46, 0x7ffffffe
	s_and_b32 s45, s23, 0xffff
	v_xor_b32_e32 v3, 8, v2
	v_xor_b32_e32 v4, 16, v2
	v_xor_b32_e32 v5, 24, v2
	v_add_nc_u32_e32 v64, 0, v1
	v_mov_b32_e32 v1, 0
	v_add_nc_u32_e32 v65, 0, v2
	v_add_nc_u32_e32 v66, 0, v3
	v_add_nc_u32_e32 v67, 0, v4
	v_add_nc_u32_e32 v68, 0, v5
	v_mov_b32_e32 v5, v1
	v_mov_b32_e32 v2, v1
	v_mov_b32_e32 v3, v1
	v_mov_b32_e32 v4, v1
	v_mov_b32_e32 v6, v1
	v_mov_b32_e32 v7, v1
	v_mov_b32_e32 v8, v1
	s_mov_b32 s44, s22
	s_and_b32 s49, s27, 0xffff
	s_mov_b32 s48, s26
	s_mov_b32 s50, s46
	s_mov_b32 s51, s47
	s_mov_b32 s21, 0x76543210
	s_mov_b32 s24, s52
.LBB0_5:                                ; =>This Inner Loop Header: Depth=1
	.loc	1 0 21 is_stmt 0                ; attention_backward.py:0:21
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_dual_mov_b32 v130, v108 :: v_dual_add_nc_u32 v69, s24, v99
	.loc	1 214 33 is_stmt 1              ; attention_backward.py:214:33
	v_add_lshl_u32 v110, v103, s24, 1
	v_add_lshl_u32 v109, v102, s24, 1
	v_add_lshl_u32 v72, v101, s24, 1
	.loc	1 199 21                        ; attention_backward.py:199:21
	v_mad_u64_u32 v[69:70], null, v69, s34, v[74:75]
	.loc	1 214 33                        ; attention_backward.py:214:33
	v_add_lshl_u32 v71, v100, s24, 1
	v_add_lshl_u32 v116, v107, s24, 1
	v_add_lshl_u32 v113, v104, s24, 1
	v_add_lshl_u32 v114, v105, s24, 1
	v_add_lshl_u32 v115, v106, s24, 1
	.loc	1 195 27                        ; attention_backward.py:195:27
	v_or_b32_e32 v108, s24, v91
	.loc	1 198 28                        ; attention_backward.py:198:28
	v_cndmask_b32_e64 v69, 0x80000000, v69, s3
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 241 26                        ; attention_backward.py:241:26
	v_cmp_ge_i32_e64 s15, v108, v97
	.loc	1 198 28                        ; attention_backward.py:198:28
	buffer_load_b64 v[69:70], v69, s[44:47], 0 offen
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 242 26                        ; attention_backward.py:242:26
	v_cmp_le_i32_e64 s19, v108, v98
	.loc	1 198 28                        ; attention_backward.py:198:28
	s_waitcnt vmcnt(0)
	ds_store_b64 v64, v[69:70]
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 214 33                        ; attention_backward.py:214:33
	s_clause 0x7
	buffer_load_u16 v110, v110, s[48:51], 0 offen
	buffer_load_u16 v123, v109, s[48:51], 0 offen
	buffer_load_u16 v124, v72, s[48:51], 0 offen
	buffer_load_u16 v125, v71, s[48:51], 0 offen
	buffer_load_u16 v126, v116, s[48:51], 0 offen
	buffer_load_u16 v127, v115, s[48:51], 0 offen
	buffer_load_u16 v128, v114, s[48:51], 0 offen
	buffer_load_u16 v129, v113, s[48:51], 0 offen
	.loc	1 195 27                        ; attention_backward.py:195:27
	v_or_b32_e32 v69, s24, v87
	v_or_b32_e32 v70, s24, v94
	v_or_b32_e32 v71, s24, v95
	v_or_b32_e32 v72, s24, v93
	v_or_b32_e32 v109, s24, v92
	.loc	1 241 26                        ; attention_backward.py:241:26
	v_cmp_ge_i32_e64 s7, v69, v97
	v_cmp_ge_i32_e64 s6, v70, v97
	v_cmp_ge_i32_e64 s5, v71, v97
	v_cmp_ge_i32_e32 vcc_lo, v72, v97
	.loc	1 242 26                        ; attention_backward.py:242:26
	v_cmp_le_i32_e64 s8, v72, v98
	v_cmp_le_i32_e64 s9, v71, v98
	v_cmp_le_i32_e64 s10, v70, v98
	v_cmp_le_i32_e64 s11, v69, v98
	.loc	1 241 26                        ; attention_backward.py:241:26
	v_cmp_ge_i32_e64 s14, v109, v97
	.loc	1 242 26                        ; attention_backward.py:242:26
	v_cmp_le_i32_e64 s18, v109, v98
	.loc	1 198 28                        ; attention_backward.py:198:28
	ds_load_b64 v[69:70], v65
	ds_load_b64 v[71:72], v66
	ds_load_b64 v[108:109], v67
	ds_load_b64 v[121:122], v68
	.loc	1 195 27                        ; attention_backward.py:195:27
	v_or_b32_e32 v113, s24, v90
	v_or_b32_e32 v114, s24, v89
	.loc	1 242 17                        ; attention_backward.py:242:17
	s_and_b32 s25, vcc_lo, s8
	s_and_b32 s5, s5, s9
	s_and_b32 s6, s6, s10
	.loc	1 241 26                        ; attention_backward.py:241:26
	v_cmp_ge_i32_e64 s13, v113, v97
	v_cmp_ge_i32_e64 s12, v114, v97
	.loc	1 242 26                        ; attention_backward.py:242:26
	v_cmp_le_i32_e64 s16, v114, v98
	v_cmp_le_i32_e64 s17, v113, v98
	.loc	1 242 17 is_stmt 0              ; attention_backward.py:242:17
	s_and_b32 s7, s7, s11
	s_and_b32 s10, s14, s18
	s_and_b32 s11, s15, s19
	s_and_b32 s8, s12, s16
	s_and_b32 s9, s13, s17
	s_and_b32 vcc_lo, s2, s5
	s_and_b32 s5, s2, s6
	.loc	1 204 29 is_stmt 1              ; attention_backward.py:204:29
	s_waitcnt lgkmcnt(3)
	v_wmma_i32_16x16x16_iu4 v[113:120], v[69:70], v[75:76], v[1:8] neg_lo:[1,1,0]
	.loc	1 242 17                        ; attention_backward.py:242:17
	s_and_b32 s6, s2, s7
	s_and_b32 s7, s2, s8
	s_and_b32 s8, s2, s9
	.loc	1 204 29                        ; attention_backward.py:204:29
	s_waitcnt lgkmcnt(2)
	v_wmma_i32_16x16x16_iu4 v[113:120], v[71:72], v[79:80], v[113:120] neg_lo:[1,1,0]
	.loc	1 242 17                        ; attention_backward.py:242:17
	s_and_b32 s9, s2, s10
	s_and_b32 s10, s2, s11
	s_and_b32 s11, s2, s25
	.loc	1 194 9                         ; attention_backward.py:194:9
	s_add_i32 s24, s24, 16
	.loc	1 204 29                        ; attention_backward.py:204:29
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu4 v[113:120], v[108:109], v[77:78], v[113:120] neg_lo:[1,1,0]
	.loc	1 194 9                         ; attention_backward.py:194:9
	s_cmp_lt_i32 s24, s53
	.loc	1 204 29                        ; attention_backward.py:204:29
	s_waitcnt lgkmcnt(0)
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[113:120], v[121:122], v[81:82], v[113:120] neg_lo:[1,1,0]
	.loc	1 223 21                        ; attention_backward.py:223:21
	v_cvt_f32_i32_e32 v69, v113
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cvt_f32_i32_e32 v70, v114
	v_cvt_f32_i32_e32 v71, v115
	s_delay_alu instid0(VALU_DEP_4)
	v_cvt_f32_i32_e32 v72, v116
	v_cvt_f32_i32_e32 v108, v117
	v_cvt_f32_i32_e32 v109, v118
	v_cvt_f32_i32_e32 v113, v119
	v_cvt_f32_i32_e32 v114, v120
	v_dual_mul_f32 v72, v63, v72 :: v_dual_mul_f32 v71, v62, v71
	v_dual_mul_f32 v70, v61, v70 :: v_dual_mul_f32 v69, v96, v69
	s_delay_alu instid0(VALU_DEP_3)
	v_dual_mul_f32 v114, v63, v114 :: v_dual_mul_f32 v113, v62, v113
	v_dual_mul_f32 v109, v61, v109 :: v_dual_mul_f32 v108, v96, v108
	.loc	1 214 33                        ; attention_backward.py:214:33
	s_waitcnt vmcnt(5)
	v_lshlrev_b32_e32 v116, 16, v124
	v_lshlrev_b32_e32 v115, 16, v123
	s_waitcnt vmcnt(4)
	v_lshlrev_b32_e32 v117, 16, v125
	v_lshlrev_b32_e32 v110, 16, v110
	s_waitcnt vmcnt(1)
	v_lshlrev_b32_e32 v120, 16, v128
	v_lshlrev_b32_e32 v118, 16, v126
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v121, 16, v129
	v_lshlrev_b32_e32 v119, 16, v127
	.loc	1 223 21                        ; attention_backward.py:223:21
	v_dual_mul_f32 v69, v69, v117 :: v_dual_mul_f32 v70, v70, v116
	v_dual_mul_f32 v71, v71, v115 :: v_dual_mul_f32 v72, v72, v110
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_dual_mul_f32 v108, v108, v121 :: v_dual_mul_f32 v109, v109, v120
	v_dual_mul_f32 v110, v113, v119 :: v_dual_mul_f32 v113, v114, v118
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 257 22                        ; attention_backward.py:257:22
	v_cndmask_b32_e64 v72, 0xff800000, v72, s11
	v_cndmask_b32_e64 v70, 0xff800000, v70, s5
	v_cndmask_b32_e64 v69, 0xff800000, v69, s6
	v_cndmask_b32_e64 v109, 0xff800000, v109, s9
	v_cndmask_b32_e64 v113, 0xff800000, v113, s7
	v_cndmask_b32_e64 v114, 0xff800000, v108, s10
	v_cndmask_b32_e64 v110, 0xff800000, v110, s8
	v_cndmask_b32_e32 v71, 0xff800000, v71, vcc_lo
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp36:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention_backward.py:258:25 ] ]
	v_max3_f32 v115, v72, v114, v109
	v_max_f32_e32 v116, v110, v113
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_max3_f32 v108, v69, v70, v71
	v_max3_f32 v108, v108, v115, v116
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp37:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention_backward.py:258:25 ]
	v_permlanex16_b32 v115, v108, s21, 0xfedcba98 op_sel:[1,0]
.Ltmp38:
	.loc	1 259 20                        ; attention_backward.py:259:20
	v_max3_f32 v108, v130, v108, v115
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	.loc	1 261 58                        ; attention_backward.py:261:58
	v_sub_f32_e32 v110, v110, v108
	v_sub_f32_e32 v113, v113, v108
	v_sub_f32_e32 v71, v71, v108
	v_sub_f32_e32 v109, v109, v108
	.loc	1 261 45 is_stmt 0              ; attention_backward.py:261:45
	v_exp_f32_e32 v110, v110
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_exp_f32_e32 v113, v113
	v_exp_f32_e32 v71, v71
	.loc	1 261 58                        ; attention_backward.py:261:58
	v_sub_f32_e32 v70, v70, v108
	.loc	1 261 45                        ; attention_backward.py:261:45
	v_exp_f32_e32 v109, v109
	.loc	1 261 29                        ; attention_backward.py:261:29
	v_cndmask_b32_e64 v110, 0, v110, s8
	s_delay_alu instid0(TRANS32_DEP_3) | instskip(SKIP_1) | instid1(TRANS32_DEP_2)
	v_cndmask_b32_e64 v113, 0, v113, s7
	.loc	1 261 58                        ; attention_backward.py:261:58
	v_sub_f32_e32 v69, v69, v108
	.loc	1 261 29                        ; attention_backward.py:261:29
	v_cndmask_b32_e32 v71, 0, v71, vcc_lo
	.loc	1 261 45                        ; attention_backward.py:261:45
	v_exp_f32_e32 v70, v70
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_2) | instid1(TRANS32_DEP_2)
	.loc	1 261 29                        ; attention_backward.py:261:29
	v_cndmask_b32_e64 v109, 0, v109, s9
	.loc	1 260 21 is_stmt 1              ; attention_backward.py:260:21
	v_cmp_neq_f32_e32 vcc_lo, 0xff800000, v130
	.loc	1 261 45                        ; attention_backward.py:261:45
	v_exp_f32_e32 v69, v69
	.loc	1 261 29 is_stmt 0              ; attention_backward.py:261:29
	v_cndmask_b32_e64 v70, 0, v70, s5
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_cndmask_b32_e64 v69, 0, v69, s6
	.loc	1 261 58                        ; attention_backward.py:261:58
	v_dual_sub_f32 v72, v72, v108 :: v_dual_add_f32 v69, v69, v70
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 261 45                        ; attention_backward.py:261:45
	v_exp_f32_e32 v72, v72
	.loc	1 261 29                        ; attention_backward.py:261:29
	v_cndmask_b32_e64 v72, 0, v72, s11
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
.Ltmp39:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:262:33 ] ]
	v_add_f32_e32 v70, v71, v72
.Ltmp40:
	.loc	1 261 58                        ; attention_backward.py:261:58
	v_sub_f32_e32 v114, v114, v108
.Ltmp41:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:262:33 ] ]
	v_dual_add_f32 v72, v110, v113 :: v_dual_add_f32 v69, v69, v70
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
.Ltmp42:
	.loc	1 261 45                        ; attention_backward.py:261:45
	v_exp_f32_e32 v114, v114
	.loc	1 261 29 is_stmt 0              ; attention_backward.py:261:29
	v_cndmask_b32_e64 v114, 0, v114, s10
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp43:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:262:33 ] ]
	v_add_f32_e32 v71, v114, v109
	v_add_f32_e32 v70, v71, v72
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_dual_mov_b32 v72, v60 :: v_dual_add_f32 v69, v69, v70
.Ltmp44:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:262:33 ]
	v_permlanex16_b32 v70, v69, s21, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp45:
	.loc	1 260 70                        ; attention_backward.py:260:70
	v_dual_sub_f32 v109, v130, v108 :: v_dual_add_f32 v60, v69, v70
	.loc	1 260 57 is_stmt 0              ; attention_backward.py:260:57
	v_exp_f32_e32 v71, v109
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 260 21                        ; attention_backward.py:260:21
	v_cndmask_b32_e32 v71, 0, v71, vcc_lo
	.loc	1 262 19 is_stmt 1              ; attention_backward.py:262:19
	v_fmac_f32_e32 v60, v72, v71
	.loc	1 194 9                         ; attention_backward.py:194:9
	s_cbranch_scc1 .LBB0_5
; %bb.6:                                ; %Flow142
	.loc	1 0 9 is_stmt 0                 ; attention_backward.py:0:9
	v_mov_b32_e32 v109, v59
	s_branch .LBB0_8
.LBB0_7:
	v_mov_b32_e32 v108, 0xff800000
	v_mov_b32_e32 v60, 0
.LBB0_8:                                ; %Flow144
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 264 43 is_stmt 1              ; attention_backward.py:264:43
	v_cmp_gt_f32_e32 vcc_lo, 0x800000, v60
.Ltmp46:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_dual_add_f32 v68, v46, v54 :: v_dual_and_b32 v3, 31, v0
.Ltmp47:
	.loc	1 392 17                        ; attention_backward.py:392:17
	v_mov_b16_e32 v7.h, 0
	s_load_b32 s55, s[0:1], 0x74
	.loc	1 264 43                        ; attention_backward.py:264:43
	v_cndmask_b32_e64 v2, 0, 32, vcc_lo
	v_cndmask_b32_e64 v1, 0, 0x42000000, vcc_lo
	.loc	1 124 21                        ; attention_backward.py:124:21
	v_or_b32_e32 v4, s42, v3
	.loc	1 264 26                        ; attention_backward.py:264:26
	v_cmp_lt_f32_e32 vcc_lo, 0, v60
	.loc	1 267 9                         ; attention_backward.py:267:9
	v_lshl_add_u32 v110, v112, 5, 0
	.loc	1 264 43                        ; attention_backward.py:264:43
	v_ldexp_f32 v2, v60, v2
	.loc	1 392 17                        ; attention_backward.py:392:17
	v_mov_b16_e32 v7.l, v38.h
	.loc	1 128 21                        ; attention_backward.py:128:21
	v_cmp_gt_i32_e64 s0, 0x800, v4
	.loc	1 392 17                        ; attention_backward.py:392:17
	v_mov_b16_e32 v4.l, v39.h
	v_mov_b16_e32 v4.h, v7.h
	.loc	1 264 43                        ; attention_backward.py:264:43
	v_log_f32_e32 v2, v2
	.loc	1 266 9                         ; attention_backward.py:266:9
	s_waitcnt lgkmcnt(0)
	s_barrier
.Ltmp48:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_e32 v71, v49, v57
	v_dual_add_f32 v65, v43, v51 :: v_dual_add_f32 v66, v44, v52
	v_dual_add_f32 v67, v45, v53 :: v_dual_add_f32 v70, v48, v56
.Ltmp49:
	.loc	1 267 9                         ; attention_backward.py:267:9
	v_lshl_add_u32 v115, v42, 1, 0
.Ltmp50:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_dual_add_f32 v72, v50, v58 :: v_dual_and_b32 v113, 7, v0
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
.Ltmp51:
	.loc	1 264 43                        ; attention_backward.py:264:43
	v_dual_sub_f32 v1, v2, v1 :: v_dual_and_b32 v4, 1, v4
.Ltmp52:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_dual_add_f32 v69, v47, v55 :: v_dual_mov_b32 v8, 0
.Ltmp53:
	.loc	1 266 9                         ; attention_backward.py:266:9
	s_and_b32 s45, s29, 0xffff
	.loc	1 264 37                        ; attention_backward.py:264:37
	v_add_f32_e32 v1, v108, v1
	s_mov_b32 s47, 0x31027000
	s_mov_b32 s46, 0x7ffffffe
	.loc	1 266 9                         ; attention_backward.py:266:9
	s_mov_b32 s44, s28
	.loc	1 392 17                        ; attention_backward.py:392:17
	v_mov_b16_e32 v5.l, v37.h
	.loc	1 264 17                        ; attention_backward.py:264:17
	v_cndmask_b32_e32 v108, 0, v1, vcc_lo
	.loc	1 266 9                         ; attention_backward.py:266:9
	v_lshl_add_u32 v1, v3, 2, 0
	v_cmp_eq_u32_e32 vcc_lo, 0, v111
	.loc	1 266 18 is_stmt 0              ; attention_backward.py:266:18
	v_or_b32_e32 v3, s43, v3
	.loc	1 392 17 is_stmt 1              ; attention_backward.py:392:17
	v_mov_b16_e32 v5.h, v7.h
	v_cmp_o_f32_e64 s5, v37, v37
	v_mov_b16_e32 v6.l, v33.h
	.loc	1 266 9                         ; attention_backward.py:266:9
	s_and_b32 vcc_lo, vcc_lo, s0
	v_add_lshl_u32 v3, v3, s42, 2
	v_add_nc_u32_e32 v2, 0, v41
	.loc	1 392 17                        ; attention_backward.py:392:17
	v_cmp_o_f32_e64 s0, v39, v39
	v_mov_b16_e32 v6.h, v7.h
	v_add3_u32 v4, v39, v4, 0x7fff
	.loc	1 266 9                         ; attention_backward.py:266:9
	v_cndmask_b32_e32 v3, 0x80000000, v3, vcc_lo
	v_lshl_add_u32 v2, v111, 1, v2
	.loc	1 392 17                        ; attention_backward.py:392:17
	v_cmp_o_f32_e32 vcc_lo, v40, v40
	v_cmp_o_f32_e64 s1, v38, v38
	v_dual_mov_b32 v57, v8 :: v_dual_lshlrev_b32 v114, 4, v113
	.loc	1 266 9                         ; attention_backward.py:266:9
	ds_store_b32 v2, v108
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b32 v1, v1
	.loc	1 267 9                         ; attention_backward.py:267:9
	v_and_b32_e32 v2, 28, v0
	v_mov_b32_e32 v48, v8
	v_mov_b32_e32 v47, v8
	v_mov_b32_e32 v46, v8
	v_mov_b32_e32 v44, v8
	v_dual_mov_b32 v45, v8 :: v_dual_add_nc_u32 v2, v110, v2
	v_mov_b32_e32 v64, v8
	v_mov_b32_e32 v43, v8
	v_mov_b32_e32 v63, v8
	v_mov_b32_e32 v62, v8
	v_mov_b32_e32 v60, v8
	v_mov_b32_e32 v58, v8
	v_mov_b32_e32 v61, v8
	v_mov_b32_e32 v59, v8
	.loc	1 266 9                         ; attention_backward.py:266:9
	s_waitcnt lgkmcnt(0)
	buffer_store_b32 v1, v3, s[44:47], 0 offen
	.loc	1 267 9                         ; attention_backward.py:267:9
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v115, v[65:68]
	ds_store_b128 v115, v[69:72] offset:16
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b32 v41, v2
	.loc	1 392 17                        ; attention_backward.py:392:17
	v_and_b32_e32 v1, 1, v7
	v_mov_b16_e32 v7.l, v40.h
	v_and_b32_e32 v2, 1, v5
	.loc	1 267 9                         ; attention_backward.py:267:9
	s_and_b32 s45, s31, 0xffff
	s_mov_b32 s44, s30
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
	buffer_store_b32 v41, v3, s[44:47], 0 offen
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
	v_dual_mov_b32 v41, v8 :: v_dual_and_b32 v20, 1, v7
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
	v_xor_b32_e32 v11, v109, v42
	v_cndmask_b16 v14.l, 0x7fff, v18.h, s0
	v_add3_u32 v16, v9, v16, 0x7fff
	v_cmp_o_f32_e64 s0, v9, v9
	v_cndmask_b16 v9.h, 0x7fff, v15.h, vcc_lo
	v_cndmask_b16 v10.h, 0x7fff, v7.h, s1
	v_add_nc_u32_e32 v7, 0, v11
	v_lshlrev_b32_e32 v12, 7, v73
	v_lshlrev_b32_e32 v15, 6, v111
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_2addr_stride64_b64 v7, v[1:2], v[5:6] offset1:2
	v_xad_u32 v11, 0x240, v11, 0
	v_or3_b32 v1, v12, v15, v114
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
	ds_load_b128 v[17:20], v2
	ds_load_b128 v[21:24], v3
	v_xad_u32 v2, v1, 64, 0
	v_xad_u32 v3, 0x50, v1, 0
	ds_load_b128 v[25:28], v4
	ds_load_b128 v[29:32], v5
	v_xad_u32 v4, 0x60, v1, 0
	v_xad_u32 v1, 0x70, v1, 0
	ds_load_b128 v[33:36], v2
	ds_load_b128 v[37:40], v3
	ds_load_b128 v[49:52], v4
	ds_load_b128 v[53:56], v1
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
	v_mov_b32_e32 v42, v8
	.loc	1 270 9                         ; attention_backward.py:270:9
	s_and_not1_b32 vcc_lo, exec_lo, s20
	.loc	1 396 43                        ; attention_backward.py:396:43
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v115, v[65:68]
	ds_store_b128 v115, v[69:72] offset:16
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_cbranch_vccnz .LBB0_11
; %bb.9:                                ; %.lr.ph14
	.loc	1 0 43 is_stmt 0                ; attention_backward.py:0:43
	v_dual_mov_b32 v7, 0x5410 :: v_dual_and_b32 v2, 12, v0
	v_mov_b32_e32 v65, 0
	.loc	1 125 21 is_stmt 1              ; attention_backward.py:125:21
	v_lshrrev_b32_e32 v4, 3, v0
	.loc	1 168 40                        ; attention_backward.py:168:40
	v_lshlrev_b32_e32 v1, 3, v113
	s_delay_alu instid0(VALU_DEP_4)
	v_lshlrev_b32_e32 v5, 1, v2
	v_xor_b32_e32 v6, v109, v84
	.loc	1 396 43                        ; attention_backward.py:396:43
	v_add3_u32 v8, v110, v83, v2
	v_cndmask_b32_e64 v7, 0x1054, v7, s4
	v_mov_b32_e32 v62, v65
	v_lshl_or_b32 v109, v73, 5, v5
	v_mov_b32_e32 v5, 0x7632
	ds_load_b32 v110, v8
	v_dual_mov_b32 v64, v65 :: v_dual_and_b32 v11, 24, v0
	v_xor_b32_e32 v8, 8, v109
	v_lshl_or_b32 v7, v7, 8, v7
	v_mov_b32_e32 v60, v65
	.loc	1 270 9                         ; attention_backward.py:270:9
	v_mad_u64_u32 v[83:84], null, s35, v4, v[1:2]
	v_lshlrev_b32_e32 v4, 9, v112
	v_cndmask_b32_e64 v5, 0x3276, v5, s4
	.loc	1 168 40                        ; attention_backward.py:168:40
	v_cmp_gt_i32_e64 s0, s35, v1
	v_lshlrev_b32_e32 v1, 1, v11
	v_dual_mov_b32 v57, 0 :: v_dual_lshlrev_b32 v2, 5, v2
	s_delay_alu instid0(VALU_DEP_4)
	v_lshl_or_b32 v5, v5, 8, v5
	v_lshl_or_b32 v11, v11, 6, v114
	v_add_nc_u32_e32 v114, 0, v8
	v_dual_mov_b32 v58, v65 :: v_dual_lshlrev_b32 v3, 4, v112
	v_dual_mov_b32 v44, v65 :: v_dual_and_b32 v7, 0x540054, v7
	v_dual_mov_b32 v46, v65 :: v_dual_and_b32 v5, 0x760076, v5
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 310 21                        ; attention_backward.py:310:21
	v_cmp_gt_i32_e32 vcc_lo, s55, v3
	v_or3_b32 v84, v2, v4, v3
	v_lshl_or_b32 v3, v7, 4, v7
	v_xor_b32_e32 v9, 16, v109
	v_xor_b32_e32 v10, 24, v109
	v_lshl_add_u32 v2, v111, 2, 0
	v_lshl_or_b32 v4, v5, 4, v5
	v_xor_b32_e32 v5, 16, v84
	v_xor_b32_e32 v7, 32, v84
	v_dual_mov_b32 v48, v65 :: v_dual_and_b32 v111, 0x5040504, v3
	v_dual_mov_b32 v42, v65 :: v_dual_lshlrev_b32 v3, 5, v0
	v_xor_b32_e32 v1, v11, v1
	v_xor_b32_e32 v11, 48, v84
	v_dual_mov_b32 v59, v65 :: v_dual_and_b32 v112, 0x7060706, v4
	v_lshl_add_u32 v0, v73, 1, 0
	v_dual_mov_b32 v12, v65 :: v_dual_add_nc_u32 v113, 0, v6
	v_dual_mov_b32 v14, v65 :: v_dual_add_nc_u32 v115, 0, v9
	v_dual_mov_b32 v61, v65 :: v_dual_add_nc_u32 v116, 0, v10
	v_dual_mov_b32 v16, v65 :: v_dual_add_nc_u32 v117, v2, v1
	v_dual_mov_b32 v63, v65 :: v_dual_add_nc_u32 v118, 0, v5
	v_dual_mov_b32 v2, v65 :: v_dual_add_nc_u32 v119, 0, v7
	v_dual_mov_b32 v41, 0 :: v_dual_add_nc_u32 v120, 0, v11
	v_mov_b32_e32 v43, v65
	v_mov_b32_e32 v45, v65
	v_mov_b32_e32 v47, v65
	v_dual_mov_b32 v9, 0 :: v_dual_mov_b32 v6, v65
	v_dual_mov_b32 v10, v65 :: v_dual_add_nc_u32 v121, 0, v3
	v_mov_b32_e32 v4, v65
	v_mov_b32_e32 v11, v65
	v_mov_b32_e32 v13, v65
	v_mov_b32_e32 v15, v65
	v_dual_mov_b32 v1, 0 :: v_dual_mov_b32 v8, v65
	v_mov_b32_e32 v3, v65
	v_mov_b32_e32 v5, v65
	v_mov_b32_e32 v7, v65
	s_and_b32 s45, s23, 0xffff
	s_and_b32 s49, s27, 0xffff
	s_and_b32 s41, s41, 0xffff
	s_mov_b32 s44, s22
	s_mov_b32 s48, s26
	s_mov_b32 s50, s46
	s_mov_b32 s51, s47
	s_mov_b32 s42, s46
	s_mov_b32 s43, s47
	s_mov_b32 s29, 0x76543210
.LBB0_10:                               ; =>This Inner Loop Header: Depth=1
	.loc	1 275 21                        ; attention_backward.py:275:21
	s_add_i32 s1, s52, s54
	.loc	1 271 27                        ; attention_backward.py:271:27
	v_or_b32_e32 v133, s52, v87
	.loc	1 275 21                        ; attention_backward.py:275:21
	v_or_b32_e32 v149, s1, v88
	v_mad_u64_u32 v[131:132], null, s1, s35, v[83:84]
	.loc	1 280 29                        ; attention_backward.py:280:29
	v_mov_b32_e32 v70, v65
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 329 26                        ; attention_backward.py:329:26
	v_cmp_ge_i32_e64 s20, v133, v97
	.loc	1 330 26                        ; attention_backward.py:330:26
	v_cmp_le_i32_e64 s21, v133, v98
	.loc	1 275 21                        ; attention_backward.py:275:21
	v_mad_u64_u32 v[132:133], null, v149, s34, v[74:75]
	.loc	1 271 27                        ; attention_backward.py:271:27
	v_or_b32_e32 v134, s52, v94
	.loc	1 385 30                        ; attention_backward.py:385:30
	v_lshlrev_b32_e32 v133, 1, v131
	v_add_lshl_u32 v131, v131, s38, 1
	.loc	1 271 27                        ; attention_backward.py:271:27
	v_or_b32_e32 v143, s52, v95
	v_or_b32_e32 v144, s52, v93
	.loc	1 329 26                        ; attention_backward.py:329:26
	v_cmp_ge_i32_e64 s18, v134, v97
	.loc	1 274 28                        ; attention_backward.py:274:28
	v_cndmask_b32_e64 v132, 0x80000000, v132, s3
	.loc	1 330 26                        ; attention_backward.py:330:26
	v_cmp_le_i32_e64 s19, v134, v98
	.loc	1 385 30                        ; attention_backward.py:385:30
	v_cndmask_b32_e64 v134, 0x80000000, v133, s0
	.loc	1 271 27                        ; attention_backward.py:271:27
	v_or_b32_e32 v145, s52, v91
	v_or_b32_e32 v146, s52, v92
	.loc	1 274 28                        ; attention_backward.py:274:28
	buffer_load_b64 v[132:133], v132, s[44:47], 0 offen
	.loc	1 271 27                        ; attention_backward.py:271:27
	v_or_b32_e32 v147, s52, v90
	v_or_b32_e32 v148, s52, v89
	.loc	1 385 30                        ; attention_backward.py:385:30
	v_cndmask_b32_e64 v131, 0x80000000, v131, s0
	.loc	1 290 33                        ; attention_backward.py:290:33
	v_add_lshl_u32 v122, v99, s52, 1
	v_add_lshl_u32 v123, v100, s52, 1
	v_add_lshl_u32 v124, v101, s52, 1
	v_add_lshl_u32 v130, v107, s52, 1
	v_add_lshl_u32 v125, v102, s52, 1
	v_add_lshl_u32 v126, v103, s52, 1
	v_add_lshl_u32 v127, v104, s52, 1
	v_add_lshl_u32 v128, v105, s52, 1
	v_add_lshl_u32 v129, v106, s52, 1
	.loc	1 329 26                        ; attention_backward.py:329:26
	v_cmp_ge_i32_e64 s16, v143, v97
	.loc	1 330 26                        ; attention_backward.py:330:26
	v_cmp_le_i32_e64 s17, v143, v98
	.loc	1 329 26                        ; attention_backward.py:329:26
	v_cmp_ge_i32_e64 s14, v144, v97
	.loc	1 330 26                        ; attention_backward.py:330:26
	v_cmp_le_i32_e64 s15, v144, v98
	.loc	1 329 26                        ; attention_backward.py:329:26
	v_cmp_ge_i32_e64 s1, v145, v97
	.loc	1 330 26                        ; attention_backward.py:330:26
	v_cmp_le_i32_e64 s5, v145, v98
	.loc	1 329 26                        ; attention_backward.py:329:26
	v_cmp_ge_i32_e64 s4, v146, v97
	.loc	1 330 26                        ; attention_backward.py:330:26
	v_cmp_le_i32_e64 s7, v146, v98
	.loc	1 329 26                        ; attention_backward.py:329:26
	v_cmp_ge_i32_e64 s6, v147, v97
	.loc	1 330 26                        ; attention_backward.py:330:26
	v_cmp_le_i32_e64 s9, v147, v98
	.loc	1 329 26                        ; attention_backward.py:329:26
	v_cmp_ge_i32_e64 s8, v148, v97
	.loc	1 330 26                        ; attention_backward.py:330:26
	v_cmp_le_i32_e64 s11, v148, v98
	.loc	1 274 28                        ; attention_backward.py:274:28
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 280 29                        ; attention_backward.py:280:29
	v_dual_mov_b32 v66, v65 :: v_dual_add_nc_u32 v73, 0, v109
	v_dual_mov_b32 v68, v65 :: v_dual_add_nc_u32 v155, 0, v84
	v_mov_b32_e32 v72, v65
	v_mov_b32_e32 v67, v65
	v_mov_b32_e32 v69, v65
	v_mov_b32_e32 v71, v65
	.loc	1 330 17                        ; attention_backward.py:330:17
	s_and_b32 s20, s20, s21
	s_and_b32 s18, s18, s19
	s_and_b32 s20, s2, s20
	s_and_b32 s18, s2, s18
	s_and_b32 s16, s16, s17
	s_and_b32 s14, s14, s15
	s_and_b32 s16, s2, s16
	s_and_b32 s14, s2, s14
	s_and_b32 s1, s1, s5
	s_and_b32 s4, s4, s7
	s_and_b32 s5, s6, s9
	s_and_b32 s6, s8, s11
	s_and_b32 s8, s2, s1
	s_and_b32 s9, s2, s4
	s_and_b32 s11, s2, s5
	.loc	1 270 9                         ; attention_backward.py:270:9
	s_add_i32 s52, s52, 16
	.loc	1 307 37                        ; attention_backward.py:307:37
	.loc	1 274 28                        ; attention_backward.py:274:28
	s_waitcnt vmcnt(0)
	ds_store_b64 v113, v[132:133]
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 385 30                        ; attention_backward.py:385:30
	s_clause 0x1
	buffer_load_b128 v[143:146], v134, s[40:43], 0 offen
	buffer_load_b128 v[147:150], v131, s[40:43], 0 offen
	.loc	1 290 33                        ; attention_backward.py:290:33
	s_clause 0x8
	buffer_load_u16 v131, v122, s[48:51], 0 offen
	buffer_load_u16 v156, v123, s[48:51], 0 offen
	buffer_load_u16 v157, v124, s[48:51], 0 offen
	buffer_load_u16 v158, v125, s[48:51], 0 offen
	buffer_load_u16 v159, v126, s[48:51], 0 offen
	buffer_load_u16 v160, v127, s[48:51], 0 offen
	buffer_load_u16 v134, v128, s[48:51], 0 offen
	buffer_load_u16 v124, v129, s[48:51], 0 offen
	buffer_load_u16 v130, v130, s[48:51], 0 offen
	.loc	1 274 28                        ; attention_backward.py:274:28
	ds_load_b64 v[125:126], v73
	ds_load_b64 v[127:128], v114
	ds_load_b64 v[151:152], v115
	ds_load_b64 v[153:154], v116
	.loc	1 393 17                        ; attention_backward.py:393:17
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 391 32                        ; attention_backward.py:391:32
	v_dual_mov_b32 v142, v72 :: v_dual_and_b32 v129, 15, v132
	v_dual_mov_b32 v141, v71 :: v_dual_mov_b32 v140, v70
	v_dual_mov_b32 v139, v69 :: v_dual_mov_b32 v138, v68
	v_dual_mov_b32 v137, v67 :: v_dual_mov_b32 v136, v66
	v_mov_b32_e32 v135, v65
	.loc	1 304 28                        ; attention_backward.py:304:28
	v_and_b16 v122.l, v132.l, 15
	v_and_b16 v122.h, v133.h, 15
	.loc	1 304 27 is_stmt 0              ; attention_backward.py:304:27
	v_bfe_u32 v161, v133, 24, 4
	.loc	1 393 17 is_stmt 1              ; attention_backward.py:393:17
	s_waitcnt vmcnt(10)
	ds_store_b128 v117, v[143:146]
	s_waitcnt vmcnt(9)
	ds_store_b128 v117, v[147:150] offset:256
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[147:150], v118
	ds_load_b128 v[143:146], v155
	.loc	1 306 36                        ; attention_backward.py:306:36
	v_cmp_lt_u16_e64 s10, 7, v122.l
	v_cmp_lt_u16_e64 s22, 7, v122.h
	.loc	1 274 28                        ; attention_backward.py:274:28
	v_lshrrev_b32_e32 v122, 24, v133
	.loc	1 305 30                        ; attention_backward.py:305:30
	v_lshrrev_b16 v122.h, 4, v133.l
	.loc	1 290 33                        ; attention_backward.py:290:33
	s_waitcnt vmcnt(1)
	v_lshlrev_b32_e32 v124, 16, v124
	v_lshlrev_b32_e32 v134, 16, v134
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v130, 16, v130
	.loc	1 391 32                        ; attention_backward.py:391:32
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[135:142], v[143:150], v[17:24], v[135:142]
	.loc	1 393 17                        ; attention_backward.py:393:17
	ds_load_b128 v[147:150], v120
	ds_load_b128 v[143:146], v119
	.loc	1 391 32                        ; attention_backward.py:391:32
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[135:142], v[143:150], v[25:32], v[135:142]
	.loc	1 393 17                        ; attention_backward.py:393:17
	ds_load_b128 v[143:146], v155 offset:64
	ds_load_b128 v[147:150], v118 offset:64
	.loc	1 305 28                        ; attention_backward.py:305:28
	v_bfe_u32 v155, v133, 20, 4
	.loc	1 391 32                        ; attention_backward.py:391:32
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[135:142], v[143:150], v[33:40], v[135:142]
	.loc	1 393 17                        ; attention_backward.py:393:17
	ds_load_b128 v[143:146], v119 offset:64
	ds_load_b128 v[147:150], v120 offset:64
	.loc	1 309 31                        ; attention_backward.py:309:31
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 391 32                        ; attention_backward.py:391:32
	v_wmma_f32_16x16x16_bf16 v[135:142], v[143:150], v[49:56], v[135:142]
	.loc	1 280 29                        ; attention_backward.py:280:29
	v_wmma_i32_16x16x16_iu4 v[143:150], v[125:126], v[75:76], v[65:72] neg_lo:[1,1,0]
	.loc	1 304 28                        ; attention_backward.py:304:28
	v_and_b16 v72.l, v132.h, 15
	v_and_b16 v72.h, v133.l, 15
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 396 43                        ; attention_backward.py:396:43
	v_sub_f32_e32 v70, v138, v110
	.loc	1 280 29                        ; attention_backward.py:280:29
	v_wmma_i32_16x16x16_iu4 v[143:150], v[127:128], v[79:80], v[143:150] neg_lo:[1,1,0]
	.loc	1 274 28                        ; attention_backward.py:274:28
	v_lshrrev_b64 v[126:127], 24, v[132:133]
	v_bfe_i32 v138, v132, 0, 8
	.loc	1 396 43                        ; attention_backward.py:396:43
	v_sub_f32_e32 v125, v135, v110
	v_sub_f32_e32 v73, v136, v110
	.loc	1 280 29                        ; attention_backward.py:280:29
	v_wmma_i32_16x16x16_iu4 v[143:150], v[151:152], v[77:78], v[143:150] neg_lo:[1,1,0]
	.loc	1 396 43                        ; attention_backward.py:396:43
	v_sub_f32_e32 v71, v137, v110
	v_sub_f32_e32 v67, v139, v110
	v_sub_f32_e32 v69, v141, v110
	v_sub_f32_e32 v66, v142, v110
	.loc	1 280 29                        ; attention_backward.py:280:29
	v_wmma_i32_16x16x16_iu4 v[143:150], v[153:154], v[81:82], v[143:150] neg_lo:[1,1,0]
	.loc	1 304 27                        ; attention_backward.py:304:27
	v_and_b32_e32 v136, 15, v133
	v_bfe_u32 v137, v133, 16, 4
	.loc	1 274 28                        ; attention_backward.py:274:28
	v_lshrrev_b32_e32 v139, 8, v132
	.loc	1 306 36                        ; attention_backward.py:306:36
	v_cmp_lt_u16_e64 s12, 7, v72.l
	v_cmp_lt_u16_e64 s13, 7, v72.h
	.loc	1 274 28                        ; attention_backward.py:274:28
	v_alignbit_b32 v141, v133, v132, 24
	v_bfe_i32 v142, v133, 0, 8
	v_lshrrev_b32_e32 v72, 8, v133
	v_mov_b16_e64 v151.l, v133.h
	.loc	1 304 27                        ; attention_backward.py:304:27
	v_bfe_u32 v154, v133, 8, 4
	.loc	1 274 28                        ; attention_backward.py:274:28
	v_bfe_i32 v133, v126, 0, 8
	.loc	1 305 30                        ; attention_backward.py:305:30
	v_lshrrev_b16 v135.l, 4, v126.l
	.loc	1 304 28                        ; attention_backward.py:304:28
	v_and_b16 v123.l, v126.l, 15
	.loc	1 307 37                        ; attention_backward.py:307:37
	v_mov_b16_e64 v126.l, v138.l
	.loc	1 304 27                        ; attention_backward.py:304:27
	v_bfe_u32 v128, v132, 16, 4
	.loc	1 304 28 is_stmt 0              ; attention_backward.py:304:28
	v_and_b16 v123.h, v139.l, 15
	.loc	1 304 27                        ; attention_backward.py:304:27
	v_bfe_u32 v152, v132, 8, 4
	.loc	1 306 50 is_stmt 1              ; attention_backward.py:306:50
	v_or_b32_e32 v127, -16, v137
	.loc	1 307 37                        ; attention_backward.py:307:37
	v_cmp_gt_i16_e64 s24, 0, v126.l
	.loc	1 306 50                        ; attention_backward.py:306:50
	v_or_b32_e32 v126, -16, v129
	.loc	1 306 36 is_stmt 0              ; attention_backward.py:306:36
	v_cmp_lt_u16_e64 s25, 7, v123.l
	.loc	1 396 43 is_stmt 1              ; attention_backward.py:396:43
	v_sub_f32_e32 v68, v140, v110
	.loc	1 306 27                        ; attention_backward.py:306:27
	v_cndmask_b32_e64 v127, v137, v127, s22
	.loc	1 274 28                        ; attention_backward.py:274:28
	v_mov_b16_e64 v140.l, v132.h
	.loc	1 306 27                        ; attention_backward.py:306:27
	v_cndmask_b32_e64 v138, v129, v126, s10
	.loc	1 306 36 is_stmt 0              ; attention_backward.py:306:36
	v_cmp_lt_u16_e64 s10, 7, v123.h
	.loc	1 306 50                        ; attention_backward.py:306:50
	v_or_b32_e32 v126, -16, v128
	.loc	1 304 28 is_stmt 1              ; attention_backward.py:304:28
	v_and_b16 v123.h, v72.l, 15
	.loc	1 305 30                        ; attention_backward.py:305:30
	v_lshrrev_b16 v72.h, 4, v132.l
	.loc	1 305 28 is_stmt 0              ; attention_backward.py:305:28
	v_bfe_u32 v153, v132, 20, 4
	.loc	1 299 21 is_stmt 1              ; attention_backward.py:299:21
	v_cvt_f32_i32_e32 v143, v143
	.loc	1 306 27                        ; attention_backward.py:306:27
	v_cndmask_b32_e64 v162, v128, v126, s12
	.loc	1 306 36 is_stmt 0              ; attention_backward.py:306:36
	v_cmp_lt_u16_e64 s12, 7, v123.h
	.loc	1 304 28 is_stmt 1              ; attention_backward.py:304:28
	v_and_b16 v123.h, v122.l, 15
	.loc	1 306 50                        ; attention_backward.py:306:50
	v_or_b32_e32 v126, -16, v136
	.loc	1 307 37                        ; attention_backward.py:307:37
	v_mov_b16_e64 v128.l, v142.l
	.loc	1 299 21                        ; attention_backward.py:299:21
	v_cvt_f32_i32_e32 v144, v144
	v_cvt_f32_i32_e32 v145, v145
	.loc	1 306 36                        ; attention_backward.py:306:36
	v_cmp_lt_u16_e64 s22, 7, v123.h
	.loc	1 306 50 is_stmt 0              ; attention_backward.py:306:50
	v_or_b32_e32 v123, -16, v152
	.loc	1 306 27                        ; attention_backward.py:306:27
	v_cndmask_b32_e64 v126, v136, v126, s13
	.loc	1 307 37 is_stmt 1              ; attention_backward.py:307:37
	v_cmp_gt_i16_e64 s13, 0, v128.l
	.loc	1 299 21                        ; attention_backward.py:299:21
	v_cvt_f32_i32_e32 v148, v148
	v_cvt_f32_i32_e32 v146, v146
	.loc	1 306 27                        ; attention_backward.py:306:27
	v_cndmask_b32_e64 v136, v152, v123, s10
	.loc	1 306 50 is_stmt 0              ; attention_backward.py:306:50
	v_or_b32_e32 v123, -16, v154
	.loc	1 299 21 is_stmt 1              ; attention_backward.py:299:21
	v_cvt_f32_i32_e32 v147, v147
	v_cvt_f32_i32_e32 v149, v149
	v_cvt_f32_i32_e32 v150, v150
	.loc	1 311 21                        ; attention_backward.py:311:21
	v_cvt_f32_i32_e32 v136, v136
	.loc	1 306 27                        ; attention_backward.py:306:27
	v_cndmask_b32_e64 v128, v154, v123, s12
	.loc	1 306 50 is_stmt 0              ; attention_backward.py:306:50
	v_or_b32_e32 v123, -16, v161
	.loc	1 311 21 is_stmt 1              ; attention_backward.py:311:21
	v_cvt_f32_i32_e32 v138, v138
	v_cvt_f32_i32_e32 v126, v126
	v_cvt_f32_i32_e32 v127, v127
	v_cvt_f32_i32_e32 v128, v128
	.loc	1 306 27                        ; attention_backward.py:306:27
	v_cndmask_b32_e64 v129, v161, v123, s22
	.loc	1 274 28                        ; attention_backward.py:274:28
	v_bfe_i32 v123, v140, 0, 8
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 311 21                        ; attention_backward.py:311:21
	v_cvt_f32_i32_e32 v129, v129
	.loc	1 307 37                        ; attention_backward.py:307:37
	v_cmp_gt_i16_e64 s26, 0, v123.l
	.loc	1 274 28                        ; attention_backward.py:274:28
	v_bfe_i32 v123, v151, 0, 8
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 307 37                        ; attention_backward.py:307:37
	v_cmp_gt_i16_e64 s27, 0, v123.l
	.loc	1 274 28                        ; attention_backward.py:274:28
	v_bfe_i32 v123, v139, 0, 8
	.loc	1 307 37                        ; attention_backward.py:307:37
	v_cmp_gt_i16_e64 s23, 0, v123.l
	.loc	1 274 28                        ; attention_backward.py:274:28
	v_bfe_i32 v123, v72, 0, 8
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 307 37                        ; attention_backward.py:307:37
	v_cmp_gt_i16_e64 s12, 0, v123.l
	.loc	1 274 28                        ; attention_backward.py:274:28
	v_bfe_i32 v123, v122, 0, 8
	.loc	1 307 37                        ; attention_backward.py:307:37
	v_cmp_gt_i16_e64 s10, 0, v123.l
	.loc	1 304 27                        ; attention_backward.py:304:27
	v_and_b32_e32 v123, 15, v141
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 306 50                        ; attention_backward.py:306:50
	v_or_b32_e32 v132, -16, v123
	.loc	1 306 27 is_stmt 0              ; attention_backward.py:306:27
	v_cndmask_b32_e64 v132, v123, v132, s25
	.loc	1 307 37 is_stmt 1              ; attention_backward.py:307:37
	v_mov_b16_e64 v123.l, v133.l
	.loc	1 290 33                        ; attention_backward.py:290:33
	v_lshlrev_b32_e32 v133, 16, v156
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 311 21                        ; attention_backward.py:311:21
	v_cvt_f32_i32_e32 v132, v132
	.loc	1 307 37                        ; attention_backward.py:307:37
	v_cmp_gt_i16_e64 s22, 0, v123.l
	.loc	1 307 52 is_stmt 0              ; attention_backward.py:307:52
	v_or_b32_e32 v123, -16, v153
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 307 28                        ; attention_backward.py:307:28
	v_cndmask_b32_e64 v137, v153, v123, s26
	.loc	1 307 52                        ; attention_backward.py:307:52
	v_or_b32_e32 v123, -16, v155
	.loc	1 311 21 is_stmt 1              ; attention_backward.py:311:21
	v_cvt_f32_i32_e32 v137, v137
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 307 28                        ; attention_backward.py:307:28
	v_cndmask_b32_e64 v140, v155, v123, s27
	.loc	1 299 21                        ; attention_backward.py:299:21
	v_mul_f32_e32 v123, v96, v143
	.loc	1 311 21                        ; attention_backward.py:311:21
	v_cvt_f32_i32_e32 v140, v140
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 345 58                        ; attention_backward.py:345:58
	v_fma_f32 v141, v123, v133, -v108
	.loc	1 299 21                        ; attention_backward.py:299:21
	v_mul_f32_e32 v123, v96, v144
	.loc	1 290 33                        ; attention_backward.py:290:33
	v_lshlrev_b32_e32 v133, 16, v157
	.loc	1 345 58                        ; attention_backward.py:345:58
	v_fma_f32 v142, v123, v133, -v108
	.loc	1 299 21                        ; attention_backward.py:299:21
	v_mul_f32_e32 v123, v96, v145
	v_mul_f32_e32 v145, v96, v148
	.loc	1 311 21                        ; attention_backward.py:311:21
	v_cvt_f32_i32_e32 v148, v162
	.loc	1 290 33                        ; attention_backward.py:290:33
	v_lshlrev_b32_e32 v133, 16, v158
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 345 58                        ; attention_backward.py:345:58
	v_fma_f32 v143, v123, v133, -v108
	.loc	1 299 21                        ; attention_backward.py:299:21
	v_mul_f32_e32 v123, v96, v146
	.loc	1 290 33                        ; attention_backward.py:290:33
	v_lshlrev_b32_e32 v133, 16, v159
	.loc	1 345 58                        ; attention_backward.py:345:58
	v_fma_f32 v144, v123, v133, -v108
	.loc	1 299 21                        ; attention_backward.py:299:21
	v_mul_f32_e32 v123, v96, v147
	.loc	1 290 33                        ; attention_backward.py:290:33
	v_lshlrev_b32_e32 v133, 16, v160
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 345 58                        ; attention_backward.py:345:58
	v_fma_f32 v133, v123, v133, -v108
	.loc	1 305 30                        ; attention_backward.py:305:30
	v_and_b16 v123.l, v72.h, 15
	.loc	1 274 28                        ; attention_backward.py:274:28
	v_mov_b16_e32 v123.h, 0
	.loc	1 305 30                        ; attention_backward.py:305:30
	v_lshrrev_b16 v72.h, 4, v139.l
	.loc	1 299 21                        ; attention_backward.py:299:21
	v_mul_f32_e32 v139, v96, v149
	v_mul_f32_e32 v147, v96, v150
	.loc	1 345 45                        ; attention_backward.py:345:45
	v_exp_f32_e32 v133, v133
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 345 58 is_stmt 0              ; attention_backward.py:345:58
	v_fma_f32 v139, v139, v124, -v108
	.loc	1 307 52 is_stmt 1              ; attention_backward.py:307:52
	v_or_b32_e32 v124, -16, v123
	.loc	1 345 58                        ; attention_backward.py:345:58
	v_fma_f32 v130, v147, v130, -v108
	.loc	1 309 31                        ; attention_backward.py:309:31
	v_mov_b16_e64 v147.h, v123.h
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 345 45                        ; attention_backward.py:345:45
	v_exp_f32_e32 v139, v139
	.loc	1 307 28                        ; attention_backward.py:307:28
	v_cndmask_b32_e64 v124, v123, v124, s24
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 345 45                        ; attention_backward.py:345:45
	v_exp_f32_e32 v130, v130
	.loc	1 311 21                        ; attention_backward.py:311:21
	v_cvt_f32_i32_e32 v146, v124
	.loc	1 290 33                        ; attention_backward.py:290:33
	v_lshlrev_b32_e32 v124, 16, v131
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	.loc	1 311 21                        ; attention_backward.py:311:21
	v_mul_f32_e32 v131, v146, v124
	v_mul_f32_e32 v137, v137, v124
	v_mul_f32_e32 v138, v138, v124
	v_mul_f32_e32 v136, v136, v124
	v_dual_mul_f32 v132, v132, v124 :: v_dual_cndmask_b32 v131, 0, v131
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 309 31                        ; attention_backward.py:309:31
	v_dual_cndmask_b32 v137, 0, v137 :: v_dual_mul_f32 v126, v126, v124
	v_dual_cndmask_b32 v138, 0, v138 :: v_dual_cndmask_b32 v149, 0, v136
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mov_b16_e64 v123.l, v131.h
	v_mov_b16_e64 v147.l, v137.h
	v_cmp_o_f32_e64 s26, v131, v131
	.loc	1 311 21                        ; attention_backward.py:311:21
	v_mul_f32_e32 v140, v140, v124
	v_mul_f32_e32 v148, v148, v124
	.loc	1 309 31                        ; attention_backward.py:309:31
	v_and_b32_e32 v146, 1, v123
	v_and_b32_e32 v136, 1, v147
	.loc	1 345 58                        ; attention_backward.py:345:58
	v_fma_f32 v145, v145, v134, -v108
	.loc	1 309 31                        ; attention_backward.py:309:31
	v_mov_b16_e64 v134.h, v123.h
	v_mov_b16_e64 v134.l, v138.h
	.loc	1 305 30                        ; attention_backward.py:305:30
	v_and_b16 v123.l, v72.h, 15
	.loc	1 309 31                        ; attention_backward.py:309:31
	v_add3_u32 v131, v131, v146, 0x7fff
	v_cndmask_b32_e32 v140, 0, v140, vcc_lo
	v_cmp_o_f32_e64 s27, v138, v138
	v_and_b32_e32 v134, 1, v134
	v_mov_b16_e64 v146.h, v123.h
	v_cndmask_b32_e32 v148, 0, v148, vcc_lo
	v_mov_b16_e64 v146.l, v140.h
	v_cmp_o_f32_e64 s28, v137, v137
	v_add3_u32 v138, v138, v134, 0x7fff
	v_cndmask_b16 v134.h, 0x7fff, v131.h, s26
	.loc	1 307 52                        ; attention_backward.py:307:52
	v_or_b32_e32 v131, -16, v123
	.loc	1 309 31                        ; attention_backward.py:309:31
	v_and_b32_e32 v146, 1, v146
	v_cmp_o_f32_e64 s25, v140, v140
	v_cndmask_b16 v134.l, 0x7fff, v138.h, s27
	v_add3_u32 v136, v137, v136, 0x7fff
	.loc	1 307 28                        ; attention_backward.py:307:28
	v_cndmask_b32_e64 v131, v123, v131, s23
	.loc	1 309 31                        ; attention_backward.py:309:31
	v_mov_b16_e64 v123.l, v149.h
	v_add3_u32 v137, v140, v146, 0x7fff
	.loc	1 311 21                        ; attention_backward.py:311:21
	v_mul_f32_e32 v128, v128, v124
	v_mul_f32_e32 v127, v127, v124
	.loc	1 309 31                        ; attention_backward.py:309:31
	v_cmp_o_f32_e64 s15, v148, v148
	v_and_b32_e32 v138, 1, v123
	v_mov_b16_e64 v123.l, v148.h
	.loc	1 311 21                        ; attention_backward.py:311:21
	v_cvt_f32_i32_e32 v131, v131
	.loc	1 309 31                        ; attention_backward.py:309:31
	v_cndmask_b32_e32 v132, 0, v132, vcc_lo
	v_cndmask_b32_e32 v128, 0, v128, vcc_lo
	v_mov_b16_e32 v72.h, v123.h
	v_and_b32_e32 v140, 1, v123
	.loc	1 305 30                        ; attention_backward.py:305:30
	v_and_b16 v123.l, v135.l, 15
	.loc	1 345 45                        ; attention_backward.py:345:45
	v_exp_f32_e32 v135, v141
	.loc	1 311 21                        ; attention_backward.py:311:21
	v_dual_mul_f32 v131, v131, v124 :: v_dual_cndmask_b32 v126, 0, v126
	.loc	1 309 31                        ; attention_backward.py:309:31
	v_cmp_o_f32_e64 s7, v132, v132
	v_mov_b16_e64 v141.h, v123.h
	v_cmp_o_f32_e64 s5, v128, v128
	v_mov_b16_e64 v146.h, v123.h
	v_cndmask_b16 v136.h, 0x7fff, v136.h, s28
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 345 29                        ; attention_backward.py:345:29
	v_cndmask_b32_e64 v135, 0, v135, s20
	.loc	1 396 26                        ; attention_backward.py:396:26
	v_mul_f32_e32 v125, v135, v125
	.loc	1 345 45                        ; attention_backward.py:345:45
	v_exp_f32_e32 v135, v142
	.loc	1 309 31                        ; attention_backward.py:309:31
	v_mov_b16_e64 v142.h, v123.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 397 34                        ; attention_backward.py:397:34
	v_mul_f32_e32 v125, s39, v125
	.loc	1 345 29                        ; attention_backward.py:345:29
	v_cndmask_b32_e64 v135, 0, v135, s18
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	.loc	1 396 26                        ; attention_backward.py:396:26
	v_mul_f32_e32 v73, v135, v73
	.loc	1 345 45                        ; attention_backward.py:345:45
	v_exp_f32_e32 v135, v143
	.loc	1 309 31                        ; attention_backward.py:309:31
	v_mov_b16_e64 v143.h, v123.h
	.loc	1 397 34                        ; attention_backward.py:397:34
	v_mul_f32_e32 v73, s39, v73
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 345 29                        ; attention_backward.py:345:29
	v_cndmask_b32_e64 v135, 0, v135, s16
	.loc	1 396 26                        ; attention_backward.py:396:26
	v_mul_f32_e32 v71, v135, v71
	.loc	1 345 45                        ; attention_backward.py:345:45
	v_exp_f32_e32 v135, v144
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 397 34                        ; attention_backward.py:397:34
	v_mul_f32_e32 v71, s39, v71
	.loc	1 345 29                        ; attention_backward.py:345:29
	v_cndmask_b32_e64 v135, 0, v135, s14
	.loc	1 330 17                        ; attention_backward.py:330:17
	s_and_b32 s14, s2, s6
	.loc	1 309 31                        ; attention_backward.py:309:31
	v_cmp_o_f32_e64 s6, v126, v126
	.loc	1 345 29                        ; attention_backward.py:345:29
	v_cndmask_b32_e64 v130, 0, v130, s14
	.loc	1 397 33                        ; attention_backward.py:397:33
	v_cmp_o_f32_e64 s14, v71, v71
	.loc	1 396 26                        ; attention_backward.py:396:26
	v_mul_f32_e32 v144, v135, v70
	.loc	1 345 45                        ; attention_backward.py:345:45
	v_exp_f32_e32 v135, v145
	.loc	1 309 31                        ; attention_backward.py:309:31
	v_cndmask_b32_e32 v145, 0, v127, vcc_lo
	.loc	1 345 29                        ; attention_backward.py:345:29
	v_cndmask_b32_e64 v127, 0, v133, s8
	.loc	1 396 26                        ; attention_backward.py:396:26
	v_mul_f32_e32 v66, v130, v66
	.loc	1 309 31                        ; attention_backward.py:309:31
	v_add3_u32 v130, v148, v140, 0x7fff
	.loc	1 305 30                        ; attention_backward.py:305:30
	v_lshrrev_b16 v70.l, 4, v72.l
	.loc	1 397 33                        ; attention_backward.py:397:33
	v_bfe_u32 v140, v71, 16, 1
	.loc	1 270 9                         ; attention_backward.py:270:9
	s_cmp_lt_i32 s52, s53
	.loc	1 397 34                        ; attention_backward.py:397:34
	v_mul_f32_e32 v66, s39, v66
	.loc	1 309 31                        ; attention_backward.py:309:31
	v_cndmask_b16 v136.l, 0x7fff, v130.h, s15
	.loc	1 345 29                        ; attention_backward.py:345:29
	v_cndmask_b32_e64 v133, 0, v135, s9
	.loc	1 309 31                        ; attention_backward.py:309:31
	v_cmp_o_f32_e64 s24, v149, v149
	v_add3_u32 v138, v149, v138, 0x7fff
	.loc	1 345 29                        ; attention_backward.py:345:29
	v_cndmask_b32_e64 v135, 0, v139, s11
	.loc	1 397 33                        ; attention_backward.py:397:33
	v_cmp_o_f32_e64 s9, v125, v125
	.loc	1 396 26                        ; attention_backward.py:396:26
	v_mul_f32_e32 v68, v133, v68
	.loc	1 307 52                        ; attention_backward.py:307:52
	v_or_b32_e32 v133, -16, v123
	.loc	1 396 26                        ; attention_backward.py:396:26
	v_mul_f32_e32 v67, v127, v67
	.loc	1 309 31                        ; attention_backward.py:309:31
	v_cndmask_b16 v127.h, 0x7fff, v137.h, s25
	.loc	1 397 34                        ; attention_backward.py:397:34
	v_mul_f32_e32 v137, s39, v144
	v_mul_f32_e32 v68, s39, v68
	.loc	1 307 28                        ; attention_backward.py:307:28
	v_cndmask_b32_e64 v130, v123, v133, s22
	.loc	1 397 34                        ; attention_backward.py:397:34
	v_mul_f32_e32 v67, s39, v67
	.loc	1 309 31                        ; attention_backward.py:309:31
	v_mov_b16_e64 v123.l, v132.h
	.loc	1 397 33                        ; attention_backward.py:397:33
	v_bfe_u32 v133, v125, 16, 1
	v_cmp_o_f32_e64 s11, v73, v73
	.loc	1 311 21                        ; attention_backward.py:311:21
	v_cvt_f32_i32_e32 v130, v130
	.loc	1 309 31                        ; attention_backward.py:309:31
	v_cndmask_b32_e32 v131, 0, v131, vcc_lo
	v_and_b32_e32 v139, 1, v123
	.loc	1 305 30                        ; attention_backward.py:305:30
	v_and_b16 v123.l, v122.h, 15
	.loc	1 397 33                        ; attention_backward.py:397:33
	v_add3_u32 v125, v125, v133, 0x7fff
	.loc	1 311 21                        ; attention_backward.py:311:21
	v_mul_f32_e32 v130, v130, v124
	.loc	1 309 31                        ; attention_backward.py:309:31
	v_mov_b16_e64 v72.l, v131.h
	.loc	1 396 26                        ; attention_backward.py:396:26
	v_mul_f32_e32 v69, v135, v69
	.loc	1 309 31                        ; attention_backward.py:309:31
	v_cndmask_b16 v135.l, 0x7fff, v138.h, s24
	.loc	1 397 33                        ; attention_backward.py:397:33
	v_bfe_u32 v138, v73, 16, 1
	v_bfe_u32 v133, v137, 16, 1
	v_add3_u32 v71, v71, v140, 0x7fff
	v_bfe_u32 v140, v68, 16, 1
	.loc	1 397 34 is_stmt 0              ; attention_backward.py:397:34
	v_dual_mul_f32 v69, s39, v69 :: v_dual_and_b32 v72, 1, v72
	.loc	1 397 33                        ; attention_backward.py:397:33
	v_add3_u32 v73, v73, v138, 0x7fff
	v_bfe_u32 v138, v67, 16, 1
	.loc	1 309 31 is_stmt 1              ; attention_backward.py:309:31
	v_cmp_o_f32_e64 s8, v131, v131
	.loc	1 397 33                        ; attention_backward.py:397:33
	v_cmp_o_f32_e64 s15, v137, v137
	v_cmp_o_f32_e64 s16, v67, v67
	v_cmp_o_f32_e64 s17, v68, v68
	v_add3_u32 v133, v137, v133, 0x7fff
	v_bfe_u32 v137, v69, 16, 1
	v_add3_u32 v67, v67, v138, 0x7fff
	v_bfe_u32 v138, v66, 16, 1
	v_add3_u32 v68, v68, v140, 0x7fff
	.loc	1 309 31                        ; attention_backward.py:309:31
	v_add3_u32 v72, v131, v72, 0x7fff
	v_add3_u32 v131, v132, v139, 0x7fff
	.loc	1 307 52                        ; attention_backward.py:307:52
	v_or_b32_e32 v132, -16, v123
	.loc	1 397 33                        ; attention_backward.py:397:33
	v_cmp_o_f32_e64 s18, v69, v69
	v_cmp_o_f32_e64 s19, v66, v66
	v_add3_u32 v69, v69, v137, 0x7fff
	v_add3_u32 v66, v66, v138, 0x7fff
	v_cndmask_b16 v73.l, 0x7fff, v125.h, s9
	v_cndmask_b16 v73.h, 0x7fff, v73.h, s11
	v_cndmask_b16 v71.l, 0x7fff, v71.h, s14
	v_cndmask_b16 v71.h, 0x7fff, v133.h, s15
	v_cndmask_b16 v125.l, 0x7fff, v67.h, s16
	v_cndmask_b16 v125.h, 0x7fff, v68.h, s17
	.loc	1 307 28                        ; attention_backward.py:307:28
	v_cndmask_b32_e64 v68, v123, v132, s13
	.loc	1 309 31                        ; attention_backward.py:309:31
	v_mov_b16_e32 v123.l, v126.h
	v_cndmask_b32_e32 v130, 0, v130, vcc_lo
	.loc	1 397 33                        ; attention_backward.py:397:33
	v_cndmask_b16 v133.l, 0x7fff, v69.h, s18
	v_cndmask_b16 v133.h, 0x7fff, v66.h, s19
	.loc	1 309 31                        ; attention_backward.py:309:31
	v_cndmask_b16 v135.h, 0x7fff, v72.h, s8
	v_cndmask_b16 v137.l, 0x7fff, v131.h, s7
	.loc	1 397 33                        ; attention_backward.py:397:33
	v_permlanex16_b32 v67, v73, s29, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v69, v71, s29, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v72, v125, s29, 0xfedcba98 op_sel:[1,0]
	.loc	1 309 31                        ; attention_backward.py:309:31
	v_and_b32_e32 v131, 1, v123
	.loc	1 305 30                        ; attention_backward.py:305:30
	v_and_b16 v123.l, v70.l, 15
	.loc	1 309 31                        ; attention_backward.py:309:31
	v_mov_b16_e64 v141.l, v130.h
	.loc	1 397 33                        ; attention_backward.py:397:33
	v_perm_b32 v66, v67, v73, v111
	v_perm_b32 v67, v67, v73, v112
	v_permlanex16_b32 v73, v133, s29, 0xfedcba98 op_sel:[1,0]
	.loc	1 311 21                        ; attention_backward.py:311:21
	v_cvt_f32_i32_e32 v132, v68
	.loc	1 397 33                        ; attention_backward.py:397:33
	v_perm_b32 v68, v69, v71, v111
	v_perm_b32 v69, v69, v71, v112
	v_perm_b32 v70, v72, v125, v111
	v_perm_b32 v71, v72, v125, v112
	.loc	1 307 52                        ; attention_backward.py:307:52
	v_or_b32_e32 v125, -16, v123
	.loc	1 309 31                        ; attention_backward.py:309:31
	v_add3_u32 v126, v126, v131, 0x7fff
	v_and_b32_e32 v131, 1, v141
	.loc	1 397 33                        ; attention_backward.py:397:33
	v_perm_b32 v72, v73, v133, v111
	v_perm_b32 v73, v73, v133, v112
	.loc	1 307 28                        ; attention_backward.py:307:28
	v_cndmask_b32_e64 v133, v123, v125, s12
	.loc	1 309 31                        ; attention_backward.py:309:31
	v_mov_b16_e64 v123.l, v128.h
	.loc	1 311 21                        ; attention_backward.py:311:21
	v_mul_f32_e32 v129, v129, v124
	.loc	1 309 31                        ; attention_backward.py:309:31
	v_add3_u32 v125, v130, v131, 0x7fff
	.loc	1 311 21                        ; attention_backward.py:311:21
	v_mul_f32_e32 v132, v132, v124
	.loc	1 309 31                        ; attention_backward.py:309:31
	v_cndmask_b16 v125.l, 0x7fff, v126.h, s6
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_dual_cndmask_b32 v129, 0, v129 :: v_dual_and_b32 v126, 1, v123
	v_mov_b16_e64 v123.l, v145.h
	v_cndmask_b32_e32 v132, 0, v132, vcc_lo
	v_cmp_o_f32_e64 s7, v130, v130
	.loc	1 311 21                        ; attention_backward.py:311:21
	v_cvt_f32_i32_e32 v130, v133
	.loc	1 309 31                        ; attention_backward.py:309:31
	v_cmp_o_f32_e64 s1, v129, v129
	v_and_b32_e32 v133, 1, v123
	v_mov_b16_e64 v142.l, v132.h
	.loc	1 305 30                        ; attention_backward.py:305:30
	v_lshrrev_b16 v123.l, 4, v122.l
	.loc	1 309 31                        ; attention_backward.py:309:31
	v_add3_u32 v122, v128, v126, 0x7fff
	.loc	1 311 21                        ; attention_backward.py:311:21
	v_mul_f32_e32 v126, v130, v124
	.loc	1 309 31                        ; attention_backward.py:309:31
	v_cmp_o_f32_e64 s6, v132, v132
	v_and_b32_e32 v131, 1, v142
	.loc	1 307 52                        ; attention_backward.py:307:52
	v_or_b32_e32 v130, -16, v123
	.loc	1 309 31                        ; attention_backward.py:309:31
	v_cndmask_b16 v137.h, 0x7fff, v125.h, s7
	v_cmp_o_f32_e64 s4, v145, v145
	s_delay_alu instid0(VALU_DEP_4)
	v_add3_u32 v128, v132, v131, 0x7fff
	v_cndmask_b32_e32 v132, 0, v126, vcc_lo
	v_cndmask_b16 v126.l, 0x7fff, v122.h, s5
	.loc	1 307 28                        ; attention_backward.py:307:28
	v_cndmask_b32_e64 v122, v123, v130, s10
	.loc	1 309 31                        ; attention_backward.py:309:31
	v_mov_b16_e64 v123.l, v129.h
	v_cndmask_b16 v125.h, 0x7fff, v128.h, s6
	v_mov_b16_e64 v143.l, v132.h
	v_add3_u32 v131, v145, v133, 0x7fff
	.loc	1 311 21                        ; attention_backward.py:311:21
	v_cvt_f32_i32_e32 v122, v122
	.loc	1 309 31                        ; attention_backward.py:309:31
	v_and_b32_e32 v123, 1, v123
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_and_b32_e32 v128, 1, v143
	v_cndmask_b16 v127.l, 0x7fff, v131.h, s4
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 311 21                        ; attention_backward.py:311:21
	v_mul_f32_e32 v122, v122, v124
	.loc	1 309 31                        ; attention_backward.py:309:31
	v_add3_u32 v123, v129, v123, 0x7fff
	v_cmp_o_f32_e64 s4, v132, v132
	v_add3_u32 v124, v132, v128, 0x7fff
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cndmask_b32_e32 v122, 0, v122, vcc_lo
	v_cndmask_b16 v128.l, 0x7fff, v123.h, s1
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cndmask_b16 v126.h, 0x7fff, v124.h, s4
	v_mov_b16_e64 v146.l, v122.h
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cmp_o_f32_e64 s1, v122, v122
	v_and_b32_e32 v123, 1, v146
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add3_u32 v122, v122, v123, 0x7fff
	v_cndmask_b16 v128.h, 0x7fff, v122.h, s1
	ds_store_b128 v121, v[134:137]
	ds_store_b128 v121, v[125:128] offset:16
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_u16_d16 v122, v0
	ds_load_u16_d16 v125, v0 offset:768
	ds_load_u16_d16 v126, v0 offset:1024
	ds_load_u16_d16 v127, v0 offset:1280
	ds_load_u16_d16 v128, v0 offset:1536
	ds_load_u16_d16 v129, v0 offset:1792
	ds_load_u16_d16 v124, v0 offset:512
	ds_load_u16_d16 v123, v0 offset:256
	ds_load_u16_d16 v131, v0 offset:608
	ds_load_u16_d16 v130, v0 offset:352
	ds_load_u16_d16 v139, v0 offset:576
	ds_load_u16_d16 v140, v0 offset:832
	ds_load_u16_d16 v141, v0 offset:1088
	ds_load_u16_d16 v142, v0 offset:1344
	ds_load_u16_d16 v143, v0 offset:1600
	ds_load_u16_d16 v144, v0 offset:1856
	s_waitcnt lgkmcnt(15)
	ds_load_u16_d16_hi v122, v0 offset:128
	s_waitcnt lgkmcnt(15)
	ds_load_u16_d16_hi v125, v0 offset:896
	s_waitcnt lgkmcnt(15)
	ds_load_u16_d16_hi v126, v0 offset:1152
	s_waitcnt lgkmcnt(15)
	ds_load_u16_d16_hi v127, v0 offset:1408
	s_waitcnt lgkmcnt(15)
	ds_load_u16_d16_hi v128, v0 offset:1664
	s_waitcnt lgkmcnt(15)
	ds_load_u16_d16_hi v129, v0 offset:1920
	s_waitcnt lgkmcnt(15)
	ds_load_u16_d16_hi v124, v0 offset:640
	s_waitcnt lgkmcnt(15)
	ds_load_u16_d16_hi v123, v0 offset:384
	.loc	1 398 31                        ; attention_backward.py:398:31
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[57:64], v[122:129], v[66:73], v[57:64]
	.loc	1 309 31                        ; attention_backward.py:309:31
	ds_load_u16_d16 v146, v0 offset:288
	ds_load_u16_d16 v145, v0 offset:32
	ds_load_u16_d16 v137, v0 offset:64
	ds_load_u16_d16 v138, v0 offset:320
	ds_load_u16_d16 v129, v0 offset:96
	ds_load_u16_d16 v147, v0 offset:544
	ds_load_u16_d16 v132, v0 offset:864
	ds_load_u16_d16 v133, v0 offset:1120
	ds_load_u16_d16 v134, v0 offset:1376
	ds_load_u16_d16 v135, v0 offset:1632
	ds_load_u16_d16 v148, v0 offset:800
	ds_load_u16_d16 v136, v0 offset:1888
	ds_load_u16_d16 v149, v0 offset:1056
	ds_load_u16_d16 v150, v0 offset:1312
	ds_load_u16_d16 v151, v0 offset:1568
	ds_load_u16_d16 v152, v0 offset:1824
	ds_load_u16_d16_hi v130, v0 offset:480
	ds_load_u16_d16_hi v139, v0 offset:704
	ds_load_u16_d16_hi v140, v0 offset:960
	ds_load_u16_d16_hi v141, v0 offset:1216
	ds_load_u16_d16_hi v142, v0 offset:1472
	ds_load_u16_d16_hi v143, v0 offset:1728
	ds_load_u16_d16_hi v144, v0 offset:1984
	s_waitcnt lgkmcnt(21)
	ds_load_u16_d16_hi v145, v0 offset:160
	s_waitcnt lgkmcnt(21)
	ds_load_u16_d16_hi v137, v0 offset:192
	s_waitcnt lgkmcnt(20)
	ds_load_u16_d16_hi v129, v0 offset:224
	ds_load_u16_d16_hi v146, v0 offset:416
	ds_load_u16_d16_hi v138, v0 offset:448
	s_waitcnt lgkmcnt(22)
	ds_load_u16_d16_hi v147, v0 offset:672
	ds_load_u16_d16_hi v131, v0 offset:736
	s_waitcnt lgkmcnt(19)
	ds_load_u16_d16_hi v148, v0 offset:928
	ds_load_u16_d16_hi v132, v0 offset:992
	s_waitcnt lgkmcnt(19)
	ds_load_u16_d16_hi v149, v0 offset:1184
	ds_load_u16_d16_hi v133, v0 offset:1248
	s_waitcnt lgkmcnt(20)
	ds_load_u16_d16_hi v150, v0 offset:1440
	ds_load_u16_d16_hi v134, v0 offset:1504
	s_waitcnt lgkmcnt(21)
	ds_load_u16_d16_hi v151, v0 offset:1696
	s_waitcnt lgkmcnt(21)
	ds_load_u16_d16_hi v152, v0 offset:1952
	ds_load_u16_d16_hi v135, v0 offset:1760
	ds_load_u16_d16_hi v136, v0 offset:2016
	.loc	1 398 31                        ; attention_backward.py:398:31
	s_waitcnt lgkmcnt(12)
	v_wmma_f32_16x16x16_bf16 v[9:16], v[137:144], v[66:73], v[9:16]
	s_waitcnt lgkmcnt(2)
	v_wmma_f32_16x16x16_bf16 v[41:48], v[145:152], v[66:73], v[41:48]
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[1:8], v[129:136], v[66:73], v[1:8]
	s_cbranch_scc1 .LBB0_10
.LBB0_11:                               ; %._crit_edge15
	.loc	1 401 13                        ; attention_backward.py:401:13
	v_mul_lo_u32 v0, s55, v85
	s_mul_i32 s4, s55, s33
	.loc	1 408 40                        ; attention_backward.py:408:40
	v_cmp_gt_i32_e32 vcc_lo, s55, v87
	.loc	1 405 9                         ; attention_backward.py:405:9
	s_and_b32 s37, s37, 0xffff
	s_mov_b32 s39, 0x31027000
	s_mov_b32 s38, 0x7ffffffe
	.loc	1 168 40                        ; attention_backward.py:168:40
	v_or_b32_e32 v19, 32, v87
	.loc	1 408 18                        ; attention_backward.py:408:18
	s_and_b32 vcc_lo, s2, vcc_lo
	.loc	1 401 13                        ; attention_backward.py:401:13
	v_add_nc_u32_e32 v21, s4, v0
	.loc	1 168 40                        ; attention_backward.py:168:40
	v_or_b32_e32 v20, 16, v87
	v_or_b32_e32 v18, 48, v87
	.loc	1 408 40                        ; attention_backward.py:408:40
	v_cmp_gt_i32_e64 s1, s55, v19
	.loc	1 168 40                        ; attention_backward.py:168:40
	v_or_b32_e32 v17, 62, v86
	.loc	1 405 9                         ; attention_backward.py:405:9
	v_add_lshl_u32 v22, v21, v87, 2
	v_add_lshl_u32 v23, v21, v94, 2
	v_add_lshl_u32 v24, v21, v95, 2
	v_add_lshl_u32 v25, v21, v90, 2
	.loc	1 401 13                        ; attention_backward.py:401:13
	v_add_nc_u32_e32 v0, v0, v87
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 405 9                         ; attention_backward.py:405:9
	v_dual_cndmask_b32 v22, 0x80000000, v22 :: v_dual_cndmask_b32 v23, 0x80000000, v23
	v_cndmask_b32_e32 v24, 0x80000000, v24, vcc_lo
	v_add_lshl_u32 v26, v21, v89, 2
	v_cndmask_b32_e32 v25, 0x80000000, v25, vcc_lo
	s_clause 0x2
	buffer_store_b32 v57, v22, s[36:39], 0 offen
	buffer_store_b32 v58, v23, s[36:39], 0 offen
	buffer_store_b32 v59, v24, s[36:39], 0 offen
	v_add_lshl_u32 v22, v21, v93, 2
	v_add_lshl_u32 v23, v21, v91, 2
	v_add_lshl_u32 v24, v21, v92, 2
	.loc	1 401 13                        ; attention_backward.py:401:13
	v_add_lshl_u32 v0, v0, s4, 2
	.loc	1 408 40                        ; attention_backward.py:408:40
	v_cmp_gt_i32_e64 s0, s55, v20
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
	buffer_store_b32 v41, v20, s[36:39], 0 offen
	buffer_store_b32 v42, v22, s[36:39], 0 offen
	buffer_store_b32 v43, v23, s[36:39], 0 offen
	v_cndmask_b32_e32 v20, 0x80000000, v25, vcc_lo
	v_add_nc_u32_e32 v22, 0x68, v0
	buffer_store_b32 v44, v24, s[36:39], 0 offen
	v_add_nc_u32_e32 v23, 0x70, v0
	v_add_nc_u32_e32 v24, 0x78, v0
	buffer_store_b32 v45, v20, s[36:39], 0 offen
	v_cndmask_b32_e32 v20, 0x80000000, v22, vcc_lo
	.loc	1 408 40                        ; attention_backward.py:408:40
	v_cmp_gt_i32_e64 s3, s55, v18
	.loc	1 405 9                         ; attention_backward.py:405:9
	v_dual_cndmask_b32 v22, 0x80000000, v23 :: v_dual_cndmask_b32 v23, 0x80000000, v24
	.loc	1 408 18                        ; attention_backward.py:408:18
	s_and_b32 vcc_lo, s2, s1
	.loc	1 405 9                         ; attention_backward.py:405:9
	buffer_store_b32 v46, v20, s[36:39], 0 offen
	v_add_nc_u32_e32 v20, 0x88, v0
	v_cndmask_b32_e32 v19, 0x80000000, v19, vcc_lo
	s_clause 0x2
	buffer_store_b32 v47, v22, s[36:39], 0 offen
	buffer_store_b32 v48, v23, s[36:39], 0 offen
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
.Ltmp54:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_attention_bwd_dq_int4xbf16_none_local_outfloat32_doutfloat32_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1
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
		.amdhsa_next_free_vgpr 163
		.amdhsa_next_free_sgpr 56
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
	.size	amd_strix_halo_gfx1151_attention_bwd_dq_int4xbf16_none_local_outfloat32_doutfloat32_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1, .Lfunc_end0-amd_strix_halo_gfx1151_attention_bwd_dq_int4xbf16_none_local_outfloat32_doutfloat32_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_attention_bwd_dq_int4xbf16_none_local_outfloat32_doutfloat32_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.num_vgpr, 163
	.set amd_strix_halo_gfx1151_attention_bwd_dq_int4xbf16_none_local_outfloat32_doutfloat32_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.num_agpr, 0
	.set amd_strix_halo_gfx1151_attention_bwd_dq_int4xbf16_none_local_outfloat32_doutfloat32_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.numbered_sgpr, 56
	.set amd_strix_halo_gfx1151_attention_bwd_dq_int4xbf16_none_local_outfloat32_doutfloat32_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_attention_bwd_dq_int4xbf16_none_local_outfloat32_doutfloat32_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.private_seg_size, 0
	.set amd_strix_halo_gfx1151_attention_bwd_dq_int4xbf16_none_local_outfloat32_doutfloat32_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.uses_vcc, 1
	.set amd_strix_halo_gfx1151_attention_bwd_dq_int4xbf16_none_local_outfloat32_doutfloat32_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.uses_flat_scratch, 0
	.set amd_strix_halo_gfx1151_attention_bwd_dq_int4xbf16_none_local_outfloat32_doutfloat32_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_attention_bwd_dq_int4xbf16_none_local_outfloat32_doutfloat32_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.has_recursion, 0
	.set amd_strix_halo_gfx1151_attention_bwd_dq_int4xbf16_none_local_outfloat32_doutfloat32_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 10500
; TotalNumSgprs: 58
; NumVgprs: 163
; ScratchSize: 0
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 20
; NumSGPRsForWavesPerEU: 58
; NumVGPRsForWavesPerEU: 163
; Occupancy: 9
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
	.quad	.Ltmp36                         ; DW_AT_low_pc
	.long	.Ltmp38-.Ltmp36                 ; DW_AT_high_pc
	.byte	1                               ; DW_AT_call_file
	.short	258                             ; DW_AT_call_line
	.byte	25                              ; DW_AT_call_column
	.byte	7                               ; Abbrev [7] 0x70:0x14 DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.quad	.Ltmp36                         ; DW_AT_low_pc
	.long	.Ltmp37-.Ltmp36                 ; DW_AT_high_pc
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
	.quad	.Ltmp35-.Lfunc_begin0
	.quad	.Ltmp46-.Lfunc_begin0
	.quad	.Ltmp47-.Lfunc_begin0
	.quad	.Ltmp48-.Lfunc_begin0
	.quad	.Ltmp49-.Lfunc_begin0
	.quad	.Ltmp50-.Lfunc_begin0
	.quad	.Ltmp51-.Lfunc_begin0
	.quad	.Ltmp52-.Lfunc_begin0
	.quad	.Ltmp53-.Lfunc_begin0
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
	.quad	.Ltmp46-.Lfunc_begin0
	.quad	.Ltmp47-.Lfunc_begin0
	.quad	.Ltmp48-.Lfunc_begin0
	.quad	.Ltmp49-.Lfunc_begin0
	.quad	.Ltmp50-.Lfunc_begin0
	.quad	.Ltmp51-.Lfunc_begin0
	.quad	.Ltmp52-.Lfunc_begin0
	.quad	.Ltmp53-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges2:
	.quad	.Ltmp39-.Lfunc_begin0
	.quad	.Ltmp40-.Lfunc_begin0
	.quad	.Ltmp41-.Lfunc_begin0
	.quad	.Ltmp42-.Lfunc_begin0
	.quad	.Ltmp43-.Lfunc_begin0
	.quad	.Ltmp45-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges3:
	.quad	.Ltmp39-.Lfunc_begin0
	.quad	.Ltmp40-.Lfunc_begin0
	.quad	.Ltmp41-.Lfunc_begin0
	.quad	.Ltmp42-.Lfunc_begin0
	.quad	.Ltmp43-.Lfunc_begin0
	.quad	.Ltmp44-.Lfunc_begin0
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
	.asciz	"amd_strix_halo_gfx1151_attention_bwd_dq_int4xbf16_none_local_outfloat32_doutfloat32_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1"                        ; string offset=97 ; amd_strix_halo_gfx1151_attention_bwd_dq_int4xbf16_none_local_outfloat32_doutfloat32_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1
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
    .name:           amd_strix_halo_gfx1151_attention_bwd_dq_int4xbf16_none_local_outfloat32_doutfloat32_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1
    .private_segment_fixed_size: 0
    .sgpr_count:     58
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_attention_bwd_dq_int4xbf16_none_local_outfloat32_doutfloat32_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     163
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
