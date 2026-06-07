	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_int8xint8_nt_sc32_none_bm32_bn256_bk64_gm4_w8_s3_weu2_sk1_maskk               ; -- Begin function amd_strix_halo_gfx1151_int8xint8_nt_sc32_none_bm32_bn256_bk64_gm4_w8_s3_weu2_sk1_maskk
	.p2align	8
	.type	amd_strix_halo_gfx1151_int8xint8_nt_sc32_none_bm32_bn256_bk64_gm4_w8_s3_weu2_sk1_maskk,@function
amd_strix_halo_gfx1151_int8xint8_nt_sc32_none_bm32_bn256_bk64_gm4_w8_s3_weu2_sk1_maskk:                      ; @amd_strix_halo_gfx1151_int8xint8_nt_sc32_none_bm32_bn256_bk64_gm4_w8_s3_weu2_sk1_maskk
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
	v_dual_mov_b32 v13, 0 :: v_dual_mov_b32 v14, 0
	v_dual_mov_b32 v15, 0 :: v_dual_mov_b32 v16, 0
	v_dual_mov_b32 v17, 0 :: v_dual_mov_b32 v18, 0
	v_dual_mov_b32 v19, 0 :: v_dual_mov_b32 v20, 0
	v_dual_mov_b32 v21, 0 :: v_dual_mov_b32 v22, 0
	v_dual_mov_b32 v23, 0 :: v_dual_mov_b32 v24, 0
	v_dual_mov_b32 v27, 0 :: v_dual_mov_b32 v28, 0
	v_dual_mov_b32 v29, 0 :: v_dual_mov_b32 v30, 0
.Ltmp1:
	.file	2 "<triton>/python/triton/language" "standard.py"
	.loc	2 43 13                         ; standard.py:43:13 @[ generate_amdgcn.py:291:17 ]
	s_waitcnt lgkmcnt(0)
	s_add_i32 s4, s23, 0xff
.Ltmp2:
	.loc	2 43 13 is_stmt 0               ; standard.py:43:13 @[ generate_amdgcn.py:290:17 ]
	s_add_i32 s8, s22, 31
.Ltmp3:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:291:17 ]
	s_ashr_i32 s5, s4, 31
.Ltmp4:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:290:17 ]
	s_ashr_i32 s10, s8, 31
.Ltmp5:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:291:17 ]
	s_lshr_b32 s5, s5, 24
.Ltmp6:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:290:17 ]
	s_lshr_b32 s10, s10, 27
.Ltmp7:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:291:17 ]
	s_add_i32 s4, s4, s5
.Ltmp8:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:290:17 ]
	s_add_i32 s8, s8, s10
.Ltmp9:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:291:17 ]
	s_ashr_i32 s4, s4, 8
.Ltmp10:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:290:17 ]
	s_ashr_i32 s8, s8, 5
.Ltmp11:
	.loc	1 292 24 is_stmt 1              ; generate_amdgcn.py:292:24
	s_lshl_b32 s4, s4, 2
	v_dual_mov_b32 v31, 0 :: v_dual_mov_b32 v32, 0
	.loc	1 293 16                        ; generate_amdgcn.py:293:16
	s_abs_i32 s5, s4
	v_dual_mov_b32 v33, 0 :: v_dual_mov_b32 v34, 0
	s_cvt_f32_u32 s6, s5
	s_sub_i32 s9, 0, s5
	v_dual_mov_b32 v35, 0 :: v_dual_mov_b32 v36, 0
	s_delay_alu instid0(SALU_CYCLE_1)
	v_rcp_iflag_f32_e32 v1, s6
	v_dual_mov_b32 v37, 0 :: v_dual_mov_b32 v38, 0
	v_dual_mov_b32 v39, 0 :: v_dual_mov_b32 v40, 0
	v_dual_mov_b32 v41, 0 :: v_dual_mov_b32 v42, 0
	v_dual_mov_b32 v44, 0 :: v_dual_mov_b32 v45, 0
	v_dual_mov_b32 v46, 0 :: v_dual_mov_b32 v43, 0
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_4) | instid1(SALU_CYCLE_3)
	v_readfirstlane_b32 s6, v1
	.loc	1 299 32                        ; generate_amdgcn.py:299:32
	v_and_b32_e32 v25, 15, v0
	.loc	1 300 32                        ; generate_amdgcn.py:300:32
	v_and_b32_e32 v26, 0xf0, v0
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
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_3)
	v_readfirstlane_b32 s9, v1
	s_mul_f32 s9, s9, 0x4f7ffffe
	s_cvt_u32_f32 s9, s9
	s_delay_alu instid0(SALU_CYCLE_3) | instskip(NEXT) | instid1(SALU_CYCLE_1)
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
	s_lshl_b32 s22, s2, 5
	.loc	1 300 14                        ; generate_amdgcn.py:300:14
	s_lshl_b32 s2, s4, 8
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_cmp_lt_i32 s15, 64
	s_cbranch_scc1 .LBB0_3
; %bb.1:                                ; %.lr.ph
	.loc	1 0 5 is_stmt 0                 ; generate_amdgcn.py:0:5
	s_load_b256 s[4:11], s[0:1], 0x0
.Ltmp14:
	.loc	2 43 12 is_stmt 1               ; standard.py:43:12 @[ generate_amdgcn.py:307:28 ]
	s_ashr_i32 s0, s15, 31
.Ltmp15:
	.loc	2 43 13 is_stmt 0               ; standard.py:43:13 @[ generate_amdgcn.py:310:26 ]
	s_add_i32 s1, s28, 31
.Ltmp16:
	.loc	1 300 32 is_stmt 1              ; generate_amdgcn.py:300:32
	v_lshrrev_b32_e32 v3, 1, v0
.Ltmp17:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:307:28 ]
	s_lshr_b32 s0, s0, 26
.Ltmp18:
	.loc	2 43 12 is_stmt 0               ; standard.py:43:12 @[ generate_amdgcn.py:310:26 ]
	s_ashr_i32 s17, s1, 31
	v_dual_mov_b32 v43, 0 :: v_dual_and_b32 v2, 1, v0
.Ltmp19:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:307:28 ]
	s_add_i32 s15, s15, s0
.Ltmp20:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:310:26 ]
	s_lshr_b32 s0, s17, 27
	v_mul_lo_u32 v5, s28, v3
	s_add_i32 s0, s1, s0
.Ltmp21:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:307:28 ]
	s_ashr_i32 s1, s15, 6
.Ltmp22:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:310:26 ]
	s_ashr_i32 s29, s0, 5
.Ltmp23:
	.loc	1 307 5 is_stmt 1               ; generate_amdgcn.py:307:5
	v_lshl_or_b32 v3, s14, 8, v3
	s_lshl_b32 s0, s13, 8
	s_mov_b32 s13, s12
	s_mov_b32 s14, s12
	s_mov_b32 s15, s12
	s_mov_b32 s17, s12
	s_mov_b32 s18, s12
	s_mov_b32 s19, s12
	.loc	1 299 32                        ; generate_amdgcn.py:299:32
	v_lshlrev_b32_e32 v10, 4, v2
	.loc	1 320 34                        ; generate_amdgcn.py:320:34
	s_mul_i32 s16, s2, s28
	v_bfe_i32 v6, v0, 5, 1
	v_bfe_i32 v11, v0, 2, 1
	v_bfe_i32 v13, v0, 3, 1
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_add3_u32 v51, v5, v10, s16
	s_mov_b32 s16, s12
	.loc	1 299 32                        ; generate_amdgcn.py:299:32
	v_lshlrev_b32_e32 v1, 2, v0
	v_lshlrev_b32_e32 v8, 5, v0
	v_lshlrev_b32_e32 v12, 4, v0
	v_and_b32_e32 v6, 0x90, v6
	v_and_b32_e32 v11, 0x90, v11
	v_and_b32_e32 v7, 0x37c, v1
	v_dual_mov_b32 v45, 0 :: v_dual_and_b32 v8, 0x160, v8
	v_dual_mov_b32 v41, 0 :: v_dual_and_b32 v14, 0xe00, v12
	v_dual_mov_b32 v39, 0 :: v_dual_and_b32 v12, 0xf70, v12
	v_dual_mov_b32 v46, 0 :: v_dual_and_b32 v13, 0x90, v13
	v_or_b32_e32 v15, s22, v25
	v_or_b32_e32 v16, v11, v8
	v_or3_b32 v8, v8, v14, v11
	v_xor_b32_e32 v6, v6, v7
	v_xor_b32_e32 v7, v13, v12
	v_or_b32_e32 v11, 16, v15
	v_lshrrev_b32_e32 v12, 6, v0
	v_dual_mov_b32 v40, 0 :: v_dual_lshlrev_b32 v13, 1, v26
	v_and_b32_e32 v9, 28, v1
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_mul_lo_u32 v48, v11, s29
	v_dual_mov_b32 v42, 0 :: v_dual_and_b32 v11, 2, v12
	v_dual_mov_b32 v44, 0 :: v_dual_and_b32 v1, 0x1c0, v1
	v_dual_mov_b32 v35, 0 :: v_dual_lshlrev_b32 v2, 5, v2
	s_delay_alu instid0(VALU_DEP_3)
	v_dual_mov_b32 v38, 0 :: v_dual_add_nc_u32 v11, 0, v11
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_subrev_nc_u32_e32 v3, s0, v3
	.loc	1 299 32                        ; generate_amdgcn.py:299:32
	v_lshrrev_b32_e32 v4, 3, v0
	v_dual_mov_b32 v33, 0 :: v_dual_add_nc_u32 v50, 0, v13
	v_dual_mov_b32 v37, 0 :: v_dual_lshlrev_b32 v12, 1, v0
	v_add3_u32 v18, v11, v1, v2
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_or_b32_e32 v1, 0x80, v3
	s_delay_alu instid0(VALU_DEP_4)
	v_add3_u32 v19, v50, v13, v2
	v_dual_mov_b32 v31, 0 :: v_dual_add_nc_u32 v2, s22, v4
	v_xor_b32_e32 v14, 16, v16
	v_xor_b32_e32 v17, 16, v8
	v_mul_lo_u32 v47, v15, s29
	v_dual_mov_b32 v36, 0 :: v_dual_and_b32 v15, 28, v12
	v_mad_u64_u32 v[11:12], null, s28, v1, v[10:11]
	v_mad_u64_u32 v[12:13], null, s28, v2, v[9:10]
	v_dual_mov_b32 v29, 0 :: v_dual_add_nc_u32 v52, 0, v6
	v_dual_mov_b32 v34, 0 :: v_dual_add_nc_u32 v53, 0, v7
	v_dual_mov_b32 v23, 0 :: v_dual_add_nc_u32 v56, 0, v8
	v_mov_b32_e32 v1, s12
	v_or_b32_e32 v49, s2, v0
	v_dual_mov_b32 v27, 0 :: v_dual_add_nc_u32 v54, 0, v16
	v_dual_mov_b32 v32, 0 :: v_dual_add_nc_u32 v55, 0, v14
	v_dual_mov_b32 v30, 0 :: v_dual_add_nc_u32 v57, 0, v17
	v_dual_mov_b32 v2, s13 :: v_dual_mov_b32 v3, s14
	v_dual_mov_b32 v4, s15 :: v_dual_mov_b32 v5, s16
	v_dual_mov_b32 v6, s17 :: v_dual_mov_b32 v7, s18
	v_mov_b32_e32 v8, s19
	v_dual_mov_b32 v21, 0 :: v_dual_add_nc_u32 v58, v18, v15
	v_dual_mov_b32 v28, 0 :: v_dual_add_nc_u32 v59, v19, v15
	v_dual_mov_b32 v24, 0 :: v_dual_mov_b32 v19, 0
	v_dual_mov_b32 v22, 0 :: v_dual_mov_b32 v17, 0
	v_dual_mov_b32 v20, 0 :: v_dual_mov_b32 v15, 0
	v_dual_mov_b32 v18, 0 :: v_dual_mov_b32 v13, 0
	v_mov_b32_e32 v16, 0
	v_mov_b32_e32 v14, 0
	s_mov_b32 s27, 0x31027000
	s_mov_b32 s26, 0x7ffffffe
	s_waitcnt lgkmcnt(0)
	s_and_b32 s5, s5, 0xffff
	s_and_b32 s7, s7, 0xffff
	s_and_b32 s9, s9, 0xffff
	s_and_b32 s11, s11, 0xffff
	s_lshl_b32 s3, s3, 6
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
	.loc	1 312 21                        ; generate_amdgcn.py:312:21
	v_add_nc_u32_e32 v60, s3, v9
	.loc	1 318 26                        ; generate_amdgcn.py:318:26
	v_add_nc_u32_e32 v61, s3, v12
	.loc	1 313 27                        ; generate_amdgcn.py:313:27
	v_add_nc_u32_e32 v62, s3, v10
	.loc	1 320 34                        ; generate_amdgcn.py:320:34
	v_add_nc_u32_e32 v63, s3, v51
	.loc	1 320 26 is_stmt 0              ; generate_amdgcn.py:320:26
	v_add_nc_u32_e32 v64, s3, v11
	.loc	1 313 27 is_stmt 1              ; generate_amdgcn.py:313:27
	v_cmp_gt_i32_e32 vcc_lo, s28, v60
	.loc	1 312 21                        ; generate_amdgcn.py:312:21
	v_add_nc_u32_e32 v60, 32, v60
	s_add_i32 s16, s3, 32
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 318 26                        ; generate_amdgcn.py:318:26
	v_dual_cndmask_b32 v65, 0x80000000, v61 :: v_dual_add_nc_u32 v68, 32, v64
	.loc	1 314 27                        ; generate_amdgcn.py:314:27
	v_cmp_gt_i32_e32 vcc_lo, s28, v62
	.loc	1 313 27                        ; generate_amdgcn.py:313:27
	v_add_nc_u32_e32 v62, 32, v62
	.loc	1 318 26                        ; generate_amdgcn.py:318:26
	v_add_nc_u32_e32 v61, 32, v61
	.loc	1 313 27                        ; generate_amdgcn.py:313:27
	v_cmp_gt_i32_e64 s0, s28, v60
	.loc	1 320 26                        ; generate_amdgcn.py:320:26
	v_cndmask_b32_e32 v66, 0x80000000, v63, vcc_lo
	v_cndmask_b32_e32 v64, 0x80000000, v64, vcc_lo
	.loc	1 314 27                        ; generate_amdgcn.py:314:27
	v_cmp_gt_i32_e32 vcc_lo, s28, v62
	.loc	1 320 34                        ; generate_amdgcn.py:320:34
	v_add_nc_u32_e32 v63, 32, v63
	.loc	1 318 26                        ; generate_amdgcn.py:318:26
	buffer_load_b32 v76, v65, s[24:27], 0 offen
	v_cndmask_b32_e64 v69, 0x80000000, v61, s0
	.loc	1 330 29                        ; generate_amdgcn.py:330:29
	s_ashr_i32 s0, s3, 5
	.loc	1 320 26                        ; generate_amdgcn.py:320:26
	v_cndmask_b32_e32 v72, 0x80000000, v68, vcc_lo
	v_cndmask_b32_e32 v70, 0x80000000, v63, vcc_lo
	s_clause 0x1
	buffer_load_b128 v[60:63], v66, s[4:7], 0 offen
	buffer_load_b128 v[64:67], v64, s[4:7], 0 offen
	.loc	1 318 26                        ; generate_amdgcn.py:318:26
	buffer_load_b32 v77, v69, s[24:27], 0 offen
	.loc	1 320 26                        ; generate_amdgcn.py:320:26
	s_clause 0x1
	buffer_load_b128 v[68:71], v70, s[4:7], 0 offen
	buffer_load_b128 v[72:75], v72, s[4:7], 0 offen
	.loc	1 332 22                        ; generate_amdgcn.py:332:22
	v_add_lshl_u32 v78, v47, s0, 1
	.loc	1 331 34                        ; generate_amdgcn.py:331:34
	s_cmp_lt_i32 s0, s29
	.loc	1 334 40                        ; generate_amdgcn.py:334:40
	s_mul_i32 s17, s0, s23
	.loc	1 331 34                        ; generate_amdgcn.py:331:34
	s_cselect_b32 vcc_lo, -1, 0
	.loc	1 334 22                        ; generate_amdgcn.py:334:22
	v_add_lshl_u32 v79, v49, s17, 1
	.loc	1 332 22                        ; generate_amdgcn.py:332:22
	v_cndmask_b32_e32 v78, 0x80000000, v78, vcc_lo
	.loc	1 318 26                        ; generate_amdgcn.py:318:26
	s_waitcnt vmcnt(5)
	ds_store_b32 v52, v76 offset:16384
	.loc	1 320 26                        ; generate_amdgcn.py:320:26
	s_waitcnt vmcnt(4)
	ds_store_b128 v53, v[60:63]
	s_waitcnt vmcnt(3)
	ds_store_b128 v53, v[64:67] offset:4096
	.loc	1 332 22                        ; generate_amdgcn.py:332:22
	v_add_lshl_u32 v61, v48, s0, 1
	.loc	1 334 22                        ; generate_amdgcn.py:334:22
	v_cndmask_b32_e32 v79, 0x80000000, v79, vcc_lo
	.loc	1 318 26                        ; generate_amdgcn.py:318:26
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_waitcnt vmcnt(2)
	ds_store_b32 v52, v77 offset:17408
	.loc	1 320 26                        ; generate_amdgcn.py:320:26
	s_waitcnt vmcnt(1)
	ds_store_b128 v53, v[68:71] offset:8192
	s_waitcnt vmcnt(0)
	ds_store_b128 v53, v[72:75] offset:12288
	.loc	1 332 22                        ; generate_amdgcn.py:332:22
	v_cndmask_b32_e32 v61, 0x80000000, v61, vcc_lo
	.loc	1 318 26                        ; generate_amdgcn.py:318:26
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 332 22                        ; generate_amdgcn.py:332:22
	s_clause 0x1
	buffer_load_u16 v116, v78, s[12:15], 0 offen
	buffer_load_u16 v117, v61, s[12:15], 0 offen
	.loc	1 334 22                        ; generate_amdgcn.py:334:22
	buffer_load_u16 v60, v79, s[8:11], 0 offen
	.loc	1 318 26                        ; generate_amdgcn.py:318:26
	ds_load_b128 v[76:79], v54 offset:16384
	ds_load_b128 v[92:95], v54 offset:16896
	ds_load_b128 v[96:99], v55 offset:16384
	ds_load_b128 v[100:103], v55 offset:16896
	.loc	1 320 26                        ; generate_amdgcn.py:320:26
	ds_load_b128 v[84:87], v56
	ds_load_b128 v[104:107], v56 offset:4096
	ds_load_b128 v[108:111], v57
	ds_load_b128 v[112:115], v57 offset:4096
	.loc	1 330 29                        ; generate_amdgcn.py:330:29
	s_ashr_i32 s0, s16, 5
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 331 34                        ; generate_amdgcn.py:331:34
	s_cmp_lt_i32 s0, s29
	.loc	1 332 22                        ; generate_amdgcn.py:332:22
	v_add_lshl_u32 v62, v47, s0, 1
	v_add_lshl_u32 v63, v48, s0, 1
	.loc	1 334 40                        ; generate_amdgcn.py:334:40
	s_mul_i32 s0, s0, s23
	.loc	1 331 34                        ; generate_amdgcn.py:331:34
	s_cselect_b32 vcc_lo, -1, 0
	.loc	1 334 22                        ; generate_amdgcn.py:334:22
	v_add_lshl_u32 v64, v49, s0, 1
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_add_i32 s1, s1, -1
	.loc	1 332 22                        ; generate_amdgcn.py:332:22
	v_cndmask_b32_e32 v63, 0x80000000, v63, vcc_lo
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_add_i32 s3, s3, 64
	s_cmp_lg_u32 s1, 0
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	s_waitcnt lgkmcnt(2)
	v_wmma_i32_16x16x16_iu8 v[68:75], v[104:107], v[76:79], v[1:8] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu8 v[68:75], v[112:115], v[96:99], v[68:75] neg_lo:[1,1,0]
	v_cvt_f32_i32_e32 v68, v68
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cvt_f32_i32_e32 v70, v70
	v_cvt_f32_i32_e32 v69, v69
	s_delay_alu instid0(VALU_DEP_4)
	v_cvt_f32_i32_e32 v71, v71
	v_cvt_f32_i32_e32 v72, v72
	v_cvt_f32_i32_e32 v73, v73
	v_cvt_f32_i32_e32 v74, v74
	v_cvt_f32_i32_e32 v75, v75
	.loc	1 332 22                        ; generate_amdgcn.py:332:22
	s_waitcnt vmcnt(1)
	v_lshlrev_b32_e32 v117, 16, v117
	v_lshlrev_b32_e32 v136, 16, v116
	.loc	1 334 22                        ; generate_amdgcn.py:334:22
	v_cndmask_b32_e32 v64, 0x80000000, v64, vcc_lo
	.loc	1 332 22                        ; generate_amdgcn.py:332:22
	v_cndmask_b32_e32 v62, 0x80000000, v62, vcc_lo
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	s_waitcnt vmcnt(0)
	ds_store_b16 v58, v60 offset:18432
	s_waitcnt lgkmcnt(0)
	s_barrier
	v_mul_f32_e32 v141, v136, v68
	v_mul_f32_e32 v143, v136, v70
	.loc	1 334 22                        ; generate_amdgcn.py:334:22
	buffer_load_u16 v118, v64, s[8:11], 0 offen
	.loc	1 332 22                        ; generate_amdgcn.py:332:22
	s_clause 0x1
	buffer_load_u16 v119, v62, s[12:15], 0 offen
	buffer_load_u16 v120, v63, s[12:15], 0 offen
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	v_wmma_i32_16x16x16_iu8 v[60:67], v[84:87], v[76:79], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[76:83], v[84:87], v[92:95], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[84:91], v[104:107], v[92:95], v[1:8] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_wmma_i32_16x16x16_iu8 v[60:67], v[108:111], v[96:99], v[60:67] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[76:83], v[108:111], v[100:103], v[76:83] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_3)
	v_wmma_i32_16x16x16_iu8 v[84:91], v[112:115], v[100:103], v[84:91] neg_lo:[1,1,0]
	.loc	1 320 26                        ; generate_amdgcn.py:320:26
	ds_load_b128 v[109:112], v57 offset:8192
	ds_load_b128 v[113:116], v57 offset:12288
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	v_cvt_f32_i32_e32 v121, v61
	v_cvt_f32_i32_e32 v122, v62
	v_cvt_f32_i32_e32 v123, v63
	v_cvt_f32_i32_e32 v124, v77
	v_cvt_f32_i32_e32 v125, v78
	v_cvt_f32_i32_e32 v126, v79
	v_cvt_f32_i32_e32 v127, v84
	v_cvt_f32_i32_e32 v128, v85
	v_cvt_f32_i32_e32 v129, v86
	v_cvt_f32_i32_e32 v130, v87
	v_cvt_f32_i32_e32 v131, v89
	v_cvt_f32_i32_e32 v132, v90
	v_cvt_f32_i32_e32 v133, v91
	v_cvt_f32_i32_e32 v134, v60
	v_cvt_f32_i32_e32 v135, v76
	.loc	1 334 22                        ; generate_amdgcn.py:334:22
	ds_load_b128 v[60:63], v50 offset:18432
	ds_load_b128 v[89:92], v50 offset:18448
	.loc	1 318 26                        ; generate_amdgcn.py:318:26
	ds_load_b128 v[76:79], v54 offset:17408
	ds_load_b128 v[93:96], v54 offset:17920
	ds_load_b128 v[97:100], v55 offset:17408
	ds_load_b128 v[101:104], v55 offset:17920
	.loc	1 320 26                        ; generate_amdgcn.py:320:26
	ds_load_b128 v[84:87], v56 offset:8192
	ds_load_b128 v[105:108], v56 offset:12288
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	v_cvt_f32_i32_e32 v64, v64
	v_cvt_f32_i32_e32 v65, v65
	v_cvt_f32_i32_e32 v66, v66
	v_cvt_f32_i32_e32 v67, v67
	v_cvt_f32_i32_e32 v80, v80
	v_cvt_f32_i32_e32 v81, v81
	v_cvt_f32_i32_e32 v82, v82
	v_cvt_f32_i32_e32 v83, v83
	v_cvt_f32_i32_e32 v88, v88
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	v_mul_f32_e32 v124, v117, v124
	v_mul_f32_e32 v125, v117, v125
	v_mul_f32_e32 v121, v136, v121
	v_mul_f32_e32 v122, v136, v122
	v_mul_f32_e32 v123, v136, v123
	v_mul_f32_e32 v137, v136, v64
	v_mul_f32_e32 v138, v136, v65
	v_mul_f32_e32 v139, v136, v66
	v_dual_mul_f32 v140, v136, v67 :: v_dual_mul_f32 v149, v117, v81
	v_dual_mul_f32 v142, v136, v69 :: v_dual_mul_f32 v151, v117, v83
	v_dual_mul_f32 v144, v136, v71 :: v_dual_mul_f32 v129, v117, v129
	v_dual_mul_f32 v145, v136, v72 :: v_dual_mul_f32 v126, v117, v126
	v_dual_mul_f32 v146, v136, v73 :: v_dual_mul_f32 v127, v117, v127
	v_dual_mul_f32 v147, v136, v74 :: v_dual_mul_f32 v134, v134, v136
	v_dual_mul_f32 v148, v136, v75 :: v_dual_mul_f32 v133, v117, v133
	s_waitcnt lgkmcnt(7)
	v_dual_mul_f32 v136, v117, v80 :: v_dual_lshlrev_b32 v153, 16, v61
	v_mul_f32_e32 v150, v117, v82
	v_dual_mul_f32 v128, v117, v128 :: v_dual_lshlrev_b32 v155, 16, v63
	s_waitcnt lgkmcnt(6)
	v_dual_mul_f32 v130, v117, v130 :: v_dual_lshlrev_b32 v159, 16, v92
	v_dual_mul_f32 v152, v117, v88 :: v_dual_lshlrev_b32 v157, 16, v90
	v_dual_mul_f32 v131, v117, v131 :: v_dual_lshlrev_b32 v154, 16, v62
	v_dual_mul_f32 v132, v117, v132 :: v_dual_and_b32 v161, 0xffff0000, v61
	v_mul_f32_e32 v117, v135, v117
	.loc	1 334 22                        ; generate_amdgcn.py:334:22
	v_lshlrev_b32_e32 v135, 16, v60
	.loc	1 336 17                        ; generate_amdgcn.py:336:17
	v_dual_fmac_f32 v41, v138, v157 :: v_dual_and_b32 v160, 0xffff0000, v60
	v_dual_fmac_f32 v39, v140, v159 :: v_dual_and_b32 v162, 0xffff0000, v62
	v_dual_fmac_f32 v46, v121, v153 :: v_dual_and_b32 v163, 0xffff0000, v63
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu8 v[60:67], v[84:87], v[76:79], v[1:8] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu8 v[68:75], v[105:108], v[76:79], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[76:83], v[84:87], v[93:96], v[1:8] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_wmma_i32_16x16x16_iu8 v[60:67], v[109:112], v[97:100], v[60:67] neg_lo:[1,1,0]
	.loc	1 336 17                        ; generate_amdgcn.py:336:17
	v_fmac_f32_e32 v18, v129, v162
	v_dual_fmac_f32 v43, v134, v135 :: v_dual_lshlrev_b32 v156, 16, v89
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	v_wmma_i32_16x16x16_iu8 v[76:83], v[109:112], v[101:104], v[76:83] neg_lo:[1,1,0]
	.loc	1 336 17                        ; generate_amdgcn.py:336:17
	v_dual_fmac_f32 v45, v122, v154 :: v_dual_lshlrev_b32 v158, 16, v91
	v_dual_fmac_f32 v35, v144, v163 :: v_dual_and_b32 v164, 0xffff0000, v89
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	v_cvt_f32_i32_e32 v81, v81
	.loc	1 336 17                        ; generate_amdgcn.py:336:17
	v_dual_fmac_f32 v44, v123, v155 :: v_dual_and_b32 v165, 0xffff0000, v90
	v_dual_fmac_f32 v37, v142, v161 :: v_dual_and_b32 v166, 0xffff0000, v91
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	v_wmma_i32_16x16x16_iu8 v[84:91], v[105:108], v[93:96], v[1:8] neg_lo:[1,1,0]
	.loc	1 336 17                        ; generate_amdgcn.py:336:17
	v_dual_fmac_f32 v33, v146, v165 :: v_dual_and_b32 v92, 0xffff0000, v92
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	v_wmma_i32_16x16x16_iu8 v[68:75], v[113:116], v[97:100], v[68:75] neg_lo:[1,1,0]
	v_cvt_f32_i32_e32 v95, v64
	v_cvt_f32_i32_e32 v107, v60
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	v_wmma_i32_16x16x16_iu8 v[84:91], v[113:116], v[101:104], v[84:91] neg_lo:[1,1,0]
	.loc	1 336 17                        ; generate_amdgcn.py:336:17
	v_dual_fmac_f32 v40, v139, v158 :: v_dual_fmac_f32 v31, v148, v92
	v_dual_fmac_f32 v22, v150, v158 :: v_dual_fmac_f32 v13, v133, v92
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	v_cvt_f32_i32_e32 v92, v61
	v_cvt_f32_i32_e32 v93, v62
	v_cvt_f32_i32_e32 v94, v63
	v_cvt_f32_i32_e32 v96, v65
	v_cvt_f32_i32_e32 v97, v66
	v_cvt_f32_i32_e32 v98, v67
	v_cvt_f32_i32_e32 v99, v68
	v_cvt_f32_i32_e32 v100, v69
	v_cvt_f32_i32_e32 v101, v70
	v_cvt_f32_i32_e32 v102, v71
	v_cvt_f32_i32_e32 v103, v72
	v_cvt_f32_i32_e32 v104, v73
	v_cvt_f32_i32_e32 v105, v74
	v_cvt_f32_i32_e32 v106, v75
	v_cvt_f32_i32_e32 v77, v77
	v_cvt_f32_i32_e32 v78, v78
	v_cvt_f32_i32_e32 v79, v79
	v_cvt_f32_i32_e32 v80, v80
	v_cvt_f32_i32_e32 v82, v82
	v_cvt_f32_i32_e32 v83, v83
	v_cvt_f32_i32_e32 v84, v84
	v_cvt_f32_i32_e32 v85, v85
	v_cvt_f32_i32_e32 v86, v86
	v_cvt_f32_i32_e32 v87, v87
	v_cvt_f32_i32_e32 v88, v88
	v_cvt_f32_i32_e32 v89, v89
	v_cvt_f32_i32_e32 v90, v90
	v_cvt_f32_i32_e32 v91, v91
	v_cvt_f32_i32_e32 v76, v76
	.loc	1 336 17                        ; generate_amdgcn.py:336:17
	v_dual_fmac_f32 v42, v137, v156 :: v_dual_fmac_f32 v29, v124, v153
	v_dual_fmac_f32 v38, v141, v160 :: v_dual_fmac_f32 v27, v126, v155
	v_dual_fmac_f32 v36, v143, v162 :: v_dual_fmac_f32 v23, v149, v157
	v_dual_fmac_f32 v34, v145, v164 :: v_dual_fmac_f32 v21, v151, v159
	v_dual_fmac_f32 v32, v147, v166 :: v_dual_fmac_f32 v19, v128, v161
	v_dual_fmac_f32 v30, v117, v135 :: v_dual_fmac_f32 v15, v131, v165
	v_dual_fmac_f32 v28, v125, v154 :: v_dual_fmac_f32 v17, v130, v163
	.loc	1 332 22                        ; generate_amdgcn.py:332:22
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v109, 16, v120
	v_lshlrev_b32_e32 v108, 16, v119
	.loc	1 336 17                        ; generate_amdgcn.py:336:17
	v_fmac_f32_e32 v24, v136, v156
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_dual_fmac_f32 v16, v152, v164 :: v_dual_mul_f32 v79, v109, v79
	.loc	1 336 24 is_stmt 0              ; generate_amdgcn.py:336:24
	v_dual_mul_f32 v81, v109, v81 :: v_dual_lshlrev_b32 v60, 16, v118
	v_mul_f32_e32 v95, v108, v95
	.loc	1 336 17                        ; generate_amdgcn.py:336:17
	v_dual_fmac_f32 v14, v132, v166 :: v_dual_mul_f32 v107, v107, v108
	v_dual_fmac_f32 v20, v127, v160 :: v_dual_mul_f32 v93, v108, v93
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	ds_store_b32 v59, v60 offset:18432
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[60:63], v50 offset:18432
	ds_load_b128 v[64:67], v50 offset:18448
	ds_load_b128 v[68:71], v50 offset:18944
	ds_load_b128 v[72:75], v50 offset:18960
	v_dual_mul_f32 v92, v108, v92 :: v_dual_mul_f32 v83, v109, v83
	v_dual_mul_f32 v94, v108, v94 :: v_dual_mul_f32 v85, v109, v85
	v_dual_mul_f32 v96, v108, v96 :: v_dual_mul_f32 v87, v109, v87
	v_dual_mul_f32 v97, v108, v97 :: v_dual_mul_f32 v78, v109, v78
	v_dual_mul_f32 v98, v108, v98 :: v_dual_mul_f32 v89, v109, v89
	v_dual_mul_f32 v99, v108, v99 :: v_dual_mul_f32 v80, v109, v80
	v_dual_mul_f32 v100, v108, v100 :: v_dual_mul_f32 v91, v109, v91
	v_dual_mul_f32 v101, v108, v101 :: v_dual_mul_f32 v82, v109, v82
	s_waitcnt lgkmcnt(3)
	v_dual_mul_f32 v102, v108, v102 :: v_dual_fmac_f32 v43, v107, v60
	v_dual_mul_f32 v103, v108, v103 :: v_dual_mul_f32 v84, v109, v84
	v_dual_mul_f32 v104, v108, v104 :: v_dual_fmac_f32 v45, v93, v62
	v_dual_mul_f32 v105, v108, v105 :: v_dual_mul_f32 v86, v109, v86
	s_waitcnt lgkmcnt(2)
	v_dual_mul_f32 v106, v108, v106 :: v_dual_fmac_f32 v39, v98, v67
	s_waitcnt lgkmcnt(1)
	v_dual_mul_f32 v76, v76, v109 :: v_dual_fmac_f32 v35, v102, v71
	v_mul_f32_e32 v77, v109, v77
	v_dual_mul_f32 v88, v109, v88 :: v_dual_fmac_f32 v41, v96, v65
	v_dual_mul_f32 v90, v109, v90 :: v_dual_fmac_f32 v37, v100, v69
	.loc	1 336 17                        ; generate_amdgcn.py:336:17
	s_waitcnt lgkmcnt(0)
	v_dual_fmac_f32 v46, v92, v61 :: v_dual_fmac_f32 v31, v106, v75
	v_dual_fmac_f32 v44, v94, v63 :: v_dual_fmac_f32 v33, v104, v73
	v_dual_fmac_f32 v42, v95, v64 :: v_dual_fmac_f32 v29, v77, v61
	v_dual_fmac_f32 v40, v97, v66 :: v_dual_fmac_f32 v27, v79, v63
	v_dual_fmac_f32 v38, v99, v68 :: v_dual_fmac_f32 v23, v81, v65
	v_dual_fmac_f32 v36, v101, v70 :: v_dual_fmac_f32 v21, v83, v67
	v_dual_fmac_f32 v34, v103, v72 :: v_dual_fmac_f32 v19, v85, v69
	v_dual_fmac_f32 v32, v105, v74 :: v_dual_fmac_f32 v17, v87, v71
	v_dual_fmac_f32 v30, v76, v60 :: v_dual_fmac_f32 v15, v89, v73
	v_dual_fmac_f32 v28, v78, v62 :: v_dual_fmac_f32 v13, v91, v75
	v_fmac_f32_e32 v24, v80, v64
	v_fmac_f32_e32 v22, v82, v66
	v_fmac_f32_e32 v20, v84, v68
	v_fmac_f32_e32 v18, v86, v70
	v_fmac_f32_e32 v16, v88, v72
	v_fmac_f32_e32 v14, v90, v74
	.loc	1 307 5 is_stmt 1               ; generate_amdgcn.py:307:5
	s_cbranch_scc1 .LBB0_2
.LBB0_3:                                ; %._crit_edge
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_bfe_u32 v1, v43, 16, 1
	.loc	1 300 32                        ; generate_amdgcn.py:300:32
	v_lshrrev_b32_e32 v2, 1, v26
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cmp_o_f32_e32 vcc_lo, v43, v43
	v_bfe_u32 v3, v46, 16, 1
	v_bfe_u32 v4, v45, 16, 1
	v_add3_u32 v1, v43, v1, 0x7fff
	.loc	1 390 18 is_stmt 0              ; generate_amdgcn.py:390:18
	s_mul_i32 s22, s22, s23
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cmp_o_f32_e64 s0, v45, v45
	.loc	1 390 18                        ; generate_amdgcn.py:390:18
	v_add3_u32 v26, s22, s2, v2
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_bfe_u32 v2, v44, 16, 1
	v_cndmask_b16 v1.l, 0x7fff, v1.h, vcc_lo
	v_add3_u32 v3, v46, v3, 0x7fff
	v_cmp_o_f32_e32 vcc_lo, v46, v46
	v_add3_u32 v4, v45, v4, 0x7fff
	v_add3_u32 v2, v44, v2, 0x7fff
	v_cmp_o_f32_e64 s1, v44, v44
	v_bfe_u32 v5, v40, 16, 1
	v_cndmask_b16 v1.h, 0x7fff, v3.h, vcc_lo
	v_bfe_u32 v3, v42, 16, 1
	v_cndmask_b16 v2.l, 0x7fff, v4.h, s0
	v_bfe_u32 v4, v41, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v42, v42
	v_cmp_o_f32_e64 s0, v41, v41
	v_add3_u32 v3, v42, v3, 0x7fff
	v_bfe_u32 v6, v39, 16, 1
	v_add3_u32 v4, v41, v4, 0x7fff
	v_cndmask_b16 v2.h, 0x7fff, v2.h, s1
	v_add3_u32 v5, v40, v5, 0x7fff
	v_cmp_o_f32_e64 s1, v40, v40
	v_cndmask_b16 v3.l, 0x7fff, v3.h, vcc_lo
	v_cndmask_b16 v3.h, 0x7fff, v4.h, s0
	v_bfe_u32 v4, v38, 16, 1
	v_bfe_u32 v7, v37, 16, 1
	v_add3_u32 v6, v39, v6, 0x7fff
	v_cmp_o_f32_e32 vcc_lo, v39, v39
	v_cndmask_b16 v5.l, 0x7fff, v5.h, s1
	v_add3_u32 v4, v38, v4, 0x7fff
	v_cmp_o_f32_e64 s0, v38, v38
	v_add3_u32 v7, v37, v7, 0x7fff
	v_cmp_o_f32_e64 s1, v37, v37
	v_cndmask_b16 v5.h, 0x7fff, v6.h, vcc_lo
	v_bfe_u32 v6, v36, 16, 1
	v_bfe_u32 v8, v35, 16, 1
	v_cndmask_b16 v4.l, 0x7fff, v4.h, s0
	v_cndmask_b16 v4.h, 0x7fff, v7.h, s1
	v_bfe_u32 v7, v34, 16, 1
	v_add3_u32 v6, v36, v6, 0x7fff
	v_cmp_o_f32_e32 vcc_lo, v36, v36
	v_add3_u32 v8, v35, v8, 0x7fff
	v_cmp_o_f32_e64 s0, v35, v35
	v_bfe_u32 v9, v33, 16, 1
	v_add3_u32 v7, v34, v7, 0x7fff
	v_cmp_o_f32_e64 s1, v34, v34
	v_cndmask_b16 v6.l, 0x7fff, v6.h, vcc_lo
	v_cndmask_b16 v6.h, 0x7fff, v8.h, s0
	v_bfe_u32 v8, v32, 16, 1
	v_bfe_u32 v10, v31, 16, 1
	v_add3_u32 v9, v33, v9, 0x7fff
	v_cmp_o_f32_e32 vcc_lo, v33, v33
	v_cndmask_b16 v7.l, 0x7fff, v7.h, s1
	v_add3_u32 v8, v32, v8, 0x7fff
	v_cmp_o_f32_e64 s0, v32, v32
	v_add3_u32 v10, v31, v10, 0x7fff
	v_cmp_o_f32_e64 s1, v31, v31
	v_cndmask_b16 v7.h, 0x7fff, v9.h, vcc_lo
	v_bfe_u32 v9, v30, 16, 1
	v_bfe_u32 v11, v29, 16, 1
	v_cndmask_b16 v8.l, 0x7fff, v8.h, s0
	v_cndmask_b16 v8.h, 0x7fff, v10.h, s1
	v_bfe_u32 v10, v28, 16, 1
	v_add3_u32 v9, v30, v9, 0x7fff
	v_cmp_o_f32_e32 vcc_lo, v30, v30
	v_add3_u32 v11, v29, v11, 0x7fff
	v_cmp_o_f32_e64 s0, v29, v29
	v_bfe_u32 v12, v27, 16, 1
	v_add3_u32 v10, v28, v10, 0x7fff
	v_cmp_o_f32_e64 s1, v28, v28
	v_cndmask_b16 v9.l, 0x7fff, v9.h, vcc_lo
	v_cndmask_b16 v9.h, 0x7fff, v11.h, s0
	v_bfe_u32 v11, v24, 16, 1
	v_bfe_u32 v28, v23, 16, 1
	v_add3_u32 v12, v27, v12, 0x7fff
	v_cmp_o_f32_e32 vcc_lo, v27, v27
	v_cndmask_b16 v10.l, 0x7fff, v10.h, s1
	v_add3_u32 v11, v24, v11, 0x7fff
	v_cmp_o_f32_e64 s0, v24, v24
	v_add3_u32 v24, v23, v28, 0x7fff
	v_cmp_o_f32_e64 s1, v23, v23
	v_cndmask_b16 v10.h, 0x7fff, v12.h, vcc_lo
	v_bfe_u32 v12, v22, 16, 1
	v_bfe_u32 v23, v21, 16, 1
	v_cndmask_b16 v11.l, 0x7fff, v11.h, s0
	v_cndmask_b16 v11.h, 0x7fff, v24.h, s1
	v_bfe_u32 v24, v20, 16, 1
	v_add3_u32 v12, v22, v12, 0x7fff
	v_cmp_o_f32_e32 vcc_lo, v22, v22
	v_add3_u32 v22, v21, v23, 0x7fff
	v_cmp_o_f32_e64 s0, v21, v21
	v_add3_u32 v21, v20, v24, 0x7fff
	v_cmp_o_f32_e64 s1, v20, v20
	v_cndmask_b16 v12.l, 0x7fff, v12.h, vcc_lo
	v_bfe_u32 v20, v19, 16, 1
	v_cndmask_b16 v12.h, 0x7fff, v22.h, s0
	v_bfe_u32 v22, v18, 16, 1
	v_bfe_u32 v23, v17, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v19, v19
	v_add3_u32 v20, v19, v20, 0x7fff
	v_cmp_o_f32_e64 s0, v18, v18
	v_add3_u32 v19, v18, v22, 0x7fff
	v_add3_u32 v18, v17, v23, 0x7fff
	v_cndmask_b16 v21.l, 0x7fff, v21.h, s1
	v_cmp_o_f32_e64 s1, v17, v17
	v_bfe_u32 v17, v16, 16, 1
	v_cndmask_b16 v18.l, 0x7fff, v19.h, s0
	v_bfe_u32 v19, v15, 16, 1
	v_cndmask_b16 v21.h, 0x7fff, v20.h, vcc_lo
	v_bfe_u32 v20, v14, 16, 1
	v_add3_u32 v17, v16, v17, 0x7fff
	v_cmp_o_f32_e32 vcc_lo, v16, v16
	v_add3_u32 v16, v15, v19, 0x7fff
	v_bfe_u32 v19, v13, 16, 1
	v_and_b32_e32 v0, 16, v0
	v_cndmask_b16 v18.h, 0x7fff, v18.h, s1
	v_cmp_o_f32_e64 s0, v15, v15
	v_add3_u32 v15, v14, v20, 0x7fff
	v_cmp_o_f32_e64 s1, v14, v14
	v_add3_u32 v14, v13, v19, 0x7fff
	v_cmp_o_f32_e64 s2, v13, v13
	v_cndmask_b16 v13.l, 0x7fff, v17.h, vcc_lo
	v_cmp_eq_u32_e32 vcc_lo, 0, v0
	v_cndmask_b16 v13.h, 0x7fff, v16.h, s0
	v_cndmask_b16 v0.l, 0x7fff, v15.h, s1
	v_cndmask_b16 v0.h, 0x7fff, v14.h, s2
	v_dual_mov_b32 v15, 0x5410 :: v_dual_cndmask_b32 v14, v3, v1
	v_cndmask_b32_e32 v1, v1, v3, vcc_lo
	v_dual_cndmask_b32 v3, v5, v2 :: v_dual_cndmask_b32 v2, v2, v5
	v_dual_cndmask_b32 v5, v7, v4 :: v_dual_cndmask_b32 v4, v4, v7
	v_dual_cndmask_b32 v7, v8, v6 :: v_dual_mov_b32 v16, 0x7632
	v_dual_cndmask_b32 v6, v6, v8 :: v_dual_cndmask_b32 v17, v11, v9
	v_cndmask_b32_e32 v8, v9, v11, vcc_lo
	v_cndmask_b32_e32 v9, 0x1054, v15, vcc_lo
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_cndmask_b32_e32 v11, 0x3276, v16, vcc_lo
	v_dual_cndmask_b32 v15, v12, v10 :: v_dual_cndmask_b32 v16, v13, v21
	v_cndmask_b32_e32 v10, v10, v12, vcc_lo
	v_lshl_or_b32 v9, v9, 8, v9
	s_delay_alu instid0(VALU_DEP_4)
	v_lshl_or_b32 v11, v11, 8, v11
	s_mov_b32 s0, 0x76543210
	.loc	1 390 18                        ; generate_amdgcn.py:390:18
	v_mul_lo_u32 v25, s23, v25
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_dual_cndmask_b32 v12, v21, v13 :: v_dual_cndmask_b32 v19, v0, v18
	v_dual_cndmask_b32 v0, v18, v0 :: v_dual_and_b32 v9, 0x540054, v9
	v_and_b32_e32 v11, 0x760076, v11
	v_permlanex16_b32 v13, v2, s0, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v1, v1, s0, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_4)
	v_lshl_or_b32 v2, v9, 4, v9
	v_permlanex16_b32 v24, v12, s0, 0xfedcba98 op_sel:[1,0]
	v_lshl_or_b32 v9, v11, 4, v11
	v_permlanex16_b32 v11, v4, s0, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v18, v6, s0, 0xfedcba98 op_sel:[1,0]
	v_and_b32_e32 v21, 0x5040504, v2
	.loc	1 390 18                        ; generate_amdgcn.py:390:18
	v_lshl_add_u32 v43, s23, 4, v25
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_and_b32_e32 v22, 0x7060706, v9
	v_permlanex16_b32 v20, v8, s0, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v23, v10, s0, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v27, v0, s0, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v0, v1, v14, v21
	v_perm_b32 v1, v1, v14, v22
	v_perm_b32 v2, v13, v3, v21
	v_perm_b32 v3, v13, v3, v22
	v_perm_b32 v12, v24, v16, v21
	v_perm_b32 v13, v24, v16, v22
	.loc	1 390 18                        ; generate_amdgcn.py:390:18
	v_add_lshl_u32 v16, v26, v25, 1
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_perm_b32 v4, v11, v5, v21
	v_perm_b32 v5, v11, v5, v22
	v_perm_b32 v6, v18, v7, v21
	v_perm_b32 v7, v18, v7, v22
	v_perm_b32 v8, v20, v17, v21
	v_perm_b32 v9, v20, v17, v22
	v_perm_b32 v10, v23, v15, v21
	v_perm_b32 v11, v23, v15, v22
	.loc	1 390 18                        ; generate_amdgcn.py:390:18
	v_add_lshl_u32 v17, v26, v43, 1
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_perm_b32 v14, v27, v19, v21
	v_perm_b32 v15, v27, v19, v22
	s_and_b32 s21, s21, 0xffff
	s_mov_b32 s23, 0x31027000
	s_mov_b32 s22, 0x7ffffffe
	s_clause 0x3
	buffer_store_b128 v[0:3], v16, s[20:23], 0 offen
	buffer_store_b128 v[4:7], v16, s[20:23], 0 offen offset:256
	buffer_store_b128 v[8:11], v17, s[20:23], 0 offen
	buffer_store_b128 v[12:15], v17, s[20:23], 0 offen offset:256
	.loc	1 283 1 is_stmt 1               ; generate_amdgcn.py:283:1
	s_nop 0
	s_sendmsg sendmsg(MSG_DEALLOC_VGPRS)
	s_endpgm
.Ltmp24:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_int8xint8_nt_sc32_none_bm32_bn256_bk64_gm4_w8_s3_weu2_sk1_maskk
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
		.amdhsa_next_free_sgpr 30
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
		.amdhsa_inst_pref_size 38
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
	.size	amd_strix_halo_gfx1151_int8xint8_nt_sc32_none_bm32_bn256_bk64_gm4_w8_s3_weu2_sk1_maskk, .Lfunc_end0-amd_strix_halo_gfx1151_int8xint8_nt_sc32_none_bm32_bn256_bk64_gm4_w8_s3_weu2_sk1_maskk
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_int8xint8_nt_sc32_none_bm32_bn256_bk64_gm4_w8_s3_weu2_sk1_maskk.num_vgpr, 167
	.set amd_strix_halo_gfx1151_int8xint8_nt_sc32_none_bm32_bn256_bk64_gm4_w8_s3_weu2_sk1_maskk.num_agpr, 0
	.set amd_strix_halo_gfx1151_int8xint8_nt_sc32_none_bm32_bn256_bk64_gm4_w8_s3_weu2_sk1_maskk.numbered_sgpr, 30
	.set amd_strix_halo_gfx1151_int8xint8_nt_sc32_none_bm32_bn256_bk64_gm4_w8_s3_weu2_sk1_maskk.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_int8xint8_nt_sc32_none_bm32_bn256_bk64_gm4_w8_s3_weu2_sk1_maskk.private_seg_size, 0
	.set amd_strix_halo_gfx1151_int8xint8_nt_sc32_none_bm32_bn256_bk64_gm4_w8_s3_weu2_sk1_maskk.uses_vcc, 1
	.set amd_strix_halo_gfx1151_int8xint8_nt_sc32_none_bm32_bn256_bk64_gm4_w8_s3_weu2_sk1_maskk.uses_flat_scratch, 0
	.set amd_strix_halo_gfx1151_int8xint8_nt_sc32_none_bm32_bn256_bk64_gm4_w8_s3_weu2_sk1_maskk.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_int8xint8_nt_sc32_none_bm32_bn256_bk64_gm4_w8_s3_weu2_sk1_maskk.has_recursion, 0
	.set amd_strix_halo_gfx1151_int8xint8_nt_sc32_none_bm32_bn256_bk64_gm4_w8_s3_weu2_sk1_maskk.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 4768
; TotalNumSgprs: 32
; NumVgprs: 167
; ScratchSize: 0
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 30
; NumSGPRsForWavesPerEU: 32
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
	.quad	.Ltmp19-.Lfunc_begin0
	.quad	.Ltmp20-.Lfunc_begin0
	.quad	.Ltmp21-.Lfunc_begin0
	.quad	.Ltmp22-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges3:
	.quad	.Ltmp15-.Lfunc_begin0
	.quad	.Ltmp16-.Lfunc_begin0
	.quad	.Ltmp18-.Lfunc_begin0
	.quad	.Ltmp19-.Lfunc_begin0
	.quad	.Ltmp20-.Lfunc_begin0
	.quad	.Ltmp21-.Lfunc_begin0
	.quad	.Ltmp22-.Lfunc_begin0
	.quad	.Ltmp23-.Lfunc_begin0
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
	.asciz	"amd_strix_halo_gfx1151_int8xint8_nt_sc32_none_bm32_bn256_bk64_gm4_w8_s3_weu2_sk1_maskk"             ; string offset=75 ; amd_strix_halo_gfx1151_int8xint8_nt_sc32_none_bm32_bn256_bk64_gm4_w8_s3_weu2_sk1_maskk
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
    .name:           amd_strix_halo_gfx1151_int8xint8_nt_sc32_none_bm32_bn256_bk64_gm4_w8_s3_weu2_sk1_maskk
    .private_segment_fixed_size: 0
    .sgpr_count:     32
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_int8xint8_nt_sc32_none_bm32_bn256_bk64_gm4_w8_s3_weu2_sk1_maskk.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     167
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
