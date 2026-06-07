	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_int8xint8_nt_sc128_relu2_bm16_bn128_bk64_gm4_w8_s3_weu2_sk1_maskk               ; -- Begin function amd_strix_halo_gfx1151_int8xint8_nt_sc128_relu2_bm16_bn128_bk64_gm4_w8_s3_weu2_sk1_maskk
	.p2align	8
	.type	amd_strix_halo_gfx1151_int8xint8_nt_sc128_relu2_bm16_bn128_bk64_gm4_w8_s3_weu2_sk1_maskk,@function
amd_strix_halo_gfx1151_int8xint8_nt_sc128_relu2_bm16_bn128_bk64_gm4_w8_s3_weu2_sk1_maskk:                      ; @amd_strix_halo_gfx1151_int8xint8_nt_sc128_relu2_bm16_bn128_bk64_gm4_w8_s3_weu2_sk1_maskk
.Lfunc_begin0:
	.file	1 "<repo>/scripts" "generate_amdgcn.py"
	.loc	1 283 0                         ; generate_amdgcn.py:283:0
	.cfi_sections .debug_frame
	.cfi_startproc
; %bb.0:
	s_clause 0x1
	s_load_b64 s[28:29], s[0:1], 0x30
	s_load_b32 s6, s[0:1], 0x38
.Ltmp0:
	.loc	1 293 16 prologue_end           ; generate_amdgcn.py:293:16
	s_abs_i32 s8, s2
	.loc	1 299 32                        ; generate_amdgcn.py:299:32
	v_and_b32_e32 v3, 15, v0
	.loc	1 301 14                        ; generate_amdgcn.py:301:14
	v_lshlrev_b32_e32 v9, 4, v0
	.loc	1 300 32                        ; generate_amdgcn.py:300:32
	v_lshrrev_b32_e32 v5, 2, v0
	.loc	1 299 32                        ; generate_amdgcn.py:299:32
	v_lshrrev_b32_e32 v4, 4, v0
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 301 14                        ; generate_amdgcn.py:301:14
	v_lshlrev_b32_e32 v2, 2, v3
.Ltmp1:
	.file	2 "<triton>/python/triton/language" "standard.py"
	.loc	2 43 13                         ; standard.py:43:13 @[ generate_amdgcn.py:291:17 ]
	s_waitcnt lgkmcnt(0)
	s_add_i32 s4, s29, 0x7f
.Ltmp2:
	.loc	2 43 13 is_stmt 0               ; standard.py:43:13 @[ generate_amdgcn.py:290:17 ]
	s_add_i32 s9, s28, 15
.Ltmp3:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:291:17 ]
	s_ashr_i32 s5, s4, 31
.Ltmp4:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:290:17 ]
	s_ashr_i32 s11, s9, 31
.Ltmp5:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:291:17 ]
	s_lshr_b32 s5, s5, 25
.Ltmp6:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:290:17 ]
	s_lshr_b32 s11, s11, 28
.Ltmp7:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:291:17 ]
	s_add_i32 s4, s4, s5
.Ltmp8:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:290:17 ]
	s_add_i32 s9, s9, s11
.Ltmp9:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:291:17 ]
	s_ashr_i32 s4, s4, 7
.Ltmp10:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:290:17 ]
	s_ashr_i32 s9, s9, 4
.Ltmp11:
	.loc	1 292 24 is_stmt 1              ; generate_amdgcn.py:292:24
	s_lshl_b32 s4, s4, 2
	.loc	1 348 30                        ; generate_amdgcn.py:348:30
	v_mul_lo_u32 v8, s6, v4
	.loc	1 293 16                        ; generate_amdgcn.py:293:16
	s_abs_i32 s5, s4
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_2)
	s_cvt_f32_u32 s7, s5
	s_sub_i32 s10, 0, s5
	v_rcp_iflag_f32_e32 v1, s7
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_3)
	v_readfirstlane_b32 s7, v1
	s_mul_f32 s7, s7, 0x4f7ffffe
	s_cvt_u32_f32 s7, s7
	s_delay_alu instid0(SALU_CYCLE_3) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_mul_i32 s10, s10, s7
	s_mul_hi_u32 s10, s7, s10
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_4) | instid1(SALU_CYCLE_1)
	s_add_i32 s7, s7, s10
	s_xor_b32 s10, s2, s4
	s_mul_hi_u32 s7, s8, s7
	s_ashr_i32 s10, s10, 31
	s_mul_i32 s11, s7, s5
	s_sub_i32 s8, s8, s11
	s_add_i32 s11, s7, 1
	s_sub_i32 s12, s8, s5
	s_cmp_ge_u32 s8, s5
	s_cselect_b32 s7, s11, s7
	s_cselect_b32 s8, s12, s8
	s_add_i32 s11, s7, 1
	s_cmp_ge_u32 s8, s5
	s_cselect_b32 s5, s11, s7
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_xor_b32 s5, s5, s10
	s_sub_i32 s5, s5, s10
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 294 19                        ; generate_amdgcn.py:294:19
	s_lshl_b32 s20, s5, 2
	.loc	1 296 29                        ; generate_amdgcn.py:296:29
	s_mul_i32 s5, s5, s4
	.loc	1 295 31                        ; generate_amdgcn.py:295:31
	s_sub_i32 s7, s9, s20
	.loc	1 296 29                        ; generate_amdgcn.py:296:29
	s_sub_i32 s2, s2, s5
	.loc	1 295 20                        ; generate_amdgcn.py:295:20
	s_min_i32 s23, s7, 4
	.loc	1 297 13                        ; generate_amdgcn.py:297:13
	s_abs_i32 s5, s2
	s_abs_i32 s7, s23
	s_load_b256 s[8:15], s[0:1], 0x0
	s_cvt_f32_u32 s16, s7
	s_sub_i32 s19, 0, s7
	s_delay_alu instid0(SALU_CYCLE_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_iflag_f32_e32 v1, s16
	v_readfirstlane_b32 s16, v1
	.loc	1 301 14                        ; generate_amdgcn.py:301:14
	v_and_b32_e32 v1, 48, v9
	.loc	1 297 13                        ; generate_amdgcn.py:297:13
	s_mul_f32 s18, s16, 0x4f7ffffe
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 350 30                        ; generate_amdgcn.py:350:30
	v_mad_u64_u32 v[6:7], null, s6, v5, v[1:2]
	s_waitcnt lgkmcnt(0)
	s_mov_b64 s[16:17], s[10:11]
	.loc	1 297 13                        ; generate_amdgcn.py:297:13
	s_cvt_u32_f32 s18, s18
	s_mov_b32 s11, 0x31027000
	s_mov_b32 s10, 0x7ffffffe
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_mul_i32 s19, s19, s18
	s_mul_hi_u32 s4, s18, s19
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_add_i32 s18, s18, s4
	s_mul_hi_u32 s4, s5, s18
	s_xor_b32 s18, s2, s23
	s_mul_i32 s19, s4, s7
	s_ashr_i32 s22, s18, 31
	s_sub_i32 s5, s5, s19
	s_add_i32 s19, s4, 1
	s_sub_i32 s21, s5, s7
	s_cmp_ge_u32 s5, s7
	.loc	1 350 22                        ; generate_amdgcn.py:350:22
	s_mov_b32 s18, s10
	.loc	1 297 13                        ; generate_amdgcn.py:297:13
	s_cselect_b32 s4, s19, s4
	s_cselect_b32 s5, s21, s5
	s_add_i32 s21, s4, 1
	s_cmp_ge_u32 s5, s7
	.loc	1 350 22                        ; generate_amdgcn.py:350:22
	s_mov_b32 s19, s11
	.loc	1 297 13                        ; generate_amdgcn.py:297:13
	s_cselect_b32 s4, s21, s4
.Ltmp12:
	.loc	2 43 13                         ; standard.py:43:13 @[ generate_amdgcn.py:361:30 ]
	s_add_i32 s25, s6, 0x7f
.Ltmp13:
	.loc	1 297 13                        ; generate_amdgcn.py:297:13
	s_xor_b32 s21, s4, s22
	.loc	1 342 22                        ; generate_amdgcn.py:342:22
	s_lshl_b32 s7, s3, 6
.Ltmp14:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:361:30 ]
	s_ashr_i32 s3, s25, 31
.Ltmp15:
	.loc	1 297 13                        ; generate_amdgcn.py:297:13
	s_sub_i32 s4, s21, s22
.Ltmp16:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:361:30 ]
	s_lshr_b32 s3, s3, 25
.Ltmp17:
	.loc	1 296 28                        ; generate_amdgcn.py:296:28
	s_mul_i32 s5, s4, s23
.Ltmp18:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:361:30 ]
	s_add_i32 s25, s25, s3
.Ltmp19:
	.loc	1 296 28                        ; generate_amdgcn.py:296:28
	s_sub_i32 s3, s2, s5
	.loc	1 342 17                        ; generate_amdgcn.py:342:17
	v_or_b32_e32 v7, s7, v2
	v_or_b32_e32 v10, s7, v1
	.loc	1 296 13                        ; generate_amdgcn.py:296:13
	s_add_i32 s3, s3, s20
.Ltmp20:
	.loc	2 43 13                         ; standard.py:43:13 @[ generate_amdgcn.py:307:28 ]
	s_add_i32 s24, s6, 63
.Ltmp21:
	.loc	1 300 14                        ; generate_amdgcn.py:300:14
	s_lshl_b32 s28, s4, 7
	.loc	1 299 14                        ; generate_amdgcn.py:299:14
	s_lshl_b32 s23, s3, 4
	.loc	1 350 30                        ; generate_amdgcn.py:350:30
	s_mul_i32 s4, s28, s6
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_cmp_gt_i32 s24, 63
	.loc	1 343 23                        ; generate_amdgcn.py:343:23
	v_cmp_gt_i32_e32 vcc_lo, s6, v7
	.loc	1 344 23                        ; generate_amdgcn.py:344:23
	v_cmp_gt_i32_e64 s2, s6, v10
	.loc	1 348 30                        ; generate_amdgcn.py:348:30
	s_mul_i32 s5, s23, s6
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_cselect_b32 s3, -1, 0
	.loc	1 350 30                        ; generate_amdgcn.py:350:30
	s_lshl_b32 s20, s6, 6
	s_add_i32 s4, s4, s7
	.loc	1 348 30                        ; generate_amdgcn.py:348:30
	v_add3_u32 v7, v8, v2, s5
	.loc	1 350 30                        ; generate_amdgcn.py:350:30
	v_add_nc_u32_e32 v8, s4, v6
	v_add3_u32 v6, s4, s20, v6
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	s_and_b32 s9, s9, 0xffff
	.loc	1 350 22                        ; generate_amdgcn.py:350:22
	s_and_b32 s17, s17, 0xffff
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_and_b32 vcc_lo, vcc_lo, s3
	s_and_b32 s2, s2, s3
	s_cmpk_gt_i32 s24, 0x7f
	.loc	1 350 22                        ; generate_amdgcn.py:350:22
	v_cndmask_b32_e64 v11, 0x80000000, v8, s2
	v_cndmask_b32_e64 v12, 0x80000000, v6, s2
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_cselect_b32 s2, -1, 0
	.loc	1 342 17                        ; generate_amdgcn.py:342:17
	s_add_i32 s20, s7, 64
	.loc	1 348 30                        ; generate_amdgcn.py:348:30
	v_add_nc_u32_e32 v10, s7, v7
	.loc	1 342 17                        ; generate_amdgcn.py:342:17
	v_or_b32_e32 v13, s20, v2
	v_or_b32_e32 v14, s20, v1
	.loc	1 348 30                        ; generate_amdgcn.py:348:30
	v_add_nc_u32_e32 v7, s20, v7
	.loc	1 350 30                        ; generate_amdgcn.py:350:30
	v_add_nc_u32_e32 v6, 64, v6
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	v_cndmask_b32_e32 v10, 0x80000000, v10, vcc_lo
	.loc	1 343 23                        ; generate_amdgcn.py:343:23
	v_cmp_gt_i32_e32 vcc_lo, s6, v13
	.loc	1 344 23                        ; generate_amdgcn.py:344:23
	v_cmp_gt_i32_e64 s4, s6, v14
	.loc	1 350 22                        ; generate_amdgcn.py:350:22
	s_clause 0x1
	buffer_load_b128 v[16:19], v11, s[16:19], 0 offen
	buffer_load_b128 v[20:23], v12, s[16:19], 0 offen
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	buffer_load_b32 v10, v10, s[8:11], 0 offen
	.loc	1 350 22                        ; generate_amdgcn.py:350:22
	v_lshlrev_b32_e32 v11, 1, v0
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	v_lshlrev_b32_e32 v12, 2, v0
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_and_b32 vcc_lo, vcc_lo, s2
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	v_dual_cndmask_b32 v7, 0x80000000, v7 :: v_dual_add_nc_u32 v8, 64, v8
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_and_b32 vcc_lo, s4, s2
	.loc	1 350 22                        ; generate_amdgcn.py:350:22
	v_dual_cndmask_b32 v6, 0x80000000, v6 :: v_dual_and_b32 v11, 48, v11
	s_delay_alu instid0(VALU_DEP_2)
	v_cndmask_b32_e32 v8, 0x80000000, v8, vcc_lo
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	buffer_load_b32 v32, v7, s[8:11], 0 offen
	.loc	1 350 22                        ; generate_amdgcn.py:350:22
	s_clause 0x1
	buffer_load_b128 v[24:27], v8, s[16:19], 0 offen
	buffer_load_b128 v[28:31], v6, s[16:19], 0 offen
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	v_lshrrev_b32_e32 v8, 1, v0
	.loc	1 300 32                        ; generate_amdgcn.py:300:32
	v_and_b32_e32 v6, 0xe0, v0
	.loc	1 350 22                        ; generate_amdgcn.py:350:22
	v_xor_b32_e32 v36, v9, v11
	s_mov_b64 s[4:5], s[14:15]
	s_mov_b32 s14, 0
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	v_and_b32_e32 v13, 48, v8
	.loc	1 300 32                        ; generate_amdgcn.py:300:32
	v_lshrrev_b32_e32 v7, 1, v6
	.loc	1 350 22                        ; generate_amdgcn.py:350:22
	v_add_nc_u32_e32 v34, 0, v36
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_cmpk_gt_i32 s24, 0xbf
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	v_xor_b32_e32 v35, v12, v13
	.loc	1 300 32                        ; generate_amdgcn.py:300:32
	v_and_or_b32 v7, v4, 1, v7
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	v_add_nc_u32_e32 v33, 0, v35
	.loc	1 300 32                        ; generate_amdgcn.py:300:32
	v_or_b32_e32 v8, 2, v7
	v_or_b32_e32 v13, 4, v7
	v_or_b32_e32 v14, 6, v7
	v_or_b32_e32 v15, 8, v7
	v_or_b32_e32 v9, 10, v7
	v_or_b32_e32 v11, 12, v7
	v_or_b32_e32 v12, 14, v7
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	s_waitcnt vmcnt(3)
	ds_store_b32 v33, v10 offset:16384
	.loc	1 350 22                        ; generate_amdgcn.py:350:22
	ds_store_b128 v34, v[16:19]
	ds_store_b128 v34, v[20:23] offset:4096
	v_lshlrev_b32_e32 v16, 3, v0
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_waitcnt vmcnt(2)
	ds_store_b32 v33, v32 offset:17408
	.loc	1 350 22                        ; generate_amdgcn.py:350:22
	s_waitcnt vmcnt(1)
	ds_store_b128 v34, v[24:27] offset:8192
	s_waitcnt vmcnt(0)
	ds_store_b128 v34, v[28:31] offset:12288
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_cbranch_scc1 .LBB0_2
; %bb.1:                                ; %.._crit_edge_crit_edge
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	v_and_b32_e32 v10, 48, v16
	s_mov_b32 s15, 0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v27, v3, 6, v10
	.loc	1 350 22                        ; generate_amdgcn.py:350:22
	v_lshl_or_b32 v32, v6, 5, v27
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	v_xor_b32_e32 v30, 16, v27
	v_xor_b32_e32 v28, 32, v27
	v_xor_b32_e32 v29, 48, v27
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 350 22                        ; generate_amdgcn.py:350:22
	v_xor_b32_e32 v34, 16, v32
	v_xor_b32_e32 v31, 32, v32
	v_xor_b32_e32 v33, 48, v32
	s_branch .LBB0_3
.LBB0_2:
	.loc	1 0 22 is_stmt 0                ; generate_amdgcn.py:0:22
	s_mov_b32 s15, -1
                                        ; implicit-def: $vgpr27
                                        ; implicit-def: $vgpr30
                                        ; implicit-def: $vgpr28
                                        ; implicit-def: $vgpr29
                                        ; implicit-def: $vgpr32
                                        ; implicit-def: $vgpr34
                                        ; implicit-def: $vgpr31
                                        ; implicit-def: $vgpr33
.LBB0_3:                                ; %Flow21
	s_load_b64 s[0:1], s[0:1], 0x20
	v_or_b32_e32 v10, s23, v3
	s_ashr_i32 s30, s25, 7
	v_or_b32_e32 v25, s28, v7
	v_or_b32_e32 v24, s28, v8
	v_or_b32_e32 v23, s28, v13
	v_mul_lo_u32 v26, v10, s30
	v_or_b32_e32 v21, s28, v14
	v_or_b32_e32 v19, s28, v15
	v_or_b32_e32 v22, s28, v9
	v_or_b32_e32 v20, s28, v11
	v_or_b32_e32 v18, s28, v12
	s_and_not1_b32 vcc_lo, exec_lo, s15
	s_cbranch_vccnz .LBB0_7
; %bb.4:                                ; %.lr.ph
	v_and_b32_e32 v7, 48, v16
	.loc	1 307 5 is_stmt 1               ; generate_amdgcn.py:307:5
	v_lshl_or_b32 v5, s21, 7, v5
	s_lshl_b32 s15, s22, 7
	v_or_b32_e32 v40, 0x80, v1
	v_or_b32_e32 v41, 0x80, v2
	v_lshl_or_b32 v27, v3, 6, v7
	v_add_nc_u32_e32 v3, s23, v4
	v_subrev_nc_u32_e32 v4, s15, v5
	v_mov_b32_e32 v15, 0
	v_mov_b32_e32 v17, 0
	v_lshl_or_b32 v32, v6, 5, v27
	v_xor_b32_e32 v30, 16, v27
	v_or_b32_e32 v5, 64, v4
	v_mul_lo_u32 v4, s6, v4
	v_xor_b32_e32 v28, 32, v27
	v_xor_b32_e32 v29, 48, v27
	v_xor_b32_e32 v34, 16, v32
	v_mul_lo_u32 v5, s6, v5
	v_xor_b32_e32 v31, 32, v32
	v_xor_b32_e32 v33, 48, v32
	v_mov_b32_e32 v11, 0
	v_add3_u32 v38, v4, v1, 0x80
.Ltmp22:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:307:28 ]
	s_lshr_b32 s14, s24, 6
	v_mov_b32_e32 v12, 0
	s_mov_b32 s23, 0x31027000
.Ltmp23:
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_add3_u32 v37, v5, v1, 0x80
	v_mov_b32_e32 v1, 0
	v_mov_b32_e32 v9, 0
	v_dual_mov_b32 v13, 0 :: v_dual_mov_b32 v16, 0
	s_mov_b32 s22, 0x7ffffffe
	s_delay_alu instid0(VALU_DEP_3)
	v_mov_b32_e32 v4, v1
	v_mul_lo_u32 v3, s6, v3
	v_mov_b32_e32 v5, v1
	v_mov_b32_e32 v6, v1
	v_mov_b32_e32 v7, v1
	v_mov_b32_e32 v8, v1
	v_mov_b32_e32 v14, 0
	s_and_b32 s21, s13, 0xffff
	s_mov_b32 s20, s12
	v_add3_u32 v39, v3, v2, 0x80
	v_mov_b32_e32 v2, v1
	v_mov_b32_e32 v3, v1
	s_and_b32 s25, s5, 0xffff
	s_mov_b32 s24, s4
	s_add_i32 s34, s14, -2
	s_mov_b32 s14, 0
	s_add_i32 s15, 0, 0x4000
	s_add_i32 s31, 0, 0x4400
	s_add_i32 s33, 0, 0x2000
	s_mov_b32 s35, 1
	s_mov_b32 s18, s10
	s_mov_b32 s19, s11
	s_mov_b32 s26, s22
	s_mov_b32 s27, s23
.LBB0_5:                                ; =>This Inner Loop Header: Depth=1
	.loc	1 0 5 is_stmt 0                 ; generate_amdgcn.py:0:5
	s_mov_b32 s36, s7
	.loc	1 362 29 is_stmt 1              ; generate_amdgcn.py:362:29
	s_ashr_i32 s7, s7, 31
	.loc	1 342 17                        ; generate_amdgcn.py:342:17
	v_add_nc_u32_e32 v42, s36, v41
	.loc	1 362 29                        ; generate_amdgcn.py:362:29
	s_lshr_b32 s7, s7, 25
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	v_add_nc_u32_e32 v44, s36, v39
	.loc	1 362 29                        ; generate_amdgcn.py:362:29
	s_add_i32 s7, s36, s7
	.loc	1 343 23                        ; generate_amdgcn.py:343:23
	v_add_nc_u32_e32 v43, s36, v40
	v_cmp_gt_i32_e32 vcc_lo, s6, v42
	.loc	1 362 29                        ; generate_amdgcn.py:362:29
	s_ashr_i32 s7, s7, 7
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 363 34                        ; generate_amdgcn.py:363:34
	s_cmp_lt_i32 s7, s30
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	v_cndmask_b32_e32 v42, 0x80000000, v44, vcc_lo
	.loc	1 364 22                        ; generate_amdgcn.py:364:22
	v_add_lshl_u32 v44, v26, s7, 1
	.loc	1 366 40                        ; generate_amdgcn.py:366:40
	s_mul_i32 s7, s7, s29
	.loc	1 363 34                        ; generate_amdgcn.py:363:34
	s_cselect_b32 vcc_lo, -1, 0
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_add_lshl_u32 v45, v24, s7, 1
	v_add_lshl_u32 v46, v23, s7, 1
	v_add_lshl_u32 v47, v21, s7, 1
	v_add_lshl_u32 v48, v19, s7, 1
	v_add_lshl_u32 v49, v22, s7, 1
	v_cndmask_b32_e32 v45, 0x80000000, v45, vcc_lo
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	buffer_load_b32 v90, v42, s[8:11], 0 offen
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_add_lshl_u32 v42, v25, s7, 1
	v_add_lshl_u32 v50, v20, s7, 1
	v_add_lshl_u32 v51, v18, s7, 1
	.loc	1 364 22                        ; generate_amdgcn.py:364:22
	v_dual_cndmask_b32 v44, 0x80000000, v44 :: v_dual_cndmask_b32 v47, 0x80000000, v47
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_dual_cndmask_b32 v42, 0x80000000, v42 :: v_dual_cndmask_b32 v49, 0x80000000, v49
	v_dual_cndmask_b32 v46, 0x80000000, v46 :: v_dual_cndmask_b32 v51, 0x80000000, v51
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_cndmask_b32_e32 v48, 0x80000000, v48, vcc_lo
	v_cndmask_b32_e32 v50, 0x80000000, v50, vcc_lo
	.loc	1 364 22                        ; generate_amdgcn.py:364:22
	buffer_load_u16 v91, v44, s[20:23], 0 offen
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	s_clause 0x7
	buffer_load_u16 v92, v42, s[24:27], 0 offen
	buffer_load_u16 v93, v45, s[24:27], 0 offen
	buffer_load_u16 v94, v46, s[24:27], 0 offen
	buffer_load_u16 v95, v47, s[24:27], 0 offen
	buffer_load_u16 v96, v48, s[24:27], 0 offen
	buffer_load_u16 v97, v49, s[24:27], 0 offen
	buffer_load_u16 v98, v50, s[24:27], 0 offen
	buffer_load_u16 v99, v51, s[24:27], 0 offen
	.loc	1 350 30                        ; generate_amdgcn.py:350:30
	v_add_nc_u32_e32 v42, s36, v38
	.loc	1 344 23                        ; generate_amdgcn.py:344:23
	v_cmp_gt_i32_e32 vcc_lo, s6, v43
	.loc	1 350 22                        ; generate_amdgcn.py:350:22
	v_add_nc_u32_e32 v44, s36, v37
	s_mov_b32 s7, s15
	s_mov_b32 s15, s31
	s_mov_b32 s31, s14
	s_delay_alu instid0(VALU_DEP_1)
	v_dual_cndmask_b32 v42, 0x80000000, v42 :: v_dual_cndmask_b32 v43, 0x80000000, v44
	s_clause 0x1
	buffer_load_b128 v[50:53], v42, s[16:19], 0 offen
	buffer_load_b128 v[54:57], v43, s[16:19], 0 offen
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	v_add_nc_u32_e32 v42, s7, v27
	v_add_nc_u32_e32 v43, s7, v30
	v_add_nc_u32_e32 v44, s7, v28
	v_add_nc_u32_e32 v45, s7, v29
	.loc	1 350 22                        ; generate_amdgcn.py:350:22
	v_add_nc_u32_e32 v46, s31, v32
	v_add_nc_u32_e32 v47, s31, v34
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	ds_load_b128 v[58:61], v42
	ds_load_b128 v[62:65], v43
	ds_load_b128 v[66:69], v44
	ds_load_b128 v[70:73], v45
	.loc	1 350 22                        ; generate_amdgcn.py:350:22
	ds_load_b128 v[74:77], v46
	ds_load_b128 v[78:81], v47
	v_add_nc_u32_e32 v48, s31, v31
	v_add_nc_u32_e32 v49, s31, v33
	ds_load_b128 v[82:85], v48
	ds_load_b128 v[86:89], v49
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_add_i32 s7, s35, 1
	s_mov_b32 s14, s33
	s_cmp_lt_i32 s7, 2
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	s_waitcnt lgkmcnt(0)
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_cselect_b32 s35, s7, 0
	s_add_i32 s34, s34, -1
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	s_lshl_b32 s31, s35, 10
	.loc	1 350 22                        ; generate_amdgcn.py:350:22
	s_lshl_b32 s33, s35, 13
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	s_add_i32 s37, s31, 0
	.loc	1 350 22                        ; generate_amdgcn.py:350:22
	s_add_i32 s33, s33, 0
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_add_i32 s7, s36, 64
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	s_add_i32 s31, s37, 0x4000
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_wmma_i32_16x16x16_iu8 v[42:49], v[74:77], v[58:61], v[1:8] neg_lo:[1,1,0]
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_cmp_lg_u32 s34, 0
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	s_barrier
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_wmma_i32_16x16x16_iu8 v[42:49], v[78:81], v[62:65], v[42:49] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[42:49], v[82:85], v[66:69], v[42:49] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu8 v[42:49], v[86:89], v[70:73], v[42:49] neg_lo:[1,1,0]
	v_cvt_f32_i32_e32 v47, v47
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cvt_f32_i32_e32 v42, v42
	v_cvt_f32_i32_e32 v43, v43
	s_delay_alu instid0(VALU_DEP_4)
	v_cvt_f32_i32_e32 v44, v44
	v_cvt_f32_i32_e32 v45, v45
	v_cvt_f32_i32_e32 v46, v46
	v_cvt_f32_i32_e32 v48, v48
	v_cvt_f32_i32_e32 v49, v49
	.loc	1 364 22                        ; generate_amdgcn.py:364:22
	s_waitcnt vmcnt(10)
	v_lshlrev_b32_e32 v58, 16, v91
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	s_waitcnt vmcnt(9)
	v_lshlrev_b32_e32 v59, 16, v92
	s_waitcnt vmcnt(8)
	v_lshlrev_b32_e32 v60, 16, v93
	s_waitcnt vmcnt(7)
	v_lshlrev_b32_e32 v61, 16, v94
	s_waitcnt vmcnt(6)
	v_lshlrev_b32_e32 v62, 16, v95
	s_waitcnt vmcnt(4)
	v_lshlrev_b32_e32 v64, 16, v97
	s_waitcnt vmcnt(3)
	v_lshlrev_b32_e32 v65, 16, v98
	s_waitcnt vmcnt(2)
	v_lshlrev_b32_e32 v66, 16, v99
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v59, v58, v59
	v_mul_f32_e32 v60, v58, v60
	v_mul_f32_e32 v64, v58, v64
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_lshlrev_b32_e32 v63, 16, v96
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v61, v58, v61
	v_mul_f32_e32 v62, v58, v62
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_dual_mul_f32 v65, v58, v65 :: v_dual_fmac_f32 v16, v64, v47
	v_mul_f32_e32 v63, v58, v63
	v_mul_f32_e32 v58, v58, v66
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_dual_fmac_f32 v17, v65, v48 :: v_dual_add_nc_u32 v100, s37, v35
	v_dual_fmac_f32 v14, v62, v45 :: v_dual_add_nc_u32 v101, s33, v36
	v_dual_fmac_f32 v9, v59, v42 :: v_dual_fmac_f32 v12, v60, v43
	v_fmac_f32_e32 v13, v61, v44
	v_fmac_f32_e32 v15, v63, v46
	v_fmac_f32_e32 v11, v58, v49
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	ds_store_b32 v100, v90 offset:16384
	.loc	1 350 22                        ; generate_amdgcn.py:350:22
	s_waitcnt vmcnt(1)
	ds_store_b128 v101, v[50:53]
	s_waitcnt vmcnt(0)
	ds_store_b128 v101, v[54:57] offset:4096
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_cbranch_scc1 .LBB0_5
; %bb.6:                                ; %Flow
	.loc	1 0 5 is_stmt 0                 ; generate_amdgcn.py:0:5
	s_add_i32 s20, s36, 0x80
	s_branch .LBB0_8
.LBB0_7:
	v_dual_mov_b32 v11, 0 :: v_dual_mov_b32 v16, 0
	v_dual_mov_b32 v17, 0 :: v_dual_mov_b32 v14, 0
	v_dual_mov_b32 v15, 0 :: v_dual_mov_b32 v12, 0
	v_mov_b32_e32 v13, 0
	v_mov_b32_e32 v9, 0
	s_add_i32 s15, 0, 0x4000
	s_add_i32 s31, 0, 0x4400
	s_add_i32 s33, 0, 0x2000
.LBB0_8:                                ; %Flow22
	v_dual_mov_b32 v1, 0 :: v_dual_and_b32 v36, 0xf0, v0
	v_dual_mov_b32 v4, 0 :: v_dual_mov_b32 v3, 0
	v_dual_mov_b32 v2, 0 :: v_dual_mov_b32 v5, 0
	v_dual_mov_b32 v6, 0 :: v_dual_mov_b32 v7, 0
	v_dual_mov_b32 v8, 0 :: v_dual_mov_b32 v35, 0
	.loc	1 353 19 is_stmt 1              ; generate_amdgcn.py:353:19
	s_and_not1_b32 vcc_lo, exec_lo, s3
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_cbranch_vccnz .LBB0_10
; %bb.9:
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_dual_mov_b32 v37, 0 :: v_dual_add_nc_u32 v2, s14, v34
	.loc	1 350 22                        ; generate_amdgcn.py:350:22
	v_add_nc_u32_e32 v6, s14, v32
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	v_add_nc_u32_e32 v7, s15, v30
	v_add_nc_u32_e32 v8, s15, v27
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_dual_mov_b32 v40, v37 :: v_dual_add_nc_u32 v35, s14, v33
	v_mov_b32_e32 v38, v37
	v_mov_b32_e32 v39, v37
	v_mov_b32_e32 v41, v37
	.loc	1 350 22                        ; generate_amdgcn.py:350:22
	ds_load_b128 v[2:5], v2
	ds_load_b128 v[45:48], v6
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	ds_load_b128 v[49:52], v7
	ds_load_b128 v[53:56], v8
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_dual_mov_b32 v43, v37 :: v_dual_add_nc_u32 v6, s14, v31
	v_dual_mov_b32 v42, v37 :: v_dual_add_nc_u32 v7, s15, v29
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	v_add_nc_u32_e32 v8, s15, v28
	.loc	1 350 22                        ; generate_amdgcn.py:350:22
	ds_load_b128 v[57:60], v35
	ds_load_b128 v[61:64], v6
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	ds_load_b128 v[65:68], v7
	ds_load_b128 v[69:72], v8
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_mov_b32_e32 v44, v37
	s_waitcnt lgkmcnt(4)
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu8 v[37:44], v[45:48], v[53:56], v[37:44] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[37:44], v[2:5], v[49:52], v[37:44] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu8 v[37:44], v[61:64], v[69:72], v[37:44] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[37:44], v[57:60], v[65:68], v[37:44] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cvt_f32_i32_e32 v2, v38
	v_cvt_f32_i32_e32 v3, v39
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cvt_f32_i32_e32 v5, v40
	v_cvt_f32_i32_e32 v6, v41
	v_cvt_f32_i32_e32 v7, v42
	v_cvt_f32_i32_e32 v8, v43
	v_cvt_f32_i32_e32 v35, v44
	v_cvt_f32_i32_e32 v4, v37
.LBB0_10:
	.loc	1 362 29                        ; generate_amdgcn.py:362:29
	s_ashr_i32 s6, s7, 31
	s_mov_b32 s15, 0x31027000
	s_lshr_b32 s6, s6, 25
	s_mov_b32 s14, 0x7ffffffe
	s_add_i32 s6, s7, s6
	s_delay_alu instid0(SALU_CYCLE_1)
	s_ashr_i32 s7, s6, 7
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	s_mov_b32 s6, s14
	.loc	1 363 34                        ; generate_amdgcn.py:363:34
	s_cmp_lt_i32 s7, s30
	.loc	1 364 22                        ; generate_amdgcn.py:364:22
	v_add_lshl_u32 v37, v26, s7, 1
	.loc	1 366 40                        ; generate_amdgcn.py:366:40
	s_mul_i32 s8, s7, s29
	.loc	1 363 34                        ; generate_amdgcn.py:363:34
	s_cselect_b32 s7, -1, 0
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_add_lshl_u32 v38, v25, s8, 1
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_and_b32 vcc_lo, s3, s7
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_add_lshl_u32 v39, v24, s8, 1
	.loc	1 364 22                        ; generate_amdgcn.py:364:22
	v_cndmask_b32_e32 v37, 0x80000000, v37, vcc_lo
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_add_lshl_u32 v40, v23, s8, 1
	.loc	1 364 22                        ; generate_amdgcn.py:364:22
	s_and_b32 s13, s13, 0xffff
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_add_lshl_u32 v42, v22, s8, 1
	v_add_lshl_u32 v41, v19, s8, 1
	.loc	1 364 22                        ; generate_amdgcn.py:364:22
	buffer_load_u16 v44, v37, s[12:15], 0 offen
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_dual_cndmask_b32 v37, 0x80000000, v38 :: v_dual_cndmask_b32 v38, 0x80000000, v39
	v_dual_cndmask_b32 v39, 0x80000000, v40 :: v_dual_cndmask_b32 v42, 0x80000000, v42
	v_add_lshl_u32 v40, v21, s8, 1
	v_add_lshl_u32 v43, v20, s8, 1
	v_add_lshl_u32 v45, v18, s8, 1
	s_and_b32 s5, s5, 0xffff
	s_mov_b32 s7, s15
	v_dual_cndmask_b32 v40, 0x80000000, v40 :: v_dual_cndmask_b32 v41, 0x80000000, v41
	s_delay_alu instid0(VALU_DEP_2)
	v_dual_cndmask_b32 v43, 0x80000000, v43 :: v_dual_cndmask_b32 v52, 0x80000000, v45
	s_clause 0x7
	buffer_load_u16 v45, v37, s[4:7], 0 offen
	buffer_load_u16 v46, v38, s[4:7], 0 offen
	buffer_load_u16 v47, v39, s[4:7], 0 offen
	buffer_load_u16 v48, v40, s[4:7], 0 offen
	buffer_load_u16 v49, v41, s[4:7], 0 offen
	buffer_load_u16 v50, v42, s[4:7], 0 offen
	buffer_load_u16 v51, v43, s[4:7], 0 offen
	buffer_load_u16 v52, v52, s[4:7], 0 offen
	v_dual_mov_b32 v37, 0 :: v_dual_mov_b32 v40, 0
	v_dual_mov_b32 v38, 0 :: v_dual_mov_b32 v39, 0
	v_dual_mov_b32 v42, 0 :: v_dual_mov_b32 v41, 0
	v_mov_b32_e32 v43, 0
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	s_and_not1_b32 vcc_lo, exec_lo, s2
	s_cbranch_vccnz .LBB0_12
; %bb.11:
	.loc	1 350 22                        ; generate_amdgcn.py:350:22
	v_add_nc_u32_e32 v1, s33, v34
	v_add_nc_u32_e32 v32, s33, v32
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	v_add_nc_u32_e32 v30, s31, v30
	v_add_nc_u32_e32 v27, s31, v27
	.loc	1 350 22                        ; generate_amdgcn.py:350:22
	ds_load_b128 v[37:40], v1
	ds_load_b128 v[53:56], v32
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	ds_load_b128 v[57:60], v30
	ds_load_b128 v[61:64], v27
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_mov_b32_e32 v27, 0
	.loc	1 350 22                        ; generate_amdgcn.py:350:22
	v_add_nc_u32_e32 v33, s33, v33
	v_add_nc_u32_e32 v1, s33, v31
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	v_add_nc_u32_e32 v29, s31, v29
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_dual_mov_b32 v31, v27 :: v_dual_add_nc_u32 v28, s31, v28
	v_mov_b32_e32 v30, v27
	v_mov_b32_e32 v32, v27
	v_mov_b32_e32 v34, v27
	.loc	1 350 22                        ; generate_amdgcn.py:350:22
	ds_load_b128 v[65:68], v33
	ds_load_b128 v[69:72], v1
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	ds_load_b128 v[73:76], v29
	ds_load_b128 v[77:80], v28
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_mov_b32_e32 v28, v27
	v_mov_b32_e32 v29, v27
	v_mov_b32_e32 v33, v27
	s_waitcnt lgkmcnt(4)
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu8 v[27:34], v[53:56], v[61:64], v[27:34] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[27:34], v[37:40], v[57:60], v[27:34] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu8 v[27:34], v[69:72], v[77:80], v[27:34] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[27:34], v[65:68], v[73:76], v[27:34] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cvt_f32_i32_e32 v1, v27
	v_cvt_f32_i32_e32 v37, v28
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cvt_f32_i32_e32 v38, v29
	v_cvt_f32_i32_e32 v39, v30
	v_cvt_f32_i32_e32 v40, v31
	v_cvt_f32_i32_e32 v41, v32
	v_cvt_f32_i32_e32 v42, v33
	v_cvt_f32_i32_e32 v43, v34
.LBB0_12:
	.loc	1 362 29                        ; generate_amdgcn.py:362:29
	s_ashr_i32 s6, s20, 31
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v27.l, 0
	.loc	1 362 29                        ; generate_amdgcn.py:362:29
	s_lshr_b32 s6, s6, 25
	.loc	1 364 22                        ; generate_amdgcn.py:364:22
	s_waitcnt vmcnt(8)
	v_mov_b16_e32 v27.h, v44.l
	.loc	1 362 29                        ; generate_amdgcn.py:362:29
	s_add_i32 s6, s20, s6
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	s_waitcnt vmcnt(1)
	v_mov_b16_e32 v29.h, v51.l
	.loc	1 362 29                        ; generate_amdgcn.py:362:29
	s_ashr_i32 s7, s6, 7
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_mov_b16_e32 v29.l, v27.l
	.loc	1 366 40 is_stmt 0              ; generate_amdgcn.py:366:40
	s_mul_i32 s8, s7, s29
	.loc	1 363 34 is_stmt 1              ; generate_amdgcn.py:363:34
	s_cmp_lt_i32 s7, s30
	.loc	1 364 22                        ; generate_amdgcn.py:364:22
	v_add_lshl_u32 v26, v26, s7, 1
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_add_lshl_u32 v25, v25, s8, 1
	.loc	1 363 34                        ; generate_amdgcn.py:363:34
	s_cselect_b32 s7, -1, 0
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_add_lshl_u32 v24, v24, s8, 1
	v_add_lshl_u32 v23, v23, s8, 1
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_and_b32 vcc_lo, s2, s7
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_add_lshl_u32 v21, v21, s8, 1
	v_add_lshl_u32 v19, v19, s8, 1
	v_add_lshl_u32 v22, v22, s8, 1
	v_add_lshl_u32 v20, v20, s8, 1
	v_add_lshl_u32 v18, v18, s8, 1
	.loc	1 364 22                        ; generate_amdgcn.py:364:22
	v_dual_cndmask_b32 v26, 0x80000000, v26 :: v_dual_cndmask_b32 v25, 0x80000000, v25
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_dual_cndmask_b32 v24, 0x80000000, v24 :: v_dual_cndmask_b32 v23, 0x80000000, v23
	s_mov_b32 s6, s14
	s_mov_b32 s7, s15
	v_dual_cndmask_b32 v21, 0x80000000, v21 :: v_dual_cndmask_b32 v22, 0x80000000, v22
	v_dual_cndmask_b32 v19, 0x80000000, v19 :: v_dual_cndmask_b32 v20, 0x80000000, v20
	v_dual_cndmask_b32 v18, 0x80000000, v18 :: v_dual_mul_f32 v29, v27, v29
	s_clause 0x7
	buffer_load_u16 v25, v25, s[4:7], 0 offen
	buffer_load_u16 v24, v24, s[4:7], 0 offen
	buffer_load_u16 v23, v23, s[4:7], 0 offen
	buffer_load_u16 v21, v21, s[4:7], 0 offen
	buffer_load_u16 v19, v19, s[4:7], 0 offen
	buffer_load_u16 v22, v22, s[4:7], 0 offen
	buffer_load_u16 v20, v20, s[4:7], 0 offen
	buffer_load_u16 v18, v18, s[4:7], 0 offen
	.loc	1 364 22                        ; generate_amdgcn.py:364:22
	buffer_load_u16 v26, v26, s[12:15], 0 offen
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_mov_b16_e32 v31.h, v49.l
	v_mov_b16_e32 v31.l, v27.l
	v_mov_b16_e32 v32.h, v48.l
	v_mov_b16_e32 v34.h, v46.l
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b32_e32 v46, 0x7632
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_mov_b16_e32 v32.l, v27.l
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v31, v27, v31
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_mov_b16_e32 v33.h, v47.l
	v_mov_b16_e32 v33.l, v27.l
	v_mov_b16_e32 v30.h, v50.l
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v32, v27, v32
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v6, v31, v6, v15
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_mov_b16_e32 v30.l, v27.l
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v33, v27, v33
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_mov_b16_e32 v34.l, v27.l
	s_waitcnt vmcnt(9)
	v_mov_b16_e32 v28.h, v52.l
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v6, v15, v6, s3
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v30, v27, v30
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_mov_b16_e32 v44.h, v45.l
	v_mov_b16_e32 v28.l, v27.l
	v_mov_b16_e32 v44.l, v27.l
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v34, v27, v34
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v47.h, v27.l
	v_mov_b16_e32 v48.h, v27.l
	v_mov_b16_e32 v49.h, v27.l
	v_mov_b16_e32 v50.h, v27.l
	v_mov_b16_e32 v51.h, v27.l
	v_mov_b16_e32 v52.h, v27.l
	v_mov_b16_e32 v53.h, v27.l
	v_mov_b16_e32 v54.h, v27.l
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v28, v27, v28
	v_mul_f32_e32 v27, v27, v44
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v8, v29, v8, v17
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_dual_mov_b32 v45, 0x5410 :: v_dual_and_b32 v0, 16, v0
	.loc	1 300 32                        ; generate_amdgcn.py:300:32
	v_lshrrev_b32_e32 v36, 1, v36
	.loc	1 390 18                        ; generate_amdgcn.py:390:18
	v_mul_lo_u32 v10, v10, s29
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v8, v17, v8, s3
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cmp_eq_u32_e32 vcc_lo, 0, v0
	s_and_b32 s1, s1, 0xffff
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	s_waitcnt vmcnt(5)
	v_lshlrev_b32_e32 v15, 16, v21
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v5, v32, v5, v14
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v5, v14, v5, s3
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_lshlrev_b32_e32 v14, 16, v23
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v3, v33, v3, v13
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v3, v13, v3, s3
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_lshlrev_b32_e32 v13, 16, v24
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v7, v30, v7, v16
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v7, v16, v7, s3
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	s_waitcnt vmcnt(4)
	v_lshlrev_b32_e32 v16, 16, v19
	s_waitcnt vmcnt(2)
	v_lshlrev_b32_e32 v19, 16, v20
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v2, v34, v2, v12
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v2, v12, v2, s3
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_lshlrev_b32_e32 v12, 16, v25
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v4, v27, v4, v9
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v4, v9, v4, s3
	.loc	1 364 22                        ; generate_amdgcn.py:364:22
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v9, 16, v26
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_lshlrev_b32_e32 v17, 16, v22
	v_lshlrev_b32_e32 v18, 16, v18
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v28, v28, v35, v11
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v12, v9, v12
	v_mul_f32_e32 v13, v9, v13
	v_mul_f32_e32 v14, v9, v14
	v_mul_f32_e32 v15, v9, v15
	v_mul_f32_e32 v16, v9, v16
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v1, v12, v1, v4
	v_fma_f32 v12, v13, v37, v2
	v_fma_f32 v13, v14, v38, v3
	v_fma_f32 v14, v15, v39, v5
	v_fma_f32 v15, v16, v40, v6
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v1, v4, v1, s2
	v_cndmask_b32_e64 v2, v2, v12, s2
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v17, v9, v17
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v4, v5, v14, s2
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v19, v9, v19
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v3, v3, v13, s2
	.loc	1 387 15                        ; generate_amdgcn.py:387:15
	v_max_f32_e32 v2, v2, v2
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v16, v17, v41, v7
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v5, v6, v15, s2
	.loc	1 387 15                        ; generate_amdgcn.py:387:15
	v_max_f32_e32 v4, v4, v4
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v17, v19, v42, v8
	.loc	1 387 15                        ; generate_amdgcn.py:387:15
	v_max_f32_e32 v3, v3, v3
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v6, v7, v16, s2
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 387 15                        ; generate_amdgcn.py:387:15
	v_dual_max_f32 v1, v1, v1 :: v_dual_max_f32 v4, 0, v4
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v7, v8, v17, s2
	v_cndmask_b32_e64 v11, v11, v28, s3
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 387 15                        ; generate_amdgcn.py:387:15
	v_dual_max_f32 v6, v6, v6 :: v_dual_max_f32 v1, 0, v1
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v9, v9, v18
	.loc	1 387 15                        ; generate_amdgcn.py:387:15
	v_max_f32_e32 v7, v7, v7
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_dual_max_f32 v3, 0, v3 :: v_dual_max_f32 v6, 0, v6
	.loc	1 388 15                        ; generate_amdgcn.py:388:15
	v_dual_mul_f32 v1, v1, v1 :: v_dual_mul_f32 v4, v4, v4
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v9, v9, v43, v11
	.loc	1 387 15                        ; generate_amdgcn.py:387:15
	v_dual_max_f32 v5, v5, v5 :: v_dual_max_f32 v2, 0, v2
	v_max_f32_e32 v7, 0, v7
	.loc	1 388 15                        ; generate_amdgcn.py:388:15
	v_dual_mul_f32 v3, v3, v3 :: v_dual_mul_f32 v6, v6, v6
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v49.l, v4.h
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v8, v11, v9, s2
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 388 15                        ; generate_amdgcn.py:388:15
	v_dual_mul_f32 v2, v2, v2 :: v_dual_mul_f32 v7, v7, v7
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v51.l, v6.h
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_and_b32_e32 v0, 1, v49
	.loc	1 387 15                        ; generate_amdgcn.py:387:15
	v_dual_max_f32 v8, v8, v8 :: v_dual_max_f32 v5, 0, v5
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v47.l, v2.h
	v_mov_b16_e32 v48.l, v1.h
	v_add3_u32 v0, v4, v0, 0x7fff
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 387 15                        ; generate_amdgcn.py:387:15
	v_dual_max_f32 v8, 0, v8 :: v_dual_and_b32 v13, 1, v51
	.loc	1 388 15                        ; generate_amdgcn.py:388:15
	v_mul_f32_e32 v5, v5, v5
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_and_b32_e32 v9, 1, v48
	v_mov_b16_e32 v50.l, v3.h
	s_delay_alu instid0(VALU_DEP_4)
	v_add3_u32 v6, v6, v13, 0x7fff
	v_and_b32_e32 v12, 1, v47
	.loc	1 388 15                        ; generate_amdgcn.py:388:15
	v_mul_f32_e32 v8, v8, v8
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v52.l, v5.h
	v_mov_b16_e32 v54.l, v7.h
	s_mov_b32 s2, 0x76543210
	v_add3_u32 v2, v2, v12, 0x7fff
	v_cndmask_b32_e32 v12, 0x3276, v46, vcc_lo
	v_add3_u32 v1, v1, v9, 0x7fff
	v_mov_b16_e32 v53.l, v8.h
	v_and_b32_e32 v13, 1, v54
	s_mov_b32 s3, s15
	v_lshl_or_b32 v4, v12, 8, v12
	v_mov_b16_e32 v2.l, v1.h
	v_and_b32_e32 v11, 1, v52
	v_and_b32_e32 v1, 1, v50
	v_add3_u32 v7, v7, v13, 0x7fff
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_add3_u32 v5, v5, v11, 0x7fff
	v_cndmask_b32_e32 v11, 0x1054, v45, vcc_lo
	v_add3_u32 v1, v3, v1, 0x7fff
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_mov_b16_e32 v6.l, v5.h
	v_and_b32_e32 v5, 1, v53
	v_lshl_or_b32 v3, v11, 8, v11
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_mov_b16_e32 v0.l, v1.h
	v_cndmask_b32_e32 v9, v6, v2, vcc_lo
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_add3_u32 v5, v8, v5, 0x7fff
	v_and_b32_e32 v1, 0x540054, v3
	v_and_b32_e32 v3, 0x760076, v4
	v_mov_b16_e32 v5.l, v7.h
	v_cndmask_b32_e32 v2, v2, v6, vcc_lo
	.loc	1 390 18 is_stmt 0              ; generate_amdgcn.py:390:18
	v_or_b32_e32 v7, s28, v36
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_lshl_or_b32 v1, v1, 4, v1
	v_lshl_or_b32 v3, v3, 4, v3
	v_dual_cndmask_b32 v4, v0, v5 :: v_dual_cndmask_b32 v5, v5, v0
	v_permlanex16_b32 v2, v2, s2, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_and_b32_e32 v6, 0x5040504, v1
	v_and_b32_e32 v3, 0x7060706, v3
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_permlanex16_b32 v4, v4, s2, 0xfedcba98 op_sel:[1,0]
	s_mov_b32 s2, s14
	v_perm_b32 v0, v2, v9, v6
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_perm_b32 v1, v2, v9, v3
	v_perm_b32 v2, v4, v5, v6
	v_perm_b32 v3, v4, v5, v3
	v_add_lshl_u32 v4, v7, v10, 1
	buffer_store_b128 v[0:3], v4, s[0:3], 0 offen
	.loc	1 283 1 is_stmt 1               ; generate_amdgcn.py:283:1
	s_nop 0
	s_sendmsg sendmsg(MSG_DEALLOC_VGPRS)
	s_endpgm
.Ltmp24:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_int8xint8_nt_sc128_relu2_bm16_bn128_bk64_gm4_w8_s3_weu2_sk1_maskk
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
		.amdhsa_inst_pref_size 34
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
	.size	amd_strix_halo_gfx1151_int8xint8_nt_sc128_relu2_bm16_bn128_bk64_gm4_w8_s3_weu2_sk1_maskk, .Lfunc_end0-amd_strix_halo_gfx1151_int8xint8_nt_sc128_relu2_bm16_bn128_bk64_gm4_w8_s3_weu2_sk1_maskk
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_int8xint8_nt_sc128_relu2_bm16_bn128_bk64_gm4_w8_s3_weu2_sk1_maskk.num_vgpr, 102
	.set amd_strix_halo_gfx1151_int8xint8_nt_sc128_relu2_bm16_bn128_bk64_gm4_w8_s3_weu2_sk1_maskk.num_agpr, 0
	.set amd_strix_halo_gfx1151_int8xint8_nt_sc128_relu2_bm16_bn128_bk64_gm4_w8_s3_weu2_sk1_maskk.numbered_sgpr, 38
	.set amd_strix_halo_gfx1151_int8xint8_nt_sc128_relu2_bm16_bn128_bk64_gm4_w8_s3_weu2_sk1_maskk.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_int8xint8_nt_sc128_relu2_bm16_bn128_bk64_gm4_w8_s3_weu2_sk1_maskk.private_seg_size, 0
	.set amd_strix_halo_gfx1151_int8xint8_nt_sc128_relu2_bm16_bn128_bk64_gm4_w8_s3_weu2_sk1_maskk.uses_vcc, 1
	.set amd_strix_halo_gfx1151_int8xint8_nt_sc128_relu2_bm16_bn128_bk64_gm4_w8_s3_weu2_sk1_maskk.uses_flat_scratch, 0
	.set amd_strix_halo_gfx1151_int8xint8_nt_sc128_relu2_bm16_bn128_bk64_gm4_w8_s3_weu2_sk1_maskk.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_int8xint8_nt_sc128_relu2_bm16_bn128_bk64_gm4_w8_s3_weu2_sk1_maskk.has_recursion, 0
	.set amd_strix_halo_gfx1151_int8xint8_nt_sc128_relu2_bm16_bn128_bk64_gm4_w8_s3_weu2_sk1_maskk.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 4348
; TotalNumSgprs: 40
; NumVgprs: 102
; ScratchSize: 0
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 30
; NumSGPRsForWavesPerEU: 40
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
	.short	361                             ; DW_AT_call_line
	.byte	30                              ; DW_AT_call_column
	.byte	4                               ; Abbrev [4] 0x68:0xd DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges3                 ; DW_AT_ranges
	.byte	1                               ; DW_AT_call_file
	.short	307                             ; DW_AT_call_line
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
.Ldebug_ranges3:
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
	.asciz	"amd_strix_halo_gfx1151_int8xint8_nt_sc128_relu2_bm16_bn128_bk64_gm4_w8_s3_weu2_sk1_maskk"             ; string offset=75 ; amd_strix_halo_gfx1151_int8xint8_nt_sc128_relu2_bm16_bn128_bk64_gm4_w8_s3_weu2_sk1_maskk
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
    .name:           amd_strix_halo_gfx1151_int8xint8_nt_sc128_relu2_bm16_bn128_bk64_gm4_w8_s3_weu2_sk1_maskk
    .private_segment_fixed_size: 0
    .sgpr_count:     40
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_int8xint8_nt_sc128_relu2_bm16_bn128_bk64_gm4_w8_s3_weu2_sk1_maskk.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     102
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
