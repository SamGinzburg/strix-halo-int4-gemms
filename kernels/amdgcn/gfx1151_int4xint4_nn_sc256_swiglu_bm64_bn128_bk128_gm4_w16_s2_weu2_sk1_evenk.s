	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_int4xint4_nn_sc256_swiglu_bm64_bn128_bk128_gm4_w16_s2_weu2_sk1_evenk               ; -- Begin function amd_strix_halo_gfx1151_int4xint4_nn_sc256_swiglu_bm64_bn128_bk128_gm4_w16_s2_weu2_sk1_evenk
	.p2align	8
	.type	amd_strix_halo_gfx1151_int4xint4_nn_sc256_swiglu_bm64_bn128_bk128_gm4_w16_s2_weu2_sk1_evenk,@function
amd_strix_halo_gfx1151_int4xint4_nn_sc256_swiglu_bm64_bn128_bk128_gm4_w16_s2_weu2_sk1_evenk:                      ; @amd_strix_halo_gfx1151_int4xint4_nn_sc256_swiglu_bm64_bn128_bk128_gm4_w16_s2_weu2_sk1_evenk
.Lfunc_begin0:
	.file	1 "<repo>/scripts" "generate_amdgcn.py"
	.loc	1 79 0                          ; generate_amdgcn.py:79:0
	.cfi_sections .debug_frame
	.cfi_startproc
; %bb.0:
	s_clause 0x1
	s_load_b64 s[22:23], s[0:1], 0x30
	s_load_b32 s13, s[0:1], 0x38
.Ltmp0:
	.loc	1 89 16 prologue_end            ; generate_amdgcn.py:89:16
	s_abs_i32 s7, s2
	s_load_b64 s[20:21], s[0:1], 0x20
	v_dual_mov_b32 v84, 0 :: v_dual_mov_b32 v85, 0
	v_dual_mov_b32 v86, 0 :: v_dual_mov_b32 v87, 0
	v_dual_mov_b32 v92, 0 :: v_dual_mov_b32 v93, 0
	v_dual_mov_b32 v94, 0 :: v_dual_mov_b32 v95, 0
	v_dual_mov_b32 v89, 0 :: v_dual_mov_b32 v88, 0
	v_dual_mov_b32 v91, 0 :: v_dual_mov_b32 v90, 0
	v_dual_mov_b32 v96, 0 :: v_dual_mov_b32 v97, 0
	v_dual_mov_b32 v98, 0 :: v_dual_mov_b32 v99, 0
.Ltmp1:
	.file	2 "<triton>/python/triton/language" "standard.py"
	.loc	2 43 13                         ; standard.py:43:13 @[ generate_amdgcn.py:87:17 ]
	s_waitcnt lgkmcnt(0)
	s_add_i32 s4, s23, 0x7f
.Ltmp2:
	.loc	2 43 13 is_stmt 0               ; standard.py:43:13 @[ generate_amdgcn.py:86:17 ]
	s_add_i32 s8, s22, 63
.Ltmp3:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:87:17 ]
	s_ashr_i32 s5, s4, 31
.Ltmp4:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:86:17 ]
	s_ashr_i32 s10, s8, 31
.Ltmp5:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:87:17 ]
	s_lshr_b32 s5, s5, 25
.Ltmp6:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:86:17 ]
	s_lshr_b32 s10, s10, 26
.Ltmp7:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:87:17 ]
	s_add_i32 s4, s4, s5
.Ltmp8:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:86:17 ]
	s_add_i32 s8, s8, s10
.Ltmp9:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:87:17 ]
	s_ashr_i32 s4, s4, 7
.Ltmp10:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:86:17 ]
	s_ashr_i32 s8, s8, 6
.Ltmp11:
	.loc	1 88 24 is_stmt 1               ; generate_amdgcn.py:88:24
	s_lshl_b32 s4, s4, 2
	v_dual_mov_b32 v100, 0 :: v_dual_mov_b32 v101, 0
	.loc	1 89 16                         ; generate_amdgcn.py:89:16
	s_abs_i32 s5, s4
	v_dual_mov_b32 v102, 0 :: v_dual_mov_b32 v103, 0
	s_cvt_f32_u32 s6, s5
	s_sub_i32 s9, 0, s5
	v_dual_mov_b32 v109, 0 :: v_dual_mov_b32 v108, 0
	s_delay_alu instid0(SALU_CYCLE_1)
	v_rcp_iflag_f32_e32 v1, s6
	v_dual_mov_b32 v110, 0 :: v_dual_mov_b32 v111, 0
	v_dual_mov_b32 v105, 0 :: v_dual_mov_b32 v104, 0
	v_dual_mov_b32 v107, 0 :: v_dual_mov_b32 v106, 0
	v_dual_mov_b32 v113, 0 :: v_dual_and_b32 v116, 15, v0
	v_dual_mov_b32 v115, 0 :: v_dual_mov_b32 v118, 0
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_4) | instid1(SALU_CYCLE_3)
	v_readfirstlane_b32 s6, v1
	.loc	1 99 32                         ; generate_amdgcn.py:99:32
	v_lshrrev_b32_e32 v114, 1, v0
	s_mov_b32 s12, 0
	v_mov_b32_e32 v112, 0
	.loc	1 89 16                         ; generate_amdgcn.py:89:16
	s_mul_f32 s6, s6, 0x4f7ffffe
	s_cvt_u32_f32 s6, s6
	s_delay_alu instid0(SALU_CYCLE_3) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_mul_i32 s9, s9, s6
	s_mul_hi_u32 s9, s6, s9
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_4) | instid1(SALU_CYCLE_1)
	s_add_i32 s6, s6, s9
	s_xor_b32 s9, s2, s4
	s_mul_hi_u32 s6, s7, s6
	s_ashr_i32 s9, s9, 31
	s_mul_i32 s10, s6, s5
	s_sub_i32 s7, s7, s10
	s_add_i32 s10, s6, 1
	s_sub_i32 s11, s7, s5
	s_cmp_ge_u32 s7, s5
	s_cselect_b32 s6, s10, s6
	s_cselect_b32 s7, s11, s7
	s_add_i32 s10, s6, 1
	s_cmp_ge_u32 s7, s5
	s_cselect_b32 s5, s10, s6
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_xor_b32 s5, s5, s9
	s_sub_i32 s5, s5, s9
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 90 19                         ; generate_amdgcn.py:90:19
	s_lshl_b32 s6, s5, 2
	.loc	1 92 29                         ; generate_amdgcn.py:92:29
	s_mul_i32 s5, s5, s4
	.loc	1 91 31                         ; generate_amdgcn.py:91:31
	s_sub_i32 s7, s8, s6
	.loc	1 92 29                         ; generate_amdgcn.py:92:29
	s_sub_i32 s2, s2, s5
	.loc	1 91 20                         ; generate_amdgcn.py:91:20
	s_min_i32 s7, s7, 4
	.loc	1 93 13                         ; generate_amdgcn.py:93:13
	s_abs_i32 s5, s2
	s_abs_i32 s8, s7
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_2)
	s_cvt_f32_u32 s9, s8
	s_sub_i32 s10, 0, s8
	v_rcp_iflag_f32_e32 v1, s9
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_readfirstlane_b32 s9, v1
	.loc	1 98 32                         ; generate_amdgcn.py:98:32
	v_lshrrev_b32_e32 v1, 4, v0
	.loc	1 93 13                         ; generate_amdgcn.py:93:13
	s_mul_f32 s9, s9, 0x4f7ffffe
	.loc	1 98 32                         ; generate_amdgcn.py:98:32
	v_and_b32_e32 v117, 16, v1
	s_delay_alu instid0(SALU_CYCLE_2) | instskip(NEXT) | instid1(SALU_CYCLE_3)
	.loc	1 93 13                         ; generate_amdgcn.py:93:13
	s_cvt_u32_f32 s9, s9
	s_mul_i32 s10, s10, s9
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_mul_hi_u32 s4, s9, s10
	s_add_i32 s9, s9, s4
	s_delay_alu instid0(SALU_CYCLE_1)
	s_mul_hi_u32 s4, s5, s9
	s_xor_b32 s9, s2, s7
	s_mul_i32 s10, s4, s8
	s_ashr_i32 s14, s9, 31
	s_sub_i32 s5, s5, s10
	s_add_i32 s9, s4, 1
	s_sub_i32 s10, s5, s8
	s_cmp_ge_u32 s5, s8
	s_cselect_b32 s4, s9, s4
	s_cselect_b32 s5, s10, s5
	s_add_i32 s9, s4, 1
	s_cmp_ge_u32 s5, s8
	s_cselect_b32 s4, s9, s4
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_xor_b32 s15, s4, s14
	s_sub_i32 s28, s15, s14
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	.loc	1 92 28                         ; generate_amdgcn.py:92:28
	s_mul_i32 s4, s28, s7
	s_sub_i32 s4, s2, s4
.Ltmp12:
	.loc	2 43 13                         ; standard.py:43:13 @[ generate_amdgcn.py:140:22 ]
	s_add_i32 s2, s13, 0xff
.Ltmp13:
	.loc	1 92 13                         ; generate_amdgcn.py:92:13
	s_add_i32 s4, s4, s6
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 98 14                         ; generate_amdgcn.py:98:14
	s_lshl_b32 s22, s4, 6
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	s_cmpk_lt_i32 s2, 0x100
	s_cbranch_scc1 .LBB0_3
; %bb.1:                                ; %.lr.ph
	.loc	1 0 9 is_stmt 0                 ; generate_amdgcn.py:0:9
	v_dual_mov_b32 v112, 0 :: v_dual_lshlrev_b32 v1, 2, v0
	s_mov_b32 s18, s12
	s_mov_b32 s19, s12
	.loc	1 98 32 is_stmt 1               ; generate_amdgcn.py:98:32
	v_and_b32_e32 v2, 7, v0
	v_lshrrev_b32_e32 v4, 3, v0
	v_lshlrev_b32_e32 v3, 3, v0
	v_and_b32_e32 v5, 56, v114
	v_and_b32_e32 v6, 0x438, v1
	v_lshlrev_b32_e32 v1, 3, v2
	.loc	1 155 39                        ; generate_amdgcn.py:155:39
	s_lshl_b32 s17, s3, 6
	.loc	1 99 32                         ; generate_amdgcn.py:99:32
	v_lshlrev_b32_e32 v119, 4, v2
	v_xor_b32_e32 v7, v3, v5
	v_and_or_b32 v2, 0x70, v114, v116
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_or_b32_e32 v3, s17, v4
	v_or_b32_e32 v5, s17, v1
	v_dual_mov_b32 v118, 0 :: v_dual_and_b32 v17, 0xe0, v0
	v_add3_u32 v18, s22, v117, v116
	s_load_b256 s[4:11], s[0:1], 0x0
.Ltmp14:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:140:22 ]
	s_ashr_i32 s0, s2, 31
	v_add_nc_u32_e32 v120, 0, v2
	v_dual_mov_b32 v115, 0 :: v_dual_add_nc_u32 v2, 64, v3
	v_dual_mov_b32 v113, 0 :: v_dual_add_nc_u32 v16, 64, v5
	v_cmp_gt_i32_e32 vcc_lo, 0x80, v5
.Ltmp15:
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_lshl_or_b32 v5, s15, 8, v17
.Ltmp16:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:140:22 ]
	s_lshr_b32 s0, s0, 24
	v_dual_mov_b32 v106, 0 :: v_dual_add_nc_u32 v17, 32, v18
	s_add_i32 s2, s2, s0
	v_cmp_gt_i32_e64 s1, 0x80, v16
	s_ashr_i32 s29, s2, 8
	v_cmp_gt_i32_e64 s2, 0x80, v2
.Ltmp17:
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_lshl_add_u32 v2, s23, 1, v5
	v_dual_mov_b32 v107, 0 :: v_dual_lshlrev_b32 v16, 1, v4
	v_cmp_gt_i32_e64 s0, 0x80, v3
	v_mul_lo_u32 v3, s29, v17
	s_lshl_b32 s16, s14, 8
	v_mul_lo_u32 v17, s29, v18
	v_subrev_nc_u32_e32 v124, s16, v2
	v_lshl_or_b32 v2, s3, 7, v16
	v_subrev_nc_u32_e32 v125, s16, v5
	s_lshl_b32 s16, s15, 7
	.loc	1 95 22                         ; generate_amdgcn.py:95:22
	s_lshr_b32 s13, s13, 1
	v_dual_mov_b32 v105, 0 :: v_dual_lshlrev_b32 v126, 1, v3
	v_dual_mov_b32 v108, 0 :: v_dual_add_nc_u32 v5, 0x81, v2
	v_dual_mov_b32 v111, 0 :: v_dual_add_nc_u32 v16, 0x80, v2
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_mad_u64_u32 v[2:3], null, s23, v2, s[16:17]
	v_dual_mov_b32 v110, 0 :: v_dual_lshlrev_b32 v127, 1, v17
	v_dual_mov_b32 v102, 0 :: v_dual_add_nc_u32 v17, s22, v4
	v_lshl_or_b32 v6, v116, 6, v6
	v_sub_nc_u32_e32 v122, s13, v4
	v_dual_mov_b32 v104, 0 :: v_dual_and_b32 v123, 2, v4
	v_mad_u64_u32 v[3:4], null, s23, v5, s[16:17]
	v_mad_u64_u32 v[4:5], null, s23, v16, s[16:17]
	v_sub_nc_u32_e32 v121, s13, v1
	s_add_i32 s31, s17, 64
	s_lshl_b32 s3, s14, 7
	v_dual_mov_b32 v100, 0 :: v_dual_add_nc_u32 v5, s23, v2
	v_mad_u64_u32 v[81:82], null, s13, v17, v[1:2]
	s_mov_b32 s13, s12
	s_mov_b32 s14, s12
	s_mov_b32 s15, s12
	s_mov_b32 s16, s12
	s_mov_b32 s17, s12
	v_lshlrev_b32_e32 v8, 4, v0
	v_xor_b32_e32 v9, 8, v6
	v_xor_b32_e32 v10, 16, v6
	v_xor_b32_e32 v11, 24, v6
	v_xor_b32_e32 v12, 32, v6
	v_xor_b32_e32 v13, 40, v6
	v_xor_b32_e32 v14, 48, v6
	v_xor_b32_e32 v15, 56, v6
	v_subrev_nc_u32_e32 v128, s3, v3
	v_subrev_nc_u32_e32 v129, s3, v4
	v_subrev_nc_u32_e32 v130, s3, v5
	v_subrev_nc_u32_e32 v131, s3, v2
	v_dual_mov_b32 v109, 0 :: v_dual_add_nc_u32 v132, 0, v7
	v_dual_mov_b32 v98, 0 :: v_dual_add_nc_u32 v133, 0, v8
	v_dual_mov_b32 v103, 0 :: v_dual_add_nc_u32 v134, 0, v6
	v_mov_b32_e32 v1, s12
	v_dual_mov_b32 v96, 0 :: v_dual_add_nc_u32 v135, 0, v9
	v_dual_mov_b32 v101, 0 :: v_dual_add_nc_u32 v136, 0, v10
	v_dual_mov_b32 v90, 0 :: v_dual_add_nc_u32 v137, 0, v11
	v_dual_mov_b32 v99, 0 :: v_dual_add_nc_u32 v138, 0, v12
	v_dual_mov_b32 v88, 0 :: v_dual_add_nc_u32 v139, 0, v13
	v_dual_mov_b32 v97, 0 :: v_dual_add_nc_u32 v140, 0, v14
	v_dual_mov_b32 v94, 0 :: v_dual_add_nc_u32 v141, 0, v15
	v_dual_mov_b32 v2, s13 :: v_dual_mov_b32 v3, s14
	v_dual_mov_b32 v4, s15 :: v_dual_mov_b32 v5, s16
	v_dual_mov_b32 v6, s17 :: v_dual_mov_b32 v7, s18
	v_dual_mov_b32 v8, s19 :: v_dual_mov_b32 v91, 0
	v_dual_mov_b32 v92, 0 :: v_dual_mov_b32 v89, 0
	v_dual_mov_b32 v86, 0 :: v_dual_mov_b32 v95, 0
	v_dual_mov_b32 v84, 0 :: v_dual_mov_b32 v93, 0
	v_mov_b32_e32 v87, 0
	v_mov_b32_e32 v85, 0
	s_mov_b32 s27, 0x31027000
	s_mov_b32 s26, 0x7ffffffe
	s_waitcnt lgkmcnt(0)
	s_and_b32 s5, s5, 0xffff
	s_and_b32 s7, s7, 0xffff
	s_and_b32 s9, s9, 0xffff
	s_and_b32 s11, s11, 0xffff
	s_lshl_b32 s30, s23, 2
	s_lshl_b32 s33, s23, 8
	s_mov_b32 s24, s4
	s_mov_b32 s25, s5
	s_mov_b32 s12, s6
	s_mov_b32 s13, s7
	s_mov_b32 s14, s26
	s_mov_b32 s15, s27
	s_mov_b32 s16, s8
	s_mov_b32 s17, s9
	s_mov_b32 s18, s26
	s_mov_b32 s19, s27
	s_mov_b32 s8, s10
	s_mov_b32 s9, s11
	s_mov_b32 s10, s26
	s_mov_b32 s11, s27
.LBB0_2:                                ; =>This Inner Loop Header: Depth=1
	.loc	1 162 26                        ; generate_amdgcn.py:162:26
	v_add_nc_u32_e32 v19, s31, v81
	.loc	1 156 27                        ; generate_amdgcn.py:156:27
	s_sub_i32 s4, s31, 64
	.loc	1 174 35                        ; generate_amdgcn.py:174:35
	v_add_nc_u32_e32 v13, v119, v130
	.loc	1 156 27                        ; generate_amdgcn.py:156:27
	v_cmp_lt_i32_e64 s3, s4, v121
	v_cmp_lt_i32_e64 s4, s4, v122
	.loc	1 162 26                        ; generate_amdgcn.py:162:26
	v_subrev_nc_u32_e32 v9, 64, v19
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	s_add_i32 s29, s29, -1
	v_add_nc_u32_e32 v130, s33, v130
	.loc	1 156 26                        ; generate_amdgcn.py:156:26
	s_and_b32 s3, s3, vcc_lo
	s_and_b32 s4, s4, s0
	.loc	1 162 26                        ; generate_amdgcn.py:162:26
	v_cndmask_b32_e64 v9, 0x80000000, v9, s3
	.loc	1 174 35                        ; generate_amdgcn.py:174:35
	v_cndmask_b32_e64 v13, 0x80000000, v13, s4
	.loc	1 156 27                        ; generate_amdgcn.py:156:27
	v_cmp_lt_i32_e64 s3, s31, v121
	.loc	1 162 26                        ; generate_amdgcn.py:162:26
	buffer_load_b64 v[17:18], v9, s[24:27], 0 offen
	.loc	1 166 26                        ; generate_amdgcn.py:166:26
	v_add_nc_u32_e32 v9, v119, v131
	.loc	1 174 35                        ; generate_amdgcn.py:174:35
	buffer_load_b128 v[13:16], v13, s[12:15], 0 offen
	.loc	1 156 26                        ; generate_amdgcn.py:156:26
	s_and_b32 s5, s3, s1
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_add_nc_u32_e32 v131, s33, v131
	.loc	1 166 26                        ; generate_amdgcn.py:166:26
	v_cndmask_b32_e64 v9, 0x80000000, v9, s4
	.loc	1 156 27                        ; generate_amdgcn.py:156:27
	v_cmp_lt_i32_e64 s4, s31, v122
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	s_addk_i32 s31, 0x80
	.loc	1 166 26                        ; generate_amdgcn.py:166:26
	buffer_load_b128 v[9:12], v9, s[12:15], 0 offen
	.loc	1 162 26                        ; generate_amdgcn.py:162:26
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_waitcnt vmcnt(2)
	ds_store_b64 v132, v[17:18] offset:16384
	.loc	1 166 26                        ; generate_amdgcn.py:166:26
	s_waitcnt vmcnt(0)
	ds_store_b128 v133, v[9:12]
	.loc	1 174 35                        ; generate_amdgcn.py:174:35
	ds_store_b128 v133, v[13:16] offset:8192
	.loc	1 162 26                        ; generate_amdgcn.py:162:26
	v_cndmask_b32_e64 v9, 0x80000000, v19, s5
	.loc	1 156 26                        ; generate_amdgcn.py:156:26
	s_and_b32 s3, s4, s2
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	s_cmp_lg_u32 s29, 0
	.loc	1 162 26                        ; generate_amdgcn.py:162:26
	buffer_load_b64 v[82:83], v9, s[24:27], 0 offen
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	ds_load_u8 v17, v120 offset:1664
	ds_load_u8 v18, v120 offset:1536
	.loc	1 166 26                        ; generate_amdgcn.py:166:26
	v_add_nc_u32_e32 v9, v119, v129
	.loc	1 162 26                        ; generate_amdgcn.py:162:26
	ds_load_2addr_stride64_b64 v[45:48], v134 offset0:32 offset1:36
	ds_load_2addr_stride64_b64 v[49:52], v135 offset0:32 offset1:36
	ds_load_2addr_stride64_b64 v[53:56], v136 offset0:32 offset1:36
	ds_load_2addr_stride64_b64 v[57:60], v137 offset0:32 offset1:36
	ds_load_2addr_stride64_b64 v[61:64], v138 offset0:32 offset1:36
	ds_load_2addr_stride64_b64 v[65:68], v139 offset0:32 offset1:36
	ds_load_2addr_stride64_b64 v[69:72], v140 offset0:32 offset1:36
	ds_load_2addr_stride64_b64 v[73:76], v141 offset0:32 offset1:36
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_add_nc_u32_e32 v129, s33, v129
	.loc	1 166 26                        ; generate_amdgcn.py:166:26
	v_cndmask_b32_e64 v9, 0x80000000, v9, s3
	buffer_load_b128 v[41:44], v9, s[12:15], 0 offen
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	ds_load_u8 v9, v120 offset:640
	ds_load_u8 v10, v120 offset:512
	s_waitcnt lgkmcnt(10)
	v_perm_b32 v17, v18, v17, 0xc0c0004
	ds_load_u8 v18, v120 offset:1920
	ds_load_u8 v19, v120 offset:1792
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	ds_load_u8 v10, v120 offset:896
	ds_load_u8 v11, v120 offset:768
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v18, v19, v18, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v28, v18, 16, v17
	ds_load_u8 v17, v120 offset:1152
	ds_load_u8 v18, v120 offset:1024
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	v_lshl_or_b32 v26, v10, 16, v9
	ds_load_u8 v9, v120 offset:128
	ds_load_u8 v10, v120
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v17, v18, v17, 0xc0c0004
	ds_load_u8 v18, v120 offset:1408
	ds_load_u8 v19, v120 offset:1280
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	ds_load_u8 v10, v120 offset:384
	ds_load_u8 v11, v120 offset:256
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v18, v19, v18, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v27, v18, 16, v17
	ds_load_u8 v17, v120 offset:2688
	ds_load_u8 v18, v120 offset:2560
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	v_lshl_or_b32 v25, v10, 16, v9
	s_delay_alu instid0(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[9:16], v[25:26], v[45:46], v[1:8] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v17, v18, v17, 0xc0c0004
	ds_load_u8 v18, v120 offset:2944
	ds_load_u8 v19, v120 offset:2816
	v_wmma_i32_16x16x16_iu4 v[9:16], v[27:28], v[49:50], v[9:16] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v18, v19, v18, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v30, v18, 16, v17
	ds_load_u8 v17, v120 offset:2176
	ds_load_u8 v18, v120 offset:2048
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v17, v18, v17, 0xc0c0004
	ds_load_u8 v18, v120 offset:2432
	ds_load_u8 v19, v120 offset:2304
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v18, v19, v18, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v29, v18, 16, v17
	ds_load_u8 v17, v120 offset:3712
	ds_load_u8 v18, v120 offset:3584
	v_wmma_i32_16x16x16_iu4 v[9:16], v[29:30], v[53:54], v[9:16] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v17, v18, v17, 0xc0c0004
	ds_load_u8 v18, v120 offset:3968
	ds_load_u8 v19, v120 offset:3840
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v18, v19, v18, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v32, v18, 16, v17
	ds_load_u8 v17, v120 offset:3200
	ds_load_u8 v18, v120 offset:3072
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v17, v18, v17, 0xc0c0004
	ds_load_u8 v18, v120 offset:3456
	ds_load_u8 v19, v120 offset:3328
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v18, v19, v18, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v31, v18, 16, v17
	ds_load_u8 v17, v120 offset:4736
	ds_load_u8 v18, v120 offset:4608
	v_wmma_i32_16x16x16_iu4 v[9:16], v[31:32], v[57:58], v[9:16] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v17, v18, v17, 0xc0c0004
	ds_load_u8 v18, v120 offset:4992
	ds_load_u8 v19, v120 offset:4864
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v18, v19, v18, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v34, v18, 16, v17
	ds_load_u8 v17, v120 offset:4224
	ds_load_u8 v18, v120 offset:4096
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v17, v18, v17, 0xc0c0004
	ds_load_u8 v18, v120 offset:4480
	ds_load_u8 v19, v120 offset:4352
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v18, v19, v18, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v33, v18, 16, v17
	ds_load_u8 v17, v120 offset:5760
	ds_load_u8 v18, v120 offset:5632
	v_wmma_i32_16x16x16_iu4 v[9:16], v[33:34], v[61:62], v[9:16] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v17, v18, v17, 0xc0c0004
	ds_load_u8 v18, v120 offset:6016
	ds_load_u8 v19, v120 offset:5888
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v18, v19, v18, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v36, v18, 16, v17
	ds_load_u8 v17, v120 offset:5248
	ds_load_u8 v18, v120 offset:5120
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v17, v18, v17, 0xc0c0004
	ds_load_u8 v18, v120 offset:5504
	ds_load_u8 v19, v120 offset:5376
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v18, v19, v18, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v35, v18, 16, v17
	ds_load_u8 v17, v120 offset:6784
	ds_load_u8 v18, v120 offset:6656
	v_wmma_i32_16x16x16_iu4 v[9:16], v[35:36], v[65:66], v[9:16] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v17, v18, v17, 0xc0c0004
	ds_load_u8 v18, v120 offset:7040
	ds_load_u8 v19, v120 offset:6912
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v18, v19, v18, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v38, v18, 16, v17
	ds_load_u8 v17, v120 offset:6272
	ds_load_u8 v18, v120 offset:6144
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v17, v18, v17, 0xc0c0004
	ds_load_u8 v18, v120 offset:6528
	ds_load_u8 v19, v120 offset:6400
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v18, v19, v18, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v37, v18, 16, v17
	ds_load_u8 v17, v120 offset:7808
	ds_load_u8 v18, v120 offset:7680
	v_wmma_i32_16x16x16_iu4 v[9:16], v[37:38], v[69:70], v[9:16] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v17, v18, v17, 0xc0c0004
	ds_load_u8 v18, v120 offset:8064
	ds_load_u8 v19, v120 offset:7936
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v18, v19, v18, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v40, v18, 16, v17
	ds_load_u8 v17, v120 offset:7296
	ds_load_u8 v18, v120 offset:7168
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v17, v18, v17, 0xc0c0004
	ds_load_u8 v18, v120 offset:7552
	ds_load_u8 v19, v120 offset:7424
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v18, v19, v18, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_lshl_or_b32 v39, v18, 16, v17
	v_wmma_i32_16x16x16_iu4 v[17:24], v[25:26], v[47:48], v[1:8] neg_lo:[1,1,0]
	.loc	1 174 35                        ; generate_amdgcn.py:174:35
	v_add_nc_u32_e32 v25, v119, v128
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_add_nc_u32_e32 v128, s33, v128
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	v_wmma_i32_16x16x16_iu4 v[9:16], v[39:40], v[73:74], v[9:16] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_wmma_i32_16x16x16_iu4 v[17:24], v[27:28], v[51:52], v[17:24] neg_lo:[1,1,0]
	.loc	1 174 35                        ; generate_amdgcn.py:174:35
	v_cndmask_b32_e64 v25, 0x80000000, v25, s3
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	v_wmma_i32_16x16x16_iu4 v[17:24], v[29:30], v[55:56], v[17:24] neg_lo:[1,1,0]
	.loc	1 174 35                        ; generate_amdgcn.py:174:35
	buffer_load_b128 v[77:80], v25, s[12:15], 0 offen
	.loc	1 175 36                        ; generate_amdgcn.py:175:36
	ds_load_u8 v25, v120 offset:8832
	ds_load_u8 v26, v120 offset:8704
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	v_wmma_i32_16x16x16_iu4 v[17:24], v[31:32], v[59:60], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[17:24], v[33:34], v[63:64], v[17:24] neg_lo:[1,1,0]
	.loc	1 175 36                        ; generate_amdgcn.py:175:36
	ds_load_u8 v33, v120 offset:9856
	ds_load_u8 v34, v120 offset:9728
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	v_wmma_i32_16x16x16_iu4 v[17:24], v[35:36], v[67:68], v[17:24] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[17:24], v[37:38], v[71:72], v[17:24] neg_lo:[1,1,0]
	.loc	1 175 36                        ; generate_amdgcn.py:175:36
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v25, v26, v25, 0xc0c0004
	ds_load_u8 v26, v120 offset:9088
	ds_load_u8 v27, v120 offset:8960
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	v_wmma_i32_16x16x16_iu4 v[17:24], v[39:40], v[75:76], v[17:24] neg_lo:[1,1,0]
	.loc	1 175 36                        ; generate_amdgcn.py:175:36
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v33, v34, v33, 0xc0c0004
	ds_load_u8 v34, v120 offset:10112
	ds_load_u8 v35, v120 offset:9984
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v26, v27, v26, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v143, v26, 16, v25
	ds_load_u8 v25, v120 offset:8320
	ds_load_u8 v26, v120 offset:8192
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v34, v35, v34, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v25, v26, v25, 0xc0c0004
	ds_load_u8 v26, v120 offset:8576
	ds_load_u8 v27, v120 offset:8448
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v26, v27, v26, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v142, v26, 16, v25
	v_wmma_i32_16x16x16_iu4 v[25:32], v[142:143], v[45:46], v[1:8] neg_lo:[1,1,0]
	v_lshl_or_b32 v46, v34, 16, v33
	ds_load_u8 v33, v120 offset:9344
	ds_load_u8 v34, v120 offset:9216
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v33, v34, v33, 0xc0c0004
	ds_load_u8 v34, v120 offset:9600
	ds_load_u8 v35, v120 offset:9472
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v34, v35, v34, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v45, v34, 16, v33
	ds_load_u8 v33, v120 offset:10880
	ds_load_u8 v34, v120 offset:10752
	v_wmma_i32_16x16x16_iu4 v[25:32], v[45:46], v[49:50], v[25:32] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v33, v34, v33, 0xc0c0004
	ds_load_u8 v34, v120 offset:11136
	ds_load_u8 v35, v120 offset:11008
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v34, v35, v34, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v50, v34, 16, v33
	ds_load_u8 v33, v120 offset:10368
	ds_load_u8 v34, v120 offset:10240
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v33, v34, v33, 0xc0c0004
	ds_load_u8 v34, v120 offset:10624
	ds_load_u8 v35, v120 offset:10496
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v34, v35, v34, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v49, v34, 16, v33
	ds_load_u8 v33, v120 offset:11904
	ds_load_u8 v34, v120 offset:11776
	v_wmma_i32_16x16x16_iu4 v[25:32], v[49:50], v[53:54], v[25:32] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v33, v34, v33, 0xc0c0004
	ds_load_u8 v34, v120 offset:12160
	ds_load_u8 v35, v120 offset:12032
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v34, v35, v34, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v54, v34, 16, v33
	ds_load_u8 v33, v120 offset:11392
	ds_load_u8 v34, v120 offset:11264
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v33, v34, v33, 0xc0c0004
	ds_load_u8 v34, v120 offset:11648
	ds_load_u8 v35, v120 offset:11520
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v34, v35, v34, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v53, v34, 16, v33
	ds_load_u8 v33, v120 offset:12928
	ds_load_u8 v34, v120 offset:12800
	v_wmma_i32_16x16x16_iu4 v[25:32], v[53:54], v[57:58], v[25:32] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v33, v34, v33, 0xc0c0004
	ds_load_u8 v34, v120 offset:13184
	ds_load_u8 v35, v120 offset:13056
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v34, v35, v34, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v58, v34, 16, v33
	ds_load_u8 v33, v120 offset:12416
	ds_load_u8 v34, v120 offset:12288
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v33, v34, v33, 0xc0c0004
	ds_load_u8 v34, v120 offset:12672
	ds_load_u8 v35, v120 offset:12544
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v34, v35, v34, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v57, v34, 16, v33
	ds_load_u8 v33, v120 offset:13952
	ds_load_u8 v34, v120 offset:13824
	v_wmma_i32_16x16x16_iu4 v[25:32], v[57:58], v[61:62], v[25:32] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v33, v34, v33, 0xc0c0004
	ds_load_u8 v34, v120 offset:14208
	ds_load_u8 v35, v120 offset:14080
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v34, v35, v34, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v62, v34, 16, v33
	ds_load_u8 v33, v120 offset:13440
	ds_load_u8 v34, v120 offset:13312
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v33, v34, v33, 0xc0c0004
	ds_load_u8 v34, v120 offset:13696
	ds_load_u8 v35, v120 offset:13568
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v34, v35, v34, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v61, v34, 16, v33
	ds_load_u8 v33, v120 offset:14976
	ds_load_u8 v34, v120 offset:14848
	v_wmma_i32_16x16x16_iu4 v[25:32], v[61:62], v[65:66], v[25:32] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v33, v34, v33, 0xc0c0004
	ds_load_u8 v34, v120 offset:15232
	ds_load_u8 v35, v120 offset:15104
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v34, v35, v34, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v66, v34, 16, v33
	ds_load_u8 v33, v120 offset:14464
	ds_load_u8 v34, v120 offset:14336
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v33, v34, v33, 0xc0c0004
	ds_load_u8 v34, v120 offset:14720
	ds_load_u8 v35, v120 offset:14592
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v34, v35, v34, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v65, v34, 16, v33
	ds_load_u8 v33, v120 offset:16000
	ds_load_u8 v34, v120 offset:15872
	v_wmma_i32_16x16x16_iu4 v[25:32], v[65:66], v[69:70], v[25:32] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v33, v34, v33, 0xc0c0004
	ds_load_u8 v34, v120 offset:16256
	ds_load_u8 v35, v120 offset:16128
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v34, v35, v34, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v70, v34, 16, v33
	ds_load_u8 v33, v120 offset:15488
	ds_load_u8 v34, v120 offset:15360
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v33, v34, v33, 0xc0c0004
	ds_load_u8 v34, v120 offset:15744
	ds_load_u8 v35, v120 offset:15616
	.loc	1 162 26                        ; generate_amdgcn.py:162:26
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_waitcnt vmcnt(2)
	ds_store_b64 v132, v[82:83] offset:16384
	.loc	1 166 26                        ; generate_amdgcn.py:166:26
	s_waitcnt vmcnt(1)
	ds_store_b128 v133, v[41:44]
	.loc	1 174 35                        ; generate_amdgcn.py:174:35
	s_waitcnt vmcnt(0)
	ds_store_b128 v133, v[77:80] offset:8192
	.loc	1 162 26                        ; generate_amdgcn.py:162:26
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 175 36                        ; generate_amdgcn.py:175:36
	v_perm_b32 v34, v35, v34, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_lshl_or_b32 v69, v34, 16, v33
	v_wmma_i32_16x16x16_iu4 v[33:40], v[142:143], v[47:48], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[25:32], v[69:70], v[73:74], v[25:32] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[33:40], v[45:46], v[51:52], v[33:40] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[33:40], v[49:50], v[55:56], v[33:40] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[33:40], v[53:54], v[59:60], v[33:40] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[33:40], v[57:58], v[63:64], v[33:40] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[33:40], v[61:62], v[67:68], v[33:40] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[33:40], v[65:66], v[71:72], v[33:40] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[33:40], v[69:70], v[75:76], v[33:40] neg_lo:[1,1,0]
	.loc	1 162 26                        ; generate_amdgcn.py:162:26
	ds_load_2addr_stride64_b64 v[41:44], v134 offset0:32 offset1:36
	ds_load_2addr_stride64_b64 v[45:48], v135 offset0:32 offset1:36
	ds_load_2addr_stride64_b64 v[49:52], v136 offset0:32 offset1:36
	ds_load_2addr_stride64_b64 v[53:56], v137 offset0:32 offset1:36
	ds_load_2addr_stride64_b64 v[57:60], v138 offset0:32 offset1:36
	ds_load_2addr_stride64_b64 v[61:64], v139 offset0:32 offset1:36
	ds_load_2addr_stride64_b64 v[65:68], v140 offset0:32 offset1:36
	ds_load_2addr_stride64_b64 v[69:72], v141 offset0:32 offset1:36
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	ds_load_u8 v73, v120 offset:640
	ds_load_u8 v74, v120 offset:512
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v73, v74, v73, 0xc0c0004
	ds_load_u8 v74, v120 offset:896
	ds_load_u8 v75, v120 offset:768
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v74, v75, v74, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v74, v74, 16, v73
	ds_load_u8 v73, v120 offset:128
	ds_load_u8 v75, v120
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v73, v75, v73, 0xc0c0004
	ds_load_u8 v75, v120 offset:384
	ds_load_u8 v76, v120 offset:256
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v75, v76, v75, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v73, v75, 16, v73
	ds_load_u8 v75, v120 offset:1664
	ds_load_u8 v76, v120 offset:1536
	v_wmma_i32_16x16x16_iu4 v[9:16], v[73:74], v[41:42], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[17:24], v[73:74], v[43:44], v[17:24] neg_lo:[1,1,0]
	.loc	1 175 36                        ; generate_amdgcn.py:175:36
	ds_load_u8 v73, v120 offset:8832
	ds_load_u8 v74, v120 offset:8704
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v75, v76, v75, 0xc0c0004
	ds_load_u8 v76, v120 offset:1920
	ds_load_u8 v77, v120 offset:1792
	.loc	1 175 36                        ; generate_amdgcn.py:175:36
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v73, v74, v73, 0xc0c0004
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v76, v77, v76, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v76, v76, 16, v75
	ds_load_u8 v75, v120 offset:1152
	ds_load_u8 v77, v120 offset:1024
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v75, v77, v75, 0xc0c0004
	ds_load_u8 v77, v120 offset:1408
	ds_load_u8 v78, v120 offset:1280
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v77, v78, v77, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v75, v77, 16, v75
	ds_load_u8 v77, v120 offset:2688
	ds_load_u8 v78, v120 offset:2560
	v_wmma_i32_16x16x16_iu4 v[9:16], v[75:76], v[45:46], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[17:24], v[75:76], v[47:48], v[17:24] neg_lo:[1,1,0]
	.loc	1 175 36                        ; generate_amdgcn.py:175:36
	ds_load_u8 v74, v120 offset:9088
	ds_load_u8 v75, v120 offset:8960
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v77, v78, v77, 0xc0c0004
	ds_load_u8 v78, v120 offset:2944
	ds_load_u8 v79, v120 offset:2816
	.loc	1 175 36                        ; generate_amdgcn.py:175:36
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v74, v75, v74, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v74, v74, 16, v73
	ds_load_u8 v73, v120 offset:8320
	ds_load_u8 v75, v120 offset:8192
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v78, v79, v78, 0xc0c0004
	v_lshl_or_b32 v78, v78, 16, v77
	ds_load_u8 v77, v120 offset:2176
	ds_load_u8 v79, v120 offset:2048
	.loc	1 175 36                        ; generate_amdgcn.py:175:36
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v73, v75, v73, 0xc0c0004
	ds_load_u8 v75, v120 offset:8576
	ds_load_u8 v76, v120 offset:8448
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v77, v79, v77, 0xc0c0004
	ds_load_u8 v79, v120 offset:2432
	ds_load_u8 v80, v120 offset:2304
	.loc	1 175 36                        ; generate_amdgcn.py:175:36
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v75, v76, v75, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v73, v75, 16, v73
	v_wmma_i32_16x16x16_iu4 v[25:32], v[73:74], v[41:42], v[25:32] neg_lo:[1,1,0]
	ds_load_u8 v41, v120 offset:9856
	ds_load_u8 v42, v120 offset:9728
	v_wmma_i32_16x16x16_iu4 v[33:40], v[73:74], v[43:44], v[33:40] neg_lo:[1,1,0]
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v79, v80, v79, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v77, v79, 16, v77
	ds_load_u8 v79, v120 offset:3712
	ds_load_u8 v80, v120 offset:3584
	v_wmma_i32_16x16x16_iu4 v[9:16], v[77:78], v[49:50], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[17:24], v[77:78], v[51:52], v[17:24] neg_lo:[1,1,0]
	.loc	1 175 36                        ; generate_amdgcn.py:175:36
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v41, v42, v41, 0xc0c0004
	ds_load_u8 v42, v120 offset:10112
	ds_load_u8 v75, v120 offset:9984
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v79, v80, v79, 0xc0c0004
	ds_load_u8 v80, v120 offset:3968
	ds_load_u8 v82, v120 offset:3840
	.loc	1 175 36                        ; generate_amdgcn.py:175:36
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v42, v75, v42, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v42, v42, 16, v41
	ds_load_u8 v41, v120 offset:9344
	ds_load_u8 v75, v120 offset:9216
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v80, v82, v80, 0xc0c0004
	v_lshl_or_b32 v80, v80, 16, v79
	ds_load_u8 v79, v120 offset:3200
	ds_load_u8 v82, v120 offset:3072
	.loc	1 175 36                        ; generate_amdgcn.py:175:36
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v41, v75, v41, 0xc0c0004
	ds_load_u8 v75, v120 offset:9600
	ds_load_u8 v76, v120 offset:9472
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v79, v82, v79, 0xc0c0004
	ds_load_u8 v82, v120 offset:3456
	ds_load_u8 v83, v120 offset:3328
	.loc	1 175 36                        ; generate_amdgcn.py:175:36
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v75, v76, v75, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v41, v75, 16, v41
	v_wmma_i32_16x16x16_iu4 v[25:32], v[41:42], v[45:46], v[25:32] neg_lo:[1,1,0]
	ds_load_u8 v45, v120 offset:10880
	ds_load_u8 v46, v120 offset:10752
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v82, v83, v82, 0xc0c0004
	.loc	1 175 36                        ; generate_amdgcn.py:175:36
	v_wmma_i32_16x16x16_iu4 v[33:40], v[41:42], v[47:48], v[33:40] neg_lo:[1,1,0]
	.loc	1 178 18                        ; generate_amdgcn.py:178:18
	s_clause 0x1
	buffer_load_u16 v41, v127, s[16:19], 0 offen
	buffer_load_u16 v42, v126, s[16:19], 0 offen
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_add_nc_u32_e32 v126, 2, v126
	v_add_nc_u32_e32 v127, 2, v127
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	v_lshl_or_b32 v79, v82, 16, v79
	ds_load_u8 v82, v120 offset:4736
	ds_load_u8 v83, v120 offset:4608
	v_wmma_i32_16x16x16_iu4 v[9:16], v[79:80], v[53:54], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[17:24], v[79:80], v[55:56], v[17:24] neg_lo:[1,1,0]
	.loc	1 175 36                        ; generate_amdgcn.py:175:36
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v45, v46, v45, 0xc0c0004
	ds_load_u8 v46, v120 offset:11136
	ds_load_u8 v75, v120 offset:11008
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v82, v83, v82, 0xc0c0004
	ds_load_u8 v83, v120 offset:4992
	ds_load_u8 v142, v120 offset:4864
	.loc	1 175 36                        ; generate_amdgcn.py:175:36
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v46, v75, v46, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v46, v46, 16, v45
	ds_load_u8 v45, v120 offset:10368
	ds_load_u8 v75, v120 offset:10240
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v83, v142, v83, 0xc0c0004
	v_lshl_or_b32 v83, v83, 16, v82
	ds_load_u8 v82, v120 offset:4224
	ds_load_u8 v142, v120 offset:4096
	.loc	1 175 36                        ; generate_amdgcn.py:175:36
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v45, v75, v45, 0xc0c0004
	ds_load_u8 v75, v120 offset:10624
	ds_load_u8 v76, v120 offset:10496
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v82, v142, v82, 0xc0c0004
	ds_load_u8 v142, v120 offset:4480
	ds_load_u8 v143, v120 offset:4352
	.loc	1 175 36                        ; generate_amdgcn.py:175:36
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v75, v76, v75, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_lshl_or_b32 v45, v75, 16, v45
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v142, v143, v142, 0xc0c0004
	.loc	1 175 36                        ; generate_amdgcn.py:175:36
	v_wmma_i32_16x16x16_iu4 v[25:32], v[45:46], v[49:50], v[25:32] neg_lo:[1,1,0]
	ds_load_u8 v49, v120 offset:11904
	ds_load_u8 v50, v120 offset:11776
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	v_lshl_or_b32 v82, v142, 16, v82
	ds_load_u8 v142, v120 offset:5760
	ds_load_u8 v143, v120 offset:5632
	.loc	1 175 36                        ; generate_amdgcn.py:175:36
	v_wmma_i32_16x16x16_iu4 v[33:40], v[45:46], v[51:52], v[33:40] neg_lo:[1,1,0]
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	v_wmma_i32_16x16x16_iu4 v[9:16], v[82:83], v[57:58], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[17:24], v[82:83], v[59:60], v[17:24] neg_lo:[1,1,0]
	.loc	1 175 36                        ; generate_amdgcn.py:175:36
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v49, v50, v49, 0xc0c0004
	ds_load_u8 v50, v120 offset:12160
	ds_load_u8 v75, v120 offset:12032
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v142, v143, v142, 0xc0c0004
	ds_load_u8 v143, v120 offset:6016
	ds_load_u8 v144, v120 offset:5888
	.loc	1 175 36                        ; generate_amdgcn.py:175:36
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v50, v75, v50, 0xc0c0004
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v143, v144, v143, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 175 36                        ; generate_amdgcn.py:175:36
	v_lshl_or_b32 v50, v50, 16, v49
	ds_load_u8 v49, v120 offset:11392
	ds_load_u8 v75, v120 offset:11264
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	v_lshl_or_b32 v143, v143, 16, v142
	ds_load_u8 v142, v120 offset:5248
	ds_load_u8 v144, v120 offset:5120
	.loc	1 175 36                        ; generate_amdgcn.py:175:36
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v49, v75, v49, 0xc0c0004
	ds_load_u8 v75, v120 offset:11648
	ds_load_u8 v76, v120 offset:11520
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v142, v144, v142, 0xc0c0004
	ds_load_u8 v144, v120 offset:5504
	ds_load_u8 v145, v120 offset:5376
	.loc	1 175 36                        ; generate_amdgcn.py:175:36
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v75, v76, v75, 0xc0c0004
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v144, v145, v144, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 175 36                        ; generate_amdgcn.py:175:36
	v_lshl_or_b32 v49, v75, 16, v49
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	v_lshl_or_b32 v142, v144, 16, v142
	ds_load_u8 v144, v120 offset:6784
	ds_load_u8 v145, v120 offset:6656
	.loc	1 175 36                        ; generate_amdgcn.py:175:36
	v_wmma_i32_16x16x16_iu4 v[25:32], v[49:50], v[53:54], v[25:32] neg_lo:[1,1,0]
	ds_load_u8 v53, v120 offset:12928
	ds_load_u8 v54, v120 offset:12800
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	v_wmma_i32_16x16x16_iu4 v[9:16], v[142:143], v[61:62], v[9:16] neg_lo:[1,1,0]
	.loc	1 175 36                        ; generate_amdgcn.py:175:36
	v_wmma_i32_16x16x16_iu4 v[33:40], v[49:50], v[55:56], v[33:40] neg_lo:[1,1,0]
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	v_wmma_i32_16x16x16_iu4 v[17:24], v[142:143], v[63:64], v[17:24] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v144, v145, v144, 0xc0c0004
	ds_load_u8 v145, v120 offset:7040
	ds_load_u8 v146, v120 offset:6912
	.loc	1 175 36                        ; generate_amdgcn.py:175:36
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v53, v54, v53, 0xc0c0004
	ds_load_u8 v54, v120 offset:13184
	ds_load_u8 v75, v120 offset:13056
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v145, v146, v145, 0xc0c0004
	.loc	1 175 36                        ; generate_amdgcn.py:175:36
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v54, v75, v54, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	v_lshl_or_b32 v145, v145, 16, v144
	ds_load_u8 v144, v120 offset:6272
	ds_load_u8 v146, v120 offset:6144
	.loc	1 175 36                        ; generate_amdgcn.py:175:36
	v_lshl_or_b32 v54, v54, 16, v53
	ds_load_u8 v53, v120 offset:12416
	ds_load_u8 v75, v120 offset:12288
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v144, v146, v144, 0xc0c0004
	ds_load_u8 v146, v120 offset:6528
	ds_load_u8 v147, v120 offset:6400
	.loc	1 175 36                        ; generate_amdgcn.py:175:36
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v53, v75, v53, 0xc0c0004
	ds_load_u8 v75, v120 offset:12672
	ds_load_u8 v76, v120 offset:12544
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v146, v147, v146, 0xc0c0004
	.loc	1 175 36                        ; generate_amdgcn.py:175:36
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v75, v76, v75, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	v_lshl_or_b32 v144, v146, 16, v144
	ds_load_u8 v146, v120 offset:7808
	ds_load_u8 v147, v120 offset:7680
	.loc	1 175 36                        ; generate_amdgcn.py:175:36
	v_lshl_or_b32 v53, v75, 16, v53
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	v_wmma_i32_16x16x16_iu4 v[9:16], v[144:145], v[65:66], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[17:24], v[144:145], v[67:68], v[17:24] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 175 36                        ; generate_amdgcn.py:175:36
	v_wmma_i32_16x16x16_iu4 v[25:32], v[53:54], v[57:58], v[25:32] neg_lo:[1,1,0]
	ds_load_u8 v57, v120 offset:13952
	ds_load_u8 v58, v120 offset:13824
	v_wmma_i32_16x16x16_iu4 v[33:40], v[53:54], v[59:60], v[33:40] neg_lo:[1,1,0]
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v146, v147, v146, 0xc0c0004
	ds_load_u8 v147, v120 offset:8064
	ds_load_u8 v148, v120 offset:7936
	.loc	1 175 36                        ; generate_amdgcn.py:175:36
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v57, v58, v57, 0xc0c0004
	ds_load_u8 v58, v120 offset:14208
	ds_load_u8 v75, v120 offset:14080
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v147, v148, v147, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v147, v147, 16, v146
	ds_load_u8 v146, v120 offset:7296
	ds_load_u8 v148, v120 offset:7168
	.loc	1 175 36                        ; generate_amdgcn.py:175:36
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v58, v75, v58, 0xc0c0004
	v_lshl_or_b32 v58, v58, 16, v57
	ds_load_u8 v57, v120 offset:13440
	ds_load_u8 v75, v120 offset:13312
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v146, v148, v146, 0xc0c0004
	ds_load_u8 v148, v120 offset:7552
	ds_load_u8 v149, v120 offset:7424
	.loc	1 175 36                        ; generate_amdgcn.py:175:36
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v57, v75, v57, 0xc0c0004
	ds_load_u8 v75, v120 offset:13696
	ds_load_u8 v76, v120 offset:13568
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v148, v149, v148, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_lshl_or_b32 v146, v148, 16, v146
	.loc	1 175 36                        ; generate_amdgcn.py:175:36
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v75, v76, v75, 0xc0c0004
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	v_wmma_i32_16x16x16_iu4 v[17:24], v[146:147], v[71:72], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[146:147], v[69:70], v[9:16] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 175 36                        ; generate_amdgcn.py:175:36
	v_lshl_or_b32 v57, v75, 16, v57
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_cvt_f32_i32_e32 v17, v17
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cvt_f32_i32_e32 v9, v9
	v_cvt_f32_i32_e32 v10, v10
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 175 36                        ; generate_amdgcn.py:175:36
	v_wmma_i32_16x16x16_iu4 v[25:32], v[57:58], v[61:62], v[25:32] neg_lo:[1,1,0]
	ds_load_u8 v61, v120 offset:14976
	ds_load_u8 v62, v120 offset:14848
	v_wmma_i32_16x16x16_iu4 v[33:40], v[57:58], v[63:64], v[33:40] neg_lo:[1,1,0]
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_cvt_f32_i32_e32 v11, v11
	v_cvt_f32_i32_e32 v12, v12
	v_cvt_f32_i32_e32 v20, v20
	v_cvt_f32_i32_e32 v19, v19
	v_cvt_f32_i32_e32 v18, v18
	v_cvt_f32_i32_e32 v13, v13
	v_cvt_f32_i32_e32 v14, v14
	v_cvt_f32_i32_e32 v15, v15
	v_cvt_f32_i32_e32 v16, v16
	.loc	1 175 36                        ; generate_amdgcn.py:175:36
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v61, v62, v61, 0xc0c0004
	ds_load_u8 v62, v120 offset:15232
	ds_load_u8 v75, v120 offset:15104
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v62, v75, v62, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v62, v62, 16, v61
	ds_load_u8 v61, v120 offset:14464
	ds_load_u8 v75, v120 offset:14336
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v61, v75, v61, 0xc0c0004
	ds_load_u8 v75, v120 offset:14720
	ds_load_u8 v76, v120 offset:14592
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v75, v76, v75, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v61, v75, 16, v61
	v_wmma_i32_16x16x16_iu4 v[25:32], v[61:62], v[65:66], v[25:32] neg_lo:[1,1,0]
	ds_load_u8 v65, v120 offset:16000
	ds_load_u8 v66, v120 offset:15872
	v_wmma_i32_16x16x16_iu4 v[33:40], v[61:62], v[67:68], v[33:40] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v65, v66, v65, 0xc0c0004
	ds_load_u8 v66, v120 offset:16256
	ds_load_u8 v75, v120 offset:16128
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v66, v75, v66, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v66, v66, 16, v65
	ds_load_u8 v65, v120 offset:15488
	ds_load_u8 v75, v120 offset:15360
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v65, v75, v65, 0xc0c0004
	ds_load_u8 v75, v120 offset:15744
	ds_load_u8 v76, v120 offset:15616
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v75, v76, v75, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v65, v75, 16, v65
	v_wmma_i32_16x16x16_iu4 v[25:32], v[65:66], v[69:70], v[25:32] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[33:40], v[65:66], v[71:72], v[33:40] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 183 29                        ; generate_amdgcn.py:183:29
	v_cvt_f32_i32_e32 v26, v26
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_add_nc_u32_e32 v43, v123, v125
	s_clause 0x7
	buffer_load_u16 v44, v43, s[8:11], 0 offen
	buffer_load_u16 v45, v43, s[8:11], 0 offen offset:4
	buffer_load_u16 v46, v43, s[8:11], 0 offen offset:8
	buffer_load_u16 v47, v43, s[8:11], 0 offen offset:12
	buffer_load_u16 v48, v43, s[8:11], 0 offen offset:16
	buffer_load_u16 v49, v43, s[8:11], 0 offen offset:20
	buffer_load_u16 v50, v43, s[8:11], 0 offen offset:24
	buffer_load_u16 v43, v43, s[8:11], 0 offen offset:28
	.loc	1 183 29                        ; generate_amdgcn.py:183:29
	v_cvt_f32_i32_e32 v36, v36
	v_cvt_f32_i32_e32 v30, v30
	v_cvt_f32_i32_e32 v28, v28
	v_cvt_f32_i32_e32 v35, v35
	v_cvt_f32_i32_e32 v33, v33
	v_cvt_f32_i32_e32 v25, v25
	v_cvt_f32_i32_e32 v27, v27
	v_cvt_f32_i32_e32 v29, v29
	v_cvt_f32_i32_e32 v34, v34
	v_cvt_f32_i32_e32 v31, v31
	v_cvt_f32_i32_e32 v32, v32
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_add_nc_u32_e32 v125, s30, v125
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	s_waitcnt vmcnt(7)
	v_lshlrev_b32_e32 v44, 16, v44
	.loc	1 178 18                        ; generate_amdgcn.py:178:18
	v_lshlrev_b32_e32 v42, 16, v42
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_mul_f32_e32 v17, v42, v17
	.loc	1 180 13 is_stmt 0              ; generate_amdgcn.py:180:13
	v_fmac_f32_e32 v97, v17, v44
	.loc	1 183 29 is_stmt 1              ; generate_amdgcn.py:183:29
	v_dual_mul_f32 v36, v42, v36 :: v_dual_lshlrev_b32 v41, 16, v41
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	s_waitcnt vmcnt(6)
	v_dual_mul_f32 v20, v42, v20 :: v_dual_lshlrev_b32 v45, 16, v45
	v_mul_f32_e32 v18, v42, v18
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_mul_f32_e32 v10, v41, v10
	v_mul_f32_e32 v9, v41, v9
	v_mul_f32_e32 v12, v41, v12
	v_mul_f32_e32 v11, v41, v11
	.loc	1 183 29                        ; generate_amdgcn.py:183:29
	v_dual_mul_f32 v28, v41, v28 :: v_dual_fmac_f32 v113, v10, v45
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	s_waitcnt vmcnt(5)
	v_dual_fmac_f32 v115, v9, v44 :: v_dual_lshlrev_b32 v10, 16, v46
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	s_waitcnt vmcnt(4)
	v_lshlrev_b32_e32 v9, 16, v47
	.loc	1 183 29                        ; generate_amdgcn.py:183:29
	v_dual_mul_f32 v35, v42, v35 :: v_dual_mul_f32 v14, v41, v14
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fmac_f32_e32 v108, v11, v10
	.loc	1 180 20 is_stmt 0              ; generate_amdgcn.py:180:20
	v_cvt_f32_i32_e32 v11, v21
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_dual_fmac_f32 v109, v12, v9 :: v_dual_mul_f32 v30, v41, v30
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_cvt_f32_i32_e32 v12, v22
	.loc	1 183 29 is_stmt 1              ; generate_amdgcn.py:183:29
	v_cvt_f32_i32_e32 v22, v38
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fmac_f32_e32 v96, v18, v45
	.loc	1 183 29                        ; generate_amdgcn.py:183:29
	v_dual_mul_f32 v33, v42, v33 :: v_dual_mul_f32 v26, v41, v26
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_mul_f32_e32 v12, v42, v12
	.loc	1 180 13 is_stmt 0              ; generate_amdgcn.py:180:13
	v_dual_fmac_f32 v92, v20, v9 :: v_dual_add_nc_u32 v51, v123, v124
	.loc	1 182 27 is_stmt 1              ; generate_amdgcn.py:182:27
	s_clause 0x7
	buffer_load_u16 v52, v51, s[8:11], 0 offen
	buffer_load_u16 v53, v51, s[8:11], 0 offen offset:4
	buffer_load_u16 v54, v51, s[8:11], 0 offen offset:8
	buffer_load_u16 v55, v51, s[8:11], 0 offen offset:12
	buffer_load_u16 v56, v51, s[8:11], 0 offen offset:16
	buffer_load_u16 v57, v51, s[8:11], 0 offen offset:20
	buffer_load_u16 v58, v51, s[8:11], 0 offen offset:24
	buffer_load_u16 v51, v51, s[8:11], 0 offen offset:28
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_mul_f32_e32 v11, v42, v11
	v_mul_f32_e32 v19, v42, v19
	.loc	1 183 29                        ; generate_amdgcn.py:183:29
	v_dual_mul_f32 v22, v42, v22 :: v_dual_mul_f32 v25, v41, v25
	v_cvt_f32_i32_e32 v21, v37
	v_mul_f32_e32 v34, v42, v34
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	s_waitcnt vmcnt(11)
	v_dual_fmac_f32 v93, v19, v10 :: v_dual_lshlrev_b32 v10, 16, v48
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 180 20 is_stmt 0              ; generate_amdgcn.py:180:20
	v_dual_mul_f32 v16, v41, v16 :: v_dual_mul_f32 v21, v42, v21
	.loc	1 183 29 is_stmt 1              ; generate_amdgcn.py:183:29
	v_mul_f32_e32 v32, v41, v32
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_add_nc_u32_e32 v124, s30, v124
	.loc	1 182 27                        ; generate_amdgcn.py:182:27
	s_waitcnt vmcnt(7)
	v_lshlrev_b32_e32 v18, 16, v52
	s_waitcnt vmcnt(6)
	v_lshlrev_b32_e32 v17, 16, v53
	s_waitcnt vmcnt(5)
	v_lshlrev_b32_e32 v20, 16, v54
	s_waitcnt vmcnt(4)
	v_lshlrev_b32_e32 v19, 16, v55
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_mul_f32_e32 v13, v41, v13
	.loc	1 183 29                        ; generate_amdgcn.py:183:29
	v_mul_f32_e32 v29, v41, v29
	.loc	1 183 17 is_stmt 0              ; generate_amdgcn.py:183:17
	v_dual_fmac_f32 v118, v26, v17 :: v_dual_mul_f32 v15, v41, v15
	v_fmac_f32_e32 v98, v34, v17
	v_dual_fmac_f32 v110, v28, v19 :: v_dual_lshlrev_b32 v9, 16, v49
	.loc	1 180 13 is_stmt 1              ; generate_amdgcn.py:180:13
	v_fmac_f32_e32 v104, v13, v10
	.loc	1 180 20 is_stmt 0              ; generate_amdgcn.py:180:20
	v_cvt_f32_i32_e32 v13, v23
	.loc	1 183 29 is_stmt 1              ; generate_amdgcn.py:183:29
	v_cvt_f32_i32_e32 v23, v39
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 183 17 is_stmt 0              ; generate_amdgcn.py:183:17
	v_dual_fmac_f32 v94, v36, v19 :: v_dual_fmac_f32 v105, v14, v9
	v_fmac_f32_e32 v112, v25, v18
	.loc	1 180 20 is_stmt 1              ; generate_amdgcn.py:180:20
	v_cvt_f32_i32_e32 v14, v24
	.loc	1 183 29                        ; generate_amdgcn.py:183:29
	v_mul_f32_e32 v27, v41, v27
	v_cvt_f32_i32_e32 v24, v40
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fmac_f32_e32 v89, v12, v9
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	.loc	1 180 20 is_stmt 0              ; generate_amdgcn.py:180:20
	v_dual_mul_f32 v14, v42, v14 :: v_dual_lshlrev_b32 v9, 16, v43
	s_waitcnt vmcnt(3)
	v_dual_mul_f32 v13, v42, v13 :: v_dual_lshlrev_b32 v12, 16, v56
	.loc	1 183 29 is_stmt 1              ; generate_amdgcn.py:183:29
	v_mul_f32_e32 v24, v42, v24
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fmac_f32_e32 v100, v16, v9
	v_fmac_f32_e32 v84, v14, v9
	.loc	1 182 27                        ; generate_amdgcn.py:182:27
	s_waitcnt vmcnt(1)
	v_lshlrev_b32_e32 v14, 16, v58
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fmac_f32_e32 v88, v11, v10
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_lshlrev_b32_e32 v10, 16, v50
	.loc	1 183 17                        ; generate_amdgcn.py:183:17
	v_dual_fmac_f32 v106, v29, v12 :: v_dual_lshlrev_b32 v11, 16, v57
	v_fmac_f32_e32 v111, v27, v20
	v_fmac_f32_e32 v99, v33, v18
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fmac_f32_e32 v85, v13, v10
	.loc	1 182 27                        ; generate_amdgcn.py:182:27
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v13, 16, v51
	.loc	1 183 29                        ; generate_amdgcn.py:183:29
	v_mul_f32_e32 v23, v42, v23
	v_mul_f32_e32 v31, v41, v31
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_dual_fmac_f32 v101, v15, v10 :: v_dual_fmac_f32 v90, v21, v12
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 183 17                        ; generate_amdgcn.py:183:17
	v_dual_fmac_f32 v107, v30, v11 :: v_dual_fmac_f32 v102, v32, v13
	v_fmac_f32_e32 v95, v35, v20
	v_fmac_f32_e32 v91, v22, v11
	v_dual_fmac_f32 v87, v23, v14 :: v_dual_fmac_f32 v86, v24, v13
	v_fmac_f32_e32 v103, v31, v14
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	s_cbranch_scc1 .LBB0_2
.LBB0_3:                                ; %._crit_edge
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_dual_mul_f32 v1, 0xbfb8aa3b, v118 :: v_dual_mul_f32 v2, 0xbfb8aa3b, v112
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_dual_mul_f32 v11, 0xbfb8aa3b, v110 :: v_dual_mul_f32 v14, 0xbfb8aa3b, v103
	.loc	1 99 14                         ; generate_amdgcn.py:99:14
	s_lshl_b32 s1, s28, 7
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v1
	s_delay_alu instid0(VALU_DEP_3)
	v_cmp_gt_f32_e64 s0, 0xc2fc0000, v2
	.loc	1 190 18                        ; generate_amdgcn.py:190:18
	s_mul_i32 s22, s22, s23
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_dual_mul_f32 v13, 0xbfb8aa3b, v107 :: v_dual_mul_f32 v8, 0xbfb8aa3b, v90
	v_cndmask_b32_e64 v3, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v5, 0, 0x42800000, s0
	v_cndmask_b32_e64 v2, 0, 0xffffffc0, vcc_lo
	v_cndmask_b32_e64 v4, 0, 0xffffffc0, s0
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v11
	v_dual_fmac_f32 v3, 0xbfb8aa3b, v118 :: v_dual_mul_f32 v10, 0xbfb8aa3b, v111
	v_dual_fmac_f32 v5, 0xbfb8aa3b, v112 :: v_dual_mul_f32 v12, 0xbfb8aa3b, v106
	v_cndmask_b32_e64 v11, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_exp_f32_e32 v3, v3
	v_cmp_gt_f32_e64 s0, 0xc2fc0000, v10
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_exp_f32_e32 v6, v5
	.loc	1 98 32                         ; generate_amdgcn.py:98:32
	v_or_b32_e32 v1, v117, v116
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_dual_mul_f32 v15, 0xbfb8aa3b, v102 :: v_dual_mul_f32 v16, 0xbfb8aa3b, v99
	v_cndmask_b32_e64 v24, 0, 0x42800000, s0
	v_mul_f32_e32 v19, 0xbfb8aa3b, v94
	v_cndmask_b32_e64 v22, 0, 0xffffffc0, s0
	.loc	1 98 32                         ; generate_amdgcn.py:98:32
	v_or_b32_e32 v26, 32, v1
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_ldexp_f32 v2, v3, v2
	v_mul_f32_e32 v5, 0xbfb8aa3b, v87
	v_ldexp_f32 v3, v6, v4
	v_fmac_f32_e32 v24, 0xbfb8aa3b, v111
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v4.h, 0
	.loc	1 185 38                        ; generate_amdgcn.py:185:38
	v_add_f32_e32 v20, 1.0, v2
	.loc	1 185 44 is_stmt 0              ; generate_amdgcn.py:185:44
	v_cndmask_b32_e64 v2, 0, 0x42800000, vcc_lo
	.loc	1 185 38                        ; generate_amdgcn.py:185:38
	v_add_f32_e32 v21, 1.0, v3
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_exp_f32_e32 v24, v24
	v_dual_mul_f32 v17, 0xbfb8aa3b, v98 :: v_dual_mul_f32 v18, 0xbfb8aa3b, v95
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v2, 0xbfb8aa3b, v110
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_scale_f32 v10, null, v21, v21, v112
	v_div_scale_f32 v3, null, v20, v20, v118
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_exp_f32_e32 v27, v2
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_rcp_f32_e32 v25, v10
	v_div_scale_f32 v30, s0, v112, v21, v112
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_4) | instid1(TRANS32_DEP_2)
	v_rcp_f32_e32 v23, v3
	v_div_scale_f32 v29, vcc_lo, v118, v20, v118
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_ldexp_f32 v22, v24, v22
	v_dual_mul_f32 v9, 0xbfb8aa3b, v91 :: v_dual_mul_f32 v6, 0xbfb8aa3b, v86
	.loc	1 190 18 is_stmt 1              ; generate_amdgcn.py:190:18
	v_mul_lo_u32 v1, s23, v1
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_fma_f32 v28, -v10, v25, 1.0
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	s_and_b32 s21, s21, 0xffff
	.loc	1 185 38                        ; generate_amdgcn.py:185:38
	v_add_f32_e32 v22, 1.0, v22
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 185 26 is_stmt 0              ; generate_amdgcn.py:185:26
	v_fma_f32 v2, -v3, v23, 1.0
	v_dual_fmac_f32 v25, v28, v25 :: v_dual_and_b32 v0, 16, v0
	.loc	1 99 32 is_stmt 1               ; generate_amdgcn.py:99:32
	v_and_b32_e32 v7, 0x78, v114
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_fmac_f32_e32 v23, v2, v23
	v_mul_f32_e32 v24, v30, v25
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 190 18                        ; generate_amdgcn.py:190:18
	v_add3_u32 v2, s22, s1, v7
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_ldexp_f32 v7, v27, v11
	v_cmp_gt_f32_e64 s1, 0xc2fc0000, v13
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v27.h, v4.h
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_fma_f32 v31, -v10, v24, v30
	s_mov_b32 s22, 0x7ffffffe
	.loc	1 185 38 is_stmt 0              ; generate_amdgcn.py:185:38
	v_add_f32_e32 v28, 1.0, v7
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_dual_mul_f32 v11, v29, v23 :: v_dual_fmac_f32 v24, v31, v25
	v_div_scale_f32 v32, null, v28, v28, v110
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v7, -v3, v11, v29
	v_fma_f32 v10, -v10, v24, v30
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_rcp_f32_e32 v13, v32
	v_fmac_f32_e32 v11, v7, v23
	v_div_scale_f32 v7, null, v22, v22, v111
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v3, -v3, v11, v29
	v_rcp_f32_e32 v29, v7
	s_delay_alu instid0(VALU_DEP_1)
	v_div_fmas_f32 v11, v3, v23, v11
	s_mov_b32 vcc_lo, s0
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_cndmask_b32_e64 v23, 0, 0xffffffc0, s1
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_fmas_f32 v10, v10, v25, v24
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_cndmask_b32_e64 v24, 0, 0x42800000, s1
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_fixup_f32 v11, v11, v20, v118
	v_div_scale_f32 v20, vcc_lo, v110, v28, v110
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_div_fixup_f32 v10, v10, v21, v112
	v_fma_f32 v21, -v32, v13, 1.0
	.loc	1 185 19                        ; generate_amdgcn.py:185:19
	v_mul_f32_e32 v11, v113, v11
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_fmac_f32_e32 v24, 0xbfb8aa3b, v107
	v_cmp_gt_f32_e64 s1, 0xc2fc0000, v12
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 185 19                        ; generate_amdgcn.py:185:19
	v_dual_mul_f32 v10, v115, v10 :: v_dual_fmac_f32 v13, v21, v13
	.loc	1 190 9 is_stmt 1               ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v4.l, v11.h
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_fma_f32 v25, -v7, v29, 1.0
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 185 44 is_stmt 0              ; generate_amdgcn.py:185:44
	v_cndmask_b32_e64 v33, 0, 0xffffffc0, s1
	v_cndmask_b32_e64 v34, 0, 0x42800000, s1
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_dual_mul_f32 v21, v20, v13 :: v_dual_and_b32 v30, 1, v4
	.loc	1 190 9 is_stmt 1               ; generate_amdgcn.py:190:9
	v_cmp_o_f32_e64 s1, v11, v11
	.loc	1 190 18 is_stmt 0              ; generate_amdgcn.py:190:18
	v_mul_lo_u32 v3, s23, v26
	.loc	1 185 26 is_stmt 1              ; generate_amdgcn.py:185:26
	v_div_scale_f32 v26, s0, v111, v22, v111
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_fma_f32 v12, -v32, v21, v20
	v_dual_fmac_f32 v29, v25, v29 :: v_dual_fmac_f32 v34, 0xbfb8aa3b, v106
	.loc	1 185 44 is_stmt 0              ; generate_amdgcn.py:185:44
	v_exp_f32_e32 v24, v24
	.loc	1 190 9 is_stmt 1               ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v27.l, v10.h
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_fmac_f32_e32 v21, v12, v13
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_add3_u32 v12, v11, v30, 0x7fff
	s_mov_b32 s23, 0x31027000
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_fma_f32 v11, -v32, v21, v20
	.loc	1 185 44 is_stmt 0              ; generate_amdgcn.py:185:44
	v_ldexp_f32 v20, v24, v23
	v_exp_f32_e32 v23, v34
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_fmas_f32 v11, v11, v13, v21
	s_mov_b32 vcc_lo, s0
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_cmp_gt_f32_e64 s0, 0xc2fc0000, v14
	.loc	1 185 38                        ; generate_amdgcn.py:185:38
	v_add_f32_e32 v13, 1.0, v20
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_fixup_f32 v11, v11, v28, v110
	v_mul_f32_e32 v25, v26, v29
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_cndmask_b32_e64 v30, 0, 0x42800000, s0
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_scale_f32 v21, null, v13, v13, v107
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_ldexp_f32 v23, v23, v33
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_fma_f32 v31, -v7, v25, v26
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_dual_fmac_f32 v30, 0xbfb8aa3b, v103 :: v_dual_fmac_f32 v25, v31, v29
	v_exp_f32_e32 v30, v30
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_fma_f32 v7, -v7, v25, v26
	v_div_fmas_f32 v20, v7, v29, v25
	.loc	1 190 9 is_stmt 1               ; generate_amdgcn.py:190:9
	v_cndmask_b16 v7.h, 0x7fff, v12.h, s1
	v_cmp_o_f32_e32 vcc_lo, v10, v10
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_cndmask_b32_e64 v29, 0, 0xffffffc0, s0
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(TRANS32_DEP_1)
	.loc	1 185 26 is_stmt 0              ; generate_amdgcn.py:185:26
	v_div_fixup_f32 v12, v20, v22, v111
	v_rcp_f32_e32 v20, v21
	.loc	1 185 38                        ; generate_amdgcn.py:185:38
	v_add_f32_e32 v22, 1.0, v23
	.loc	1 190 9 is_stmt 1               ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v23.h, v4.h
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_fma_f32 v24, -v21, v20, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_dual_fmac_f32 v20, v24, v20 :: v_dual_and_b32 v27, 1, v27
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_add3_u32 v27, v10, v27, 0x7fff
	.loc	1 185 19                        ; generate_amdgcn.py:185:19
	v_dual_mul_f32 v10, v109, v11 :: v_dual_mul_f32 v11, v108, v12
	.loc	1 185 26 is_stmt 0              ; generate_amdgcn.py:185:26
	v_div_scale_f32 v12, null, v22, v22, v106
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 190 9 is_stmt 1               ; generate_amdgcn.py:190:9
	v_cndmask_b16 v7.l, 0x7fff, v27.h, vcc_lo
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v15
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v4.l, v10.h
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_rcp_f32_e32 v25, v12
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v23.l, v11.h
	v_cmp_o_f32_e64 s1, v10, v10
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_cndmask_b32_e64 v26, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v24, 0, 0xffffffc0, vcc_lo
	.loc	1 185 26 is_stmt 0              ; generate_amdgcn.py:185:26
	v_div_scale_f32 v27, vcc_lo, v107, v13, v107
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_dual_fmac_f32 v26, 0xbfb8aa3b, v102 :: v_dual_and_b32 v15, 1, v4
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_dual_mul_f32 v28, v27, v20 :: v_dual_and_b32 v23, 1, v23
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v14, -v12, v25, 1.0
	.loc	1 190 9 is_stmt 1               ; generate_amdgcn.py:190:9
	v_add3_u32 v15, v10, v15, 0x7fff
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_add3_u32 v23, v11, v23, 0x7fff
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_fma_f32 v10, -v21, v28, v27
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(TRANS32_DEP_1)
	v_fmac_f32_e32 v25, v14, v25
	.loc	1 185 44 is_stmt 0              ; generate_amdgcn.py:185:44
	v_exp_f32_e32 v14, v26
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_scale_f32 v26, s0, v106, v22, v106
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_ldexp_f32 v14, v14, v24
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_fmac_f32_e32 v28, v10, v20
	.loc	1 190 9 is_stmt 1               ; generate_amdgcn.py:190:9
	v_cndmask_b16 v10.h, 0x7fff, v15.h, s1
	v_cmp_o_f32_e64 s1, v11, v11
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_ldexp_f32 v15, v30, v29
	.loc	1 185 38 is_stmt 0              ; generate_amdgcn.py:185:38
	v_add_f32_e32 v11, 1.0, v14
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_fma_f32 v14, -v21, v28, v27
	.loc	1 190 9 is_stmt 1               ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v27.h, v4.h
	v_cndmask_b16 v10.l, 0x7fff, v23.h, s1
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_scale_f32 v21, null, v11, v11, v102
	v_div_fmas_f32 v14, v14, v20, v28
	s_mov_b32 vcc_lo, s0
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_rcp_f32_e32 v20, v21
	v_mul_f32_e32 v31, v26, v25
	v_fma_f32 v24, -v12, v31, v26
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v31, v24, v25
	v_fma_f32 v12, -v12, v31, v26
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	v_div_fmas_f32 v12, v12, v25, v31
	.loc	1 185 44 is_stmt 0              ; generate_amdgcn.py:185:44
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v17
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_fma_f32 v17, -v21, v20, 1.0
	s_delay_alu instid0(VALU_DEP_3)
	v_div_fixup_f32 v12, v12, v22, v106
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_cndmask_b32_e64 v24, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v23, 0, 0xffffffc0, vcc_lo
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v16
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_fmac_f32_e32 v20, v17, v20
	.loc	1 185 19                        ; generate_amdgcn.py:185:19
	v_mul_f32_e32 v12, v104, v12
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_fmac_f32_e32 v24, 0xbfb8aa3b, v98
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_fixup_f32 v13, v14, v13, v107
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_cndmask_b32_e64 v16, 0, 0xffffffc0, vcc_lo
	v_cndmask_b32_e64 v17, 0, 0x42800000, vcc_lo
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_scale_f32 v25, vcc_lo, v102, v11, v102
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_exp_f32_e32 v24, v24
	.loc	1 185 19                        ; generate_amdgcn.py:185:19
	v_mul_f32_e32 v13, v105, v13
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_dual_fmac_f32 v17, 0xbfb8aa3b, v99 :: v_dual_mul_f32 v28, v25, v20
	.loc	1 190 9 is_stmt 1               ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v27.l, v12.h
	v_mov_b16_e32 v4.l, v13.h
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(TRANS32_DEP_2)
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_exp_f32_e32 v17, v17
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cmp_o_f32_e64 s1, v13, v13
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_ldexp_f32 v23, v24, v23
	.loc	1 185 26 is_stmt 0              ; generate_amdgcn.py:185:26
	v_fma_f32 v24, -v21, v28, v25
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 185 38                        ; generate_amdgcn.py:185:38
	v_dual_add_f32 v15, 1.0, v15 :: v_dual_fmac_f32 v28, v24, v20
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_scale_f32 v14, null, v15, v15, v103
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_ldexp_f32 v16, v17, v16
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_rcp_f32_e32 v22, v14
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v26, -v14, v22, 1.0
	v_fmac_f32_e32 v22, v26, v22
	v_div_scale_f32 v26, s0, v103, v15, v103
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v30, v26, v22
	v_fma_f32 v17, -v14, v30, v26
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_dual_fmac_f32 v30, v17, v22 :: v_dual_and_b32 v29, 1, v4
	.loc	1 190 9 is_stmt 1               ; generate_amdgcn.py:190:9
	v_add3_u32 v29, v13, v29, 0x7fff
	.loc	1 185 38                        ; generate_amdgcn.py:185:38
	v_add_f32_e32 v13, 1.0, v16
	.loc	1 185 26 is_stmt 0              ; generate_amdgcn.py:185:26
	v_fma_f32 v16, -v21, v28, v25
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v14, -v14, v30, v26
	.loc	1 190 9 is_stmt 1               ; generate_amdgcn.py:190:9
	v_cndmask_b16 v26.h, 0x7fff, v29.h, s1
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_scale_f32 v21, null, v13, v13, v99
	v_div_fmas_f32 v16, v16, v20, v28
	s_mov_b32 vcc_lo, s0
	.loc	1 185 44 is_stmt 0              ; generate_amdgcn.py:185:44
	v_cmp_gt_f32_e64 s1, 0xc2fc0000, v19
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_rcp_f32_e32 v20, v21
	v_div_fmas_f32 v14, v14, v22, v30
	v_div_fixup_f32 v11, v16, v11, v102
	.loc	1 190 9 is_stmt 1               ; generate_amdgcn.py:190:9
	v_cmp_o_f32_e64 s0, v12, v12
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_cndmask_b32_e64 v19, 0, 0xffffffc0, s1
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v29.h, v4.h
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_fixup_f32 v14, v14, v15, v103
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v16, -v21, v20, 1.0
	v_fmac_f32_e32 v20, v16, v20
	v_div_scale_f32 v16, s2, v99, v13, v99
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 185 38 is_stmt 0              ; generate_amdgcn.py:185:38
	v_dual_add_f32 v23, 1.0, v23 :: v_dual_mul_f32 v28, v16, v20
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_scale_f32 v24, null, v23, v23, v98
	v_div_scale_f32 v15, vcc_lo, v98, v23, v98
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v17, v24
	v_fma_f32 v22, -v24, v17, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v17, v22, v17
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_cndmask_b32_e64 v22, 0, 0x42800000, s1
	v_cmp_gt_f32_e64 s1, 0xc2fc0000, v18
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_fma_f32 v18, -v21, v28, v16
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_fmac_f32_e32 v22, 0xbfb8aa3b, v94
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b32_e64 v30, 0, 0x42800000, s1
	v_exp_f32_e32 v22, v22
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v30, 0xbfb8aa3b, v95
	.loc	1 190 9 is_stmt 1               ; generate_amdgcn.py:190:9
	v_and_b32_e32 v27, 1, v27
	v_add3_u32 v25, v12, v27, 0x7fff
	.loc	1 185 19                        ; generate_amdgcn.py:185:19
	v_mul_f32_e32 v12, v101, v14
	.loc	1 185 26 is_stmt 0              ; generate_amdgcn.py:185:26
	v_mul_f32_e32 v14, v15, v17
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 190 9 is_stmt 1               ; generate_amdgcn.py:190:9
	v_cndmask_b16 v26.l, 0x7fff, v25.h, s0
	v_mov_b16_e32 v29.l, v12.h
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_fma_f32 v27, -v24, v14, v15
	.loc	1 185 19 is_stmt 0              ; generate_amdgcn.py:185:19
	v_dual_mul_f32 v11, v100, v11 :: v_dual_fmac_f32 v14, v27, v17
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_cndmask_b32_e64 v27, 0, 0xffffffc0, s1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 190 9 is_stmt 1               ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v4.l, v11.h
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_fma_f32 v15, -v24, v14, v15
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_div_fmas_f32 v14, v15, v17, v14
	.loc	1 185 44 is_stmt 0              ; generate_amdgcn.py:185:44
	v_ldexp_f32 v17, v22, v19
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_fmac_f32_e32 v28, v18, v20
	s_mov_b32 vcc_lo, s2
	v_div_fixup_f32 v14, v14, v23, v98
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 185 38                        ; generate_amdgcn.py:185:38
	v_add_f32_e32 v17, 1.0, v17
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_fma_f32 v15, -v21, v28, v16
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_exp_f32_e32 v16, v30
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 185 19                        ; generate_amdgcn.py:185:19
	v_dual_mul_f32 v14, v96, v14 :: v_dual_and_b32 v19, 1, v29
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_fmas_f32 v15, v15, v20, v28
	.loc	1 190 9 is_stmt 1               ; generate_amdgcn.py:190:9
	v_cmp_o_f32_e32 vcc_lo, v11, v11
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_add3_u32 v19, v12, v19, 0x7fff
	v_cmp_o_f32_e64 s2, v14, v14
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_fixup_f32 v13, v15, v13, v99
	.loc	1 185 44 is_stmt 0              ; generate_amdgcn.py:185:44
	v_ldexp_f32 v15, v16, v27
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_scale_f32 v16, null, v17, v17, v94
	.loc	1 190 9 is_stmt 1               ; generate_amdgcn.py:190:9
	v_and_b32_e32 v18, 1, v4
	v_mov_b16_e32 v4.l, v14.h
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 185 38                        ; generate_amdgcn.py:185:38
	v_add_f32_e32 v15, 1.0, v15
	.loc	1 185 26 is_stmt 0              ; generate_amdgcn.py:185:26
	v_rcp_f32_e32 v20, v16
	.loc	1 185 19                        ; generate_amdgcn.py:185:19
	v_mul_f32_e32 v13, v97, v13
	.loc	1 190 9 is_stmt 1               ; generate_amdgcn.py:190:9
	v_add3_u32 v18, v11, v18, 0x7fff
	v_mov_b16_e32 v11.h, v4.h
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_scale_f32 v21, null, v15, v15, v95
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cndmask_b16 v18.h, 0x7fff, v18.h, vcc_lo
	v_cmp_o_f32_e32 vcc_lo, v12, v12
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_rcp_f32_e32 v22, v21
	s_delay_alu instid0(TRANS32_DEP_2)
	v_fma_f32 v23, -v16, v20, 1.0
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_and_b32_e32 v12, 1, v4
	v_mov_b16_e32 v11.l, v13.h
	v_cndmask_b16 v18.l, 0x7fff, v19.h, vcc_lo
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v9
	.loc	1 185 26 is_stmt 0              ; generate_amdgcn.py:185:26
	v_fmac_f32_e32 v20, v23, v20
	v_div_scale_f32 v23, s0, v94, v17, v94
	.loc	1 190 9 is_stmt 1               ; generate_amdgcn.py:190:9
	v_and_b32_e32 v11, 1, v11
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_fma_f32 v24, -v21, v22, 1.0
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_add3_u32 v12, v14, v12, 0x7fff
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_mul_f32_e32 v19, v23, v20
	v_div_scale_f32 v9, s1, v95, v15, v95
	s_delay_alu instid0(VALU_DEP_4)
	v_fmac_f32_e32 v22, v24, v22
	.loc	1 185 44 is_stmt 0              ; generate_amdgcn.py:185:44
	v_cndmask_b32_e64 v14, 0, 0xffffffc0, vcc_lo
	v_cndmask_b32_e64 v24, 0, 0x42800000, vcc_lo
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_fma_f32 v25, -v16, v19, v23
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v8
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_mul_f32_e32 v27, v9, v22
	.loc	1 190 9 is_stmt 1               ; generate_amdgcn.py:190:9
	v_add3_u32 v11, v13, v11, 0x7fff
	v_cndmask_b16 v12.h, 0x7fff, v12.h, s2
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_fmac_f32_e32 v24, 0xbfb8aa3b, v91
	v_cndmask_b32_e64 v28, 0, 0x42800000, vcc_lo
	.loc	1 185 26 is_stmt 0              ; generate_amdgcn.py:185:26
	v_fmac_f32_e32 v19, v25, v20
	v_fma_f32 v8, -v21, v27, v9
	.loc	1 190 9 is_stmt 1               ; generate_amdgcn.py:190:9
	v_cmp_o_f32_e64 s2, v13, v13
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_cndmask_b32_e64 v25, 0, 0xffffffc0, vcc_lo
	v_fmac_f32_e32 v28, 0xbfb8aa3b, v90
	.loc	1 185 26 is_stmt 0              ; generate_amdgcn.py:185:26
	v_fma_f32 v13, -v16, v19, v23
	s_mov_b32 vcc_lo, s0
	v_fmac_f32_e32 v27, v8, v22
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_cmp_gt_f32_e64 s0, 0xc2fc0000, v5
	v_exp_f32_e32 v24, v24
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_fmas_f32 v8, v13, v20, v19
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v6
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_fma_f32 v6, -v21, v27, v9
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_cndmask_b32_e64 v19, 0, 0x42800000, s0
	v_exp_f32_e32 v13, v28
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_fixup_f32 v8, v8, v17, v94
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_cndmask_b32_e64 v16, 0, 0x42800000, vcc_lo
	.loc	1 190 9 is_stmt 1               ; generate_amdgcn.py:190:9
	v_cndmask_b16 v12.l, 0x7fff, v11.h, s2
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_fmac_f32_e32 v19, 0xbfb8aa3b, v87
	v_ldexp_f32 v9, v24, v14
	v_cndmask_b32_e64 v14, 0, 0xffffffc0, vcc_lo
	v_fmac_f32_e32 v16, 0xbfb8aa3b, v86
	.loc	1 185 26 is_stmt 0              ; generate_amdgcn.py:185:26
	s_mov_b32 vcc_lo, s1
	.loc	1 185 19                        ; generate_amdgcn.py:185:19
	v_mul_f32_e32 v8, v92, v8
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_fmas_f32 v5, v6, v22, v27
	.loc	1 185 38                        ; generate_amdgcn.py:185:38
	v_add_f32_e32 v6, 1.0, v9
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_exp_f32_e32 v16, v16
	v_cndmask_b32_e64 v9, 0, 0xffffffc0, s0
	v_ldexp_f32 v13, v13, v25
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_fixup_f32 v5, v5, v15, v95
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_exp_f32_e32 v15, v19
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_scale_f32 v20, null, v6, v6, v91
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(TRANS32_DEP_2)
	.loc	1 185 38                        ; generate_amdgcn.py:185:38
	v_add_f32_e32 v13, 1.0, v13
	.loc	1 190 9 is_stmt 1               ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v24.h, v4.h
	v_mov_b16_e32 v4.l, v8.h
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_ldexp_f32 v14, v16, v14
	.loc	1 185 19 is_stmt 0              ; generate_amdgcn.py:185:19
	v_mul_f32_e32 v5, v93, v5
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_scale_f32 v17, null, v13, v13, v90
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_ldexp_f32 v9, v15, v9
	.loc	1 185 38                        ; generate_amdgcn.py:185:38
	v_add_f32_e32 v14, 1.0, v14
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_rcp_f32_e32 v11, v20
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_rcp_f32_e32 v19, v17
	.loc	1 190 9 is_stmt 1               ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v24.l, v5.h
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_scale_f32 v27, s0, v90, v13, v90
	v_div_scale_f32 v15, null, v14, v14, v86
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_and_b32_e32 v24, 1, v24
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_rcp_f32_e32 v22, v15
	v_fma_f32 v21, -v17, v19, 1.0
	s_delay_alu instid0(TRANS32_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v16, -v20, v11, 1.0
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_add3_u32 v24, v5, v24, 0x7fff
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_fmac_f32_e32 v19, v21, v19
	v_fmac_f32_e32 v11, v16, v11
	v_div_scale_f32 v16, vcc_lo, v91, v6, v91
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_fma_f32 v28, -v15, v22, 1.0
	.loc	1 185 38 is_stmt 0              ; generate_amdgcn.py:185:38
	v_add_f32_e32 v9, 1.0, v9
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_dual_mul_f32 v31, v27, v19 :: v_dual_fmac_f32 v22, v28, v22
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_div_scale_f32 v23, null, v9, v9, v87
	v_div_scale_f32 v28, s1, v86, v14, v86
	v_rcp_f32_e32 v21, v23
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_mul_f32_e32 v33, v28, v22
	v_fma_f32 v32, -v23, v21, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_fmac_f32_e32 v21, v32, v21
	v_mul_f32_e32 v25, v16, v11
	v_div_scale_f32 v32, s2, v87, v9, v87
	v_fma_f32 v30, -v20, v25, v16
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_fmac_f32_e32 v25, v30, v11
	v_fma_f32 v30, -v17, v31, v27
	v_fma_f32 v16, -v20, v25, v16
	v_fma_f32 v20, -v15, v33, v28
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v11, v16, v11, v25
	v_fmac_f32_e32 v33, v20, v22
	s_mov_b32 vcc_lo, s0
	.loc	1 190 9 is_stmt 1               ; generate_amdgcn.py:190:9
	v_cmp_o_f32_e64 s0, v8, v8
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_fixup_f32 v6, v11, v6, v91
	.loc	1 185 19 is_stmt 0              ; generate_amdgcn.py:185:19
	v_dual_mul_f32 v6, v89, v6 :: v_dual_and_b32 v29, 1, v4
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 190 9 is_stmt 1               ; generate_amdgcn.py:190:9
	v_add3_u32 v29, v8, v29, 0x7fff
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_fma_f32 v8, -v15, v33, v28
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v4.l, v6.h
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_cndmask_b16 v15.h, 0x7fff, v29.h, s0
	v_cmp_eq_u32_e64 s0, 0, v0
	v_mov_b32_e32 v0, 0x5410
	v_cndmask_b32_e64 v0, 0x1054, v0, s0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_lshl_or_b32 v0, v0, 8, v0
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_dual_fmac_f32 v31, v30, v19 :: v_dual_mul_f32 v30, v32, v21
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_and_b32_e32 v0, 0x540054, v0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_fma_f32 v16, -v17, v31, v27
	v_fma_f32 v17, -v23, v30, v32
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_lshl_or_b32 v0, v0, 4, v0
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_fmas_f32 v16, v16, v19, v31
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v30, v17, v21
	s_mov_b32 vcc_lo, s1
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_and_b32_e32 v0, 0x5040504, v0
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_fixup_f32 v11, v16, v13, v90
	v_fma_f32 v13, -v23, v30, v32
	v_div_fmas_f32 v8, v8, v22, v33
	s_mov_b32 vcc_lo, s2
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 185 19 is_stmt 0              ; generate_amdgcn.py:185:19
	v_mul_f32_e32 v11, v88, v11
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_fmas_f32 v13, v13, v21, v30
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_div_fixup_f32 v8, v8, v14, v86
	.loc	1 190 9 is_stmt 1               ; generate_amdgcn.py:190:9
	v_cmp_o_f32_e32 vcc_lo, v5, v5
	v_mov_b16_e32 v14.h, v4.h
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_fixup_f32 v5, v13, v9, v87
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v9.l, v11.h
	v_mov_b16_e32 v9.h, v4.h
	.loc	1 185 19                        ; generate_amdgcn.py:185:19
	v_mul_f32_e32 v8, v84, v8
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_and_b32_e32 v13, 1, v4
	.loc	1 185 19                        ; generate_amdgcn.py:185:19
	v_mul_f32_e32 v5, v85, v5
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cndmask_b16 v15.l, 0x7fff, v24.h, vcc_lo
	v_and_b32_e32 v9, 1, v9
	v_mov_b16_e32 v4.l, v8.h
	v_add3_u32 v13, v6, v13, 0x7fff
	v_cmp_o_f32_e32 vcc_lo, v6, v6
	v_mov_b16_e32 v14.l, v5.h
	v_add3_u32 v6, v11, v9, 0x7fff
	v_and_b32_e32 v4, 1, v4
	v_cmp_o_f32_e64 s1, v8, v8
	v_cndmask_b16 v13.h, 0x7fff, v13.h, vcc_lo
	v_cmp_o_f32_e32 vcc_lo, v11, v11
	v_mov_b32_e32 v11, 0x7632
	v_and_b32_e32 v9, 1, v14
	v_add3_u32 v4, v8, v4, 0x7fff
	v_cmp_o_f32_e64 s2, v5, v5
	v_cndmask_b16 v13.l, 0x7fff, v6.h, vcc_lo
	v_cndmask_b32_e64 v8, 0x3276, v11, s0
	v_add3_u32 v9, v5, v9, 0x7fff
	v_cndmask_b16 v4.h, 0x7fff, v4.h, s1
	v_cndmask_b32_e64 v5, v26, v7, s0
	v_cndmask_b32_e64 v7, v7, v26, s0
	v_lshl_or_b32 v6, v8, 8, v8
	v_cndmask_b16 v4.l, 0x7fff, v9.h, s2
	v_cndmask_b32_e64 v8, v18, v10, s0
	v_cndmask_b32_e64 v9, v10, v18, s0
	v_cndmask_b32_e64 v10, v13, v12, s0
	v_and_b32_e32 v6, 0x760076, v6
	v_cndmask_b32_e64 v11, v12, v13, s0
	v_cndmask_b32_e64 v12, v4, v15, s0
	v_cndmask_b32_e64 v4, v15, v4, s0
	s_mov_b32 s1, 0x76543210
	v_lshl_or_b32 v6, v6, 4, v6
	v_permlanex16_b32 v7, v7, s1, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v9, v9, s1, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v11, v11, s1, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v14, v4, s1, 0xfedcba98 op_sel:[1,0]
	v_and_b32_e32 v13, 0x7060706, v6
	v_perm_b32 v4, v7, v5, v0
	v_perm_b32 v6, v9, v8, v0
	s_delay_alu instid0(VALU_DEP_3)
	v_perm_b32 v5, v7, v5, v13
	v_perm_b32 v7, v9, v8, v13
	v_perm_b32 v8, v11, v10, v0
	v_perm_b32 v9, v11, v10, v13
	v_perm_b32 v10, v14, v12, v0
	v_add_lshl_u32 v0, v2, v1, 1
	v_perm_b32 v11, v14, v12, v13
	v_add_lshl_u32 v1, v2, v3, 1
	s_clause 0x1
	buffer_store_b128 v[4:7], v0, s[20:23], 0 offen
	buffer_store_b128 v[8:11], v1, s[20:23], 0 offen
	.loc	1 79 1                          ; generate_amdgcn.py:79:1
	s_nop 0
	s_sendmsg sendmsg(MSG_DEALLOC_VGPRS)
	s_endpgm
.Ltmp18:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_int4xint4_nn_sc256_swiglu_bm64_bn128_bk128_gm4_w16_s2_weu2_sk1_evenk
		.amdhsa_group_segment_fixed_size 0
		.amdhsa_private_segment_fixed_size 0
		.amdhsa_kernarg_size 80
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
		.amdhsa_next_free_vgpr 150
		.amdhsa_next_free_sgpr 34
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
	.size	amd_strix_halo_gfx1151_int4xint4_nn_sc256_swiglu_bm64_bn128_bk128_gm4_w16_s2_weu2_sk1_evenk, .Lfunc_end0-amd_strix_halo_gfx1151_int4xint4_nn_sc256_swiglu_bm64_bn128_bk128_gm4_w16_s2_weu2_sk1_evenk
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_int4xint4_nn_sc256_swiglu_bm64_bn128_bk128_gm4_w16_s2_weu2_sk1_evenk.num_vgpr, 150
	.set amd_strix_halo_gfx1151_int4xint4_nn_sc256_swiglu_bm64_bn128_bk128_gm4_w16_s2_weu2_sk1_evenk.num_agpr, 0
	.set amd_strix_halo_gfx1151_int4xint4_nn_sc256_swiglu_bm64_bn128_bk128_gm4_w16_s2_weu2_sk1_evenk.numbered_sgpr, 34
	.set amd_strix_halo_gfx1151_int4xint4_nn_sc256_swiglu_bm64_bn128_bk128_gm4_w16_s2_weu2_sk1_evenk.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_int4xint4_nn_sc256_swiglu_bm64_bn128_bk128_gm4_w16_s2_weu2_sk1_evenk.private_seg_size, 0
	.set amd_strix_halo_gfx1151_int4xint4_nn_sc256_swiglu_bm64_bn128_bk128_gm4_w16_s2_weu2_sk1_evenk.uses_vcc, 1
	.set amd_strix_halo_gfx1151_int4xint4_nn_sc256_swiglu_bm64_bn128_bk128_gm4_w16_s2_weu2_sk1_evenk.uses_flat_scratch, 0
	.set amd_strix_halo_gfx1151_int4xint4_nn_sc256_swiglu_bm64_bn128_bk128_gm4_w16_s2_weu2_sk1_evenk.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_int4xint4_nn_sc256_swiglu_bm64_bn128_bk128_gm4_w16_s2_weu2_sk1_evenk.has_recursion, 0
	.set amd_strix_halo_gfx1151_int4xint4_nn_sc256_swiglu_bm64_bn128_bk128_gm4_w16_s2_weu2_sk1_evenk.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 11524
; TotalNumSgprs: 36
; NumVgprs: 150
; ScratchSize: 0
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 18
; NumSGPRsForWavesPerEU: 36
; NumVGPRsForWavesPerEU: 150
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
	.byte	1                               ; Abbrev [1] 0xb:0x5c DW_TAG_compile_unit
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
	.byte	3                               ; Abbrev [3] 0x30:0x36 DW_TAG_subprogram
	.quad	.Lfunc_begin0                   ; DW_AT_low_pc
	.long	.Lfunc_end0-.Lfunc_begin0       ; DW_AT_high_pc
	.long	42                              ; DW_AT_abstract_origin
	.byte	4                               ; Abbrev [4] 0x41:0xc DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges0                 ; DW_AT_ranges
	.byte	1                               ; DW_AT_call_file
	.byte	87                              ; DW_AT_call_line
	.byte	17                              ; DW_AT_call_column
	.byte	4                               ; Abbrev [4] 0x4d:0xc DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges1                 ; DW_AT_ranges
	.byte	1                               ; DW_AT_call_file
	.byte	86                              ; DW_AT_call_line
	.byte	17                              ; DW_AT_call_column
	.byte	4                               ; Abbrev [4] 0x59:0xc DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges2                 ; DW_AT_ranges
	.byte	1                               ; DW_AT_call_file
	.byte	140                             ; DW_AT_call_line
	.byte	22                              ; DW_AT_call_column
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
	.quad	0
	.quad	0
.Ldebug_ranges1:
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
	.quad	0
	.quad	0
.Ldebug_ranges2:
	.quad	.Ltmp12-.Lfunc_begin0
	.quad	.Ltmp13-.Lfunc_begin0
	.quad	.Ltmp14-.Lfunc_begin0
	.quad	.Ltmp15-.Lfunc_begin0
	.quad	.Ltmp16-.Lfunc_begin0
	.quad	.Ltmp17-.Lfunc_begin0
	.quad	0
	.quad	0
	.section	.debug_str,"MS",@progbits,1
.Linfo_string0:
	.asciz	"triton"                        ; string offset=0 ; triton
.Linfo_string1:
	.asciz	"generate_amdgcn.py"            ; string offset=7 ; generate_amdgcn.py
.Linfo_string2:
	.asciz	"<repo>/scripts" ; string offset=26 ; <repo>/scripts
.Linfo_string3:
	.asciz	"amd_strix_halo_gfx1151_int4xint4_nn_sc256_swiglu_bm64_bn128_bk128_gm4_w16_s2_weu2_sk1_evenk"             ; string offset=75 ; amd_strix_halo_gfx1151_int4xint4_nn_sc256_swiglu_bm64_bn128_bk128_gm4_w16_s2_weu2_sk1_evenk
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
      - .offset:         48
        .size:           4
        .value_kind:     by_value
      - .offset:         52
        .size:           4
        .value_kind:     by_value
      - .offset:         56
        .size:           4
        .value_kind:     by_value
      - .address_space:  global
        .offset:         64
        .size:           8
        .value_kind:     global_buffer
      - .address_space:  global
        .offset:         72
        .size:           8
        .value_kind:     global_buffer
    .group_segment_fixed_size: 0
    .kernarg_segment_align: 8
    .kernarg_segment_size: 80
    .max_flat_workgroup_size: 512
    .name:           amd_strix_halo_gfx1151_int4xint4_nn_sc256_swiglu_bm64_bn128_bk128_gm4_w16_s2_weu2_sk1_evenk
    .private_segment_fixed_size: 0
    .sgpr_count:     36
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_int4xint4_nn_sc256_swiglu_bm64_bn128_bk128_gm4_w16_s2_weu2_sk1_evenk.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     150
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
