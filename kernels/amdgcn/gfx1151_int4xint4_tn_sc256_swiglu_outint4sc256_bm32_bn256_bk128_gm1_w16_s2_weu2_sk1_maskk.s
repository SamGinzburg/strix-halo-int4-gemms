	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_int4xint4_tn_sc256_swiglu_outint4sc256_bm32_bn256_bk128_gm1_w16_s2_weu2_sk1_maskk               ; -- Begin function amd_strix_halo_gfx1151_int4xint4_tn_sc256_swiglu_outint4sc256_bm32_bn256_bk128_gm1_w16_s2_weu2_sk1_maskk
	.p2align	8
	.type	amd_strix_halo_gfx1151_int4xint4_tn_sc256_swiglu_outint4sc256_bm32_bn256_bk128_gm1_w16_s2_weu2_sk1_maskk,@function
amd_strix_halo_gfx1151_int4xint4_tn_sc256_swiglu_outint4sc256_bm32_bn256_bk128_gm1_w16_s2_weu2_sk1_maskk:                      ; @amd_strix_halo_gfx1151_int4xint4_tn_sc256_swiglu_outint4sc256_bm32_bn256_bk128_gm1_w16_s2_weu2_sk1_maskk
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
	v_dual_mov_b32 v89, 0 :: v_dual_and_b32 v88, 15, v0
	v_mov_b32_e32 v90, 0
	v_dual_mov_b32 v92, 0 :: v_dual_mov_b32 v93, 0
	v_dual_mov_b32 v91, 0 :: v_dual_mov_b32 v94, 0
	v_dual_mov_b32 v95, 0 :: v_dual_mov_b32 v96, 0
	v_dual_mov_b32 v99, 0 :: v_dual_mov_b32 v100, 0
	v_dual_mov_b32 v101, 0 :: v_dual_mov_b32 v98, 0
	v_dual_mov_b32 v97, 0 :: v_dual_mov_b32 v102, 0
	v_dual_mov_b32 v103, 0 :: v_dual_mov_b32 v104, 0
.Ltmp1:
	.file	2 "<triton>/python/triton/language" "standard.py"
	.loc	2 43 13                         ; standard.py:43:13 @[ generate_amdgcn.py:115:17 ]
	s_waitcnt lgkmcnt(0)
	s_add_i32 s4, s29, 0xff
.Ltmp2:
	.loc	2 43 13 is_stmt 0               ; standard.py:43:13 @[ generate_amdgcn.py:114:17 ]
	s_add_i32 s8, s28, 31
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
	s_lshr_b32 s10, s10, 27
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
	s_ashr_i32 s8, s8, 5
.Ltmp11:
	.loc	1 117 16 is_stmt 1              ; generate_amdgcn.py:117:16
	s_abs_i32 s5, s4
	v_dual_mov_b32 v116, 0 :: v_dual_mov_b32 v115, 0
	s_cvt_f32_u32 s6, s5
	s_sub_i32 s9, 0, s5
	v_dual_mov_b32 v114, 0 :: v_dual_mov_b32 v117, 0
	s_delay_alu instid0(SALU_CYCLE_1)
	v_rcp_iflag_f32_e32 v1, s6
	v_dual_mov_b32 v112, 0 :: v_dual_mov_b32 v119, 0
	v_dual_mov_b32 v118, 0 :: v_dual_mov_b32 v107, 0
	v_dual_mov_b32 v120, 0 :: v_dual_mov_b32 v105, 0
	v_dual_mov_b32 v108, 0 :: v_dual_mov_b32 v111, 0
	v_dual_mov_b32 v106, 0 :: v_dual_mov_b32 v113, 0
	s_delay_alu instid0(TRANS32_DEP_1)
	v_readfirstlane_b32 s6, v1
	v_dual_mov_b32 v109, 0 :: v_dual_lshlrev_b32 v86, 2, v0
	.loc	1 126 32                        ; generate_amdgcn.py:126:32
	v_lshrrev_b32_e32 v85, 4, v0
	v_dual_mov_b32 v110, 0 :: v_dual_and_b32 v83, 0x1e0, v0
	.loc	1 117 16                        ; generate_amdgcn.py:117:16
	s_mul_f32 s6, s6, 0x4f7ffffe
	.loc	1 127 32                        ; generate_amdgcn.py:127:32
	v_and_b32_e32 v84, 16, v0
	v_lshlrev_b32_e32 v87, 4, v88
	s_mov_b32 s12, 0
	.loc	1 117 16                        ; generate_amdgcn.py:117:16
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
	.loc	1 119 31                        ; generate_amdgcn.py:119:31
	s_sub_i32 s6, s8, s5
	.loc	1 120 29                        ; generate_amdgcn.py:120:29
	s_mul_i32 s4, s5, s4
	.loc	1 119 20                        ; generate_amdgcn.py:119:20
	s_min_i32 s6, s6, 1
	.loc	1 120 29                        ; generate_amdgcn.py:120:29
	s_sub_i32 s4, s2, s4
	.loc	1 121 13                        ; generate_amdgcn.py:121:13
	s_abs_i32 s7, s6
	s_xor_b32 s10, s4, s6
	s_cvt_f32_u32 s8, s7
	s_sub_i32 s9, 0, s7
	s_ashr_i32 s13, s10, 31
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_iflag_f32_e32 v1, s8
	v_readfirstlane_b32 s8, v1
	s_mul_f32 s8, s8, 0x4f7ffffe
	s_delay_alu instid0(SALU_CYCLE_3) | instskip(NEXT) | instid1(SALU_CYCLE_3)
	s_cvt_u32_f32 s8, s8
	s_mul_i32 s9, s9, s8
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_4) | instid1(SALU_CYCLE_1)
	s_mul_hi_u32 s2, s8, s9
	s_abs_i32 s9, s4
	s_add_i32 s8, s8, s2
	s_load_b32 s2, s[0:1], 0x38
	s_mul_hi_u32 s8, s9, s8
	s_mul_i32 s11, s8, s7
	s_add_i32 s10, s8, 1
	s_sub_i32 s9, s9, s11
	s_delay_alu instid0(SALU_CYCLE_1)
	s_sub_i32 s11, s9, s7
	s_cmp_ge_u32 s9, s7
	s_cselect_b32 s8, s10, s8
	s_cselect_b32 s9, s11, s9
	s_add_i32 s10, s8, 1
	s_cmp_ge_u32 s9, s7
	s_cselect_b32 s7, s10, s8
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_xor_b32 s14, s7, s13
	s_sub_i32 s30, s14, s13
.Ltmp12:
	.loc	2 43 13                         ; standard.py:43:13 @[ generate_amdgcn.py:181:22 ]
	s_waitcnt lgkmcnt(0)
	s_add_i32 s15, s2, 0xff
.Ltmp13:
	.loc	1 120 28                        ; generate_amdgcn.py:120:28
	s_mul_i32 s6, s30, s6
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_sub_i32 s4, s4, s6
	.loc	1 120 13 is_stmt 0              ; generate_amdgcn.py:120:13
	s_add_i32 s4, s4, s5
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 126 14 is_stmt 1              ; generate_amdgcn.py:126:14
	s_lshl_b32 s31, s4, 5
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	s_cmpk_lt_i32 s15, 0x100
	s_cbranch_scc1 .LBB0_3
; %bb.1:                                ; %.lr.ph
	.loc	1 0 9 is_stmt 0                 ; generate_amdgcn.py:0:9
	s_load_b256 s[4:11], s[0:1], 0x0
	.loc	1 123 22 is_stmt 1              ; generate_amdgcn.py:123:22
	s_lshr_b32 s0, s2, 31
	.loc	1 185 24                        ; generate_amdgcn.py:185:24
	v_or_b32_e32 v1, 32, v85
	.loc	1 127 32                        ; generate_amdgcn.py:127:32
	v_lshrrev_b32_e32 v3, 1, v83
	.loc	1 123 22                        ; generate_amdgcn.py:123:22
	s_add_i32 s2, s2, s0
	.loc	1 197 39                        ; generate_amdgcn.py:197:39
	s_lshl_b32 s33, s3, 6
	.loc	1 123 22                        ; generate_amdgcn.py:123:22
	s_ashr_i32 s0, s2, 1
	s_mov_b32 s16, s12
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_sub_nc_u32_e32 v122, s0, v1
	v_or_b32_e32 v1, v3, v88
	v_or_b32_e32 v3, s33, v85
	s_mov_b32 s17, s12
	s_mov_b32 s18, s12
	s_mov_b32 s19, s12
	v_add_nc_u32_e32 v123, 0, v1
	v_add_nc_u32_e32 v1, 64, v3
	.loc	1 185 24                        ; generate_amdgcn.py:185:24
	v_lshrrev_b32_e32 v2, 3, v0
.Ltmp14:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:181:22 ]
	s_ashr_i32 s1, s15, 31
.Ltmp15:
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_sub_nc_u32_e32 v125, s0, v85
.Ltmp16:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:181:22 ]
	s_lshr_b32 s1, s1, 24
	v_cmp_gt_i32_e64 s2, 0x80, v1
.Ltmp17:
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_lshlrev_b32_e32 v1, 1, v85
	v_or_b32_e32 v11, s33, v2
.Ltmp18:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:181:22 ]
	s_add_i32 s15, s15, s1
.Ltmp19:
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_sub_nc_u32_e32 v124, s0, v2
	v_cmp_gt_i32_e64 s0, 0x80, v3
	v_lshl_or_b32 v3, s14, 9, v83
	v_lshl_or_b32 v13, s3, 7, v1
.Ltmp20:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:181:22 ]
	s_ashr_i32 s34, s15, 8
.Ltmp21:
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	s_lshl_b32 s15, s13, 9
	s_lshl_b32 s3, s13, 8
	s_mov_b32 s13, s12
	v_add_nc_u32_e32 v4, 64, v11
	v_add_nc_u32_e32 v2, s31, v88
	v_lshl_add_u32 v6, s29, 1, v3
	v_dual_mov_b32 v108, 0 :: v_dual_add_nc_u32 v1, 0x81, v13
	s_delay_alu instid0(VALU_DEP_4)
	v_cmp_gt_i32_e64 s1, 0x80, v4
	v_mul_lo_u32 v4, s28, v4
	v_lshrrev_b32_e32 v5, 3, v84
	v_dual_mov_b32 v106, 0 :: v_dual_add_nc_u32 v7, 16, v2
	s_lshl_b32 s14, s14, 8
	.loc	1 126 32                        ; generate_amdgcn.py:126:32
	v_and_b32_e32 v8, 28, v86
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_subrev_nc_u32_e32 v127, s15, v6
	v_mul_lo_u32 v6, s34, v2
	v_mad_u64_u32 v[1:2], null, s29, v1, s[14:15]
	v_and_b32_e32 v126, 2, v5
	v_mul_lo_u32 v5, s34, v7
	v_dual_mov_b32 v113, 0 :: v_dual_add_nc_u32 v2, 0xc1, v13
	v_subrev_nc_u32_e32 v128, s15, v3
	v_dual_mov_b32 v118, 0 :: v_dual_add_nc_u32 v3, 0xc0, v13
	v_add3_u32 v131, v4, s31, v8
	v_dual_mov_b32 v111, 0 :: v_dual_add_nc_u32 v4, 0x80, v13
	v_subrev_nc_u32_e32 v132, s3, v1
	v_mad_u64_u32 v[1:2], null, s29, v2, s[14:15]
	v_mad_u64_u32 v[2:3], null, s29, v3, s[14:15]
	v_dual_mov_b32 v109, 0 :: v_dual_lshlrev_b32 v130, 1, v6
	v_mad_u64_u32 v[3:4], null, s29, v4, s[14:15]
	v_or_b32_e32 v6, 0x41, v13
	v_dual_mov_b32 v120, 0 :: v_dual_lshlrev_b32 v129, 1, v5
	v_or_b32_e32 v7, 64, v13
	v_mad_u64_u32 v[4:5], null, s29, v13, s[14:15]
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mad_u64_u32 v[5:6], null, s29, v6, s[14:15]
	v_mad_u64_u32 v[6:7], null, s29, v7, s[14:15]
	v_subrev_nc_u32_e32 v133, s3, v1
	v_mul_lo_u32 v1, s28, v11
	v_dual_mov_b32 v112, 0 :: v_dual_add_nc_u32 v7, s29, v4
	v_dual_mov_b32 v110, 0 :: v_dual_lshlrev_b32 v9, 4, v0
	v_or_b32_e32 v10, 0x3f0, v0
	v_or_b32_e32 v12, 0x7f0, v0
	s_mov_b32 s14, s12
	s_mov_b32 s15, s12
	v_subrev_nc_u32_e32 v134, s3, v2
	v_subrev_nc_u32_e32 v135, s3, v3
	v_subrev_nc_u32_e32 v136, s3, v5
	v_subrev_nc_u32_e32 v137, s3, v6
	v_subrev_nc_u32_e32 v138, s3, v7
	v_subrev_nc_u32_e32 v139, s3, v4
	v_add3_u32 v140, v1, s31, v8
	v_mov_b32_e32 v1, s12
	v_dual_mov_b32 v2, s13 :: v_dual_add_nc_u32 v121, 0, v88
	v_dual_mov_b32 v114, 0 :: v_dual_add_nc_u32 v141, 0, v86
	v_dual_mov_b32 v105, 0 :: v_dual_add_nc_u32 v142, 0, v9
	v_dual_mov_b32 v116, 0 :: v_dual_add_nc_u32 v143, 0, v10
	v_dual_mov_b32 v107, 0 :: v_dual_add_nc_u32 v144, 0, v12
	v_dual_mov_b32 v3, s14 :: v_dual_mov_b32 v4, s15
	v_dual_mov_b32 v5, s16 :: v_dual_mov_b32 v6, s17
	v_dual_mov_b32 v7, s18 :: v_dual_mov_b32 v8, s19
	v_dual_mov_b32 v119, 0 :: v_dual_mov_b32 v104, 0
	v_dual_mov_b32 v117, 0 :: v_dual_mov_b32 v102, 0
	v_dual_mov_b32 v115, 0 :: v_dual_mov_b32 v98, 0
	v_dual_mov_b32 v103, 0 :: v_dual_mov_b32 v100, 0
	v_dual_mov_b32 v97, 0 :: v_dual_mov_b32 v96, 0
	v_dual_mov_b32 v101, 0 :: v_dual_mov_b32 v94, 0
	v_dual_mov_b32 v99, 0 :: v_dual_mov_b32 v92, 0
	v_dual_mov_b32 v95, 0 :: v_dual_mov_b32 v90, 0
	v_mov_b32_e32 v91, 0
	v_mov_b32_e32 v93, 0
	v_mov_b32_e32 v89, 0
	s_mov_b32 s27, 0x31027000
	s_mov_b32 s26, 0x7ffffffe
	s_waitcnt lgkmcnt(0)
	s_and_b32 s9, s9, 0xffff
	s_and_b32 s5, s5, 0xffff
	s_and_b32 s7, s7, 0xffff
	s_and_b32 s11, s11, 0xffff
	s_lshl_b32 s35, s29, 2
	s_lshl_b32 s36, s28, 7
	s_lshl_b32 s37, s29, 8
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
	v_cmp_gt_i32_e32 vcc_lo, 0x80, v11
.LBB0_2:                                ; =>This Inner Loop Header: Depth=1
	.loc	1 195 18                        ; generate_amdgcn.py:195:18
	s_clause 0x1
	buffer_load_u16 v9, v130, s[24:27], 0 offen
	buffer_load_u16 v10, v129, s[24:27], 0 offen
	.loc	1 198 27                        ; generate_amdgcn.py:198:27
	v_cmp_lt_i32_e64 s3, s33, v124
	v_cmp_lt_i32_e64 s4, s33, v125
	v_cmp_lt_i32_e64 s5, s33, v122
	.loc	1 228 43                        ; generate_amdgcn.py:228:43
	v_add_nc_u32_e32 v17, v87, v138
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_add_nc_u32_e32 v129, 2, v129
	.loc	1 198 26                        ; generate_amdgcn.py:198:26
	s_and_b32 s3, s3, vcc_lo
	s_and_b32 s4, s4, s0
	s_and_b32 s5, s5, s0
	.loc	1 228 35                        ; generate_amdgcn.py:228:35
	v_cndmask_b32_e64 v17, 0x80000000, v17, s4
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_add_nc_u32_e32 v138, s37, v138
	s_add_i32 s34, s34, -1
	v_add_nc_u32_e32 v130, 2, v130
	.loc	1 228 35                        ; generate_amdgcn.py:228:35
	buffer_load_b128 v[17:20], v17, s[16:19], 0 offen
	.loc	1 195 18                        ; generate_amdgcn.py:195:18
	s_waitcnt vmcnt(1)
	v_lshlrev_b32_e32 v146, 16, v10
	v_lshlrev_b32_e32 v145, 16, v9
	.loc	1 214 26                        ; generate_amdgcn.py:214:26
	v_cndmask_b32_e64 v9, 0x80000000, v140, s3
	.loc	1 220 26                        ; generate_amdgcn.py:220:26
	v_add_nc_u32_e32 v13, v87, v137
	.loc	1 228 35                        ; generate_amdgcn.py:228:35
	v_add_nc_u32_e32 v21, v87, v136
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_add_nc_u32_e32 v136, s37, v136
	v_add_nc_u32_e32 v137, s37, v137
	.loc	1 214 26                        ; generate_amdgcn.py:214:26
	buffer_load_b32 v25, v9, s[12:15], 0 offen
	.loc	1 220 34                        ; generate_amdgcn.py:220:34
	v_add_nc_u32_e32 v9, v87, v139
	.loc	1 220 26 is_stmt 0              ; generate_amdgcn.py:220:26
	v_cndmask_b32_e64 v13, 0x80000000, v13, s5
	.loc	1 228 35 is_stmt 1              ; generate_amdgcn.py:228:35
	v_cndmask_b32_e64 v21, 0x80000000, v21, s5
	.loc	1 198 27                        ; generate_amdgcn.py:198:27
	s_add_i32 s5, s33, 64
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_add_nc_u32_e32 v139, s37, v139
	.loc	1 220 26                        ; generate_amdgcn.py:220:26
	v_cndmask_b32_e64 v9, 0x80000000, v9, s4
	s_clause 0x1
	buffer_load_b128 v[13:16], v13, s[16:19], 0 offen
	buffer_load_b128 v[21:24], v21, s[16:19], 0 offen
	.loc	1 198 27                        ; generate_amdgcn.py:198:27
	v_cmp_lt_i32_e64 s3, s5, v124
	v_cmp_lt_i32_e64 s4, s5, v125
	.loc	1 220 26                        ; generate_amdgcn.py:220:26
	buffer_load_b128 v[9:12], v9, s[16:19], 0 offen
	.loc	1 214 26                        ; generate_amdgcn.py:214:26
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 198 26                        ; generate_amdgcn.py:198:26
	s_and_b32 s6, s3, s1
	.loc	1 214 26                        ; generate_amdgcn.py:214:26
	s_waitcnt vmcnt(3)
	ds_store_b32 v141, v25 offset:32768
	.loc	1 220 26                        ; generate_amdgcn.py:220:26
	s_waitcnt vmcnt(0)
	ds_store_b128 v142, v[9:12]
	ds_store_b128 v142, v[13:16] offset:8192
	.loc	1 228 35                        ; generate_amdgcn.py:228:35
	ds_store_b128 v142, v[17:20] offset:16384
	ds_store_b128 v142, v[21:24] offset:24576
	.loc	1 214 26                        ; generate_amdgcn.py:214:26
	v_cndmask_b32_e64 v9, 0x80000000, v131, s6
	.loc	1 198 27                        ; generate_amdgcn.py:198:27
	v_cmp_lt_i32_e64 s5, s5, v122
	.loc	1 198 26 is_stmt 0              ; generate_amdgcn.py:198:26
	s_and_b32 s4, s4, s2
	.loc	1 220 26 is_stmt 1              ; generate_amdgcn.py:220:26
	v_add_nc_u32_e32 v10, v87, v134
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_add_nc_u32_e32 v131, s36, v131
	.loc	1 214 26                        ; generate_amdgcn.py:214:26
	buffer_load_b32 v147, v9, s[12:15], 0 offen
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 221 27                        ; generate_amdgcn.py:221:27
	ds_load_u8 v19, v121 offset:33184
	ds_load_u8 v20, v121 offset:33152
	.loc	1 220 34                        ; generate_amdgcn.py:220:34
	v_add_nc_u32_e32 v9, v87, v135
	.loc	1 198 26                        ; generate_amdgcn.py:198:26
	s_and_b32 s3, s5, s2
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_add_nc_u32_e32 v134, s37, v134
	v_add_nc_u32_e32 v135, s37, v135
	v_add_nc_u32_e32 v140, s36, v140
	.loc	1 220 26                        ; generate_amdgcn.py:220:26
	v_cndmask_b32_e64 v9, 0x80000000, v9, s4
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	s_addk_i32 s33, 0x80
	s_cmp_lg_u32 s34, 0
	.loc	1 220 26                        ; generate_amdgcn.py:220:26
	buffer_load_b128 v[41:44], v9, s[16:19], 0 offen
	v_cndmask_b32_e64 v9, 0x80000000, v10, s3
	buffer_load_b128 v[45:48], v9, s[16:19], 0 offen
	.loc	1 221 27                        ; generate_amdgcn.py:221:27
	ds_load_u8 v9, v121 offset:32928
	ds_load_u8 v10, v121 offset:32896
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v19, v20, v19, 0xc0c0004
	ds_load_u8 v20, v121 offset:33248
	ds_load_u8 v21, v121 offset:33216
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	ds_load_u8 v10, v121 offset:32992
	ds_load_u8 v11, v121 offset:32960
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v20, v21, v20, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v78, v20, 16, v19
	ds_load_u8 v19, v121 offset:33056
	ds_load_u8 v20, v121 offset:33024
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	v_lshl_or_b32 v80, v10, 16, v9
	ds_load_u8 v9, v121 offset:32864
	ds_load_u8 v10, v121 offset:32832
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v19, v20, v19, 0xc0c0004
	ds_load_u8 v20, v121 offset:33120
	ds_load_u8 v21, v121 offset:33088
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	ds_load_u8 v10, v121 offset:32768
	ds_load_u8 v17, v121 offset:32784
	ds_load_u8 v11, v121 offset:32800
	ds_load_u8 v18, v121 offset:32816
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v20, v21, v20, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v77, v20, 16, v19
	ds_load_u8 v19, v123 offset:3328
	ds_load_u8 v20, v123 offset:3072
	s_waitcnt lgkmcnt(3)
	v_perm_b32 v10, v10, v11, 0xc0c0004
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v17, v17, v18, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_2)
	v_lshl_or_b32 v79, v9, 16, v10
	ds_load_u8 v9, v123 offset:1280
	ds_load_u8 v10, v123 offset:1024
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v19, v20, v19, 0xc0c0004
	ds_load_u8 v20, v123 offset:3840
	ds_load_u8 v21, v123 offset:3584
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	ds_load_u8 v10, v123 offset:1792
	ds_load_u8 v11, v123 offset:1536
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v20, v21, v20, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v28, v20, 16, v19
	ds_load_u8 v19, v123 offset:2304
	ds_load_u8 v20, v123 offset:2048
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	v_lshl_or_b32 v26, v10, 16, v9
	ds_load_u8 v9, v123 offset:256
	ds_load_u8 v10, v123
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v19, v20, v19, 0xc0c0004
	ds_load_u8 v20, v123 offset:2816
	ds_load_u8 v21, v123 offset:2560
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	ds_load_u8 v10, v123 offset:768
	ds_load_u8 v11, v123 offset:512
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v20, v21, v20, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v27, v20, 16, v19
	ds_load_u8 v19, v121 offset:33440
	ds_load_u8 v20, v121 offset:33408
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	v_lshl_or_b32 v25, v10, 16, v9
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v19, v20, v19, 0xc0c0004
	ds_load_u8 v20, v121 offset:33504
	ds_load_u8 v21, v121 offset:33472
	v_wmma_i32_16x16x16_iu4 v[9:16], v[25:26], v[79:80], v[1:8] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[9:16], v[27:28], v[77:78], v[9:16] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v20, v21, v20, 0xc0c0004
	v_lshl_or_b32 v76, v20, 16, v19
	ds_load_u8 v19, v121 offset:33312
	ds_load_u8 v20, v121 offset:33280
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v19, v20, v19, 0xc0c0004
	ds_load_u8 v20, v121 offset:33376
	ds_load_u8 v21, v121 offset:33344
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v20, v21, v20, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v75, v20, 16, v19
	ds_load_u8 v19, v123 offset:5376
	ds_load_u8 v20, v123 offset:5120
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v19, v20, v19, 0xc0c0004
	ds_load_u8 v20, v123 offset:5888
	ds_load_u8 v21, v123 offset:5632
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v20, v21, v20, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v30, v20, 16, v19
	ds_load_u8 v19, v123 offset:4352
	ds_load_u8 v20, v123 offset:4096
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v19, v20, v19, 0xc0c0004
	ds_load_u8 v20, v123 offset:4864
	ds_load_u8 v21, v123 offset:4608
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v20, v21, v20, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v29, v20, 16, v19
	ds_load_u8 v19, v121 offset:33696
	ds_load_u8 v20, v121 offset:33664
	v_wmma_i32_16x16x16_iu4 v[9:16], v[29:30], v[75:76], v[9:16] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v19, v20, v19, 0xc0c0004
	ds_load_u8 v20, v121 offset:33760
	ds_load_u8 v21, v121 offset:33728
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v20, v21, v20, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v74, v20, 16, v19
	ds_load_u8 v19, v121 offset:33568
	ds_load_u8 v20, v121 offset:33536
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v19, v20, v19, 0xc0c0004
	ds_load_u8 v20, v121 offset:33632
	ds_load_u8 v21, v121 offset:33600
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v20, v21, v20, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v73, v20, 16, v19
	ds_load_u8 v19, v123 offset:7424
	ds_load_u8 v20, v123 offset:7168
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v19, v20, v19, 0xc0c0004
	ds_load_u8 v20, v123 offset:7936
	ds_load_u8 v21, v123 offset:7680
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v20, v21, v20, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v32, v20, 16, v19
	ds_load_u8 v19, v123 offset:6400
	ds_load_u8 v20, v123 offset:6144
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v19, v20, v19, 0xc0c0004
	ds_load_u8 v20, v123 offset:6912
	ds_load_u8 v21, v123 offset:6656
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v20, v21, v20, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v31, v20, 16, v19
	ds_load_u8 v19, v121 offset:33952
	ds_load_u8 v20, v121 offset:33920
	v_wmma_i32_16x16x16_iu4 v[9:16], v[31:32], v[73:74], v[9:16] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v19, v20, v19, 0xc0c0004
	ds_load_u8 v20, v121 offset:34016
	ds_load_u8 v21, v121 offset:33984
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v20, v21, v20, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v40, v20, 16, v19
	ds_load_u8 v19, v121 offset:33824
	ds_load_u8 v20, v121 offset:33792
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v19, v20, v19, 0xc0c0004
	ds_load_u8 v20, v121 offset:33888
	ds_load_u8 v21, v121 offset:33856
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v20, v21, v20, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v39, v20, 16, v19
	ds_load_u8 v19, v123 offset:9472
	ds_load_u8 v20, v123 offset:9216
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v19, v20, v19, 0xc0c0004
	ds_load_u8 v20, v123 offset:9984
	ds_load_u8 v21, v123 offset:9728
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v20, v21, v20, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v50, v20, 16, v19
	ds_load_u8 v19, v123 offset:8448
	ds_load_u8 v20, v123 offset:8192
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v19, v20, v19, 0xc0c0004
	ds_load_u8 v20, v123 offset:8960
	ds_load_u8 v21, v123 offset:8704
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v20, v21, v20, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v49, v20, 16, v19
	ds_load_u8 v19, v121 offset:34208
	ds_load_u8 v20, v121 offset:34176
	v_wmma_i32_16x16x16_iu4 v[9:16], v[49:50], v[39:40], v[9:16] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v19, v20, v19, 0xc0c0004
	ds_load_u8 v20, v121 offset:34272
	ds_load_u8 v21, v121 offset:34240
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v20, v21, v20, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v38, v20, 16, v19
	ds_load_u8 v19, v121 offset:34080
	ds_load_u8 v20, v121 offset:34048
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v19, v20, v19, 0xc0c0004
	ds_load_u8 v20, v121 offset:34144
	ds_load_u8 v21, v121 offset:34112
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v20, v21, v20, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v37, v20, 16, v19
	ds_load_u8 v19, v123 offset:11520
	ds_load_u8 v20, v123 offset:11264
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v19, v20, v19, 0xc0c0004
	ds_load_u8 v20, v123 offset:12032
	ds_load_u8 v21, v123 offset:11776
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v20, v21, v20, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v52, v20, 16, v19
	ds_load_u8 v19, v123 offset:10496
	ds_load_u8 v20, v123 offset:10240
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v19, v20, v19, 0xc0c0004
	ds_load_u8 v20, v123 offset:11008
	ds_load_u8 v21, v123 offset:10752
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v20, v21, v20, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v51, v20, 16, v19
	ds_load_u8 v19, v121 offset:34464
	ds_load_u8 v20, v121 offset:34432
	v_wmma_i32_16x16x16_iu4 v[9:16], v[51:52], v[37:38], v[9:16] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v19, v20, v19, 0xc0c0004
	ds_load_u8 v20, v121 offset:34528
	ds_load_u8 v21, v121 offset:34496
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v20, v21, v20, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v36, v20, 16, v19
	ds_load_u8 v19, v121 offset:34336
	ds_load_u8 v20, v121 offset:34304
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v19, v20, v19, 0xc0c0004
	ds_load_u8 v20, v121 offset:34400
	ds_load_u8 v21, v121 offset:34368
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v20, v21, v20, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v35, v20, 16, v19
	ds_load_u8 v19, v123 offset:13568
	ds_load_u8 v20, v123 offset:13312
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v19, v20, v19, 0xc0c0004
	ds_load_u8 v20, v123 offset:14080
	ds_load_u8 v21, v123 offset:13824
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v20, v21, v20, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v54, v20, 16, v19
	ds_load_u8 v19, v123 offset:12544
	ds_load_u8 v20, v123 offset:12288
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v19, v20, v19, 0xc0c0004
	ds_load_u8 v20, v123 offset:13056
	ds_load_u8 v21, v123 offset:12800
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v20, v21, v20, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v53, v20, 16, v19
	ds_load_u8 v19, v121 offset:34720
	ds_load_u8 v20, v121 offset:34688
	v_wmma_i32_16x16x16_iu4 v[9:16], v[53:54], v[35:36], v[9:16] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v19, v20, v19, 0xc0c0004
	ds_load_u8 v20, v121 offset:34784
	ds_load_u8 v21, v121 offset:34752
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v20, v21, v20, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v34, v20, 16, v19
	ds_load_u8 v19, v121 offset:34592
	ds_load_u8 v20, v121 offset:34560
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v19, v20, v19, 0xc0c0004
	ds_load_u8 v20, v121 offset:34656
	ds_load_u8 v21, v121 offset:34624
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v20, v21, v20, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v33, v20, 16, v19
	ds_load_u8 v19, v123 offset:15616
	ds_load_u8 v20, v123 offset:15360
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v19, v20, v19, 0xc0c0004
	ds_load_u8 v20, v123 offset:16128
	ds_load_u8 v21, v123 offset:15872
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v20, v21, v20, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v56, v20, 16, v19
	ds_load_u8 v19, v123 offset:14592
	ds_load_u8 v20, v123 offset:14336
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v19, v20, v19, 0xc0c0004
	ds_load_u8 v20, v123 offset:15104
	ds_load_u8 v21, v123 offset:14848
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v20, v21, v20, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v55, v20, 16, v19
	ds_load_u8 v19, v121 offset:32944
	ds_load_u8 v20, v121 offset:32912
	v_wmma_i32_16x16x16_iu4 v[9:16], v[55:56], v[33:34], v[9:16] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v19, v20, v19, 0xc0c0004
	ds_load_u8 v20, v121 offset:33008
	ds_load_u8 v21, v121 offset:32976
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v20, v21, v20, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v58, v20, 16, v19
	ds_load_u8 v19, v121 offset:32880
	ds_load_u8 v20, v121 offset:32848
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v19, v20, v19, 0xc0c0004
	v_lshl_or_b32 v57, v19, 16, v17
	s_delay_alu instid0(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[17:24], v[25:26], v[57:58], v[1:8] neg_lo:[1,1,0]
	ds_load_u8 v25, v121 offset:33200
	ds_load_u8 v26, v121 offset:33168
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v25, v26, v25, 0xc0c0004
	ds_load_u8 v26, v121 offset:33264
	ds_load_u8 v59, v121 offset:33232
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v26, v59, v26, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v60, v26, 16, v25
	ds_load_u8 v25, v121 offset:33072
	ds_load_u8 v26, v121 offset:33040
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v25, v26, v25, 0xc0c0004
	ds_load_u8 v26, v121 offset:33136
	ds_load_u8 v59, v121 offset:33104
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v26, v59, v26, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v59, v26, 16, v25
	ds_load_u8 v25, v121 offset:33456
	ds_load_u8 v26, v121 offset:33424
	v_wmma_i32_16x16x16_iu4 v[17:24], v[27:28], v[59:60], v[17:24] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v25, v26, v25, 0xc0c0004
	ds_load_u8 v26, v121 offset:33520
	ds_load_u8 v27, v121 offset:33488
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v26, v27, v26, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v62, v26, 16, v25
	ds_load_u8 v25, v121 offset:33328
	ds_load_u8 v26, v121 offset:33296
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v25, v26, v25, 0xc0c0004
	ds_load_u8 v26, v121 offset:33392
	ds_load_u8 v27, v121 offset:33360
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v26, v27, v26, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v61, v26, 16, v25
	ds_load_u8 v25, v121 offset:33584
	ds_load_u8 v26, v121 offset:33552
	v_wmma_i32_16x16x16_iu4 v[17:24], v[29:30], v[61:62], v[17:24] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v25, v26, v25, 0xc0c0004
	ds_load_u8 v26, v121 offset:33648
	ds_load_u8 v27, v121 offset:33616
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v26, v27, v26, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v63, v26, 16, v25
	ds_load_u8 v25, v121 offset:33712
	ds_load_u8 v26, v121 offset:33680
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v25, v26, v25, 0xc0c0004
	ds_load_u8 v26, v143 offset:32768
	ds_load_u8 v27, v121 offset:33744
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v26, v27, v26, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v64, v26, 16, v25
	ds_load_u8 v25, v121 offset:33968
	ds_load_u8 v26, v121 offset:33936
	v_wmma_i32_16x16x16_iu4 v[17:24], v[31:32], v[63:64], v[17:24] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v25, v26, v25, 0xc0c0004
	ds_load_u8 v26, v121 offset:34032
	ds_load_u8 v27, v121 offset:34000
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v26, v27, v26, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v66, v26, 16, v25
	ds_load_u8 v25, v121 offset:33840
	ds_load_u8 v26, v121 offset:33808
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v25, v26, v25, 0xc0c0004
	ds_load_u8 v26, v121 offset:33904
	ds_load_u8 v27, v121 offset:33872
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v26, v27, v26, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v65, v26, 16, v25
	ds_load_u8 v25, v121 offset:34224
	ds_load_u8 v26, v121 offset:34192
	v_wmma_i32_16x16x16_iu4 v[17:24], v[49:50], v[65:66], v[17:24] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v25, v26, v25, 0xc0c0004
	ds_load_u8 v26, v121 offset:34288
	ds_load_u8 v27, v121 offset:34256
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v26, v27, v26, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v68, v26, 16, v25
	ds_load_u8 v25, v121 offset:34096
	ds_load_u8 v26, v121 offset:34064
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v25, v26, v25, 0xc0c0004
	ds_load_u8 v26, v121 offset:34160
	ds_load_u8 v27, v121 offset:34128
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v26, v27, v26, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v67, v26, 16, v25
	ds_load_u8 v25, v121 offset:34480
	ds_load_u8 v26, v121 offset:34448
	v_wmma_i32_16x16x16_iu4 v[17:24], v[51:52], v[67:68], v[17:24] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v25, v26, v25, 0xc0c0004
	ds_load_u8 v26, v121 offset:34544
	ds_load_u8 v27, v121 offset:34512
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v26, v27, v26, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v70, v26, 16, v25
	ds_load_u8 v25, v121 offset:34352
	ds_load_u8 v26, v121 offset:34320
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v25, v26, v25, 0xc0c0004
	ds_load_u8 v26, v121 offset:34416
	ds_load_u8 v27, v121 offset:34384
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v26, v27, v26, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v69, v26, 16, v25
	ds_load_u8 v25, v121 offset:34608
	ds_load_u8 v26, v121 offset:34576
	v_wmma_i32_16x16x16_iu4 v[17:24], v[53:54], v[69:70], v[17:24] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v25, v26, v25, 0xc0c0004
	ds_load_u8 v26, v121 offset:34672
	ds_load_u8 v27, v121 offset:34640
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v26, v27, v26, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v71, v26, 16, v25
	ds_load_u8 v25, v121 offset:34736
	ds_load_u8 v26, v121 offset:34704
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v25, v26, v25, 0xc0c0004
	ds_load_u8 v26, v144 offset:32768
	ds_load_u8 v27, v121 offset:34768
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v26, v27, v26, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v72, v26, 16, v25
	.loc	1 228 43                        ; generate_amdgcn.py:228:43
	v_add_nc_u32_e32 v25, v87, v132
	.loc	1 228 35 is_stmt 0              ; generate_amdgcn.py:228:35
	v_add_nc_u32_e32 v26, v87, v133
	.loc	1 188 9 is_stmt 1               ; generate_amdgcn.py:188:9
	v_add_nc_u32_e32 v133, s37, v133
	v_add_nc_u32_e32 v132, s37, v132
	.loc	1 221 27                        ; generate_amdgcn.py:221:27
	v_wmma_i32_16x16x16_iu4 v[17:24], v[55:56], v[71:72], v[17:24] neg_lo:[1,1,0]
	.loc	1 228 35                        ; generate_amdgcn.py:228:35
	v_cndmask_b32_e64 v25, 0x80000000, v25, s4
	buffer_load_b128 v[49:52], v25, s[16:19], 0 offen
	v_cndmask_b32_e64 v25, 0x80000000, v26, s3
	buffer_load_b128 v[53:56], v25, s[16:19], 0 offen
	.loc	1 229 36                        ; generate_amdgcn.py:229:36
	ds_load_u8 v25, v123 offset:17664
	ds_load_u8 v26, v123 offset:17408
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v25, v26, v25, 0xc0c0004
	ds_load_u8 v26, v123 offset:18176
	ds_load_u8 v27, v123 offset:17920
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v26, v27, v26, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v82, v26, 16, v25
	ds_load_u8 v25, v123 offset:16640
	ds_load_u8 v26, v123 offset:16384
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v25, v26, v25, 0xc0c0004
	ds_load_u8 v26, v123 offset:17152
	ds_load_u8 v27, v123 offset:16896
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v26, v27, v26, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v81, v26, 16, v25
	v_wmma_i32_16x16x16_iu4 v[25:32], v[81:82], v[79:80], v[1:8] neg_lo:[1,1,0]
	ds_load_u8 v79, v123 offset:19712
	ds_load_u8 v80, v123 offset:19456
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v79, v80, v79, 0xc0c0004
	ds_load_u8 v80, v123 offset:20224
	ds_load_u8 v148, v123 offset:19968
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v80, v148, v80, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v80, v80, 16, v79
	ds_load_u8 v79, v123 offset:18688
	ds_load_u8 v148, v123 offset:18432
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v79, v148, v79, 0xc0c0004
	ds_load_u8 v148, v123 offset:19200
	ds_load_u8 v149, v123 offset:18944
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v148, v149, v148, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v79, v148, 16, v79
	v_wmma_i32_16x16x16_iu4 v[25:32], v[79:80], v[77:78], v[25:32] neg_lo:[1,1,0]
	ds_load_u8 v77, v123 offset:21760
	ds_load_u8 v78, v123 offset:21504
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v77, v78, v77, 0xc0c0004
	ds_load_u8 v78, v123 offset:22272
	ds_load_u8 v148, v123 offset:22016
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v78, v148, v78, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v78, v78, 16, v77
	ds_load_u8 v77, v123 offset:20736
	ds_load_u8 v148, v123 offset:20480
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v77, v148, v77, 0xc0c0004
	ds_load_u8 v148, v123 offset:21248
	ds_load_u8 v149, v123 offset:20992
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v148, v149, v148, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v77, v148, 16, v77
	v_wmma_i32_16x16x16_iu4 v[25:32], v[77:78], v[75:76], v[25:32] neg_lo:[1,1,0]
	ds_load_u8 v75, v123 offset:23808
	ds_load_u8 v76, v123 offset:23552
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v75, v76, v75, 0xc0c0004
	ds_load_u8 v76, v123 offset:24320
	ds_load_u8 v148, v123 offset:24064
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v76, v148, v76, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v76, v76, 16, v75
	ds_load_u8 v75, v123 offset:22784
	ds_load_u8 v148, v123 offset:22528
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v75, v148, v75, 0xc0c0004
	ds_load_u8 v148, v123 offset:23296
	ds_load_u8 v149, v123 offset:23040
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v148, v149, v148, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v75, v148, 16, v75
	v_wmma_i32_16x16x16_iu4 v[25:32], v[75:76], v[73:74], v[25:32] neg_lo:[1,1,0]
	ds_load_u8 v73, v123 offset:25856
	ds_load_u8 v74, v123 offset:25600
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v73, v74, v73, 0xc0c0004
	ds_load_u8 v74, v123 offset:26368
	ds_load_u8 v148, v123 offset:26112
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v74, v148, v74, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v74, v74, 16, v73
	ds_load_u8 v73, v123 offset:24832
	ds_load_u8 v148, v123 offset:24576
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v73, v148, v73, 0xc0c0004
	ds_load_u8 v148, v123 offset:25344
	ds_load_u8 v149, v123 offset:25088
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v148, v149, v148, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v73, v148, 16, v73
	v_wmma_i32_16x16x16_iu4 v[25:32], v[73:74], v[39:40], v[25:32] neg_lo:[1,1,0]
	ds_load_u8 v39, v123 offset:27904
	ds_load_u8 v40, v123 offset:27648
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v39, v40, v39, 0xc0c0004
	ds_load_u8 v40, v123 offset:28416
	ds_load_u8 v148, v123 offset:28160
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v40, v148, v40, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v149, v40, 16, v39
	ds_load_u8 v39, v123 offset:26880
	ds_load_u8 v40, v123 offset:26624
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v39, v40, v39, 0xc0c0004
	ds_load_u8 v40, v123 offset:27392
	ds_load_u8 v148, v123 offset:27136
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v40, v148, v40, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v148, v40, 16, v39
	v_wmma_i32_16x16x16_iu4 v[25:32], v[148:149], v[37:38], v[25:32] neg_lo:[1,1,0]
	ds_load_u8 v37, v123 offset:29952
	ds_load_u8 v38, v123 offset:29696
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v37, v38, v37, 0xc0c0004
	ds_load_u8 v38, v123 offset:30464
	ds_load_u8 v39, v123 offset:30208
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v38, v39, v38, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v151, v38, 16, v37
	ds_load_u8 v37, v123 offset:28928
	ds_load_u8 v38, v123 offset:28672
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v37, v38, v37, 0xc0c0004
	ds_load_u8 v38, v123 offset:29440
	ds_load_u8 v39, v123 offset:29184
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v38, v39, v38, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v150, v38, 16, v37
	v_wmma_i32_16x16x16_iu4 v[25:32], v[150:151], v[35:36], v[25:32] neg_lo:[1,1,0]
	ds_load_u8 v35, v123 offset:32000
	ds_load_u8 v36, v123 offset:31744
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v35, v36, v35, 0xc0c0004
	ds_load_u8 v36, v123 offset:32512
	ds_load_u8 v37, v123 offset:32256
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v36, v37, v36, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v153, v36, 16, v35
	ds_load_u8 v35, v123 offset:30976
	ds_load_u8 v36, v123 offset:30720
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v35, v36, v35, 0xc0c0004
	ds_load_u8 v36, v123 offset:31488
	ds_load_u8 v37, v123 offset:31232
	.loc	1 214 26                        ; generate_amdgcn.py:214:26
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_waitcnt vmcnt(4)
	ds_store_b32 v141, v147 offset:32768
	.loc	1 220 26                        ; generate_amdgcn.py:220:26
	s_waitcnt vmcnt(3)
	ds_store_b128 v142, v[41:44]
	s_waitcnt vmcnt(2)
	ds_store_b128 v142, v[45:48] offset:8192
	.loc	1 228 35                        ; generate_amdgcn.py:228:35
	s_waitcnt vmcnt(1)
	ds_store_b128 v142, v[49:52] offset:16384
	s_waitcnt vmcnt(0)
	ds_store_b128 v142, v[53:56] offset:24576
	.loc	1 214 26                        ; generate_amdgcn.py:214:26
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 221 27                        ; generate_amdgcn.py:221:27
	ds_load_u8 v41, v121 offset:32928
	ds_load_u8 v42, v121 offset:32896
	.loc	1 229 36                        ; generate_amdgcn.py:229:36
	v_perm_b32 v36, v37, v36, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v152, v36, 16, v35
	.loc	1 221 27                        ; generate_amdgcn.py:221:27
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v41, v42, v41, 0xc0c0004
	ds_load_u8 v42, v121 offset:32992
	ds_load_u8 v43, v121 offset:32960
	.loc	1 229 36                        ; generate_amdgcn.py:229:36
	v_wmma_i32_16x16x16_iu4 v[25:32], v[152:153], v[33:34], v[25:32] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[33:40], v[81:82], v[57:58], v[1:8] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[33:40], v[79:80], v[59:60], v[33:40] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[33:40], v[77:78], v[61:62], v[33:40] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_wmma_i32_16x16x16_iu4 v[33:40], v[75:76], v[63:64], v[33:40] neg_lo:[1,1,0]
	.loc	1 221 27                        ; generate_amdgcn.py:221:27
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v42, v43, v42, 0xc0c0004
	.loc	1 229 36                        ; generate_amdgcn.py:229:36
	v_wmma_i32_16x16x16_iu4 v[33:40], v[73:74], v[65:66], v[33:40] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	.loc	1 221 27                        ; generate_amdgcn.py:221:27
	v_lshl_or_b32 v42, v42, 16, v41
	ds_load_u8 v41, v121 offset:32800
	ds_load_u8 v43, v121 offset:32768
	.loc	1 229 36                        ; generate_amdgcn.py:229:36
	v_wmma_i32_16x16x16_iu4 v[33:40], v[148:149], v[67:68], v[33:40] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[33:40], v[150:151], v[69:70], v[33:40] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[33:40], v[152:153], v[71:72], v[33:40] neg_lo:[1,1,0]
	.loc	1 221 27                        ; generate_amdgcn.py:221:27
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v41, v43, v41, 0xc0c0004
	ds_load_u8 v43, v121 offset:32864
	ds_load_u8 v44, v121 offset:32832
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v43, v44, v43, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v41, v43, 16, v41
	ds_load_u8 v43, v123 offset:1280
	ds_load_u8 v44, v123 offset:1024
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v43, v44, v43, 0xc0c0004
	ds_load_u8 v44, v123 offset:1792
	ds_load_u8 v45, v123 offset:1536
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v44, v45, v44, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v58, v44, 16, v43
	ds_load_u8 v43, v123 offset:256
	ds_load_u8 v44, v123
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v43, v44, v43, 0xc0c0004
	ds_load_u8 v44, v123 offset:768
	ds_load_u8 v45, v123 offset:512
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v44, v45, v44, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v57, v44, 16, v43
	ds_load_u8 v43, v121 offset:33184
	ds_load_u8 v44, v121 offset:33152
	v_wmma_i32_16x16x16_iu4 v[9:16], v[57:58], v[41:42], v[9:16] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v43, v44, v43, 0xc0c0004
	ds_load_u8 v44, v121 offset:33248
	ds_load_u8 v45, v121 offset:33216
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v44, v45, v44, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v44, v44, 16, v43
	ds_load_u8 v43, v121 offset:33056
	ds_load_u8 v45, v121 offset:33024
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v43, v45, v43, 0xc0c0004
	ds_load_u8 v45, v121 offset:33120
	ds_load_u8 v46, v121 offset:33088
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v45, v46, v45, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v43, v45, 16, v43
	ds_load_u8 v45, v123 offset:3328
	ds_load_u8 v46, v123 offset:3072
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v45, v46, v45, 0xc0c0004
	ds_load_u8 v46, v123 offset:3840
	ds_load_u8 v47, v123 offset:3584
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v46, v47, v46, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v60, v46, 16, v45
	ds_load_u8 v45, v123 offset:2304
	ds_load_u8 v46, v123 offset:2048
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v45, v46, v45, 0xc0c0004
	ds_load_u8 v46, v123 offset:2816
	ds_load_u8 v47, v123 offset:2560
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v46, v47, v46, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v59, v46, 16, v45
	ds_load_u8 v45, v121 offset:33440
	ds_load_u8 v46, v121 offset:33408
	v_wmma_i32_16x16x16_iu4 v[9:16], v[59:60], v[43:44], v[9:16] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v45, v46, v45, 0xc0c0004
	ds_load_u8 v46, v121 offset:33504
	ds_load_u8 v47, v121 offset:33472
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v46, v47, v46, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v46, v46, 16, v45
	ds_load_u8 v45, v121 offset:33312
	ds_load_u8 v47, v121 offset:33280
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v45, v47, v45, 0xc0c0004
	ds_load_u8 v47, v121 offset:33376
	ds_load_u8 v48, v121 offset:33344
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v47, v48, v47, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v45, v47, 16, v45
	ds_load_u8 v47, v123 offset:5376
	ds_load_u8 v48, v123 offset:5120
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v47, v48, v47, 0xc0c0004
	ds_load_u8 v48, v123 offset:5888
	ds_load_u8 v49, v123 offset:5632
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v48, v49, v48, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v62, v48, 16, v47
	ds_load_u8 v47, v123 offset:4352
	ds_load_u8 v48, v123 offset:4096
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v47, v48, v47, 0xc0c0004
	ds_load_u8 v48, v123 offset:4864
	ds_load_u8 v49, v123 offset:4608
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v48, v49, v48, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v61, v48, 16, v47
	ds_load_u8 v47, v121 offset:33696
	ds_load_u8 v48, v121 offset:33664
	v_wmma_i32_16x16x16_iu4 v[9:16], v[61:62], v[45:46], v[9:16] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v47, v48, v47, 0xc0c0004
	ds_load_u8 v48, v121 offset:33760
	ds_load_u8 v49, v121 offset:33728
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v48, v49, v48, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v48, v48, 16, v47
	ds_load_u8 v47, v121 offset:33568
	ds_load_u8 v49, v121 offset:33536
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v47, v49, v47, 0xc0c0004
	ds_load_u8 v49, v121 offset:33632
	ds_load_u8 v50, v121 offset:33600
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v49, v50, v49, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v47, v49, 16, v47
	ds_load_u8 v49, v123 offset:7424
	ds_load_u8 v50, v123 offset:7168
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v49, v50, v49, 0xc0c0004
	ds_load_u8 v50, v123 offset:7936
	ds_load_u8 v51, v123 offset:7680
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v50, v51, v50, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v64, v50, 16, v49
	ds_load_u8 v49, v123 offset:6400
	ds_load_u8 v50, v123 offset:6144
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v49, v50, v49, 0xc0c0004
	ds_load_u8 v50, v123 offset:6912
	ds_load_u8 v51, v123 offset:6656
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v50, v51, v50, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v63, v50, 16, v49
	ds_load_u8 v49, v121 offset:33952
	ds_load_u8 v50, v121 offset:33920
	v_wmma_i32_16x16x16_iu4 v[9:16], v[63:64], v[47:48], v[9:16] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v49, v50, v49, 0xc0c0004
	ds_load_u8 v50, v121 offset:34016
	ds_load_u8 v51, v121 offset:33984
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v50, v51, v50, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v50, v50, 16, v49
	ds_load_u8 v49, v121 offset:33824
	ds_load_u8 v51, v121 offset:33792
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v49, v51, v49, 0xc0c0004
	ds_load_u8 v51, v121 offset:33888
	ds_load_u8 v52, v121 offset:33856
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v51, v52, v51, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v49, v51, 16, v49
	ds_load_u8 v51, v123 offset:9472
	ds_load_u8 v52, v123 offset:9216
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v51, v52, v51, 0xc0c0004
	ds_load_u8 v52, v123 offset:9984
	ds_load_u8 v53, v123 offset:9728
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v52, v53, v52, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v66, v52, 16, v51
	ds_load_u8 v51, v123 offset:8448
	ds_load_u8 v52, v123 offset:8192
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v51, v52, v51, 0xc0c0004
	ds_load_u8 v52, v123 offset:8960
	ds_load_u8 v53, v123 offset:8704
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v52, v53, v52, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v65, v52, 16, v51
	ds_load_u8 v51, v121 offset:34208
	ds_load_u8 v52, v121 offset:34176
	v_wmma_i32_16x16x16_iu4 v[9:16], v[65:66], v[49:50], v[9:16] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v51, v52, v51, 0xc0c0004
	ds_load_u8 v52, v121 offset:34272
	ds_load_u8 v53, v121 offset:34240
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v52, v53, v52, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v52, v52, 16, v51
	ds_load_u8 v51, v121 offset:34080
	ds_load_u8 v53, v121 offset:34048
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v51, v53, v51, 0xc0c0004
	ds_load_u8 v53, v121 offset:34144
	ds_load_u8 v54, v121 offset:34112
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v53, v54, v53, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v51, v53, 16, v51
	ds_load_u8 v53, v123 offset:11520
	ds_load_u8 v54, v123 offset:11264
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v53, v54, v53, 0xc0c0004
	ds_load_u8 v54, v123 offset:12032
	ds_load_u8 v55, v123 offset:11776
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v54, v55, v54, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v68, v54, 16, v53
	ds_load_u8 v53, v123 offset:10496
	ds_load_u8 v54, v123 offset:10240
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v53, v54, v53, 0xc0c0004
	ds_load_u8 v54, v123 offset:11008
	ds_load_u8 v55, v123 offset:10752
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v54, v55, v54, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v67, v54, 16, v53
	ds_load_u8 v53, v121 offset:34464
	ds_load_u8 v54, v121 offset:34432
	v_wmma_i32_16x16x16_iu4 v[9:16], v[67:68], v[51:52], v[9:16] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v53, v54, v53, 0xc0c0004
	ds_load_u8 v54, v121 offset:34528
	ds_load_u8 v55, v121 offset:34496
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v54, v55, v54, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v54, v54, 16, v53
	ds_load_u8 v53, v121 offset:34336
	ds_load_u8 v55, v121 offset:34304
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v53, v55, v53, 0xc0c0004
	ds_load_u8 v55, v121 offset:34400
	ds_load_u8 v56, v121 offset:34368
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v55, v56, v55, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v53, v55, 16, v53
	ds_load_u8 v55, v123 offset:13568
	ds_load_u8 v56, v123 offset:13312
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v55, v56, v55, 0xc0c0004
	ds_load_u8 v56, v123 offset:14080
	ds_load_u8 v69, v123 offset:13824
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v56, v69, v56, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v70, v56, 16, v55
	ds_load_u8 v55, v123 offset:12544
	ds_load_u8 v56, v123 offset:12288
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v55, v56, v55, 0xc0c0004
	ds_load_u8 v56, v123 offset:13056
	ds_load_u8 v69, v123 offset:12800
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v56, v69, v56, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v69, v56, 16, v55
	ds_load_u8 v55, v121 offset:34720
	ds_load_u8 v56, v121 offset:34688
	v_wmma_i32_16x16x16_iu4 v[9:16], v[69:70], v[53:54], v[9:16] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v55, v56, v55, 0xc0c0004
	ds_load_u8 v56, v121 offset:34784
	ds_load_u8 v71, v121 offset:34752
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v56, v71, v56, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v56, v56, 16, v55
	ds_load_u8 v55, v121 offset:34592
	ds_load_u8 v71, v121 offset:34560
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v55, v71, v55, 0xc0c0004
	ds_load_u8 v71, v121 offset:34656
	ds_load_u8 v72, v121 offset:34624
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v71, v72, v71, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v55, v71, 16, v55
	ds_load_u8 v71, v123 offset:15616
	ds_load_u8 v72, v123 offset:15360
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v71, v72, v71, 0xc0c0004
	ds_load_u8 v72, v123 offset:16128
	ds_load_u8 v73, v123 offset:15872
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v72, v73, v72, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v74, v72, 16, v71
	ds_load_u8 v71, v123 offset:14592
	ds_load_u8 v72, v123 offset:14336
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v71, v72, v71, 0xc0c0004
	ds_load_u8 v72, v123 offset:15104
	ds_load_u8 v73, v123 offset:14848
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v72, v73, v72, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v73, v72, 16, v71
	ds_load_u8 v71, v121 offset:32944
	ds_load_u8 v72, v121 offset:32912
	v_wmma_i32_16x16x16_iu4 v[9:16], v[73:74], v[55:56], v[9:16] neg_lo:[1,1,0]
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	v_cvt_f32_i32_e32 v9, v9
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cvt_f32_i32_e32 v10, v10
	v_cvt_f32_i32_e32 v11, v11
	s_delay_alu instid0(VALU_DEP_4)
	v_cvt_f32_i32_e32 v12, v12
	.loc	1 221 27                        ; generate_amdgcn.py:221:27
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v71, v72, v71, 0xc0c0004
	ds_load_u8 v72, v121 offset:33008
	ds_load_u8 v75, v121 offset:32976
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v72, v75, v72, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v72, v72, 16, v71
	ds_load_u8 v71, v121 offset:32816
	ds_load_u8 v75, v121 offset:32784
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v71, v75, v71, 0xc0c0004
	ds_load_u8 v75, v121 offset:32880
	ds_load_u8 v76, v121 offset:32848
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v75, v76, v75, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v71, v75, 16, v71
	v_wmma_i32_16x16x16_iu4 v[17:24], v[57:58], v[71:72], v[17:24] neg_lo:[1,1,0]
	ds_load_u8 v57, v121 offset:33200
	ds_load_u8 v58, v121 offset:33168
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v57, v58, v57, 0xc0c0004
	ds_load_u8 v58, v121 offset:33264
	ds_load_u8 v75, v121 offset:33232
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v58, v75, v58, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v58, v58, 16, v57
	ds_load_u8 v57, v121 offset:33072
	ds_load_u8 v75, v121 offset:33040
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v57, v75, v57, 0xc0c0004
	ds_load_u8 v75, v121 offset:33136
	ds_load_u8 v76, v121 offset:33104
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v75, v76, v75, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v57, v75, 16, v57
	v_wmma_i32_16x16x16_iu4 v[17:24], v[59:60], v[57:58], v[17:24] neg_lo:[1,1,0]
	ds_load_u8 v59, v121 offset:33456
	ds_load_u8 v60, v121 offset:33424
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v59, v60, v59, 0xc0c0004
	ds_load_u8 v60, v121 offset:33520
	ds_load_u8 v75, v121 offset:33488
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v60, v75, v60, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v60, v60, 16, v59
	ds_load_u8 v59, v121 offset:33328
	ds_load_u8 v75, v121 offset:33296
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v59, v75, v59, 0xc0c0004
	ds_load_u8 v75, v121 offset:33392
	ds_load_u8 v76, v121 offset:33360
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v75, v76, v75, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v59, v75, 16, v59
	v_wmma_i32_16x16x16_iu4 v[17:24], v[61:62], v[59:60], v[17:24] neg_lo:[1,1,0]
	ds_load_u8 v61, v121 offset:33584
	ds_load_u8 v62, v121 offset:33552
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v61, v62, v61, 0xc0c0004
	ds_load_u8 v62, v121 offset:33648
	ds_load_u8 v75, v121 offset:33616
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v62, v75, v62, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v61, v62, 16, v61
	ds_load_u8 v62, v121 offset:33712
	ds_load_u8 v75, v121 offset:33680
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v62, v75, v62, 0xc0c0004
	ds_load_u8 v75, v143 offset:32768
	ds_load_u8 v76, v121 offset:33744
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v75, v76, v75, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v62, v75, 16, v62
	v_wmma_i32_16x16x16_iu4 v[17:24], v[63:64], v[61:62], v[17:24] neg_lo:[1,1,0]
	ds_load_u8 v63, v121 offset:33968
	ds_load_u8 v64, v121 offset:33936
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v63, v64, v63, 0xc0c0004
	ds_load_u8 v64, v121 offset:34032
	ds_load_u8 v75, v121 offset:34000
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v64, v75, v64, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v64, v64, 16, v63
	ds_load_u8 v63, v121 offset:33840
	ds_load_u8 v75, v121 offset:33808
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v63, v75, v63, 0xc0c0004
	ds_load_u8 v75, v121 offset:33904
	ds_load_u8 v76, v121 offset:33872
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v75, v76, v75, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v63, v75, 16, v63
	v_wmma_i32_16x16x16_iu4 v[17:24], v[65:66], v[63:64], v[17:24] neg_lo:[1,1,0]
	ds_load_u8 v65, v121 offset:34224
	ds_load_u8 v66, v121 offset:34192
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v65, v66, v65, 0xc0c0004
	ds_load_u8 v66, v121 offset:34288
	ds_load_u8 v75, v121 offset:34256
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v66, v75, v66, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v66, v66, 16, v65
	ds_load_u8 v65, v121 offset:34096
	ds_load_u8 v75, v121 offset:34064
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v65, v75, v65, 0xc0c0004
	ds_load_u8 v75, v121 offset:34160
	ds_load_u8 v76, v121 offset:34128
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v75, v76, v75, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v65, v75, 16, v65
	v_wmma_i32_16x16x16_iu4 v[17:24], v[67:68], v[65:66], v[17:24] neg_lo:[1,1,0]
	ds_load_u8 v67, v121 offset:34480
	ds_load_u8 v68, v121 offset:34448
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v67, v68, v67, 0xc0c0004
	ds_load_u8 v68, v121 offset:34544
	ds_load_u8 v75, v121 offset:34512
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v68, v75, v68, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v68, v68, 16, v67
	ds_load_u8 v67, v121 offset:34352
	ds_load_u8 v75, v121 offset:34320
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v67, v75, v67, 0xc0c0004
	ds_load_u8 v75, v121 offset:34416
	ds_load_u8 v76, v121 offset:34384
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v75, v76, v75, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v67, v75, 16, v67
	v_wmma_i32_16x16x16_iu4 v[17:24], v[69:70], v[67:68], v[17:24] neg_lo:[1,1,0]
	ds_load_u8 v69, v121 offset:34608
	ds_load_u8 v70, v121 offset:34576
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v69, v70, v69, 0xc0c0004
	ds_load_u8 v70, v121 offset:34672
	ds_load_u8 v75, v121 offset:34640
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v70, v75, v70, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v69, v70, 16, v69
	ds_load_u8 v70, v121 offset:34736
	ds_load_u8 v75, v121 offset:34704
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v70, v75, v70, 0xc0c0004
	ds_load_u8 v75, v144 offset:32768
	ds_load_u8 v76, v121 offset:34768
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v75, v76, v75, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v70, v75, 16, v70
	v_wmma_i32_16x16x16_iu4 v[17:24], v[73:74], v[69:70], v[17:24] neg_lo:[1,1,0]
	.loc	1 229 36                        ; generate_amdgcn.py:229:36
	ds_load_u8 v73, v123 offset:17664
	ds_load_u8 v74, v123 offset:17408
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	v_cvt_f32_i32_e32 v18, v18
	v_cvt_f32_i32_e32 v20, v20
	v_cvt_f32_i32_e32 v21, v21
	v_cvt_f32_i32_e32 v17, v17
	v_cvt_f32_i32_e32 v22, v22
	v_mul_f32_e32 v18, v146, v18
	v_cvt_f32_i32_e32 v23, v23
	v_cvt_f32_i32_e32 v24, v24
	v_cvt_f32_i32_e32 v19, v19
	.loc	1 229 36                        ; generate_amdgcn.py:229:36
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v73, v74, v73, 0xc0c0004
	ds_load_u8 v74, v123 offset:18176
	ds_load_u8 v75, v123 offset:17920
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v74, v75, v74, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v74, v74, 16, v73
	ds_load_u8 v73, v123 offset:16640
	ds_load_u8 v75, v123 offset:16384
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v73, v75, v73, 0xc0c0004
	ds_load_u8 v75, v123 offset:17152
	ds_load_u8 v76, v123 offset:16896
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v75, v76, v75, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v73, v75, 16, v73
	v_wmma_i32_16x16x16_iu4 v[25:32], v[73:74], v[41:42], v[25:32] neg_lo:[1,1,0]
	ds_load_u8 v41, v123 offset:19712
	ds_load_u8 v42, v123 offset:19456
	v_wmma_i32_16x16x16_iu4 v[33:40], v[73:74], v[71:72], v[33:40] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v41, v42, v41, 0xc0c0004
	ds_load_u8 v42, v123 offset:20224
	ds_load_u8 v75, v123 offset:19968
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v42, v75, v42, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v42, v42, 16, v41
	ds_load_u8 v41, v123 offset:18688
	ds_load_u8 v75, v123 offset:18432
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v41, v75, v41, 0xc0c0004
	ds_load_u8 v75, v123 offset:19200
	ds_load_u8 v76, v123 offset:18944
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v75, v76, v75, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v41, v75, 16, v41
	v_wmma_i32_16x16x16_iu4 v[25:32], v[41:42], v[43:44], v[25:32] neg_lo:[1,1,0]
	ds_load_u8 v43, v123 offset:21760
	ds_load_u8 v44, v123 offset:21504
	v_wmma_i32_16x16x16_iu4 v[33:40], v[41:42], v[57:58], v[33:40] neg_lo:[1,1,0]
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	v_add_nc_u32_e32 v41, v126, v128
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_add_nc_u32_e32 v128, s35, v128
	.loc	1 229 36                        ; generate_amdgcn.py:229:36
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v43, v44, v43, 0xc0c0004
	ds_load_u8 v44, v123 offset:22272
	ds_load_u8 v75, v123 offset:22016
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v44, v75, v44, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v44, v44, 16, v43
	ds_load_u8 v43, v123 offset:20736
	ds_load_u8 v75, v123 offset:20480
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v43, v75, v43, 0xc0c0004
	ds_load_u8 v75, v123 offset:21248
	ds_load_u8 v76, v123 offset:20992
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v75, v76, v75, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v43, v75, 16, v43
	v_wmma_i32_16x16x16_iu4 v[25:32], v[43:44], v[45:46], v[25:32] neg_lo:[1,1,0]
	ds_load_u8 v45, v123 offset:23808
	ds_load_u8 v46, v123 offset:23552
	v_wmma_i32_16x16x16_iu4 v[33:40], v[43:44], v[59:60], v[33:40] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v45, v46, v45, 0xc0c0004
	ds_load_u8 v46, v123 offset:24320
	ds_load_u8 v75, v123 offset:24064
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v46, v75, v46, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v46, v46, 16, v45
	ds_load_u8 v45, v123 offset:22784
	ds_load_u8 v75, v123 offset:22528
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v45, v75, v45, 0xc0c0004
	ds_load_u8 v75, v123 offset:23296
	ds_load_u8 v76, v123 offset:23040
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v75, v76, v75, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v45, v75, 16, v45
	v_wmma_i32_16x16x16_iu4 v[25:32], v[45:46], v[47:48], v[25:32] neg_lo:[1,1,0]
	ds_load_u8 v47, v123 offset:25856
	ds_load_u8 v48, v123 offset:25600
	v_wmma_i32_16x16x16_iu4 v[33:40], v[45:46], v[61:62], v[33:40] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v47, v48, v47, 0xc0c0004
	ds_load_u8 v48, v123 offset:26368
	ds_load_u8 v75, v123 offset:26112
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v48, v75, v48, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v48, v48, 16, v47
	ds_load_u8 v47, v123 offset:24832
	ds_load_u8 v75, v123 offset:24576
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v47, v75, v47, 0xc0c0004
	ds_load_u8 v75, v123 offset:25344
	ds_load_u8 v76, v123 offset:25088
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v75, v76, v75, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v47, v75, 16, v47
	v_wmma_i32_16x16x16_iu4 v[25:32], v[47:48], v[49:50], v[25:32] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[33:40], v[47:48], v[63:64], v[33:40] neg_lo:[1,1,0]
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	s_clause 0x7
	buffer_load_u16 v48, v41, s[8:11], 0 offen
	buffer_load_u16 v47, v41, s[8:11], 0 offen offset:4
	buffer_load_u16 v46, v41, s[8:11], 0 offen offset:8
	buffer_load_u16 v45, v41, s[8:11], 0 offen offset:12
	buffer_load_u16 v44, v41, s[8:11], 0 offen offset:16
	buffer_load_u16 v43, v41, s[8:11], 0 offen offset:20
	buffer_load_u16 v42, v41, s[8:11], 0 offen offset:24
	buffer_load_u16 v41, v41, s[8:11], 0 offen offset:28
	.loc	1 229 36                        ; generate_amdgcn.py:229:36
	ds_load_u8 v49, v123 offset:27904
	ds_load_u8 v50, v123 offset:27648
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v49, v50, v49, 0xc0c0004
	ds_load_u8 v50, v123 offset:28416
	ds_load_u8 v75, v123 offset:28160
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v50, v75, v50, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v50, v50, 16, v49
	ds_load_u8 v49, v123 offset:26880
	ds_load_u8 v75, v123 offset:26624
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v49, v75, v49, 0xc0c0004
	ds_load_u8 v75, v123 offset:27392
	ds_load_u8 v76, v123 offset:27136
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v75, v76, v75, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v49, v75, 16, v49
	v_wmma_i32_16x16x16_iu4 v[25:32], v[49:50], v[51:52], v[25:32] neg_lo:[1,1,0]
	ds_load_u8 v51, v123 offset:29952
	ds_load_u8 v52, v123 offset:29696
	v_wmma_i32_16x16x16_iu4 v[33:40], v[49:50], v[65:66], v[33:40] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v51, v52, v51, 0xc0c0004
	ds_load_u8 v52, v123 offset:30464
	ds_load_u8 v75, v123 offset:30208
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v52, v75, v52, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v52, v52, 16, v51
	ds_load_u8 v51, v123 offset:28928
	ds_load_u8 v75, v123 offset:28672
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v51, v75, v51, 0xc0c0004
	ds_load_u8 v75, v123 offset:29440
	ds_load_u8 v76, v123 offset:29184
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v75, v76, v75, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v51, v75, 16, v51
	v_wmma_i32_16x16x16_iu4 v[25:32], v[51:52], v[53:54], v[25:32] neg_lo:[1,1,0]
	ds_load_u8 v53, v123 offset:32000
	ds_load_u8 v54, v123 offset:31744
	v_wmma_i32_16x16x16_iu4 v[33:40], v[51:52], v[67:68], v[33:40] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v53, v54, v53, 0xc0c0004
	ds_load_u8 v54, v123 offset:32512
	ds_load_u8 v75, v123 offset:32256
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v54, v75, v54, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v54, v54, 16, v53
	ds_load_u8 v53, v123 offset:30976
	ds_load_u8 v75, v123 offset:30720
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v53, v75, v53, 0xc0c0004
	ds_load_u8 v75, v123 offset:31488
	ds_load_u8 v76, v123 offset:31232
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v75, v76, v75, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v53, v75, 16, v53
	v_wmma_i32_16x16x16_iu4 v[25:32], v[53:54], v[55:56], v[25:32] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[33:40], v[53:54], v[69:70], v[33:40] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 236 29                        ; generate_amdgcn.py:236:29
	v_cvt_f32_i32_e32 v26, v26
	v_cvt_f32_i32_e32 v28, v28
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	v_cvt_f32_i32_e32 v25, v25
	v_cvt_f32_i32_e32 v27, v27
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	s_waitcnt vmcnt(6)
	v_lshlrev_b32_e32 v47, 16, v47
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fmac_f32_e32 v95, v18, v47
	.loc	1 233 20 is_stmt 0              ; generate_amdgcn.py:233:20
	s_waitcnt vmcnt(4)
	v_dual_mul_f32 v20, v146, v20 :: v_dual_lshlrev_b32 v45, 16, v45
	.loc	1 235 27 is_stmt 1              ; generate_amdgcn.py:235:27
	v_add_nc_u32_e32 v56, v126, v127
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	s_waitcnt vmcnt(1)
	v_dual_mul_f32 v21, v146, v21 :: v_dual_lshlrev_b32 v42, 16, v42
	v_dual_mul_f32 v17, v146, v17 :: v_dual_lshlrev_b32 v44, 16, v44
	.loc	1 233 13 is_stmt 0              ; generate_amdgcn.py:233:13
	v_fmac_f32_e32 v91, v20, v45
	.loc	1 235 27 is_stmt 1              ; generate_amdgcn.py:235:27
	s_clause 0x7
	buffer_load_u16 v49, v56, s[8:11], 0 offen
	buffer_load_u16 v50, v56, s[8:11], 0 offen offset:4
	buffer_load_u16 v51, v56, s[8:11], 0 offen offset:8
	buffer_load_u16 v52, v56, s[8:11], 0 offen offset:12
	buffer_load_u16 v53, v56, s[8:11], 0 offen offset:16
	buffer_load_u16 v54, v56, s[8:11], 0 offen offset:20
	buffer_load_u16 v55, v56, s[8:11], 0 offen offset:24
	buffer_load_u16 v56, v56, s[8:11], 0 offen offset:28
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_dual_fmac_f32 v93, v21, v44 :: v_dual_lshlrev_b32 v46, 16, v46
	.loc	1 233 20 is_stmt 0              ; generate_amdgcn.py:233:20
	v_mul_f32_e32 v24, v146, v24
	v_mul_f32_e32 v23, v146, v23
	s_waitcnt vmcnt(8)
	v_dual_mul_f32 v22, v146, v22 :: v_dual_lshlrev_b32 v41, 16, v41
	v_dual_mul_f32 v19, v146, v19 :: v_dual_mul_f32 v12, v145, v12
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fmac_f32_e32 v90, v23, v42
	v_dual_fmac_f32 v89, v24, v41 :: v_dual_lshlrev_b32 v48, 16, v48
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v94, v19, v46
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	v_mul_f32_e32 v10, v145, v10
	.loc	1 236 29 is_stmt 1              ; generate_amdgcn.py:236:29
	v_mul_f32_e32 v28, v145, v28
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fmac_f32_e32 v96, v17, v48
	.loc	1 236 29                        ; generate_amdgcn.py:236:29
	v_dual_mul_f32 v26, v145, v26 :: v_dual_add_nc_u32 v127, s35, v127
	.loc	1 235 27                        ; generate_amdgcn.py:235:27
	s_waitcnt vmcnt(6)
	v_lshlrev_b32_e32 v23, 16, v50
	.loc	1 236 29                        ; generate_amdgcn.py:236:29
	v_cvt_f32_i32_e32 v50, v34
	.loc	1 235 27                        ; generate_amdgcn.py:235:27
	s_waitcnt vmcnt(4)
	v_lshlrev_b32_e32 v21, 16, v52
	.loc	1 236 29                        ; generate_amdgcn.py:236:29
	v_cvt_f32_i32_e32 v52, v36
	v_cvt_f32_i32_e32 v36, v37
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	v_lshlrev_b32_e32 v43, 16, v43
	.loc	1 235 27                        ; generate_amdgcn.py:235:27
	v_lshlrev_b32_e32 v24, 16, v49
	.loc	1 236 29                        ; generate_amdgcn.py:236:29
	v_cvt_f32_i32_e32 v49, v33
	.loc	1 235 27                        ; generate_amdgcn.py:235:27
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v17, 16, v56
	.loc	1 236 29                        ; generate_amdgcn.py:236:29
	v_mul_f32_e32 v36, v146, v36
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fmac_f32_e32 v92, v22, v43
	.loc	1 236 29                        ; generate_amdgcn.py:236:29
	v_dual_mul_f32 v37, v146, v52 :: v_dual_lshlrev_b32 v22, 16, v51
	v_cvt_f32_i32_e32 v51, v35
	.loc	1 235 27                        ; generate_amdgcn.py:235:27
	v_lshlrev_b32_e32 v19, 16, v54
	.loc	1 236 29                        ; generate_amdgcn.py:236:29
	v_cvt_f32_i32_e32 v35, v38
	v_cvt_f32_i32_e32 v33, v40
	v_mul_f32_e32 v40, v146, v49
	v_mul_f32_e32 v38, v146, v51
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	v_dual_mul_f32 v11, v145, v11 :: v_dual_fmac_f32 v116, v12, v45
	v_dual_mul_f32 v9, v145, v9 :: v_dual_fmac_f32 v114, v10, v47
	.loc	1 236 29                        ; generate_amdgcn.py:236:29
	v_cvt_f32_i32_e32 v34, v39
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fmac_f32_e32 v115, v11, v46
	.loc	1 233 20 is_stmt 0              ; generate_amdgcn.py:233:20
	v_cvt_f32_i32_e32 v11, v15
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fmac_f32_e32 v112, v9, v48
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	v_cvt_f32_i32_e32 v9, v13
	v_cvt_f32_i32_e32 v10, v14
	v_cvt_f32_i32_e32 v12, v16
	v_mul_f32_e32 v11, v145, v11
	.loc	1 236 29 is_stmt 1              ; generate_amdgcn.py:236:29
	v_cvt_f32_i32_e32 v13, v29
	v_cvt_f32_i32_e32 v14, v30
	v_cvt_f32_i32_e32 v15, v31
	v_cvt_f32_i32_e32 v16, v32
	v_dual_mul_f32 v33, v146, v33 :: v_dual_lshlrev_b32 v18, 16, v55
	v_dual_mul_f32 v35, v146, v35 :: v_dual_lshlrev_b32 v20, 16, v53
	v_mul_f32_e32 v34, v146, v34
	v_dual_mul_f32 v39, v146, v50 :: v_dual_mul_f32 v12, v145, v12
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fmac_f32_e32 v107, v11, v42
	.loc	1 236 29                        ; generate_amdgcn.py:236:29
	v_mul_f32_e32 v27, v145, v27
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	v_dual_mul_f32 v10, v145, v10 :: v_dual_fmac_f32 v119, v26, v23
	.loc	1 236 29                        ; generate_amdgcn.py:236:29
	v_mul_f32_e32 v25, v145, v25
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	v_dual_mul_f32 v9, v145, v9 :: v_dual_fmac_f32 v104, v40, v24
	.loc	1 236 29                        ; generate_amdgcn.py:236:29
	v_dual_mul_f32 v16, v145, v16 :: v_dual_fmac_f32 v117, v28, v21
	v_dual_mul_f32 v15, v145, v15 :: v_dual_fmac_f32 v102, v38, v22
	s_delay_alu instid0(VALU_DEP_2)
	v_dual_mul_f32 v14, v145, v14 :: v_dual_fmac_f32 v111, v16, v17
	v_dual_mul_f32 v13, v145, v13 :: v_dual_fmac_f32 v98, v36, v20
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_dual_fmac_f32 v105, v9, v44 :: v_dual_fmac_f32 v100, v34, v18
	v_fmac_f32_e32 v106, v10, v43
	v_fmac_f32_e32 v108, v12, v41
	.loc	1 236 17                        ; generate_amdgcn.py:236:17
	v_dual_fmac_f32 v120, v25, v24 :: v_dual_fmac_f32 v109, v14, v19
	v_fmac_f32_e32 v118, v27, v22
	v_dual_fmac_f32 v110, v13, v20 :: v_dual_fmac_f32 v113, v15, v18
	v_fmac_f32_e32 v103, v39, v23
	v_fmac_f32_e32 v97, v37, v21
	v_fmac_f32_e32 v101, v35, v19
	v_fmac_f32_e32 v99, v33, v17
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	s_cbranch_scc1 .LBB0_2
.LBB0_3:                                ; %Flow440
	.loc	1 238 44                        ; generate_amdgcn.py:238:44
	v_dual_mul_f32 v2, 0xbfb8aa3b, v120 :: v_dual_mul_f32 v3, 0xbfb8aa3b, v119
	v_dual_mul_f32 v12, 0xbfb8aa3b, v110 :: v_dual_mul_f32 v19, 0xbfb8aa3b, v97
	v_dual_mul_f32 v14, 0xbfb8aa3b, v100 :: v_dual_mul_f32 v21, 0xbfb8aa3b, v102
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cmp_gt_f32_e64 s0, 0xc2fc0000, v3
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v2
	v_dual_mul_f32 v2, 0xbfb8aa3b, v118 :: v_dual_mul_f32 v9, 0xbfb8aa3b, v111
	v_mul_f32_e32 v13, 0xbfb8aa3b, v99
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_cndmask_b32_e64 v6, 0, 0x42800000, s0
	v_cndmask_b32_e64 v4, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v3, 0, 0xffffffc0, vcc_lo
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v2
	v_dual_mul_f32 v15, 0xbfb8aa3b, v101 :: v_dual_fmac_f32 v6, 0xbfb8aa3b, v119
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_dual_fmac_f32 v4, 0xbfb8aa3b, v120 :: v_dual_mul_f32 v11, 0xbfb8aa3b, v109
	v_cndmask_b32_e64 v5, 0, 0xffffffc0, s0
	v_cndmask_b32_e64 v8, 0, 0x42800000, vcc_lo
	v_exp_f32_e32 v6, v6
	s_delay_alu instid0(VALU_DEP_3)
	v_exp_f32_e32 v4, v4
	v_mul_f32_e32 v2, 0xbfb8aa3b, v117
	v_cndmask_b32_e64 v7, 0, 0xffffffc0, vcc_lo
	v_cmp_gt_f32_e64 s1, 0xc2fc0000, v12
.Ltmp22:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ]
	s_waitcnt lgkmcnt(0)
	s_barrier
.Ltmp23:
	.loc	1 238 44                        ; generate_amdgcn.py:238:44
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v2
	v_mul_f32_e32 v23, 0xbfb8aa3b, v104
	v_cndmask_b32_e64 v12, 0, 0xffffffc0, s1
	v_ldexp_f32 v5, v6, v5
	v_fmac_f32_e32 v8, 0xbfb8aa3b, v118
	v_ldexp_f32 v3, v4, v3
	v_mul_f32_e32 v10, 0xbfb8aa3b, v113
	v_cndmask_b32_e64 v4, 0, 0x42800000, vcc_lo
	.loc	1 238 38 is_stmt 0              ; generate_amdgcn.py:238:38
	v_add_f32_e32 v5, 1.0, v5
	.loc	1 238 44                        ; generate_amdgcn.py:238:44
	v_exp_f32_e32 v2, v8
	.loc	1 238 38                        ; generate_amdgcn.py:238:38
	v_add_f32_e32 v3, 1.0, v3
	.loc	1 238 44                        ; generate_amdgcn.py:238:44
	v_cndmask_b32_e64 v8, 0, 0xffffffc0, vcc_lo
	v_fmac_f32_e32 v4, 0xbfb8aa3b, v117
	.loc	1 238 26                        ; generate_amdgcn.py:238:26
	v_div_scale_f32 v27, s0, v119, v5, v119
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_div_scale_f32 v6, null, v3, v3, v120
	.loc	1 238 44                        ; generate_amdgcn.py:238:44
	v_exp_f32_e32 v4, v4
	.loc	1 238 26                        ; generate_amdgcn.py:238:26
	v_div_scale_f32 v26, vcc_lo, v120, v3, v120
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	.loc	1 238 44                        ; generate_amdgcn.py:238:44
	v_ldexp_f32 v2, v2, v7
	v_and_b32_e32 v1, 0x1f0, v0
	.loc	1 238 26                        ; generate_amdgcn.py:238:26
	v_div_scale_f32 v7, null, v5, v5, v119
	v_rcp_f32_e32 v17, v6
	.loc	1 238 38                        ; generate_amdgcn.py:238:38
	v_add_f32_e32 v2, 1.0, v2
	.loc	1 238 44                        ; generate_amdgcn.py:238:44
	v_cmp_gt_f32_e64 s3, 0xc2fc0000, v10
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_3)
	.loc	1 238 26                        ; generate_amdgcn.py:238:26
	v_rcp_f32_e32 v18, v7
	.loc	1 238 44                        ; generate_amdgcn.py:238:44
	v_ldexp_f32 v4, v4, v8
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(TRANS32_DEP_2)
	.loc	1 238 26                        ; generate_amdgcn.py:238:26
	v_div_scale_f32 v20, null, v2, v2, v118
	v_div_scale_f32 v29, s2, v118, v2, v118
	v_fma_f32 v24, -v6, v17, 1.0
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(TRANS32_DEP_2)
	v_rcp_f32_e32 v8, v20
	.loc	1 238 44                        ; generate_amdgcn.py:238:44
	v_mul_f32_e32 v16, 0xbfb8aa3b, v98
	.loc	1 238 26                        ; generate_amdgcn.py:238:26
	v_fma_f32 v25, -v7, v18, 1.0
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 238 38                        ; generate_amdgcn.py:238:38
	v_dual_add_f32 v4, 1.0, v4 :: v_dual_fmac_f32 v17, v24, v17
	.loc	1 238 44                        ; generate_amdgcn.py:238:44
	v_mul_f32_e32 v22, 0xbfb8aa3b, v103
	.loc	1 238 26                        ; generate_amdgcn.py:238:26
	v_fmac_f32_e32 v18, v25, v18
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_div_scale_f32 v31, null, v4, v4, v117
	v_fma_f32 v24, -v20, v8, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_dual_mul_f32 v25, v26, v17 :: v_dual_fmac_f32 v8, v24, v8
	v_fma_f32 v24, -v6, v25, v26
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_dual_fmac_f32 v25, v24, v17 :: v_dual_mul_f32 v28, v27, v18
	.loc	1 238 44                        ; generate_amdgcn.py:238:44
	v_cndmask_b32_e64 v24, 0, 0x42800000, s1
	v_cmp_gt_f32_e64 s1, 0xc2fc0000, v11
	.loc	1 238 26                        ; generate_amdgcn.py:238:26
	v_fma_f32 v6, -v6, v25, v26
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v30, -v7, v28, v27
	.loc	1 238 44                        ; generate_amdgcn.py:238:44
	v_fmac_f32_e32 v24, 0xbfb8aa3b, v110
	s_delay_alu instid0(VALU_DEP_4)
	v_cndmask_b32_e64 v10, 0, 0x42800000, s1
	v_cndmask_b32_e64 v11, 0, 0xffffffc0, s1
	.loc	1 238 26                        ; generate_amdgcn.py:238:26
	v_div_fmas_f32 v6, v6, v17, v25
	v_fmac_f32_e32 v28, v30, v18
	s_mov_b32 vcc_lo, s0
	v_rcp_f32_e32 v30, v31
	.loc	1 238 44                        ; generate_amdgcn.py:238:44
	v_fmac_f32_e32 v10, 0xbfb8aa3b, v109
	.loc	1 238 26                        ; generate_amdgcn.py:238:26
	v_div_fixup_f32 v3, v6, v3, v120
	v_fma_f32 v7, -v7, v28, v27
	.loc	1 238 44                        ; generate_amdgcn.py:238:44
	v_cndmask_b32_e64 v17, 0, 0xffffffc0, s3
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 238 26                        ; generate_amdgcn.py:238:26
	v_div_fmas_f32 v7, v7, v18, v28
	.loc	1 238 44                        ; generate_amdgcn.py:238:44
	v_cndmask_b32_e64 v18, 0, 0x42800000, s3
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v9
	.loc	1 238 26                        ; generate_amdgcn.py:238:26
	v_div_fixup_f32 v6, v7, v5, v119
	.loc	1 238 44                        ; generate_amdgcn.py:238:44
	v_exp_f32_e32 v7, v24
	.loc	1 238 26                        ; generate_amdgcn.py:238:26
	v_fma_f32 v5, -v31, v30, 1.0
	.loc	1 238 44                        ; generate_amdgcn.py:238:44
	v_fmac_f32_e32 v18, 0xbfb8aa3b, v113
	.loc	1 238 26                        ; generate_amdgcn.py:238:26
	v_div_scale_f32 v24, s0, v117, v4, v117
	.loc	1 238 44                        ; generate_amdgcn.py:238:44
	v_cndmask_b32_e64 v9, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(TRANS32_DEP_2)
	.loc	1 238 26                        ; generate_amdgcn.py:238:26
	v_fmac_f32_e32 v30, v5, v30
	.loc	1 238 44                        ; generate_amdgcn.py:238:44
	v_exp_f32_e32 v5, v10
	v_cndmask_b32_e64 v10, 0, 0x42800000, vcc_lo
	.loc	1 238 26                        ; generate_amdgcn.py:238:26
	s_mov_b32 vcc_lo, s2
	.loc	1 238 44                        ; generate_amdgcn.py:238:44
	v_ldexp_f32 v7, v7, v12
	v_exp_f32_e32 v12, v18
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fmac_f32_e32 v10, 0xbfb8aa3b, v111
	.loc	1 238 38                        ; generate_amdgcn.py:238:38
	v_dual_add_f32 v18, 1.0, v7 :: v_dual_mul_f32 v7, v24, v30
	.loc	1 238 26                        ; generate_amdgcn.py:238:26
	v_mul_f32_e32 v32, v29, v8
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 238 44                        ; generate_amdgcn.py:238:44
	v_ldexp_f32 v5, v5, v11
	v_exp_f32_e32 v10, v10
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 238 26                        ; generate_amdgcn.py:238:26
	v_div_scale_f32 v11, null, v18, v18, v110
	v_fma_f32 v33, -v20, v32, v29
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 238 44                        ; generate_amdgcn.py:238:44
	v_ldexp_f32 v12, v12, v17
	.loc	1 238 38                        ; generate_amdgcn.py:238:38
	v_add_f32_e32 v17, 1.0, v5
	.loc	1 238 26                        ; generate_amdgcn.py:238:26
	v_rcp_f32_e32 v25, v11
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v32, v33, v8
	.loc	1 238 38                        ; generate_amdgcn.py:238:38
	v_add_f32_e32 v12, 1.0, v12
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 238 44                        ; generate_amdgcn.py:238:44
	v_ldexp_f32 v5, v10, v9
	.loc	1 238 26                        ; generate_amdgcn.py:238:26
	v_div_scale_f32 v9, null, v17, v17, v109
	v_fma_f32 v20, -v20, v32, v29
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_div_scale_f32 v10, null, v12, v12, v113
	v_div_fmas_f32 v8, v20, v8, v32
	v_fma_f32 v20, -v31, v7, v24
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_rcp_f32_e32 v26, v10
	s_mov_b32 vcc_lo, s0
	v_div_scale_f32 v32, s1, v113, v12, v113
	v_fmac_f32_e32 v7, v20, v30
	v_div_fixup_f32 v2, v8, v2, v118
	.loc	1 238 38                        ; generate_amdgcn.py:238:38
	v_add_f32_e32 v20, 1.0, v5
	.loc	1 238 26                        ; generate_amdgcn.py:238:26
	v_fma_f32 v5, -v11, v25, 1.0
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fma_f32 v8, -v31, v7, v24
	v_rcp_f32_e32 v24, v9
	v_div_scale_f32 v27, null, v20, v20, v111
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v25, v5, v25
	v_div_fmas_f32 v7, v8, v30, v7
	v_div_scale_f32 v28, vcc_lo, v110, v18, v110
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(TRANS32_DEP_2)
	v_rcp_f32_e32 v29, v27
	v_div_scale_f32 v31, s0, v109, v17, v109
	v_fma_f32 v5, -v9, v24, 1.0
	v_div_fixup_f32 v4, v7, v4, v117
	v_fma_f32 v7, -v10, v26, 1.0
	v_mul_f32_e32 v30, v28, v25
	v_div_scale_f32 v35, s2, v111, v20, v111
	v_fmac_f32_e32 v24, v5, v24
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_fmac_f32_e32 v26, v7, v26
	v_fma_f32 v7, -v27, v29, 1.0
	.loc	1 238 19                        ; generate_amdgcn.py:238:19
	v_mul_f32_e32 v5, v116, v4
	.loc	1 238 26                        ; generate_amdgcn.py:238:26
	v_fma_f32 v4, -v11, v30, v28
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_dual_mul_f32 v33, v31, v24 :: v_dual_mul_f32 v34, v32, v26
	v_fmac_f32_e32 v29, v7, v29
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 238 19                        ; generate_amdgcn.py:238:19
	v_dual_mul_f32 v7, v115, v2 :: v_dual_fmac_f32 v30, v4, v25
	.loc	1 238 26                        ; generate_amdgcn.py:238:26
	v_fma_f32 v2, -v9, v33, v31
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v4, -v10, v34, v32
	v_mul_f32_e32 v36, v35, v29
	.loc	1 238 19                        ; generate_amdgcn.py:238:19
	v_mul_f32_e32 v8, v114, v6
	.loc	1 238 26                        ; generate_amdgcn.py:238:26
	v_fma_f32 v6, -v11, v30, v28
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_dual_fmac_f32 v33, v2, v24 :: v_dual_fmac_f32 v34, v4, v26
	v_fma_f32 v2, -v27, v36, v35
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_div_fmas_f32 v4, v6, v25, v30
	v_fma_f32 v6, -v9, v33, v31
	s_mov_b32 vcc_lo, s0
	s_delay_alu instid0(VALU_DEP_3)
	v_fmac_f32_e32 v36, v2, v29
	v_fma_f32 v2, -v10, v34, v32
	.loc	1 238 44                        ; generate_amdgcn.py:238:44
	v_cmp_gt_f32_e64 s0, 0xc2fc0000, v22
	.loc	1 238 26                        ; generate_amdgcn.py:238:26
	v_div_fmas_f32 v6, v6, v24, v33
	s_mov_b32 vcc_lo, s1
	.loc	1 238 44                        ; generate_amdgcn.py:238:44
	v_cmp_gt_f32_e64 s1, 0xc2fc0000, v21
	.loc	1 238 26                        ; generate_amdgcn.py:238:26
	v_fma_f32 v9, -v27, v36, v35
	v_div_fmas_f32 v2, v2, v26, v34
	s_mov_b32 vcc_lo, s2
	v_div_fixup_f32 v6, v6, v17, v109
	.loc	1 238 44                        ; generate_amdgcn.py:238:44
	v_cndmask_b32_e64 v21, 0, 0x42800000, s1
	.loc	1 238 26                        ; generate_amdgcn.py:238:26
	v_div_fmas_f32 v10, v9, v29, v36
	.loc	1 238 19                        ; generate_amdgcn.py:238:19
	v_mul_f32_e32 v9, v112, v3
	.loc	1 238 26                        ; generate_amdgcn.py:238:26
	v_div_fixup_f32 v3, v2, v12, v113
	.loc	1 238 44                        ; generate_amdgcn.py:238:44
	v_cndmask_b32_e64 v12, 0, 0xffffffc0, s0
	v_fmac_f32_e32 v21, 0xbfb8aa3b, v102
	.loc	1 238 26                        ; generate_amdgcn.py:238:26
	v_div_fixup_f32 v4, v4, v18, v110
	.loc	1 238 44                        ; generate_amdgcn.py:238:44
	v_cndmask_b32_e64 v18, 0, 0x42800000, s0
	v_cmp_gt_f32_e64 s0, 0xc2fc0000, v16
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v23
	v_exp_f32_e32 v21, v21
	.loc	1 238 19                        ; generate_amdgcn.py:238:19
	v_mul_f32_e32 v3, v107, v3
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	.loc	1 238 44                        ; generate_amdgcn.py:238:44
	v_cndmask_b32_e64 v23, 0, 0x42800000, s0
	v_cndmask_b32_e64 v11, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v22, 0, 0xffffffc0, s0
	v_cmp_gt_f32_e64 s0, 0xc2fc0000, v13
	v_fmac_f32_e32 v23, 0xbfb8aa3b, v98
	.loc	1 238 26                        ; generate_amdgcn.py:238:26
	v_div_fixup_f32 v2, v10, v20, v111
	.loc	1 238 44                        ; generate_amdgcn.py:238:44
	v_cndmask_b32_e64 v10, 0, 0xffffffc0, vcc_lo
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v19
	v_fmac_f32_e32 v11, 0xbfb8aa3b, v104
	v_cndmask_b32_e64 v20, 0, 0xffffffc0, s1
	v_cndmask_b32_e64 v19, 0, 0x42800000, vcc_lo
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_exp_f32_e32 v11, v11
	v_cndmask_b32_e64 v16, 0, 0xffffffc0, vcc_lo
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v15
	v_fmac_f32_e32 v19, 0xbfb8aa3b, v97
	v_cndmask_b32_e64 v15, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(TRANS32_DEP_3)
	v_exp_f32_e32 v17, v19
	v_exp_f32_e32 v19, v23
	v_ldexp_f32 v10, v11, v10
	v_cndmask_b32_e64 v23, 0, 0x42800000, s0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	v_fmac_f32_e32 v23, 0xbfb8aa3b, v99
	v_ldexp_f32 v16, v17, v16
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_ldexp_f32 v17, v19, v22
	.loc	1 238 38                        ; generate_amdgcn.py:238:38
	v_add_f32_e32 v10, 1.0, v10
	.loc	1 238 44                        ; generate_amdgcn.py:238:44
	v_exp_f32_e32 v23, v23
	v_cndmask_b32_e64 v22, 0, 0xffffffc0, s0
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 238 38                        ; generate_amdgcn.py:238:38
	v_add_f32_e32 v17, 1.0, v17
	.loc	1 238 26                        ; generate_amdgcn.py:238:26
	v_div_scale_f32 v19, null, v10, v10, v104
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v13, v19
	v_fma_f32 v25, -v19, v13, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_dual_fmac_f32 v13, v25, v13 :: v_dual_fmac_f32 v18, 0xbfb8aa3b, v103
	.loc	1 238 44                        ; generate_amdgcn.py:238:44
	v_exp_f32_e32 v18, v18
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_ldexp_f32 v11, v18, v12
	v_ldexp_f32 v12, v21, v20
	v_cndmask_b32_e64 v18, 0, 0x42800000, vcc_lo
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v14
	.loc	1 238 38                        ; generate_amdgcn.py:238:38
	v_dual_add_f32 v11, 1.0, v11 :: v_dual_add_f32 v12, 1.0, v12
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	.loc	1 238 44                        ; generate_amdgcn.py:238:44
	v_fmac_f32_e32 v18, 0xbfb8aa3b, v101
	v_cndmask_b32_e64 v21, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v20, 0, 0xffffffc0, vcc_lo
	.loc	1 238 26                        ; generate_amdgcn.py:238:26
	v_div_scale_f32 v14, null, v11, v11, v103
	v_div_scale_f32 v26, null, v12, v12, v102
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 238 44                        ; generate_amdgcn.py:238:44
	v_fmac_f32_e32 v21, 0xbfb8aa3b, v100
	.loc	1 238 26                        ; generate_amdgcn.py:238:26
	v_rcp_f32_e32 v24, v14
	.loc	1 238 44                        ; generate_amdgcn.py:238:44
	v_exp_f32_e32 v18, v18
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(TRANS32_DEP_3)
	.loc	1 238 26                        ; generate_amdgcn.py:238:26
	v_rcp_f32_e32 v25, v26
	v_div_scale_f32 v28, vcc_lo, v104, v10, v104
	.loc	1 238 44                        ; generate_amdgcn.py:238:44
	v_exp_f32_e32 v21, v21
	.loc	1 238 26                        ; generate_amdgcn.py:238:26
	v_fma_f32 v27, -v14, v24, 1.0
	.loc	1 238 44                        ; generate_amdgcn.py:238:44
	v_ldexp_f32 v15, v18, v15
	v_ldexp_f32 v18, v23, v22
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 238 26                        ; generate_amdgcn.py:238:26
	v_fma_f32 v23, -v26, v25, 1.0
	v_fmac_f32_e32 v24, v27, v24
	v_div_scale_f32 v27, s0, v103, v11, v103
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	.loc	1 238 44                        ; generate_amdgcn.py:238:44
	v_ldexp_f32 v20, v21, v20
	.loc	1 238 26                        ; generate_amdgcn.py:238:26
	v_mul_f32_e32 v21, v28, v13
	v_fmac_f32_e32 v25, v23, v25
	v_mul_f32_e32 v22, v27, v24
	v_div_scale_f32 v23, s1, v102, v12, v102
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fma_f32 v29, -v19, v21, v28
	.loc	1 238 19                        ; generate_amdgcn.py:238:19
	v_mul_f32_e32 v2, v108, v2
	.loc	1 238 26                        ; generate_amdgcn.py:238:26
	v_fma_f32 v30, -v14, v22, v27
	.loc	1 238 19                        ; generate_amdgcn.py:238:19
	v_dual_mul_f32 v6, v106, v6 :: v_dual_add_f32 v15, 1.0, v15
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 238 26                        ; generate_amdgcn.py:238:26
	v_fmac_f32_e32 v21, v29, v13
	v_dual_mul_f32 v29, v23, v25 :: v_dual_fmac_f32 v22, v30, v24
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v19, -v19, v21, v28
	v_fma_f32 v14, -v14, v22, v27
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v27, -v26, v29, v23
	v_div_fmas_f32 v13, v19, v13, v21
	s_mov_b32 vcc_lo, s0
	v_div_scale_f32 v19, null, v17, v17, v98
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v29, v27, v25
	v_div_fmas_f32 v14, v14, v24, v22
	s_mov_b32 vcc_lo, s1
	v_rcp_f32_e32 v24, v19
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_fma_f32 v22, -v26, v29, v23
	v_div_scale_f32 v23, null, v15, v15, v101
	v_div_fixup_f32 v14, v14, v11, v103
	v_div_fmas_f32 v22, v22, v25, v29
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	v_rcp_f32_e32 v26, v23
	v_fma_f32 v25, -v19, v24, 1.0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_div_fixup_f32 v22, v22, v12, v102
	v_fmac_f32_e32 v24, v25, v24
	v_div_scale_f32 v25, s1, v98, v17, v98
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v33, -v23, v26, 1.0
	v_mul_f32_e32 v37, v25, v24
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v26, v33, v26
	v_div_scale_f32 v33, s2, v101, v15, v101
	v_dual_mul_f32 v39, v33, v26 :: v_dual_add_f32 v16, 1.0, v16
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_div_scale_f32 v30, null, v16, v16, v97
	v_rcp_f32_e32 v28, v30
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v21, -v30, v28, 1.0
	v_fmac_f32_e32 v28, v21, v28
	v_div_scale_f32 v21, s0, v97, v16, v97
	s_mov_b32 vcc_lo, s0
	v_mul_f32_e32 v31, v21, v28
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v35, -v30, v31, v21
	v_fmac_f32_e32 v31, v35, v28
	v_fma_f32 v35, -v19, v37, v25
	.loc	1 238 38                        ; generate_amdgcn.py:238:38
	v_add_f32_e32 v18, 1.0, v18
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 238 26                        ; generate_amdgcn.py:238:26
	v_fma_f32 v21, -v30, v31, v21
	v_fmac_f32_e32 v37, v35, v24
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_div_scale_f32 v32, null, v18, v18, v99
	v_fma_f32 v30, -v23, v39, v33
	v_div_fmas_f32 v21, v21, v28, v31
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v19, -v19, v37, v25
	v_rcp_f32_e32 v34, v32
	s_mov_b32 vcc_lo, s1
	v_fmac_f32_e32 v39, v30, v26
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v19, v19, v24, v37
	s_mov_b32 vcc_lo, s2
	v_fma_f32 v23, -v23, v39, v33
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v38, -v32, v34, 1.0
	v_div_fmas_f32 v23, v23, v26, v39
	.loc	1 238 19                        ; generate_amdgcn.py:238:19
	v_mul_f32_e32 v26, v105, v4
	.loc	1 238 26                        ; generate_amdgcn.py:238:26
	v_div_fixup_f32 v4, v13, v10, v104
	v_div_fixup_f32 v13, v19, v17, v98
	v_fmac_f32_e32 v34, v38, v34
	v_div_scale_f32 v38, s4, v99, v18, v99
	v_div_fixup_f32 v12, v23, v15, v101
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 238 19                        ; generate_amdgcn.py:238:19
	v_dual_mul_f32 v13, v93, v13 :: v_dual_add_f32 v20, 1.0, v20
	.loc	1 238 26                        ; generate_amdgcn.py:238:26
	v_mul_f32_e32 v41, v38, v34
.Ltmp24:
	.loc	2 191 16 is_stmt 1              ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ]
	v_lshlrev_b32_e32 v23, 7, v88
.Ltmp25:
	.loc	1 238 26                        ; generate_amdgcn.py:238:26
	v_div_fixup_f32 v15, v21, v16, v97
	.loc	1 238 19 is_stmt 0              ; generate_amdgcn.py:238:19
	v_mul_f32_e32 v19, v96, v4
	.loc	1 238 26                        ; generate_amdgcn.py:238:26
	v_div_scale_f32 v27, null, v20, v20, v100
	v_fma_f32 v25, -v32, v41, v38
.Ltmp26:
	.loc	2 170 12 is_stmt 1              ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ] ]
	v_max3_f32 v4, |v9|, |v8|, |v7|
	v_max_f32_e64 v16, |v3|, |v2|
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp27:
	.loc	1 238 26                        ; generate_amdgcn.py:238:26
	v_rcp_f32_e32 v29, v27
	.loc	1 238 19 is_stmt 0              ; generate_amdgcn.py:238:19
	v_dual_mul_f32 v12, v92, v12 :: v_dual_fmac_f32 v41, v25, v34
	v_mul_f32_e32 v17, v94, v22
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 238 26                        ; generate_amdgcn.py:238:26
	v_fma_f32 v25, -v32, v41, v38
	v_fma_f32 v36, -v27, v29, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v29, v36, v29
	v_div_scale_f32 v36, s3, v100, v20, v100
	s_mov_b32 vcc_lo, s3
	v_mul_f32_e32 v40, v36, v29
	v_fma_f32 v35, -v27, v40, v36
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v40, v35, v29
	v_fma_f32 v24, -v27, v40, v36
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v24, v24, v29, v40
	s_mov_b32 vcc_lo, s4
	s_mov_b32 s4, 0x76543210
	v_div_fmas_f32 v25, v25, v34, v41
	v_div_fixup_f32 v11, v24, v20, v100
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_4) | instid1(VALU_DEP_4)
	v_div_fixup_f32 v10, v25, v18, v99
	.loc	1 238 19                        ; generate_amdgcn.py:238:19
	v_mul_f32_e32 v18, v95, v14
	v_mul_f32_e32 v14, v91, v15
.Ltmp28:
	.loc	2 170 12 is_stmt 1              ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ] ]
	v_max3_f32 v15, |v5|, |v26|, |v6|
.Ltmp29:
	.loc	1 238 19                        ; generate_amdgcn.py:238:19
	v_mul_f32_e32 v11, v90, v11
.Ltmp30:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ] ]
	v_max3_f32 v20, |v19|, |v18|, |v17|
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_max3_f32 v21, |v14|, |v13|, |v12|
	v_max3_f32 v15, v4, v15, v16
.Ltmp31:
	.loc	1 238 19                        ; generate_amdgcn.py:238:19
	v_mul_f32_e32 v10, v89, v10
.Ltmp32:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ]
	v_lshlrev_b32_e32 v4, 3, v88
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp33:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ] ]
	v_max_f32_e64 v22, |v11|, |v10|
	v_max3_f32 v16, v20, v21, v22
.Ltmp34:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ]
	v_permlanex16_b32 v20, v15, s4, 0xfedcba98 op_sel:[1,0]
	v_lshrrev_b32_e32 v22, 2, v83
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_permlanex16_b32 v21, v16, s4, 0xfedcba98 op_sel:[1,0]
.Ltmp35:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ] ]
	v_max_f32_e32 v20, v20, v20
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp36:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ]
	v_xor_b32_e32 v24, v4, v22
.Ltmp37:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ] ]
	v_max_f32_e32 v21, v21, v21
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_max_f32_e32 v15, v15, v20
.Ltmp38:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ]
	v_lshl_or_b32 v20, v83, 2, v4
.Ltmp39:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ] ]
	v_max_f32_e32 v16, v16, v21
.Ltmp40:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ]
	v_add3_u32 v21, 0, v23, v24
	s_delay_alu instid0(VALU_DEP_3)
	v_xad_u32 v20, v20, v22, 0
	ds_store_b64 v21, v[15:16]
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b64 v[15:16], v20
	s_waitcnt lgkmcnt(0)
	s_barrier
	v_mov_b32_e32 v21, v16
.Ltmp41:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ] ]
	v_max_f32_e32 v16, v16, v16
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp42:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ]
	v_mov_b32_dpp v21, v21 row_xmask:8 row_mask:0xf bank_mask:0xf
.Ltmp43:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ] ]
	v_max_f32_e32 v21, v21, v21
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_max_f32_e32 v16, v16, v21
.Ltmp44:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ]
	v_mov_b32_e32 v21, v16
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v21, v21 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp45:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ] ]
	v_max_f32_e32 v21, v21, v21
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_max_f32_e32 v16, v16, v21
.Ltmp46:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ]
	v_mov_b32_e32 v20, v15
.Ltmp47:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ] ]
	v_max_f32_e32 v15, v15, v15
.Ltmp48:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ]
	v_mov_b32_e32 v21, v16
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_mov_b32_dpp v20, v20 row_xmask:8 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v21, v21 row_xmask:2 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp49:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ] ]
	v_max_f32_e32 v21, v21, v21
	v_max_f32_e32 v16, v16, v21
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp50:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ]
	v_mov_b32_e32 v21, v16
	v_mov_b32_dpp v21, v21 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp51:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ] ]
	v_dual_max_f32 v20, v20, v20 :: v_dual_max_f32 v21, v21, v21
	v_dual_max_f32 v15, v15, v20 :: v_dual_max_f32 v16, v16, v21
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp52:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ]
	v_dual_mov_b32 v20, v15 :: v_dual_add_nc_u32 v21, 0, v4
	v_mov_b32_dpp v20, v20 row_xmask:4 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp53:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ] ]
	v_max_f32_e32 v20, v20, v20
	v_max_f32_e32 v15, v15, v20
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp54:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ]
	v_mov_b32_e32 v20, v15
	v_mov_b32_dpp v20, v20 row_xmask:2 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp55:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ] ]
	v_max_f32_e32 v20, v20, v20
	v_max_f32_e32 v15, v15, v20
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp56:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ]
	v_mov_b32_e32 v20, v15
	v_mov_b32_dpp v20, v20 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp57:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ] ]
	v_max_f32_e32 v20, v20, v20
	v_dual_max_f32 v15, v15, v20 :: v_dual_add_nc_u32 v20, 0, v22
.Ltmp58:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ]
	ds_store_b64 v20, v[15:16]
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b64 v[15:16], v21
.Ltmp59:
	.loc	1 83 18                         ; generate_amdgcn.py:83:18 @[ generate_amdgcn.py:243:9 ]
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 76 14                         ; generate_amdgcn.py:76:14 @[ generate_amdgcn.py:243:9 ]
	v_dual_max_f32 v15, v15, v15 :: v_dual_max_f32 v16, v16, v16
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_dual_max_f32 v15, 0x2b8cbccc, v15 :: v_dual_max_f32 v16, 0x2b8cbccc, v16
	v_div_scale_f32 v20, null, 0x40e00000, 0x40e00000, v15
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v21, v20
	v_fma_f32 v22, -v20, v21, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v21, v22, v21
	v_div_scale_f32 v22, vcc_lo, v15, 0x40e00000, v15
	v_mul_f32_e32 v23, v22, v21
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v24, -v20, v23, v22
	v_fmac_f32_e32 v23, v24, v21
	v_div_scale_f32 v24, null, 0x40e00000, 0x40e00000, v16
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v20, -v20, v23, v22
	v_rcp_f32_e32 v22, v24
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_div_fmas_f32 v20, v20, v21, v23
	v_div_fixup_f32 v15, v20, 0x40e00000, v15
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v20, -v24, v22, 1.0
	.loc	1 76 13 is_stmt 0               ; generate_amdgcn.py:76:13 @[ generate_amdgcn.py:243:9 ]
	v_bfe_u32 v21, v15, 16, 1
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 76 14                         ; generate_amdgcn.py:76:14 @[ generate_amdgcn.py:243:9 ]
	v_fmac_f32_e32 v22, v20, v22
	v_div_scale_f32 v20, vcc_lo, v16, 0x40e00000, v16
	.loc	1 76 13                         ; generate_amdgcn.py:76:13 @[ generate_amdgcn.py:243:9 ]
	v_add3_u32 v15, v15, v21, 0x7fff
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 76 14                         ; generate_amdgcn.py:76:14 @[ generate_amdgcn.py:243:9 ]
	v_mul_f32_e32 v21, v20, v22
	.loc	1 78 35 is_stmt 1               ; generate_amdgcn.py:78:35 @[ generate_amdgcn.py:243:9 ]
	v_and_b32_e32 v23, 0xffff0000, v15
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 76 14                         ; generate_amdgcn.py:76:14 @[ generate_amdgcn.py:243:9 ]
	v_fma_f32 v25, -v24, v21, v20
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:243:9 ]
	v_div_scale_f32 v27, null, v23, v23, v9
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 76 14                         ; generate_amdgcn.py:76:14 @[ generate_amdgcn.py:243:9 ]
	v_fmac_f32_e32 v21, v25, v22
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:243:9 ]
	v_div_scale_f32 v28, null, v23, v23, v7
	v_rcp_f32_e32 v25, v27
	v_div_scale_f32 v34, null, v23, v23, v5
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 76 14                         ; generate_amdgcn.py:76:14 @[ generate_amdgcn.py:243:9 ]
	v_fma_f32 v20, -v24, v21, v20
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:243:9 ]
	v_div_scale_f32 v24, null, v23, v23, v8
	v_rcp_f32_e32 v36, v34
	v_div_scale_f32 v38, null, v23, v23, v26
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	.loc	1 76 14                         ; generate_amdgcn.py:76:14 @[ generate_amdgcn.py:243:9 ]
	v_div_fmas_f32 v20, v20, v22, v21
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:243:9 ]
	v_fma_f32 v21, -v27, v25, 1.0
	v_rcp_f32_e32 v22, v24
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 76 14                         ; generate_amdgcn.py:76:14 @[ generate_amdgcn.py:243:9 ]
	v_div_fixup_f32 v16, v20, 0x40e00000, v16
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:243:9 ]
	v_fmac_f32_e32 v25, v21, v25
	v_rcp_f32_e32 v20, v28
	v_div_scale_f32 v21, vcc_lo, v9, v23, v9
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	.loc	1 76 13                         ; generate_amdgcn.py:76:13 @[ generate_amdgcn.py:243:9 ]
	v_bfe_u32 v30, v16, 16, 1
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:243:9 ]
	v_fma_f32 v29, -v24, v22, 1.0
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mul_f32_e32 v31, v21, v25
	.loc	1 76 13                         ; generate_amdgcn.py:76:13 @[ generate_amdgcn.py:243:9 ]
	v_add3_u32 v30, v16, v30, 0x7fff
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:243:9 ]
	v_fma_f32 v32, -v28, v20, 1.0
	v_fma_f32 v33, -v27, v31, v21
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_dual_fmac_f32 v20, v32, v20 :: v_dual_fmac_f32 v31, v33, v25
	v_div_scale_f32 v32, s1, v7, v23, v7
	v_fmac_f32_e32 v22, v29, v22
	v_div_scale_f32 v29, s0, v8, v23, v8
	v_mul_f32_e32 v33, v32, v20
	v_fma_f32 v21, -v27, v31, v21
	v_fma_f32 v27, -v34, v36, 1.0
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mul_f32_e32 v35, v29, v22
	v_div_fmas_f32 v21, v21, v25, v31
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v36, v27, v36
	v_fma_f32 v16, -v24, v35, v29
	v_div_scale_f32 v25, s2, v5, v23, v5
	s_mov_b32 vcc_lo, s0
	v_div_fixup_f32 v9, v21, v23, v9
	v_fmac_f32_e32 v35, v16, v22
	v_fma_f32 v16, -v28, v33, v32
	v_mul_f32_e32 v27, v25, v36
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 78 9 is_stmt 0                ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:243:9 ]
	v_rndne_f32_e32 v9, v9
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:243:9 ]
	v_fma_f32 v24, -v24, v35, v29
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v33, v16, v20
	v_rcp_f32_e32 v16, v38
	v_fma_f32 v31, -v34, v27, v25
	v_div_fmas_f32 v22, v24, v22, v35
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fma_f32 v24, -v28, v33, v32
	s_mov_b32 vcc_lo, s1
	v_fmac_f32_e32 v27, v31, v36
	v_div_scale_f32 v28, null, v23, v23, v6
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_div_fmas_f32 v20, v24, v20, v33
	v_fma_f32 v29, -v38, v16, 1.0
	.loc	1 78 35                         ; generate_amdgcn.py:78:35 @[ generate_amdgcn.py:243:9 ]
	v_and_b32_e32 v37, 0xffff0000, v30
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:243:9 ]
	v_div_fixup_f32 v8, v22, v23, v8
	v_fma_f32 v22, -v34, v27, v25
	v_div_fixup_f32 v7, v20, v23, v7
	v_fmac_f32_e32 v16, v29, v16
	v_div_scale_f32 v29, s0, v26, v23, v26
	s_mov_b32 vcc_lo, s2
	v_rcp_f32_e32 v24, v28
	v_div_fmas_f32 v22, v22, v36, v27
	v_mul_f32_e32 v20, v29, v16
	s_mov_b32 vcc_lo, s0
	v_div_scale_f32 v25, null, v23, v23, v3
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_div_fixup_f32 v5, v22, v23, v5
	v_fma_f32 v31, -v38, v20, v29
	.loc	1 78 9                          ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:243:9 ]
	v_rndne_f32_e32 v8, v8
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:243:9 ]
	v_rcp_f32_e32 v32, v25
	v_fma_f32 v21, -v28, v24, 1.0
	.loc	1 78 9                          ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:243:9 ]
	v_rndne_f32_e32 v5, v5
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:243:9 ]
	v_fmac_f32_e32 v20, v31, v16
	v_div_scale_f32 v31, null, v23, v23, v2
	.loc	1 78 9                          ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:243:9 ]
	v_rndne_f32_e32 v7, v7
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:243:9 ]
	v_fma_f32 v22, -v38, v20, v29
	v_rcp_f32_e32 v34, v31
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v33, -v25, v32, 1.0
	v_div_fmas_f32 v16, v22, v16, v20
	v_div_scale_f32 v20, null, v37, v37, v19
	v_div_scale_f32 v22, s0, v3, v23, v3
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_div_fixup_f32 v16, v16, v23, v26
	v_fma_f32 v26, -v31, v34, 1.0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 78 9                          ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:243:9 ]
	v_rndne_f32_e32 v16, v16
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:243:9 ]
	v_fmac_f32_e32 v34, v26, v34
	v_div_scale_f32 v26, s2, v2, v23, v2
	v_fmac_f32_e32 v24, v21, v24
	v_div_scale_f32 v21, s1, v6, v23, v6
	s_mov_b32 vcc_lo, s1
	v_div_scale_f32 v38, s1, v19, v37, v19
	v_mul_f32_e32 v27, v21, v24
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v29, -v28, v27, v21
	v_fmac_f32_e32 v27, v29, v24
	v_rcp_f32_e32 v29, v20
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v21, -v28, v27, v21
	v_div_fmas_f32 v21, v21, v24, v27
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_fma_f32 v35, -v20, v29, 1.0
	v_dual_fmac_f32 v32, v33, v32 :: v_dual_mul_f32 v27, v26, v34
	s_mov_b32 vcc_lo, s0
	v_div_fixup_f32 v6, v21, v23, v6
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_dual_fmac_f32 v29, v35, v29 :: v_dual_mul_f32 v28, v22, v32
	v_div_scale_f32 v33, null, v37, v37, v18
	v_div_scale_f32 v35, null, v37, v37, v17
	v_fma_f32 v24, -v25, v28, v22
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_mul_f32_e32 v41, v38, v29
	v_rcp_f32_e32 v36, v33
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	v_rcp_f32_e32 v40, v35
	.loc	1 78 9                          ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:243:9 ]
	v_rndne_f32_e32 v6, v6
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:243:9 ]
	v_fmac_f32_e32 v28, v24, v32
	v_fma_f32 v24, -v31, v27, v26
	v_fma_f32 v21, -v25, v28, v22
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(TRANS32_DEP_2)
	v_fmac_f32_e32 v27, v24, v34
	v_fma_f32 v22, -v20, v41, v38
	v_fma_f32 v39, -v33, v36, 1.0
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v25, -v35, v40, 1.0
	v_fma_f32 v26, -v31, v27, v26
	s_delay_alu instid0(VALU_DEP_4)
	v_fmac_f32_e32 v41, v22, v29
	v_div_fmas_f32 v21, v21, v32, v28
	s_mov_b32 vcc_lo, s2
	v_div_scale_f32 v32, null, v37, v37, v10
	v_div_fmas_f32 v26, v26, v34, v27
	v_div_scale_f32 v27, null, v37, v37, v14
	v_div_fixup_f32 v3, v21, v23, v3
	v_fma_f32 v20, -v20, v41, v38
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_div_fixup_f32 v2, v26, v23, v2
	v_rcp_f32_e32 v31, v27
	s_mov_b32 vcc_lo, s1
	v_div_scale_f32 v21, null, v37, v37, v13
	v_div_fmas_f32 v20, v20, v29, v41
	v_rcp_f32_e32 v34, v32
	.loc	1 78 9                          ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:243:9 ]
	v_rndne_f32_e32 v2, v2
	v_rndne_f32_e32 v3, v3
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:243:9 ]
	v_div_fixup_f32 v19, v20, v37, v19
	v_fma_f32 v23, -v27, v31, 1.0
	v_fmac_f32_e32 v40, v25, v40
	v_div_scale_f32 v25, s0, v17, v37, v17
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 78 9                          ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:243:9 ]
	v_rndne_f32_e32 v19, v19
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:243:9 ]
	v_fmac_f32_e32 v31, v23, v31
	v_fmac_f32_e32 v36, v39, v36
	v_div_scale_f32 v39, s3, v18, v37, v18
	s_mov_b32 vcc_lo, s3
	v_div_scale_f32 v23, null, v37, v37, v12
	v_mul_f32_e32 v24, v39, v36
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_rcp_f32_e32 v26, v23
	v_fma_f32 v22, -v33, v24, v39
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_fmac_f32_e32 v24, v22, v36
	v_mul_f32_e32 v22, v25, v40
	v_fma_f32 v28, -v33, v24, v39
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_fma_f32 v29, -v35, v22, v25
	v_fma_f32 v33, -v23, v26, 1.0
	v_fma_f32 v39, -v32, v34, 1.0
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_div_fmas_f32 v24, v28, v36, v24
	v_fmac_f32_e32 v22, v29, v40
	s_mov_b32 vcc_lo, s0
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v34, v39, v34
	v_div_scale_f32 v39, s3, v10, v37, v10
	v_fma_f32 v20, -v35, v22, v25
	v_div_fixup_f32 v18, v24, v37, v18
	v_div_scale_f32 v24, null, v37, v37, v11
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_div_fmas_f32 v20, v20, v40, v22
	v_div_scale_f32 v25, vcc_lo, v14, v37, v14
	v_rcp_f32_e32 v22, v21
	v_rcp_f32_e32 v28, v24
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_div_fixup_f32 v17, v20, v37, v17
	v_mul_f32_e32 v29, v25, v31
	.loc	1 78 9                          ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:243:9 ]
	v_rndne_f32_e32 v18, v18
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_rndne_f32_e32 v17, v17
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:243:9 ]
	v_fma_f32 v35, -v27, v29, v25
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_fma_f32 v20, -v21, v22, 1.0
	v_fma_f32 v36, -v24, v28, 1.0
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_dual_fmac_f32 v29, v35, v31 :: v_dual_fmac_f32 v22, v20, v22
	v_div_scale_f32 v20, s0, v13, v37, v13
	v_fma_f32 v25, -v27, v29, v25
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_mul_f32_e32 v38, v20, v22
	v_div_fmas_f32 v25, v25, v31, v29
	s_mov_b32 vcc_lo, s0
	s_mov_b32 s0, 0xc1000000
	s_delay_alu instid0(VALU_DEP_2)
	v_fma_f32 v35, -v21, v38, v20
	.loc	1 77 9 is_stmt 1                ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:243:9 ]
	v_med3_f32 v18, v18, s0, 0x40e00000
	v_med3_f32 v9, v9, s0, 0x40e00000
	v_med3_f32 v16, v16, s0, 0x40e00000
	v_med3_f32 v5, v5, s0, 0x40e00000
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:243:9 ]
	v_fmac_f32_e32 v38, v35, v22
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:243:9 ]
	v_cvt_i32_f32_e32 v18, v18
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:243:9 ]
	v_fmac_f32_e32 v28, v36, v28
	v_div_scale_f32 v36, s2, v11, v37, v11
	v_fmac_f32_e32 v26, v33, v26
	v_div_scale_f32 v33, s1, v12, v37, v12
	s_delay_alu instid0(VALU_DEP_3)
	v_mul_f32_e32 v41, v36, v28
	v_fma_f32 v20, -v21, v38, v20
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:243:9 ]
	v_med3_f32 v17, v17, s0, 0x40e00000
	v_cvt_i32_f32_e32 v9, v9
	v_cvt_i32_f32_e32 v16, v16
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:243:9 ]
	v_fma_f32 v35, -v24, v41, v36
	v_mul_f32_e32 v40, v33, v26
	v_div_fmas_f32 v20, v20, v22, v38
	s_mov_b32 vcc_lo, s1
	v_mul_f32_e32 v42, v39, v34
	v_div_fixup_f32 v14, v25, v37, v14
	v_fma_f32 v27, -v23, v40, v33
	v_div_fixup_f32 v13, v20, v37, v13
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:243:9 ]
	v_cvt_i32_f32_e32 v20, v5
	v_and_b32_e32 v5, 15, v9
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:243:9 ]
	v_dual_fmac_f32 v40, v27, v26 :: v_dual_and_b32 v9, 15, v16
	v_fma_f32 v21, -v32, v42, v39
	.loc	1 78 9 is_stmt 0                ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:243:9 ]
	v_rndne_f32_e32 v14, v14
	.loc	1 77 9 is_stmt 1                ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:243:9 ]
	v_med3_f32 v2, v2, s0, 0x40e00000
	v_med3_f32 v19, v19, s0, 0x40e00000
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:243:9 ]
	v_fma_f32 v22, -v23, v40, v33
	v_dual_fmac_f32 v42, v21, v34 :: v_dual_lshlrev_b32 v27, 7, v0
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:243:9 ]
	v_med3_f32 v14, v14, s0, 0x40e00000
	.loc	1 78 9                          ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:243:9 ]
	v_rndne_f32_e32 v13, v13
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 78 29 is_stmt 0               ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:243:9 ]
	v_div_fmas_f32 v22, v22, v26, v40
	s_mov_b32 vcc_lo, s2
	v_fma_f32 v23, -v32, v42, v39
	.loc	1 77 9 is_stmt 1                ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:243:9 ]
	v_med3_f32 v8, v8, s0, 0x40e00000
	v_med3_f32 v3, v3, s0, 0x40e00000
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:243:9 ]
	v_div_fixup_f32 v12, v22, v37, v12
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:243:9 ]
	v_cvt_i32_f32_e32 v22, v17
	v_and_b32_e32 v17, 15, v18
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:243:9 ]
	v_fmac_f32_e32 v41, v35, v28
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:243:9 ]
	v_cvt_i32_f32_e32 v2, v2
	.loc	1 78 9                          ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:243:9 ]
	v_rndne_f32_e32 v12, v12
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:243:9 ]
	v_cvt_i32_f32_e32 v19, v19
	v_cvt_i32_f32_e32 v14, v14
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:243:9 ]
	v_fma_f32 v21, -v24, v41, v36
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:243:9 ]
	v_med3_f32 v6, v6, s0, 0x40e00000
	v_med3_f32 v12, v12, s0, 0x40e00000
	v_med3_f32 v13, v13, s0, 0x40e00000
	v_cvt_i32_f32_e32 v8, v8
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:243:9 ]
	v_div_fmas_f32 v21, v21, v28, v41
	s_mov_b32 vcc_lo, s3
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:243:9 ]
	v_cvt_i32_f32_e32 v3, v3
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:243:9 ]
	v_div_fmas_f32 v23, v23, v34, v42
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:243:9 ]
	v_and_b32_e32 v16, 15, v19
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:243:9 ]
	v_div_fixup_f32 v11, v21, v37, v11
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:243:9 ]
	v_and_b32_e32 v19, 15, v14
	.loc	1 83 18                         ; generate_amdgcn.py:83:18 @[ generate_amdgcn.py:243:9 ]
	v_lshlrev_b32_e32 v14, 5, v0
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:243:9 ]
	v_div_fixup_f32 v10, v23, v37, v10
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:243:9 ]
	v_cvt_i32_f32_e32 v23, v12
	.loc	1 78 9                          ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:243:9 ]
	v_rndne_f32_e32 v11, v11
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:243:9 ]
	v_and_b32_e32 v12, 15, v2
	.loc	1 83 18                         ; generate_amdgcn.py:83:18 @[ generate_amdgcn.py:243:9 ]
	v_lshlrev_b32_e32 v2, 11, v0
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:243:9 ]
	v_med3_f32 v7, v7, s0, 0x40e00000
	v_cvt_i32_f32_e32 v21, v6
	v_med3_f32 v11, v11, s0, 0x40e00000
	v_cvt_i32_f32_e32 v13, v13
	.loc	1 83 18                         ; generate_amdgcn.py:83:18 @[ generate_amdgcn.py:243:9 ]
	v_and_b32_e32 v2, 0x3000, v2
	v_and_b32_e32 v14, 0x60, v14
	.loc	1 87 5                          ; generate_amdgcn.py:87:5 @[ generate_amdgcn.py:243:9 ]
	v_cmp_eq_u32_e32 vcc_lo, 0, v84
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:243:9 ]
	v_cvt_i32_f32_e32 v24, v11
	v_and_b32_e32 v6, 15, v8
	v_and_b32_e32 v8, 15, v20
	v_and_b32_e32 v11, 15, v3
	.loc	1 83 18                         ; generate_amdgcn.py:83:18 @[ generate_amdgcn.py:243:9 ]
	v_and_b32_e32 v3, 0x60, v0
	v_and_or_b32 v20, 0x600, v86, v87
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:243:9 ]
	v_cvt_i32_f32_e32 v7, v7
	.loc	1 83 18                         ; generate_amdgcn.py:83:18 @[ generate_amdgcn.py:243:9 ]
	v_lshlrev_b32_e32 v26, 7, v84
	v_add_nc_u32_e32 v2, 0, v2
	.loc	1 78 9                          ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:243:9 ]
	v_rndne_f32_e32 v10, v10
	.loc	1 83 18                         ; generate_amdgcn.py:83:18 @[ generate_amdgcn.py:243:9 ]
	v_xor_b32_e32 v3, v20, v3
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:243:9 ]
	v_and_b32_e32 v20, 15, v13
	.loc	1 83 18                         ; generate_amdgcn.py:83:18 @[ generate_amdgcn.py:243:9 ]
	v_and_or_b32 v13, 0x3600, v27, v14
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:243:9 ]
	v_and_b32_e32 v7, 15, v7
	v_and_b32_e32 v18, 15, v22
	.loc	1 83 18                         ; generate_amdgcn.py:83:18 @[ generate_amdgcn.py:243:9 ]
	v_add3_u32 v2, v2, v26, v3
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:243:9 ]
	v_med3_f32 v10, v10, s0, 0x40e00000
	.loc	1 83 18                         ; generate_amdgcn.py:83:18 @[ generate_amdgcn.py:243:9 ]
	v_xad_u32 v1, v13, v1, 0
	ds_store_b128 v2, v[5:8]
	ds_store_b128 v2, v[16:19] offset:256
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[5:8], v1
	ds_load_b128 v[16:19], v1 offset:2048
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:243:9 ]
	v_cvt_i32_f32_e32 v25, v10
	v_and_b32_e32 v10, 15, v21
	v_and_b32_e32 v22, 15, v24
	.loc	1 76 13                         ; generate_amdgcn.py:76:13 @[ generate_amdgcn.py:243:9 ]
	v_mov_b16_e32 v13.h, 0
	v_mov_b16_e32 v13.l, v15.h
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:243:9 ]
	v_and_b32_e32 v21, 15, v23
	v_and_b32_e32 v23, 15, v25
	.loc	1 83 18                         ; generate_amdgcn.py:83:18 @[ generate_amdgcn.py:243:9 ]
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v2, v[9:12]
	ds_store_b128 v2, v[20:23] offset:256
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[9:12], v1
	ds_load_b128 v[20:23], v1 offset:2048
	.loc	1 86 37                         ; generate_amdgcn.py:86:37 @[ generate_amdgcn.py:243:9 ]
	s_lshr_b32 s0, s29, 31
	.loc	1 76 13                         ; generate_amdgcn.py:76:13 @[ generate_amdgcn.py:243:9 ]
	v_mov_b16_e32 v2.l, v30.h
	v_mov_b16_e32 v2.h, v13.h
	.loc	1 86 14                         ; generate_amdgcn.py:86:14 @[ generate_amdgcn.py:243:9 ]
	v_or_b32_e32 v3, s31, v85
	v_lshl_or_b32 v1, s30, 7, v4
	.loc	1 84 15                         ; generate_amdgcn.py:84:15 @[ generate_amdgcn.py:243:9 ]
	v_lshl_or_b32 v7, v18, 4, v7
	v_lshl_or_b32 v8, v19, 4, v8
	.loc	1 86 37                         ; generate_amdgcn.py:86:37 @[ generate_amdgcn.py:243:9 ]
	s_add_i32 s0, s29, s0
	.loc	1 84 15                         ; generate_amdgcn.py:84:15 @[ generate_amdgcn.py:243:9 ]
	v_lshl_or_b32 v6, v17, 4, v6
	.loc	1 86 37                         ; generate_amdgcn.py:86:37 @[ generate_amdgcn.py:243:9 ]
	s_ashr_i32 s0, s0, 1
	.loc	1 84 15                         ; generate_amdgcn.py:84:15 @[ generate_amdgcn.py:243:9 ]
	v_lshl_or_b32 v5, v16, 4, v5
	.loc	1 86 14                         ; generate_amdgcn.py:86:14 @[ generate_amdgcn.py:243:9 ]
	v_mad_u64_u32 v[3:4], null, v3, s0, v[1:2]
	.loc	1 86 5 is_stmt 0                ; generate_amdgcn.py:86:5 @[ generate_amdgcn.py:243:9 ]
	v_lshlrev_b16 v1.l, 8, v8.l
	v_and_b16 v1.h, 0xff, v7.l
	.loc	1 86 37                         ; generate_amdgcn.py:86:37 @[ generate_amdgcn.py:243:9 ]
	s_ashr_i32 s0, s29, 31
	.loc	1 87 5 is_stmt 1                ; generate_amdgcn.py:87:5 @[ generate_amdgcn.py:243:9 ]
	v_cndmask_b32_e32 v2, v13, v2, vcc_lo
	.loc	1 87 34 is_stmt 0               ; generate_amdgcn.py:87:34 @[ generate_amdgcn.py:243:9 ]
	s_lshr_b32 s0, s0, 24
	.loc	1 86 5 is_stmt 1                ; generate_amdgcn.py:86:5 @[ generate_amdgcn.py:243:9 ]
	s_and_b32 s1, s21, 0xffff
	v_or_b16 v4.h, v1.h, v1.l
	v_lshlrev_b16 v1.l, 8, v6.l
	.loc	1 87 14                         ; generate_amdgcn.py:87:14 @[ generate_amdgcn.py:243:9 ]
	v_and_or_b32 v6, v0, 31, s31
	.loc	1 87 34 is_stmt 0               ; generate_amdgcn.py:87:34 @[ generate_amdgcn.py:243:9 ]
	s_add_i32 s0, s29, s0
	.loc	1 84 15 is_stmt 1               ; generate_amdgcn.py:84:15 @[ generate_amdgcn.py:243:9 ]
	s_waitcnt lgkmcnt(0)
	v_lshl_or_b32 v11, v22, 4, v11
	v_lshl_or_b32 v12, v23, 4, v12
	.loc	1 86 5                          ; generate_amdgcn.py:86:5 @[ generate_amdgcn.py:243:9 ]
	v_and_b16 v0.l, 0xff, v5.l
	.loc	1 87 34                         ; generate_amdgcn.py:87:34 @[ generate_amdgcn.py:243:9 ]
	s_ashr_i32 s0, s0, 8
	.loc	1 87 5 is_stmt 0                ; generate_amdgcn.py:87:5 @[ generate_amdgcn.py:243:9 ]
	v_bfe_i32 v5, v2, 0, 16
	.loc	1 87 14                         ; generate_amdgcn.py:87:14 @[ generate_amdgcn.py:243:9 ]
	v_mul_lo_u32 v6, v6, s0
	.loc	1 84 15 is_stmt 1               ; generate_amdgcn.py:84:15 @[ generate_amdgcn.py:243:9 ]
	v_lshl_or_b32 v9, v20, 4, v9
	v_lshl_or_b32 v10, v21, 4, v10
	.loc	1 86 5                          ; generate_amdgcn.py:86:5 @[ generate_amdgcn.py:243:9 ]
	v_lshlrev_b16 v0.h, 8, v12.l
	v_and_b16 v1.h, 0xff, v11.l
	.loc	1 87 5                          ; generate_amdgcn.py:87:5 @[ generate_amdgcn.py:243:9 ]
	v_permlanex16_b32 v7, v5, s4, 0xfedcba98 op_sel:[1,0]
	.loc	1 86 5                          ; generate_amdgcn.py:86:5 @[ generate_amdgcn.py:243:9 ]
	v_and_b16 v2.h, 0xff, v9.l
	v_lshlrev_b16 v2.l, 8, v10.l
	v_or_b16 v4.l, v0.l, v1.l
	v_or_b16 v5.h, v1.h, v0.h
	.loc	1 87 5                          ; generate_amdgcn.py:87:5 @[ generate_amdgcn.py:243:9 ]
	v_add_lshl_u32 v0, v6, s30, 1
	v_cndmask_b32_e32 v1, v7, v13, vcc_lo
	v_cmp_eq_u32_e32 vcc_lo, 0, v83
	.loc	1 86 5                          ; generate_amdgcn.py:86:5 @[ generate_amdgcn.py:243:9 ]
	v_or_b16 v5.l, v2.h, v2.l
	s_mov_b32 s3, 0x31027000
	s_mov_b32 s2, 0x7ffffffe
	s_mov_b32 s0, s20
	.loc	1 87 5                          ; generate_amdgcn.py:87:5 @[ generate_amdgcn.py:243:9 ]
	v_cndmask_b32_e32 v0, 0x80000000, v0, vcc_lo
	.loc	1 86 5                          ; generate_amdgcn.py:86:5 @[ generate_amdgcn.py:243:9 ]
	buffer_store_b64 v[4:5], v3, s[0:3], 0 offen
	.loc	1 87 5                          ; generate_amdgcn.py:87:5 @[ generate_amdgcn.py:243:9 ]
	s_and_b32 s1, s23, 0xffff
	s_mov_b32 s0, s22
	buffer_store_b16 v1, v0, s[0:3], 0 offen
.Ltmp60:
	.loc	1 106 1                         ; generate_amdgcn.py:106:1
	s_nop 0
	s_sendmsg sendmsg(MSG_DEALLOC_VGPRS)
	s_endpgm
.Ltmp61:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_int4xint4_tn_sc256_swiglu_outint4sc256_bm32_bn256_bk128_gm1_w16_s2_weu2_sk1_maskk
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
		.amdhsa_next_free_vgpr 154
		.amdhsa_next_free_sgpr 38
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
	.size	amd_strix_halo_gfx1151_int4xint4_tn_sc256_swiglu_outint4sc256_bm32_bn256_bk128_gm1_w16_s2_weu2_sk1_maskk, .Lfunc_end0-amd_strix_halo_gfx1151_int4xint4_tn_sc256_swiglu_outint4sc256_bm32_bn256_bk128_gm1_w16_s2_weu2_sk1_maskk
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_int4xint4_tn_sc256_swiglu_outint4sc256_bm32_bn256_bk128_gm1_w16_s2_weu2_sk1_maskk.num_vgpr, 154
	.set amd_strix_halo_gfx1151_int4xint4_tn_sc256_swiglu_outint4sc256_bm32_bn256_bk128_gm1_w16_s2_weu2_sk1_maskk.num_agpr, 0
	.set amd_strix_halo_gfx1151_int4xint4_tn_sc256_swiglu_outint4sc256_bm32_bn256_bk128_gm1_w16_s2_weu2_sk1_maskk.numbered_sgpr, 38
	.set amd_strix_halo_gfx1151_int4xint4_tn_sc256_swiglu_outint4sc256_bm32_bn256_bk128_gm1_w16_s2_weu2_sk1_maskk.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_int4xint4_tn_sc256_swiglu_outint4sc256_bm32_bn256_bk128_gm1_w16_s2_weu2_sk1_maskk.private_seg_size, 0
	.set amd_strix_halo_gfx1151_int4xint4_tn_sc256_swiglu_outint4sc256_bm32_bn256_bk128_gm1_w16_s2_weu2_sk1_maskk.uses_vcc, 1
	.set amd_strix_halo_gfx1151_int4xint4_tn_sc256_swiglu_outint4sc256_bm32_bn256_bk128_gm1_w16_s2_weu2_sk1_maskk.uses_flat_scratch, 0
	.set amd_strix_halo_gfx1151_int4xint4_tn_sc256_swiglu_outint4sc256_bm32_bn256_bk128_gm1_w16_s2_weu2_sk1_maskk.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_int4xint4_tn_sc256_swiglu_outint4sc256_bm32_bn256_bk128_gm1_w16_s2_weu2_sk1_maskk.has_recursion, 0
	.set amd_strix_halo_gfx1151_int4xint4_tn_sc256_swiglu_outint4sc256_bm32_bn256_bk128_gm1_w16_s2_weu2_sk1_maskk.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 18460
; TotalNumSgprs: 40
; NumVgprs: 154
; ScratchSize: 0
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 19
; NumSGPRsForWavesPerEU: 40
; NumVGPRsForWavesPerEU: 154
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
	.byte	5                               ; Abbreviation Code
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
	.byte	1                               ; Abbrev [1] 0xb:0x82 DW_TAG_compile_unit
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
	.byte	3                               ; Abbrev [3] 0x30:0x5c DW_TAG_subprogram
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
	.byte	5                               ; Abbrev [5] 0x65:0x26 DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges3                 ; DW_AT_ranges
	.byte	1                               ; DW_AT_call_file
	.byte	243                             ; DW_AT_call_line
	.byte	9                               ; DW_AT_call_column
	.byte	5                               ; Abbrev [5] 0x71:0x19 DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges4                 ; DW_AT_ranges
	.byte	1                               ; DW_AT_call_file
	.byte	75                              ; DW_AT_call_line
	.byte	16                              ; DW_AT_call_column
	.byte	4                               ; Abbrev [4] 0x7d:0xc DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges5                 ; DW_AT_ranges
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
	.quad	.Ltmp60-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges4:
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
	.quad	.Ltmp59-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges5:
	.quad	.Ltmp26-.Lfunc_begin0
	.quad	.Ltmp27-.Lfunc_begin0
	.quad	.Ltmp28-.Lfunc_begin0
	.quad	.Ltmp29-.Lfunc_begin0
	.quad	.Ltmp30-.Lfunc_begin0
	.quad	.Ltmp31-.Lfunc_begin0
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
	.quad	.Ltmp54-.Lfunc_begin0
	.quad	.Ltmp55-.Lfunc_begin0
	.quad	.Ltmp56-.Lfunc_begin0
	.quad	.Ltmp57-.Lfunc_begin0
	.quad	.Ltmp58-.Lfunc_begin0
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
	.asciz	"amd_strix_halo_gfx1151_int4xint4_tn_sc256_swiglu_outint4sc256_bm32_bn256_bk128_gm1_w16_s2_weu2_sk1_maskk"             ; string offset=75 ; amd_strix_halo_gfx1151_int4xint4_tn_sc256_swiglu_outint4sc256_bm32_bn256_bk128_gm1_w16_s2_weu2_sk1_maskk
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
    .name:           amd_strix_halo_gfx1151_int4xint4_tn_sc256_swiglu_outint4sc256_bm32_bn256_bk128_gm1_w16_s2_weu2_sk1_maskk
    .private_segment_fixed_size: 0
    .sgpr_count:     40
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_int4xint4_tn_sc256_swiglu_outint4sc256_bm32_bn256_bk128_gm1_w16_s2_weu2_sk1_maskk.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     154
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
