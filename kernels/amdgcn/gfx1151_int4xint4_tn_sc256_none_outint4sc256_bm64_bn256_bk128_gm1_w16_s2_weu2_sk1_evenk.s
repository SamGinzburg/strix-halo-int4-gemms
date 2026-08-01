	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_int4xint4_tn_sc256_none_outint4sc256_bm64_bn256_bk128_gm1_w16_s2_weu2_sk1_evenk               ; -- Begin function amd_strix_halo_gfx1151_int4xint4_tn_sc256_none_outint4sc256_bm64_bn256_bk128_gm1_w16_s2_weu2_sk1_evenk
	.p2align	8
	.type	amd_strix_halo_gfx1151_int4xint4_tn_sc256_none_outint4sc256_bm64_bn256_bk128_gm1_w16_s2_weu2_sk1_evenk,@function
amd_strix_halo_gfx1151_int4xint4_tn_sc256_none_outint4sc256_bm64_bn256_bk128_gm1_w16_s2_weu2_sk1_evenk:                      ; @amd_strix_halo_gfx1151_int4xint4_tn_sc256_none_outint4sc256_bm64_bn256_bk128_gm1_w16_s2_weu2_sk1_evenk
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
	v_dual_mov_b32 v91, 0 :: v_dual_and_b32 v78, 15, v0
	v_dual_mov_b32 v88, 0 :: v_dual_mov_b32 v89, 0
	v_dual_mov_b32 v92, 0 :: v_dual_mov_b32 v93, 0
	v_dual_mov_b32 v94, 0 :: v_dual_mov_b32 v95, 0
	v_dual_mov_b32 v96, 0 :: v_dual_mov_b32 v97, 0
	v_dual_mov_b32 v82, 0 :: v_dual_mov_b32 v83, 0
	v_dual_mov_b32 v87, 0 :: v_dual_mov_b32 v90, 0
	v_dual_mov_b32 v101, 0 :: v_dual_mov_b32 v102, 0
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
	v_dual_mov_b32 v103, 0 :: v_dual_mov_b32 v104, 0
	s_cvt_f32_u32 s6, s5
	s_sub_i32 s9, 0, s5
	v_dual_mov_b32 v110, 0 :: v_dual_mov_b32 v111, 0
	s_delay_alu instid0(SALU_CYCLE_1)
	v_rcp_iflag_f32_e32 v1, s6
	v_dual_mov_b32 v112, 0 :: v_dual_mov_b32 v113, 0
	v_dual_mov_b32 v98, 0 :: v_dual_mov_b32 v99, 0
	v_dual_mov_b32 v100, 0 :: v_dual_mov_b32 v105, 0
	v_dual_mov_b32 v106, 0 :: v_dual_mov_b32 v107, 0
	v_dual_mov_b32 v108, 0 :: v_dual_mov_b32 v109, 0
	s_delay_alu instid0(TRANS32_DEP_1)
	v_readfirstlane_b32 s6, v1
	v_dual_mov_b32 v84, 0 :: v_dual_mov_b32 v85, 0
	v_dual_mov_b32 v86, 0 :: v_dual_and_b32 v115, 7, v0
	s_mul_f32 s6, s6, 0x4f7ffffe
	.loc	1 126 32                        ; generate_amdgcn.py:126:32
	v_lshrrev_b32_e32 v77, 4, v0
	v_and_b32_e32 v79, 0x100, v0
	.loc	1 127 32                        ; generate_amdgcn.py:127:32
	v_and_b32_e32 v114, 0xe0, v0
	.loc	1 117 16                        ; generate_amdgcn.py:117:16
	s_cvt_u32_f32 s6, s6
	.loc	1 127 32                        ; generate_amdgcn.py:127:32
	v_and_b32_e32 v81, 16, v0
	v_lshlrev_b32_e32 v80, 4, v78
	s_mov_b32 s12, 0
	.loc	1 117 16                        ; generate_amdgcn.py:117:16
	s_mul_i32 s9, s9, s6
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_mul_hi_u32 s9, s6, s9
	s_add_i32 s6, s6, s9
	s_xor_b32 s9, s2, s4
	s_mul_hi_u32 s6, s7, s6
	s_ashr_i32 s9, s9, 31
	s_mul_i32 s10, s6, s5
	s_delay_alu instid0(SALU_CYCLE_1)
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
	v_rcp_iflag_f32_e32 v1, s8
	v_readfirstlane_b32 s8, v1
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
	s_cbranch_scc1 .LBB0_3
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
	v_lshl_or_b32 v10, s14, 9, v114
.Ltmp16:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:181:22 ]
	s_lshr_b32 s0, s1, 24
.Ltmp17:
	.loc	1 123 22                        ; generate_amdgcn.py:123:22
	s_ashr_i32 s1, s15, 1
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	s_lshl_b32 s3, s13, 9
	v_sub_nc_u32_e32 v116, s1, v1
	v_add3_u32 v1, s31, v4, v78
.Ltmp18:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:181:22 ]
	s_add_i32 s2, s2, s0
.Ltmp19:
	.loc	1 126 32                        ; generate_amdgcn.py:126:32
	v_or_b32_e32 v5, v4, v78
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_subrev_nc_u32_e32 v123, s3, v10
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
	v_sub_nc_u32_e32 v120, s1, v2
	v_add_nc_u32_e32 v2, 32, v1
	v_mul_lo_u32 v1, s34, v1
	v_sub_nc_u32_e32 v121, s1, v77
	v_cmp_gt_i32_e64 s1, 0x80, v4
	v_mul_lo_u32 v4, s28, v4
	v_or_b32_e32 v8, s33, v77
	.loc	1 127 32                        ; generate_amdgcn.py:127:32
	v_lshrrev_b32_e32 v3, 1, v114
	v_dual_mov_b32 v91, 0 :: v_dual_lshlrev_b32 v6, 3, v115
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_mul_lo_u32 v2, s34, v2
	v_lshlrev_b32_e32 v125, 1, v1
	v_dual_mov_b32 v86, 0 :: v_dual_add_nc_u32 v1, 0x60, v8
	v_add3_u32 v119, 0, v78, v3
	v_add_nc_u32_e32 v3, 64, v8
	v_add3_u32 v126, v4, s31, v6
	v_or_b32_e32 v4, 32, v8
	v_add_nc_u32_e32 v118, 0, v5
	v_lshrrev_b32_e32 v5, 3, v81
	s_lshl_b32 s14, s14, 8
	v_dual_mov_b32 v85, 0 :: v_dual_lshlrev_b32 v124, 1, v2
	v_mad_u64_u32 v[1:2], null, s29, v1, s[14:15]
	v_cmp_gt_i32_e64 s2, 0x80, v3
	v_mad_u64_u32 v[2:3], null, s29, v3, s[14:15]
	v_mad_u64_u32 v[3:4], null, s29, v4, s[14:15]
	v_and_b32_e32 v122, 2, v5
	v_mad_u64_u32 v[4:5], null, s29, v8, s[14:15]
	s_mov_b32 s14, s12
	s_mov_b32 s15, s12
	v_lshlrev_b32_e32 v7, 3, v0
	v_mul_lo_u32 v5, s28, v9
	v_cmp_gt_i32_e64 s0, 0x80, v8
	v_subrev_nc_u32_e32 v127, s3, v1
	v_subrev_nc_u32_e32 v128, s3, v2
	v_add_nc_u32_e32 v117, 0, v7
	v_subrev_nc_u32_e32 v129, s3, v3
	v_subrev_nc_u32_e32 v130, s3, v4
	v_dual_mov_b32 v84, 0 :: v_dual_mov_b32 v107, 0
	v_add3_u32 v131, v5, s31, v6
	v_dual_mov_b32 v109, 0 :: v_dual_add_nc_u32 v132, v117, v7
	v_dual_mov_b32 v1, s12 :: v_dual_mov_b32 v2, s13
	v_dual_mov_b32 v3, s14 :: v_dual_mov_b32 v4, s15
	v_dual_mov_b32 v5, s16 :: v_dual_mov_b32 v6, s17
	v_dual_mov_b32 v7, s18 :: v_dual_mov_b32 v8, s19
	v_dual_mov_b32 v108, 0 :: v_dual_mov_b32 v105, 0
	v_dual_mov_b32 v106, 0 :: v_dual_mov_b32 v99, 0
	v_dual_mov_b32 v100, 0 :: v_dual_mov_b32 v113, 0
	v_dual_mov_b32 v98, 0 :: v_dual_mov_b32 v111, 0
	v_dual_mov_b32 v112, 0 :: v_dual_mov_b32 v103, 0
	v_dual_mov_b32 v110, 0 :: v_dual_mov_b32 v101, 0
	v_dual_mov_b32 v104, 0 :: v_dual_mov_b32 v87, 0
	v_dual_mov_b32 v102, 0 :: v_dual_mov_b32 v83, 0
	v_dual_mov_b32 v90, 0 :: v_dual_mov_b32 v97, 0
	v_dual_mov_b32 v82, 0 :: v_dual_mov_b32 v95, 0
	v_dual_mov_b32 v96, 0 :: v_dual_mov_b32 v93, 0
	v_dual_mov_b32 v94, 0 :: v_dual_mov_b32 v89, 0
	v_mov_b32_e32 v92, 0
	v_mov_b32_e32 v88, 0
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
	buffer_load_u16 v9, v125, s[24:27], 0 offen
	buffer_load_u16 v10, v124, s[24:27], 0 offen
	.loc	1 198 27                        ; generate_amdgcn.py:198:27
	v_cmp_lt_i32_e64 s3, s33, v120
	v_cmp_lt_i32_e64 s4, s33, v121
	v_cmp_lt_i32_e64 s5, s33, v116
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_add_nc_u32_e32 v125, 2, v125
	s_add_i32 s34, s34, -1
	.loc	1 198 26                        ; generate_amdgcn.py:198:26
	s_and_b32 s3, s3, vcc_lo
	s_and_b32 s4, s4, s0
	s_and_b32 s5, s5, s0
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_add_nc_u32_e32 v124, 2, v124
	.loc	1 195 18                        ; generate_amdgcn.py:195:18
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v134, 16, v10
	v_lshlrev_b32_e32 v133, 16, v9
	.loc	1 214 26                        ; generate_amdgcn.py:214:26
	v_cndmask_b32_e64 v9, 0x80000000, v131, s3
	.loc	1 220 26                        ; generate_amdgcn.py:220:26
	v_add_nc_u32_e32 v13, v80, v129
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_add_nc_u32_e32 v129, s36, v129
	v_add_nc_u32_e32 v131, s28, v131
	.loc	1 214 26                        ; generate_amdgcn.py:214:26
	buffer_load_b64 v[17:18], v9, s[12:15], 0 offen
	.loc	1 220 34                        ; generate_amdgcn.py:220:34
	v_add_nc_u32_e32 v9, v80, v130
	.loc	1 220 26 is_stmt 0              ; generate_amdgcn.py:220:26
	v_cndmask_b32_e64 v13, 0x80000000, v13, s5
	.loc	1 198 27 is_stmt 1              ; generate_amdgcn.py:198:27
	s_add_i32 s5, s33, 64
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_add_nc_u32_e32 v130, s36, v130
	.loc	1 198 27                        ; generate_amdgcn.py:198:27
	v_cmp_lt_i32_e64 s3, s5, v120
	.loc	1 220 26                        ; generate_amdgcn.py:220:26
	v_cndmask_b32_e64 v9, 0x80000000, v9, s4
	buffer_load_b128 v[13:16], v13, s[16:19], 0 offen
	.loc	1 198 27                        ; generate_amdgcn.py:198:27
	v_cmp_lt_i32_e64 s4, s5, v121
	v_cmp_lt_i32_e64 s5, s5, v116
	.loc	1 198 26 is_stmt 0              ; generate_amdgcn.py:198:26
	s_and_b32 s3, s3, s1
	.loc	1 220 26 is_stmt 1              ; generate_amdgcn.py:220:26
	buffer_load_b128 v[9:12], v9, s[16:19], 0 offen
	.loc	1 214 26                        ; generate_amdgcn.py:214:26
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_waitcnt vmcnt(2)
	ds_store_b64 v117, v[17:18] offset:16384
	.loc	1 220 26                        ; generate_amdgcn.py:220:26
	s_waitcnt vmcnt(0)
	ds_store_b128 v132, v[9:12]
	ds_store_b128 v132, v[13:16] offset:8192
	.loc	1 214 26                        ; generate_amdgcn.py:214:26
	v_cndmask_b32_e64 v9, 0x80000000, v126, s3
	.loc	1 198 26                        ; generate_amdgcn.py:198:26
	s_and_b32 s4, s4, s2
	.loc	1 220 26                        ; generate_amdgcn.py:220:26
	v_add_nc_u32_e32 v10, v80, v127
	.loc	1 198 26                        ; generate_amdgcn.py:198:26
	s_and_b32 s5, s5, s2
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_add_nc_u32_e32 v126, s28, v126
	.loc	1 214 26                        ; generate_amdgcn.py:214:26
	buffer_load_b64 v[49:50], v9, s[12:15], 0 offen
	.loc	1 220 34                        ; generate_amdgcn.py:220:34
	v_add_nc_u32_e32 v9, v80, v128
	.loc	1 214 26                        ; generate_amdgcn.py:214:26
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_add_nc_u32_e32 v127, s36, v127
	v_add_nc_u32_e32 v128, s36, v128
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
	ds_load_u8 v9, v118 offset:16704
	ds_load_u8 v10, v118 offset:16640
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	ds_load_u8 v10, v118 offset:16832
	ds_load_u8 v11, v118 offset:16768
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v34, v10, 16, v9
	ds_load_u8 v9, v118 offset:16448
	ds_load_u8 v10, v118 offset:16384
	ds_load_u8 v135, v118 offset:16416
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	ds_load_u8 v10, v118 offset:16576
	ds_load_u8 v11, v118 offset:16512
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v33, v10, 16, v9
	ds_load_u8 v9, v119 offset:1280
	ds_load_u8 v10, v119 offset:1024
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	ds_load_u8 v10, v119 offset:1792
	ds_load_u8 v11, v119 offset:1536
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v76, v10, 16, v9
	ds_load_u8 v9, v119 offset:256
	ds_load_u8 v10, v119
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	ds_load_u8 v10, v119 offset:768
	ds_load_u8 v11, v119 offset:512
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v75, v10, 16, v9
	ds_load_u8 v9, v118 offset:17216
	ds_load_u8 v10, v118 offset:17152
	v_wmma_i32_16x16x16_iu4 v[17:24], v[75:76], v[33:34], v[1:8] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	ds_load_u8 v10, v118 offset:17344
	ds_load_u8 v11, v118 offset:17280
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v36, v10, 16, v9
	ds_load_u8 v9, v118 offset:16960
	ds_load_u8 v10, v118 offset:16896
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	ds_load_u8 v10, v118 offset:17088
	ds_load_u8 v11, v118 offset:17024
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v35, v10, 16, v9
	ds_load_u8 v9, v119 offset:3328
	ds_load_u8 v10, v119 offset:3072
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	ds_load_u8 v10, v119 offset:3840
	ds_load_u8 v11, v119 offset:3584
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v74, v10, 16, v9
	ds_load_u8 v9, v119 offset:2304
	ds_load_u8 v10, v119 offset:2048
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	ds_load_u8 v10, v119 offset:2816
	ds_load_u8 v11, v119 offset:2560
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v73, v10, 16, v9
	ds_load_u8 v9, v118 offset:17728
	ds_load_u8 v10, v118 offset:17664
	v_wmma_i32_16x16x16_iu4 v[17:24], v[73:74], v[35:36], v[17:24] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	ds_load_u8 v10, v118 offset:17856
	ds_load_u8 v11, v118 offset:17792
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v38, v10, 16, v9
	ds_load_u8 v9, v118 offset:17472
	ds_load_u8 v10, v118 offset:17408
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	ds_load_u8 v10, v118 offset:17600
	ds_load_u8 v11, v118 offset:17536
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v37, v10, 16, v9
	ds_load_u8 v9, v119 offset:5376
	ds_load_u8 v10, v119 offset:5120
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	ds_load_u8 v10, v119 offset:5888
	ds_load_u8 v11, v119 offset:5632
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v72, v10, 16, v9
	ds_load_u8 v9, v119 offset:4352
	ds_load_u8 v10, v119 offset:4096
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	ds_load_u8 v10, v119 offset:4864
	ds_load_u8 v11, v119 offset:4608
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v71, v10, 16, v9
	ds_load_u8 v9, v118 offset:18240
	ds_load_u8 v10, v118 offset:18176
	v_wmma_i32_16x16x16_iu4 v[17:24], v[71:72], v[37:38], v[17:24] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	ds_load_u8 v10, v118 offset:18368
	ds_load_u8 v11, v118 offset:18304
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v40, v10, 16, v9
	ds_load_u8 v9, v118 offset:17984
	ds_load_u8 v10, v118 offset:17920
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	ds_load_u8 v10, v118 offset:18112
	ds_load_u8 v11, v118 offset:18048
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v39, v10, 16, v9
	ds_load_u8 v9, v119 offset:7424
	ds_load_u8 v10, v119 offset:7168
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	ds_load_u8 v10, v119 offset:7936
	ds_load_u8 v11, v119 offset:7680
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v70, v10, 16, v9
	ds_load_u8 v9, v119 offset:6400
	ds_load_u8 v10, v119 offset:6144
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	ds_load_u8 v10, v119 offset:6912
	ds_load_u8 v11, v119 offset:6656
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v69, v10, 16, v9
	ds_load_u8 v9, v118 offset:18752
	ds_load_u8 v10, v118 offset:18688
	v_wmma_i32_16x16x16_iu4 v[17:24], v[69:70], v[39:40], v[17:24] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	ds_load_u8 v10, v118 offset:18880
	ds_load_u8 v11, v118 offset:18816
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v62, v10, 16, v9
	ds_load_u8 v9, v118 offset:18496
	ds_load_u8 v10, v118 offset:18432
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	ds_load_u8 v10, v118 offset:18624
	ds_load_u8 v11, v118 offset:18560
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v61, v10, 16, v9
	ds_load_u8 v9, v119 offset:9472
	ds_load_u8 v10, v119 offset:9216
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	ds_load_u8 v10, v119 offset:9984
	ds_load_u8 v11, v119 offset:9728
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v32, v10, 16, v9
	ds_load_u8 v9, v119 offset:8448
	ds_load_u8 v10, v119 offset:8192
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	ds_load_u8 v10, v119 offset:8960
	ds_load_u8 v11, v119 offset:8704
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v31, v10, 16, v9
	ds_load_u8 v9, v118 offset:19264
	ds_load_u8 v10, v118 offset:19200
	v_wmma_i32_16x16x16_iu4 v[17:24], v[31:32], v[61:62], v[17:24] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	ds_load_u8 v10, v118 offset:19392
	ds_load_u8 v11, v118 offset:19328
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v64, v10, 16, v9
	ds_load_u8 v9, v118 offset:19008
	ds_load_u8 v10, v118 offset:18944
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	ds_load_u8 v10, v118 offset:19136
	ds_load_u8 v11, v118 offset:19072
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v63, v10, 16, v9
	ds_load_u8 v9, v119 offset:11520
	ds_load_u8 v10, v119 offset:11264
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	ds_load_u8 v10, v119 offset:12032
	ds_load_u8 v11, v119 offset:11776
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v30, v10, 16, v9
	ds_load_u8 v9, v119 offset:10496
	ds_load_u8 v10, v119 offset:10240
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	ds_load_u8 v10, v119 offset:11008
	ds_load_u8 v11, v119 offset:10752
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v29, v10, 16, v9
	ds_load_u8 v9, v118 offset:19776
	ds_load_u8 v10, v118 offset:19712
	v_wmma_i32_16x16x16_iu4 v[17:24], v[29:30], v[63:64], v[17:24] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	ds_load_u8 v10, v118 offset:19904
	ds_load_u8 v11, v118 offset:19840
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v66, v10, 16, v9
	ds_load_u8 v9, v118 offset:19520
	ds_load_u8 v10, v118 offset:19456
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	ds_load_u8 v10, v118 offset:19648
	ds_load_u8 v11, v118 offset:19584
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v65, v10, 16, v9
	ds_load_u8 v9, v119 offset:13568
	ds_load_u8 v10, v119 offset:13312
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	ds_load_u8 v10, v119 offset:14080
	ds_load_u8 v11, v119 offset:13824
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v28, v10, 16, v9
	ds_load_u8 v9, v119 offset:12544
	ds_load_u8 v10, v119 offset:12288
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	ds_load_u8 v10, v119 offset:13056
	ds_load_u8 v11, v119 offset:12800
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v27, v10, 16, v9
	ds_load_u8 v9, v118 offset:20288
	ds_load_u8 v10, v118 offset:20224
	v_wmma_i32_16x16x16_iu4 v[17:24], v[27:28], v[65:66], v[17:24] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	ds_load_u8 v10, v118 offset:20416
	ds_load_u8 v11, v118 offset:20352
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v68, v10, 16, v9
	ds_load_u8 v9, v118 offset:20032
	ds_load_u8 v10, v118 offset:19968
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	ds_load_u8 v10, v118 offset:20160
	ds_load_u8 v11, v118 offset:20096
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v67, v10, 16, v9
	ds_load_u8 v9, v119 offset:15616
	ds_load_u8 v10, v119 offset:15360
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	ds_load_u8 v10, v119 offset:16128
	ds_load_u8 v11, v119 offset:15872
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v26, v10, 16, v9
	ds_load_u8 v9, v119 offset:14592
	ds_load_u8 v10, v119 offset:14336
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	ds_load_u8 v10, v119 offset:15104
	ds_load_u8 v11, v119 offset:14848
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v25, v10, 16, v9
	ds_load_u8 v9, v119 offset:1408
	ds_load_u8 v10, v119 offset:1152
	v_wmma_i32_16x16x16_iu4 v[17:24], v[25:26], v[67:68], v[17:24] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	ds_load_u8 v10, v119 offset:1920
	ds_load_u8 v11, v119 offset:1664
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v52, v10, 16, v9
	ds_load_u8 v9, v119 offset:384
	ds_load_u8 v10, v119 offset:128
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	ds_load_u8 v10, v119 offset:896
	ds_load_u8 v11, v119 offset:640
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v51, v10, 16, v9
	v_wmma_i32_16x16x16_iu4 v[9:16], v[51:52], v[33:34], v[1:8] neg_lo:[1,1,0]
	ds_load_u8 v33, v119 offset:3456
	ds_load_u8 v34, v119 offset:3200
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v33, v34, v33, 0xc0c0004
	ds_load_u8 v34, v119 offset:3968
	ds_load_u8 v53, v119 offset:3712
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v34, v53, v34, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v54, v34, 16, v33
	ds_load_u8 v33, v119 offset:2432
	ds_load_u8 v34, v119 offset:2176
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v33, v34, v33, 0xc0c0004
	ds_load_u8 v34, v119 offset:2944
	ds_load_u8 v53, v119 offset:2688
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v34, v53, v34, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v53, v34, 16, v33
	ds_load_u8 v33, v119 offset:5504
	ds_load_u8 v34, v119 offset:5248
	v_wmma_i32_16x16x16_iu4 v[9:16], v[53:54], v[35:36], v[9:16] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v33, v34, v33, 0xc0c0004
	ds_load_u8 v34, v119 offset:6016
	ds_load_u8 v35, v119 offset:5760
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v34, v35, v34, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v56, v34, 16, v33
	ds_load_u8 v33, v119 offset:4480
	ds_load_u8 v34, v119 offset:4224
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v33, v34, v33, 0xc0c0004
	ds_load_u8 v34, v119 offset:4992
	ds_load_u8 v35, v119 offset:4736
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v34, v35, v34, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v55, v34, 16, v33
	ds_load_u8 v33, v119 offset:7552
	ds_load_u8 v34, v119 offset:7296
	v_wmma_i32_16x16x16_iu4 v[9:16], v[55:56], v[37:38], v[9:16] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v33, v34, v33, 0xc0c0004
	ds_load_u8 v34, v119 offset:8064
	ds_load_u8 v35, v119 offset:7808
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v34, v35, v34, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v58, v34, 16, v33
	ds_load_u8 v33, v119 offset:6528
	ds_load_u8 v34, v119 offset:6272
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v33, v34, v33, 0xc0c0004
	ds_load_u8 v34, v119 offset:7040
	ds_load_u8 v35, v119 offset:6784
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v34, v35, v34, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v57, v34, 16, v33
	ds_load_u8 v33, v119 offset:9600
	ds_load_u8 v34, v119 offset:9344
	v_wmma_i32_16x16x16_iu4 v[9:16], v[57:58], v[39:40], v[9:16] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v33, v34, v33, 0xc0c0004
	ds_load_u8 v34, v119 offset:10112
	ds_load_u8 v35, v119 offset:9856
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v34, v35, v34, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v60, v34, 16, v33
	ds_load_u8 v33, v119 offset:8576
	ds_load_u8 v34, v119 offset:8320
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v33, v34, v33, 0xc0c0004
	ds_load_u8 v34, v119 offset:9088
	ds_load_u8 v35, v119 offset:8832
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v34, v35, v34, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v59, v34, 16, v33
	ds_load_u8 v33, v119 offset:11648
	ds_load_u8 v34, v119 offset:11392
	v_wmma_i32_16x16x16_iu4 v[9:16], v[59:60], v[61:62], v[9:16] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v33, v34, v33, 0xc0c0004
	ds_load_u8 v34, v119 offset:12160
	ds_load_u8 v35, v119 offset:11904
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v34, v35, v34, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v62, v34, 16, v33
	ds_load_u8 v33, v119 offset:10624
	ds_load_u8 v34, v119 offset:10368
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v33, v34, v33, 0xc0c0004
	ds_load_u8 v34, v119 offset:11136
	ds_load_u8 v35, v119 offset:10880
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v34, v35, v34, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v61, v34, 16, v33
	ds_load_u8 v33, v119 offset:13696
	ds_load_u8 v34, v119 offset:13440
	v_wmma_i32_16x16x16_iu4 v[9:16], v[61:62], v[63:64], v[9:16] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v33, v34, v33, 0xc0c0004
	ds_load_u8 v34, v119 offset:14208
	ds_load_u8 v35, v119 offset:13952
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v34, v35, v34, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v64, v34, 16, v33
	ds_load_u8 v33, v119 offset:12672
	ds_load_u8 v34, v119 offset:12416
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v33, v34, v33, 0xc0c0004
	ds_load_u8 v34, v119 offset:13184
	ds_load_u8 v35, v119 offset:12928
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v34, v35, v34, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v63, v34, 16, v33
	ds_load_u8 v33, v119 offset:15744
	ds_load_u8 v34, v119 offset:15488
	v_wmma_i32_16x16x16_iu4 v[9:16], v[63:64], v[65:66], v[9:16] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v33, v34, v33, 0xc0c0004
	ds_load_u8 v34, v119 offset:16256
	ds_load_u8 v35, v119 offset:16000
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v34, v35, v34, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v66, v34, 16, v33
	ds_load_u8 v33, v119 offset:14720
	ds_load_u8 v34, v119 offset:14464
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v33, v34, v33, 0xc0c0004
	ds_load_u8 v34, v119 offset:15232
	ds_load_u8 v35, v119 offset:14976
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v34, v35, v34, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v65, v34, 16, v33
	ds_load_u8 v33, v118 offset:16736
	ds_load_u8 v34, v118 offset:16672
	v_wmma_i32_16x16x16_iu4 v[9:16], v[65:66], v[67:68], v[9:16] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v33, v34, v33, 0xc0c0004
	ds_load_u8 v34, v118 offset:16864
	ds_load_u8 v35, v118 offset:16800
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v34, v35, v34, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v68, v34, 16, v33
	ds_load_u8 v33, v118 offset:16480
	ds_load_u8 v34, v118 offset:16608
	ds_load_u8 v35, v118 offset:16544
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v33, v135, v33, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v34, v35, v34, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v67, v34, 16, v33
	v_wmma_i32_16x16x16_iu4 v[33:40], v[75:76], v[67:68], v[1:8] neg_lo:[1,1,0]
	ds_load_u8 v75, v118 offset:17248
	ds_load_u8 v76, v118 offset:17184
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v75, v76, v75, 0xc0c0004
	ds_load_u8 v76, v118 offset:17376
	ds_load_u8 v135, v118 offset:17312
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v76, v135, v76, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v76, v76, 16, v75
	ds_load_u8 v75, v118 offset:16992
	ds_load_u8 v135, v118 offset:16928
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v75, v135, v75, 0xc0c0004
	ds_load_u8 v135, v118 offset:17120
	ds_load_u8 v136, v118 offset:17056
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v135, v136, v135, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v75, v135, 16, v75
	v_wmma_i32_16x16x16_iu4 v[33:40], v[73:74], v[75:76], v[33:40] neg_lo:[1,1,0]
	ds_load_u8 v73, v118 offset:17760
	ds_load_u8 v74, v118 offset:17696
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v73, v74, v73, 0xc0c0004
	ds_load_u8 v74, v118 offset:17888
	ds_load_u8 v135, v118 offset:17824
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v74, v135, v74, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v74, v74, 16, v73
	ds_load_u8 v73, v118 offset:17504
	ds_load_u8 v135, v118 offset:17440
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v73, v135, v73, 0xc0c0004
	ds_load_u8 v135, v118 offset:17632
	ds_load_u8 v136, v118 offset:17568
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v135, v136, v135, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v73, v135, 16, v73
	v_wmma_i32_16x16x16_iu4 v[33:40], v[71:72], v[73:74], v[33:40] neg_lo:[1,1,0]
	ds_load_u8 v71, v118 offset:18272
	ds_load_u8 v72, v118 offset:18208
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v71, v72, v71, 0xc0c0004
	ds_load_u8 v72, v118 offset:18400
	ds_load_u8 v135, v118 offset:18336
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v72, v135, v72, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v72, v72, 16, v71
	ds_load_u8 v71, v118 offset:18016
	ds_load_u8 v135, v118 offset:17952
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v71, v135, v71, 0xc0c0004
	ds_load_u8 v135, v118 offset:18144
	ds_load_u8 v136, v118 offset:18080
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v135, v136, v135, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v71, v135, 16, v71
	v_wmma_i32_16x16x16_iu4 v[33:40], v[69:70], v[71:72], v[33:40] neg_lo:[1,1,0]
	ds_load_u8 v69, v118 offset:18784
	ds_load_u8 v70, v118 offset:18720
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v69, v70, v69, 0xc0c0004
	ds_load_u8 v70, v118 offset:18912
	ds_load_u8 v135, v118 offset:18848
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v70, v135, v70, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v70, v70, 16, v69
	ds_load_u8 v69, v118 offset:18528
	ds_load_u8 v135, v118 offset:18464
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v69, v135, v69, 0xc0c0004
	ds_load_u8 v135, v118 offset:18656
	ds_load_u8 v136, v118 offset:18592
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v135, v136, v135, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v69, v135, 16, v69
	v_wmma_i32_16x16x16_iu4 v[33:40], v[31:32], v[69:70], v[33:40] neg_lo:[1,1,0]
	ds_load_u8 v31, v118 offset:19296
	ds_load_u8 v32, v118 offset:19232
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v31, v32, v31, 0xc0c0004
	ds_load_u8 v32, v118 offset:19424
	ds_load_u8 v135, v118 offset:19360
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v32, v135, v32, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v136, v32, 16, v31
	ds_load_u8 v31, v118 offset:19040
	ds_load_u8 v32, v118 offset:18976
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v31, v32, v31, 0xc0c0004
	ds_load_u8 v32, v118 offset:19168
	ds_load_u8 v135, v118 offset:19104
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v32, v135, v32, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v135, v32, 16, v31
	v_wmma_i32_16x16x16_iu4 v[33:40], v[29:30], v[135:136], v[33:40] neg_lo:[1,1,0]
	ds_load_u8 v29, v118 offset:19808
	ds_load_u8 v30, v118 offset:19744
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v29, v30, v29, 0xc0c0004
	ds_load_u8 v30, v118 offset:19936
	ds_load_u8 v31, v118 offset:19872
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v30, v31, v30, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v138, v30, 16, v29
	ds_load_u8 v29, v118 offset:19552
	ds_load_u8 v30, v118 offset:19488
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v29, v30, v29, 0xc0c0004
	ds_load_u8 v30, v118 offset:19680
	ds_load_u8 v31, v118 offset:19616
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v30, v31, v30, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v137, v30, 16, v29
	v_wmma_i32_16x16x16_iu4 v[33:40], v[27:28], v[137:138], v[33:40] neg_lo:[1,1,0]
	ds_load_u8 v27, v118 offset:20320
	ds_load_u8 v28, v118 offset:20256
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v27, v28, v27, 0xc0c0004
	ds_load_u8 v28, v118 offset:20448
	ds_load_u8 v29, v118 offset:20384
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v28, v29, v28, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v140, v28, 16, v27
	ds_load_u8 v27, v118 offset:20064
	ds_load_u8 v28, v118 offset:20000
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v27, v28, v27, 0xc0c0004
	ds_load_u8 v28, v118 offset:20192
	ds_load_u8 v29, v118 offset:20128
	.loc	1 214 26                        ; generate_amdgcn.py:214:26
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_waitcnt vmcnt(2)
	ds_store_b64 v117, v[49:50] offset:16384
	.loc	1 220 26                        ; generate_amdgcn.py:220:26
	s_waitcnt vmcnt(1)
	ds_store_b128 v132, v[41:44]
	s_waitcnt vmcnt(0)
	ds_store_b128 v132, v[45:48] offset:8192
	.loc	1 214 26                        ; generate_amdgcn.py:214:26
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 221 27                        ; generate_amdgcn.py:221:27
	ds_load_u8 v41, v118 offset:16704
	ds_load_u8 v42, v118 offset:16640
	v_perm_b32 v28, v29, v28, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v139, v28, 16, v27
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v41, v42, v41, 0xc0c0004
	ds_load_u8 v42, v118 offset:16832
	ds_load_u8 v43, v118 offset:16768
	v_wmma_i32_16x16x16_iu4 v[33:40], v[25:26], v[139:140], v[33:40] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[25:32], v[51:52], v[67:68], v[1:8] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[25:32], v[53:54], v[75:76], v[25:32] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[25:32], v[55:56], v[73:74], v[25:32] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_wmma_i32_16x16x16_iu4 v[25:32], v[57:58], v[71:72], v[25:32] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v42, v43, v42, 0xc0c0004
	v_wmma_i32_16x16x16_iu4 v[25:32], v[59:60], v[69:70], v[25:32] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v60, v42, 16, v41
	ds_load_u8 v41, v118 offset:16448
	ds_load_u8 v42, v118 offset:16384
	v_wmma_i32_16x16x16_iu4 v[25:32], v[61:62], v[135:136], v[25:32] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[25:32], v[63:64], v[137:138], v[25:32] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[25:32], v[65:66], v[139:140], v[25:32] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v41, v42, v41, 0xc0c0004
	ds_load_u8 v42, v118 offset:16576
	ds_load_u8 v43, v118 offset:16512
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v42, v43, v42, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v59, v42, 16, v41
	ds_load_u8 v41, v119 offset:1280
	ds_load_u8 v42, v119 offset:1024
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v41, v42, v41, 0xc0c0004
	ds_load_u8 v42, v119 offset:1792
	ds_load_u8 v43, v119 offset:1536
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v42, v43, v42, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v56, v42, 16, v41
	ds_load_u8 v41, v119 offset:256
	ds_load_u8 v42, v119
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v41, v42, v41, 0xc0c0004
	ds_load_u8 v42, v119 offset:768
	ds_load_u8 v43, v119 offset:512
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v42, v43, v42, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v55, v42, 16, v41
	ds_load_u8 v41, v118 offset:17216
	ds_load_u8 v42, v118 offset:17152
	v_wmma_i32_16x16x16_iu4 v[17:24], v[55:56], v[59:60], v[17:24] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v41, v42, v41, 0xc0c0004
	ds_load_u8 v42, v118 offset:17344
	ds_load_u8 v43, v118 offset:17280
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v42, v43, v42, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v62, v42, 16, v41
	ds_load_u8 v41, v118 offset:16960
	ds_load_u8 v42, v118 offset:16896
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v41, v42, v41, 0xc0c0004
	ds_load_u8 v42, v118 offset:17088
	ds_load_u8 v43, v118 offset:17024
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v42, v43, v42, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v61, v42, 16, v41
	ds_load_u8 v41, v119 offset:3328
	ds_load_u8 v42, v119 offset:3072
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v41, v42, v41, 0xc0c0004
	ds_load_u8 v42, v119 offset:3840
	ds_load_u8 v43, v119 offset:3584
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v42, v43, v42, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v54, v42, 16, v41
	ds_load_u8 v41, v119 offset:2304
	ds_load_u8 v42, v119 offset:2048
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v41, v42, v41, 0xc0c0004
	ds_load_u8 v42, v119 offset:2816
	ds_load_u8 v43, v119 offset:2560
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v42, v43, v42, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v53, v42, 16, v41
	ds_load_u8 v41, v118 offset:17728
	ds_load_u8 v42, v118 offset:17664
	v_wmma_i32_16x16x16_iu4 v[17:24], v[53:54], v[61:62], v[17:24] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v41, v42, v41, 0xc0c0004
	ds_load_u8 v42, v118 offset:17856
	ds_load_u8 v43, v118 offset:17792
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v42, v43, v42, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v64, v42, 16, v41
	ds_load_u8 v41, v118 offset:17472
	ds_load_u8 v42, v118 offset:17408
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v41, v42, v41, 0xc0c0004
	ds_load_u8 v42, v118 offset:17600
	ds_load_u8 v43, v118 offset:17536
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v42, v43, v42, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v63, v42, 16, v41
	ds_load_u8 v41, v119 offset:5376
	ds_load_u8 v42, v119 offset:5120
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v41, v42, v41, 0xc0c0004
	ds_load_u8 v42, v119 offset:5888
	ds_load_u8 v43, v119 offset:5632
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v42, v43, v42, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v52, v42, 16, v41
	ds_load_u8 v41, v119 offset:4352
	ds_load_u8 v42, v119 offset:4096
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v41, v42, v41, 0xc0c0004
	ds_load_u8 v42, v119 offset:4864
	ds_load_u8 v43, v119 offset:4608
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v42, v43, v42, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v51, v42, 16, v41
	ds_load_u8 v41, v118 offset:18240
	ds_load_u8 v42, v118 offset:18176
	v_wmma_i32_16x16x16_iu4 v[17:24], v[51:52], v[63:64], v[17:24] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v41, v42, v41, 0xc0c0004
	ds_load_u8 v42, v118 offset:18368
	ds_load_u8 v43, v118 offset:18304
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v42, v43, v42, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v66, v42, 16, v41
	ds_load_u8 v41, v118 offset:17984
	ds_load_u8 v42, v118 offset:17920
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v41, v42, v41, 0xc0c0004
	ds_load_u8 v42, v118 offset:18112
	ds_load_u8 v43, v118 offset:18048
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v42, v43, v42, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v65, v42, 16, v41
	ds_load_u8 v41, v119 offset:7424
	ds_load_u8 v42, v119 offset:7168
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v41, v42, v41, 0xc0c0004
	ds_load_u8 v42, v119 offset:7936
	ds_load_u8 v43, v119 offset:7680
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v42, v43, v42, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v50, v42, 16, v41
	ds_load_u8 v41, v119 offset:6400
	ds_load_u8 v42, v119 offset:6144
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v41, v42, v41, 0xc0c0004
	ds_load_u8 v42, v119 offset:6912
	ds_load_u8 v43, v119 offset:6656
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v42, v43, v42, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v49, v42, 16, v41
	ds_load_u8 v41, v118 offset:18752
	ds_load_u8 v42, v118 offset:18688
	v_wmma_i32_16x16x16_iu4 v[17:24], v[49:50], v[65:66], v[17:24] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v41, v42, v41, 0xc0c0004
	ds_load_u8 v42, v118 offset:18880
	ds_load_u8 v43, v118 offset:18816
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v42, v43, v42, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v68, v42, 16, v41
	ds_load_u8 v41, v118 offset:18496
	ds_load_u8 v42, v118 offset:18432
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v41, v42, v41, 0xc0c0004
	ds_load_u8 v42, v118 offset:18624
	ds_load_u8 v43, v118 offset:18560
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v42, v43, v42, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v67, v42, 16, v41
	ds_load_u8 v41, v119 offset:9472
	ds_load_u8 v42, v119 offset:9216
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v41, v42, v41, 0xc0c0004
	ds_load_u8 v42, v119 offset:9984
	ds_load_u8 v43, v119 offset:9728
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v42, v43, v42, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v48, v42, 16, v41
	ds_load_u8 v41, v119 offset:8448
	ds_load_u8 v42, v119 offset:8192
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v41, v42, v41, 0xc0c0004
	ds_load_u8 v42, v119 offset:8960
	ds_load_u8 v43, v119 offset:8704
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v42, v43, v42, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v47, v42, 16, v41
	ds_load_u8 v41, v118 offset:19264
	ds_load_u8 v42, v118 offset:19200
	v_wmma_i32_16x16x16_iu4 v[17:24], v[47:48], v[67:68], v[17:24] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v41, v42, v41, 0xc0c0004
	ds_load_u8 v42, v118 offset:19392
	ds_load_u8 v43, v118 offset:19328
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v42, v43, v42, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v70, v42, 16, v41
	ds_load_u8 v41, v118 offset:19008
	ds_load_u8 v42, v118 offset:18944
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v41, v42, v41, 0xc0c0004
	ds_load_u8 v42, v118 offset:19136
	ds_load_u8 v43, v118 offset:19072
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v42, v43, v42, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v69, v42, 16, v41
	ds_load_u8 v41, v119 offset:11520
	ds_load_u8 v42, v119 offset:11264
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v41, v42, v41, 0xc0c0004
	ds_load_u8 v42, v119 offset:12032
	ds_load_u8 v43, v119 offset:11776
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v42, v43, v42, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v46, v42, 16, v41
	ds_load_u8 v41, v119 offset:10496
	ds_load_u8 v42, v119 offset:10240
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v41, v42, v41, 0xc0c0004
	ds_load_u8 v42, v119 offset:11008
	ds_load_u8 v43, v119 offset:10752
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v42, v43, v42, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v45, v42, 16, v41
	ds_load_u8 v41, v118 offset:19776
	ds_load_u8 v42, v118 offset:19712
	v_wmma_i32_16x16x16_iu4 v[17:24], v[45:46], v[69:70], v[17:24] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v41, v42, v41, 0xc0c0004
	ds_load_u8 v42, v118 offset:19904
	ds_load_u8 v43, v118 offset:19840
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v42, v43, v42, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v72, v42, 16, v41
	ds_load_u8 v41, v118 offset:19520
	ds_load_u8 v42, v118 offset:19456
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v41, v42, v41, 0xc0c0004
	ds_load_u8 v42, v118 offset:19648
	ds_load_u8 v43, v118 offset:19584
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v42, v43, v42, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v71, v42, 16, v41
	ds_load_u8 v41, v119 offset:13568
	ds_load_u8 v42, v119 offset:13312
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v41, v42, v41, 0xc0c0004
	ds_load_u8 v42, v119 offset:14080
	ds_load_u8 v43, v119 offset:13824
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v42, v43, v42, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v44, v42, 16, v41
	ds_load_u8 v41, v119 offset:12544
	ds_load_u8 v42, v119 offset:12288
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v41, v42, v41, 0xc0c0004
	ds_load_u8 v42, v119 offset:13056
	ds_load_u8 v43, v119 offset:12800
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v42, v43, v42, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v43, v42, 16, v41
	ds_load_u8 v41, v118 offset:20288
	ds_load_u8 v42, v118 offset:20224
	v_wmma_i32_16x16x16_iu4 v[17:24], v[43:44], v[71:72], v[17:24] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v41, v42, v41, 0xc0c0004
	ds_load_u8 v42, v118 offset:20416
	ds_load_u8 v57, v118 offset:20352
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v42, v57, v42, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v74, v42, 16, v41
	ds_load_u8 v41, v118 offset:20032
	ds_load_u8 v42, v118 offset:19968
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v41, v42, v41, 0xc0c0004
	ds_load_u8 v42, v118 offset:20160
	ds_load_u8 v57, v118 offset:20096
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v42, v57, v42, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v73, v42, 16, v41
	ds_load_u8 v41, v119 offset:15616
	ds_load_u8 v42, v119 offset:15360
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v41, v42, v41, 0xc0c0004
	ds_load_u8 v42, v119 offset:16128
	ds_load_u8 v57, v119 offset:15872
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v42, v57, v42, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v42, v42, 16, v41
	ds_load_u8 v41, v119 offset:14592
	ds_load_u8 v57, v119 offset:14336
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v41, v57, v41, 0xc0c0004
	ds_load_u8 v57, v119 offset:15104
	ds_load_u8 v58, v119 offset:14848
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v57, v58, v57, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v41, v57, 16, v41
	ds_load_u8 v57, v119 offset:1408
	ds_load_u8 v58, v119 offset:1152
	v_wmma_i32_16x16x16_iu4 v[17:24], v[41:42], v[73:74], v[17:24] neg_lo:[1,1,0]
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	v_cvt_f32_i32_e32 v17, v17
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cvt_f32_i32_e32 v18, v18
	v_cvt_f32_i32_e32 v19, v19
	s_delay_alu instid0(VALU_DEP_4)
	v_cvt_f32_i32_e32 v20, v20
	.loc	1 221 27                        ; generate_amdgcn.py:221:27
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v57, v58, v57, 0xc0c0004
	ds_load_u8 v58, v119 offset:1920
	ds_load_u8 v75, v119 offset:1664
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v58, v75, v58, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v58, v58, 16, v57
	ds_load_u8 v57, v119 offset:384
	ds_load_u8 v75, v119 offset:128
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v57, v75, v57, 0xc0c0004
	ds_load_u8 v75, v119 offset:896
	ds_load_u8 v76, v119 offset:640
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v75, v76, v75, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v57, v75, 16, v57
	v_wmma_i32_16x16x16_iu4 v[9:16], v[57:58], v[59:60], v[9:16] neg_lo:[1,1,0]
	ds_load_u8 v59, v119 offset:3456
	ds_load_u8 v60, v119 offset:3200
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v59, v60, v59, 0xc0c0004
	ds_load_u8 v60, v119 offset:3968
	ds_load_u8 v75, v119 offset:3712
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v60, v75, v60, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v60, v60, 16, v59
	ds_load_u8 v59, v119 offset:2432
	ds_load_u8 v75, v119 offset:2176
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v59, v75, v59, 0xc0c0004
	ds_load_u8 v75, v119 offset:2944
	ds_load_u8 v76, v119 offset:2688
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v75, v76, v75, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v59, v75, 16, v59
	v_wmma_i32_16x16x16_iu4 v[9:16], v[59:60], v[61:62], v[9:16] neg_lo:[1,1,0]
	ds_load_u8 v61, v119 offset:5504
	ds_load_u8 v62, v119 offset:5248
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v61, v62, v61, 0xc0c0004
	ds_load_u8 v62, v119 offset:6016
	ds_load_u8 v75, v119 offset:5760
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v62, v75, v62, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v62, v62, 16, v61
	ds_load_u8 v61, v119 offset:4480
	ds_load_u8 v75, v119 offset:4224
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v61, v75, v61, 0xc0c0004
	ds_load_u8 v75, v119 offset:4992
	ds_load_u8 v76, v119 offset:4736
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v75, v76, v75, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v61, v75, 16, v61
	v_wmma_i32_16x16x16_iu4 v[9:16], v[61:62], v[63:64], v[9:16] neg_lo:[1,1,0]
	ds_load_u8 v63, v119 offset:7552
	ds_load_u8 v64, v119 offset:7296
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v63, v64, v63, 0xc0c0004
	ds_load_u8 v64, v119 offset:8064
	ds_load_u8 v75, v119 offset:7808
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v64, v75, v64, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v64, v64, 16, v63
	ds_load_u8 v63, v119 offset:6528
	ds_load_u8 v75, v119 offset:6272
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v63, v75, v63, 0xc0c0004
	ds_load_u8 v75, v119 offset:7040
	ds_load_u8 v76, v119 offset:6784
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v75, v76, v75, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v63, v75, 16, v63
	v_wmma_i32_16x16x16_iu4 v[9:16], v[63:64], v[65:66], v[9:16] neg_lo:[1,1,0]
	ds_load_u8 v65, v119 offset:9600
	ds_load_u8 v66, v119 offset:9344
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v65, v66, v65, 0xc0c0004
	ds_load_u8 v66, v119 offset:10112
	ds_load_u8 v75, v119 offset:9856
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v66, v75, v66, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v66, v66, 16, v65
	ds_load_u8 v65, v119 offset:8576
	ds_load_u8 v75, v119 offset:8320
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v65, v75, v65, 0xc0c0004
	ds_load_u8 v75, v119 offset:9088
	ds_load_u8 v76, v119 offset:8832
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v75, v76, v75, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v65, v75, 16, v65
	v_wmma_i32_16x16x16_iu4 v[9:16], v[65:66], v[67:68], v[9:16] neg_lo:[1,1,0]
	ds_load_u8 v67, v119 offset:11648
	ds_load_u8 v68, v119 offset:11392
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v67, v68, v67, 0xc0c0004
	ds_load_u8 v68, v119 offset:12160
	ds_load_u8 v75, v119 offset:11904
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v68, v75, v68, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v68, v68, 16, v67
	ds_load_u8 v67, v119 offset:10624
	ds_load_u8 v75, v119 offset:10368
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v67, v75, v67, 0xc0c0004
	ds_load_u8 v75, v119 offset:11136
	ds_load_u8 v76, v119 offset:10880
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v75, v76, v75, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v67, v75, 16, v67
	v_wmma_i32_16x16x16_iu4 v[9:16], v[67:68], v[69:70], v[9:16] neg_lo:[1,1,0]
	ds_load_u8 v69, v119 offset:13696
	ds_load_u8 v70, v119 offset:13440
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v69, v70, v69, 0xc0c0004
	ds_load_u8 v70, v119 offset:14208
	ds_load_u8 v75, v119 offset:13952
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v70, v75, v70, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v70, v70, 16, v69
	ds_load_u8 v69, v119 offset:12672
	ds_load_u8 v75, v119 offset:12416
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v69, v75, v69, 0xc0c0004
	ds_load_u8 v75, v119 offset:13184
	ds_load_u8 v76, v119 offset:12928
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v75, v76, v75, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v69, v75, 16, v69
	v_wmma_i32_16x16x16_iu4 v[9:16], v[69:70], v[71:72], v[9:16] neg_lo:[1,1,0]
	ds_load_u8 v71, v119 offset:15744
	ds_load_u8 v72, v119 offset:15488
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v71, v72, v71, 0xc0c0004
	ds_load_u8 v72, v119 offset:16256
	ds_load_u8 v75, v119 offset:16000
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v72, v75, v72, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v72, v72, 16, v71
	ds_load_u8 v71, v119 offset:14720
	ds_load_u8 v75, v119 offset:14464
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v71, v75, v71, 0xc0c0004
	ds_load_u8 v75, v119 offset:15232
	ds_load_u8 v76, v119 offset:14976
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v75, v76, v75, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v71, v75, 16, v71
	v_wmma_i32_16x16x16_iu4 v[9:16], v[71:72], v[73:74], v[9:16] neg_lo:[1,1,0]
	ds_load_u8 v73, v118 offset:16736
	ds_load_u8 v74, v118 offset:16672
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	v_cvt_f32_i32_e32 v9, v9
	v_cvt_f32_i32_e32 v14, v14
	v_cvt_f32_i32_e32 v15, v15
	v_cvt_f32_i32_e32 v16, v16
	v_cvt_f32_i32_e32 v10, v10
	v_cvt_f32_i32_e32 v11, v11
	v_cvt_f32_i32_e32 v12, v12
	v_cvt_f32_i32_e32 v13, v13
	.loc	1 221 27                        ; generate_amdgcn.py:221:27
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v73, v74, v73, 0xc0c0004
	ds_load_u8 v74, v118 offset:16864
	ds_load_u8 v75, v118 offset:16800
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v74, v75, v74, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v74, v74, 16, v73
	ds_load_u8 v73, v118 offset:16480
	ds_load_u8 v75, v118 offset:16416
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v73, v75, v73, 0xc0c0004
	ds_load_u8 v75, v118 offset:16608
	ds_load_u8 v76, v118 offset:16544
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v75, v76, v75, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v73, v75, 16, v73
	v_wmma_i32_16x16x16_iu4 v[33:40], v[55:56], v[73:74], v[33:40] neg_lo:[1,1,0]
	ds_load_u8 v55, v118 offset:17248
	ds_load_u8 v56, v118 offset:17184
	v_wmma_i32_16x16x16_iu4 v[25:32], v[57:58], v[73:74], v[25:32] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v55, v56, v55, 0xc0c0004
	ds_load_u8 v56, v118 offset:17376
	ds_load_u8 v75, v118 offset:17312
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v56, v75, v56, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v56, v56, 16, v55
	ds_load_u8 v55, v118 offset:16992
	ds_load_u8 v75, v118 offset:16928
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v55, v75, v55, 0xc0c0004
	ds_load_u8 v75, v118 offset:17120
	ds_load_u8 v76, v118 offset:17056
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v75, v76, v75, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v55, v75, 16, v55
	v_wmma_i32_16x16x16_iu4 v[33:40], v[53:54], v[55:56], v[33:40] neg_lo:[1,1,0]
	ds_load_u8 v53, v118 offset:17760
	ds_load_u8 v54, v118 offset:17696
	v_wmma_i32_16x16x16_iu4 v[25:32], v[59:60], v[55:56], v[25:32] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v53, v54, v53, 0xc0c0004
	ds_load_u8 v54, v118 offset:17888
	ds_load_u8 v75, v118 offset:17824
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v54, v75, v54, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v54, v54, 16, v53
	ds_load_u8 v53, v118 offset:17504
	ds_load_u8 v75, v118 offset:17440
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v53, v75, v53, 0xc0c0004
	ds_load_u8 v75, v118 offset:17632
	ds_load_u8 v76, v118 offset:17568
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v75, v76, v75, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v53, v75, 16, v53
	v_wmma_i32_16x16x16_iu4 v[33:40], v[51:52], v[53:54], v[33:40] neg_lo:[1,1,0]
	ds_load_u8 v51, v118 offset:18272
	ds_load_u8 v52, v118 offset:18208
	v_wmma_i32_16x16x16_iu4 v[25:32], v[61:62], v[53:54], v[25:32] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v51, v52, v51, 0xc0c0004
	ds_load_u8 v52, v118 offset:18400
	ds_load_u8 v75, v118 offset:18336
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v52, v75, v52, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v52, v52, 16, v51
	ds_load_u8 v51, v118 offset:18016
	ds_load_u8 v75, v118 offset:17952
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v51, v75, v51, 0xc0c0004
	ds_load_u8 v75, v118 offset:18144
	ds_load_u8 v76, v118 offset:18080
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v75, v76, v75, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v51, v75, 16, v51
	v_wmma_i32_16x16x16_iu4 v[33:40], v[49:50], v[51:52], v[33:40] neg_lo:[1,1,0]
	ds_load_u8 v49, v118 offset:18784
	ds_load_u8 v50, v118 offset:18720
	v_wmma_i32_16x16x16_iu4 v[25:32], v[63:64], v[51:52], v[25:32] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v49, v50, v49, 0xc0c0004
	ds_load_u8 v50, v118 offset:18912
	ds_load_u8 v75, v118 offset:18848
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v50, v75, v50, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v50, v50, 16, v49
	ds_load_u8 v49, v118 offset:18528
	ds_load_u8 v75, v118 offset:18464
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v49, v75, v49, 0xc0c0004
	ds_load_u8 v75, v118 offset:18656
	ds_load_u8 v76, v118 offset:18592
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v75, v76, v75, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v49, v75, 16, v49
	v_wmma_i32_16x16x16_iu4 v[33:40], v[47:48], v[49:50], v[33:40] neg_lo:[1,1,0]
	ds_load_u8 v47, v118 offset:19296
	ds_load_u8 v48, v118 offset:19232
	v_wmma_i32_16x16x16_iu4 v[25:32], v[65:66], v[49:50], v[25:32] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v47, v48, v47, 0xc0c0004
	ds_load_u8 v48, v118 offset:19424
	ds_load_u8 v75, v118 offset:19360
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v48, v75, v48, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v48, v48, 16, v47
	ds_load_u8 v47, v118 offset:19040
	ds_load_u8 v75, v118 offset:18976
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v47, v75, v47, 0xc0c0004
	ds_load_u8 v75, v118 offset:19168
	ds_load_u8 v76, v118 offset:19104
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v75, v76, v75, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v47, v75, 16, v47
	v_wmma_i32_16x16x16_iu4 v[33:40], v[45:46], v[47:48], v[33:40] neg_lo:[1,1,0]
	ds_load_u8 v45, v118 offset:19808
	ds_load_u8 v46, v118 offset:19744
	v_wmma_i32_16x16x16_iu4 v[25:32], v[67:68], v[47:48], v[25:32] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v45, v46, v45, 0xc0c0004
	ds_load_u8 v46, v118 offset:19936
	ds_load_u8 v75, v118 offset:19872
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v46, v75, v46, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v46, v46, 16, v45
	ds_load_u8 v45, v118 offset:19552
	ds_load_u8 v75, v118 offset:19488
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v45, v75, v45, 0xc0c0004
	ds_load_u8 v75, v118 offset:19680
	ds_load_u8 v76, v118 offset:19616
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v75, v76, v75, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v45, v75, 16, v45
	v_wmma_i32_16x16x16_iu4 v[33:40], v[43:44], v[45:46], v[33:40] neg_lo:[1,1,0]
	ds_load_u8 v43, v118 offset:20320
	ds_load_u8 v44, v118 offset:20256
	v_wmma_i32_16x16x16_iu4 v[25:32], v[69:70], v[45:46], v[25:32] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v43, v44, v43, 0xc0c0004
	ds_load_u8 v44, v118 offset:20448
	ds_load_u8 v75, v118 offset:20384
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v44, v75, v44, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v44, v44, 16, v43
	ds_load_u8 v43, v118 offset:20064
	ds_load_u8 v75, v118 offset:20000
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v43, v75, v43, 0xc0c0004
	ds_load_u8 v75, v118 offset:20192
	ds_load_u8 v76, v118 offset:20128
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v75, v76, v75, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v43, v75, 16, v43
	v_wmma_i32_16x16x16_iu4 v[25:32], v[71:72], v[43:44], v[25:32] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[33:40], v[41:42], v[43:44], v[33:40] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	v_cvt_f32_i32_e32 v25, v25
	v_cvt_f32_i32_e32 v58, v32
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cvt_f32_i32_e32 v30, v30
	v_cvt_f32_i32_e32 v59, v35
	v_cvt_f32_i32_e32 v60, v36
	v_mul_f32_e32 v32, v134, v25
	v_mul_f32_e32 v25, v134, v58
	v_cvt_f32_i32_e32 v58, v34
	v_cvt_f32_i32_e32 v34, v39
	v_cvt_f32_i32_e32 v36, v37
	v_cvt_f32_i32_e32 v35, v38
	v_cvt_f32_i32_e32 v26, v26
	v_cvt_f32_i32_e32 v27, v27
	v_mul_f32_e32 v34, v134, v34
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	v_add_nc_u32_e32 v41, v122, v123
	s_clause 0xf
	buffer_load_u16 v48, v41, s[8:11], 0 offen
	buffer_load_u16 v47, v41, s[8:11], 0 offen offset:4
	buffer_load_u16 v46, v41, s[8:11], 0 offen offset:8
	buffer_load_u16 v45, v41, s[8:11], 0 offen offset:12
	buffer_load_u16 v44, v41, s[8:11], 0 offen offset:16
	buffer_load_u16 v43, v41, s[8:11], 0 offen offset:20
	buffer_load_u16 v42, v41, s[8:11], 0 offen offset:24
	buffer_load_u16 v57, v41, s[8:11], 0 offen offset:28
	buffer_load_u16 v53, v41, s[8:11], 0 offen offset:256
	buffer_load_u16 v49, v41, s[8:11], 0 offen offset:260
	buffer_load_u16 v50, v41, s[8:11], 0 offen offset:264
	buffer_load_u16 v51, v41, s[8:11], 0 offen offset:268
	buffer_load_u16 v52, v41, s[8:11], 0 offen offset:272
	buffer_load_u16 v54, v41, s[8:11], 0 offen offset:276
	buffer_load_u16 v55, v41, s[8:11], 0 offen offset:280
	buffer_load_u16 v56, v41, s[8:11], 0 offen offset:284
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	v_cvt_f32_i32_e32 v41, v31
	v_mul_f32_e32 v31, v134, v30
	v_cvt_f32_i32_e32 v28, v28
	v_cvt_f32_i32_e32 v29, v29
	v_mul_f32_e32 v12, v133, v12
	v_mul_f32_e32 v30, v134, v41
	v_dual_mul_f32 v10, v133, v10 :: v_dual_add_nc_u32 v123, s35, v123
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	s_waitcnt vmcnt(14)
	v_lshlrev_b32_e32 v47, 16, v47
	s_waitcnt vmcnt(12)
	v_lshlrev_b32_e32 v45, 16, v45
	s_waitcnt vmcnt(11)
	v_lshlrev_b32_e32 v44, 16, v44
	s_waitcnt vmcnt(8)
	v_lshlrev_b32_e32 v41, 16, v57
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	v_cvt_f32_i32_e32 v57, v33
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	v_lshlrev_b32_e32 v43, 16, v43
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	v_cvt_f32_i32_e32 v33, v40
	s_delay_alu instid0(VALU_DEP_3)
	v_dual_mul_f32 v40, v134, v57 :: v_dual_mul_f32 v57, v133, v20
	v_dual_mul_f32 v39, v134, v58 :: v_dual_lshlrev_b32 v48, 16, v48
	v_mul_f32_e32 v37, v134, v60
	v_mul_f32_e32 v38, v134, v59
	v_mul_f32_e32 v58, v133, v19
	s_waitcnt vmcnt(7)
	v_dual_mul_f32 v59, v133, v18 :: v_dual_lshlrev_b32 v20, 16, v53
	s_waitcnt vmcnt(0)
	v_dual_mul_f32 v60, v133, v17 :: v_dual_lshlrev_b32 v17, 16, v56
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	v_lshlrev_b32_e32 v18, 16, v55
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	v_cvt_f32_i32_e32 v56, v21
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	v_lshlrev_b32_e32 v19, 16, v54
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	v_cvt_f32_i32_e32 v55, v22
	v_cvt_f32_i32_e32 v54, v23
	v_cvt_f32_i32_e32 v53, v24
	v_dual_mul_f32 v33, v134, v33 :: v_dual_lshlrev_b32 v42, 16, v42
	v_dual_mul_f32 v35, v134, v35 :: v_dual_lshlrev_b32 v46, 16, v46
	v_mul_f32_e32 v36, v134, v36
	v_mul_f32_e32 v21, v133, v16
	v_mul_f32_e32 v22, v133, v15
	v_dual_mul_f32 v23, v133, v14 :: v_dual_lshlrev_b32 v16, 16, v49
	v_mul_f32_e32 v24, v133, v9
	v_dual_mul_f32 v53, v133, v53 :: v_dual_mul_f32 v28, v134, v28
	v_dual_mul_f32 v54, v133, v54 :: v_dual_lshlrev_b32 v9, 16, v52
	v_dual_mul_f32 v55, v133, v55 :: v_dual_mul_f32 v26, v134, v26
	v_mul_f32_e32 v56, v133, v56
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	v_lshlrev_b32_e32 v14, 16, v51
	v_lshlrev_b32_e32 v15, 16, v50
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	v_mul_f32_e32 v29, v134, v29
	v_dual_mul_f32 v27, v134, v27 :: v_dual_fmac_f32 v110, v57, v45
	v_dual_mul_f32 v13, v133, v13 :: v_dual_fmac_f32 v112, v59, v47
	v_dual_mul_f32 v11, v133, v11 :: v_dual_fmac_f32 v104, v10, v16
	.loc	1 233 13 is_stmt 0              ; generate_amdgcn.py:233:13
	v_dual_fmac_f32 v113, v60, v48 :: v_dual_fmac_f32 v108, v55, v43
	v_dual_fmac_f32 v111, v58, v46 :: v_dual_fmac_f32 v106, v53, v41
	s_delay_alu instid0(VALU_DEP_3)
	v_dual_fmac_f32 v103, v11, v15 :: v_dual_fmac_f32 v102, v12, v14
	v_dual_fmac_f32 v101, v13, v9 :: v_dual_fmac_f32 v100, v23, v19
	v_dual_fmac_f32 v109, v56, v44 :: v_dual_fmac_f32 v98, v21, v17
	v_dual_fmac_f32 v107, v54, v42 :: v_dual_fmac_f32 v96, v39, v47
	v_dual_fmac_f32 v105, v24, v20 :: v_dual_fmac_f32 v94, v37, v45
	v_dual_fmac_f32 v99, v22, v18 :: v_dual_fmac_f32 v92, v35, v43
	v_dual_fmac_f32 v97, v40, v48 :: v_dual_fmac_f32 v88, v33, v41
	v_dual_fmac_f32 v95, v38, v46 :: v_dual_fmac_f32 v82, v29, v9
	v_dual_fmac_f32 v93, v36, v44 :: v_dual_fmac_f32 v86, v31, v19
	v_dual_fmac_f32 v89, v34, v42 :: v_dual_fmac_f32 v84, v25, v17
	v_fmac_f32_e32 v91, v32, v20
	v_dual_fmac_f32 v90, v26, v16 :: v_dual_fmac_f32 v87, v27, v15
	v_fmac_f32_e32 v83, v28, v14
	v_fmac_f32_e32 v85, v30, v18
	.loc	1 188 9 is_stmt 1               ; generate_amdgcn.py:188:9
	s_cbranch_scc1 .LBB0_2
.LBB0_3:                                ; %Flow409
.Ltmp22:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ] ]
	v_max_f32_e64 v2, |v112|, |v112|
	v_max_f32_e64 v3, |v113|, |v113|
	v_and_b32_e32 v1, 0x1f0, v0
	v_max3_f32 v4, |v110|, |v109|, |v108|
	v_max3_f32 v7, |v104|, |v103|, |v102|
	v_max3_f32 v8, |v101|, |v100|, |v99|
	v_max_f32_e32 v2, v3, v2
	v_max_f32_e64 v5, |v96|, |v96|
	v_max_f32_e64 v6, |v97|, |v97|
	v_max3_f32 v3, |v107|, |v106|, |v105|
	v_max3_f32 v9, |v90|, |v87|, |v83|
	v_max3_f32 v2, v2, |v111|, v4
	v_max3_f32 v4, v7, v8, |v98|
	v_max3_f32 v10, |v82|, |v86|, |v85|
	v_max3_f32 v7, |v89|, |v88|, |v91|
	s_mov_b32 s0, 0x76543210
.Ltmp23:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ]
	s_waitcnt lgkmcnt(0)
.Ltmp24:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ] ]
	v_max3_f32 v2, v2, v3, v4
.Ltmp25:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ]
	v_lshrrev_b32_e32 v4, 1, v0
.Ltmp26:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ] ]
	v_max_f32_e32 v5, v6, v5
	v_max3_f32 v6, |v94|, |v93|, |v92|
.Ltmp27:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ]
	s_barrier
	v_and_b32_e32 v8, 8, v0
	v_and_b32_e32 v4, 0xf0, v4
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_2)
.Ltmp28:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ] ]
	v_max3_f32 v5, v5, |v95|, v6
	v_max3_f32 v6, v9, v10, |v84|
.Ltmp29:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ]
	v_lshl_add_u32 v10, v115, 8, 0
.Ltmp30:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ] ]
	v_max3_f32 v3, v5, v7, v6
.Ltmp31:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ]
	v_permlanex16_b32 v5, v2, s0, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_permlanex16_b32 v6, v3, s0, 0xfedcba98 op_sel:[1,0]
	v_lshlrev_b32_e32 v7, 4, v115
.Ltmp32:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ] ]
	v_dual_max_f32 v5, v5, v5 :: v_dual_max_f32 v6, v6, v6
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
.Ltmp33:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ]
	v_lshl_or_b32 v9, v114, 3, v7
	v_xor_b32_e32 v7, v7, v4
.Ltmp34:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ] ]
	v_dual_max_f32 v2, v2, v5 :: v_dual_max_f32 v3, v3, v6
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp35:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ]
	v_xor_b32_e32 v4, v9, v4
	v_add3_u32 v5, v10, v7, v8
	v_lshrrev_b32_e32 v6, 2, v114
	v_lshrrev_b32_e32 v7, 1, v79
	s_delay_alu instid0(VALU_DEP_4)
	v_add3_u32 v4, 0, v8, v4
	ds_store_b64 v5, v[2:3]
	s_waitcnt lgkmcnt(0)
	s_barrier
	v_lshl_add_u32 v8, v8, 3, 0
	ds_load_b64 v[2:3], v4
	s_waitcnt lgkmcnt(0)
	s_barrier
	v_add3_u32 v6, v8, v6, v7
	v_dual_mov_b32 v4, v2 :: v_dual_mov_b32 v5, v3
.Ltmp36:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ] ]
	v_dual_max_f32 v2, v2, v2 :: v_dual_max_f32 v3, v3, v3
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp37:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ]
	v_mov_b32_dpp v4, v4 row_xmask:4 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v5, v5 row_xmask:4 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp38:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ] ]
	v_dual_max_f32 v4, v4, v4 :: v_dual_max_f32 v5, v5, v5
	v_dual_max_f32 v2, v2, v4 :: v_dual_max_f32 v3, v3, v5
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp39:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ]
	v_dual_mov_b32 v4, v2 :: v_dual_mov_b32 v5, v3
	v_mov_b32_dpp v4, v4 row_xmask:2 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v5, v5 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp40:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ] ]
	v_dual_max_f32 v4, v4, v4 :: v_dual_max_f32 v5, v5, v5
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_dual_max_f32 v4, v2, v4 :: v_dual_max_f32 v5, v3, v5
.Ltmp41:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ]
	v_dual_mov_b32 v2, v4 :: v_dual_mov_b32 v3, v5
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_mov_b32_dpp v2, v2 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v3, v3 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp42:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ] ]
	v_dual_max_f32 v9, v2, v2 :: v_dual_max_f32 v10, v3, v3
	v_dual_max_f32 v3, v4, v9 :: v_dual_lshlrev_b32 v2, 3, v78
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_max_f32_e32 v4, v5, v10
.Ltmp43:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ]
	v_add3_u32 v5, 0, v2, v7
	ds_store_b64 v6, v[3:4]
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b64 v[3:4], v5
.Ltmp44:
	.loc	1 83 18                         ; generate_amdgcn.py:83:18 @[ generate_amdgcn.py:243:9 ]
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 76 14                         ; generate_amdgcn.py:76:14 @[ generate_amdgcn.py:243:9 ]
	v_dual_max_f32 v3, v3, v3 :: v_dual_max_f32 v4, v4, v4
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_max_f32_e32 v3, 0x2b8cbccc, v3
	v_div_scale_f32 v5, null, 0x40e00000, 0x40e00000, v3
	v_div_scale_f32 v11, vcc_lo, v3, 0x40e00000, v3
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v7, v5
	v_fma_f32 v9, -v5, v7, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_dual_max_f32 v4, 0x2b8cbccc, v4 :: v_dual_fmac_f32 v7, v9, v7
	v_div_scale_f32 v6, null, 0x40e00000, 0x40e00000, v4
	v_div_scale_f32 v9, s0, v4, 0x40e00000, v4
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v8, v6
	v_fma_f32 v10, -v6, v8, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_fmac_f32_e32 v8, v10, v8
	v_mul_f32_e32 v10, v11, v7
	v_mul_f32_e32 v12, v9, v8
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v13, -v5, v10, v11
	v_fma_f32 v14, -v6, v12, v9
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fmac_f32_e32 v10, v13, v7
	v_fmac_f32_e32 v12, v14, v8
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v5, -v5, v10, v11
	v_fma_f32 v6, -v6, v12, v9
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_div_fmas_f32 v5, v5, v7, v10
	s_mov_b32 vcc_lo, s0
	.loc	1 76 13 is_stmt 0               ; generate_amdgcn.py:76:13 @[ generate_amdgcn.py:243:9 ]
	v_mov_b16_e32 v7.h, 0
	.loc	1 76 14                         ; generate_amdgcn.py:76:14 @[ generate_amdgcn.py:243:9 ]
	v_div_fmas_f32 v6, v6, v8, v12
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_div_fixup_f32 v3, v5, 0x40e00000, v3
	v_div_fixup_f32 v5, v6, 0x40e00000, v4
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 76 13                         ; generate_amdgcn.py:76:13 @[ generate_amdgcn.py:243:9 ]
	v_mov_b16_e32 v4.h, v7.h
	v_mov_b16_e32 v4.l, v3.h
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_mov_b16_e32 v7.l, v5.h
	v_and_b32_e32 v4, 1, v4
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_and_b32_e32 v6, 1, v7
	v_add3_u32 v4, v3, v4, 0x7fff
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_add3_u32 v3, v5, v6, 0x7fff
	.loc	1 78 35 is_stmt 1               ; generate_amdgcn.py:78:35 @[ generate_amdgcn.py:243:9 ]
	v_and_b32_e32 v6, 0xffff0000, v4
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_and_b32_e32 v5, 0xffff0000, v3
	.loc	1 78 29 is_stmt 0               ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:243:9 ]
	v_div_scale_f32 v27, null, v6, v6, v103
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v43, v27
	v_fma_f32 v57, -v27, v43, 1.0
	s_delay_alu instid0(VALU_DEP_1)
	v_fmac_f32_e32 v43, v57, v43
	v_div_scale_f32 v11, null, v6, v6, v111
	v_div_scale_f32 v19, null, v6, v6, v107
	v_div_scale_f32 v7, null, v6, v6, v113
	v_div_scale_f32 v13, null, v6, v6, v110
	v_div_scale_f32 v29, null, v6, v6, v102
	v_rcp_f32_e32 v35, v11
	v_rcp_f32_e32 v39, v19
	v_div_scale_f32 v9, null, v6, v6, v112
	v_div_scale_f32 v17, null, v6, v6, v108
	v_rcp_f32_e32 v33, v7
	v_rcp_f32_e32 v36, v13
	v_rcp_f32_e32 v44, v29
	v_div_scale_f32 v23, null, v6, v6, v105
	v_rcp_f32_e32 v34, v9
	v_rcp_f32_e32 v38, v17
	v_fma_f32 v49, -v11, v35, 1.0
	v_fma_f32 v53, -v19, v39, 1.0
	v_div_scale_f32 v12, s1, v111, v6, v111
	v_div_scale_f32 v15, null, v6, v6, v109
	v_div_scale_f32 v20, s5, v107, v6, v107
	v_div_scale_f32 v25, null, v6, v6, v104
	v_rcp_f32_e32 v41, v23
	v_fma_f32 v47, -v7, v33, 1.0
	v_fma_f32 v50, -v13, v36, 1.0
	v_fma_f32 v58, -v29, v44, 1.0
	v_fmac_f32_e32 v35, v49, v35
	v_fmac_f32_e32 v39, v53, v39
	v_div_scale_f32 v8, vcc_lo, v113, v6, v113
	v_div_scale_f32 v21, null, v6, v6, v106
	v_div_scale_f32 v31, null, v6, v6, v101
	v_rcp_f32_e32 v37, v15
	v_rcp_f32_e32 v42, v25
	v_fma_f32 v48, -v9, v34, 1.0
	v_fma_f32 v52, -v17, v38, 1.0
	v_dual_fmac_f32 v33, v47, v33 :: v_dual_fmac_f32 v36, v50, v36
	v_dual_mul_f32 v49, v12, v35 :: v_dual_fmac_f32 v44, v58, v44
	v_mul_f32_e32 v53, v20, v39
	v_div_scale_f32 v10, s0, v112, v6, v112
	v_div_scale_f32 v14, s2, v110, v6, v110
	v_div_scale_f32 v18, s4, v108, v6, v108
	v_div_scale_f32 v28, s9, v103, v6, v103
	v_rcp_f32_e32 v40, v21
	v_rcp_f32_e32 v45, v31
	v_fma_f32 v55, -v23, v41, 1.0
	v_mul_f32_e32 v47, v8, v33
	v_fma_f32 v62, -v11, v49, v12
	v_fmac_f32_e32 v34, v48, v34
	v_fma_f32 v66, -v19, v53, v20
	v_fmac_f32_e32 v38, v52, v38
	v_div_scale_f32 v24, s7, v105, v6, v105
	v_fma_f32 v51, -v15, v37, 1.0
	v_fma_f32 v56, -v25, v42, 1.0
	v_dual_fmac_f32 v41, v55, v41 :: v_dual_mul_f32 v50, v14, v36
	v_mul_f32_e32 v57, v28, v43
	v_fma_f32 v60, -v7, v47, v8
	v_fmac_f32_e32 v49, v62, v35
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_dual_mul_f32 v48, v10, v34 :: v_dual_mul_f32 v55, v24, v41
	v_fmac_f32_e32 v53, v66, v39
	v_dual_mul_f32 v52, v18, v38 :: v_dual_fmac_f32 v47, v60, v33
	v_div_scale_f32 v16, s3, v109, v6, v109
	v_div_scale_f32 v26, s8, v104, v6, v104
	v_div_scale_f32 v30, s10, v102, v6, v102
	v_fma_f32 v54, -v21, v40, 1.0
	v_fma_f32 v59, -v31, v45, 1.0
	v_fmac_f32_e32 v37, v51, v37
	v_fma_f32 v61, -v9, v48, v10
	v_fma_f32 v65, -v17, v52, v18
	v_fma_f32 v70, -v27, v57, v28
	v_fmac_f32_e32 v42, v56, v42
	v_dual_fmac_f32 v40, v54, v40 :: v_dual_mul_f32 v51, v16, v37
	v_dual_mul_f32 v58, v30, v44 :: v_dual_fmac_f32 v45, v59, v45
	v_fma_f32 v68, -v23, v55, v24
	v_fmac_f32_e32 v48, v61, v34
	v_dual_fmac_f32 v52, v65, v38 :: v_dual_fmac_f32 v57, v70, v43
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_dual_mul_f32 v56, v26, v42 :: v_dual_fmac_f32 v55, v68, v41
	v_fma_f32 v7, -v7, v47, v8
	v_div_scale_f32 v22, s6, v106, v6, v106
	v_fma_f32 v64, -v15, v51, v16
	v_fma_f32 v69, -v25, v56, v26
	v_fma_f32 v8, -v9, v48, v10
	v_fma_f32 v9, -v11, v49, v12
	v_fma_f32 v12, -v17, v52, v18
	v_div_fmas_f32 v7, v7, v33, v47
	s_mov_b32 vcc_lo, s0
	v_fma_f32 v17, -v29, v58, v30
	v_div_scale_f32 v18, s0, v101, v6, v101
	v_dual_mul_f32 v54, v22, v40 :: v_dual_fmac_f32 v51, v64, v37
	v_fmac_f32_e32 v56, v69, v42
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_dual_fmac_f32 v58, v17, v44 :: v_dual_mul_f32 v17, v18, v45
	v_fma_f32 v63, -v13, v50, v14
	v_fma_f32 v67, -v21, v54, v22
	v_fma_f32 v11, -v15, v51, v16
	v_fma_f32 v15, -v23, v55, v24
	v_fma_f32 v16, -v25, v56, v26
	v_fma_f32 v23, -v31, v17, v18
	v_div_scale_f32 v26, null, v6, v6, v98
	v_fmac_f32_e32 v54, v67, v40
	v_div_scale_f32 v32, null, v6, v6, v100
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v17, v23, v45
	v_rcp_f32_e32 v23, v26
	v_fmac_f32_e32 v50, v63, v36
	s_delay_alu instid0(VALU_DEP_3)
	v_rcp_f32_e32 v46, v32
	v_div_fmas_f32 v8, v8, v34, v48
	s_mov_b32 vcc_lo, s1
	v_fma_f32 v18, -v31, v17, v18
	v_fma_f32 v10, -v13, v50, v14
	v_fma_f32 v14, -v21, v54, v22
	v_div_scale_f32 v21, null, v6, v6, v99
	v_fma_f32 v13, -v19, v53, v20
	v_fma_f32 v20, -v27, v57, v28
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v19, -v32, v46, 1.0
	v_rcp_f32_e32 v24, v21
	v_div_fmas_f32 v9, v9, v35, v49
	s_mov_b32 vcc_lo, s2
	v_div_fixup_f32 v7, v7, v6, v113
	v_div_fixup_f32 v8, v8, v6, v112
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_div_fixup_f32 v9, v9, v6, v111
	.loc	1 78 9                          ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:243:9 ]
	v_rndne_f32_e32 v7, v7
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rndne_f32_e32 v8, v8
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:243:9 ]
	v_fma_f32 v28, -v21, v24, 1.0
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 78 9                          ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:243:9 ]
	v_rndne_f32_e32 v9, v9
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:243:9 ]
	v_fmac_f32_e32 v24, v28, v24
	v_fma_f32 v28, -v26, v23, 1.0
	v_fmac_f32_e32 v46, v19, v46
	v_div_scale_f32 v19, s1, v100, v6, v100
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v23, v28, v23
	v_div_fmas_f32 v10, v10, v36, v50
	s_mov_b32 vcc_lo, s3
	v_mul_f32_e32 v25, v19, v46
	v_div_fmas_f32 v11, v11, v37, v51
	s_mov_b32 vcc_lo, s4
	v_fma_f32 v22, -v29, v58, v30
	v_div_fmas_f32 v12, v12, v38, v52
	s_mov_b32 vcc_lo, s5
	v_fma_f32 v27, -v32, v25, v19
	v_div_fmas_f32 v13, v13, v39, v53
	s_mov_b32 vcc_lo, s6
	v_div_scale_f32 v28, null, v5, v5, v97
	v_div_fmas_f32 v14, v14, v40, v54
	s_mov_b32 vcc_lo, s7
	v_fmac_f32_e32 v25, v27, v46
	v_div_fmas_f32 v15, v15, v41, v55
	s_mov_b32 vcc_lo, s8
	v_div_scale_f32 v27, s2, v99, v6, v99
	v_div_fmas_f32 v16, v16, v42, v56
	s_mov_b32 vcc_lo, s9
	v_div_scale_f32 v36, null, v5, v5, v94
	v_div_fmas_f32 v20, v20, v43, v57
	s_mov_b32 vcc_lo, s10
	v_div_fixup_f32 v10, v10, v6, v110
	v_div_fmas_f32 v22, v22, v44, v58
	s_mov_b32 vcc_lo, s0
	v_div_scale_f32 v29, s0, v98, v6, v98
	v_div_fmas_f32 v17, v18, v45, v17
	v_fma_f32 v18, -v32, v25, v19
	v_mul_f32_e32 v19, v27, v24
	s_mov_b32 vcc_lo, s1
	v_mul_f32_e32 v31, v29, v23
	v_div_scale_f32 v32, null, v5, v5, v96
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_fma_f32 v30, -v21, v19, v27
	v_rcp_f32_e32 v38, v36
	v_div_fixup_f32 v11, v11, v6, v109
	v_rcp_f32_e32 v33, v32
	v_div_fixup_f32 v12, v12, v6, v108
	v_fmac_f32_e32 v19, v30, v24
	v_div_fmas_f32 v18, v18, v46, v25
	v_rcp_f32_e32 v25, v28
	v_fma_f32 v30, -v26, v31, v29
	s_mov_b32 vcc_lo, s2
	v_fma_f32 v21, -v21, v19, v27
	v_div_scale_f32 v27, null, v5, v5, v95
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v31, v30, v23
	v_div_scale_f32 v30, s1, v97, v5, v97
	v_div_fmas_f32 v19, v21, v24, v19
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v34, -v28, v25, 1.0
	v_fma_f32 v21, -v26, v31, v29
	v_fma_f32 v35, -v32, v33, 1.0
	s_mov_b32 vcc_lo, s0
	v_div_fixup_f32 v13, v13, v6, v107
	v_fmac_f32_e32 v25, v34, v25
	v_rcp_f32_e32 v34, v27
	v_fmac_f32_e32 v33, v35, v33
	v_div_fmas_f32 v21, v21, v23, v31
	v_div_fixup_f32 v14, v14, v6, v106
	v_div_fixup_f32 v15, v15, v6, v105
	v_div_fixup_f32 v16, v16, v6, v104
	v_div_fixup_f32 v20, v20, v6, v103
	v_div_fixup_f32 v22, v22, v6, v102
	v_div_fixup_f32 v17, v17, v6, v101
	v_div_fixup_f32 v18, v18, v6, v100
	v_fma_f32 v29, -v27, v34, 1.0
	v_div_scale_f32 v26, s2, v96, v5, v96
	v_div_fixup_f32 v19, v19, v6, v99
	v_div_fixup_f32 v6, v21, v6, v98
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v34, v29, v34
	v_div_scale_f32 v29, s3, v95, v5, v95
	v_mul_f32_e32 v24, v30, v25
	v_div_scale_f32 v39, null, v5, v5, v90
	v_mul_f32_e32 v31, v29, v34
	s_mov_b32 vcc_lo, s1
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v35, -v28, v24, v30
	v_rcp_f32_e32 v41, v39
	.loc	1 78 9                          ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:243:9 ]
	v_rndne_f32_e32 v12, v12
	v_rndne_f32_e32 v22, v22
	v_rndne_f32_e32 v16, v16
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:243:9 ]
	v_fmac_f32_e32 v24, v35, v25
	.loc	1 78 9                          ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:243:9 ]
	v_rndne_f32_e32 v18, v18
	v_rndne_f32_e32 v10, v10
	v_rndne_f32_e32 v14, v14
	v_rndne_f32_e32 v11, v11
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:243:9 ]
	v_fma_f32 v21, -v28, v24, v30
	v_fma_f32 v28, -v36, v38, 1.0
	v_div_scale_f32 v30, null, v5, v5, v93
	v_fma_f32 v43, -v39, v41, 1.0
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_div_fmas_f32 v21, v21, v25, v24
	v_dual_fmac_f32 v38, v28, v38 :: v_dual_mul_f32 v37, v26, v33
	v_div_scale_f32 v25, s0, v94, v5, v94
	s_mov_b32 vcc_lo, s2
	v_fmac_f32_e32 v41, v43, v41
	v_fma_f32 v23, -v32, v37, v26
	v_div_scale_f32 v28, null, v5, v5, v92
	v_div_fixup_f32 v21, v21, v5, v97
	.loc	1 78 9                          ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:243:9 ]
	v_rndne_f32_e32 v13, v13
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:243:9 ]
	v_fmac_f32_e32 v37, v23, v33
	v_fma_f32 v23, -v27, v31, v29
	.loc	1 78 9                          ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:243:9 ]
	v_rndne_f32_e32 v15, v15
	v_rndne_f32_e32 v20, v20
	v_rndne_f32_e32 v6, v6
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:243:9 ]
	v_fma_f32 v24, -v32, v37, v26
	v_fmac_f32_e32 v31, v23, v34
	v_rcp_f32_e32 v23, v30
	.loc	1 78 9                          ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:243:9 ]
	v_rndne_f32_e32 v21, v21
	v_rndne_f32_e32 v17, v17
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:243:9 ]
	v_div_fmas_f32 v24, v24, v33, v37
	v_fma_f32 v26, -v27, v31, v29
	v_mul_f32_e32 v27, v25, v38
	s_mov_b32 vcc_lo, s3
	v_div_scale_f32 v43, s3, v90, v5, v90
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_div_fmas_f32 v26, v26, v34, v31
	v_fma_f32 v29, -v30, v23, 1.0
	v_fma_f32 v32, -v36, v27, v25
	s_mov_b32 vcc_lo, s0
	v_rcp_f32_e32 v31, v28
	v_div_scale_f32 v34, null, v5, v5, v89
	v_fmac_f32_e32 v23, v29, v23
	v_div_scale_f32 v29, s1, v93, v5, v93
	v_fmac_f32_e32 v27, v32, v38
	v_div_fixup_f32 v24, v24, v5, v96
	v_div_fixup_f32 v26, v26, v5, v95
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_mul_f32_e32 v32, v29, v23
	v_fma_f32 v33, -v28, v31, 1.0
	v_fma_f32 v25, -v36, v27, v25
	v_rcp_f32_e32 v36, v34
	.loc	1 78 9                          ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:243:9 ]
	v_rndne_f32_e32 v24, v24
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:243:9 ]
	v_fma_f32 v35, -v30, v32, v29
	v_fmac_f32_e32 v31, v33, v31
	v_div_fmas_f32 v25, v25, v38, v27
	s_mov_b32 vcc_lo, s1
	v_div_scale_f32 v33, s2, v92, v5, v92
	v_fmac_f32_e32 v32, v35, v23
	v_div_scale_f32 v35, null, v5, v5, v88
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fma_f32 v37, -v34, v36, 1.0
	v_div_fixup_f32 v25, v25, v5, v94
	v_fma_f32 v29, -v30, v32, v29
	s_delay_alu instid0(VALU_DEP_4)
	v_rcp_f32_e32 v38, v35
	.loc	1 78 9                          ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:243:9 ]
	v_rndne_f32_e32 v26, v26
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:243:9 ]
	v_fmac_f32_e32 v36, v37, v36
	.loc	1 78 9                          ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:243:9 ]
	v_rndne_f32_e32 v25, v25
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:243:9 ]
	v_div_fmas_f32 v23, v29, v23, v32
	v_div_scale_f32 v29, null, v5, v5, v91
	s_mov_b32 vcc_lo, s2
	v_div_scale_f32 v42, s2, v91, v5, v91
	v_rcp_f32_e32 v32, v29
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_fma_f32 v37, -v35, v38, 1.0
	v_div_fixup_f32 v23, v23, v5, v93
	.loc	1 78 9                          ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:243:9 ]
	v_rndne_f32_e32 v19, v19
	.loc	1 86 37 is_stmt 1               ; generate_amdgcn.py:86:37 @[ generate_amdgcn.py:243:9 ]
	s_ashr_i32 s4, s29, 31
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:243:9 ]
	v_fmac_f32_e32 v38, v37, v38
	v_div_scale_f32 v37, s1, v88, v5, v88
	.loc	1 78 9 is_stmt 0                ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:243:9 ]
	v_rndne_f32_e32 v23, v23
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:243:9 ]
	v_fma_f32 v40, -v29, v32, 1.0
	v_fmac_f32_e32 v32, v40, v32
	v_div_scale_f32 v40, null, v5, v5, v87
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_mul_f32_e32 v45, v42, v32
	v_rcp_f32_e32 v44, v40
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v46, -v40, v44, 1.0
	v_dual_fmac_f32 v44, v46, v44 :: v_dual_mul_f32 v27, v33, v31
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v30, -v28, v27, v33
	v_fmac_f32_e32 v27, v30, v31
	v_div_scale_f32 v30, s0, v89, v5, v89
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v28, -v28, v27, v33
	v_mul_f32_e32 v33, v30, v36
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v27, v28, v31, v27
	v_fma_f32 v28, -v34, v33, v30
	v_mul_f32_e32 v31, v37, v38
	s_mov_b32 vcc_lo, s0
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_div_fixup_f32 v27, v27, v5, v92
	v_fmac_f32_e32 v33, v28, v36
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v28, -v35, v31, v37
	.loc	1 78 9                          ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:243:9 ]
	v_rndne_f32_e32 v27, v27
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:243:9 ]
	v_fma_f32 v30, -v34, v33, v30
	v_fmac_f32_e32 v31, v28, v38
	v_fma_f32 v28, -v29, v45, v42
	v_mul_f32_e32 v34, v43, v41
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_div_fmas_f32 v30, v30, v36, v33
	v_fma_f32 v33, -v35, v31, v37
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v45, v28, v32
	v_fma_f32 v28, -v39, v34, v43
	v_div_scale_f32 v35, s0, v87, v5, v87
	s_mov_b32 vcc_lo, s1
	v_fma_f32 v29, -v29, v45, v42
	v_div_fmas_f32 v31, v33, v38, v31
	v_fmac_f32_e32 v34, v28, v41
	v_mul_f32_e32 v28, v35, v44
	v_div_scale_f32 v33, null, v5, v5, v83
	v_div_scale_f32 v38, null, v5, v5, v85
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v36, -v40, v28, v35
	v_rcp_f32_e32 v37, v33
	s_mov_b32 vcc_lo, s2
	s_delay_alu instid0(VALU_DEP_2)
	v_rcp_f32_e32 v42, v38
	v_div_fmas_f32 v29, v29, v32, v45
	v_fma_f32 v32, -v39, v34, v43
	v_fmac_f32_e32 v28, v36, v44
	s_mov_b32 vcc_lo, s3
	v_div_fixup_f32 v30, v30, v5, v89
	v_div_fixup_f32 v31, v31, v5, v88
	v_div_fmas_f32 v32, v32, v41, v34
	v_fma_f32 v34, -v40, v28, v35
	v_fma_f32 v36, -v33, v37, 1.0
	s_mov_b32 vcc_lo, s0
	v_fma_f32 v48, -v38, v42, 1.0
	v_div_scale_f32 v35, null, v5, v5, v82
	v_div_fmas_f32 v28, v34, v44, v28
	v_fmac_f32_e32 v37, v36, v37
	v_div_scale_f32 v39, vcc_lo, v83, v5, v83
	v_fmac_f32_e32 v42, v48, v42
	v_div_scale_f32 v48, s2, v85, v5, v85
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_mul_f32_e32 v43, v39, v37
	v_rcp_f32_e32 v34, v35
	v_div_scale_f32 v36, null, v5, v5, v86
	v_mul_f32_e32 v52, v48, v42
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fma_f32 v47, -v33, v43, v39
	v_div_scale_f32 v44, null, v5, v5, v84
	v_rcp_f32_e32 v40, v36
	v_div_fixup_f32 v32, v32, v5, v90
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	v_fmac_f32_e32 v43, v47, v37
	v_fma_f32 v41, -v35, v34, 1.0
	v_rcp_f32_e32 v46, v44
	v_div_fixup_f32 v28, v28, v5, v87
	v_div_fixup_f32 v29, v29, v5, v91
	v_fma_f32 v33, -v33, v43, v39
	v_fmac_f32_e32 v34, v41, v34
	v_div_scale_f32 v41, s0, v82, v5, v82
	v_fma_f32 v45, -v36, v40, 1.0
	s_delay_alu instid0(VALU_DEP_4)
	v_div_fmas_f32 v33, v33, v37, v43
	s_mov_b32 vcc_lo, s0
	s_mov_b32 s0, 0xc1000000
	v_fma_f32 v50, -v44, v46, 1.0
	.loc	1 77 9 is_stmt 1                ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:243:9 ]
	v_med3_f32 v12, v12, s0, 0x40e00000
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:243:9 ]
	v_fmac_f32_e32 v40, v45, v40
	v_div_scale_f32 v45, s1, v86, v5, v86
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:243:9 ]
	v_med3_f32 v22, v22, s0, 0x40e00000
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_4) | instid1(VALU_DEP_4)
	v_cvt_i32_f32_e32 v12, v12
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:243:9 ]
	v_mul_f32_e32 v49, v41, v34
	v_fmac_f32_e32 v46, v50, v46
	v_div_scale_f32 v50, s3, v84, v5, v84
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:243:9 ]
	v_med3_f32 v16, v16, s0, 0x40e00000
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:243:9 ]
	v_fma_f32 v47, -v35, v49, v41
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:243:9 ]
	v_cvt_i32_f32_e32 v22, v22
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:243:9 ]
	v_mul_f32_e32 v51, v45, v40
	v_mul_f32_e32 v53, v50, v46
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:243:9 ]
	v_med3_f32 v18, v18, s0, 0x40e00000
	v_cvt_i32_f32_e32 v16, v16
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:243:9 ]
	v_fmac_f32_e32 v49, v47, v34
	v_fma_f32 v39, -v36, v51, v45
	v_fma_f32 v47, -v38, v52, v48
	v_fma_f32 v37, -v44, v53, v50
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:243:9 ]
	v_med3_f32 v24, v24, s0, 0x40e00000
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:243:9 ]
	v_fma_f32 v35, -v35, v49, v41
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:243:9 ]
	v_cvt_i32_f32_e32 v18, v18
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:243:9 ]
	v_fmac_f32_e32 v51, v39, v40
	v_fmac_f32_e32 v52, v47, v42
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:243:9 ]
	v_cvt_i32_f32_e32 v24, v24
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:243:9 ]
	v_fmac_f32_e32 v53, v37, v46
	v_div_fmas_f32 v34, v35, v34, v49
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:243:9 ]
	v_and_b32_e32 v18, 15, v18
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:243:9 ]
	v_fma_f32 v35, -v36, v51, v45
	v_fma_f32 v36, -v38, v52, v48
	s_mov_b32 vcc_lo, s1
	v_fma_f32 v37, -v44, v53, v50
	v_div_fixup_f32 v33, v33, v5, v83
	v_div_fmas_f32 v35, v35, v40, v51
	s_mov_b32 vcc_lo, s2
	v_div_fixup_f32 v34, v34, v5, v82
	v_div_fmas_f32 v36, v36, v42, v52
	s_mov_b32 vcc_lo, s3
	v_div_fixup_f32 v35, v35, v5, v86
	v_div_fmas_f32 v37, v37, v46, v53
	.loc	1 78 9 is_stmt 0                ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:243:9 ]
	v_rndne_f32_e32 v30, v30
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:243:9 ]
	v_div_fixup_f32 v36, v36, v5, v85
	.loc	1 78 9                          ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:243:9 ]
	v_rndne_f32_e32 v31, v31
	v_rndne_f32_e32 v32, v32
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:243:9 ]
	v_div_fixup_f32 v5, v37, v5, v84
	.loc	1 78 9                          ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:243:9 ]
	v_rndne_f32_e32 v28, v28
	.loc	1 77 9 is_stmt 1                ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:243:9 ]
	v_med3_f32 v8, v8, s0, 0x40e00000
	v_med3_f32 v10, v10, s0, 0x40e00000
	v_med3_f32 v14, v14, s0, 0x40e00000
	v_med3_f32 v25, v25, s0, 0x40e00000
	v_med3_f32 v23, v23, s0, 0x40e00000
	.loc	1 78 9                          ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:243:9 ]
	v_rndne_f32_e32 v5, v5
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:243:9 ]
	v_med3_f32 v7, v7, s0, 0x40e00000
	v_med3_f32 v9, v9, s0, 0x40e00000
	v_med3_f32 v11, v11, s0, 0x40e00000
	v_med3_f32 v13, v13, s0, 0x40e00000
	v_med3_f32 v15, v15, s0, 0x40e00000
	v_med3_f32 v20, v20, s0, 0x40e00000
	v_med3_f32 v6, v6, s0, 0x40e00000
	v_med3_f32 v26, v26, s0, 0x40e00000
	v_med3_f32 v27, v27, s0, 0x40e00000
	v_med3_f32 v30, v30, s0, 0x40e00000
	v_med3_f32 v31, v31, s0, 0x40e00000
	v_med3_f32 v32, v32, s0, 0x40e00000
	v_med3_f32 v28, v28, s0, 0x40e00000
	v_cvt_i32_f32_e32 v8, v8
	v_cvt_i32_f32_e32 v10, v10
	v_cvt_i32_f32_e32 v14, v14
	v_cvt_i32_f32_e32 v25, v25
	v_cvt_i32_f32_e32 v38, v23
	v_med3_f32 v5, v5, s0, 0x40e00000
	v_cvt_i32_f32_e32 v7, v7
	v_cvt_i32_f32_e32 v9, v9
	v_cvt_i32_f32_e32 v11, v11
	v_cvt_i32_f32_e32 v13, v13
	v_cvt_i32_f32_e32 v15, v15
	v_cvt_i32_f32_e32 v20, v20
	v_cvt_i32_f32_e32 v37, v6
	v_cvt_i32_f32_e32 v26, v26
	v_cvt_i32_f32_e32 v27, v27
	v_cvt_i32_f32_e32 v30, v30
	v_cvt_i32_f32_e32 v39, v31
	v_cvt_i32_f32_e32 v31, v32
	v_cvt_i32_f32_e32 v32, v28
	v_and_b32_e32 v6, 15, v8
	v_and_b32_e32 v8, 15, v10
	v_and_b32_e32 v10, 15, v12
	v_and_b32_e32 v12, 15, v14
	v_and_b32_e32 v14, 15, v16
	v_and_b32_e32 v16, 15, v22
	v_and_b32_e32 v22, 15, v24
	v_and_b32_e32 v24, 15, v25
	v_and_b32_e32 v25, 15, v38
	.loc	1 83 18                         ; generate_amdgcn.py:83:18 @[ generate_amdgcn.py:243:9 ]
	v_lshlrev_b32_e32 v28, 11, v0
	v_lshlrev_b32_e32 v38, 5, v0
	.loc	1 78 9                          ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:243:9 ]
	v_rndne_f32_e32 v29, v29
	v_rndne_f32_e32 v33, v33
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:243:9 ]
	v_cvt_i32_f32_e32 v40, v5
	v_and_b32_e32 v5, 15, v7
	v_and_b32_e32 v7, 15, v9
	v_and_b32_e32 v9, 15, v11
	v_and_b32_e32 v11, 15, v13
	v_and_b32_e32 v13, 15, v15
	v_and_b32_e32 v15, 15, v20
	v_and_b32_e32 v20, 15, v37
	v_and_b32_e32 v23, 15, v26
	v_and_b32_e32 v26, 15, v27
	v_and_b32_e32 v27, 15, v30
	.loc	1 83 18                         ; generate_amdgcn.py:83:18 @[ generate_amdgcn.py:243:9 ]
	v_lshlrev_b32_e32 v37, 2, v0
	v_and_b32_e32 v30, 0x160, v0
	v_and_b32_e32 v28, 0x3000, v28
	v_lshlrev_b32_e32 v41, 7, v81
	v_lshlrev_b32_e32 v44, 7, v0
	v_and_b32_e32 v38, 0x60, v38
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:243:9 ]
	v_med3_f32 v21, v21, s0, 0x40e00000
	.loc	1 78 9                          ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:243:9 ]
	v_rndne_f32_e32 v34, v34
	v_rndne_f32_e32 v35, v35
	v_rndne_f32_e32 v36, v36
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:243:9 ]
	v_med3_f32 v17, v17, s0, 0x40e00000
	v_med3_f32 v19, v19, s0, 0x40e00000
	v_med3_f32 v29, v29, s0, 0x40e00000
	v_med3_f32 v33, v33, s0, 0x40e00000
	.loc	1 83 18                         ; generate_amdgcn.py:83:18 @[ generate_amdgcn.py:243:9 ]
	v_and_b32_e32 v42, 0x200, v37
	v_xor_b32_e32 v43, v80, v30
	v_add3_u32 v41, 0, v28, v41
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:243:9 ]
	v_and_b32_e32 v30, 15, v32
	.loc	1 83 18                         ; generate_amdgcn.py:83:18 @[ generate_amdgcn.py:243:9 ]
	v_and_or_b32 v32, 0x3600, v44, v38
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:243:9 ]
	v_cvt_i32_f32_e32 v21, v21
	v_med3_f32 v34, v34, s0, 0x40e00000
	v_med3_f32 v35, v35, s0, 0x40e00000
	v_med3_f32 v36, v36, s0, 0x40e00000
	v_cvt_i32_f32_e32 v17, v17
	v_cvt_i32_f32_e32 v19, v19
	v_cvt_i32_f32_e32 v29, v29
	v_cvt_i32_f32_e32 v33, v33
	.loc	1 83 18                         ; generate_amdgcn.py:83:18 @[ generate_amdgcn.py:243:9 ]
	v_add3_u32 v38, v41, v42, v43
	v_xad_u32 v1, v32, v1, 0
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:243:9 ]
	v_and_b32_e32 v21, 15, v21
	v_cvt_i32_f32_e32 v34, v34
	v_cvt_i32_f32_e32 v35, v35
	v_cvt_i32_f32_e32 v36, v36
	v_and_b32_e32 v17, 15, v17
	v_and_b32_e32 v19, 15, v19
	v_and_b32_e32 v28, 15, v29
	v_and_b32_e32 v29, 15, v31
	v_and_b32_e32 v31, 15, v33
	.loc	1 83 18                         ; generate_amdgcn.py:83:18 @[ generate_amdgcn.py:243:9 ]
	ds_store_b128 v38, v[5:8]
	ds_store_b128 v38, v[13:16] offset:1024
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[5:8], v1
	ds_load_b128 v[13:16], v1 offset:2048
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v38, v[21:24]
	ds_store_b128 v38, v[28:31] offset:1024
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[21:24], v1
	ds_load_b128 v[29:32], v1 offset:2048
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v38, v[9:12]
	ds_store_b128 v38, v[17:20] offset:1024
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[9:12], v1
	ds_load_b128 v[17:20], v1 offset:2048
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:243:9 ]
	v_and_b32_e32 v28, 15, v39
	v_and_b32_e32 v33, 15, v34
	v_and_b32_e32 v34, 15, v35
	v_and_b32_e32 v35, 15, v36
	v_and_b32_e32 v36, 15, v40
	.loc	1 83 18                         ; generate_amdgcn.py:83:18 @[ generate_amdgcn.py:243:9 ]
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v38, v[25:28]
	ds_store_b128 v38, v[33:36] offset:1024
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[25:28], v1
	ds_load_b128 v[33:36], v1 offset:2048
	.loc	1 86 37                         ; generate_amdgcn.py:86:37 @[ generate_amdgcn.py:243:9 ]
	s_lshr_b32 s0, s29, 31
	.loc	1 76 13                         ; generate_amdgcn.py:76:13 @[ generate_amdgcn.py:243:9 ]
	v_mov_b16_e32 v38.l, v4.h
	.loc	1 86 37                         ; generate_amdgcn.py:86:37 @[ generate_amdgcn.py:243:9 ]
	s_add_i32 s0, s29, s0
	.loc	1 84 15                         ; generate_amdgcn.py:84:15 @[ generate_amdgcn.py:243:9 ]
	v_lshl_or_b32 v4, v13, 4, v5
	.loc	1 86 37                         ; generate_amdgcn.py:86:37 @[ generate_amdgcn.py:243:9 ]
	s_ashr_i32 s0, s0, 1
	.loc	1 84 15                         ; generate_amdgcn.py:84:15 @[ generate_amdgcn.py:243:9 ]
	v_lshl_or_b32 v5, v14, 4, v6
	v_lshl_or_b32 v6, v15, 4, v7
	.loc	1 86 14                         ; generate_amdgcn.py:86:14 @[ generate_amdgcn.py:243:9 ]
	v_mul_lo_u32 v15, s0, v77
	.loc	1 85 21                         ; generate_amdgcn.py:85:21 @[ generate_amdgcn.py:243:9 ]
	s_lshl_b32 s1, s30, 7
	.loc	1 86 14                         ; generate_amdgcn.py:86:14 @[ generate_amdgcn.py:243:9 ]
	s_mul_i32 s2, s31, s0
	.loc	1 84 15                         ; generate_amdgcn.py:84:15 @[ generate_amdgcn.py:243:9 ]
	v_lshl_or_b32 v1, v16, 4, v8
	v_lshl_or_b32 v8, v17, 4, v9
	v_lshl_or_b32 v9, v18, 4, v10
	v_lshl_or_b32 v7, v19, 4, v11
	v_lshl_or_b32 v10, v20, 4, v12
	.loc	1 86 14                         ; generate_amdgcn.py:86:14 @[ generate_amdgcn.py:243:9 ]
	v_add3_u32 v2, s2, s1, v2
	s_lshl_b32 s0, s0, 5
	.loc	1 84 15                         ; generate_amdgcn.py:84:15 @[ generate_amdgcn.py:243:9 ]
	v_lshl_or_b32 v11, v29, 4, v21
	v_lshl_or_b32 v12, v30, 4, v22
	v_lshl_or_b32 v13, v31, 4, v23
	v_lshl_or_b32 v14, v32, 4, v24
	s_waitcnt lgkmcnt(0)
	v_lshl_or_b32 v16, v33, 4, v25
	v_lshl_or_b32 v17, v34, 4, v26
	v_lshl_or_b32 v18, v35, 4, v27
	v_lshl_or_b32 v19, v36, 4, v28
	.loc	1 86 14                         ; generate_amdgcn.py:86:14 @[ generate_amdgcn.py:243:9 ]
	v_add_nc_u32_e32 v20, v2, v15
	v_add3_u32 v15, v15, s0, v2
	.loc	1 86 5 is_stmt 0                ; generate_amdgcn.py:86:5 @[ generate_amdgcn.py:243:9 ]
	v_lshlrev_b16 v1.l, 8, v1.l
	v_and_b16 v1.h, 0xff, v6.l
	v_lshlrev_b16 v2.l, 8, v5.l
	v_and_b16 v2.h, 0xff, v4.l
	v_lshlrev_b16 v3.l, 8, v10.l
	v_and_b16 v4.l, 0xff, v7.l
	v_or_b16 v7.h, v1.h, v1.l
	v_lshlrev_b16 v1.l, 8, v9.l
	v_or_b16 v7.l, v2.h, v2.l
	v_and_b16 v1.h, 0xff, v8.l
	v_or_b16 v8.h, v4.l, v3.l
	v_lshlrev_b16 v2.l, 8, v14.l
	v_and_b16 v2.h, 0xff, v13.l
	v_lshlrev_b16 v3.l, 8, v12.l
	v_and_b16 v4.l, 0xff, v11.l
	v_lshlrev_b16 v4.h, 8, v19.l
	v_and_b16 v5.l, 0xff, v18.l
	v_lshlrev_b16 v5.h, 8, v17.l
	v_and_b16 v6.l, 0xff, v16.l
	v_or_b16 v8.l, v1.h, v1.l
	v_or_b16 v1.h, v2.h, v2.l
	v_or_b16 v1.l, v4.l, v3.l
	v_or_b16 v2.h, v5.l, v4.h
	v_or_b16 v2.l, v6.l, v5.h
	s_and_b32 s1, s21, 0xffff
	s_mov_b32 s3, 0x31027000
	s_mov_b32 s2, 0x7ffffffe
	s_mov_b32 s0, s20
	.loc	1 76 13 is_stmt 1               ; generate_amdgcn.py:76:13 @[ generate_amdgcn.py:243:9 ]
	v_mov_b16_e32 v38.h, v3.h
	.loc	1 86 5                          ; generate_amdgcn.py:86:5 @[ generate_amdgcn.py:243:9 ]
	s_clause 0x1
	buffer_store_b64 v[7:8], v20, s[0:3], 0 offen
	buffer_store_b64 v[1:2], v15, s[0:3], 0 offen
	.loc	1 87 5                          ; generate_amdgcn.py:87:5 @[ generate_amdgcn.py:243:9 ]
	v_lshlrev_b32_e32 v1, 2, v78
	v_lshrrev_b32_e32 v2, 2, v79
	v_and_b32_e32 v3, 0x7c, v37
	v_and_b32_e32 v4, 2, v77
	.loc	1 87 34 is_stmt 0               ; generate_amdgcn.py:87:34 @[ generate_amdgcn.py:243:9 ]
	s_lshr_b32 s0, s4, 24
	.loc	1 87 5                          ; generate_amdgcn.py:87:5 @[ generate_amdgcn.py:243:9 ]
	s_waitcnt lgkmcnt(0)
	v_add3_u32 v1, 0, v1, v2
	.loc	1 87 14                         ; generate_amdgcn.py:87:14 @[ generate_amdgcn.py:243:9 ]
	v_and_or_b32 v2, v0, 63, s31
	.loc	1 87 5                          ; generate_amdgcn.py:87:5 @[ generate_amdgcn.py:243:9 ]
	v_add3_u32 v3, 0, v3, v4
	.loc	1 87 34                         ; generate_amdgcn.py:87:34 @[ generate_amdgcn.py:243:9 ]
	s_add_i32 s0, s29, s0
	.loc	1 87 5                          ; generate_amdgcn.py:87:5 @[ generate_amdgcn.py:243:9 ]
	s_barrier
	.loc	1 87 34                         ; generate_amdgcn.py:87:34 @[ generate_amdgcn.py:243:9 ]
	s_ashr_i32 s0, s0, 8
	.loc	1 87 5                          ; generate_amdgcn.py:87:5 @[ generate_amdgcn.py:243:9 ]
	ds_store_b32 v1, v38
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
	.amdhsa_kernel amd_strix_halo_gfx1151_int4xint4_tn_sc256_none_outint4sc256_bm64_bn256_bk128_gm1_w16_s2_weu2_sk1_evenk
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
	.size	amd_strix_halo_gfx1151_int4xint4_tn_sc256_none_outint4sc256_bm64_bn256_bk128_gm1_w16_s2_weu2_sk1_evenk, .Lfunc_end0-amd_strix_halo_gfx1151_int4xint4_tn_sc256_none_outint4sc256_bm64_bn256_bk128_gm1_w16_s2_weu2_sk1_evenk
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_int4xint4_tn_sc256_none_outint4sc256_bm64_bn256_bk128_gm1_w16_s2_weu2_sk1_evenk.num_vgpr, 141
	.set amd_strix_halo_gfx1151_int4xint4_tn_sc256_none_outint4sc256_bm64_bn256_bk128_gm1_w16_s2_weu2_sk1_evenk.num_agpr, 0
	.set amd_strix_halo_gfx1151_int4xint4_tn_sc256_none_outint4sc256_bm64_bn256_bk128_gm1_w16_s2_weu2_sk1_evenk.numbered_sgpr, 37
	.set amd_strix_halo_gfx1151_int4xint4_tn_sc256_none_outint4sc256_bm64_bn256_bk128_gm1_w16_s2_weu2_sk1_evenk.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_int4xint4_tn_sc256_none_outint4sc256_bm64_bn256_bk128_gm1_w16_s2_weu2_sk1_evenk.private_seg_size, 0
	.set amd_strix_halo_gfx1151_int4xint4_tn_sc256_none_outint4sc256_bm64_bn256_bk128_gm1_w16_s2_weu2_sk1_evenk.uses_vcc, 1
	.set amd_strix_halo_gfx1151_int4xint4_tn_sc256_none_outint4sc256_bm64_bn256_bk128_gm1_w16_s2_weu2_sk1_evenk.uses_flat_scratch, 0
	.set amd_strix_halo_gfx1151_int4xint4_tn_sc256_none_outint4sc256_bm64_bn256_bk128_gm1_w16_s2_weu2_sk1_evenk.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_int4xint4_tn_sc256_none_outint4sc256_bm64_bn256_bk128_gm1_w16_s2_weu2_sk1_evenk.has_recursion, 0
	.set amd_strix_halo_gfx1151_int4xint4_tn_sc256_none_outint4sc256_bm64_bn256_bk128_gm1_w16_s2_weu2_sk1_evenk.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 17616
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
	.asciz	"amd_strix_halo_gfx1151_int4xint4_tn_sc256_none_outint4sc256_bm64_bn256_bk128_gm1_w16_s2_weu2_sk1_evenk"             ; string offset=75 ; amd_strix_halo_gfx1151_int4xint4_tn_sc256_none_outint4sc256_bm64_bn256_bk128_gm1_w16_s2_weu2_sk1_evenk
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
    .name:           amd_strix_halo_gfx1151_int4xint4_tn_sc256_none_outint4sc256_bm64_bn256_bk128_gm1_w16_s2_weu2_sk1_evenk
    .private_segment_fixed_size: 0
    .sgpr_count:     39
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_int4xint4_tn_sc256_none_outint4sc256_bm64_bn256_bk128_gm1_w16_s2_weu2_sk1_evenk.kd
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
