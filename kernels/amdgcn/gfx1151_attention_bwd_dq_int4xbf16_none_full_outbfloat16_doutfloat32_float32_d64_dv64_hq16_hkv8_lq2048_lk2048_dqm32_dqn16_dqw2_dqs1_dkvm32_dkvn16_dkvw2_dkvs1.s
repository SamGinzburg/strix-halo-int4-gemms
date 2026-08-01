	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_attention_bwd_dq_int4xbf16_none_full_outbfloat16_doutfloat32_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1                          ; -- Begin function amd_strix_halo_gfx1151_attention_bwd_dq_int4xbf16_none_full_outbfloat16_doutfloat32_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1
	.p2align	8
	.type	amd_strix_halo_gfx1151_attention_bwd_dq_int4xbf16_none_full_outbfloat16_doutfloat32_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1,@function
amd_strix_halo_gfx1151_attention_bwd_dq_int4xbf16_none_full_outbfloat16_doutfloat32_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1:                                 ; @amd_strix_halo_gfx1151_attention_bwd_dq_int4xbf16_none_full_outbfloat16_doutfloat32_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1
.Lfunc_begin0:
	.file	1 "<repo>/src/amd_strix_halo_kernels" "attention_backward.py"
	.loc	1 60 0                          ; attention_backward.py:60:0
	.cfi_sections .debug_frame
	.cfi_startproc
; %bb.0:
	s_clause 0x1
	s_load_b128 s[28:31], s[0:1], 0x74
	s_load_b64 s[24:25], s[0:1], 0x58
.Ltmp0:
	.loc	1 139 44 prologue_end           ; attention_backward.py:139:44
	v_lshlrev_b32_e32 v60, 4, v0
	.loc	1 124 31                        ; attention_backward.py:124:31
	v_lshrrev_b32_e32 v59, 1, v0
	.loc	1 119 19                        ; attention_backward.py:119:19
	s_lshl_b32 s5, s2, 5
	v_dual_mov_b32 v65, 0 :: v_dual_and_b32 v58, 32, v0
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 139 44                        ; attention_backward.py:139:44
	v_and_b32_e32 v1, 16, v60
	.loc	1 124 21                        ; attention_backward.py:124:21
	v_or_b32_e32 v4, s5, v59
	.loc	1 133 26                        ; attention_backward.py:133:26
	s_lshl_b32 s6, s3, 11
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 124 31                        ; attention_backward.py:124:31
	v_lshrrev_b32_e32 v2, 1, v58
	.loc	1 135 17                        ; attention_backward.py:135:17
	s_add_i32 s26, s5, s6
	s_load_b256 s[16:23], s[0:1], 0x0
	.loc	1 128 21                        ; attention_backward.py:128:21
	v_cmp_gt_i32_e32 vcc_lo, 0x800, v4
	.loc	1 135 17                        ; attention_backward.py:135:17
	v_or_b32_e32 v3, s26, v59
	s_clause 0x1
	s_load_b256 s[8:15], s[0:1], 0x38
	s_load_b64 s[40:41], s[0:1], 0x20
	.loc	1 121 23                        ; attention_backward.py:121:23
	s_ashr_i32 s0, s3, 31
	.loc	1 124 31                        ; attention_backward.py:124:31
	v_lshrrev_b32_e32 v5, 3, v0
	.loc	1 121 23                        ; attention_backward.py:121:23
	s_lshr_b32 s0, s0, 28
	.loc	1 139 44                        ; attention_backward.py:139:44
	s_waitcnt lgkmcnt(0)
	v_cmp_gt_i32_e64 s2, s29, v1
	.loc	1 121 23                        ; attention_backward.py:121:23
	s_add_i32 s0, s3, s0
	s_mov_b32 s39, 0x31027000
	.loc	1 122 22                        ; attention_backward.py:122:22
	s_and_b32 s1, s0, 0xfff0
	.loc	1 197 28                        ; attention_backward.py:197:28
	s_lshl_b32 s0, s0, 10
	.loc	1 139 22                        ; attention_backward.py:139:22
	s_and_b32 vcc_lo, vcc_lo, s2
	.loc	1 124 31                        ; attention_backward.py:124:31
	v_and_b32_e32 v57, 15, v0
	.loc	1 122 22                        ; attention_backward.py:122:22
	s_sub_i32 s1, s3, s1
	.loc	1 197 28                        ; attention_backward.py:197:28
	s_and_b32 s3, s0, 0xffffc000
	.loc	1 123 19                        ; attention_backward.py:123:19
	s_bfe_u32 s0, s1, 0x10007
	.loc	1 124 21                        ; attention_backward.py:124:21
	v_or_b32_e32 v8, s5, v5
	.loc	1 124 31 is_stmt 0              ; attention_backward.py:124:31
	v_or_b32_e32 v90, v2, v57
	.loc	1 135 17 is_stmt 1              ; attention_backward.py:135:17
	v_mad_u64_u32 v[2:3], null, s29, v3, v[1:2]
	.loc	1 167 13                        ; attention_backward.py:167:13
	v_mul_lo_u32 v5, s30, v5
	.loc	1 123 19                        ; attention_backward.py:123:19
	s_add_i32 s1, s1, s0
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	.loc	1 124 21                        ; attention_backward.py:124:21
	v_or_b32_e32 v6, s5, v90
	.loc	1 143 17                        ; attention_backward.py:143:17
	v_or_b32_e32 v1, s26, v90
	.loc	1 123 19                        ; attention_backward.py:123:19
	s_bfe_i32 s0, s1, 0x80000
	.loc	1 220 21                        ; attention_backward.py:220:21
	s_mul_f32 s1, s31, 0x3fb8aa3b
	.loc	1 134 28                        ; attention_backward.py:134:28
	v_cndmask_b32_e32 v2, 0x80000000, v2, vcc_lo
	.loc	1 128 21                        ; attention_backward.py:128:21
	v_cmp_gt_i32_e32 vcc_lo, 0x800, v6
	v_dual_mov_b32 v66, 0xff800000 :: v_dual_lshlrev_b32 v7, 1, v1
	.loc	1 168 40                        ; attention_backward.py:168:40
	v_and_b32_e32 v63, 7, v0
	s_mov_b32 s38, 0x7ffffffe
	.loc	1 134 28                        ; attention_backward.py:134:28
	s_and_b32 s37, s17, 0xffff
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 142 31                        ; attention_backward.py:142:31
	v_cndmask_b32_e32 v6, 0x80000000, v7, vcc_lo
	.loc	1 134 28                        ; attention_backward.py:134:28
	s_mov_b32 s36, s16
	.loc	1 168 40                        ; attention_backward.py:168:40
	v_lshlrev_b32_e32 v9, 3, v63
	.loc	1 134 28                        ; attention_backward.py:134:28
	buffer_load_b128 v[1:4], v2, s[36:39], 0 offen
	.loc	1 142 31                        ; attention_backward.py:142:31
	s_and_b32 s37, s23, 0xffff
	s_mov_b32 s36, s22
	.loc	1 167 13                        ; attention_backward.py:167:13
	v_lshl_add_u32 v10, s30, 3, v5
	.loc	1 128 21                        ; attention_backward.py:128:21
	v_cmp_gt_i32_e64 s4, 0x800, v8
	.loc	1 142 31                        ; attention_backward.py:142:31
	buffer_load_u16 v8, v6, s[36:39], 0 offen
	.loc	1 167 13                        ; attention_backward.py:167:13
	v_mad_u64_u32 v[6:7], null, s30, 24, v[5:6]
	s_mul_i32 s7, s30, s26
	v_add_nc_u32_e32 v91, v5, v9
	v_add_nc_u32_e32 v7, s7, v9
	v_lshl_add_u32 v11, s30, 4, v5
	v_add_nc_u32_e32 v92, v10, v9
	.loc	1 168 40                        ; attention_backward.py:168:40
	v_cmp_gt_i32_e64 s2, s30, v9
	.loc	1 167 13                        ; attention_backward.py:167:13
	v_add_nc_u32_e32 v9, s7, v91
	v_or_b32_e32 v12, 4, v7
	v_add_nc_u32_e32 v14, v7, v11
	v_add_nc_u32_e32 v13, s7, v92
	v_add_nc_u32_e32 v7, v7, v6
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_lshlrev_b32_e32 v15, 1, v9
	.loc	1 171 28                        ; attention_backward.py:171:28
	v_lshlrev_b32_e32 v9, 2, v9
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_lshlrev_b32_e32 v17, 1, v14
	v_lshlrev_b32_e32 v16, 1, v13
	v_lshlrev_b32_e32 v18, 1, v7
	.loc	1 168 18                        ; attention_backward.py:168:18
	s_and_b32 s4, s4, s2
	.loc	1 171 28                        ; attention_backward.py:171:28
	v_add_lshl_u32 v5, v12, v5, 2
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_cndmask_b32_e64 v15, 0x80000000, v15, s4
	v_cndmask_b32_e64 v17, 0x80000000, v17, s4
	v_cndmask_b32_e64 v16, 0x80000000, v16, s4
	v_cndmask_b32_e64 v18, 0x80000000, v18, s4
	.loc	1 171 28                        ; attention_backward.py:171:28
	v_cndmask_b32_e64 v9, 0x80000000, v9, s4
	.loc	1 166 23                        ; attention_backward.py:166:23
	s_and_b32 s37, s9, 0xffff
	s_mov_b32 s36, s8
	.loc	1 171 28                        ; attention_backward.py:171:28
	v_cndmask_b32_e64 v5, 0x80000000, v5, s4
	.loc	1 166 23                        ; attention_backward.py:166:23
	s_clause 0x3
	buffer_load_b128 v[53:56], v15, s[36:39], 0 offen
	buffer_load_b128 v[49:52], v16, s[36:39], 0 offen
	buffer_load_b128 v[45:48], v17, s[36:39], 0 offen
	buffer_load_b128 v[41:44], v18, s[36:39], 0 offen
	.loc	1 171 28                        ; attention_backward.py:171:28
	s_and_b32 s37, s11, 0xffff
	s_mov_b32 s36, s10
	v_lshlrev_b32_e32 v13, 2, v13
	s_clause 0x1
	buffer_load_b128 v[37:40], v9, s[36:39], 0 offen
	buffer_load_b128 v[29:32], v5, s[36:39], 0 offen
	v_add_lshl_u32 v9, v12, v10, 2
	v_lshlrev_b32_e32 v10, 2, v14
	v_add_lshl_u32 v11, v12, v11, 2
	v_lshlrev_b32_e32 v7, 2, v7
	v_cndmask_b32_e64 v5, 0x80000000, v13, s4
	v_add_lshl_u32 v6, v12, v6, 2
	v_cndmask_b32_e64 v9, 0x80000000, v9, s4
	v_cndmask_b32_e64 v10, 0x80000000, v10, s4
	v_cndmask_b32_e64 v11, 0x80000000, v11, s4
	v_cndmask_b32_e64 v7, 0x80000000, v7, s4
	v_cndmask_b32_e64 v6, 0x80000000, v6, s4
	s_clause 0x5
	buffer_load_b128 v[33:36], v5, s[36:39], 0 offen
	buffer_load_b128 v[25:28], v9, s[36:39], 0 offen
	buffer_load_b128 v[21:24], v10, s[36:39], 0 offen
	buffer_load_b128 v[17:20], v11, s[36:39], 0 offen
	buffer_load_b128 v[13:16], v7, s[36:39], 0 offen
	buffer_load_b128 v[9:12], v6, s[36:39], 0 offen
	.loc	1 125 21                        ; attention_backward.py:125:21
	v_bfe_u32 v97, v0, 4, 1
	.loc	1 134 28                        ; attention_backward.py:134:28
	v_lshlrev_b32_e32 v5, 1, v0
	v_lshlrev_b32_e32 v62, 5, v57
	v_lshlrev_b32_e32 v7, 3, v0
	v_and_b32_e32 v68, 24, v59
	.loc	1 123 19                        ; attention_backward.py:123:19
	s_sext_i32_i16 s0, s0
	.loc	1 134 28                        ; attention_backward.py:134:28
	v_and_or_b32 v67, v5, 30, v97
	v_and_b32_e32 v6, 16, v0
	.loc	1 168 40                        ; attention_backward.py:168:40
	v_and_b32_e32 v61, 3, v0
	v_xor_b32_e32 v68, v7, v68
	.loc	1 197 28                        ; attention_backward.py:197:28
	s_lshl_b32 s0, s0, 10
	.loc	1 134 28                        ; attention_backward.py:134:28
	v_lshlrev_b32_e32 v71, 2, v67
	v_and_or_b32 v67, v5, 24, v62
	.loc	1 197 28                        ; attention_backward.py:197:28
	s_and_b32 s27, s0, 0xfffff800
	.loc	1 125 21                        ; attention_backward.py:125:21
	v_lshrrev_b32_e32 v102, 2, v0
	v_or_b32_e32 v100, 2, v97
	.loc	1 134 28                        ; attention_backward.py:134:28
	v_xor_b32_e32 v5, 4, v71
	v_xor_b32_e32 v7, 8, v67
	.loc	1 125 21                        ; attention_backward.py:125:21
	v_or_b32_e32 v99, 4, v97
	v_or_b32_e32 v98, 6, v97
	v_or_b32_e32 v96, 8, v97
	v_or_b32_e32 v95, 10, v97
	v_add_nc_u32_e32 v69, 0, v7
	v_or_b32_e32 v94, 12, v97
	v_or_b32_e32 v93, 14, v97
	.loc	1 200 27                        ; attention_backward.py:200:27
	v_lshlrev_b32_e32 v81, 3, v61
	v_xor_b32_e32 v70, 16, v67
	v_xor_b32_e32 v72, 24, v67
	.loc	1 197 28                        ; attention_backward.py:197:28
	s_add_i32 s27, s27, s3
	.loc	1 134 28                        ; attention_backward.py:134:28
	v_cmp_eq_u32_e64 s3, 0, v6
	.loc	1 124 31                        ; attention_backward.py:124:31
	v_and_b32_e32 v64, 56, v0
	.loc	1 125 21                        ; attention_backward.py:125:21
	v_lshrrev_b32_e32 v101, 4, v0
	.loc	1 200 27                        ; attention_backward.py:200:27
	v_cmp_gt_i32_e64 s0, s29, v81
	v_add_nc_u32_e32 v70, 0, v70
	v_or_b32_e32 v103, s27, v102
	v_or_b32_e32 v104, s27, v97
	v_or_b32_e32 v105, s27, v100
	v_or_b32_e32 v106, s27, v99
	v_or_b32_e32 v107, s27, v98
	v_or_b32_e32 v108, s27, v96
	v_or_b32_e32 v109, s27, v95
	v_or_b32_e32 v110, s27, v94
	v_or_b32_e32 v111, s27, v93
	s_mov_b32 s4, 0
	s_mov_b32 s7, 0x76543210
	s_mov_b32 s42, s38
	s_mov_b32 s43, s39
	s_mov_b64 s[8:9], s[14:15]
	s_and_b32 s41, s41, 0xffff
	s_and_b32 s37, s19, 0xffff
	s_mov_b32 s36, s18
	.loc	1 134 28                        ; attention_backward.py:134:28
	s_waitcnt vmcnt(13)
	ds_bpermute_b32 v7, v71, v1
	ds_bpermute_b32 v1, v5, v1
	ds_bpermute_b32 v73, v71, v2
	ds_bpermute_b32 v2, v5, v2
	ds_bpermute_b32 v74, v71, v3
	ds_bpermute_b32 v3, v5, v3
	ds_bpermute_b32 v75, v71, v4
	ds_bpermute_b32 v4, v5, v4
	.loc	1 142 31                        ; attention_backward.py:142:31
	s_waitcnt vmcnt(12)
	v_lshlrev_b32_e32 v5, 16, v8
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 219 37                        ; attention_backward.py:219:37
	v_dual_mul_f32 v112, s1, v5 :: v_dual_add_nc_u32 v71, 0, v72
	.loc	1 134 28                        ; attention_backward.py:134:28
	s_waitcnt lgkmcnt(6)
	v_cndmask_b32_e64 v82, v1, v7, s3
	v_cndmask_b32_e64 v84, v7, v1, s3
	s_waitcnt lgkmcnt(4)
	v_cndmask_b32_e64 v83, v2, v73, s3
	v_cndmask_b32_e64 v85, v73, v2, s3
	s_waitcnt lgkmcnt(2)
	v_cndmask_b32_e64 v86, v3, v74, s3
	v_cndmask_b32_e64 v88, v74, v3, s3
	s_waitcnt lgkmcnt(0)
	v_cndmask_b32_e64 v87, v4, v75, s3
	v_cndmask_b32_e64 v89, v75, v4, s3
	v_mov_b32_e32 v1, 0
.LBB0_1:                                ; =>This Inner Loop Header: Depth=1
	.loc	1 199 21                        ; attention_backward.py:199:21
	v_add_nc_u32_e32 v2, s4, v103
	.loc	1 198 28                        ; attention_backward.py:198:28
	v_add_nc_u32_e32 v113, 0, v68
	.loc	1 214 33                        ; attention_backward.py:214:33
	v_add_lshl_u32 v4, s4, v104, 1
	v_add_lshl_u32 v5, s4, v105, 1
	v_add_lshl_u32 v6, s4, v106, 1
	.loc	1 199 21                        ; attention_backward.py:199:21
	v_mad_u64_u32 v[2:3], null, v2, s29, v[81:82]
	.loc	1 214 33                        ; attention_backward.py:214:33
	v_add_lshl_u32 v7, s4, v107, 1
	v_add_lshl_u32 v8, s4, v108, 1
	v_add_lshl_u32 v72, s4, v109, 1
	v_add_lshl_u32 v73, s4, v110, 1
	v_add_lshl_u32 v74, s4, v111, 1
	.loc	1 198 28                        ; attention_backward.py:198:28
	v_add_nc_u32_e32 v114, 0, v67
	v_cndmask_b32_e64 v2, 0x80000000, v2, s0
	v_mov_b32_e32 v123, v66
	buffer_load_b64 v[2:3], v2, s[36:39], 0 offen
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 260 21                        ; attention_backward.py:260:21
	v_cmp_neq_f32_e64 s1, 0xff800000, v123
	.loc	1 198 28                        ; attention_backward.py:198:28
	s_waitcnt vmcnt(0)
	ds_store_b64 v113, v[2:3]
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 214 33                        ; attention_backward.py:214:33
	s_clause 0x7
	buffer_load_u16 v80, v4, s[40:43], 0 offen
	buffer_load_u16 v116, v5, s[40:43], 0 offen
	buffer_load_u16 v117, v6, s[40:43], 0 offen
	buffer_load_u16 v118, v7, s[40:43], 0 offen
	buffer_load_u16 v119, v8, s[40:43], 0 offen
	buffer_load_u16 v120, v72, s[40:43], 0 offen
	buffer_load_u16 v121, v73, s[40:43], 0 offen
	buffer_load_u16 v122, v74, s[40:43], 0 offen
	.loc	1 204 29                        ; attention_backward.py:204:29
	v_mov_b32_e32 v8, v1
	v_mov_b32_e32 v2, v1
	v_mov_b32_e32 v3, v1
	v_mov_b32_e32 v4, v1
	v_mov_b32_e32 v5, v1
	v_mov_b32_e32 v6, v1
	v_mov_b32_e32 v7, v1
	v_mov_b32_e32 v79, v8
	v_dual_mov_b32 v75, v4 :: v_dual_mov_b32 v74, v3
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_dual_mov_b32 v77, v6 :: v_dual_mov_b32 v76, v5
	v_dual_mov_b32 v78, v7 :: v_dual_mov_b32 v73, v2
	v_mov_b32_e32 v72, v1
	.loc	1 198 28                        ; attention_backward.py:198:28
	ds_load_b64 v[2:3], v114
	ds_load_b64 v[4:5], v69
	ds_load_b64 v[6:7], v70
	ds_load_b64 v[114:115], v71
	.loc	1 204 29                        ; attention_backward.py:204:29
	s_waitcnt lgkmcnt(3)
	v_wmma_i32_16x16x16_iu4 v[72:79], v[2:3], v[82:83], v[72:79] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(2)
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[72:79], v[4:5], v[86:87], v[72:79] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu4 v[72:79], v[6:7], v[84:85], v[72:79] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[72:79], v[114:115], v[88:89], v[72:79] neg_lo:[1,1,0]
	.loc	1 223 21                        ; attention_backward.py:223:21
	v_cvt_f32_i32_e32 v3, v73
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cvt_f32_i32_e32 v6, v76
	v_cvt_f32_i32_e32 v2, v72
	s_delay_alu instid0(VALU_DEP_4)
	v_cvt_f32_i32_e32 v4, v74
	v_cvt_f32_i32_e32 v5, v75
	v_cvt_f32_i32_e32 v7, v77
	v_cvt_f32_i32_e32 v8, v78
	v_cvt_f32_i32_e32 v66, v79
	v_mul_f32_e32 v3, v112, v3
	v_mul_f32_e32 v6, v112, v6
	v_mul_f32_e32 v2, v112, v2
	v_mul_f32_e32 v4, v112, v4
	v_mul_f32_e32 v5, v112, v5
	v_mul_f32_e32 v7, v112, v7
	v_mul_f32_e32 v8, v112, v8
	v_mul_f32_e32 v66, v112, v66
	.loc	1 214 33                        ; attention_backward.py:214:33
	s_waitcnt vmcnt(7)
	v_lshlrev_b32_e32 v72, 16, v80
	s_waitcnt vmcnt(6)
	v_lshlrev_b32_e32 v73, 16, v116
	s_waitcnt vmcnt(4)
	v_lshlrev_b32_e32 v75, 16, v118
	v_lshlrev_b32_e32 v74, 16, v117
	.loc	1 223 21                        ; attention_backward.py:223:21
	s_waitcnt vmcnt(3)
	v_dual_mul_f32 v3, v3, v73 :: v_dual_lshlrev_b32 v76, 16, v119
	.loc	1 214 33                        ; attention_backward.py:214:33
	s_waitcnt vmcnt(2)
	v_lshlrev_b32_e32 v77, 16, v120
	s_waitcnt vmcnt(1)
	v_lshlrev_b32_e32 v78, 16, v121
	.loc	1 223 21                        ; attention_backward.py:223:21
	s_waitcnt vmcnt(0)
	v_dual_mul_f32 v2, v2, v72 :: v_dual_lshlrev_b32 v79, 16, v122
	v_dual_mul_f32 v5, v5, v75 :: v_dual_mul_f32 v4, v4, v74
	v_dual_mul_f32 v7, v7, v77 :: v_dual_mul_f32 v6, v6, v76
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_mul_f32_e32 v66, v66, v79
	.loc	1 257 22                        ; attention_backward.py:257:22
	v_dual_cndmask_b32 v3, 0xff800000, v3 :: v_dual_mul_f32 v8, v8, v78
	v_dual_cndmask_b32 v2, 0xff800000, v2 :: v_dual_cndmask_b32 v5, 0xff800000, v5
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_dual_cndmask_b32 v4, 0xff800000, v4 :: v_dual_cndmask_b32 v7, 0xff800000, v7
	v_cndmask_b32_e32 v6, 0xff800000, v6, vcc_lo
	v_cndmask_b32_e32 v8, 0xff800000, v8, vcc_lo
	v_cndmask_b32_e32 v72, 0xff800000, v66, vcc_lo
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp1:
	.file	2 "<triton>/python/triton/language" "standard.py"
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention_backward.py:258:25 ] ]
	v_max3_f32 v66, v2, v3, v4
	v_max3_f32 v73, v5, v6, v7
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_max_f32_e32 v74, v8, v72
	v_max3_f32 v66, v66, v73, v74
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp2:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention_backward.py:258:25 ]
	v_permlanex16_b32 v73, v66, s7, 0xfedcba98 op_sel:[1,0]
.Ltmp3:
	.loc	1 259 20                        ; attention_backward.py:259:20
	v_max3_f32 v66, v123, v66, v73
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 261 58                        ; attention_backward.py:261:58
	v_sub_f32_e32 v2, v2, v66
	v_sub_f32_e32 v3, v3, v66
	v_sub_f32_e32 v4, v4, v66
	v_sub_f32_e32 v5, v5, v66
	v_sub_f32_e32 v6, v6, v66
	v_sub_f32_e32 v7, v7, v66
	v_sub_f32_e32 v8, v8, v66
	v_sub_f32_e32 v72, v72, v66
	.loc	1 261 45 is_stmt 0              ; attention_backward.py:261:45
	v_exp_f32_e32 v2, v2
	v_exp_f32_e32 v3, v3
	v_exp_f32_e32 v4, v4
	v_exp_f32_e32 v5, v5
	v_exp_f32_e32 v6, v6
	v_exp_f32_e32 v7, v7
	v_exp_f32_e32 v8, v8
	v_exp_f32_e32 v72, v72
.Ltmp4:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:262:33 ] ]
	v_dual_add_f32 v2, v2, v3 :: v_dual_add_f32 v3, v4, v5
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_dual_add_f32 v4, v6, v7 :: v_dual_add_f32 v5, v8, v72
	v_dual_add_f32 v2, v2, v3 :: v_dual_add_f32 v3, v4, v5
.Ltmp5:
	.loc	1 260 70                        ; attention_backward.py:260:70
	v_dual_sub_f32 v4, v123, v66 :: v_dual_mov_b32 v5, v65
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp6:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:262:33 ] ]
	v_add_f32_e32 v2, v2, v3
.Ltmp7:
	.loc	1 260 57                        ; attention_backward.py:260:57
	v_exp_f32_e32 v3, v4
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp8:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:262:33 ] ]
	v_cndmask_b32_e32 v2, 0, v2, vcc_lo
.Ltmp9:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:262:33 ]
	v_permlanex16_b32 v4, v2, s7, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
.Ltmp10:
	.loc	1 260 21                        ; attention_backward.py:260:21
	v_cndmask_b32_e64 v3, 0, v3, s1
	.loc	1 194 9                         ; attention_backward.py:194:9
	s_add_i32 s1, s4, 16
	s_cmpk_lt_u32 s4, 0x7f0
	s_mov_b32 s4, s1
.Ltmp11:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:262:33 ] ]
	v_add_f32_e32 v65, v2, v4
.Ltmp12:
	.loc	1 262 19                        ; attention_backward.py:262:19
	v_fmac_f32_e32 v65, v5, v3
	.loc	1 194 9                         ; attention_backward.py:194:9
	s_cbranch_scc1 .LBB0_1
; %bb.2:
	.loc	1 392 17                        ; attention_backward.py:392:17
	v_mov_b16_e32 v114.h, 0
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_mov_b16_e32 v4.h, v54.l
	v_and_b32_e32 v8, 0xffff0000, v54
	v_and_b32_e32 v54, 0xffff0000, v53
	v_mov_b16_e32 v5.h, v53.l
	v_mov_b16_e32 v5.l, v114.h
	v_mov_b16_e32 v70.h, v46.l
	v_mov_b16_e32 v69.h, v47.l
	.loc	1 176 24                        ; attention_backward.py:176:24
	v_mul_f32_e32 v53, v38, v54
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_mov_b16_e32 v54.h, v52.l
	v_and_b32_e32 v52, 0xffff0000, v52
	v_and_b32_e32 v46, 0xffff0000, v46
	v_mov_b16_e32 v67.h, v49.l
.Ltmp13:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_fmac_f32_e32 v53, v37, v5
.Ltmp14:
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_and_b32_e32 v47, 0xffff0000, v47
	v_mov_b16_e32 v73.h, v43.l
	.loc	1 176 24                        ; attention_backward.py:176:24
	v_mul_f32_e32 v46, v24, v46
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_and_b32_e32 v68, 0xffff0000, v49
	.loc	1 176 24                        ; attention_backward.py:176:24
	v_mul_f32_e32 v49, v28, v52
	v_mul_f32_e32 v47, v18, v47
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_and_b32_e32 v43, 0xffff0000, v43
	.loc	1 176 24                        ; attention_backward.py:176:24
	v_dual_mul_f32 v8, v40, v8 :: v_dual_and_b32 v7, 0xffff0000, v55
	v_mul_f32_e32 v52, v34, v68
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_and_b32_e32 v6, 0xffff0000, v56
	v_mov_b16_e32 v56.h, v50.l
	v_mov_b16_e32 v68.h, v48.l
	.loc	1 176 24                        ; attention_backward.py:176:24
	v_dual_mul_f32 v43, v10, v43 :: v_dual_and_b32 v48, 0xffff0000, v48
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_and_b32_e32 v50, 0xffff0000, v50
	v_mov_b16_e32 v2.h, v56.l
	v_mov_b16_e32 v3.h, v55.l
	v_mov_b16_e32 v3.l, v114.h
	.loc	1 176 24                        ; attention_backward.py:176:24
	v_mul_f32_e32 v7, v30, v7
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_mov_b16_e32 v55.h, v51.l
	v_mov_b16_e32 v56.l, v114.h
	v_mov_b16_e32 v67.l, v114.h
	s_delay_alu instid0(VALU_DEP_4)
.Ltmp15:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_dual_fmac_f32 v7, v29, v3 :: v_dual_and_b32 v72, 0xffff0000, v45
.Ltmp16:
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_mov_b16_e32 v71.h, v45.l
	.loc	1 176 24                        ; attention_backward.py:176:24
	v_mul_f32_e32 v45, v20, v48
	v_dual_mul_f32 v50, v36, v50 :: v_dual_and_b32 v51, 0xffff0000, v51
	v_dual_mul_f32 v6, v32, v6 :: v_dual_and_b32 v1, 31, v0
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_mov_b16_e32 v2.l, v114.h
	v_mov_b16_e32 v4.l, v114.h
	v_mov_b16_e32 v69.l, v114.h
.Ltmp17:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_fmac_f32_e32 v52, v33, v67
	v_fmac_f32_e32 v50, v35, v56
.Ltmp18:
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_mov_b16_e32 v54.l, v114.h
	v_mov_b16_e32 v55.l, v114.h
	.loc	1 176 24                        ; attention_backward.py:176:24
	v_mul_f32_e32 v51, v26, v51
	v_mul_f32_e32 v48, v22, v72
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_mov_b16_e32 v72.h, v44.l
	v_mov_b16_e32 v74.h, v42.l
	s_delay_alu instid0(VALU_DEP_4)
.Ltmp19:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_dual_fmac_f32 v51, v25, v55 :: v_dual_and_b32 v44, 0xffff0000, v44
.Ltmp20:
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_mov_b16_e32 v75.h, v41.l
.Ltmp21:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_dual_fmac_f32 v6, v31, v2 :: v_dual_and_b32 v41, 0xffff0000, v41
	v_dual_fmac_f32 v47, v17, v69 :: v_dual_fmac_f32 v8, v39, v4
	v_add_f32_e32 v5, v52, v50
.Ltmp22:
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_and_b32_e32 v42, 0xffff0000, v42
	v_mov_b16_e32 v68.l, v114.h
	v_mov_b16_e32 v70.l, v114.h
	v_mov_b16_e32 v71.l, v114.h
	v_mov_b16_e32 v72.l, v114.h
	v_mov_b16_e32 v73.l, v114.h
	v_mov_b16_e32 v74.l, v114.h
	v_mov_b16_e32 v75.l, v114.h
	.loc	1 176 24                        ; attention_backward.py:176:24
	v_dual_mul_f32 v44, v12, v44 :: v_dual_fmac_f32 v49, v27, v54
.Ltmp23:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_dual_add_f32 v3, v53, v8 :: v_dual_mul_f32 v2, v16, v42
	v_fmac_f32_e32 v45, v19, v68
	v_dual_add_f32 v4, v7, v6 :: v_dual_mul_f32 v7, v14, v41
	v_fmac_f32_e32 v48, v21, v71
	v_dual_fmac_f32 v46, v23, v70 :: v_dual_fmac_f32 v43, v9, v73
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_dual_add_f32 v6, v51, v49 :: v_dual_fmac_f32 v7, v13, v75
	v_fmac_f32_e32 v2, v15, v74
	v_fmac_f32_e32 v44, v11, v72
	v_dual_add_f32 v3, v3, v4 :: v_dual_add_f32 v4, v5, v6
.Ltmp24:
	.loc	1 264 43                        ; attention_backward.py:264:43
	v_cmp_gt_f32_e64 s1, 0x800000, v65
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp25:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_e32 v2, v7, v2
	v_add_f32_e32 v7, v43, v44
.Ltmp26:
	.loc	1 124 21                        ; attention_backward.py:124:21
	v_or_b32_e32 v42, s5, v1
.Ltmp27:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_mov_b32_e32 v41, v4
.Ltmp28:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_e32 v5, v48, v46
.Ltmp29:
	.loc	1 264 26                        ; attention_backward.py:264:26
	v_cmp_lt_f32_e64 s4, 0, v65
.Ltmp30:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_e32 v2, v2, v7
	v_add_f32_e32 v6, v47, v45
.Ltmp31:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_mov_b32_dpp v41, v41 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp32:
	.loc	1 264 43                        ; attention_backward.py:264:43
	v_cndmask_b32_e64 v7, 0, 0x42000000, s1
	.loc	1 266 9                         ; attention_backward.py:266:9
	s_waitcnt lgkmcnt(0)
.Ltmp33:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_mov_b32_e32 v43, v2
.Ltmp34:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_e32 v5, v5, v6
.Ltmp35:
	.loc	1 266 9                         ; attention_backward.py:266:9
	s_barrier
	s_and_b32 s13, s13, 0xffff
	s_mov_b32 s15, 0x31027000
.Ltmp36:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_mov_b32_dpp v43, v43 row_xmask:4 row_mask:0xf bank_mask:0xf
	v_dual_mov_b32 v6, v5 :: v_dual_lshlrev_b32 v63, 4, v63
	s_mov_b32 s14, 0x7ffffffe
.Ltmp37:
	.loc	1 267 9                         ; attention_backward.py:267:9
	s_and_b32 s9, s9, 0xffff
	s_mov_b32 s10, s14
	s_delay_alu instid0(VALU_DEP_1)
.Ltmp38:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_mov_b32_dpp v6, v6 row_xmask:4 row_mask:0xf bank_mask:0xf
	v_mov_b32_e32 v8, v3
.Ltmp39:
	.loc	1 267 9                         ; attention_backward.py:267:9
	s_mov_b32 s11, s15
	s_mov_b32 s33, 0
	s_and_b32 s21, s21, 0xffff
.Ltmp40:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_e32 v5, v5, v6
.Ltmp41:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_mov_b32_dpp v8, v8 row_xmask:4 row_mask:0xf bank_mask:0xf
	s_mov_b32 s42, s38
	s_mov_b32 s43, s39
	s_mov_b32 s22, s14
	s_mov_b32 s23, s15
.Ltmp42:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_dual_add_f32 v3, v3, v8 :: v_dual_add_f32 v4, v4, v41
.Ltmp43:
	.loc	1 264 43                        ; attention_backward.py:264:43
	v_cndmask_b32_e64 v8, 0, 32, s1
.Ltmp44:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_e32 v2, v2, v43
.Ltmp45:
	.loc	1 128 21                        ; attention_backward.py:128:21
	v_cmp_gt_i32_e64 s1, 0x800, v42
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_3)
.Ltmp46:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_mov_b32_e32 v41, v3
	s_mov_b32 s34, 0x76543210
.Ltmp47:
	.loc	1 264 43                        ; attention_backward.py:264:43
	v_ldexp_f32 v8, v65, v8
.Ltmp48:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_dual_mov_b32 v42, v2 :: v_dual_and_b32 v65, 24, v0
	v_mov_b32_dpp v41, v41 row_xmask:2 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp49:
	.loc	1 264 43                        ; attention_backward.py:264:43
	v_log_f32_e32 v6, v8
.Ltmp50:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_mov_b32_dpp v42, v42 row_xmask:2 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp51:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_dual_add_f32 v3, v3, v41 :: v_dual_mov_b32 v44, v4
.Ltmp52:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_mov_b32_e32 v41, v3
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_mov_b32_dpp v44, v44 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp53:
	.loc	1 264 43                        ; attention_backward.py:264:43
	v_sub_f32_e32 v6, v6, v7
	.loc	1 266 9                         ; attention_backward.py:266:9
	v_lshl_add_u32 v7, v57, 2, 0
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp54:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_mov_b32_dpp v41, v41 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp55:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_e32 v4, v4, v44
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp56:
	.loc	1 264 37                        ; attention_backward.py:264:37
	v_dual_add_f32 v6, v66, v6 :: v_dual_mov_b32 v43, v4
	.loc	1 264 17 is_stmt 0              ; attention_backward.py:264:17
	v_cndmask_b32_e64 v115, 0, v6, s4
	.loc	1 266 9 is_stmt 1               ; attention_backward.py:266:9
	v_cmp_eq_u32_e64 s4, 0, v58
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_2)
.Ltmp57:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_mov_b32_dpp v43, v43 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_e32 v8, v5
.Ltmp58:
	.loc	1 266 9                         ; attention_backward.py:266:9
	s_and_b32 s1, s4, s1
	.loc	1 392 17                        ; attention_backward.py:392:17
	v_cmp_o_f32_e64 s4, v37, v37
.Ltmp59:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_mov_b32_dpp v8, v8 row_xmask:2 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_4)
.Ltmp60:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_dual_add_f32 v5, v5, v8 :: v_dual_add_f32 v8, v2, v42
.Ltmp61:
	.loc	1 266 9                         ; attention_backward.py:266:9
	v_lshl_add_u32 v2, v58, 1, v7
	v_lshl_add_u32 v7, v1, 2, 0
	.loc	1 266 18 is_stmt 0              ; attention_backward.py:266:18
	v_or_b32_e32 v1, s6, v1
.Ltmp62:
	.loc	2 293 12 is_stmt 1              ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_mov_b32_e32 v42, v5
	v_mov_b32_e32 v6, v8
.Ltmp63:
	.loc	1 266 9                         ; attention_backward.py:266:9
	ds_store_b32 v2, v115
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b32 v7, v7
.Ltmp64:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_mov_b32_dpp v42, v42 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v6, v6 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp65:
	.loc	1 266 9                         ; attention_backward.py:266:9
	v_add_lshl_u32 v1, v1, s5, 2
.Ltmp66:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_dual_add_f32 v2, v3, v41 :: v_dual_add_f32 v3, v4, v43
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_add_f32_e32 v4, v5, v42
	v_add_f32_e32 v5, v8, v6
.Ltmp67:
	.loc	1 267 9                         ; attention_backward.py:267:9
	v_lshlrev_b32_e32 v41, 1, v64
	.loc	1 266 9                         ; attention_backward.py:266:9
	v_cndmask_b32_e64 v6, 0x80000000, v1, s1
	.loc	1 267 9                         ; attention_backward.py:267:9
	v_lshrrev_b32_e32 v1, 1, v65
	.loc	1 392 17                        ; attention_backward.py:392:17
	v_bfe_u32 v8, v37, 16, 1
	v_cmp_o_f32_e64 s5, v39, v39
	.loc	1 267 9                         ; attention_backward.py:267:9
	v_add_nc_u32_e32 v64, 0, v41
	.loc	1 392 17                        ; attention_backward.py:392:17
	v_cmp_o_f32_e64 s6, v40, v40
	.loc	1 267 9                         ; attention_backward.py:267:9
	v_add3_u32 v1, 0, v63, v1
	.loc	1 392 17                        ; attention_backward.py:392:17
	v_add3_u32 v8, v37, v8, 0x7fff
	.loc	1 266 9                         ; attention_backward.py:266:9
	s_waitcnt lgkmcnt(0)
	buffer_store_b32 v7, v6, s[12:15], 0 offen
	.loc	1 267 9                         ; attention_backward.py:267:9
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v64, v[2:5]
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b32 v7, v1
	.loc	1 392 17                        ; attention_backward.py:392:17
	v_cndmask_b16 v37.l, 0x7fff, v8.h, s4
	v_bfe_u32 v8, v40, 16, 1
	v_cmp_o_f32_e64 s4, v38, v38
	v_dual_mov_b32 v1, 0 :: v_dual_lshlrev_b32 v66, 4, v61
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_add3_u32 v8, v40, v8, 0x7fff
	v_mov_b32_e32 v67, v1
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 310 21                        ; attention_backward.py:310:21
	v_cmp_gt_i32_e64 s1, s28, v66
	v_mov_b32_e32 v69, v1
	v_mov_b32_e32 v71, v1
	v_mov_b32_e32 v70, v1
	v_mov_b32_e32 v68, v1
	v_mov_b32_e32 v72, v1
	.loc	1 267 9                         ; attention_backward.py:267:9
	s_waitcnt lgkmcnt(0)
	buffer_store_b32 v7, v6, s[8:11], 0 offen
	.loc	1 392 17                        ; attention_backward.py:392:17
	v_bfe_u32 v6, v38, 16, 1
	v_bfe_u32 v7, v39, 16, 1
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_add3_u32 v6, v38, v6, 0x7fff
	v_add3_u32 v7, v39, v7, 0x7fff
	v_cndmask_b16 v38.h, 0x7fff, v8.h, s6
	v_bfe_u32 v8, v31, 16, 1
	v_cmp_o_f32_e64 s6, v31, v31
	v_cndmask_b16 v37.h, 0x7fff, v6.h, s4
	v_bfe_u32 v6, v29, 16, 1
	v_cndmask_b16 v38.l, 0x7fff, v7.h, s5
	v_bfe_u32 v7, v30, 16, 1
	v_cmp_o_f32_e64 s4, v29, v29
	v_cmp_o_f32_e64 s5, v30, v30
	v_add3_u32 v6, v29, v6, 0x7fff
	v_add3_u32 v8, v31, v8, 0x7fff
	v_add3_u32 v7, v30, v7, 0x7fff
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_cndmask_b16 v39.l, 0x7fff, v6.h, s4
	v_bfe_u32 v6, v32, 16, 1
	v_cndmask_b16 v39.h, 0x7fff, v7.h, s5
	v_bfe_u32 v7, v33, 16, 1
	v_cndmask_b16 v40.l, 0x7fff, v8.h, s6
	v_bfe_u32 v8, v34, 16, 1
	v_add3_u32 v6, v32, v6, 0x7fff
	v_cmp_o_f32_e64 s4, v32, v32
	v_add3_u32 v7, v33, v7, 0x7fff
	v_cmp_o_f32_e64 s5, v33, v33
	v_add3_u32 v8, v34, v8, 0x7fff
	v_cmp_o_f32_e64 s6, v34, v34
	v_cndmask_b16 v40.h, 0x7fff, v6.h, s4
	v_bfe_u32 v6, v35, 16, 1
	v_cndmask_b16 v29.l, 0x7fff, v7.h, s5
	v_bfe_u32 v7, v36, 16, 1
	v_cndmask_b16 v29.h, 0x7fff, v8.h, s6
	v_bfe_u32 v8, v25, 16, 1
	v_add3_u32 v6, v35, v6, 0x7fff
	v_cmp_o_f32_e64 s4, v35, v35
	v_add3_u32 v7, v36, v7, 0x7fff
	v_cmp_o_f32_e64 s5, v36, v36
	v_add3_u32 v8, v25, v8, 0x7fff
	v_cmp_o_f32_e64 s6, v25, v25
	v_cndmask_b16 v30.l, 0x7fff, v6.h, s4
	v_bfe_u32 v6, v26, 16, 1
	v_cndmask_b16 v30.h, 0x7fff, v7.h, s5
	v_bfe_u32 v7, v27, 16, 1
	v_cndmask_b16 v31.l, 0x7fff, v8.h, s6
	v_bfe_u32 v8, v28, 16, 1
	v_add3_u32 v6, v26, v6, 0x7fff
	v_cmp_o_f32_e64 s4, v26, v26
	v_add3_u32 v7, v27, v7, 0x7fff
	v_cmp_o_f32_e64 s5, v27, v27
	v_add3_u32 v8, v28, v8, 0x7fff
	v_cmp_o_f32_e64 s6, v28, v28
	v_cndmask_b16 v31.h, 0x7fff, v6.h, s4
	v_bfe_u32 v6, v21, 16, 1
	v_cndmask_b16 v32.l, 0x7fff, v7.h, s5
	v_bfe_u32 v7, v22, 16, 1
	v_cndmask_b16 v32.h, 0x7fff, v8.h, s6
	v_bfe_u32 v8, v23, 16, 1
	v_add3_u32 v6, v21, v6, 0x7fff
	v_cmp_o_f32_e64 s4, v21, v21
	v_add3_u32 v7, v22, v7, 0x7fff
	v_cmp_o_f32_e64 s5, v22, v22
	v_add3_u32 v8, v23, v8, 0x7fff
	v_cmp_o_f32_e64 s6, v23, v23
	v_cndmask_b16 v21.l, 0x7fff, v6.h, s4
	v_bfe_u32 v6, v24, 16, 1
	v_cndmask_b16 v21.h, 0x7fff, v7.h, s5
	v_bfe_u32 v7, v17, 16, 1
	v_cndmask_b16 v22.l, 0x7fff, v8.h, s6
	v_bfe_u32 v8, v18, 16, 1
	v_add3_u32 v6, v24, v6, 0x7fff
	v_cmp_o_f32_e64 s4, v24, v24
	v_add3_u32 v7, v17, v7, 0x7fff
	v_cmp_o_f32_e64 s5, v17, v17
	v_add3_u32 v8, v18, v8, 0x7fff
	v_cmp_o_f32_e64 s6, v18, v18
	v_cndmask_b16 v22.h, 0x7fff, v6.h, s4
	v_bfe_u32 v6, v19, 16, 1
	v_cndmask_b16 v23.l, 0x7fff, v7.h, s5
	v_bfe_u32 v7, v20, 16, 1
	v_cndmask_b16 v23.h, 0x7fff, v8.h, s6
	v_bfe_u32 v8, v13, 16, 1
	v_add3_u32 v6, v19, v6, 0x7fff
	v_cmp_o_f32_e64 s4, v19, v19
	v_add3_u32 v7, v20, v7, 0x7fff
	v_cmp_o_f32_e64 s5, v20, v20
	v_add3_u32 v8, v13, v8, 0x7fff
	v_cmp_o_f32_e64 s6, v13, v13
	v_bfe_u32 v13, v14, 16, 1
	v_cndmask_b16 v24.l, 0x7fff, v6.h, s4
	v_cndmask_b16 v24.h, 0x7fff, v7.h, s5
	v_bfe_u32 v7, v15, 16, 1
	v_cndmask_b16 v6.l, 0x7fff, v8.h, s6
	v_bfe_u32 v8, v16, 16, 1
	v_add3_u32 v13, v14, v13, 0x7fff
	v_cmp_o_f32_e64 s4, v14, v14
	v_add3_u32 v7, v15, v7, 0x7fff
	v_cmp_o_f32_e64 s5, v15, v15
	v_add3_u32 v8, v16, v8, 0x7fff
	v_cmp_o_f32_e64 s6, v16, v16
	v_bfe_u32 v14, v9, 16, 1
	v_cndmask_b16 v6.h, 0x7fff, v13.h, s4
	v_bfe_u32 v13, v10, 16, 1
	v_cndmask_b16 v7.l, 0x7fff, v7.h, s5
	v_cndmask_b16 v7.h, 0x7fff, v8.h, s6
	v_add3_u32 v8, v9, v14, 0x7fff
	v_bfe_u32 v14, v11, 16, 1
	v_cmp_o_f32_e64 s4, v9, v9
	v_add3_u32 v9, v10, v13, 0x7fff
	v_cmp_o_f32_e64 s5, v10, v10
	v_bfe_u32 v10, v12, 16, 1
	v_add3_u32 v13, v11, v14, 0x7fff
	v_cmp_o_f32_e64 s6, v11, v11
	v_cndmask_b16 v8.l, 0x7fff, v8.h, s4
	v_cndmask_b16 v8.h, 0x7fff, v9.h, s5
	v_add3_u32 v9, v12, v10, 0x7fff
	v_lshlrev_b32_e32 v10, 7, v57
	v_lshlrev_b32_e32 v11, 6, v58
	v_cmp_o_f32_e64 s4, v12, v12
	v_xad_u32 v12, v60, v41, 0
	v_cndmask_b16 v9.l, 0x7fff, v13.h, s6
	v_mov_b32_e32 v17, 0
	v_or3_b32 v10, v10, v11, v63
	v_cndmask_b16 v9.h, 0x7fff, v9.h, s4
	ds_store_b128 v12, v[37:40]
	ds_store_b128 v12, v[29:32] offset:1024
	ds_store_b128 v12, v[21:24] offset:2048
	ds_store_b128 v12, v[6:9] offset:3072
	s_waitcnt lgkmcnt(0)
	v_add_nc_u32_e32 v6, 0, v10
	v_xad_u32 v8, v10, 32, 0
	v_xad_u32 v7, v10, 16, 0
	v_xad_u32 v9, v10, 48, 0
	s_barrier
	ds_load_b128 v[25:28], v6
	ds_load_b128 v[29:32], v7
	v_xad_u32 v6, v10, 64, 0
	ds_load_b128 v[33:36], v8
	ds_load_b128 v[37:40], v9
	v_xad_u32 v8, 0x60, v10, 0
	v_xad_u32 v7, 0x50, v10, 0
	v_xad_u32 v9, 0x70, v10, 0
	ds_load_b128 v[41:44], v6
	ds_load_b128 v[45:48], v7
	ds_load_b128 v[49:52], v8
	ds_load_b128 v[53:56], v9
	.loc	1 396 43                        ; attention_backward.py:396:43
	s_waitcnt lgkmcnt(0)
	s_barrier
	v_lshlrev_b32_e32 v9, 9, v61
	ds_store_b128 v64, v[2:5]
	v_dual_mov_b32 v3, 0x5410 :: v_dual_and_b32 v6, 4, v59
	v_lshrrev_b32_e32 v7, 2, v58
	v_dual_mov_b32 v61, v1 :: v_dual_and_b32 v8, 12, v0
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_cndmask_b32_e64 v3, 0x1054, v3, s3
	v_dual_mov_b32 v4, 0x7632 :: v_dual_mov_b32 v59, v1
	s_waitcnt lgkmcnt(0)
	v_lshl_or_b32 v116, v8, 1, v62
	s_delay_alu instid0(VALU_DEP_3)
	v_lshl_or_b32 v3, v3, 8, v3
	s_barrier
	v_lshlrev_b32_e32 v8, 5, v8
	v_lshl_or_b32 v10, v65, 6, v63
	v_xor_b32_e32 v5, 16, v116
	v_dual_mov_b32 v60, v1 :: v_dual_and_b32 v3, 0x540054, v3
	v_mov_b32_e32 v62, v1
	v_mov_b32_e32 v64, v1
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_dual_mov_b32 v21, v1 :: v_dual_add_nc_u32 v122, 0, v5
	v_lshl_or_b32 v3, v3, 4, v3
	v_mov_b32_e32 v18, v1
	v_mov_b32_e32 v19, v1
	v_mov_b32_e32 v20, v1
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_4) | instid1(VALU_DEP_4)
	v_dual_mov_b32 v22, v1 :: v_dual_and_b32 v119, 0x5040504, v3
	v_lshlrev_b32_e32 v3, 5, v0
	v_lshl_add_u32 v0, v57, 1, 0
	v_dual_mov_b32 v57, 0 :: v_dual_add_nc_u32 v6, 0, v6
	v_cndmask_b32_e64 v4, 0x3276, v4, s3
	v_dual_mov_b32 v23, v1 :: v_dual_add_nc_u32 v128, 0, v3
	v_mov_b32_e32 v24, v1
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_add3_u32 v2, v6, v7, v63
	v_lshl_or_b32 v4, v4, 8, v4
	v_lshlrev_b32_e32 v7, 1, v65
	v_mov_b32_e32 v63, v1
	v_or3_b32 v118, v8, v9, v66
	ds_load_b32 v117, v2
	v_and_b32_e32 v4, 0x760076, v4
	v_xor_b32_e32 v2, 8, v116
	v_xor_b32_e32 v6, 24, v116
	v_xor_b32_e32 v7, v10, v7
	v_lshl_add_u32 v8, v58, 2, 0
	v_lshl_or_b32 v4, v4, 4, v4
	v_xor_b32_e32 v9, 16, v118
	v_xor_b32_e32 v10, 32, v118
	v_xor_b32_e32 v11, 48, v118
	v_add_nc_u32_e32 v121, 0, v2
	v_and_b32_e32 v120, 0x7060706, v4
	v_add_nc_u32_e32 v123, 0, v6
	v_add_nc_u32_e32 v124, v8, v7
	v_add_nc_u32_e32 v125, 0, v9
	v_dual_mov_b32 v9, 0 :: v_dual_add_nc_u32 v126, 0, v10
	v_dual_mov_b32 v58, v1 :: v_dual_add_nc_u32 v127, 0, v11
	v_dual_mov_b32 v65, 0 :: v_dual_mov_b32 v66, v1
	v_mov_b32_e32 v10, v1
	v_mov_b32_e32 v11, v1
	v_mov_b32_e32 v12, v1
	v_mov_b32_e32 v13, v1
	v_mov_b32_e32 v14, v1
	v_mov_b32_e32 v15, v1
	v_mov_b32_e32 v16, v1
.LBB0_3:                                ; =>This Inner Loop Header: Depth=1
	.loc	1 275 21                        ; attention_backward.py:275:21
	s_or_b32 s3, s33, s27
	.loc	1 290 33                        ; attention_backward.py:290:33
	v_add_lshl_u32 v133, s33, v104, 1
	.loc	1 275 21                        ; attention_backward.py:275:21
	v_or_b32_e32 v129, s3, v102
	.loc	1 386 21                        ; attention_backward.py:386:21
	s_mul_i32 s4, s3, s30
	.loc	1 290 33                        ; attention_backward.py:290:33
	v_add_lshl_u32 v142, s33, v105, 1
	.loc	1 385 30                        ; attention_backward.py:385:30
	v_add_lshl_u32 v134, s4, v91, 1
	v_add_lshl_u32 v135, s4, v92, 1
	.loc	1 275 21                        ; attention_backward.py:275:21
	v_mad_u64_u32 v[129:130], null, v129, s29, v[81:82]
	.loc	1 290 33                        ; attention_backward.py:290:33
	v_add_lshl_u32 v143, s33, v106, 1
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 385 30                        ; attention_backward.py:385:30
	v_cndmask_b32_e64 v130, 0x80000000, v134, s2
	v_cndmask_b32_e64 v138, 0x80000000, v135, s2
	.loc	1 290 33                        ; attention_backward.py:290:33
	v_add_lshl_u32 v146, s33, v107, 1
	v_add_lshl_u32 v147, s33, v108, 1
	v_add_lshl_u32 v148, s33, v109, 1
	.loc	1 274 28                        ; attention_backward.py:274:28
	v_cndmask_b32_e64 v129, 0x80000000, v129, s0
	.loc	1 280 29                        ; attention_backward.py:280:29
	v_dual_mov_b32 v2, v1 :: v_dual_add_nc_u32 v131, 0, v116
	.loc	1 290 33                        ; attention_backward.py:290:33
	v_add_lshl_u32 v132, s33, v103, 1
	v_add_lshl_u32 v154, s33, v110, 1
	.loc	1 274 28                        ; attention_backward.py:274:28
	buffer_load_b64 v[144:145], v129, s[36:39], 0 offen
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 290 33                        ; attention_backward.py:290:33
	v_add_lshl_u32 v155, s33, v111, 1
	.loc	1 280 29                        ; attention_backward.py:280:29
	v_dual_mov_b32 v3, v1 :: v_dual_add_nc_u32 v156, 0, v118
	v_mov_b32_e32 v8, v1
	v_mov_b32_e32 v4, v1
	v_mov_b32_e32 v5, v1
	v_mov_b32_e32 v6, v1
	v_mov_b32_e32 v7, v1
	.loc	1 307 37                        ; attention_backward.py:307:37
	.loc	1 274 28                        ; attention_backward.py:274:28
	s_waitcnt vmcnt(0)
	ds_store_b64 v113, v[144:145]
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 385 30                        ; attention_backward.py:385:30
	s_clause 0x1
	buffer_load_b128 v[134:137], v130, s[20:23], 0 offen
	buffer_load_b128 v[138:141], v138, s[20:23], 0 offen
	.loc	1 290 33                        ; attention_backward.py:290:33
	s_clause 0x5
	buffer_load_u16 v157, v133, s[40:43], 0 offen
	buffer_load_u16 v158, v142, s[40:43], 0 offen
	buffer_load_u16 v159, v143, s[40:43], 0 offen
	buffer_load_u16 v160, v146, s[40:43], 0 offen
	buffer_load_u16 v129, v147, s[40:43], 0 offen
	buffer_load_u16 v130, v148, s[40:43], 0 offen
	.loc	1 274 28                        ; attention_backward.py:274:28
	ds_load_b64 v[146:147], v131
	ds_load_b64 v[148:149], v121
	ds_load_b64 v[150:151], v122
	ds_load_b64 v[152:153], v123
	.loc	1 290 33                        ; attention_backward.py:290:33
	s_clause 0x2
	buffer_load_u16 v131, v132, s[40:43], 0 offen
	buffer_load_u16 v132, v154, s[40:43], 0 offen
	buffer_load_u16 v133, v155, s[40:43], 0 offen
	.loc	1 393 17                        ; attention_backward.py:393:17
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 304 27                        ; attention_backward.py:304:27
	v_and_b32_e32 v161, 15, v144
	.loc	1 391 32                        ; attention_backward.py:391:32
	v_dual_mov_b32 v80, v8 :: v_dual_and_b32 v163, 15, v145
	v_dual_mov_b32 v79, v7 :: v_dual_mov_b32 v78, v6
	v_dual_mov_b32 v77, v5 :: v_dual_mov_b32 v76, v4
	v_dual_mov_b32 v75, v3 :: v_dual_mov_b32 v74, v2
	v_mov_b32_e32 v73, v1
	.loc	1 274 28                        ; attention_backward.py:274:28
	v_bfe_i32 v154, v144, 0, 8
	v_lshrrev_b32_e32 v155, 8, v144
	.loc	1 305 30                        ; attention_backward.py:305:30
	v_lshrrev_b16 v114.l, 4, v144.l
	.loc	1 304 28                        ; attention_backward.py:304:28
	v_and_b16 v142.l, v144.l, 15
	v_and_b16 v142.h, v144.h, 15
	.loc	1 304 27 is_stmt 0              ; attention_backward.py:304:27
	v_bfe_u32 v162, v144, 16, 4
	.loc	1 304 28                        ; attention_backward.py:304:28
	v_and_b16 v143.l, v145.l, 15
	v_and_b16 v143.h, v145.h, 15
	.loc	1 306 36 is_stmt 1              ; attention_backward.py:306:36
	v_cmp_lt_u16_e64 s3, 7, v142.l
	v_cmp_lt_u16_e64 s4, 7, v142.h
	.loc	1 304 27                        ; attention_backward.py:304:27
	v_bfe_u32 v142, v145, 8, 4
	.loc	1 306 36                        ; attention_backward.py:306:36
	v_cmp_lt_u16_e64 s5, 7, v143.l
	v_cmp_lt_u16_e64 s6, 7, v143.h
	.loc	1 304 27                        ; attention_backward.py:304:27
	v_bfe_u32 v143, v145, 24, 4
	.loc	1 305 30                        ; attention_backward.py:305:30
	v_and_b16 v114.l, v114.l, 15
	.loc	1 393 17                        ; attention_backward.py:393:17
	s_waitcnt vmcnt(10)
	ds_store_b128 v124, v[134:137]
	s_waitcnt vmcnt(9)
	ds_store_b128 v124, v[138:141] offset:256
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[138:141], v125
	ds_load_b128 v[134:137], v156
	.loc	1 290 33                        ; attention_backward.py:290:33
	s_waitcnt vmcnt(4)
	v_lshlrev_b32_e32 v129, 16, v129
	s_waitcnt vmcnt(3)
	v_lshlrev_b32_e32 v130, 16, v130
	.loc	1 391 32                        ; attention_backward.py:391:32
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[73:80], v[134:141], v[25:32], v[73:80]
	.loc	1 393 17                        ; attention_backward.py:393:17
	ds_load_b128 v[138:141], v127
	ds_load_b128 v[134:137], v126
	.loc	1 391 32                        ; attention_backward.py:391:32
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[73:80], v[134:141], v[33:40], v[73:80]
	.loc	1 393 17                        ; attention_backward.py:393:17
	ds_load_b128 v[134:137], v156 offset:64
	ds_load_b128 v[138:141], v125 offset:64
	.loc	1 304 27                        ; attention_backward.py:304:27
	v_bfe_u32 v156, v145, 16, 4
	.loc	1 391 32                        ; attention_backward.py:391:32
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[73:80], v[134:141], v[41:48], v[73:80]
	.loc	1 393 17                        ; attention_backward.py:393:17
	ds_load_b128 v[134:137], v126 offset:64
	ds_load_b128 v[138:141], v127 offset:64
	.loc	1 309 31                        ; attention_backward.py:309:31
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 391 32                        ; attention_backward.py:391:32
	v_wmma_f32_16x16x16_bf16 v[73:80], v[134:141], v[49:56], v[73:80]
	.loc	1 280 29                        ; attention_backward.py:280:29
	v_wmma_i32_16x16x16_iu4 v[134:141], v[146:147], v[82:83], v[1:8] neg_lo:[1,1,0]
	.loc	1 274 28                        ; attention_backward.py:274:28
	v_lshrrev_b64 v[5:6], 24, v[144:145]
	v_lshrrev_b32_e32 v2, 24, v145
	v_mov_b16_e64 v7.l, v144.h
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 280 29                        ; attention_backward.py:280:29
	v_wmma_i32_16x16x16_iu4 v[134:141], v[148:149], v[86:87], v[134:141] neg_lo:[1,1,0]
	.loc	1 274 28                        ; attention_backward.py:274:28
	v_alignbit_b32 v147, v145, v144, 24
	.loc	1 304 27                        ; attention_backward.py:304:27
	v_bfe_u32 v149, v144, 8, 4
	.loc	1 305 30                        ; attention_backward.py:305:30
	v_lshrrev_b16 v4.l, 4, v5.l
	.loc	1 304 28                        ; attention_backward.py:304:28
	v_and_b16 v2.h, v5.l, 15
	.loc	1 280 29                        ; attention_backward.py:280:29
	v_wmma_i32_16x16x16_iu4 v[134:141], v[150:151], v[84:85], v[134:141] neg_lo:[1,1,0]
	.loc	1 305 28                        ; attention_backward.py:305:28
	v_bfe_u32 v150, v144, 20, 4
	.loc	1 274 28                        ; attention_backward.py:274:28
	v_bfe_i32 v144, v5, 0, 8
	.loc	1 307 37                        ; attention_backward.py:307:37
	v_mov_b16_e64 v5.l, v154.l
	.loc	1 274 28                        ; attention_backward.py:274:28
	v_bfe_i32 v8, v145, 0, 8
	.loc	1 280 29                        ; attention_backward.py:280:29
	v_wmma_i32_16x16x16_iu4 v[134:141], v[152:153], v[88:89], v[134:141] neg_lo:[1,1,0]
	.loc	1 274 28                        ; attention_backward.py:274:28
	v_mov_b16_e64 v148.l, v145.h
	.loc	1 305 30                        ; attention_backward.py:305:30
	v_lshrrev_b16 v3.l, 4, v145.l
	.loc	1 307 37                        ; attention_backward.py:307:37
	v_cmp_gt_i16_e64 s8, 0, v5.l
	.loc	1 306 50                        ; attention_backward.py:306:50
	v_or_b32_e32 v5, -16, v161
	.loc	1 299 21                        ; attention_backward.py:299:21
	v_cvt_f32_i32_e32 v146, v134
	.loc	1 274 28                        ; attention_backward.py:274:28
	v_lshrrev_b32_e32 v134, 8, v145
	.loc	1 305 28                        ; attention_backward.py:305:28
	v_bfe_u32 v151, v145, 20, 4
	.loc	1 304 28                        ; attention_backward.py:304:28
	v_and_b16 v3.h, v155.l, 15
	.loc	1 306 27                        ; attention_backward.py:306:27
	v_cndmask_b32_e64 v145, v161, v5, s3
	.loc	1 306 50 is_stmt 0              ; attention_backward.py:306:50
	v_or_b32_e32 v5, -16, v162
	.loc	1 309 31 is_stmt 1              ; attention_backward.py:309:31
	v_mov_b16_e32 v7.h, v114.h
	v_mov_b16_e64 v134.h, v114.h
	.loc	1 306 36                        ; attention_backward.py:306:36
	v_cmp_lt_u16_e64 s3, 7, v3.h
	.loc	1 304 28                        ; attention_backward.py:304:28
	v_and_b16 v3.h, v134.l, 15
	.loc	1 306 27                        ; attention_backward.py:306:27
	v_cndmask_b32_e64 v152, v162, v5, s4
	.loc	1 306 50 is_stmt 0              ; attention_backward.py:306:50
	v_or_b32_e32 v5, -16, v163
	.loc	1 304 27 is_stmt 1              ; attention_backward.py:304:27
	v_and_b32_e32 v6, 15, v147
	.loc	1 306 36                        ; attention_backward.py:306:36
	v_cmp_lt_u16_e64 s9, 7, v2.h
	v_cmp_lt_u16_e64 s4, 7, v3.h
	.loc	1 304 28                        ; attention_backward.py:304:28
	v_and_b16 v3.h, v2.l, 15
	.loc	1 306 27                        ; attention_backward.py:306:27
	v_cndmask_b32_e64 v153, v163, v5, s5
	.loc	1 306 50 is_stmt 0              ; attention_backward.py:306:50
	v_or_b32_e32 v5, -16, v156
	.loc	1 299 21 is_stmt 1              ; attention_backward.py:299:21
	v_cvt_f32_i32_e32 v136, v136
	v_cvt_f32_i32_e32 v137, v137
	v_mul_f32_e32 v146, v112, v146
	v_cvt_f32_i32_e32 v138, v138
	.loc	1 306 27                        ; attention_backward.py:306:27
	v_cndmask_b32_e64 v154, v156, v5, s6
	.loc	1 307 37                        ; attention_backward.py:307:37
	v_mov_b16_e32 v5.l, v8.l
	.loc	1 306 36                        ; attention_backward.py:306:36
	v_cmp_lt_u16_e64 s6, 7, v3.h
	.loc	1 299 21                        ; attention_backward.py:299:21
	v_cvt_f32_i32_e32 v135, v135
	v_cvt_f32_i32_e32 v140, v140
	v_cvt_f32_i32_e32 v139, v139
	.loc	1 307 37                        ; attention_backward.py:307:37
	v_cmp_gt_i16_e64 s5, 0, v5.l
	.loc	1 306 50                        ; attention_backward.py:306:50
	v_or_b32_e32 v5, -16, v149
	.loc	1 299 21                        ; attention_backward.py:299:21
	v_mul_f32_e32 v135, v112, v135
	v_cvt_f32_i32_e32 v141, v141
	v_mul_f32_e32 v140, v112, v140
	.loc	1 311 21                        ; attention_backward.py:311:21
	v_cvt_f32_i32_e32 v145, v145
	.loc	1 306 27                        ; attention_backward.py:306:27
	v_cndmask_b32_e64 v149, v149, v5, s3
	.loc	1 306 50 is_stmt 0              ; attention_backward.py:306:50
	v_or_b32_e32 v5, -16, v142
	.loc	1 299 21 is_stmt 1              ; attention_backward.py:299:21
	v_mul_f32_e32 v139, v112, v139
	.loc	1 311 21                        ; attention_backward.py:311:21
	v_cvt_f32_i32_e32 v153, v153
	v_cvt_f32_i32_e32 v152, v152
	v_cvt_f32_i32_e32 v149, v149
	.loc	1 306 27                        ; attention_backward.py:306:27
	v_cndmask_b32_e64 v142, v142, v5, s4
	.loc	1 306 50 is_stmt 0              ; attention_backward.py:306:50
	v_or_b32_e32 v5, -16, v143
	.loc	1 345 58 is_stmt 1              ; attention_backward.py:345:58
	v_fma_f32 v130, v139, v130, -v115
	.loc	1 309 31                        ; attention_backward.py:309:31
	v_mov_b16_e32 v8.h, v114.h
	.loc	1 311 21                        ; attention_backward.py:311:21
	v_cvt_f32_i32_e32 v154, v154
	v_cvt_f32_i32_e32 v142, v142
	.loc	1 306 27                        ; attention_backward.py:306:27
	v_cndmask_b32_e64 v143, v143, v5, s6
	.loc	1 274 28                        ; attention_backward.py:274:28
	v_bfe_i32 v5, v7, 0, 8
	.loc	1 396 43                        ; attention_backward.py:396:43
	v_sub_f32_e32 v80, v80, v117
	.loc	1 345 45                        ; attention_backward.py:345:45
	v_exp_f32_e32 v130, v130
	.loc	1 309 31                        ; attention_backward.py:309:31
	v_mov_b16_e32 v4.h, v114.h
	.loc	1 311 21                        ; attention_backward.py:311:21
	v_cvt_f32_i32_e32 v143, v143
	.loc	1 307 37                        ; attention_backward.py:307:37
	v_cmp_gt_i16_e64 s10, 0, v5.l
	.loc	1 274 28                        ; attention_backward.py:274:28
	v_bfe_i32 v5, v148, 0, 8
	.loc	1 309 31                        ; attention_backward.py:309:31
	v_mov_b16_e32 v3.h, v114.h
	.loc	1 299 21                        ; attention_backward.py:299:21
	v_mul_f32_e32 v137, v112, v137
	v_mul_f32_e32 v138, v112, v138
	v_mul_f32_e32 v141, v112, v141
	.loc	1 307 37                        ; attention_backward.py:307:37
	v_cmp_gt_i16_e64 s11, 0, v5.l
	.loc	1 274 28                        ; attention_backward.py:274:28
	v_bfe_i32 v5, v155, 0, 8
	.loc	1 345 29                        ; attention_backward.py:345:29
	v_cndmask_b32_e32 v130, 0, v130, vcc_lo
	.loc	1 345 58 is_stmt 0              ; attention_backward.py:345:58
	v_fma_f32 v129, v138, v129, -v115
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 307 37 is_stmt 1              ; attention_backward.py:307:37
	v_cmp_gt_i16_e64 s7, 0, v5.l
	.loc	1 274 28                        ; attention_backward.py:274:28
	v_bfe_i32 v5, v134, 0, 8
	.loc	1 345 45                        ; attention_backward.py:345:45
	v_exp_f32_e32 v129, v129
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	.loc	1 307 37                        ; attention_backward.py:307:37
	v_cmp_gt_i16_e64 s4, 0, v5.l
	.loc	1 274 28                        ; attention_backward.py:274:28
	v_bfe_i32 v5, v2, 0, 8
	.loc	1 309 31                        ; attention_backward.py:309:31
	v_mov_b16_e32 v2.h, v114.h
	.loc	1 307 37                        ; attention_backward.py:307:37
	v_cmp_gt_i16_e64 s3, 0, v5.l
	.loc	1 306 50                        ; attention_backward.py:306:50
	v_or_b32_e32 v5, -16, v6
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 345 29                        ; attention_backward.py:345:29
	v_cndmask_b32_e32 v129, 0, v129, vcc_lo
	.loc	1 306 27                        ; attention_backward.py:306:27
	v_cndmask_b32_e64 v147, v6, v5, s9
	.loc	1 307 37                        ; attention_backward.py:307:37
	v_mov_b16_e64 v5.l, v144.l
	.loc	1 309 31                        ; attention_backward.py:309:31
	v_mov_b16_e32 v6.h, v114.h
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 311 21                        ; attention_backward.py:311:21
	v_cvt_f32_i32_e32 v147, v147
	.loc	1 307 37                        ; attention_backward.py:307:37
	v_cmp_gt_i16_e64 s6, 0, v5.l
	.loc	1 307 52 is_stmt 0              ; attention_backward.py:307:52
	v_or_b32_e32 v5, -16, v150
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 307 28                        ; attention_backward.py:307:28
	v_cndmask_b32_e64 v144, v150, v5, s10
	.loc	1 307 52                        ; attention_backward.py:307:52
	v_or_b32_e32 v5, -16, v151
	.loc	1 290 33 is_stmt 1              ; attention_backward.py:290:33
	v_lshlrev_b32_e32 v150, 16, v157
	.loc	1 311 21                        ; attention_backward.py:311:21
	v_cvt_f32_i32_e32 v144, v144
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 307 28                        ; attention_backward.py:307:28
	v_cndmask_b32_e64 v148, v151, v5, s11
	.loc	1 345 58                        ; attention_backward.py:345:58
	v_fma_f32 v146, v146, v150, -v115
	.loc	1 290 33                        ; attention_backward.py:290:33
	v_lshlrev_b32_e32 v150, 16, v158
	v_lshlrev_b32_e32 v151, 16, v160
	.loc	1 305 30                        ; attention_backward.py:305:30
	v_lshrrev_b16 v5.l, 4, v155.l
	.loc	1 311 21                        ; attention_backward.py:311:21
	v_cvt_f32_i32_e32 v148, v148
	.loc	1 345 45                        ; attention_backward.py:345:45
	v_exp_f32_e32 v146, v146
	.loc	1 345 58 is_stmt 0              ; attention_backward.py:345:58
	v_fma_f32 v150, v135, v150, -v115
	v_fma_f32 v137, v137, v151, -v115
	.loc	1 307 52 is_stmt 1              ; attention_backward.py:307:52
	v_or_b32_e32 v151, -16, v114
	.loc	1 290 33                        ; attention_backward.py:290:33
	s_waitcnt vmcnt(2)
	v_lshlrev_b32_e32 v131, 16, v131
	.loc	1 299 21                        ; attention_backward.py:299:21
	v_dual_mul_f32 v135, v112, v136 :: v_dual_lshlrev_b32 v136, 16, v159
	.loc	1 345 45                        ; attention_backward.py:345:45
	v_exp_f32_e32 v150, v150
	.loc	1 307 28                        ; attention_backward.py:307:28
	v_cndmask_b32_e64 v151, v114, v151, s8
	.loc	1 345 45                        ; attention_backward.py:345:45
	v_exp_f32_e32 v137, v137
	.loc	1 345 29 is_stmt 0              ; attention_backward.py:345:29
	v_cndmask_b32_e32 v146, 0, v146, vcc_lo
	.loc	1 311 21 is_stmt 1              ; attention_backward.py:311:21
	s_waitcnt vmcnt(1)
	v_dual_mul_f32 v139, v145, v131 :: v_dual_lshlrev_b32 v132, 16, v132
	v_cvt_f32_i32_e32 v151, v151
	.loc	1 290 33                        ; attention_backward.py:290:33
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v133, 16, v133
	.loc	1 345 58                        ; attention_backward.py:345:58
	v_fma_f32 v136, v135, v136, -v115
	v_fma_f32 v132, v140, v132, -v115
	.loc	1 311 21                        ; attention_backward.py:311:21
	v_mul_f32_e32 v140, v144, v131
	v_mul_f32_e32 v138, v151, v131
	.loc	1 345 58                        ; attention_backward.py:345:58
	v_fma_f32 v133, v141, v133, -v115
	.loc	1 311 21                        ; attention_backward.py:311:21
	v_dual_mul_f32 v141, v148, v131 :: v_dual_cndmask_b32 v150, 0, v150
	.loc	1 309 31                        ; attention_backward.py:309:31
	v_cndmask_b32_e64 v139, 0, v139, s1
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_cndmask_b32_e64 v138, 0, v138, s1
	.loc	1 305 30                        ; attention_backward.py:305:30
	v_lshrrev_b16 v135.l, 4, v134.l
	.loc	1 309 31                        ; attention_backward.py:309:31
	v_cndmask_b32_e64 v141, 0, v141, s1
	.loc	1 345 45                        ; attention_backward.py:345:45
	v_exp_f32_e32 v132, v132
	.loc	1 309 31                        ; attention_backward.py:309:31
	v_mov_b16_e64 v7.l, v139.h
	v_mov_b16_e64 v114.l, v138.h
	.loc	1 311 21                        ; attention_backward.py:311:21
	v_mul_f32_e32 v148, v153, v131
	.loc	1 309 31                        ; attention_backward.py:309:31
	v_mov_b16_e64 v134.l, v141.h
	.loc	1 345 29                        ; attention_backward.py:345:29
	v_cndmask_b32_e32 v137, 0, v137, vcc_lo
	.loc	1 309 31                        ; attention_backward.py:309:31
	v_cndmask_b32_e64 v140, 0, v140, s1
	v_and_b32_e32 v151, 1, v114
	.loc	1 305 30                        ; attention_backward.py:305:30
	v_and_b16 v114.l, v5.l, 15
	.loc	1 311 21                        ; attention_backward.py:311:21
	v_mul_f32_e32 v144, v149, v131
	v_dual_mul_f32 v143, v143, v131 :: v_dual_and_b32 v134, 1, v134
	.loc	1 345 45                        ; attention_backward.py:345:45
	v_exp_f32_e32 v136, v136
	.loc	1 311 21                        ; attention_backward.py:311:21
	v_mul_f32_e32 v145, v152, v131
	.loc	1 309 31                        ; attention_backward.py:309:31
	v_mov_b16_e64 v8.l, v140.h
	.loc	1 345 29                        ; attention_backward.py:345:29
	v_dual_cndmask_b32 v132, 0, v132 :: v_dual_and_b32 v7, 1, v7
	.loc	1 307 52                        ; attention_backward.py:307:52
	v_or_b32_e32 v152, -16, v114
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 311 21                        ; attention_backward.py:311:21
	v_dual_mul_f32 v149, v154, v131 :: v_dual_and_b32 v8, 1, v8
	.loc	1 309 31                        ; attention_backward.py:309:31
	v_cndmask_b32_e64 v144, 0, v144, s1
	.loc	1 345 45                        ; attention_backward.py:345:45
	v_exp_f32_e32 v133, v133
	.loc	1 309 31                        ; attention_backward.py:309:31
	v_cmp_o_f32_e64 s13, v139, v139
	v_cmp_o_f32_e64 s16, v141, v141
	v_add3_u32 v7, v139, v7, 0x7fff
	v_add3_u32 v134, v141, v134, 0x7fff
	.loc	1 307 28                        ; attention_backward.py:307:28
	v_cndmask_b32_e64 v139, v114, v152, s7
	.loc	1 309 31                        ; attention_backward.py:309:31
	v_cmp_o_f32_e64 s15, v140, v140
	.loc	1 345 29                        ; attention_backward.py:345:29
	v_cndmask_b32_e32 v136, 0, v136, vcc_lo
	.loc	1 309 31                        ; attention_backward.py:309:31
	v_add3_u32 v8, v140, v8, 0x7fff
	v_mov_b16_e64 v114.l, v144.h
	.loc	1 396 43                        ; attention_backward.py:396:43
	v_sub_f32_e32 v73, v73, v117
	v_sub_f32_e32 v79, v79, v117
	v_sub_f32_e32 v140, v75, v117
	.loc	1 309 31                        ; attention_backward.py:309:31
	v_cndmask_b16 v75.l, 0x7fff, v7.h, s13
	v_cndmask_b16 v7.h, 0x7fff, v134.h, s16
	.loc	1 311 21                        ; attention_backward.py:311:21
	v_cvt_f32_i32_e32 v134, v139
	v_dual_mul_f32 v142, v142, v131 :: v_dual_cndmask_b32 v133, 0, v133
	.loc	1 309 31                        ; attention_backward.py:309:31
	v_cndmask_b32_e64 v145, 0, v145, s1
	.loc	1 396 43                        ; attention_backward.py:396:43
	v_sub_f32_e32 v141, v77, v117
	.loc	1 309 31                        ; attention_backward.py:309:31
	v_cndmask_b16 v77.h, 0x7fff, v8.h, s15
	v_and_b32_e32 v8, 1, v114
	.loc	1 311 21                        ; attention_backward.py:311:21
	v_mul_f32_e32 v134, v134, v131
	.loc	1 396 26                        ; attention_backward.py:396:26
	v_mul_f32_e32 v79, v132, v79
	v_dual_mul_f32 v73, v146, v73 :: v_dual_mul_f32 v136, v136, v140
	.loc	1 309 31                        ; attention_backward.py:309:31
	v_cmp_o_f32_e64 s14, v138, v138
	v_add3_u32 v138, v138, v151, 0x7fff
	.loc	1 396 43                        ; attention_backward.py:396:43
	v_sub_f32_e32 v76, v76, v117
	.loc	1 309 31                        ; attention_backward.py:309:31
	v_mov_b16_e64 v114.l, v145.h
	.loc	1 396 26                        ; attention_backward.py:396:26
	v_mul_f32_e32 v80, v133, v80
	.loc	1 397 34                        ; attention_backward.py:397:34
	v_dual_mul_f32 v133, s31, v136 :: v_dual_sub_f32 v74, v74, v117
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 396 26                        ; attention_backward.py:396:26
	v_mul_f32_e32 v137, v137, v76
	.loc	1 309 31                        ; attention_backward.py:309:31
	v_cmp_o_f32_e64 s17, v144, v144
	v_cndmask_b16 v75.h, 0x7fff, v138.h, s14
	v_add3_u32 v8, v144, v8, 0x7fff
	v_and_b32_e32 v138, 1, v114
	.loc	1 396 26                        ; attention_backward.py:396:26
	v_dual_mul_f32 v74, v150, v74 :: v_dual_mul_f32 v129, v129, v141
	.loc	1 311 21                        ; attention_backward.py:311:21
	v_mul_f32_e32 v147, v147, v131
	.loc	1 309 31                        ; attention_backward.py:309:31
	v_cmp_o_f32_e64 s18, v145, v145
	.loc	1 305 30                        ; attention_backward.py:305:30
	v_and_b16 v114.l, v4.l, 15
	.loc	1 309 31                        ; attention_backward.py:309:31
	v_cndmask_b16 v76.l, 0x7fff, v8.h, s17
	v_add3_u32 v8, v145, v138, 0x7fff
	.loc	1 397 34                        ; attention_backward.py:397:34
	v_mul_f32_e32 v129, s31, v129
	.loc	1 396 43                        ; attention_backward.py:396:43
	v_sub_f32_e32 v78, v78, v117
	.loc	1 309 31                        ; attention_backward.py:309:31
	v_cndmask_b32_e64 v147, 0, v147, s1
	v_cndmask_b32_e64 v132, 0, v134, s1
	v_cndmask_b16 v77.l, 0x7fff, v8.h, s18
	.loc	1 397 34                        ; attention_backward.py:397:34
	v_dual_mul_f32 v8, s31, v79 :: v_dual_mul_f32 v79, s31, v80
	.loc	1 396 26                        ; attention_backward.py:396:26
	v_dual_mul_f32 v78, v130, v78 :: v_dual_mul_f32 v73, s31, v73
	.loc	1 307 52                        ; attention_backward.py:307:52
	v_or_b32_e32 v130, -16, v114
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 397 33                        ; attention_backward.py:397:33
	v_bfe_u32 v144, v8, 16, 1
	v_cmp_o_f32_e64 s18, v8, v8
	.loc	1 397 34 is_stmt 0              ; attention_backward.py:397:34
	v_mul_f32_e32 v134, s31, v137
	.loc	1 309 31 is_stmt 1              ; attention_backward.py:309:31
	v_mov_b16_e64 v6.l, v132.h
	.loc	1 307 28                        ; attention_backward.py:307:28
	v_cndmask_b32_e64 v130, v114, v130, s6
	.loc	1 397 33                        ; attention_backward.py:397:33
	v_add3_u32 v8, v8, v144, 0x7fff
	.loc	1 309 31                        ; attention_backward.py:309:31
	v_mov_b16_e64 v114.l, v147.h
	v_mov_b16_e32 v5.h, v114.h
	.loc	1 397 33                        ; attention_backward.py:397:33
	v_bfe_u32 v80, v73, 16, 1
	.loc	1 311 21                        ; attention_backward.py:311:21
	v_cvt_f32_i32_e32 v130, v130
	.loc	1 397 33                        ; attention_backward.py:397:33
	v_cndmask_b16 v162.l, 0x7fff, v8.h, s18
	v_bfe_u32 v137, v133, 16, 1
	v_bfe_u32 v138, v134, 16, 1
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 311 21                        ; attention_backward.py:311:21
	v_dual_mul_f32 v130, v130, v131 :: v_dual_and_b32 v141, 1, v114
	.loc	1 305 30                        ; attention_backward.py:305:30
	v_and_b16 v114.l, v3.l, 15
	.loc	1 309 31                        ; attention_backward.py:309:31
	v_and_b32_e32 v6, 1, v6
	v_cndmask_b32_e64 v148, 0, v148, s1
	v_cmp_o_f32_e64 s6, v132, v132
	v_cndmask_b32_e64 v8, 0, v130, s1
	.loc	1 397 33                        ; attention_backward.py:397:33
	v_cmp_o_f32_e64 s7, v73, v73
	v_cmp_o_f32_e64 s14, v133, v133
	v_cmp_o_f32_e64 s15, v134, v134
	v_bfe_u32 v139, v129, 16, 1
	.loc	1 309 31                        ; attention_backward.py:309:31
	v_mov_b16_e32 v5.l, v8.h
	.loc	1 397 34                        ; attention_backward.py:397:34
	v_mul_f32_e32 v74, s31, v74
	.loc	1 397 33 is_stmt 0              ; attention_backward.py:397:33
	v_add3_u32 v73, v73, v80, 0x7fff
	v_add3_u32 v80, v133, v137, 0x7fff
	v_add3_u32 v133, v134, v138, 0x7fff
	.loc	1 309 31 is_stmt 1              ; attention_backward.py:309:31
	v_add3_u32 v6, v132, v6, 0x7fff
	.loc	1 307 52                        ; attention_backward.py:307:52
	v_or_b32_e32 v134, -16, v114
	.loc	1 309 31                        ; attention_backward.py:309:31
	v_and_b32_e32 v5, 1, v5
	.loc	1 397 33                        ; attention_backward.py:397:33
	v_bfe_u32 v136, v74, 16, 1
	v_cmp_o_f32_e64 s13, v74, v74
	v_cmp_o_f32_e64 s16, v129, v129
	v_bfe_u32 v145, v79, 16, 1
	v_add3_u32 v129, v129, v139, 0x7fff
	v_add3_u32 v74, v74, v136, 0x7fff
	.loc	1 309 31                        ; attention_backward.py:309:31
	v_cndmask_b16 v76.h, 0x7fff, v6.h, s6
	.loc	1 307 28                        ; attention_backward.py:307:28
	v_cndmask_b32_e64 v6, v114, v134, s5
	.loc	1 309 31                        ; attention_backward.py:309:31
	v_mov_b16_e64 v114.l, v148.h
	.loc	1 397 33                        ; attention_backward.py:397:33
	v_cmp_o_f32_e64 s19, v79, v79
	v_add3_u32 v79, v79, v145, 0x7fff
	v_cndmask_b16 v74.l, 0x7fff, v73.h, s7
	v_cndmask_b16 v74.h, 0x7fff, v74.h, s13
	v_cndmask_b16 v161.l, 0x7fff, v129.h, s16
	.loc	1 309 31                        ; attention_backward.py:309:31
	v_and_b32_e32 v129, 1, v114
	.loc	1 305 30                        ; attention_backward.py:305:30
	v_and_b16 v114.l, v135.l, 15
	.loc	1 397 33                        ; attention_backward.py:397:33
	v_cndmask_b16 v162.h, 0x7fff, v79.h, s19
	v_permlanex16_b32 v79, v74, s34, 0xfedcba98 op_sel:[1,0]
	.loc	1 309 31                        ; attention_backward.py:309:31
	v_cmp_o_f32_e64 s11, v148, v148
	.loc	1 311 21                        ; attention_backward.py:311:21
	v_cvt_f32_i32_e32 v6, v6
	.loc	1 307 52                        ; attention_backward.py:307:52
	v_or_b32_e32 v130, -16, v114
	.loc	1 309 31                        ; attention_backward.py:309:31
	v_add3_u32 v5, v8, v5, 0x7fff
	.loc	1 397 33                        ; attention_backward.py:397:33
	v_perm_b32 v73, v79, v74, v119
	v_perm_b32 v74, v79, v74, v120
	.loc	1 309 31                        ; attention_backward.py:309:31
	v_add3_u32 v79, v148, v129, 0x7fff
	.loc	1 307 28                        ; attention_backward.py:307:28
	v_cndmask_b32_e64 v129, v114, v130, s4
	.loc	1 309 31                        ; attention_backward.py:309:31
	v_cndmask_b32_e64 v142, 0, v142, s1
	.loc	1 311 21                        ; attention_backward.py:311:21
	v_mul_f32_e32 v6, v6, v131
	.loc	1 309 31                        ; attention_backward.py:309:31
	v_cndmask_b32_e64 v149, 0, v149, s1
	v_cndmask_b16 v5.l, 0x7fff, v79.h, s11
	.loc	1 311 21                        ; attention_backward.py:311:21
	v_cvt_f32_i32_e32 v79, v129
	.loc	1 397 34                        ; attention_backward.py:397:34
	v_mul_f32_e32 v78, s31, v78
	.loc	1 309 31                        ; attention_backward.py:309:31
	v_mov_b16_e64 v114.l, v142.h
	v_cndmask_b32_e64 v6, 0, v6, s1
	v_cmp_o_f32_e64 s12, v147, v147
	.loc	1 311 21                        ; attention_backward.py:311:21
	v_mul_f32_e32 v79, v79, v131
	.loc	1 397 33                        ; attention_backward.py:397:33
	v_bfe_u32 v140, v78, 16, 1
	v_cmp_o_f32_e64 s17, v78, v78
	.loc	1 309 31                        ; attention_backward.py:309:31
	v_add3_u32 v132, v147, v141, 0x7fff
	v_cmp_o_f32_e64 s5, v8, v8
	v_and_b32_e32 v8, 1, v114
	.loc	1 397 33                        ; attention_backward.py:397:33
	v_add3_u32 v78, v78, v140, 0x7fff
	.loc	1 309 31                        ; attention_backward.py:309:31
	v_mov_b16_e64 v114.l, v149.h
	v_mov_b16_e32 v4.l, v6.h
	v_cndmask_b16 v78.l, 0x7fff, v132.h, s12
	v_cmp_o_f32_e64 s4, v6, v6
	.loc	1 397 33                        ; attention_backward.py:397:33
	v_cndmask_b16 v161.h, 0x7fff, v78.h, s17
	.loc	1 309 31                        ; attention_backward.py:309:31
	v_cndmask_b16 v78.h, 0x7fff, v5.h, s5
	v_and_b32_e32 v129, 1, v114
	v_and_b32_e32 v4, 1, v4
	.loc	1 305 30                        ; attention_backward.py:305:30
	v_lshrrev_b16 v114.l, 4, v2.l
	.loc	1 309 31                        ; attention_backward.py:309:31
	v_cndmask_b32_e64 v143, 0, v143, s1
	ds_store_b128 v128, v[75:78]
	v_cndmask_b32_e64 v76, 0, v79, s1
	v_add3_u32 v4, v6, v4, 0x7fff
	.loc	1 307 52                        ; attention_backward.py:307:52
	v_or_b32_e32 v75, -16, v114
	.loc	1 309 31                        ; attention_backward.py:309:31
	v_cmp_o_f32_e64 s10, v142, v142
	v_add3_u32 v8, v142, v8, 0x7fff
	v_mov_b16_e32 v3.l, v76.h
	v_cndmask_b16 v5.h, 0x7fff, v4.h, s4
	.loc	1 307 28                        ; attention_backward.py:307:28
	v_cndmask_b32_e64 v4, v114, v75, s3
	.loc	1 309 31                        ; attention_backward.py:309:31
	v_cmp_o_f32_e64 s9, v149, v149
	v_cndmask_b16 v6.l, 0x7fff, v8.h, s10
	v_add3_u32 v8, v149, v129, 0x7fff
	v_mov_b16_e64 v114.l, v143.h
	.loc	1 311 21                        ; attention_backward.py:311:21
	v_cvt_f32_i32_e32 v4, v4
	.loc	1 309 31                        ; attention_backward.py:309:31
	v_and_b32_e32 v3, 1, v3
	v_cmp_o_f32_e64 s3, v76, v76
	v_cndmask_b16 v7.l, 0x7fff, v8.h, s9
	v_and_b32_e32 v8, 1, v114
	.loc	1 311 21                        ; attention_backward.py:311:21
	v_mul_f32_e32 v4, v4, v131
	.loc	1 309 31                        ; attention_backward.py:309:31
	v_add3_u32 v3, v76, v3, 0x7fff
	v_cmp_o_f32_e64 s8, v143, v143
	.loc	1 397 33                        ; attention_backward.py:397:33
	v_cndmask_b16 v80.l, 0x7fff, v80.h, s14
	.loc	1 309 31                        ; attention_backward.py:309:31
	v_add3_u32 v8, v143, v8, 0x7fff
	v_cndmask_b32_e64 v4, 0, v4, s1
	v_cndmask_b16 v6.h, 0x7fff, v3.h, s3
	.loc	1 397 33                        ; attention_backward.py:397:33
	v_cndmask_b16 v80.h, 0x7fff, v133.h, s15
	v_permlanex16_b32 v3, v161, s34, 0xfedcba98 op_sel:[1,0]
	.loc	1 309 31                        ; attention_backward.py:309:31
	v_cndmask_b16 v8.l, 0x7fff, v8.h, s8
	v_mov_b16_e32 v2.l, v4.h
	v_cmp_o_f32_e64 s3, v4, v4
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 397 33                        ; attention_backward.py:397:33
	v_perm_b32 v77, v3, v161, v119
	v_perm_b32 v78, v3, v161, v120
	.loc	1 309 31                        ; attention_backward.py:309:31
	v_and_b32_e32 v2, 1, v2
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add3_u32 v2, v4, v2, 0x7fff
	v_cndmask_b16 v8.h, 0x7fff, v2.h, s3
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 397 33                        ; attention_backward.py:397:33
	v_permlanex16_b32 v2, v80, s34, 0xfedcba98 op_sel:[1,0]
	.loc	1 270 9                         ; attention_backward.py:270:9
	s_add_i32 s3, s33, 16
	s_cmpk_lt_u32 s33, 0x7f0
	s_mov_b32 s33, s3
	.loc	1 309 31                        ; attention_backward.py:309:31
	ds_store_b128 v128, v[5:8] offset:16
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_u16_d16 v131, v0 offset:608
	ds_load_u16_d16 v130, v0 offset:352
	ds_load_u16_d16 v140, v0 offset:768
	ds_load_u16_d16 v137, v0
	ds_load_u16_d16 v147, v0 offset:576
	ds_load_u16_d16 v148, v0 offset:832
	ds_load_u16_d16 v141, v0 offset:1024
	ds_load_u16_d16 v149, v0 offset:1088
	ds_load_u16_d16 v142, v0 offset:1280
	ds_load_u16_d16 v150, v0 offset:1344
	ds_load_u16_d16 v143, v0 offset:1536
	ds_load_u16_d16 v151, v0 offset:1600
	ds_load_u16_d16 v144, v0 offset:1792
	ds_load_u16_d16 v139, v0 offset:512
	ds_load_u16_d16 v138, v0 offset:256
	ds_load_u16_d16 v152, v0 offset:1856
	ds_load_u16_d16 v154, v0 offset:288
	ds_load_u16_d16 v153, v0 offset:32
	ds_load_u16_d16 v145, v0 offset:64
	ds_load_u16_d16 v146, v0 offset:320
	ds_load_u16_d16 v129, v0 offset:96
	ds_load_u16_d16 v155, v0 offset:544
	ds_load_u16_d16 v132, v0 offset:864
	ds_load_u16_d16 v133, v0 offset:1120
	ds_load_u16_d16 v134, v0 offset:1376
	ds_load_u16_d16 v135, v0 offset:1632
	ds_load_u16_d16 v136, v0 offset:1888
	ds_load_u16_d16 v156, v0 offset:800
	ds_load_u16_d16 v157, v0 offset:1056
	ds_load_u16_d16 v158, v0 offset:1312
	ds_load_u16_d16 v159, v0 offset:1568
	ds_load_u16_d16 v160, v0 offset:1824
	s_waitcnt lgkmcnt(30)
	ds_load_u16_d16_hi v130, v0 offset:480
	s_waitcnt lgkmcnt(29)
	ds_load_u16_d16_hi v137, v0 offset:128
	s_waitcnt lgkmcnt(29)
	ds_load_u16_d16_hi v147, v0 offset:704
	ds_load_u16_d16_hi v140, v0 offset:896
	s_waitcnt lgkmcnt(30)
	ds_load_u16_d16_hi v148, v0 offset:960
	s_waitcnt lgkmcnt(30)
	ds_load_u16_d16_hi v141, v0 offset:1152
	s_waitcnt lgkmcnt(30)
	ds_load_u16_d16_hi v149, v0 offset:1216
	s_waitcnt lgkmcnt(30)
	ds_load_u16_d16_hi v142, v0 offset:1408
	s_waitcnt lgkmcnt(30)
	ds_load_u16_d16_hi v150, v0 offset:1472
	s_waitcnt lgkmcnt(30)
	ds_load_u16_d16_hi v143, v0 offset:1664
	s_waitcnt lgkmcnt(30)
	ds_load_u16_d16_hi v151, v0 offset:1728
	s_waitcnt lgkmcnt(30)
	ds_load_u16_d16_hi v144, v0 offset:1920
	s_waitcnt lgkmcnt(30)
	ds_load_u16_d16_hi v139, v0 offset:640
	s_waitcnt lgkmcnt(30)
	ds_load_u16_d16_hi v138, v0 offset:384
	s_waitcnt lgkmcnt(30)
	ds_load_u16_d16_hi v152, v0 offset:1984
	s_waitcnt lgkmcnt(29)
	ds_load_u16_d16_hi v153, v0 offset:160
	s_waitcnt lgkmcnt(29)
	ds_load_u16_d16_hi v145, v0 offset:192
	s_waitcnt lgkmcnt(28)
	ds_load_u16_d16_hi v129, v0 offset:224
	ds_load_u16_d16_hi v154, v0 offset:416
	ds_load_u16_d16_hi v146, v0 offset:448
	s_waitcnt lgkmcnt(30)
	ds_load_u16_d16_hi v155, v0 offset:672
	ds_load_u16_d16_hi v131, v0 offset:736
	s_waitcnt lgkmcnt(26)
	ds_load_u16_d16_hi v156, v0 offset:928
	ds_load_u16_d16_hi v132, v0 offset:992
	s_waitcnt lgkmcnt(27)
	ds_load_u16_d16_hi v157, v0 offset:1184
	ds_load_u16_d16_hi v133, v0 offset:1248
	s_waitcnt lgkmcnt(28)
	ds_load_u16_d16_hi v158, v0 offset:1440
	ds_load_u16_d16_hi v134, v0 offset:1504
	s_waitcnt lgkmcnt(29)
	ds_load_u16_d16_hi v159, v0 offset:1696
	ds_load_u16_d16_hi v135, v0 offset:1760
	s_waitcnt lgkmcnt(30)
	ds_load_u16_d16_hi v160, v0 offset:1952
	ds_load_u16_d16_hi v136, v0 offset:2016
	.loc	1 397 33                        ; attention_backward.py:397:33
	v_perm_b32 v75, v2, v80, v119
	v_perm_b32 v76, v2, v80, v120
	v_permlanex16_b32 v2, v162, s34, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_perm_b32 v79, v2, v162, v119
	v_perm_b32 v80, v2, v162, v120
	.loc	1 398 31                        ; attention_backward.py:398:31
	s_waitcnt lgkmcnt(18)
	v_wmma_f32_16x16x16_bf16 v[65:72], v[137:144], v[73:80], v[65:72]
	s_waitcnt lgkmcnt(12)
	v_wmma_f32_16x16x16_bf16 v[17:24], v[145:152], v[73:80], v[17:24]
	s_waitcnt lgkmcnt(1)
	v_wmma_f32_16x16x16_bf16 v[57:64], v[153:160], v[73:80], v[57:64]
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[9:16], v[129:136], v[73:80], v[9:16]
	.loc	1 270 9                         ; attention_backward.py:270:9
	s_cbranch_scc1 .LBB0_3
; %bb.4:
	.loc	1 401 13                        ; attention_backward.py:401:13
	v_mul_lo_u32 v0, s28, v90
	s_mul_i32 s4, s28, s26
	.loc	1 408 40                        ; attention_backward.py:408:40
	v_cmp_gt_i32_e64 s0, s28, v97
	.loc	1 405 9                         ; attention_backward.py:405:9
	s_and_b32 s25, s25, 0xffff
	s_mov_b32 s27, 0x31027000
	s_mov_b32 s26, 0x7ffffffe
	.loc	1 168 40                        ; attention_backward.py:168:40
	v_or_b32_e32 v4, 16, v97
	.loc	1 408 18                        ; attention_backward.py:408:18
	s_and_b32 s0, vcc_lo, s0
	.loc	1 401 13                        ; attention_backward.py:401:13
	v_add_nc_u32_e32 v5, s4, v0
	v_add_nc_u32_e32 v0, v0, v97
	.loc	1 168 40                        ; attention_backward.py:168:40
	v_or_b32_e32 v3, 32, v97
	.loc	1 408 40                        ; attention_backward.py:408:40
	v_cmp_gt_i32_e64 s1, s28, v4
	.loc	1 168 40                        ; attention_backward.py:168:40
	v_or_b32_e32 v2, 48, v97
	.loc	1 405 9                         ; attention_backward.py:405:9
	v_add_lshl_u32 v6, v5, v97, 2
	v_add_lshl_u32 v7, v5, v100, 2
	v_add_lshl_u32 v8, v5, v99, 2
	v_add_lshl_u32 v25, v5, v94, 2
	v_add_lshl_u32 v26, v5, v93, 2
	v_cndmask_b32_e64 v6, 0x80000000, v6, s0
	v_cndmask_b32_e64 v7, 0x80000000, v7, s0
	v_cndmask_b32_e64 v8, 0x80000000, v8, s0
	.loc	1 401 13                        ; attention_backward.py:401:13
	v_add_lshl_u32 v0, v0, s4, 2
	.loc	1 405 9                         ; attention_backward.py:405:9
	v_cndmask_b32_e64 v25, 0x80000000, v25, s0
	s_clause 0x2
	buffer_store_b32 v65, v6, s[24:27], 0 offen
	buffer_store_b32 v66, v7, s[24:27], 0 offen
	buffer_store_b32 v67, v8, s[24:27], 0 offen
	v_add_lshl_u32 v6, v5, v98, 2
	v_add_lshl_u32 v7, v5, v96, 2
	v_add_lshl_u32 v8, v5, v95, 2
	v_cndmask_b32_e64 v26, 0x80000000, v26, s0
	v_add_lshl_u32 v4, v5, v4, 2
	v_cndmask_b32_e64 v6, 0x80000000, v6, s0
	v_cndmask_b32_e64 v7, 0x80000000, v7, s0
	v_cndmask_b32_e64 v8, 0x80000000, v8, s0
	.loc	1 408 18                        ; attention_backward.py:408:18
	s_and_b32 s0, vcc_lo, s1
	.loc	1 405 9                         ; attention_backward.py:405:9
	s_clause 0x4
	buffer_store_b32 v68, v6, s[24:27], 0 offen
	buffer_store_b32 v69, v7, s[24:27], 0 offen
	buffer_store_b32 v70, v8, s[24:27], 0 offen
	buffer_store_b32 v71, v25, s[24:27], 0 offen
	buffer_store_b32 v72, v26, s[24:27], 0 offen
	v_add_nc_u32_e32 v6, 0x48, v0
	v_add_nc_u32_e32 v7, 0x50, v0
	v_add_nc_u32_e32 v8, 0x58, v0
	v_cndmask_b32_e64 v4, 0x80000000, v4, s0
	v_add_nc_u32_e32 v25, 0x60, v0
	v_cndmask_b32_e64 v6, 0x80000000, v6, s0
	v_cndmask_b32_e64 v7, 0x80000000, v7, s0
	v_cndmask_b32_e64 v8, 0x80000000, v8, s0
	s_clause 0x2
	buffer_store_b32 v57, v4, s[24:27], 0 offen
	buffer_store_b32 v58, v6, s[24:27], 0 offen
	buffer_store_b32 v59, v7, s[24:27], 0 offen
	v_cndmask_b32_e64 v4, 0x80000000, v25, s0
	v_add_nc_u32_e32 v6, 0x68, v0
	.loc	1 408 40                        ; attention_backward.py:408:40
	v_cmp_gt_i32_e64 s2, s28, v3
	.loc	1 405 9                         ; attention_backward.py:405:9
	buffer_store_b32 v60, v8, s[24:27], 0 offen
	v_add_nc_u32_e32 v7, 0x70, v0
	v_add_nc_u32_e32 v8, 0x78, v0
	buffer_store_b32 v61, v4, s[24:27], 0 offen
	v_cndmask_b32_e64 v4, 0x80000000, v6, s0
	v_add_lshl_u32 v3, v5, v3, 2
	v_cndmask_b32_e64 v6, 0x80000000, v7, s0
	v_cndmask_b32_e64 v7, 0x80000000, v8, s0
	.loc	1 408 18                        ; attention_backward.py:408:18
	s_and_b32 s0, vcc_lo, s2
	.loc	1 405 9                         ; attention_backward.py:405:9
	buffer_store_b32 v62, v4, s[24:27], 0 offen
	v_add_nc_u32_e32 v4, 0x88, v0
	v_cndmask_b32_e64 v3, 0x80000000, v3, s0
	s_clause 0x2
	buffer_store_b32 v63, v6, s[24:27], 0 offen
	buffer_store_b32 v64, v7, s[24:27], 0 offen
	buffer_store_b32 v17, v3, s[24:27], 0 offen
	v_add_nc_u32_e32 v3, 0x90, v0
	v_cndmask_b32_e64 v4, 0x80000000, v4, s0
	v_add_nc_u32_e32 v6, 0x98, v0
	v_add_nc_u32_e32 v7, 0xa0, v0
	v_add_nc_u32_e32 v8, 0xa8, v0
	v_cndmask_b32_e64 v3, 0x80000000, v3, s0
	buffer_store_b32 v18, v4, s[24:27], 0 offen
	v_cndmask_b32_e64 v4, 0x80000000, v6, s0
	v_cndmask_b32_e64 v6, 0x80000000, v7, s0
	v_cndmask_b32_e64 v7, 0x80000000, v8, s0
	.loc	1 168 40                        ; attention_backward.py:168:40
	v_or_b32_e32 v1, 62, v101
	.loc	1 408 40                        ; attention_backward.py:408:40
	v_cmp_gt_i32_e64 s3, s28, v2
	.loc	1 405 9                         ; attention_backward.py:405:9
	buffer_store_b32 v19, v3, s[24:27], 0 offen
	v_add_nc_u32_e32 v3, 0xb0, v0
	s_clause 0x2
	buffer_store_b32 v20, v4, s[24:27], 0 offen
	buffer_store_b32 v21, v6, s[24:27], 0 offen
	buffer_store_b32 v22, v7, s[24:27], 0 offen
	v_add_nc_u32_e32 v4, 0xb8, v0
	v_add_lshl_u32 v2, v5, v2, 2
	v_add_nc_u32_e32 v6, 0xc8, v0
	v_add_nc_u32_e32 v7, 0xd0, v0
	v_cndmask_b32_e64 v3, 0x80000000, v3, s0
	.loc	1 408 18                        ; attention_backward.py:408:18
	s_and_b32 vcc_lo, vcc_lo, s3
	.loc	1 405 9                         ; attention_backward.py:405:9
	v_add_lshl_u32 v1, v5, v1, 2
	v_cndmask_b32_e64 v4, 0x80000000, v4, s0
	v_cndmask_b32_e32 v2, 0x80000000, v2, vcc_lo
	v_dual_cndmask_b32 v6, 0x80000000, v6 :: v_dual_cndmask_b32 v7, 0x80000000, v7
	s_delay_alu instid0(VALU_DEP_4)
	v_cndmask_b32_e32 v1, 0x80000000, v1, vcc_lo
	s_clause 0x4
	buffer_store_b32 v23, v3, s[24:27], 0 offen
	buffer_store_b32 v24, v4, s[24:27], 0 offen
	buffer_store_b32 v9, v2, s[24:27], 0 offen
	buffer_store_b32 v10, v6, s[24:27], 0 offen
	buffer_store_b32 v11, v7, s[24:27], 0 offen
	v_add_nc_u32_e32 v2, 0xd8, v0
	v_add_nc_u32_e32 v3, 0xe0, v0
	v_add_nc_u32_e32 v4, 0xe8, v0
	v_add_nc_u32_e32 v0, 0xf0, v0
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_cndmask_b32 v2, 0x80000000, v2 :: v_dual_cndmask_b32 v3, 0x80000000, v3
	v_cndmask_b32_e32 v4, 0x80000000, v4, vcc_lo
	s_delay_alu instid0(VALU_DEP_3)
	v_cndmask_b32_e32 v0, 0x80000000, v0, vcc_lo
	s_clause 0x4
	buffer_store_b32 v12, v2, s[24:27], 0 offen
	buffer_store_b32 v13, v3, s[24:27], 0 offen
	buffer_store_b32 v14, v4, s[24:27], 0 offen
	buffer_store_b32 v15, v0, s[24:27], 0 offen
	buffer_store_b32 v16, v1, s[24:27], 0 offen
	.loc	1 60 5                          ; attention_backward.py:60:5
	s_nop 0
	s_sendmsg sendmsg(MSG_DEALLOC_VGPRS)
	s_endpgm
.Ltmp68:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_attention_bwd_dq_int4xbf16_none_full_outbfloat16_doutfloat32_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1
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
		.amdhsa_next_free_sgpr 44
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
	.size	amd_strix_halo_gfx1151_attention_bwd_dq_int4xbf16_none_full_outbfloat16_doutfloat32_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1, .Lfunc_end0-amd_strix_halo_gfx1151_attention_bwd_dq_int4xbf16_none_full_outbfloat16_doutfloat32_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_attention_bwd_dq_int4xbf16_none_full_outbfloat16_doutfloat32_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.num_vgpr, 164
	.set amd_strix_halo_gfx1151_attention_bwd_dq_int4xbf16_none_full_outbfloat16_doutfloat32_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.num_agpr, 0
	.set amd_strix_halo_gfx1151_attention_bwd_dq_int4xbf16_none_full_outbfloat16_doutfloat32_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.numbered_sgpr, 44
	.set amd_strix_halo_gfx1151_attention_bwd_dq_int4xbf16_none_full_outbfloat16_doutfloat32_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_attention_bwd_dq_int4xbf16_none_full_outbfloat16_doutfloat32_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.private_seg_size, 0
	.set amd_strix_halo_gfx1151_attention_bwd_dq_int4xbf16_none_full_outbfloat16_doutfloat32_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.uses_vcc, 1
	.set amd_strix_halo_gfx1151_attention_bwd_dq_int4xbf16_none_full_outbfloat16_doutfloat32_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.uses_flat_scratch, 0
	.set amd_strix_halo_gfx1151_attention_bwd_dq_int4xbf16_none_full_outbfloat16_doutfloat32_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_attention_bwd_dq_int4xbf16_none_full_outbfloat16_doutfloat32_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.has_recursion, 0
	.set amd_strix_halo_gfx1151_attention_bwd_dq_int4xbf16_none_full_outbfloat16_doutfloat32_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 9744
; TotalNumSgprs: 46
; NumVgprs: 164
; ScratchSize: 0
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 20
; NumSGPRsForWavesPerEU: 46
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
	.byte	5                               ; Abbreviation Code
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
	.byte	5                               ; DW_FORM_data2
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
	.byte	4                               ; Abbrev [4] 0x41:0x2a DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.quad	.Ltmp1                          ; DW_AT_low_pc
	.long	.Ltmp3-.Ltmp1                   ; DW_AT_high_pc
	.byte	1                               ; DW_AT_call_file
	.short	258                             ; DW_AT_call_line
	.byte	25                              ; DW_AT_call_column
	.byte	5                               ; Abbrev [5] 0x56:0x14 DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.quad	.Ltmp1                          ; DW_AT_low_pc
	.long	.Ltmp2-.Ltmp1                   ; DW_AT_high_pc
	.byte	2                               ; DW_AT_call_file
	.byte	191                             ; DW_AT_call_line
	.byte	16                              ; DW_AT_call_column
	.byte	0                               ; End Of Children Mark
	.byte	6                               ; Abbrev [6] 0x6b:0x1b DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges0                 ; DW_AT_ranges
	.byte	1                               ; DW_AT_call_file
	.short	262                             ; DW_AT_call_line
	.byte	33                              ; DW_AT_call_column
	.byte	7                               ; Abbrev [7] 0x78:0xd DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges1                 ; DW_AT_ranges
	.byte	2                               ; DW_AT_call_file
	.short	293                             ; DW_AT_call_line
	.byte	12                              ; DW_AT_call_column
	.byte	0                               ; End Of Children Mark
	.byte	8                               ; Abbrev [8] 0x86:0x1a DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges2                 ; DW_AT_ranges
	.byte	1                               ; DW_AT_call_file
	.byte	176                             ; DW_AT_call_line
	.byte	17                              ; DW_AT_call_column
	.byte	7                               ; Abbrev [7] 0x92:0xd DW_TAG_inlined_subroutine
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
	.quad	.Ltmp4-.Lfunc_begin0
	.quad	.Ltmp5-.Lfunc_begin0
	.quad	.Ltmp6-.Lfunc_begin0
	.quad	.Ltmp7-.Lfunc_begin0
	.quad	.Ltmp8-.Lfunc_begin0
	.quad	.Ltmp10-.Lfunc_begin0
	.quad	.Ltmp11-.Lfunc_begin0
	.quad	.Ltmp12-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges1:
	.quad	.Ltmp4-.Lfunc_begin0
	.quad	.Ltmp5-.Lfunc_begin0
	.quad	.Ltmp6-.Lfunc_begin0
	.quad	.Ltmp7-.Lfunc_begin0
	.quad	.Ltmp8-.Lfunc_begin0
	.quad	.Ltmp9-.Lfunc_begin0
	.quad	.Ltmp11-.Lfunc_begin0
	.quad	.Ltmp12-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges2:
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
	.quad	.Ltmp29-.Lfunc_begin0
	.quad	.Ltmp30-.Lfunc_begin0
	.quad	.Ltmp32-.Lfunc_begin0
	.quad	.Ltmp33-.Lfunc_begin0
	.quad	.Ltmp35-.Lfunc_begin0
	.quad	.Ltmp36-.Lfunc_begin0
	.quad	.Ltmp37-.Lfunc_begin0
	.quad	.Ltmp38-.Lfunc_begin0
	.quad	.Ltmp39-.Lfunc_begin0
	.quad	.Ltmp40-.Lfunc_begin0
	.quad	.Ltmp43-.Lfunc_begin0
	.quad	.Ltmp44-.Lfunc_begin0
	.quad	.Ltmp45-.Lfunc_begin0
	.quad	.Ltmp46-.Lfunc_begin0
	.quad	.Ltmp47-.Lfunc_begin0
	.quad	.Ltmp48-.Lfunc_begin0
	.quad	.Ltmp49-.Lfunc_begin0
	.quad	.Ltmp50-.Lfunc_begin0
	.quad	.Ltmp53-.Lfunc_begin0
	.quad	.Ltmp54-.Lfunc_begin0
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
	.quad	0
	.quad	0
.Ldebug_ranges3:
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
	.quad	.Ltmp28-.Lfunc_begin0
	.quad	.Ltmp29-.Lfunc_begin0
	.quad	.Ltmp30-.Lfunc_begin0
	.quad	.Ltmp31-.Lfunc_begin0
	.quad	.Ltmp34-.Lfunc_begin0
	.quad	.Ltmp35-.Lfunc_begin0
	.quad	.Ltmp40-.Lfunc_begin0
	.quad	.Ltmp41-.Lfunc_begin0
	.quad	.Ltmp42-.Lfunc_begin0
	.quad	.Ltmp43-.Lfunc_begin0
	.quad	.Ltmp44-.Lfunc_begin0
	.quad	.Ltmp45-.Lfunc_begin0
	.quad	.Ltmp51-.Lfunc_begin0
	.quad	.Ltmp52-.Lfunc_begin0
	.quad	.Ltmp55-.Lfunc_begin0
	.quad	.Ltmp56-.Lfunc_begin0
	.quad	.Ltmp60-.Lfunc_begin0
	.quad	.Ltmp61-.Lfunc_begin0
	.quad	.Ltmp66-.Lfunc_begin0
	.quad	.Ltmp67-.Lfunc_begin0
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
	.asciz	"amd_strix_halo_gfx1151_attention_bwd_dq_int4xbf16_none_full_outbfloat16_doutfloat32_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1"                        ; string offset=97 ; amd_strix_halo_gfx1151_attention_bwd_dq_int4xbf16_none_full_outbfloat16_doutfloat32_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1
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
    .name:           amd_strix_halo_gfx1151_attention_bwd_dq_int4xbf16_none_full_outbfloat16_doutfloat32_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1
    .private_segment_fixed_size: 0
    .sgpr_count:     46
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_attention_bwd_dq_int4xbf16_none_full_outbfloat16_doutfloat32_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.kd
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
