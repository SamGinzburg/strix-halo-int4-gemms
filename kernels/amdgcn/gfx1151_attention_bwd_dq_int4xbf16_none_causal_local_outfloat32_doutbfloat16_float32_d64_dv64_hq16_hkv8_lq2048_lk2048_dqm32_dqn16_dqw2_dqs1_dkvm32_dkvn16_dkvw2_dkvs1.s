	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_attention_bwd_dq_int4xbf16_none_causal_local_outfloat32_doutbfloat16_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1                          ; -- Begin function amd_strix_halo_gfx1151_attention_bwd_dq_int4xbf16_none_causal_local_outfloat32_doutbfloat16_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1
	.p2align	8
	.type	amd_strix_halo_gfx1151_attention_bwd_dq_int4xbf16_none_causal_local_outfloat32_doutbfloat16_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1,@function
amd_strix_halo_gfx1151_attention_bwd_dq_int4xbf16_none_causal_local_outfloat32_doutbfloat16_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1:                                 ; @amd_strix_halo_gfx1151_attention_bwd_dq_int4xbf16_none_causal_local_outfloat32_doutbfloat16_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1
.Lfunc_begin0:
	.file	1 "<repo>/src/amd_strix_halo_kernels" "attention_backward.py"
	.loc	1 60 0                          ; attention_backward.py:60:0
	.cfi_sections .debug_frame
	.cfi_startproc
; %bb.0:
	s_clause 0x1
	s_load_b64 s[34:35], s[0:1], 0x78
	s_load_b32 s5, s[0:1], 0xa0
.Ltmp0:
	.loc	1 139 44 prologue_end           ; attention_backward.py:139:44
	v_lshlrev_b32_e32 v1, 4, v0
	.loc	1 124 31                        ; attention_backward.py:124:31
	v_lshrrev_b32_e32 v67, 1, v0
	.loc	1 119 19                        ; attention_backward.py:119:19
	s_lshl_b32 s20, s2, 5
	.loc	1 124 31                        ; attention_backward.py:124:31
	v_and_b32_e32 v65, 15, v0
	s_load_b256 s[24:31], s[0:1], 0x0
	.loc	1 139 44                        ; attention_backward.py:139:44
	v_and_b32_e32 v2, 16, v1
	.loc	1 124 21                        ; attention_backward.py:124:21
	v_or_b32_e32 v5, s20, v67
	.loc	1 133 26                        ; attention_backward.py:133:26
	s_lshl_b32 s21, s3, 11
	.loc	1 124 31                        ; attention_backward.py:124:31
	v_lshrrev_b32_e32 v6, 3, v0
	.loc	1 135 17                        ; attention_backward.py:135:17
	s_add_i32 s33, s20, s21
	.loc	1 168 40                        ; attention_backward.py:168:40
	v_and_b32_e32 v31, 7, v0
	.loc	1 128 21                        ; attention_backward.py:128:21
	v_cmp_gt_i32_e32 vcc_lo, 0x800, v5
	.loc	1 135 17                        ; attention_backward.py:135:17
	v_or_b32_e32 v4, s33, v67
	s_mov_b32 s51, 0x31027000
	s_mov_b32 s50, 0x7ffffffe
	.loc	1 124 21                        ; attention_backward.py:124:21
	v_or_b32_e32 v8, s20, v6
	s_clause 0x1
	s_load_b256 s[36:43], s[0:1], 0x38
	s_load_b64 s[6:7], s[0:1], 0x98
	.loc	1 139 44                        ; attention_backward.py:139:44
	s_waitcnt lgkmcnt(0)
	v_cmp_gt_i32_e64 s2, s34, v2
	.loc	1 167 13                        ; attention_backward.py:167:13
	v_mul_lo_u32 v6, s35, v6
	s_mul_i32 s4, s35, s33
	.loc	1 125 21                        ; attention_backward.py:125:21
	v_bfe_u32 v84, v0, 4, 1
	s_clause 0x1
	s_load_b32 s46, s[0:1], 0x80
	s_load_b64 s[44:45], s[0:1], 0x58
	.loc	1 139 22                        ; attention_backward.py:139:22
	s_and_b32 vcc_lo, vcc_lo, s2
	.loc	1 124 31                        ; attention_backward.py:124:31
	v_and_b32_e32 v66, 32, v0
	.loc	1 134 28                        ; attention_backward.py:134:28
	s_and_b32 s49, s25, 0xffff
	s_mov_b32 s48, s24
	.loc	1 167 13                        ; attention_backward.py:167:13
	v_lshl_add_u32 v14, s35, 4, v6
	.loc	1 125 21                        ; attention_backward.py:125:21
	v_lshrrev_b32_e32 v87, 2, v0
	.loc	1 124 31                        ; attention_backward.py:124:31
	v_lshrrev_b32_e32 v3, 1, v66
	.loc	1 125 21                        ; attention_backward.py:125:21
	v_or_b32_e32 v94, 2, v84
	v_or_b32_e32 v93, 4, v84
	v_or_b32_e32 v92, 6, v84
	v_or_b32_e32 v91, 8, v84
	.loc	1 124 31                        ; attention_backward.py:124:31
	v_or_b32_e32 v83, v3, v65
	.loc	1 135 17                        ; attention_backward.py:135:17
	v_mad_u64_u32 v[3:4], null, s34, v4, v[2:3]
	.loc	1 125 21                        ; attention_backward.py:125:21
	v_or_b32_e32 v89, 10, v84
	v_or_b32_e32 v90, 12, v84
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 124 21                        ; attention_backward.py:124:21
	v_or_b32_e32 v30, s20, v83
	.loc	1 143 17                        ; attention_backward.py:143:17
	v_or_b32_e32 v2, s33, v83
	.loc	1 220 21                        ; attention_backward.py:220:21
	s_waitcnt lgkmcnt(0)
	s_mul_f32 s9, s46, 0x3fb8aa3b
	.loc	1 125 21                        ; attention_backward.py:125:21
	v_or_b32_e32 v88, 14, v84
	.loc	1 134 28                        ; attention_backward.py:134:28
	v_cndmask_b32_e32 v3, 0x80000000, v3, vcc_lo
	.loc	1 128 21                        ; attention_backward.py:128:21
	v_cmp_gt_i32_e64 s2, 0x800, v30
	.loc	1 142 31                        ; attention_backward.py:142:31
	v_lshlrev_b32_e32 v7, 1, v2
	.loc	1 128 21                        ; attention_backward.py:128:21
	v_cmp_gt_i32_e32 vcc_lo, 0x800, v8
	.loc	1 167 13                        ; attention_backward.py:167:13
	v_lshl_add_u32 v8, s35, 3, v6
	.loc	1 134 28                        ; attention_backward.py:134:28
	buffer_load_b128 v[2:5], v3, s[48:51], 0 offen
	.loc	1 142 31                        ; attention_backward.py:142:31
	s_and_b32 s49, s31, 0xffff
	v_cndmask_b32_e64 v7, 0x80000000, v7, s2
	s_mov_b32 s48, s30
	s_mov_b64 s[52:53], s[42:43]
	.loc	1 168 40                        ; attention_backward.py:168:40
	v_and_b32_e32 v68, 3, v0
	.loc	1 142 31                        ; attention_backward.py:142:31
	buffer_load_u16 v32, v7, s[48:51], 0 offen
	.loc	1 168 40                        ; attention_backward.py:168:40
	v_lshlrev_b32_e32 v7, 3, v31
	.loc	1 166 23                        ; attention_backward.py:166:23
	s_and_b32 s49, s37, 0xffff
	s_mov_b32 s48, s36
	s_load_b64 s[36:37], s[0:1], 0x20
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 167 13                        ; attention_backward.py:167:13
	v_add_nc_u32_e32 v9, s4, v7
	v_mad_u64_u32 v[22:23], null, s35, 24, v[6:7]
	.loc	1 168 40                        ; attention_backward.py:168:40
	v_cmp_gt_i32_e64 s23, s35, v7
	.loc	1 167 13                        ; attention_backward.py:167:13
	v_or_b32_e32 v24, 4, v9
	.loc	1 168 18                        ; attention_backward.py:168:18
	s_and_b32 vcc_lo, vcc_lo, s23
	.loc	1 167 13                        ; attention_backward.py:167:13
	v_add_nc_u32_e32 v39, v9, v22
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_add_lshl_u32 v22, v24, v22, 2
	v_add_lshl_u32 v26, v24, v14, 2
	v_dual_cndmask_b32 v40, 0x80000000, v22 :: v_dual_lshlrev_b32 v27, 2, v39
	.loc	1 167 13                        ; attention_backward.py:167:13
	v_add_nc_u32_e32 v85, v6, v7
	v_add_nc_u32_e32 v86, v8, v7
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_dual_cndmask_b32 v35, 0x80000000, v27 :: v_dual_add_nc_u32 v38, v9, v14
	v_add_lshl_u32 v6, v24, v6, 2
	.loc	1 167 13                        ; attention_backward.py:167:13
	v_add_nc_u32_e32 v23, s4, v85
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_add_nc_u32_e32 v33, s4, v86
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_lshlrev_b32_e32 v25, 2, v38
	v_add_lshl_u32 v8, v24, v8, 2
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_dual_cndmask_b32 v10, 0x80000000, v6 :: v_dual_lshlrev_b32 v7, 2, v23
	v_lshlrev_b32_e32 v9, 2, v33
	.loc	1 171 28                        ; attention_backward.py:171:28
	v_lshlrev_b32_e32 v33, 1, v33
	v_lshlrev_b32_e32 v34, 1, v23
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_dual_cndmask_b32 v24, 0x80000000, v25 :: v_dual_cndmask_b32 v7, 0x80000000, v7
	v_dual_cndmask_b32 v15, 0x80000000, v9 :: v_dual_cndmask_b32 v18, 0x80000000, v8
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_dual_cndmask_b32 v26, 0x80000000, v26 :: v_dual_cndmask_b32 v33, 0x80000000, v33
	.loc	1 171 28                        ; attention_backward.py:171:28
	v_cndmask_b32_e32 v41, 0x80000000, v34, vcc_lo
	.loc	1 166 23                        ; attention_backward.py:166:23
	s_clause 0x7
	buffer_load_b128 v[6:9], v7, s[48:51], 0 offen
	buffer_load_b128 v[10:13], v10, s[48:51], 0 offen
	buffer_load_b128 v[14:17], v15, s[48:51], 0 offen
	buffer_load_b128 v[18:21], v18, s[48:51], 0 offen
	buffer_load_b128 v[22:25], v24, s[48:51], 0 offen
	buffer_load_b128 v[26:29], v26, s[48:51], 0 offen
	buffer_load_b128 v[34:37], v35, s[48:51], 0 offen
	buffer_load_b128 v[42:45], v40, s[48:51], 0 offen
	.loc	1 171 28                        ; attention_backward.py:171:28
	s_and_b32 s49, s39, 0xffff
	s_mov_b32 s48, s38
	.loc	1 134 28                        ; attention_backward.py:134:28
	v_and_b32_e32 v40, 16, v0
	.loc	1 171 28                        ; attention_backward.py:171:28
	s_clause 0x1
	buffer_load_b128 v[46:49], v41, s[48:51], 0 offen
	buffer_load_b128 v[50:53], v33, s[48:51], 0 offen
	v_lshlrev_b32_e32 v38, 1, v38
	.loc	1 121 23                        ; attention_backward.py:121:23
	s_ashr_i32 s4, s3, 31
	.loc	1 171 28                        ; attention_backward.py:171:28
	v_lshlrev_b32_e32 v69, 4, v31
	.loc	1 121 23                        ; attention_backward.py:121:23
	s_lshr_b32 s4, s4, 28
	.loc	1 171 28                        ; attention_backward.py:171:28
	v_lshlrev_b32_e32 v31, 6, v66
	v_cndmask_b32_e32 v33, 0x80000000, v38, vcc_lo
	.loc	1 121 23                        ; attention_backward.py:121:23
	s_add_i32 s4, s3, s4
	v_mov_b16_e32 v38.l, 0
	.loc	1 122 22                        ; attention_backward.py:122:22
	s_and_b32 s8, s4, 0xfff0
	.loc	1 197 28                        ; attention_backward.py:197:28
	s_lshl_b32 s4, s4, 10
	.loc	1 171 28                        ; attention_backward.py:171:28
	buffer_load_b128 v[54:57], v33, s[48:51], 0 offen
	v_lshlrev_b32_e32 v33, 1, v39
	.loc	1 124 31                        ; attention_backward.py:124:31
	v_and_b32_e32 v39, 56, v0
	.loc	1 122 22                        ; attention_backward.py:122:22
	s_sub_i32 s3, s3, s8
	.loc	1 171 28                        ; attention_backward.py:171:28
	v_mov_b16_e32 v62.l, v38.l
	.loc	1 123 19                        ; attention_backward.py:123:19
	s_bfe_u32 s8, s3, 0x10007
	.loc	1 171 28                        ; attention_backward.py:171:28
	v_cndmask_b32_e32 v33, 0x80000000, v33, vcc_lo
	v_lshlrev_b32_e32 v41, 1, v39
	v_lshlrev_b32_e32 v39, 7, v65
	.loc	1 123 19                        ; attention_backward.py:123:19
	s_add_i32 s3, s3, s8
	.loc	1 184 17                        ; attention_backward.py:184:17
	s_add_i32 s8, s5, s20
	.loc	1 171 28                        ; attention_backward.py:171:28
	buffer_load_b128 v[58:61], v33, s[48:51], 0 offen
	.loc	1 134 28                        ; attention_backward.py:134:28
	v_lshlrev_b32_e32 v33, 1, v0
	.loc	1 171 28                        ; attention_backward.py:171:28
	v_or3_b32 v31, v39, v31, v69
	.loc	1 123 19                        ; attention_backward.py:123:19
	s_sext_i32_i8 s3, s3
	.loc	1 184 17                        ; attention_backward.py:184:17
	s_add_i32 s8, s8, 32
	.loc	1 197 28                        ; attention_backward.py:197:28
	s_lshl_b32 s3, s3, 10
	.loc	1 134 28                        ; attention_backward.py:134:28
	v_and_or_b32 v75, v33, 30, v84
	.loc	1 197 28                        ; attention_backward.py:197:28
	s_and_b32 s47, s3, 0xfffff800
	.loc	1 181 39                        ; attention_backward.py:181:39
	s_sub_i32 s3, s20, s6
	.loc	1 171 28                        ; attention_backward.py:171:28
	v_xad_u32 v1, v1, v41, 0
	.loc	1 181 39                        ; attention_backward.py:181:39
	s_add_i32 s3, s3, s5
	.loc	1 134 28                        ; attention_backward.py:134:28
	v_lshlrev_b32_e32 v75, 2, v75
	.loc	1 181 25                        ; attention_backward.py:181:25
	s_max_i32 s3, s3, 0
	.loc	1 171 28                        ; attention_backward.py:171:28
	v_mov_b16_e32 v63.l, v38.l
	.loc	1 186 33                        ; attention_backward.py:186:33
	s_and_b32 s60, s3, 0x7ffffff0
	.loc	1 171 28                        ; attention_backward.py:171:28
	v_mov_b16_e32 v64.l, v38.l
	.loc	1 134 28                        ; attention_backward.py:134:28
	v_xor_b32_e32 v39, 4, v75
	.loc	1 171 28                        ; attention_backward.py:171:28
	v_mov_b16_e32 v71.l, v38.l
	v_mov_b16_e32 v72.l, v38.l
	v_mov_b16_e32 v73.l, v38.l
	v_mov_b16_e32 v80.l, v38.l
	v_mov_b16_e32 v82.l, v38.l
	v_mov_b16_e32 v108.l, v38.l
	v_mov_b16_e32 v109.l, v38.l
	v_mov_b16_e32 v110.l, v38.l
	v_mov_b16_e32 v111.l, v38.l
	v_mov_b16_e32 v112.l, v38.l
	v_mov_b16_e32 v113.l, v38.l
	v_mov_b16_e32 v114.l, v38.l
	v_xad_u32 v117, v31, 32, 0
	v_xad_u32 v119, v31, 64, 0
	v_xad_u32 v121, 0x60, v31, 0
	v_xad_u32 v116, v31, 16, 0
	v_xad_u32 v118, v31, 48, 0
	v_xad_u32 v120, 0x50, v31, 0
	.loc	1 197 28                        ; attention_backward.py:197:28
	s_and_b32 s4, s4, 0xffffc000
	.loc	1 171 28                        ; attention_backward.py:171:28
	s_waitcnt vmcnt(3)
	ds_store_b128 v1, v[46:49]
	s_waitcnt vmcnt(2)
	ds_store_b128 v1, v[50:53] offset:1024
	.loc	1 134 28                        ; attention_backward.py:134:28
	ds_bpermute_b32 v78, v75, v3
	ds_bpermute_b32 v3, v39, v3
	ds_bpermute_b32 v81, v75, v4
	ds_bpermute_b32 v4, v39, v4
	.loc	1 171 28                        ; attention_backward.py:171:28
	v_and_b32_e32 v122, 0xffff0000, v52
	.loc	1 142 31                        ; attention_backward.py:142:31
	v_lshlrev_b32_e32 v32, 16, v32
	.loc	1 129 27                        ; attention_backward.py:129:27
	v_add_nc_u32_e32 v104, s5, v30
	.loc	1 134 28                        ; attention_backward.py:134:28
	ds_bpermute_b32 v30, v75, v2
	ds_bpermute_b32 v2, v39, v2
	.loc	1 184 17                        ; attention_backward.py:184:17
	s_add_i32 s5, s8, s7
	.loc	1 189 25                        ; attention_backward.py:189:25
	s_min_i32 s8, s8, 0x800
	.loc	1 182 25                        ; attention_backward.py:182:25
	s_min_i32 s5, s5, 0x800
	.loc	1 190 35                        ; attention_backward.py:190:35
	s_add_i32 s3, s8, 15
	.loc	1 187 35                        ; attention_backward.py:187:35
	s_add_i32 s5, s5, 15
	.loc	1 190 34                        ; attention_backward.py:190:34
	s_ashr_i32 s8, s3, 31
	.loc	1 219 37                        ; attention_backward.py:219:37
	v_mul_f32_e32 v107, s9, v32
	.loc	1 241 43                        ; attention_backward.py:241:43
	v_subrev_nc_u32_e32 v105, s6, v104
	.loc	1 187 34                        ; attention_backward.py:187:34
	s_ashr_i32 s6, s5, 31
	.loc	1 190 34                        ; attention_backward.py:190:34
	s_lshr_b32 s8, s8, 28
	.loc	1 187 34                        ; attention_backward.py:187:34
	s_lshr_b32 s6, s6, 28
	.loc	1 190 34                        ; attention_backward.py:190:34
	s_add_i32 s3, s3, s8
	.loc	1 187 34                        ; attention_backward.py:187:34
	s_add_i32 s5, s5, s6
	.loc	1 190 33                        ; attention_backward.py:190:33
	s_and_b32 s3, s3, -16
	.loc	1 187 33                        ; attention_backward.py:187:33
	s_and_b32 s5, s5, -16
	.loc	1 134 28                        ; attention_backward.py:134:28
	ds_bpermute_b32 v39, v39, v5
	.loc	1 190 18                        ; attention_backward.py:190:18
	s_min_i32 s61, s5, s3
	.loc	1 134 28                        ; attention_backward.py:134:28
	v_cmp_eq_u32_e64 s5, 0, v40
	ds_bpermute_b32 v40, v75, v5
	.loc	1 171 28                        ; attention_backward.py:171:28
	v_and_b32_e32 v5, 0xffff0000, v49
	v_and_b32_e32 v123, 0xffff0000, v53
	s_waitcnt vmcnt(1)
	v_and_b32_e32 v125, 0xffff0000, v55
	.loc	1 134 28                        ; attention_backward.py:134:28
	s_waitcnt lgkmcnt(0)
	v_cndmask_b32_e64 v75, v2, v30, s5
	v_cndmask_b32_e64 v77, v30, v2, s5
	v_cndmask_b32_e64 v76, v3, v78, s5
	v_cndmask_b32_e64 v78, v78, v3, s5
	v_cndmask_b32_e64 v79, v4, v81, s5
	v_cndmask_b32_e64 v81, v81, v4, s5
	.loc	1 171 28                        ; attention_backward.py:171:28
	v_and_b32_e32 v3, 0xffff0000, v47
	v_and_b32_e32 v4, 0xffff0000, v48
	v_and_b32_e32 v32, 0xffff0000, v51
	v_and_b32_e32 v2, 0xffff0000, v46
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 176 24                        ; attention_backward.py:176:24
	v_dual_mul_f32 v3, v9, v3 :: v_dual_lshlrev_b32 v70, 3, v0
	v_dual_mul_f32 v5, v13, v5 :: v_dual_lshlrev_b32 v74, 3, v68
	.loc	1 171 28                        ; attention_backward.py:171:28
	v_mov_b16_e32 v64.h, v46.l
	v_mov_b16_e32 v63.h, v47.l
	v_mov_b16_e32 v62.h, v48.l
	v_mov_b16_e32 v38.h, v49.l
	v_and_b32_e32 v47, 0xffff0000, v57
	.loc	1 176 24                        ; attention_backward.py:176:24
	v_dual_mul_f32 v9, v17, v32 :: v_dual_mul_f32 v2, v7, v2
	v_dual_mul_f32 v13, v21, v123 :: v_dual_mul_f32 v4, v11, v4
	.loc	1 171 28                        ; attention_backward.py:171:28
	v_mov_b16_e32 v80.h, v50.l
	v_mov_b16_e32 v73.h, v51.l
	.loc	1 176 24                        ; attention_backward.py:176:24
	v_dual_mul_f32 v21, v29, v47 :: v_dual_and_b32 v124, 0xffff0000, v54
	.loc	1 171 28                        ; attention_backward.py:171:28
	v_and_b32_e32 v30, 0xffff0000, v50
	s_waitcnt vmcnt(0)
	v_and_b32_e32 v49, 0xffff0000, v59
	v_and_b32_e32 v46, 0xffff0000, v56
.Ltmp1:
	.file	2 "<triton>/python/triton/language" "standard.py"
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_dual_fmac_f32 v3, v8, v63 :: v_dual_and_b32 v50, 0xffff0000, v60
.Ltmp2:
	.loc	1 171 28                        ; attention_backward.py:171:28
	v_and_b32_e32 v51, 0xffff0000, v61
	v_and_b32_e32 v48, 0xffff0000, v58
.Ltmp3:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_fmac_f32_e32 v2, v6, v64
	v_fmac_f32_e32 v4, v10, v62
	v_dual_fmac_f32 v5, v12, v38 :: v_dual_add_nc_u32 v106, s7, v104
.Ltmp4:
	.loc	1 176 24                        ; attention_backward.py:176:24
	v_mul_f32_e32 v7, v15, v30
	.loc	1 171 28                        ; attention_backward.py:171:28
	v_mov_b16_e32 v72.h, v52.l
	v_mov_b16_e32 v71.h, v53.l
	v_mov_b16_e32 v110.h, v54.l
	v_mov_b16_e32 v109.h, v55.l
	v_mov_b16_e32 v108.h, v56.l
	v_mov_b16_e32 v82.h, v57.l
	v_mov_b16_e32 v111.h, v61.l
	v_mov_b16_e32 v112.h, v60.l
	v_mov_b16_e32 v113.h, v59.l
	v_mov_b16_e32 v114.h, v58.l
	.loc	1 176 24                        ; attention_backward.py:176:24
	v_mul_f32_e32 v11, v19, v122
	v_mul_f32_e32 v15, v23, v124
	v_mul_f32_e32 v17, v25, v125
	v_mul_f32_e32 v25, v37, v49
	v_mul_f32_e32 v19, v27, v46
	v_mul_f32_e32 v27, v43, v50
	v_mul_f32_e32 v29, v45, v51
	v_dual_mul_f32 v23, v35, v48 :: v_dual_add_f32 v2, v2, v3
.Ltmp5:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_e32 v3, v4, v5
	v_fmac_f32_e32 v7, v14, v80
	v_fmac_f32_e32 v9, v16, v73
	v_fmac_f32_e32 v11, v18, v72
	v_fmac_f32_e32 v13, v20, v71
	v_fmac_f32_e32 v15, v22, v110
	v_fmac_f32_e32 v17, v24, v109
	v_fmac_f32_e32 v19, v26, v108
	v_fmac_f32_e32 v21, v28, v82
	v_fmac_f32_e32 v23, v34, v114
	v_fmac_f32_e32 v25, v36, v113
	v_fmac_f32_e32 v27, v42, v112
	v_fmac_f32_e32 v29, v44, v111
	v_add_f32_e32 v10, v2, v3
	v_add_f32_e32 v4, v7, v9
	v_add_f32_e32 v5, v11, v13
	v_add_f32_e32 v6, v15, v17
	v_add_f32_e32 v7, v19, v21
	v_add_f32_e32 v8, v23, v25
	v_add_f32_e32 v9, v27, v29
.Ltmp6:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_mov_b32_e32 v13, v10
	s_delay_alu instid0(VALU_DEP_4)
.Ltmp7:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_dual_add_f32 v11, v4, v5 :: v_dual_add_f32 v12, v6, v7
.Ltmp8:
	.loc	1 171 28                        ; attention_backward.py:171:28
	ds_store_b128 v1, v[54:57] offset:2048
	ds_store_b128 v1, v[58:61] offset:3072
.Ltmp9:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_e32 v9, v8, v9
.Ltmp10:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_mov_b32_dpp v13, v13 row_xmask:4 row_mask:0xf bank_mask:0xf
	v_dual_mov_b32 v14, v11 :: v_dual_mov_b32 v15, v12
.Ltmp11:
	.loc	1 171 28                        ; attention_backward.py:171:28
	s_waitcnt lgkmcnt(0)
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp12:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_mov_b32_e32 v16, v9
.Ltmp13:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_e32 v34, v10, v13
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_3)
.Ltmp14:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_mov_b32_dpp v14, v14 row_xmask:4 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v15, v15 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp15:
	.loc	1 171 28                        ; attention_backward.py:171:28
	s_barrier
.Ltmp16:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_mov_b32_dpp v16, v16 row_xmask:4 row_mask:0xf bank_mask:0xf
	v_dual_mov_b32 v38, v34 :: v_dual_add_f32 v35, v11, v14
	s_delay_alu instid0(VALU_DEP_3)
.Ltmp17:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_e32 v36, v12, v15
.Ltmp18:
	.loc	1 171 28                        ; attention_backward.py:171:28
	ds_load_b128 v[17:20], v119
	ds_load_b128 v[21:24], v120
.Ltmp19:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_e32 v37, v9, v16
.Ltmp20:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_mov_b32_dpp v38, v38 row_xmask:2 row_mask:0xf bank_mask:0xf
	v_dual_mov_b32 v43, v35 :: v_dual_mov_b32 v44, v36
.Ltmp21:
	.loc	1 171 28                        ; attention_backward.py:171:28
	ds_load_b128 v[9:12], v117
	ds_load_b128 v[13:16], v118
.Ltmp22:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_dual_mov_b32 v45, v37 :: v_dual_add_f32 v42, v34, v38
.Ltmp23:
	.loc	1 171 28                        ; attention_backward.py:171:28
	v_add_nc_u32_e32 v115, 0, v31
	v_xad_u32 v31, 0x70, v31, 0
.Ltmp24:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_mov_b32_dpp v43, v43 row_xmask:2 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v44, v44 row_xmask:2 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v45, v45 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp25:
	.loc	1 171 28                        ; attention_backward.py:171:28
	ds_load_b128 v[25:28], v121
	ds_load_b128 v[29:32], v31
.Ltmp26:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_mov_b32_e32 v46, v42
.Ltmp27:
	.loc	1 171 28                        ; attention_backward.py:171:28
	ds_load_b128 v[1:4], v115
	ds_load_b128 v[5:8], v116
.Ltmp28:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_dual_add_f32 v43, v35, v43 :: v_dual_add_f32 v44, v36, v44
	v_add_f32_e32 v45, v37, v45
.Ltmp29:
	.loc	1 197 28                        ; attention_backward.py:197:28
	s_add_i32 s47, s47, s4
	.loc	1 200 27                        ; attention_backward.py:200:27
	v_cmp_gt_i32_e64 s4, s34, v74
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp30:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_dual_mov_b32 v47, v43 :: v_dual_mov_b32 v48, v44
	v_mov_b32_e32 v49, v45
	v_or_b32_e32 v95, s47, v87
	v_or_b32_e32 v96, s47, v84
	v_or_b32_e32 v97, s47, v94
	v_or_b32_e32 v98, s47, v93
	v_or_b32_e32 v99, s47, v92
	v_or_b32_e32 v100, s47, v91
	v_or_b32_e32 v101, s47, v89
	v_or_b32_e32 v102, s47, v90
	v_or_b32_e32 v103, s47, v88
.Ltmp31:
	.loc	1 134 28                        ; attention_backward.py:134:28
	v_cndmask_b32_e64 v80, v39, v40, s5
	v_cndmask_b32_e64 v82, v40, v39, s5
.Ltmp32:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_mov_b32_dpp v46, v46 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v47, v47 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v48, v48 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v49, v49 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_and_b32_e32 v71, 24, v67
.Ltmp33:
	.loc	1 194 9                         ; attention_backward.py:194:9
	s_cmp_lt_i32 s60, s61
	s_cselect_b32 s22, -1, 0
	s_cmp_ge_i32 s60, s61
	s_cbranch_scc1 .LBB0_3
; %bb.1:                                ; %.lr.ph
	.loc	1 223 21                        ; attention_backward.py:223:21
	v_dual_mov_b32 v52, v107 :: v_dual_and_b32 v33, 24, v33
	v_xor_b32_e32 v35, v70, v71
	v_dual_mov_b32 v53, v107 :: v_dual_mov_b32 v34, 0xff800000
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_lshl_or_b32 v51, v65, 5, v33
	v_dual_mov_b32 v54, v107 :: v_dual_mov_b32 v33, 0
	v_dual_mov_b32 v50, 0 :: v_dual_add_nc_u32 v55, 0, v35
	s_delay_alu instid0(VALU_DEP_3)
	v_xor_b32_e32 v36, 8, v51
	v_xor_b32_e32 v37, 16, v51
	v_xor_b32_e32 v38, 24, v51
	s_and_b32 s49, s27, 0xffff
	s_mov_b32 s48, s26
	v_add_nc_u32_e32 v56, 0, v36
	v_add_nc_u32_e32 v57, 0, v37
	v_add_nc_u32_e32 v58, 0, v38
	s_and_b32 s57, s37, 0xffff
	s_mov_b32 s56, s36
	s_mov_b32 s24, 0x76543210
	s_mov_b32 s58, s50
	s_mov_b32 s59, s51
	s_mov_b32 s25, s60
.LBB0_2:                                ; =>This Inner Loop Header: Depth=1
	.loc	1 0 21 is_stmt 0                ; attention_backward.py:0:21
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_dual_mov_b32 v118, v34 :: v_dual_add_nc_u32 v35, s25, v95
	.loc	1 214 33 is_stmt 1              ; attention_backward.py:214:33
	v_add_lshl_u32 v40, v99, s25, 1
	v_add_lshl_u32 v39, v98, s25, 1
	v_add_lshl_u32 v38, v97, s25, 1
	.loc	1 199 21                        ; attention_backward.py:199:21
	v_mad_u64_u32 v[35:36], null, v35, s34, v[74:75]
	.loc	1 214 33                        ; attention_backward.py:214:33
	v_add_lshl_u32 v37, v96, s25, 1
	v_add_lshl_u32 v61, v102, s25, 1
	v_add_lshl_u32 v62, v103, s25, 1
	v_add_lshl_u32 v59, v100, s25, 1
	v_add_lshl_u32 v60, v101, s25, 1
	.loc	1 204 29                        ; attention_backward.py:204:29
	v_dual_mov_b32 v34, v33 :: v_dual_add_nc_u32 v125, 0, v51
	.loc	1 198 28                        ; attention_backward.py:198:28
	v_cndmask_b32_e64 v35, 0x80000000, v35, s4
	.loc	1 241 17                        ; attention_backward.py:241:17
	v_min_i32_e32 v126, v104, v106
	.loc	1 195 27                        ; attention_backward.py:195:27
	v_or_b32_e32 v119, s25, v93
	v_or_b32_e32 v120, s25, v92
	v_or_b32_e32 v121, s25, v91
	.loc	1 198 28                        ; attention_backward.py:198:28
	buffer_load_b64 v[35:36], v35, s[48:51], 0 offen
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 195 27                        ; attention_backward.py:195:27
	v_or_b32_e32 v122, s25, v89
	v_or_b32_e32 v123, s25, v90
	v_or_b32_e32 v124, s25, v88
	.loc	1 241 26                        ; attention_backward.py:241:26
	v_cmp_ge_i32_e64 s3, v119, v105
	.loc	1 241 17 is_stmt 0              ; attention_backward.py:241:17
	v_cmp_ge_i32_e64 s9, v126, v119
	.loc	1 241 26                        ; attention_backward.py:241:26
	v_cmp_ge_i32_e32 vcc_lo, v120, v105
	.loc	1 241 17                        ; attention_backward.py:241:17
	v_cmp_ge_i32_e64 s8, v126, v120
	.loc	1 241 26                        ; attention_backward.py:241:26
	v_cmp_ge_i32_e64 s12, v124, v105
	v_cmp_ge_i32_e64 s13, v123, v105
	v_cmp_ge_i32_e64 s14, v122, v105
	v_cmp_ge_i32_e64 s15, v121, v105
	.loc	1 241 17                        ; attention_backward.py:241:17
	v_cmp_ge_i32_e64 s16, v126, v124
	v_cmp_ge_i32_e64 s17, v126, v123
	v_cmp_ge_i32_e64 s18, v126, v122
	v_cmp_ge_i32_e64 s19, v126, v121
	.loc	1 242 17 is_stmt 1              ; attention_backward.py:242:17
	s_and_b32 s3, s9, s3
	s_and_b32 s30, s8, vcc_lo
	s_and_b32 vcc_lo, s2, s3
	s_and_b32 s8, s16, s12
	s_and_b32 s9, s17, s13
	.loc	1 198 28                        ; attention_backward.py:198:28
	s_waitcnt vmcnt(0)
	ds_store_b64 v55, v[35:36]
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 214 33                        ; attention_backward.py:214:33
	s_clause 0x7
	buffer_load_u16 v63, v40, s[56:59], 0 offen
	buffer_load_u16 v64, v39, s[56:59], 0 offen
	buffer_load_u16 v72, v38, s[56:59], 0 offen
	buffer_load_u16 v73, v37, s[56:59], 0 offen
	buffer_load_u16 v62, v62, s[56:59], 0 offen
	buffer_load_u16 v61, v61, s[56:59], 0 offen
	buffer_load_u16 v116, v60, s[56:59], 0 offen
	buffer_load_u16 v117, v59, s[56:59], 0 offen
	.loc	1 204 29                        ; attention_backward.py:204:29
	v_mov_b32_e32 v40, v33
	.loc	1 195 27                        ; attention_backward.py:195:27
	v_or_b32_e32 v59, s25, v84
	v_or_b32_e32 v60, s25, v94
	.loc	1 204 29                        ; attention_backward.py:204:29
	v_mov_b32_e32 v35, v33
	v_mov_b32_e32 v36, v33
	v_mov_b32_e32 v37, v33
	v_mov_b32_e32 v38, v33
	v_mov_b32_e32 v39, v33
	v_mov_b32_e32 v115, v40
	v_dual_mov_b32 v111, v36 :: v_dual_mov_b32 v110, v35
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_dual_mov_b32 v113, v38 :: v_dual_mov_b32 v112, v37
	v_dual_mov_b32 v114, v39 :: v_dual_mov_b32 v109, v34
	v_mov_b32_e32 v108, v33
	.loc	1 241 26                        ; attention_backward.py:241:26
	v_cmp_ge_i32_e64 s6, v60, v105
	v_cmp_ge_i32_e64 s7, v59, v105
	.loc	1 241 17 is_stmt 0              ; attention_backward.py:241:17
	v_cmp_ge_i32_e64 s10, v126, v60
	v_cmp_ge_i32_e64 s11, v126, v59
	.loc	1 198 28 is_stmt 1              ; attention_backward.py:198:28
	ds_load_b64 v[34:35], v125
	ds_load_b64 v[36:37], v56
	ds_load_b64 v[38:39], v57
	ds_load_b64 v[59:60], v58
	.loc	1 194 9                         ; attention_backward.py:194:9
	s_add_i32 s25, s25, 16
	.loc	1 242 17                        ; attention_backward.py:242:17
	s_and_b32 s6, s10, s6
	s_and_b32 s7, s11, s7
	s_and_b32 s3, s2, s6
	s_and_b32 s10, s18, s14
	s_and_b32 s11, s19, s15
	s_and_b32 s6, s2, s7
	s_and_b32 s7, s2, s8
	s_and_b32 s8, s2, s9
	s_and_b32 s9, s2, s10
	s_and_b32 s10, s2, s11
	s_and_b32 s11, s2, s30
	.loc	1 194 9                         ; attention_backward.py:194:9
	s_cmp_lt_i32 s25, s61
	.loc	1 204 29                        ; attention_backward.py:204:29
	s_waitcnt lgkmcnt(3)
	v_wmma_i32_16x16x16_iu4 v[108:115], v[34:35], v[75:76], v[108:115] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(2)
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[108:115], v[36:37], v[79:80], v[108:115] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu4 v[108:115], v[38:39], v[77:78], v[108:115] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[108:115], v[59:60], v[81:82], v[108:115] neg_lo:[1,1,0]
	.loc	1 223 21                        ; attention_backward.py:223:21
	v_cvt_f32_i32_e32 v40, v114
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cvt_f32_i32_e32 v35, v109
	v_cvt_f32_i32_e32 v36, v110
	s_delay_alu instid0(VALU_DEP_4)
	v_cvt_f32_i32_e32 v37, v111
	v_cvt_f32_i32_e32 v39, v113
	v_mul_f32_e32 v40, v53, v40
	v_cvt_f32_i32_e32 v34, v108
	v_cvt_f32_i32_e32 v38, v112
	v_cvt_f32_i32_e32 v59, v115
	v_dual_mul_f32 v37, v54, v37 :: v_dual_mul_f32 v36, v53, v36
	v_mul_f32_e32 v39, v52, v39
	v_dual_mul_f32 v35, v52, v35 :: v_dual_mul_f32 v34, v107, v34
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	v_dual_mul_f32 v59, v54, v59 :: v_dual_mul_f32 v38, v107, v38
	.loc	1 214 33                        ; attention_backward.py:214:33
	s_waitcnt vmcnt(7)
	v_lshlrev_b32_e32 v60, 16, v63
	.loc	1 223 21                        ; attention_backward.py:223:21
	s_waitcnt vmcnt(3)
	v_dual_mul_f32 v37, v37, v60 :: v_dual_lshlrev_b32 v62, 16, v62
	.loc	1 214 33                        ; attention_backward.py:214:33
	s_waitcnt vmcnt(2)
	v_lshlrev_b32_e32 v61, 16, v61
	v_lshlrev_b32_e32 v63, 16, v64
	v_lshlrev_b32_e32 v64, 16, v72
	v_lshlrev_b32_e32 v72, 16, v73
	.loc	1 223 21                        ; attention_backward.py:223:21
	s_waitcnt vmcnt(0)
	v_dual_mul_f32 v59, v59, v62 :: v_dual_lshlrev_b32 v108, 16, v117
	v_dual_mul_f32 v40, v40, v61 :: v_dual_lshlrev_b32 v73, 16, v116
	v_mul_f32_e32 v36, v36, v63
	.loc	1 257 22                        ; attention_backward.py:257:22
	v_cndmask_b32_e64 v37, 0xff800000, v37, s11
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cndmask_b32_e64 v59, 0xff800000, v59, s7
	v_cndmask_b32_e64 v40, 0xff800000, v40, s8
	.loc	1 223 21                        ; attention_backward.py:223:21
	v_mul_f32_e32 v39, v39, v73
	v_mul_f32_e32 v35, v35, v64
	v_mul_f32_e32 v34, v34, v72
	.loc	1 257 22                        ; attention_backward.py:257:22
	v_cndmask_b32_e32 v36, 0xff800000, v36, vcc_lo
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cndmask_b32_e64 v39, 0xff800000, v39, s9
	v_cndmask_b32_e64 v35, 0xff800000, v35, s3
	.loc	1 223 21                        ; attention_backward.py:223:21
	v_mul_f32_e32 v38, v38, v108
	.loc	1 257 22                        ; attention_backward.py:257:22
	v_cndmask_b32_e64 v60, 0xff800000, v34, s6
.Ltmp34:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention_backward.py:258:25 ] ]
	v_max_f32_e32 v62, v40, v59
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp35:
	.loc	1 257 22                        ; attention_backward.py:257:22
	v_cndmask_b32_e64 v38, 0xff800000, v38, s10
.Ltmp36:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention_backward.py:258:25 ] ]
	v_max3_f32 v34, v60, v35, v36
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_max3_f32 v61, v37, v38, v39
	v_max3_f32 v34, v34, v61, v62
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp37:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention_backward.py:258:25 ]
	v_permlanex16_b32 v61, v34, s24, 0xfedcba98 op_sel:[1,0]
.Ltmp38:
	.loc	1 259 20                        ; attention_backward.py:259:20
	v_max3_f32 v34, v118, v34, v61
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	.loc	1 261 58                        ; attention_backward.py:261:58
	v_sub_f32_e32 v37, v37, v34
	v_sub_f32_e32 v36, v36, v34
	v_sub_f32_e32 v39, v39, v34
	v_sub_f32_e32 v35, v35, v34
	.loc	1 261 45 is_stmt 0              ; attention_backward.py:261:45
	v_exp_f32_e32 v37, v37
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_4) | instid1(TRANS32_DEP_3)
	v_exp_f32_e32 v36, v36
	.loc	1 261 58                        ; attention_backward.py:261:58
	v_sub_f32_e32 v59, v59, v34
	.loc	1 261 45                        ; attention_backward.py:261:45
	v_exp_f32_e32 v39, v39
	v_exp_f32_e32 v35, v35
	.loc	1 261 29                        ; attention_backward.py:261:29
	v_cndmask_b32_e64 v37, 0, v37, s11
	v_cndmask_b32_e32 v36, 0, v36, vcc_lo
	.loc	1 261 45                        ; attention_backward.py:261:45
	v_exp_f32_e32 v59, v59
	s_delay_alu instid0(TRANS32_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	.loc	1 261 29                        ; attention_backward.py:261:29
	v_cndmask_b32_e64 v39, 0, v39, s9
	v_cndmask_b32_e64 v35, 0, v35, s3
	.loc	1 260 21 is_stmt 1              ; attention_backward.py:260:21
	v_cmp_neq_f32_e32 vcc_lo, 0xff800000, v118
.Ltmp39:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:262:33 ] ]
	v_add_f32_e32 v36, v36, v37
.Ltmp40:
	.loc	1 261 58                        ; attention_backward.py:261:58
	v_sub_f32_e32 v38, v38, v34
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	.loc	1 261 45 is_stmt 0              ; attention_backward.py:261:45
	v_exp_f32_e32 v38, v38
	.loc	1 261 29                        ; attention_backward.py:261:29
	v_cndmask_b32_e64 v59, 0, v59, s7
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_cndmask_b32_e64 v38, 0, v38, s10
	.loc	1 261 58                        ; attention_backward.py:261:58
	v_dual_sub_f32 v60, v60, v34 :: v_dual_add_f32 v37, v38, v39
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	.loc	1 261 45                        ; attention_backward.py:261:45
	v_exp_f32_e32 v60, v60
	.loc	1 260 70 is_stmt 1              ; attention_backward.py:260:70
	v_sub_f32_e32 v39, v118, v34
	.loc	1 261 29                        ; attention_backward.py:261:29
	v_cndmask_b32_e64 v60, 0, v60, s6
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp41:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:262:33 ] ]
	v_add_f32_e32 v35, v60, v35
	v_dual_add_f32 v35, v35, v36 :: v_dual_sub_f32 v40, v40, v34
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
.Ltmp42:
	.loc	1 261 45                        ; attention_backward.py:261:45
	v_exp_f32_e32 v40, v40
	.loc	1 261 29 is_stmt 0              ; attention_backward.py:261:29
	v_cndmask_b32_e64 v40, 0, v40, s8
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp43:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:262:33 ] ]
	v_add_f32_e32 v38, v40, v59
	v_add_f32_e32 v36, v37, v38
.Ltmp44:
	.loc	1 260 57                        ; attention_backward.py:260:57
	v_exp_f32_e32 v37, v39
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_dual_mov_b32 v38, v50 :: v_dual_add_f32 v35, v35, v36
.Ltmp45:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:262:33 ]
	v_permlanex16_b32 v36, v35, s24, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(TRANS32_DEP_1) | instid1(VALU_DEP_1)
.Ltmp46:
	.loc	1 260 21                        ; attention_backward.py:260:21
	v_dual_cndmask_b32 v37, 0, v37 :: v_dual_add_f32 v50, v35, v36
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 262 19                        ; attention_backward.py:262:19
	v_fmac_f32_e32 v50, v38, v37
	.loc	1 194 9                         ; attention_backward.py:194:9
	s_cbranch_scc1 .LBB0_2
	s_branch .LBB0_4
.LBB0_3:
	.loc	1 0 9 is_stmt 0                 ; attention_backward.py:0:9
	v_mov_b32_e32 v34, 0xff800000
	v_mov_b32_e32 v50, 0
.LBB0_4:                                ; %Flow141
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 264 43 is_stmt 1              ; attention_backward.py:264:43
	v_cmp_gt_f32_e32 vcc_lo, 0x800000, v50
	s_load_b32 s48, s[0:1], 0x74
.Ltmp47:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_dual_add_f32 v111, v43, v47 :: v_dual_and_b32 v36, 31, v0
.Ltmp48:
	.loc	1 266 9                         ; attention_backward.py:266:9
	v_lshl_add_u32 v37, v65, 2, 0
	.loc	1 264 43                        ; attention_backward.py:264:43
	v_cndmask_b32_e64 v35, 0, 32, vcc_lo
	v_cndmask_b32_e64 v33, 0, 0x42000000, vcc_lo
	.loc	1 264 26 is_stmt 0              ; attention_backward.py:264:26
	v_cmp_lt_f32_e64 s0, 0, v50
	.loc	1 266 9 is_stmt 1               ; attention_backward.py:266:9
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 264 43                        ; attention_backward.py:264:43
	v_ldexp_f32 v35, v50, v35
	.loc	1 266 9                         ; attention_backward.py:266:9
	v_cmp_eq_u32_e32 vcc_lo, 0, v66
.Ltmp49:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_dual_add_f32 v110, v42, v46 :: v_dual_add_f32 v113, v45, v49
.Ltmp50:
	.loc	1 266 9                         ; attention_backward.py:266:9
	s_and_b32 s41, s41, 0xffff
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 264 43                        ; attention_backward.py:264:43
	v_log_f32_e32 v35, v35
.Ltmp51:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_e32 v112, v44, v48
	s_mov_b32 s43, 0x31027000
	s_mov_b32 s42, 0x7ffffffe
.Ltmp52:
	.loc	1 267 9                         ; attention_backward.py:267:9
	s_and_b32 s53, s53, 0xffff
	s_mov_b32 s54, s42
	s_mov_b32 s55, s43
	v_lshrrev_b32_e32 v108, 4, v0
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 264 43                        ; attention_backward.py:264:43
	v_dual_sub_f32 v33, v35, v33 :: v_dual_mov_b32 v40, 0
	.loc	1 264 37 is_stmt 0              ; attention_backward.py:264:37
	v_add_f32_e32 v33, v34, v33
	.loc	1 266 9 is_stmt 1               ; attention_backward.py:266:9
	v_lshl_add_u32 v34, v66, 1, v37
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_dual_mov_b32 v38, v40 :: v_dual_add_nc_u32 v73, 0, v41
	v_dual_mov_b32 v39, v40 :: v_dual_and_b32 v72, 24, v0
	.loc	1 264 17                        ; attention_backward.py:264:17
	v_cndmask_b32_e64 v109, 0, v33, s0
	.loc	1 266 9                         ; attention_backward.py:266:9
	v_lshl_add_u32 v33, v36, 2, 0
	v_mov_b32_e32 v37, v40
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 267 9                         ; attention_backward.py:267:9
	v_lshrrev_b32_e32 v42, 1, v72
	v_mov_b32_e32 v35, v40
	.loc	1 266 9                         ; attention_backward.py:266:9
	ds_store_b32 v34, v109
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b32 v41, v33
	.loc	1 124 21                        ; attention_backward.py:124:21
	v_or_b32_e32 v33, s20, v36
	.loc	1 266 18                        ; attention_backward.py:266:18
	v_or_b32_e32 v34, s21, v36
	.loc	1 267 9                         ; attention_backward.py:267:9
	v_add3_u32 v42, 0, v69, v42
	v_mov_b32_e32 v48, v40
	v_mov_b32_e32 v47, v40
	.loc	1 128 21                        ; attention_backward.py:128:21
	v_cmp_gt_i32_e64 s0, 0x800, v33
	.loc	1 266 9                         ; attention_backward.py:266:9
	v_add_lshl_u32 v33, v34, s20, 2
	v_mov_b32_e32 v34, v40
	v_mov_b32_e32 v46, v40
	v_mov_b32_e32 v45, v40
	s_and_b32 vcc_lo, vcc_lo, s0
	v_dual_mov_b32 v36, v40 :: v_dual_cndmask_b32 v57, 0x80000000, v33
	v_mov_b32_e32 v33, v40
	v_mov_b32_e32 v44, v40
	v_mov_b32_e32 v43, v40
	v_mov_b32_e32 v56, v40
	v_mov_b32_e32 v55, v40
	v_mov_b32_e32 v54, v40
	s_waitcnt lgkmcnt(0)
	buffer_store_b32 v41, v57, s[40:43], 0 offen
	.loc	1 267 9                         ; attention_backward.py:267:9
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v73, v[110:113]
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b32 v58, v42
	v_mov_b32_e32 v42, v40
	v_mov_b32_e32 v41, v40
	v_mov_b32_e32 v53, v40
	v_mov_b32_e32 v52, v40
	v_mov_b32_e32 v51, v40
	v_mov_b32_e32 v50, v40
	v_mov_b32_e32 v49, v40
	v_mov_b32_e32 v64, v40
	v_mov_b32_e32 v63, v40
	v_mov_b32_e32 v62, v40
	v_mov_b32_e32 v61, v40
	v_mov_b32_e32 v60, v40
	v_mov_b32_e32 v59, v40
	.loc	1 270 9                         ; attention_backward.py:270:9
	s_and_not1_b32 vcc_lo, exec_lo, s22
	.loc	1 267 9                         ; attention_backward.py:267:9
	s_waitcnt lgkmcnt(0)
	buffer_store_b32 v58, v57, s[52:55], 0 offen
	v_mov_b32_e32 v58, v40
	v_mov_b32_e32 v57, v40
	.loc	1 396 43                        ; attention_backward.py:396:43
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v73, v[110:113]
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_cbranch_vccnz .LBB0_7
; %bb.5:                                ; %.lr.ph45
	.loc	1 0 43 is_stmt 0                ; attention_backward.py:0:43
	v_and_b32_e32 v34, 12, v0
	.loc	1 396 43                        ; attention_backward.py:396:43
	v_and_b32_e32 v33, 4, v67
	v_lshrrev_b32_e32 v35, 2, v66
	v_dual_mov_b32 v57, 0 :: v_dual_lshlrev_b32 v42, 9, v68
	s_delay_alu instid0(VALU_DEP_4)
	v_lshlrev_b32_e32 v36, 1, v34
	v_lshl_or_b32 v43, v72, 6, v69
	v_xor_b32_e32 v38, v70, v71
	s_and_b32 s27, s27, 0xffff
	s_and_b32 s37, s37, 0xffff
	v_lshl_or_b32 v110, v65, 5, v36
	v_dual_mov_b32 v36, 0x7632 :: v_dual_add_nc_u32 v33, 0, v33
	s_and_b32 s29, s29, 0xffff
	s_mov_b32 s40, s26
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_xor_b32_e32 v39, 16, v110
	v_cndmask_b32_e64 v36, 0x3276, v36, s5
	v_add3_u32 v33, v33, v35, v69
	v_mov_b32_e32 v35, 0x5410
	v_xor_b32_e32 v40, 24, v110
	s_mov_b32 s41, s27
	v_lshl_or_b32 v36, v36, 8, v36
	ds_load_b32 v111, v33
	v_cndmask_b32_e64 v35, 0x1054, v35, s5
	v_xor_b32_e32 v33, 8, v110
	v_mov_b32_e32 v49, 0
	s_mov_b32 s38, s42
	s_mov_b32 s39, s43
	v_lshl_or_b32 v35, v35, 8, v35
	v_add_nc_u32_e32 v116, 0, v33
	s_mov_b32 s30, s42
	s_mov_b32 s31, s43
	s_mov_b32 s49, 0x76543210
	v_and_b32_e32 v35, 0x540054, v35
	v_mov_b32_e32 v33, 0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v35, v35, 4, v35
	v_and_b32_e32 v113, 0x5040504, v35
	v_lshlrev_b32_e32 v35, 5, v0
	v_lshl_add_u32 v0, v65, 1, 0
	v_mov_b32_e32 v65, 0
	.loc	1 168 40 is_stmt 1              ; attention_backward.py:168:40
	v_lshlrev_b32_e32 v37, 4, v68
	v_lshlrev_b32_e32 v34, 5, v34
	v_lshlrev_b32_e32 v41, 1, v72
	s_delay_alu instid0(VALU_DEP_4)
	v_dual_mov_b32 v61, v65 :: v_dual_and_b32 v36, 0x760076, v36
	v_mov_b32_e32 v59, v65
	v_mov_b32_e32 v60, v65
	v_or3_b32 v112, v34, v42, v37
	.loc	1 310 21                        ; attention_backward.py:310:21
	v_cmp_gt_i32_e32 vcc_lo, s48, v37
	v_lshl_add_u32 v37, v66, 2, 0
	v_lshl_or_b32 v36, v36, 4, v36
	v_mov_b32_e32 v62, v65
	v_xor_b32_e32 v34, v43, v41
	v_xor_b32_e32 v41, 16, v112
	v_xor_b32_e32 v42, 32, v112
	v_xor_b32_e32 v43, 48, v112
	v_dual_mov_b32 v63, v65 :: v_dual_and_b32 v114, 0x7060706, v36
	v_dual_mov_b32 v54, v65 :: v_dual_add_nc_u32 v115, 0, v38
	v_dual_mov_b32 v56, v65 :: v_dual_add_nc_u32 v117, 0, v39
	v_dual_mov_b32 v51, v65 :: v_dual_add_nc_u32 v118, 0, v40
	v_add_nc_u32_e32 v119, v37, v34
	v_dual_mov_b32 v53, v65 :: v_dual_add_nc_u32 v120, 0, v41
	v_add_nc_u32_e32 v121, 0, v42
	v_mov_b32_e32 v42, v65
	v_dual_mov_b32 v55, v65 :: v_dual_add_nc_u32 v122, 0, v43
	v_mov_b32_e32 v58, v65
	v_mov_b32_e32 v64, v65
	v_mov_b32_e32 v50, v65
	v_dual_mov_b32 v52, v65 :: v_dual_add_nc_u32 v123, 0, v35
	v_dual_mov_b32 v44, v65 :: v_dual_mov_b32 v41, 0
	v_mov_b32_e32 v46, v65
	v_mov_b32_e32 v43, v65
	v_mov_b32_e32 v45, v65
	v_mov_b32_e32 v47, v65
	v_mov_b32_e32 v48, v65
	v_mov_b32_e32 v34, v65
	v_mov_b32_e32 v35, v65
	v_mov_b32_e32 v36, v65
	v_mov_b32_e32 v37, v65
	v_mov_b32_e32 v38, v65
	v_mov_b32_e32 v39, v65
	v_mov_b32_e32 v40, v65
.LBB0_6:                                ; =>This Inner Loop Header: Depth=1
	.loc	1 275 21                        ; attention_backward.py:275:21
	s_add_i32 s0, s60, s47
	.loc	1 290 33                        ; attention_backward.py:290:33
	v_add_lshl_u32 v73, v95, s60, 1
	.loc	1 275 21                        ; attention_backward.py:275:21
	v_or_b32_e32 v124, s0, v87
	.loc	1 386 21                        ; attention_backward.py:386:21
	s_mul_i32 s0, s0, s35
	.loc	1 290 33                        ; attention_backward.py:290:33
	v_add_lshl_u32 v126, v96, s60, 1
	.loc	1 385 30                        ; attention_backward.py:385:30
	v_add_lshl_u32 v132, s0, v85, 1
	v_add_lshl_u32 v133, s0, v86, 1
	.loc	1 275 21                        ; attention_backward.py:275:21
	v_mad_u64_u32 v[124:125], null, v124, s34, v[74:75]
	.loc	1 290 33                        ; attention_backward.py:290:33
	v_add_lshl_u32 v127, v97, s60, 1
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 385 30                        ; attention_backward.py:385:30
	v_cndmask_b32_e64 v125, 0x80000000, v132, s23
	v_cndmask_b32_e64 v132, 0x80000000, v133, s23
	.loc	1 290 33                        ; attention_backward.py:290:33
	v_add_lshl_u32 v131, v100, s60, 1
	v_add_lshl_u32 v129, v98, s60, 1
	v_add_lshl_u32 v130, v99, s60, 1
	.loc	1 274 28                        ; attention_backward.py:274:28
	v_cndmask_b32_e64 v124, 0x80000000, v124, s4
	.loc	1 290 33                        ; attention_backward.py:290:33
	v_add_lshl_u32 v134, v101, s60, 1
	v_add_lshl_u32 v145, v102, s60, 1
	v_add_lshl_u32 v146, v103, s60, 1
	.loc	1 280 29                        ; attention_backward.py:280:29
	v_dual_mov_b32 v67, v65 :: v_dual_add_nc_u32 v128, 0, v110
	.loc	1 274 28                        ; attention_backward.py:274:28
	buffer_load_b64 v[153:154], v124, s[40:43], 0 offen
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 280 29                        ; attention_backward.py:280:29
	v_dual_mov_b32 v66, v65 :: v_dual_add_nc_u32 v161, 0, v112
	v_mov_b32_e32 v72, v65
	v_mov_b32_e32 v68, v65
	v_mov_b32_e32 v69, v65
	v_mov_b32_e32 v70, v65
	v_mov_b32_e32 v71, v65
	.loc	1 271 27                        ; attention_backward.py:271:27
	v_or_b32_e32 v124, s60, v84
	.loc	1 307 37                        ; attention_backward.py:307:37
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 329 26                        ; attention_backward.py:329:26
	v_cmp_ge_i32_e64 s18, v124, v105
	.loc	1 307 37                        ; attention_backward.py:307:37
	.loc	1 274 28                        ; attention_backward.py:274:28
	s_waitcnt vmcnt(0)
	ds_store_b64 v115, v[153:154]
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 385 30                        ; attention_backward.py:385:30
	s_clause 0x1
	buffer_load_b128 v[137:140], v125, s[28:31], 0 offen
	buffer_load_b128 v[141:144], v132, s[28:31], 0 offen
	.loc	1 290 33                        ; attention_backward.py:290:33
	s_clause 0x8
	buffer_load_u16 v73, v73, s[36:39], 0 offen
	buffer_load_u16 v136, v126, s[36:39], 0 offen
	buffer_load_u16 v135, v127, s[36:39], 0 offen
	buffer_load_u16 v133, v129, s[36:39], 0 offen
	buffer_load_u16 v132, v130, s[36:39], 0 offen
	buffer_load_u16 v131, v131, s[36:39], 0 offen
	buffer_load_u16 v127, v134, s[36:39], 0 offen
	buffer_load_u16 v126, v145, s[36:39], 0 offen
	buffer_load_u16 v125, v146, s[36:39], 0 offen
	.loc	1 274 28                        ; attention_backward.py:274:28
	ds_load_b64 v[128:129], v128
	ds_load_b64 v[155:156], v116
	ds_load_b64 v[157:158], v117
	ds_load_b64 v[159:160], v118
	.loc	1 393 17                        ; attention_backward.py:393:17
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 391 32                        ; attention_backward.py:391:32
	v_dual_mov_b32 v152, v72 :: v_dual_mov_b32 v151, v71
	v_dual_mov_b32 v150, v70 :: v_dual_mov_b32 v149, v69
	v_dual_mov_b32 v148, v68 :: v_dual_mov_b32 v147, v67
	v_dual_mov_b32 v146, v66 :: v_dual_mov_b32 v145, v65
	.loc	1 329 17                        ; attention_backward.py:329:17
	v_min_i32_e32 v130, v104, v106
	.loc	1 271 27                        ; attention_backward.py:271:27
	v_or_b32_e32 v134, s60, v94
	.loc	1 304 27                        ; attention_backward.py:304:27
	v_bfe_u32 v162, v154, 24, 4
	.loc	1 393 17                        ; attention_backward.py:393:17
	s_waitcnt vmcnt(10)
	ds_store_b128 v119, v[137:140]
	s_waitcnt vmcnt(9)
	ds_store_b128 v119, v[141:144] offset:256
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[141:144], v120
	ds_load_b128 v[137:140], v161
	.loc	1 329 17                        ; attention_backward.py:329:17
	v_cmp_ge_i32_e64 s19, v130, v124
	.loc	1 271 27                        ; attention_backward.py:271:27
	v_or_b32_e32 v124, s60, v90
	.loc	1 329 26                        ; attention_backward.py:329:26
	v_cmp_ge_i32_e64 s15, v134, v105
	.loc	1 329 17 is_stmt 0              ; attention_backward.py:329:17
	v_cmp_ge_i32_e64 s16, v130, v134
	.loc	1 271 27 is_stmt 1              ; attention_backward.py:271:27
	v_or_b32_e32 v134, s60, v88
	.loc	1 290 33                        ; attention_backward.py:290:33
	s_waitcnt vmcnt(2)
	v_lshlrev_b32_e32 v127, 16, v127
	.loc	1 329 26                        ; attention_backward.py:329:26
	v_cmp_ge_i32_e64 s1, v124, v105
	.loc	1 329 17 is_stmt 0              ; attention_backward.py:329:17
	v_cmp_ge_i32_e64 s6, v130, v124
	.loc	1 304 28 is_stmt 1              ; attention_backward.py:304:28
	v_and_b16 v124.l, v153.l, 15
	.loc	1 329 17                        ; attention_backward.py:329:17
	v_cmp_ge_i32_e64 s7, v130, v134
	.loc	1 329 26 is_stmt 0              ; attention_backward.py:329:26
	v_cmp_ge_i32_e64 s8, v134, v105
	.loc	1 304 28 is_stmt 1              ; attention_backward.py:304:28
	v_and_b16 v124.h, v154.h, 15
	.loc	1 330 17                        ; attention_backward.py:330:17
	s_and_b32 s1, s6, s1
	.loc	1 306 36                        ; attention_backward.py:306:36
	v_cmp_lt_u16_e64 s3, 7, v124.l
	.loc	1 304 27                        ; attention_backward.py:304:27
	v_and_b32_e32 v134, 15, v153
	.loc	1 290 33                        ; attention_backward.py:290:33
	v_lshlrev_b32_e32 v136, 16, v136
	.loc	1 306 36                        ; attention_backward.py:306:36
	v_cmp_lt_u16_e64 s21, 7, v124.h
	.loc	1 274 28                        ; attention_backward.py:274:28
	v_lshrrev_b32_e32 v124, 24, v154
	.loc	1 305 30                        ; attention_backward.py:305:30
	v_lshrrev_b16 v124.h, 4, v154.l
	.loc	1 391 32                        ; attention_backward.py:391:32
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[145:152], v[137:144], v[1:8], v[145:152]
	.loc	1 393 17                        ; attention_backward.py:393:17
	ds_load_b128 v[141:144], v122
	ds_load_b128 v[137:140], v121
	.loc	1 290 33                        ; attention_backward.py:290:33
	v_lshlrev_b32_e32 v133, 16, v133
	v_lshlrev_b32_e32 v135, 16, v135
	v_lshlrev_b32_e32 v132, 16, v132
	s_waitcnt vmcnt(1)
	v_lshlrev_b32_e32 v126, 16, v126
	.loc	1 391 32                        ; attention_backward.py:391:32
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[145:152], v[137:144], v[9:16], v[145:152]
	.loc	1 271 27                        ; attention_backward.py:271:27
	v_or_b32_e32 v137, s60, v93
	v_or_b32_e32 v138, s60, v92
	v_or_b32_e32 v139, s60, v91
	v_or_b32_e32 v140, s60, v89
	.loc	1 270 9                         ; attention_backward.py:270:9
	s_add_i32 s60, s60, 16
	.loc	1 329 26                        ; attention_backward.py:329:26
	v_cmp_ge_i32_e64 s13, v137, v105
	.loc	1 329 17 is_stmt 0              ; attention_backward.py:329:17
	v_cmp_ge_i32_e64 s14, v130, v137
	.loc	1 329 26                        ; attention_backward.py:329:26
	v_cmp_ge_i32_e64 s11, v138, v105
	.loc	1 329 17                        ; attention_backward.py:329:17
	v_cmp_ge_i32_e64 s12, v130, v138
	.loc	1 329 26                        ; attention_backward.py:329:26
	v_cmp_ge_i32_e64 s9, v139, v105
	.loc	1 329 17                        ; attention_backward.py:329:17
	v_cmp_ge_i32_e64 s10, v130, v139
	.loc	1 329 26                        ; attention_backward.py:329:26
	v_cmp_ge_i32_e64 s0, v140, v105
	.loc	1 329 17                        ; attention_backward.py:329:17
	v_cmp_ge_i32_e64 s5, v130, v140
	.loc	1 393 17 is_stmt 1              ; attention_backward.py:393:17
	ds_load_b128 v[137:140], v161 offset:64
	ds_load_b128 v[141:144], v120 offset:64
	.loc	1 274 28                        ; attention_backward.py:274:28
	v_bfe_i32 v130, v153, 0, 8
	.loc	1 305 28                        ; attention_backward.py:305:28
	v_bfe_u32 v161, v154, 20, 4
	.loc	1 330 17                        ; attention_backward.py:330:17
	s_and_b32 s0, s5, s0
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 307 37                        ; attention_backward.py:307:37
	v_cmp_gt_i16_e64 s24, 0, v130.l
	.loc	1 306 50                        ; attention_backward.py:306:50
	v_or_b32_e32 v130, -16, v134
	.loc	1 391 32                        ; attention_backward.py:391:32
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[145:152], v[137:144], v[17:24], v[145:152]
	.loc	1 393 17                        ; attention_backward.py:393:17
	ds_load_b128 v[137:140], v121 offset:64
	ds_load_b128 v[141:144], v122 offset:64
	.loc	1 309 31                        ; attention_backward.py:309:31
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 391 32                        ; attention_backward.py:391:32
	v_wmma_f32_16x16x16_bf16 v[145:152], v[137:144], v[25:32], v[145:152]
	.loc	1 280 29                        ; attention_backward.py:280:29
	v_wmma_i32_16x16x16_iu4 v[137:144], v[128:129], v[75:76], v[65:72] neg_lo:[1,1,0]
	.loc	1 304 28                        ; attention_backward.py:304:28
	v_and_b16 v72.l, v153.h, 15
	v_and_b16 v72.h, v154.l, 15
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 396 43                        ; attention_backward.py:396:43
	v_sub_f32_e32 v129, v145, v111
	.loc	1 280 29                        ; attention_backward.py:280:29
	v_wmma_i32_16x16x16_iu4 v[137:144], v[155:156], v[79:80], v[137:144] neg_lo:[1,1,0]
	.loc	1 396 43                        ; attention_backward.py:396:43
	v_sub_f32_e32 v128, v146, v111
	.loc	1 274 28                        ; attention_backward.py:274:28
	v_lshrrev_b32_e32 v146, 8, v153
	.loc	1 396 43                        ; attention_backward.py:396:43
	v_sub_f32_e32 v70, v148, v111
	v_sub_f32_e32 v69, v149, v111
	.loc	1 280 29                        ; attention_backward.py:280:29
	v_wmma_i32_16x16x16_iu4 v[137:144], v[157:158], v[77:78], v[137:144] neg_lo:[1,1,0]
	.loc	1 304 27                        ; attention_backward.py:304:27
	v_bfe_u32 v145, v154, 16, 4
	.loc	1 306 36                        ; attention_backward.py:306:36
	v_cmp_lt_u16_e64 s17, 7, v72.l
	v_cmp_lt_u16_e64 s20, 7, v72.h
	.loc	1 274 28                        ; attention_backward.py:274:28
	v_alignbit_b32 v148, v154, v153, 24
	.loc	1 280 29                        ; attention_backward.py:280:29
	v_wmma_i32_16x16x16_iu4 v[137:144], v[159:160], v[81:82], v[137:144] neg_lo:[1,1,0]
	.loc	1 396 43                        ; attention_backward.py:396:43
	v_sub_f32_e32 v66, v150, v111
	.loc	1 274 28                        ; attention_backward.py:274:28
	v_bfe_i32 v149, v154, 0, 8
	v_lshrrev_b32_e32 v72, 8, v154
	v_mov_b16_e64 v150.l, v154.h
	.loc	1 299 21                        ; attention_backward.py:299:21
	v_cvt_f32_i32_e32 v155, v137
	v_cvt_f32_i32_e32 v156, v138
	v_cvt_f32_i32_e32 v157, v139
	v_cvt_f32_i32_e32 v159, v141
	.loc	1 304 27                        ; attention_backward.py:304:27
	v_bfe_u32 v139, v153, 16, 4
	v_and_b32_e32 v141, 15, v154
	v_bfe_u32 v160, v154, 8, 4
	.loc	1 274 28                        ; attention_backward.py:274:28
	v_lshrrev_b64 v[137:138], 24, v[153:154]
	.loc	1 306 27                        ; attention_backward.py:306:27
	v_cndmask_b32_e64 v154, v134, v130, s3
	.loc	1 304 28                        ; attention_backward.py:304:28
	v_and_b16 v130.l, v146.l, 15
	.loc	1 396 43                        ; attention_backward.py:396:43
	v_sub_f32_e32 v71, v147, v111
	.loc	1 274 28                        ; attention_backward.py:274:28
	v_mov_b16_e64 v147.l, v153.h
	.loc	1 299 21                        ; attention_backward.py:299:21
	v_cvt_f32_i32_e32 v158, v140
	.loc	1 396 43                        ; attention_backward.py:396:43
	v_sub_f32_e32 v67, v151, v111
	.loc	1 306 36                        ; attention_backward.py:306:36
	v_cmp_lt_u16_e64 s3, 7, v130.l
	.loc	1 306 50 is_stmt 0              ; attention_backward.py:306:50
	v_or_b32_e32 v130, -16, v139
	.loc	1 396 43 is_stmt 1              ; attention_backward.py:396:43
	v_sub_f32_e32 v68, v152, v111
	.loc	1 305 30                        ; attention_backward.py:305:30
	v_lshrrev_b16 v72.h, 4, v153.l
	.loc	1 304 27                        ; attention_backward.py:304:27
	v_bfe_u32 v151, v153, 8, 4
	.loc	1 305 28                        ; attention_backward.py:305:28
	v_bfe_u32 v152, v153, 20, 4
	.loc	1 306 27                        ; attention_backward.py:306:27
	v_cndmask_b32_e64 v163, v139, v130, s17
	.loc	1 274 28                        ; attention_backward.py:274:28
	v_bfe_i32 v139, v147, 0, 8
	v_bfe_i32 v153, v137, 0, 8
	.loc	1 305 30                        ; attention_backward.py:305:30
	v_lshrrev_b16 v140.l, 4, v137.l
	.loc	1 304 28                        ; attention_backward.py:304:28
	v_and_b16 v137.l, v137.l, 15
	.loc	1 306 50                        ; attention_backward.py:306:50
	v_or_b32_e32 v130, -16, v141
	.loc	1 304 28                        ; attention_backward.py:304:28
	v_and_b16 v134.l, v72.l, 15
	v_and_b16 v137.h, v124.l, 15
	.loc	1 307 37                        ; attention_backward.py:307:37
	v_cmp_gt_i16_e64 s25, 0, v139.l
	.loc	1 274 28                        ; attention_backward.py:274:28
	v_bfe_i32 v139, v150, 0, 8
	.loc	1 306 27                        ; attention_backward.py:306:27
	v_cndmask_b32_e64 v130, v141, v130, s20
	.loc	1 306 36 is_stmt 0              ; attention_backward.py:306:36
	v_cmp_lt_u16_e64 s17, 7, v134.l
	.loc	1 306 50                        ; attention_backward.py:306:50
	v_or_b32_e32 v134, -16, v145
	.loc	1 306 36                        ; attention_backward.py:306:36
	v_cmp_lt_u16_e64 s20, 7, v137.h
	.loc	1 307 37 is_stmt 1              ; attention_backward.py:307:37
	v_mov_b16_e64 v138.l, v149.l
	.loc	1 306 36                        ; attention_backward.py:306:36
	v_cmp_lt_u16_e64 s22, 7, v137.l
	.loc	1 306 50 is_stmt 0              ; attention_backward.py:306:50
	v_or_b32_e32 v137, -16, v151
	.loc	1 307 37 is_stmt 1              ; attention_backward.py:307:37
	v_cmp_gt_i16_e64 s26, 0, v139.l
	.loc	1 274 28                        ; attention_backward.py:274:28
	v_bfe_i32 v139, v146, 0, 8
	.loc	1 306 27                        ; attention_backward.py:306:27
	v_cndmask_b32_e64 v134, v145, v134, s21
	.loc	1 307 37                        ; attention_backward.py:307:37
	v_cmp_gt_i16_e64 s21, 0, v138.l
	.loc	1 306 27                        ; attention_backward.py:306:27
	v_cndmask_b32_e64 v145, v151, v137, s3
	.loc	1 306 50 is_stmt 0              ; attention_backward.py:306:50
	v_or_b32_e32 v138, -16, v162
	.loc	1 307 37 is_stmt 1              ; attention_backward.py:307:37
	v_cmp_gt_i16_e64 s3, 0, v139.l
	.loc	1 274 28                        ; attention_backward.py:274:28
	v_bfe_i32 v139, v72, 0, 8
	.loc	1 306 50                        ; attention_backward.py:306:50
	v_or_b32_e32 v137, -16, v160
	.loc	1 307 52                        ; attention_backward.py:307:52
	v_or_b32_e32 v147, -16, v161
	.loc	1 306 27                        ; attention_backward.py:306:27
	v_cndmask_b32_e64 v138, v162, v138, s20
	.loc	1 299 21                        ; attention_backward.py:299:21
	v_cvt_f32_i32_e32 v144, v144
	.loc	1 307 37                        ; attention_backward.py:307:37
	v_cmp_gt_i16_e64 s20, 0, v139.l
	.loc	1 274 28                        ; attention_backward.py:274:28
	v_bfe_i32 v139, v124, 0, 8
	.loc	1 306 27                        ; attention_backward.py:306:27
	v_cndmask_b32_e64 v137, v160, v137, s17
	.loc	1 307 28                        ; attention_backward.py:307:28
	v_cndmask_b32_e64 v147, v161, v147, s26
	.loc	1 299 21                        ; attention_backward.py:299:21
	v_cvt_f32_i32_e32 v142, v142
	v_cvt_f32_i32_e32 v143, v143
	.loc	1 307 37                        ; attention_backward.py:307:37
	v_cmp_gt_i16_e64 s17, 0, v139.l
	.loc	1 304 27                        ; attention_backward.py:304:27
	v_and_b32_e32 v139, 15, v148
	.loc	1 299 21                        ; attention_backward.py:299:21
	v_mul_f32_e32 v148, v107, v155
	.loc	1 311 21                        ; attention_backward.py:311:21
	v_cvt_f32_i32_e32 v130, v130
	v_cvt_f32_i32_e32 v134, v134
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 306 50                        ; attention_backward.py:306:50
	v_or_b32_e32 v141, -16, v139
	.loc	1 345 58                        ; attention_backward.py:345:58
	v_fma_f32 v136, v148, v136, -v109
	.loc	1 299 21                        ; attention_backward.py:299:21
	v_mul_f32_e32 v148, v107, v156
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 306 27                        ; attention_backward.py:306:27
	v_cndmask_b32_e64 v139, v139, v141, s22
	.loc	1 307 37                        ; attention_backward.py:307:37
	v_mov_b16_e64 v141.l, v153.l
	.loc	1 345 58                        ; attention_backward.py:345:58
	v_fma_f32 v148, v148, v135, -v109
	.loc	1 299 21                        ; attention_backward.py:299:21
	v_mul_f32_e32 v135, v107, v157
	.loc	1 345 45                        ; attention_backward.py:345:45
	v_exp_f32_e32 v136, v136
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 307 37                        ; attention_backward.py:307:37
	v_cmp_gt_i16_e64 s22, 0, v141.l
	.loc	1 307 52 is_stmt 0              ; attention_backward.py:307:52
	v_or_b32_e32 v141, -16, v152
	.loc	1 345 58 is_stmt 1              ; attention_backward.py:345:58
	v_fma_f32 v149, v135, v133, -v109
	.loc	1 299 21                        ; attention_backward.py:299:21
	v_mul_f32_e32 v133, v107, v158
	v_mul_f32_e32 v135, v107, v144
	.loc	1 311 21                        ; attention_backward.py:311:21
	v_cvt_f32_i32_e32 v144, v147
	.loc	1 290 33                        ; attention_backward.py:290:33
	v_lshlrev_b32_e32 v131, 16, v131
	.loc	1 307 28                        ; attention_backward.py:307:28
	v_cndmask_b32_e64 v141, v152, v141, s25
	.loc	1 345 58                        ; attention_backward.py:345:58
	v_fma_f32 v132, v133, v132, -v109
	.loc	1 299 21                        ; attention_backward.py:299:21
	v_mul_f32_e32 v133, v107, v159
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 311 21                        ; attention_backward.py:311:21
	v_cvt_f32_i32_e32 v141, v141
	.loc	1 345 45                        ; attention_backward.py:345:45
	v_exp_f32_e32 v132, v132
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	.loc	1 345 58 is_stmt 0              ; attention_backward.py:345:58
	v_fma_f32 v150, v133, v131, -v109
	.loc	1 299 21 is_stmt 1              ; attention_backward.py:299:21
	v_mul_f32_e32 v131, v107, v142
	v_mul_f32_e32 v133, v107, v143
	.loc	1 311 21                        ; attention_backward.py:311:21
	v_cvt_f32_i32_e32 v143, v154
	.loc	1 345 58                        ; attention_backward.py:345:58
	v_fma_f32 v131, v131, v127, -v109
	.loc	1 305 30                        ; attention_backward.py:305:30
	v_and_b16 v127.l, v72.h, 15
	.loc	1 274 28                        ; attention_backward.py:274:28
	v_mov_b16_e32 v127.h, 0
	.loc	1 345 58                        ; attention_backward.py:345:58
	v_fma_f32 v142, v133, v126, -v109
	.loc	1 305 30                        ; attention_backward.py:305:30
	v_lshrrev_b16 v72.h, 4, v146.l
	.loc	1 345 45                        ; attention_backward.py:345:45
	v_exp_f32_e32 v131, v131
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	.loc	1 307 52                        ; attention_backward.py:307:52
	v_or_b32_e32 v126, -16, v127
	.loc	1 309 31                        ; attention_backward.py:309:31
	v_mov_b16_e64 v140.h, v127.h
	v_mov_b16_e64 v146.h, v127.h
	v_mov_b16_e64 v147.h, v127.h
	.loc	1 307 28                        ; attention_backward.py:307:28
	v_cndmask_b32_e64 v126, v127, v126, s24
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	.loc	1 311 21                        ; attention_backward.py:311:21
	v_cvt_f32_i32_e32 v133, v126
	.loc	1 290 33                        ; attention_backward.py:290:33
	v_lshlrev_b32_e32 v126, 16, v73
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v73, 16, v125
	.loc	1 311 21                        ; attention_backward.py:311:21
	v_mul_f32_e32 v143, v143, v126
	v_mul_f32_e32 v125, v133, v126
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_4) | instid1(VALU_DEP_3)
	.loc	1 345 58                        ; attention_backward.py:345:58
	v_fma_f32 v73, v135, v73, -v109
	.loc	1 309 31                        ; attention_backward.py:309:31
	v_mov_b16_e64 v135.h, v127.h
	.loc	1 311 21                        ; attention_backward.py:311:21
	v_mul_f32_e32 v141, v141, v126
	.loc	1 309 31                        ; attention_backward.py:309:31
	v_dual_cndmask_b32 v143, 0, v143 :: v_dual_mul_f32 v130, v130, v126
	v_dual_cndmask_b32 v125, 0, v125 :: v_dual_mul_f32 v144, v144, v126
	v_dual_cndmask_b32 v141, 0, v141 :: v_dual_mul_f32 v134, v134, v126
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mov_b16_e64 v135.l, v143.h
	v_mov_b16_e32 v127.l, v125.h
	v_cmp_o_f32_e64 s24, v143, v143
	v_cndmask_b32_e32 v144, 0, v144, vcc_lo
	v_cmp_o_f32_e64 s25, v125, v125
	v_and_b32_e32 v135, 1, v135
	v_and_b32_e32 v133, 1, v127
	.loc	1 305 30                        ; attention_backward.py:305:30
	v_and_b16 v127.l, v72.h, 15
	.loc	1 309 31                        ; attention_backward.py:309:31
	v_cmp_o_f32_e64 s26, v141, v141
	v_cmp_o_f32_e64 s27, v144, v144
	v_add3_u32 v135, v143, v135, 0x7fff
	v_mov_b16_e64 v143.h, v127.h
	v_mov_b16_e64 v143.l, v141.h
	v_add3_u32 v125, v125, v133, 0x7fff
	v_mov_b16_e64 v133.h, v127.h
	v_mov_b16_e64 v133.l, v144.h
	.loc	1 345 45                        ; attention_backward.py:345:45
	v_exp_f32_e32 v73, v73
	.loc	1 309 31                        ; attention_backward.py:309:31
	v_and_b32_e32 v143, 1, v143
	v_mov_b16_e32 v72.h, v127.h
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_and_b32_e32 v133, 1, v133
	v_add3_u32 v141, v141, v143, 0x7fff
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_add3_u32 v143, v144, v133, 0x7fff
	v_cndmask_b16 v133.l, 0x7fff, v135.h, s24
	v_cndmask_b16 v135.h, 0x7fff, v141.h, s26
	.loc	1 307 52                        ; attention_backward.py:307:52
	v_or_b32_e32 v141, -16, v127
	.loc	1 309 31                        ; attention_backward.py:309:31
	v_cndmask_b16 v133.h, 0x7fff, v125.h, s25
	.loc	1 311 21                        ; attention_backward.py:311:21
	v_cvt_f32_i32_e32 v125, v145
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	.loc	1 307 28                        ; attention_backward.py:307:28
	v_cndmask_b32_e64 v141, v127, v141, s3
	.loc	1 330 17                        ; attention_backward.py:330:17
	s_and_b32 s3, s19, s18
	s_and_b32 s3, s2, s3
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	.loc	1 345 29                        ; attention_backward.py:345:29
	v_cndmask_b32_e64 v136, 0, v136, s3
	.loc	1 330 17                        ; attention_backward.py:330:17
	s_and_b32 s3, s16, s15
	s_and_b32 s3, s2, s3
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(TRANS32_DEP_1)
	.loc	1 396 26                        ; attention_backward.py:396:26
	v_mul_f32_e32 v129, v136, v129
	.loc	1 345 45                        ; attention_backward.py:345:45
	v_exp_f32_e32 v136, v148
	.loc	1 309 31                        ; attention_backward.py:309:31
	v_mov_b16_e64 v148.h, v127.h
	.loc	1 345 29                        ; attention_backward.py:345:29
	v_cndmask_b32_e64 v136, 0, v136, s3
	.loc	1 330 17                        ; attention_backward.py:330:17
	s_and_b32 s3, s14, s13
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	s_and_b32 s3, s2, s3
	.loc	1 396 26                        ; attention_backward.py:396:26
	v_mul_f32_e32 v128, v136, v128
	.loc	1 345 45                        ; attention_backward.py:345:45
	v_exp_f32_e32 v136, v149
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 397 34                        ; attention_backward.py:397:34
	v_mul_f32_e32 v128, s46, v128
	.loc	1 345 29                        ; attention_backward.py:345:29
	v_cndmask_b32_e64 v136, 0, v136, s3
	.loc	1 330 17                        ; attention_backward.py:330:17
	s_and_b32 s3, s12, s11
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_and_b32 s3, s2, s3
	.loc	1 345 29                        ; attention_backward.py:345:29
	v_cndmask_b32_e64 v132, 0, v132, s3
	.loc	1 330 17                        ; attention_backward.py:330:17
	s_and_b32 s3, s10, s9
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	s_and_b32 s3, s2, s3
	.loc	1 396 26                        ; attention_backward.py:396:26
	v_mul_f32_e32 v132, v132, v70
	.loc	1 311 21                        ; attention_backward.py:311:21
	v_mul_f32_e32 v125, v125, v126
	.loc	1 345 45                        ; attention_backward.py:345:45
	v_exp_f32_e32 v70, v150
	.loc	1 309 31                        ; attention_backward.py:309:31
	v_cndmask_b32_e32 v150, 0, v134, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 397 34                        ; attention_backward.py:397:34
	v_dual_mul_f32 v132, s46, v132 :: v_dual_cndmask_b32 v125, 0, v125
	.loc	1 397 33 is_stmt 0              ; attention_backward.py:397:33
	v_cmp_o_f32_e64 s11, v132, v132
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 309 31 is_stmt 1              ; attention_backward.py:309:31
	v_mov_b16_e32 v127.l, v125.h
	v_cmp_o_f32_e64 s24, v125, v125
	s_delay_alu instid0(TRANS32_DEP_1)
	.loc	1 345 29                        ; attention_backward.py:345:29
	v_cndmask_b32_e64 v70, 0, v70, s3
	.loc	1 330 17                        ; attention_backward.py:330:17
	s_and_b32 s3, s7, s8
	s_and_b32 s7, s2, s0
	.loc	1 309 31                        ; attention_backward.py:309:31
	v_and_b32_e32 v144, 1, v127
	.loc	1 330 17                        ; attention_backward.py:330:17
	s_and_b32 s9, s2, s3
	s_and_b32 s8, s2, s1
	.loc	1 345 29                        ; attention_backward.py:345:29
	v_cndmask_b32_e64 v73, 0, v73, s9
	.loc	1 397 33                        ; attention_backward.py:397:33
	v_cmp_o_f32_e64 s9, v128, v128
	.loc	1 309 31                        ; attention_backward.py:309:31
	v_add3_u32 v125, v125, v144, 0x7fff
	.loc	1 311 21                        ; attention_backward.py:311:21
	v_cvt_f32_i32_e32 v144, v163
	.loc	1 309 31                        ; attention_backward.py:309:31
	v_cmp_o_f32_e64 s1, v150, v150
	.loc	1 396 26                        ; attention_backward.py:396:26
	v_dual_mul_f32 v68, v73, v68 :: v_dual_mul_f32 v71, v136, v71
	.loc	1 311 21                        ; attention_backward.py:311:21
	v_cvt_f32_i32_e32 v136, v137
	s_delay_alu instid0(VALU_DEP_4)
	v_mul_f32_e32 v144, v144, v126
	v_cvt_f32_i32_e32 v137, v138
	v_cvt_f32_i32_e32 v138, v139
	.loc	1 345 45                        ; attention_backward.py:345:45
	v_exp_f32_e32 v139, v142
	.loc	1 309 31                        ; attention_backward.py:309:31
	v_cndmask_b32_e32 v142, 0, v130, vcc_lo
	v_cndmask_b32_e32 v144, 0, v144, vcc_lo
	.loc	1 345 29                        ; attention_backward.py:345:29
	v_cndmask_b32_e64 v130, 0, v131, s7
	.loc	1 311 21                        ; attention_backward.py:311:21
	v_mul_f32_e32 v138, v138, v126
	v_cvt_f32_i32_e32 v73, v141
	.loc	1 309 31                        ; attention_backward.py:309:31
	v_cndmask_b16 v134.l, 0x7fff, v125.h, s24
	v_mov_b16_e64 v127.l, v144.h
	.loc	1 396 26                        ; attention_backward.py:396:26
	v_mul_f32_e32 v66, v130, v66
	.loc	1 309 31                        ; attention_backward.py:309:31
	v_cndmask_b32_e32 v138, 0, v138, vcc_lo
	.loc	1 345 29                        ; attention_backward.py:345:29
	v_cndmask_b32_e64 v131, 0, v139, s8
	.loc	1 309 31                        ; attention_backward.py:309:31
	v_cmp_o_f32_e64 s10, v144, v144
	v_and_b32_e32 v145, 1, v127
	.loc	1 305 30                        ; attention_backward.py:305:30
	v_and_b16 v127.l, v140.l, 15
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 397 34                        ; attention_backward.py:397:34
	v_dual_mul_f32 v66, s46, v66 :: v_dual_mul_f32 v67, v131, v67
	v_mul_f32_e32 v129, s46, v129
	.loc	1 309 31                        ; attention_backward.py:309:31
	v_add3_u32 v125, v144, v145, 0x7fff
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 307 52                        ; attention_backward.py:307:52
	v_or_b32_e32 v131, -16, v127
	.loc	1 311 21                        ; attention_backward.py:311:21
	v_mul_f32_e32 v136, v136, v126
	v_dual_mul_f32 v73, v73, v126 :: v_dual_mul_f32 v68, s46, v68
	.loc	1 397 34                        ; attention_backward.py:397:34
	v_mul_f32_e32 v71, s46, v71
	.loc	1 309 31                        ; attention_backward.py:309:31
	v_cndmask_b16 v135.l, 0x7fff, v125.h, s10
	.loc	1 307 28                        ; attention_backward.py:307:28
	v_cndmask_b32_e64 v125, v127, v131, s22
	.loc	1 309 31                        ; attention_backward.py:309:31
	v_mov_b16_e64 v127.l, v138.h
	.loc	1 396 26                        ; attention_backward.py:396:26
	v_mul_f32_e32 v69, v70, v69
	.loc	1 397 33                        ; attention_backward.py:397:33
	v_bfe_u32 v131, v129, 16, 1
	v_bfe_u32 v139, v128, 16, 1
	.loc	1 309 31                        ; attention_backward.py:309:31
	v_cndmask_b32_e32 v149, 0, v136, vcc_lo
	v_cndmask_b32_e32 v73, 0, v73, vcc_lo
	.loc	1 397 33                        ; attention_backward.py:397:33
	v_cmp_o_f32_e64 s8, v129, v129
	.loc	1 397 34 is_stmt 0              ; attention_backward.py:397:34
	v_dual_mul_f32 v69, s46, v69 :: v_dual_and_b32 v136, 1, v127
	.loc	1 397 33                        ; attention_backward.py:397:33
	v_add3_u32 v129, v129, v131, 0x7fff
	v_bfe_u32 v131, v71, 16, 1
	v_add3_u32 v128, v128, v139, 0x7fff
	v_bfe_u32 v139, v132, 16, 1
	.loc	1 305 30 is_stmt 1              ; attention_backward.py:305:30
	v_lshrrev_b16 v70.l, 4, v72.l
	.loc	1 397 34                        ; attention_backward.py:397:34
	v_mul_f32_e32 v67, s46, v67
	.loc	1 309 31                        ; attention_backward.py:309:31
	v_mov_b16_e32 v72.l, v73.h
	.loc	1 397 33                        ; attention_backward.py:397:33
	v_cmp_o_f32_e64 s10, v71, v71
	v_add3_u32 v71, v71, v131, 0x7fff
	v_bfe_u32 v131, v69, 16, 1
	v_add3_u32 v132, v132, v139, 0x7fff
	v_bfe_u32 v139, v66, 16, 1
	.loc	1 311 21                        ; attention_backward.py:311:21
	v_dual_mul_f32 v137, v137, v126 :: v_dual_and_b32 v72, 1, v72
	.loc	1 305 30                        ; attention_backward.py:305:30
	v_and_b16 v127.l, v124.h, 15
	.loc	1 397 33                        ; attention_backward.py:397:33
	v_cmp_o_f32_e64 s12, v69, v69
	v_add3_u32 v69, v69, v131, 0x7fff
	v_bfe_u32 v131, v67, 16, 1
	v_cmp_o_f32_e64 s13, v66, v66
	v_add3_u32 v66, v66, v139, 0x7fff
	v_bfe_u32 v139, v68, 16, 1
	.loc	1 309 31                        ; attention_backward.py:309:31
	v_cmp_o_f32_e64 s7, v73, v73
	.loc	1 397 33                        ; attention_backward.py:397:33
	v_cmp_o_f32_e64 s14, v67, v67
	v_add3_u32 v67, v67, v131, 0x7fff
	.loc	1 309 31                        ; attention_backward.py:309:31
	v_add3_u32 v72, v73, v72, 0x7fff
	.loc	1 307 52                        ; attention_backward.py:307:52
	v_or_b32_e32 v131, -16, v127
	.loc	1 397 33                        ; attention_backward.py:397:33
	v_cmp_o_f32_e64 s15, v68, v68
	.loc	1 311 21                        ; attention_backward.py:311:21
	v_cvt_f32_i32_e32 v125, v125
	.loc	1 397 33                        ; attention_backward.py:397:33
	v_add3_u32 v68, v68, v139, 0x7fff
	v_cndmask_b16 v128.l, 0x7fff, v129.h, s8
	v_cndmask_b16 v128.h, 0x7fff, v128.h, s9
	.loc	1 309 31                        ; attention_backward.py:309:31
	v_cmp_o_f32_e64 s6, v138, v138
	v_add3_u32 v73, v138, v136, 0x7fff
	.loc	1 397 33                        ; attention_backward.py:397:33
	v_cndmask_b16 v71.l, 0x7fff, v71.h, s10
	v_cndmask_b16 v71.h, 0x7fff, v132.h, s11
	v_cndmask_b16 v129.l, 0x7fff, v69.h, s12
	v_cndmask_b16 v129.h, 0x7fff, v66.h, s13
	.loc	1 309 31                        ; attention_backward.py:309:31
	v_cndmask_b16 v134.h, 0x7fff, v72.h, s7
	.loc	1 307 28                        ; attention_backward.py:307:28
	v_cndmask_b32_e64 v72, v127, v131, s21
	.loc	1 309 31                        ; attention_backward.py:309:31
	v_mov_b16_e64 v127.l, v142.h
	.loc	1 311 21                        ; attention_backward.py:311:21
	v_mul_f32_e32 v125, v125, v126
	.loc	1 397 33                        ; attention_backward.py:397:33
	v_cndmask_b16 v132.l, 0x7fff, v67.h, s14
	v_cndmask_b16 v132.h, 0x7fff, v68.h, s15
	v_permlanex16_b32 v67, v128, s49, 0xfedcba98 op_sel:[1,0]
	.loc	1 309 31                        ; attention_backward.py:309:31
	v_cndmask_b16 v136.l, 0x7fff, v73.h, s6
	.loc	1 397 33                        ; attention_backward.py:397:33
	v_permlanex16_b32 v69, v71, s49, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v73, v129, s49, 0xfedcba98 op_sel:[1,0]
	.loc	1 309 31                        ; attention_backward.py:309:31
	v_and_b32_e32 v131, 1, v127
	.loc	1 305 30                        ; attention_backward.py:305:30
	v_and_b16 v127.l, v70.l, 15
	.loc	1 309 31                        ; attention_backward.py:309:31
	v_cndmask_b32_e32 v125, 0, v125, vcc_lo
	.loc	1 397 33                        ; attention_backward.py:397:33
	v_perm_b32 v66, v67, v128, v113
	v_perm_b32 v67, v67, v128, v114
	v_permlanex16_b32 v128, v132, s49, 0xfedcba98 op_sel:[1,0]
	.loc	1 311 21                        ; attention_backward.py:311:21
	v_cvt_f32_i32_e32 v138, v72
	.loc	1 397 33                        ; attention_backward.py:397:33
	v_perm_b32 v68, v69, v71, v113
	v_perm_b32 v69, v69, v71, v114
	v_perm_b32 v70, v73, v129, v113
	v_perm_b32 v71, v73, v129, v114
	.loc	1 307 52                        ; attention_backward.py:307:52
	v_or_b32_e32 v129, -16, v127
	.loc	1 309 31                        ; attention_backward.py:309:31
	v_mov_b16_e64 v140.l, v125.h
	.loc	1 397 33                        ; attention_backward.py:397:33
	v_perm_b32 v72, v128, v132, v113
	v_perm_b32 v73, v128, v132, v114
	.loc	1 311 21                        ; attention_backward.py:311:21
	v_mul_f32_e32 v128, v138, v126
	.loc	1 309 31                        ; attention_backward.py:309:31
	v_cmp_o_f32_e64 s5, v142, v142
	v_add3_u32 v131, v142, v131, 0x7fff
	.loc	1 307 28                        ; attention_backward.py:307:28
	v_cndmask_b32_e64 v129, v127, v129, s20
	.loc	1 309 31                        ; attention_backward.py:309:31
	v_mov_b16_e64 v127.l, v149.h
	v_dual_cndmask_b32 v137, 0, v137 :: v_dual_and_b32 v132, 1, v140
	v_cndmask_b32_e32 v138, 0, v128, vcc_lo
	v_cndmask_b16 v128.l, 0x7fff, v131.h, s5
	s_delay_alu instid0(VALU_DEP_4)
	v_and_b32_e32 v131, 1, v127
	v_mov_b16_e64 v127.l, v150.h
	v_cmp_o_f32_e64 s6, v125, v125
	v_add3_u32 v125, v125, v132, 0x7fff
	v_mov_b16_e64 v146.l, v138.h
	v_cmp_o_f32_e64 s3, v149, v149
	v_and_b32_e32 v132, 1, v127
	.loc	1 305 30                        ; attention_backward.py:305:30
	v_lshrrev_b16 v127.l, 4, v124.l
	.loc	1 309 31                        ; attention_backward.py:309:31
	v_cndmask_b16 v136.h, 0x7fff, v125.h, s6
	.loc	1 311 21                        ; attention_backward.py:311:21
	v_cvt_f32_i32_e32 v125, v129
	.loc	1 309 31                        ; attention_backward.py:309:31
	v_and_b32_e32 v129, 1, v146
	v_add3_u32 v124, v149, v131, 0x7fff
	.loc	1 307 52                        ; attention_backward.py:307:52
	v_or_b32_e32 v131, -16, v127
	.loc	1 309 31                        ; attention_backward.py:309:31
	v_add3_u32 v132, v150, v132, 0x7fff
	.loc	1 311 21                        ; attention_backward.py:311:21
	v_mul_f32_e32 v125, v125, v126
	.loc	1 309 31                        ; attention_backward.py:309:31
	v_add3_u32 v129, v138, v129, 0x7fff
	v_cndmask_b16 v129.l, 0x7fff, v124.h, s3
	.loc	1 307 28                        ; attention_backward.py:307:28
	v_cndmask_b32_e64 v124, v127, v131, s17
	.loc	1 309 31                        ; attention_backward.py:309:31
	v_mov_b16_e64 v127.l, v137.h
	v_cndmask_b32_e32 v125, 0, v125, vcc_lo
	v_cmp_o_f32_e64 s5, v138, v138
	v_cndmask_b16 v130.l, 0x7fff, v132.h, s1
	.loc	1 311 21                        ; attention_backward.py:311:21
	v_cvt_f32_i32_e32 v124, v124
	.loc	1 309 31                        ; attention_backward.py:309:31
	v_and_b32_e32 v127, 1, v127
	v_mov_b16_e64 v147.l, v125.h
	v_cmp_o_f32_e64 s1, v125, v125
	v_cmp_o_f32_e64 s0, v137, v137
	.loc	1 311 21                        ; attention_backward.py:311:21
	v_mul_f32_e32 v124, v124, v126
	.loc	1 309 31                        ; attention_backward.py:309:31
	v_cndmask_b16 v128.h, 0x7fff, v129.h, s5
	v_and_b32_e32 v131, 1, v147
	v_add3_u32 v126, v137, v127, 0x7fff
	v_cndmask_b16 v130.h, 0x7fff, v143.h, s27
	v_cndmask_b32_e32 v124, 0, v124, vcc_lo
	.loc	1 270 9                         ; attention_backward.py:270:9
	s_cmp_lt_i32 s60, s61
	.loc	1 309 31                        ; attention_backward.py:309:31
	v_add3_u32 v125, v125, v131, 0x7fff
	v_cndmask_b16 v131.l, 0x7fff, v126.h, s0
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_mov_b16_e64 v148.l, v124.h
	v_cmp_o_f32_e64 s0, v124, v124
	v_cndmask_b16 v129.h, 0x7fff, v125.h, s1
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v125, 1, v148
	v_add3_u32 v124, v124, v125, 0x7fff
	s_delay_alu instid0(VALU_DEP_1)
	v_cndmask_b16 v131.h, 0x7fff, v124.h, s0
	ds_store_b128 v123, v[133:136]
	ds_store_b128 v123, v[128:131] offset:16
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_u16_d16 v124, v0
	ds_load_u16_d16 v127, v0 offset:768
	ds_load_u16_d16 v128, v0 offset:1024
	ds_load_u16_d16 v129, v0 offset:1280
	ds_load_u16_d16 v130, v0 offset:1536
	ds_load_u16_d16 v131, v0 offset:1792
	ds_load_u16_d16 v126, v0 offset:512
	ds_load_u16_d16 v125, v0 offset:256
	ds_load_u16_d16 v133, v0 offset:608
	ds_load_u16_d16 v132, v0 offset:352
	ds_load_u16_d16 v141, v0 offset:576
	ds_load_u16_d16 v142, v0 offset:832
	ds_load_u16_d16 v143, v0 offset:1088
	ds_load_u16_d16 v144, v0 offset:1344
	ds_load_u16_d16 v145, v0 offset:1600
	ds_load_u16_d16 v146, v0 offset:1856
	s_waitcnt lgkmcnt(15)
	ds_load_u16_d16_hi v124, v0 offset:128
	s_waitcnt lgkmcnt(15)
	ds_load_u16_d16_hi v127, v0 offset:896
	s_waitcnt lgkmcnt(15)
	ds_load_u16_d16_hi v128, v0 offset:1152
	s_waitcnt lgkmcnt(15)
	ds_load_u16_d16_hi v129, v0 offset:1408
	s_waitcnt lgkmcnt(15)
	ds_load_u16_d16_hi v130, v0 offset:1664
	s_waitcnt lgkmcnt(15)
	ds_load_u16_d16_hi v131, v0 offset:1920
	s_waitcnt lgkmcnt(15)
	ds_load_u16_d16_hi v126, v0 offset:640
	s_waitcnt lgkmcnt(15)
	ds_load_u16_d16_hi v125, v0 offset:384
	.loc	1 398 31                        ; attention_backward.py:398:31
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[57:64], v[124:131], v[66:73], v[57:64]
	.loc	1 309 31                        ; attention_backward.py:309:31
	ds_load_u16_d16 v148, v0 offset:288
	ds_load_u16_d16 v147, v0 offset:32
	ds_load_u16_d16 v139, v0 offset:64
	ds_load_u16_d16 v140, v0 offset:320
	ds_load_u16_d16 v131, v0 offset:96
	ds_load_u16_d16 v149, v0 offset:544
	ds_load_u16_d16 v134, v0 offset:864
	ds_load_u16_d16 v135, v0 offset:1120
	ds_load_u16_d16 v136, v0 offset:1376
	ds_load_u16_d16 v137, v0 offset:1632
	ds_load_u16_d16 v150, v0 offset:800
	ds_load_u16_d16 v138, v0 offset:1888
	ds_load_u16_d16 v151, v0 offset:1056
	ds_load_u16_d16 v152, v0 offset:1312
	ds_load_u16_d16 v153, v0 offset:1568
	ds_load_u16_d16 v154, v0 offset:1824
	ds_load_u16_d16_hi v132, v0 offset:480
	ds_load_u16_d16_hi v141, v0 offset:704
	ds_load_u16_d16_hi v142, v0 offset:960
	ds_load_u16_d16_hi v143, v0 offset:1216
	ds_load_u16_d16_hi v144, v0 offset:1472
	ds_load_u16_d16_hi v145, v0 offset:1728
	ds_load_u16_d16_hi v146, v0 offset:1984
	s_waitcnt lgkmcnt(21)
	ds_load_u16_d16_hi v147, v0 offset:160
	s_waitcnt lgkmcnt(21)
	ds_load_u16_d16_hi v139, v0 offset:192
	s_waitcnt lgkmcnt(20)
	ds_load_u16_d16_hi v131, v0 offset:224
	ds_load_u16_d16_hi v148, v0 offset:416
	ds_load_u16_d16_hi v140, v0 offset:448
	s_waitcnt lgkmcnt(22)
	ds_load_u16_d16_hi v149, v0 offset:672
	ds_load_u16_d16_hi v133, v0 offset:736
	s_waitcnt lgkmcnt(19)
	ds_load_u16_d16_hi v150, v0 offset:928
	ds_load_u16_d16_hi v134, v0 offset:992
	s_waitcnt lgkmcnt(19)
	ds_load_u16_d16_hi v151, v0 offset:1184
	ds_load_u16_d16_hi v135, v0 offset:1248
	s_waitcnt lgkmcnt(20)
	ds_load_u16_d16_hi v152, v0 offset:1440
	ds_load_u16_d16_hi v136, v0 offset:1504
	s_waitcnt lgkmcnt(21)
	ds_load_u16_d16_hi v153, v0 offset:1696
	s_waitcnt lgkmcnt(21)
	ds_load_u16_d16_hi v154, v0 offset:1952
	ds_load_u16_d16_hi v137, v0 offset:1760
	ds_load_u16_d16_hi v138, v0 offset:2016
	.loc	1 398 31                        ; attention_backward.py:398:31
	s_waitcnt lgkmcnt(12)
	v_wmma_f32_16x16x16_bf16 v[41:48], v[139:146], v[66:73], v[41:48]
	s_waitcnt lgkmcnt(2)
	v_wmma_f32_16x16x16_bf16 v[49:56], v[147:154], v[66:73], v[49:56]
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[33:40], v[131:138], v[66:73], v[33:40]
	s_cbranch_scc1 .LBB0_6
.LBB0_7:                                ; %._crit_edge46
	.loc	1 401 13                        ; attention_backward.py:401:13
	v_mul_lo_u32 v0, s48, v83
	s_mul_i32 s4, s48, s33
	.loc	1 408 40                        ; attention_backward.py:408:40
	v_cmp_gt_i32_e32 vcc_lo, s48, v84
	.loc	1 405 9                         ; attention_backward.py:405:9
	s_and_b32 s45, s45, 0xffff
	s_mov_b32 s47, 0x31027000
	s_mov_b32 s46, 0x7ffffffe
	.loc	1 168 40                        ; attention_backward.py:168:40
	v_or_b32_e32 v3, 32, v84
	.loc	1 408 18                        ; attention_backward.py:408:18
	s_and_b32 vcc_lo, s2, vcc_lo
	.loc	1 401 13                        ; attention_backward.py:401:13
	v_add_nc_u32_e32 v5, s4, v0
	.loc	1 168 40                        ; attention_backward.py:168:40
	v_or_b32_e32 v4, 16, v84
	v_or_b32_e32 v1, 62, v108
	.loc	1 408 40                        ; attention_backward.py:408:40
	v_cmp_gt_i32_e64 s1, s48, v3
	.loc	1 168 40                        ; attention_backward.py:168:40
	v_or_b32_e32 v2, 48, v84
	.loc	1 405 9                         ; attention_backward.py:405:9
	v_add_lshl_u32 v6, v5, v84, 2
	v_add_lshl_u32 v7, v5, v94, 2
	v_add_lshl_u32 v8, v5, v93, 2
	v_add_lshl_u32 v9, v5, v90, 2
	.loc	1 401 13                        ; attention_backward.py:401:13
	v_add_nc_u32_e32 v0, v0, v84
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 405 9                         ; attention_backward.py:405:9
	v_dual_cndmask_b32 v6, 0x80000000, v6 :: v_dual_cndmask_b32 v7, 0x80000000, v7
	v_dual_cndmask_b32 v8, 0x80000000, v8 :: v_dual_cndmask_b32 v9, 0x80000000, v9
	v_add_lshl_u32 v10, v5, v88, 2
	s_clause 0x2
	buffer_store_b32 v57, v6, s[44:47], 0 offen
	buffer_store_b32 v58, v7, s[44:47], 0 offen
	buffer_store_b32 v59, v8, s[44:47], 0 offen
	v_add_lshl_u32 v6, v5, v92, 2
	v_add_lshl_u32 v7, v5, v91, 2
	v_add_lshl_u32 v8, v5, v89, 2
	.loc	1 401 13                        ; attention_backward.py:401:13
	v_add_lshl_u32 v0, v0, s4, 2
	.loc	1 408 40                        ; attention_backward.py:408:40
	v_cmp_gt_i32_e64 s0, s48, v4
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 405 9                         ; attention_backward.py:405:9
	v_dual_cndmask_b32 v6, 0x80000000, v6 :: v_dual_cndmask_b32 v7, 0x80000000, v7
	v_add_lshl_u32 v3, v5, v3, 2
	v_cndmask_b32_e32 v8, 0x80000000, v8, vcc_lo
	v_cndmask_b32_e32 v10, 0x80000000, v10, vcc_lo
	v_add_lshl_u32 v4, v5, v4, 2
	s_clause 0x4
	buffer_store_b32 v60, v6, s[44:47], 0 offen
	buffer_store_b32 v61, v7, s[44:47], 0 offen
	buffer_store_b32 v62, v8, s[44:47], 0 offen
	buffer_store_b32 v63, v9, s[44:47], 0 offen
	buffer_store_b32 v64, v10, s[44:47], 0 offen
	v_add_nc_u32_e32 v6, 0x48, v0
	v_add_nc_u32_e32 v7, 0x50, v0
	.loc	1 408 18                        ; attention_backward.py:408:18
	s_and_b32 vcc_lo, s2, s0
	.loc	1 405 9                         ; attention_backward.py:405:9
	v_add_nc_u32_e32 v8, 0x58, v0
	v_cndmask_b32_e32 v4, 0x80000000, v4, vcc_lo
	v_add_nc_u32_e32 v9, 0x60, v0
	v_dual_cndmask_b32 v6, 0x80000000, v6 :: v_dual_cndmask_b32 v7, 0x80000000, v7
	s_delay_alu instid0(VALU_DEP_4)
	v_cndmask_b32_e32 v8, 0x80000000, v8, vcc_lo
	s_clause 0x2
	buffer_store_b32 v49, v4, s[44:47], 0 offen
	buffer_store_b32 v50, v6, s[44:47], 0 offen
	buffer_store_b32 v51, v7, s[44:47], 0 offen
	v_cndmask_b32_e32 v4, 0x80000000, v9, vcc_lo
	v_add_nc_u32_e32 v6, 0x68, v0
	buffer_store_b32 v52, v8, s[44:47], 0 offen
	v_add_nc_u32_e32 v7, 0x70, v0
	v_add_nc_u32_e32 v8, 0x78, v0
	buffer_store_b32 v53, v4, s[44:47], 0 offen
	v_cndmask_b32_e32 v4, 0x80000000, v6, vcc_lo
	v_add_lshl_u32 v1, v5, v1, 2
	v_dual_cndmask_b32 v6, 0x80000000, v7 :: v_dual_cndmask_b32 v7, 0x80000000, v8
	.loc	1 408 18                        ; attention_backward.py:408:18
	s_and_b32 vcc_lo, s2, s1
	.loc	1 405 9                         ; attention_backward.py:405:9
	buffer_store_b32 v54, v4, s[44:47], 0 offen
	v_add_nc_u32_e32 v4, 0x88, v0
	v_cndmask_b32_e32 v3, 0x80000000, v3, vcc_lo
	s_clause 0x2
	buffer_store_b32 v55, v6, s[44:47], 0 offen
	buffer_store_b32 v56, v7, s[44:47], 0 offen
	buffer_store_b32 v41, v3, s[44:47], 0 offen
	v_add_nc_u32_e32 v3, 0x90, v0
	v_cndmask_b32_e32 v4, 0x80000000, v4, vcc_lo
	v_add_nc_u32_e32 v6, 0x98, v0
	v_add_nc_u32_e32 v7, 0xa0, v0
	v_add_nc_u32_e32 v8, 0xa8, v0
	v_cndmask_b32_e32 v3, 0x80000000, v3, vcc_lo
	buffer_store_b32 v42, v4, s[44:47], 0 offen
	v_cndmask_b32_e32 v4, 0x80000000, v6, vcc_lo
	v_dual_cndmask_b32 v6, 0x80000000, v7 :: v_dual_cndmask_b32 v7, 0x80000000, v8
	.loc	1 408 40                        ; attention_backward.py:408:40
	v_cmp_gt_i32_e64 s3, s48, v2
	.loc	1 405 9                         ; attention_backward.py:405:9
	buffer_store_b32 v43, v3, s[44:47], 0 offen
	v_add_nc_u32_e32 v3, 0xb0, v0
	s_clause 0x2
	buffer_store_b32 v44, v4, s[44:47], 0 offen
	buffer_store_b32 v45, v6, s[44:47], 0 offen
	buffer_store_b32 v46, v7, s[44:47], 0 offen
	v_add_nc_u32_e32 v4, 0xb8, v0
	v_add_lshl_u32 v2, v5, v2, 2
	v_add_nc_u32_e32 v6, 0xc8, v0
	v_add_nc_u32_e32 v7, 0xd0, v0
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_dual_cndmask_b32 v3, 0x80000000, v3 :: v_dual_cndmask_b32 v4, 0x80000000, v4
	.loc	1 408 18                        ; attention_backward.py:408:18
	s_and_b32 vcc_lo, s2, s3
	.loc	1 405 9                         ; attention_backward.py:405:9
	v_cndmask_b32_e32 v2, 0x80000000, v2, vcc_lo
	v_dual_cndmask_b32 v6, 0x80000000, v6 :: v_dual_cndmask_b32 v7, 0x80000000, v7
	s_clause 0x4
	buffer_store_b32 v47, v3, s[44:47], 0 offen
	buffer_store_b32 v48, v4, s[44:47], 0 offen
	buffer_store_b32 v33, v2, s[44:47], 0 offen
	buffer_store_b32 v34, v6, s[44:47], 0 offen
	buffer_store_b32 v35, v7, s[44:47], 0 offen
	v_add_nc_u32_e32 v2, 0xd8, v0
	v_add_nc_u32_e32 v3, 0xe0, v0
	v_add_nc_u32_e32 v4, 0xe8, v0
	v_add_nc_u32_e32 v0, 0xf0, v0
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_cndmask_b32 v1, 0x80000000, v1 :: v_dual_cndmask_b32 v2, 0x80000000, v2
	v_dual_cndmask_b32 v3, 0x80000000, v3 :: v_dual_cndmask_b32 v4, 0x80000000, v4
	s_delay_alu instid0(VALU_DEP_3)
	v_cndmask_b32_e32 v0, 0x80000000, v0, vcc_lo
	s_clause 0x4
	buffer_store_b32 v36, v2, s[44:47], 0 offen
	buffer_store_b32 v37, v3, s[44:47], 0 offen
	buffer_store_b32 v38, v4, s[44:47], 0 offen
	buffer_store_b32 v39, v0, s[44:47], 0 offen
	buffer_store_b32 v40, v1, s[44:47], 0 offen
	.loc	1 60 5                          ; attention_backward.py:60:5
	s_nop 0
	s_sendmsg sendmsg(MSG_DEALLOC_VGPRS)
	s_endpgm
.Ltmp53:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_attention_bwd_dq_int4xbf16_none_causal_local_outfloat32_doutbfloat16_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1
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
		.amdhsa_next_free_vgpr 164
		.amdhsa_next_free_sgpr 62
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
	.size	amd_strix_halo_gfx1151_attention_bwd_dq_int4xbf16_none_causal_local_outfloat32_doutbfloat16_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1, .Lfunc_end0-amd_strix_halo_gfx1151_attention_bwd_dq_int4xbf16_none_causal_local_outfloat32_doutbfloat16_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_attention_bwd_dq_int4xbf16_none_causal_local_outfloat32_doutbfloat16_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.num_vgpr, 164
	.set amd_strix_halo_gfx1151_attention_bwd_dq_int4xbf16_none_causal_local_outfloat32_doutbfloat16_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.num_agpr, 0
	.set amd_strix_halo_gfx1151_attention_bwd_dq_int4xbf16_none_causal_local_outfloat32_doutbfloat16_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.numbered_sgpr, 62
	.set amd_strix_halo_gfx1151_attention_bwd_dq_int4xbf16_none_causal_local_outfloat32_doutbfloat16_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_attention_bwd_dq_int4xbf16_none_causal_local_outfloat32_doutbfloat16_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.private_seg_size, 0
	.set amd_strix_halo_gfx1151_attention_bwd_dq_int4xbf16_none_causal_local_outfloat32_doutbfloat16_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.uses_vcc, 1
	.set amd_strix_halo_gfx1151_attention_bwd_dq_int4xbf16_none_causal_local_outfloat32_doutbfloat16_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.uses_flat_scratch, 0
	.set amd_strix_halo_gfx1151_attention_bwd_dq_int4xbf16_none_causal_local_outfloat32_doutbfloat16_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_attention_bwd_dq_int4xbf16_none_causal_local_outfloat32_doutbfloat16_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.has_recursion, 0
	.set amd_strix_halo_gfx1151_attention_bwd_dq_int4xbf16_none_causal_local_outfloat32_doutbfloat16_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 9164
; TotalNumSgprs: 64
; NumVgprs: 164
; ScratchSize: 0
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 20
; NumSGPRsForWavesPerEU: 64
; NumVGPRsForWavesPerEU: 164
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
	.quad	.Ltmp8-.Lfunc_begin0
	.quad	.Ltmp9-.Lfunc_begin0
	.quad	.Ltmp11-.Lfunc_begin0
	.quad	.Ltmp12-.Lfunc_begin0
	.quad	.Ltmp15-.Lfunc_begin0
	.quad	.Ltmp16-.Lfunc_begin0
	.quad	.Ltmp18-.Lfunc_begin0
	.quad	.Ltmp19-.Lfunc_begin0
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
	.quad	.Ltmp47-.Lfunc_begin0
	.quad	.Ltmp48-.Lfunc_begin0
	.quad	.Ltmp49-.Lfunc_begin0
	.quad	.Ltmp50-.Lfunc_begin0
	.quad	.Ltmp51-.Lfunc_begin0
	.quad	.Ltmp52-.Lfunc_begin0
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
	.quad	.Ltmp13-.Lfunc_begin0
	.quad	.Ltmp14-.Lfunc_begin0
	.quad	.Ltmp17-.Lfunc_begin0
	.quad	.Ltmp18-.Lfunc_begin0
	.quad	.Ltmp19-.Lfunc_begin0
	.quad	.Ltmp20-.Lfunc_begin0
	.quad	.Ltmp28-.Lfunc_begin0
	.quad	.Ltmp29-.Lfunc_begin0
	.quad	.Ltmp47-.Lfunc_begin0
	.quad	.Ltmp48-.Lfunc_begin0
	.quad	.Ltmp49-.Lfunc_begin0
	.quad	.Ltmp50-.Lfunc_begin0
	.quad	.Ltmp51-.Lfunc_begin0
	.quad	.Ltmp52-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges2:
	.quad	.Ltmp34-.Lfunc_begin0
	.quad	.Ltmp35-.Lfunc_begin0
	.quad	.Ltmp36-.Lfunc_begin0
	.quad	.Ltmp38-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges3:
	.quad	.Ltmp34-.Lfunc_begin0
	.quad	.Ltmp35-.Lfunc_begin0
	.quad	.Ltmp36-.Lfunc_begin0
	.quad	.Ltmp37-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges4:
	.quad	.Ltmp39-.Lfunc_begin0
	.quad	.Ltmp40-.Lfunc_begin0
	.quad	.Ltmp41-.Lfunc_begin0
	.quad	.Ltmp42-.Lfunc_begin0
	.quad	.Ltmp43-.Lfunc_begin0
	.quad	.Ltmp44-.Lfunc_begin0
	.quad	.Ltmp45-.Lfunc_begin0
	.quad	.Ltmp46-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges5:
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
	.asciz	"amd_strix_halo_gfx1151_attention_bwd_dq_int4xbf16_none_causal_local_outfloat32_doutbfloat16_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1"                        ; string offset=97 ; amd_strix_halo_gfx1151_attention_bwd_dq_int4xbf16_none_causal_local_outfloat32_doutbfloat16_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1
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
    .name:           amd_strix_halo_gfx1151_attention_bwd_dq_int4xbf16_none_causal_local_outfloat32_doutbfloat16_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1
    .private_segment_fixed_size: 0
    .sgpr_count:     64
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_attention_bwd_dq_int4xbf16_none_causal_local_outfloat32_doutbfloat16_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     164
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
