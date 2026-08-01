	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_attention_bwd_dq_int4xint4_none_local_outbfloat16_doutbfloat16_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1                          ; -- Begin function amd_strix_halo_gfx1151_attention_bwd_dq_int4xint4_none_local_outbfloat16_doutbfloat16_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1
	.p2align	8
	.type	amd_strix_halo_gfx1151_attention_bwd_dq_int4xint4_none_local_outbfloat16_doutbfloat16_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1,@function
amd_strix_halo_gfx1151_attention_bwd_dq_int4xint4_none_local_outbfloat16_doutbfloat16_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1:                                 ; @amd_strix_halo_gfx1151_attention_bwd_dq_int4xint4_none_local_outbfloat16_doutbfloat16_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1
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
	.loc	1 168 40 prologue_end           ; attention_backward.py:168:40
	v_and_b32_e32 v23, 7, v0
	.loc	1 124 31                        ; attention_backward.py:124:31
	v_lshrrev_b32_e32 v3, 3, v0
	v_and_b32_e32 v66, 32, v0
	v_lshrrev_b32_e32 v33, 1, v0
	.loc	1 139 44                        ; attention_backward.py:139:44
	v_lshlrev_b32_e32 v18, 4, v0
	.loc	1 168 40                        ; attention_backward.py:168:40
	v_lshlrev_b32_e32 v114, 3, v23
	.loc	1 119 19                        ; attention_backward.py:119:19
	s_lshl_b32 s21, s2, 5
	.loc	1 124 31                        ; attention_backward.py:124:31
	v_lshrrev_b32_e32 v1, 1, v66
	.loc	1 133 26                        ; attention_backward.py:133:26
	s_lshl_b32 s22, s3, 11
	.loc	1 124 21                        ; attention_backward.py:124:21
	v_or_b32_e32 v2, s21, v33
	.loc	1 135 17                        ; attention_backward.py:135:17
	s_add_i32 s88, s21, s22
	s_clause 0x1
	s_load_b256 s[64:71], s[0:1], 0x38
	s_load_b256 s[72:79], s[0:1], 0x0
	v_or_b32_e32 v5, s88, v33
	.loc	1 124 21                        ; attention_backward.py:124:21
	v_or_b32_e32 v4, s21, v3
	.loc	1 128 21                        ; attention_backward.py:128:21
	v_cmp_gt_i32_e32 vcc_lo, 0x800, v2
	s_mov_b32 s31, 0x31027000
	s_mov_b32 s30, 0x7ffffffe
	s_clause 0x1
	s_load_b64 s[8:9], s[0:1], 0x98
	s_load_b32 s5, s[0:1], 0xa0
	.loc	1 167 13                        ; attention_backward.py:167:13
	s_waitcnt lgkmcnt(0)
	v_mad_u64_u32 v[6:7], null, s83, v3, v[114:115]
	.loc	1 124 31                        ; attention_backward.py:124:31
	v_and_b32_e32 v65, 15, v0
	.loc	1 168 40                        ; attention_backward.py:168:40
	v_cmp_gt_i32_e64 s6, s83, v114
	.loc	1 167 13                        ; attention_backward.py:167:13
	s_lshl_b32 s4, s83, 3
	s_clause 0x1
	s_load_b32 s89, s[0:1], 0x80
	s_load_b64 s[80:81], s[0:1], 0x58
	v_mov_b16_e32 v25.l, 0
	.loc	1 125 21                        ; attention_backward.py:125:21
	v_bfe_u32 v131, v0, 4, 1
	v_mov_b32_e32 v130, v6
	.loc	1 124 31                        ; attention_backward.py:124:31
	v_or_b32_e32 v113, v1, v65
	.loc	1 139 44                        ; attention_backward.py:139:44
	v_and_b32_e32 v1, 16, v18
	.loc	1 125 21                        ; attention_backward.py:125:21
	v_lshrrev_b32_e32 v31, 2, v0
	.loc	1 134 28                        ; attention_backward.py:134:28
	s_and_b32 s29, s73, 0xffff
	s_mov_b32 s28, s72
	.loc	1 124 21                        ; attention_backward.py:124:21
	v_or_b32_e32 v17, s21, v113
	.loc	1 139 44                        ; attention_backward.py:139:44
	v_cmp_gt_i32_e64 s2, s82, v1
	.loc	1 135 17                        ; attention_backward.py:135:17
	v_mad_u64_u32 v[1:2], null, s82, v5, v[1:2]
	.loc	1 143 17                        ; attention_backward.py:143:17
	v_or_b32_e32 v2, s88, v113
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_mov_b16_e32 v56.l, v25.l
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 139 22                        ; attention_backward.py:139:22
	s_and_b32 vcc_lo, vcc_lo, s2
	.loc	1 128 21                        ; attention_backward.py:128:21
	v_cmp_gt_i32_e64 s2, 0x800, v17
	.loc	1 171 28                        ; attention_backward.py:171:28
	v_mov_b16_e32 v60.l, v25.l
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_mov_b16_e32 v64.l, v25.l
	.loc	1 134 28                        ; attention_backward.py:134:28
	v_cndmask_b32_e32 v3, 0x80000000, v1, vcc_lo
	.loc	1 128 21                        ; attention_backward.py:128:21
	v_cmp_gt_i32_e32 vcc_lo, 0x800, v4
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_mov_b16_e32 v70.l, v25.l
	.loc	1 171 28                        ; attention_backward.py:171:28
	v_mov_b16_e32 v72.l, v25.l
	v_mov_b16_e32 v74.l, v25.l
	.loc	1 134 28                        ; attention_backward.py:134:28
	buffer_load_b128 v[19:22], v3, s[28:31], 0 offen
	.loc	1 168 18                        ; attention_backward.py:168:18
	s_and_b32 vcc_lo, vcc_lo, s6
	.loc	1 142 31                        ; attention_backward.py:142:31
	v_lshlrev_b32_e32 v5, 1, v2
	.loc	1 167 13                        ; attention_backward.py:167:13
	v_mad_u64_u32 v[1:2], null, s83, s88, v[6:7]
	.loc	1 142 31                        ; attention_backward.py:142:31
	s_and_b32 s29, s79, 0xffff
	s_mov_b32 s28, s78
	v_cndmask_b32_e64 v2, 0x80000000, v5, s2
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_mov_b16_e32 v76.l, v25.l
	v_mov_b16_e32 v78.l, v25.l
	.loc	1 171 28                        ; attention_backward.py:171:28
	v_mov_b16_e32 v80.l, v25.l
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_lshlrev_b32_e32 v3, 1, v1
	.loc	1 142 31                        ; attention_backward.py:142:31
	buffer_load_u16 v24, v2, s[28:31], 0 offen
	.loc	1 166 23                        ; attention_backward.py:166:23
	s_and_b32 s29, s65, 0xffff
	s_mov_b32 s28, s64
	.loc	1 171 28                        ; attention_backward.py:171:28
	v_mov_b16_e32 v82.l, v25.l
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_cndmask_b32_e32 v2, 0x80000000, v3, vcc_lo
	v_add_lshl_u32 v3, v1, s4, 1
	.loc	1 167 13                        ; attention_backward.py:167:13
	s_lshl_b32 s4, s83, 4
	.loc	1 125 21                        ; attention_backward.py:125:21
	v_or_b32_e32 v93, 4, v131
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_add_lshl_u32 v4, v1, s4, 1
	.loc	1 167 13                        ; attention_backward.py:167:13
	s_mul_i32 s4, s83, 24
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_cndmask_b32_e32 v3, 0x80000000, v3, vcc_lo
	v_add_lshl_u32 v1, v1, s4, 1
	buffer_load_b128 v[26:29], v2, s[28:31], 0 offen
	v_cndmask_b32_e32 v4, 0x80000000, v4, vcc_lo
	.loc	1 121 23                        ; attention_backward.py:121:23
	s_ashr_i32 s4, s3, 31
	.loc	1 166 23                        ; attention_backward.py:166:23
	buffer_load_b128 v[36:39], v3, s[28:31], 0 offen
	v_cndmask_b32_e32 v1, 0x80000000, v1, vcc_lo
	.loc	1 121 23                        ; attention_backward.py:121:23
	s_lshr_b32 s4, s4, 28
	.loc	1 166 23                        ; attention_backward.py:166:23
	buffer_load_b128 v[42:45], v4, s[28:31], 0 offen
	.loc	1 121 23                        ; attention_backward.py:121:23
	s_add_i32 s4, s3, s4
	v_dual_mov_b32 v253, v93 :: v_dual_lshlrev_b32 v34, 1, v0
	.loc	1 166 23                        ; attention_backward.py:166:23
	buffer_load_b128 v[46:49], v1, s[28:31], 0 offen
	.loc	1 171 28                        ; attention_backward.py:171:28
	s_and_b32 s29, s67, 0xffff
	s_mov_b32 s28, s66
	s_clause 0x3
	buffer_load_b128 v[13:16], v2, s[28:31], 0 offen
	buffer_load_b128 v[9:12], v3, s[28:31], 0 offen
	buffer_load_b128 v[5:8], v4, s[28:31], 0 offen
	buffer_load_b128 v[1:4], v1, s[28:31], 0 offen
	.loc	1 122 22                        ; attention_backward.py:122:22
	s_and_b32 s7, s4, 0xfff0
	.loc	1 121 23                        ; attention_backward.py:121:23
	s_ashr_i32 s4, s4, 4
	.loc	1 122 22                        ; attention_backward.py:122:22
	s_sub_i32 s3, s3, s7
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_mov_b16_e32 v32.l, v25.l
	.loc	1 123 19                        ; attention_backward.py:123:19
	s_bfe_u32 s7, s3, 0x10007
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_mov_b16_e32 v50.l, v25.l
	.loc	1 123 19                        ; attention_backward.py:123:19
	s_add_i32 s3, s3, s7
	.loc	1 171 28                        ; attention_backward.py:171:28
	v_mov_b16_e32 v52.l, v25.l
	.loc	1 123 19                        ; attention_backward.py:123:19
	s_sext_i32_i8 s3, s3
	.loc	1 171 28                        ; attention_backward.py:171:28
	v_mov_b16_e32 v54.l, v25.l
	.loc	1 123 19                        ; attention_backward.py:123:19
	s_ashr_i32 s3, s3, 1
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_mov_b16_e32 v75.l, v25.l
	.loc	1 197 29                        ; attention_backward.py:197:29
	s_lshl3_add_u32 s23, s4, s3
	.loc	1 171 28                        ; attention_backward.py:171:28
	v_mov_b16_e32 v79.l, v25.l
	.loc	1 197 28                        ; attention_backward.py:197:28
	s_lshl_b32 s10, s23, 11
	.loc	1 134 28                        ; attention_backward.py:134:28
	v_and_or_b32 v83, v34, 30, v131
	v_or_b32_e32 v117, s10, v31
	.loc	1 220 21                        ; attention_backward.py:220:21
	s_waitcnt lgkmcnt(0)
	s_mul_f32 s11, s89, 0x3fb8aa3b
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_mov_b16_e32 v58.l, v25.l
	.loc	1 171 28                        ; attention_backward.py:171:28
	v_mov_b16_e32 v62.l, v25.l
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_mov_b16_e32 v77.l, v25.l
	.loc	1 171 28                        ; attention_backward.py:171:28
	v_mov_b16_e32 v81.l, v25.l
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_mov_b16_e32 v40.l, v25.l
	.loc	1 171 28                        ; attention_backward.py:171:28
	v_mov_b16_e32 v53.l, v25.l
	v_mov_b16_e32 v51.l, v25.l
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_mov_b16_e32 v57.l, v25.l
	.loc	1 171 28                        ; attention_backward.py:171:28
	v_mov_b16_e32 v61.l, v25.l
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_mov_b16_e32 v55.l, v25.l
	.loc	1 171 28                        ; attention_backward.py:171:28
	v_mov_b16_e32 v59.l, v25.l
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_mov_b16_e32 v69.l, v25.l
	.loc	1 171 28                        ; attention_backward.py:171:28
	v_mov_b16_e32 v73.l, v25.l
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_mov_b16_e32 v63.l, v25.l
	.loc	1 171 28                        ; attention_backward.py:171:28
	v_mov_b16_e32 v71.l, v25.l
	.loc	1 184 17                        ; attention_backward.py:184:17
	s_add_i32 s7, s21, s9
	.loc	1 181 39                        ; attention_backward.py:181:39
	s_sub_i32 s3, s21, s8
	.loc	1 184 17                        ; attention_backward.py:184:17
	s_add_i32 s7, s7, s5
	.loc	1 181 39                        ; attention_backward.py:181:39
	s_add_i32 s3, s3, s5
	.loc	1 184 17                        ; attention_backward.py:184:17
	s_add_i32 s7, s7, 32
	.loc	1 125 21                        ; attention_backward.py:125:21
	v_or_b32_e32 v92, 2, v131
	.loc	1 182 25                        ; attention_backward.py:182:25
	s_min_i32 s7, s7, 0x800
	v_or_b32_e32 v152, s10, v93
	.loc	1 187 35                        ; attention_backward.py:187:35
	s_add_i32 s7, s7, 15
	.loc	1 125 21                        ; attention_backward.py:125:21
	v_or_b32_e32 v135, 6, v131
	v_or_b32_e32 v119, s10, v92
	v_or_b32_e32 v134, 8, v131
	v_or_b32_e32 v251, 10, v131
	v_or_b32_e32 v252, 12, v131
	v_or_b32_e32 v133, 14, v131
	.loc	1 181 25                        ; attention_backward.py:181:25
	s_max_i32 s3, s3, 0
	v_or_b32_e32 v118, s10, v131
	.loc	1 186 33                        ; attention_backward.py:186:33
	s_and_b32 s90, s3, 0x7ffffff0
	v_or_b32_e32 v121, s10, v135
	v_or_b32_e32 v129, s10, v134
	v_or_b32_e32 v132, s10, v251
	v_or_b32_e32 v122, s10, v133
	s_mov_b64 s[36:37], s[70:71]
	.loc	1 166 23                        ; attention_backward.py:166:23
	s_waitcnt vmcnt(7)
	v_mov_b16_e32 v32.h, v28.l
	v_mov_b16_e32 v50.h, v26.l
	v_mov_b16_e32 v25.h, v29.l
	s_waitcnt vmcnt(6)
	v_mov_b16_e32 v55.h, v39.l
	v_mov_b16_e32 v56.h, v38.l
	v_mov_b16_e32 v57.h, v37.l
	s_waitcnt vmcnt(5)
	v_mov_b16_e32 v63.h, v45.l
	v_mov_b16_e32 v64.h, v44.l
	v_mov_b16_e32 v69.h, v43.l
	v_mov_b16_e32 v70.h, v42.l
	s_waitcnt vmcnt(4)
	v_mov_b16_e32 v76.h, v48.l
	v_mov_b16_e32 v77.h, v47.l
	v_mov_b16_e32 v78.h, v46.l
	.loc	1 171 28                        ; attention_backward.py:171:28
	s_waitcnt vmcnt(3)
	v_and_b32_e32 v99, 0xffff0000, v15
	s_waitcnt vmcnt(2)
	v_mov_b16_e32 v60.h, v11.l
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_and_b32_e32 v31, 0xffff0000, v37
	.loc	1 171 28                        ; attention_backward.py:171:28
	s_waitcnt vmcnt(1)
	v_mov_b16_e32 v72.h, v7.l
	v_mov_b16_e32 v74.h, v5.l
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_and_b32_e32 v37, 0xffff0000, v39
	v_and_b32_e32 v39, 0xffff0000, v43
	.loc	1 171 28                        ; attention_backward.py:171:28
	v_and_b32_e32 v106, 0xffff0000, v6
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_and_b32_e32 v28, 0xffff0000, v28
	.loc	1 171 28                        ; attention_backward.py:171:28
	s_waitcnt vmcnt(0)
	v_mov_b16_e32 v80.h, v3.l
	v_mov_b16_e32 v82.h, v1.l
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_and_b32_e32 v43, 0xffff0000, v45
	v_and_b32_e32 v45, 0xffff0000, v47
	v_and_b32_e32 v47, 0xffff0000, v49
	.loc	1 171 28                        ; attention_backward.py:171:28
	v_and_b32_e32 v111, 0xffff0000, v3
	.loc	1 129 27                        ; attention_backward.py:129:27
	v_add_nc_u32_e32 v17, s5, v17
	.loc	1 171 28                        ; attention_backward.py:171:28
	v_and_b32_e32 v112, 0xffff0000, v4
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_and_b32_e32 v26, 0xffff0000, v26
	v_mov_b16_e32 v75.h, v49.l
	.loc	1 171 28                        ; attention_backward.py:171:28
	v_mov_b16_e32 v52.h, v15.l
	.loc	1 241 43                        ; attention_backward.py:241:43
	v_subrev_nc_u32_e32 v147, s8, v17
	.loc	1 171 28                        ; attention_backward.py:171:28
	v_mov_b16_e32 v54.h, v13.l
	v_and_b32_e32 v108, 0xffff0000, v8
	.loc	1 242 43                        ; attention_backward.py:242:43
	v_add_nc_u32_e32 v148, s9, v17
	.loc	1 142 31                        ; attention_backward.py:142:31
	v_lshlrev_b32_e32 v17, 16, v24
	.loc	1 124 31                        ; attention_backward.py:124:31
	v_and_b32_e32 v30, 56, v0
	.loc	1 171 28                        ; attention_backward.py:171:28
	v_mov_b16_e32 v79.h, v4.l
	.loc	1 176 24                        ; attention_backward.py:176:24
	v_dual_mul_f32 v39, v39, v106 :: v_dual_mul_f32 v28, v28, v99
	v_mul_f32_e32 v47, v47, v112
	.loc	1 219 37                        ; attention_backward.py:219:37
	v_mul_f32_e32 v149, s11, v17
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_mov_b16_e32 v40.h, v27.l
	s_delay_alu instid0(VALU_DEP_4)
.Ltmp1:
	.file	2 "<triton>/python/triton/language" "standard.py"
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_dual_fmac_f32 v28, v32, v52 :: v_dual_and_b32 v27, 0xffff0000, v27
.Ltmp2:
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_mov_b16_e32 v58.h, v36.l
	.loc	1 171 28                        ; attention_backward.py:171:28
	v_and_b32_e32 v49, 0xffff0000, v14
	v_lshlrev_b32_e32 v68, 4, v23
	v_mov_b16_e32 v62.h, v9.l
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_and_b32_e32 v29, 0xffff0000, v29
.Ltmp3:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_dual_fmac_f32 v47, v75, v79 :: v_dual_and_b32 v102, 0xffff0000, v10
.Ltmp4:
	.loc	1 171 28                        ; attention_backward.py:171:28
	v_and_b32_e32 v105, 0xffff0000, v5
	v_lshlrev_b32_e32 v23, 6, v66
	v_and_b32_e32 v107, 0xffff0000, v7
	v_lshlrev_b32_e32 v41, 1, v30
	v_mov_b16_e32 v81.h, v2.l
	v_and_b32_e32 v100, 0xffff0000, v16
	v_lshlrev_b32_e32 v30, 7, v65
	v_and_b32_e32 v109, 0xffff0000, v1
	.loc	1 134 28                        ; attention_backward.py:134:28
	v_lshlrev_b32_e32 v83, 2, v83
	.loc	1 176 24                        ; attention_backward.py:176:24
	v_mul_f32_e32 v27, v27, v49
	v_mul_f32_e32 v29, v29, v100
	.loc	1 171 28                        ; attention_backward.py:171:28
	v_or3_b32 v23, v30, v23, v68
	v_mov_b16_e32 v53.h, v14.l
	.loc	1 134 28                        ; attention_backward.py:134:28
	v_xor_b32_e32 v30, 4, v83
	.loc	1 171 28                        ; attention_backward.py:171:28
	v_and_b32_e32 v103, 0xffff0000, v11
	v_and_b32_e32 v110, 0xffff0000, v2
	v_mov_b16_e32 v51.h, v16.l
.Ltmp5:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_fmac_f32_e32 v27, v40, v53
.Ltmp6:
	.loc	1 134 28                        ; attention_backward.py:134:28
	ds_bpermute_b32 v95, v30, v19
	ds_bpermute_b32 v96, v30, v20
	ds_bpermute_b32 v97, v30, v21
	ds_bpermute_b32 v98, v30, v22
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_and_b32_e32 v30, 0xffff0000, v36
	v_and_b32_e32 v36, 0xffff0000, v38
	.loc	1 168 40                        ; attention_backward.py:168:40
	v_and_b32_e32 v67, 3, v0
.Ltmp7:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_dual_fmac_f32 v29, v25, v51 :: v_dual_and_b32 v38, 0xffff0000, v42
.Ltmp8:
	.loc	1 171 28                        ; attention_backward.py:171:28
	v_mov_b16_e32 v61.h, v10.l
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 176 24                        ; attention_backward.py:176:24
	v_mul_f32_e32 v36, v36, v103
	.loc	1 171 28                        ; attention_backward.py:171:28
	v_mov_b16_e32 v59.h, v12.l
	.loc	1 176 24                        ; attention_backward.py:176:24
	v_mul_f32_e32 v38, v38, v105
	.loc	1 171 28                        ; attention_backward.py:171:28
	v_mov_b16_e32 v73.h, v6.l
	v_mov_b16_e32 v71.h, v8.l
.Ltmp9:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_fmac_f32_e32 v36, v56, v60
.Ltmp10:
	.loc	1 176 24                        ; attention_backward.py:176:24
	v_dual_mul_f32 v31, v31, v102 :: v_dual_lshlrev_b32 v128, 3, v67
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_and_b32_e32 v42, 0xffff0000, v44
.Ltmp11:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_dual_fmac_f32 v38, v70, v74 :: v_dual_fmac_f32 v39, v69, v73
.Ltmp12:
	.loc	1 187 34                        ; attention_backward.py:187:34
	s_ashr_i32 s5, s7, 31
	s_delay_alu instid0(VALU_DEP_3)
.Ltmp13:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_dual_fmac_f32 v31, v57, v61 :: v_dual_and_b32 v104, 0xffff0000, v12
.Ltmp14:
	.loc	1 171 28                        ; attention_backward.py:171:28
	v_add_nc_u32_e32 v84, 0, v23
	.loc	1 176 24                        ; attention_backward.py:176:24
	v_mul_f32_e32 v42, v42, v107
	.loc	1 187 34                        ; attention_backward.py:187:34
	s_lshr_b32 s5, s5, 28
	.loc	1 171 28                        ; attention_backward.py:171:28
	v_xad_u32 v18, v18, v41, 0
	.loc	1 176 24                        ; attention_backward.py:176:24
	v_dual_mul_f32 v37, v37, v104 :: v_dual_and_b32 v44, 0xffff0000, v46
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_and_b32_e32 v46, 0xffff0000, v48
.Ltmp15:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_fmac_f32_e32 v42, v64, v72
.Ltmp16:
	.loc	1 187 34                        ; attention_backward.py:187:34
	s_add_i32 s7, s7, s5
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp17:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_dual_fmac_f32 v37, v55, v59 :: v_dual_mul_f32 v44, v44, v109
.Ltmp18:
	.loc	1 176 24                        ; attention_backward.py:176:24
	v_mul_f32_e32 v46, v46, v111
	.loc	1 171 28                        ; attention_backward.py:171:28
	v_xad_u32 v85, v23, 16, 0
	v_xad_u32 v86, v23, 32, 0
	s_delay_alu instid0(VALU_DEP_4)
.Ltmp19:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_e32 v36, v36, v37
	v_fmac_f32_e32 v44, v78, v82
	v_dual_fmac_f32 v46, v76, v80 :: v_dual_mul_f32 v45, v45, v110
	v_add_f32_e32 v37, v38, v39
.Ltmp20:
	.loc	1 171 28                        ; attention_backward.py:171:28
	v_xad_u32 v87, v23, 48, 0
	v_xad_u32 v88, v23, 64, 0
	v_xad_u32 v90, 0x60, v23, 0
.Ltmp21:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_fmac_f32_e32 v45, v77, v81
.Ltmp22:
	.loc	1 134 28                        ; attention_backward.py:134:28
	ds_bpermute_b32 v92, v83, v19
	ds_bpermute_b32 v93, v83, v20
	ds_bpermute_b32 v94, v83, v21
	ds_bpermute_b32 v83, v83, v22
.Ltmp23:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_e32 v39, v44, v45
.Ltmp24:
	.loc	1 176 24                        ; attention_backward.py:176:24
	v_dual_mul_f32 v43, v43, v108 :: v_dual_and_b32 v48, 0xffff0000, v13
	.loc	1 171 28                        ; attention_backward.py:171:28
	v_xad_u32 v89, 0x50, v23, 0
	v_xad_u32 v91, 0x70, v23, 0
	ds_store_b128 v18, v[13:16]
	ds_store_b128 v18, v[9:12] offset:1024
	ds_store_b128 v18, v[5:8] offset:2048
	ds_store_b128 v18, v[1:4] offset:3072
.Ltmp25:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_fmac_f32_e32 v43, v63, v71
.Ltmp26:
	.loc	1 176 24                        ; attention_backward.py:176:24
	v_dual_mul_f32 v26, v26, v48 :: v_dual_and_b32 v101, 0xffff0000, v9
.Ltmp27:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_e32 v48, v28, v29
.Ltmp28:
	.loc	1 171 28                        ; attention_backward.py:171:28
	s_waitcnt lgkmcnt(0)
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp29:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_dual_add_f32 v38, v42, v43 :: v_dual_and_b32 v35, 16, v0
.Ltmp30:
	.loc	1 176 24                        ; attention_backward.py:176:24
	v_mul_f32_e32 v30, v30, v101
.Ltmp31:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_e32 v42, v46, v47
	v_fmac_f32_e32 v26, v50, v54
	s_delay_alu instid0(VALU_DEP_4)
	v_add_f32_e32 v37, v37, v38
.Ltmp32:
	.loc	1 134 28                        ; attention_backward.py:134:28
	v_cmp_eq_u32_e64 s5, 0, v35
.Ltmp33:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_fmac_f32_e32 v30, v58, v62
	v_add_f32_e32 v38, v39, v42
	v_add_f32_e32 v40, v26, v27
.Ltmp34:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_mov_b32_e32 v42, v37
.Ltmp35:
	.loc	1 171 28                        ; attention_backward.py:171:28
	s_barrier
.Ltmp36:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_e32 v49, v30, v31
.Ltmp37:
	.loc	1 171 28                        ; attention_backward.py:171:28
	ds_load_b128 v[200:203], v84
	ds_load_b128 v[204:207], v85
	ds_load_b128 v[176:179], v86
	ds_load_b128 v[180:183], v87
	ds_load_b128 v[136:139], v88
	ds_load_b128 v[140:143], v89
.Ltmp38:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_e32 v40, v40, v48
.Ltmp39:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_mov_b32_dpp v42, v42 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp40:
	.loc	1 171 28                        ; attention_backward.py:171:28
	ds_load_b128 v[154:157], v90
	ds_load_b128 v[158:161], v91
.Ltmp41:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_dual_add_f32 v36, v49, v36 :: v_dual_mov_b32 v43, v38
.Ltmp42:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_mov_b32_e32 v35, v40
.Ltmp43:
	.loc	1 187 33                        ; attention_backward.py:187:33
	s_and_b32 s91, s7, -16
	.loc	1 200 27                        ; attention_backward.py:200:27
	v_cmp_gt_i32_e64 s4, s82, v128
	v_or_b32_e32 v23, s10, v252
.Ltmp44:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_mov_b32_dpp v43, v43 row_xmask:4 row_mask:0xf bank_mask:0xf
	v_mov_b32_e32 v39, v36
	v_mov_b32_dpp v35, v35 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp45:
	.loc	1 134 28                        ; attention_backward.py:134:28
	v_cndmask_b32_e64 v2, v95, v92, s5
	v_cndmask_b32_e64 v124, v92, v95, s5
.Ltmp46:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_e32 v38, v38, v43
.Ltmp47:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_mov_b32_dpp v39, v39 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp48:
	.loc	1 134 28                        ; attention_backward.py:134:28
	v_cndmask_b32_e64 v3, v96, v93, s5
	v_cndmask_b32_e64 v125, v93, v96, s5
	v_cndmask_b32_e64 v126, v97, v94, s5
	v_cndmask_b32_e64 v166, v94, v97, s5
.Ltmp49:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_dual_add_f32 v36, v36, v39 :: v_dual_add_f32 v37, v37, v42
	v_add_f32_e32 v35, v40, v35
.Ltmp50:
	.loc	1 134 28                        ; attention_backward.py:134:28
	v_cndmask_b32_e64 v127, v98, v83, s5
	v_cndmask_b32_e64 v167, v83, v98, s5
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_2)
.Ltmp51:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_mov_b32_e32 v40, v36
	v_dual_mov_b32 v44, v37 :: v_dual_lshlrev_b32 v69, 3, v0
.Ltmp52:
	.loc	1 194 9                         ; attention_backward.py:194:9
	s_cmp_lt_i32 s90, s91
.Ltmp53:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_mov_b32_dpp v40, v40 row_xmask:2 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	v_mov_b32_dpp v44, v44 row_xmask:2 row_mask:0xf bank_mask:0xf
	v_mov_b32_e32 v39, v35
.Ltmp54:
	.loc	1 194 9                         ; attention_backward.py:194:9
	s_cselect_b32 s33, -1, 0
	s_cmp_ge_i32 s90, s91
.Ltmp55:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_e32 v44, v37, v44
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp56:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_mov_b32_dpp v39, v39 row_xmask:2 row_mask:0xf bank_mask:0xf
	v_dual_mov_b32 v45, v38 :: v_dual_mov_b32 v48, v44
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp57:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_e32 v42, v35, v39
.Ltmp58:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_mov_b32_dpp v45, v45 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp59:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_e32 v43, v36, v40
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp60:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_mov_b32_dpp v48, v48 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_e32 v46, v42
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp61:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_e32 v45, v38, v45
.Ltmp62:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_mov_b32_e32 v47, v43
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mov_b32_dpp v46, v46 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_e32 v49, v45
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_mov_b32_dpp v47, v47 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v49, v49 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp63:
	.loc	1 194 9                         ; attention_backward.py:194:9
	s_cbranch_scc1 .LBB0_3
; %bb.1:                                ; %.lr.ph
	.loc	1 223 21                        ; attention_backward.py:223:21
	v_dual_mov_b32 v53, v149 :: v_dual_and_b32 v34, 24, v34
	v_dual_mov_b32 v52, v149 :: v_dual_and_b32 v33, 24, v33
	v_mov_b32_e32 v54, v149
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_lshl_or_b32 v51, v65, 5, v34
	s_and_b32 s29, s75, 0xffff
	v_xor_b32_e32 v35, v69, v33
	v_dual_mov_b32 v34, 0xff800000 :: v_dual_mov_b32 v33, 0
	s_delay_alu instid0(VALU_DEP_3)
	v_xor_b32_e32 v36, 8, v51
	v_xor_b32_e32 v37, 16, v51
	v_xor_b32_e32 v38, 24, v51
	v_add_nc_u32_e32 v55, 0, v35
	s_mov_b32 s28, s74
	v_dual_mov_b32 v29, v122 :: v_dual_add_nc_u32 v56, 0, v36
	v_dual_mov_b32 v50, 0 :: v_dual_add_nc_u32 v57, 0, v37
	v_add_nc_u32_e32 v58, 0, v38
	s_and_b32 s41, s25, 0xffff
	s_mov_b32 s40, s24
	s_mov_b32 s34, 0x76543210
	s_mov_b32 s42, s30
	s_mov_b32 s43, s31
	s_mov_b32 s35, s90
.LBB0_2:                                ; =>This Inner Loop Header: Depth=1
	.loc	1 0 21 is_stmt 0                ; attention_backward.py:0:21
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_dual_mov_b32 v82, v34 :: v_dual_add_nc_u32 v35, s35, v117
	.loc	1 214 33 is_stmt 1              ; attention_backward.py:214:33
	v_add_lshl_u32 v40, v121, s35, 1
	v_add_lshl_u32 v39, v152, s35, 1
	v_add_lshl_u32 v38, v119, s35, 1
	.loc	1 199 21                        ; attention_backward.py:199:21
	v_mad_u64_u32 v[35:36], null, v35, s82, v[128:129]
	.loc	1 214 33                        ; attention_backward.py:214:33
	v_add_lshl_u32 v37, v118, s35, 1
	v_add_lshl_u32 v61, v23, s35, 1
	v_add_lshl_u32 v62, v29, s35, 1
	v_add_lshl_u32 v59, v129, s35, 1
	v_add_lshl_u32 v60, v132, s35, 1
	.loc	1 195 27                        ; attention_backward.py:195:27
	v_or_b32_e32 v1, 2, v131
	.loc	1 198 28                        ; attention_backward.py:198:28
	v_cndmask_b32_e64 v35, 0x80000000, v35, s4
	.loc	1 204 29                        ; attention_backward.py:204:29
	v_dual_mov_b32 v34, v33 :: v_dual_add_nc_u32 v89, 0, v51
	.loc	1 195 27                        ; attention_backward.py:195:27
	v_or_b32_e32 v83, s35, v253
	v_or_b32_e32 v84, s35, v135
	.loc	1 198 28                        ; attention_backward.py:198:28
	buffer_load_b64 v[35:36], v35, s[28:31], 0 offen
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 195 27                        ; attention_backward.py:195:27
	v_or_b32_e32 v85, s35, v134
	v_or_b32_e32 v86, s35, v251
	v_or_b32_e32 v87, s35, v252
	v_or_b32_e32 v88, s35, v133
	.loc	1 241 26                        ; attention_backward.py:241:26
	v_cmp_ge_i32_e32 vcc_lo, v84, v147
	v_cmp_ge_i32_e64 s3, v83, v147
	.loc	1 242 26                        ; attention_backward.py:242:26
	v_cmp_le_i32_e64 s9, v84, v148
	v_cmp_le_i32_e64 s10, v83, v148
	.loc	1 241 26                        ; attention_backward.py:241:26
	v_cmp_ge_i32_e64 s13, v88, v147
	v_cmp_ge_i32_e64 s14, v87, v147
	v_cmp_ge_i32_e64 s15, v86, v147
	v_cmp_ge_i32_e64 s16, v85, v147
	.loc	1 242 26                        ; attention_backward.py:242:26
	v_cmp_le_i32_e64 s17, v88, v148
	v_cmp_le_i32_e64 s18, v87, v148
	v_cmp_le_i32_e64 s19, v86, v148
	v_cmp_le_i32_e64 s20, v85, v148
	.loc	1 242 17 is_stmt 0              ; attention_backward.py:242:17
	s_and_b32 s38, vcc_lo, s9
	s_and_b32 s3, s3, s10
	s_and_b32 s9, s13, s17
	s_and_b32 s10, s14, s18
	s_and_b32 vcc_lo, s2, s3
	.loc	1 198 28 is_stmt 1              ; attention_backward.py:198:28
	s_waitcnt vmcnt(0)
	ds_store_b64 v55, v[35:36]
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 214 33                        ; attention_backward.py:214:33
	s_clause 0x7
	buffer_load_u16 v63, v40, s[40:43], 0 offen
	buffer_load_u16 v64, v39, s[40:43], 0 offen
	buffer_load_u16 v78, v38, s[40:43], 0 offen
	buffer_load_u16 v79, v37, s[40:43], 0 offen
	buffer_load_u16 v62, v62, s[40:43], 0 offen
	buffer_load_u16 v61, v61, s[40:43], 0 offen
	buffer_load_u16 v80, v60, s[40:43], 0 offen
	buffer_load_u16 v81, v59, s[40:43], 0 offen
	.loc	1 204 29                        ; attention_backward.py:204:29
	v_mov_b32_e32 v40, v33
	.loc	1 195 27                        ; attention_backward.py:195:27
	v_or_b32_e32 v59, s35, v131
	v_or_b32_e32 v60, s35, v1
	.loc	1 204 29                        ; attention_backward.py:204:29
	v_mov_b32_e32 v35, v33
	v_mov_b32_e32 v36, v33
	v_mov_b32_e32 v37, v33
	v_mov_b32_e32 v38, v33
	v_mov_b32_e32 v39, v33
	v_mov_b32_e32 v77, v40
	v_dual_mov_b32 v73, v36 :: v_dual_mov_b32 v72, v35
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_dual_mov_b32 v75, v38 :: v_dual_mov_b32 v74, v37
	v_dual_mov_b32 v76, v39 :: v_dual_mov_b32 v71, v34
	v_mov_b32_e32 v70, v33
	.loc	1 241 26                        ; attention_backward.py:241:26
	v_cmp_ge_i32_e64 s7, v60, v147
	v_cmp_ge_i32_e64 s8, v59, v147
	.loc	1 242 26                        ; attention_backward.py:242:26
	v_cmp_le_i32_e64 s11, v60, v148
	v_cmp_le_i32_e64 s12, v59, v148
	.loc	1 198 28                        ; attention_backward.py:198:28
	ds_load_b64 v[34:35], v89
	ds_load_b64 v[36:37], v56
	ds_load_b64 v[38:39], v57
	ds_load_b64 v[59:60], v58
	.loc	1 194 9                         ; attention_backward.py:194:9
	s_add_i32 s35, s35, 16
	.loc	1 242 17                        ; attention_backward.py:242:17
	s_and_b32 s7, s7, s11
	s_and_b32 s8, s8, s12
	s_and_b32 s11, s15, s19
	s_and_b32 s12, s16, s20
	s_and_b32 s3, s2, s7
	s_and_b32 s7, s2, s8
	s_and_b32 s8, s2, s9
	s_and_b32 s9, s2, s10
	s_and_b32 s10, s2, s11
	s_and_b32 s11, s2, s12
	s_and_b32 s12, s2, s38
	.loc	1 194 9                         ; attention_backward.py:194:9
	s_cmp_lt_i32 s35, s91
	.loc	1 204 29                        ; attention_backward.py:204:29
	s_waitcnt lgkmcnt(3)
	v_wmma_i32_16x16x16_iu4 v[70:77], v[34:35], v[2:3], v[70:77] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(2)
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[70:77], v[36:37], v[126:127], v[70:77] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu4 v[70:77], v[38:39], v[124:125], v[70:77] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[70:77], v[59:60], v[166:167], v[70:77] neg_lo:[1,1,0]
	.loc	1 223 21                        ; attention_backward.py:223:21
	v_cvt_f32_i32_e32 v34, v70
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cvt_f32_i32_e32 v35, v71
	v_cvt_f32_i32_e32 v37, v73
	s_delay_alu instid0(VALU_DEP_4)
	v_cvt_f32_i32_e32 v36, v72
	v_cvt_f32_i32_e32 v38, v74
	v_cvt_f32_i32_e32 v39, v75
	v_cvt_f32_i32_e32 v40, v76
	v_cvt_f32_i32_e32 v59, v77
	v_mul_f32_e32 v37, v54, v37
	v_dual_mul_f32 v35, v52, v35 :: v_dual_mul_f32 v34, v149, v34
	v_dual_mul_f32 v36, v53, v36 :: v_dual_mul_f32 v39, v52, v39
	s_delay_alu instid0(VALU_DEP_4)
	v_dual_mul_f32 v59, v54, v59 :: v_dual_mul_f32 v40, v53, v40
	v_mul_f32_e32 v38, v149, v38
	.loc	1 214 33                        ; attention_backward.py:214:33
	s_waitcnt vmcnt(7)
	v_lshlrev_b32_e32 v60, 16, v63
	s_waitcnt vmcnt(6)
	v_lshlrev_b32_e32 v63, 16, v64
	s_waitcnt vmcnt(5)
	v_lshlrev_b32_e32 v64, 16, v78
	s_waitcnt vmcnt(4)
	v_lshlrev_b32_e32 v70, 16, v79
	s_waitcnt vmcnt(3)
	v_lshlrev_b32_e32 v62, 16, v62
	s_waitcnt vmcnt(2)
	v_lshlrev_b32_e32 v61, 16, v61
	s_waitcnt vmcnt(1)
	v_lshlrev_b32_e32 v71, 16, v80
	.loc	1 223 21                        ; attention_backward.py:223:21
	s_waitcnt vmcnt(0)
	v_dual_mul_f32 v37, v37, v60 :: v_dual_lshlrev_b32 v72, 16, v81
	v_dual_mul_f32 v35, v35, v64 :: v_dual_mul_f32 v34, v34, v70
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_mul_f32_e32 v39, v39, v71
	v_dual_mul_f32 v36, v36, v63 :: v_dual_mul_f32 v59, v59, v62
	.loc	1 257 22                        ; attention_backward.py:257:22
	v_cndmask_b32_e64 v37, 0xff800000, v37, s12
	.loc	1 223 21                        ; attention_backward.py:223:21
	v_mul_f32_e32 v40, v40, v61
	.loc	1 257 22                        ; attention_backward.py:257:22
	v_cndmask_b32_e64 v35, 0xff800000, v35, s3
	.loc	1 223 21                        ; attention_backward.py:223:21
	v_mul_f32_e32 v38, v38, v72
	.loc	1 257 22                        ; attention_backward.py:257:22
	v_cndmask_b32_e64 v60, 0xff800000, v34, s7
	v_cndmask_b32_e64 v59, 0xff800000, v59, s8
	v_cndmask_b32_e64 v39, 0xff800000, v39, s10
	v_cndmask_b32_e32 v36, 0xff800000, v36, vcc_lo
	v_cndmask_b32_e64 v38, 0xff800000, v38, s11
	v_cndmask_b32_e64 v40, 0xff800000, v40, s9
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp64:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention_backward.py:258:25 ] ]
	v_max3_f32 v34, v60, v35, v36
	v_max3_f32 v61, v37, v38, v39
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_max_f32_e32 v62, v40, v59
	v_max3_f32 v34, v34, v61, v62
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp65:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention_backward.py:258:25 ]
	v_permlanex16_b32 v61, v34, s34, 0xfedcba98 op_sel:[1,0]
.Ltmp66:
	.loc	1 259 20                        ; attention_backward.py:259:20
	v_max3_f32 v34, v82, v34, v61
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 261 58                        ; attention_backward.py:261:58
	v_sub_f32_e32 v35, v35, v34
	v_sub_f32_e32 v37, v37, v34
	v_sub_f32_e32 v39, v39, v34
	v_sub_f32_e32 v36, v36, v34
	v_sub_f32_e32 v59, v59, v34
	.loc	1 261 45 is_stmt 0              ; attention_backward.py:261:45
	v_exp_f32_e32 v35, v35
	v_exp_f32_e32 v37, v37
	v_exp_f32_e32 v39, v39
	v_exp_f32_e32 v36, v36
	v_exp_f32_e32 v59, v59
	.loc	1 261 29                        ; attention_backward.py:261:29
	v_cndmask_b32_e64 v35, 0, v35, s3
	.loc	1 261 58                        ; attention_backward.py:261:58
	v_sub_f32_e32 v38, v38, v34
	.loc	1 261 29                        ; attention_backward.py:261:29
	v_cndmask_b32_e64 v37, 0, v37, s12
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_3)
	v_cndmask_b32_e32 v36, 0, v36, vcc_lo
	v_cndmask_b32_e64 v39, 0, v39, s10
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_3) | instid1(TRANS32_DEP_1)
	v_cndmask_b32_e64 v59, 0, v59, s8
	.loc	1 261 45                        ; attention_backward.py:261:45
	v_exp_f32_e32 v38, v38
	.loc	1 260 21 is_stmt 1              ; attention_backward.py:260:21
	v_cmp_neq_f32_e32 vcc_lo, 0xff800000, v82
.Ltmp67:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:262:33 ] ]
	v_add_f32_e32 v36, v36, v37
.Ltmp68:
	.loc	1 261 29                        ; attention_backward.py:261:29
	v_cndmask_b32_e64 v38, 0, v38, s11
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 261 58 is_stmt 0              ; attention_backward.py:261:58
	v_dual_sub_f32 v60, v60, v34 :: v_dual_add_f32 v37, v38, v39
	.loc	1 261 45                        ; attention_backward.py:261:45
	v_exp_f32_e32 v60, v60
	.loc	1 260 70 is_stmt 1              ; attention_backward.py:260:70
	v_sub_f32_e32 v39, v82, v34
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 261 29                        ; attention_backward.py:261:29
	v_cndmask_b32_e64 v60, 0, v60, s7
.Ltmp69:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:262:33 ] ]
	v_add_f32_e32 v35, v60, v35
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp70:
	.loc	1 261 58                        ; attention_backward.py:261:58
	v_dual_sub_f32 v40, v40, v34 :: v_dual_add_f32 v35, v35, v36
	.loc	1 261 45 is_stmt 0              ; attention_backward.py:261:45
	v_exp_f32_e32 v40, v40
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 261 29                        ; attention_backward.py:261:29
	v_cndmask_b32_e64 v40, 0, v40, s9
.Ltmp71:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:262:33 ] ]
	v_add_f32_e32 v38, v40, v59
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add_f32_e32 v36, v37, v38
.Ltmp72:
	.loc	1 260 57                        ; attention_backward.py:260:57
	v_exp_f32_e32 v37, v39
	v_dual_mov_b32 v38, v50 :: v_dual_add_f32 v35, v35, v36
	s_delay_alu instid0(VALU_DEP_1)
.Ltmp73:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:262:33 ]
	v_permlanex16_b32 v36, v35, s34, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(TRANS32_DEP_1) | instid1(VALU_DEP_1)
.Ltmp74:
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
	v_dual_mov_b32 v34, 0xff800000 :: v_dual_mov_b32 v29, v122
	v_mov_b32_e32 v50, 0
.LBB0_4:                                ; %Flow143
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 264 43 is_stmt 1              ; attention_backward.py:264:43
	v_cmp_gt_f32_e32 vcc_lo, 0x800000, v50
	s_load_b32 s92, s[0:1], 0x74
.Ltmp75:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_dual_add_f32 v71, v42, v46 :: v_dual_and_b32 v36, 31, v0
.Ltmp76:
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
.Ltmp77:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_dual_add_f32 v72, v43, v47 :: v_dual_add_f32 v73, v44, v48
.Ltmp78:
	.loc	1 266 9                         ; attention_backward.py:266:9
	s_and_b32 s69, s69, 0xffff
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 264 43                        ; attention_backward.py:264:43
	v_log_f32_e32 v35, v35
	v_mov_b32_e32 v40, 0
	s_mov_b32 s71, 0x31027000
	s_mov_b32 s70, 0x7ffffffe
	.loc	1 267 9                         ; attention_backward.py:267:9
	s_and_b32 s37, s37, 0xffff
	s_mov_b32 s38, s70
	s_mov_b32 s39, s71
	v_lshrrev_b32_e32 v1, 4, v0
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 264 43                        ; attention_backward.py:264:43
	v_dual_sub_f32 v33, v35, v33 :: v_dual_and_b32 v70, 24, v0
	v_dual_mov_b32 v38, v40 :: v_dual_add_nc_u32 v75, 0, v41
.Ltmp79:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_dual_add_f32 v74, v45, v49 :: v_dual_mov_b32 v39, v40
.Ltmp80:
	.loc	1 264 37                        ; attention_backward.py:264:37
	v_add_f32_e32 v33, v34, v33
	.loc	1 266 9                         ; attention_backward.py:266:9
	v_lshl_add_u32 v34, v66, 1, v37
	v_mov_b32_e32 v37, v40
	v_mov_b32_e32 v35, v40
	v_mov_b32_e32 v48, v40
	.loc	1 264 17                        ; attention_backward.py:264:17
	v_cndmask_b32_e64 v151, 0, v33, s0
	.loc	1 266 9                         ; attention_backward.py:266:9
	v_lshl_add_u32 v33, v36, 2, 0
	.loc	1 267 9                         ; attention_backward.py:267:9
	v_lshrrev_b32_e32 v42, 1, v70
	v_mov_b32_e32 v47, v40
	v_mov_b32_e32 v46, v40
	.loc	1 266 9                         ; attention_backward.py:266:9
	ds_store_b32 v34, v151
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b32 v41, v33
	.loc	1 124 21                        ; attention_backward.py:124:21
	v_or_b32_e32 v33, s21, v36
	.loc	1 266 18                        ; attention_backward.py:266:18
	v_or_b32_e32 v34, s22, v36
	.loc	1 267 9                         ; attention_backward.py:267:9
	v_add3_u32 v42, 0, v68, v42
	v_mov_b32_e32 v45, v40
	v_mov_b32_e32 v44, v40
	.loc	1 128 21                        ; attention_backward.py:128:21
	v_cmp_gt_i32_e64 s0, 0x800, v33
	.loc	1 266 9                         ; attention_backward.py:266:9
	v_add_lshl_u32 v33, v34, s21, 2
	v_mov_b32_e32 v34, v40
	v_mov_b32_e32 v43, v40
	v_mov_b32_e32 v56, v40
	s_and_b32 vcc_lo, vcc_lo, s0
	v_dual_mov_b32 v36, v40 :: v_dual_cndmask_b32 v57, 0x80000000, v33
	v_mov_b32_e32 v33, v40
	v_mov_b32_e32 v55, v40
	v_mov_b32_e32 v54, v40
	v_mov_b32_e32 v53, v40
	v_mov_b32_e32 v52, v40
	v_mov_b32_e32 v51, v40
	s_waitcnt lgkmcnt(0)
	buffer_store_b32 v41, v57, s[68:71], 0 offen
	.loc	1 267 9                         ; attention_backward.py:267:9
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v75, v[71:74]
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b32 v58, v42
	v_mov_b32_e32 v42, v40
	v_mov_b32_e32 v41, v40
	v_mov_b32_e32 v50, v40
	v_mov_b32_e32 v49, v40
	v_mov_b32_e32 v64, v40
	v_mov_b32_e32 v63, v40
	v_mov_b32_e32 v62, v40
	v_mov_b32_e32 v61, v40
	v_mov_b32_e32 v60, v40
	v_mov_b32_e32 v59, v40
	.loc	1 270 9                         ; attention_backward.py:270:9
	s_and_not1_b32 vcc_lo, exec_lo, s33
	.loc	1 267 9                         ; attention_backward.py:267:9
	s_waitcnt lgkmcnt(0)
	buffer_store_b32 v58, v57, s[36:39], 0 offen
	v_mov_b32_e32 v58, v40
	v_mov_b32_e32 v57, v40
	.loc	1 396 43                        ; attention_backward.py:396:43
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v75, v[71:74]
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_cbranch_vccnz .LBB0_8
; %bb.5:                                ; %.lr.ph143
	.loc	1 0 43 is_stmt 0                ; attention_backward.py:0:43
	v_dual_mov_b32 v42, 0x7632 :: v_dual_and_b32 v33, 8, v0
	.loc	1 396 43                        ; attention_backward.py:396:43
	v_lshrrev_b32_e32 v39, 2, v66
	.loc	1 168 40 is_stmt 1              ; attention_backward.py:168:40
	v_lshlrev_b32_e32 v34, 4, v67
	v_and_b32_e32 v35, 12, v0
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 396 43                        ; attention_backward.py:396:43
	v_lshrrev_b32_e32 v33, 1, v33
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v1, off offset:76
	scratch_store_b32 off, v113, off offset:72
	v_and_b32_e32 v36, 48, v0
	v_bfe_i32 v38, v0, 3, 1
	v_lshlrev_b32_e32 v37, 1, v35
	v_add_nc_u32_e32 v33, 0, v33
	v_cndmask_b32_e64 v42, 0x3276, v42, s5
	v_lshl_or_b32 v44, v70, 6, v68
	v_mov_b32_e32 v49, 0
	v_lshl_or_b32 v1, v65, 5, v37
	v_add3_u32 v33, v33, v39, v68
	v_lshl_or_b32 v42, v42, 8, v42
	s_and_b32 s75, s75, 0xffff
	s_and_b32 s25, s25, 0xffff
	v_xor_b32_e32 v39, 8, v1
	ds_load_b32 v153, v33
	v_mov_b32_e32 v33, 0x5410
	.loc	1 310 21                        ; attention_backward.py:310:21
	v_cmp_gt_i32_e32 vcc_lo, s92, v34
	scratch_store_b32 off, v1, off offset:32 ; 4-byte Folded Spill
	v_xor_b32_e32 v41, 24, v1
	.loc	1 349 30                        ; attention_backward.py:349:30
	s_lshl_b32 s93, s23, 10
	v_cndmask_b32_e64 v33, 0x1054, v33, s5
	.loc	1 371 21                        ; attention_backward.py:371:21
	s_lshl_b32 s94, s23, 7
	s_and_b32 s77, s77, 0xffff
	s_and_b32 s85, s27, 0xffff
	s_mov_b32 s68, s74
	v_lshl_or_b32 v33, v33, 8, v33
	s_mov_b32 s69, s75
	s_mov_b32 s72, s24
	s_mov_b32 s73, s25
	s_mov_b32 s74, s70
	v_and_b32_e32 v33, 0x540054, v33
	s_mov_b32 s75, s71
	s_mov_b32 s78, s70
	s_mov_b32 s79, s71
	s_mov_b32 s84, s26
	v_lshl_or_b32 v33, v33, 4, v33
	s_mov_b32 s86, s70
	s_mov_b32 s87, s71
	s_mov_b32 s95, 0x76543210
	.loc	1 270 9                         ; attention_backward.py:270:9
	s_clause 0x1                            ; 32-byte Folded Spill
	scratch_store_b128 off, v[154:157], off
	scratch_store_b128 off, v[158:161], off offset:16
	v_and_b32_e32 v146, 0x5040504, v33
	v_lshlrev_b32_e32 v33, 5, v0
	v_lshl_add_u32 v0, v65, 1, 0
	v_mov_b32_e32 v65, 0
	v_lshrrev_b32_e32 v40, 1, v36
	v_lshlrev_b32_e32 v45, 9, v67
	v_lshlrev_b32_e32 v43, 1, v70
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_4) | instid1(VALU_DEP_4)
	v_dual_mov_b32 v57, 0 :: v_dual_mov_b32 v58, v65
	v_dual_mov_b32 v52, v65 :: v_dual_lshlrev_b32 v35, 5, v35
	v_xor_b32_e32 v37, v69, v40
	v_xor_b32_e32 v40, 16, v1
	v_mov_b32_e32 v50, v65
	v_or3_b32 v1, v35, v45, v34
	v_and_b32_e32 v34, 0x420, v38
	v_lshl_or_b32 v35, v36, 3, v68
	v_dual_mov_b32 v59, v65 :: v_dual_and_b32 v36, 0x760076, v42
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_xor_b32_e32 v42, 16, v1
	v_mov_b32_e32 v46, v65
	v_xor_b32_e32 v12, v35, v34
	s_delay_alu instid0(VALU_DEP_4)
	v_lshl_or_b32 v34, v36, 4, v36
	v_xor_b32_e32 v35, 32, v1
	scratch_store_b32 off, v1, off offset:36 ; 4-byte Folded Spill
	v_xor_b32_e32 v36, 48, v1
	v_add_nc_u32_e32 v1, 0, v37
	scratch_store_b32 off, v12, off offset:40 ; 4-byte Folded Spill
	v_lshl_add_u32 v38, v66, 2, 0
	v_mov_b32_e32 v64, v65
	v_xor_b32_e32 v43, v44, v43
	scratch_store_b32 off, v1, off offset:44 ; 4-byte Folded Spill
	v_dual_mov_b32 v48, v65 :: v_dual_add_nc_u32 v1, 0, v39
	v_xor_b32_e32 v44, 0x210, v12
	v_dual_mov_b32 v56, v65 :: v_dual_and_b32 v19, 0x7060706, v34
	scratch_store_b32 off, v1, off offset:48 ; 4-byte Folded Spill
	v_dual_mov_b32 v34, v65 :: v_dual_add_nc_u32 v1, 0, v40
	v_dual_mov_b32 v40, v65 :: v_dual_add_nc_u32 v165, 0, v36
	v_mov_b32_e32 v36, v65
	scratch_store_b32 off, v1, off offset:52 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v1, 0, v41
	v_add_nc_u32_e32 v163, 0, v42
	v_dual_mov_b32 v63, v65 :: v_dual_add_nc_u32 v164, 0, v35
	v_mov_b32_e32 v60, v65
	scratch_store_b32 off, v1, off offset:56 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v1, v38, v43
	v_mov_b32_e32 v61, v65
	v_mov_b32_e32 v62, v65
	v_mov_b32_e32 v51, v65
	v_mov_b32_e32 v53, v65
	scratch_store_b32 off, v1, off offset:60 ; 4-byte Folded Spill
	v_dual_mov_b32 v54, v65 :: v_dual_add_nc_u32 v1, 0, v44
	v_mov_b32_e32 v55, v65
	v_dual_mov_b32 v41, 0 :: v_dual_mov_b32 v42, v65
	scratch_store_b32 off, v1, off offset:64 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v1, 0, v33
	v_mov_b32_e32 v43, v65
	v_mov_b32_e32 v44, v65
	v_mov_b32_e32 v45, v65
	v_mov_b32_e32 v47, v65
	v_mov_b32_e32 v33, 0
	v_mov_b32_e32 v35, v65
	v_mov_b32_e32 v37, v65
	v_mov_b32_e32 v38, v65
	v_mov_b32_e32 v39, v65
	scratch_store_b32 off, v1, off offset:68 ; 4-byte Folded Spill
.LBB0_6:                                ; =>This Inner Loop Header: Depth=1
	.loc	1 274 28                        ; attention_backward.py:274:28
	scratch_load_b32 v1, off, off offset:32 ; 4-byte Folded Reload
	.loc	1 280 29                        ; attention_backward.py:280:29
	v_dual_mov_b32 v67, v65 :: v_dual_add_nc_u32 v88, s90, v117
	.loc	1 347 36                        ; attention_backward.py:347:36
	s_lshr_b32 s0, s90, 1
	.loc	1 376 24                        ; attention_backward.py:376:24
	s_lshr_b32 s1, s90, 4
	.loc	1 351 21                        ; attention_backward.py:351:21
	s_add_i32 s0, s0, s93
	.loc	1 374 21                        ; attention_backward.py:374:21
	s_add_i32 s1, s1, s94
	.loc	1 351 21                        ; attention_backward.py:351:21
	v_mad_u64_u32 v[73:74], null, s0, s83, v[130:131]
	.loc	1 275 21                        ; attention_backward.py:275:21
	v_mad_u64_u32 v[74:75], null, v88, s82, v[128:129]
	.loc	1 374 21                        ; attention_backward.py:374:21
	s_mul_i32 s0, s1, s83
	.loc	1 280 29                        ; attention_backward.py:280:29
	v_dual_mov_b32 v68, v65 :: v_dual_lshlrev_b32 v89, 1, v88
	.loc	1 373 36                        ; attention_backward.py:373:36
	v_add_lshl_u32 v97, s0, v114, 1
	.loc	1 350 32                        ; attention_backward.py:350:32
	v_cndmask_b32_e64 v73, 0x80000000, v73, s6
	.loc	1 290 33                        ; attention_backward.py:290:33
	v_add_lshl_u32 v77, v118, s90, 1
	.loc	1 274 28                        ; attention_backward.py:274:28
	v_cndmask_b32_e64 v74, 0x80000000, v74, s4
	.loc	1 290 33                        ; attention_backward.py:290:33
	v_add_lshl_u32 v78, v119, s90, 1
	.loc	1 373 36                        ; attention_backward.py:373:36
	v_cndmask_b32_e64 v97, 0x80000000, v97, s6
	.loc	1 290 33                        ; attention_backward.py:290:33
	v_add_lshl_u32 v79, v152, s90, 1
	v_add_lshl_u32 v80, v121, s90, 1
	.loc	1 274 28                        ; attention_backward.py:274:28
	buffer_load_b64 v[101:102], v74, s[68:71], 0 offen
	.loc	1 290 33                        ; attention_backward.py:290:33
	v_add_lshl_u32 v81, v129, s90, 1
	v_add_lshl_u32 v82, v132, s90, 1
	v_add_lshl_u32 v83, v23, s90, 1
	v_add_lshl_u32 v84, v29, s90, 1
	.loc	1 280 29                        ; attention_backward.py:280:29
	v_dual_mov_b32 v70, v65 :: v_dual_mov_b32 v161, v143
	v_dual_mov_b32 v72, v65 :: v_dual_mov_b32 v157, v139
	v_dual_mov_b32 v28, v128 :: v_dual_mov_b32 v159, v141
	v_dual_mov_b32 v160, v142 :: v_dual_mov_b32 v155, v137
	v_mov_b32_e32 v158, v140
	v_mov_b32_e32 v156, v138
	v_mov_b32_e32 v154, v136
	v_dual_mov_b32 v138, v176 :: v_dual_mov_b32 v145, v183
	v_dual_mov_b32 v140, v178 :: v_dual_mov_b32 v31, v23
	v_dual_mov_b32 v20, v200 :: v_dual_mov_b32 v25, v205
	v_dual_mov_b32 v24, v204 :: v_dual_mov_b32 v17, v114
	v_mov_b32_e32 v139, v177
	v_dual_mov_b32 v141, v179 :: v_dual_mov_b32 v142, v180
	v_mov_b32_e32 v21, v201
	v_dual_mov_b32 v143, v181 :: v_dual_mov_b32 v144, v182
	v_dual_mov_b32 v23, v203 :: v_dual_mov_b32 v30, v117
	.loc	1 274 28                        ; attention_backward.py:274:28
	v_mov_b16_e32 v87.h, 0
	v_dual_mov_b32 v22, v202 :: v_dual_mov_b32 v27, v207
	v_mov_b32_e32 v26, v206
	.loc	1 307 37                        ; attention_backward.py:307:37
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 309 31                        ; attention_backward.py:309:31
	v_mov_b16_e32 v90.h, v87.h
	.loc	1 362 30                        ; attention_backward.py:362:30
	v_mov_b16_e32 v88.h, v87.h
	.loc	1 309 31                        ; attention_backward.py:309:31
	v_mov_b16_e32 v94.h, v87.h
	.loc	1 362 30                        ; attention_backward.py:362:30
	v_mov_b16_e32 v95.h, v87.h
	v_mov_b16_e32 v93.h, v87.h
	v_mov_b16_e32 v75.h, v87.h
	v_mov_b16_e32 v92.h, v87.h
	.loc	1 309 31                        ; attention_backward.py:309:31
	v_mov_b16_e64 v182.h, v87.h
	v_mov_b16_e32 v96.h, v87.h
	v_mov_b16_e32 v91.h, v87.h
	v_mov_b16_e32 v107.h, v87.h
	v_mov_b16_e32 v106.h, v87.h
	v_mov_b16_e64 v203.h, v87.h
	.loc	1 280 29                        ; attention_backward.py:280:29
	v_mov_b32_e32 v69, v65
	v_mov_b32_e32 v66, v65
	v_dual_mov_b32 v71, v65 :: v_dual_mov_b32 v18, v119
	v_mov_b32_e32 v16, v251
	v_dual_mov_b32 v32, v118 :: v_dual_mov_b32 v123, v3
	v_mov_b32_e32 v120, v129
	v_mov_b32_e32 v122, v2
	.loc	1 274 28                        ; attention_backward.py:274:28
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v76, 0, v1
	.loc	1 393 17                        ; attention_backward.py:393:17
	scratch_load_b32 v1, off, off offset:36 ; 4-byte Folded Reload
	.loc	1 304 28                        ; attention_backward.py:304:28
	s_waitcnt vmcnt(1)
	v_and_b16 v75.l, v101.h, 15
	.loc	1 304 27 is_stmt 0              ; attention_backward.py:304:27
	v_bfe_u32 v117, v101, 8, 4
	.loc	1 274 28 is_stmt 1              ; attention_backward.py:274:28
	v_lshrrev_b32_e32 v105, 8, v102
	.loc	1 304 27                        ; attention_backward.py:304:27
	v_bfe_u32 v174, v102, 8, 4
	.loc	1 274 28                        ; attention_backward.py:274:28
	v_lshrrev_b32_e32 v192, 24, v102
	.loc	1 306 36                        ; attention_backward.py:306:36
	v_cmp_lt_u16_e64 s0, 7, v75.l
	.loc	1 304 27                        ; attention_backward.py:304:27
	v_bfe_u32 v175, v102, 24, 4
	.loc	1 274 28                        ; attention_backward.py:274:28
	v_mov_b16_e32 v90.l, v102.h
	.loc	1 306 50                        ; attention_backward.py:306:50
	v_or_b32_e32 v181, -16, v174
	.loc	1 274 28                        ; attention_backward.py:274:28
	v_mov_b16_e32 v88.l, v101.h
	v_bfe_i32 v176, v102, 0, 8
	.loc	1 306 50                        ; attention_backward.py:306:50
	v_or_b32_e32 v183, -16, v175
	.loc	1 274 28                        ; attention_backward.py:274:28
	v_bfe_i32 v188, v90, 0, 8
	.loc	1 304 27                        ; attention_backward.py:304:27
	v_and_b32_e32 v177, 15, v101
	.loc	1 274 28                        ; attention_backward.py:274:28
	v_bfe_i32 v186, v88, 0, 8
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 306 50                        ; attention_backward.py:306:50
	v_or_b32_e32 v185, -16, v177
	.loc	1 393 17                        ; attention_backward.py:393:17
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v85, 0, v1
	.loc	1 382 31                        ; attention_backward.py:382:31
	scratch_load_b32 v1, off, off offset:40 ; 4-byte Folded Reload
	.loc	1 274 28                        ; attention_backward.py:274:28
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 382 31                        ; attention_backward.py:382:31
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v86, 0, v1
	.loc	1 274 28                        ; attention_backward.py:274:28
	scratch_load_b32 v1, off, off offset:44 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_store_b64 v1, v[101:102]
	s_waitcnt lgkmcnt(0)
	s_barrier
	scratch_load_b32 v1, off, off offset:48 ; 4-byte Folded Reload
	ds_load_b64 v[103:104], v76
	.loc	1 373 36                        ; attention_backward.py:373:36
	buffer_load_b128 v[97:100], v97, s[84:87], 0 offen
	.loc	1 350 32                        ; attention_backward.py:350:32
	buffer_load_b64 v[108:109], v73, s[76:79], 0 offen
	.loc	1 290 33                        ; attention_backward.py:290:33
	s_clause 0x8
	buffer_load_u16 v116, v89, s[72:75], 0 offen
	buffer_load_u16 v173, v77, s[72:75], 0 offen
	buffer_load_u16 v172, v78, s[72:75], 0 offen
	buffer_load_u16 v171, v79, s[72:75], 0 offen
	buffer_load_u16 v170, v80, s[72:75], 0 offen
	buffer_load_u16 v169, v81, s[72:75], 0 offen
	buffer_load_u16 v168, v82, s[72:75], 0 offen
	buffer_load_u16 v74, v83, s[72:75], 0 offen
	buffer_load_u16 v73, v84, s[72:75], 0 offen
	.loc	1 304 27                        ; attention_backward.py:304:27
	v_bfe_u32 v80, v101, 16, 4
	.loc	1 274 28                        ; attention_backward.py:274:28
	v_lshrrev_b32_e32 v83, 8, v101
	v_lshrrev_b64 v[78:79], 24, v[101:102]
	v_bfe_i32 v79, v101, 0, 8
	.loc	1 305 30                        ; attention_backward.py:305:30
	v_lshrrev_b16 v77.l, 4, v101.l
	.loc	1 306 50                        ; attention_backward.py:306:50
	v_or_b32_e32 v178, -16, v80
	.loc	1 304 28                        ; attention_backward.py:304:28
	v_and_b16 v77.h, v101.l, 15
	.loc	1 305 30                        ; attention_backward.py:305:30
	v_lshrrev_b16 v84.h, 4, v83.l
	.loc	1 307 37                        ; attention_backward.py:307:37
	v_mov_b16_e32 v75.l, v79.l
	.loc	1 306 50                        ; attention_backward.py:306:50
	v_or_b32_e32 v79, -16, v117
	.loc	1 306 27 is_stmt 0              ; attention_backward.py:306:27
	v_cndmask_b32_e64 v80, v80, v178, s0
	.loc	1 305 30 is_stmt 1              ; attention_backward.py:305:30
	v_and_b16 v87.l, v77.l, 15
	.loc	1 304 28                        ; attention_backward.py:304:28
	v_and_b16 v77.l, v192.l, 15
	.loc	1 306 36                        ; attention_backward.py:306:36
	v_cmp_lt_u16_e64 s5, 7, v77.h
	.loc	1 274 28                        ; attention_backward.py:274:28
	v_bfe_i32 v190, v78, 0, 8
	.loc	1 305 30                        ; attention_backward.py:305:30
	v_lshrrev_b16 v90.l, 4, v78.l
	.loc	1 304 28                        ; attention_backward.py:304:28
	v_and_b16 v77.h, v78.l, 15
	.loc	1 307 52                        ; attention_backward.py:307:52
	v_or_b32_e32 v78, -16, v87
	.loc	1 307 37 is_stmt 0              ; attention_backward.py:307:37
	v_cmp_gt_i16_e64 s7, 0, v75.l
	.loc	1 274 28 is_stmt 1              ; attention_backward.py:274:28
	v_alignbit_b32 v89, v102, v101, 24
	.loc	1 304 27                        ; attention_backward.py:304:27
	v_and_b32_e32 v81, 15, v102
	v_bfe_u32 v82, v102, 16, 4
	.loc	1 305 28                        ; attention_backward.py:305:28
	v_bfe_u32 v101, v101, 20, 4
	.loc	1 307 37                        ; attention_backward.py:307:37
	v_mov_b16_e64 v75.l, v186.l
	.loc	1 311 21                        ; attention_backward.py:311:21
	v_cvt_f32_i32_e32 v191, v80
	.loc	1 306 50                        ; attention_backward.py:306:50
	v_or_b32_e32 v179, -16, v81
	v_or_b32_e32 v180, -16, v82
	.loc	1 307 52                        ; attention_backward.py:307:52
	v_or_b32_e32 v187, -16, v101
	.loc	1 305 30                        ; attention_backward.py:305:30
	v_lshrrev_b16 v84.l, 4, v102.l
	.loc	1 307 37                        ; attention_backward.py:307:37
	v_mov_b16_e64 v107.l, v190.l
	.loc	1 350 32                        ; attention_backward.py:350:32
	s_waitcnt vmcnt(9)
	v_mov_b16_e32 v94.l, v108.h
	.loc	1 290 33                        ; attention_backward.py:290:33
	s_waitcnt vmcnt(8)
	v_lshlrev_b32_e32 v207, 16, v116
	.loc	1 360 76                        ; attention_backward.py:360:76
	v_and_b16 v88.l, v109.h, 15
	v_and_b16 v92.l, v109.l, 15
	.loc	1 350 32                        ; attention_backward.py:350:32
	v_lshrrev_b32_e32 v116, 24, v109
	.loc	1 361 29                        ; attention_backward.py:361:29
	v_bfe_u32 v208, v109, 24, 4
	.loc	1 350 32                        ; attention_backward.py:350:32
	v_lshrrev_b32_e32 v209, 8, v109
	.loc	1 274 28                        ; attention_backward.py:274:28
	ds_load_b64 v[110:111], v1
	scratch_load_b32 v1, off, off offset:52 ; 4-byte Folded Reload
	.loc	1 304 28                        ; attention_backward.py:304:28
	v_and_b16 v76.l, v102.l, 15
	v_and_b16 v76.h, v102.h, 15
	.loc	1 305 28                        ; attention_backward.py:305:28
	v_bfe_u32 v102, v102, 20, 4
	.loc	1 361 29                        ; attention_backward.py:361:29
	v_bfe_u32 v210, v109, 8, 4
	.loc	1 350 32                        ; attention_backward.py:350:32
	v_bfe_i32 v211, v109, 0, 8
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
	v_cndmask_b32_e64 v81, v81, v179, s1
	.loc	1 306 36 is_stmt 0              ; attention_backward.py:306:36
	v_cmp_lt_u16_e64 s0, 7, v76.l
	.loc	1 306 27                        ; attention_backward.py:306:27
	v_cndmask_b32_e64 v82, v82, v180, s3
	.loc	1 307 37 is_stmt 1              ; attention_backward.py:307:37
	v_mov_b16_e64 v76.l, v188.l
	v_mov_b16_e32 v91.l, v83.l
	.loc	1 311 21                        ; attention_backward.py:311:21
	v_cvt_f32_i32_e32 v193, v81
	.loc	1 306 27                        ; attention_backward.py:306:27
	v_cndmask_b32_e64 v79, v117, v79, s0
	.loc	1 306 36 is_stmt 0              ; attention_backward.py:306:36
	v_cmp_lt_u16_e64 s0, 7, v76.h
	.loc	1 311 21 is_stmt 1              ; attention_backward.py:311:21
	v_cvt_f32_i32_e32 v194, v82
	.loc	1 307 52                        ; attention_backward.py:307:52
	v_or_b32_e32 v189, -16, v102
	.loc	1 362 32                        ; attention_backward.py:362:32
	v_lshrrev_b16 v93.l, 4, v109.l
	.loc	1 311 21                        ; attention_backward.py:311:21
	v_cvt_f32_i32_e32 v199, v79
	.loc	1 306 27                        ; attention_backward.py:306:27
	v_cndmask_b32_e64 v83, v174, v181, s0
	.loc	1 306 36 is_stmt 0              ; attention_backward.py:306:36
	v_cmp_lt_u16_e64 s0, 7, v77.l
	.loc	1 306 27                        ; attention_backward.py:306:27
	v_cndmask_b32_e64 v174, v177, v185, s5
	.loc	1 350 32 is_stmt 1              ; attention_backward.py:350:32
	v_mov_b16_e32 v95.l, v109.h
	.loc	1 362 30                        ; attention_backward.py:362:30
	v_bfe_u32 v212, v109, 20, 4
	.loc	1 311 21                        ; attention_backward.py:311:21
	v_cvt_f32_i32_e32 v200, v83
	.loc	1 306 27                        ; attention_backward.py:306:27
	v_cndmask_b32_e64 v117, v175, v183, s0
	.loc	1 307 28                        ; attention_backward.py:307:28
	v_cndmask_b32_e64 v175, v87, v78, s7
	.loc	1 306 36                        ; attention_backward.py:306:36
	v_cmp_lt_u16_e64 s0, 7, v77.h
	.loc	1 360 76                        ; attention_backward.py:360:76
	v_and_b16 v87.l, v108.h, 15
	.loc	1 311 21                        ; attention_backward.py:311:21
	v_cvt_f32_i32_e32 v201, v174
	v_cvt_f32_i32_e32 v117, v117
	v_cvt_f32_i32_e32 v202, v175
	.loc	1 350 32                        ; attention_backward.py:350:32
	v_bfe_i32 v217, v94, 0, 8
	.loc	1 363 38                        ; attention_backward.py:363:38
	v_cmp_lt_u16_e64 s1, 7, v87.l
	v_cmp_lt_u16_e64 s3, 7, v88.l
	v_cmp_lt_u16_e64 s5, 7, v92.l
	.loc	1 311 21                        ; attention_backward.py:311:21
	v_mul_f32_e32 v202, v202, v207
	.loc	1 360 76                        ; attention_backward.py:360:76
	v_and_b16 v92.l, v116.l, 15
	v_and_b16 v94.l, v209.l, 15
	.loc	1 350 32                        ; attention_backward.py:350:32
	v_bfe_i32 v223, v209, 0, 8
	.loc	1 363 54                        ; attention_backward.py:363:54
	v_or_b32_e32 v220, -16, v208
	.loc	1 309 31                        ; attention_backward.py:309:31
	v_cndmask_b32_e32 v202, 0, v202, vcc_lo
	.loc	1 311 21                        ; attention_backward.py:311:21
	v_dual_mul_f32 v199, v199, v207 :: v_dual_and_b32 v184, 15, v89
	.loc	1 307 37                        ; attention_backward.py:307:37
	v_mov_b16_e64 v89.l, v176.l
	.loc	1 274 28                        ; attention_backward.py:274:28
	v_bfe_i32 v176, v192, 0, 8
	.loc	1 311 21                        ; attention_backward.py:311:21
	v_mul_f32_e32 v191, v191, v207
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 306 50                        ; attention_backward.py:306:50
	v_or_b32_e32 v178, -16, v184
	.loc	1 305 30                        ; attention_backward.py:305:30
	v_lshrrev_b16 v89.h, 4, v105.l
	.loc	1 274 28                        ; attention_backward.py:274:28
	v_bfe_i32 v105, v105, 0, 8
	.loc	1 307 37                        ; attention_backward.py:307:37
	v_mov_b16_e64 v106.l, v176.l
	.loc	1 362 32                        ; attention_backward.py:362:32
	v_lshrrev_b16 v105.h, 4, v108.l
	.loc	1 306 27                        ; attention_backward.py:306:27
	v_cndmask_b32_e64 v176, v184, v178, s0
	.loc	1 307 37                        ; attention_backward.py:307:37
	v_cmp_gt_i16_e64 s0, 0, v75.l
	.loc	1 360 76                        ; attention_backward.py:360:76
	v_and_b16 v75.l, v108.l, 15
	.loc	1 311 21                        ; attention_backward.py:311:21
	v_mul_f32_e32 v193, v193, v207
	.loc	1 364 39                        ; attention_backward.py:364:39
	v_mov_b16_e64 v96.l, v211.l
	.loc	1 311 21                        ; attention_backward.py:311:21
	v_cvt_f32_i32_e32 v204, v176
	.loc	1 307 28                        ; attention_backward.py:307:28
	v_cndmask_b32_e64 v101, v101, v187, s0
	.loc	1 307 37 is_stmt 0              ; attention_backward.py:307:37
	v_cmp_gt_i16_e64 s0, 0, v76.l
	.loc	1 280 29 is_stmt 1              ; attention_backward.py:280:29
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu4 v[76:83], v[103:104], v[2:3], v[65:72] neg_lo:[1,1,0]
	.loc	1 311 21                        ; attention_backward.py:311:21
	v_mul_f32_e32 v204, v204, v207
	v_cvt_f32_i32_e32 v205, v101
	.loc	1 307 28                        ; attention_backward.py:307:28
	v_cndmask_b32_e64 v102, v102, v189, s0
	.loc	1 280 29                        ; attention_backward.py:280:29
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[76:83], v[110:111], v[126:127], v[76:83] neg_lo:[1,1,0]
	.loc	1 361 29                        ; attention_backward.py:361:29
	v_bfe_u32 v110, v108, 16, 4
	v_bfe_u32 v111, v108, 8, 4
	.loc	1 363 38                        ; attention_backward.py:363:38
	v_cmp_lt_u16_e64 s0, 7, v75.l
	.loc	1 311 21                        ; attention_backward.py:311:21
	v_dual_mul_f32 v117, v117, v207 :: v_dual_cndmask_b32 v204, 0, v204
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 363 54                        ; attention_backward.py:363:54
	v_or_b32_e32 v213, -16, v110
	v_or_b32_e32 v215, -16, v111
	.loc	1 311 21                        ; attention_backward.py:311:21
	v_cvt_f32_i32_e32 v206, v102
	s_delay_alu instid0(VALU_DEP_4)
	v_dual_mul_f32 v200, v200, v207 :: v_dual_cndmask_b32 v225, 0, v117
	.loc	1 350 32                        ; attention_backward.py:350:32
	v_bfe_i32 v211, v95, 0, 8
	v_bfe_i32 v222, v116, 0, 8
	.loc	1 362 32                        ; attention_backward.py:362:32
	v_lshrrev_b16 v95.l, 4, v116.l
	.loc	1 311 21                        ; attention_backward.py:311:21
	v_mul_f32_e32 v116, v201, v207
	v_dual_mul_f32 v201, v205, v207 :: v_dual_cndmask_b32 v200, 0, v200
	.loc	1 363 29                        ; attention_backward.py:363:29
	v_cndmask_b32_e64 v110, v110, v213, s1
	.loc	1 363 54 is_stmt 0              ; attention_backward.py:363:54
	v_or_b32_e32 v221, -16, v210
	.loc	1 362 32 is_stmt 1              ; attention_backward.py:362:32
	v_and_b16 v93.l, v93.l, 15
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	.loc	1 309 31                        ; attention_backward.py:309:31
	v_dual_cndmask_b32 v201, 0, v201 :: v_dual_mul_f32 v194, v194, v207
	.loc	1 364 56                        ; attention_backward.py:364:56
	v_or_b32_e32 v224, -16, v212
	.loc	1 309 31                        ; attention_backward.py:309:31
	v_cmp_o_f32_e64 s10, v204, v204
	v_cmp_o_f32_e64 s13, v200, v200
	v_cmp_o_f32_e64 s7, v201, v201
	v_cmp_o_f32_e64 s15, v225, v225
	.loc	1 274 28                        ; attention_backward.py:274:28
	s_waitcnt vmcnt(0)
	ds_load_b64 v[112:113], v1
	scratch_load_b32 v1, off, off offset:56 ; 4-byte Folded Reload
	.loc	1 280 29                        ; attention_backward.py:280:29
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[76:83], v[112:113], v[124:125], v[76:83] neg_lo:[1,1,0]
	.loc	1 350 32                        ; attention_backward.py:350:32
	v_alignbit_b32 v112, v109, v108, 24
	.loc	1 362 30                        ; attention_backward.py:362:30
	v_bfe_u32 v113, v108, 20, 4
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 361 29                        ; attention_backward.py:361:29
	v_and_b32_e32 v216, 15, v112
	.loc	1 364 56                        ; attention_backward.py:364:56
	v_or_b32_e32 v218, -16, v113
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 363 54                        ; attention_backward.py:363:54
	v_or_b32_e32 v213, -16, v216
	.loc	1 274 28                        ; attention_backward.py:274:28
	s_waitcnt vmcnt(0)
	ds_load_b64 v[114:115], v1
	.loc	1 393 17                        ; attention_backward.py:393:17
	s_waitcnt lgkmcnt(0)
	s_barrier
	scratch_load_b32 v1, off, off offset:60 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_store_b128 v1, v[97:100]
	ds_store_b128 v1, v[97:100] offset:256
	.loc	1 361 29                        ; attention_backward.py:361:29
	v_and_b32_e32 v100, 15, v108
	.loc	1 350 32                        ; attention_backward.py:350:32
	v_lshrrev_b32_e32 v97, 8, v108
	v_lshrrev_b64 v[98:99], 24, v[108:109]
	.loc	1 280 29                        ; attention_backward.py:280:29
	v_wmma_i32_16x16x16_iu4 v[76:83], v[114:115], v[166:167], v[76:83] neg_lo:[1,1,0]
	.loc	1 350 32                        ; attention_backward.py:350:32
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
	.loc	1 350 32                        ; attention_backward.py:350:32
	v_bfe_i32 v112, v97, 0, 8
	.loc	1 364 39                        ; attention_backward.py:364:39
	v_mov_b16_e32 v108.l, v99.l
	.loc	1 363 54                        ; attention_backward.py:363:54
	v_or_b32_e32 v99, -16, v114
	v_or_b32_e32 v219, -16, v115
	.loc	1 362 32                        ; attention_backward.py:362:32
	v_lshrrev_b16 v97.l, 4, v209.l
	.loc	1 360 76                        ; attention_backward.py:360:76
	v_and_b16 v97.h, v98.l, 15
	.loc	1 363 29                        ; attention_backward.py:363:29
	v_cndmask_b32_e64 v209, v100, v109, s0
	.loc	1 363 38 is_stmt 0              ; attention_backward.py:363:38
	v_cmp_lt_u16_e64 s0, 7, v75.l
	.loc	1 362 32 is_stmt 1              ; attention_backward.py:362:32
	v_and_b16 v88.l, v87.l, 15
	.loc	1 364 39                        ; attention_backward.py:364:39
	v_mov_b16_e32 v87.l, v112.l
	v_mov_b16_e64 v100.l, v217.l
	.loc	1 363 29                        ; attention_backward.py:363:29
	v_cndmask_b32_e64 v112, v115, v219, s5
	v_cndmask_b32_e64 v115, v114, v99, s3
	v_cndmask_b32_e64 v111, v111, v215, s0
	.loc	1 363 38 is_stmt 0              ; attention_backward.py:363:38
	v_cmp_lt_u16_e64 s0, 7, v92.l
	v_cmp_lt_u16_e64 s1, 7, v97.h
	.loc	1 382 31 is_stmt 1              ; attention_backward.py:382:31
	v_cvt_f32_i32_e32 v99, v110
	v_cvt_f32_i32_e32 v110, v112
	v_cvt_f32_i32_e32 v112, v115
	.loc	1 363 29                        ; attention_backward.py:363:29
	v_cndmask_b32_e64 v117, v208, v220, s0
	.loc	1 363 38 is_stmt 0              ; attention_backward.py:363:38
	v_cmp_lt_u16_e64 s0, 7, v94.l
	.loc	1 364 39 is_stmt 1              ; attention_backward.py:364:39
	v_mov_b16_e64 v94.l, v211.l
	.loc	1 309 31                        ; attention_backward.py:309:31
	v_cndmask_b32_e32 v211, 0, v116, vcc_lo
	.loc	1 311 21                        ; attention_backward.py:311:21
	v_dual_mul_f32 v205, v206, v207 :: v_dual_cndmask_b32 v194, 0, v194
	.loc	1 350 32                        ; attention_backward.py:350:32
	v_bfe_i32 v206, v98, 0, 8
	.loc	1 363 29                        ; attention_backward.py:363:29
	v_cndmask_b32_e64 v115, v216, v213, s1
	.loc	1 364 39                        ; attention_backward.py:364:39
	v_cmp_gt_i16_e64 s1, 0, v100.l
	.loc	1 309 31                        ; attention_backward.py:309:31
	v_cndmask_b32_e32 v217, 0, v193, vcc_lo
	.loc	1 363 29                        ; attention_backward.py:363:29
	v_cndmask_b32_e64 v193, v210, v221, s0
	.loc	1 364 56                        ; attention_backward.py:364:56
	v_or_b32_e32 v208, -16, v93
	.loc	1 364 39 is_stmt 0              ; attention_backward.py:364:39
	v_cmp_gt_i16_e64 s0, 0, v96.l
	v_mov_b16_e64 v96.l, v222.l
	v_mov_b16_e64 v109.l, v223.l
	v_mov_b16_e64 v114.l, v206.l
	.loc	1 364 30                        ; attention_backward.py:364:30
	v_cndmask_b32_e64 v206, v113, v218, s1
	.loc	1 364 39                        ; attention_backward.py:364:39
	v_cmp_gt_i16_e64 s1, 0, v94.l
	.loc	1 299 21 is_stmt 1              ; attention_backward.py:299:21
	v_cvt_f32_i32_e32 v214, v76
	v_cvt_f32_i32_e32 v244, v77
	v_cvt_f32_i32_e32 v245, v78
	v_cvt_f32_i32_e32 v246, v79
	v_cvt_f32_i32_e32 v247, v80
	v_cvt_f32_i32_e32 v248, v81
	v_cvt_f32_i32_e32 v249, v82
	v_cvt_f32_i32_e32 v250, v83
	.loc	1 393 17                        ; attention_backward.py:393:17
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 373 36                        ; attention_backward.py:373:36
	ds_load_b128 v[76:79], v85
	ds_load_b128 v[101:104], v85 offset:64
	ds_load_b128 v[80:83], v163
	ds_load_b128 v[183:186], v163 offset:64
	ds_load_b128 v[174:177], v164
	ds_load_b128 v[187:190], v164 offset:64
	ds_load_b128 v[178:181], v165
	ds_load_b128 v[195:198], v165 offset:64
	.loc	1 362 32                        ; attention_backward.py:362:32
	v_lshrrev_b16 v98.l, 4, v98.l
	.loc	1 364 56                        ; attention_backward.py:364:56
	v_or_b32_e32 v210, -16, v95
	.loc	1 309 31                        ; attention_backward.py:309:31
	v_cndmask_b32_e32 v205, 0, v205, vcc_lo
	.loc	1 382 31                        ; attention_backward.py:382:31
	v_cvt_f32_i32_e32 v113, v117
	.loc	1 364 30                        ; attention_backward.py:364:30
	v_cndmask_b32_e64 v117, v93, v208, s0
	.loc	1 364 39 is_stmt 0              ; attention_backward.py:364:39
	v_cmp_gt_i16_e64 s0, 0, v109.l
	.loc	1 364 30                        ; attention_backward.py:364:30
	v_cndmask_b32_e64 v109, v212, v224, s1
	.loc	1 364 39                        ; attention_backward.py:364:39
	v_cmp_gt_i16_e64 s1, 0, v96.l
	.loc	1 362 32 is_stmt 1              ; attention_backward.py:362:32
	v_and_b16 v92.l, v97.l, 15
	v_and_b16 v75.l, v98.l, 15
	.loc	1 364 39                        ; attention_backward.py:364:39
	v_cmp_gt_i16_e64 s3, 0, v87.l
	.loc	1 309 31                        ; attention_backward.py:309:31
	v_mov_b16_e64 v87.l, v202.h
	.loc	1 364 30                        ; attention_backward.py:364:30
	v_cndmask_b32_e64 v95, v95, v210, s1
	.loc	1 309 31                        ; attention_backward.py:309:31
	v_mov_b16_e64 v182.l, v205.h
	.loc	1 382 31                        ; attention_backward.py:382:31
	v_cvt_f32_i32_e32 v97, v209
	v_cvt_f32_i32_e32 v98, v111
	v_cvt_f32_i32_e32 v111, v193
	.loc	1 364 56                        ; attention_backward.py:364:56
	v_or_b32_e32 v193, -16, v92
	.loc	1 309 31                        ; attention_backward.py:309:31
	v_mov_b16_e64 v94.l, v211.h
	.loc	1 364 56                        ; attention_backward.py:364:56
	v_or_b32_e32 v208, -16, v75
	.loc	1 364 39 is_stmt 0              ; attention_backward.py:364:39
	v_cmp_gt_i16_e64 s16, 0, v114.l
	.loc	1 309 31 is_stmt 1              ; attention_backward.py:309:31
	v_and_b32_e32 v209, 1, v87
	.loc	1 305 30                        ; attention_backward.py:305:30
	v_and_b16 v87.l, v84.h, 15
	.loc	1 382 31                        ; attention_backward.py:382:31
	v_cvt_f32_i32_e32 v114, v117
	v_cvt_f32_i32_e32 v117, v95
	.loc	1 309 31                        ; attention_backward.py:309:31
	v_and_b32_e32 v95, 1, v182
	.loc	1 373 36                        ; attention_backward.py:373:36
	s_waitcnt lgkmcnt(7)
	v_lshlrev_b32_e32 v182, 16, v76
	.loc	1 309 31                        ; attention_backward.py:309:31
	v_dual_cndmask_b32 v199, 0, v199 :: v_dual_and_b32 v76, 0xffff0000, v76
	v_and_b32_e32 v94, 1, v94
	.loc	1 382 31                        ; attention_backward.py:382:31
	v_cvt_f32_i32_e32 v100, v115
	.loc	1 364 30                        ; attention_backward.py:364:30
	v_cndmask_b32_e64 v115, v92, v193, s0
	.loc	1 373 36                        ; attention_backward.py:373:36
	s_waitcnt lgkmcnt(5)
	v_lshlrev_b32_e32 v255, 16, v80
	.loc	1 364 30                        ; attention_backward.py:364:30
	v_cndmask_b32_e64 v2, v75, v208, s16
	.loc	1 307 52                        ; attention_backward.py:307:52
	v_or_b32_e32 v3, -16, v87
	.loc	1 307 37 is_stmt 0              ; attention_backward.py:307:37
	v_cmp_gt_i16_e64 s0, 0, v91.l
	.loc	1 309 31 is_stmt 1              ; attention_backward.py:309:31
	v_mov_b16_e64 v96.l, v201.h
	v_cndmask_b32_e32 v191, 0, v191, vcc_lo
	v_add3_u32 v4, v211, v94, 0x7fff
	.loc	1 382 31                        ; attention_backward.py:382:31
	v_cvt_f32_i32_e32 v94, v2
	.loc	1 307 28                        ; attention_backward.py:307:28
	v_cndmask_b32_e64 v2, v87, v3, s0
	.loc	1 309 31                        ; attention_backward.py:309:31
	v_mov_b16_e64 v87.l, v199.h
	v_cmp_o_f32_e64 s1, v211, v211
	v_and_b32_e32 v96, 1, v96
	v_cmp_o_f32_e64 s5, v202, v202
	.loc	1 311 21                        ; attention_backward.py:311:21
	v_cvt_f32_i32_e32 v2, v2
	.loc	1 309 31                        ; attention_backward.py:309:31
	v_and_b32_e32 v3, 1, v87
	v_mov_b16_e64 v87.l, v191.h
	.loc	1 373 36                        ; attention_backward.py:373:36
	v_lshlrev_b32_e32 v215, 16, v77
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 311 21                        ; attention_backward.py:311:21
	v_dual_mul_f32 v2, v2, v207 :: v_dual_lshlrev_b32 v129, 16, v81
	.loc	1 373 36                        ; attention_backward.py:373:36
	v_and_b32_e32 v119, 0xffff0000, v81
	.loc	1 309 31                        ; attention_backward.py:309:31
	v_add3_u32 v5, v202, v209, 0x7fff
	v_cndmask_b16 v81.l, 0x7fff, v4.h, s1
	v_and_b32_e32 v4, 1, v87
	.loc	1 305 30                        ; attention_backward.py:305:30
	v_and_b16 v87.l, v90.l, 15
	.loc	1 309 31                        ; attention_backward.py:309:31
	v_cmp_o_f32_e64 s8, v199, v199
	v_cndmask_b16 v81.h, 0x7fff, v5.h, s5
	v_add3_u32 v3, v199, v3, 0x7fff
	.loc	1 307 37                        ; attention_backward.py:307:37
	v_cmp_gt_i16_e64 s0, 0, v107.l
	.loc	1 307 52 is_stmt 0              ; attention_backward.py:307:52
	v_or_b32_e32 v5, -16, v87
	.loc	1 309 31 is_stmt 1              ; attention_backward.py:309:31
	v_cmp_o_f32_e64 s9, v191, v191
	.loc	1 373 36                        ; attention_backward.py:373:36
	v_lshlrev_b32_e32 v136, 16, v82
	v_and_b32_e32 v137, 0xffff0000, v82
	.loc	1 309 31                        ; attention_backward.py:309:31
	v_add3_u32 v4, v191, v4, 0x7fff
	v_cndmask_b16 v82.l, 0x7fff, v3.h, s8
	v_cndmask_b32_e32 v2, 0, v2, vcc_lo
	.loc	1 307 28                        ; attention_backward.py:307:28
	v_cndmask_b32_e64 v3, v87, v5, s0
	.loc	1 309 31                        ; attention_backward.py:309:31
	v_mov_b16_e64 v87.l, v204.h
	.loc	1 373 36                        ; attention_backward.py:373:36
	v_lshlrev_b32_e32 v251, 16, v78
	v_lshlrev_b32_e32 v118, 16, v83
	v_and_b32_e32 v1, 0xffff0000, v83
	.loc	1 309 31                        ; attention_backward.py:309:31
	v_add3_u32 v6, v201, v96, 0x7fff
	v_mov_b16_e32 v91.l, v2.h
	v_cndmask_b16 v83.l, 0x7fff, v4.h, s9
	v_and_b32_e32 v4, 1, v87
	.loc	1 305 30                        ; attention_backward.py:305:30
	v_and_b16 v87.l, v84.l, 15
	.loc	1 373 36                        ; attention_backward.py:373:36
	v_lshlrev_b32_e32 v162, 16, v79
	.loc	1 309 31                        ; attention_backward.py:309:31
	v_cndmask_b16 v83.h, 0x7fff, v6.h, s7
	v_and_b32_e32 v5, 1, v91
	.loc	1 311 21                        ; attention_backward.py:311:21
	v_cvt_f32_i32_e32 v3, v3
	.loc	1 307 52                        ; attention_backward.py:307:52
	v_or_b32_e32 v6, -16, v87
	.loc	1 307 37 is_stmt 0              ; attention_backward.py:307:37
	v_cmp_gt_i16_e64 s1, 0, v89.l
	.loc	1 373 36 is_stmt 1              ; attention_backward.py:373:36
	v_and_b32_e32 v216, 0xffff0000, v77
	.loc	1 309 31                        ; attention_backward.py:309:31
	v_cmp_o_f32_e64 s0, v2, v2
	v_add3_u32 v2, v2, v5, 0x7fff
	v_add3_u32 v4, v204, v4, 0x7fff
	.loc	1 311 21                        ; attention_backward.py:311:21
	v_mul_f32_e32 v3, v3, v207
	.loc	1 307 28                        ; attention_backward.py:307:28
	v_cndmask_b32_e64 v5, v87, v6, s1
	.loc	1 373 36                        ; attention_backward.py:373:36
	v_and_b32_e32 v128, 0xffff0000, v78
	.loc	1 309 31                        ; attention_backward.py:309:31
	v_mov_b16_e64 v87.l, v217.h
	v_cndmask_b16 v84.l, 0x7fff, v4.h, s10
	v_cndmask_b32_e32 v3, 0, v3, vcc_lo
	.loc	1 311 21                        ; attention_backward.py:311:21
	v_cvt_f32_i32_e32 v4, v5
	.loc	1 309 31                        ; attention_backward.py:309:31
	v_cndmask_b16 v82.h, 0x7fff, v2.h, s0
	.loc	1 307 37                        ; attention_backward.py:307:37
	v_cmp_gt_i16_e64 s1, 0, v105.l
	.loc	1 309 31                        ; attention_backward.py:309:31
	v_cmp_o_f32_e64 s12, v217, v217
	v_mov_b16_e32 v90.l, v3.h
	.loc	1 311 21                        ; attention_backward.py:311:21
	v_mul_f32_e32 v4, v4, v207
	.loc	1 309 31                        ; attention_backward.py:309:31
	v_and_b32_e32 v2, 1, v87
	.loc	1 305 30                        ; attention_backward.py:305:30
	v_and_b16 v87.l, v89.h, 15
	.loc	1 309 31                        ; attention_backward.py:309:31
	v_cmp_o_f32_e64 s0, v3, v3
	v_and_b32_e32 v6, 1, v90
	v_cndmask_b32_e32 v4, 0, v4, vcc_lo
	v_add3_u32 v2, v217, v2, 0x7fff
	.loc	1 307 52                        ; attention_backward.py:307:52
	v_or_b32_e32 v5, -16, v87
	.loc	1 309 31                        ; attention_backward.py:309:31
	v_cmp_o_f32_e64 s11, v205, v205
	v_add3_u32 v3, v3, v6, 0x7fff
	.loc	1 373 36                        ; attention_backward.py:373:36
	v_and_b32_e32 v254, 0xffff0000, v79
	.loc	1 309 31                        ; attention_backward.py:309:31
	v_cndmask_b16 v191.l, 0x7fff, v2.h, s12
	.loc	1 307 28                        ; attention_backward.py:307:28
	v_cndmask_b32_e64 v5, v87, v5, s1
	.loc	1 309 31                        ; attention_backward.py:309:31
	v_mov_b16_e64 v87.l, v200.h
	v_cndmask_b16 v84.h, 0x7fff, v3.h, s0
	v_add3_u32 v7, v205, v95, 0x7fff
	v_mov_b16_e32 v107.l, v4.h
	.loc	1 311 21                        ; attention_backward.py:311:21
	v_cvt_f32_i32_e32 v3, v5
	.loc	1 309 31                        ; attention_backward.py:309:31
	v_and_b32_e32 v2, 1, v87
	v_mov_b16_e64 v87.l, v194.h
	.loc	1 373 36                        ; attention_backward.py:373:36
	v_and_b32_e32 v150, 0xffff0000, v80
	.loc	1 309 31                        ; attention_backward.py:309:31
	v_cndmask_b16 v193.h, 0x7fff, v7.h, s11
	.loc	1 311 21                        ; attention_backward.py:311:21
	v_mul_f32_e32 v3, v3, v207
	.loc	1 309 31                        ; attention_backward.py:309:31
	v_add3_u32 v2, v200, v2, 0x7fff
	v_and_b32_e32 v5, 1, v87
	.loc	1 305 30                        ; attention_backward.py:305:30
	v_lshrrev_b16 v87.l, 4, v192.l
	.loc	1 307 37                        ; attention_backward.py:307:37
	v_cmp_gt_i16_e64 s1, 0, v106.l
	.loc	1 309 31                        ; attention_backward.py:309:31
	v_cmp_o_f32_e64 s14, v194, v194
	v_cndmask_b16 v192.l, 0x7fff, v2.h, s13
	v_cndmask_b32_e32 v2, 0, v3, vcc_lo
	.loc	1 307 52                        ; attention_backward.py:307:52
	v_or_b32_e32 v7, -16, v87
	.loc	1 309 31                        ; attention_backward.py:309:31
	v_and_b32_e32 v6, 1, v107
	v_add3_u32 v5, v194, v5, 0x7fff
	v_cmp_o_f32_e64 s0, v4, v4
	v_mov_b16_e32 v106.l, v2.h
	.loc	1 307 28                        ; attention_backward.py:307:28
	v_cndmask_b32_e64 v3, v87, v7, s1
	.loc	1 309 31                        ; attention_backward.py:309:31
	v_add3_u32 v4, v4, v6, 0x7fff
	v_cndmask_b16 v193.l, 0x7fff, v5.h, s14
	.loc	1 382 31                        ; attention_backward.py:382:31
	s_waitcnt lgkmcnt(0)
	.loc	1 309 31                        ; attention_backward.py:309:31
	v_and_b32_e32 v5, 1, v106
	.loc	1 311 21                        ; attention_backward.py:311:21
	v_cvt_f32_i32_e32 v3, v3
	.loc	1 309 31                        ; attention_backward.py:309:31
	v_cndmask_b16 v191.h, 0x7fff, v4.h, s0
	v_cmp_o_f32_e64 s0, v2, v2
	.loc	1 382 31                        ; attention_backward.py:382:31
	s_barrier
	.loc	1 309 31                        ; attention_backward.py:309:31
	v_add3_u32 v2, v2, v5, 0x7fff
	.loc	1 311 21                        ; attention_backward.py:311:21
	v_mul_f32_e32 v3, v3, v207
	.loc	1 309 31                        ; attention_backward.py:309:31
	v_mov_b16_e64 v87.l, v225.h
	.loc	1 364 56                        ; attention_backward.py:364:56
	v_or_b32_e32 v116, -16, v88
	.loc	1 364 39 is_stmt 0              ; attention_backward.py:364:39
	v_cmp_gt_i16_e64 s1, 0, v108.l
	.loc	1 309 31 is_stmt 1              ; attention_backward.py:309:31
	v_cndmask_b16 v192.h, 0x7fff, v2.h, s0
	v_cndmask_b32_e32 v2, 0, v3, vcc_lo
	scratch_load_b32 v3, off, off offset:64 ; 4-byte Folded Reload
	v_and_b32_e32 v4, 1, v87
	.loc	1 362 32                        ; attention_backward.py:362:32
	v_and_b16 v87.l, v105.h, 15
	.loc	1 364 30                        ; attention_backward.py:364:30
	v_cndmask_b32_e64 v88, v88, v116, s3
	.loc	1 382 31                        ; attention_backward.py:382:31
	v_cvt_f32_i32_e32 v93, v206
	v_cvt_f32_i32_e32 v116, v109
	v_cvt_f32_i32_e32 v115, v115
	.loc	1 364 56                        ; attention_backward.py:364:56
	v_or_b32_e32 v6, -16, v87
	.loc	1 382 31                        ; attention_backward.py:382:31
	v_cvt_f32_i32_e32 v92, v88
	ds_store_b128 v86, v[97:100]
	.loc	1 309 31                        ; attention_backward.py:309:31
	v_add3_u32 v4, v225, v4, 0x7fff
	v_mov_b16_e64 v203.l, v2.h
	.loc	1 364 30                        ; attention_backward.py:364:30
	v_cndmask_b32_e64 v5, v87, v6, s1
	.loc	1 309 31                        ; attention_backward.py:309:31
	v_cmp_o_f32_e64 s0, v2, v2
	.loc	1 373 36                        ; attention_backward.py:373:36
	v_and_b32_e32 v11, 0xffff0000, v179
	.loc	1 309 31                        ; attention_backward.py:309:31
	v_cndmask_b16 v194.l, 0x7fff, v4.h, s15
	.loc	1 373 36                        ; attention_backward.py:373:36
	v_and_b32_e32 v9, 0xffff0000, v178
	.loc	1 382 31                        ; attention_backward.py:382:31
	v_cvt_f32_i32_e32 v91, v5
	.loc	1 373 36                        ; attention_backward.py:373:36
	v_and_b32_e32 v5, 0xffff0000, v175
	v_and_b32_e32 v13, 0xffff0000, v180
	v_and_b32_e32 v15, 0xffff0000, v181
	v_and_b32_e32 v219, 0xffff0000, v102
	v_and_b32_e32 v217, 0xffff0000, v101
	.loc	1 382 31                        ; attention_backward.py:382:31
	s_waitcnt vmcnt(0)
	ds_store_b128 v3, v[91:94]
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[199:202], v85
	ds_load_b128 v[89:92], v85 offset:64
	ds_load_b128 v[206:209], v163
	ds_load_b128 v[77:80], v163 offset:64
	ds_load_b128 v[224:227], v164
	ds_load_b128 v[106:109], v164 offset:64
	ds_load_b128 v[228:231], v165
	ds_load_b128 v[93:96], v165 offset:64
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v86, v[110:113]
	ds_store_b128 v3, v[114:117]
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[210:213], v85
	ds_load_b128 v[97:100], v85 offset:64
	ds_load_b128 v[232:235], v163
	ds_load_b128 v[85:88], v163 offset:64
	ds_load_b128 v[236:239], v164
	ds_load_b128 v[114:117], v164 offset:64
	ds_load_b128 v[240:243], v165
	ds_load_b128 v[110:113], v165 offset:64
	.loc	1 309 31                        ; attention_backward.py:309:31
	s_waitcnt lgkmcnt(0)
	s_barrier
	scratch_load_b32 v12, off, off offset:68 ; 4-byte Folded Reload
	v_and_b32_e32 v3, 1, v203
	.loc	1 373 36                        ; attention_backward.py:373:36
	v_lshlrev_b32_e32 v10, 16, v179
	.loc	1 382 31                        ; attention_backward.py:382:31
	v_mul_f32_e32 v179, v199, v182
	.loc	1 373 36                        ; attention_backward.py:373:36
	v_and_b32_e32 v7, 0xffff0000, v176
	.loc	1 290 33                        ; attention_backward.py:290:33
	v_lshlrev_b32_e32 v172, 16, v172
	.loc	1 309 31                        ; attention_backward.py:309:31
	v_add3_u32 v2, v2, v3, 0x7fff
	.loc	1 373 36                        ; attention_backward.py:373:36
	v_and_b32_e32 v3, 0xffff0000, v174
	v_lshlrev_b32_e32 v6, 16, v176
	.loc	1 382 31                        ; attention_backward.py:382:31
	v_mul_f32_e32 v176, v201, v215
	.loc	1 373 36                        ; attention_backward.py:373:36
	v_lshlrev_b32_e32 v8, 16, v177
	.loc	1 309 31                        ; attention_backward.py:309:31
	v_cndmask_b16 v194.h, 0x7fff, v2.h, s0
	.loc	1 382 31                        ; attention_backward.py:382:31
	v_dual_mul_f32 v204, v208, v129 :: v_dual_and_b32 v221, 0xffff0000, v103
	.loc	1 290 33                        ; attention_backward.py:290:33
	v_lshlrev_b32_e32 v171, 16, v171
	v_lshlrev_b32_e32 v168, 16, v168
	.loc	1 382 31                        ; attention_backward.py:382:31
	v_dual_mul_f32 v199, v235, v1 :: v_dual_lshlrev_b32 v74, 16, v74
	.loc	1 373 36                        ; attention_backward.py:373:36
	v_lshlrev_b32_e32 v14, 16, v181
	.loc	1 382 31                        ; attention_backward.py:382:31
	v_mul_f32_e32 v181, v211, v128
	v_mul_f32_e32 v205, v207, v150
	v_mul_f32_e32 v203, v209, v119
	.loc	1 373 36                        ; attention_backward.py:373:36
	v_lshlrev_b32_e32 v75, 16, v183
	.loc	1 382 31                        ; attention_backward.py:382:31
	v_dual_mul_f32 v206, v206, v255 :: v_dual_and_b32 v223, 0xffff0000, v104
	v_mul_f32_e32 v209, v237, v7
	.loc	1 382 30 is_stmt 0              ; attention_backward.py:382:30
	v_cmp_o_f32_e64 s40, v204, v204
	.loc	1 382 31                        ; attention_backward.py:382:31
	v_mul_f32_e32 v201, v233, v137
	.loc	1 382 30                        ; attention_backward.py:382:30
	v_cmp_o_f32_e64 s41, v203, v203
	v_cmp_o_f32_e64 s45, v199, v199
	v_cmp_o_f32_e64 s38, v206, v206
	v_cmp_o_f32_e64 s39, v205, v205
	v_cmp_o_f32_e64 s43, v201, v201
	v_cmp_o_f32_e64 s29, v179, v179
	v_cmp_o_f32_e64 s31, v176, v176
	v_cmp_o_f32_e64 s35, v181, v181
	v_cmp_o_f32_e64 s51, v209, v209
	.loc	1 382 31                        ; attention_backward.py:382:31
	v_dual_mul_f32 v182, v210, v251 :: v_dual_mov_b32 v251, v16
	.loc	1 271 27 is_stmt 1              ; attention_backward.py:271:27
	v_or_b32_e32 v16, s90, v131
	.loc	1 382 31                        ; attention_backward.py:382:31
	v_mul_f32_e32 v208, v238, v8
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 382 30 is_stmt 0              ; attention_backward.py:382:30
	v_cmp_o_f32_e64 s34, v182, v182
	.loc	1 329 26 is_stmt 1              ; attention_backward.py:329:26
	v_cmp_ge_i32_e64 s0, v16, v147
	.loc	1 330 26                        ; attention_backward.py:330:26
	v_cmp_le_i32_e64 s1, v16, v148
	.loc	1 271 27                        ; attention_backward.py:271:27
	v_or_b32_e32 v16, 2, v131
	.loc	1 382 30                        ; attention_backward.py:382:30
	v_cmp_o_f32_e64 s52, v208, v208
	.loc	1 330 17                        ; attention_backward.py:330:17
	s_and_b32 s19, s0, s1
	.loc	1 271 27                        ; attention_backward.py:271:27
	v_or_b32_e32 v16, s90, v16
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	.loc	1 329 26                        ; attention_backward.py:329:26
	v_cmp_ge_i32_e64 s3, v16, v147
	.loc	1 330 26                        ; attention_backward.py:330:26
	v_cmp_le_i32_e64 s5, v16, v148
	.loc	1 271 27                        ; attention_backward.py:271:27
	v_or_b32_e32 v16, s90, v253
	.loc	1 330 17                        ; attention_backward.py:330:17
	s_and_b32 s0, s3, s5
	.loc	1 329 26                        ; attention_backward.py:329:26
	v_cmp_ge_i32_e64 s7, v16, v147
	.loc	1 330 26                        ; attention_backward.py:330:26
	v_cmp_le_i32_e64 s8, v16, v148
	.loc	1 271 27                        ; attention_backward.py:271:27
	v_or_b32_e32 v16, s90, v135
	.loc	1 330 17                        ; attention_backward.py:330:17
	s_and_b32 s0, s2, s0
	s_and_b32 s1, s7, s8
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	.loc	1 329 26                        ; attention_backward.py:329:26
	v_cmp_ge_i32_e64 s9, v16, v147
	.loc	1 330 26                        ; attention_backward.py:330:26
	v_cmp_le_i32_e64 s10, v16, v148
	.loc	1 271 27                        ; attention_backward.py:271:27
	v_or_b32_e32 v16, s90, v134
	.loc	1 330 17                        ; attention_backward.py:330:17
	s_and_b32 s1, s2, s1
	s_and_b32 s3, s9, s10
	.loc	1 329 26                        ; attention_backward.py:329:26
	v_cmp_ge_i32_e64 s11, v16, v147
	.loc	1 330 26                        ; attention_backward.py:330:26
	v_cmp_le_i32_e64 s12, v16, v148
	.loc	1 271 27                        ; attention_backward.py:271:27
	v_or_b32_e32 v16, s90, v251
	.loc	1 330 17                        ; attention_backward.py:330:17
	s_and_b32 s10, s2, s19
	s_and_b32 s3, s2, s3
	s_and_b32 s5, s11, s12
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	.loc	1 329 26                        ; attention_backward.py:329:26
	v_cmp_ge_i32_e64 s13, v16, v147
	.loc	1 330 26                        ; attention_backward.py:330:26
	v_cmp_le_i32_e64 s14, v16, v148
	.loc	1 271 27                        ; attention_backward.py:271:27
	v_or_b32_e32 v16, s90, v252
	.loc	1 330 17                        ; attention_backward.py:330:17
	s_and_b32 s5, s2, s5
	s_and_b32 s7, s13, s14
	.loc	1 329 26                        ; attention_backward.py:329:26
	v_cmp_ge_i32_e64 s15, v16, v147
	.loc	1 330 26                        ; attention_backward.py:330:26
	v_cmp_le_i32_e64 s16, v16, v148
	.loc	1 271 27                        ; attention_backward.py:271:27
	v_or_b32_e32 v16, s90, v133
	.loc	1 330 17                        ; attention_backward.py:330:17
	s_and_b32 s7, s2, s7
	.loc	1 270 9                         ; attention_backward.py:270:9
	s_add_i32 s90, s90, 16
	.loc	1 330 17                        ; attention_backward.py:330:17
	s_and_b32 s8, s15, s16
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(SALU_CYCLE_1)
	.loc	1 329 26                        ; attention_backward.py:329:26
	v_cmp_ge_i32_e64 s17, v16, v147
	.loc	1 330 26                        ; attention_backward.py:330:26
	v_cmp_le_i32_e64 s18, v16, v148
	.loc	1 299 21                        ; attention_backward.py:299:21
	v_mul_f32_e32 v16, v149, v214
	.loc	1 330 17                        ; attention_backward.py:330:17
	s_and_b32 s8, s2, s8
	s_and_b32 s9, s17, s18
	s_and_b32 s9, s2, s9
	.loc	1 270 9                         ; attention_backward.py:270:9
	s_cmp_lt_i32 s90, s91
	.loc	1 309 31                        ; attention_backward.py:309:31
	s_waitcnt vmcnt(0)
	ds_store_b128 v12, v[81:84]
	ds_store_b128 v12, v[191:194] offset:16
	.loc	1 373 36                        ; attention_backward.py:373:36
	v_and_b32_e32 v83, 0xffff0000, v177
	.loc	1 382 31                        ; attention_backward.py:382:31
	v_dual_mul_f32 v177, v200, v76 :: v_dual_lshlrev_b32 v76, 16, v173
	.loc	1 373 36                        ; attention_backward.py:373:36
	v_lshlrev_b32_e32 v12, 16, v180
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 382 31                        ; attention_backward.py:382:31
	v_dual_mul_f32 v82, v202, v216 :: v_dual_mul_f32 v207, v239, v83
	.loc	1 373 36                        ; attention_backward.py:373:36
	v_lshlrev_b32_e32 v216, 16, v101
	.loc	1 345 58                        ; attention_backward.py:345:58
	v_fma_f32 v16, v16, v76, -v151
	.loc	1 299 21                        ; attention_backward.py:299:21
	v_mul_f32_e32 v76, v149, v244
	.loc	1 382 31                        ; attention_backward.py:382:31
	v_dual_mul_f32 v211, v227, v5 :: v_dual_lshlrev_b32 v84, 16, v178
	v_dual_mul_f32 v5, v240, v12 :: v_dual_mul_f32 v178, v213, v254
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 345 58                        ; attention_backward.py:345:58
	v_fma_f32 v76, v76, v172, -v151
	.loc	1 299 21                        ; attention_backward.py:299:21
	v_dual_mul_f32 v172, v149, v245 :: v_dual_lshlrev_b32 v193, 16, v196
	.loc	1 382 31                        ; attention_backward.py:382:31
	v_dual_mul_f32 v213, v225, v3 :: v_dual_lshlrev_b32 v170, 16, v170
	.loc	1 345 45                        ; attention_backward.py:345:45
	v_exp_f32_e32 v1, v76
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	.loc	1 345 58 is_stmt 0              ; attention_backward.py:345:58
	v_fma_f32 v171, v172, v171, -v151
	.loc	1 299 21 is_stmt 1              ; attention_backward.py:299:21
	v_dual_mul_f32 v172, v149, v246 :: v_dual_lshlrev_b32 v169, 16, v169
	.loc	1 373 36                        ; attention_backward.py:373:36
	v_lshlrev_b32_e32 v218, 16, v102
	.loc	1 382 31                        ; attention_backward.py:382:31
	v_dual_mul_f32 v200, v234, v118 :: v_dual_and_b32 v81, 0xffff0000, v183
	.loc	1 345 58                        ; attention_backward.py:345:58
	v_fma_f32 v170, v172, v170, -v151
	.loc	1 299 21                        ; attention_backward.py:299:21
	v_mul_f32_e32 v172, v149, v247
	.loc	1 382 31                        ; attention_backward.py:382:31
	v_mul_f32_e32 v180, v212, v162
	v_mul_f32_e32 v202, v232, v136
	.loc	1 345 45                        ; attention_backward.py:345:45
	v_exp_f32_e32 v16, v16
	.loc	1 382 31                        ; attention_backward.py:382:31
	v_mul_f32_e32 v210, v236, v6
	.loc	1 345 58                        ; attention_backward.py:345:58
	v_fma_f32 v169, v172, v169, -v151
	.loc	1 299 21                        ; attention_backward.py:299:21
	v_mul_f32_e32 v172, v149, v248
	.loc	1 382 31                        ; attention_backward.py:382:31
	v_mul_f32_e32 v8, v243, v15
	v_mul_f32_e32 v6, v241, v13
	.loc	1 382 30 is_stmt 0              ; attention_backward.py:382:30
	v_cmp_o_f32_e64 s36, v180, v180
	.loc	1 345 45 is_stmt 1              ; attention_backward.py:345:45
	v_exp_f32_e32 v119, v169
	.loc	1 345 58 is_stmt 0              ; attention_backward.py:345:58
	v_fma_f32 v168, v172, v168, -v151
	.loc	1 299 21 is_stmt 1              ; attention_backward.py:299:21
	v_mul_f32_e32 v172, v149, v249
	.loc	1 382 31                        ; attention_backward.py:382:31
	v_dual_mul_f32 v12, v92, v219 :: v_dual_lshlrev_b32 v73, 16, v73
	.loc	1 345 29                        ; attention_backward.py:345:29
	v_cndmask_b32_e64 v169, 0, v1, s0
	.loc	1 382 31                        ; attention_backward.py:382:31
	v_mul_f32_e32 v1, v228, v84
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_4) | instid1(VALU_DEP_3)
	.loc	1 345 58                        ; attention_backward.py:345:58
	v_fma_f32 v74, v172, v74, -v151
	.loc	1 299 21                        ; attention_backward.py:299:21
	v_mul_f32_e32 v172, v149, v250
	.loc	1 382 31                        ; attention_backward.py:382:31
	v_dual_mul_f32 v3, v230, v10 :: v_dual_lshlrev_b32 v220, 16, v103
	v_mul_f32_e32 v7, v242, v14
	.loc	1 345 45                        ; attention_backward.py:345:45
	v_exp_f32_e32 v129, v168
	.loc	1 345 58 is_stmt 0              ; attention_backward.py:345:58
	v_fma_f32 v172, v172, v73, -v151
	.loc	1 391 32 is_stmt 1              ; attention_backward.py:391:32
	v_mov_b32_e32 v73, v72
	v_dual_mov_b32 v72, v71 :: v_dual_lshlrev_b32 v101, 16, v184
	v_mov_b32_e32 v71, v70
	v_dual_mov_b32 v70, v69 :: v_dual_lshlrev_b32 v103, 16, v185
	v_dual_mov_b32 v69, v68 :: v_dual_lshlrev_b32 v2, 16, v174
	v_dual_mov_b32 v68, v67 :: v_dual_lshlrev_b32 v105, 16, v186
	v_dual_mov_b32 v67, v66 :: v_dual_lshlrev_b32 v4, 16, v175
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 382 31                        ; attention_backward.py:382:31
	v_dual_mul_f32 v214, v224, v2 :: v_dual_lshlrev_b32 v183, 16, v187
	v_mul_f32_e32 v2, v229, v9
	v_mul_f32_e32 v9, v89, v216
	v_dual_mul_f32 v95, v95, v193 :: v_dual_lshlrev_b32 v222, 16, v104
	.loc	1 382 30 is_stmt 0              ; attention_backward.py:382:30
	v_bfe_u32 v193, v204, 16, 1
	.loc	1 382 31                        ; attention_backward.py:382:31
	v_dual_mul_f32 v13, v97, v220 :: v_dual_and_b32 v104, 0xffff0000, v185
	.loc	1 391 32 is_stmt 1              ; attention_backward.py:391:32
	v_dual_mov_b32 v66, v65 :: v_dual_and_b32 v215, 0xffff0000, v186
	.loc	1 373 36                        ; attention_backward.py:373:36
	v_lshlrev_b32_e32 v185, 16, v188
	.loc	1 382 31                        ; attention_backward.py:382:31
	v_dual_mul_f32 v97, v77, v75 :: v_dual_and_b32 v186, 0xffff0000, v188
	v_dual_mul_f32 v212, v226, v4 :: v_dual_lshlrev_b32 v191, 16, v195
	.loc	1 345 45                        ; attention_backward.py:345:45
	v_exp_f32_e32 v136, v172
	.loc	1 345 29 is_stmt 0              ; attention_backward.py:345:29
	v_cndmask_b32_e64 v172, 0, v119, s5
	.loc	1 382 31 is_stmt 1              ; attention_backward.py:382:31
	v_mul_f32_e32 v4, v231, v11
	v_dual_mul_f32 v11, v91, v218 :: v_dual_and_b32 v102, 0xffff0000, v184
	v_dual_mul_f32 v15, v99, v222 :: v_dual_and_b32 v184, 0xffff0000, v187
	v_mul_f32_e32 v119, v79, v101
	.loc	1 373 36                        ; attention_backward.py:373:36
	v_lshlrev_b32_e32 v187, 16, v189
	v_and_b32_e32 v188, 0xffff0000, v189
	v_lshlrev_b32_e32 v189, 16, v190
	.loc	1 382 31                        ; attention_backward.py:382:31
	v_dual_mul_f32 v107, v107, v184 :: v_dual_and_b32 v192, 0xffff0000, v195
	.loc	1 373 36                        ; attention_backward.py:373:36
	v_lshlrev_b32_e32 v195, 16, v197
	.loc	1 382 31                        ; attention_backward.py:382:31
	v_dual_mul_f32 v137, v86, v104 :: v_dual_and_b32 v190, 0xffff0000, v190
	.loc	1 382 30 is_stmt 0              ; attention_backward.py:382:30
	v_add3_u32 v193, v204, v193, 0x7fff
	v_bfe_u32 v204, v3, 16, 1
	.loc	1 382 31                        ; attention_backward.py:382:31
	v_mul_f32_e32 v116, v116, v189
	.loc	1 382 30                        ; attention_backward.py:382:30
	v_bfe_u32 v189, v180, 16, 1
	.loc	1 382 31                        ; attention_backward.py:382:31
	v_dual_mul_f32 v215, v88, v215 :: v_dual_and_b32 v194, 0xffff0000, v196
	v_dual_mul_f32 v109, v109, v186 :: v_dual_and_b32 v196, 0xffff0000, v197
	v_dual_mul_f32 v10, v90, v217 :: v_dual_lshlrev_b32 v197, 16, v198
	v_mul_f32_e32 v117, v117, v190
	.loc	1 382 30                        ; attention_backward.py:382:30
	v_bfe_u32 v190, v178, 16, 1
	v_cmp_o_f32_e64 s5, v3, v3
	v_add3_u32 v3, v3, v204, 0x7fff
	v_bfe_u32 v204, v119, 16, 1
	v_add3_u32 v180, v180, v189, 0x7fff
	v_bfe_u32 v189, v208, 16, 1
	.loc	1 345 29 is_stmt 1              ; attention_backward.py:345:29
	v_cndmask_b32_e64 v168, 0, v16, s10
	.loc	1 382 31                        ; attention_backward.py:382:31
	v_mul_f32_e32 v16, v100, v223
	v_mul_f32_e32 v112, v112, v197
	.loc	1 382 30 is_stmt 0              ; attention_backward.py:382:30
	v_cmp_o_f32_e64 s37, v178, v178
	v_bfe_u32 v197, v200, 16, 1
	v_add3_u32 v178, v178, v190, 0x7fff
	v_bfe_u32 v190, v207, 16, 1
	v_cmp_o_f32_e64 s22, v119, v119
	v_add3_u32 v119, v119, v204, 0x7fff
	v_add3_u32 v189, v208, v189, 0x7fff
	.loc	1 345 29 is_stmt 1              ; attention_backward.py:345:29
	v_cndmask_b32_e64 v173, 0, v129, s7
	.loc	1 382 31                        ; attention_backward.py:382:31
	v_mul_f32_e32 v129, v80, v102
	v_dual_mul_f32 v115, v115, v188 :: v_dual_and_b32 v198, 0xffff0000, v198
	v_mul_f32_e32 v150, v87, v105
	v_mul_f32_e32 v96, v96, v194
	.loc	1 382 30 is_stmt 0              ; attention_backward.py:382:30
	v_bfe_u32 v194, v203, 16, 1
	v_cmp_o_f32_e64 s44, v200, v200
	v_cmp_o_f32_e64 s0, v207, v207
	v_add3_u32 v197, v200, v197, 0x7fff
	v_bfe_u32 v200, v7, 16, 1
	v_add3_u32 v190, v207, v190, 0x7fff
	v_cndmask_b16 v189.l, 0x7fff, v119.h, s22
	v_mov_b32_e32 v119, v18
	v_bfe_u32 v207, v16, 16, 1
	.loc	1 345 45 is_stmt 1              ; attention_backward.py:345:45
	v_exp_f32_e32 v118, v170
	v_exp_f32_e32 v74, v74
	.loc	1 382 31                        ; attention_backward.py:382:31
	v_dual_mul_f32 v110, v110, v195 :: v_dual_mul_f32 v111, v111, v196
	v_mul_f32_e32 v113, v113, v198
	.loc	1 382 30 is_stmt 0              ; attention_backward.py:382:30
	v_bfe_u32 v195, v202, 16, 1
	v_bfe_u32 v196, v201, 16, 1
	v_bfe_u32 v198, v199, 16, 1
	v_add3_u32 v194, v203, v194, 0x7fff
	v_bfe_u32 v203, v4, 16, 1
	v_cmp_o_f32_e64 s10, v7, v7
	v_cmp_o_f32_e64 s19, v16, v16
	v_add3_u32 v7, v7, v200, 0x7fff
	v_bfe_u32 v200, v150, 16, 1
	v_add3_u32 v16, v16, v207, 0x7fff
	v_bfe_u32 v207, v117, 16, 1
	.loc	1 345 45 is_stmt 1              ; attention_backward.py:345:45
	v_exp_f32_e32 v76, v171
	.loc	1 345 29 is_stmt 0              ; attention_backward.py:345:29
	v_cndmask_b32_e64 v175, 0, v136, s9
	.loc	1 382 31 is_stmt 1              ; attention_backward.py:382:31
	v_mul_f32_e32 v136, v85, v103
	v_dual_mul_f32 v93, v93, v191 :: v_dual_mul_f32 v94, v94, v192
	.loc	1 382 30 is_stmt 0              ; attention_backward.py:382:30
	v_bfe_u32 v191, v206, 16, 1
	v_bfe_u32 v192, v205, 16, 1
	v_cmp_o_f32_e64 s42, v202, v202
	v_cmp_o_f32_e64 s7, v4, v4
	v_add3_u32 v195, v202, v195, 0x7fff
	v_bfe_u32 v202, v5, 16, 1
	v_add3_u32 v196, v201, v196, 0x7fff
	v_bfe_u32 v201, v6, 16, 1
	v_add3_u32 v198, v199, v198, 0x7fff
	v_bfe_u32 v199, v8, 16, 1
	v_add3_u32 v4, v4, v203, 0x7fff
	v_bfe_u32 v203, v129, 16, 1
	v_cmp_o_f32_e64 s26, v150, v150
	v_cmp_o_f32_e64 s59, v117, v117
	v_add3_u32 v150, v150, v200, 0x7fff
	v_bfe_u32 v200, v112, 16, 1
	v_add3_u32 v117, v117, v207, 0x7fff
	.loc	1 382 31                        ; attention_backward.py:382:31
	v_mul_f32_e32 v106, v106, v183
	.loc	1 382 30                        ; attention_backward.py:382:30
	v_bfe_u32 v183, v179, 16, 1
	.loc	1 345 29 is_stmt 1              ; attention_backward.py:345:29
	v_cndmask_b32_e64 v171, 0, v118, s3
	v_cndmask_b32_e64 v174, 0, v74, s8
	.loc	1 382 31                        ; attention_backward.py:382:31
	v_mul_f32_e32 v118, v78, v81
	.loc	1 382 30 is_stmt 0              ; attention_backward.py:382:30
	v_add3_u32 v191, v206, v191, 0x7fff
	v_bfe_u32 v206, v1, 16, 1
	v_add3_u32 v192, v205, v192, 0x7fff
	v_bfe_u32 v205, v2, 16, 1
	v_cmp_o_f32_e64 s8, v5, v5
	v_cmp_o_f32_e64 s9, v6, v6
	v_cmp_o_f32_e64 s11, v8, v8
	v_cmp_o_f32_e64 s23, v129, v129
	v_add3_u32 v5, v5, v202, 0x7fff
	v_add3_u32 v6, v6, v201, 0x7fff
	v_bfe_u32 v201, v137, 16, 1
	v_add3_u32 v8, v8, v199, 0x7fff
	v_bfe_u32 v199, v215, 16, 1
	v_add3_u32 v129, v129, v203, 0x7fff
	v_cmp_o_f32_e64 s66, v112, v112
	v_add3_u32 v200, v112, v200, 0x7fff
	v_cndmask_b16 v112.l, 0x7fff, v195.h, s42
	v_cndmask_b16 v195.h, 0x7fff, v117.h, s59
	v_mov_b32_e32 v117, v30
	v_bfe_u32 v202, v136, 16, 1
	.loc	1 382 31                        ; attention_backward.py:382:31
	v_mul_f32_e32 v108, v108, v185
	.loc	1 382 30                        ; attention_backward.py:382:30
	v_bfe_u32 v184, v177, 16, 1
	v_bfe_u32 v185, v176, 16, 1
	v_bfe_u32 v186, v82, 16, 1
	v_add3_u32 v179, v179, v183, 0x7fff
	.loc	1 345 29 is_stmt 1              ; attention_backward.py:345:29
	v_cndmask_b32_e64 v170, 0, v76, s1
	.loc	1 382 30                        ; attention_backward.py:382:30
	v_cmp_o_f32_e64 s1, v1, v1
	v_cmp_o_f32_e64 s3, v2, v2
	v_add3_u32 v1, v1, v206, 0x7fff
	v_bfe_u32 v206, v97, 16, 1
	v_add3_u32 v2, v2, v205, 0x7fff
	v_cmp_o_f32_e64 s24, v136, v136
	v_cmp_o_f32_e64 s25, v137, v137
	v_cmp_o_f32_e64 s27, v215, v215
	v_bfe_u32 v203, v96, 16, 1
	v_add3_u32 v136, v136, v202, 0x7fff
	v_bfe_u32 v202, v110, 16, 1
	v_add3_u32 v137, v137, v201, 0x7fff
	v_bfe_u32 v201, v111, 16, 1
	v_add3_u32 v199, v215, v199, 0x7fff
	v_bfe_u32 v215, v113, 16, 1
	v_cndmask_b16 v179.l, 0x7fff, v189.h, s52
	v_cndmask_b16 v189.h, 0x7fff, v129.h, s23
	v_mov_b32_e32 v129, v120
	v_bfe_u32 v205, v118, 16, 1
	v_cmp_o_f32_e64 s30, v177, v177
	v_cmp_o_f32_e64 s33, v82, v82
	v_bfe_u32 v183, v214, 16, 1
	v_add3_u32 v177, v177, v184, 0x7fff
	v_bfe_u32 v184, v213, 16, 1
	v_add3_u32 v176, v176, v185, 0x7fff
	v_bfe_u32 v185, v212, 16, 1
	v_add3_u32 v82, v82, v186, 0x7fff
	v_bfe_u32 v186, v211, 16, 1
	.loc	1 382 31 is_stmt 0              ; attention_backward.py:382:31
	v_mul_f32_e32 v114, v114, v187
	.loc	1 382 30                        ; attention_backward.py:382:30
	v_bfe_u32 v187, v182, 16, 1
	v_cmp_o_f32_e64 s20, v97, v97
	v_cmp_o_f32_e64 s21, v118, v118
	v_add3_u32 v97, v97, v206, 0x7fff
	v_bfe_u32 v206, v93, 16, 1
	v_add3_u32 v118, v118, v205, 0x7fff
	v_bfe_u32 v205, v94, 16, 1
	v_bfe_u32 v204, v95, 16, 1
	v_cmp_o_f32_e64 s63, v96, v96
	v_cmp_o_f32_e64 s64, v110, v110
	v_cmp_o_f32_e64 s65, v111, v111
	v_cmp_o_f32_e64 s67, v113, v113
	v_add3_u32 v96, v96, v203, 0x7fff
	v_add3_u32 v202, v110, v202, 0x7fff
	v_add3_u32 v201, v111, v201, 0x7fff
	v_add3_u32 v203, v113, v215, 0x7fff
	v_bfe_u32 v188, v181, 16, 1
	v_cmp_o_f32_e64 s46, v214, v214
	v_cmp_o_f32_e64 s47, v213, v213
	v_cmp_o_f32_e64 s48, v212, v212
	v_cmp_o_f32_e64 s49, v211, v211
	v_add3_u32 v183, v214, v183, 0x7fff
	v_bfe_u32 v214, v9, 16, 1
	v_add3_u32 v184, v213, v184, 0x7fff
	v_bfe_u32 v213, v10, 16, 1
	v_add3_u32 v185, v212, v185, 0x7fff
	v_bfe_u32 v212, v11, 16, 1
	v_add3_u32 v186, v211, v186, 0x7fff
	v_bfe_u32 v211, v12, 16, 1
	v_add3_u32 v182, v182, v187, 0x7fff
	v_bfe_u32 v187, v210, 16, 1
	v_cmp_o_f32_e64 s60, v93, v93
	v_cmp_o_f32_e64 s61, v94, v94
	v_cmp_o_f32_e64 s62, v95, v95
	v_add3_u32 v93, v93, v206, 0x7fff
	v_add3_u32 v94, v94, v205, 0x7fff
	v_add3_u32 v95, v95, v204, 0x7fff
	v_cndmask_b16 v110.l, 0x7fff, v191.h, s38
	v_cndmask_b16 v113.h, 0x7fff, v198.h, s45
	v_cndmask_b16 v191.h, 0x7fff, v199.h, s27
	v_cndmask_b16 v198.l, 0x7fff, v202.h, s64
	v_cndmask_b16 v198.h, 0x7fff, v201.h, s65
	v_cndmask_b16 v199.l, 0x7fff, v200.h, s66
	v_cndmask_b16 v199.h, 0x7fff, v203.h, s67
	v_mov_b32_e32 v207, v27
	v_add3_u32 v181, v181, v188, 0x7fff
	v_bfe_u32 v188, v209, 16, 1
	v_cmp_o_f32_e64 s12, v9, v9
	v_cmp_o_f32_e64 s13, v10, v10
	v_cmp_o_f32_e64 s14, v11, v11
	v_cmp_o_f32_e64 s15, v12, v12
	v_add3_u32 v9, v9, v214, 0x7fff
	v_bfe_u32 v214, v106, 16, 1
	v_add3_u32 v10, v10, v213, 0x7fff
	v_bfe_u32 v213, v107, 16, 1
	v_add3_u32 v11, v11, v212, 0x7fff
	v_add3_u32 v12, v12, v211, 0x7fff
	v_bfe_u32 v211, v109, 16, 1
	v_mov_b32_e32 v203, v23
	v_bfe_u32 v212, v108, 16, 1
	v_cmp_o_f32_e64 s50, v210, v210
	v_add3_u32 v187, v210, v187, 0x7fff
	v_bfe_u32 v210, v13, 16, 1
	v_add3_u32 v188, v209, v188, 0x7fff
	v_cmp_o_f32_e64 s28, v106, v106
	v_cmp_o_f32_e64 s53, v107, v107
	v_cmp_o_f32_e64 s54, v108, v108
	v_cmp_o_f32_e64 s55, v109, v109
	v_add3_u32 v214, v106, v214, 0x7fff
	v_add3_u32 v213, v107, v213, 0x7fff
	v_add3_u32 v212, v108, v212, 0x7fff
	v_add3_u32 v211, v109, v211, 0x7fff
	v_cndmask_b16 v106.l, 0x7fff, v179.h, s29
	v_cndmask_b16 v106.h, 0x7fff, v177.h, s30
	v_cndmask_b16 v107.l, 0x7fff, v176.h, s31
	v_cndmask_b16 v107.h, 0x7fff, v82.h, s33
	v_cndmask_b16 v108.l, 0x7fff, v182.h, s34
	v_cndmask_b16 v108.h, 0x7fff, v181.h, s35
	v_cndmask_b16 v109.l, 0x7fff, v180.h, s36
	v_cndmask_b16 v109.h, 0x7fff, v178.h, s37
	v_cndmask_b16 v110.h, 0x7fff, v192.h, s39
	v_cndmask_b16 v111.l, 0x7fff, v193.h, s40
	v_cndmask_b16 v111.h, 0x7fff, v194.h, s41
	v_cndmask_b16 v112.h, 0x7fff, v196.h, s43
	v_cndmask_b16 v113.l, 0x7fff, v197.h, s44
	v_dual_mov_b32 v206, v26 :: v_dual_mov_b32 v205, v25
	v_mov_b32_e32 v204, v24
	v_dual_mov_b32 v202, v22 :: v_dual_mov_b32 v201, v21
	v_mov_b32_e32 v200, v20
	v_cmp_o_f32_e64 s16, v13, v13
	v_add3_u32 v13, v13, v210, 0x7fff
	v_bfe_u32 v210, v114, 16, 1
	v_cndmask_b16 v176.l, 0x7fff, v183.h, s46
	v_cndmask_b16 v176.h, 0x7fff, v184.h, s47
	v_cndmask_b16 v177.l, 0x7fff, v185.h, s48
	v_cndmask_b16 v177.h, 0x7fff, v186.h, s49
	v_cndmask_b16 v178.l, 0x7fff, v187.h, s50
	v_cndmask_b16 v178.h, 0x7fff, v188.h, s51
	v_cndmask_b16 v179.h, 0x7fff, v190.h, s0
	v_cndmask_b16 v180.l, 0x7fff, v1.h, s1
	v_cndmask_b16 v180.h, 0x7fff, v2.h, s3
	v_cndmask_b16 v181.l, 0x7fff, v3.h, s5
	v_cndmask_b16 v181.h, 0x7fff, v4.h, s7
	v_cndmask_b16 v182.l, 0x7fff, v5.h, s8
	v_cndmask_b16 v182.h, 0x7fff, v6.h, s9
	v_cndmask_b16 v183.l, 0x7fff, v7.h, s10
	v_cndmask_b16 v183.h, 0x7fff, v8.h, s11
	.loc	1 391 32 is_stmt 1              ; attention_backward.py:391:32
	v_wmma_f32_16x16x16_bf16 v[66:73], v[106:113], v[200:207], v[66:73]
	.loc	1 382 30                        ; attention_backward.py:382:30
	v_cmp_o_f32_e64 s56, v114, v114
	v_add3_u32 v114, v114, v210, 0x7fff
	v_cndmask_b16 v190.l, 0x7fff, v136.h, s24
	v_cndmask_b16 v190.h, 0x7fff, v137.h, s25
	.loc	1 391 32                        ; attention_backward.py:391:32
	v_wmma_f32_16x16x16_bf16 v[66:73], v[176:183], v[138:145], v[66:73]
	v_dual_mov_b32 v183, v145 :: v_dual_mov_b32 v182, v144
	v_dual_mov_b32 v181, v143 :: v_dual_mov_b32 v180, v142
	v_dual_mov_b32 v179, v141 :: v_dual_mov_b32 v178, v140
	v_dual_mov_b32 v177, v139 :: v_dual_mov_b32 v176, v138
	v_mov_b32_e32 v136, v154
	.loc	1 309 31                        ; attention_backward.py:309:31
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 382 30                        ; attention_backward.py:382:30
	v_cndmask_b16 v188.h, 0x7fff, v118.h, s21
	v_dual_mov_b32 v118, v32 :: v_dual_mov_b32 v137, v155
	v_cndmask_b16 v194.l, 0x7fff, v114.h, s56
	v_dual_mov_b32 v114, v17 :: v_dual_mov_b32 v141, v159
	v_dual_mov_b32 v138, v156 :: v_dual_mov_b32 v139, v157
	v_mov_b32_e32 v140, v158
	v_dual_mov_b32 v142, v160 :: v_dual_mov_b32 v143, v161
	s_clause 0x1                            ; 32-byte Folded Reload
	scratch_load_b128 v[154:157], off, off
	scratch_load_b128 v[158:161], off, off offset:16
	.loc	1 382 31 is_stmt 0              ; attention_backward.py:382:31
	v_mul_f32_e32 v14, v98, v221
	.loc	1 382 30                        ; attention_backward.py:382:30
	v_bfe_u32 v208, v15, 16, 1
	v_cmp_o_f32_e64 s18, v15, v15
	v_mov_b32_e32 v23, v31
	v_cmp_o_f32_e64 s57, v115, v115
	v_bfe_u32 v209, v14, 16, 1
	v_cmp_o_f32_e64 s17, v14, v14
	v_add3_u32 v15, v15, v208, 0x7fff
	v_bfe_u32 v208, v116, 16, 1
	v_cmp_o_f32_e64 s58, v116, v116
	v_add3_u32 v14, v14, v209, 0x7fff
	v_bfe_u32 v209, v115, 16, 1
	v_cndmask_b16 v184.l, 0x7fff, v9.h, s12
	v_add3_u32 v116, v116, v208, 0x7fff
	v_cndmask_b16 v184.h, 0x7fff, v10.h, s13
	v_cndmask_b16 v185.l, 0x7fff, v11.h, s14
	v_add3_u32 v115, v115, v209, 0x7fff
	v_cndmask_b16 v185.h, 0x7fff, v12.h, s15
	v_cndmask_b16 v186.l, 0x7fff, v13.h, s16
	v_cndmask_b16 v186.h, 0x7fff, v14.h, s17
	v_cndmask_b16 v187.l, 0x7fff, v15.h, s18
	v_cndmask_b16 v187.h, 0x7fff, v16.h, s19
	v_cndmask_b16 v188.l, 0x7fff, v97.h, s20
	v_cndmask_b16 v191.l, 0x7fff, v150.h, s26
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
	v_cndmask_b16 v192.l, 0x7fff, v214.h, s28
	v_cndmask_b16 v192.h, 0x7fff, v213.h, s53
	v_cndmask_b16 v193.l, 0x7fff, v212.h, s54
	v_cndmask_b16 v193.h, 0x7fff, v211.h, s55
	v_cndmask_b16 v194.h, 0x7fff, v115.h, s57
	v_cndmask_b16 v195.l, 0x7fff, v116.h, s58
	v_cndmask_b16 v196.l, 0x7fff, v93.h, s60
	v_cndmask_b16 v196.h, 0x7fff, v94.h, s61
	v_cndmask_b16 v197.l, 0x7fff, v95.h, s62
	v_cndmask_b16 v197.h, 0x7fff, v96.h, s63
	.loc	1 391 32                        ; attention_backward.py:391:32
	v_wmma_f32_16x16x16_bf16 v[66:73], v[184:191], v[136:143], v[66:73]
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
	.loc	1 391 32                        ; attention_backward.py:391:32
	s_waitcnt vmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[66:73], v[192:199], v[154:161], v[66:73]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 396 43                        ; attention_backward.py:396:43
	v_sub_f32_e32 v7, v72, v153
	v_sub_f32_e32 v1, v66, v153
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_sub_f32_e32 v3, v68, v153
	v_sub_f32_e32 v4, v69, v153
	v_sub_f32_e32 v5, v70, v153
	v_sub_f32_e32 v6, v71, v153
	v_dual_sub_f32 v8, v73, v153 :: v_dual_mul_f32 v7, v174, v7
	v_sub_f32_e32 v2, v67, v153
	.loc	1 396 26 is_stmt 0              ; attention_backward.py:396:26
	v_mul_f32_e32 v1, v168, v1
	v_dual_mul_f32 v3, v170, v3 :: v_dual_mul_f32 v4, v171, v4
	v_dual_mul_f32 v5, v172, v5 :: v_dual_mul_f32 v6, v173, v6
	v_dual_mul_f32 v8, v175, v8 :: v_dual_mul_f32 v7, s89, v7
	v_mul_f32_e32 v2, v169, v2
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_dual_mov_b32 v128, v28 :: v_dual_mul_f32 v5, s89, v5
	.loc	1 397 34 is_stmt 1              ; attention_backward.py:397:34
	v_mul_f32_e32 v1, s89, v1
	v_dual_mul_f32 v3, s89, v3 :: v_dual_mul_f32 v2, s89, v2
	v_mul_f32_e32 v4, s89, v4
	v_mul_f32_e32 v6, s89, v6
	v_mul_f32_e32 v8, s89, v8
	.loc	1 397 33 is_stmt 0              ; attention_backward.py:397:33
	v_bfe_u32 v9, v1, 16, 1
	v_bfe_u32 v10, v2, 16, 1
	v_bfe_u32 v11, v3, 16, 1
	v_bfe_u32 v12, v4, 16, 1
	v_bfe_u32 v13, v5, 16, 1
	v_bfe_u32 v14, v6, 16, 1
	v_bfe_u32 v15, v7, 16, 1
	v_bfe_u32 v16, v8, 16, 1
	v_cmp_o_f32_e64 s0, v1, v1
	v_cmp_o_f32_e64 s1, v2, v2
	v_cmp_o_f32_e64 s3, v3, v3
	v_cmp_o_f32_e64 s5, v4, v4
	v_cmp_o_f32_e64 s7, v5, v5
	v_cmp_o_f32_e64 s8, v6, v6
	v_cmp_o_f32_e64 s9, v7, v7
	v_cmp_o_f32_e64 s10, v8, v8
	v_add3_u32 v1, v1, v9, 0x7fff
	v_add3_u32 v2, v2, v10, 0x7fff
	v_add3_u32 v3, v3, v11, 0x7fff
	v_add3_u32 v4, v4, v12, 0x7fff
	v_add3_u32 v5, v5, v13, 0x7fff
	v_add3_u32 v6, v6, v14, 0x7fff
	v_add3_u32 v7, v7, v15, 0x7fff
	v_add3_u32 v8, v8, v16, 0x7fff
	v_cndmask_b16 v1.l, 0x7fff, v1.h, s0
	v_cndmask_b16 v1.h, 0x7fff, v2.h, s1
	v_cndmask_b16 v2.l, 0x7fff, v3.h, s3
	v_cndmask_b16 v2.h, 0x7fff, v4.h, s5
	v_cndmask_b16 v3.l, 0x7fff, v5.h, s7
	v_cndmask_b16 v3.h, 0x7fff, v6.h, s8
	v_cndmask_b16 v4.l, 0x7fff, v7.h, s9
	v_cndmask_b16 v4.h, 0x7fff, v8.h, s10
	v_permlanex16_b32 v5, v1, s95, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v6, v2, s95, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v7, v3, s95, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_permlanex16_b32 v8, v4, s95, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v66, v5, v1, v146
	v_perm_b32 v67, v5, v1, v19
	v_perm_b32 v68, v6, v2, v146
	v_perm_b32 v69, v6, v2, v19
	v_perm_b32 v70, v7, v3, v146
	v_perm_b32 v71, v7, v3, v19
	v_perm_b32 v72, v8, v4, v146
	v_perm_b32 v73, v8, v4, v19
	v_dual_mov_b32 v2, v122 :: v_dual_mov_b32 v3, v123
	.loc	1 398 31 is_stmt 1              ; attention_backward.py:398:31
	s_waitcnt lgkmcnt(17)
	s_delay_alu instid0(VALU_DEP_2)
	v_wmma_f32_16x16x16_bf16 v[57:64], v[74:81], v[66:73], v[57:64]
	s_waitcnt lgkmcnt(1)
	v_wmma_f32_16x16x16_bf16 v[49:56], v[90:97], v[66:73], v[49:56]
	v_wmma_f32_16x16x16_bf16 v[41:48], v[98:105], v[66:73], v[41:48]
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[33:40], v[82:89], v[66:73], v[33:40]
	s_cbranch_scc1 .LBB0_6
; %bb.7:                                ; %Flow
	.loc	1 0 31 is_stmt 0                ; attention_backward.py:0:31
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v113, off, off offset:72
	scratch_load_b32 v1, off, off offset:76
.LBB0_8:                                ; %._crit_edge144
	.loc	1 401 13 is_stmt 1              ; attention_backward.py:401:13
	s_waitcnt vmcnt(1)
	v_mul_lo_u32 v0, s92, v113
	s_mul_i32 s4, s92, s88
	.loc	1 405 9                         ; attention_backward.py:405:9
	v_or_b32_e32 v7, 2, v131
	.loc	1 408 40                        ; attention_backward.py:408:40
	v_cmp_gt_i32_e32 vcc_lo, s92, v131
	.loc	1 405 9                         ; attention_backward.py:405:9
	s_and_b32 s81, s81, 0xffff
	s_mov_b32 s83, 0x31027000
	s_mov_b32 s82, 0x7ffffffe
	.loc	1 168 40                        ; attention_backward.py:168:40
	v_or_b32_e32 v3, 32, v131
	.loc	1 401 13                        ; attention_backward.py:401:13
	v_add_nc_u32_e32 v5, s4, v0
	.loc	1 408 18                        ; attention_backward.py:408:18
	s_and_b32 vcc_lo, s2, vcc_lo
	.loc	1 168 40                        ; attention_backward.py:168:40
	v_or_b32_e32 v4, 16, v131
	s_waitcnt vmcnt(0)
	v_or_b32_e32 v1, 62, v1
	.loc	1 408 40                        ; attention_backward.py:408:40
	v_cmp_gt_i32_e64 s1, s92, v3
	.loc	1 405 9                         ; attention_backward.py:405:9
	v_add_lshl_u32 v6, v5, v131, 2
	v_add_lshl_u32 v7, v5, v7, 2
	v_add_lshl_u32 v8, v5, v253, 2
	v_add_lshl_u32 v9, v5, v252, 2
	.loc	1 401 13                        ; attention_backward.py:401:13
	v_add_nc_u32_e32 v0, v0, v131
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 405 9                         ; attention_backward.py:405:9
	v_dual_cndmask_b32 v6, 0x80000000, v6 :: v_dual_cndmask_b32 v7, 0x80000000, v7
	v_cndmask_b32_e32 v8, 0x80000000, v8, vcc_lo
	v_add_lshl_u32 v10, v5, v133, 2
	v_cndmask_b32_e32 v9, 0x80000000, v9, vcc_lo
	s_clause 0x2
	buffer_store_b32 v57, v6, s[80:83], 0 offen
	buffer_store_b32 v58, v7, s[80:83], 0 offen
	buffer_store_b32 v59, v8, s[80:83], 0 offen
	v_add_lshl_u32 v6, v5, v135, 2
	v_add_lshl_u32 v7, v5, v134, 2
	v_add_lshl_u32 v8, v5, v251, 2
	.loc	1 401 13                        ; attention_backward.py:401:13
	v_add_lshl_u32 v0, v0, s4, 2
	.loc	1 408 40                        ; attention_backward.py:408:40
	v_cmp_gt_i32_e64 s0, s92, v4
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 405 9                         ; attention_backward.py:405:9
	v_dual_cndmask_b32 v6, 0x80000000, v6 :: v_dual_cndmask_b32 v7, 0x80000000, v7
	v_add_lshl_u32 v3, v5, v3, 2
	v_cndmask_b32_e32 v8, 0x80000000, v8, vcc_lo
	v_cndmask_b32_e32 v10, 0x80000000, v10, vcc_lo
	v_add_lshl_u32 v4, v5, v4, 2
	s_clause 0x4
	buffer_store_b32 v60, v6, s[80:83], 0 offen
	buffer_store_b32 v61, v7, s[80:83], 0 offen
	buffer_store_b32 v62, v8, s[80:83], 0 offen
	buffer_store_b32 v63, v9, s[80:83], 0 offen
	buffer_store_b32 v64, v10, s[80:83], 0 offen
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
	buffer_store_b32 v49, v4, s[80:83], 0 offen
	buffer_store_b32 v50, v6, s[80:83], 0 offen
	buffer_store_b32 v51, v7, s[80:83], 0 offen
	v_cndmask_b32_e32 v4, 0x80000000, v9, vcc_lo
	v_add_nc_u32_e32 v6, 0x68, v0
	buffer_store_b32 v52, v8, s[80:83], 0 offen
	v_add_nc_u32_e32 v7, 0x70, v0
	v_add_nc_u32_e32 v8, 0x78, v0
	buffer_store_b32 v53, v4, s[80:83], 0 offen
	v_cndmask_b32_e32 v4, 0x80000000, v6, vcc_lo
	v_add_lshl_u32 v1, v5, v1, 2
	v_dual_cndmask_b32 v6, 0x80000000, v7 :: v_dual_cndmask_b32 v7, 0x80000000, v8
	.loc	1 408 18                        ; attention_backward.py:408:18
	s_and_b32 vcc_lo, s2, s1
	.loc	1 405 9                         ; attention_backward.py:405:9
	buffer_store_b32 v54, v4, s[80:83], 0 offen
	v_add_nc_u32_e32 v4, 0x88, v0
	v_cndmask_b32_e32 v3, 0x80000000, v3, vcc_lo
	s_clause 0x2
	buffer_store_b32 v55, v6, s[80:83], 0 offen
	buffer_store_b32 v56, v7, s[80:83], 0 offen
	buffer_store_b32 v41, v3, s[80:83], 0 offen
	v_add_nc_u32_e32 v3, 0x90, v0
	v_cndmask_b32_e32 v4, 0x80000000, v4, vcc_lo
	v_add_nc_u32_e32 v6, 0x98, v0
	v_add_nc_u32_e32 v7, 0xa0, v0
	v_add_nc_u32_e32 v8, 0xa8, v0
	.loc	1 168 40                        ; attention_backward.py:168:40
	v_or_b32_e32 v2, 48, v131
	.loc	1 405 9                         ; attention_backward.py:405:9
	v_cndmask_b32_e32 v3, 0x80000000, v3, vcc_lo
	buffer_store_b32 v42, v4, s[80:83], 0 offen
	v_cndmask_b32_e32 v4, 0x80000000, v6, vcc_lo
	v_dual_cndmask_b32 v6, 0x80000000, v7 :: v_dual_cndmask_b32 v7, 0x80000000, v8
	.loc	1 408 40                        ; attention_backward.py:408:40
	v_cmp_gt_i32_e64 s3, s92, v2
	.loc	1 405 9                         ; attention_backward.py:405:9
	buffer_store_b32 v43, v3, s[80:83], 0 offen
	v_add_nc_u32_e32 v3, 0xb0, v0
	s_clause 0x2
	buffer_store_b32 v44, v4, s[80:83], 0 offen
	buffer_store_b32 v45, v6, s[80:83], 0 offen
	buffer_store_b32 v46, v7, s[80:83], 0 offen
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
	buffer_store_b32 v47, v3, s[80:83], 0 offen
	buffer_store_b32 v48, v4, s[80:83], 0 offen
	buffer_store_b32 v33, v2, s[80:83], 0 offen
	buffer_store_b32 v34, v6, s[80:83], 0 offen
	buffer_store_b32 v35, v7, s[80:83], 0 offen
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
	buffer_store_b32 v36, v2, s[80:83], 0 offen
	buffer_store_b32 v37, v3, s[80:83], 0 offen
	buffer_store_b32 v38, v4, s[80:83], 0 offen
	buffer_store_b32 v39, v0, s[80:83], 0 offen
	buffer_store_b32 v40, v1, s[80:83], 0 offen
	.loc	1 60 5                          ; attention_backward.py:60:5
	s_endpgm
.Ltmp81:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_attention_bwd_dq_int4xint4_none_local_outbfloat16_doutbfloat16_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1
		.amdhsa_group_segment_fixed_size 0
		.amdhsa_private_segment_fixed_size 84
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
	.size	amd_strix_halo_gfx1151_attention_bwd_dq_int4xint4_none_local_outbfloat16_doutbfloat16_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1, .Lfunc_end0-amd_strix_halo_gfx1151_attention_bwd_dq_int4xint4_none_local_outbfloat16_doutbfloat16_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_attention_bwd_dq_int4xint4_none_local_outbfloat16_doutbfloat16_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.num_vgpr, 256
	.set amd_strix_halo_gfx1151_attention_bwd_dq_int4xint4_none_local_outbfloat16_doutbfloat16_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.num_agpr, 0
	.set amd_strix_halo_gfx1151_attention_bwd_dq_int4xint4_none_local_outbfloat16_doutbfloat16_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.numbered_sgpr, 96
	.set amd_strix_halo_gfx1151_attention_bwd_dq_int4xint4_none_local_outbfloat16_doutbfloat16_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_attention_bwd_dq_int4xint4_none_local_outbfloat16_doutbfloat16_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.private_seg_size, 84
	.set amd_strix_halo_gfx1151_attention_bwd_dq_int4xint4_none_local_outbfloat16_doutbfloat16_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.uses_vcc, 1
	.set amd_strix_halo_gfx1151_attention_bwd_dq_int4xint4_none_local_outbfloat16_doutbfloat16_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.uses_flat_scratch, 1
	.set amd_strix_halo_gfx1151_attention_bwd_dq_int4xint4_none_local_outbfloat16_doutbfloat16_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_attention_bwd_dq_int4xint4_none_local_outbfloat16_doutbfloat16_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.has_recursion, 0
	.set amd_strix_halo_gfx1151_attention_bwd_dq_int4xint4_none_local_outbfloat16_doutbfloat16_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 14028
; TotalNumSgprs: 98
; NumVgprs: 256
; ScratchSize: 84
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
	.quad	.Ltmp64                         ; DW_AT_low_pc
	.long	.Ltmp66-.Ltmp64                 ; DW_AT_high_pc
	.byte	1                               ; DW_AT_call_file
	.short	258                             ; DW_AT_call_line
	.byte	25                              ; DW_AT_call_column
	.byte	7                               ; Abbrev [7] 0x70:0x14 DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.quad	.Ltmp64                         ; DW_AT_low_pc
	.long	.Ltmp65-.Ltmp64                 ; DW_AT_high_pc
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
	.quad	.Ltmp32-.Lfunc_begin0
	.quad	.Ltmp33-.Lfunc_begin0
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
	.quad	.Ltmp48-.Lfunc_begin0
	.quad	.Ltmp49-.Lfunc_begin0
	.quad	.Ltmp50-.Lfunc_begin0
	.quad	.Ltmp51-.Lfunc_begin0
	.quad	.Ltmp52-.Lfunc_begin0
	.quad	.Ltmp53-.Lfunc_begin0
	.quad	.Ltmp54-.Lfunc_begin0
	.quad	.Ltmp55-.Lfunc_begin0
	.quad	.Ltmp63-.Lfunc_begin0
	.quad	.Ltmp75-.Lfunc_begin0
	.quad	.Ltmp76-.Lfunc_begin0
	.quad	.Ltmp77-.Lfunc_begin0
	.quad	.Ltmp78-.Lfunc_begin0
	.quad	.Ltmp79-.Lfunc_begin0
	.quad	.Ltmp80-.Lfunc_begin0
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
	.quad	.Ltmp38-.Lfunc_begin0
	.quad	.Ltmp39-.Lfunc_begin0
	.quad	.Ltmp41-.Lfunc_begin0
	.quad	.Ltmp42-.Lfunc_begin0
	.quad	.Ltmp46-.Lfunc_begin0
	.quad	.Ltmp47-.Lfunc_begin0
	.quad	.Ltmp49-.Lfunc_begin0
	.quad	.Ltmp50-.Lfunc_begin0
	.quad	.Ltmp55-.Lfunc_begin0
	.quad	.Ltmp56-.Lfunc_begin0
	.quad	.Ltmp57-.Lfunc_begin0
	.quad	.Ltmp58-.Lfunc_begin0
	.quad	.Ltmp59-.Lfunc_begin0
	.quad	.Ltmp60-.Lfunc_begin0
	.quad	.Ltmp61-.Lfunc_begin0
	.quad	.Ltmp62-.Lfunc_begin0
	.quad	.Ltmp75-.Lfunc_begin0
	.quad	.Ltmp76-.Lfunc_begin0
	.quad	.Ltmp77-.Lfunc_begin0
	.quad	.Ltmp78-.Lfunc_begin0
	.quad	.Ltmp79-.Lfunc_begin0
	.quad	.Ltmp80-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges2:
	.quad	.Ltmp67-.Lfunc_begin0
	.quad	.Ltmp68-.Lfunc_begin0
	.quad	.Ltmp69-.Lfunc_begin0
	.quad	.Ltmp70-.Lfunc_begin0
	.quad	.Ltmp71-.Lfunc_begin0
	.quad	.Ltmp72-.Lfunc_begin0
	.quad	.Ltmp73-.Lfunc_begin0
	.quad	.Ltmp74-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges3:
	.quad	.Ltmp67-.Lfunc_begin0
	.quad	.Ltmp68-.Lfunc_begin0
	.quad	.Ltmp69-.Lfunc_begin0
	.quad	.Ltmp70-.Lfunc_begin0
	.quad	.Ltmp71-.Lfunc_begin0
	.quad	.Ltmp72-.Lfunc_begin0
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
	.asciz	"amd_strix_halo_gfx1151_attention_bwd_dq_int4xint4_none_local_outbfloat16_doutbfloat16_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1"                        ; string offset=97 ; amd_strix_halo_gfx1151_attention_bwd_dq_int4xint4_none_local_outbfloat16_doutbfloat16_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1
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
    .name:           amd_strix_halo_gfx1151_attention_bwd_dq_int4xint4_none_local_outbfloat16_doutbfloat16_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1
    .private_segment_fixed_size: 84
    .sgpr_count:     98
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_attention_bwd_dq_int4xint4_none_local_outbfloat16_doutbfloat16_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     256
    .vgpr_spill_count: 20
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
