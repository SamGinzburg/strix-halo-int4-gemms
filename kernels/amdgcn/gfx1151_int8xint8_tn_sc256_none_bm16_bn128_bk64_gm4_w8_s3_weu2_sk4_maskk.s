	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_int8xint8_tn_sc256_none_bm16_bn128_bk64_gm4_w8_s3_weu2_sk4_maskk               ; -- Begin function amd_strix_halo_gfx1151_int8xint8_tn_sc256_none_bm16_bn128_bk64_gm4_w8_s3_weu2_sk4_maskk
	.p2align	8
	.type	amd_strix_halo_gfx1151_int8xint8_tn_sc256_none_bm16_bn128_bk64_gm4_w8_s3_weu2_sk4_maskk,@function
amd_strix_halo_gfx1151_int8xint8_tn_sc256_none_bm16_bn128_bk64_gm4_w8_s3_weu2_sk4_maskk:                      ; @amd_strix_halo_gfx1151_int8xint8_tn_sc256_none_bm16_bn128_bk64_gm4_w8_s3_weu2_sk4_maskk
.Lfunc_begin0:
	.file	1 "<repo>/scripts" "generate_amdgcn.py"
	.loc	1 309 0                         ; generate_amdgcn.py:309:0
	.cfi_sections .debug_frame
	.cfi_startproc
; %bb.0:
	s_clause 0x1
	s_load_b64 s[34:35], s[0:1], 0x30
	s_load_b32 s19, s[0:1], 0x38
.Ltmp0:
	.loc	1 319 16 prologue_end           ; generate_amdgcn.py:319:16
	s_abs_i32 s7, s2
	.loc	1 327 14                        ; generate_amdgcn.py:327:14
	v_lshrrev_b32_e32 v30, 3, v0
	.loc	1 326 32                        ; generate_amdgcn.py:326:32
	v_and_b32_e32 v10, 7, v0
	.loc	1 327 14                        ; generate_amdgcn.py:327:14
	v_lshrrev_b32_e32 v31, 2, v0
	.loc	1 325 32                        ; generate_amdgcn.py:325:32
	v_lshlrev_b32_e32 v11, 2, v0
	.loc	1 378 22                        ; generate_amdgcn.py:378:22
	v_lshlrev_b32_e32 v37, 4, v0
	.loc	1 327 14                        ; generate_amdgcn.py:327:14
	v_or_b32_e32 v32, 32, v30
	.loc	1 325 32                        ; generate_amdgcn.py:325:32
	v_and_b32_e32 v29, 15, v0
	v_or_b32_e32 v36, 0x3f0, v0
	.loc	1 372 22                        ; generate_amdgcn.py:372:22
	v_add_nc_u32_e32 v39, 0, v11
	s_mov_b32 s38, 0
	.loc	1 378 22                        ; generate_amdgcn.py:378:22
	v_add_nc_u32_e32 v40, 0, v37
.Ltmp1:
	.file	2 "<triton>/python/triton/language" "standard.py"
	.loc	2 43 13                         ; standard.py:43:13 @[ generate_amdgcn.py:317:17 ]
	s_waitcnt lgkmcnt(0)
	s_add_i32 s4, s35, 0x7f
.Ltmp2:
	.loc	2 43 13 is_stmt 0               ; standard.py:43:13 @[ generate_amdgcn.py:316:17 ]
	s_add_i32 s8, s34, 15
.Ltmp3:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:317:17 ]
	s_ashr_i32 s5, s4, 31
.Ltmp4:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:316:17 ]
	s_ashr_i32 s10, s8, 31
.Ltmp5:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:317:17 ]
	s_lshr_b32 s5, s5, 25
.Ltmp6:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:316:17 ]
	s_lshr_b32 s10, s10, 28
.Ltmp7:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:317:17 ]
	s_add_i32 s4, s4, s5
.Ltmp8:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:316:17 ]
	s_add_i32 s8, s8, s10
.Ltmp9:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:317:17 ]
	s_ashr_i32 s4, s4, 7
.Ltmp10:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:316:17 ]
	s_ashr_i32 s8, s8, 4
.Ltmp11:
	.loc	1 318 24 is_stmt 1              ; generate_amdgcn.py:318:24
	s_lshl_b32 s4, s4, 2
	.loc	1 378 30                        ; generate_amdgcn.py:378:30
	v_mul_lo_u32 v3, s35, v30
	.loc	1 319 16                        ; generate_amdgcn.py:319:16
	s_abs_i32 s5, s4
	.loc	1 372 30                        ; generate_amdgcn.py:372:30
	v_mul_lo_u32 v2, s34, v31
	.loc	1 319 16                        ; generate_amdgcn.py:319:16
	s_cvt_f32_u32 s6, s5
	s_sub_i32 s9, 0, s5
	s_delay_alu instid0(SALU_CYCLE_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_rcp_iflag_f32_e32 v1, s6
	.loc	1 378 30                        ; generate_amdgcn.py:378:30
	v_lshl_add_u32 v33, v10, 4, v3
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_lshl_add_u32 v34, s35, 5, v33
	.loc	1 319 16                        ; generate_amdgcn.py:319:16
	v_readfirstlane_b32 s6, v1
	s_mul_f32 s6, s6, 0x4f7ffffe
	s_delay_alu instid0(SALU_CYCLE_3) | instskip(NEXT) | instid1(SALU_CYCLE_3)
	s_cvt_u32_f32 s6, s6
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
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 320 19                        ; generate_amdgcn.py:320:19
	s_lshl_b32 s6, s5, 2
	.loc	1 322 29                        ; generate_amdgcn.py:322:29
	s_mul_i32 s5, s5, s4
	.loc	1 321 31                        ; generate_amdgcn.py:321:31
	s_sub_i32 s7, s8, s6
	.loc	1 322 29                        ; generate_amdgcn.py:322:29
	s_sub_i32 s2, s2, s5
	.loc	1 321 20                        ; generate_amdgcn.py:321:20
	s_min_i32 s7, s7, 4
	.loc	1 323 13                        ; generate_amdgcn.py:323:13
	s_abs_i32 s5, s2
	s_abs_i32 s16, s7
	s_load_b256 s[8:15], s[0:1], 0x0
	s_cvt_f32_u32 s17, s16
	s_sub_i32 s18, 0, s16
	s_delay_alu instid0(SALU_CYCLE_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_iflag_f32_e32 v1, s17
	v_readfirstlane_b32 s17, v1
	.loc	1 325 32                        ; generate_amdgcn.py:325:32
	v_and_b32_e32 v1, 12, v11
	.loc	1 323 13                        ; generate_amdgcn.py:323:13
	s_mul_f32 s17, s17, 0x4f7ffffe
	s_waitcnt lgkmcnt(0)
	s_mov_b64 s[20:21], s[10:11]
	s_mov_b32 s11, 0x31027000
	s_mov_b32 s10, 0x7ffffffe
	s_cvt_u32_f32 s17, s17
	.loc	1 378 22                        ; generate_amdgcn.py:378:22
	s_mov_b32 s22, s10
	s_mov_b32 s23, s11
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	.loc	1 323 13                        ; generate_amdgcn.py:323:13
	s_mul_i32 s18, s18, s17
	s_mul_hi_u32 s4, s17, s18
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_add_i32 s17, s17, s4
	s_mul_hi_u32 s4, s5, s17
	s_xor_b32 s17, s2, s7
	s_mul_i32 s18, s4, s16
	s_ashr_i32 s17, s17, 31
	s_sub_i32 s5, s5, s18
	s_add_i32 s18, s4, 1
	s_sub_i32 s24, s5, s16
	s_cmp_ge_u32 s5, s16
	s_cselect_b32 s4, s18, s4
	s_cselect_b32 s5, s24, s5
	s_add_i32 s18, s4, 1
	s_cmp_ge_u32 s5, s16
	s_cselect_b32 s4, s18, s4
	.loc	1 368 22                        ; generate_amdgcn.py:368:22
	s_lshl_b32 s18, s3, 6
	.loc	1 323 13                        ; generate_amdgcn.py:323:13
	s_xor_b32 s3, s4, s17
.Ltmp12:
	.loc	2 43 13                         ; standard.py:43:13 @[ generate_amdgcn.py:333:28 ]
	s_add_i32 s25, s19, 0xff
.Ltmp13:
	.loc	1 323 13                        ; generate_amdgcn.py:323:13
	s_sub_i32 s3, s3, s17
.Ltmp14:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:333:28 ]
	s_ashr_i32 s4, s25, 31
.Ltmp15:
	.loc	1 322 28                        ; generate_amdgcn.py:322:28
	s_mul_i32 s7, s3, s7
	.loc	1 326 14                        ; generate_amdgcn.py:326:14
	s_lshl_b32 s33, s3, 7
	.loc	1 322 28                        ; generate_amdgcn.py:322:28
	s_sub_i32 s3, s2, s7
	.loc	1 368 17                        ; generate_amdgcn.py:368:17
	v_or_b32_e32 v3, s18, v31
	v_or_b32_e32 v4, s18, v30
	v_or_b32_e32 v5, s18, v32
.Ltmp16:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:333:28 ]
	s_lshr_b32 s4, s4, 24
.Ltmp17:
	.loc	1 322 13                        ; generate_amdgcn.py:322:13
	s_add_i32 s3, s3, s6
.Ltmp18:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:333:28 ]
	s_add_i32 s24, s25, s4
.Ltmp19:
	.loc	1 325 14                        ; generate_amdgcn.py:325:14
	s_lshl_b32 s6, s3, 4
	.loc	1 378 30                        ; generate_amdgcn.py:378:30
	s_mul_i32 s16, s35, s18
	.loc	1 333 5                         ; generate_amdgcn.py:333:5
	s_cmpk_gt_i32 s25, 0xff
	.loc	1 369 23                        ; generate_amdgcn.py:369:23
	v_cmp_gt_i32_e32 vcc_lo, s19, v3
	.loc	1 370 23                        ; generate_amdgcn.py:370:23
	v_cmp_gt_i32_e64 s2, s19, v4
	v_cmp_gt_i32_e64 s4, s19, v5
	.loc	1 333 5                         ; generate_amdgcn.py:333:5
	s_cselect_b32 s3, -1, 0
	.loc	1 378 30                        ; generate_amdgcn.py:378:30
	s_add_i32 s16, s33, s16
	.loc	1 372 30                        ; generate_amdgcn.py:372:30
	v_add3_u32 v9, v2, v1, s6
	.loc	1 378 30                        ; generate_amdgcn.py:378:30
	v_add_nc_u32_e32 v1, s16, v33
	.loc	1 372 22                        ; generate_amdgcn.py:372:22
	s_and_b32 s9, s9, 0xffff
	.loc	1 378 22                        ; generate_amdgcn.py:378:22
	s_and_b32 s21, s21, 0xffff
	.loc	1 333 5                         ; generate_amdgcn.py:333:5
	s_and_b32 s2, s2, s3
	s_and_b32 s4, s4, s3
	s_and_b32 vcc_lo, vcc_lo, s3
	s_cmpk_gt_i32 s25, 0x1ff
	.loc	1 372 30                        ; generate_amdgcn.py:372:30
	s_mul_i32 s5, s34, s18
	.loc	1 378 22                        ; generate_amdgcn.py:378:22
	v_cndmask_b32_e64 v1, 0x80000000, v1, s2
	.loc	1 333 5                         ; generate_amdgcn.py:333:5
	s_cselect_b32 s2, -1, 0
	.loc	1 368 17                        ; generate_amdgcn.py:368:17
	s_add_i32 s7, s18, 0x100
	.loc	1 378 30                        ; generate_amdgcn.py:378:30
	v_add_nc_u32_e32 v2, s16, v34
	.loc	1 372 30                        ; generate_amdgcn.py:372:30
	v_add_nc_u32_e32 v3, s5, v9
	.loc	1 368 17                        ; generate_amdgcn.py:368:17
	v_or_b32_e32 v4, s7, v31
	v_or_b32_e32 v5, s7, v30
	v_or_b32_e32 v6, s7, v32
	.loc	1 378 22                        ; generate_amdgcn.py:378:22
	v_cndmask_b32_e64 v2, 0x80000000, v2, s4
	.loc	1 372 30                        ; generate_amdgcn.py:372:30
	s_lshl_b32 s4, s34, 8
	.loc	1 378 30                        ; generate_amdgcn.py:378:30
	s_lshl_b32 s17, s35, 8
	.loc	1 372 22                        ; generate_amdgcn.py:372:22
	v_cndmask_b32_e32 v3, 0x80000000, v3, vcc_lo
	.loc	1 369 23                        ; generate_amdgcn.py:369:23
	v_cmp_gt_i32_e32 vcc_lo, s19, v4
	.loc	1 378 30                        ; generate_amdgcn.py:378:30
	s_add_i32 s16, s16, s17
	.loc	1 372 30                        ; generate_amdgcn.py:372:30
	v_add3_u32 v7, s5, s4, v9
	.loc	1 370 23                        ; generate_amdgcn.py:370:23
	v_cmp_gt_i32_e64 s4, s19, v5
	.loc	1 378 30                        ; generate_amdgcn.py:378:30
	v_add_nc_u32_e32 v8, s16, v33
	.loc	1 370 23                        ; generate_amdgcn.py:370:23
	v_cmp_gt_i32_e64 s5, s19, v6
	.loc	1 333 5                         ; generate_amdgcn.py:333:5
	s_and_b32 vcc_lo, vcc_lo, s2
	.loc	1 378 30                        ; generate_amdgcn.py:378:30
	v_add_nc_u32_e32 v20, s16, v34
	.loc	1 378 22 is_stmt 0              ; generate_amdgcn.py:378:22
	s_clause 0x1
	buffer_load_b128 v[12:15], v1, s[20:23], 0 offen
	buffer_load_b128 v[16:19], v2, s[20:23], 0 offen
	.loc	1 372 22 is_stmt 1              ; generate_amdgcn.py:372:22
	v_cndmask_b32_e32 v1, 0x80000000, v7, vcc_lo
	.loc	1 333 5                         ; generate_amdgcn.py:333:5
	s_and_b32 vcc_lo, s4, s2
	.loc	1 372 22                        ; generate_amdgcn.py:372:22
	buffer_load_b32 v28, v3, s[8:11], 0 offen
	.loc	1 378 22                        ; generate_amdgcn.py:378:22
	v_cndmask_b32_e32 v2, 0x80000000, v8, vcc_lo
	.loc	1 333 5                         ; generate_amdgcn.py:333:5
	s_and_b32 vcc_lo, s5, s2
	s_mov_b64 s[16:17], s[14:15]
	.loc	1 378 22                        ; generate_amdgcn.py:378:22
	v_cndmask_b32_e32 v3, 0x80000000, v20, vcc_lo
	.loc	1 372 22                        ; generate_amdgcn.py:372:22
	buffer_load_b32 v38, v1, s[8:11], 0 offen
	.loc	1 378 22                        ; generate_amdgcn.py:378:22
	s_clause 0x1
	buffer_load_b128 v[20:23], v2, s[20:23], 0 offen
	buffer_load_b128 v[24:27], v3, s[20:23], 0 offen
	.loc	1 326 32                        ; generate_amdgcn.py:326:32
	v_lshrrev_b32_e32 v1, 1, v0
	v_lshrrev_b32_e32 v2, 4, v0
	.loc	1 333 5                         ; generate_amdgcn.py:333:5
	s_cmpk_gt_i32 s25, 0x2ff
	.loc	1 378 22                        ; generate_amdgcn.py:378:22
	s_waitcnt vmcnt(4)
	ds_store_b128 v40, v[16:19] offset:4096
	.loc	1 372 22                        ; generate_amdgcn.py:372:22
	s_waitcnt vmcnt(3)
	ds_store_b32 v39, v28 offset:16384
	.loc	1 378 22                        ; generate_amdgcn.py:378:22
	ds_store_b128 v40, v[12:15]
	.loc	1 326 32                        ; generate_amdgcn.py:326:32
	v_and_b32_e32 v35, 0x70, v1
	.loc	1 372 22                        ; generate_amdgcn.py:372:22
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_waitcnt vmcnt(2)
	ds_store_b32 v39, v38 offset:17408
	.loc	1 378 22                        ; generate_amdgcn.py:378:22
	s_waitcnt vmcnt(1)
	ds_store_b128 v40, v[20:23] offset:8192
	s_waitcnt vmcnt(0)
	ds_store_b128 v40, v[24:27] offset:12288
	.loc	1 326 32                        ; generate_amdgcn.py:326:32
	v_and_or_b32 v1, v2, 1, v35
	s_delay_alu instid0(VALU_DEP_1)
	v_or_b32_e32 v5, 2, v1
	v_or_b32_e32 v6, 4, v1
	v_or_b32_e32 v7, 6, v1
	v_or_b32_e32 v8, 8, v1
	v_or_b32_e32 v2, 10, v1
	v_or_b32_e32 v3, 12, v1
	v_or_b32_e32 v4, 14, v1
	.loc	1 333 5                         ; generate_amdgcn.py:333:5
	s_cbranch_scc1 .LBB0_2
; %bb.1:                                ; %.._crit_edge_crit_edge
	.loc	1 372 22                        ; generate_amdgcn.py:372:22
	v_or_b32_e32 v38, 0x3f0, v0
	s_mov_b32 s14, 0
	s_branch .LBB0_3
.LBB0_2:
	.loc	1 0 22 is_stmt 0                ; generate_amdgcn.py:0:22
	s_mov_b32 s14, -1
                                        ; implicit-def: $vgpr38
.LBB0_3:                                ; %Flow19
	s_load_b64 s[4:5], s[0:1], 0x20
	v_or_b32_e32 v12, s6, v29
	s_ashr_i32 s1, s24, 8
	v_or_b32_e32 v27, s33, v1
	v_or_b32_e32 v26, s33, v5
	v_or_b32_e32 v25, s33, v6
	v_mul_lo_u32 v28, v12, s1
	v_or_b32_e32 v23, s33, v7
	v_or_b32_e32 v21, s33, v8
	v_or_b32_e32 v24, s33, v2
	v_or_b32_e32 v22, s33, v3
	v_or_b32_e32 v20, s33, v4
	s_and_not1_b32 vcc_lo, exec_lo, s14
	s_cbranch_vccnz .LBB0_7
; %bb.4:                                ; %.lr.ph
	v_dual_mov_b32 v1, 0 :: v_dual_mov_b32 v12, 0
	s_mov_b32 s27, 0x31027000
	s_mov_b32 s26, 0x7ffffffe
	.loc	1 333 5 is_stmt 1               ; generate_amdgcn.py:333:5
	s_max_i32 s39, s1, 3
	s_delay_alu instid0(VALU_DEP_1)
	v_dual_mov_b32 v2, v1 :: v_dual_mov_b32 v15, 0
	v_dual_mov_b32 v3, v1 :: v_dual_mov_b32 v14, 0
	v_dual_mov_b32 v4, v1 :: v_dual_mov_b32 v17, 0
	v_dual_mov_b32 v5, v1 :: v_dual_mov_b32 v16, 0
	v_dual_mov_b32 v6, v1 :: v_dual_mov_b32 v19, 0
	v_dual_mov_b32 v7, v1 :: v_dual_mov_b32 v18, 0
	v_dual_mov_b32 v8, v1 :: v_dual_mov_b32 v13, 0
	s_add_i32 s15, s7, 0x100
	s_and_b32 s25, s13, 0xffff
	s_mov_b32 s24, s12
	s_and_b32 s29, s17, 0xffff
	s_mov_b32 s28, s16
	s_add_i32 s14, 0, 0x4000
	s_add_i32 s37, 0, 0x4400
	s_add_i32 s36, 0, 0x2000
	s_add_i32 s39, s39, -3
	s_mov_b32 s40, 1
	s_mov_b32 s22, s10
	s_mov_b32 s23, s11
	s_mov_b32 s30, s26
	s_mov_b32 s31, s27
	s_mov_b32 s41, 0
.LBB0_5:                                ; =>This Inner Loop Header: Depth=1
	.loc	1 0 5 is_stmt 0                 ; generate_amdgcn.py:0:5
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 334 14 is_stmt 1              ; generate_amdgcn.py:334:14
	s_lshl_b32 s42, s41, 8
	s_mov_b32 s0, s18
	s_mov_b32 s18, s7
	.loc	1 368 17                        ; generate_amdgcn.py:368:17
	s_add_i32 s7, s15, s42
	.loc	1 388 29                        ; generate_amdgcn.py:388:29
	s_ashr_i32 s42, s0, 31
	.loc	1 368 17                        ; generate_amdgcn.py:368:17
	v_or_b32_e32 v40, s7, v31
	.loc	1 372 30                        ; generate_amdgcn.py:372:30
	v_mad_u64_u32 v[38:39], null, s7, s34, v[9:10]
	.loc	1 388 29                        ; generate_amdgcn.py:388:29
	s_lshr_b32 s42, s42, 24
	.loc	1 378 30                        ; generate_amdgcn.py:378:30
	s_mul_i32 s43, s7, s35
	.loc	1 388 29                        ; generate_amdgcn.py:388:29
	s_add_i32 s0, s0, s42
	.loc	1 369 23                        ; generate_amdgcn.py:369:23
	v_cmp_gt_i32_e32 vcc_lo, s19, v40
	.loc	1 388 29                        ; generate_amdgcn.py:388:29
	s_ashr_i32 s0, s0, 8
	.loc	1 378 30                        ; generate_amdgcn.py:378:30
	s_add_i32 s43, s43, s33
	.loc	1 389 34                        ; generate_amdgcn.py:389:34
	s_cmp_lt_i32 s0, s1
	.loc	1 390 22                        ; generate_amdgcn.py:390:22
	v_add_lshl_u32 v39, v28, s0, 1
	.loc	1 392 40                        ; generate_amdgcn.py:392:40
	s_mul_i32 s0, s0, s35
	.loc	1 372 22                        ; generate_amdgcn.py:372:22
	v_cndmask_b32_e32 v38, 0x80000000, v38, vcc_lo
	.loc	1 392 22                        ; generate_amdgcn.py:392:22
	v_add_lshl_u32 v40, v27, s0, 1
	v_add_lshl_u32 v41, v26, s0, 1
	v_add_lshl_u32 v42, v25, s0, 1
	.loc	1 389 34                        ; generate_amdgcn.py:389:34
	s_cselect_b32 vcc_lo, -1, 0
	.loc	1 392 22                        ; generate_amdgcn.py:392:22
	v_add_lshl_u32 v43, v23, s0, 1
	v_add_lshl_u32 v44, v21, s0, 1
	v_add_lshl_u32 v45, v24, s0, 1
	v_add_lshl_u32 v46, v22, s0, 1
	v_add_lshl_u32 v47, v20, s0, 1
	.loc	1 390 22                        ; generate_amdgcn.py:390:22
	v_cndmask_b32_e32 v39, 0x80000000, v39, vcc_lo
	.loc	1 372 22                        ; generate_amdgcn.py:372:22
	buffer_load_b32 v86, v38, s[8:11], 0 offen
	.loc	1 392 22                        ; generate_amdgcn.py:392:22
	v_cndmask_b32_e32 v38, 0x80000000, v40, vcc_lo
	v_dual_cndmask_b32 v40, 0x80000000, v41 :: v_dual_cndmask_b32 v41, 0x80000000, v42
	v_cndmask_b32_e32 v42, 0x80000000, v43, vcc_lo
	.loc	1 372 22                        ; generate_amdgcn.py:372:22
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 392 22                        ; generate_amdgcn.py:392:22
	v_dual_cndmask_b32 v43, 0x80000000, v44 :: v_dual_cndmask_b32 v44, 0x80000000, v45
	v_dual_cndmask_b32 v45, 0x80000000, v46 :: v_dual_cndmask_b32 v46, 0x80000000, v47
	.loc	1 390 22                        ; generate_amdgcn.py:390:22
	buffer_load_u16 v87, v39, s[24:27], 0 offen
	.loc	1 392 22                        ; generate_amdgcn.py:392:22
	s_clause 0x7
	buffer_load_u16 v88, v38, s[28:31], 0 offen
	buffer_load_u16 v89, v40, s[28:31], 0 offen
	buffer_load_u16 v90, v41, s[28:31], 0 offen
	buffer_load_u16 v91, v42, s[28:31], 0 offen
	buffer_load_u16 v92, v43, s[28:31], 0 offen
	buffer_load_u16 v93, v44, s[28:31], 0 offen
	buffer_load_u16 v94, v45, s[28:31], 0 offen
	buffer_load_u16 v95, v46, s[28:31], 0 offen
	.loc	1 368 17                        ; generate_amdgcn.py:368:17
	v_or_b32_e32 v39, s7, v30
	v_or_b32_e32 v38, s7, v32
	.loc	1 378 30                        ; generate_amdgcn.py:378:30
	v_add_nc_u32_e32 v40, s43, v33
	v_add_nc_u32_e32 v41, s43, v34
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 370 23                        ; generate_amdgcn.py:370:23
	v_cmp_gt_i32_e64 s0, s19, v39
	v_cmp_gt_i32_e32 vcc_lo, s19, v38
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 378 22                        ; generate_amdgcn.py:378:22
	v_cndmask_b32_e64 v38, 0x80000000, v40, s0
	v_cndmask_b32_e32 v39, 0x80000000, v41, vcc_lo
	s_clause 0x1
	buffer_load_b128 v[46:49], v38, s[20:23], 0 offen
	buffer_load_b128 v[50:53], v39, s[20:23], 0 offen
	s_mov_b32 s0, s14
	s_mov_b32 s14, s37
	.loc	1 372 22                        ; generate_amdgcn.py:372:22
	v_add_nc_u32_e32 v38, s0, v29
	s_mov_b32 s37, s38
	v_add_nc_u32_e32 v39, s0, v36
	.loc	1 378 22                        ; generate_amdgcn.py:378:22
	v_add3_u32 v40, s37, v35, v29
	.loc	1 379 19                        ; generate_amdgcn.py:379:19
	ds_load_u8 v41, v38 offset:208
	ds_load_u8 v42, v38 offset:240
	ds_load_u8 v43, v38 offset:224
	ds_load_u8 v44, v38 offset:192
	ds_load_u8 v45, v38 offset:144
	ds_load_u8 v54, v38 offset:176
	ds_load_u8 v55, v38 offset:160
	ds_load_u8 v56, v38 offset:128
	ds_load_u8 v57, v38 offset:80
	ds_load_u8 v58, v38 offset:112
	ds_load_u8 v59, v38 offset:96
	ds_load_u8 v60, v38 offset:64
	ds_load_u8 v61, v38
	ds_load_u8 v62, v38 offset:16
	ds_load_u8 v63, v38 offset:32
	ds_load_u8 v64, v38 offset:48
	ds_load_u8 v65, v40 offset:1664
	ds_load_u8 v66, v40 offset:1920
	ds_load_u8 v67, v40 offset:1792
	ds_load_u8 v68, v40 offset:1536
	ds_load_u8 v69, v40 offset:1152
	ds_load_u8 v70, v40 offset:1408
	ds_load_u8 v71, v40 offset:1280
	ds_load_u8 v72, v40 offset:1024
	ds_load_u8 v73, v40 offset:640
	ds_load_u8 v74, v40 offset:896
	ds_load_u8 v75, v40 offset:768
	ds_load_u8 v76, v40 offset:512
	ds_load_u8 v77, v40 offset:128
	ds_load_u8 v78, v40 offset:384
	ds_load_u8 v79, v40 offset:256
	ds_load_u8 v80, v40
	ds_load_u8 v81, v38 offset:464
	ds_load_u8 v82, v38 offset:496
	ds_load_u8 v83, v38 offset:480
	ds_load_u8 v84, v38 offset:448
	ds_load_u8 v85, v38 offset:400
	ds_load_u8 v96, v38 offset:432
	ds_load_u8 v97, v38 offset:416
	ds_load_u8 v98, v38 offset:384
	ds_load_u8 v99, v38 offset:336
	ds_load_u8 v100, v38 offset:368
	ds_load_u8 v101, v38 offset:352
	ds_load_u8 v102, v38 offset:320
	ds_load_u8 v103, v38 offset:272
	ds_load_u8 v104, v38 offset:304
	ds_load_u8 v105, v38 offset:288
	ds_load_u8 v106, v38 offset:256
	ds_load_u8 v107, v40 offset:3712
	ds_load_u8 v108, v40 offset:3968
	ds_load_u8 v109, v40 offset:3840
	ds_load_u8 v110, v40 offset:3584
	ds_load_u8 v111, v40 offset:3200
	ds_load_u8 v112, v40 offset:3456
	ds_load_u8 v113, v40 offset:3328
	ds_load_u8 v114, v40 offset:3072
	ds_load_u8 v115, v40 offset:2688
	ds_load_u8 v116, v40 offset:2944
	ds_load_u8 v117, v40 offset:2816
	ds_load_u8 v118, v40 offset:2560
	ds_load_u8 v119, v40 offset:2176
	ds_load_u8 v120, v40 offset:2432
	ds_load_u8 v121, v40 offset:2304
	ds_load_u8 v122, v40 offset:2048
	ds_load_u8 v123, v38 offset:720
	ds_load_u8 v124, v38 offset:752
	ds_load_u8 v125, v38 offset:736
	ds_load_u8 v126, v38 offset:704
	ds_load_u8 v127, v38 offset:656
	ds_load_u8 v128, v38 offset:688
	ds_load_u8 v129, v38 offset:672
	ds_load_u8 v130, v38 offset:640
	ds_load_u8 v131, v38 offset:592
	ds_load_u8 v132, v38 offset:624
	ds_load_u8 v133, v38 offset:608
	ds_load_u8 v134, v38 offset:576
	ds_load_u8 v135, v38 offset:528
	ds_load_u8 v136, v38 offset:560
	ds_load_u8 v137, v38 offset:544
	ds_load_u8 v138, v38 offset:512
	ds_load_u8 v139, v40 offset:5760
	ds_load_u8 v140, v40 offset:6016
	ds_load_u8 v141, v40 offset:5888
	ds_load_u8 v142, v40 offset:5632
	ds_load_u8 v143, v40 offset:5248
	ds_load_u8 v144, v40 offset:5504
	ds_load_u8 v145, v40 offset:5376
	ds_load_u8 v146, v40 offset:5120
	ds_load_u8 v147, v40 offset:4736
	ds_load_u8 v148, v40 offset:4992
	ds_load_u8 v149, v40 offset:4864
	ds_load_u8 v150, v40 offset:4608
	ds_load_u8 v151, v40 offset:4224
	ds_load_u8 v152, v40 offset:4480
	ds_load_u8 v153, v40 offset:4352
	ds_load_u8 v154, v40 offset:4096
	ds_load_u8 v155, v38 offset:976
	ds_load_u8 v39, v39
	ds_load_u8 v156, v38 offset:992
	ds_load_u8 v157, v38 offset:960
	ds_load_u8 v158, v38 offset:912
	ds_load_u8 v159, v38 offset:944
	ds_load_u8 v160, v38 offset:928
	ds_load_u8 v161, v38 offset:896
	ds_load_u8 v162, v38 offset:848
	ds_load_u8 v163, v38 offset:880
	ds_load_u8 v164, v38 offset:864
	ds_load_u8 v165, v38 offset:832
	ds_load_u8 v166, v38 offset:784
	ds_load_u8 v167, v38 offset:816
	ds_load_u8 v168, v38 offset:800
	ds_load_u8 v38, v38 offset:768
	ds_load_u8 v169, v40 offset:7808
	ds_load_u8 v170, v40 offset:8064
	ds_load_u8 v171, v40 offset:7936
	ds_load_u8 v172, v40 offset:7680
	ds_load_u8 v173, v40 offset:7296
	ds_load_u8 v174, v40 offset:7552
	ds_load_u8 v175, v40 offset:7424
	ds_load_u8 v176, v40 offset:7168
	ds_load_u8 v177, v40 offset:6784
	ds_load_u8 v178, v40 offset:7040
	ds_load_u8 v179, v40 offset:6912
	ds_load_u8 v180, v40 offset:6656
	ds_load_u8 v181, v40 offset:6272
	ds_load_u8 v182, v40 offset:6528
	ds_load_u8 v183, v40 offset:6400
	ds_load_u8 v40, v40 offset:6144
	s_waitcnt lgkmcnt(62)
	v_perm_b32 v41, v44, v41, 0xc0c0004
	v_perm_b32 v42, v43, v42, 0xc0c0004
	v_perm_b32 v43, v56, v45, 0xc0c0004
	v_perm_b32 v44, v55, v54, 0xc0c0004
	v_perm_b32 v45, v60, v57, 0xc0c0004
	v_perm_b32 v54, v59, v58, 0xc0c0004
	v_perm_b32 v58, v61, v62, 0xc0c0004
	v_perm_b32 v59, v63, v64, 0xc0c0004
	v_perm_b32 v60, v68, v65, 0xc0c0004
	v_perm_b32 v61, v67, v66, 0xc0c0004
	v_perm_b32 v62, v72, v69, 0xc0c0004
	v_perm_b32 v63, v71, v70, 0xc0c0004
	v_perm_b32 v64, v76, v73, 0xc0c0004
	v_perm_b32 v65, v75, v74, 0xc0c0004
	v_perm_b32 v66, v80, v77, 0xc0c0004
	v_perm_b32 v67, v79, v78, 0xc0c0004
	v_perm_b32 v68, v84, v81, 0xc0c0004
	v_perm_b32 v69, v83, v82, 0xc0c0004
	v_perm_b32 v70, v98, v85, 0xc0c0004
	v_perm_b32 v71, v97, v96, 0xc0c0004
	v_perm_b32 v72, v102, v99, 0xc0c0004
	v_perm_b32 v73, v101, v100, 0xc0c0004
	v_perm_b32 v74, v106, v103, 0xc0c0004
	v_perm_b32 v75, v105, v104, 0xc0c0004
	v_perm_b32 v76, v110, v107, 0xc0c0004
	v_perm_b32 v77, v109, v108, 0xc0c0004
	v_perm_b32 v78, v114, v111, 0xc0c0004
	v_perm_b32 v79, v113, v112, 0xc0c0004
	v_perm_b32 v80, v118, v115, 0xc0c0004
	v_perm_b32 v81, v117, v116, 0xc0c0004
	v_perm_b32 v82, v122, v119, 0xc0c0004
	v_perm_b32 v83, v121, v120, 0xc0c0004
	s_waitcnt lgkmcnt(28)
	v_perm_b32 v110, v157, v155, 0xc0c0004
	v_perm_b32 v39, v156, v39, 0xc0c0004
	s_waitcnt lgkmcnt(16)
	v_perm_b32 v38, v38, v166, 0xc0c0004
	v_perm_b32 v115, v168, v167, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v40, v40, v181, 0xc0c0004
	v_perm_b32 v122, v183, v182, 0xc0c0004
	v_lshl_or_b32 v57, v42, 16, v41
	v_lshl_or_b32 v56, v44, 16, v43
	v_lshl_or_b32 v55, v54, 16, v45
	v_lshl_or_b32 v54, v59, 16, v58
	v_lshl_or_b32 v61, v61, 16, v60
	v_lshl_or_b32 v60, v63, 16, v62
	v_lshl_or_b32 v59, v65, 16, v64
	v_lshl_or_b32 v58, v67, 16, v66
	v_perm_b32 v84, v126, v123, 0xc0c0004
	v_perm_b32 v85, v125, v124, 0xc0c0004
	v_perm_b32 v96, v130, v127, 0xc0c0004
	v_perm_b32 v97, v129, v128, 0xc0c0004
	v_perm_b32 v98, v134, v131, 0xc0c0004
	v_perm_b32 v99, v133, v132, 0xc0c0004
	v_perm_b32 v100, v138, v135, 0xc0c0004
	v_perm_b32 v101, v137, v136, 0xc0c0004
	v_perm_b32 v102, v142, v139, 0xc0c0004
	v_perm_b32 v103, v141, v140, 0xc0c0004
	v_perm_b32 v104, v146, v143, 0xc0c0004
	v_perm_b32 v105, v145, v144, 0xc0c0004
	v_perm_b32 v106, v150, v147, 0xc0c0004
	v_perm_b32 v107, v149, v148, 0xc0c0004
	v_perm_b32 v108, v154, v151, 0xc0c0004
	v_perm_b32 v109, v153, v152, 0xc0c0004
	v_lshl_or_b32 v65, v69, 16, v68
	v_lshl_or_b32 v64, v71, 16, v70
	v_lshl_or_b32 v63, v73, 16, v72
	v_lshl_or_b32 v62, v75, 16, v74
	v_lshl_or_b32 v69, v77, 16, v76
	v_lshl_or_b32 v68, v79, 16, v78
	v_lshl_or_b32 v67, v81, 16, v80
	v_lshl_or_b32 v66, v83, 16, v82
	v_lshl_or_b32 v81, v39, 16, v110
	v_lshl_or_b32 v78, v115, 16, v38
	v_lshl_or_b32 v82, v122, 16, v40
	v_wmma_i32_16x16x16_iu8 v[38:45], v[58:61], v[54:57], v[1:8] neg_lo:[1,1,0]
	v_perm_b32 v111, v161, v158, 0xc0c0004
	v_perm_b32 v112, v160, v159, 0xc0c0004
	v_perm_b32 v113, v165, v162, 0xc0c0004
	v_perm_b32 v114, v164, v163, 0xc0c0004
	v_perm_b32 v116, v172, v169, 0xc0c0004
	v_perm_b32 v117, v171, v170, 0xc0c0004
	v_perm_b32 v118, v176, v173, 0xc0c0004
	v_perm_b32 v119, v175, v174, 0xc0c0004
	v_perm_b32 v120, v180, v177, 0xc0c0004
	v_perm_b32 v121, v179, v178, 0xc0c0004
	v_lshl_or_b32 v73, v85, 16, v84
	v_lshl_or_b32 v72, v97, 16, v96
	v_lshl_or_b32 v71, v99, 16, v98
	v_lshl_or_b32 v70, v101, 16, v100
	v_lshl_or_b32 v77, v103, 16, v102
	v_lshl_or_b32 v76, v105, 16, v104
	v_lshl_or_b32 v75, v107, 16, v106
	v_lshl_or_b32 v74, v109, 16, v108
	v_wmma_i32_16x16x16_iu8 v[38:45], v[66:69], v[62:65], v[38:45] neg_lo:[1,1,0]
	v_lshl_or_b32 v80, v112, 16, v111
	v_lshl_or_b32 v79, v114, 16, v113
	v_lshl_or_b32 v85, v117, 16, v116
	v_lshl_or_b32 v84, v119, 16, v118
	v_lshl_or_b32 v83, v121, 16, v120
	v_wmma_i32_16x16x16_iu8 v[38:45], v[74:77], v[70:73], v[38:45] neg_lo:[1,1,0]
	.loc	1 333 5                         ; generate_amdgcn.py:333:5
	s_add_i32 s0, s40, 1
	s_mov_b32 s38, s36
	s_cmp_lt_i32 s0, 2
	.loc	1 372 22                        ; generate_amdgcn.py:372:22
	s_waitcnt lgkmcnt(0)
	.loc	1 379 19                        ; generate_amdgcn.py:379:19
	v_wmma_i32_16x16x16_iu8 v[38:45], v[82:85], v[78:81], v[38:45] neg_lo:[1,1,0]
	.loc	1 333 5                         ; generate_amdgcn.py:333:5
	s_cselect_b32 s40, s0, 0
	s_add_i32 s0, s41, 1
	.loc	1 372 22                        ; generate_amdgcn.py:372:22
	s_lshl_b32 s36, s40, 10
	.loc	1 378 22                        ; generate_amdgcn.py:378:22
	s_lshl_b32 s37, s40, 13
	.loc	1 379 19                        ; generate_amdgcn.py:379:19
	v_cvt_f32_i32_e32 v39, v39
	v_cvt_f32_i32_e32 v40, v40
	.loc	1 372 22                        ; generate_amdgcn.py:372:22
	s_add_i32 s42, s36, 0
	.loc	1 379 19                        ; generate_amdgcn.py:379:19
	v_cvt_f32_i32_e32 v41, v41
	v_cvt_f32_i32_e32 v45, v45
	v_cvt_f32_i32_e32 v42, v42
	v_cvt_f32_i32_e32 v44, v44
	.loc	1 378 22                        ; generate_amdgcn.py:378:22
	s_add_i32 s36, s37, 0
	.loc	1 379 19                        ; generate_amdgcn.py:379:19
	v_cvt_f32_i32_e32 v38, v38
	v_cvt_f32_i32_e32 v43, v43
	.loc	1 372 22                        ; generate_amdgcn.py:372:22
	s_add_i32 s37, s42, 0x4000
	.loc	1 333 5                         ; generate_amdgcn.py:333:5
	s_cmp_lg_u32 s41, s39
	s_mov_b32 s41, s0
	.loc	1 372 22                        ; generate_amdgcn.py:372:22
	s_barrier
	.loc	1 390 22                        ; generate_amdgcn.py:390:22
	s_waitcnt vmcnt(10)
	v_lshlrev_b32_e32 v54, 16, v87
	.loc	1 392 22                        ; generate_amdgcn.py:392:22
	s_waitcnt vmcnt(9)
	v_lshlrev_b32_e32 v55, 16, v88
	s_waitcnt vmcnt(7)
	v_lshlrev_b32_e32 v57, 16, v90
	.loc	1 372 22                        ; generate_amdgcn.py:372:22
	v_add_nc_u32_e32 v184, s42, v11
	.loc	1 392 22                        ; generate_amdgcn.py:392:22
	s_waitcnt vmcnt(3)
	v_lshlrev_b32_e32 v61, 16, v94
	.loc	1 394 24                        ; generate_amdgcn.py:394:24
	s_waitcnt vmcnt(2)
	v_dual_mul_f32 v57, v54, v57 :: v_dual_lshlrev_b32 v62, 16, v95
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	.loc	1 399 13                        ; generate_amdgcn.py:399:13
	v_fmac_f32_e32 v15, v57, v40
	.loc	1 392 22                        ; generate_amdgcn.py:392:22
	v_lshlrev_b32_e32 v59, 16, v92
	.loc	1 394 24                        ; generate_amdgcn.py:394:24
	v_dual_mul_f32 v61, v54, v61 :: v_dual_lshlrev_b32 v58, 16, v91
	v_dual_mul_f32 v55, v54, v55 :: v_dual_lshlrev_b32 v60, 16, v93
	v_dual_mul_f32 v59, v54, v59 :: v_dual_lshlrev_b32 v56, 16, v89
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_mul_f32 v58, v54, v58 :: v_dual_fmac_f32 v19, v61, v44
	v_dual_mul_f32 v60, v54, v60 :: v_dual_add_nc_u32 v185, s36, v37
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_4) | instid1(VALU_DEP_4)
	.loc	1 399 13                        ; generate_amdgcn.py:399:13
	v_dual_fmac_f32 v17, v59, v42 :: v_dual_mul_f32 v56, v54, v56
	.loc	1 394 24                        ; generate_amdgcn.py:394:24
	v_mul_f32_e32 v54, v54, v62
	.loc	1 399 13                        ; generate_amdgcn.py:399:13
	v_fmac_f32_e32 v12, v55, v38
	v_fmac_f32_e32 v16, v58, v41
	v_fmac_f32_e32 v18, v60, v43
	v_dual_fmac_f32 v14, v56, v39 :: v_dual_fmac_f32 v13, v54, v45
	.loc	1 372 22                        ; generate_amdgcn.py:372:22
	ds_store_b32 v184, v86 offset:16384
	.loc	1 378 22                        ; generate_amdgcn.py:378:22
	s_waitcnt vmcnt(1)
	ds_store_b128 v185, v[46:49]
	s_waitcnt vmcnt(0)
	ds_store_b128 v185, v[50:53] offset:4096
	.loc	1 333 5                         ; generate_amdgcn.py:333:5
	s_cbranch_scc1 .LBB0_5
; %bb.6:                                ; %Flow
	.loc	1 0 5 is_stmt 0                 ; generate_amdgcn.py:0:5
	v_mov_b32_e32 v38, v36
	s_branch .LBB0_8
.LBB0_7:
	v_dual_mov_b32 v13, 0 :: v_dual_mov_b32 v18, 0
	v_dual_mov_b32 v19, 0 :: v_dual_mov_b32 v16, 0
	v_dual_mov_b32 v17, 0 :: v_dual_mov_b32 v14, 0
	v_dual_mov_b32 v15, 0 :: v_dual_mov_b32 v12, 0
	s_add_i32 s14, 0, 0x4000
	s_add_i32 s37, 0, 0x4400
	s_add_i32 s36, 0, 0x2000
.LBB0_8:                                ; %._crit_edge
	.loc	1 378 22 is_stmt 1              ; generate_amdgcn.py:378:22
	v_or_b32_e32 v40, v35, v29
	v_dual_mov_b32 v1, 0 :: v_dual_mov_b32 v4, 0
	v_dual_mov_b32 v2, 0 :: v_dual_mov_b32 v3, 0
	v_dual_mov_b32 v5, 0 :: v_dual_mov_b32 v6, 0
	v_dual_mov_b32 v7, 0 :: v_dual_mov_b32 v8, 0
	v_mov_b32_e32 v9, 0
	.loc	1 379 19                        ; generate_amdgcn.py:379:19
	s_and_not1_b32 vcc_lo, exec_lo, s3
	.loc	1 372 22                        ; generate_amdgcn.py:372:22
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 379 19                        ; generate_amdgcn.py:379:19
	s_cbranch_vccnz .LBB0_10
; %bb.9:
	.loc	1 372 22                        ; generate_amdgcn.py:372:22
	v_add_nc_u32_e32 v39, s14, v29
	v_add_nc_u32_e32 v5, s14, v38
	.loc	1 379 19                        ; generate_amdgcn.py:379:19
	ds_load_u8 v2, v39 offset:208
	ds_load_u8 v3, v39 offset:224
	ds_load_u8 v4, v39 offset:192
	ds_load_u8 v6, v39 offset:240
	ds_load_u8 v7, v39 offset:144
	ds_load_u8 v8, v39 offset:176
	ds_load_u8 v9, v39 offset:160
	ds_load_u8 v30, v39 offset:128
	ds_load_u8 v31, v39 offset:112
	ds_load_u8 v32, v39 offset:80
	ds_load_u8 v33, v39 offset:96
	ds_load_u8 v34, v39 offset:64
	ds_load_u8 v35, v39
	ds_load_u8 v36, v39 offset:16
	ds_load_u8 v37, v39 offset:32
	ds_load_u8 v42, v39 offset:48
	ds_load_u8 v61, v5
	s_waitcnt lgkmcnt(13)
	v_perm_b32 v3, v3, v6, 0xc0c0004
	v_perm_b32 v2, v4, v2, 0xc0c0004
	s_waitcnt lgkmcnt(9)
	v_perm_b32 v4, v30, v7, 0xc0c0004
	v_perm_b32 v6, v9, v8, 0xc0c0004
	s_waitcnt lgkmcnt(3)
	v_perm_b32 v9, v35, v36, 0xc0c0004
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v30, v37, v42, 0xc0c0004
	v_lshl_or_b32 v5, v3, 16, v2
	v_perm_b32 v7, v34, v32, 0xc0c0004
	v_perm_b32 v8, v33, v31, 0xc0c0004
	v_lshl_or_b32 v4, v6, 16, v4
	v_lshl_or_b32 v2, v30, 16, v9
	v_dual_mov_b32 v30, 0 :: v_dual_add_nc_u32 v41, s38, v40
	ds_load_u8 v43, v41 offset:1664
	ds_load_u8 v44, v41 offset:1920
	ds_load_u8 v45, v41 offset:1792
	ds_load_u8 v46, v41 offset:1536
	ds_load_u8 v47, v41 offset:1152
	ds_load_u8 v48, v41 offset:1408
	ds_load_u8 v49, v41 offset:1280
	ds_load_u8 v50, v41 offset:1024
	ds_load_u8 v51, v41 offset:640
	ds_load_u8 v52, v41 offset:896
	ds_load_u8 v53, v41 offset:768
	ds_load_u8 v54, v41 offset:512
	ds_load_u8 v55, v41 offset:128
	ds_load_u8 v56, v41 offset:384
	ds_load_u8 v57, v41 offset:256
	ds_load_u8 v58, v41
	ds_load_u8 v59, v39 offset:288
	ds_load_u8 v60, v39 offset:256
	v_lshl_or_b32 v3, v8, 16, v7
	v_mov_b32_e32 v36, v30
	v_mov_b32_e32 v37, v30
	s_waitcnt lgkmcnt(15)
	v_perm_b32 v7, v45, v44, 0xc0c0004
	s_waitcnt lgkmcnt(14)
	v_perm_b32 v6, v46, v43, 0xc0c0004
	ds_load_u8 v42, v39 offset:464
	ds_load_u8 v43, v39 offset:480
	ds_load_u8 v44, v39 offset:448
	s_waitcnt lgkmcnt(14)
	v_perm_b32 v31, v49, v48, 0xc0c0004
	s_waitcnt lgkmcnt(13)
	v_perm_b32 v8, v50, v47, 0xc0c0004
	v_lshl_or_b32 v9, v7, 16, v6
	s_waitcnt lgkmcnt(10)
	v_perm_b32 v33, v53, v52, 0xc0c0004
	s_waitcnt lgkmcnt(9)
	v_perm_b32 v32, v54, v51, 0xc0c0004
	ds_load_u8 v45, v39 offset:496
	ds_load_u8 v46, v39 offset:400
	ds_load_u8 v47, v39 offset:432
	ds_load_u8 v48, v39 offset:416
	ds_load_u8 v49, v39 offset:384
	ds_load_u8 v50, v39 offset:336
	ds_load_u8 v51, v39 offset:352
	ds_load_u8 v52, v39 offset:320
	ds_load_u8 v53, v39 offset:368
	v_lshl_or_b32 v8, v31, 16, v8
	s_waitcnt lgkmcnt(15)
	v_perm_b32 v35, v57, v56, 0xc0c0004
	s_waitcnt lgkmcnt(14)
	v_perm_b32 v34, v58, v55, 0xc0c0004
	ds_load_u8 v54, v39 offset:272
	ds_load_u8 v55, v39 offset:304
	v_lshl_or_b32 v7, v33, 16, v32
	v_mov_b32_e32 v31, v30
	v_mov_b32_e32 v32, v30
	v_lshl_or_b32 v6, v35, 16, v34
	v_mov_b32_e32 v33, v30
	v_mov_b32_e32 v34, v30
	v_mov_b32_e32 v35, v30
	s_delay_alu instid0(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu8 v[30:37], v[6:9], v[2:5], v[30:37] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(10)
	v_perm_b32 v3, v43, v45, 0xc0c0004
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v4, v49, v46, 0xc0c0004
	v_perm_b32 v6, v48, v47, 0xc0c0004
	s_waitcnt lgkmcnt(3)
	v_perm_b32 v7, v52, v50, 0xc0c0004
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v8, v51, v53, 0xc0c0004
	ds_load_u8 v9, v41 offset:3712
	ds_load_u8 v43, v41 offset:3968
	ds_load_u8 v45, v41 offset:3840
	ds_load_u8 v46, v41 offset:3584
	ds_load_u8 v47, v41 offset:3200
	ds_load_u8 v48, v41 offset:3456
	ds_load_u8 v49, v41 offset:3328
	ds_load_u8 v50, v41 offset:3072
	ds_load_u8 v51, v41 offset:2688
	ds_load_u8 v52, v41 offset:2944
	ds_load_u8 v53, v41 offset:2816
	ds_load_u8 v64, v41 offset:2560
	ds_load_u8 v65, v41 offset:2176
	ds_load_u8 v66, v41 offset:2432
	ds_load_u8 v67, v41 offset:2304
	ds_load_u8 v68, v41 offset:2048
	v_perm_b32 v2, v44, v42, 0xc0c0004
	v_lshl_or_b32 v4, v6, 16, v4
	s_waitcnt lgkmcnt(16)
	v_perm_b32 v6, v59, v55, 0xc0c0004
	ds_load_u8 v42, v39 offset:592
	ds_load_u8 v44, v39 offset:608
	ds_load_u8 v56, v39 offset:576
	ds_load_u8 v57, v39 offset:528
	ds_load_u8 v58, v39 offset:560
	ds_load_u8 v62, v39 offset:544
	ds_load_u8 v63, v39 offset:512
	v_lshl_or_b32 v5, v3, 16, v2
	v_perm_b32 v2, v60, v54, 0xc0c0004
	ds_load_u8 v54, v39 offset:720
	ds_load_u8 v60, v39 offset:736
	ds_load_u8 v69, v39 offset:704
	ds_load_u8 v70, v39 offset:752
	ds_load_u8 v71, v39 offset:656
	ds_load_u8 v72, v39 offset:688
	ds_load_u8 v73, v39 offset:672
	ds_load_u8 v74, v39 offset:640
	v_lshl_or_b32 v3, v8, 16, v7
	s_waitcnt lgkmcnt(28)
	v_perm_b32 v8, v45, v43, 0xc0c0004
	s_waitcnt lgkmcnt(24)
	v_perm_b32 v45, v49, v48, 0xc0c0004
	v_perm_b32 v7, v46, v9, 0xc0c0004
	s_waitcnt lgkmcnt(23)
	v_perm_b32 v43, v50, v47, 0xc0c0004
	v_lshl_or_b32 v2, v6, 16, v2
	s_waitcnt lgkmcnt(20)
	v_perm_b32 v47, v53, v52, 0xc0c0004
	s_waitcnt lgkmcnt(19)
	v_perm_b32 v46, v64, v51, 0xc0c0004
	v_lshl_or_b32 v9, v8, 16, v7
	v_lshl_or_b32 v8, v45, 16, v43
	s_waitcnt lgkmcnt(16)
	v_perm_b32 v49, v67, v66, 0xc0c0004
	s_waitcnt lgkmcnt(15)
	v_perm_b32 v48, v68, v65, 0xc0c0004
	v_lshl_or_b32 v7, v47, 16, v46
	s_waitcnt lgkmcnt(12)
	v_perm_b32 v42, v56, v42, 0xc0c0004
	s_waitcnt lgkmcnt(5)
	v_perm_b32 v43, v69, v54, 0xc0c0004
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v47, v60, v70, 0xc0c0004
	v_lshl_or_b32 v6, v49, 16, v48
	ds_load_u8 v48, v39 offset:624
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v50, v73, v72, 0xc0c0004
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v49, v74, v71, 0xc0c0004
	ds_load_u8 v51, v41 offset:5760
	ds_load_u8 v52, v41 offset:6016
	ds_load_u8 v53, v41 offset:5888
	ds_load_u8 v54, v41 offset:5632
	ds_load_u8 v55, v41 offset:5248
	ds_load_u8 v59, v41 offset:5504
	ds_load_u8 v60, v41 offset:5376
	ds_load_u8 v64, v41 offset:5120
	ds_load_u8 v65, v41 offset:4736
	ds_load_u8 v66, v41 offset:4992
	ds_load_u8 v67, v41 offset:4864
	ds_load_u8 v68, v41 offset:4608
	ds_load_u8 v69, v41 offset:4224
	ds_load_u8 v70, v41 offset:4480
	ds_load_u8 v71, v41 offset:4352
	ds_load_u8 v72, v41 offset:4096
	v_wmma_i32_16x16x16_iu8 v[30:37], v[6:9], v[2:5], v[30:37] neg_lo:[1,1,0]
	v_lshl_or_b32 v5, v47, 16, v43
	v_perm_b32 v2, v63, v57, 0xc0c0004
	v_lshl_or_b32 v4, v50, 16, v49
	v_perm_b32 v6, v62, v58, 0xc0c0004
	ds_load_u8 v45, v39 offset:800
	ds_load_u8 v46, v39 offset:768
	s_waitcnt lgkmcnt(15)
	v_perm_b32 v8, v53, v52, 0xc0c0004
	s_waitcnt lgkmcnt(14)
	v_perm_b32 v7, v54, v51, 0xc0c0004
	v_lshl_or_b32 v2, v6, 16, v2
	s_waitcnt lgkmcnt(11)
	v_perm_b32 v43, v60, v59, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_3)
	v_lshl_or_b32 v9, v8, 16, v7
	s_waitcnt lgkmcnt(7)
	v_perm_b32 v47, v67, v66, 0xc0c0004
	v_perm_b32 v44, v44, v48, 0xc0c0004
	ds_load_u8 v48, v39 offset:784
	ds_load_u8 v56, v39 offset:848
	ds_load_u8 v73, v39 offset:864
	ds_load_u8 v74, v39 offset:832
	ds_load_u8 v75, v39 offset:816
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v50, v71, v70, 0xc0c0004
	s_waitcnt lgkmcnt(7)
	v_perm_b32 v49, v72, v69, 0xc0c0004
	v_lshl_or_b32 v3, v44, 16, v42
	v_perm_b32 v42, v64, v55, 0xc0c0004
	v_perm_b32 v44, v68, v65, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_lshl_or_b32 v6, v50, 16, v49
	v_lshl_or_b32 v8, v43, 16, v42
	s_delay_alu instid0(VALU_DEP_3)
	v_lshl_or_b32 v7, v47, 16, v44
	ds_load_u8 v42, v39 offset:976
	ds_load_u8 v43, v39 offset:992
	ds_load_u8 v44, v39 offset:960
	ds_load_u8 v47, v39 offset:912
	ds_load_u8 v49, v39 offset:944
	ds_load_u8 v50, v39 offset:928
	ds_load_u8 v51, v39 offset:896
	ds_load_u8 v39, v39 offset:880
	ds_load_u8 v52, v41 offset:7808
	ds_load_u8 v53, v41 offset:8064
	ds_load_u8 v54, v41 offset:7936
	ds_load_u8 v55, v41 offset:7680
	ds_load_u8 v57, v41 offset:7296
	ds_load_u8 v58, v41 offset:7552
	ds_load_u8 v59, v41 offset:7424
	ds_load_u8 v60, v41 offset:7168
	ds_load_u8 v62, v41 offset:6784
	ds_load_u8 v63, v41 offset:7040
	ds_load_u8 v64, v41 offset:6912
	ds_load_u8 v65, v41 offset:6656
	ds_load_u8 v66, v41 offset:6272
	ds_load_u8 v67, v41 offset:6528
	ds_load_u8 v68, v41 offset:6400
	ds_load_u8 v41, v41 offset:6144
	s_waitcnt lgkmcnt(21)
	v_perm_b32 v42, v44, v42, 0xc0c0004
	v_perm_b32 v43, v43, v61, 0xc0c0004
	s_waitcnt lgkmcnt(17)
	v_perm_b32 v44, v51, v47, 0xc0c0004
	v_perm_b32 v47, v50, v49, 0xc0c0004
	v_wmma_i32_16x16x16_iu8 v[30:37], v[6:9], v[2:5], v[30:37] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(16)
	v_perm_b32 v39, v73, v39, 0xc0c0004
	v_perm_b32 v49, v74, v56, 0xc0c0004
	v_lshl_or_b32 v5, v43, 16, v42
	v_lshl_or_b32 v4, v47, 16, v44
	v_perm_b32 v2, v46, v48, 0xc0c0004
	v_perm_b32 v6, v45, v75, 0xc0c0004
	v_lshl_or_b32 v3, v39, 16, v49
	s_waitcnt lgkmcnt(12)
	v_perm_b32 v7, v55, v52, 0xc0c0004
	v_perm_b32 v8, v54, v53, 0xc0c0004
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v39, v60, v57, 0xc0c0004
	v_perm_b32 v42, v59, v58, 0xc0c0004
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v43, v65, v62, 0xc0c0004
	v_perm_b32 v44, v64, v63, 0xc0c0004
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v45, v68, v67, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v41, v41, v66, 0xc0c0004
	v_lshl_or_b32 v2, v6, 16, v2
	v_lshl_or_b32 v9, v8, 16, v7
	v_lshl_or_b32 v8, v42, 16, v39
	v_lshl_or_b32 v7, v44, 16, v43
	v_lshl_or_b32 v6, v45, 16, v41
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu8 v[30:37], v[6:9], v[2:5], v[30:37] neg_lo:[1,1,0]
	v_cvt_f32_i32_e32 v2, v31
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cvt_f32_i32_e32 v3, v32
	v_cvt_f32_i32_e32 v5, v33
	s_delay_alu instid0(VALU_DEP_4)
	v_cvt_f32_i32_e32 v6, v34
	v_cvt_f32_i32_e32 v7, v35
	v_cvt_f32_i32_e32 v8, v36
	v_cvt_f32_i32_e32 v9, v37
	v_cvt_f32_i32_e32 v4, v30
.LBB0_10:
	.loc	1 388 29                        ; generate_amdgcn.py:388:29
	s_ashr_i32 s0, s18, 31
	s_mov_b32 s15, 0x31027000
	s_lshr_b32 s0, s0, 24
	s_mov_b32 s14, 0x7ffffffe
	s_add_i32 s0, s18, s0
	.loc	1 392 22                        ; generate_amdgcn.py:392:22
	s_mov_b32 s18, s14
	.loc	1 388 29                        ; generate_amdgcn.py:388:29
	s_ashr_i32 s0, s0, 8
	.loc	1 392 22                        ; generate_amdgcn.py:392:22
	s_mov_b32 s19, s15
	.loc	1 389 34                        ; generate_amdgcn.py:389:34
	s_cmp_lt_i32 s0, s1
	.loc	1 390 22                        ; generate_amdgcn.py:390:22
	v_add_lshl_u32 v30, v28, s0, 1
	.loc	1 392 40                        ; generate_amdgcn.py:392:40
	s_mul_i32 s0, s0, s35
	.loc	1 389 34                        ; generate_amdgcn.py:389:34
	s_cselect_b32 s8, -1, 0
	.loc	1 392 22                        ; generate_amdgcn.py:392:22
	v_add_lshl_u32 v31, v27, s0, 1
	v_add_lshl_u32 v32, v26, s0, 1
	v_add_lshl_u32 v33, v25, s0, 1
	.loc	1 333 5                         ; generate_amdgcn.py:333:5
	s_and_b32 vcc_lo, s3, s8
	.loc	1 392 22                        ; generate_amdgcn.py:392:22
	v_add_lshl_u32 v34, v23, s0, 1
	v_add_lshl_u32 v35, v21, s0, 1
	v_add_lshl_u32 v36, v24, s0, 1
	v_add_lshl_u32 v37, v22, s0, 1
	v_add_lshl_u32 v39, v20, s0, 1
	.loc	1 390 22                        ; generate_amdgcn.py:390:22
	v_dual_cndmask_b32 v30, 0x80000000, v30 :: v_dual_cndmask_b32 v31, 0x80000000, v31
	.loc	1 392 22                        ; generate_amdgcn.py:392:22
	v_dual_cndmask_b32 v32, 0x80000000, v32 :: v_dual_cndmask_b32 v33, 0x80000000, v33
	s_and_b32 s17, s17, 0xffff
	v_dual_cndmask_b32 v34, 0x80000000, v34 :: v_dual_cndmask_b32 v35, 0x80000000, v35
	v_dual_cndmask_b32 v36, 0x80000000, v36 :: v_dual_cndmask_b32 v37, 0x80000000, v37
	v_dual_cndmask_b32 v39, 0x80000000, v39 :: v_dual_mov_b32 v42, 0
	s_clause 0x7
	buffer_load_u16 v31, v31, s[16:19], 0 offen
	buffer_load_u16 v32, v32, s[16:19], 0 offen
	buffer_load_u16 v33, v33, s[16:19], 0 offen
	buffer_load_u16 v34, v34, s[16:19], 0 offen
	buffer_load_u16 v35, v35, s[16:19], 0 offen
	buffer_load_u16 v36, v36, s[16:19], 0 offen
	buffer_load_u16 v37, v37, s[16:19], 0 offen
	buffer_load_u16 v39, v39, s[16:19], 0 offen
	.loc	1 390 22                        ; generate_amdgcn.py:390:22
	s_and_b32 s13, s13, 0xffff
	v_dual_mov_b32 v41, 0 :: v_dual_mov_b32 v44, 0
	buffer_load_u16 v30, v30, s[12:15], 0 offen
	v_dual_mov_b32 v43, 0 :: v_dual_mov_b32 v46, 0
	v_mov_b32_e32 v45, 0
	v_mov_b32_e32 v47, 0
	.loc	1 379 19                        ; generate_amdgcn.py:379:19
	s_and_not1_b32 vcc_lo, exec_lo, s2
	s_cbranch_vccnz .LBB0_12
; %bb.11:
	.loc	1 372 22                        ; generate_amdgcn.py:372:22
	v_add_nc_u32_e32 v1, s37, v29
	.loc	1 378 22                        ; generate_amdgcn.py:378:22
	v_add_nc_u32_e32 v56, s36, v40
	.loc	1 379 19                        ; generate_amdgcn.py:379:19
	ds_load_u8 v29, v1 offset:208
	ds_load_u8 v41, v1 offset:224
	ds_load_u8 v42, v1 offset:192
	ds_load_u8 v40, v1 offset:240
	ds_load_u8 v43, v1 offset:144
	ds_load_u8 v44, v1 offset:176
	ds_load_u8 v45, v1 offset:160
	ds_load_u8 v46, v1 offset:128
	ds_load_u8 v47, v1 offset:112
	ds_load_u8 v48, v1 offset:80
	ds_load_u8 v49, v1 offset:96
	ds_load_u8 v50, v1 offset:64
	ds_load_u8 v51, v1
	ds_load_u8 v52, v1 offset:16
	ds_load_u8 v53, v1 offset:32
	ds_load_u8 v54, v1 offset:48
	s_waitcnt lgkmcnt(12)
	v_perm_b32 v40, v41, v40, 0xc0c0004
	v_perm_b32 v29, v42, v29, 0xc0c0004
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v41, v46, v43, 0xc0c0004
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v46, v51, v52, 0xc0c0004
	v_perm_b32 v43, v45, v44, 0xc0c0004
	v_perm_b32 v44, v50, v48, 0xc0c0004
	v_lshl_or_b32 v51, v40, 16, v29
	v_mov_b32_e32 v40, 0
	ds_load_u8 v42, v56 offset:1664
	ds_load_u8 v55, v56 offset:1920
	ds_load_u8 v57, v56 offset:1792
	ds_load_u8 v58, v56 offset:1536
	ds_load_u8 v59, v56 offset:1152
	ds_load_u8 v60, v56 offset:1408
	ds_load_u8 v61, v56 offset:1280
	ds_load_u8 v62, v56 offset:1024
	ds_load_u8 v63, v56 offset:640
	ds_load_u8 v64, v56 offset:896
	ds_load_u8 v65, v56 offset:768
	ds_load_u8 v66, v56 offset:512
	ds_load_u8 v67, v56 offset:128
	ds_load_u8 v68, v56 offset:384
	ds_load_u8 v69, v56 offset:256
	ds_load_u8 v70, v56
	ds_load_u8 v71, v1 offset:288
	ds_load_u8 v72, v1 offset:256
	v_perm_b32 v45, v49, v47, 0xc0c0004
	s_waitcnt lgkmcnt(18)
	v_perm_b32 v47, v53, v54, 0xc0c0004
	v_lshl_or_b32 v50, v43, 16, v41
	.loc	1 372 22                        ; generate_amdgcn.py:372:22
	v_add_nc_u32_e32 v38, s37, v38
	.loc	1 379 19                        ; generate_amdgcn.py:379:19
	s_waitcnt lgkmcnt(15)
	v_perm_b32 v41, v57, v55, 0xc0c0004
	s_waitcnt lgkmcnt(14)
	v_perm_b32 v29, v58, v42, 0xc0c0004
	v_lshl_or_b32 v49, v45, 16, v44
	v_lshl_or_b32 v48, v47, 16, v46
	s_waitcnt lgkmcnt(11)
	v_perm_b32 v43, v61, v60, 0xc0c0004
	s_waitcnt lgkmcnt(10)
	v_perm_b32 v42, v62, v59, 0xc0c0004
	v_lshl_or_b32 v55, v41, 16, v29
	ds_load_u8 v29, v1 offset:464
	ds_load_u8 v57, v1 offset:480
	ds_load_u8 v58, v1 offset:448
	s_waitcnt lgkmcnt(10)
	v_perm_b32 v45, v65, v64, 0xc0c0004
	s_waitcnt lgkmcnt(9)
	v_perm_b32 v44, v66, v63, 0xc0c0004
	v_lshl_or_b32 v54, v43, 16, v42
	v_mov_b32_e32 v41, v40
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v47, v69, v68, 0xc0c0004
	s_waitcnt lgkmcnt(5)
	v_perm_b32 v46, v70, v67, 0xc0c0004
	ds_load_u8 v59, v1 offset:496
	ds_load_u8 v60, v1 offset:400
	ds_load_u8 v61, v1 offset:432
	ds_load_u8 v62, v1 offset:416
	ds_load_u8 v63, v1 offset:384
	ds_load_u8 v64, v1 offset:336
	ds_load_u8 v65, v1 offset:352
	ds_load_u8 v66, v1 offset:320
	ds_load_u8 v67, v1 offset:368
	ds_load_u8 v68, v1 offset:272
	ds_load_u8 v69, v1 offset:304
	v_lshl_or_b32 v53, v45, 16, v44
	v_mov_b32_e32 v42, v40
	v_lshl_or_b32 v52, v47, 16, v46
	v_mov_b32_e32 v43, v40
	v_mov_b32_e32 v44, v40
	v_mov_b32_e32 v45, v40
	v_mov_b32_e32 v46, v40
	v_mov_b32_e32 v47, v40
	ds_load_u8 v38, v38
	s_waitcnt lgkmcnt(12)
	v_perm_b32 v29, v58, v29, 0xc0c0004
	v_wmma_i32_16x16x16_iu8 v[40:47], v[52:55], v[48:51], v[40:47] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(11)
	v_perm_b32 v48, v57, v59, 0xc0c0004
	s_waitcnt lgkmcnt(7)
	v_perm_b32 v49, v63, v60, 0xc0c0004
	v_perm_b32 v50, v62, v61, 0xc0c0004
	ds_load_u8 v58, v1 offset:592
	ds_load_u8 v70, v1 offset:608
	ds_load_u8 v73, v1 offset:576
	ds_load_u8 v74, v1 offset:528
	ds_load_u8 v75, v1 offset:560
	ds_load_u8 v76, v1 offset:544
	ds_load_u8 v77, v1 offset:512
	s_waitcnt lgkmcnt(11)
	v_perm_b32 v52, v66, v64, 0xc0c0004
	s_waitcnt lgkmcnt(10)
	v_perm_b32 v53, v65, v67, 0xc0c0004
	ds_load_u8 v54, v56 offset:3712
	ds_load_u8 v55, v56 offset:3968
	ds_load_u8 v57, v56 offset:3840
	ds_load_u8 v59, v56 offset:3584
	ds_load_u8 v60, v56 offset:3200
	ds_load_u8 v61, v56 offset:3456
	ds_load_u8 v62, v56 offset:3328
	ds_load_u8 v63, v56 offset:3072
	ds_load_u8 v64, v56 offset:2688
	ds_load_u8 v65, v56 offset:2944
	ds_load_u8 v66, v56 offset:2816
	ds_load_u8 v67, v56 offset:2560
	ds_load_u8 v78, v56 offset:2176
	ds_load_u8 v79, v56 offset:2432
	ds_load_u8 v80, v56 offset:2304
	ds_load_u8 v81, v56 offset:2048
	v_lshl_or_b32 v51, v48, 16, v29
	s_waitcnt lgkmcnt(25)
	v_perm_b32 v29, v72, v68, 0xc0c0004
	ds_load_u8 v68, v1 offset:720
	ds_load_u8 v72, v1 offset:736
	ds_load_u8 v82, v1 offset:704
	ds_load_u8 v83, v1 offset:752
	ds_load_u8 v84, v1 offset:656
	ds_load_u8 v85, v1 offset:688
	ds_load_u8 v86, v1 offset:672
	ds_load_u8 v87, v1 offset:640
	v_lshl_or_b32 v50, v50, 16, v49
	v_lshl_or_b32 v49, v53, 16, v52
	s_waitcnt lgkmcnt(32)
	v_perm_b32 v48, v71, v69, 0xc0c0004
	s_waitcnt lgkmcnt(21)
	v_perm_b32 v53, v57, v55, 0xc0c0004
	s_waitcnt lgkmcnt(20)
	v_perm_b32 v52, v59, v54, 0xc0c0004
	s_waitcnt lgkmcnt(17)
	v_perm_b32 v57, v62, v61, 0xc0c0004
	s_waitcnt lgkmcnt(16)
	v_perm_b32 v54, v63, v60, 0xc0c0004
	v_lshl_or_b32 v55, v53, 16, v52
	v_lshl_or_b32 v48, v48, 16, v29
	s_waitcnt lgkmcnt(13)
	v_perm_b32 v60, v66, v65, 0xc0c0004
	s_waitcnt lgkmcnt(12)
	v_perm_b32 v59, v67, v64, 0xc0c0004
	v_lshl_or_b32 v54, v57, 16, v54
	s_waitcnt lgkmcnt(5)
	v_perm_b32 v29, v82, v68, 0xc0c0004
	v_perm_b32 v62, v80, v79, 0xc0c0004
	v_perm_b32 v61, v81, v78, 0xc0c0004
	v_lshl_or_b32 v53, v60, 16, v59
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v60, v72, v83, 0xc0c0004
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v63, v86, v85, 0xc0c0004
	v_perm_b32 v58, v73, v58, 0xc0c0004
	v_lshl_or_b32 v52, v62, 16, v61
	ds_load_u8 v61, v1 offset:624
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v62, v87, v84, 0xc0c0004
	ds_load_u8 v64, v56 offset:5760
	ds_load_u8 v65, v56 offset:6016
	ds_load_u8 v66, v56 offset:5888
	ds_load_u8 v67, v56 offset:5632
	ds_load_u8 v68, v56 offset:5248
	ds_load_u8 v69, v56 offset:5504
	ds_load_u8 v71, v56 offset:5376
	ds_load_u8 v72, v56 offset:5120
	ds_load_u8 v78, v56 offset:4736
	ds_load_u8 v79, v56 offset:4992
	ds_load_u8 v80, v56 offset:4864
	ds_load_u8 v81, v56 offset:4608
	ds_load_u8 v82, v56 offset:4224
	ds_load_u8 v83, v56 offset:4480
	ds_load_u8 v84, v56 offset:4352
	ds_load_u8 v85, v56 offset:4096
	ds_load_u8 v57, v1 offset:800
	ds_load_u8 v59, v1 offset:768
	v_wmma_i32_16x16x16_iu8 v[40:47], v[52:55], v[48:51], v[40:47] neg_lo:[1,1,0]
	v_lshl_or_b32 v51, v60, 16, v29
	v_lshl_or_b32 v50, v63, 16, v62
	v_perm_b32 v29, v77, v74, 0xc0c0004
	v_perm_b32 v48, v76, v75, 0xc0c0004
	s_waitcnt lgkmcnt(15)
	v_perm_b32 v53, v66, v65, 0xc0c0004
	s_waitcnt lgkmcnt(14)
	v_perm_b32 v52, v67, v64, 0xc0c0004
	v_lshl_or_b32 v48, v48, 16, v29
	s_waitcnt lgkmcnt(10)
	v_perm_b32 v54, v72, v68, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_3)
	v_lshl_or_b32 v55, v53, 16, v52
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v60, v81, v78, 0xc0c0004
	v_perm_b32 v61, v70, v61, 0xc0c0004
	s_waitcnt lgkmcnt(3)
	v_perm_b32 v63, v84, v83, 0xc0c0004
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v62, v85, v82, 0xc0c0004
	ds_load_u8 v70, v1 offset:784
	ds_load_u8 v73, v1 offset:848
	ds_load_u8 v86, v1 offset:864
	ds_load_u8 v87, v1 offset:832
	ds_load_u8 v88, v1 offset:816
	v_lshl_or_b32 v49, v61, 16, v58
	v_perm_b32 v58, v71, v69, 0xc0c0004
	v_perm_b32 v61, v80, v79, 0xc0c0004
	v_lshl_or_b32 v52, v63, 16, v62
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_lshl_or_b32 v54, v58, 16, v54
	v_lshl_or_b32 v53, v61, 16, v60
	ds_load_u8 v29, v1 offset:976
	ds_load_u8 v58, v1 offset:992
	ds_load_u8 v60, v1 offset:960
	ds_load_u8 v61, v1 offset:912
	ds_load_u8 v62, v1 offset:944
	ds_load_u8 v63, v1 offset:928
	ds_load_u8 v64, v1 offset:896
	ds_load_u8 v1, v1 offset:880
	ds_load_u8 v65, v56 offset:7808
	ds_load_u8 v66, v56 offset:8064
	ds_load_u8 v67, v56 offset:7936
	ds_load_u8 v68, v56 offset:7680
	ds_load_u8 v69, v56 offset:7296
	ds_load_u8 v71, v56 offset:7552
	ds_load_u8 v72, v56 offset:7424
	ds_load_u8 v74, v56 offset:7168
	ds_load_u8 v75, v56 offset:6784
	ds_load_u8 v76, v56 offset:7040
	ds_load_u8 v77, v56 offset:6912
	ds_load_u8 v78, v56 offset:6656
	ds_load_u8 v79, v56 offset:6272
	ds_load_u8 v80, v56 offset:6528
	ds_load_u8 v81, v56 offset:6400
	ds_load_u8 v56, v56 offset:6144
	s_waitcnt lgkmcnt(21)
	v_perm_b32 v29, v60, v29, 0xc0c0004
	v_perm_b32 v38, v58, v38, 0xc0c0004
	s_waitcnt lgkmcnt(17)
	v_perm_b32 v58, v64, v61, 0xc0c0004
	v_perm_b32 v60, v63, v62, 0xc0c0004
	v_wmma_i32_16x16x16_iu8 v[40:47], v[52:55], v[48:51], v[40:47] neg_lo:[1,1,0]
	v_lshl_or_b32 v51, v38, 16, v29
	s_waitcnt lgkmcnt(16)
	v_perm_b32 v1, v86, v1, 0xc0c0004
	v_perm_b32 v61, v87, v73, 0xc0c0004
	v_lshl_or_b32 v50, v60, 16, v58
	v_perm_b32 v29, v57, v88, 0xc0c0004
	s_waitcnt lgkmcnt(12)
	v_perm_b32 v38, v68, v65, 0xc0c0004
	v_perm_b32 v52, v67, v66, 0xc0c0004
	v_lshl_or_b32 v49, v1, 16, v61
	v_perm_b32 v1, v59, v70, 0xc0c0004
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v53, v74, v69, 0xc0c0004
	v_perm_b32 v54, v72, v71, 0xc0c0004
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v57, v78, v75, 0xc0c0004
	v_perm_b32 v58, v77, v76, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v56, v56, v79, 0xc0c0004
	v_perm_b32 v59, v81, v80, 0xc0c0004
	v_lshl_or_b32 v48, v29, 16, v1
	v_lshl_or_b32 v55, v52, 16, v38
	v_lshl_or_b32 v54, v54, 16, v53
	v_lshl_or_b32 v53, v58, 16, v57
	v_lshl_or_b32 v52, v59, 16, v56
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu8 v[40:47], v[52:55], v[48:51], v[40:47] neg_lo:[1,1,0]
	v_cvt_f32_i32_e32 v1, v40
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cvt_f32_i32_e32 v41, v41
	v_cvt_f32_i32_e32 v42, v42
	s_delay_alu instid0(VALU_DEP_4)
	v_cvt_f32_i32_e32 v43, v43
	v_cvt_f32_i32_e32 v44, v44
	v_cvt_f32_i32_e32 v45, v45
	v_cvt_f32_i32_e32 v46, v46
	v_cvt_f32_i32_e32 v47, v47
.LBB0_12:
	.loc	1 388 29                        ; generate_amdgcn.py:388:29
	s_ashr_i32 s0, s7, 31
	v_mov_b16_e32 v29.l, 0
	s_lshr_b32 s0, s0, 24
	.loc	1 390 22                        ; generate_amdgcn.py:390:22
	s_waitcnt vmcnt(0)
	v_mov_b16_e32 v29.h, v30.l
	.loc	1 388 29                        ; generate_amdgcn.py:388:29
	s_add_i32 s0, s7, s0
	.loc	1 392 22                        ; generate_amdgcn.py:392:22
	v_mov_b16_e32 v31.h, v37.l
	.loc	1 388 29                        ; generate_amdgcn.py:388:29
	s_ashr_i32 s0, s0, 8
	.loc	1 392 22                        ; generate_amdgcn.py:392:22
	v_mov_b16_e32 v37.h, v31.l
	.loc	1 389 34                        ; generate_amdgcn.py:389:34
	s_cmp_lt_i32 s0, s1
	.loc	1 390 22                        ; generate_amdgcn.py:390:22
	v_add_lshl_u32 v28, v28, s0, 1
	.loc	1 392 40                        ; generate_amdgcn.py:392:40
	s_mul_i32 s0, s0, s35
	.loc	1 389 34                        ; generate_amdgcn.py:389:34
	s_cselect_b32 s1, -1, 0
	.loc	1 392 22                        ; generate_amdgcn.py:392:22
	v_add_lshl_u32 v27, v27, s0, 1
	v_add_lshl_u32 v26, v26, s0, 1
	v_add_lshl_u32 v25, v25, s0, 1
	.loc	1 333 5                         ; generate_amdgcn.py:333:5
	s_and_b32 vcc_lo, s2, s1
	.loc	1 392 22                        ; generate_amdgcn.py:392:22
	v_add_lshl_u32 v23, v23, s0, 1
	.loc	1 390 22                        ; generate_amdgcn.py:390:22
	v_dual_cndmask_b32 v28, 0x80000000, v28 :: v_dual_cndmask_b32 v27, 0x80000000, v27
	.loc	1 392 22                        ; generate_amdgcn.py:392:22
	v_add_lshl_u32 v21, v21, s0, 1
	v_add_lshl_u32 v24, v24, s0, 1
	v_add_lshl_u32 v22, v22, s0, 1
	v_add_lshl_u32 v20, v20, s0, 1
	v_mov_b16_e32 v31.l, v29.l
	v_dual_cndmask_b32 v26, 0x80000000, v26 :: v_dual_cndmask_b32 v25, 0x80000000, v25
	s_mov_b32 s18, s14
	s_mov_b32 s19, s15
	v_dual_cndmask_b32 v23, 0x80000000, v23 :: v_dual_cndmask_b32 v24, 0x80000000, v24
	.loc	1 390 22                        ; generate_amdgcn.py:390:22
	buffer_load_u16 v28, v28, s[12:15], 0 offen
	.loc	1 392 22                        ; generate_amdgcn.py:392:22
	v_dual_cndmask_b32 v21, 0x80000000, v21 :: v_dual_cndmask_b32 v22, 0x80000000, v22
	v_dual_cndmask_b32 v20, 0x80000000, v20 :: v_dual_mul_f32 v31, v29, v31
	s_clause 0x7
	buffer_load_u16 v27, v27, s[16:19], 0 offen
	buffer_load_u16 v26, v26, s[16:19], 0 offen
	buffer_load_u16 v25, v25, s[16:19], 0 offen
	buffer_load_u16 v23, v23, s[16:19], 0 offen
	buffer_load_u16 v21, v21, s[16:19], 0 offen
	buffer_load_u16 v24, v24, s[16:19], 0 offen
	buffer_load_u16 v22, v22, s[16:19], 0 offen
	buffer_load_u16 v20, v20, s[16:19], 0 offen
	v_mov_b16_e32 v33.h, v35.l
	v_mov_b16_e32 v34.h, v34.l
	v_mov_b16_e32 v35.h, v33.l
	v_mov_b16_e32 v34.l, v29.l
	v_mov_b16_e32 v35.l, v29.l
	.loc	1 418 9                         ; generate_amdgcn.py:418:9
	v_lshlrev_b32_e32 v48, 1, v0
	.loc	1 392 22                        ; generate_amdgcn.py:392:22
	v_mov_b16_e32 v30.h, v39.l
	v_mov_b16_e32 v32.h, v36.l
	v_mov_b16_e32 v36.h, v32.l
	.loc	1 325 32                        ; generate_amdgcn.py:325:32
	v_bfe_i32 v39, v0, 7, 1
	.loc	1 418 9                         ; generate_amdgcn.py:418:9
	v_bfe_i32 v49, v0, 3, 1
	.loc	1 392 22                        ; generate_amdgcn.py:392:22
	v_mov_b16_e32 v30.l, v29.l
	v_mov_b16_e32 v32.l, v29.l
	v_mov_b16_e32 v33.l, v29.l
	v_mov_b16_e32 v36.l, v29.l
	v_mov_b16_e32 v37.l, v29.l
	.loc	1 394 24                        ; generate_amdgcn.py:394:24
	v_mul_f32_e32 v34, v29, v34
	v_dual_mul_f32 v35, v29, v35 :: v_dual_and_b32 v38, 0x7f, v0
	v_mul_f32_e32 v33, v29, v33
	.loc	1 325 32                        ; generate_amdgcn.py:325:32
	v_lshrrev_b32_e32 v40, 7, v0
	.loc	1 418 9                         ; generate_amdgcn.py:418:9
	v_lshlrev_b32_e32 v0, 5, v0
	.loc	1 394 24                        ; generate_amdgcn.py:394:24
	v_dual_mul_f32 v30, v29, v30 :: v_dual_and_b32 v49, 0x1040, v49
	v_dual_mul_f32 v32, v29, v32 :: v_dual_and_b32 v39, 0x204, v39
	v_mul_f32_e32 v36, v29, v36
	v_mul_f32_e32 v29, v29, v37
	.loc	1 399 13                        ; generate_amdgcn.py:399:13
	v_fma_f32 v3, v35, v3, v15
	v_fma_f32 v6, v33, v6, v17
	v_fma_f32 v7, v32, v7, v18
	v_fma_f32 v9, v30, v9, v13
	v_fma_f32 v4, v29, v4, v12
	v_fma_f32 v8, v31, v8, v19
	.loc	1 333 5                         ; generate_amdgcn.py:333:5
	v_cndmask_b32_e64 v3, v15, v3, s3
	v_cndmask_b32_e64 v7, v18, v7, s3
	v_cndmask_b32_e64 v6, v17, v6, s3
	v_cndmask_b32_e64 v4, v12, v4, s3
	v_cndmask_b32_e64 v9, v13, v9, s3
	v_cndmask_b32_e64 v8, v19, v8, s3
	.loc	1 418 9                         ; generate_amdgcn.py:418:9
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 418 23 is_stmt 0              ; generate_amdgcn.py:418:23
	v_mul_lo_u32 v40, s35, v40
	s_mul_i32 s0, s6, s35
	s_mul_i32 s1, s35, 6
	s_add_i32 s0, s0, s33
	s_mul_i32 s8, s35, 10
	s_mul_i32 s9, s35, 12
	s_mul_i32 s10, s35, 14
	.loc	1 418 9                         ; generate_amdgcn.py:418:9
	s_mov_b32 s6, s14
	.loc	1 418 23                        ; generate_amdgcn.py:418:23
	v_add3_u32 v38, s0, v38, v40
	s_lshl_b32 s0, s35, 1
	.loc	1 418 9                         ; generate_amdgcn.py:418:9
	s_mov_b32 s7, s15
	s_and_b32 s5, s5, 0xffff
	.loc	1 392 22 is_stmt 1              ; generate_amdgcn.py:392:22
	s_waitcnt vmcnt(7)
	v_lshlrev_b32_e32 v27, 16, v27
	.loc	1 399 13                        ; generate_amdgcn.py:399:13
	v_fma_f32 v5, v34, v5, v16
	.loc	1 390 22                        ; generate_amdgcn.py:390:22
	v_lshlrev_b32_e32 v28, 16, v28
	.loc	1 418 9                         ; generate_amdgcn.py:418:9
	v_and_b32_e32 v50, 0x1e0, v48
	.loc	1 392 22                        ; generate_amdgcn.py:392:22
	s_waitcnt vmcnt(2)
	v_lshlrev_b32_e32 v24, 16, v24
	s_waitcnt vmcnt(1)
	v_lshlrev_b32_e32 v22, 16, v22
	v_lshlrev_b32_e32 v21, 16, v21
	.loc	1 394 24                        ; generate_amdgcn.py:394:24
	v_mul_f32_e32 v27, v28, v27
	.loc	1 418 9                         ; generate_amdgcn.py:418:9
	v_lshl_or_b32 v37, v10, 2, v50
	.loc	1 394 24                        ; generate_amdgcn.py:394:24
	v_dual_mul_f32 v24, v28, v24 :: v_dual_lshlrev_b32 v23, 16, v23
	v_mul_f32_e32 v22, v28, v22
	v_dual_mul_f32 v21, v28, v21 :: v_dual_lshlrev_b32 v26, 16, v26
	.loc	1 392 22                        ; generate_amdgcn.py:392:22
	v_lshlrev_b32_e32 v25, 16, v25
	.loc	1 418 9                         ; generate_amdgcn.py:418:9
	v_xor_b32_e32 v29, v37, v49
	.loc	1 392 22                        ; generate_amdgcn.py:392:22
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v20, 16, v20
	.loc	1 394 24                        ; generate_amdgcn.py:394:24
	v_mul_f32_e32 v26, v28, v26
	v_dual_mul_f32 v25, v28, v25 :: v_dual_and_b32 v48, 28, v48
	.loc	1 418 9                         ; generate_amdgcn.py:418:9
	v_lshl_or_b32 v10, v10, 9, v29
	.loc	1 333 5                         ; generate_amdgcn.py:333:5
	v_cndmask_b32_e64 v5, v16, v5, s3
	.loc	1 394 24                        ; generate_amdgcn.py:394:24
	v_mul_f32_e32 v23, v28, v23
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 418 9                         ; generate_amdgcn.py:418:9
	v_and_or_b32 v11, 0x1c0, v11, v48
	.loc	1 394 24                        ; generate_amdgcn.py:394:24
	v_mul_f32_e32 v20, v28, v20
	.loc	1 399 13                        ; generate_amdgcn.py:399:13
	v_fma_f32 v1, v27, v1, v4
	v_fma_f32 v25, v25, v42, v3
	v_fma_f32 v23, v23, v43, v5
	.loc	1 418 9                         ; generate_amdgcn.py:418:9
	v_xor_b32_e32 v11, v11, v39
	.loc	1 399 13                        ; generate_amdgcn.py:399:13
	v_fma_f32 v21, v21, v44, v6
	v_fma_f32 v24, v24, v45, v7
	v_fma_f32 v22, v22, v46, v8
	v_fma_f32 v20, v20, v47, v9
	.loc	1 418 9                         ; generate_amdgcn.py:418:9
	v_and_or_b32 v0, v0, 32, v11
	v_add_nc_u32_e32 v11, 0, v10
	.loc	1 399 13                        ; generate_amdgcn.py:399:13
	v_fma_f32 v2, v36, v2, v14
	.loc	1 333 5                         ; generate_amdgcn.py:333:5
	v_cndmask_b32_e64 v1, v4, v1, s2
	.loc	1 418 9                         ; generate_amdgcn.py:418:9
	v_xad_u32 v12, v10, 4, 0
	v_add_nc_u32_e32 v18, 0, v0
	v_xad_u32 v19, 0x408, v0, 0
	.loc	1 333 5                         ; generate_amdgcn.py:333:5
	v_cndmask_b32_e64 v2, v14, v2, s3
	.loc	1 418 9                         ; generate_amdgcn.py:418:9
	v_xad_u32 v30, 0xc18, v0, 0
	v_xad_u32 v13, v10, 8, 0
	v_xad_u32 v29, 0x810, v0, 0
	v_xad_u32 v31, 0x1040, v0, 0
	.loc	1 399 13                        ; generate_amdgcn.py:399:13
	v_fma_f32 v26, v26, v41, v2
	.loc	1 333 5                         ; generate_amdgcn.py:333:5
	v_cndmask_b32_e64 v3, v3, v25, s2
	.loc	1 418 9                         ; generate_amdgcn.py:418:9
	v_xad_u32 v14, v10, 12, 0
	v_xad_u32 v32, 0x1448, v0, 0
	.loc	1 333 5                         ; generate_amdgcn.py:333:5
	v_cndmask_b32_e64 v4, v5, v23, s2
	v_cndmask_b32_e64 v2, v2, v26, s2
	.loc	1 418 9                         ; generate_amdgcn.py:418:9
	v_xad_u32 v15, v10, 16, 0
	v_xad_u32 v33, 0x1850, v0, 0
	.loc	1 333 5                         ; generate_amdgcn.py:333:5
	v_cndmask_b32_e64 v5, v6, v21, s2
	.loc	1 418 9                         ; generate_amdgcn.py:418:9
	v_xad_u32 v16, v10, 20, 0
	v_xad_u32 v17, v10, 24, 0
	v_xad_u32 v10, v10, 28, 0
	.loc	1 333 5                         ; generate_amdgcn.py:333:5
	v_cndmask_b32_e64 v6, v7, v24, s2
	v_cndmask_b32_e64 v7, v8, v22, s2
	v_cndmask_b32_e64 v8, v9, v20, s2
	.loc	1 418 9                         ; generate_amdgcn.py:418:9
	ds_store_b32 v11, v1
	ds_store_b32 v12, v2
	ds_store_b32 v13, v3
	ds_store_b32 v14, v4
	ds_store_b32 v15, v5
	ds_store_b32 v16, v6
	ds_store_b32 v17, v7
	ds_store_b32 v10, v8
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b32 v1, v18
	ds_load_b32 v2, v19
	ds_load_b32 v3, v29
	v_xad_u32 v0, 0x1c58, v0, 0
	ds_load_b32 v4, v30
	ds_load_b32 v5, v31
	ds_load_b32 v6, v32
	ds_load_b32 v7, v33
	ds_load_b32 v0, v0
	.loc	1 418 23 is_stmt 0              ; generate_amdgcn.py:418:23
	s_lshl_b32 s2, s35, 2
	s_lshl_b32 s3, s35, 3
	.loc	1 418 9                         ; generate_amdgcn.py:418:9
	v_lshlrev_b32_e32 v8, 2, v38
	v_add_lshl_u32 v9, v38, s0, 2
	v_add_lshl_u32 v11, v38, s1, 2
	v_add_lshl_u32 v10, v38, s2, 2
	v_add_lshl_u32 v12, v38, s3, 2
	v_add_lshl_u32 v13, v38, s8, 2
	v_add_lshl_u32 v14, v38, s9, 2
	s_waitcnt lgkmcnt(7)
	buffer_atomic_add_f32 v1, v8, s[4:7], 0 offen
	s_waitcnt lgkmcnt(6)
	buffer_atomic_add_f32 v2, v9, s[4:7], 0 offen
	s_waitcnt lgkmcnt(5)
	buffer_atomic_add_f32 v3, v10, s[4:7], 0 offen
	v_add_lshl_u32 v1, v38, s10, 2
	s_waitcnt lgkmcnt(4)
	buffer_atomic_add_f32 v4, v11, s[4:7], 0 offen
	s_waitcnt lgkmcnt(3)
	buffer_atomic_add_f32 v5, v12, s[4:7], 0 offen
	s_waitcnt lgkmcnt(2)
	buffer_atomic_add_f32 v6, v13, s[4:7], 0 offen
	s_waitcnt lgkmcnt(1)
	buffer_atomic_add_f32 v7, v14, s[4:7], 0 offen
	s_waitcnt lgkmcnt(0)
	buffer_atomic_add_f32 v0, v1, s[4:7], 0 offen
	.loc	1 309 1 is_stmt 1               ; generate_amdgcn.py:309:1
	s_nop 0
	s_sendmsg sendmsg(MSG_DEALLOC_VGPRS)
	s_endpgm
.Ltmp20:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_int8xint8_tn_sc256_none_bm16_bn128_bk64_gm4_w8_s3_weu2_sk4_maskk
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
	.size	amd_strix_halo_gfx1151_int8xint8_tn_sc256_none_bm16_bn128_bk64_gm4_w8_s3_weu2_sk4_maskk, .Lfunc_end0-amd_strix_halo_gfx1151_int8xint8_tn_sc256_none_bm16_bn128_bk64_gm4_w8_s3_weu2_sk4_maskk
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_int8xint8_tn_sc256_none_bm16_bn128_bk64_gm4_w8_s3_weu2_sk4_maskk.num_vgpr, 186
	.set amd_strix_halo_gfx1151_int8xint8_tn_sc256_none_bm16_bn128_bk64_gm4_w8_s3_weu2_sk4_maskk.num_agpr, 0
	.set amd_strix_halo_gfx1151_int8xint8_tn_sc256_none_bm16_bn128_bk64_gm4_w8_s3_weu2_sk4_maskk.numbered_sgpr, 44
	.set amd_strix_halo_gfx1151_int8xint8_tn_sc256_none_bm16_bn128_bk64_gm4_w8_s3_weu2_sk4_maskk.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_int8xint8_tn_sc256_none_bm16_bn128_bk64_gm4_w8_s3_weu2_sk4_maskk.private_seg_size, 0
	.set amd_strix_halo_gfx1151_int8xint8_tn_sc256_none_bm16_bn128_bk64_gm4_w8_s3_weu2_sk4_maskk.uses_vcc, 1
	.set amd_strix_halo_gfx1151_int8xint8_tn_sc256_none_bm16_bn128_bk64_gm4_w8_s3_weu2_sk4_maskk.uses_flat_scratch, 0
	.set amd_strix_halo_gfx1151_int8xint8_tn_sc256_none_bm16_bn128_bk64_gm4_w8_s3_weu2_sk4_maskk.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_int8xint8_tn_sc256_none_bm16_bn128_bk64_gm4_w8_s3_weu2_sk4_maskk.has_recursion, 0
	.set amd_strix_halo_gfx1151_int8xint8_tn_sc256_none_bm16_bn128_bk64_gm4_w8_s3_weu2_sk4_maskk.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 10452
; TotalNumSgprs: 46
; NumVgprs: 186
; ScratchSize: 0
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 30
; NumSGPRsForWavesPerEU: 46
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
	.byte	1                               ; Abbrev [1] 0xb:0x5f DW_TAG_compile_unit
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
	.byte	3                               ; Abbrev [3] 0x30:0x39 DW_TAG_subprogram
	.quad	.Lfunc_begin0                   ; DW_AT_low_pc
	.long	.Lfunc_end0-.Lfunc_begin0       ; DW_AT_high_pc
	.long	42                              ; DW_AT_abstract_origin
	.byte	4                               ; Abbrev [4] 0x41:0xd DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges0                 ; DW_AT_ranges
	.byte	1                               ; DW_AT_call_file
	.short	317                             ; DW_AT_call_line
	.byte	17                              ; DW_AT_call_column
	.byte	4                               ; Abbrev [4] 0x4e:0xd DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges1                 ; DW_AT_ranges
	.byte	1                               ; DW_AT_call_file
	.short	316                             ; DW_AT_call_line
	.byte	17                              ; DW_AT_call_column
	.byte	4                               ; Abbrev [4] 0x5b:0xd DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges2                 ; DW_AT_ranges
	.byte	1                               ; DW_AT_call_file
	.short	333                             ; DW_AT_call_line
	.byte	28                              ; DW_AT_call_column
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
	.asciz	"amd_strix_halo_gfx1151_int8xint8_tn_sc256_none_bm16_bn128_bk64_gm4_w8_s3_weu2_sk4_maskk"             ; string offset=75 ; amd_strix_halo_gfx1151_int8xint8_tn_sc256_none_bm16_bn128_bk64_gm4_w8_s3_weu2_sk4_maskk
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
    .name:           amd_strix_halo_gfx1151_int8xint8_tn_sc256_none_bm16_bn128_bk64_gm4_w8_s3_weu2_sk4_maskk
    .private_segment_fixed_size: 0
    .sgpr_count:     46
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_int8xint8_tn_sc256_none_bm16_bn128_bk64_gm4_w8_s3_weu2_sk4_maskk.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     186
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
