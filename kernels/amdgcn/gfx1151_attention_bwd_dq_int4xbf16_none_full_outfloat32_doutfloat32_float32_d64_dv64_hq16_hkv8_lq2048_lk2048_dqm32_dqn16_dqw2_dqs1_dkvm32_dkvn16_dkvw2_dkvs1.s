	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_attention_bwd_dq_int4xbf16_none_full_outfloat32_doutfloat32_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1                          ; -- Begin function amd_strix_halo_gfx1151_attention_bwd_dq_int4xbf16_none_full_outfloat32_doutfloat32_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1
	.p2align	8
	.type	amd_strix_halo_gfx1151_attention_bwd_dq_int4xbf16_none_full_outfloat32_doutfloat32_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1,@function
amd_strix_halo_gfx1151_attention_bwd_dq_int4xbf16_none_full_outfloat32_doutfloat32_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1:                                 ; @amd_strix_halo_gfx1151_attention_bwd_dq_int4xbf16_none_full_outfloat32_doutfloat32_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1
.Lfunc_begin0:
	.file	1 "<repo>/src/amd_strix_halo_kernels" "attention_backward.py"
	.loc	1 60 0                          ; attention_backward.py:60:0
	.cfi_sections .debug_frame
	.cfi_startproc
; %bb.0:
	s_clause 0x1
	s_load_b128 s[28:31], s[0:1], 0x74
	s_load_b64 s[24:25], s[0:1], 0x58
	v_dual_mov_b32 v112, 0xff800000 :: v_dual_and_b32 v111, 32, v0
.Ltmp0:
	.loc	1 139 44 prologue_end           ; attention_backward.py:139:44
	v_lshlrev_b32_e32 v1, 4, v0
	.loc	1 124 31                        ; attention_backward.py:124:31
	v_lshrrev_b32_e32 v2, 1, v0
	.loc	1 119 19                        ; attention_backward.py:119:19
	s_lshl_b32 s6, s2, 5
	.loc	1 133 26                        ; attention_backward.py:133:26
	s_lshl_b32 s7, s3, 11
	.loc	1 124 31                        ; attention_backward.py:124:31
	v_and_b32_e32 v113, 15, v0
	.loc	1 135 17                        ; attention_backward.py:135:17
	s_add_i32 s26, s6, s7
	.loc	1 124 31                        ; attention_backward.py:124:31
	v_lshrrev_b32_e32 v82, 1, v111
	s_load_b256 s[16:23], s[0:1], 0x0
	.loc	1 139 44                        ; attention_backward.py:139:44
	v_and_b32_e32 v1, 16, v1
	.loc	1 135 17                        ; attention_backward.py:135:17
	v_or_b32_e32 v3, s26, v2
	.loc	1 124 21                        ; attention_backward.py:124:21
	v_or_b32_e32 v4, s6, v2
	.loc	1 124 31 is_stmt 0              ; attention_backward.py:124:31
	v_or_b32_e32 v85, v82, v113
	v_lshrrev_b32_e32 v84, 4, v0
	s_mov_b32 s39, 0x31027000
	s_mov_b32 s38, 0x7ffffffe
	.loc	1 128 21 is_stmt 1              ; attention_backward.py:128:21
	v_cmp_gt_i32_e32 vcc_lo, 0x800, v4
	.loc	1 135 17                        ; attention_backward.py:135:17
	s_waitcnt lgkmcnt(0)
	v_mad_u64_u32 v[2:3], null, s29, v3, v[1:2]
	.loc	1 139 44                        ; attention_backward.py:139:44
	v_cmp_gt_i32_e64 s2, s29, v1
	.loc	1 124 21                        ; attention_backward.py:124:21
	v_or_b32_e32 v5, s6, v85
	.loc	1 143 17                        ; attention_backward.py:143:17
	v_or_b32_e32 v6, s26, v85
	.loc	1 124 21                        ; attention_backward.py:124:21
	v_or_b32_e32 v1, s6, v84
	v_mov_b32_e32 v107, 0
	.loc	1 139 22                        ; attention_backward.py:139:22
	s_and_b32 vcc_lo, vcc_lo, s2
	.loc	1 167 13                        ; attention_backward.py:167:13
	v_mul_lo_u32 v7, s30, v84
	.loc	1 134 28                        ; attention_backward.py:134:28
	v_cndmask_b32_e32 v2, 0x80000000, v2, vcc_lo
	.loc	1 142 31                        ; attention_backward.py:142:31
	v_lshlrev_b32_e32 v6, 1, v6
	.loc	1 128 21                        ; attention_backward.py:128:21
	v_cmp_gt_i32_e32 vcc_lo, 0x800, v5
	.loc	1 168 40                        ; attention_backward.py:168:40
	v_lshlrev_b32_e32 v106, 2, v113
	.loc	1 134 28                        ; attention_backward.py:134:28
	s_and_b32 s37, s17, 0xffff
	s_mov_b32 s36, s16
	.loc	1 128 21                        ; attention_backward.py:128:21
	v_cmp_gt_i32_e64 s2, 0x800, v1
	.loc	1 142 31                        ; attention_backward.py:142:31
	v_cndmask_b32_e32 v5, 0x80000000, v6, vcc_lo
	.loc	1 134 28                        ; attention_backward.py:134:28
	buffer_load_b128 v[1:4], v2, s[36:39], 0 offen
	.loc	1 142 31                        ; attention_backward.py:142:31
	s_and_b32 s37, s23, 0xffff
	s_mov_b32 s36, s22
	s_load_b256 s[8:15], s[0:1], 0x38
	buffer_load_u16 v5, v5, s[36:39], 0 offen
	.loc	1 167 13                        ; attention_backward.py:167:13
	s_mul_i32 s35, s30, s26
	.loc	1 168 40                        ; attention_backward.py:168:40
	v_cmp_gt_i32_e64 s4, s30, v106
	.loc	1 167 13                        ; attention_backward.py:167:13
	v_add3_u32 v7, s35, v106, v7
	s_lshl_b32 s5, s30, 2
	s_lshl_b32 s16, s30, 3
	s_mul_i32 s17, s30, 12
	s_lshl_b32 s27, s30, 4
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_lshlrev_b32_e32 v6, 2, v7
	v_add_lshl_u32 v8, v7, s5, 2
	v_add_lshl_u32 v9, v7, s16, 2
	.loc	1 167 13                        ; attention_backward.py:167:13
	s_mul_i32 s33, s30, 20
	s_mul_i32 s34, s30, 24
	s_mul_i32 s40, s30, 28
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_add_lshl_u32 v10, v7, s17, 2
	.loc	1 168 18                        ; attention_backward.py:168:18
	s_and_b32 s2, s2, s4
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_add_lshl_u32 v11, v7, s27, 2
	v_add_lshl_u32 v12, v7, s33, 2
	v_add_lshl_u32 v13, v7, s34, 2
	v_add_lshl_u32 v7, v7, s40, 2
	v_cndmask_b32_e64 v6, 0x80000000, v6, s2
	v_cndmask_b32_e64 v8, 0x80000000, v8, s2
	v_cndmask_b32_e64 v9, 0x80000000, v9, s2
	s_waitcnt lgkmcnt(0)
	s_and_b32 s37, s9, 0xffff
	s_mov_b32 s36, s8
	v_cndmask_b32_e64 v10, 0x80000000, v10, s2
	v_cndmask_b32_e64 v11, 0x80000000, v11, s2
	v_cndmask_b32_e64 v12, 0x80000000, v12, s2
	v_cndmask_b32_e64 v13, 0x80000000, v13, s2
	v_cndmask_b32_e64 v7, 0x80000000, v7, s2
	s_clause 0x7
	buffer_load_b128 v[69:72], v6, s[36:39], 0 offen
	buffer_load_b128 v[65:68], v8, s[36:39], 0 offen
	buffer_load_b128 v[61:64], v9, s[36:39], 0 offen
	buffer_load_b128 v[57:60], v10, s[36:39], 0 offen
	buffer_load_b128 v[53:56], v11, s[36:39], 0 offen
	buffer_load_b128 v[49:52], v12, s[36:39], 0 offen
	buffer_load_b128 v[45:48], v13, s[36:39], 0 offen
	buffer_load_b128 v[41:44], v7, s[36:39], 0 offen
	.loc	1 171 28                        ; attention_backward.py:171:28
	s_and_b32 s37, s11, 0xffff
	s_mov_b32 s36, s10
	s_clause 0x7
	buffer_load_b128 v[37:40], v6, s[36:39], 0 offen
	buffer_load_b128 v[33:36], v8, s[36:39], 0 offen
	buffer_load_b128 v[29:32], v9, s[36:39], 0 offen
	buffer_load_b128 v[25:28], v10, s[36:39], 0 offen
	buffer_load_b128 v[21:24], v11, s[36:39], 0 offen
	buffer_load_b128 v[17:20], v12, s[36:39], 0 offen
	buffer_load_b128 v[13:16], v13, s[36:39], 0 offen
	buffer_load_b128 v[9:12], v7, s[36:39], 0 offen
	s_load_b64 s[40:41], s[0:1], 0x20
	.loc	1 121 23                        ; attention_backward.py:121:23
	s_ashr_i32 s0, s3, 31
	.loc	1 125 21                        ; attention_backward.py:125:21
	v_bfe_u32 v86, v0, 4, 1
	.loc	1 121 23                        ; attention_backward.py:121:23
	s_lshr_b32 s0, s0, 28
	.loc	1 134 28                        ; attention_backward.py:134:28
	v_lshlrev_b32_e32 v6, 1, v0
	.loc	1 121 23                        ; attention_backward.py:121:23
	s_add_i32 s0, s3, s0
	.loc	1 124 31                        ; attention_backward.py:124:31
	v_and_b32_e32 v108, 48, v0
	.loc	1 122 22                        ; attention_backward.py:122:22
	s_and_b32 s1, s0, 0xfff0
	.loc	1 197 28                        ; attention_backward.py:197:28
	s_lshl_b32 s0, s0, 10
	.loc	1 122 22                        ; attention_backward.py:122:22
	s_sub_i32 s1, s3, s1
	.loc	1 197 28                        ; attention_backward.py:197:28
	s_and_b32 s3, s0, 0xffffc000
	.loc	1 123 19                        ; attention_backward.py:123:19
	s_bfe_u32 s0, s1, 0x10007
	.loc	1 134 28                        ; attention_backward.py:134:28
	v_and_or_b32 v8, v6, 30, v86
	.loc	1 123 19                        ; attention_backward.py:123:19
	s_add_i32 s1, s1, s0
	.loc	1 134 28                        ; attention_backward.py:134:28
	v_and_b32_e32 v7, 16, v0
	.loc	1 123 19                        ; attention_backward.py:123:19
	s_bfe_i32 s0, s1, 0x80000
	.loc	1 220 21                        ; attention_backward.py:220:21
	s_mul_f32 s1, s31, 0x3fb8aa3b
	.loc	1 134 28                        ; attention_backward.py:134:28
	v_lshlrev_b32_e32 v8, 2, v8
	.loc	1 123 19                        ; attention_backward.py:123:19
	s_sext_i32_i16 s0, s0
	.loc	1 168 40                        ; attention_backward.py:168:40
	v_and_b32_e32 v110, 3, v0
	v_lshlrev_b32_e32 v109, 3, v0
	v_lshrrev_b32_e32 v74, 1, v108
	.loc	1 197 28                        ; attention_backward.py:197:28
	s_lshl_b32 s0, s0, 10
	.loc	1 125 21                        ; attention_backward.py:125:21
	v_lshrrev_b32_e32 v94, 2, v0
	.loc	1 197 28                        ; attention_backward.py:197:28
	s_and_b32 s27, s0, 0xfffff800
	.loc	1 200 27                        ; attention_backward.py:200:27
	v_lshlrev_b32_e32 v73, 3, v110
	.loc	1 125 21                        ; attention_backward.py:125:21
	v_or_b32_e32 v93, 2, v86
	v_or_b32_e32 v92, 4, v86
	v_or_b32_e32 v91, 6, v86
	v_or_b32_e32 v90, 8, v86
	v_or_b32_e32 v89, 10, v86
	v_or_b32_e32 v88, 12, v86
	v_or_b32_e32 v87, 14, v86
	v_xor_b32_e32 v115, v109, v74
	.loc	1 197 28                        ; attention_backward.py:197:28
	s_add_i32 s27, s27, s3
	.loc	1 134 28                        ; attention_backward.py:134:28
	v_cmp_eq_u32_e64 s3, 0, v7
	.loc	1 200 27                        ; attention_backward.py:200:27
	v_cmp_gt_i32_e64 s0, s29, v73
	v_or_b32_e32 v95, s27, v94
	v_or_b32_e32 v96, s27, v86
	v_or_b32_e32 v97, s27, v93
	v_or_b32_e32 v98, s27, v92
	v_or_b32_e32 v99, s27, v91
	v_or_b32_e32 v100, s27, v90
	v_or_b32_e32 v101, s27, v89
	v_or_b32_e32 v102, s27, v88
	v_or_b32_e32 v103, s27, v87
	s_mov_b32 s2, 0
	s_mov_b32 s8, 0x76543210
	s_mov_b32 s42, s38
	s_mov_b32 s43, s39
	s_mov_b64 s[4:5], s[14:15]
	s_waitcnt lgkmcnt(0)
	s_and_b32 s41, s41, 0xffff
	s_and_b32 s37, s19, 0xffff
	s_mov_b32 s36, s18
	.loc	1 134 28                        ; attention_backward.py:134:28
	s_waitcnt vmcnt(17)
	ds_bpermute_b32 v77, v8, v2
	ds_bpermute_b32 v79, v8, v3
	.loc	1 142 31                        ; attention_backward.py:142:31
	s_waitcnt vmcnt(16)
	v_lshlrev_b32_e32 v5, 16, v5
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 219 37                        ; attention_backward.py:219:37
	v_mul_f32_e32 v104, s1, v5
	v_lshlrev_b32_e32 v83, 5, v113
	v_and_or_b32 v114, v6, 24, v83
	.loc	1 134 28                        ; attention_backward.py:134:28
	v_xor_b32_e32 v6, 4, v8
	s_delay_alu instid0(VALU_DEP_2)
	v_xor_b32_e32 v75, 16, v114
	ds_bpermute_b32 v2, v6, v2
	ds_bpermute_b32 v3, v6, v3
	v_xor_b32_e32 v74, 8, v114
	v_xor_b32_e32 v76, 24, v114
	v_add_nc_u32_e32 v117, 0, v75
	ds_bpermute_b32 v75, v8, v1
	ds_bpermute_b32 v1, v6, v1
	ds_bpermute_b32 v8, v8, v4
	ds_bpermute_b32 v4, v6, v4
	v_add_nc_u32_e32 v116, 0, v74
	v_add_nc_u32_e32 v118, 0, v76
	s_waitcnt lgkmcnt(4)
	v_cndmask_b32_e64 v78, v3, v79, s3
	v_cndmask_b32_e64 v80, v79, v3, s3
	s_waitcnt lgkmcnt(2)
	v_cndmask_b32_e64 v74, v1, v75, s3
	v_cndmask_b32_e64 v76, v75, v1, s3
	v_cndmask_b32_e64 v75, v2, v77, s3
	v_cndmask_b32_e64 v77, v77, v2, s3
	s_waitcnt lgkmcnt(0)
	v_cndmask_b32_e64 v79, v4, v8, s3
	v_cndmask_b32_e64 v81, v8, v4, s3
	v_mov_b32_e32 v1, 0
.LBB0_1:                                ; =>This Inner Loop Header: Depth=1
	.loc	1 199 21                        ; attention_backward.py:199:21
	v_add_nc_u32_e32 v2, s2, v95
	.loc	1 198 28                        ; attention_backward.py:198:28
	v_add_nc_u32_e32 v105, 0, v115
	.loc	1 214 33                        ; attention_backward.py:214:33
	v_add_lshl_u32 v4, s2, v96, 1
	v_add_lshl_u32 v5, s2, v97, 1
	v_add_lshl_u32 v6, s2, v98, 1
	.loc	1 199 21                        ; attention_backward.py:199:21
	v_mad_u64_u32 v[2:3], null, v2, s29, v[73:74]
	.loc	1 214 33                        ; attention_backward.py:214:33
	v_add_lshl_u32 v7, s2, v99, 1
	v_add_lshl_u32 v8, s2, v100, 1
	v_add_lshl_u32 v119, s2, v101, 1
	v_add_lshl_u32 v120, s2, v102, 1
	v_add_lshl_u32 v121, s2, v103, 1
	.loc	1 198 28                        ; attention_backward.py:198:28
	v_add_nc_u32_e32 v127, 0, v114
	v_cndmask_b32_e64 v2, 0x80000000, v2, s0
	v_mov_b32_e32 v137, v112
	buffer_load_b64 v[2:3], v2, s[36:39], 0 offen
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 260 21                        ; attention_backward.py:260:21
	v_cmp_neq_f32_e64 s1, 0xff800000, v137
	.loc	1 198 28                        ; attention_backward.py:198:28
	s_waitcnt vmcnt(0)
	ds_store_b64 v105, v[2:3]
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 214 33                        ; attention_backward.py:214:33
	s_clause 0x7
	buffer_load_u16 v129, v4, s[40:43], 0 offen
	buffer_load_u16 v130, v5, s[40:43], 0 offen
	buffer_load_u16 v131, v6, s[40:43], 0 offen
	buffer_load_u16 v132, v7, s[40:43], 0 offen
	buffer_load_u16 v133, v8, s[40:43], 0 offen
	buffer_load_u16 v134, v119, s[40:43], 0 offen
	buffer_load_u16 v135, v120, s[40:43], 0 offen
	buffer_load_u16 v136, v121, s[40:43], 0 offen
	.loc	1 204 29                        ; attention_backward.py:204:29
	v_mov_b32_e32 v8, v1
	v_mov_b32_e32 v2, v1
	v_mov_b32_e32 v3, v1
	v_mov_b32_e32 v4, v1
	v_mov_b32_e32 v5, v1
	v_mov_b32_e32 v6, v1
	v_mov_b32_e32 v7, v1
	v_mov_b32_e32 v126, v8
	v_dual_mov_b32 v122, v4 :: v_dual_mov_b32 v121, v3
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_dual_mov_b32 v124, v6 :: v_dual_mov_b32 v123, v5
	v_dual_mov_b32 v125, v7 :: v_dual_mov_b32 v120, v2
	v_mov_b32_e32 v119, v1
	.loc	1 198 28                        ; attention_backward.py:198:28
	ds_load_b64 v[2:3], v127
	ds_load_b64 v[4:5], v116
	ds_load_b64 v[6:7], v117
	ds_load_b64 v[127:128], v118
	.loc	1 204 29                        ; attention_backward.py:204:29
	s_waitcnt lgkmcnt(3)
	v_wmma_i32_16x16x16_iu4 v[119:126], v[2:3], v[74:75], v[119:126] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(2)
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[119:126], v[4:5], v[78:79], v[119:126] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu4 v[119:126], v[6:7], v[76:77], v[119:126] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[119:126], v[127:128], v[80:81], v[119:126] neg_lo:[1,1,0]
	.loc	1 223 21                        ; attention_backward.py:223:21
	v_cvt_f32_i32_e32 v2, v119
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cvt_f32_i32_e32 v3, v120
	v_cvt_f32_i32_e32 v4, v121
	s_delay_alu instid0(VALU_DEP_4)
	v_cvt_f32_i32_e32 v5, v122
	v_cvt_f32_i32_e32 v6, v123
	v_cvt_f32_i32_e32 v7, v124
	v_cvt_f32_i32_e32 v8, v125
	v_cvt_f32_i32_e32 v112, v126
	v_mul_f32_e32 v2, v104, v2
	v_mul_f32_e32 v3, v104, v3
	v_mul_f32_e32 v4, v104, v4
	v_mul_f32_e32 v5, v104, v5
	v_mul_f32_e32 v6, v104, v6
	v_mul_f32_e32 v7, v104, v7
	v_mul_f32_e32 v8, v104, v8
	s_waitcnt vmcnt(7)
	v_dual_mul_f32 v112, v104, v112 :: v_dual_lshlrev_b32 v119, 16, v129
	.loc	1 214 33                        ; attention_backward.py:214:33
	s_waitcnt vmcnt(6)
	v_lshlrev_b32_e32 v120, 16, v130
	s_waitcnt vmcnt(5)
	v_lshlrev_b32_e32 v121, 16, v131
	s_waitcnt vmcnt(4)
	v_lshlrev_b32_e32 v122, 16, v132
	s_waitcnt vmcnt(3)
	v_lshlrev_b32_e32 v123, 16, v133
	.loc	1 223 21                        ; attention_backward.py:223:21
	s_waitcnt vmcnt(2)
	v_dual_mul_f32 v3, v3, v120 :: v_dual_lshlrev_b32 v124, 16, v134
	s_waitcnt vmcnt(1)
	v_dual_mul_f32 v4, v4, v121 :: v_dual_lshlrev_b32 v125, 16, v135
	s_waitcnt vmcnt(0)
	v_dual_mul_f32 v5, v5, v122 :: v_dual_lshlrev_b32 v126, 16, v136
	v_dual_mul_f32 v2, v2, v119 :: v_dual_mul_f32 v7, v7, v124
	v_mul_f32_e32 v6, v6, v123
	v_dual_mul_f32 v8, v8, v125 :: v_dual_cndmask_b32 v3, 0xff800000, v3
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_dual_mul_f32 v112, v112, v126 :: v_dual_cndmask_b32 v7, 0xff800000, v7
	.loc	1 257 22                        ; attention_backward.py:257:22
	v_dual_cndmask_b32 v2, 0xff800000, v2 :: v_dual_cndmask_b32 v5, 0xff800000, v5
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cndmask_b32_e32 v6, 0xff800000, v6, vcc_lo
	v_cndmask_b32_e32 v8, 0xff800000, v8, vcc_lo
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_cndmask_b32_e32 v119, 0xff800000, v112, vcc_lo
	v_cndmask_b32_e32 v4, 0xff800000, v4, vcc_lo
.Ltmp1:
	.file	2 "<repo>/.venv/lib/python3.12/site-packages/triton/language" "standard.py"
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention_backward.py:258:25 ] ]
	v_max3_f32 v120, v5, v6, v7
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_max_f32_e32 v121, v8, v119
	v_max3_f32 v112, v2, v3, v4
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_max3_f32 v112, v112, v120, v121
.Ltmp2:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention_backward.py:258:25 ]
	v_permlanex16_b32 v120, v112, s8, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp3:
	.loc	1 259 20                        ; attention_backward.py:259:20
	v_max3_f32 v112, v137, v112, v120
	.loc	1 261 58                        ; attention_backward.py:261:58
	v_sub_f32_e32 v119, v119, v112
	v_sub_f32_e32 v3, v3, v112
	v_sub_f32_e32 v4, v4, v112
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 261 45 is_stmt 0              ; attention_backward.py:261:45
	v_exp_f32_e32 v119, v119
	.loc	1 261 58                        ; attention_backward.py:261:58
	v_sub_f32_e32 v2, v2, v112
	.loc	1 261 45                        ; attention_backward.py:261:45
	v_exp_f32_e32 v3, v3
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_exp_f32_e32 v4, v4
	v_exp_f32_e32 v2, v2
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 261 58                        ; attention_backward.py:261:58
	v_dual_sub_f32 v5, v5, v112 :: v_dual_add_f32 v2, v2, v3
	.loc	1 261 45                        ; attention_backward.py:261:45
	v_exp_f32_e32 v5, v5
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
.Ltmp4:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:262:33 ] ]
	v_add_f32_e32 v3, v4, v5
.Ltmp5:
	.loc	1 261 58                        ; attention_backward.py:261:58
	v_sub_f32_e32 v8, v8, v112
	v_dual_sub_f32 v7, v7, v112 :: v_dual_add_f32 v2, v2, v3
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 261 45 is_stmt 0              ; attention_backward.py:261:45
	v_exp_f32_e32 v8, v8
	v_exp_f32_e32 v7, v7
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp6:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:262:33 ] ]
	v_dual_add_f32 v5, v8, v119 :: v_dual_sub_f32 v6, v6, v112
.Ltmp7:
	.loc	1 261 45                        ; attention_backward.py:261:45
	v_exp_f32_e32 v6, v6
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp8:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:262:33 ] ]
	v_add_f32_e32 v4, v6, v7
	v_dual_add_f32 v3, v4, v5 :: v_dual_sub_f32 v4, v137, v112
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_dual_mov_b32 v5, v107 :: v_dual_add_f32 v2, v2, v3
.Ltmp9:
	.loc	1 260 57                        ; attention_backward.py:260:57
	v_exp_f32_e32 v3, v4
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp10:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:262:33 ] ]
	v_cndmask_b32_e32 v2, 0, v2, vcc_lo
.Ltmp11:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:262:33 ]
	v_permlanex16_b32 v4, v2, s8, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
.Ltmp12:
	.loc	1 260 21                        ; attention_backward.py:260:21
	v_cndmask_b32_e64 v3, 0, v3, s1
	.loc	1 194 9                         ; attention_backward.py:194:9
	s_add_i32 s1, s2, 16
	s_cmpk_lt_u32 s2, 0x7f0
	s_mov_b32 s2, s1
.Ltmp13:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:262:33 ] ]
	v_add_f32_e32 v107, v2, v4
.Ltmp14:
	.loc	1 262 19                        ; attention_backward.py:262:19
	v_fmac_f32_e32 v107, v5, v3
	.loc	1 194 9                         ; attention_backward.py:194:9
	s_cbranch_scc1 .LBB0_1
; %bb.2:
	.loc	1 176 24                        ; attention_backward.py:176:24
	v_dual_mul_f32 v2, v70, v38 :: v_dual_and_b32 v1, 31, v0
	v_dual_mul_f32 v3, v72, v40 :: v_dual_mul_f32 v4, v66, v34
	v_dual_mul_f32 v5, v68, v36 :: v_dual_mul_f32 v58, v58, v26
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 124 21                        ; attention_backward.py:124:21
	v_or_b32_e32 v6, s6, v1
	.loc	1 176 24                        ; attention_backward.py:176:24
	v_dual_mul_f32 v7, v62, v30 :: v_dual_mul_f32 v8, v64, v32
	v_dual_mul_f32 v60, v60, v28 :: v_dual_fmac_f32 v3, v71, v39
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 128 21                        ; attention_backward.py:128:21
	v_cmp_gt_i32_e64 s1, 0x800, v6
	.loc	1 176 24                        ; attention_backward.py:176:24
	v_dual_mul_f32 v6, v54, v22 :: v_dual_fmac_f32 v5, v67, v35
	v_dual_mul_f32 v54, v56, v24 :: v_dual_fmac_f32 v7, v61, v29
.Ltmp15:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_fmac_f32_e32 v8, v63, v31
	v_fmac_f32_e32 v2, v69, v37
	v_fmac_f32_e32 v58, v57, v25
	v_fmac_f32_e32 v60, v59, v27
.Ltmp16:
	.loc	1 176 24                        ; attention_backward.py:176:24
	v_mul_f32_e32 v50, v50, v18
.Ltmp17:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_dual_fmac_f32 v4, v65, v33 :: v_dual_add_f32 v7, v7, v8
.Ltmp18:
	.loc	1 176 24                        ; attention_backward.py:176:24
	v_mul_f32_e32 v46, v46, v14
.Ltmp19:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_dual_add_f32 v2, v2, v3 :: v_dual_mul_f32 v3, v48, v16
	v_add_f32_e32 v48, v58, v60
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_add_f32_e32 v4, v4, v5
	v_dual_fmac_f32 v50, v49, v17 :: v_dual_mov_b32 v49, v7
	v_dual_fmac_f32 v46, v45, v13 :: v_dual_mov_b32 v45, v48
.Ltmp20:
	.loc	1 176 24                        ; attention_backward.py:176:24
	v_dual_mul_f32 v52, v52, v20 :: v_dual_mov_b32 v5, v2
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
.Ltmp21:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_mov_b32_dpp v49, v49 row_xmask:8 row_mask:0xf bank_mask:0xf
.Ltmp22:
	.loc	1 176 24                        ; attention_backward.py:176:24
	v_dual_mul_f32 v42, v42, v10 :: v_dual_fmac_f32 v3, v47, v15
.Ltmp23:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_mov_b32_dpp v45, v45 row_xmask:8 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_mov_b32_dpp v5, v5 row_xmask:8 row_mask:0xf bank_mask:0xf
.Ltmp24:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_fmac_f32_e32 v54, v55, v23
.Ltmp25:
	.loc	1 264 43                        ; attention_backward.py:264:43
	v_cmp_gt_f32_e64 s2, 0x800000, v107
.Ltmp26:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_dual_add_f32 v46, v46, v3 :: v_dual_add_f32 v3, v48, v45
	s_delay_alu instid0(VALU_DEP_4)
	v_add_f32_e32 v2, v2, v5
.Ltmp27:
	.loc	1 176 24                        ; attention_backward.py:176:24
	v_mul_f32_e32 v44, v44, v12
	.loc	1 267 9                         ; attention_backward.py:267:9
	v_lshl_add_u32 v61, v110, 5, 0
	.loc	1 266 9                         ; attention_backward.py:266:9
	s_waitcnt lgkmcnt(0)
	s_barrier
.Ltmp28:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_mov_b32_e32 v5, v2
.Ltmp29:
	.loc	1 267 9                         ; attention_backward.py:267:9
	v_lshl_add_u32 v62, v108, 1, 0
	.loc	1 266 9                         ; attention_backward.py:266:9
	s_and_b32 s13, s13, 0xffff
	s_mov_b32 s15, 0x31027000
	s_mov_b32 s14, 0x7ffffffe
.Ltmp30:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_mov_b32_dpp v5, v5 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp31:
	.loc	1 267 9                         ; attention_backward.py:267:9
	s_and_b32 s5, s5, 0xffff
	.loc	1 125 21                        ; attention_backward.py:125:21
	v_lshrrev_b32_e32 v63, 3, v0
	s_mov_b32 s33, 0
	s_and_b32 s21, s21, 0xffff
.Ltmp32:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_e32 v2, v2, v5
	v_add_f32_e32 v5, v7, v49
	v_dual_fmac_f32 v42, v41, v9 :: v_dual_mov_b32 v41, v3
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_fmac_f32 v44, v43, v11 :: v_dual_mov_b32 v7, v2
.Ltmp33:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_mov_b32_e32 v47, v5
	s_mov_b32 s42, s38
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_mov_b32_dpp v41, v41 row_xmask:4 row_mask:0xf bank_mask:0xf
	s_mov_b32 s43, s39
	v_mov_b32_dpp v7, v7 row_xmask:2 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v47, v47 row_xmask:4 row_mask:0xf bank_mask:0xf
	v_dual_mov_b32 v8, v4 :: v_dual_add_f32 v41, v3, v41
.Ltmp34:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_fmac_f32_e32 v52, v51, v19
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_add_f32_e32 v2, v2, v7
	v_add_f32_e32 v5, v5, v47
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_3)
.Ltmp35:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_mov_b32_dpp v8, v8 row_xmask:8 row_mask:0xf bank_mask:0xf
.Ltmp36:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_fmac_f32_e32 v6, v53, v21
	s_mov_b32 s22, s14
.Ltmp37:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_mov_b32_e32 v7, v2
	v_dual_mov_b32 v43, v5 :: v_dual_add_f32 v4, v4, v8
	s_mov_b32 s23, s15
	s_mov_b32 s34, 0x76543210
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_mov_b32_dpp v7, v7 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v43, v43 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp38:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_dual_add_f32 v6, v6, v54 :: v_dual_mov_b32 v65, 0
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_add_f32_e32 v2, v2, v7
	v_dual_add_f32 v5, v5, v43 :: v_dual_add_f32 v8, v50, v52
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp39:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_dual_mov_b32 v50, v4 :: v_dual_mov_b32 v43, v5
	v_mov_b32_e32 v7, v8
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mov_b32_dpp v50, v50 row_xmask:4 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v43, v43 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v7, v7 row_xmask:8 row_mask:0xf bank_mask:0xf
.Ltmp40:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_dual_add_f32 v7, v8, v7 :: v_dual_add_f32 v42, v42, v44
.Ltmp41:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_mov_b32_e32 v44, v6
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v44, v44 row_xmask:8 row_mask:0xf bank_mask:0xf
.Ltmp42:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_e32 v6, v6, v44
	v_add_f32_e32 v4, v4, v50
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp43:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_mov_b32_e32 v45, v4
	v_mov_b32_dpp v45, v45 row_xmask:2 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp44:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_dual_add_f32 v4, v4, v45 :: v_dual_mov_b32 v45, v41
.Ltmp45:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_mov_b32_e32 v3, v4
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_mov_b32_dpp v45, v45 row_xmask:2 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v3, v3 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
.Ltmp46:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_e32 v41, v41, v45
.Ltmp47:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_mov_b32_e32 v45, v6
.Ltmp48:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_e32 v3, v4, v3
	v_add_f32_e32 v4, v5, v43
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_2)
.Ltmp49:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_mov_b32_dpp v45, v45 row_xmask:4 row_mask:0xf bank_mask:0xf
	v_dual_mov_b32 v5, v7 :: v_dual_mov_b32 v44, v46
	v_dual_mov_b32 v47, v41 :: v_dual_add_f32 v6, v6, v45
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mov_b32_dpp v5, v5 row_xmask:4 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v44, v44 row_xmask:8 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_mov_b32_dpp v47, v47 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp50:
	.loc	1 264 43                        ; attention_backward.py:264:43
	v_cndmask_b32_e64 v45, 0, 0x42000000, s2
.Ltmp51:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_dual_mov_b32 v48, v6 :: v_dual_add_f32 v7, v7, v5
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_4)
.Ltmp52:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_e32 v43, v46, v44
.Ltmp53:
	.loc	1 264 43                        ; attention_backward.py:264:43
	v_cndmask_b32_e64 v46, 0, 32, s2
	.loc	1 264 26 is_stmt 0              ; attention_backward.py:264:26
	v_cmp_lt_f32_e64 s2, 0, v107
.Ltmp54:
	.loc	2 293 12 is_stmt 1              ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_mov_b32_dpp v48, v48 row_xmask:2 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
.Ltmp55:
	.loc	1 264 43                        ; attention_backward.py:264:43
	v_ldexp_f32 v5, v107, v46
	.loc	1 392 17                        ; attention_backward.py:392:17
	v_mov_b16_e32 v107.h, 0
.Ltmp56:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_e32 v6, v6, v48
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_2)
.Ltmp57:
	.loc	1 264 43                        ; attention_backward.py:264:43
	v_log_f32_e32 v46, v5
.Ltmp58:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_e32 v5, v41, v47
.Ltmp59:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_mov_b32_e32 v41, v6
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v41, v41 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_dual_mov_b32 v44, v43 :: v_dual_add_f32 v57, v6, v41
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_mov_b32_dpp v44, v44 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp60:
	.loc	1 168 40                        ; attention_backward.py:168:40
	v_and_b32_e32 v41, 7, v0
.Ltmp61:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_e32 v43, v43, v44
.Ltmp62:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_mov_b32_e32 v44, v7
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_mov_b32_e32 v48, v43
	v_mov_b32_dpp v44, v44 row_xmask:2 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_mov_b32_dpp v48, v48 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp63:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_e32 v7, v7, v44
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add_f32_e32 v43, v43, v48
.Ltmp64:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_mov_b32_e32 v47, v43
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v47, v47 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_dual_mov_b32 v8, v42 :: v_dual_add_f32 v59, v43, v47
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v8, v8 row_xmask:8 row_mask:0xf bank_mask:0xf
.Ltmp65:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_e32 v8, v42, v8
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp66:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_mov_b32_e32 v42, v8
	v_mov_b32_dpp v42, v42 row_xmask:4 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
.Ltmp67:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_e32 v8, v8, v42
.Ltmp68:
	.loc	1 264 43                        ; attention_backward.py:264:43
	v_sub_f32_e32 v42, v46, v45
.Ltmp69:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_dual_mov_b32 v45, v7 :: v_dual_add_nc_u32 v46, 0, v106
	v_mov_b32_e32 v44, v8
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp70:
	.loc	1 264 37                        ; attention_backward.py:264:37
	v_add_f32_e32 v42, v112, v42
.Ltmp71:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_mov_b32_dpp v45, v45 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mov_b32_dpp v44, v44 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp72:
	.loc	1 264 17                        ; attention_backward.py:264:17
	v_cndmask_b32_e64 v106, 0, v42, s2
	.loc	1 266 9                         ; attention_backward.py:266:9
	v_lshl_add_u32 v42, v111, 1, v46
	v_cmp_eq_u32_e64 s2, 0, v111
.Ltmp73:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_e32 v58, v7, v45
	v_add_f32_e32 v8, v8, v44
.Ltmp74:
	.loc	1 266 9                         ; attention_backward.py:266:9
	v_lshl_add_u32 v44, v1, 2, 0
	ds_store_b32 v42, v106
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 266 18 is_stmt 0              ; attention_backward.py:266:18
	v_or_b32_e32 v1, s7, v1
	.loc	1 266 9                         ; attention_backward.py:266:9
	ds_load_b32 v42, v44
.Ltmp75:
	.loc	2 293 12 is_stmt 1              ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_mov_b32_e32 v44, v8
.Ltmp76:
	.loc	1 266 9                         ; attention_backward.py:266:9
	s_and_b32 s1, s2, s1
	.loc	1 267 9                         ; attention_backward.py:267:9
	s_mov_b32 s7, s15
	.loc	1 266 9                         ; attention_backward.py:266:9
	v_add_lshl_u32 v1, v1, s6, 2
	.loc	1 267 9                         ; attention_backward.py:267:9
	s_mov_b32 s6, s14
.Ltmp77:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_mov_b32_dpp v44, v44 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_1)
.Ltmp78:
	.loc	1 266 9                         ; attention_backward.py:266:9
	v_cndmask_b32_e64 v7, 0x80000000, v1, s1
	.loc	1 267 9                         ; attention_backward.py:267:9
	v_and_b32_e32 v1, 28, v0
.Ltmp79:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_dual_add_f32 v60, v8, v44 :: v_dual_add_nc_u32 v1, v61, v1
.Ltmp80:
	.loc	1 266 9                         ; attention_backward.py:266:9
	s_waitcnt lgkmcnt(0)
	buffer_store_b32 v42, v7, s[12:15], 0 offen
	.loc	1 267 9                         ; attention_backward.py:267:9
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v62, v[2:5]
	ds_store_b128 v62, v[57:60] offset:16
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b32 v8, v1
	.loc	1 392 17                        ; attention_backward.py:392:17
	v_bfe_u32 v42, v37, 16, 1
	v_dual_mov_b32 v1, 0 :: v_dual_lshlrev_b32 v6, 3, v41
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_dual_mov_b32 v69, v1 :: v_dual_lshlrev_b32 v64, 4, v110
	v_mov_b32_e32 v67, v1
	.loc	1 168 40                        ; attention_backward.py:168:40
	v_cmp_gt_i32_e64 s1, s30, v6
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 310 21                        ; attention_backward.py:310:21
	v_cmp_gt_i32_e64 s2, s28, v64
	v_mov_b32_e32 v68, v1
	v_mov_b32_e32 v70, v1
	v_mov_b32_e32 v72, v1
	v_mov_b32_e32 v71, v1
	v_mov_b32_e32 v66, v1
	.loc	1 267 9                         ; attention_backward.py:267:9
	s_waitcnt lgkmcnt(0)
	buffer_store_b32 v8, v7, s[4:7], 0 offen
	.loc	1 392 17                        ; attention_backward.py:392:17
	v_add3_u32 v7, v37, v42, 0x7fff
	v_bfe_u32 v8, v38, 16, 1
	v_bfe_u32 v42, v39, 16, 1
	v_cmp_o_f32_e64 s4, v37, v37
	v_bfe_u32 v37, v40, 16, 1
	v_cmp_o_f32_e64 s5, v38, v38
	v_add3_u32 v8, v38, v8, 0x7fff
	v_add3_u32 v38, v39, v42, 0x7fff
	v_cmp_o_f32_e64 s6, v39, v39
	v_add3_u32 v37, v40, v37, 0x7fff
	v_cmp_o_f32_e64 s7, v40, v40
	v_bfe_u32 v39, v33, 16, 1
	v_cndmask_b16 v7.l, 0x7fff, v7.h, s4
	v_cndmask_b16 v7.h, 0x7fff, v8.h, s5
	v_cndmask_b16 v8.l, 0x7fff, v38.h, s6
	v_cndmask_b16 v8.h, 0x7fff, v37.h, s7
	v_bfe_u32 v37, v34, 16, 1
	v_add3_u32 v38, v33, v39, 0x7fff
	v_bfe_u32 v39, v35, 16, 1
	v_cmp_o_f32_e64 s4, v33, v33
	v_bfe_u32 v33, v36, 16, 1
	v_add3_u32 v37, v34, v37, 0x7fff
	v_cmp_o_f32_e64 s5, v34, v34
	v_add3_u32 v34, v35, v39, 0x7fff
	v_cmp_o_f32_e64 s6, v35, v35
	v_add3_u32 v35, v36, v33, 0x7fff
	v_cmp_o_f32_e64 s7, v36, v36
	v_bfe_u32 v36, v29, 16, 1
	v_cndmask_b16 v33.l, 0x7fff, v38.h, s4
	v_cndmask_b16 v33.h, 0x7fff, v37.h, s5
	v_cndmask_b16 v34.l, 0x7fff, v34.h, s6
	v_cndmask_b16 v34.h, 0x7fff, v35.h, s7
	v_bfe_u32 v35, v30, 16, 1
	v_add3_u32 v36, v29, v36, 0x7fff
	v_bfe_u32 v37, v31, 16, 1
	v_cmp_o_f32_e64 s4, v29, v29
	v_bfe_u32 v29, v32, 16, 1
	v_add3_u32 v35, v30, v35, 0x7fff
	v_cmp_o_f32_e64 s5, v30, v30
	v_add3_u32 v30, v31, v37, 0x7fff
	v_cmp_o_f32_e64 s6, v31, v31
	v_add3_u32 v31, v32, v29, 0x7fff
	v_cmp_o_f32_e64 s7, v32, v32
	v_bfe_u32 v32, v25, 16, 1
	v_cndmask_b16 v29.l, 0x7fff, v36.h, s4
	v_cndmask_b16 v29.h, 0x7fff, v35.h, s5
	v_cndmask_b16 v30.l, 0x7fff, v30.h, s6
	v_cndmask_b16 v30.h, 0x7fff, v31.h, s7
	v_bfe_u32 v31, v26, 16, 1
	v_add3_u32 v32, v25, v32, 0x7fff
	v_bfe_u32 v35, v27, 16, 1
	v_cmp_o_f32_e64 s4, v25, v25
	v_bfe_u32 v25, v28, 16, 1
	v_add3_u32 v31, v26, v31, 0x7fff
	v_cmp_o_f32_e64 s5, v26, v26
	v_add3_u32 v26, v27, v35, 0x7fff
	v_cmp_o_f32_e64 s6, v27, v27
	v_add3_u32 v27, v28, v25, 0x7fff
	v_cmp_o_f32_e64 s7, v28, v28
	v_bfe_u32 v28, v21, 16, 1
	v_cndmask_b16 v25.l, 0x7fff, v32.h, s4
	v_cndmask_b16 v25.h, 0x7fff, v31.h, s5
	v_cndmask_b16 v26.l, 0x7fff, v26.h, s6
	v_cndmask_b16 v26.h, 0x7fff, v27.h, s7
	v_bfe_u32 v27, v22, 16, 1
	v_add3_u32 v28, v21, v28, 0x7fff
	v_bfe_u32 v31, v23, 16, 1
	v_cmp_o_f32_e64 s4, v21, v21
	v_bfe_u32 v21, v24, 16, 1
	v_add3_u32 v27, v22, v27, 0x7fff
	v_cmp_o_f32_e64 s5, v22, v22
	v_add3_u32 v22, v23, v31, 0x7fff
	v_cmp_o_f32_e64 s6, v23, v23
	v_add3_u32 v23, v24, v21, 0x7fff
	v_cmp_o_f32_e64 s7, v24, v24
	v_bfe_u32 v24, v17, 16, 1
	v_cndmask_b16 v21.l, 0x7fff, v28.h, s4
	v_cndmask_b16 v21.h, 0x7fff, v27.h, s5
	v_cndmask_b16 v22.l, 0x7fff, v22.h, s6
	v_cndmask_b16 v22.h, 0x7fff, v23.h, s7
	v_bfe_u32 v23, v18, 16, 1
	v_add3_u32 v24, v17, v24, 0x7fff
	v_bfe_u32 v27, v19, 16, 1
	v_cmp_o_f32_e64 s4, v17, v17
	v_bfe_u32 v17, v20, 16, 1
	v_add3_u32 v23, v18, v23, 0x7fff
	v_cmp_o_f32_e64 s5, v18, v18
	v_add3_u32 v18, v19, v27, 0x7fff
	v_cmp_o_f32_e64 s6, v19, v19
	v_add3_u32 v19, v20, v17, 0x7fff
	v_cmp_o_f32_e64 s7, v20, v20
	v_bfe_u32 v20, v13, 16, 1
	v_cndmask_b16 v17.l, 0x7fff, v24.h, s4
	v_cndmask_b16 v17.h, 0x7fff, v23.h, s5
	v_cndmask_b16 v18.l, 0x7fff, v18.h, s6
	v_cndmask_b16 v18.h, 0x7fff, v19.h, s7
	v_bfe_u32 v19, v14, 16, 1
	v_add3_u32 v20, v13, v20, 0x7fff
	v_bfe_u32 v23, v15, 16, 1
	v_cmp_o_f32_e64 s4, v13, v13
	v_bfe_u32 v13, v16, 16, 1
	v_add3_u32 v19, v14, v19, 0x7fff
	v_cmp_o_f32_e64 s5, v14, v14
	v_add3_u32 v14, v15, v23, 0x7fff
	v_cmp_o_f32_e64 s6, v15, v15
	v_add3_u32 v15, v16, v13, 0x7fff
	v_cmp_o_f32_e64 s7, v16, v16
	v_bfe_u32 v16, v9, 16, 1
	v_cndmask_b16 v13.l, 0x7fff, v20.h, s4
	v_cndmask_b16 v13.h, 0x7fff, v19.h, s5
	v_cndmask_b16 v14.l, 0x7fff, v14.h, s6
	v_cndmask_b16 v14.h, 0x7fff, v15.h, s7
	v_bfe_u32 v15, v10, 16, 1
	v_add3_u32 v16, v9, v16, 0x7fff
	v_bfe_u32 v19, v11, 16, 1
	v_cmp_o_f32_e64 s4, v9, v9
	v_bfe_u32 v9, v12, 16, 1
	v_add3_u32 v15, v10, v15, 0x7fff
	v_cmp_o_f32_e64 s5, v10, v10
	v_add3_u32 v10, v11, v19, 0x7fff
	v_cmp_o_f32_e64 s6, v11, v11
	v_add3_u32 v11, v12, v9, 0x7fff
	v_cmp_o_f32_e64 s7, v12, v12
	v_xor_b32_e32 v12, v109, v108
	v_cndmask_b16 v9.l, 0x7fff, v16.h, s4
	v_cndmask_b16 v9.h, 0x7fff, v15.h, s5
	v_cndmask_b16 v10.l, 0x7fff, v10.h, s6
	v_cndmask_b16 v10.h, 0x7fff, v11.h, s7
	v_add_nc_u32_e32 v11, 0, v12
	v_lshlrev_b32_e32 v15, 7, v113
	v_lshlrev_b32_e32 v16, 4, v41
	v_lshlrev_b32_e32 v19, 6, v111
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_2addr_stride64_b64 v11, v[7:8], v[29:30] offset1:2
	v_xad_u32 v12, 0x240, v12, 0
	v_or3_b32 v7, v15, v19, v16
	ds_store_2addr_stride64_b64 v11, v[21:22], v[13:14] offset0:4 offset1:6
	ds_store_2addr_stride64_b64 v12, v[33:34], v[25:26] offset1:2
	ds_store_2addr_stride64_b64 v12, v[17:18], v[9:10] offset0:4 offset1:6
	s_waitcnt lgkmcnt(0)
	v_add_nc_u32_e32 v8, 0, v7
	v_xad_u32 v9, v7, 16, 0
	s_barrier
	v_xad_u32 v10, v7, 32, 0
	ds_load_b128 v[25:28], v8
	ds_load_b128 v[29:32], v9
	v_xad_u32 v8, v7, 64, 0
	v_xad_u32 v11, v7, 48, 0
	v_xad_u32 v9, 0x50, v7, 0
	ds_load_b128 v[33:36], v10
	ds_load_b128 v[37:40], v11
	v_xad_u32 v10, 0x60, v7, 0
	ds_load_b128 v[41:44], v8
	ds_load_b128 v[45:48], v9
	.loc	1 396 43                        ; attention_backward.py:396:43
	v_and_b32_e32 v8, 12, v0
	.loc	1 392 17                        ; attention_backward.py:392:17
	v_xad_u32 v7, 0x70, v7, 0
	ds_load_b128 v[49:52], v10
	ds_load_b128 v[53:56], v7
	.loc	1 396 43                        ; attention_backward.py:396:43
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v62, v[2:5]
	ds_store_b128 v62, v[57:60] offset:16
	v_mov_b32_e32 v59, v1
	v_add3_u32 v7, v61, v82, v8
	v_lshl_or_b32 v108, v8, 1, v83
	v_lshlrev_b32_e32 v10, 9, v110
	v_dual_mov_b32 v17, 0 :: v_dual_lshlrev_b32 v8, 5, v8
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_4) | instid1(VALU_DEP_4)
	.loc	1 270 9                         ; attention_backward.py:270:9
	v_mad_u64_u32 v[82:83], null, s30, v63, v[6:7]
	v_dual_mov_b32 v61, v1 :: v_dual_and_b32 v6, 24, v0
	v_mov_b32_e32 v3, 0x5410
	v_mov_b32_e32 v63, v1
	v_or3_b32 v110, v8, v10, v64
	v_lshlrev_b32_e32 v9, 1, v6
	v_lshl_or_b32 v6, v6, 6, v16
	v_cndmask_b32_e64 v3, 0x1054, v3, s3
	.loc	1 396 43                        ; attention_backward.py:396:43
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b32 v109, v7
	v_xor_b32_e32 v6, v6, v9
	v_xor_b32_e32 v9, 16, v110
	v_mov_b32_e32 v4, 0x7632
	v_lshl_or_b32 v3, v3, 8, v3
	v_xor_b32_e32 v2, 8, v108
	v_xor_b32_e32 v5, 16, v108
	v_add_nc_u32_e32 v117, 0, v9
	v_cndmask_b32_e64 v4, 0x3276, v4, s3
	v_and_b32_e32 v3, 0x540054, v3
	v_xor_b32_e32 v7, 24, v108
	v_lshl_add_u32 v8, v111, 2, 0
	v_xor_b32_e32 v10, 32, v110
	v_lshl_or_b32 v4, v4, 8, v4
	v_lshl_or_b32 v3, v3, 4, v3
	v_xor_b32_e32 v11, 48, v110
	v_mov_b32_e32 v19, v1
	.loc	1 270 9                         ; attention_backward.py:270:9
	v_add_nc_u32_e32 v83, s16, v82
	v_and_b32_e32 v4, 0x760076, v4
	v_and_b32_e32 v111, 0x5040504, v3
	v_lshlrev_b32_e32 v3, 5, v0
	v_lshl_add_u32 v0, v113, 1, 0
	v_add_nc_u32_e32 v113, 0, v2
	v_lshl_or_b32 v4, v4, 4, v4
	v_dual_mov_b32 v23, v1 :: v_dual_add_nc_u32 v114, 0, v5
	v_add_nc_u32_e32 v115, 0, v7
	v_dual_mov_b32 v9, 0 :: v_dual_add_nc_u32 v116, v8, v6
	s_delay_alu instid0(VALU_DEP_4)
	v_dual_mov_b32 v21, v1 :: v_dual_and_b32 v112, 0x7060706, v4
	v_add_nc_u32_e32 v118, 0, v10
	v_add_nc_u32_e32 v119, 0, v11
	v_dual_mov_b32 v13, v1 :: v_dual_add_nc_u32 v120, 0, v3
	v_dual_mov_b32 v57, 0 :: v_dual_mov_b32 v58, v1
	v_mov_b32_e32 v60, v1
	v_mov_b32_e32 v62, v1
	v_mov_b32_e32 v64, v1
	v_mov_b32_e32 v18, v1
	v_mov_b32_e32 v20, v1
	v_mov_b32_e32 v22, v1
	v_mov_b32_e32 v24, v1
	v_mov_b32_e32 v10, v1
	v_mov_b32_e32 v11, v1
	v_mov_b32_e32 v12, v1
	v_mov_b32_e32 v14, v1
	v_mov_b32_e32 v15, v1
	v_mov_b32_e32 v16, v1
.LBB0_3:                                ; =>This Inner Loop Header: Depth=1
	.loc	1 275 21                        ; attention_backward.py:275:21
	s_or_b32 s3, s33, s27
	.loc	1 290 33                        ; attention_backward.py:290:33
	v_add_lshl_u32 v141, s33, v96, 1
	.loc	1 275 21                        ; attention_backward.py:275:21
	v_or_b32_e32 v121, s3, v94
	.loc	1 386 21                        ; attention_backward.py:386:21
	s_mul_i32 s4, s3, s30
	.loc	1 290 33                        ; attention_backward.py:290:33
	v_add_lshl_u32 v142, s33, v97, 1
	.loc	1 385 30                        ; attention_backward.py:385:30
	v_add_lshl_u32 v133, s4, v82, 1
	v_add_lshl_u32 v134, s4, v83, 1
	.loc	1 275 21                        ; attention_backward.py:275:21
	v_mad_u64_u32 v[121:122], null, v121, s29, v[73:74]
	.loc	1 290 33                        ; attention_backward.py:290:33
	v_add_lshl_u32 v145, s33, v98, 1
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 385 30                        ; attention_backward.py:385:30
	v_cndmask_b32_e64 v122, 0x80000000, v133, s1
	v_cndmask_b32_e64 v137, 0x80000000, v134, s1
	.loc	1 290 33                        ; attention_backward.py:290:33
	v_add_lshl_u32 v146, s33, v99, 1
	v_add_lshl_u32 v147, s33, v100, 1
	v_add_lshl_u32 v148, s33, v101, 1
	.loc	1 274 28                        ; attention_backward.py:274:28
	v_cndmask_b32_e64 v121, 0x80000000, v121, s0
	.loc	1 280 29                        ; attention_backward.py:280:29
	v_dual_mov_b32 v2, v1 :: v_dual_add_nc_u32 v123, 0, v108
	.loc	1 290 33                        ; attention_backward.py:290:33
	v_add_lshl_u32 v124, s33, v95, 1
	v_add_lshl_u32 v153, s33, v102, 1
	.loc	1 274 28                        ; attention_backward.py:274:28
	buffer_load_b64 v[143:144], v121, s[36:39], 0 offen
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 290 33                        ; attention_backward.py:290:33
	v_add_lshl_u32 v154, s33, v103, 1
	.loc	1 280 29                        ; attention_backward.py:280:29
	v_dual_mov_b32 v4, v1 :: v_dual_add_nc_u32 v155, 0, v110
	v_mov_b32_e32 v8, v1
	v_mov_b32_e32 v3, v1
	v_mov_b32_e32 v5, v1
	v_mov_b32_e32 v6, v1
	v_mov_b32_e32 v7, v1
	.loc	1 307 37                        ; attention_backward.py:307:37
	.loc	1 274 28                        ; attention_backward.py:274:28
	s_waitcnt vmcnt(0)
	ds_store_b64 v105, v[143:144]
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 385 30                        ; attention_backward.py:385:30
	s_clause 0x1
	buffer_load_b128 v[133:136], v122, s[20:23], 0 offen
	buffer_load_b128 v[137:140], v137, s[20:23], 0 offen
	.loc	1 290 33                        ; attention_backward.py:290:33
	s_clause 0x5
	buffer_load_u16 v156, v141, s[40:43], 0 offen
	buffer_load_u16 v157, v142, s[40:43], 0 offen
	buffer_load_u16 v158, v145, s[40:43], 0 offen
	buffer_load_u16 v159, v146, s[40:43], 0 offen
	buffer_load_u16 v160, v147, s[40:43], 0 offen
	buffer_load_u16 v121, v148, s[40:43], 0 offen
	.loc	1 274 28                        ; attention_backward.py:274:28
	ds_load_b64 v[145:146], v123
	ds_load_b64 v[147:148], v113
	ds_load_b64 v[149:150], v114
	ds_load_b64 v[151:152], v115
	.loc	1 290 33                        ; attention_backward.py:290:33
	s_clause 0x2
	buffer_load_u16 v122, v124, s[40:43], 0 offen
	buffer_load_u16 v123, v153, s[40:43], 0 offen
	buffer_load_u16 v124, v154, s[40:43], 0 offen
	.loc	1 393 17                        ; attention_backward.py:393:17
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 304 27                        ; attention_backward.py:304:27
	v_and_b32_e32 v154, 15, v143
	v_and_b32_e32 v162, 15, v144
	.loc	1 391 32                        ; attention_backward.py:391:32
	v_dual_mov_b32 v132, v8 :: v_dual_mov_b32 v131, v7
	v_dual_mov_b32 v130, v6 :: v_dual_mov_b32 v129, v5
	v_dual_mov_b32 v128, v4 :: v_dual_mov_b32 v127, v3
	v_dual_mov_b32 v126, v2 :: v_dual_mov_b32 v125, v1
	.loc	1 274 28                        ; attention_backward.py:274:28
	v_bfe_i32 v153, v143, 0, 8
	.loc	1 304 28                        ; attention_backward.py:304:28
	v_and_b16 v141.l, v143.l, 15
	v_and_b16 v141.h, v143.h, 15
	.loc	1 304 27 is_stmt 0              ; attention_backward.py:304:27
	v_bfe_u32 v161, v143, 16, 4
	.loc	1 305 30 is_stmt 1              ; attention_backward.py:305:30
	v_lshrrev_b16 v107.l, 4, v143.l
	.loc	1 304 28                        ; attention_backward.py:304:28
	v_and_b16 v142.l, v144.l, 15
	.loc	1 306 36                        ; attention_backward.py:306:36
	v_cmp_lt_u16_e64 s3, 7, v141.l
	.loc	1 304 28                        ; attention_backward.py:304:28
	v_and_b16 v142.h, v144.h, 15
	.loc	1 306 36                        ; attention_backward.py:306:36
	v_cmp_lt_u16_e64 s4, 7, v141.h
	.loc	1 304 27                        ; attention_backward.py:304:27
	v_bfe_u32 v141, v144, 8, 4
	.loc	1 306 36                        ; attention_backward.py:306:36
	v_cmp_lt_u16_e64 s5, 7, v142.l
	.loc	1 305 30                        ; attention_backward.py:305:30
	v_and_b16 v107.l, v107.l, 15
	.loc	1 306 36                        ; attention_backward.py:306:36
	v_cmp_lt_u16_e64 s6, 7, v142.h
	.loc	1 305 28                        ; attention_backward.py:305:28
	v_bfe_u32 v142, v144, 20, 4
	.loc	1 393 17                        ; attention_backward.py:393:17
	s_waitcnt vmcnt(10)
	ds_store_b128 v116, v[133:136]
	s_waitcnt vmcnt(9)
	ds_store_b128 v116, v[137:140] offset:256
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[137:140], v117
	ds_load_b128 v[133:136], v155
	.loc	1 290 33                        ; attention_backward.py:290:33
	s_waitcnt vmcnt(3)
	v_lshlrev_b32_e32 v121, 16, v121
	s_waitcnt vmcnt(1)
	v_lshlrev_b32_e32 v123, 16, v123
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v124, 16, v124
	.loc	1 391 32                        ; attention_backward.py:391:32
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[125:132], v[133:140], v[25:32], v[125:132]
	.loc	1 393 17                        ; attention_backward.py:393:17
	ds_load_b128 v[137:140], v119
	ds_load_b128 v[133:136], v118
	.loc	1 391 32                        ; attention_backward.py:391:32
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[125:132], v[133:140], v[33:40], v[125:132]
	.loc	1 393 17                        ; attention_backward.py:393:17
	ds_load_b128 v[133:136], v155 offset:64
	ds_load_b128 v[137:140], v117 offset:64
	.loc	1 304 27                        ; attention_backward.py:304:27
	v_bfe_u32 v155, v144, 16, 4
	.loc	1 391 32                        ; attention_backward.py:391:32
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[125:132], v[133:140], v[41:48], v[125:132]
	.loc	1 393 17                        ; attention_backward.py:393:17
	ds_load_b128 v[133:136], v118 offset:64
	ds_load_b128 v[137:140], v119 offset:64
	.loc	1 309 31                        ; attention_backward.py:309:31
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 391 32                        ; attention_backward.py:391:32
	v_wmma_f32_16x16x16_bf16 v[125:132], v[133:140], v[49:56], v[125:132]
	.loc	1 280 29                        ; attention_backward.py:280:29
	v_wmma_i32_16x16x16_iu4 v[133:140], v[145:146], v[74:75], v[1:8] neg_lo:[1,1,0]
	.loc	1 274 28                        ; attention_backward.py:274:28
	v_lshrrev_b32_e32 v2, 24, v144
	v_alignbit_b32 v145, v144, v143, 24
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 396 43                        ; attention_backward.py:396:43
	v_sub_f32_e32 v7, v126, v109
	.loc	1 280 29                        ; attention_backward.py:280:29
	v_wmma_i32_16x16x16_iu4 v[133:140], v[147:148], v[78:79], v[133:140] neg_lo:[1,1,0]
	.loc	1 396 43                        ; attention_backward.py:396:43
	v_sub_f32_e32 v8, v127, v109
	v_sub_f32_e32 v126, v129, v109
	v_sub_f32_e32 v6, v125, v109
	v_sub_f32_e32 v125, v128, v109
	.loc	1 280 29                        ; attention_backward.py:280:29
	v_wmma_i32_16x16x16_iu4 v[133:140], v[149:150], v[76:77], v[133:140] neg_lo:[1,1,0]
	.loc	1 396 43                        ; attention_backward.py:396:43
	v_sub_f32_e32 v4, v131, v109
	v_sub_f32_e32 v5, v132, v109
	.loc	1 274 28                        ; attention_backward.py:274:28
	v_lshrrev_b32_e32 v131, 8, v143
	v_mov_b16_e64 v132.l, v143.h
	.loc	1 280 29                        ; attention_backward.py:280:29
	v_wmma_i32_16x16x16_iu4 v[133:140], v[151:152], v[80:81], v[133:140] neg_lo:[1,1,0]
	.loc	1 304 27                        ; attention_backward.py:304:27
	v_bfe_u32 v149, v143, 8, 4
	.loc	1 305 28                        ; attention_backward.py:305:28
	v_bfe_u32 v150, v143, 20, 4
	.loc	1 274 28                        ; attention_backward.py:274:28
	v_bfe_i32 v146, v144, 0, 8
	v_lshrrev_b32_e32 v147, 8, v144
	.loc	1 299 21                        ; attention_backward.py:299:21
	v_cvt_f32_i32_e32 v134, v134
	.loc	1 396 43                        ; attention_backward.py:396:43
	v_sub_f32_e32 v127, v130, v109
	.loc	1 274 28                        ; attention_backward.py:274:28
	v_lshrrev_b64 v[129:130], 24, v[143:144]
	v_mov_b16_e64 v148.l, v144.h
	.loc	1 305 30                        ; attention_backward.py:305:30
	v_lshrrev_b16 v3.l, 4, v144.l
	.loc	1 304 27                        ; attention_backward.py:304:27
	v_bfe_u32 v151, v144, 24, 4
	.loc	1 304 28 is_stmt 0              ; attention_backward.py:304:28
	v_and_b16 v3.h, v131.l, 15
	.loc	1 309 31 is_stmt 1              ; attention_backward.py:309:31
	v_mov_b16_e64 v131.h, v107.h
	.loc	1 274 28                        ; attention_backward.py:274:28
	v_bfe_i32 v130, v129, 0, 8
	.loc	1 305 30                        ; attention_backward.py:305:30
	v_lshrrev_b16 v128.l, 4, v129.l
	.loc	1 304 28                        ; attention_backward.py:304:28
	v_and_b16 v2.h, v129.l, 15
	.loc	1 307 37                        ; attention_backward.py:307:37
	v_mov_b16_e64 v129.l, v153.l
	.loc	1 299 21                        ; attention_backward.py:299:21
	v_cvt_f32_i32_e32 v135, v135
	.loc	1 304 27                        ; attention_backward.py:304:27
	v_and_b32_e32 v145, 15, v145
	.loc	1 299 21                        ; attention_backward.py:299:21
	v_cvt_f32_i32_e32 v137, v137
	.loc	1 306 36                        ; attention_backward.py:306:36
	v_cmp_lt_u16_e64 s9, 7, v2.h
	.loc	1 307 37                        ; attention_backward.py:307:37
	v_cmp_gt_i16_e64 s8, 0, v129.l
	.loc	1 306 50                        ; attention_backward.py:306:50
	v_or_b32_e32 v129, -16, v154
	.loc	1 299 21                        ; attention_backward.py:299:21
	v_cvt_f32_i32_e32 v133, v133
	v_mul_f32_e32 v137, v104, v137
	v_cvt_f32_i32_e32 v138, v138
	v_cvt_f32_i32_e32 v139, v139
	.loc	1 306 27                        ; attention_backward.py:306:27
	v_cndmask_b32_e64 v143, v154, v129, s3
	.loc	1 306 50 is_stmt 0              ; attention_backward.py:306:50
	v_or_b32_e32 v129, -16, v161
	.loc	1 306 36                        ; attention_backward.py:306:36
	v_cmp_lt_u16_e64 s3, 7, v3.h
	.loc	1 304 28 is_stmt 1              ; attention_backward.py:304:28
	v_and_b16 v3.h, v147.l, 15
	.loc	1 299 21                        ; attention_backward.py:299:21
	v_mul_f32_e32 v134, v104, v134
	.loc	1 290 33                        ; attention_backward.py:290:33
	v_lshlrev_b32_e32 v154, 16, v122
	.loc	1 306 27                        ; attention_backward.py:306:27
	v_cndmask_b32_e64 v144, v161, v129, s4
	.loc	1 306 50 is_stmt 0              ; attention_backward.py:306:50
	v_or_b32_e32 v129, -16, v162
	.loc	1 306 36                        ; attention_backward.py:306:36
	v_cmp_lt_u16_e64 s4, 7, v3.h
	.loc	1 304 28 is_stmt 1              ; attention_backward.py:304:28
	v_and_b16 v3.h, v2.l, 15
	.loc	1 299 21                        ; attention_backward.py:299:21
	v_cvt_f32_i32_e32 v140, v140
	v_mul_f32_e32 v138, v104, v138
	.loc	1 306 27                        ; attention_backward.py:306:27
	v_cndmask_b32_e64 v152, v162, v129, s5
	.loc	1 306 50 is_stmt 0              ; attention_backward.py:306:50
	v_or_b32_e32 v129, -16, v155
	.loc	1 299 21 is_stmt 1              ; attention_backward.py:299:21
	v_mul_f32_e32 v139, v104, v139
	v_cvt_f32_i32_e32 v136, v136
	.loc	1 311 21                        ; attention_backward.py:311:21
	v_cvt_f32_i32_e32 v143, v143
	v_cvt_f32_i32_e32 v144, v144
	.loc	1 306 27                        ; attention_backward.py:306:27
	v_cndmask_b32_e64 v153, v155, v129, s6
	.loc	1 307 37                        ; attention_backward.py:307:37
	v_mov_b16_e64 v129.l, v146.l
	.loc	1 306 36                        ; attention_backward.py:306:36
	v_cmp_lt_u16_e64 s6, 7, v3.h
	.loc	1 345 58                        ; attention_backward.py:345:58
	v_fma_f32 v122, v139, v123, -v106
	.loc	1 311 21                        ; attention_backward.py:311:21
	v_cvt_f32_i32_e32 v152, v152
	v_cvt_f32_i32_e32 v153, v153
	.loc	1 307 37                        ; attention_backward.py:307:37
	v_cmp_gt_i16_e64 s5, 0, v129.l
	.loc	1 306 50                        ; attention_backward.py:306:50
	v_or_b32_e32 v129, -16, v149
	.loc	1 345 45                        ; attention_backward.py:345:45
	v_exp_f32_e32 v122, v122
	.loc	1 309 31                        ; attention_backward.py:309:31
	v_mov_b16_e64 v130.h, v107.h
	v_mov_b16_e64 v128.h, v107.h
	v_mov_b16_e32 v3.h, v107.h
	.loc	1 306 27                        ; attention_backward.py:306:27
	v_cndmask_b32_e64 v146, v149, v129, s3
	.loc	1 306 50 is_stmt 0              ; attention_backward.py:306:50
	v_or_b32_e32 v129, -16, v141
	.loc	1 345 58 is_stmt 1              ; attention_backward.py:345:58
	v_fma_f32 v121, v138, v121, -v106
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 311 21                        ; attention_backward.py:311:21
	v_cvt_f32_i32_e32 v146, v146
	.loc	1 306 27                        ; attention_backward.py:306:27
	v_cndmask_b32_e64 v141, v141, v129, s4
	.loc	1 306 50 is_stmt 0              ; attention_backward.py:306:50
	v_or_b32_e32 v129, -16, v151
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 345 45 is_stmt 1              ; attention_backward.py:345:45
	v_exp_f32_e32 v121, v121
	.loc	1 311 21                        ; attention_backward.py:311:21
	v_cvt_f32_i32_e32 v141, v141
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	.loc	1 306 27                        ; attention_backward.py:306:27
	v_cndmask_b32_e64 v149, v151, v129, s6
	.loc	1 274 28                        ; attention_backward.py:274:28
	v_bfe_i32 v129, v132, 0, 8
	.loc	1 290 33                        ; attention_backward.py:290:33
	v_lshlrev_b32_e32 v151, 16, v160
	.loc	1 299 21                        ; attention_backward.py:299:21
	v_dual_mul_f32 v140, v104, v140 :: v_dual_mul_f32 v141, v141, v154
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 311 21                        ; attention_backward.py:311:21
	v_cvt_f32_i32_e32 v149, v149
	.loc	1 307 37                        ; attention_backward.py:307:37
	v_cmp_gt_i16_e64 s10, 0, v129.l
	.loc	1 274 28                        ; attention_backward.py:274:28
	v_bfe_i32 v129, v148, 0, 8
	.loc	1 345 58                        ; attention_backward.py:345:58
	v_fma_f32 v137, v137, v151, -v106
	.loc	1 307 52                        ; attention_backward.py:307:52
	v_or_b32_e32 v151, -16, v107
	.loc	1 345 58                        ; attention_backward.py:345:58
	v_fma_f32 v123, v140, v124, -v106
	.loc	1 309 31                        ; attention_backward.py:309:31
	v_mov_b16_e64 v132.h, v107.h
	.loc	1 307 37                        ; attention_backward.py:307:37
	v_cmp_gt_i16_e64 s11, 0, v129.l
	.loc	1 274 28                        ; attention_backward.py:274:28
	v_bfe_i32 v129, v131, 0, 8
	.loc	1 307 28                        ; attention_backward.py:307:28
	v_cndmask_b32_e64 v151, v107, v151, s8
	.loc	1 345 45                        ; attention_backward.py:345:45
	v_exp_f32_e32 v137, v137
	v_exp_f32_e32 v123, v123
	.loc	1 345 29 is_stmt 0              ; attention_backward.py:345:29
	v_cndmask_b32_e32 v122, 0, v122, vcc_lo
	.loc	1 307 37 is_stmt 1              ; attention_backward.py:307:37
	v_cmp_gt_i16_e64 s7, 0, v129.l
	.loc	1 274 28                        ; attention_backward.py:274:28
	v_bfe_i32 v129, v147, 0, 8
	.loc	1 309 31                        ; attention_backward.py:309:31
	v_mov_b16_e64 v147.h, v107.h
	.loc	1 311 21                        ; attention_backward.py:311:21
	v_cvt_f32_i32_e32 v151, v151
	.loc	1 309 31                        ; attention_backward.py:309:31
	v_cndmask_b32_e64 v141, 0, v141, s2
	.loc	1 345 29                        ; attention_backward.py:345:29
	v_cndmask_b32_e32 v121, 0, v121, vcc_lo
	.loc	1 307 37                        ; attention_backward.py:307:37
	v_cmp_gt_i16_e64 s4, 0, v129.l
	.loc	1 274 28                        ; attention_backward.py:274:28
	v_bfe_i32 v129, v2, 0, 8
	.loc	1 345 29                        ; attention_backward.py:345:29
	v_cndmask_b32_e32 v123, 0, v123, vcc_lo
	.loc	1 309 31                        ; attention_backward.py:309:31
	v_mov_b16_e32 v2.h, v107.h
	.loc	1 396 26                        ; attention_backward.py:396:26
	v_mul_f32_e32 v121, v121, v127
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 307 37                        ; attention_backward.py:307:37
	v_cmp_gt_i16_e64 s3, 0, v129.l
	.loc	1 306 50                        ; attention_backward.py:306:50
	v_or_b32_e32 v129, -16, v145
	.loc	1 306 27 is_stmt 0              ; attention_backward.py:306:27
	v_cndmask_b32_e64 v145, v145, v129, s9
	.loc	1 307 37 is_stmt 1              ; attention_backward.py:307:37
	v_mov_b16_e64 v129.l, v130.l
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 311 21                        ; attention_backward.py:311:21
	v_cvt_f32_i32_e32 v145, v145
	.loc	1 307 37                        ; attention_backward.py:307:37
	v_cmp_gt_i16_e64 s6, 0, v129.l
	.loc	1 307 52 is_stmt 0              ; attention_backward.py:307:52
	v_or_b32_e32 v129, -16, v150
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	.loc	1 307 28                        ; attention_backward.py:307:28
	v_cndmask_b32_e64 v148, v150, v129, s10
	.loc	1 307 52                        ; attention_backward.py:307:52
	v_or_b32_e32 v129, -16, v142
	.loc	1 290 33 is_stmt 1              ; attention_backward.py:290:33
	v_lshlrev_b32_e32 v150, 16, v157
	.loc	1 309 31                        ; attention_backward.py:309:31
	v_cmp_o_f32_e64 s10, v141, v141
	.loc	1 311 21                        ; attention_backward.py:311:21
	v_cvt_f32_i32_e32 v148, v148
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 307 28                        ; attention_backward.py:307:28
	v_cndmask_b32_e64 v142, v142, v129, s11
	.loc	1 299 21                        ; attention_backward.py:299:21
	v_mul_f32_e32 v129, v104, v133
	.loc	1 290 33                        ; attention_backward.py:290:33
	v_lshlrev_b32_e32 v133, 16, v156
	.loc	1 345 58                        ; attention_backward.py:345:58
	v_fma_f32 v150, v134, v150, -v106
	.loc	1 299 21                        ; attention_backward.py:299:21
	v_dual_mul_f32 v134, v104, v135 :: v_dual_lshlrev_b32 v135, 16, v158
	.loc	1 311 21                        ; attention_backward.py:311:21
	v_cvt_f32_i32_e32 v142, v142
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 345 58                        ; attention_backward.py:345:58
	v_fma_f32 v133, v129, v133, -v106
	.loc	1 305 30                        ; attention_backward.py:305:30
	v_lshrrev_b16 v129.l, 4, v131.l
	.loc	1 309 31                        ; attention_backward.py:309:31
	v_mov_b16_e64 v129.h, v107.h
	.loc	1 345 58                        ; attention_backward.py:345:58
	v_fma_f32 v135, v134, v135, -v106
	.loc	1 299 21                        ; attention_backward.py:299:21
	v_mul_f32_e32 v134, v104, v136
	.loc	1 345 45                        ; attention_backward.py:345:45
	v_exp_f32_e32 v133, v133
	.loc	1 311 21                        ; attention_backward.py:311:21
	v_mul_f32_e32 v139, v148, v154
	v_mul_f32_e32 v148, v149, v154
	.loc	1 345 45                        ; attention_backward.py:345:45
	v_exp_f32_e32 v149, v150
	.loc	1 311 21                        ; attention_backward.py:311:21
	v_mul_f32_e32 v124, v151, v154
	.loc	1 290 33                        ; attention_backward.py:290:33
	v_lshlrev_b32_e32 v136, 16, v159
	.loc	1 311 21                        ; attention_backward.py:311:21
	v_dual_mul_f32 v140, v142, v154 :: v_dual_cndmask_b32 v151, 0, v137
	.loc	1 345 45                        ; attention_backward.py:345:45
	v_exp_f32_e32 v135, v135
	.loc	1 311 21                        ; attention_backward.py:311:21
	v_mul_f32_e32 v138, v143, v154
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 345 58                        ; attention_backward.py:345:58
	v_fma_f32 v136, v134, v136, -v106
	.loc	1 309 31                        ; attention_backward.py:309:31
	v_cndmask_b32_e64 v140, 0, v140, s2
	.loc	1 345 29                        ; attention_backward.py:345:29
	v_cndmask_b32_e32 v150, 0, v133, vcc_lo
	s_delay_alu instid0(TRANS32_DEP_2)
	v_cndmask_b32_e32 v149, 0, v149, vcc_lo
	.loc	1 309 31                        ; attention_backward.py:309:31
	v_cndmask_b32_e64 v124, 0, v124, s2
	v_cndmask_b32_e64 v139, 0, v139, s2
	.loc	1 305 30                        ; attention_backward.py:305:30
	v_lshrrev_b16 v134.h, 4, v147.l
	.loc	1 311 21                        ; attention_backward.py:311:21
	v_mul_f32_e32 v142, v146, v154
	.loc	1 345 45                        ; attention_backward.py:345:45
	v_exp_f32_e32 v136, v136
	.loc	1 309 31                        ; attention_backward.py:309:31
	v_mov_b16_e32 v107.l, v124.h
	.loc	1 311 21                        ; attention_backward.py:311:21
	v_mul_f32_e32 v143, v144, v154
	v_mul_f32_e32 v144, v145, v154
	.loc	1 309 31                        ; attention_backward.py:309:31
	v_mov_b16_e64 v132.l, v139.h
	v_mov_b16_e64 v147.l, v140.h
	.loc	1 345 29                        ; attention_backward.py:345:29
	v_cndmask_b32_e32 v135, 0, v135, vcc_lo
	.loc	1 309 31                        ; attention_backward.py:309:31
	v_cndmask_b32_e64 v138, 0, v138, s2
	v_and_b32_e32 v133, 1, v107
	.loc	1 305 30                        ; attention_backward.py:305:30
	v_and_b16 v107.l, v129.l, 15
	.loc	1 311 21                        ; attention_backward.py:311:21
	v_dual_mul_f32 v145, v152, v154 :: v_dual_and_b32 v132, 1, v132
	.loc	1 309 31                        ; attention_backward.py:309:31
	v_cndmask_b32_e64 v142, 0, v142, s2
	v_mov_b16_e64 v131.l, v138.h
	v_and_b32_e32 v137, 1, v147
	.loc	1 307 52                        ; attention_backward.py:307:52
	v_or_b32_e32 v147, -16, v107
	.loc	1 311 21                        ; attention_backward.py:311:21
	v_mul_f32_e32 v146, v153, v154
	.loc	1 309 31                        ; attention_backward.py:309:31
	v_cmp_o_f32_e64 s14, v124, v124
	v_cmp_o_f32_e64 s15, v139, v139
	.loc	1 345 29                        ; attention_backward.py:345:29
	v_cndmask_b32_e32 v136, 0, v136, vcc_lo
	.loc	1 309 31                        ; attention_backward.py:309:31
	v_cndmask_b32_e64 v143, 0, v143, s2
	v_and_b32_e32 v131, 1, v131
	v_add3_u32 v124, v124, v133, 0x7fff
	v_add3_u32 v132, v139, v132, 0x7fff
	.loc	1 307 28                        ; attention_backward.py:307:28
	v_cndmask_b32_e64 v139, v107, v147, s7
	.loc	1 309 31                        ; attention_backward.py:309:31
	v_mov_b16_e64 v107.l, v142.h
	v_cmp_o_f32_e64 s13, v138, v138
	v_add3_u32 v138, v138, v131, 0x7fff
	v_cndmask_b16 v131.h, 0x7fff, v124.h, s14
	v_cndmask_b16 v133.h, 0x7fff, v132.h, s15
	.loc	1 311 21                        ; attention_backward.py:311:21
	v_cvt_f32_i32_e32 v132, v139
	.loc	1 309 31                        ; attention_backward.py:309:31
	v_and_b32_e32 v124, 1, v107
	v_mov_b16_e64 v107.l, v143.h
	v_cmp_o_f32_e64 s17, v142, v142
	v_cndmask_b16 v131.l, 0x7fff, v138.h, s13
	.loc	1 311 21                        ; attention_backward.py:311:21
	v_mul_f32_e32 v139, v132, v154
	.loc	1 309 31                        ; attention_backward.py:309:31
	v_add3_u32 v124, v142, v124, 0x7fff
	.loc	1 396 26                        ; attention_backward.py:396:26
	v_dual_mul_f32 v125, v136, v125 :: v_dual_and_b32 v138, 1, v107
	.loc	1 305 30                        ; attention_backward.py:305:30
	v_and_b16 v107.l, v128.l, 15
	.loc	1 309 31                        ; attention_backward.py:309:31
	v_cndmask_b32_e64 v144, 0, v144, s2
	v_cmp_o_f32_e64 s18, v143, v143
	.loc	1 396 26                        ; attention_backward.py:396:26
	v_dual_mul_f32 v6, v150, v6 :: v_dual_mul_f32 v7, v149, v7
	v_mul_f32_e32 v8, v135, v8
	.loc	1 309 31                        ; attention_backward.py:309:31
	v_cndmask_b16 v132.l, 0x7fff, v124.h, s17
	v_add3_u32 v124, v143, v138, 0x7fff
	.loc	1 307 52                        ; attention_backward.py:307:52
	v_or_b32_e32 v127, -16, v107
	.loc	1 396 26                        ; attention_backward.py:396:26
	v_dual_mul_f32 v126, v151, v126 :: v_dual_mul_f32 v7, s31, v7
	v_dual_mul_f32 v4, v122, v4 :: v_dual_mul_f32 v5, v123, v5
	.loc	1 397 34                        ; attention_backward.py:397:34
	v_dual_mul_f32 v6, s31, v6 :: v_dual_mul_f32 v123, s31, v125
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_mul_f32 v8, s31, v8 :: v_dual_mul_f32 v125, s31, v126
	v_dual_mul_f32 v121, s31, v121 :: v_dual_mul_f32 v4, s31, v4
	.loc	1 309 31                        ; attention_backward.py:309:31
	v_cndmask_b16 v133.l, 0x7fff, v124.h, s18
	.loc	1 307 28                        ; attention_backward.py:307:28
	v_cndmask_b32_e64 v124, v107, v127, s6
	.loc	1 309 31                        ; attention_backward.py:309:31
	v_mov_b16_e64 v107.l, v144.h
	v_cmp_o_f32_e64 s16, v140, v140
	v_add3_u32 v137, v140, v137, 0x7fff
	v_cndmask_b32_e64 v122, 0, v139, s2
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 397 34                        ; attention_backward.py:397:34
	v_dual_mul_f32 v5, s31, v5 :: v_dual_and_b32 v140, 1, v107
	.loc	1 397 33 is_stmt 0              ; attention_backward.py:397:33
	v_bfe_u32 v126, v6, 16, 1
	v_bfe_u32 v127, v7, 16, 1
	v_bfe_u32 v135, v8, 16, 1
	v_bfe_u32 v139, v121, 16, 1
	.loc	1 305 30 is_stmt 1              ; attention_backward.py:305:30
	v_and_b16 v107.l, v3.l, 15
	.loc	1 309 31                        ; attention_backward.py:309:31
	v_cndmask_b32_e64 v145, 0, v145, s2
	v_mov_b16_e64 v130.l, v122.h
	.loc	1 397 33                        ; attention_backward.py:397:33
	v_cmp_o_f32_e64 s7, v6, v6
	v_cmp_o_f32_e64 s13, v7, v7
	v_cmp_o_f32_e64 s14, v8, v8
	v_bfe_u32 v136, v123, 16, 1
	v_bfe_u32 v138, v125, 16, 1
	v_cmp_o_f32_e64 s17, v121, v121
	v_bfe_u32 v142, v4, 16, 1
	v_bfe_u32 v143, v5, 16, 1
	.loc	1 311 21                        ; attention_backward.py:311:21
	v_cvt_f32_i32_e32 v124, v124
	.loc	1 397 33                        ; attention_backward.py:397:33
	v_add3_u32 v6, v6, v126, 0x7fff
	v_add3_u32 v7, v7, v127, 0x7fff
	v_add3_u32 v8, v8, v135, 0x7fff
	v_add3_u32 v121, v121, v139, 0x7fff
	.loc	1 307 52                        ; attention_backward.py:307:52
	v_or_b32_e32 v127, -16, v107
	.loc	1 309 31                        ; attention_backward.py:309:31
	v_cndmask_b16 v137.h, 0x7fff, v137.h, s16
	.loc	1 397 33                        ; attention_backward.py:397:33
	v_cmp_o_f32_e64 s15, v123, v123
	v_cmp_o_f32_e64 s16, v125, v125
	.loc	1 309 31                        ; attention_backward.py:309:31
	v_and_b32_e32 v130, 1, v130
	.loc	1 397 33                        ; attention_backward.py:397:33
	v_cmp_o_f32_e64 s18, v4, v4
	v_cmp_o_f32_e64 s19, v5, v5
	v_add3_u32 v123, v123, v136, 0x7fff
	v_add3_u32 v125, v125, v138, 0x7fff
	v_add3_u32 v4, v4, v142, 0x7fff
	v_add3_u32 v5, v5, v143, 0x7fff
	.loc	1 311 21                        ; attention_backward.py:311:21
	v_mul_f32_e32 v124, v124, v154
	.loc	1 397 33                        ; attention_backward.py:397:33
	v_cndmask_b16 v6.l, 0x7fff, v6.h, s7
	v_cndmask_b16 v6.h, 0x7fff, v7.h, s13
	v_cndmask_b16 v7.l, 0x7fff, v8.h, s14
	v_cndmask_b16 v8.h, 0x7fff, v121.h, s17
	.loc	1 307 28                        ; attention_backward.py:307:28
	v_cndmask_b32_e64 v121, v107, v127, s5
	.loc	1 309 31                        ; attention_backward.py:309:31
	v_mov_b16_e64 v107.l, v145.h
	v_cmp_o_f32_e64 s12, v144, v144
	v_cmp_o_f32_e64 s6, v122, v122
	v_add3_u32 v122, v122, v130, 0x7fff
	v_add3_u32 v126, v144, v140, 0x7fff
	.loc	1 397 33                        ; attention_backward.py:397:33
	v_cndmask_b16 v7.h, 0x7fff, v123.h, s15
	v_cndmask_b16 v8.l, 0x7fff, v125.h, s16
	v_cndmask_b16 v4.l, 0x7fff, v4.h, s18
	.loc	1 309 31                        ; attention_backward.py:309:31
	v_cndmask_b32_e64 v123, 0, v124, s2
	.loc	1 397 33                        ; attention_backward.py:397:33
	v_cndmask_b16 v4.h, 0x7fff, v5.h, s19
	v_permlanex16_b32 v5, v6, s34, 0xfedcba98 op_sel:[1,0]
	.loc	1 309 31                        ; attention_backward.py:309:31
	v_and_b32_e32 v124, 1, v107
	.loc	1 305 30                        ; attention_backward.py:305:30
	v_and_b16 v107.l, v134.h, 15
	.loc	1 311 21                        ; attention_backward.py:311:21
	v_cvt_f32_i32_e32 v125, v121
	.loc	1 309 31                        ; attention_backward.py:309:31
	v_cndmask_b16 v132.h, 0x7fff, v122.h, s6
	v_cndmask_b16 v134.l, 0x7fff, v126.h, s12
	v_mov_b16_e64 v129.l, v123.h
	.loc	1 397 33                        ; attention_backward.py:397:33
	v_perm_b32 v121, v5, v6, v111
	.loc	1 307 52                        ; attention_backward.py:307:52
	v_or_b32_e32 v126, -16, v107
	.loc	1 397 33                        ; attention_backward.py:397:33
	v_perm_b32 v122, v5, v6, v112
	.loc	1 311 21                        ; attention_backward.py:311:21
	v_mul_f32_e32 v6, v125, v154
	.loc	1 309 31                        ; attention_backward.py:309:31
	v_cndmask_b32_e64 v146, 0, v146, s2
	v_cmp_o_f32_e64 s11, v145, v145
	v_add3_u32 v5, v145, v124, 0x7fff
	v_and_b32_e32 v124, 1, v129
	.loc	1 307 28                        ; attention_backward.py:307:28
	v_cndmask_b32_e64 v125, v107, v126, s4
	.loc	1 309 31                        ; attention_backward.py:309:31
	v_mov_b16_e64 v107.l, v141.h
	v_cndmask_b32_e64 v6, 0, v6, s2
	v_cmp_o_f32_e64 s5, v123, v123
	v_add3_u32 v123, v123, v124, 0x7fff
	v_cndmask_b16 v135.l, 0x7fff, v5.h, s11
	v_and_b32_e32 v5, 1, v107
	v_mov_b16_e64 v107.l, v146.h
	v_mov_b16_e64 v128.l, v6.h
	v_cndmask_b16 v134.h, 0x7fff, v123.h, s5
	.loc	1 311 21                        ; attention_backward.py:311:21
	v_cvt_f32_i32_e32 v123, v125
	.loc	1 309 31                        ; attention_backward.py:309:31
	v_cmp_o_f32_e64 s4, v6, v6
	v_and_b32_e32 v124, 1, v107
	v_and_b32_e32 v125, 1, v128
	.loc	1 305 30                        ; attention_backward.py:305:30
	v_lshrrev_b16 v107.l, 4, v2.l
	.loc	1 309 31                        ; attention_backward.py:309:31
	v_add3_u32 v5, v141, v5, 0x7fff
	v_cmp_o_f32_e64 s9, v146, v146
	.loc	1 311 21                        ; attention_backward.py:311:21
	v_mul_f32_e32 v123, v123, v154
	.loc	1 309 31                        ; attention_backward.py:309:31
	v_add3_u32 v6, v6, v125, 0x7fff
	.loc	1 307 52                        ; attention_backward.py:307:52
	v_or_b32_e32 v125, -16, v107
	.loc	1 309 31                        ; attention_backward.py:309:31
	v_cndmask_b16 v136.l, 0x7fff, v5.h, s10
	v_add3_u32 v5, v146, v124, 0x7fff
	v_cndmask_b32_e64 v123, 0, v123, s2
	v_cndmask_b16 v135.h, 0x7fff, v6.h, s4
	.loc	1 307 28                        ; attention_backward.py:307:28
	v_cndmask_b32_e64 v6, v107, v125, s3
	.loc	1 309 31                        ; attention_backward.py:309:31
	v_cndmask_b32_e64 v148, 0, v148, s2
	v_cndmask_b16 v137.l, 0x7fff, v5.h, s9
	v_mov_b16_e32 v3.l, v123.h
	v_cmp_o_f32_e64 s3, v123, v123
	.loc	1 311 21                        ; attention_backward.py:311:21
	v_cvt_f32_i32_e32 v5, v6
	.loc	1 309 31                        ; attention_backward.py:309:31
	v_mov_b16_e64 v107.l, v148.h
	v_cmp_o_f32_e64 s8, v148, v148
	v_and_b32_e32 v3, 1, v3
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 311 21                        ; attention_backward.py:311:21
	v_dual_mul_f32 v5, v5, v154 :: v_dual_and_b32 v6, 1, v107
	.loc	1 309 31                        ; attention_backward.py:309:31
	v_add3_u32 v3, v123, v3, 0x7fff
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cndmask_b32_e64 v5, 0, v5, s2
	v_add3_u32 v6, v148, v6, 0x7fff
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cndmask_b16 v136.h, 0x7fff, v3.h, s3
	.loc	1 397 33                        ; attention_backward.py:397:33
	v_permlanex16_b32 v3, v4, s34, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	.loc	1 309 31                        ; attention_backward.py:309:31
	v_mov_b16_e32 v2.l, v5.h
	v_cmp_o_f32_e64 s3, v5, v5
	v_cndmask_b16 v138.l, 0x7fff, v6.h, s8
	.loc	1 397 33                        ; attention_backward.py:397:33
	v_perm_b32 v127, v3, v4, v111
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 309 31                        ; attention_backward.py:309:31
	v_and_b32_e32 v2, 1, v2
	.loc	1 397 33                        ; attention_backward.py:397:33
	v_perm_b32 v128, v3, v4, v112
	.loc	1 309 31                        ; attention_backward.py:309:31
	v_add3_u32 v2, v5, v2, 0x7fff
	s_delay_alu instid0(VALU_DEP_1)
	v_cndmask_b16 v138.h, 0x7fff, v2.h, s3
	ds_store_b128 v120, v[131:134]
	.loc	1 397 33                        ; attention_backward.py:397:33
	v_permlanex16_b32 v2, v7, s34, 0xfedcba98 op_sel:[1,0]
	.loc	1 270 9                         ; attention_backward.py:270:9
	s_add_i32 s3, s33, 16
	s_cmpk_lt_u32 s33, 0x7f0
	.loc	1 309 31                        ; attention_backward.py:309:31
	ds_store_b128 v120, v[135:138] offset:16
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
	v_perm_b32 v123, v2, v7, v111
	v_perm_b32 v124, v2, v7, v112
	v_permlanex16_b32 v2, v8, s34, 0xfedcba98 op_sel:[1,0]
	s_mov_b32 s33, s3
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_perm_b32 v125, v2, v8, v111
	v_perm_b32 v126, v2, v8, v112
	.loc	1 398 31                        ; attention_backward.py:398:31
	s_waitcnt lgkmcnt(18)
	v_wmma_f32_16x16x16_bf16 v[65:72], v[137:144], v[121:128], v[65:72]
	s_waitcnt lgkmcnt(12)
	v_wmma_f32_16x16x16_bf16 v[17:24], v[145:152], v[121:128], v[17:24]
	s_waitcnt lgkmcnt(1)
	v_wmma_f32_16x16x16_bf16 v[57:64], v[153:160], v[121:128], v[57:64]
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[9:16], v[129:136], v[121:128], v[9:16]
	.loc	1 270 9                         ; attention_backward.py:270:9
	s_cbranch_scc1 .LBB0_3
; %bb.4:
	.loc	1 401 13                        ; attention_backward.py:401:13
	v_mul_lo_u32 v0, s28, v85
	s_mul_i32 s4, s28, s26
	.loc	1 408 40                        ; attention_backward.py:408:40
	v_cmp_gt_i32_e64 s0, s28, v86
	.loc	1 405 9                         ; attention_backward.py:405:9
	s_and_b32 s25, s25, 0xffff
	s_mov_b32 s27, 0x31027000
	s_mov_b32 s26, 0x7ffffffe
	.loc	1 168 40                        ; attention_backward.py:168:40
	v_or_b32_e32 v4, 16, v86
	.loc	1 408 18                        ; attention_backward.py:408:18
	s_and_b32 s0, vcc_lo, s0
	.loc	1 401 13                        ; attention_backward.py:401:13
	v_add_nc_u32_e32 v5, s4, v0
	v_add_nc_u32_e32 v0, v0, v86
	.loc	1 168 40                        ; attention_backward.py:168:40
	v_or_b32_e32 v3, 32, v86
	.loc	1 408 40                        ; attention_backward.py:408:40
	v_cmp_gt_i32_e64 s1, s28, v4
	.loc	1 168 40                        ; attention_backward.py:168:40
	v_or_b32_e32 v2, 48, v86
	.loc	1 405 9                         ; attention_backward.py:405:9
	v_add_lshl_u32 v6, v5, v86, 2
	v_add_lshl_u32 v7, v5, v93, 2
	v_add_lshl_u32 v8, v5, v92, 2
	v_add_lshl_u32 v25, v5, v88, 2
	v_add_lshl_u32 v26, v5, v87, 2
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
	v_add_lshl_u32 v6, v5, v91, 2
	v_add_lshl_u32 v7, v5, v90, 2
	v_add_lshl_u32 v8, v5, v89, 2
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
	v_or_b32_e32 v1, 62, v84
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
.Ltmp81:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_attention_bwd_dq_int4xbf16_none_full_outfloat32_doutfloat32_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1
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
	.size	amd_strix_halo_gfx1151_attention_bwd_dq_int4xbf16_none_full_outfloat32_doutfloat32_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1, .Lfunc_end0-amd_strix_halo_gfx1151_attention_bwd_dq_int4xbf16_none_full_outfloat32_doutfloat32_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_attention_bwd_dq_int4xbf16_none_full_outfloat32_doutfloat32_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.num_vgpr, 163
	.set amd_strix_halo_gfx1151_attention_bwd_dq_int4xbf16_none_full_outfloat32_doutfloat32_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.num_agpr, 0
	.set amd_strix_halo_gfx1151_attention_bwd_dq_int4xbf16_none_full_outfloat32_doutfloat32_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.numbered_sgpr, 44
	.set amd_strix_halo_gfx1151_attention_bwd_dq_int4xbf16_none_full_outfloat32_doutfloat32_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_attention_bwd_dq_int4xbf16_none_full_outfloat32_doutfloat32_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.private_seg_size, 0
	.set amd_strix_halo_gfx1151_attention_bwd_dq_int4xbf16_none_full_outfloat32_doutfloat32_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.uses_vcc, 1
	.set amd_strix_halo_gfx1151_attention_bwd_dq_int4xbf16_none_full_outfloat32_doutfloat32_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.uses_flat_scratch, 0
	.set amd_strix_halo_gfx1151_attention_bwd_dq_int4xbf16_none_full_outfloat32_doutfloat32_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_attention_bwd_dq_int4xbf16_none_full_outfloat32_doutfloat32_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.has_recursion, 0
	.set amd_strix_halo_gfx1151_attention_bwd_dq_int4xbf16_none_full_outfloat32_doutfloat32_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 9924
; TotalNumSgprs: 46
; NumVgprs: 163
; ScratchSize: 0
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 20
; NumSGPRsForWavesPerEU: 46
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
	.quad	.Ltmp9-.Lfunc_begin0
	.quad	.Ltmp10-.Lfunc_begin0
	.quad	.Ltmp12-.Lfunc_begin0
	.quad	.Ltmp13-.Lfunc_begin0
	.quad	.Ltmp14-.Lfunc_begin0
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
	.quad	.Ltmp13-.Lfunc_begin0
	.quad	.Ltmp14-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges2:
	.quad	.Ltmp15-.Lfunc_begin0
	.quad	.Ltmp16-.Lfunc_begin0
	.quad	.Ltmp17-.Lfunc_begin0
	.quad	.Ltmp18-.Lfunc_begin0
	.quad	.Ltmp19-.Lfunc_begin0
	.quad	.Ltmp20-.Lfunc_begin0
	.quad	.Ltmp21-.Lfunc_begin0
	.quad	.Ltmp22-.Lfunc_begin0
	.quad	.Ltmp23-.Lfunc_begin0
	.quad	.Ltmp25-.Lfunc_begin0
	.quad	.Ltmp26-.Lfunc_begin0
	.quad	.Ltmp27-.Lfunc_begin0
	.quad	.Ltmp28-.Lfunc_begin0
	.quad	.Ltmp29-.Lfunc_begin0
	.quad	.Ltmp30-.Lfunc_begin0
	.quad	.Ltmp31-.Lfunc_begin0
	.quad	.Ltmp32-.Lfunc_begin0
	.quad	.Ltmp50-.Lfunc_begin0
	.quad	.Ltmp51-.Lfunc_begin0
	.quad	.Ltmp53-.Lfunc_begin0
	.quad	.Ltmp54-.Lfunc_begin0
	.quad	.Ltmp55-.Lfunc_begin0
	.quad	.Ltmp56-.Lfunc_begin0
	.quad	.Ltmp57-.Lfunc_begin0
	.quad	.Ltmp58-.Lfunc_begin0
	.quad	.Ltmp60-.Lfunc_begin0
	.quad	.Ltmp61-.Lfunc_begin0
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
	.quad	0
	.quad	0
.Ldebug_ranges3:
	.quad	.Ltmp15-.Lfunc_begin0
	.quad	.Ltmp16-.Lfunc_begin0
	.quad	.Ltmp17-.Lfunc_begin0
	.quad	.Ltmp18-.Lfunc_begin0
	.quad	.Ltmp19-.Lfunc_begin0
	.quad	.Ltmp20-.Lfunc_begin0
	.quad	.Ltmp24-.Lfunc_begin0
	.quad	.Ltmp25-.Lfunc_begin0
	.quad	.Ltmp26-.Lfunc_begin0
	.quad	.Ltmp27-.Lfunc_begin0
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
	.quad	.Ltmp52-.Lfunc_begin0
	.quad	.Ltmp53-.Lfunc_begin0
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
	.quad	.Ltmp73-.Lfunc_begin0
	.quad	.Ltmp74-.Lfunc_begin0
	.quad	.Ltmp79-.Lfunc_begin0
	.quad	.Ltmp80-.Lfunc_begin0
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
	.asciz	"amd_strix_halo_gfx1151_attention_bwd_dq_int4xbf16_none_full_outfloat32_doutfloat32_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1"                        ; string offset=97 ; amd_strix_halo_gfx1151_attention_bwd_dq_int4xbf16_none_full_outfloat32_doutfloat32_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1
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
    .name:           amd_strix_halo_gfx1151_attention_bwd_dq_int4xbf16_none_full_outfloat32_doutfloat32_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1
    .private_segment_fixed_size: 0
    .sgpr_count:     46
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_attention_bwd_dq_int4xbf16_none_full_outfloat32_doutfloat32_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.kd
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
