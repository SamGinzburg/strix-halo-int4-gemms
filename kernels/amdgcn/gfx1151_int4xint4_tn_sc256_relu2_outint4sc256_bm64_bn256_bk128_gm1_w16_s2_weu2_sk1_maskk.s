	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_int4xint4_tn_sc256_relu2_outint4sc256_bm64_bn256_bk128_gm1_w16_s2_weu2_sk1_maskk               ; -- Begin function amd_strix_halo_gfx1151_int4xint4_tn_sc256_relu2_outint4sc256_bm64_bn256_bk128_gm1_w16_s2_weu2_sk1_maskk
	.p2align	8
	.type	amd_strix_halo_gfx1151_int4xint4_tn_sc256_relu2_outint4sc256_bm64_bn256_bk128_gm1_w16_s2_weu2_sk1_maskk,@function
amd_strix_halo_gfx1151_int4xint4_tn_sc256_relu2_outint4sc256_bm64_bn256_bk128_gm1_w16_s2_weu2_sk1_maskk:                      ; @amd_strix_halo_gfx1151_int4xint4_tn_sc256_relu2_outint4sc256_bm64_bn256_bk128_gm1_w16_s2_weu2_sk1_maskk
.Lfunc_begin0:
	.file	1 "<repo>/scripts" "generate_amdgcn.py"
	.loc	1 106 0                         ; generate_amdgcn.py:106:0
	.cfi_sections .debug_frame
	.cfi_startproc
; %bb.0:
	s_clause 0x1
	s_load_b64 s[28:29], s[0:1], 0x30
	s_load_b128 s[20:23], s[0:1], 0x20
.Ltmp0:
	.loc	1 117 16 prologue_end           ; generate_amdgcn.py:117:16
	s_abs_i32 s7, s2
	s_load_b32 s15, s[0:1], 0x38
	v_dual_mov_b32 v33, 0 :: v_dual_and_b32 v78, 15, v0
	v_dual_mov_b32 v3, 0 :: v_dual_mov_b32 v6, 0
	v_dual_mov_b32 v5, 0 :: v_dual_mov_b32 v12, 0
	v_dual_mov_b32 v9, 0 :: v_dual_mov_b32 v14, 0
	v_dual_mov_b32 v11, 0 :: v_dual_mov_b32 v16, 0
	v_dual_mov_b32 v13, 0 :: v_dual_mov_b32 v18, 0
	v_dual_mov_b32 v15, 0 :: v_dual_mov_b32 v20, 0
	v_dual_mov_b32 v17, 0 :: v_dual_mov_b32 v22, 0
.Ltmp1:
	.file	2 "<triton>/python/triton/language" "standard.py"
	.loc	2 43 13                         ; standard.py:43:13 @[ generate_amdgcn.py:115:17 ]
	s_waitcnt lgkmcnt(0)
	s_add_i32 s4, s29, 0xff
.Ltmp2:
	.loc	2 43 13 is_stmt 0               ; standard.py:43:13 @[ generate_amdgcn.py:114:17 ]
	s_add_i32 s8, s28, 63
.Ltmp3:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:115:17 ]
	s_ashr_i32 s5, s4, 31
.Ltmp4:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:114:17 ]
	s_ashr_i32 s10, s8, 31
.Ltmp5:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:115:17 ]
	s_lshr_b32 s5, s5, 24
.Ltmp6:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:114:17 ]
	s_lshr_b32 s10, s10, 26
.Ltmp7:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:115:17 ]
	s_add_i32 s4, s4, s5
.Ltmp8:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:114:17 ]
	s_add_i32 s8, s8, s10
.Ltmp9:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:115:17 ]
	s_ashr_i32 s4, s4, 8
.Ltmp10:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:114:17 ]
	s_ashr_i32 s8, s8, 6
.Ltmp11:
	.loc	1 117 16 is_stmt 1              ; generate_amdgcn.py:117:16
	s_abs_i32 s5, s4
	v_dual_mov_b32 v19, 0 :: v_dual_mov_b32 v24, 0
	s_cvt_f32_u32 s6, s5
	s_sub_i32 s9, 0, s5
	v_dual_mov_b32 v21, 0 :: v_dual_mov_b32 v26, 0
	s_delay_alu instid0(SALU_CYCLE_1)
	v_rcp_iflag_f32_e32 v1, s6
	v_dual_mov_b32 v25, 0 :: v_dual_mov_b32 v28, 0
	v_dual_mov_b32 v27, 0 :: v_dual_mov_b32 v30, 0
	v_dual_mov_b32 v29, 0 :: v_dual_mov_b32 v32, 0
	v_dual_mov_b32 v31, 0 :: v_dual_mov_b32 v34, 0
	v_mov_b32_e32 v4, 0
	s_delay_alu instid0(TRANS32_DEP_1)
	v_readfirstlane_b32 s6, v1
	v_mov_b32_e32 v1, 0
	v_dual_mov_b32 v35, 0 :: v_dual_and_b32 v82, 0xe0, v0
	v_dual_mov_b32 v36, 0 :: v_dual_and_b32 v83, 7, v0
	s_mul_f32 s6, s6, 0x4f7ffffe
	.loc	1 126 32                        ; generate_amdgcn.py:126:32
	v_lshrrev_b32_e32 v77, 4, v0
	v_and_b32_e32 v79, 0x100, v0
	.loc	1 127 32                        ; generate_amdgcn.py:127:32
	v_and_b32_e32 v81, 16, v0
	.loc	1 117 16                        ; generate_amdgcn.py:117:16
	s_cvt_u32_f32 s6, s6
	v_dual_mov_b32 v37, 0 :: v_dual_lshlrev_b32 v80, 4, v78
	s_mov_b32 s12, 0
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
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
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_4) | instid1(SALU_CYCLE_1)
	.loc	1 119 31                        ; generate_amdgcn.py:119:31
	s_sub_i32 s6, s8, s5
	.loc	1 120 29                        ; generate_amdgcn.py:120:29
	s_mul_i32 s4, s5, s4
	.loc	1 119 20                        ; generate_amdgcn.py:119:20
	s_min_i32 s6, s6, 1
	.loc	1 120 29                        ; generate_amdgcn.py:120:29
	s_sub_i32 s2, s2, s4
	.loc	1 121 13                        ; generate_amdgcn.py:121:13
	s_abs_i32 s7, s6
	s_cvt_f32_u32 s8, s7
	s_sub_i32 s9, 0, s7
	s_delay_alu instid0(SALU_CYCLE_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_iflag_f32_e32 v2, s8
	v_readfirstlane_b32 s8, v2
	s_mul_f32 s8, s8, 0x4f7ffffe
	s_delay_alu instid0(SALU_CYCLE_3) | instskip(NEXT) | instid1(SALU_CYCLE_3)
	s_cvt_u32_f32 s8, s8
	s_mul_i32 s9, s9, s8
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_2) | instid1(SALU_CYCLE_1)
	s_mul_hi_u32 s4, s8, s9
	s_abs_i32 s9, s2
	s_add_i32 s8, s8, s4
	s_mul_hi_u32 s4, s9, s8
	s_xor_b32 s8, s2, s6
	s_mul_i32 s10, s4, s7
	s_ashr_i32 s13, s8, 31
	s_sub_i32 s8, s9, s10
	s_add_i32 s9, s4, 1
	s_sub_i32 s10, s8, s7
	s_cmp_ge_u32 s8, s7
	s_cselect_b32 s4, s9, s4
	s_cselect_b32 s8, s10, s8
	s_add_i32 s9, s4, 1
	s_cmp_ge_u32 s8, s7
	s_cselect_b32 s4, s9, s4
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_xor_b32 s14, s4, s13
	s_sub_i32 s30, s14, s13
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	.loc	1 120 28                        ; generate_amdgcn.py:120:28
	s_mul_i32 s4, s30, s6
	s_sub_i32 s4, s2, s4
.Ltmp12:
	.loc	2 43 13                         ; standard.py:43:13 @[ generate_amdgcn.py:181:22 ]
	s_add_i32 s2, s15, 0xff
.Ltmp13:
	.loc	1 120 13                        ; generate_amdgcn.py:120:13
	s_add_i32 s4, s4, s5
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 126 14                        ; generate_amdgcn.py:126:14
	s_lshl_b32 s31, s4, 6
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	s_cmpk_lt_i32 s2, 0x100
	s_cbranch_scc1 .LBB0_4
; %bb.1:                                ; %.lr.ph
	.loc	1 126 32                        ; generate_amdgcn.py:126:32
	v_lshrrev_b32_e32 v2, 3, v0
	s_load_b256 s[4:11], s[0:1], 0x0
	.loc	1 123 22                        ; generate_amdgcn.py:123:22
	s_lshr_b32 s0, s15, 31
	.loc	1 126 32                        ; generate_amdgcn.py:126:32
	v_or_b32_e32 v1, 32, v77
	.loc	1 197 39                        ; generate_amdgcn.py:197:39
	s_lshl_b32 s33, s3, 6
	.loc	1 126 32                        ; generate_amdgcn.py:126:32
	v_lshrrev_b32_e32 v4, 4, v79
.Ltmp14:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:181:22 ]
	s_ashr_i32 s1, s2, 31
.Ltmp15:
	.loc	1 123 22                        ; generate_amdgcn.py:123:22
	s_add_i32 s15, s15, s0
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_or_b32_e32 v9, s33, v2
	v_lshl_or_b32 v10, s14, 9, v82
.Ltmp16:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:181:22 ]
	s_lshr_b32 s0, s1, 24
.Ltmp17:
	.loc	1 123 22                        ; generate_amdgcn.py:123:22
	s_ashr_i32 s1, s15, 1
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	s_lshl_b32 s3, s13, 9
	v_sub_nc_u32_e32 v84, s1, v1
	v_add3_u32 v1, s31, v4, v78
.Ltmp18:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:181:22 ]
	s_add_i32 s2, s2, s0
.Ltmp19:
	.loc	1 126 32                        ; generate_amdgcn.py:126:32
	v_or_b32_e32 v5, v4, v78
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_subrev_nc_u32_e32 v91, s3, v10
	s_lshl_b32 s3, s13, 8
	s_mov_b32 s13, s12
	s_mov_b32 s16, s12
	s_mov_b32 s17, s12
	s_mov_b32 s18, s12
	s_mov_b32 s19, s12
	v_add_nc_u32_e32 v4, 64, v9
.Ltmp20:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:181:22 ]
	s_ashr_i32 s34, s2, 8
.Ltmp21:
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_sub_nc_u32_e32 v88, s1, v2
	v_add_nc_u32_e32 v2, 32, v1
	v_mul_lo_u32 v1, s34, v1
	v_sub_nc_u32_e32 v89, s1, v77
	v_cmp_gt_i32_e64 s1, 0x80, v4
	v_mul_lo_u32 v4, s28, v4
	v_or_b32_e32 v8, s33, v77
	.loc	1 127 32                        ; generate_amdgcn.py:127:32
	v_lshrrev_b32_e32 v3, 1, v82
	v_dual_mov_b32 v109, 0 :: v_dual_lshlrev_b32 v6, 3, v83
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_mul_lo_u32 v2, s34, v2
	v_lshlrev_b32_e32 v93, 1, v1
	v_dual_mov_b32 v132, 0 :: v_dual_add_nc_u32 v1, 0x60, v8
	v_add3_u32 v87, 0, v78, v3
	v_add_nc_u32_e32 v3, 64, v8
	v_add3_u32 v94, v4, s31, v6
	v_or_b32_e32 v4, 32, v8
	v_add_nc_u32_e32 v86, 0, v5
	v_lshrrev_b32_e32 v5, 3, v81
	s_lshl_b32 s14, s14, 8
	v_dual_mov_b32 v131, 0 :: v_dual_lshlrev_b32 v92, 1, v2
	v_mad_u64_u32 v[1:2], null, s29, v1, s[14:15]
	v_cmp_gt_i32_e64 s2, 0x80, v3
	v_mad_u64_u32 v[2:3], null, s29, v3, s[14:15]
	v_mad_u64_u32 v[3:4], null, s29, v4, s[14:15]
	v_and_b32_e32 v90, 2, v5
	v_mad_u64_u32 v[4:5], null, s29, v8, s[14:15]
	s_mov_b32 s14, s12
	s_mov_b32 s15, s12
	v_lshlrev_b32_e32 v7, 3, v0
	v_mul_lo_u32 v5, s28, v9
	v_cmp_gt_i32_e64 s0, 0x80, v8
	v_subrev_nc_u32_e32 v101, s3, v1
	v_subrev_nc_u32_e32 v104, s3, v2
	v_add_nc_u32_e32 v85, 0, v7
	v_subrev_nc_u32_e32 v106, s3, v3
	v_subrev_nc_u32_e32 v108, s3, v4
	v_dual_mov_b32 v130, 0 :: v_dual_mov_b32 v127, 0
	v_add3_u32 v110, v5, s31, v6
	v_dual_mov_b32 v129, 0 :: v_dual_add_nc_u32 v116, v85, v7
	v_dual_mov_b32 v1, s12 :: v_dual_mov_b32 v2, s13
	v_dual_mov_b32 v3, s14 :: v_dual_mov_b32 v4, s15
	v_dual_mov_b32 v5, s16 :: v_dual_mov_b32 v6, s17
	v_dual_mov_b32 v7, s18 :: v_dual_mov_b32 v8, s19
	v_dual_mov_b32 v128, 0 :: v_dual_mov_b32 v125, 0
	v_dual_mov_b32 v126, 0 :: v_dual_mov_b32 v123, 0
	v_dual_mov_b32 v124, 0 :: v_dual_mov_b32 v121, 0
	v_dual_mov_b32 v122, 0 :: v_dual_mov_b32 v119, 0
	v_dual_mov_b32 v120, 0 :: v_dual_mov_b32 v117, 0
	v_dual_mov_b32 v118, 0 :: v_dual_mov_b32 v115, 0
	v_dual_mov_b32 v114, 0 :: v_dual_mov_b32 v113, 0
	v_dual_mov_b32 v112, 0 :: v_dual_mov_b32 v111, 0
	v_dual_mov_b32 v107, 0 :: v_dual_mov_b32 v102, 0
	v_dual_mov_b32 v105, 0 :: v_dual_mov_b32 v100, 0
	v_dual_mov_b32 v103, 0 :: v_dual_mov_b32 v98, 0
	v_dual_mov_b32 v99, 0 :: v_dual_mov_b32 v96, 0
	v_mov_b32_e32 v97, 0
	v_mov_b32_e32 v95, 0
	s_mov_b32 s27, 0x31027000
	s_mov_b32 s26, 0x7ffffffe
	s_waitcnt lgkmcnt(0)
	s_and_b32 s9, s9, 0xffff
	s_and_b32 s5, s5, 0xffff
	s_and_b32 s7, s7, 0xffff
	s_and_b32 s11, s11, 0xffff
	s_lshl_b32 s35, s29, 1
	s_lshl_b32 s28, s28, 7
	s_lshl_b32 s36, s29, 7
	s_mov_b32 s24, s8
	s_mov_b32 s25, s9
	s_mov_b32 s12, s4
	s_mov_b32 s13, s5
	s_mov_b32 s14, s26
	s_mov_b32 s15, s27
	s_mov_b32 s16, s6
	s_mov_b32 s17, s7
	s_mov_b32 s18, s26
	s_mov_b32 s19, s27
	s_mov_b32 s8, s10
	s_mov_b32 s9, s11
	s_mov_b32 s10, s26
	s_mov_b32 s11, s27
	v_cmp_gt_i32_e32 vcc_lo, 0x80, v9
.LBB0_2:                                ; =>This Inner Loop Header: Depth=1
	.loc	1 195 18                        ; generate_amdgcn.py:195:18
	s_clause 0x1
	buffer_load_u16 v9, v93, s[24:27], 0 offen
	buffer_load_u16 v10, v92, s[24:27], 0 offen
	.loc	1 198 27                        ; generate_amdgcn.py:198:27
	v_cmp_lt_i32_e64 s3, s33, v88
	v_cmp_lt_i32_e64 s4, s33, v89
	v_cmp_lt_i32_e64 s5, s33, v84
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_add_nc_u32_e32 v93, 2, v93
	s_add_i32 s34, s34, -1
	.loc	1 198 26                        ; generate_amdgcn.py:198:26
	s_and_b32 s3, s3, vcc_lo
	s_and_b32 s4, s4, s0
	s_and_b32 s5, s5, s0
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_add_nc_u32_e32 v92, 2, v92
	.loc	1 195 18                        ; generate_amdgcn.py:195:18
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v133, 16, v10
	v_lshlrev_b32_e32 v134, 16, v9
	.loc	1 214 26                        ; generate_amdgcn.py:214:26
	v_cndmask_b32_e64 v9, 0x80000000, v110, s3
	.loc	1 220 26                        ; generate_amdgcn.py:220:26
	v_add_nc_u32_e32 v13, v80, v106
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_add_nc_u32_e32 v106, s36, v106
	v_add_nc_u32_e32 v110, s28, v110
	.loc	1 214 26                        ; generate_amdgcn.py:214:26
	buffer_load_b64 v[17:18], v9, s[12:15], 0 offen
	.loc	1 220 34                        ; generate_amdgcn.py:220:34
	v_add_nc_u32_e32 v9, v80, v108
	.loc	1 220 26 is_stmt 0              ; generate_amdgcn.py:220:26
	v_cndmask_b32_e64 v13, 0x80000000, v13, s5
	.loc	1 198 27 is_stmt 1              ; generate_amdgcn.py:198:27
	s_add_i32 s5, s33, 64
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_add_nc_u32_e32 v108, s36, v108
	.loc	1 198 27                        ; generate_amdgcn.py:198:27
	v_cmp_lt_i32_e64 s3, s5, v88
	.loc	1 220 26                        ; generate_amdgcn.py:220:26
	v_cndmask_b32_e64 v9, 0x80000000, v9, s4
	buffer_load_b128 v[13:16], v13, s[16:19], 0 offen
	.loc	1 198 27                        ; generate_amdgcn.py:198:27
	v_cmp_lt_i32_e64 s4, s5, v89
	v_cmp_lt_i32_e64 s5, s5, v84
	.loc	1 198 26 is_stmt 0              ; generate_amdgcn.py:198:26
	s_and_b32 s3, s3, s1
	.loc	1 220 26 is_stmt 1              ; generate_amdgcn.py:220:26
	buffer_load_b128 v[9:12], v9, s[16:19], 0 offen
	.loc	1 214 26                        ; generate_amdgcn.py:214:26
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_waitcnt vmcnt(2)
	ds_store_b64 v85, v[17:18] offset:16384
	.loc	1 220 26                        ; generate_amdgcn.py:220:26
	s_waitcnt vmcnt(0)
	ds_store_b128 v116, v[9:12]
	ds_store_b128 v116, v[13:16] offset:8192
	.loc	1 214 26                        ; generate_amdgcn.py:214:26
	v_cndmask_b32_e64 v9, 0x80000000, v94, s3
	.loc	1 198 26                        ; generate_amdgcn.py:198:26
	s_and_b32 s4, s4, s2
	.loc	1 220 26                        ; generate_amdgcn.py:220:26
	v_add_nc_u32_e32 v10, v80, v101
	.loc	1 198 26                        ; generate_amdgcn.py:198:26
	s_and_b32 s5, s5, s2
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_add_nc_u32_e32 v94, s28, v94
	.loc	1 214 26                        ; generate_amdgcn.py:214:26
	buffer_load_b64 v[49:50], v9, s[12:15], 0 offen
	.loc	1 220 34                        ; generate_amdgcn.py:220:34
	v_add_nc_u32_e32 v9, v80, v104
	.loc	1 214 26                        ; generate_amdgcn.py:214:26
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_add_nc_u32_e32 v101, s36, v101
	v_add_nc_u32_e32 v104, s36, v104
	.loc	1 220 26                        ; generate_amdgcn.py:220:26
	v_cndmask_b32_e64 v9, 0x80000000, v9, s4
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	s_addk_i32 s33, 0x80
	s_cmp_lg_u32 s34, 0
	.loc	1 220 26                        ; generate_amdgcn.py:220:26
	buffer_load_b128 v[41:44], v9, s[16:19], 0 offen
	v_cndmask_b32_e64 v9, 0x80000000, v10, s5
	buffer_load_b128 v[45:48], v9, s[16:19], 0 offen
	.loc	1 221 27                        ; generate_amdgcn.py:221:27
	ds_load_u8 v9, v86 offset:16704
	ds_load_u8 v10, v86 offset:16640
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	ds_load_u8 v10, v86 offset:16832
	ds_load_u8 v11, v86 offset:16768
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v26, v10, 16, v9
	ds_load_u8 v9, v86 offset:16448
	ds_load_u8 v10, v86 offset:16384
	ds_load_u8 v135, v86 offset:16416
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	ds_load_u8 v10, v86 offset:16576
	ds_load_u8 v11, v86 offset:16512
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v25, v10, 16, v9
	ds_load_u8 v9, v87 offset:1280
	ds_load_u8 v10, v87 offset:1024
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	ds_load_u8 v10, v87 offset:1792
	ds_load_u8 v11, v87 offset:1536
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v76, v10, 16, v9
	ds_load_u8 v9, v87 offset:256
	ds_load_u8 v10, v87
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	ds_load_u8 v10, v87 offset:768
	ds_load_u8 v11, v87 offset:512
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v75, v10, 16, v9
	ds_load_u8 v9, v86 offset:17216
	ds_load_u8 v10, v86 offset:17152
	v_wmma_i32_16x16x16_iu4 v[17:24], v[75:76], v[25:26], v[1:8] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	ds_load_u8 v10, v86 offset:17344
	ds_load_u8 v11, v86 offset:17280
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v28, v10, 16, v9
	ds_load_u8 v9, v86 offset:16960
	ds_load_u8 v10, v86 offset:16896
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	ds_load_u8 v10, v86 offset:17088
	ds_load_u8 v11, v86 offset:17024
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v27, v10, 16, v9
	ds_load_u8 v9, v87 offset:3328
	ds_load_u8 v10, v87 offset:3072
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	ds_load_u8 v10, v87 offset:3840
	ds_load_u8 v11, v87 offset:3584
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v74, v10, 16, v9
	ds_load_u8 v9, v87 offset:2304
	ds_load_u8 v10, v87 offset:2048
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	ds_load_u8 v10, v87 offset:2816
	ds_load_u8 v11, v87 offset:2560
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v73, v10, 16, v9
	ds_load_u8 v9, v86 offset:17728
	ds_load_u8 v10, v86 offset:17664
	v_wmma_i32_16x16x16_iu4 v[17:24], v[73:74], v[27:28], v[17:24] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	ds_load_u8 v10, v86 offset:17856
	ds_load_u8 v11, v86 offset:17792
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v30, v10, 16, v9
	ds_load_u8 v9, v86 offset:17472
	ds_load_u8 v10, v86 offset:17408
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	ds_load_u8 v10, v86 offset:17600
	ds_load_u8 v11, v86 offset:17536
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v29, v10, 16, v9
	ds_load_u8 v9, v87 offset:5376
	ds_load_u8 v10, v87 offset:5120
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	ds_load_u8 v10, v87 offset:5888
	ds_load_u8 v11, v87 offset:5632
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v72, v10, 16, v9
	ds_load_u8 v9, v87 offset:4352
	ds_load_u8 v10, v87 offset:4096
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	ds_load_u8 v10, v87 offset:4864
	ds_load_u8 v11, v87 offset:4608
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v71, v10, 16, v9
	ds_load_u8 v9, v86 offset:18240
	ds_load_u8 v10, v86 offset:18176
	v_wmma_i32_16x16x16_iu4 v[17:24], v[71:72], v[29:30], v[17:24] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	ds_load_u8 v10, v86 offset:18368
	ds_load_u8 v11, v86 offset:18304
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v32, v10, 16, v9
	ds_load_u8 v9, v86 offset:17984
	ds_load_u8 v10, v86 offset:17920
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	ds_load_u8 v10, v86 offset:18112
	ds_load_u8 v11, v86 offset:18048
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v31, v10, 16, v9
	ds_load_u8 v9, v87 offset:7424
	ds_load_u8 v10, v87 offset:7168
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	ds_load_u8 v10, v87 offset:7936
	ds_load_u8 v11, v87 offset:7680
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v70, v10, 16, v9
	ds_load_u8 v9, v87 offset:6400
	ds_load_u8 v10, v87 offset:6144
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	ds_load_u8 v10, v87 offset:6912
	ds_load_u8 v11, v87 offset:6656
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v69, v10, 16, v9
	ds_load_u8 v9, v86 offset:18752
	ds_load_u8 v10, v86 offset:18688
	v_wmma_i32_16x16x16_iu4 v[17:24], v[69:70], v[31:32], v[17:24] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	ds_load_u8 v10, v86 offset:18880
	ds_load_u8 v11, v86 offset:18816
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v62, v10, 16, v9
	ds_load_u8 v9, v86 offset:18496
	ds_load_u8 v10, v86 offset:18432
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	ds_load_u8 v10, v86 offset:18624
	ds_load_u8 v11, v86 offset:18560
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v61, v10, 16, v9
	ds_load_u8 v9, v87 offset:9472
	ds_load_u8 v10, v87 offset:9216
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	ds_load_u8 v10, v87 offset:9984
	ds_load_u8 v11, v87 offset:9728
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v40, v10, 16, v9
	ds_load_u8 v9, v87 offset:8448
	ds_load_u8 v10, v87 offset:8192
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	ds_load_u8 v10, v87 offset:8960
	ds_load_u8 v11, v87 offset:8704
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v39, v10, 16, v9
	ds_load_u8 v9, v86 offset:19264
	ds_load_u8 v10, v86 offset:19200
	v_wmma_i32_16x16x16_iu4 v[17:24], v[39:40], v[61:62], v[17:24] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	ds_load_u8 v10, v86 offset:19392
	ds_load_u8 v11, v86 offset:19328
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v64, v10, 16, v9
	ds_load_u8 v9, v86 offset:19008
	ds_load_u8 v10, v86 offset:18944
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	ds_load_u8 v10, v86 offset:19136
	ds_load_u8 v11, v86 offset:19072
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v63, v10, 16, v9
	ds_load_u8 v9, v87 offset:11520
	ds_load_u8 v10, v87 offset:11264
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	ds_load_u8 v10, v87 offset:12032
	ds_load_u8 v11, v87 offset:11776
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v38, v10, 16, v9
	ds_load_u8 v9, v87 offset:10496
	ds_load_u8 v10, v87 offset:10240
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	ds_load_u8 v10, v87 offset:11008
	ds_load_u8 v11, v87 offset:10752
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v37, v10, 16, v9
	ds_load_u8 v9, v86 offset:19776
	ds_load_u8 v10, v86 offset:19712
	v_wmma_i32_16x16x16_iu4 v[17:24], v[37:38], v[63:64], v[17:24] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	ds_load_u8 v10, v86 offset:19904
	ds_load_u8 v11, v86 offset:19840
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v66, v10, 16, v9
	ds_load_u8 v9, v86 offset:19520
	ds_load_u8 v10, v86 offset:19456
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	ds_load_u8 v10, v86 offset:19648
	ds_load_u8 v11, v86 offset:19584
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v65, v10, 16, v9
	ds_load_u8 v9, v87 offset:13568
	ds_load_u8 v10, v87 offset:13312
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	ds_load_u8 v10, v87 offset:14080
	ds_load_u8 v11, v87 offset:13824
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v36, v10, 16, v9
	ds_load_u8 v9, v87 offset:12544
	ds_load_u8 v10, v87 offset:12288
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	ds_load_u8 v10, v87 offset:13056
	ds_load_u8 v11, v87 offset:12800
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v35, v10, 16, v9
	ds_load_u8 v9, v86 offset:20288
	ds_load_u8 v10, v86 offset:20224
	v_wmma_i32_16x16x16_iu4 v[17:24], v[35:36], v[65:66], v[17:24] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	ds_load_u8 v10, v86 offset:20416
	ds_load_u8 v11, v86 offset:20352
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v68, v10, 16, v9
	ds_load_u8 v9, v86 offset:20032
	ds_load_u8 v10, v86 offset:19968
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	ds_load_u8 v10, v86 offset:20160
	ds_load_u8 v11, v86 offset:20096
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v67, v10, 16, v9
	ds_load_u8 v9, v87 offset:15616
	ds_load_u8 v10, v87 offset:15360
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	ds_load_u8 v10, v87 offset:16128
	ds_load_u8 v11, v87 offset:15872
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v34, v10, 16, v9
	ds_load_u8 v9, v87 offset:14592
	ds_load_u8 v10, v87 offset:14336
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	ds_load_u8 v10, v87 offset:15104
	ds_load_u8 v11, v87 offset:14848
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v33, v10, 16, v9
	ds_load_u8 v9, v87 offset:1408
	ds_load_u8 v10, v87 offset:1152
	v_wmma_i32_16x16x16_iu4 v[17:24], v[33:34], v[67:68], v[17:24] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	ds_load_u8 v10, v87 offset:1920
	ds_load_u8 v11, v87 offset:1664
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v52, v10, 16, v9
	ds_load_u8 v9, v87 offset:384
	ds_load_u8 v10, v87 offset:128
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	ds_load_u8 v10, v87 offset:896
	ds_load_u8 v11, v87 offset:640
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v51, v10, 16, v9
	v_wmma_i32_16x16x16_iu4 v[9:16], v[51:52], v[25:26], v[1:8] neg_lo:[1,1,0]
	ds_load_u8 v25, v87 offset:3456
	ds_load_u8 v26, v87 offset:3200
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v25, v26, v25, 0xc0c0004
	ds_load_u8 v26, v87 offset:3968
	ds_load_u8 v53, v87 offset:3712
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v26, v53, v26, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v54, v26, 16, v25
	ds_load_u8 v25, v87 offset:2432
	ds_load_u8 v26, v87 offset:2176
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v25, v26, v25, 0xc0c0004
	ds_load_u8 v26, v87 offset:2944
	ds_load_u8 v53, v87 offset:2688
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v26, v53, v26, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v53, v26, 16, v25
	ds_load_u8 v25, v87 offset:5504
	ds_load_u8 v26, v87 offset:5248
	v_wmma_i32_16x16x16_iu4 v[9:16], v[53:54], v[27:28], v[9:16] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v25, v26, v25, 0xc0c0004
	ds_load_u8 v26, v87 offset:6016
	ds_load_u8 v27, v87 offset:5760
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v26, v27, v26, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v56, v26, 16, v25
	ds_load_u8 v25, v87 offset:4480
	ds_load_u8 v26, v87 offset:4224
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v25, v26, v25, 0xc0c0004
	ds_load_u8 v26, v87 offset:4992
	ds_load_u8 v27, v87 offset:4736
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v26, v27, v26, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v55, v26, 16, v25
	ds_load_u8 v25, v87 offset:7552
	ds_load_u8 v26, v87 offset:7296
	v_wmma_i32_16x16x16_iu4 v[9:16], v[55:56], v[29:30], v[9:16] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v25, v26, v25, 0xc0c0004
	ds_load_u8 v26, v87 offset:8064
	ds_load_u8 v27, v87 offset:7808
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v26, v27, v26, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v58, v26, 16, v25
	ds_load_u8 v25, v87 offset:6528
	ds_load_u8 v26, v87 offset:6272
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v25, v26, v25, 0xc0c0004
	ds_load_u8 v26, v87 offset:7040
	ds_load_u8 v27, v87 offset:6784
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v26, v27, v26, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v57, v26, 16, v25
	ds_load_u8 v25, v87 offset:9600
	ds_load_u8 v26, v87 offset:9344
	v_wmma_i32_16x16x16_iu4 v[9:16], v[57:58], v[31:32], v[9:16] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v25, v26, v25, 0xc0c0004
	ds_load_u8 v26, v87 offset:10112
	ds_load_u8 v27, v87 offset:9856
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v26, v27, v26, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v60, v26, 16, v25
	ds_load_u8 v25, v87 offset:8576
	ds_load_u8 v26, v87 offset:8320
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v25, v26, v25, 0xc0c0004
	ds_load_u8 v26, v87 offset:9088
	ds_load_u8 v27, v87 offset:8832
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v26, v27, v26, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v59, v26, 16, v25
	ds_load_u8 v25, v87 offset:11648
	ds_load_u8 v26, v87 offset:11392
	v_wmma_i32_16x16x16_iu4 v[9:16], v[59:60], v[61:62], v[9:16] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v25, v26, v25, 0xc0c0004
	ds_load_u8 v26, v87 offset:12160
	ds_load_u8 v27, v87 offset:11904
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v26, v27, v26, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v62, v26, 16, v25
	ds_load_u8 v25, v87 offset:10624
	ds_load_u8 v26, v87 offset:10368
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v25, v26, v25, 0xc0c0004
	ds_load_u8 v26, v87 offset:11136
	ds_load_u8 v27, v87 offset:10880
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v26, v27, v26, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v61, v26, 16, v25
	ds_load_u8 v25, v87 offset:13696
	ds_load_u8 v26, v87 offset:13440
	v_wmma_i32_16x16x16_iu4 v[9:16], v[61:62], v[63:64], v[9:16] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v25, v26, v25, 0xc0c0004
	ds_load_u8 v26, v87 offset:14208
	ds_load_u8 v27, v87 offset:13952
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v26, v27, v26, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v64, v26, 16, v25
	ds_load_u8 v25, v87 offset:12672
	ds_load_u8 v26, v87 offset:12416
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v25, v26, v25, 0xc0c0004
	ds_load_u8 v26, v87 offset:13184
	ds_load_u8 v27, v87 offset:12928
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v26, v27, v26, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v63, v26, 16, v25
	ds_load_u8 v25, v87 offset:15744
	ds_load_u8 v26, v87 offset:15488
	v_wmma_i32_16x16x16_iu4 v[9:16], v[63:64], v[65:66], v[9:16] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v25, v26, v25, 0xc0c0004
	ds_load_u8 v26, v87 offset:16256
	ds_load_u8 v27, v87 offset:16000
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v26, v27, v26, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v66, v26, 16, v25
	ds_load_u8 v25, v87 offset:14720
	ds_load_u8 v26, v87 offset:14464
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v25, v26, v25, 0xc0c0004
	ds_load_u8 v26, v87 offset:15232
	ds_load_u8 v27, v87 offset:14976
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v26, v27, v26, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v65, v26, 16, v25
	ds_load_u8 v25, v86 offset:16736
	ds_load_u8 v26, v86 offset:16672
	v_wmma_i32_16x16x16_iu4 v[9:16], v[65:66], v[67:68], v[9:16] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v25, v26, v25, 0xc0c0004
	ds_load_u8 v26, v86 offset:16864
	ds_load_u8 v27, v86 offset:16800
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v26, v27, v26, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v68, v26, 16, v25
	ds_load_u8 v25, v86 offset:16480
	ds_load_u8 v26, v86 offset:16608
	ds_load_u8 v27, v86 offset:16544
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v25, v135, v25, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v26, v27, v26, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v67, v26, 16, v25
	v_wmma_i32_16x16x16_iu4 v[25:32], v[75:76], v[67:68], v[1:8] neg_lo:[1,1,0]
	ds_load_u8 v75, v86 offset:17248
	ds_load_u8 v76, v86 offset:17184
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v75, v76, v75, 0xc0c0004
	ds_load_u8 v76, v86 offset:17376
	ds_load_u8 v135, v86 offset:17312
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v76, v135, v76, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v76, v76, 16, v75
	ds_load_u8 v75, v86 offset:16992
	ds_load_u8 v135, v86 offset:16928
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v75, v135, v75, 0xc0c0004
	ds_load_u8 v135, v86 offset:17120
	ds_load_u8 v136, v86 offset:17056
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v135, v136, v135, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v75, v135, 16, v75
	v_wmma_i32_16x16x16_iu4 v[25:32], v[73:74], v[75:76], v[25:32] neg_lo:[1,1,0]
	ds_load_u8 v73, v86 offset:17760
	ds_load_u8 v74, v86 offset:17696
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v73, v74, v73, 0xc0c0004
	ds_load_u8 v74, v86 offset:17888
	ds_load_u8 v135, v86 offset:17824
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v74, v135, v74, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v74, v74, 16, v73
	ds_load_u8 v73, v86 offset:17504
	ds_load_u8 v135, v86 offset:17440
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v73, v135, v73, 0xc0c0004
	ds_load_u8 v135, v86 offset:17632
	ds_load_u8 v136, v86 offset:17568
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v135, v136, v135, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v73, v135, 16, v73
	v_wmma_i32_16x16x16_iu4 v[25:32], v[71:72], v[73:74], v[25:32] neg_lo:[1,1,0]
	ds_load_u8 v71, v86 offset:18272
	ds_load_u8 v72, v86 offset:18208
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v71, v72, v71, 0xc0c0004
	ds_load_u8 v72, v86 offset:18400
	ds_load_u8 v135, v86 offset:18336
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v72, v135, v72, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v72, v72, 16, v71
	ds_load_u8 v71, v86 offset:18016
	ds_load_u8 v135, v86 offset:17952
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v71, v135, v71, 0xc0c0004
	ds_load_u8 v135, v86 offset:18144
	ds_load_u8 v136, v86 offset:18080
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v135, v136, v135, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v71, v135, 16, v71
	v_wmma_i32_16x16x16_iu4 v[25:32], v[69:70], v[71:72], v[25:32] neg_lo:[1,1,0]
	ds_load_u8 v69, v86 offset:18784
	ds_load_u8 v70, v86 offset:18720
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v69, v70, v69, 0xc0c0004
	ds_load_u8 v70, v86 offset:18912
	ds_load_u8 v135, v86 offset:18848
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v70, v135, v70, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v70, v70, 16, v69
	ds_load_u8 v69, v86 offset:18528
	ds_load_u8 v135, v86 offset:18464
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v69, v135, v69, 0xc0c0004
	ds_load_u8 v135, v86 offset:18656
	ds_load_u8 v136, v86 offset:18592
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v135, v136, v135, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v69, v135, 16, v69
	v_wmma_i32_16x16x16_iu4 v[25:32], v[39:40], v[69:70], v[25:32] neg_lo:[1,1,0]
	ds_load_u8 v39, v86 offset:19296
	ds_load_u8 v40, v86 offset:19232
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v39, v40, v39, 0xc0c0004
	ds_load_u8 v40, v86 offset:19424
	ds_load_u8 v135, v86 offset:19360
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v40, v135, v40, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v136, v40, 16, v39
	ds_load_u8 v39, v86 offset:19040
	ds_load_u8 v40, v86 offset:18976
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v39, v40, v39, 0xc0c0004
	ds_load_u8 v40, v86 offset:19168
	ds_load_u8 v135, v86 offset:19104
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v40, v135, v40, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v135, v40, 16, v39
	v_wmma_i32_16x16x16_iu4 v[25:32], v[37:38], v[135:136], v[25:32] neg_lo:[1,1,0]
	ds_load_u8 v37, v86 offset:19808
	ds_load_u8 v38, v86 offset:19744
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v37, v38, v37, 0xc0c0004
	ds_load_u8 v38, v86 offset:19936
	ds_load_u8 v39, v86 offset:19872
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v38, v39, v38, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v138, v38, 16, v37
	ds_load_u8 v37, v86 offset:19552
	ds_load_u8 v38, v86 offset:19488
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v37, v38, v37, 0xc0c0004
	ds_load_u8 v38, v86 offset:19680
	ds_load_u8 v39, v86 offset:19616
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v38, v39, v38, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v137, v38, 16, v37
	v_wmma_i32_16x16x16_iu4 v[25:32], v[35:36], v[137:138], v[25:32] neg_lo:[1,1,0]
	ds_load_u8 v35, v86 offset:20320
	ds_load_u8 v36, v86 offset:20256
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v35, v36, v35, 0xc0c0004
	ds_load_u8 v36, v86 offset:20448
	ds_load_u8 v37, v86 offset:20384
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v36, v37, v36, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v140, v36, 16, v35
	ds_load_u8 v35, v86 offset:20064
	ds_load_u8 v36, v86 offset:20000
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v35, v36, v35, 0xc0c0004
	ds_load_u8 v36, v86 offset:20192
	ds_load_u8 v37, v86 offset:20128
	.loc	1 214 26                        ; generate_amdgcn.py:214:26
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_waitcnt vmcnt(2)
	ds_store_b64 v85, v[49:50] offset:16384
	.loc	1 220 26                        ; generate_amdgcn.py:220:26
	s_waitcnt vmcnt(1)
	ds_store_b128 v116, v[41:44]
	s_waitcnt vmcnt(0)
	ds_store_b128 v116, v[45:48] offset:8192
	.loc	1 214 26                        ; generate_amdgcn.py:214:26
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 221 27                        ; generate_amdgcn.py:221:27
	ds_load_u8 v41, v86 offset:16704
	ds_load_u8 v42, v86 offset:16640
	v_perm_b32 v36, v37, v36, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v139, v36, 16, v35
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v41, v42, v41, 0xc0c0004
	ds_load_u8 v42, v86 offset:16832
	ds_load_u8 v43, v86 offset:16768
	v_wmma_i32_16x16x16_iu4 v[25:32], v[33:34], v[139:140], v[25:32] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[33:40], v[51:52], v[67:68], v[1:8] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[33:40], v[53:54], v[75:76], v[33:40] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[33:40], v[55:56], v[73:74], v[33:40] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_wmma_i32_16x16x16_iu4 v[33:40], v[57:58], v[71:72], v[33:40] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v42, v43, v42, 0xc0c0004
	v_wmma_i32_16x16x16_iu4 v[33:40], v[59:60], v[69:70], v[33:40] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v46, v42, 16, v41
	ds_load_u8 v41, v86 offset:16448
	ds_load_u8 v42, v86 offset:16384
	v_wmma_i32_16x16x16_iu4 v[33:40], v[61:62], v[135:136], v[33:40] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[33:40], v[63:64], v[137:138], v[33:40] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[33:40], v[65:66], v[139:140], v[33:40] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v41, v42, v41, 0xc0c0004
	ds_load_u8 v42, v86 offset:16576
	ds_load_u8 v43, v86 offset:16512
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v42, v43, v42, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v45, v42, 16, v41
	ds_load_u8 v41, v87 offset:1280
	ds_load_u8 v42, v87 offset:1024
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v41, v42, v41, 0xc0c0004
	ds_load_u8 v42, v87 offset:1792
	ds_load_u8 v43, v87 offset:1536
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v42, v43, v42, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v72, v42, 16, v41
	ds_load_u8 v41, v87 offset:256
	ds_load_u8 v42, v87
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v41, v42, v41, 0xc0c0004
	ds_load_u8 v42, v87 offset:768
	ds_load_u8 v43, v87 offset:512
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v42, v43, v42, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v71, v42, 16, v41
	ds_load_u8 v41, v86 offset:17216
	ds_load_u8 v42, v86 offset:17152
	v_wmma_i32_16x16x16_iu4 v[17:24], v[71:72], v[45:46], v[17:24] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v41, v42, v41, 0xc0c0004
	ds_load_u8 v42, v86 offset:17344
	ds_load_u8 v43, v86 offset:17280
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v42, v43, v42, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v50, v42, 16, v41
	ds_load_u8 v41, v86 offset:16960
	ds_load_u8 v42, v86 offset:16896
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v41, v42, v41, 0xc0c0004
	ds_load_u8 v42, v86 offset:17088
	ds_load_u8 v43, v86 offset:17024
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v42, v43, v42, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v49, v42, 16, v41
	ds_load_u8 v41, v87 offset:3328
	ds_load_u8 v42, v87 offset:3072
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v41, v42, v41, 0xc0c0004
	ds_load_u8 v42, v87 offset:3840
	ds_load_u8 v43, v87 offset:3584
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v42, v43, v42, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v70, v42, 16, v41
	ds_load_u8 v41, v87 offset:2304
	ds_load_u8 v42, v87 offset:2048
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v41, v42, v41, 0xc0c0004
	ds_load_u8 v42, v87 offset:2816
	ds_load_u8 v43, v87 offset:2560
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v42, v43, v42, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v69, v42, 16, v41
	ds_load_u8 v41, v86 offset:17728
	ds_load_u8 v42, v86 offset:17664
	v_wmma_i32_16x16x16_iu4 v[17:24], v[69:70], v[49:50], v[17:24] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v41, v42, v41, 0xc0c0004
	ds_load_u8 v42, v86 offset:17856
	ds_load_u8 v43, v86 offset:17792
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v42, v43, v42, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v52, v42, 16, v41
	ds_load_u8 v41, v86 offset:17472
	ds_load_u8 v42, v86 offset:17408
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v41, v42, v41, 0xc0c0004
	ds_load_u8 v42, v86 offset:17600
	ds_load_u8 v43, v86 offset:17536
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v42, v43, v42, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v51, v42, 16, v41
	ds_load_u8 v41, v87 offset:5376
	ds_load_u8 v42, v87 offset:5120
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v41, v42, v41, 0xc0c0004
	ds_load_u8 v42, v87 offset:5888
	ds_load_u8 v43, v87 offset:5632
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v42, v43, v42, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v68, v42, 16, v41
	ds_load_u8 v41, v87 offset:4352
	ds_load_u8 v42, v87 offset:4096
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v41, v42, v41, 0xc0c0004
	ds_load_u8 v42, v87 offset:4864
	ds_load_u8 v43, v87 offset:4608
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v42, v43, v42, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v67, v42, 16, v41
	ds_load_u8 v41, v86 offset:18240
	ds_load_u8 v42, v86 offset:18176
	v_wmma_i32_16x16x16_iu4 v[17:24], v[67:68], v[51:52], v[17:24] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v41, v42, v41, 0xc0c0004
	ds_load_u8 v42, v86 offset:18368
	ds_load_u8 v43, v86 offset:18304
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v42, v43, v42, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v54, v42, 16, v41
	ds_load_u8 v41, v86 offset:17984
	ds_load_u8 v42, v86 offset:17920
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v41, v42, v41, 0xc0c0004
	ds_load_u8 v42, v86 offset:18112
	ds_load_u8 v43, v86 offset:18048
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v42, v43, v42, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v53, v42, 16, v41
	ds_load_u8 v41, v87 offset:7424
	ds_load_u8 v42, v87 offset:7168
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v41, v42, v41, 0xc0c0004
	ds_load_u8 v42, v87 offset:7936
	ds_load_u8 v43, v87 offset:7680
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v42, v43, v42, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v66, v42, 16, v41
	ds_load_u8 v41, v87 offset:6400
	ds_load_u8 v42, v87 offset:6144
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v41, v42, v41, 0xc0c0004
	ds_load_u8 v42, v87 offset:6912
	ds_load_u8 v43, v87 offset:6656
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v42, v43, v42, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v65, v42, 16, v41
	ds_load_u8 v41, v86 offset:18752
	ds_load_u8 v42, v86 offset:18688
	v_wmma_i32_16x16x16_iu4 v[17:24], v[65:66], v[53:54], v[17:24] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v41, v42, v41, 0xc0c0004
	ds_load_u8 v42, v86 offset:18880
	ds_load_u8 v43, v86 offset:18816
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v42, v43, v42, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v58, v42, 16, v41
	ds_load_u8 v41, v86 offset:18496
	ds_load_u8 v42, v86 offset:18432
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v41, v42, v41, 0xc0c0004
	ds_load_u8 v42, v86 offset:18624
	ds_load_u8 v43, v86 offset:18560
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v42, v43, v42, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v57, v42, 16, v41
	ds_load_u8 v41, v87 offset:9472
	ds_load_u8 v42, v87 offset:9216
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v41, v42, v41, 0xc0c0004
	ds_load_u8 v42, v87 offset:9984
	ds_load_u8 v43, v87 offset:9728
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v42, v43, v42, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v62, v42, 16, v41
	ds_load_u8 v41, v87 offset:8448
	ds_load_u8 v42, v87 offset:8192
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v41, v42, v41, 0xc0c0004
	ds_load_u8 v42, v87 offset:8960
	ds_load_u8 v43, v87 offset:8704
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v42, v43, v42, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v61, v42, 16, v41
	ds_load_u8 v41, v86 offset:19264
	ds_load_u8 v42, v86 offset:19200
	v_wmma_i32_16x16x16_iu4 v[17:24], v[61:62], v[57:58], v[17:24] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v41, v42, v41, 0xc0c0004
	ds_load_u8 v42, v86 offset:19392
	ds_load_u8 v43, v86 offset:19328
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v42, v43, v42, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v60, v42, 16, v41
	ds_load_u8 v41, v86 offset:19008
	ds_load_u8 v42, v86 offset:18944
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v41, v42, v41, 0xc0c0004
	ds_load_u8 v42, v86 offset:19136
	ds_load_u8 v43, v86 offset:19072
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v42, v43, v42, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v59, v42, 16, v41
	ds_load_u8 v41, v87 offset:11520
	ds_load_u8 v42, v87 offset:11264
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v41, v42, v41, 0xc0c0004
	ds_load_u8 v42, v87 offset:12032
	ds_load_u8 v43, v87 offset:11776
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v42, v43, v42, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v56, v42, 16, v41
	ds_load_u8 v41, v87 offset:10496
	ds_load_u8 v42, v87 offset:10240
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v41, v42, v41, 0xc0c0004
	ds_load_u8 v42, v87 offset:11008
	ds_load_u8 v43, v87 offset:10752
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v42, v43, v42, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v55, v42, 16, v41
	ds_load_u8 v41, v86 offset:19776
	ds_load_u8 v42, v86 offset:19712
	v_wmma_i32_16x16x16_iu4 v[17:24], v[55:56], v[59:60], v[17:24] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v41, v42, v41, 0xc0c0004
	ds_load_u8 v42, v86 offset:19904
	ds_load_u8 v43, v86 offset:19840
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v42, v43, v42, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v64, v42, 16, v41
	ds_load_u8 v41, v86 offset:19520
	ds_load_u8 v42, v86 offset:19456
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v41, v42, v41, 0xc0c0004
	ds_load_u8 v42, v86 offset:19648
	ds_load_u8 v43, v86 offset:19584
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v42, v43, v42, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v63, v42, 16, v41
	ds_load_u8 v41, v87 offset:13568
	ds_load_u8 v42, v87 offset:13312
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v41, v42, v41, 0xc0c0004
	ds_load_u8 v42, v87 offset:14080
	ds_load_u8 v43, v87 offset:13824
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v42, v43, v42, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v48, v42, 16, v41
	ds_load_u8 v41, v87 offset:12544
	ds_load_u8 v42, v87 offset:12288
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v41, v42, v41, 0xc0c0004
	ds_load_u8 v42, v87 offset:13056
	ds_load_u8 v43, v87 offset:12800
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v42, v43, v42, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v47, v42, 16, v41
	ds_load_u8 v41, v86 offset:20288
	ds_load_u8 v42, v86 offset:20224
	v_wmma_i32_16x16x16_iu4 v[17:24], v[47:48], v[63:64], v[17:24] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v41, v42, v41, 0xc0c0004
	ds_load_u8 v42, v86 offset:20416
	ds_load_u8 v43, v86 offset:20352
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v42, v43, v42, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v74, v42, 16, v41
	ds_load_u8 v41, v86 offset:20032
	ds_load_u8 v42, v86 offset:19968
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v41, v42, v41, 0xc0c0004
	ds_load_u8 v42, v86 offset:20160
	ds_load_u8 v43, v86 offset:20096
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v42, v43, v42, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v73, v42, 16, v41
	ds_load_u8 v41, v87 offset:15616
	ds_load_u8 v42, v87 offset:15360
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v41, v42, v41, 0xc0c0004
	ds_load_u8 v42, v87 offset:16128
	ds_load_u8 v43, v87 offset:15872
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v42, v43, v42, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v42, v42, 16, v41
	ds_load_u8 v41, v87 offset:14592
	ds_load_u8 v43, v87 offset:14336
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v41, v43, v41, 0xc0c0004
	ds_load_u8 v43, v87 offset:15104
	ds_load_u8 v44, v87 offset:14848
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v43, v44, v43, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v41, v43, 16, v41
	ds_load_u8 v43, v87 offset:1408
	ds_load_u8 v44, v87 offset:1152
	v_wmma_i32_16x16x16_iu4 v[17:24], v[41:42], v[73:74], v[17:24] neg_lo:[1,1,0]
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	v_cvt_f32_i32_e32 v20, v20
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cvt_f32_i32_e32 v17, v17
	v_cvt_f32_i32_e32 v18, v18
	s_delay_alu instid0(VALU_DEP_4)
	v_cvt_f32_i32_e32 v19, v19
	v_cvt_f32_i32_e32 v21, v21
	v_cvt_f32_i32_e32 v22, v22
	v_cvt_f32_i32_e32 v23, v23
	v_cvt_f32_i32_e32 v24, v24
	.loc	1 221 27                        ; generate_amdgcn.py:221:27
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v43, v44, v43, 0xc0c0004
	ds_load_u8 v44, v87 offset:1920
	ds_load_u8 v75, v87 offset:1664
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v44, v75, v44, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v44, v44, 16, v43
	ds_load_u8 v43, v87 offset:384
	ds_load_u8 v75, v87 offset:128
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v43, v75, v43, 0xc0c0004
	ds_load_u8 v75, v87 offset:896
	ds_load_u8 v76, v87 offset:640
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v75, v76, v75, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v43, v75, 16, v43
	v_wmma_i32_16x16x16_iu4 v[9:16], v[43:44], v[45:46], v[9:16] neg_lo:[1,1,0]
	ds_load_u8 v45, v87 offset:3456
	ds_load_u8 v46, v87 offset:3200
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v45, v46, v45, 0xc0c0004
	ds_load_u8 v46, v87 offset:3968
	ds_load_u8 v75, v87 offset:3712
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v46, v75, v46, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v46, v46, 16, v45
	ds_load_u8 v45, v87 offset:2432
	ds_load_u8 v75, v87 offset:2176
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v45, v75, v45, 0xc0c0004
	ds_load_u8 v75, v87 offset:2944
	ds_load_u8 v76, v87 offset:2688
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v75, v76, v75, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v45, v75, 16, v45
	v_wmma_i32_16x16x16_iu4 v[9:16], v[45:46], v[49:50], v[9:16] neg_lo:[1,1,0]
	ds_load_u8 v49, v87 offset:5504
	ds_load_u8 v50, v87 offset:5248
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v49, v50, v49, 0xc0c0004
	ds_load_u8 v50, v87 offset:6016
	ds_load_u8 v75, v87 offset:5760
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v50, v75, v50, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v50, v50, 16, v49
	ds_load_u8 v49, v87 offset:4480
	ds_load_u8 v75, v87 offset:4224
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v49, v75, v49, 0xc0c0004
	ds_load_u8 v75, v87 offset:4992
	ds_load_u8 v76, v87 offset:4736
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v75, v76, v75, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v49, v75, 16, v49
	v_wmma_i32_16x16x16_iu4 v[9:16], v[49:50], v[51:52], v[9:16] neg_lo:[1,1,0]
	ds_load_u8 v51, v87 offset:7552
	ds_load_u8 v52, v87 offset:7296
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v51, v52, v51, 0xc0c0004
	ds_load_u8 v52, v87 offset:8064
	ds_load_u8 v75, v87 offset:7808
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v52, v75, v52, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v52, v52, 16, v51
	ds_load_u8 v51, v87 offset:6528
	ds_load_u8 v75, v87 offset:6272
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v51, v75, v51, 0xc0c0004
	ds_load_u8 v75, v87 offset:7040
	ds_load_u8 v76, v87 offset:6784
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v75, v76, v75, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v51, v75, 16, v51
	v_wmma_i32_16x16x16_iu4 v[9:16], v[51:52], v[53:54], v[9:16] neg_lo:[1,1,0]
	ds_load_u8 v53, v87 offset:9600
	ds_load_u8 v54, v87 offset:9344
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v53, v54, v53, 0xc0c0004
	ds_load_u8 v54, v87 offset:10112
	ds_load_u8 v75, v87 offset:9856
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v54, v75, v54, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v54, v54, 16, v53
	ds_load_u8 v53, v87 offset:8576
	ds_load_u8 v75, v87 offset:8320
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v53, v75, v53, 0xc0c0004
	ds_load_u8 v75, v87 offset:9088
	ds_load_u8 v76, v87 offset:8832
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v75, v76, v75, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v53, v75, 16, v53
	v_wmma_i32_16x16x16_iu4 v[9:16], v[53:54], v[57:58], v[9:16] neg_lo:[1,1,0]
	ds_load_u8 v57, v87 offset:11648
	ds_load_u8 v58, v87 offset:11392
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v57, v58, v57, 0xc0c0004
	ds_load_u8 v58, v87 offset:12160
	ds_load_u8 v75, v87 offset:11904
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v58, v75, v58, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v58, v58, 16, v57
	ds_load_u8 v57, v87 offset:10624
	ds_load_u8 v75, v87 offset:10368
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v57, v75, v57, 0xc0c0004
	ds_load_u8 v75, v87 offset:11136
	ds_load_u8 v76, v87 offset:10880
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v75, v76, v75, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v57, v75, 16, v57
	v_wmma_i32_16x16x16_iu4 v[9:16], v[57:58], v[59:60], v[9:16] neg_lo:[1,1,0]
	ds_load_u8 v59, v87 offset:13696
	ds_load_u8 v60, v87 offset:13440
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v59, v60, v59, 0xc0c0004
	ds_load_u8 v60, v87 offset:14208
	ds_load_u8 v75, v87 offset:13952
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v60, v75, v60, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v60, v60, 16, v59
	ds_load_u8 v59, v87 offset:12672
	ds_load_u8 v75, v87 offset:12416
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v59, v75, v59, 0xc0c0004
	ds_load_u8 v75, v87 offset:13184
	ds_load_u8 v76, v87 offset:12928
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v75, v76, v75, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v59, v75, 16, v59
	v_wmma_i32_16x16x16_iu4 v[9:16], v[59:60], v[63:64], v[9:16] neg_lo:[1,1,0]
	ds_load_u8 v63, v87 offset:15744
	ds_load_u8 v64, v87 offset:15488
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v63, v64, v63, 0xc0c0004
	ds_load_u8 v64, v87 offset:16256
	ds_load_u8 v75, v87 offset:16000
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v64, v75, v64, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v64, v64, 16, v63
	ds_load_u8 v63, v87 offset:14720
	ds_load_u8 v75, v87 offset:14464
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v63, v75, v63, 0xc0c0004
	ds_load_u8 v75, v87 offset:15232
	ds_load_u8 v76, v87 offset:14976
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v75, v76, v75, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v63, v75, 16, v63
	v_wmma_i32_16x16x16_iu4 v[9:16], v[63:64], v[73:74], v[9:16] neg_lo:[1,1,0]
	ds_load_u8 v73, v86 offset:16736
	ds_load_u8 v74, v86 offset:16672
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	v_cvt_f32_i32_e32 v9, v9
	v_cvt_f32_i32_e32 v10, v10
	v_cvt_f32_i32_e32 v11, v11
	v_cvt_f32_i32_e32 v12, v12
	v_cvt_f32_i32_e32 v13, v13
	v_cvt_f32_i32_e32 v14, v14
	v_cvt_f32_i32_e32 v15, v15
	v_cvt_f32_i32_e32 v16, v16
	.loc	1 221 27                        ; generate_amdgcn.py:221:27
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v73, v74, v73, 0xc0c0004
	ds_load_u8 v74, v86 offset:16864
	ds_load_u8 v75, v86 offset:16800
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v74, v75, v74, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v74, v74, 16, v73
	ds_load_u8 v73, v86 offset:16480
	ds_load_u8 v75, v86 offset:16416
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v73, v75, v73, 0xc0c0004
	ds_load_u8 v75, v86 offset:16608
	ds_load_u8 v76, v86 offset:16544
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v75, v76, v75, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v73, v75, 16, v73
	v_wmma_i32_16x16x16_iu4 v[25:32], v[71:72], v[73:74], v[25:32] neg_lo:[1,1,0]
	ds_load_u8 v71, v86 offset:17248
	ds_load_u8 v72, v86 offset:17184
	v_wmma_i32_16x16x16_iu4 v[33:40], v[43:44], v[73:74], v[33:40] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v71, v72, v71, 0xc0c0004
	ds_load_u8 v72, v86 offset:17376
	ds_load_u8 v75, v86 offset:17312
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v72, v75, v72, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v72, v72, 16, v71
	ds_load_u8 v71, v86 offset:16992
	ds_load_u8 v75, v86 offset:16928
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v71, v75, v71, 0xc0c0004
	ds_load_u8 v75, v86 offset:17120
	ds_load_u8 v76, v86 offset:17056
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v75, v76, v75, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v71, v75, 16, v71
	v_wmma_i32_16x16x16_iu4 v[25:32], v[69:70], v[71:72], v[25:32] neg_lo:[1,1,0]
	ds_load_u8 v69, v86 offset:17760
	ds_load_u8 v70, v86 offset:17696
	v_wmma_i32_16x16x16_iu4 v[33:40], v[45:46], v[71:72], v[33:40] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v69, v70, v69, 0xc0c0004
	ds_load_u8 v70, v86 offset:17888
	ds_load_u8 v75, v86 offset:17824
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v70, v75, v70, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v70, v70, 16, v69
	ds_load_u8 v69, v86 offset:17504
	ds_load_u8 v75, v86 offset:17440
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v69, v75, v69, 0xc0c0004
	ds_load_u8 v75, v86 offset:17632
	ds_load_u8 v76, v86 offset:17568
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v75, v76, v75, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v69, v75, 16, v69
	v_wmma_i32_16x16x16_iu4 v[25:32], v[67:68], v[69:70], v[25:32] neg_lo:[1,1,0]
	ds_load_u8 v67, v86 offset:18272
	ds_load_u8 v68, v86 offset:18208
	v_wmma_i32_16x16x16_iu4 v[33:40], v[49:50], v[69:70], v[33:40] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v67, v68, v67, 0xc0c0004
	ds_load_u8 v68, v86 offset:18400
	ds_load_u8 v75, v86 offset:18336
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v68, v75, v68, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v68, v68, 16, v67
	ds_load_u8 v67, v86 offset:18016
	ds_load_u8 v75, v86 offset:17952
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v67, v75, v67, 0xc0c0004
	ds_load_u8 v75, v86 offset:18144
	ds_load_u8 v76, v86 offset:18080
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v75, v76, v75, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v67, v75, 16, v67
	v_wmma_i32_16x16x16_iu4 v[25:32], v[65:66], v[67:68], v[25:32] neg_lo:[1,1,0]
	ds_load_u8 v65, v86 offset:18784
	ds_load_u8 v66, v86 offset:18720
	v_wmma_i32_16x16x16_iu4 v[33:40], v[51:52], v[67:68], v[33:40] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v65, v66, v65, 0xc0c0004
	ds_load_u8 v66, v86 offset:18912
	ds_load_u8 v75, v86 offset:18848
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v66, v75, v66, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v66, v66, 16, v65
	ds_load_u8 v65, v86 offset:18528
	ds_load_u8 v75, v86 offset:18464
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v65, v75, v65, 0xc0c0004
	ds_load_u8 v75, v86 offset:18656
	ds_load_u8 v76, v86 offset:18592
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v75, v76, v75, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v65, v75, 16, v65
	v_wmma_i32_16x16x16_iu4 v[25:32], v[61:62], v[65:66], v[25:32] neg_lo:[1,1,0]
	ds_load_u8 v61, v86 offset:19296
	ds_load_u8 v62, v86 offset:19232
	v_wmma_i32_16x16x16_iu4 v[33:40], v[53:54], v[65:66], v[33:40] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v61, v62, v61, 0xc0c0004
	ds_load_u8 v62, v86 offset:19424
	ds_load_u8 v75, v86 offset:19360
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v62, v75, v62, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v62, v62, 16, v61
	ds_load_u8 v61, v86 offset:19040
	ds_load_u8 v75, v86 offset:18976
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v61, v75, v61, 0xc0c0004
	ds_load_u8 v75, v86 offset:19168
	ds_load_u8 v76, v86 offset:19104
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v75, v76, v75, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v61, v75, 16, v61
	v_wmma_i32_16x16x16_iu4 v[25:32], v[55:56], v[61:62], v[25:32] neg_lo:[1,1,0]
	ds_load_u8 v55, v86 offset:19808
	ds_load_u8 v56, v86 offset:19744
	v_wmma_i32_16x16x16_iu4 v[33:40], v[57:58], v[61:62], v[33:40] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v55, v56, v55, 0xc0c0004
	ds_load_u8 v56, v86 offset:19936
	ds_load_u8 v75, v86 offset:19872
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v56, v75, v56, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v56, v56, 16, v55
	ds_load_u8 v55, v86 offset:19552
	ds_load_u8 v75, v86 offset:19488
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v55, v75, v55, 0xc0c0004
	ds_load_u8 v75, v86 offset:19680
	ds_load_u8 v76, v86 offset:19616
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v75, v76, v75, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v55, v75, 16, v55
	v_wmma_i32_16x16x16_iu4 v[25:32], v[47:48], v[55:56], v[25:32] neg_lo:[1,1,0]
	ds_load_u8 v47, v86 offset:20320
	ds_load_u8 v48, v86 offset:20256
	v_wmma_i32_16x16x16_iu4 v[33:40], v[59:60], v[55:56], v[33:40] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v47, v48, v47, 0xc0c0004
	ds_load_u8 v48, v86 offset:20448
	ds_load_u8 v75, v86 offset:20384
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v48, v75, v48, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v48, v48, 16, v47
	ds_load_u8 v47, v86 offset:20064
	ds_load_u8 v75, v86 offset:20000
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v47, v75, v47, 0xc0c0004
	ds_load_u8 v75, v86 offset:20192
	ds_load_u8 v76, v86 offset:20128
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v75, v76, v75, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v47, v75, 16, v47
	v_wmma_i32_16x16x16_iu4 v[25:32], v[41:42], v[47:48], v[25:32] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[33:40], v[63:64], v[47:48], v[33:40] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	v_cvt_f32_i32_e32 v27, v27
	v_cvt_f32_i32_e32 v26, v26
	s_delay_alu instid0(VALU_DEP_4)
	v_cvt_f32_i32_e32 v25, v25
	v_cvt_f32_i32_e32 v28, v28
	v_cvt_f32_i32_e32 v29, v29
	v_dual_mul_f32 v27, v133, v27 :: v_dual_mul_f32 v20, v134, v20
	v_dual_mul_f32 v26, v133, v26 :: v_dual_add_nc_u32 v41, v90, v91
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	s_clause 0xf
	buffer_load_u16 v42, v41, s[8:11], 0 offen
	buffer_load_u16 v43, v41, s[8:11], 0 offen offset:4
	buffer_load_u16 v44, v41, s[8:11], 0 offen offset:8
	buffer_load_u16 v45, v41, s[8:11], 0 offen offset:12
	buffer_load_u16 v46, v41, s[8:11], 0 offen offset:16
	buffer_load_u16 v47, v41, s[8:11], 0 offen offset:20
	buffer_load_u16 v48, v41, s[8:11], 0 offen offset:24
	buffer_load_u16 v49, v41, s[8:11], 0 offen offset:28
	buffer_load_u16 v57, v41, s[8:11], 0 offen offset:256
	buffer_load_u16 v58, v41, s[8:11], 0 offen offset:260
	buffer_load_u16 v59, v41, s[8:11], 0 offen offset:264
	buffer_load_u16 v60, v41, s[8:11], 0 offen offset:268
	buffer_load_u16 v61, v41, s[8:11], 0 offen offset:272
	buffer_load_u16 v62, v41, s[8:11], 0 offen offset:276
	buffer_load_u16 v63, v41, s[8:11], 0 offen offset:280
	buffer_load_u16 v41, v41, s[8:11], 0 offen offset:284
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	v_cvt_f32_i32_e32 v30, v30
	v_cvt_f32_i32_e32 v31, v31
	v_cvt_f32_i32_e32 v32, v32
	v_cvt_f32_i32_e32 v33, v33
	v_cvt_f32_i32_e32 v34, v34
	v_cvt_f32_i32_e32 v35, v35
	v_cvt_f32_i32_e32 v36, v36
	v_cvt_f32_i32_e32 v37, v37
	v_cvt_f32_i32_e32 v38, v38
	v_cvt_f32_i32_e32 v39, v39
	v_cvt_f32_i32_e32 v40, v40
	v_mul_f32_e32 v17, v134, v17
	v_mul_f32_e32 v18, v134, v18
	v_mul_f32_e32 v19, v134, v19
	v_mul_f32_e32 v21, v134, v21
	v_mul_f32_e32 v22, v134, v22
	v_mul_f32_e32 v23, v134, v23
	v_mul_f32_e32 v24, v134, v24
	v_mul_f32_e32 v9, v134, v9
	v_mul_f32_e32 v10, v134, v10
	v_mul_f32_e32 v11, v134, v11
	v_mul_f32_e32 v12, v134, v12
	v_mul_f32_e32 v13, v134, v13
	v_mul_f32_e32 v14, v134, v14
	v_mul_f32_e32 v15, v134, v15
	v_dual_mul_f32 v16, v134, v16 :: v_dual_mul_f32 v25, v133, v25
	v_mul_f32_e32 v28, v133, v28
	v_mul_f32_e32 v30, v133, v30
	v_mul_f32_e32 v32, v133, v32
	v_dual_mul_f32 v34, v133, v34 :: v_dual_add_nc_u32 v91, s35, v91
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	s_waitcnt vmcnt(15)
	v_lshlrev_b32_e32 v56, 16, v42
	s_waitcnt vmcnt(14)
	v_lshlrev_b32_e32 v55, 16, v43
	s_waitcnt vmcnt(13)
	v_lshlrev_b32_e32 v54, 16, v44
	s_waitcnt vmcnt(12)
	v_lshlrev_b32_e32 v53, 16, v45
	s_waitcnt vmcnt(11)
	v_lshlrev_b32_e32 v52, 16, v46
	s_waitcnt vmcnt(10)
	v_lshlrev_b32_e32 v51, 16, v47
	s_waitcnt vmcnt(9)
	v_lshlrev_b32_e32 v50, 16, v48
	s_waitcnt vmcnt(8)
	v_lshlrev_b32_e32 v49, 16, v49
	s_waitcnt vmcnt(7)
	v_lshlrev_b32_e32 v48, 16, v57
	s_waitcnt vmcnt(6)
	v_lshlrev_b32_e32 v47, 16, v58
	s_waitcnt vmcnt(5)
	v_lshlrev_b32_e32 v46, 16, v59
	s_waitcnt vmcnt(4)
	v_lshlrev_b32_e32 v45, 16, v60
	s_waitcnt vmcnt(3)
	v_lshlrev_b32_e32 v44, 16, v61
	s_waitcnt vmcnt(2)
	v_lshlrev_b32_e32 v43, 16, v62
	s_waitcnt vmcnt(1)
	v_lshlrev_b32_e32 v42, 16, v63
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v41, 16, v41
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	v_dual_mul_f32 v29, v133, v29 :: v_dual_fmac_f32 v132, v18, v55
	v_dual_mul_f32 v31, v133, v31 :: v_dual_fmac_f32 v130, v20, v53
	v_dual_mul_f32 v33, v133, v33 :: v_dual_fmac_f32 v128, v22, v51
	v_dual_mul_f32 v35, v133, v35 :: v_dual_fmac_f32 v126, v24, v49
	v_dual_mul_f32 v36, v133, v36 :: v_dual_fmac_f32 v131, v19, v54
	v_dual_mul_f32 v37, v133, v37 :: v_dual_fmac_f32 v124, v10, v47
	v_dual_mul_f32 v38, v133, v38 :: v_dual_fmac_f32 v115, v26, v55
	v_dual_mul_f32 v39, v133, v39 :: v_dual_fmac_f32 v122, v12, v45
	v_dual_mul_f32 v40, v133, v40 :: v_dual_fmac_f32 v127, v23, v50
	.loc	1 233 13 is_stmt 0              ; generate_amdgcn.py:233:13
	v_dual_fmac_f32 v109, v17, v56 :: v_dual_fmac_f32 v120, v14, v43
	v_dual_fmac_f32 v129, v21, v52 :: v_dual_fmac_f32 v118, v16, v41
	v_dual_fmac_f32 v125, v9, v48 :: v_dual_fmac_f32 v114, v27, v54
	v_dual_fmac_f32 v123, v11, v46 :: v_dual_fmac_f32 v112, v29, v52
	v_dual_fmac_f32 v121, v13, v44 :: v_dual_fmac_f32 v102, v34, v47
	v_dual_fmac_f32 v119, v15, v42 :: v_dual_fmac_f32 v98, v37, v44
	v_dual_fmac_f32 v117, v25, v56 :: v_dual_fmac_f32 v100, v35, v46
	v_dual_fmac_f32 v113, v28, v53 :: v_dual_fmac_f32 v96, v39, v42
	v_fmac_f32_e32 v111, v30, v51
	v_fmac_f32_e32 v107, v31, v50
	v_fmac_f32_e32 v105, v32, v49
	v_fmac_f32_e32 v103, v33, v48
	v_fmac_f32_e32 v99, v36, v45
	v_fmac_f32_e32 v97, v38, v43
	v_fmac_f32_e32 v95, v40, v41
	.loc	1 188 9 is_stmt 1               ; generate_amdgcn.py:188:9
	s_cbranch_scc1 .LBB0_2
; %bb.3:                                ; %._crit_edge.loopexit
	.loc	1 240 19                        ; generate_amdgcn.py:240:19
	v_dual_max_f32 v13, v121, v121 :: v_dual_max_f32 v14, v120, v120
	v_dual_max_f32 v15, v119, v119 :: v_dual_max_f32 v16, v118, v118
	v_dual_max_f32 v17, v117, v117 :: v_dual_max_f32 v18, v115, v115
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_dual_max_f32 v14, 0, v14 :: v_dual_max_f32 v15, 0, v15
	v_max_f32_e32 v20, v113, v113
	v_max_f32_e32 v17, 0, v17
	v_dual_max_f32 v19, v114, v114 :: v_dual_max_f32 v22, v111, v111
	v_dual_max_f32 v21, v112, v112 :: v_dual_max_f32 v18, 0, v18
	v_dual_max_f32 v3, v131, v131 :: v_dual_max_f32 v4, v130, v130
	v_dual_max_f32 v5, v129, v129 :: v_dual_max_f32 v6, v128, v128
	v_max_f32_e32 v7, v127, v127
	v_dual_max_f32 v23, 0, v19 :: v_dual_max_f32 v38, 0, v20
	v_dual_max_f32 v39, 0, v21 :: v_dual_max_f32 v40, 0, v22
	v_dual_max_f32 v19, v107, v107 :: v_dual_max_f32 v20, v105, v105
	v_dual_max_f32 v21, v103, v103 :: v_dual_max_f32 v22, v102, v102
	s_delay_alu instid0(VALU_DEP_2)
	v_dual_max_f32 v24, v100, v100 :: v_dual_max_f32 v41, 0, v19
	v_dual_max_f32 v1, v109, v109 :: v_dual_max_f32 v2, v132, v132
	v_dual_max_f32 v4, 0, v4 :: v_dual_max_f32 v5, 0, v5
	v_dual_max_f32 v8, v126, v126 :: v_dual_max_f32 v7, 0, v7
	v_dual_max_f32 v10, v124, v124 :: v_dual_max_f32 v9, v125, v125
	v_dual_max_f32 v12, v122, v122 :: v_dual_max_f32 v11, v123, v123
	s_delay_alu instid0(VALU_DEP_3)
	v_max_f32_e32 v8, 0, v8
	v_dual_max_f32 v42, 0, v20 :: v_dual_max_f32 v43, 0, v21
	v_dual_max_f32 v44, 0, v22 :: v_dual_max_f32 v45, 0, v24
	v_dual_max_f32 v19, v99, v99 :: v_dual_max_f32 v20, v98, v98
	v_dual_max_f32 v21, v97, v97 :: v_dual_max_f32 v22, v96, v96
	v_dual_max_f32 v24, v95, v95 :: v_dual_max_f32 v1, 0, v1
	v_dual_max_f32 v2, 0, v2 :: v_dual_max_f32 v3, 0, v3
	v_dual_max_f32 v6, 0, v6 :: v_dual_max_f32 v9, 0, v9
	v_dual_max_f32 v10, 0, v10 :: v_dual_max_f32 v11, 0, v11
	v_dual_max_f32 v12, 0, v12 :: v_dual_max_f32 v13, 0, v13
	v_max_f32_e32 v16, 0, v16
	v_dual_max_f32 v46, 0, v19 :: v_dual_max_f32 v49, 0, v22
	v_dual_max_f32 v47, 0, v20 :: v_dual_max_f32 v48, 0, v21
	.loc	1 241 19                        ; generate_amdgcn.py:241:19
	v_dual_mul_f32 v35, v3, v3 :: v_dual_max_f32 v50, 0, v24
	v_dual_mul_f32 v37, v1, v1 :: v_dual_mul_f32 v36, v2, v2
	v_dual_mul_f32 v33, v5, v5 :: v_dual_mul_f32 v34, v4, v4
	v_dual_mul_f32 v31, v7, v7 :: v_dual_mul_f32 v32, v6, v6
	v_dual_mul_f32 v29, v9, v9 :: v_dual_mul_f32 v30, v8, v8
	v_dual_mul_f32 v27, v11, v11 :: v_dual_mul_f32 v28, v10, v10
	v_dual_mul_f32 v25, v13, v13 :: v_dual_mul_f32 v26, v12, v12
	v_mul_f32_e32 v19, v18, v18
	v_dual_mul_f32 v24, v14, v14 :: v_dual_mul_f32 v21, v16, v16
	v_mul_f32_e32 v22, v15, v15
	v_dual_mul_f32 v20, v17, v17 :: v_dual_mul_f32 v15, v40, v40
	v_dual_mul_f32 v18, v23, v23 :: v_dual_mul_f32 v13, v42, v42
	v_dual_mul_f32 v17, v38, v38 :: v_dual_mul_f32 v16, v39, v39
	v_dual_mul_f32 v11, v44, v44 :: v_dual_mul_f32 v14, v41, v41
	v_mul_f32_e32 v5, v47, v47
	v_dual_mul_f32 v12, v43, v43 :: v_dual_mul_f32 v9, v45, v45
	v_dual_mul_f32 v6, v46, v46 :: v_dual_mul_f32 v3, v49, v49
	v_dual_mul_f32 v4, v48, v48 :: v_dual_mul_f32 v1, v50, v50
.LBB0_4:                                ; %Flow
.Ltmp22:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ] ]
	v_dual_max_f32 v23, v19, v19 :: v_dual_and_b32 v2, 0x1f0, v0
	v_dual_max_f32 v7, v36, v36 :: v_dual_max_f32 v8, v37, v37
	v_max_f32_e32 v38, v20, v20
	v_max3_f32 v10, v34, v33, v32
	v_max3_f32 v39, v28, v27, v26
	v_max3_f32 v40, v25, v24, v22
	v_max_f32_e32 v7, v8, v7
	v_max_f32_e32 v23, v38, v23
	v_max3_f32 v38, v17, v16, v15
	v_max3_f32 v41, v11, v9, v6
	v_max3_f32 v42, v5, v4, v3
	v_max3_f32 v8, v31, v30, v29
	v_max3_f32 v7, v7, v35, v10
	v_max3_f32 v10, v39, v40, v21
	v_max3_f32 v39, v14, v13, v12
.Ltmp23:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ]
	v_and_b32_e32 v40, 8, v0
.Ltmp24:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ] ]
	v_max3_f32 v23, v23, v18, v38
	v_max3_f32 v38, v41, v42, v1
	v_max3_f32 v7, v7, v8, v10
.Ltmp25:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ]
	v_lshrrev_b32_e32 v10, 1, v0
	s_mov_b32 s0, 0x76543210
	v_lshl_add_u32 v42, v83, 8, 0
.Ltmp26:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ] ]
	v_max3_f32 v8, v23, v39, v38
.Ltmp27:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ]
	v_lshlrev_b32_e32 v39, 4, v83
	v_permlanex16_b32 v23, v7, s0, 0xfedcba98 op_sel:[1,0]
	v_and_b32_e32 v10, 0xf0, v10
	s_waitcnt lgkmcnt(0)
	v_permlanex16_b32 v38, v8, s0, 0xfedcba98 op_sel:[1,0]
	v_lshl_or_b32 v41, v82, 3, v39
.Ltmp28:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ] ]
	v_max_f32_e32 v23, v23, v23
.Ltmp29:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ]
	v_xor_b32_e32 v39, v39, v10
	s_barrier
.Ltmp30:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ] ]
	v_max_f32_e32 v38, v38, v38
.Ltmp31:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ]
	v_xor_b32_e32 v10, v41, v10
.Ltmp32:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ] ]
	v_max_f32_e32 v7, v7, v23
.Ltmp33:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ]
	v_add3_u32 v23, v42, v39, v40
	v_lshrrev_b32_e32 v41, 1, v79
.Ltmp34:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ] ]
	v_max_f32_e32 v8, v8, v38
.Ltmp35:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ]
	v_add3_u32 v10, 0, v40, v10
	v_lshrrev_b32_e32 v38, 2, v82
	v_lshl_add_u32 v39, v40, 3, 0
	ds_store_b64 v23, v[7:8]
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b64 v[7:8], v10
	v_add3_u32 v42, v39, v38, v41
	s_waitcnt lgkmcnt(0)
	s_barrier
	v_dual_mov_b32 v10, v7 :: v_dual_mov_b32 v23, v8
.Ltmp36:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ] ]
	v_dual_max_f32 v7, v7, v7 :: v_dual_max_f32 v8, v8, v8
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp37:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ]
	v_mov_b32_dpp v10, v10 row_xmask:4 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v23, v23 row_xmask:4 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp38:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ] ]
	v_dual_max_f32 v10, v10, v10 :: v_dual_max_f32 v23, v23, v23
	v_dual_max_f32 v7, v7, v10 :: v_dual_max_f32 v8, v8, v23
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp39:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ]
	v_dual_mov_b32 v10, v7 :: v_dual_mov_b32 v23, v8
	v_mov_b32_dpp v10, v10 row_xmask:2 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v23, v23 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp40:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ] ]
	v_dual_max_f32 v10, v10, v10 :: v_dual_max_f32 v23, v23, v23
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_max_f32_e32 v8, v8, v23
	v_dual_max_f32 v10, v7, v10 :: v_dual_mov_b32 v23, v8
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp41:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ]
	v_mov_b32_e32 v7, v10
	v_mov_b32_dpp v23, v23 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v7, v7 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp42:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ] ]
	v_dual_max_f32 v40, v7, v7 :: v_dual_lshlrev_b32 v7, 3, v78
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_dual_max_f32 v23, v23, v23 :: v_dual_max_f32 v38, v10, v40
	v_max_f32_e32 v39, v8, v23
	s_delay_alu instid0(VALU_DEP_3)
.Ltmp43:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ]
	v_add3_u32 v8, 0, v7, v41
	ds_store_b64 v42, v[38:39]
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b64 v[38:39], v8
.Ltmp44:
	.loc	1 83 18                         ; generate_amdgcn.py:83:18 @[ generate_amdgcn.py:243:9 ]
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 76 14                         ; generate_amdgcn.py:76:14 @[ generate_amdgcn.py:243:9 ]
	v_max_f32_e32 v8, v38, v38
	v_max_f32_e32 v10, v39, v39
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_max_f32_e32 v8, 0x2b8cbccc, v8
	v_max_f32_e32 v10, 0x2b8cbccc, v10
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_div_scale_f32 v23, null, 0x40e00000, 0x40e00000, v8
	v_div_scale_f32 v38, null, 0x40e00000, 0x40e00000, v10
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_rcp_f32_e32 v39, v23
	v_rcp_f32_e32 v40, v38
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_fma_f32 v41, -v23, v39, 1.0
	v_fma_f32 v42, -v38, v40, 1.0
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v39, v41, v39
	v_div_scale_f32 v43, vcc_lo, v8, 0x40e00000, v8
	v_div_scale_f32 v41, s0, v10, 0x40e00000, v10
	v_fmac_f32_e32 v40, v42, v40
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_mul_f32_e32 v42, v43, v39
	v_mul_f32_e32 v44, v41, v40
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v45, -v23, v42, v43
	v_fma_f32 v46, -v38, v44, v41
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fmac_f32_e32 v42, v45, v39
	v_fmac_f32_e32 v44, v46, v40
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v23, -v23, v42, v43
	v_fma_f32 v38, -v38, v44, v41
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_div_fmas_f32 v23, v23, v39, v42
	s_mov_b32 vcc_lo, s0
	.loc	1 76 13 is_stmt 0               ; generate_amdgcn.py:76:13 @[ generate_amdgcn.py:243:9 ]
	v_mov_b16_e32 v39.h, 0
	.loc	1 76 14                         ; generate_amdgcn.py:76:14 @[ generate_amdgcn.py:243:9 ]
	v_div_fmas_f32 v38, v38, v40, v44
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_div_fixup_f32 v8, v23, 0x40e00000, v8
	v_div_fixup_f32 v23, v38, 0x40e00000, v10
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 76 13                         ; generate_amdgcn.py:76:13 @[ generate_amdgcn.py:243:9 ]
	v_mov_b16_e32 v10.h, v39.h
	v_mov_b16_e32 v10.l, v8.h
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_mov_b16_e32 v39.l, v23.h
	v_and_b32_e32 v10, 1, v10
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_and_b32_e32 v38, 1, v39
	v_add3_u32 v10, v8, v10, 0x7fff
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_add3_u32 v8, v23, v38, 0x7fff
	.loc	1 78 35 is_stmt 1               ; generate_amdgcn.py:78:35 @[ generate_amdgcn.py:243:9 ]
	v_and_b32_e32 v38, 0xffff0000, v10
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_and_b32_e32 v23, 0xffff0000, v8
	.loc	1 76 13                         ; generate_amdgcn.py:76:13 @[ generate_amdgcn.py:243:9 ]
	v_mov_b16_e32 v8.l, v10.h
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:243:9 ]
	v_div_scale_f32 v59, null, v38, v38, v27
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v75, v59
	v_fma_f32 v94, -v59, v75, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v75, v94, v75
	v_div_scale_f32 v61, null, v38, v38, v26
	v_div_scale_f32 v45, null, v38, v38, v34
	v_div_scale_f32 v49, null, v38, v38, v32
	v_rcp_f32_e32 v76, v61
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_rcp_f32_e32 v68, v45
	v_div_scale_f32 v57, null, v38, v38, v28
	v_rcp_f32_e32 v70, v49
	v_div_scale_f32 v39, null, v38, v38, v37
	v_div_scale_f32 v41, null, v38, v38, v36
	v_div_scale_f32 v53, null, v38, v38, v30
	s_delay_alu instid0(TRANS32_DEP_3) | instskip(SKIP_2) | instid1(TRANS32_DEP_3)
	v_fma_f32 v95, -v61, v76, 1.0
	v_div_scale_f32 v62, s10, v26, v38, v26
	v_rcp_f32_e32 v74, v57
	v_fma_f32 v87, -v45, v68, 1.0
	s_delay_alu instid0(TRANS32_DEP_2)
	v_fma_f32 v89, -v49, v70, 1.0
	v_fmac_f32_e32 v76, v95, v76
	v_div_scale_f32 v43, null, v38, v38, v35
	v_rcp_f32_e32 v65, v39
	v_div_scale_f32 v46, s2, v34, v38, v34
	v_div_scale_f32 v50, s4, v32, v38, v32
	v_rcp_f32_e32 v66, v41
	v_rcp_f32_e32 v72, v53
	v_dual_fmac_f32 v70, v89, v70 :: v_dual_mul_f32 v95, v62, v76
	v_fmac_f32_e32 v68, v87, v68
	v_rcp_f32_e32 v67, v43
	v_fma_f32 v93, -v57, v74, 1.0
	s_delay_alu instid0(VALU_DEP_3)
	v_mul_f32_e32 v89, v50, v70
	v_fma_f32 v84, -v39, v65, 1.0
	v_mul_f32_e32 v87, v46, v68
	v_div_scale_f32 v58, s8, v28, v38, v28
	v_fma_f32 v85, -v41, v66, 1.0
	v_fma_f32 v91, -v53, v72, 1.0
	s_delay_alu instid0(VALU_DEP_4)
	v_fma_f32 v100, -v45, v87, v46
	v_fmac_f32_e32 v74, v93, v74
	v_fma_f32 v86, -v43, v67, 1.0
	v_div_scale_f32 v40, vcc_lo, v37, v38, v37
	v_fmac_f32_e32 v65, v84, v65
	v_div_scale_f32 v42, s0, v36, v38, v36
	v_div_scale_f32 v54, s6, v30, v38, v30
	v_fmac_f32_e32 v87, v100, v68
	v_dual_fmac_f32 v72, v91, v72 :: v_dual_mul_f32 v93, v58, v74
	v_fmac_f32_e32 v66, v85, v66
	v_div_scale_f32 v44, s1, v35, v38, v35
	v_fmac_f32_e32 v67, v86, v67
	v_fma_f32 v102, -v49, v89, v50
	v_mul_f32_e32 v84, v40, v65
	v_div_scale_f32 v47, null, v38, v38, v33
	v_mul_f32_e32 v91, v54, v72
	v_mul_f32_e32 v85, v42, v66
	v_fma_f32 v106, -v57, v93, v58
	v_mul_f32_e32 v86, v44, v67
	v_div_scale_f32 v51, null, v38, v38, v31
	v_fmac_f32_e32 v89, v102, v70
	v_fma_f32 v97, -v39, v84, v40
	v_rcp_f32_e32 v69, v47
	v_fma_f32 v98, -v41, v85, v42
	v_div_scale_f32 v55, null, v38, v38, v29
	v_fmac_f32_e32 v93, v106, v74
	v_fma_f32 v99, -v43, v86, v44
	v_rcp_f32_e32 v71, v51
	v_fma_f32 v104, -v53, v91, v54
	v_fmac_f32_e32 v84, v97, v65
	v_div_scale_f32 v64, null, v38, v38, v24
	v_fmac_f32_e32 v85, v98, v66
	v_rcp_f32_e32 v73, v55
	v_dual_fmac_f32 v86, v99, v67 :: v_dual_fmac_f32 v91, v104, v72
	v_fma_f32 v39, -v39, v84, v40
	v_rcp_f32_e32 v83, v64
	v_fma_f32 v88, -v47, v69, 1.0
	v_fma_f32 v40, -v41, v85, v42
	v_fma_f32 v41, -v43, v86, v44
	v_fma_f32 v90, -v51, v71, 1.0
	v_div_fmas_f32 v39, v39, v65, v84
	s_mov_b32 vcc_lo, s0
	v_div_scale_f32 v48, s3, v33, v38, v33
	v_fmac_f32_e32 v69, v88, v69
	v_fma_f32 v42, -v45, v87, v46
	v_div_fmas_f32 v40, v40, v66, v85
	s_mov_b32 vcc_lo, s1
	v_fma_f32 v92, -v55, v73, 1.0
	v_div_fmas_f32 v41, v41, v67, v86
	s_mov_b32 vcc_lo, s2
	v_div_scale_f32 v52, s5, v31, v38, v31
	v_fmac_f32_e32 v71, v90, v71
	v_div_fixup_f32 v37, v39, v38, v37
	v_div_fmas_f32 v39, v42, v68, v87
	v_fma_f32 v42, -v64, v83, 1.0
	v_mul_f32_e32 v88, v48, v69
	v_div_scale_f32 v56, s7, v29, v38, v29
	v_fmac_f32_e32 v73, v92, v73
	v_mul_f32_e32 v90, v52, v71
	v_fmac_f32_e32 v83, v42, v83
	v_fma_f32 v101, -v47, v88, v48
	v_div_scale_f32 v42, s1, v24, v38, v24
	v_mul_f32_e32 v92, v56, v73
	v_fma_f32 v103, -v51, v90, v52
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v88, v101, v69
	v_div_scale_f32 v63, null, v38, v38, v25
	v_fma_f32 v105, -v55, v92, v56
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v90, v103, v71
	v_fma_f32 v43, -v47, v88, v48
	v_fma_f32 v44, -v49, v89, v50
	v_rcp_f32_e32 v82, v63
	v_fmac_f32_e32 v92, v105, v73
	s_mov_b32 vcc_lo, s3
	v_fma_f32 v45, -v51, v90, v52
	v_div_fixup_f32 v36, v40, v38, v36
	v_div_fmas_f32 v40, v43, v69, v88
	s_mov_b32 vcc_lo, s4
	v_fma_f32 v46, -v53, v91, v54
	v_div_fixup_f32 v35, v41, v38, v35
	v_div_fmas_f32 v41, v44, v70, v89
	s_mov_b32 vcc_lo, s5
	v_fma_f32 v47, -v55, v92, v56
	v_div_fixup_f32 v34, v39, v38, v34
	v_div_fmas_f32 v39, v45, v71, v90
	s_mov_b32 vcc_lo, s6
	v_div_scale_f32 v60, s9, v27, v38, v27
	v_div_fixup_f32 v33, v40, v38, v33
	v_div_fmas_f32 v40, v46, v72, v91
	s_mov_b32 vcc_lo, s7
	v_fma_f32 v96, -v63, v82, 1.0
	v_div_fixup_f32 v32, v41, v38, v32
	v_div_fmas_f32 v41, v47, v73, v92
	v_mul_f32_e32 v94, v60, v75
	v_div_fixup_f32 v30, v40, v38, v30
	v_fma_f32 v40, -v61, v95, v62
	v_fmac_f32_e32 v82, v96, v82
	v_div_fixup_f32 v29, v41, v38, v29
	v_div_scale_f32 v41, s0, v25, v38, v25
	v_fma_f32 v107, -v59, v94, v60
	v_fma_f32 v48, -v57, v93, v58
	s_delay_alu instid0(VALU_DEP_3)
	v_dual_fmac_f32 v95, v40, v76 :: v_dual_mul_f32 v40, v41, v82
	v_div_scale_f32 v43, null, v38, v38, v22
	s_mov_b32 vcc_lo, s8
	v_fmac_f32_e32 v94, v107, v75
	v_div_fixup_f32 v31, v39, v38, v31
	v_div_fmas_f32 v39, v48, v74, v93
	v_fma_f32 v45, -v63, v40, v41
	v_rcp_f32_e32 v46, v43
	v_div_scale_f32 v48, null, v38, v38, v21
	s_delay_alu instid0(VALU_DEP_3)
	v_div_fixup_f32 v28, v39, v38, v28
	v_fma_f32 v39, -v59, v94, v60
	v_fma_f32 v44, -v61, v95, v62
	v_dual_mul_f32 v47, v42, v83 :: v_dual_fmac_f32 v40, v45, v82
	v_rcp_f32_e32 v45, v48
	s_mov_b32 vcc_lo, s9
	s_delay_alu instid0(TRANS32_DEP_2)
	v_fma_f32 v50, -v43, v46, 1.0
	v_div_fmas_f32 v39, v39, v75, v94
	s_mov_b32 vcc_lo, s10
	v_fma_f32 v49, -v64, v47, v42
	v_div_fmas_f32 v44, v44, v76, v95
	v_fmac_f32_e32 v46, v50, v46
	v_div_fixup_f32 v27, v39, v38, v27
	v_fma_f32 v39, -v63, v40, v41
	v_fmac_f32_e32 v47, v49, v83
	v_div_fixup_f32 v26, v44, v38, v26
	v_div_scale_f32 v41, s2, v22, v38, v22
	v_fma_f32 v44, -v48, v45, 1.0
	s_mov_b32 vcc_lo, s0
	v_div_scale_f32 v49, s0, v21, v38, v21
	v_div_fmas_f32 v39, v39, v82, v40
	v_fma_f32 v40, -v64, v47, v42
	v_dual_mul_f32 v42, v41, v46 :: v_dual_fmac_f32 v45, v44, v45
	v_div_scale_f32 v44, null, v23, v23, v20
	s_mov_b32 vcc_lo, s1
	v_fma_f32 v50, -v43, v42, v41
	v_div_fmas_f32 v40, v40, v83, v47
	v_rcp_f32_e32 v47, v44
	v_mul_f32_e32 v51, v49, v45
	v_div_scale_f32 v52, null, v23, v23, v19
	v_fmac_f32_e32 v42, v50, v46
	v_div_fixup_f32 v25, v39, v38, v25
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(TRANS32_DEP_2)
	v_fma_f32 v39, -v48, v51, v49
	v_div_fixup_f32 v24, v40, v38, v24
	v_rcp_f32_e32 v40, v52
	v_fma_f32 v41, -v43, v42, v41
	v_fma_f32 v50, -v44, v47, 1.0
	v_div_scale_f32 v43, null, v23, v23, v18
	v_fmac_f32_e32 v51, v39, v45
	s_mov_b32 vcc_lo, s2
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v47, v50, v47
	v_rcp_f32_e32 v50, v43
	v_div_scale_f32 v39, s1, v20, v23, v20
	v_div_fmas_f32 v41, v41, v46, v42
	v_fma_f32 v42, -v48, v51, v49
	v_fma_f32 v53, -v52, v40, 1.0
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(TRANS32_DEP_1)
	v_mul_f32_e32 v46, v39, v47
	s_mov_b32 vcc_lo, s0
	v_div_scale_f32 v48, s2, v19, v23, v19
	v_fma_f32 v49, -v43, v50, 1.0
	v_div_fmas_f32 v42, v42, v45, v51
	v_div_scale_f32 v54, null, v23, v23, v17
	v_div_fixup_f32 v22, v41, v38, v22
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_4) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v50, v49, v50
	v_div_scale_f32 v49, s3, v18, v23, v18
	v_div_fixup_f32 v21, v42, v38, v21
	v_rcp_f32_e32 v56, v54
	v_div_scale_f32 v42, null, v23, v23, v16
	v_mul_f32_e32 v51, v49, v50
	v_fmac_f32_e32 v40, v53, v40
	v_fma_f32 v53, -v44, v46, v39
	s_mov_b32 vcc_lo, s1
	.loc	1 78 9 is_stmt 0                ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:243:9 ]
	v_rndne_f32_e32 v27, v27
	v_rndne_f32_e32 v31, v31
	v_rndne_f32_e32 v25, v25
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:243:9 ]
	v_fmac_f32_e32 v46, v53, v47
	v_fma_f32 v41, -v54, v56, 1.0
	.loc	1 78 9                          ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:243:9 ]
	v_rndne_f32_e32 v36, v36
	v_rndne_f32_e32 v35, v35
	v_rndne_f32_e32 v32, v32
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:243:9 ]
	v_fma_f32 v38, -v44, v46, v39
	v_fma_f32 v39, -v43, v51, v49
	v_fmac_f32_e32 v56, v41, v56
	v_div_scale_f32 v41, s0, v17, v23, v17
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_div_fmas_f32 v38, v38, v47, v46
	v_fmac_f32_e32 v51, v39, v50
	v_mul_f32_e32 v55, v48, v40
	v_rcp_f32_e32 v39, v42
	s_mov_b32 vcc_lo, s2
	v_div_fixup_f32 v20, v38, v23, v20
	v_fma_f32 v43, -v43, v51, v49
	v_fma_f32 v45, -v52, v55, v48
	.loc	1 78 9                          ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:243:9 ]
	v_rndne_f32_e32 v30, v30
	v_rndne_f32_e32 v24, v24
	v_rndne_f32_e32 v34, v34
	v_rndne_f32_e32 v33, v33
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:243:9 ]
	v_fmac_f32_e32 v55, v45, v40
	v_div_scale_f32 v45, null, v23, v23, v15
	v_fma_f32 v46, -v42, v39, 1.0
	.loc	1 78 9                          ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:243:9 ]
	v_rndne_f32_e32 v20, v20
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:243:9 ]
	v_fma_f32 v44, -v52, v55, v48
	v_rcp_f32_e32 v47, v45
	.loc	1 78 9                          ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:243:9 ]
	v_rndne_f32_e32 v26, v26
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:243:9 ]
	v_fmac_f32_e32 v39, v46, v39
	v_div_scale_f32 v46, s1, v16, v23, v16
	v_div_fmas_f32 v40, v44, v40, v55
	v_mul_f32_e32 v44, v41, v56
	s_mov_b32 vcc_lo, s3
	s_delay_alu instid0(VALU_DEP_3)
	v_mul_f32_e32 v38, v46, v39
	v_div_fmas_f32 v43, v43, v50, v51
	v_div_fixup_f32 v19, v40, v23, v19
	v_fma_f32 v48, -v54, v44, v41
	v_fma_f32 v40, -v45, v47, 1.0
	s_mov_b32 vcc_lo, s0
	v_div_fixup_f32 v18, v43, v23, v18
	v_div_scale_f32 v43, null, v23, v23, v14
	v_fmac_f32_e32 v44, v48, v56
	v_fma_f32 v48, -v42, v38, v46
	v_fmac_f32_e32 v47, v40, v47
	v_div_scale_f32 v40, s2, v15, v23, v15
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v41, -v54, v44, v41
	v_fmac_f32_e32 v38, v48, v39
	v_rcp_f32_e32 v49, v43
	v_div_scale_f32 v48, null, v23, v23, v13
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_div_fmas_f32 v41, v41, v56, v44
	v_mul_f32_e32 v44, v40, v47
	s_mov_b32 vcc_lo, s1
	v_rcp_f32_e32 v50, v48
	.loc	1 78 9                          ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:243:9 ]
	v_rndne_f32_e32 v19, v19
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:243:9 ]
	v_div_fixup_f32 v17, v41, v23, v17
	v_fma_f32 v41, -v42, v38, v46
	v_fma_f32 v42, -v45, v44, v40
	v_fma_f32 v46, -v43, v49, 1.0
	.loc	1 78 9                          ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:243:9 ]
	v_rndne_f32_e32 v18, v18
	v_rndne_f32_e32 v17, v17
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:243:9 ]
	v_div_fmas_f32 v38, v41, v39, v38
	v_div_scale_f32 v39, null, v23, v23, v12
	v_fmac_f32_e32 v44, v42, v47
	v_fmac_f32_e32 v49, v46, v49
	v_div_scale_f32 v46, null, v23, v23, v11
	s_delay_alu instid0(VALU_DEP_4)
	v_rcp_f32_e32 v42, v39
	v_div_scale_f32 v41, s0, v14, v23, v14
	v_div_fixup_f32 v16, v38, v23, v16
	v_fma_f32 v38, -v48, v50, 1.0
	v_rcp_f32_e32 v52, v46
	v_fma_f32 v40, -v45, v44, v40
	v_mul_f32_e32 v45, v41, v49
	s_mov_b32 vcc_lo, s2
	v_fmac_f32_e32 v50, v38, v50
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_fma_f32 v51, -v39, v42, 1.0
	v_div_scale_f32 v38, s1, v13, v23, v13
	v_div_fmas_f32 v40, v40, v47, v44
	v_fma_f32 v44, -v43, v45, v41
	v_fmac_f32_e32 v42, v51, v42
	v_div_scale_f32 v51, null, v23, v23, v9
	v_mul_f32_e32 v47, v38, v50
	v_div_scale_f32 v53, s2, v12, v23, v12
	v_fma_f32 v54, -v46, v52, 1.0
	s_delay_alu instid0(VALU_DEP_4)
	v_rcp_f32_e32 v55, v51
	v_fmac_f32_e32 v45, v44, v49
	v_fma_f32 v44, -v48, v47, v38
	v_mul_f32_e32 v56, v53, v42
	v_fmac_f32_e32 v52, v54, v52
	v_div_scale_f32 v54, s3, v11, v23, v11
	v_div_fixup_f32 v15, v40, v23, v15
	v_fma_f32 v40, -v43, v45, v41
	v_fmac_f32_e32 v47, v44, v50
	v_fma_f32 v41, -v39, v56, v53
	v_mul_f32_e32 v43, v54, v52
	v_fma_f32 v44, -v51, v55, 1.0
	s_mov_b32 vcc_lo, s0
	v_fma_f32 v38, -v48, v47, v38
	v_div_fmas_f32 v40, v40, v49, v45
	v_fmac_f32_e32 v56, v41, v42
	v_fma_f32 v41, -v46, v43, v54
	v_fmac_f32_e32 v55, v44, v55
	v_div_scale_f32 v44, s0, v9, v23, v9
	v_div_scale_f32 v45, null, v23, v23, v6
	s_mov_b32 vcc_lo, s1
	v_fmac_f32_e32 v43, v41, v52
	v_mul_f32_e32 v41, v44, v55
	v_div_fmas_f32 v38, v38, v50, v47
	v_rcp_f32_e32 v47, v45
	v_fma_f32 v39, -v39, v56, v53
	v_div_fixup_f32 v14, v40, v23, v14
	s_mov_b32 vcc_lo, s2
	v_div_fixup_f32 v13, v38, v23, v13
	v_div_scale_f32 v49, null, v23, v23, v1
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 78 9                          ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:243:9 ]
	v_rndne_f32_e32 v14, v14
	v_rndne_f32_e32 v29, v29
	v_rndne_f32_e32 v13, v13
	s_delay_alu instid0(TRANS32_DEP_1)
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:243:9 ]
	v_fma_f32 v40, -v45, v47, 1.0
	.loc	1 78 9                          ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:243:9 ]
	v_rndne_f32_e32 v28, v28
	v_rndne_f32_e32 v22, v22
	v_rndne_f32_e32 v21, v21
	v_rndne_f32_e32 v16, v16
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:243:9 ]
	v_fmac_f32_e32 v47, v40, v47
	v_div_fmas_f32 v39, v39, v42, v56
	v_fma_f32 v42, -v46, v43, v54
	v_fma_f32 v46, -v51, v41, v44
	s_mov_b32 vcc_lo, s3
	v_div_scale_f32 v40, null, v23, v23, v4
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_div_fmas_f32 v42, v42, v52, v43
	v_fmac_f32_e32 v41, v46, v55
	s_mov_b32 vcc_lo, s0
	v_div_fixup_f32 v12, v39, v23, v12
	v_div_scale_f32 v39, null, v23, v23, v5
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_fma_f32 v38, -v51, v41, v44
	v_rcp_f32_e32 v44, v40
	v_div_fixup_f32 v11, v42, v23, v11
	v_div_scale_f32 v42, null, v23, v23, v3
	v_div_fmas_f32 v38, v38, v55, v41
	v_div_scale_f32 v43, vcc_lo, v6, v23, v6
	v_rcp_f32_e32 v41, v39
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_rcp_f32_e32 v46, v42
	v_div_fixup_f32 v9, v38, v23, v9
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_3)
	v_mul_f32_e32 v48, v43, v47
	v_fma_f32 v50, -v40, v44, 1.0
	v_rcp_f32_e32 v51, v49
	.loc	1 78 9                          ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:243:9 ]
	v_rndne_f32_e32 v12, v12
	v_rndne_f32_e32 v9, v9
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:243:9 ]
	v_fma_f32 v52, -v45, v48, v43
	.loc	1 78 9                          ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:243:9 ]
	v_rndne_f32_e32 v11, v11
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:243:9 ]
	v_fma_f32 v38, -v39, v41, 1.0
	v_fma_f32 v53, -v42, v46, 1.0
	.loc	1 78 9                          ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:243:9 ]
	v_rndne_f32_e32 v15, v15
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:243:9 ]
	v_fmac_f32_e32 v48, v52, v47
	.loc	1 86 37 is_stmt 1               ; generate_amdgcn.py:86:37 @[ generate_amdgcn.py:243:9 ]
	s_ashr_i32 s4, s29, 31
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:243:9 ]
	v_fmac_f32_e32 v41, v38, v41
	v_div_scale_f32 v38, s0, v5, v23, v5
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_fma_f32 v43, -v45, v48, v43
	v_fma_f32 v55, -v49, v51, 1.0
	v_div_fmas_f32 v43, v43, v47, v48
	s_mov_b32 vcc_lo, s0
	s_mov_b32 s0, 0xc1000000
	s_delay_alu instid0(VALU_DEP_2)
	v_fmac_f32_e32 v51, v55, v51
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:243:9 ]
	v_med3_f32 v27, v27, s0, 0x40e00000
	v_med3_f32 v31, v31, s0, 0x40e00000
	v_med3_f32 v25, v25, s0, 0x40e00000
	v_med3_f32 v13, v13, s0, 0x40e00000
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:243:9 ]
	v_div_scale_f32 v55, s3, v1, v23, v1
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:243:9 ]
	v_cvt_i32_f32_e32 v27, v27
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:243:9 ]
	v_fmac_f32_e32 v44, v50, v44
	v_div_scale_f32 v50, s1, v4, v23, v4
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:243:9 ]
	v_cvt_i32_f32_e32 v31, v31
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:243:9 ]
	v_mul_f32_e32 v54, v38, v41
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:243:9 ]
	v_cvt_i32_f32_e32 v25, v25
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:243:9 ]
	v_mul_f32_e32 v56, v50, v44
	v_fmac_f32_e32 v46, v53, v46
	v_div_scale_f32 v53, s2, v3, v23, v3
	v_mul_f32_e32 v58, v55, v51
	v_fma_f32 v45, -v40, v56, v50
	v_div_fixup_f32 v6, v43, v23, v6
	s_delay_alu instid0(VALU_DEP_4)
	v_mul_f32_e32 v57, v53, v46
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:243:9 ]
	v_med3_f32 v36, v36, s0, 0x40e00000
	v_med3_f32 v35, v35, s0, 0x40e00000
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:243:9 ]
	v_fmac_f32_e32 v56, v45, v44
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:243:9 ]
	v_cvt_i32_f32_e32 v45, v13
	v_and_b32_e32 v13, 15, v31
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:243:9 ]
	v_fma_f32 v52, -v39, v54, v38
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:243:9 ]
	v_med3_f32 v32, v32, s0, 0x40e00000
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:243:9 ]
	v_fma_f32 v40, -v40, v56, v50
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:243:9 ]
	v_med3_f32 v30, v30, s0, 0x40e00000
	v_med3_f32 v24, v24, s0, 0x40e00000
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:243:9 ]
	v_fmac_f32_e32 v54, v52, v41
	v_fma_f32 v52, -v42, v57, v53
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:243:9 ]
	v_med3_f32 v19, v19, s0, 0x40e00000
	.loc	1 78 9                          ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:243:9 ]
	v_rndne_f32_e32 v6, v6
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:243:9 ]
	v_med3_f32 v34, v34, s0, 0x40e00000
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:243:9 ]
	v_fma_f32 v38, -v39, v54, v38
	v_fma_f32 v39, -v49, v58, v55
	v_fmac_f32_e32 v57, v52, v46
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:243:9 ]
	v_med3_f32 v33, v33, s0, 0x40e00000
	v_med3_f32 v20, v20, s0, 0x40e00000
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:243:9 ]
	v_div_fmas_f32 v38, v38, v41, v54
	v_fmac_f32_e32 v58, v39, v51
	v_fma_f32 v39, -v42, v57, v53
	s_mov_b32 vcc_lo, s1
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:243:9 ]
	v_med3_f32 v14, v14, s0, 0x40e00000
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:243:9 ]
	v_div_fmas_f32 v40, v40, v44, v56
	v_fma_f32 v41, -v49, v58, v55
	s_mov_b32 vcc_lo, s2
	v_div_fixup_f32 v5, v38, v23, v5
	v_div_fmas_f32 v39, v39, v46, v57
	s_mov_b32 vcc_lo, s3
	v_div_fixup_f32 v4, v40, v23, v4
	v_div_fmas_f32 v41, v41, v51, v58
	.loc	1 78 9 is_stmt 0                ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:243:9 ]
	v_rndne_f32_e32 v5, v5
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:243:9 ]
	v_div_fixup_f32 v3, v39, v23, v3
	.loc	1 77 9 is_stmt 1                ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:243:9 ]
	v_med3_f32 v12, v12, s0, 0x40e00000
	.loc	1 78 9                          ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:243:9 ]
	v_rndne_f32_e32 v4, v4
	.loc	1 78 29 is_stmt 0               ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:243:9 ]
	v_div_fixup_f32 v1, v41, v23, v1
	.loc	1 78 9                          ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:243:9 ]
	v_rndne_f32_e32 v23, v37
	.loc	1 77 9 is_stmt 1                ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:243:9 ]
	v_med3_f32 v9, v9, s0, 0x40e00000
	v_med3_f32 v5, v5, s0, 0x40e00000
	v_med3_f32 v4, v4, s0, 0x40e00000
	.loc	1 78 9                          ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:243:9 ]
	v_rndne_f32_e32 v1, v1
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:243:9 ]
	v_cvt_i32_f32_e32 v36, v36
	v_cvt_i32_f32_e32 v35, v35
	v_cvt_i32_f32_e32 v32, v32
	v_cvt_i32_f32_e32 v30, v30
	v_med3_f32 v1, v1, s0, 0x40e00000
	v_cvt_i32_f32_e32 v24, v24
	v_cvt_i32_f32_e32 v39, v19
	.loc	1 83 18                         ; generate_amdgcn.py:83:18 @[ generate_amdgcn.py:243:9 ]
	v_lshlrev_b32_e32 v31, 5, v0
	.loc	1 78 9                          ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:243:9 ]
	v_rndne_f32_e32 v3, v3
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:243:9 ]
	v_cvt_i32_f32_e32 v52, v1
	.loc	1 83 18                         ; generate_amdgcn.py:83:18 @[ generate_amdgcn.py:243:9 ]
	v_lshlrev_b32_e32 v1, 11, v0
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:243:9 ]
	v_med3_f32 v23, v23, s0, 0x40e00000
	v_med3_f32 v26, v26, s0, 0x40e00000
	v_med3_f32 v18, v18, s0, 0x40e00000
	v_med3_f32 v17, v17, s0, 0x40e00000
	v_med3_f32 v11, v11, s0, 0x40e00000
	v_med3_f32 v6, v6, s0, 0x40e00000
	v_cvt_i32_f32_e32 v34, v34
	v_cvt_i32_f32_e32 v33, v33
	v_cvt_i32_f32_e32 v38, v20
	v_cvt_i32_f32_e32 v44, v14
	v_cvt_i32_f32_e32 v46, v12
	v_cvt_i32_f32_e32 v9, v9
	v_cvt_i32_f32_e32 v49, v5
	v_cvt_i32_f32_e32 v50, v4
	v_and_b32_e32 v4, 15, v36
	v_and_b32_e32 v5, 15, v35
	v_and_b32_e32 v12, 15, v32
	v_and_b32_e32 v14, 15, v30
	v_and_b32_e32 v20, 15, v24
	v_and_b32_e32 v24, 15, v39
	.loc	1 83 18                         ; generate_amdgcn.py:83:18 @[ generate_amdgcn.py:243:9 ]
	v_lshlrev_b32_e32 v39, 2, v0
	v_and_b32_e32 v30, 0x160, v0
	v_and_b32_e32 v1, 0x3000, v1
	v_lshlrev_b32_e32 v32, 7, v81
	v_lshlrev_b32_e32 v35, 7, v0
	v_and_b32_e32 v36, 0x60, v31
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:243:9 ]
	v_med3_f32 v29, v29, s0, 0x40e00000
	v_med3_f32 v28, v28, s0, 0x40e00000
	v_med3_f32 v22, v22, s0, 0x40e00000
	v_med3_f32 v21, v21, s0, 0x40e00000
	v_med3_f32 v16, v16, s0, 0x40e00000
	v_med3_f32 v15, v15, s0, 0x40e00000
	v_med3_f32 v3, v3, s0, 0x40e00000
	v_cvt_i32_f32_e32 v23, v23
	v_cvt_i32_f32_e32 v26, v26
	v_cvt_i32_f32_e32 v40, v18
	v_cvt_i32_f32_e32 v41, v17
	v_cvt_i32_f32_e32 v47, v11
	v_cvt_i32_f32_e32 v48, v6
	v_and_b32_e32 v6, 15, v34
	v_and_b32_e32 v11, 15, v33
	.loc	1 83 18                         ; generate_amdgcn.py:83:18 @[ generate_amdgcn.py:243:9 ]
	v_and_b32_e32 v33, 0x200, v39
	v_xor_b32_e32 v34, v80, v30
	v_add3_u32 v1, 0, v1, v32
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:243:9 ]
	v_and_b32_e32 v32, 15, v9
	.loc	1 83 18                         ; generate_amdgcn.py:83:18 @[ generate_amdgcn.py:243:9 ]
	v_and_or_b32 v9, 0x3600, v35, v36
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:243:9 ]
	v_cvt_i32_f32_e32 v29, v29
	v_cvt_i32_f32_e32 v28, v28
	v_cvt_i32_f32_e32 v22, v22
	v_cvt_i32_f32_e32 v37, v21
	v_cvt_i32_f32_e32 v42, v16
	v_cvt_i32_f32_e32 v43, v15
	v_cvt_i32_f32_e32 v51, v3
	v_and_b32_e32 v3, 15, v23
	v_and_b32_e32 v18, 15, v26
	v_and_b32_e32 v19, 15, v25
	v_and_b32_e32 v23, 15, v38
	v_and_b32_e32 v25, 15, v40
	v_and_b32_e32 v26, 15, v41
	.loc	1 83 18                         ; generate_amdgcn.py:83:18 @[ generate_amdgcn.py:243:9 ]
	v_add3_u32 v40, v1, v33, v34
	v_xad_u32 v9, v9, v2, 0
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:243:9 ]
	v_and_b32_e32 v15, 15, v29
	v_and_b32_e32 v16, 15, v28
	v_and_b32_e32 v17, 15, v27
	v_and_b32_e32 v21, 15, v22
	v_and_b32_e32 v22, 15, v37
	v_and_b32_e32 v30, 15, v46
	v_and_b32_e32 v31, 15, v47
	v_and_b32_e32 v33, 15, v48
	v_and_b32_e32 v27, 15, v42
	v_and_b32_e32 v28, 15, v43
	v_and_b32_e32 v29, 15, v44
	.loc	1 83 18                         ; generate_amdgcn.py:83:18 @[ generate_amdgcn.py:243:9 ]
	ds_store_b128 v40, v[3:6]
	ds_store_b128 v40, v[15:18] offset:1024
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[1:4], v9
	ds_load_b128 v[15:18], v9 offset:2048
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v40, v[23:26]
	ds_store_b128 v40, v[30:33] offset:1024
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[23:26], v9
	ds_load_b128 v[31:34], v9 offset:2048
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v40, v[11:14]
	ds_store_b128 v40, v[19:22] offset:1024
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[11:14], v9
	ds_load_b128 v[19:22], v9 offset:2048
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:243:9 ]
	v_and_b32_e32 v30, 15, v45
	v_and_b32_e32 v35, 15, v49
	v_and_b32_e32 v36, 15, v50
	v_and_b32_e32 v37, 15, v51
	v_and_b32_e32 v38, 15, v52
	.loc	1 83 18                         ; generate_amdgcn.py:83:18 @[ generate_amdgcn.py:243:9 ]
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v40, v[27:30]
	ds_store_b128 v40, v[35:38] offset:1024
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[27:30], v9
	ds_load_b128 v[35:38], v9 offset:2048
	.loc	1 86 37                         ; generate_amdgcn.py:86:37 @[ generate_amdgcn.py:243:9 ]
	s_lshr_b32 s0, s29, 31
	.loc	1 84 15                         ; generate_amdgcn.py:84:15 @[ generate_amdgcn.py:243:9 ]
	v_lshl_or_b32 v5, v15, 4, v1
	.loc	1 86 37                         ; generate_amdgcn.py:86:37 @[ generate_amdgcn.py:243:9 ]
	s_add_i32 s0, s29, s0
	.loc	1 84 15                         ; generate_amdgcn.py:84:15 @[ generate_amdgcn.py:243:9 ]
	v_lshl_or_b32 v2, v16, 4, v2
	v_lshl_or_b32 v3, v17, 4, v3
	v_lshl_or_b32 v1, v18, 4, v4
	.loc	1 86 37                         ; generate_amdgcn.py:86:37 @[ generate_amdgcn.py:243:9 ]
	s_ashr_i32 s0, s0, 1
	.loc	1 84 15                         ; generate_amdgcn.py:84:15 @[ generate_amdgcn.py:243:9 ]
	v_lshl_or_b32 v6, v21, 4, v13
	v_lshl_or_b32 v10, v22, 4, v14
	.loc	1 86 14                         ; generate_amdgcn.py:86:14 @[ generate_amdgcn.py:243:9 ]
	v_mul_lo_u32 v15, s0, v77
	.loc	1 85 21                         ; generate_amdgcn.py:85:21 @[ generate_amdgcn.py:243:9 ]
	s_lshl_b32 s1, s30, 7
	.loc	1 86 14                         ; generate_amdgcn.py:86:14 @[ generate_amdgcn.py:243:9 ]
	s_mul_i32 s2, s31, s0
	.loc	1 84 15                         ; generate_amdgcn.py:84:15 @[ generate_amdgcn.py:243:9 ]
	v_lshl_or_b32 v4, v19, 4, v11
	v_lshl_or_b32 v9, v20, 4, v12
	v_lshl_or_b32 v11, v31, 4, v23
	v_lshl_or_b32 v12, v32, 4, v24
	v_lshl_or_b32 v13, v33, 4, v25
	v_lshl_or_b32 v14, v34, 4, v26
	.loc	1 86 14                         ; generate_amdgcn.py:86:14 @[ generate_amdgcn.py:243:9 ]
	v_add3_u32 v7, s2, s1, v7
	.loc	1 84 15                         ; generate_amdgcn.py:84:15 @[ generate_amdgcn.py:243:9 ]
	s_waitcnt lgkmcnt(0)
	v_lshl_or_b32 v16, v35, 4, v27
	v_lshl_or_b32 v17, v36, 4, v28
	v_lshl_or_b32 v18, v37, 4, v29
	v_lshl_or_b32 v19, v38, 4, v30
	.loc	1 86 5                          ; generate_amdgcn.py:86:5 @[ generate_amdgcn.py:243:9 ]
	v_lshlrev_b16 v1.l, 8, v1.l
	v_and_b16 v1.h, 0xff, v3.l
	v_lshlrev_b16 v2.l, 8, v2.l
	v_and_b16 v2.h, 0xff, v5.l
	v_lshlrev_b16 v3.l, 8, v10.l
	v_and_b16 v3.h, 0xff, v6.l
	.loc	1 86 14 is_stmt 0               ; generate_amdgcn.py:86:14 @[ generate_amdgcn.py:243:9 ]
	s_lshl_b32 s0, s0, 5
	v_add_nc_u32_e32 v20, v7, v15
	v_add3_u32 v15, v15, s0, v7
	.loc	1 86 5                          ; generate_amdgcn.py:86:5 @[ generate_amdgcn.py:243:9 ]
	v_or_b16 v6.h, v1.h, v1.l
	v_or_b16 v6.l, v2.h, v2.l
	v_or_b16 v7.h, v3.h, v3.l
	v_lshlrev_b16 v1.l, 8, v9.l
	v_and_b16 v1.h, 0xff, v4.l
	v_lshlrev_b16 v2.l, 8, v14.l
	v_and_b16 v2.h, 0xff, v13.l
	v_lshlrev_b16 v3.l, 8, v12.l
	v_and_b16 v3.h, 0xff, v11.l
	v_lshlrev_b16 v4.l, 8, v19.l
	v_and_b16 v4.h, 0xff, v18.l
	v_lshlrev_b16 v5.l, 8, v17.l
	v_and_b16 v5.h, 0xff, v16.l
	v_or_b16 v7.l, v1.h, v1.l
	v_or_b16 v1.h, v2.h, v2.l
	v_or_b16 v1.l, v3.h, v3.l
	v_or_b16 v2.h, v4.h, v4.l
	v_or_b16 v2.l, v5.h, v5.l
	s_and_b32 s1, s21, 0xffff
	s_mov_b32 s3, 0x31027000
	s_mov_b32 s2, 0x7ffffffe
	s_mov_b32 s0, s20
	.loc	1 87 5 is_stmt 1                ; generate_amdgcn.py:87:5 @[ generate_amdgcn.py:243:9 ]
	v_and_b32_e32 v3, 0x7c, v39
	.loc	1 86 5                          ; generate_amdgcn.py:86:5 @[ generate_amdgcn.py:243:9 ]
	s_clause 0x1
	buffer_store_b64 v[6:7], v20, s[0:3], 0 offen
	buffer_store_b64 v[1:2], v15, s[0:3], 0 offen
	.loc	1 87 5                          ; generate_amdgcn.py:87:5 @[ generate_amdgcn.py:243:9 ]
	v_lshlrev_b32_e32 v1, 2, v78
	v_lshrrev_b32_e32 v2, 2, v79
	v_and_b32_e32 v4, 2, v77
	.loc	1 87 34 is_stmt 0               ; generate_amdgcn.py:87:34 @[ generate_amdgcn.py:243:9 ]
	s_lshr_b32 s0, s4, 24
	.loc	1 87 5                          ; generate_amdgcn.py:87:5 @[ generate_amdgcn.py:243:9 ]
	s_waitcnt lgkmcnt(0)
	.loc	1 87 34                         ; generate_amdgcn.py:87:34 @[ generate_amdgcn.py:243:9 ]
	s_add_i32 s0, s29, s0
	.loc	1 87 5                          ; generate_amdgcn.py:87:5 @[ generate_amdgcn.py:243:9 ]
	v_add3_u32 v1, 0, v1, v2
	v_add3_u32 v3, 0, v3, v4
	.loc	1 87 14                         ; generate_amdgcn.py:87:14 @[ generate_amdgcn.py:243:9 ]
	v_and_or_b32 v2, v0, 63, s31
	.loc	1 87 34                         ; generate_amdgcn.py:87:34 @[ generate_amdgcn.py:243:9 ]
	s_ashr_i32 s0, s0, 8
	.loc	1 87 5                          ; generate_amdgcn.py:87:5 @[ generate_amdgcn.py:243:9 ]
	s_barrier
	ds_store_b32 v1, v8
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_u16 v1, v3
	.loc	1 87 14                         ; generate_amdgcn.py:87:14 @[ generate_amdgcn.py:243:9 ]
	v_mul_lo_u32 v2, v2, s0
	.loc	1 87 5                          ; generate_amdgcn.py:87:5 @[ generate_amdgcn.py:243:9 ]
	v_and_b32_e32 v0, 0x1c0, v0
	s_and_b32 s1, s23, 0xffff
	s_mov_b32 s0, s22
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cmp_eq_u32_e32 vcc_lo, 0, v0
	v_add_lshl_u32 v2, v2, s30, 1
	s_delay_alu instid0(VALU_DEP_1)
	v_cndmask_b32_e32 v0, 0x80000000, v2, vcc_lo
	s_waitcnt lgkmcnt(0)
	buffer_store_b16 v1, v0, s[0:3], 0 offen
.Ltmp45:
	.loc	1 106 1 is_stmt 1               ; generate_amdgcn.py:106:1
	s_nop 0
	s_sendmsg sendmsg(MSG_DEALLOC_VGPRS)
	s_endpgm
.Ltmp46:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_int4xint4_tn_sc256_relu2_outint4sc256_bm64_bn256_bk128_gm1_w16_s2_weu2_sk1_maskk
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
		.amdhsa_next_free_vgpr 141
		.amdhsa_next_free_sgpr 37
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
	.size	amd_strix_halo_gfx1151_int4xint4_tn_sc256_relu2_outint4sc256_bm64_bn256_bk128_gm1_w16_s2_weu2_sk1_maskk, .Lfunc_end0-amd_strix_halo_gfx1151_int4xint4_tn_sc256_relu2_outint4sc256_bm64_bn256_bk128_gm1_w16_s2_weu2_sk1_maskk
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_int4xint4_tn_sc256_relu2_outint4sc256_bm64_bn256_bk128_gm1_w16_s2_weu2_sk1_maskk.num_vgpr, 141
	.set amd_strix_halo_gfx1151_int4xint4_tn_sc256_relu2_outint4sc256_bm64_bn256_bk128_gm1_w16_s2_weu2_sk1_maskk.num_agpr, 0
	.set amd_strix_halo_gfx1151_int4xint4_tn_sc256_relu2_outint4sc256_bm64_bn256_bk128_gm1_w16_s2_weu2_sk1_maskk.numbered_sgpr, 37
	.set amd_strix_halo_gfx1151_int4xint4_tn_sc256_relu2_outint4sc256_bm64_bn256_bk128_gm1_w16_s2_weu2_sk1_maskk.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_int4xint4_tn_sc256_relu2_outint4sc256_bm64_bn256_bk128_gm1_w16_s2_weu2_sk1_maskk.private_seg_size, 0
	.set amd_strix_halo_gfx1151_int4xint4_tn_sc256_relu2_outint4sc256_bm64_bn256_bk128_gm1_w16_s2_weu2_sk1_maskk.uses_vcc, 1
	.set amd_strix_halo_gfx1151_int4xint4_tn_sc256_relu2_outint4sc256_bm64_bn256_bk128_gm1_w16_s2_weu2_sk1_maskk.uses_flat_scratch, 0
	.set amd_strix_halo_gfx1151_int4xint4_tn_sc256_relu2_outint4sc256_bm64_bn256_bk128_gm1_w16_s2_weu2_sk1_maskk.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_int4xint4_tn_sc256_relu2_outint4sc256_bm64_bn256_bk128_gm1_w16_s2_weu2_sk1_maskk.has_recursion, 0
	.set amd_strix_halo_gfx1151_int4xint4_tn_sc256_relu2_outint4sc256_bm64_bn256_bk128_gm1_w16_s2_weu2_sk1_maskk.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 17980
; TotalNumSgprs: 39
; NumVgprs: 141
; ScratchSize: 0
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 17
; NumSGPRsForWavesPerEU: 39
; NumVGPRsForWavesPerEU: 141
; Occupancy: 10
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
	.byte	5                               ; Abbreviation Code
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
	.byte	1                               ; Abbrev [1] 0xb:0x92 DW_TAG_compile_unit
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
	.byte	3                               ; Abbrev [3] 0x30:0x6c DW_TAG_subprogram
	.quad	.Lfunc_begin0                   ; DW_AT_low_pc
	.long	.Lfunc_end0-.Lfunc_begin0       ; DW_AT_high_pc
	.long	42                              ; DW_AT_abstract_origin
	.byte	4                               ; Abbrev [4] 0x41:0xc DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges0                 ; DW_AT_ranges
	.byte	1                               ; DW_AT_call_file
	.byte	115                             ; DW_AT_call_line
	.byte	17                              ; DW_AT_call_column
	.byte	4                               ; Abbrev [4] 0x4d:0xc DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges1                 ; DW_AT_ranges
	.byte	1                               ; DW_AT_call_file
	.byte	114                             ; DW_AT_call_line
	.byte	17                              ; DW_AT_call_column
	.byte	4                               ; Abbrev [4] 0x59:0xc DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges2                 ; DW_AT_ranges
	.byte	1                               ; DW_AT_call_file
	.byte	181                             ; DW_AT_call_line
	.byte	22                              ; DW_AT_call_column
	.byte	5                               ; Abbrev [5] 0x65:0x36 DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.quad	.Ltmp22                         ; DW_AT_low_pc
	.long	.Ltmp45-.Ltmp22                 ; DW_AT_high_pc
	.byte	1                               ; DW_AT_call_file
	.byte	243                             ; DW_AT_call_line
	.byte	9                               ; DW_AT_call_column
	.byte	5                               ; Abbrev [5] 0x79:0x21 DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.quad	.Ltmp22                         ; DW_AT_low_pc
	.long	.Ltmp44-.Ltmp22                 ; DW_AT_high_pc
	.byte	1                               ; DW_AT_call_file
	.byte	75                              ; DW_AT_call_line
	.byte	16                              ; DW_AT_call_column
	.byte	4                               ; Abbrev [4] 0x8d:0xc DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges3                 ; DW_AT_ranges
	.byte	2                               ; DW_AT_call_file
	.byte	191                             ; DW_AT_call_line
	.byte	16                              ; DW_AT_call_column
	.byte	0                               ; End Of Children Mark
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
	.quad	.Ltmp18-.Lfunc_begin0
	.quad	.Ltmp19-.Lfunc_begin0
	.quad	.Ltmp20-.Lfunc_begin0
	.quad	.Ltmp21-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges3:
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
	.asciz	"amd_strix_halo_gfx1151_int4xint4_tn_sc256_relu2_outint4sc256_bm64_bn256_bk128_gm1_w16_s2_weu2_sk1_maskk"             ; string offset=75 ; amd_strix_halo_gfx1151_int4xint4_tn_sc256_relu2_outint4sc256_bm64_bn256_bk128_gm1_w16_s2_weu2_sk1_maskk
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
    .name:           amd_strix_halo_gfx1151_int4xint4_tn_sc256_relu2_outint4sc256_bm64_bn256_bk128_gm1_w16_s2_weu2_sk1_maskk
    .private_segment_fixed_size: 0
    .sgpr_count:     39
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_int4xint4_tn_sc256_relu2_outint4sc256_bm64_bn256_bk128_gm1_w16_s2_weu2_sk1_maskk.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     141
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
