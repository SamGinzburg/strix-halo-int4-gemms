	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_int8xint8_nt_pc_none_bm32_bn128_bk64_gm4_w8_s3_weu2_sk8_maskk               ; -- Begin function amd_strix_halo_gfx1151_int8xint8_nt_pc_none_bm32_bn128_bk64_gm4_w8_s3_weu2_sk8_maskk
	.p2align	8
	.type	amd_strix_halo_gfx1151_int8xint8_nt_pc_none_bm32_bn128_bk64_gm4_w8_s3_weu2_sk8_maskk,@function
amd_strix_halo_gfx1151_int8xint8_nt_pc_none_bm32_bn128_bk64_gm4_w8_s3_weu2_sk8_maskk:                      ; @amd_strix_halo_gfx1151_int8xint8_nt_pc_none_bm32_bn128_bk64_gm4_w8_s3_weu2_sk8_maskk
.Lfunc_begin0:
	.file	1 "<repo>/scripts" "generate_amdgcn.py"
	.loc	1 309 0                         ; generate_amdgcn.py:309:0
	.cfi_sections .debug_frame
	.cfi_startproc
; %bb.0:
	s_clause 0x1
	s_load_b64 s[28:29], s[0:1], 0x30
	s_load_b128 s[20:23], s[0:1], 0x0
.Ltmp0:
	.loc	1 319 16 prologue_end           ; generate_amdgcn.py:319:16
	s_abs_i32 s7, s2
	.loc	1 327 14                        ; generate_amdgcn.py:327:14
	v_lshlrev_b32_e32 v25, 4, v0
	v_lshlrev_b32_e32 v12, 3, v0
	.loc	1 325 32                        ; generate_amdgcn.py:325:32
	v_lshrrev_b32_e32 v2, 3, v0
	.loc	1 374 22                        ; generate_amdgcn.py:374:22
	v_and_b32_e32 v26, 48, v0
	.loc	1 325 32                        ; generate_amdgcn.py:325:32
	v_and_b32_e32 v29, 15, v0
	.loc	1 327 14                        ; generate_amdgcn.py:327:14
	v_and_b32_e32 v9, 48, v25
	v_and_b32_e32 v38, 56, v12
	.loc	1 326 32                        ; generate_amdgcn.py:326:32
	v_and_b32_e32 v28, 0xe0, v0
.Ltmp1:
	.file	2 "<triton>/python/triton/language" "standard.py"
	.loc	2 43 13                         ; standard.py:43:13 @[ generate_amdgcn.py:317:17 ]
	s_waitcnt lgkmcnt(0)
	s_add_i32 s4, s29, 0x7f
.Ltmp2:
	.loc	2 43 13 is_stmt 0               ; standard.py:43:13 @[ generate_amdgcn.py:316:17 ]
	s_add_i32 s8, s28, 31
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
	s_lshr_b32 s10, s10, 27
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
	s_ashr_i32 s8, s8, 5
.Ltmp11:
	.loc	1 318 24 is_stmt 1              ; generate_amdgcn.py:318:24
	s_lshl_b32 s4, s4, 2
	s_load_b32 s28, s[0:1], 0x38
	.loc	1 319 16                        ; generate_amdgcn.py:319:16
	s_abs_i32 s5, s4
	s_mov_b64 s[24:25], s[22:23]
	s_cvt_f32_u32 s6, s5
	s_sub_i32 s9, 0, s5
	s_mov_b32 s23, 0x31027000
	s_mov_b32 s22, 0x7ffffffe
	v_rcp_iflag_f32_e32 v1, s6
	.loc	1 376 22                        ; generate_amdgcn.py:376:22
	s_mov_b32 s26, s22
	s_mov_b32 s27, s23
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_3) | instid1(SALU_CYCLE_3)
	.loc	1 319 16                        ; generate_amdgcn.py:319:16
	v_readfirstlane_b32 s6, v1
	.loc	1 374 30                        ; generate_amdgcn.py:374:30
	s_waitcnt lgkmcnt(0)
	v_mul_lo_u32 v2, s28, v2
	.loc	1 319 16                        ; generate_amdgcn.py:319:16
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
	s_abs_i32 s8, s7
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_2)
	s_cvt_f32_u32 s9, s8
	s_sub_i32 s10, 0, s8
	v_rcp_iflag_f32_e32 v1, s9
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_readfirstlane_b32 s9, v1
	.loc	1 326 32                        ; generate_amdgcn.py:326:32
	v_lshrrev_b32_e32 v1, 2, v0
	.loc	1 323 13                        ; generate_amdgcn.py:323:13
	s_mul_f32 s9, s9, 0x4f7ffffe
	.loc	1 376 30                        ; generate_amdgcn.py:376:30
	v_mad_u64_u32 v[10:11], null, s28, v1, v[9:10]
	s_delay_alu instid0(SALU_CYCLE_2) | instskip(NEXT) | instid1(SALU_CYCLE_3)
	.loc	1 323 13                        ; generate_amdgcn.py:323:13
	s_cvt_u32_f32 s9, s9
	s_mul_i32 s10, s10, s9
	.loc	1 376 30                        ; generate_amdgcn.py:376:30
	v_lshl_add_u32 v39, s28, 6, v10
	.loc	1 323 13                        ; generate_amdgcn.py:323:13
	s_mul_hi_u32 s4, s9, s10
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_add_i32 s9, s9, s4
	s_mul_hi_u32 s4, s5, s9
	s_xor_b32 s9, s2, s7
	s_mul_i32 s10, s4, s8
	s_ashr_i32 s9, s9, 31
	s_sub_i32 s5, s5, s10
	s_add_i32 s10, s4, 1
	s_sub_i32 s11, s5, s8
	s_cmp_ge_u32 s5, s8
	s_cselect_b32 s4, s10, s4
	s_cselect_b32 s5, s11, s5
	s_add_i32 s10, s4, 1
	s_cmp_ge_u32 s5, s8
	s_cselect_b32 s4, s10, s4
	.loc	1 368 22                        ; generate_amdgcn.py:368:22
	s_lshl_b32 s34, s3, 6
	.loc	1 323 13                        ; generate_amdgcn.py:323:13
	s_xor_b32 s3, s4, s9
	.loc	1 368 17                        ; generate_amdgcn.py:368:17
	v_or_b32_e32 v1, s34, v38
	.loc	1 323 13                        ; generate_amdgcn.py:323:13
	s_sub_i32 s3, s3, s9
	.loc	1 368 17                        ; generate_amdgcn.py:368:17
	v_or_b32_e32 v3, s34, v9
	.loc	1 322 28                        ; generate_amdgcn.py:322:28
	s_mul_i32 s4, s3, s7
	.loc	1 326 14                        ; generate_amdgcn.py:326:14
	s_lshl_b32 s14, s3, 7
	.loc	1 322 28                        ; generate_amdgcn.py:322:28
	s_sub_i32 s3, s2, s4
.Ltmp12:
	.loc	2 43 13                         ; standard.py:43:13 @[ generate_amdgcn.py:333:28 ]
	s_add_i32 s5, s28, 0x1ff
.Ltmp13:
	.loc	1 322 13                        ; generate_amdgcn.py:322:13
	s_add_i32 s3, s3, s6
	.loc	1 376 30                        ; generate_amdgcn.py:376:30
	s_mul_i32 s31, s14, s28
	.loc	1 325 14                        ; generate_amdgcn.py:325:14
	s_lshl_b32 s15, s3, 5
	.loc	1 333 5                         ; generate_amdgcn.py:333:5
	s_cmpk_gt_i32 s5, 0x1ff
	.loc	1 374 30                        ; generate_amdgcn.py:374:30
	s_mul_i32 s3, s15, s28
	.loc	1 369 23                        ; generate_amdgcn.py:369:23
	v_cmp_gt_i32_e32 vcc_lo, s28, v1
	.loc	1 370 23                        ; generate_amdgcn.py:370:23
	v_cmp_gt_i32_e64 s2, s28, v3
	.loc	1 333 5                         ; generate_amdgcn.py:333:5
	s_cselect_b32 s30, -1, 0
	.loc	1 374 30                        ; generate_amdgcn.py:374:30
	v_add3_u32 v40, v2, v38, s3
	.loc	1 376 30                        ; generate_amdgcn.py:376:30
	s_add_i32 s3, s31, s34
	.loc	1 374 22                        ; generate_amdgcn.py:374:22
	s_and_b32 s21, s21, 0xffff
	.loc	1 376 30                        ; generate_amdgcn.py:376:30
	v_add_nc_u32_e32 v1, s3, v10
	v_add_nc_u32_e32 v2, s3, v39
	.loc	1 376 22 is_stmt 0              ; generate_amdgcn.py:376:22
	s_and_b32 s25, s25, 0xffff
	.loc	1 333 5 is_stmt 1               ; generate_amdgcn.py:333:5
	s_and_b32 vcc_lo, vcc_lo, s30
	s_and_b32 s2, s2, s30
	s_cmpk_gt_i32 s5, 0x3ff
	.loc	1 374 30                        ; generate_amdgcn.py:374:30
	v_add_nc_u32_e32 v3, s34, v40
	.loc	1 376 22                        ; generate_amdgcn.py:376:22
	v_cndmask_b32_e64 v4, 0x80000000, v1, s2
	v_cndmask_b32_e64 v5, 0x80000000, v2, s2
	.loc	1 333 5                         ; generate_amdgcn.py:333:5
	s_cselect_b32 s2, -1, 0
	.loc	1 368 17                        ; generate_amdgcn.py:368:17
	s_addk_i32 s34, 0x200
	.loc	1 376 30                        ; generate_amdgcn.py:376:30
	v_add_nc_u32_e32 v11, 0x200, v1
	.loc	1 368 17                        ; generate_amdgcn.py:368:17
	v_or_b32_e32 v1, s34, v38
	v_or_b32_e32 v6, s34, v9
	.loc	1 374 22                        ; generate_amdgcn.py:374:22
	v_cndmask_b32_e32 v14, 0x80000000, v3, vcc_lo
	.loc	1 374 30 is_stmt 0              ; generate_amdgcn.py:374:30
	v_add_nc_u32_e32 v15, s34, v40
	.loc	1 376 30 is_stmt 1              ; generate_amdgcn.py:376:30
	v_add_nc_u32_e32 v13, 0x200, v2
	.loc	1 369 23                        ; generate_amdgcn.py:369:23
	v_cmp_gt_i32_e32 vcc_lo, s28, v1
	.loc	1 370 23                        ; generate_amdgcn.py:370:23
	v_cmp_gt_i32_e64 s3, s28, v6
	.loc	1 376 22                        ; generate_amdgcn.py:376:22
	s_clause 0x1
	buffer_load_b128 v[1:4], v4, s[24:27], 0 offen
	buffer_load_b128 v[5:8], v5, s[24:27], 0 offen
	.loc	1 374 22                        ; generate_amdgcn.py:374:22
	buffer_load_b64 v[21:22], v14, s[20:23], 0 offen
	s_mov_b32 s4, 0
	.loc	1 333 5                         ; generate_amdgcn.py:333:5
	s_and_b32 vcc_lo, vcc_lo, s2
	.loc	1 374 22                        ; generate_amdgcn.py:374:22
	v_cndmask_b32_e32 v14, 0x80000000, v15, vcc_lo
	.loc	1 333 5                         ; generate_amdgcn.py:333:5
	s_and_b32 vcc_lo, s3, s2
	s_cmpk_gt_i32 s5, 0x5ff
	.loc	1 376 22                        ; generate_amdgcn.py:376:22
	v_cndmask_b32_e32 v11, 0x80000000, v11, vcc_lo
	v_cndmask_b32_e32 v17, 0x80000000, v13, vcc_lo
	.loc	1 374 22                        ; generate_amdgcn.py:374:22
	buffer_load_b64 v[23:24], v14, s[20:23], 0 offen
	.loc	1 376 22                        ; generate_amdgcn.py:376:22
	s_clause 0x1
	buffer_load_b128 v[13:16], v11, s[24:27], 0 offen
	buffer_load_b128 v[17:20], v17, s[24:27], 0 offen
	v_lshlrev_b32_e32 v11, 1, v0
	.loc	1 374 22                        ; generate_amdgcn.py:374:22
	v_xor_b32_e32 v41, v12, v26
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 376 22                        ; generate_amdgcn.py:376:22
	v_and_b32_e32 v11, 48, v11
	v_xor_b32_e32 v42, v25, v11
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 374 22                        ; generate_amdgcn.py:374:22
	v_add_nc_u32_e32 v11, 0, v41
	.loc	1 376 22                        ; generate_amdgcn.py:376:22
	v_add_nc_u32_e32 v25, 0, v42
	.loc	1 374 22                        ; generate_amdgcn.py:374:22
	s_waitcnt vmcnt(3)
	ds_store_b64 v11, v[21:22] offset:16384
	.loc	1 376 22                        ; generate_amdgcn.py:376:22
	ds_store_b128 v25, v[1:4]
	ds_store_b128 v25, v[5:8] offset:4096
	v_and_b32_e32 v1, 48, v12
	.loc	1 374 22                        ; generate_amdgcn.py:374:22
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_waitcnt vmcnt(2)
	ds_store_b64 v11, v[23:24] offset:18432
	.loc	1 376 22                        ; generate_amdgcn.py:376:22
	s_waitcnt vmcnt(1)
	ds_store_b128 v25, v[13:16] offset:8192
	s_waitcnt vmcnt(0)
	ds_store_b128 v25, v[17:20] offset:12288
	.loc	1 333 5                         ; generate_amdgcn.py:333:5
	s_cbranch_scc1 .LBB0_3
; %bb.1:                                ; %.._crit_edge_crit_edge
	.loc	1 374 22                        ; generate_amdgcn.py:374:22
	v_lshl_or_b32 v30, v29, 6, v1
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	.loc	1 376 22                        ; generate_amdgcn.py:376:22
	v_lshl_or_b32 v34, v28, 5, v30
	.loc	1 374 22                        ; generate_amdgcn.py:374:22
	v_xor_b32_e32 v31, 16, v30
	v_xor_b32_e32 v33, 32, v30
	v_xor_b32_e32 v32, 48, v30
	.loc	1 376 22                        ; generate_amdgcn.py:376:22
	v_xor_b32_e32 v35, 16, v34
	v_xor_b32_e32 v36, 32, v34
	v_xor_b32_e32 v37, 48, v34
	s_clause 0x1
	s_load_b128 s[16:19], s[0:1], 0x10
	s_load_b64 s[12:13], s[0:1], 0x20
	s_cbranch_execz .LBB0_4
; %bb.2:
	.loc	1 0 22 is_stmt 0                ; generate_amdgcn.py:0:22
	v_dual_mov_b32 v11, 0 :: v_dual_mov_b32 v14, 0
	v_dual_mov_b32 v15, 0 :: v_dual_mov_b32 v16, 0
	v_dual_mov_b32 v17, 0 :: v_dual_mov_b32 v18, 0
	v_dual_mov_b32 v19, 0 :: v_dual_mov_b32 v20, 0
	v_dual_mov_b32 v21, 0 :: v_dual_mov_b32 v22, 0
	v_dual_mov_b32 v23, 0 :: v_dual_mov_b32 v24, 0
	v_dual_mov_b32 v25, 0 :: v_dual_mov_b32 v26, 0
	v_mov_b32_e32 v27, 0
	v_mov_b32_e32 v13, 0
	s_add_i32 s33, 0, 0x4000
	s_add_i32 s1, 0, 0x4800
	s_add_i32 s3, 0, 0x2000
	s_branch .LBB0_6
.LBB0_3:
                                        ; implicit-def: $vgpr30
                                        ; implicit-def: $vgpr31
                                        ; implicit-def: $vgpr33
                                        ; implicit-def: $vgpr32
                                        ; implicit-def: $vgpr34
                                        ; implicit-def: $vgpr35
                                        ; implicit-def: $vgpr36
                                        ; implicit-def: $vgpr37
	s_clause 0x1
	s_load_b128 s[16:19], s[0:1], 0x10
	s_load_b64 s[12:13], s[0:1], 0x20
.LBB0_4:                                ; %.lr.ph
	v_lshl_or_b32 v30, v29, 6, v1
.Ltmp14:
	.loc	2 43 12 is_stmt 1               ; standard.py:43:12 @[ generate_amdgcn.py:333:28 ]
	s_lshr_b32 s35, s5, 9
	s_mov_b32 s5, s4
	s_mov_b32 s6, s4
	s_mov_b32 s7, s4
	v_lshl_or_b32 v34, v28, 5, v30
	s_mov_b32 s8, s4
	s_mov_b32 s9, s4
	s_mov_b32 s10, s4
	s_mov_b32 s11, s4
	v_dual_mov_b32 v1, s4 :: v_dual_mov_b32 v4, s7
	v_xor_b32_e32 v31, 16, v30
	v_xor_b32_e32 v33, 32, v30
	v_xor_b32_e32 v32, 48, v30
	v_xor_b32_e32 v35, 16, v34
	v_xor_b32_e32 v36, 32, v34
	v_xor_b32_e32 v37, 48, v34
	v_dual_mov_b32 v13, 0 :: v_dual_mov_b32 v2, s5
	v_dual_mov_b32 v3, s6 :: v_dual_mov_b32 v6, s9
	v_dual_mov_b32 v5, s8 :: v_dual_mov_b32 v8, s11
	v_dual_mov_b32 v7, s10 :: v_dual_mov_b32 v26, 0
	v_dual_mov_b32 v27, 0 :: v_dual_mov_b32 v24, 0
	v_dual_mov_b32 v25, 0 :: v_dual_mov_b32 v22, 0
	v_dual_mov_b32 v23, 0 :: v_dual_mov_b32 v20, 0
	v_dual_mov_b32 v21, 0 :: v_dual_mov_b32 v18, 0
	v_dual_mov_b32 v19, 0 :: v_dual_mov_b32 v16, 0
	v_dual_mov_b32 v17, 0 :: v_dual_mov_b32 v14, 0
	v_mov_b32_e32 v15, 0
	v_mov_b32_e32 v11, 0
	s_addk_i32 s34, 0x200
	s_add_i32 s33, 0, 0x4000
	s_add_i32 s1, 0, 0x4800
	s_add_i32 s3, 0, 0x2000
	s_add_i32 s35, s35, -3
	s_mov_b32 s36, 1
	s_mov_b32 s26, s22
	s_mov_b32 s27, s23
.Ltmp15:
.LBB0_5:                                ; =>This Inner Loop Header: Depth=1
	.loc	1 334 14                        ; generate_amdgcn.py:334:14
	s_lshl_b32 s0, s5, 9
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	.loc	1 368 17                        ; generate_amdgcn.py:368:17
	s_add_i32 s0, s34, s0
	v_or_b32_e32 v43, s0, v38
	v_or_b32_e32 v44, s0, v9
	.loc	1 376 30                        ; generate_amdgcn.py:376:30
	s_add_i32 s6, s0, s31
	.loc	1 374 30                        ; generate_amdgcn.py:374:30
	v_add_nc_u32_e32 v45, s0, v40
	.loc	1 376 30                        ; generate_amdgcn.py:376:30
	v_add_nc_u32_e32 v46, s6, v10
	.loc	1 369 23                        ; generate_amdgcn.py:369:23
	v_cmp_gt_i32_e64 s0, s28, v43
	.loc	1 370 23                        ; generate_amdgcn.py:370:23
	v_cmp_gt_i32_e32 vcc_lo, s28, v44
	.loc	1 376 30                        ; generate_amdgcn.py:376:30
	v_add_nc_u32_e32 v47, s6, v39
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 374 22                        ; generate_amdgcn.py:374:22
	v_cndmask_b32_e64 v43, 0x80000000, v45, s0
	.loc	1 376 22                        ; generate_amdgcn.py:376:22
	v_dual_cndmask_b32 v44, 0x80000000, v46 :: v_dual_cndmask_b32 v45, 0x80000000, v47
	s_mov_b32 s0, s33
	s_mov_b32 s33, s1
	.loc	1 374 22                        ; generate_amdgcn.py:374:22
	buffer_load_b64 v[111:112], v43, s[20:23], 0 offen
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 376 22                        ; generate_amdgcn.py:376:22
	s_clause 0x1
	buffer_load_b128 v[59:62], v44, s[24:27], 0 offen
	buffer_load_b128 v[63:66], v45, s[24:27], 0 offen
	s_mov_b32 s1, s4
	.loc	1 374 22                        ; generate_amdgcn.py:374:22
	v_add_nc_u32_e32 v43, s0, v30
	.loc	1 376 22                        ; generate_amdgcn.py:376:22
	v_add_nc_u32_e32 v47, s1, v34
	v_add_nc_u32_e32 v48, s1, v35
	.loc	1 374 22                        ; generate_amdgcn.py:374:22
	v_add_nc_u32_e32 v44, s0, v31
	v_add_nc_u32_e32 v45, s0, v33
	v_add_nc_u32_e32 v46, s0, v32
	.loc	1 376 22                        ; generate_amdgcn.py:376:22
	v_add_nc_u32_e32 v49, s1, v36
	v_add_nc_u32_e32 v50, s1, v37
	ds_load_b128 v[67:70], v47
	.loc	1 374 22                        ; generate_amdgcn.py:374:22
	ds_load_b128 v[51:54], v43
	ds_load_b128 v[71:74], v43 offset:1024
	.loc	1 376 22                        ; generate_amdgcn.py:376:22
	ds_load_b128 v[75:78], v48
	.loc	1 374 22                        ; generate_amdgcn.py:374:22
	ds_load_b128 v[79:82], v44
	ds_load_b128 v[83:86], v44 offset:1024
	.loc	1 376 22                        ; generate_amdgcn.py:376:22
	ds_load_b128 v[87:90], v49
	.loc	1 374 22                        ; generate_amdgcn.py:374:22
	ds_load_b128 v[91:94], v45
	ds_load_b128 v[95:98], v45 offset:1024
	ds_load_b128 v[99:102], v46
	ds_load_b128 v[103:106], v46 offset:1024
	.loc	1 376 22                        ; generate_amdgcn.py:376:22
	ds_load_b128 v[107:110], v50
	s_mov_b32 s4, s3
	.loc	1 333 5                         ; generate_amdgcn.py:333:5
	s_add_i32 s3, s36, 1
	.loc	1 374 22                        ; generate_amdgcn.py:374:22
	s_waitcnt lgkmcnt(0)
	.loc	1 333 5                         ; generate_amdgcn.py:333:5
	s_cmp_lt_i32 s3, 2
	.loc	1 374 22                        ; generate_amdgcn.py:374:22
	s_barrier
	.loc	1 333 5                         ; generate_amdgcn.py:333:5
	s_cselect_b32 s36, s3, 0
	s_add_i32 s0, s5, 1
	.loc	1 374 22                        ; generate_amdgcn.py:374:22
	s_lshl_b32 s1, s36, 11
	.loc	1 376 22                        ; generate_amdgcn.py:376:22
	s_lshl_b32 s3, s36, 13
	.loc	1 379 19                        ; generate_amdgcn.py:379:19
	v_wmma_i32_16x16x16_iu8 v[43:50], v[67:70], v[51:54], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[51:58], v[67:70], v[71:74], v[1:8] neg_lo:[1,1,0]
	.loc	1 374 22                        ; generate_amdgcn.py:374:22
	s_add_i32 s6, s1, 0
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 379 19                        ; generate_amdgcn.py:379:19
	v_wmma_i32_16x16x16_iu8 v[43:50], v[75:78], v[79:82], v[43:50] neg_lo:[1,1,0]
	.loc	1 376 22                        ; generate_amdgcn.py:376:22
	s_add_i32 s3, s3, 0
	.loc	1 379 19                        ; generate_amdgcn.py:379:19
	v_wmma_i32_16x16x16_iu8 v[51:58], v[75:78], v[83:86], v[51:58] neg_lo:[1,1,0]
	.loc	1 374 22                        ; generate_amdgcn.py:374:22
	v_add_nc_u32_e32 v113, s6, v41
	s_add_i32 s1, s6, 0x4000
	.loc	1 379 19                        ; generate_amdgcn.py:379:19
	v_wmma_i32_16x16x16_iu8 v[43:50], v[87:90], v[91:94], v[43:50] neg_lo:[1,1,0]
	.loc	1 333 5                         ; generate_amdgcn.py:333:5
	s_cmp_lg_u32 s5, s35
	.loc	1 379 19                        ; generate_amdgcn.py:379:19
	v_wmma_i32_16x16x16_iu8 v[51:58], v[87:90], v[95:98], v[51:58] neg_lo:[1,1,0]
	s_mov_b32 s5, s0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_wmma_i32_16x16x16_iu8 v[43:50], v[107:110], v[99:102], v[43:50] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[51:58], v[107:110], v[103:106], v[51:58] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cvt_f32_i32_e32 v43, v43
	v_cvt_f32_i32_e32 v44, v44
	s_delay_alu instid0(VALU_DEP_4)
	v_cvt_f32_i32_e32 v45, v45
	v_cvt_f32_i32_e32 v46, v46
	v_cvt_f32_i32_e32 v47, v47
	v_cvt_f32_i32_e32 v48, v48
	v_cvt_f32_i32_e32 v49, v49
	v_cvt_f32_i32_e32 v50, v50
	v_cvt_f32_i32_e32 v51, v51
	v_cvt_f32_i32_e32 v52, v52
	v_cvt_f32_i32_e32 v53, v53
	v_cvt_f32_i32_e32 v54, v54
	v_cvt_f32_i32_e32 v55, v55
	v_cvt_f32_i32_e32 v56, v56
	v_cvt_f32_i32_e32 v57, v57
	v_cvt_f32_i32_e32 v58, v58
	.loc	1 399 13                        ; generate_amdgcn.py:399:13
	v_dual_add_f32 v19, v19, v52 :: v_dual_add_nc_u32 v114, s3, v42
	v_add_f32_e32 v13, v13, v43
	v_dual_add_f32 v27, v27, v44 :: v_dual_add_f32 v26, v26, v45
	v_dual_add_f32 v25, v25, v46 :: v_dual_add_f32 v24, v24, v47
	v_dual_add_f32 v23, v23, v48 :: v_dual_add_f32 v22, v22, v49
	v_dual_add_f32 v21, v21, v50 :: v_dual_add_f32 v20, v20, v51
	v_dual_add_f32 v18, v18, v53 :: v_dual_add_f32 v17, v17, v54
	v_add_f32_e32 v14, v14, v57
	v_dual_add_f32 v16, v16, v55 :: v_dual_add_f32 v15, v15, v56
	v_add_f32_e32 v11, v11, v58
	.loc	1 374 22                        ; generate_amdgcn.py:374:22
	s_waitcnt vmcnt(2)
	ds_store_b64 v113, v[111:112] offset:16384
	.loc	1 376 22                        ; generate_amdgcn.py:376:22
	s_waitcnt vmcnt(1)
	ds_store_b128 v114, v[59:62]
	s_waitcnt vmcnt(0)
	ds_store_b128 v114, v[63:66] offset:4096
	.loc	1 333 5                         ; generate_amdgcn.py:333:5
	s_cbranch_scc1 .LBB0_5
.LBB0_6:                                ; %._crit_edge
	.loc	1 379 19                        ; generate_amdgcn.py:379:19
	s_and_not1_b32 vcc_lo, exec_lo, s30
	.loc	1 374 22                        ; generate_amdgcn.py:374:22
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 379 19                        ; generate_amdgcn.py:379:19
	s_cbranch_vccnz .LBB0_8
; %bb.7:
	.loc	1 376 22                        ; generate_amdgcn.py:376:22
	v_add_nc_u32_e32 v1, s4, v37
	v_add_nc_u32_e32 v2, s4, v36
	v_add_nc_u32_e32 v3, s4, v35
	v_add_nc_u32_e32 v4, s4, v34
	s_mov_b32 s4, 0
	ds_load_b128 v[46:49], v1
	ds_load_b128 v[50:53], v2
	.loc	1 379 19                        ; generate_amdgcn.py:379:19
	s_mov_b32 s5, s4
	s_mov_b32 s6, s4
	s_mov_b32 s7, s4
	s_mov_b32 s8, s4
	s_mov_b32 s9, s4
	s_mov_b32 s10, s4
	s_mov_b32 s11, s4
	.loc	1 374 22                        ; generate_amdgcn.py:374:22
	v_add_nc_u32_e32 v1, s33, v30
	.loc	1 376 22                        ; generate_amdgcn.py:376:22
	ds_load_b128 v[54:57], v3
	ds_load_b128 v[58:61], v4
	.loc	1 374 22                        ; generate_amdgcn.py:374:22
	v_add_nc_u32_e32 v3, s33, v31
	ds_load_b128 v[62:65], v1 offset:1024
	ds_load_b128 v[66:69], v1
	v_add_nc_u32_e32 v2, s33, v33
	ds_load_b128 v[74:77], v3 offset:1024
	ds_load_b128 v[78:81], v3
	v_add_nc_u32_e32 v9, s33, v32
	ds_load_b128 v[86:89], v9
	ds_load_b128 v[90:93], v9 offset:1024
	ds_load_b128 v[70:73], v2
	ds_load_b128 v[82:85], v2 offset:1024
	.loc	1 379 19                        ; generate_amdgcn.py:379:19
	v_dual_mov_b32 v1, s4 :: v_dual_mov_b32 v2, s5
	v_dual_mov_b32 v3, s6 :: v_dual_mov_b32 v4, s7
	v_dual_mov_b32 v5, s8 :: v_dual_mov_b32 v6, s9
	v_dual_mov_b32 v7, s10 :: v_dual_mov_b32 v8, s11
	s_waitcnt lgkmcnt(6)
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu8 v[38:45], v[58:61], v[66:69], v[1:8] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(4)
	v_wmma_i32_16x16x16_iu8 v[38:45], v[54:57], v[78:81], v[38:45] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(1)
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu8 v[38:45], v[50:53], v[70:73], v[38:45] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[38:45], v[46:49], v[86:89], v[38:45] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cvt_f32_i32_e32 v10, v40
	v_cvt_f32_i32_e32 v40, v42
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cvt_f32_i32_e32 v9, v39
	v_cvt_f32_i32_e32 v39, v41
	v_cvt_f32_i32_e32 v41, v43
	v_cvt_f32_i32_e32 v42, v44
	.loc	1 399 13                        ; generate_amdgcn.py:399:13
	v_add_f32_e32 v24, v24, v40
	.loc	1 379 19                        ; generate_amdgcn.py:379:19
	v_wmma_i32_16x16x16_iu8 v[1:8], v[58:61], v[62:65], v[1:8] neg_lo:[1,1,0]
	v_cvt_f32_i32_e32 v43, v45
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 399 13                        ; generate_amdgcn.py:399:13
	v_dual_add_f32 v27, v27, v9 :: v_dual_add_f32 v22, v22, v42
	v_add_f32_e32 v26, v26, v10
	.loc	1 379 19                        ; generate_amdgcn.py:379:19
	v_wmma_i32_16x16x16_iu8 v[1:8], v[54:57], v[74:77], v[1:8] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu8 v[1:8], v[50:53], v[82:85], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[1:8], v[46:49], v[90:93], v[1:8] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cvt_f32_i32_e32 v1, v1
	v_cvt_f32_i32_e32 v2, v2
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cvt_f32_i32_e32 v3, v3
	v_cvt_f32_i32_e32 v4, v4
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 399 13                        ; generate_amdgcn.py:399:13
	v_dual_add_f32 v25, v25, v39 :: v_dual_add_f32 v20, v20, v1
	v_dual_add_f32 v23, v23, v41 :: v_dual_add_f32 v18, v18, v3
	s_delay_alu instid0(VALU_DEP_3)
	v_add_f32_e32 v17, v17, v4
	.loc	1 379 19                        ; generate_amdgcn.py:379:19
	v_cvt_f32_i32_e32 v1, v5
	v_cvt_f32_i32_e32 v3, v7
	.loc	1 399 13                        ; generate_amdgcn.py:399:13
	v_add_f32_e32 v19, v19, v2
	.loc	1 379 19                        ; generate_amdgcn.py:379:19
	v_cvt_f32_i32_e32 v2, v6
	v_cvt_f32_i32_e32 v4, v8
	v_cvt_f32_i32_e32 v5, v38
	.loc	1 399 13                        ; generate_amdgcn.py:399:13
	v_dual_add_f32 v21, v21, v43 :: v_dual_add_f32 v16, v16, v1
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_dual_add_f32 v15, v15, v2 :: v_dual_add_f32 v14, v14, v3
	v_add_f32_e32 v11, v11, v4
	s_delay_alu instid0(VALU_DEP_4)
	v_add_f32_e32 v13, v13, v5
.LBB0_8:
	.loc	1 0 13 is_stmt 0                ; generate_amdgcn.py:0:13
	v_dual_mov_b32 v1, 0 :: v_dual_mov_b32 v2, 0
	v_dual_mov_b32 v3, 0 :: v_dual_mov_b32 v4, 0
	v_dual_mov_b32 v5, 0 :: v_dual_mov_b32 v6, 0
	v_dual_mov_b32 v7, 0 :: v_dual_mov_b32 v8, 0
	v_dual_mov_b32 v9, 0 :: v_dual_mov_b32 v10, 0
	v_dual_mov_b32 v38, 0 :: v_dual_mov_b32 v39, 0
	v_dual_mov_b32 v40, 0 :: v_dual_mov_b32 v41, 0
	v_dual_mov_b32 v42, 0 :: v_dual_mov_b32 v43, 0
	.loc	1 379 19 is_stmt 1              ; generate_amdgcn.py:379:19
	s_and_not1_b32 vcc_lo, exec_lo, s2
	s_cbranch_vccnz .LBB0_10
; %bb.9:
	.loc	1 0 19 is_stmt 0                ; generate_amdgcn.py:0:19
	s_mov_b32 s4, 0
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 379 19                        ; generate_amdgcn.py:379:19
	s_mov_b32 s5, s4
	s_mov_b32 s6, s4
	s_mov_b32 s7, s4
	s_mov_b32 s8, s4
	s_mov_b32 s9, s4
	s_mov_b32 s10, s4
	s_mov_b32 s11, s4
	.loc	1 376 22 is_stmt 1              ; generate_amdgcn.py:376:22
	v_add_nc_u32_e32 v1, s3, v37
	v_add_nc_u32_e32 v2, s3, v36
	v_add_nc_u32_e32 v3, s3, v35
	ds_load_b128 v[38:41], v1
	ds_load_b128 v[42:45], v2
	.loc	1 374 22                        ; generate_amdgcn.py:374:22
	v_add_nc_u32_e32 v1, s1, v30
	.loc	1 376 22                        ; generate_amdgcn.py:376:22
	v_add_nc_u32_e32 v4, s3, v34
	ds_load_b128 v[46:49], v3
	ds_load_b128 v[50:53], v4
	.loc	1 374 22                        ; generate_amdgcn.py:374:22
	v_add_nc_u32_e32 v3, s1, v31
	ds_load_b128 v[54:57], v1 offset:1024
	ds_load_b128 v[58:61], v1
	v_add_nc_u32_e32 v2, s1, v33
	v_add_nc_u32_e32 v1, s1, v32
	.loc	1 379 19                        ; generate_amdgcn.py:379:19
	v_dual_mov_b32 v37, s11 :: v_dual_mov_b32 v30, s4
	.loc	1 374 22                        ; generate_amdgcn.py:374:22
	ds_load_b128 v[66:69], v3 offset:1024
	ds_load_b128 v[70:73], v3
	.loc	1 379 19                        ; generate_amdgcn.py:379:19
	v_mov_b32_e32 v33, s7
	.loc	1 374 22                        ; generate_amdgcn.py:374:22
	ds_load_b128 v[62:65], v2
	ds_load_b128 v[74:77], v2 offset:1024
	.loc	1 379 19                        ; generate_amdgcn.py:379:19
	v_dual_mov_b32 v36, s10 :: v_dual_mov_b32 v35, s9
	v_mov_b32_e32 v34, s8
	v_dual_mov_b32 v32, s6 :: v_dual_mov_b32 v31, s5
	.loc	1 374 22                        ; generate_amdgcn.py:374:22
	ds_load_b128 v[78:81], v1
	ds_load_b128 v[82:85], v1 offset:1024
	.loc	1 379 19                        ; generate_amdgcn.py:379:19
	s_waitcnt lgkmcnt(6)
	v_wmma_i32_16x16x16_iu8 v[1:8], v[50:53], v[58:61], v[30:37] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[30:37], v[50:53], v[54:57], v[30:37] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(4)
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_wmma_i32_16x16x16_iu8 v[1:8], v[46:49], v[70:73], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[30:37], v[46:49], v[66:69], v[30:37] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(3)
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_wmma_i32_16x16x16_iu8 v[1:8], v[42:45], v[62:65], v[1:8] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(2)
	v_wmma_i32_16x16x16_iu8 v[30:37], v[42:45], v[74:77], v[30:37] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(1)
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_wmma_i32_16x16x16_iu8 v[1:8], v[38:41], v[78:81], v[1:8] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu8 v[30:37], v[38:41], v[82:85], v[30:37] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cvt_f32_i32_e32 v1, v1
	v_cvt_f32_i32_e32 v2, v2
	v_cvt_f32_i32_e32 v3, v3
	v_cvt_f32_i32_e32 v4, v4
	v_cvt_f32_i32_e32 v5, v5
	v_cvt_f32_i32_e32 v6, v6
	v_cvt_f32_i32_e32 v7, v7
	v_cvt_f32_i32_e32 v8, v8
	v_cvt_f32_i32_e32 v9, v30
	v_cvt_f32_i32_e32 v10, v31
	v_cvt_f32_i32_e32 v38, v32
	v_cvt_f32_i32_e32 v39, v33
	v_cvt_f32_i32_e32 v40, v34
	v_cvt_f32_i32_e32 v41, v35
	v_cvt_f32_i32_e32 v42, v36
	v_cvt_f32_i32_e32 v43, v37
.LBB0_10:
	.loc	1 326 32                        ; generate_amdgcn.py:326:32
	v_bfe_u32 v30, v0, 4, 1
	v_lshrrev_b32_e32 v28, 1, v28
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	v_or_b32_e32 v29, s15, v29
	.loc	1 404 14 is_stmt 0              ; generate_amdgcn.py:404:14
	s_and_b32 s5, s17, 0xffff
	s_mov_b32 s7, 0x31027000
	.loc	1 399 13 is_stmt 1              ; generate_amdgcn.py:399:13
	v_add_f32_e32 v2, v27, v2
	.loc	1 405 22                        ; generate_amdgcn.py:405:22
	v_or3_b32 v28, v30, v28, s14
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	v_lshlrev_b32_e32 v29, 1, v29
	s_mov_b32 s6, 0x7ffffffe
	.loc	1 404 14 is_stmt 0              ; generate_amdgcn.py:404:14
	s_mov_b32 s4, s16
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 399 13 is_stmt 1              ; generate_amdgcn.py:399:13
	v_dual_add_f32 v1, v13, v1 :: v_dual_lshlrev_b32 v28, 1, v28
	.loc	1 404 14                        ; generate_amdgcn.py:404:14
	v_or_b32_e32 v30, 32, v29
	.loc	1 399 13                        ; generate_amdgcn.py:399:13
	v_dual_add_f32 v4, v25, v4 :: v_dual_add_f32 v5, v24, v5
	.loc	1 404 14                        ; generate_amdgcn.py:404:14
	s_clause 0x1
	buffer_load_u16 v29, v29, s[4:7], 0 offen
	buffer_load_u16 v30, v30, s[4:7], 0 offen
	.loc	1 405 14                        ; generate_amdgcn.py:405:14
	v_or_b32_e32 v31, 4, v28
	v_or_b32_e32 v32, 8, v28
	s_and_b32 s5, s19, 0xffff
	s_mov_b32 s4, s18
	v_or_b32_e32 v33, 12, v28
	v_or_b32_e32 v34, 16, v28
	v_or_b32_e32 v35, 20, v28
	v_or_b32_e32 v36, 24, v28
	v_or_b32_e32 v37, 28, v28
	s_clause 0x7
	buffer_load_u16 v28, v28, s[4:7], 0 offen
	buffer_load_u16 v31, v31, s[4:7], 0 offen
	buffer_load_u16 v32, v32, s[4:7], 0 offen
	buffer_load_u16 v33, v33, s[4:7], 0 offen
	buffer_load_u16 v34, v34, s[4:7], 0 offen
	buffer_load_u16 v35, v35, s[4:7], 0 offen
	buffer_load_u16 v36, v36, s[4:7], 0 offen
	buffer_load_u16 v37, v37, s[4:7], 0 offen
	.loc	1 399 13                        ; generate_amdgcn.py:399:13
	v_dual_add_f32 v6, v23, v6 :: v_dual_add_f32 v7, v22, v7
	v_dual_add_f32 v40, v16, v40 :: v_dual_add_f32 v43, v11, v43
	v_dual_add_f32 v42, v14, v42 :: v_dual_and_b32 v47, 14, v0
	v_dual_add_f32 v3, v26, v3 :: v_dual_and_b32 v44, 0x7f, v0
	.loc	1 325 32                        ; generate_amdgcn.py:325:32
	v_bfe_i32 v45, v0, 7, 1
	v_lshrrev_b32_e32 v46, 7, v0
	.loc	1 399 13                        ; generate_amdgcn.py:399:13
	v_dual_add_f32 v8, v21, v8 :: v_dual_add_f32 v9, v20, v9
	.loc	1 418 9                         ; generate_amdgcn.py:418:9
	v_and_b32_e32 v49, 1, v0
	.loc	1 333 5                         ; generate_amdgcn.py:333:5
	v_cndmask_b32_e64 v5, v24, v5, s2
	v_cndmask_b32_e64 v7, v22, v7, s2
	v_cndmask_b32_e64 v16, v16, v40, s2
	v_cndmask_b32_e64 v22, v14, v42, s2
	v_cndmask_b32_e64 v24, v11, v43, s2
	v_cndmask_b32_e64 v21, v21, v8, s2
	.loc	1 399 13                        ; generate_amdgcn.py:399:13
	v_dual_add_f32 v10, v19, v10 :: v_dual_add_f32 v39, v17, v39
	.loc	1 333 5                         ; generate_amdgcn.py:333:5
	v_cndmask_b32_e64 v23, v23, v6, s2
	.loc	1 418 23                        ; generate_amdgcn.py:418:23
	v_mul_lo_u32 v6, s29, v46
	.loc	1 399 13                        ; generate_amdgcn.py:399:13
	v_dual_add_f32 v38, v18, v38 :: v_dual_add_f32 v41, v15, v41
	.loc	1 333 5                         ; generate_amdgcn.py:333:5
	v_cndmask_b32_e64 v1, v13, v1, s2
	v_cndmask_b32_e64 v13, v25, v4, s2
	v_cndmask_b32_e64 v4, v20, v9, s2
	v_cndmask_b32_e64 v9, v19, v10, s2
	.loc	1 418 9                         ; generate_amdgcn.py:418:9
	v_lshlrev_b32_e32 v10, 6, v49
	v_and_b32_e32 v19, 0x440, v45
	.loc	1 418 23 is_stmt 0              ; generate_amdgcn.py:418:23
	s_mul_i32 s1, s15, s29
	.loc	1 333 5 is_stmt 1               ; generate_amdgcn.py:333:5
	v_cndmask_b32_e64 v2, v27, v2, s2
	.loc	1 418 23                        ; generate_amdgcn.py:418:23
	s_add_i32 s1, s1, s14
	.loc	1 333 5                         ; generate_amdgcn.py:333:5
	v_cndmask_b32_e64 v18, v18, v38, s2
	v_cndmask_b32_e64 v17, v17, v39, s2
	v_cndmask_b32_e64 v15, v15, v41, s2
	v_cndmask_b32_e64 v3, v26, v3, s2
	.loc	1 418 9                         ; generate_amdgcn.py:418:9
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 418 23 is_stmt 0              ; generate_amdgcn.py:418:23
	s_lshl_b32 s3, s29, 1
	s_lshl_b32 s4, s29, 2
	s_mul_i32 s5, s29, 6
	s_lshl_b32 s8, s29, 3
	s_mul_i32 s9, s29, 10
	s_mul_i32 s10, s29, 12
	s_mul_i32 s11, s29, 14
	s_lshl_b32 s16, s29, 4
	s_mul_i32 s17, s29, 18
	s_mul_i32 s18, s29, 20
	.loc	1 418 9                         ; generate_amdgcn.py:418:9
	s_and_b32 s13, s13, 0xffff
	s_mov_b32 s14, s6
	s_mov_b32 s15, s7
	.loc	1 418 23                        ; generate_amdgcn.py:418:23
	s_mul_i32 s19, s29, 22
	s_mul_i32 s20, s29, 24
	s_mul_i32 s21, s29, 26
	s_mul_i32 s22, s29, 28
	s_mul_i32 s0, s29, 30
	.loc	1 405 14 is_stmt 1              ; generate_amdgcn.py:405:14
	s_waitcnt vmcnt(3)
	v_lshlrev_b32_e32 v14, 16, v34
	v_lshlrev_b32_e32 v11, 16, v32
	.loc	1 418 9                         ; generate_amdgcn.py:418:9
	v_lshlrev_b32_e32 v48, 2, v0
	v_bfe_i32 v0, v0, 0, 1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_and_b32_e32 v8, 0x3f8, v48
	v_and_b32_e32 v0, 0x440, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_xor_b32_e32 v0, v0, v8
	v_xor_b32_e32 v8, v19, v10
	.loc	1 418 23 is_stmt 0              ; generate_amdgcn.py:418:23
	v_add3_u32 v19, s1, v44, v6
	.loc	1 405 14 is_stmt 1              ; generate_amdgcn.py:405:14
	v_lshlrev_b32_e32 v10, 16, v31
	.loc	1 418 9                         ; generate_amdgcn.py:418:9
	v_lshl_or_b32 v0, v47, 10, v0
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_add_lshl_u32 v25, v19, s3, 2
	v_add_lshl_u32 v26, v19, s4, 2
	v_add_nc_u32_e32 v27, 0, v0
	v_xad_u32 v38, v0, 8, 0
	v_xad_u32 v39, v0, 16, 0
	v_xad_u32 v40, v0, 24, 0
	v_xad_u32 v41, v0, 32, 0
	v_xad_u32 v42, v0, 40, 0
	v_xad_u32 v43, v0, 48, 0
	v_xad_u32 v44, v0, 56, 0
	.loc	1 404 14                        ; generate_amdgcn.py:404:14
	v_lshlrev_b32_e32 v0, 16, v29
	.loc	1 418 9                         ; generate_amdgcn.py:418:9
	v_and_b32_e32 v12, 0x380, v12
	v_lshlrev_b32_e32 v20, 2, v47
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 406 16                        ; generate_amdgcn.py:406:16
	v_mul_f32_e32 v32, v0, v10
	.loc	1 418 9                         ; generate_amdgcn.py:418:9
	v_or3_b32 v6, v12, v20, v8
	.loc	1 405 14                        ; generate_amdgcn.py:405:14
	v_lshlrev_b32_e32 v12, 16, v33
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 406 16                        ; generate_amdgcn.py:406:16
	v_dual_mul_f32 v33, v0, v11 :: v_dual_mul_f32 v2, v2, v32
	v_dual_mul_f32 v34, v0, v12 :: v_dual_add_nc_u32 v45, 0, v6
	.loc	1 418 9                         ; generate_amdgcn.py:418:9
	v_xad_u32 v46, 0x808, v6, 0
	v_xad_u32 v47, 0x1010, v6, 0
	v_xad_u32 v48, 0x1818, v6, 0
	v_xad_u32 v49, 0x2020, v6, 0
	v_xad_u32 v50, 0x2828, v6, 0
	v_xad_u32 v51, 0x3030, v6, 0
	v_xad_u32 v52, 0x3838, v6, 0
	.loc	1 404 14                        ; generate_amdgcn.py:404:14
	v_lshlrev_b32_e32 v6, 16, v30
	.loc	1 405 14                        ; generate_amdgcn.py:405:14
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v30, 16, v37
	v_lshlrev_b32_e32 v29, 16, v36
	v_lshlrev_b32_e32 v8, 16, v28
	v_lshlrev_b32_e32 v28, 16, v35
	.loc	1 406 16                        ; generate_amdgcn.py:406:16
	v_mul_f32_e32 v35, v0, v14
	v_mul_f32_e32 v11, v6, v11
	v_mul_f32_e32 v37, v0, v29
	v_mul_f32_e32 v31, v0, v8
	v_mul_f32_e32 v8, v6, v8
	v_mul_f32_e32 v36, v0, v28
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_mul_f32 v53, v0, v30 :: v_dual_mul_f32 v0, v1, v31
	.loc	1 406 9 is_stmt 0               ; generate_amdgcn.py:406:9
	v_dual_mul_f32 v1, v4, v8 :: v_dual_mul_f32 v8, v5, v35
	v_mul_f32_e32 v5, v18, v11
	.loc	1 406 16                        ; generate_amdgcn.py:406:16
	v_mul_f32_e32 v28, v6, v28
	v_mul_f32_e32 v54, v6, v10
	v_dual_mul_f32 v55, v6, v12 :: v_dual_lshlrev_b32 v20, 2, v19
	s_delay_alu instid0(VALU_DEP_3)
	v_dual_mul_f32 v56, v6, v14 :: v_dual_mul_f32 v11, v15, v28
	v_mul_f32_e32 v30, v6, v30
	v_mul_f32_e32 v29, v6, v29
	.loc	1 406 9                         ; generate_amdgcn.py:406:9
	v_dual_mul_f32 v4, v3, v33 :: v_dual_mul_f32 v3, v9, v54
	v_mul_f32_e32 v6, v13, v34
	v_dual_mul_f32 v12, v7, v37 :: v_dual_mul_f32 v7, v17, v55
	v_mul_f32_e32 v10, v23, v36
	v_dual_mul_f32 v14, v21, v53 :: v_dual_mul_f32 v9, v16, v56
	v_mul_f32_e32 v13, v22, v29
	v_mul_f32_e32 v15, v24, v30
	.loc	1 418 9 is_stmt 1               ; generate_amdgcn.py:418:9
	ds_store_b64 v27, v[0:1]
	ds_store_b64 v38, v[2:3]
	ds_store_b64 v39, v[4:5]
	ds_store_b64 v40, v[6:7]
	ds_store_b64 v41, v[8:9]
	ds_store_b64 v42, v[10:11]
	ds_store_b64 v43, v[12:13]
	ds_store_b64 v44, v[14:15]
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b64 v[0:1], v45
	ds_load_b64 v[2:3], v46
	ds_load_b64 v[4:5], v47
	ds_load_b64 v[6:7], v48
	ds_load_b64 v[8:9], v49
	ds_load_b64 v[10:11], v50
	ds_load_b64 v[12:13], v51
	ds_load_b64 v[14:15], v52
	v_add_lshl_u32 v16, v19, s5, 2
	v_add_lshl_u32 v17, v19, s8, 2
	v_add_lshl_u32 v18, v19, s9, 2
	v_add_lshl_u32 v21, v19, s10, 2
	v_add_lshl_u32 v22, v19, s11, 2
	v_add_lshl_u32 v23, v19, s16, 2
	v_add_lshl_u32 v24, v19, s17, 2
	v_add_lshl_u32 v27, v19, s18, 2
	s_waitcnt lgkmcnt(7)
	buffer_atomic_add_f32 v0, v20, s[12:15], 0 offen
	s_waitcnt lgkmcnt(6)
	buffer_atomic_add_f32 v2, v25, s[12:15], 0 offen
	s_waitcnt lgkmcnt(5)
	buffer_atomic_add_f32 v4, v26, s[12:15], 0 offen
	s_waitcnt lgkmcnt(4)
	buffer_atomic_add_f32 v6, v16, s[12:15], 0 offen
	s_waitcnt lgkmcnt(3)
	buffer_atomic_add_f32 v8, v17, s[12:15], 0 offen
	s_waitcnt lgkmcnt(2)
	buffer_atomic_add_f32 v10, v18, s[12:15], 0 offen
	s_waitcnt lgkmcnt(1)
	buffer_atomic_add_f32 v12, v21, s[12:15], 0 offen
	s_waitcnt lgkmcnt(0)
	s_clause 0x3
	buffer_atomic_add_f32 v14, v22, s[12:15], 0 offen
	buffer_atomic_add_f32 v1, v23, s[12:15], 0 offen
	buffer_atomic_add_f32 v3, v24, s[12:15], 0 offen
	buffer_atomic_add_f32 v5, v27, s[12:15], 0 offen
	v_add_lshl_u32 v28, v19, s19, 2
	v_add_lshl_u32 v29, v19, s20, 2
	v_add_lshl_u32 v30, v19, s21, 2
	v_add_lshl_u32 v31, v19, s22, 2
	v_add_lshl_u32 v0, v19, s0, 2
	s_clause 0x4
	buffer_atomic_add_f32 v7, v28, s[12:15], 0 offen
	buffer_atomic_add_f32 v9, v29, s[12:15], 0 offen
	buffer_atomic_add_f32 v11, v30, s[12:15], 0 offen
	buffer_atomic_add_f32 v13, v31, s[12:15], 0 offen
	buffer_atomic_add_f32 v15, v0, s[12:15], 0 offen
	.loc	1 309 1                         ; generate_amdgcn.py:309:1
	s_nop 0
	s_sendmsg sendmsg(MSG_DEALLOC_VGPRS)
	s_endpgm
.Ltmp16:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_int8xint8_nt_pc_none_bm32_bn128_bk64_gm4_w8_s3_weu2_sk8_maskk
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
		.amdhsa_inst_pref_size 33
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
	.size	amd_strix_halo_gfx1151_int8xint8_nt_pc_none_bm32_bn128_bk64_gm4_w8_s3_weu2_sk8_maskk, .Lfunc_end0-amd_strix_halo_gfx1151_int8xint8_nt_pc_none_bm32_bn128_bk64_gm4_w8_s3_weu2_sk8_maskk
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_int8xint8_nt_pc_none_bm32_bn128_bk64_gm4_w8_s3_weu2_sk8_maskk.num_vgpr, 115
	.set amd_strix_halo_gfx1151_int8xint8_nt_pc_none_bm32_bn128_bk64_gm4_w8_s3_weu2_sk8_maskk.num_agpr, 0
	.set amd_strix_halo_gfx1151_int8xint8_nt_pc_none_bm32_bn128_bk64_gm4_w8_s3_weu2_sk8_maskk.numbered_sgpr, 37
	.set amd_strix_halo_gfx1151_int8xint8_nt_pc_none_bm32_bn128_bk64_gm4_w8_s3_weu2_sk8_maskk.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_int8xint8_nt_pc_none_bm32_bn128_bk64_gm4_w8_s3_weu2_sk8_maskk.private_seg_size, 0
	.set amd_strix_halo_gfx1151_int8xint8_nt_pc_none_bm32_bn128_bk64_gm4_w8_s3_weu2_sk8_maskk.uses_vcc, 1
	.set amd_strix_halo_gfx1151_int8xint8_nt_pc_none_bm32_bn128_bk64_gm4_w8_s3_weu2_sk8_maskk.uses_flat_scratch, 0
	.set amd_strix_halo_gfx1151_int8xint8_nt_pc_none_bm32_bn128_bk64_gm4_w8_s3_weu2_sk8_maskk.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_int8xint8_nt_pc_none_bm32_bn128_bk64_gm4_w8_s3_weu2_sk8_maskk.has_recursion, 0
	.set amd_strix_halo_gfx1151_int8xint8_nt_pc_none_bm32_bn128_bk64_gm4_w8_s3_weu2_sk8_maskk.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 4108
; TotalNumSgprs: 39
; NumVgprs: 115
; ScratchSize: 0
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 30
; NumSGPRsForWavesPerEU: 39
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
	.asciz	"amd_strix_halo_gfx1151_int8xint8_nt_pc_none_bm32_bn128_bk64_gm4_w8_s3_weu2_sk8_maskk"             ; string offset=75 ; amd_strix_halo_gfx1151_int8xint8_nt_pc_none_bm32_bn128_bk64_gm4_w8_s3_weu2_sk8_maskk
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
    .name:           amd_strix_halo_gfx1151_int8xint8_nt_pc_none_bm32_bn128_bk64_gm4_w8_s3_weu2_sk8_maskk
    .private_segment_fixed_size: 0
    .sgpr_count:     39
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_int8xint8_nt_pc_none_bm32_bn128_bk64_gm4_w8_s3_weu2_sk8_maskk.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     115
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
