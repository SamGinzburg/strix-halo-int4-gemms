	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_int8xint8_tn_sc32_none_bm64_bn128_bk64_gm4_w8_s3_weu2_sk1_maskk               ; -- Begin function amd_strix_halo_gfx1151_int8xint8_tn_sc32_none_bm64_bn128_bk64_gm4_w8_s3_weu2_sk1_maskk
	.p2align	8
	.type	amd_strix_halo_gfx1151_int8xint8_tn_sc32_none_bm64_bn128_bk64_gm4_w8_s3_weu2_sk1_maskk,@function
amd_strix_halo_gfx1151_int8xint8_tn_sc32_none_bm64_bn128_bk64_gm4_w8_s3_weu2_sk1_maskk:                      ; @amd_strix_halo_gfx1151_int8xint8_tn_sc32_none_bm64_bn128_bk64_gm4_w8_s3_weu2_sk1_maskk
.Lfunc_begin0:
	.file	1 "<repo>/scripts" "generate_amdgcn.py"
	.loc	1 283 0                         ; generate_amdgcn.py:283:0
	.cfi_sections .debug_frame
	.cfi_startproc
; %bb.0:
	s_clause 0x1
	s_load_b64 s[22:23], s[0:1], 0x30
	s_load_b32 s28, s[0:1], 0x38
.Ltmp0:
	.loc	1 293 16 prologue_end           ; generate_amdgcn.py:293:16
	s_abs_i32 s7, s2
	s_load_b64 s[20:21], s[0:1], 0x20
	v_mov_b32_e32 v80, 0
	.loc	1 299 32                        ; generate_amdgcn.py:299:32
	v_lshrrev_b32_e32 v75, 3, v0
	v_dual_mov_b32 v49, 0 :: v_dual_mov_b32 v50, 0
	v_dual_mov_b32 v54, 0 :: v_dual_mov_b32 v53, 0
	v_dual_mov_b32 v51, 0 :: v_dual_mov_b32 v52, 0
	v_dual_mov_b32 v56, 0 :: v_dual_mov_b32 v55, 0
	v_dual_mov_b32 v58, 0 :: v_dual_mov_b32 v57, 0
	v_dual_mov_b32 v62, 0 :: v_dual_mov_b32 v61, 0
	v_dual_mov_b32 v60, 0 :: v_dual_mov_b32 v59, 0
.Ltmp1:
	.file	2 "<triton>/python/triton/language" "standard.py"
	.loc	2 43 13                         ; standard.py:43:13 @[ generate_amdgcn.py:291:17 ]
	s_waitcnt lgkmcnt(0)
	s_add_i32 s4, s23, 0x7f
.Ltmp2:
	.loc	2 43 13 is_stmt 0               ; standard.py:43:13 @[ generate_amdgcn.py:290:17 ]
	s_add_i32 s8, s22, 63
.Ltmp3:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:291:17 ]
	s_ashr_i32 s5, s4, 31
.Ltmp4:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:290:17 ]
	s_ashr_i32 s10, s8, 31
.Ltmp5:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:291:17 ]
	s_lshr_b32 s5, s5, 25
.Ltmp6:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:290:17 ]
	s_lshr_b32 s10, s10, 26
.Ltmp7:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:291:17 ]
	s_add_i32 s4, s4, s5
.Ltmp8:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:290:17 ]
	s_add_i32 s8, s8, s10
.Ltmp9:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:291:17 ]
	s_ashr_i32 s4, s4, 7
.Ltmp10:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:290:17 ]
	s_ashr_i32 s8, s8, 6
.Ltmp11:
	.loc	1 292 24 is_stmt 1              ; generate_amdgcn.py:292:24
	s_lshl_b32 s4, s4, 2
	v_dual_mov_b32 v65, 0 :: v_dual_mov_b32 v64, 0
	.loc	1 293 16                        ; generate_amdgcn.py:293:16
	s_abs_i32 s5, s4
	v_dual_mov_b32 v68, 0 :: v_dual_mov_b32 v69, 0
	s_cvt_f32_u32 s6, s5
	s_sub_i32 s9, 0, s5
	v_dual_mov_b32 v70, 0 :: v_dual_mov_b32 v71, 0
	s_delay_alu instid0(SALU_CYCLE_1)
	v_rcp_iflag_f32_e32 v1, s6
	v_dual_mov_b32 v72, 0 :: v_dual_mov_b32 v73, 0
	v_dual_mov_b32 v74, 0 :: v_dual_mov_b32 v77, 0
	v_dual_mov_b32 v76, 0 :: v_dual_mov_b32 v79, 0
	v_dual_mov_b32 v78, 0 :: v_dual_mov_b32 v81, 0
	v_dual_mov_b32 v83, 0 :: v_dual_mov_b32 v82, 0
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_4) | instid1(SALU_CYCLE_3)
	v_readfirstlane_b32 s6, v1
	v_mov_b32_e32 v85, 0
	.loc	1 300 32                        ; generate_amdgcn.py:300:32
	v_lshrrev_b32_e32 v67, 1, v0
	s_mov_b32 s12, 0
	.loc	1 293 16                        ; generate_amdgcn.py:293:16
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
	.loc	1 294 19                        ; generate_amdgcn.py:294:19
	s_lshl_b32 s6, s5, 2
	.loc	1 296 29                        ; generate_amdgcn.py:296:29
	s_mul_i32 s5, s5, s4
	.loc	1 295 31                        ; generate_amdgcn.py:295:31
	s_sub_i32 s7, s8, s6
	.loc	1 296 29                        ; generate_amdgcn.py:296:29
	s_sub_i32 s2, s2, s5
	.loc	1 295 20                        ; generate_amdgcn.py:295:20
	s_min_i32 s7, s7, 4
	.loc	1 297 13                        ; generate_amdgcn.py:297:13
	s_abs_i32 s5, s2
	s_abs_i32 s8, s7
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_2)
	s_cvt_f32_u32 s9, s8
	s_sub_i32 s10, 0, s8
	v_rcp_iflag_f32_e32 v1, s9
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_readfirstlane_b32 s9, v1
	.loc	1 299 32                        ; generate_amdgcn.py:299:32
	v_and_b32_e32 v1, 15, v0
	.loc	1 297 13                        ; generate_amdgcn.py:297:13
	s_mul_f32 s9, s9, 0x4f7ffffe
	.loc	1 299 32                        ; generate_amdgcn.py:299:32
	v_and_or_b32 v63, v75, 16, v1
	s_delay_alu instid0(SALU_CYCLE_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 297 13                        ; generate_amdgcn.py:297:13
	s_cvt_u32_f32 s9, s9
	.loc	1 299 32                        ; generate_amdgcn.py:299:32
	v_or_b32_e32 v66, 32, v63
	s_delay_alu instid0(SALU_CYCLE_2) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	.loc	1 297 13                        ; generate_amdgcn.py:297:13
	s_mul_i32 s10, s10, s9
	s_mul_hi_u32 s4, s9, s10
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_add_i32 s9, s9, s4
	s_mul_hi_u32 s4, s5, s9
	s_xor_b32 s9, s2, s7
	s_mul_i32 s10, s4, s8
	s_ashr_i32 s13, s9, 31
	s_sub_i32 s5, s5, s10
	s_add_i32 s9, s4, 1
	s_sub_i32 s10, s5, s8
	s_cmp_ge_u32 s5, s8
	s_cselect_b32 s4, s9, s4
	s_cselect_b32 s5, s10, s5
	s_add_i32 s9, s4, 1
	s_cmp_ge_u32 s5, s8
	s_cselect_b32 s4, s9, s4
.Ltmp12:
	.loc	2 43 13                         ; standard.py:43:13 @[ generate_amdgcn.py:307:28 ]
	s_add_i32 s15, s28, 63
.Ltmp13:
	.loc	1 297 13                        ; generate_amdgcn.py:297:13
	s_xor_b32 s14, s4, s13
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_sub_i32 s4, s14, s13
	.loc	1 296 28                        ; generate_amdgcn.py:296:28
	s_mul_i32 s5, s4, s7
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_sub_i32 s2, s2, s5
	.loc	1 296 13 is_stmt 0              ; generate_amdgcn.py:296:13
	s_add_i32 s2, s2, s6
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 299 14 is_stmt 1              ; generate_amdgcn.py:299:14
	s_lshl_b32 s29, s2, 6
	.loc	1 300 14                        ; generate_amdgcn.py:300:14
	s_lshl_b32 s2, s4, 7
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_cmp_lt_i32 s15, 64
	s_cbranch_scc1 .LBB0_3
; %bb.1:                                ; %.lr.ph
	.loc	1 0 5 is_stmt 0                 ; generate_amdgcn.py:0:5
	v_dual_mov_b32 v82, 0 :: v_dual_and_b32 v3, 48, v67
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_lshl_b32 s3, s3, 6
	s_load_b256 s[4:11], s[0:1], 0x0
.Ltmp14:
	.loc	2 43 12 is_stmt 1               ; standard.py:43:12 @[ generate_amdgcn.py:307:28 ]
	s_ashr_i32 s0, s15, 31
	s_delay_alu instid0(VALU_DEP_1)
	v_or_b32_e32 v1, v3, v1
.Ltmp15:
	.loc	2 43 13 is_stmt 0               ; standard.py:43:13 @[ generate_amdgcn.py:310:26 ]
	s_add_i32 s1, s28, 31
.Ltmp16:
	.loc	1 300 32 is_stmt 1              ; generate_amdgcn.py:300:32
	v_bfe_u32 v2, v0, 4, 1
.Ltmp17:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:307:28 ]
	s_lshr_b32 s0, s0, 26
.Ltmp18:
	.loc	2 43 12 is_stmt 0               ; standard.py:43:12 @[ generate_amdgcn.py:310:26 ]
	s_ashr_i32 s16, s1, 31
	v_dual_mov_b32 v83, 0 :: v_dual_add_nc_u32 v88, 0, v1
.Ltmp19:
	.loc	1 307 5 is_stmt 1               ; generate_amdgcn.py:307:5
	v_or_b32_e32 v1, s3, v75
.Ltmp20:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:307:28 ]
	s_add_i32 s15, s15, s0
.Ltmp21:
	.loc	2 43 12 is_stmt 0               ; standard.py:43:12 @[ generate_amdgcn.py:310:26 ]
	s_lshr_b32 s0, s16, 27
	v_or_b32_e32 v7, s29, v63
	v_or3_b32 v87, v2, v3, s2
.Ltmp22:
	.loc	1 307 5 is_stmt 1               ; generate_amdgcn.py:307:5
	v_or_b32_e32 v2, 32, v1
.Ltmp23:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:310:26 ]
	s_add_i32 s0, s1, s0
.Ltmp24:
	.loc	2 43 12 is_stmt 0               ; standard.py:43:12 @[ generate_amdgcn.py:307:28 ]
	s_ashr_i32 s1, s15, 6
.Ltmp25:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:310:26 ]
	s_ashr_i32 s30, s0, 5
.Ltmp26:
	.loc	1 307 5 is_stmt 1               ; generate_amdgcn.py:307:5
	s_lshl_b32 s0, s14, 7
	s_mov_b32 s14, s12
	s_mov_b32 s15, s12
	s_mov_b32 s16, s12
	s_mov_b32 s17, s12
	s_mov_b32 s18, s12
	s_mov_b32 s19, s12
	.loc	1 299 32                        ; generate_amdgcn.py:299:32
	v_and_b32_e32 v4, 7, v0
	v_mul_lo_u32 v89, v7, s30
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_mul_lo_u32 v3, s23, v2
	v_mul_lo_u32 v7, s23, v1
	v_mul_lo_u32 v2, s22, v2
	.loc	1 300 32                        ; generate_amdgcn.py:300:32
	v_lshlrev_b32_e32 v6, 4, v4
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_mul_lo_u32 v1, s22, v1
	v_or_b32_e32 v8, s29, v66
	v_dual_mov_b32 v85, 0 :: v_dual_add_nc_u32 v86, 0, v63
	s_delay_alu instid0(VALU_DEP_4)
	v_add3_u32 v3, v3, s0, v6
	v_add3_u32 v6, v7, s0, v6
	s_lshl_b32 s0, s13, 7
	s_mov_b32 s13, s12
	v_lshlrev_b32_e32 v5, 3, v0
	.loc	1 299 32                        ; generate_amdgcn.py:299:32
	v_lshlrev_b32_e32 v4, 3, v4
	v_mul_lo_u32 v90, v8, s30
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_subrev_nc_u32_e32 v106, s0, v3
	v_subrev_nc_u32_e32 v107, s0, v6
	v_add_nc_u32_e32 v84, 0, v5
	v_add3_u32 v108, v2, s29, v4
	v_add3_u32 v109, v1, s29, v4
	v_or_b32_e32 v91, 2, v87
	v_or_b32_e32 v92, 4, v87
	v_dual_mov_b32 v81, 0 :: v_dual_add_nc_u32 v110, v84, v5
	v_mov_b32_e32 v1, s12
	v_or_b32_e32 v93, 6, v87
	v_or_b32_e32 v94, 8, v87
	v_or_b32_e32 v95, 10, v87
	v_or_b32_e32 v96, 12, v87
	v_or_b32_e32 v97, 14, v87
	v_or_b32_e32 v98, 64, v87
	v_or_b32_e32 v99, 0x42, v87
	v_or_b32_e32 v100, 0x44, v87
	v_or_b32_e32 v101, 0x46, v87
	v_or_b32_e32 v102, 0x48, v87
	v_or_b32_e32 v103, 0x4a, v87
	v_or_b32_e32 v104, 0x4c, v87
	v_or_b32_e32 v105, 0x4e, v87
	v_dual_mov_b32 v2, s13 :: v_dual_mov_b32 v3, s14
	v_dual_mov_b32 v4, s15 :: v_dual_mov_b32 v79, 0
	v_dual_mov_b32 v5, s16 :: v_dual_mov_b32 v6, s17
	v_mov_b32_e32 v77, 0
	v_dual_mov_b32 v7, s18 :: v_dual_mov_b32 v8, s19
	v_dual_mov_b32 v73, 0 :: v_dual_mov_b32 v80, 0
	v_dual_mov_b32 v71, 0 :: v_dual_mov_b32 v78, 0
	v_dual_mov_b32 v69, 0 :: v_dual_mov_b32 v76, 0
	v_dual_mov_b32 v65, 0 :: v_dual_mov_b32 v74, 0
	v_dual_mov_b32 v59, 0 :: v_dual_mov_b32 v72, 0
	v_dual_mov_b32 v61, 0 :: v_dual_mov_b32 v70, 0
	v_dual_mov_b32 v57, 0 :: v_dual_mov_b32 v68, 0
	v_dual_mov_b32 v55, 0 :: v_dual_mov_b32 v64, 0
	v_dual_mov_b32 v51, 0 :: v_dual_mov_b32 v60, 0
	v_dual_mov_b32 v53, 0 :: v_dual_mov_b32 v62, 0
	v_dual_mov_b32 v49, 0 :: v_dual_mov_b32 v58, 0
	v_mov_b32_e32 v56, 0
	v_mov_b32_e32 v52, 0
	v_mov_b32_e32 v54, 0
	v_mov_b32_e32 v50, 0
	s_mov_b32 s27, 0x31027000
	s_mov_b32 s26, 0x7ffffffe
	s_waitcnt lgkmcnt(0)
	s_and_b32 s5, s5, 0xffff
	s_and_b32 s7, s7, 0xffff
	s_and_b32 s9, s9, 0xffff
	s_and_b32 s11, s11, 0xffff
	s_lshl_b32 s31, s23, 6
	s_lshl_b32 s22, s22, 6
	s_mov_b32 s24, s4
	s_mov_b32 s25, s5
	s_mov_b32 s4, s6
	s_mov_b32 s5, s7
	s_mov_b32 s6, s26
	s_mov_b32 s7, s27
	s_mov_b32 s12, s8
	s_mov_b32 s13, s9
	s_mov_b32 s14, s26
	s_mov_b32 s15, s27
	s_mov_b32 s8, s10
	s_mov_b32 s9, s11
	s_mov_b32 s10, s26
	s_mov_b32 s11, s27
.LBB0_2:                                ; =>This Inner Loop Header: Depth=1
	.loc	1 313 27                        ; generate_amdgcn.py:313:27
	v_add_nc_u32_e32 v9, s3, v75
	.loc	1 312 21                        ; generate_amdgcn.py:312:21
	s_add_i32 s16, s3, 32
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	.loc	1 313 27                        ; generate_amdgcn.py:313:27
	v_cmp_gt_i32_e32 vcc_lo, s28, v9
	v_add_nc_u32_e32 v9, 32, v9
	.loc	1 316 26                        ; generate_amdgcn.py:316:26
	v_cndmask_b32_e32 v10, 0x80000000, v109, vcc_lo
	.loc	1 313 27                        ; generate_amdgcn.py:313:27
	v_cmp_gt_i32_e64 s0, s28, v9
	.loc	1 322 26                        ; generate_amdgcn.py:322:26
	v_cndmask_b32_e32 v9, 0x80000000, v107, vcc_lo
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_add_nc_u32_e32 v107, s31, v107
	.loc	1 316 26                        ; generate_amdgcn.py:316:26
	buffer_load_b64 v[17:18], v10, s[24:27], 0 offen
	v_cndmask_b32_e64 v13, 0x80000000, v108, s0
	.loc	1 322 26                        ; generate_amdgcn.py:322:26
	v_cndmask_b32_e64 v14, 0x80000000, v106, s0
	buffer_load_b128 v[9:12], v9, s[4:7], 0 offen
	.loc	1 316 26                        ; generate_amdgcn.py:316:26
	s_waitcnt lgkmcnt(0)
	s_barrier
	buffer_load_b64 v[19:20], v13, s[24:27], 0 offen
	.loc	1 322 26                        ; generate_amdgcn.py:322:26
	buffer_load_b128 v[13:16], v14, s[4:7], 0 offen
	.loc	1 316 26                        ; generate_amdgcn.py:316:26
	s_waitcnt vmcnt(3)
	ds_store_b64 v84, v[17:18] offset:8192
	.loc	1 322 26                        ; generate_amdgcn.py:322:26
	s_waitcnt vmcnt(2)
	ds_store_b128 v110, v[9:12]
	.loc	1 316 26                        ; generate_amdgcn.py:316:26
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_waitcnt vmcnt(1)
	ds_store_b64 v84, v[19:20] offset:10240
	.loc	1 322 26                        ; generate_amdgcn.py:322:26
	s_waitcnt vmcnt(0)
	ds_store_b128 v110, v[13:16] offset:4096
	.loc	1 316 26                        ; generate_amdgcn.py:316:26
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	ds_load_u8 v9, v86 offset:9024
	ds_load_u8 v10, v86 offset:8960
	ds_load_u8 v11, v86 offset:9152
	ds_load_u8 v12, v86 offset:9088
	ds_load_u8 v13, v86 offset:8768
	ds_load_u8 v14, v86 offset:8704
	ds_load_u8 v15, v86 offset:8896
	ds_load_u8 v16, v86 offset:8832
	ds_load_u8 v17, v86 offset:8512
	ds_load_u8 v18, v86 offset:8448
	ds_load_u8 v19, v86 offset:8640
	ds_load_u8 v20, v86 offset:8576
	ds_load_u8 v21, v86 offset:8256
	ds_load_u8 v22, v86 offset:8192
	ds_load_u8 v23, v86 offset:8384
	ds_load_u8 v24, v86 offset:8320
	ds_load_u8 v25, v88 offset:1664
	ds_load_u8 v26, v88 offset:1536
	ds_load_u8 v27, v88 offset:1920
	ds_load_u8 v28, v88 offset:1792
	ds_load_u8 v29, v88 offset:1152
	ds_load_u8 v30, v88 offset:1024
	ds_load_u8 v31, v88 offset:1408
	ds_load_u8 v32, v88 offset:1280
	ds_load_u8 v33, v88 offset:640
	ds_load_u8 v34, v88 offset:512
	ds_load_u8 v35, v88 offset:896
	ds_load_u8 v36, v88 offset:768
	ds_load_u8 v37, v88 offset:128
	ds_load_u8 v38, v88
	ds_load_u8 v39, v88 offset:384
	ds_load_u8 v40, v88 offset:256
	ds_load_u8 v41, v86 offset:10048
	ds_load_u8 v42, v86 offset:9984
	ds_load_u8 v43, v86 offset:10176
	ds_load_u8 v44, v86 offset:10112
	ds_load_u8 v45, v86 offset:9792
	ds_load_u8 v46, v86 offset:9728
	ds_load_u8 v47, v86 offset:9920
	ds_load_u8 v48, v86 offset:9856
	ds_load_u8 v111, v86 offset:9536
	ds_load_u8 v112, v86 offset:9472
	s_waitcnt lgkmcnt(40)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	s_waitcnt lgkmcnt(38)
	v_perm_b32 v10, v12, v11, 0xc0c0004
	s_waitcnt lgkmcnt(36)
	v_perm_b32 v11, v14, v13, 0xc0c0004
	s_waitcnt lgkmcnt(34)
	v_perm_b32 v13, v16, v15, 0xc0c0004
	s_waitcnt lgkmcnt(26)
	v_perm_b32 v14, v24, v23, 0xc0c0004
	s_waitcnt lgkmcnt(24)
	v_perm_b32 v15, v26, v25, 0xc0c0004
	v_lshl_or_b32 v12, v10, 16, v9
	v_perm_b32 v9, v18, v17, 0xc0c0004
	v_perm_b32 v10, v20, v19, 0xc0c0004
	s_waitcnt lgkmcnt(22)
	v_perm_b32 v16, v28, v27, 0xc0c0004
	s_waitcnt lgkmcnt(20)
	v_perm_b32 v17, v30, v29, 0xc0c0004
	s_waitcnt lgkmcnt(18)
	v_perm_b32 v18, v32, v31, 0xc0c0004
	ds_load_u8 v113, v86 offset:9664
	ds_load_u8 v116, v86 offset:9408
	ds_load_u8 v117, v86 offset:9344
	v_lshl_or_b32 v10, v10, 16, v9
	v_perm_b32 v9, v22, v21, 0xc0c0004
	ds_load_u8 v21, v88 offset:3968
	ds_load_u8 v22, v88 offset:3840
	ds_load_u8 v25, v88 offset:3456
	ds_load_u8 v26, v88 offset:3328
	v_lshl_or_b32 v9, v14, 16, v9
	v_lshl_or_b32 v20, v16, 16, v15
	s_waitcnt lgkmcnt(23)
	v_perm_b32 v14, v34, v33, 0xc0c0004
	s_waitcnt lgkmcnt(21)
	v_perm_b32 v15, v36, v35, 0xc0c0004
	v_lshl_or_b32 v19, v18, 16, v17
	s_waitcnt lgkmcnt(15)
	v_perm_b32 v16, v42, v41, 0xc0c0004
	v_lshl_or_b32 v11, v13, 16, v11
	ds_load_u8 v13, v86 offset:9280
	ds_load_u8 v115, v86 offset:9216
	v_lshl_or_b32 v18, v15, 16, v14
	v_perm_b32 v14, v38, v37, 0xc0c0004
	v_perm_b32 v15, v40, v39, 0xc0c0004
	ds_load_u8 v118, v88 offset:3712
	ds_load_u8 v119, v88 offset:3584
	ds_load_u8 v23, v88 offset:3200
	ds_load_u8 v24, v88 offset:3072
	ds_load_u8 v29, v88 offset:2944
	ds_load_u8 v30, v88 offset:2816
	v_lshl_or_b32 v17, v15, 16, v14
	s_waitcnt lgkmcnt(15)
	v_perm_b32 v14, v112, v111, 0xc0c0004
	ds_load_u8 v111, v88 offset:192
	s_waitcnt lgkmcnt(11)
	v_perm_b32 v21, v22, v21, 0xc0c0004
	ds_load_u8 v22, v88 offset:64
	ds_load_u8 v114, v86 offset:9600
	ds_load_u8 v31, v88 offset:2176
	ds_load_u8 v32, v88 offset:2048
	v_perm_b32 v36, v44, v43, 0xc0c0004
	v_perm_b32 v38, v46, v45, 0xc0c0004
	v_perm_b32 v40, v48, v47, 0xc0c0004
	ds_load_u8 v27, v88 offset:2688
	ds_load_u8 v28, v88 offset:2560
	s_waitcnt lgkmcnt(13)
	v_perm_b32 v13, v115, v13, 0xc0c0004
	v_lshl_or_b32 v16, v36, 16, v16
	ds_load_u8 v35, v88 offset:1728
	ds_load_u8 v37, v88 offset:1600
	ds_load_u8 v43, v88 offset:1344
	ds_load_u8 v45, v88 offset:960
	ds_load_u8 v47, v88 offset:832
	ds_load_u8 v112, v88 offset:448
	v_lshl_or_b32 v15, v40, 16, v38
	ds_load_u8 v36, v88 offset:1216
	ds_load_u8 v38, v88 offset:1088
	s_waitcnt lgkmcnt(19)
	v_perm_b32 v48, v119, v118, 0xc0c0004
	ds_load_u8 v40, v88 offset:1472
	ds_load_u8 v33, v88 offset:2432
	ds_load_u8 v34, v88 offset:2304
	ds_load_u8 v39, v88 offset:1984
	s_waitcnt lgkmcnt(16)
	v_perm_b32 v42, v114, v113, 0xc0c0004
	s_waitcnt lgkmcnt(14)
	v_perm_b32 v31, v32, v31, 0xc0c0004
	ds_load_u8 v32, v88 offset:3264
	v_perm_b32 v25, v26, v25, 0xc0c0004
	ds_load_u8 v113, v86 offset:9184
	ds_load_u8 v114, v86 offset:9120
	v_lshl_or_b32 v14, v42, 16, v14
	ds_load_u8 v42, v88 offset:704
	ds_load_u8 v44, v88 offset:576
	v_perm_b32 v46, v117, v116, 0xc0c0004
	s_waitcnt lgkmcnt(17)
	v_perm_b32 v27, v28, v27, 0xc0c0004
	ds_load_u8 v28, v88 offset:4032
	s_waitcnt lgkmcnt(16)
	v_perm_b32 v35, v37, v35, 0xc0c0004
	ds_load_u8 v37, v88 offset:3520
	v_lshl_or_b32 v13, v46, 16, v13
	s_waitcnt lgkmcnt(11)
	v_perm_b32 v36, v38, v36, 0xc0c0004
	v_perm_b32 v45, v47, v45, 0xc0c0004
	v_perm_b32 v47, v22, v111, 0xc0c0004
	ds_load_u8 v26, v88 offset:320
	s_waitcnt lgkmcnt(11)
	v_perm_b32 v40, v43, v40, 0xc0c0004
	ds_load_u8 v43, v88 offset:2624
	ds_load_u8 v111, v86 offset:9056
	ds_load_u8 v116, v86 offset:8800
	ds_load_u8 v117, v86 offset:8736
	ds_load_u8 v119, v86 offset:11072
	ds_load_u8 v120, v86 offset:11008
	.loc	1 330 29                        ; generate_amdgcn.py:330:29
	s_ashr_i32 s0, s3, 5
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_add_nc_u32_e32 v108, s22, v108
	.loc	1 334 40                        ; generate_amdgcn.py:334:40
	s_mul_i32 s17, s0, s23
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	s_waitcnt lgkmcnt(9)
	v_perm_b32 v42, v44, v42, 0xc0c0004
	ds_load_u8 v44, v88 offset:3008
	ds_load_u8 v46, v88 offset:2880
	ds_load_u8 v38, v88 offset:2752
	v_perm_b32 v23, v24, v23, 0xc0c0004
	v_lshl_or_b32 v24, v21, 16, v48
	v_perm_b32 v29, v30, v29, 0xc0c0004
	ds_load_u8 v30, v88 offset:3904
	ds_load_u8 v48, v88 offset:2112
	ds_load_u8 v41, v88 offset:1856
	v_lshl_or_b32 v23, v25, 16, v23
	ds_load_u8 v21, v88 offset:3776
	ds_load_u8 v25, v88 offset:3648
	s_waitcnt lgkmcnt(14)
	v_perm_b32 v26, v26, v112, 0xc0c0004
	v_lshl_or_b32 v42, v45, 16, v42
	ds_load_u8 v112, v86 offset:8992
	.loc	1 331 34                        ; generate_amdgcn.py:331:34
	s_cmp_lt_i32 s0, s30
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_add_nc_u32_e32 v106, s31, v106
	.loc	1 331 34                        ; generate_amdgcn.py:331:34
	s_cselect_b32 vcc_lo, -1, 0
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	s_waitcnt lgkmcnt(5)
	v_perm_b32 v28, v30, v28, 0xc0c0004
	s_waitcnt lgkmcnt(3)
	v_perm_b32 v39, v41, v39, 0xc0c0004
	ds_load_u8 v41, v88 offset:3392
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v25, v25, v21, 0xc0c0004
	ds_load_u8 v21, v88 offset:2496
	ds_load_u8 v30, v88 offset:2368
	ds_load_u8 v22, v88 offset:2240
	v_perm_b32 v33, v34, v33, 0xc0c0004
	ds_load_u8 v34, v88 offset:3136
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v30, v30, v21, 0xc0c0004
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v115, v48, v22, 0xc0c0004
	v_lshl_or_b32 v22, v29, 16, v27
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v32, v34, v32, 0xc0c0004
	v_perm_b32 v34, v41, v37, 0xc0c0004
	v_perm_b32 v37, v43, v38, 0xc0c0004
	v_perm_b32 v38, v46, v44, 0xc0c0004
	v_lshl_or_b32 v44, v39, 16, v35
	v_lshl_or_b32 v43, v40, 16, v36
	v_lshl_or_b32 v41, v26, 16, v47
	v_lshl_or_b32 v21, v33, 16, v31
	v_lshl_or_b32 v48, v28, 16, v25
	v_lshl_or_b32 v47, v34, 16, v32
	v_lshl_or_b32 v46, v38, 16, v37
	v_lshl_or_b32 v45, v30, 16, v115
	v_wmma_i32_16x16x16_iu8 v[33:40], v[17:20], v[9:12], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[25:32], v[41:44], v[9:12], v[1:8] neg_lo:[1,1,0]
	ds_load_u8 v9, v86 offset:8928
	ds_load_u8 v10, v86 offset:8864
	ds_load_u8 v11, v86 offset:8544
	ds_load_u8 v12, v86 offset:8480
	v_wmma_i32_16x16x16_iu8 v[33:40], v[21:24], v[13:16], v[33:40] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[25:32], v[45:48], v[13:16], v[25:32] neg_lo:[1,1,0]
	ds_load_u8 v14, v86 offset:8672
	ds_load_u8 v16, v86 offset:8608
	v_perm_b32 v13, v112, v111, 0xc0c0004
	v_perm_b32 v15, v114, v113, 0xc0c0004
	v_perm_b32 v111, v117, v116, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_2)
	v_lshl_or_b32 v114, v15, 16, v13
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v11, v12, v11, 0xc0c0004
	ds_load_u8 v12, v86 offset:8416
	v_lshl_or_b32 v113, v9, 16, v111
	ds_load_u8 v9, v86 offset:8224
	ds_load_u8 v10, v86 offset:8288
	s_waitcnt lgkmcnt(3)
	v_perm_b32 v13, v16, v14, 0xc0c0004
	ds_load_u8 v14, v86 offset:8352
	v_lshl_or_b32 v112, v13, 16, v11
	ds_load_u8 v11, v86 offset:10080
	ds_load_u8 v13, v86 offset:10016
	s_waitcnt lgkmcnt(3)
	v_perm_b32 v9, v9, v10, 0xc0c0004
	ds_load_u8 v10, v86 offset:10208
	s_waitcnt lgkmcnt(3)
	v_perm_b32 v12, v14, v12, 0xc0c0004
	ds_load_u8 v14, v86 offset:10144
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v11, v13, v11, 0xc0c0004
	ds_load_u8 v13, v86 offset:9824
	v_lshl_or_b32 v111, v12, 16, v9
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v10, v14, v10, 0xc0c0004
	ds_load_u8 v14, v86 offset:9760
	v_lshl_or_b32 v118, v10, 16, v11
	ds_load_u8 v9, v86 offset:9568
	ds_load_u8 v10, v86 offset:9504
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v13, v14, v13, 0xc0c0004
	ds_load_u8 v14, v86 offset:9952
	ds_load_u8 v15, v86 offset:9888
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	ds_load_u8 v10, v86 offset:9696
	ds_load_u8 v11, v86 offset:9632
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v14, v15, v14, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_lshl_or_b32 v117, v14, 16, v13
	v_lshl_or_b32 v116, v10, 16, v9
	ds_load_u8 v9, v86 offset:9312
	ds_load_u8 v10, v86 offset:9248
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	ds_load_u8 v10, v86 offset:9440
	ds_load_u8 v11, v86 offset:9376
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v115, v10, 16, v9
	v_wmma_i32_16x16x16_iu8 v[9:16], v[17:20], v[111:114], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[9:16], v[21:24], v[115:118], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[17:24], v[41:44], v[111:114], v[1:8] neg_lo:[1,1,0]
	v_perm_b32 v111, v120, v119, 0xc0c0004
	ds_load_u8 v112, v86 offset:10688
	v_cvt_f32_i32_e32 v10, v10
	v_wmma_i32_16x16x16_iu8 v[17:24], v[45:48], v[115:118], v[17:24] neg_lo:[1,1,0]
	ds_load_u8 v41, v86 offset:11200
	ds_load_u8 v42, v86 offset:11136
	ds_load_u8 v43, v86 offset:10816
	ds_load_u8 v44, v86 offset:10752
	ds_load_u8 v45, v86 offset:10944
	ds_load_u8 v46, v86 offset:10880
	ds_load_u8 v47, v86 offset:10560
	ds_load_u8 v48, v86 offset:10496
	v_cvt_f32_i32_e32 v9, v9
	v_cvt_f32_i32_e32 v12, v12
	v_cvt_f32_i32_e32 v11, v11
	v_cvt_f32_i32_e32 v14, v14
	v_cvt_f32_i32_e32 v13, v13
	v_cvt_f32_i32_e32 v16, v16
	v_cvt_f32_i32_e32 v15, v15
	v_cvt_f32_i32_e32 v18, v18
	v_cvt_f32_i32_e32 v20, v20
	v_cvt_f32_i32_e32 v19, v19
	v_cvt_f32_i32_e32 v22, v22
	v_cvt_f32_i32_e32 v17, v17
	v_cvt_f32_i32_e32 v24, v24
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v41, v42, v41, 0xc0c0004
	v_cvt_f32_i32_e32 v23, v23
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v43, v44, v43, 0xc0c0004
	v_cvt_f32_i32_e32 v21, v21
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v45, v46, v45, 0xc0c0004
	v_lshl_or_b32 v44, v41, 16, v111
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v46, v48, v47, 0xc0c0004
	ds_load_u8 v47, v86 offset:10432
	ds_load_u8 v48, v86 offset:10368
	v_lshl_or_b32 v43, v45, 16, v43
	ds_load_u8 v41, v86 offset:10304
	ds_load_u8 v45, v86 offset:10240
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v47, v48, v47, 0xc0c0004
	ds_load_u8 v48, v88 offset:5888
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v41, v45, v41, 0xc0c0004
	ds_load_u8 v45, v88 offset:6016
	ds_load_u8 v42, v86 offset:10624
	v_lshl_or_b32 v41, v47, 16, v41
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v42, v42, v112, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v42, v42, 16, v46
	ds_load_u8 v46, v88 offset:5760
	ds_load_u8 v111, v88 offset:5632
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v46, v111, v46, 0xc0c0004
	ds_load_u8 v111, v88 offset:5248
	v_perm_b32 v45, v48, v45, 0xc0c0004
	ds_load_u8 v48, v88 offset:5120
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v111, v48, v111, 0xc0c0004
	ds_load_u8 v48, v88 offset:5504
	ds_load_u8 v112, v88 offset:5376
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v112, v112, v48, 0xc0c0004
	v_lshl_or_b32 v48, v45, 16, v46
	ds_load_u8 v45, v88 offset:4736
	ds_load_u8 v46, v88 offset:4608
	v_lshl_or_b32 v47, v112, 16, v111
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v45, v46, v45, 0xc0c0004
	ds_load_u8 v46, v88 offset:4992
	ds_load_u8 v111, v88 offset:4864
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v46, v111, v46, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v46, v46, 16, v45
	ds_load_u8 v45, v88 offset:4224
	ds_load_u8 v111, v88 offset:4096
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v45, v111, v45, 0xc0c0004
	ds_load_u8 v111, v88 offset:4480
	ds_load_u8 v112, v88 offset:4352
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v111, v112, v111, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v45, v111, 16, v45
	ds_load_u8 v111, v86 offset:12096
	ds_load_u8 v112, v86 offset:12032
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v111, v112, v111, 0xc0c0004
	ds_load_u8 v112, v86 offset:12224
	ds_load_u8 v113, v86 offset:12160
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v112, v113, v112, 0xc0c0004
	ds_load_u8 v113, v86 offset:11840
	ds_load_u8 v114, v86 offset:11776
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v113, v114, v113, 0xc0c0004
	ds_load_u8 v114, v86 offset:11968
	ds_load_u8 v115, v86 offset:11904
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v115, v115, v114, 0xc0c0004
	v_lshl_or_b32 v114, v112, 16, v111
	ds_load_u8 v111, v86 offset:11584
	ds_load_u8 v112, v86 offset:11520
	v_lshl_or_b32 v113, v115, 16, v113
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v111, v112, v111, 0xc0c0004
	ds_load_u8 v112, v86 offset:11712
	ds_load_u8 v115, v86 offset:11648
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v112, v115, v112, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v112, v112, 16, v111
	ds_load_u8 v111, v86 offset:11328
	ds_load_u8 v115, v86 offset:11264
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v111, v115, v111, 0xc0c0004
	ds_load_u8 v115, v86 offset:11456
	ds_load_u8 v116, v86 offset:11392
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v115, v116, v115, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v111, v115, 16, v111
	ds_load_u8 v115, v88 offset:7808
	ds_load_u8 v116, v88 offset:7680
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v115, v116, v115, 0xc0c0004
	ds_load_u8 v116, v88 offset:8064
	ds_load_u8 v117, v88 offset:7936
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v116, v117, v116, 0xc0c0004
	ds_load_u8 v117, v88 offset:7296
	ds_load_u8 v118, v88 offset:7168
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v117, v118, v117, 0xc0c0004
	ds_load_u8 v118, v88 offset:7552
	ds_load_u8 v119, v88 offset:7424
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v119, v119, v118, 0xc0c0004
	v_lshl_or_b32 v118, v116, 16, v115
	ds_load_u8 v115, v88 offset:6784
	ds_load_u8 v116, v88 offset:6656
	v_lshl_or_b32 v117, v119, 16, v117
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v115, v116, v115, 0xc0c0004
	ds_load_u8 v116, v88 offset:7040
	ds_load_u8 v119, v88 offset:6912
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v116, v119, v116, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v116, v116, 16, v115
	ds_load_u8 v115, v88 offset:6272
	ds_load_u8 v119, v88 offset:6144
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v115, v119, v115, 0xc0c0004
	ds_load_u8 v119, v88 offset:6528
	ds_load_u8 v120, v88 offset:6400
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v119, v120, v119, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v115, v119, 16, v115
	ds_load_u8 v119, v88 offset:5824
	ds_load_u8 v120, v88 offset:5696
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v119, v120, v119, 0xc0c0004
	ds_load_u8 v120, v88 offset:6080
	ds_load_u8 v121, v88 offset:5952
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v120, v121, v120, 0xc0c0004
	ds_load_u8 v121, v88 offset:5312
	ds_load_u8 v122, v88 offset:5184
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v121, v122, v121, 0xc0c0004
	ds_load_u8 v122, v88 offset:5568
	ds_load_u8 v123, v88 offset:5440
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v123, v123, v122, 0xc0c0004
	v_lshl_or_b32 v122, v120, 16, v119
	ds_load_u8 v119, v88 offset:4800
	ds_load_u8 v120, v88 offset:4672
	v_lshl_or_b32 v121, v123, 16, v121
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v119, v120, v119, 0xc0c0004
	ds_load_u8 v120, v88 offset:5056
	ds_load_u8 v123, v88 offset:4928
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v120, v123, v120, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v120, v120, 16, v119
	ds_load_u8 v119, v88 offset:4288
	ds_load_u8 v123, v88 offset:4160
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v119, v123, v119, 0xc0c0004
	ds_load_u8 v123, v88 offset:4544
	ds_load_u8 v124, v88 offset:4416
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v123, v124, v123, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v119, v123, 16, v119
	ds_load_u8 v123, v88 offset:7872
	ds_load_u8 v124, v88 offset:7744
	v_wmma_i32_16x16x16_iu8 v[135:142], v[119:122], v[41:44], v[1:8] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v123, v124, v123, 0xc0c0004
	ds_load_u8 v124, v88 offset:8128
	ds_load_u8 v125, v88 offset:8000
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v124, v125, v124, 0xc0c0004
	ds_load_u8 v125, v88 offset:7360
	ds_load_u8 v126, v88 offset:7232
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v125, v126, v125, 0xc0c0004
	ds_load_u8 v126, v88 offset:7616
	ds_load_u8 v127, v88 offset:7488
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v127, v127, v126, 0xc0c0004
	v_lshl_or_b32 v126, v124, 16, v123
	ds_load_u8 v123, v88 offset:6848
	ds_load_u8 v124, v88 offset:6720
	v_lshl_or_b32 v125, v127, 16, v125
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v123, v124, v123, 0xc0c0004
	ds_load_u8 v124, v88 offset:7104
	ds_load_u8 v127, v88 offset:6976
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v124, v127, v124, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v124, v124, 16, v123
	ds_load_u8 v123, v88 offset:6336
	ds_load_u8 v127, v88 offset:6208
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v123, v127, v123, 0xc0c0004
	ds_load_u8 v127, v88 offset:6592
	ds_load_u8 v128, v88 offset:6464
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v127, v128, v127, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v123, v127, 16, v123
	v_wmma_i32_16x16x16_iu8 v[127:134], v[45:48], v[41:44], v[1:8] neg_lo:[1,1,0]
	ds_load_u8 v41, v86 offset:11104
	ds_load_u8 v42, v86 offset:11040
	v_wmma_i32_16x16x16_iu8 v[135:142], v[123:126], v[111:114], v[135:142] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[127:134], v[115:118], v[111:114], v[127:134] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v41, v42, v41, 0xc0c0004
	ds_load_u8 v42, v86 offset:11232
	ds_load_u8 v43, v86 offset:11168
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v42, v43, v42, 0xc0c0004
	ds_load_u8 v43, v86 offset:10848
	ds_load_u8 v44, v86 offset:10784
	v_lshl_or_b32 v114, v42, 16, v41
	ds_load_u8 v41, v86 offset:10592
	ds_load_u8 v42, v86 offset:10528
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v43, v44, v43, 0xc0c0004
	ds_load_u8 v44, v86 offset:10976
	ds_load_u8 v111, v86 offset:10912
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v41, v42, v41, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v44, v111, v44, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v113, v44, 16, v43
	ds_load_u8 v42, v86 offset:10720
	ds_load_u8 v43, v86 offset:10656
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v42, v43, v42, 0xc0c0004
	v_lshl_or_b32 v112, v42, 16, v41
	ds_load_u8 v41, v86 offset:10336
	ds_load_u8 v42, v86 offset:10272
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v41, v42, v41, 0xc0c0004
	ds_load_u8 v42, v86 offset:10464
	ds_load_u8 v43, v86 offset:10400
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v42, v43, v42, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v111, v42, 16, v41
	ds_load_u8 v41, v86 offset:12128
	ds_load_u8 v42, v86 offset:12064
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v41, v42, v41, 0xc0c0004
	ds_load_u8 v42, v86 offset:12256
	ds_load_u8 v43, v86 offset:12192
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v42, v43, v42, 0xc0c0004
	ds_load_u8 v43, v86 offset:11872
	ds_load_u8 v44, v86 offset:11808
	v_lshl_or_b32 v154, v42, 16, v41
	ds_load_u8 v41, v86 offset:11616
	ds_load_u8 v42, v86 offset:11552
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v43, v44, v43, 0xc0c0004
	ds_load_u8 v44, v86 offset:12000
	ds_load_u8 v143, v86 offset:11936
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v41, v42, v41, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v44, v143, v44, 0xc0c0004
	v_wmma_i32_16x16x16_iu8 v[143:150], v[45:48], v[111:114], v[1:8] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v153, v44, 16, v43
	ds_load_u8 v42, v86 offset:11744
	ds_load_u8 v43, v86 offset:11680
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v42, v43, v42, 0xc0c0004
	v_lshl_or_b32 v152, v42, 16, v41
	ds_load_u8 v41, v86 offset:11360
	ds_load_u8 v42, v86 offset:11296
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v41, v42, v41, 0xc0c0004
	ds_load_u8 v42, v86 offset:11488
	ds_load_u8 v43, v86 offset:11424
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v42, v43, v42, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_4)
	v_lshl_or_b32 v151, v42, 16, v41
	v_wmma_i32_16x16x16_iu8 v[41:48], v[119:122], v[111:114], v[1:8] neg_lo:[1,1,0]
	v_cvt_f32_i32_e32 v113, v29
	v_cvt_f32_i32_e32 v121, v37
	v_cvt_f32_i32_e32 v120, v40
	v_wmma_i32_16x16x16_iu8 v[41:48], v[123:126], v[151:154], v[41:48] neg_lo:[1,1,0]
	v_cvt_f32_i32_e32 v125, v33
	v_cvt_f32_i32_e32 v33, v135
	.loc	1 332 22                        ; generate_amdgcn.py:332:22
	v_add_lshl_u32 v135, v89, s0, 1
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	v_cvt_f32_i32_e32 v126, v34
	v_cvt_f32_i32_e32 v34, v136
	.loc	1 334 22                        ; generate_amdgcn.py:334:22
	v_add_lshl_u32 v136, v91, s17, 1
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	v_cvt_f32_i32_e32 v124, v36
	.loc	1 332 22                        ; generate_amdgcn.py:332:22
	v_cndmask_b32_e32 v135, 0x80000000, v135, vcc_lo
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	v_cvt_f32_i32_e32 v123, v35
	v_cvt_f32_i32_e32 v122, v38
	.loc	1 334 22                        ; generate_amdgcn.py:334:22
	v_cndmask_b32_e32 v136, 0x80000000, v136, vcc_lo
	.loc	1 332 22                        ; generate_amdgcn.py:332:22
	buffer_load_u16 v135, v135, s[12:15], 0 offen
	.loc	1 334 22                        ; generate_amdgcn.py:334:22
	buffer_load_u16 v136, v136, s[8:11], 0 offen
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	v_cvt_f32_i32_e32 v119, v39
	v_cvt_f32_i32_e32 v112, v32
	v_wmma_i32_16x16x16_iu8 v[143:150], v[115:118], v[151:154], v[143:150] neg_lo:[1,1,0]
	v_cvt_f32_i32_e32 v117, v25
	v_cvt_f32_i32_e32 v118, v26
	v_cvt_f32_i32_e32 v116, v28
	v_cvt_f32_i32_e32 v111, v31
	v_cvt_f32_i32_e32 v115, v27
	v_cvt_f32_i32_e32 v114, v30
	v_cvt_f32_i32_e32 v26, v128
	v_cvt_f32_i32_e32 v128, v144
	v_cvt_f32_i32_e32 v28, v130
	v_cvt_f32_i32_e32 v130, v146
	v_cvt_f32_i32_e32 v30, v132
	v_cvt_f32_i32_e32 v32, v134
	v_cvt_f32_i32_e32 v132, v148
	v_cvt_f32_i32_e32 v134, v150
	v_cvt_f32_i32_e32 v43, v43
	v_cvt_f32_i32_e32 v25, v127
	v_cvt_f32_i32_e32 v127, v143
	v_cvt_f32_i32_e32 v29, v131
	v_cvt_f32_i32_e32 v131, v147
	v_cvt_f32_i32_e32 v42, v42
	v_cvt_f32_i32_e32 v44, v44
	v_cvt_f32_i32_e32 v46, v46
	v_cvt_f32_i32_e32 v48, v48
	v_cvt_f32_i32_e32 v47, v47
	v_cvt_f32_i32_e32 v41, v41
	v_cvt_f32_i32_e32 v27, v129
	v_cvt_f32_i32_e32 v35, v137
	v_cvt_f32_i32_e32 v31, v133
	v_cvt_f32_i32_e32 v36, v138
	v_cvt_f32_i32_e32 v37, v139
	v_cvt_f32_i32_e32 v38, v140
	v_cvt_f32_i32_e32 v39, v141
	v_cvt_f32_i32_e32 v40, v142
	v_cvt_f32_i32_e32 v129, v145
	v_cvt_f32_i32_e32 v133, v149
	v_cvt_f32_i32_e32 v45, v45
	.loc	1 332 22                        ; generate_amdgcn.py:332:22
	s_waitcnt vmcnt(1)
	v_lshlrev_b32_e32 v135, 16, v135
	.loc	1 334 22                        ; generate_amdgcn.py:334:22
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v136, 16, v136
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	v_mul_f32_e32 v126, v126, v135
	.loc	1 336 17 is_stmt 0              ; generate_amdgcn.py:336:17
	v_fmac_f32_e32 v85, v126, v136
	.loc	1 332 22 is_stmt 1              ; generate_amdgcn.py:332:22
	v_add_lshl_u32 v126, v90, s0, 1
	.loc	1 330 29                        ; generate_amdgcn.py:330:29
	s_ashr_i32 s0, s16, 5
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 331 34                        ; generate_amdgcn.py:331:34
	s_cmp_lt_i32 s0, s30
	.loc	1 334 40                        ; generate_amdgcn.py:334:40
	s_mul_i32 s16, s0, s23
	.loc	1 332 22                        ; generate_amdgcn.py:332:22
	v_dual_cndmask_b32 v126, 0x80000000, v126 :: v_dual_mul_f32 v125, v125, v135
	buffer_load_u16 v126, v126, s[12:15], 0 offen
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v126, 16, v126
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	v_mul_f32_e32 v10, v126, v10
	v_mul_f32_e32 v9, v126, v9
	.loc	1 336 17 is_stmt 0              ; generate_amdgcn.py:336:17
	v_fmac_f32_e32 v65, v10, v136
	.loc	1 334 22 is_stmt 1              ; generate_amdgcn.py:334:22
	v_add_lshl_u32 v10, v87, s17, 1
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	v_cndmask_b32_e32 v10, 0x80000000, v10, vcc_lo
	buffer_load_u16 v10, v10, s[8:11], 0 offen
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v10, 16, v10
	.loc	1 336 17                        ; generate_amdgcn.py:336:17
	v_fmac_f32_e32 v82, v125, v10
	v_fmac_f32_e32 v64, v9, v10
	.loc	1 334 22                        ; generate_amdgcn.py:334:22
	v_add_lshl_u32 v9, v93, s17, 1
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	v_dual_mul_f32 v10, v124, v135 :: v_dual_cndmask_b32 v9, 0x80000000, v9
	.loc	1 334 22                        ; generate_amdgcn.py:334:22
	buffer_load_u16 v9, v9, s[8:11], 0 offen
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v9, 16, v9
	.loc	1 336 17                        ; generate_amdgcn.py:336:17
	v_fmac_f32_e32 v81, v10, v9
	.loc	1 336 24 is_stmt 0              ; generate_amdgcn.py:336:24
	v_mul_f32_e32 v10, v126, v12
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 336 17                        ; generate_amdgcn.py:336:17
	v_fmac_f32_e32 v62, v10, v9
	.loc	1 334 22 is_stmt 1              ; generate_amdgcn.py:334:22
	v_add_lshl_u32 v9, v92, s17, 1
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	v_dual_mul_f32 v10, v123, v135 :: v_dual_cndmask_b32 v9, 0x80000000, v9
	.loc	1 334 22                        ; generate_amdgcn.py:334:22
	buffer_load_u16 v9, v9, s[8:11], 0 offen
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v9, 16, v9
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	.loc	1 336 17                        ; generate_amdgcn.py:336:17
	v_fmac_f32_e32 v83, v10, v9
	.loc	1 336 24 is_stmt 0              ; generate_amdgcn.py:336:24
	v_mul_f32_e32 v10, v126, v11
	v_mul_f32_e32 v11, v113, v135
	.loc	1 336 17                        ; generate_amdgcn.py:336:17
	v_fmac_f32_e32 v61, v10, v9
	.loc	1 334 22 is_stmt 1              ; generate_amdgcn.py:334:22
	v_add_lshl_u32 v9, v95, s17, 1
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	v_dual_mul_f32 v10, v122, v135 :: v_dual_cndmask_b32 v9, 0x80000000, v9
	.loc	1 334 22                        ; generate_amdgcn.py:334:22
	buffer_load_u16 v9, v9, s[8:11], 0 offen
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v9, 16, v9
	.loc	1 336 17                        ; generate_amdgcn.py:336:17
	v_fmac_f32_e32 v79, v10, v9
	.loc	1 336 24 is_stmt 0              ; generate_amdgcn.py:336:24
	v_mul_f32_e32 v10, v126, v14
	v_mul_f32_e32 v14, v126, v24
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	.loc	1 336 17                        ; generate_amdgcn.py:336:17
	v_fmac_f32_e32 v60, v10, v9
	.loc	1 334 22 is_stmt 1              ; generate_amdgcn.py:334:22
	v_add_lshl_u32 v9, v94, s17, 1
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	v_mul_f32_e32 v10, v121, v135
	v_mul_f32_e32 v12, v126, v21
	.loc	1 334 22                        ; generate_amdgcn.py:334:22
	v_cndmask_b32_e32 v9, 0x80000000, v9, vcc_lo
	buffer_load_u16 v9, v9, s[8:11], 0 offen
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v9, 16, v9
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 336 17                        ; generate_amdgcn.py:336:17
	v_fmac_f32_e32 v80, v10, v9
	.loc	1 336 24 is_stmt 0              ; generate_amdgcn.py:336:24
	v_dual_mul_f32 v10, v126, v13 :: v_dual_mul_f32 v13, v112, v135
	.loc	1 336 17                        ; generate_amdgcn.py:336:17
	v_fmac_f32_e32 v59, v10, v9
	.loc	1 334 22 is_stmt 1              ; generate_amdgcn.py:334:22
	v_add_lshl_u32 v9, v97, s17, 1
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	v_dual_mul_f32 v10, v120, v135 :: v_dual_cndmask_b32 v9, 0x80000000, v9
	.loc	1 334 22                        ; generate_amdgcn.py:334:22
	buffer_load_u16 v9, v9, s[8:11], 0 offen
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v9, 16, v9
	.loc	1 336 17                        ; generate_amdgcn.py:336:17
	v_fmac_f32_e32 v77, v10, v9
	.loc	1 336 24 is_stmt 0              ; generate_amdgcn.py:336:24
	v_mul_f32_e32 v10, v126, v16
	.loc	1 334 22 is_stmt 1              ; generate_amdgcn.py:334:22
	v_add_lshl_u32 v16, v93, s16, 1
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 336 17                        ; generate_amdgcn.py:336:17
	v_fmac_f32_e32 v58, v10, v9
	.loc	1 334 22                        ; generate_amdgcn.py:334:22
	v_add_lshl_u32 v9, v96, s17, 1
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	v_dual_mul_f32 v10, v119, v135 :: v_dual_cndmask_b32 v9, 0x80000000, v9
	.loc	1 334 22                        ; generate_amdgcn.py:334:22
	buffer_load_u16 v9, v9, s[8:11], 0 offen
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v9, 16, v9
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	.loc	1 336 17                        ; generate_amdgcn.py:336:17
	v_fmac_f32_e32 v78, v10, v9
	.loc	1 336 24 is_stmt 0              ; generate_amdgcn.py:336:24
	v_mul_f32_e32 v10, v126, v15
	v_mul_f32_e32 v15, v111, v135
	.loc	1 336 17                        ; generate_amdgcn.py:336:17
	v_fmac_f32_e32 v57, v10, v9
	.loc	1 334 22 is_stmt 1              ; generate_amdgcn.py:334:22
	v_add_lshl_u32 v9, v99, s17, 1
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	v_dual_mul_f32 v10, v118, v135 :: v_dual_cndmask_b32 v9, 0x80000000, v9
	.loc	1 334 22                        ; generate_amdgcn.py:334:22
	buffer_load_u16 v9, v9, s[8:11], 0 offen
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v9, 16, v9
	.loc	1 336 17                        ; generate_amdgcn.py:336:17
	v_fmac_f32_e32 v74, v10, v9
	.loc	1 336 24 is_stmt 0              ; generate_amdgcn.py:336:24
	v_mul_f32_e32 v10, v126, v18
	.loc	1 334 22 is_stmt 1              ; generate_amdgcn.py:334:22
	v_add_lshl_u32 v18, v94, s16, 1
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 336 17                        ; generate_amdgcn.py:336:17
	v_fmac_f32_e32 v56, v10, v9
	.loc	1 334 22                        ; generate_amdgcn.py:334:22
	v_add_lshl_u32 v9, v98, s17, 1
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	v_dual_mul_f32 v10, v117, v135 :: v_dual_cndmask_b32 v9, 0x80000000, v9
	.loc	1 334 22                        ; generate_amdgcn.py:334:22
	buffer_load_u16 v9, v9, s[8:11], 0 offen
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v9, 16, v9
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	.loc	1 336 17                        ; generate_amdgcn.py:336:17
	v_fmac_f32_e32 v76, v10, v9
	.loc	1 336 24 is_stmt 0              ; generate_amdgcn.py:336:24
	v_mul_f32_e32 v10, v126, v17
	v_mul_f32_e32 v17, v126, v23
	.loc	1 336 17                        ; generate_amdgcn.py:336:17
	v_fmac_f32_e32 v55, v10, v9
	.loc	1 334 22 is_stmt 1              ; generate_amdgcn.py:334:22
	v_add_lshl_u32 v9, v101, s17, 1
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	v_dual_mul_f32 v10, v116, v135 :: v_dual_cndmask_b32 v9, 0x80000000, v9
	.loc	1 334 22                        ; generate_amdgcn.py:334:22
	buffer_load_u16 v9, v9, s[8:11], 0 offen
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v9, 16, v9
	.loc	1 336 17                        ; generate_amdgcn.py:336:17
	v_fmac_f32_e32 v72, v10, v9
	.loc	1 336 24 is_stmt 0              ; generate_amdgcn.py:336:24
	v_mul_f32_e32 v10, v126, v20
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 336 17                        ; generate_amdgcn.py:336:17
	v_fmac_f32_e32 v54, v10, v9
	.loc	1 334 22 is_stmt 1              ; generate_amdgcn.py:334:22
	v_add_lshl_u32 v9, v100, s17, 1
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	v_dual_mul_f32 v10, v115, v135 :: v_dual_cndmask_b32 v9, 0x80000000, v9
	.loc	1 334 22                        ; generate_amdgcn.py:334:22
	buffer_load_u16 v9, v9, s[8:11], 0 offen
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v9, 16, v9
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 336 17                        ; generate_amdgcn.py:336:17
	v_fmac_f32_e32 v73, v10, v9
	.loc	1 336 24 is_stmt 0              ; generate_amdgcn.py:336:24
	v_mul_f32_e32 v10, v126, v19
	.loc	1 336 17                        ; generate_amdgcn.py:336:17
	v_fmac_f32_e32 v53, v10, v9
	.loc	1 334 22 is_stmt 1              ; generate_amdgcn.py:334:22
	v_add_lshl_u32 v9, v103, s17, 1
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	v_dual_mul_f32 v10, v114, v135 :: v_dual_cndmask_b32 v9, 0x80000000, v9
	.loc	1 334 22                        ; generate_amdgcn.py:334:22
	buffer_load_u16 v9, v9, s[8:11], 0 offen
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v9, 16, v9
	.loc	1 336 17                        ; generate_amdgcn.py:336:17
	v_fmac_f32_e32 v70, v10, v9
	.loc	1 336 24 is_stmt 0              ; generate_amdgcn.py:336:24
	v_mul_f32_e32 v10, v126, v22
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 336 17                        ; generate_amdgcn.py:336:17
	v_fmac_f32_e32 v51, v10, v9
	.loc	1 334 22 is_stmt 1              ; generate_amdgcn.py:334:22
	v_add_lshl_u32 v9, v102, s17, 1
	v_add_lshl_u32 v10, v104, s17, 1
	v_dual_cndmask_b32 v9, 0x80000000, v9 :: v_dual_cndmask_b32 v10, 0x80000000, v10
	s_clause 0x1
	buffer_load_u16 v9, v9, s[8:11], 0 offen
	buffer_load_u16 v10, v10, s[8:11], 0 offen
	s_waitcnt vmcnt(1)
	v_lshlrev_b32_e32 v9, 16, v9
	.loc	1 336 17                        ; generate_amdgcn.py:336:17
	s_waitcnt vmcnt(0)
	s_delay_alu instid0(VALU_DEP_1)
	v_dual_fmac_f32 v71, v11, v9 :: v_dual_lshlrev_b32 v10, 16, v10
	.loc	1 334 22                        ; generate_amdgcn.py:334:22
	v_add_lshl_u32 v11, v105, s17, 1
	.loc	1 336 17                        ; generate_amdgcn.py:336:17
	v_fmac_f32_e32 v52, v12, v9
	.loc	1 332 22                        ; generate_amdgcn.py:332:22
	v_add_lshl_u32 v9, v89, s0, 1
	v_add_lshl_u32 v12, v90, s0, 1
	.loc	1 331 34                        ; generate_amdgcn.py:331:34
	s_cselect_b32 s0, -1, 0
	.loc	1 334 22                        ; generate_amdgcn.py:334:22
	v_cndmask_b32_e32 v11, 0x80000000, v11, vcc_lo
	.loc	1 336 17                        ; generate_amdgcn.py:336:17
	v_fmac_f32_e32 v69, v15, v10
	.loc	1 334 22                        ; generate_amdgcn.py:334:22
	v_add_lshl_u32 v15, v95, s16, 1
	.loc	1 332 22                        ; generate_amdgcn.py:332:22
	v_cndmask_b32_e64 v9, 0x80000000, v9, s0
	v_cndmask_b32_e64 v12, 0x80000000, v12, s0
	.loc	1 334 22                        ; generate_amdgcn.py:334:22
	buffer_load_u16 v11, v11, s[8:11], 0 offen
	v_cndmask_b32_e64 v18, 0x80000000, v18, s0
	v_cndmask_b32_e64 v15, 0x80000000, v15, s0
	.loc	1 332 22                        ; generate_amdgcn.py:332:22
	s_clause 0x1
	buffer_load_u16 v9, v9, s[12:15], 0 offen
	buffer_load_u16 v12, v12, s[12:15], 0 offen
	.loc	1 334 22                        ; generate_amdgcn.py:334:22
	v_cndmask_b32_e64 v16, 0x80000000, v16, s0
	s_clause 0x1
	buffer_load_u16 v18, v18, s[8:11], 0 offen
	buffer_load_u16 v15, v15, s[8:11], 0 offen
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_add_i32 s1, s1, -1
	s_add_i32 s3, s3, 64
	.loc	1 334 22                        ; generate_amdgcn.py:334:22
	buffer_load_u16 v16, v16, s[8:11], 0 offen
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_cmp_lg_u32 s1, 0
	.loc	1 334 22                        ; generate_amdgcn.py:334:22
	s_waitcnt vmcnt(5)
	v_lshlrev_b32_e32 v11, 16, v11
	.loc	1 332 22                        ; generate_amdgcn.py:332:22
	s_waitcnt vmcnt(3)
	v_lshlrev_b32_e32 v12, 16, v12
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 336 17                        ; generate_amdgcn.py:336:17
	v_fmac_f32_e32 v68, v13, v11
	.loc	1 334 22                        ; generate_amdgcn.py:334:22
	v_add_lshl_u32 v13, v87, s16, 1
	.loc	1 336 17                        ; generate_amdgcn.py:336:17
	v_fmac_f32_e32 v49, v14, v11
	.loc	1 334 22                        ; generate_amdgcn.py:334:22
	v_add_lshl_u32 v11, v91, s16, 1
	v_add_lshl_u32 v14, v92, s16, 1
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	s_waitcnt vmcnt(2)
	v_dual_mul_f32 v41, v12, v41 :: v_dual_lshlrev_b32 v18, 16, v18
	.loc	1 334 22                        ; generate_amdgcn.py:334:22
	v_cndmask_b32_e64 v13, 0x80000000, v13, s0
	v_cndmask_b32_e64 v11, 0x80000000, v11, s0
	v_cndmask_b32_e64 v14, 0x80000000, v14, s0
	.loc	1 332 22                        ; generate_amdgcn.py:332:22
	v_lshlrev_b32_e32 v9, 16, v9
	.loc	1 334 22                        ; generate_amdgcn.py:334:22
	s_waitcnt vmcnt(1)
	v_lshlrev_b32_e32 v15, 16, v15
	buffer_load_u16 v13, v13, s[8:11], 0 offen
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	v_mul_f32_e32 v111, v12, v134
	.loc	1 334 22                        ; generate_amdgcn.py:334:22
	s_clause 0x1
	buffer_load_u16 v14, v14, s[8:11], 0 offen
	buffer_load_u16 v11, v11, s[8:11], 0 offen
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	v_dual_mul_f32 v23, v29, v9 :: v_dual_mul_f32 v42, v12, v42
	v_mul_f32_e32 v44, v12, v44
	v_mul_f32_e32 v43, v12, v43
	v_mul_f32_e32 v46, v12, v46
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 336 17 is_stmt 0              ; generate_amdgcn.py:336:17
	v_fmac_f32_e32 v80, v23, v18
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	v_mul_f32_e32 v20, v26, v9
	v_mul_f32_e32 v24, v30, v9
	s_waitcnt vmcnt(3)
	v_dual_mul_f32 v19, v25, v9 :: v_dual_lshlrev_b32 v16, 16, v16
	v_mul_f32_e32 v21, v27, v9
	v_mul_f32_e32 v22, v28, v9
	v_dual_mul_f32 v28, v34, v9 :: v_dual_fmac_f32 v79, v24, v15
	v_mul_f32_e32 v29, v35, v9
	v_dual_mul_f32 v35, v12, v128 :: v_dual_fmac_f32 v50, v17, v10
	.loc	1 334 22 is_stmt 1              ; generate_amdgcn.py:334:22
	v_add_lshl_u32 v17, v97, s16, 1
	v_add_lshl_u32 v10, v96, s16, 1
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	v_mul_f32_e32 v25, v31, v9
	v_dual_mul_f32 v26, v32, v9 :: v_dual_fmac_f32 v81, v22, v16
	v_mul_f32_e32 v27, v33, v9
	v_mul_f32_e32 v30, v36, v9
	v_mul_f32_e32 v31, v37, v9
	v_mul_f32_e32 v32, v38, v9
	v_mul_f32_e32 v33, v39, v9
	v_mul_f32_e32 v9, v40, v9
	v_mul_f32_e32 v36, v12, v127
	v_mul_f32_e32 v37, v12, v130
	v_mul_f32_e32 v38, v12, v129
	v_mul_f32_e32 v39, v12, v132
	v_mul_f32_e32 v40, v12, v131
	v_mul_f32_e32 v112, v12, v133
	v_mul_f32_e32 v45, v12, v45
	v_mul_f32_e32 v48, v12, v48
	v_mul_f32_e32 v12, v12, v47
	.loc	1 334 22                        ; generate_amdgcn.py:334:22
	v_add_lshl_u32 v47, v99, s16, 1
	v_add_lshl_u32 v34, v98, s16, 1
	v_add_lshl_u32 v22, v103, s16, 1
	v_add_lshl_u32 v23, v104, s16, 1
	v_add_lshl_u32 v24, v105, s16, 1
	v_cndmask_b32_e64 v17, 0x80000000, v17, s0
	v_cndmask_b32_e64 v10, 0x80000000, v10, s0
	v_cndmask_b32_e64 v47, 0x80000000, v47, s0
	v_cndmask_b32_e64 v34, 0x80000000, v34, s0
	v_cndmask_b32_e64 v23, 0x80000000, v23, s0
	v_cndmask_b32_e64 v24, 0x80000000, v24, s0
	v_cndmask_b32_e64 v22, 0x80000000, v22, s0
	.loc	1 336 17                        ; generate_amdgcn.py:336:17
	v_fmac_f32_e32 v60, v39, v15
	s_waitcnt vmcnt(2)
	v_dual_fmac_f32 v62, v37, v16 :: v_dual_lshlrev_b32 v13, 16, v13
	.loc	1 334 22                        ; generate_amdgcn.py:334:22
	s_waitcnt vmcnt(1)
	v_lshlrev_b32_e32 v14, 16, v14
	.loc	1 336 17                        ; generate_amdgcn.py:336:17
	s_waitcnt vmcnt(0)
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_dual_fmac_f32 v82, v19, v13 :: v_dual_lshlrev_b32 v11, 16, v11
	.loc	1 334 22                        ; generate_amdgcn.py:334:22
	v_add_lshl_u32 v19, v100, s16, 1
	.loc	1 336 17                        ; generate_amdgcn.py:336:17
	v_fmac_f32_e32 v83, v21, v14
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_4) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v85, v20, v11
	.loc	1 334 22                        ; generate_amdgcn.py:334:22
	v_add_lshl_u32 v20, v101, s16, 1
	v_add_lshl_u32 v21, v102, s16, 1
	v_cndmask_b32_e64 v19, 0x80000000, v19, s0
	.loc	1 336 17                        ; generate_amdgcn.py:336:17
	v_fmac_f32_e32 v65, v35, v11
	.loc	1 334 22                        ; generate_amdgcn.py:334:22
	v_cndmask_b32_e64 v20, 0x80000000, v20, s0
	s_delay_alu instid0(VALU_DEP_4)
	v_cndmask_b32_e64 v21, 0x80000000, v21, s0
	s_clause 0x9
	buffer_load_u16 v17, v17, s[8:11], 0 offen
	buffer_load_u16 v10, v10, s[8:11], 0 offen
	buffer_load_u16 v47, v47, s[8:11], 0 offen
	buffer_load_u16 v34, v34, s[8:11], 0 offen
	buffer_load_u16 v20, v20, s[8:11], 0 offen
	buffer_load_u16 v19, v19, s[8:11], 0 offen
	buffer_load_u16 v22, v22, s[8:11], 0 offen
	buffer_load_u16 v21, v21, s[8:11], 0 offen
	buffer_load_u16 v24, v24, s[8:11], 0 offen
	buffer_load_u16 v23, v23, s[8:11], 0 offen
	s_waitcnt vmcnt(8)
	v_lshlrev_b32_e32 v10, 16, v10
	s_waitcnt vmcnt(7)
	v_lshlrev_b32_e32 v47, 16, v47
	s_waitcnt vmcnt(6)
	v_lshlrev_b32_e32 v34, 16, v34
	s_waitcnt vmcnt(5)
	v_lshlrev_b32_e32 v20, 16, v20
	s_waitcnt vmcnt(4)
	v_lshlrev_b32_e32 v19, 16, v19
	s_waitcnt vmcnt(3)
	v_lshlrev_b32_e32 v22, 16, v22
	v_lshlrev_b32_e32 v17, 16, v17
	s_waitcnt vmcnt(1)
	v_lshlrev_b32_e32 v24, 16, v24
	.loc	1 336 17                        ; generate_amdgcn.py:336:17
	s_waitcnt vmcnt(0)
	v_dual_fmac_f32 v78, v25, v10 :: v_dual_lshlrev_b32 v23, 16, v23
	.loc	1 334 22                        ; generate_amdgcn.py:334:22
	v_lshlrev_b32_e32 v21, 16, v21
	.loc	1 336 17                        ; generate_amdgcn.py:336:17
	v_dual_fmac_f32 v72, v30, v20 :: v_dual_add_nc_u32 v109, s22, v109
	v_fmac_f32_e32 v76, v27, v34
	v_fmac_f32_e32 v74, v28, v47
	v_dual_fmac_f32 v73, v29, v19 :: v_dual_fmac_f32 v70, v32, v22
	v_fmac_f32_e32 v77, v26, v17
	v_fmac_f32_e32 v69, v33, v23
	v_dual_fmac_f32 v68, v9, v24 :: v_dual_fmac_f32 v71, v31, v21
	v_fmac_f32_e32 v56, v42, v47
	v_dual_fmac_f32 v64, v36, v13 :: v_dual_fmac_f32 v61, v38, v14
	v_dual_fmac_f32 v59, v40, v18 :: v_dual_fmac_f32 v58, v111, v17
	v_dual_fmac_f32 v57, v112, v10 :: v_dual_fmac_f32 v52, v45, v21
	v_dual_fmac_f32 v55, v41, v34 :: v_dual_fmac_f32 v54, v44, v20
	v_fmac_f32_e32 v53, v43, v19
	v_dual_fmac_f32 v51, v46, v22 :: v_dual_fmac_f32 v50, v12, v23
	v_fmac_f32_e32 v49, v48, v24
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_cbranch_scc1 .LBB0_2
.LBB0_3:                                ; %._crit_edge
	.loc	1 300 32                        ; generate_amdgcn.py:300:32
	v_and_b32_e32 v1, 56, v67
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_bfe_u32 v2, v82, 16, 1
	.loc	1 390 18 is_stmt 0              ; generate_amdgcn.py:390:18
	s_mul_i32 s0, s29, s23
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cmp_o_f32_e32 vcc_lo, v82, v82
	.loc	1 390 18                        ; generate_amdgcn.py:390:18
	s_add_i32 s0, s0, s2
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_bfe_u32 v4, v83, 16, 1
	.loc	1 390 18                        ; generate_amdgcn.py:390:18
	v_or_b32_e32 v18, s0, v1
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_add3_u32 v2, v82, v2, 0x7fff
	.loc	1 390 18                        ; generate_amdgcn.py:390:18
	v_add3_u32 v19, s0, v1, 64
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_bfe_u32 v1, v85, 16, 1
	v_bfe_u32 v5, v81, 16, 1
	v_add3_u32 v4, v83, v4, 0x7fff
	v_cndmask_b16 v2.l, 0x7fff, v2.h, vcc_lo
	v_cmp_o_f32_e32 vcc_lo, v85, v85
	v_add3_u32 v1, v85, v1, 0x7fff
	v_cmp_o_f32_e64 s0, v83, v83
	v_add3_u32 v5, v81, v5, 0x7fff
	v_cmp_o_f32_e64 s1, v81, v81
	v_bfe_u32 v6, v79, 16, 1
	v_cndmask_b16 v2.h, 0x7fff, v1.h, vcc_lo
	v_bfe_u32 v1, v80, 16, 1
	v_cndmask_b16 v4.l, 0x7fff, v4.h, s0
	v_cndmask_b16 v4.h, 0x7fff, v5.h, s1
	v_bfe_u32 v5, v78, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v80, v80
	v_add3_u32 v1, v80, v1, 0x7fff
	v_add3_u32 v6, v79, v6, 0x7fff
	v_cmp_o_f32_e64 s0, v79, v79
	v_bfe_u32 v7, v77, 16, 1
	v_add3_u32 v5, v78, v5, 0x7fff
	v_cmp_o_f32_e64 s1, v78, v78
	v_cndmask_b16 v1.l, 0x7fff, v1.h, vcc_lo
	v_cndmask_b16 v1.h, 0x7fff, v6.h, s0
	v_bfe_u32 v6, v76, 16, 1
	v_bfe_u32 v8, v74, 16, 1
	v_add3_u32 v7, v77, v7, 0x7fff
	v_cmp_o_f32_e32 vcc_lo, v77, v77
	v_cndmask_b16 v5.l, 0x7fff, v5.h, s1
	v_add3_u32 v6, v76, v6, 0x7fff
	v_cmp_o_f32_e64 s0, v76, v76
	v_add3_u32 v8, v74, v8, 0x7fff
	v_cmp_o_f32_e64 s1, v74, v74
	v_cndmask_b16 v5.h, 0x7fff, v7.h, vcc_lo
	v_bfe_u32 v7, v73, 16, 1
	v_bfe_u32 v9, v72, 16, 1
	v_mov_b16_e32 v3.h, 0
	v_cndmask_b16 v6.l, 0x7fff, v6.h, s0
	v_cndmask_b16 v6.h, 0x7fff, v8.h, s1
	v_bfe_u32 v8, v71, 16, 1
	v_add3_u32 v7, v73, v7, 0x7fff
	v_cmp_o_f32_e32 vcc_lo, v73, v73
	v_add3_u32 v9, v72, v9, 0x7fff
	v_cmp_o_f32_e64 s0, v72, v72
	v_bfe_u32 v10, v70, 16, 1
	v_bfe_u32 v11, v69, 16, 1
	v_add3_u32 v8, v71, v8, 0x7fff
	v_cmp_o_f32_e64 s1, v71, v71
	v_cndmask_b16 v7.l, 0x7fff, v7.h, vcc_lo
	v_cndmask_b16 v7.h, 0x7fff, v9.h, s0
	v_add3_u32 v9, v70, v10, 0x7fff
	v_cmp_o_f32_e32 vcc_lo, v70, v70
	v_add3_u32 v10, v69, v11, 0x7fff
	v_mov_b16_e32 v11.l, v64.h
	v_mov_b16_e32 v11.h, v3.h
	v_mov_b16_e32 v3.l, v65.h
	v_cndmask_b16 v8.l, 0x7fff, v8.h, s1
	v_bfe_u32 v12, v68, 16, 1
	v_cndmask_b16 v8.h, 0x7fff, v9.h, vcc_lo
	v_and_b32_e32 v9, 1, v11
	v_and_b32_e32 v11, 1, v3
	v_mov_b16_e32 v3.l, v62.h
	v_cmp_o_f32_e64 s0, v69, v69
	v_add3_u32 v12, v68, v12, 0x7fff
	v_cmp_o_f32_e32 vcc_lo, v68, v68
	v_add3_u32 v9, v64, v9, 0x7fff
	v_cmp_o_f32_e64 s1, v64, v64
	v_mov_b16_e32 v13.l, v61.h
	v_mov_b16_e32 v13.h, v3.h
	v_and_b32_e32 v14, 1, v3
	v_add3_u32 v11, v65, v11, 0x7fff
	v_cndmask_b16 v10.l, 0x7fff, v10.h, s0
	v_cndmask_b16 v10.h, 0x7fff, v12.h, vcc_lo
	v_cndmask_b16 v11.l, 0x7fff, v9.h, s1
	v_and_b32_e32 v9, 1, v13
	v_add3_u32 v12, v62, v14, 0x7fff
	v_cmp_o_f32_e32 vcc_lo, v62, v62
	v_mov_b16_e32 v3.l, v60.h
	v_cmp_o_f32_e64 s0, v65, v65
	v_mov_b16_e32 v13.l, v59.h
	v_add3_u32 v9, v61, v9, 0x7fff
	v_cndmask_b16 v12.h, 0x7fff, v12.h, vcc_lo
	v_cmp_o_f32_e32 vcc_lo, v61, v61
	v_and_b32_e32 v14, 1, v3
	v_mov_b16_e32 v15.l, v57.h
	v_mov_b16_e32 v15.h, v3.h
	v_mov_b16_e32 v3.l, v58.h
	v_cndmask_b16 v11.h, 0x7fff, v11.h, s0
	v_and_b32_e32 v13, 1, v13
	v_add3_u32 v14, v60, v14, 0x7fff
	v_cmp_o_f32_e64 s0, v60, v60
	v_cndmask_b16 v12.l, 0x7fff, v9.h, vcc_lo
	v_and_b32_e32 v9, 1, v15
	v_and_b32_e32 v15, 1, v3
	v_add3_u32 v13, v59, v13, 0x7fff
	v_cndmask_b16 v14.h, 0x7fff, v14.h, s0
	v_cmp_o_f32_e32 vcc_lo, v59, v59
	v_add3_u32 v9, v57, v9, 0x7fff
	v_add3_u32 v15, v58, v15, 0x7fff
	v_cmp_o_f32_e64 s0, v58, v58
	v_mov_b16_e32 v3.l, v56.h
	v_cmp_o_f32_e64 s1, v57, v57
	v_mov_b16_e32 v20.l, v55.h
	v_mov_b16_e32 v20.h, v3.h
	v_cndmask_b16 v14.l, 0x7fff, v13.h, vcc_lo
	v_cndmask_b16 v15.h, 0x7fff, v15.h, s0
	v_cndmask_b16 v15.l, 0x7fff, v9.h, s1
	v_and_b32_e32 v13, 1, v3
	v_mov_b16_e32 v3.l, v54.h
	v_and_b32_e32 v9, 1, v20
	v_cmp_o_f32_e32 vcc_lo, v56, v56
	v_mov_b16_e32 v20.l, v53.h
	v_add3_u32 v13, v56, v13, 0x7fff
	v_and_b32_e32 v21, 1, v3
	v_mov_b16_e32 v3.l, v51.h
	v_add3_u32 v9, v55, v9, 0x7fff
	v_and_b32_e32 v20, 1, v20
	v_cndmask_b16 v13.h, 0x7fff, v13.h, vcc_lo
	v_add3_u32 v21, v54, v21, 0x7fff
	v_cmp_o_f32_e32 vcc_lo, v54, v54
	v_cmp_o_f32_e64 s0, v55, v55
	v_add3_u32 v20, v53, v20, 0x7fff
	v_mov_b16_e32 v22.l, v50.h
	v_mov_b16_e32 v22.h, v3.h
	v_cndmask_b16 v21.h, 0x7fff, v21.h, vcc_lo
	v_cmp_o_f32_e32 vcc_lo, v53, v53
	v_cndmask_b16 v13.l, 0x7fff, v9.h, s0
	v_mov_b16_e32 v9.l, v52.h
	v_mov_b16_e32 v9.h, v3.h
	v_and_b32_e32 v0, 16, v0
	v_cndmask_b16 v21.l, 0x7fff, v20.h, vcc_lo
	v_and_b32_e32 v23, 1, v3
	v_and_b32_e32 v20, 1, v22
	v_cmp_o_f32_e32 vcc_lo, v51, v51
	v_cmp_o_f32_e64 s0, v52, v52
	v_mov_b16_e32 v3.l, v49.h
	v_add3_u32 v22, v51, v23, 0x7fff
	v_cmp_o_f32_e64 s2, v50, v50
	v_cmp_o_f32_e64 s1, v49, v49
	.loc	1 390 18                        ; generate_amdgcn.py:390:18
	v_mul_lo_u32 v16, s23, v63
	v_mul_lo_u32 v17, s23, v66
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cndmask_b16 v22.h, 0x7fff, v22.h, vcc_lo
	v_cmp_eq_u32_e32 vcc_lo, 0, v0
	v_and_b32_e32 v9, 1, v9
	s_and_b32 s21, s21, 0xffff
	s_mov_b32 s23, 0x31027000
	s_mov_b32 s22, 0x7ffffffe
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add3_u32 v9, v52, v9, 0x7fff
	v_cndmask_b16 v22.l, 0x7fff, v9.h, s0
	v_cndmask_b32_e32 v9, v5, v4, vcc_lo
	v_add3_u32 v20, v50, v20, 0x7fff
	s_mov_b32 s0, 0x76543210
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_cndmask_b16 v0.l, 0x7fff, v20.h, s2
	v_dual_mov_b32 v20, 0x7632 :: v_dual_and_b32 v3, 1, v3
	v_add3_u32 v3, v49, v3, 0x7fff
	s_delay_alu instid0(VALU_DEP_1)
	v_cndmask_b16 v0.h, 0x7fff, v3.h, s1
	v_cndmask_b32_e32 v3, v1, v2, vcc_lo
	v_cndmask_b32_e32 v1, v2, v1, vcc_lo
	v_cndmask_b32_e32 v2, v4, v5, vcc_lo
	v_dual_cndmask_b32 v5, v8, v6 :: v_dual_cndmask_b32 v4, v6, v8
	v_mov_b32_e32 v6, 0x5410
	v_dual_cndmask_b32 v8, v10, v7 :: v_dual_cndmask_b32 v7, v7, v10
	v_dual_cndmask_b32 v10, v14, v11 :: v_dual_cndmask_b32 v11, v11, v14
	s_delay_alu instid0(VALU_DEP_3)
	v_cndmask_b32_e32 v6, 0x1054, v6, vcc_lo
	v_cndmask_b32_e32 v14, 0x3276, v20, vcc_lo
	v_cndmask_b32_e32 v20, v15, v12, vcc_lo
	v_cndmask_b32_e32 v12, v12, v15, vcc_lo
	v_permlanex16_b32 v1, v1, s0, 0xfedcba98 op_sel:[1,0]
	v_lshl_or_b32 v6, v6, 8, v6
	v_lshl_or_b32 v14, v14, 8, v14
	v_cndmask_b32_e32 v15, v22, v13, vcc_lo
	v_dual_cndmask_b32 v13, v13, v22 :: v_dual_cndmask_b32 v22, v0, v21
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_and_b32_e32 v6, 0x540054, v6
	v_and_b32_e32 v14, 0x760076, v14
	v_cndmask_b32_e32 v0, v21, v0, vcc_lo
	v_permlanex16_b32 v21, v2, s0, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v7, v7, s0, 0xfedcba98 op_sel:[1,0]
	v_lshl_or_b32 v2, v6, 4, v6
	v_lshl_or_b32 v6, v14, 4, v14
	v_permlanex16_b32 v11, v11, s0, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v12, v12, s0, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v14, v4, s0, 0xfedcba98 op_sel:[1,0]
	v_and_b32_e32 v23, 0x5040504, v2
	v_and_b32_e32 v24, 0x7060706, v6
	v_permlanex16_b32 v13, v13, s0, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v25, v0, s0, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_perm_b32 v0, v1, v3, v23
	v_perm_b32 v1, v1, v3, v24
	v_perm_b32 v2, v21, v9, v23
	v_perm_b32 v3, v21, v9, v24
	v_perm_b32 v6, v7, v8, v23
	v_perm_b32 v7, v7, v8, v24
	v_perm_b32 v8, v11, v10, v23
	v_perm_b32 v9, v11, v10, v24
	v_perm_b32 v10, v12, v20, v23
	v_perm_b32 v11, v12, v20, v24
	v_add_lshl_u32 v20, v18, v16, 1
	v_perm_b32 v4, v14, v5, v23
	v_perm_b32 v5, v14, v5, v24
	v_add_lshl_u32 v16, v19, v16, 1
	v_add_lshl_u32 v18, v18, v17, 1
	v_perm_b32 v12, v13, v15, v23
	v_perm_b32 v13, v13, v15, v24
	v_perm_b32 v14, v25, v22, v23
	v_perm_b32 v15, v25, v22, v24
	v_add_lshl_u32 v17, v19, v17, 1
	s_clause 0x3
	buffer_store_b128 v[0:3], v20, s[20:23], 0 offen
	buffer_store_b128 v[4:7], v16, s[20:23], 0 offen
	buffer_store_b128 v[8:11], v18, s[20:23], 0 offen
	buffer_store_b128 v[12:15], v17, s[20:23], 0 offen
	.loc	1 283 1 is_stmt 1               ; generate_amdgcn.py:283:1
	s_nop 0
	s_sendmsg sendmsg(MSG_DEALLOC_VGPRS)
	s_endpgm
.Ltmp27:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_int8xint8_tn_sc32_none_bm64_bn128_bk64_gm4_w8_s3_weu2_sk1_maskk
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
		.amdhsa_next_free_vgpr 241
		.amdhsa_next_free_sgpr 32
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
	.size	amd_strix_halo_gfx1151_int8xint8_tn_sc32_none_bm64_bn128_bk64_gm4_w8_s3_weu2_sk1_maskk, .Lfunc_end0-amd_strix_halo_gfx1151_int8xint8_tn_sc32_none_bm64_bn128_bk64_gm4_w8_s3_weu2_sk1_maskk
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_int8xint8_tn_sc32_none_bm64_bn128_bk64_gm4_w8_s3_weu2_sk1_maskk.num_vgpr, 155
	.set amd_strix_halo_gfx1151_int8xint8_tn_sc32_none_bm64_bn128_bk64_gm4_w8_s3_weu2_sk1_maskk.num_agpr, 0
	.set amd_strix_halo_gfx1151_int8xint8_tn_sc32_none_bm64_bn128_bk64_gm4_w8_s3_weu2_sk1_maskk.numbered_sgpr, 32
	.set amd_strix_halo_gfx1151_int8xint8_tn_sc32_none_bm64_bn128_bk64_gm4_w8_s3_weu2_sk1_maskk.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_int8xint8_tn_sc32_none_bm64_bn128_bk64_gm4_w8_s3_weu2_sk1_maskk.private_seg_size, 0
	.set amd_strix_halo_gfx1151_int8xint8_tn_sc32_none_bm64_bn128_bk64_gm4_w8_s3_weu2_sk1_maskk.uses_vcc, 1
	.set amd_strix_halo_gfx1151_int8xint8_tn_sc32_none_bm64_bn128_bk64_gm4_w8_s3_weu2_sk1_maskk.uses_flat_scratch, 0
	.set amd_strix_halo_gfx1151_int8xint8_tn_sc32_none_bm64_bn128_bk64_gm4_w8_s3_weu2_sk1_maskk.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_int8xint8_tn_sc32_none_bm64_bn128_bk64_gm4_w8_s3_weu2_sk1_maskk.has_recursion, 0
	.set amd_strix_halo_gfx1151_int8xint8_tn_sc32_none_bm64_bn128_bk64_gm4_w8_s3_weu2_sk1_maskk.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 10052
; TotalNumSgprs: 34
; NumVgprs: 155
; ScratchSize: 0
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 30
; NumSGPRsForWavesPerEU: 34
; NumVGPRsForWavesPerEU: 241
; Occupancy: 5
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
	.byte	1                               ; Abbrev [1] 0xb:0x6c DW_TAG_compile_unit
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
	.byte	3                               ; Abbrev [3] 0x30:0x46 DW_TAG_subprogram
	.quad	.Lfunc_begin0                   ; DW_AT_low_pc
	.long	.Lfunc_end0-.Lfunc_begin0       ; DW_AT_high_pc
	.long	42                              ; DW_AT_abstract_origin
	.byte	4                               ; Abbrev [4] 0x41:0xd DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges0                 ; DW_AT_ranges
	.byte	1                               ; DW_AT_call_file
	.short	291                             ; DW_AT_call_line
	.byte	17                              ; DW_AT_call_column
	.byte	4                               ; Abbrev [4] 0x4e:0xd DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges1                 ; DW_AT_ranges
	.byte	1                               ; DW_AT_call_file
	.short	290                             ; DW_AT_call_line
	.byte	17                              ; DW_AT_call_column
	.byte	4                               ; Abbrev [4] 0x5b:0xd DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges2                 ; DW_AT_ranges
	.byte	1                               ; DW_AT_call_file
	.short	307                             ; DW_AT_call_line
	.byte	28                              ; DW_AT_call_column
	.byte	4                               ; Abbrev [4] 0x68:0xd DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges3                 ; DW_AT_ranges
	.byte	1                               ; DW_AT_call_file
	.short	310                             ; DW_AT_call_line
	.byte	26                              ; DW_AT_call_column
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
	.quad	.Ltmp17-.Lfunc_begin0
	.quad	.Ltmp18-.Lfunc_begin0
	.quad	.Ltmp20-.Lfunc_begin0
	.quad	.Ltmp21-.Lfunc_begin0
	.quad	.Ltmp24-.Lfunc_begin0
	.quad	.Ltmp25-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges3:
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
	.asciz	"amd_strix_halo_gfx1151_int8xint8_tn_sc32_none_bm64_bn128_bk64_gm4_w8_s3_weu2_sk1_maskk"             ; string offset=75 ; amd_strix_halo_gfx1151_int8xint8_tn_sc32_none_bm64_bn128_bk64_gm4_w8_s3_weu2_sk1_maskk
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
    .max_flat_workgroup_size: 256
    .name:           amd_strix_halo_gfx1151_int8xint8_tn_sc32_none_bm64_bn128_bk64_gm4_w8_s3_weu2_sk1_maskk
    .private_segment_fixed_size: 0
    .sgpr_count:     34
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_int8xint8_tn_sc32_none_bm64_bn128_bk64_gm4_w8_s3_weu2_sk1_maskk.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     155
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
