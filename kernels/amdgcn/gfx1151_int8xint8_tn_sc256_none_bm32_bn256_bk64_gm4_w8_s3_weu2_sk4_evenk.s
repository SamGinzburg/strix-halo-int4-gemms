	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_int8xint8_tn_sc256_none_bm32_bn256_bk64_gm4_w8_s3_weu2_sk4_evenk               ; -- Begin function amd_strix_halo_gfx1151_int8xint8_tn_sc256_none_bm32_bn256_bk64_gm4_w8_s3_weu2_sk4_evenk
	.p2align	8
	.type	amd_strix_halo_gfx1151_int8xint8_tn_sc256_none_bm32_bn256_bk64_gm4_w8_s3_weu2_sk4_evenk,@function
amd_strix_halo_gfx1151_int8xint8_tn_sc256_none_bm32_bn256_bk64_gm4_w8_s3_weu2_sk4_evenk:                      ; @amd_strix_halo_gfx1151_int8xint8_tn_sc256_none_bm32_bn256_bk64_gm4_w8_s3_weu2_sk4_evenk
.Lfunc_begin0:
	.file	1 "<repo>/scripts" "generate_amdgcn.py"
	.loc	1 283 0                         ; generate_amdgcn.py:283:0
	.cfi_sections .debug_frame
	.cfi_startproc
; %bb.0:
	s_clause 0x1
	s_load_b64 s[34:35], s[0:1], 0x30
	s_load_b32 s12, s[0:1], 0x38
.Ltmp0:
	.loc	1 293 16 prologue_end           ; generate_amdgcn.py:293:16
	s_abs_i32 s6, s2
.Ltmp1:
	.file	2 "<triton>/python/triton/language" "standard.py"
	.loc	2 43 13                         ; standard.py:43:13 @[ generate_amdgcn.py:291:17 ]
	s_waitcnt lgkmcnt(0)
	s_add_i32 s4, s35, 0xff
.Ltmp2:
	.loc	2 43 13 is_stmt 0               ; standard.py:43:13 @[ generate_amdgcn.py:290:17 ]
	s_add_i32 s7, s34, 31
.Ltmp3:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:291:17 ]
	s_ashr_i32 s5, s4, 31
.Ltmp4:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:290:17 ]
	s_ashr_i32 s9, s7, 31
.Ltmp5:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:291:17 ]
	s_lshr_b32 s5, s5, 24
.Ltmp6:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:290:17 ]
	s_lshr_b32 s9, s9, 27
.Ltmp7:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:291:17 ]
	s_add_i32 s4, s4, s5
.Ltmp8:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:290:17 ]
	s_add_i32 s7, s7, s9
.Ltmp9:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:291:17 ]
	s_ashr_i32 s4, s4, 8
.Ltmp10:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:290:17 ]
	s_ashr_i32 s7, s7, 5
.Ltmp11:
	.loc	1 292 24 is_stmt 1              ; generate_amdgcn.py:292:24
	s_lshl_b32 s13, s4, 2
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	.loc	1 293 16                        ; generate_amdgcn.py:293:16
	s_abs_i32 s4, s13
	s_cvt_f32_u32 s5, s4
	s_sub_i32 s8, 0, s4
	s_delay_alu instid0(SALU_CYCLE_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_iflag_f32_e32 v1, s5
	v_readfirstlane_b32 s5, v1
	s_mul_f32 s5, s5, 0x4f7ffffe
	s_delay_alu instid0(SALU_CYCLE_3) | instskip(NEXT) | instid1(SALU_CYCLE_3)
	s_cvt_u32_f32 s5, s5
	s_mul_i32 s8, s8, s5
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_mul_hi_u32 s8, s5, s8
	s_add_i32 s5, s5, s8
	s_xor_b32 s8, s2, s13
	s_mul_hi_u32 s5, s6, s5
	s_ashr_i32 s8, s8, 31
	s_mul_i32 s9, s5, s4
	s_delay_alu instid0(SALU_CYCLE_1)
	s_sub_i32 s6, s6, s9
	s_add_i32 s9, s5, 1
	s_sub_i32 s10, s6, s4
	s_cmp_ge_u32 s6, s4
	s_cselect_b32 s5, s9, s5
	s_cselect_b32 s6, s10, s6
	s_add_i32 s9, s5, 1
	s_cmp_ge_u32 s6, s4
	s_cselect_b32 s4, s9, s5
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_xor_b32 s4, s4, s8
	s_sub_i32 s14, s4, s8
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 294 19                        ; generate_amdgcn.py:294:19
	s_lshl_b32 s15, s14, 2
	.loc	1 296 29                        ; generate_amdgcn.py:296:29
	s_mul_i32 s14, s14, s13
	.loc	1 295 31                        ; generate_amdgcn.py:295:31
	s_sub_i32 s4, s7, s15
	.loc	1 296 29                        ; generate_amdgcn.py:296:29
	s_sub_i32 s2, s2, s14
	.loc	1 295 20                        ; generate_amdgcn.py:295:20
	s_min_i32 s16, s4, 4
	.loc	1 297 13                        ; generate_amdgcn.py:297:13
	s_abs_i32 s14, s2
	s_abs_i32 s17, s16
	s_load_b256 s[4:11], s[0:1], 0x0
	s_cvt_f32_u32 s18, s17
	s_sub_i32 s19, 0, s17
	s_delay_alu instid0(SALU_CYCLE_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_iflag_f32_e32 v1, s18
	v_readfirstlane_b32 s18, v1
	s_waitcnt lgkmcnt(0)
	s_mov_b64 s[24:25], s[6:7]
	s_mul_f32 s18, s18, 0x4f7ffffe
	s_mov_b32 s7, 0x31027000
	s_mov_b32 s6, 0x7ffffffe
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_mov_b32 s27, s7
	.loc	1 297 13                        ; generate_amdgcn.py:297:13
	s_cvt_u32_f32 s18, s18
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_mov_b32 s26, s6
	s_delay_alu instid0(SALU_CYCLE_2) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	.loc	1 297 13                        ; generate_amdgcn.py:297:13
	s_mul_i32 s19, s19, s18
	s_mul_hi_u32 s13, s18, s19
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_add_i32 s18, s18, s13
	s_mul_hi_u32 s13, s14, s18
	s_xor_b32 s18, s2, s16
	s_mul_i32 s19, s13, s17
	s_ashr_i32 s18, s18, 31
	s_sub_i32 s14, s14, s19
	s_add_i32 s19, s13, 1
	s_sub_i32 s20, s14, s17
	s_cmp_ge_u32 s14, s17
	s_cselect_b32 s13, s19, s13
	s_cselect_b32 s14, s20, s14
	s_add_i32 s19, s13, 1
	s_cmp_ge_u32 s14, s17
	s_mov_b64 s[20:21], s[10:11]
	s_cselect_b32 s13, s19, s13
.Ltmp12:
	.loc	2 43 13                         ; standard.py:43:13 @[ generate_amdgcn.py:307:28 ]
	s_add_i32 s14, s12, 0xff
.Ltmp13:
	.loc	1 297 13                        ; generate_amdgcn.py:297:13
	s_xor_b32 s13, s13, s18
	.loc	1 342 22                        ; generate_amdgcn.py:342:22
	s_lshl_b32 s22, s3, 6
	.loc	1 297 13                        ; generate_amdgcn.py:297:13
	s_sub_i32 s13, s13, s18
.Ltmp14:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:307:28 ]
	s_ashr_i32 s3, s14, 31
.Ltmp15:
	.loc	1 296 28                        ; generate_amdgcn.py:296:28
	s_mul_i32 s12, s13, s16
.Ltmp16:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:307:28 ]
	s_lshr_b32 s3, s3, 24
.Ltmp17:
	.loc	1 296 28                        ; generate_amdgcn.py:296:28
	s_sub_i32 s2, s2, s12
	.loc	1 300 14                        ; generate_amdgcn.py:300:14
	s_lshl_b32 s23, s13, 8
	.loc	1 296 13                        ; generate_amdgcn.py:296:13
	s_add_i32 s2, s2, s15
.Ltmp18:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:307:28 ]
	s_add_i32 s13, s14, s3
.Ltmp19:
	.loc	1 299 14                        ; generate_amdgcn.py:299:14
	s_lshl_b32 s40, s2, 5
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_cmpk_gt_i32 s14, 0xff
	.loc	1 352 30                        ; generate_amdgcn.py:352:30
	s_mul_i32 s2, s35, s22
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_cselect_b32 s3, -1, 0
	.loc	1 352 30                        ; generate_amdgcn.py:352:30
	s_lshl_b32 s33, s35, 4
	v_mov_b32_e32 v221, v0
	.loc	1 346 22                        ; generate_amdgcn.py:346:22
	s_and_b32 s5, s5, 0xffff
	.loc	1 352 30                        ; generate_amdgcn.py:352:30
	s_add_i32 s15, s23, s2
	.loc	1 352 22 is_stmt 0              ; generate_amdgcn.py:352:22
	s_and_b32 s25, s25, 0xffff
	.loc	1 307 5 is_stmt 1               ; generate_amdgcn.py:307:5
	s_cmpk_gt_i32 s14, 0x1ff
	.loc	1 301 14                        ; generate_amdgcn.py:301:14
	v_lshrrev_b32_e32 v2, 4, v221
	.loc	1 299 32                        ; generate_amdgcn.py:299:32
	v_and_b32_e32 v223, 15, v221
	.loc	1 346 30                        ; generate_amdgcn.py:346:30
	s_mul_i32 s12, s34, s22
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_cselect_b32 s2, -1, 0
	.loc	1 346 30                        ; generate_amdgcn.py:346:30
	s_lshl_b32 s16, s34, 8
	.loc	1 352 30                        ; generate_amdgcn.py:352:30
	v_mul_lo_u32 v2, s35, v2
	s_lshl_b32 s17, s35, 8
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_add_u32 v0, v223, 4, v2
	v_add_nc_u32_e32 v10, s33, v0
	.loc	1 301 14                        ; generate_amdgcn.py:301:14
	v_lshrrev_b32_e32 v1, 2, v221
	.loc	1 352 30                        ; generate_amdgcn.py:352:30
	v_lshl_add_u32 v8, s35, 5, v0
	.loc	1 299 32                        ; generate_amdgcn.py:299:32
	v_lshlrev_b32_e32 v11, 3, v221
	v_or_b32_e32 v20, 0x7f0, v221
	v_dual_mov_b32 v19, v10 :: v_dual_add_nc_u32 v6, s15, v10
	.loc	1 346 30                        ; generate_amdgcn.py:346:30
	v_mul_lo_u32 v1, s34, v1
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 299 32                        ; generate_amdgcn.py:299:32
	v_and_b32_e32 v3, 24, v11
	v_mov_b32_e32 v9, v0
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_cndmask_b32_e64 v21, 0x80000000, v6, s3
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 352 30 is_stmt 0              ; generate_amdgcn.py:352:30
	v_mad_u64_u32 v[16:17], null, s35, 48, v[0:1]
	.loc	1 346 30 is_stmt 1              ; generate_amdgcn.py:346:30
	v_add3_u32 v5, v1, v3, s40
	.loc	1 352 30                        ; generate_amdgcn.py:352:30
	v_add_nc_u32_e32 v2, s15, v0
	v_add_nc_u32_e32 v3, s15, v8
	.loc	1 352 22 is_stmt 0              ; generate_amdgcn.py:352:22
	buffer_load_b128 v[31:34], v21, s[24:27], 0 offen
	.loc	1 346 30 is_stmt 1              ; generate_amdgcn.py:346:30
	v_add_nc_u32_e32 v1, s12, v5
	v_dual_mov_b32 v17, v5 :: v_dual_add_nc_u32 v4, s15, v16
	v_add3_u32 v5, s12, s16, v5
	.loc	1 352 30                        ; generate_amdgcn.py:352:30
	s_add_i32 s12, s15, s17
	.loc	1 352 22 is_stmt 0              ; generate_amdgcn.py:352:22
	v_cndmask_b32_e64 v7, 0x80000000, v2, s3
	.loc	1 352 30                        ; generate_amdgcn.py:352:30
	v_add_nc_u32_e32 v12, s12, v0
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_cndmask_b32_e64 v3, 0x80000000, v3, s3
	.loc	1 352 30                        ; generate_amdgcn.py:352:30
	v_add_nc_u32_e32 v13, s12, v10
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_cndmask_b32_e64 v4, 0x80000000, v4, s3
	v_dual_mov_b32 v14, v16 :: v_dual_add_nc_u32 v15, s12, v8
	.loc	1 352 30                        ; generate_amdgcn.py:352:30
	v_add_nc_u32_e32 v16, s12, v16
	.loc	1 346 22 is_stmt 1              ; generate_amdgcn.py:346:22
	v_cndmask_b32_e64 v1, 0x80000000, v1, s3
	v_cndmask_b32_e64 v18, 0x80000000, v5, s2
	v_mov_b32_e32 v10, v8
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_clause 0x2
	buffer_load_b128 v[5:8], v7, s[24:27], 0 offen
	buffer_load_b128 v[23:26], v3, s[24:27], 0 offen
	buffer_load_b128 v[27:30], v4, s[24:27], 0 offen
	v_cndmask_b32_e64 v3, 0x80000000, v12, s2
	v_cndmask_b32_e64 v4, 0x80000000, v13, s2
	v_cndmask_b32_e64 v15, 0x80000000, v15, s2
	v_cndmask_b32_e64 v16, 0x80000000, v16, s2
	.loc	1 346 22                        ; generate_amdgcn.py:346:22
	s_clause 0x1
	buffer_load_b64 v[1:2], v1, s[4:7], 0 offen
	buffer_load_b64 v[12:13], v18, s[4:7], 0 offen
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_clause 0x3
	buffer_load_b128 v[35:38], v3, s[24:27], 0 offen
	buffer_load_b128 v[39:42], v4, s[24:27], 0 offen
	buffer_load_b128 v[43:46], v15, s[24:27], 0 offen
	buffer_load_b128 v[47:50], v16, s[24:27], 0 offen
	.loc	1 346 22                        ; generate_amdgcn.py:346:22
	v_add_nc_u32_e32 v15, 0, v11
	v_or_b32_e32 v18, 0x3f0, v221
	v_lshrrev_b32_e32 v3, 1, v221
	.loc	1 299 32                        ; generate_amdgcn.py:299:32
	v_or_b32_e32 v4, 16, v223
	s_mov_b32 s12, 0
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v16, v15, v11
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_cmpk_gt_i32 s14, 0x2ff
	.loc	1 346 22                        ; generate_amdgcn.py:346:22
	s_waitcnt vmcnt(5)
	ds_store_b64 v15, v[1:2] offset:32768
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	ds_store_b128 v16, v[5:8]
	ds_store_b128 v16, v[27:30] offset:12288
	ds_store_b128 v16, v[31:34] offset:4096
	ds_store_b128 v16, v[23:26] offset:8192
	.loc	1 346 22                        ; generate_amdgcn.py:346:22
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_waitcnt vmcnt(4)
	ds_store_b64 v15, v[12:13] offset:34816
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_waitcnt vmcnt(3)
	ds_store_b128 v16, v[35:38] offset:16384
	s_waitcnt vmcnt(2)
	ds_store_b128 v16, v[39:42] offset:20480
	s_waitcnt vmcnt(1)
	ds_store_b128 v16, v[43:46] offset:24576
	s_waitcnt vmcnt(0)
	ds_store_b128 v16, v[47:50] offset:28672
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_cbranch_scc1 .LBB0_2
; %bb.1:                                ; %.._crit_edge_crit_edge
	.loc	1 346 22                        ; generate_amdgcn.py:346:22
	v_or_b32_e32 v1, 0x3f0, v221
	v_or_b32_e32 v2, 0x7f0, v221
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_and_b32_e32 v0, 0x70, v3
	s_mov_b32 s10, 0
	s_branch .LBB0_3
.LBB0_2:
	.loc	1 0 22 is_stmt 0                ; generate_amdgcn.py:0:22
	s_mov_b32 s10, -1
                                        ; implicit-def: $vgpr1
                                        ; implicit-def: $vgpr2
                                        ; implicit-def: $vgpr0
.LBB0_3:                                ; %Flow244
	s_load_b64 s[0:1], s[0:1], 0x20
	v_or_b32_e32 v5, s40, v223
	v_or_b32_e32 v4, s40, v4
	v_and_b32_e32 v220, 0xf0, v221
	s_ashr_i32 s41, s13, 8
	v_or_b32_e32 v240, s23, v221
	v_mul_lo_u32 v222, v5, s41
	v_mul_lo_u32 v241, v4, s41
	v_lshlrev_b32_e32 v224, 2, v220
	v_lshlrev_b32_e32 v225, 1, v220
	s_and_not1_b32 vcc_lo, exec_lo, s10
	s_add_i32 s42, s22, 0x100
	s_cbranch_vccnz .LBB0_7
; %bb.4:                                ; %.lr.ph
	v_dual_mov_b32 v87, 0 :: v_dual_lshlrev_b32 v0, 4, v221
	s_mov_b32 s13, s12
	s_mov_b32 s14, s12
	s_mov_b32 s15, s12
	s_mov_b32 s16, s12
	s_mov_b32 s17, s12
	s_mov_b32 s18, s12
	s_mov_b32 s19, s12
	v_dual_mov_b32 v8, v18 :: v_dual_lshlrev_b32 v1, 5, v221
	v_mov_b32_e32 v15, v20
	s_clause 0x4                            ; 20-byte Folded Spill
	scratch_store_b32 off, v0, off offset:4
	scratch_store_b32 off, v221, off offset:48
	scratch_store_b32 off, v19, off offset:44
	scratch_store_b32 off, v224, off offset:52
	scratch_store_b32 off, v222, off
	v_dual_mov_b32 v25, s19 :: v_dual_and_b32 v0, 0x70, v3
	v_dual_mov_b32 v23, s17 :: v_dual_lshlrev_b32 v2, 1, v221
	v_dual_mov_b32 v24, s18 :: v_dual_and_b32 v1, 32, v1
	v_mov_b32_e32 v22, s16
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_dual_mov_b32 v21, s15 :: v_dual_and_b32 v12, 28, v2
	v_dual_mov_b32 v20, s14 :: v_dual_mov_b32 v19, s13
	v_add3_u32 v13, 0, v224, v1
	v_mov_b32_e32 v18, s12
	v_dual_mov_b32 v89, 0 :: v_dual_add_nc_u32 v6, 0, v225
	v_dual_mov_b32 v88, 0 :: v_dual_mov_b32 v91, 0
	s_delay_alu instid0(VALU_DEP_4)
	v_dual_mov_b32 v90, 0 :: v_dual_add_nc_u32 v1, v13, v12
	v_dual_mov_b32 v93, 0 :: v_dual_mov_b32 v92, 0
	v_dual_mov_b32 v95, 0 :: v_dual_mov_b32 v94, 0
	v_dual_mov_b32 v97, 0 :: v_dual_mov_b32 v96, 0
	v_dual_mov_b32 v99, 0 :: v_dual_mov_b32 v98, 0
	v_dual_mov_b32 v101, 0 :: v_dual_mov_b32 v100, 0
	v_dual_mov_b32 v103, 0 :: v_dual_mov_b32 v102, 0
	v_dual_mov_b32 v105, 0 :: v_dual_mov_b32 v104, 0
	v_dual_mov_b32 v107, 0 :: v_dual_mov_b32 v106, 0
	v_dual_mov_b32 v109, 0 :: v_dual_mov_b32 v108, 0
	v_dual_mov_b32 v113, 0 :: v_dual_mov_b32 v110, 0
	v_dual_mov_b32 v115, 0 :: v_dual_mov_b32 v112, 0
	v_dual_mov_b32 v117, 0 :: v_dual_mov_b32 v114, 0
	v_dual_mov_b32 v111, 0 :: v_dual_mov_b32 v116, 0
	v_dual_mov_b32 v3, v10 :: v_dual_mov_b32 v118, 0
	v_mov_b32_e32 v5, v17
	v_mov_b32_e32 v2, v9
	v_mov_b32_e32 v4, v14
	s_mov_b32 s31, 0x31027000
	s_mov_b32 s30, 0x7ffffffe
	.loc	1 307 5 is_stmt 1               ; generate_amdgcn.py:307:5
	s_max_i32 s45, s41, 3
	s_add_i32 s10, s42, 0x100
	s_mov_b32 s11, 1
	s_and_b32 s29, s9, 0xffff
	s_mov_b32 s28, s8
	s_and_b32 s37, s21, 0xffff
	s_mov_b32 s36, s20
	s_add_i32 s46, 0, 0x8000
	s_add_i32 s43, 0, 0x8800
	s_add_i32 s44, 0, 0x4000
	s_add_i32 s45, s45, -3
	s_mov_b32 s26, s6
	s_mov_b32 s27, s7
	s_mov_b32 s38, s30
	s_mov_b32 s39, s31
	s_clause 0x3                            ; 40-byte Folded Spill
	scratch_store_b128 off, v[18:21], off offset:8
	scratch_store_b128 off, v[22:25], off offset:24
	scratch_store_b32 off, v1, off offset:40
	scratch_store_b32 off, v225, off offset:56
.LBB0_5:                                ; =>This Inner Loop Header: Depth=1
	.loc	1 308 14                        ; generate_amdgcn.py:308:14
	s_lshl_b32 s15, s13, 8
	s_mov_b32 s14, s12
	s_mov_b32 s12, s22
	s_mov_b32 s22, s42
	.loc	1 342 17                        ; generate_amdgcn.py:342:17
	s_add_i32 s42, s10, s15
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add3_u32 v27, s14, v0, v223
	.loc	1 346 30                        ; generate_amdgcn.py:346:30
	v_mad_u64_u32 v[12:13], null, s42, s34, v[5:6]
	v_dual_mov_b32 v9, v223 :: v_dual_add_nc_u32 v28, s46, v223
	.loc	1 352 30                        ; generate_amdgcn.py:352:30
	s_mul_i32 s15, s42, s35
	.loc	1 362 29                        ; generate_amdgcn.py:362:29
	s_ashr_i32 s14, s12, 31
	.loc	1 352 30                        ; generate_amdgcn.py:352:30
	s_add_i32 s15, s15, s23
	.loc	1 362 29                        ; generate_amdgcn.py:362:29
	s_lshr_b32 s14, s14, 24
	.loc	1 346 22                        ; generate_amdgcn.py:346:22
	buffer_load_b64 v[12:13], v12, s[4:7], 0 offen
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v223, v27 offset:9216
	ds_load_u8 v224, v27 offset:9984
	ds_load_u8 v225, v27 offset:9728
	ds_load_u8 v226, v27 offset:10112
	ds_load_u8 v227, v27 offset:9856
	ds_load_u8 v228, v27 offset:9600
	ds_load_u8 v229, v27 offset:9344
	ds_load_u8 v230, v27 offset:8448
	ds_load_u8 v231, v27 offset:8192
	ds_load_u8 v232, v27 offset:8960
	ds_load_u8 v233, v27 offset:8704
	ds_load_u8 v234, v27 offset:9088
	ds_load_u8 v235, v27 offset:8832
	ds_load_u8 v236, v27 offset:8576
	ds_load_u8 v237, v27 offset:8320
	ds_load_u8 v238, v27 offset:15616
	ds_load_u8 v239, v27 offset:15360
	ds_load_u8 v20, v27 offset:16128
	ds_load_u8 v25, v27 offset:15872
	ds_load_u8 v242, v27 offset:16256
	ds_load_u8 v243, v27 offset:16000
	ds_load_u8 v244, v28 offset:496
	ds_load_u8 v245, v28 offset:464
	ds_load_u8 v246, v28 offset:432
	ds_load_u8 v247, v28 offset:400
	ds_load_u8 v248, v28 offset:368
	ds_load_u8 v249, v28 offset:336
	ds_load_u8 v250, v28 offset:304
	ds_load_u8 v251, v28 offset:272
	ds_load_u8 v34, v28 offset:416
	ds_load_u8 v35, v28 offset:384
	ds_load_u8 v36, v28 offset:480
	ds_load_u8 v37, v28 offset:448
	ds_load_u8 v38, v28 offset:288
	ds_load_u8 v39, v28 offset:256
	ds_load_u8 v40, v28 offset:352
	ds_load_u8 v41, v28 offset:320
	ds_load_u8 v42, v28 offset:160
	ds_load_u8 v43, v28 offset:128
	ds_load_u8 v44, v28 offset:224
	ds_load_u8 v45, v28 offset:192
	ds_load_u8 v46, v28 offset:96
	ds_load_u8 v47, v28 offset:64
	ds_load_u8 v48, v28
	ds_load_u8 v26, v28 offset:16
	ds_load_u8 v49, v28 offset:32
	ds_load_u8 v31, v28 offset:112
	ds_load_u8 v33, v28 offset:80
	ds_load_u8 v32, v28 offset:48
	ds_load_u8 v50, v28 offset:800
	ds_load_u8 v51, v28 offset:768
	ds_load_u8 v52, v28 offset:864
	ds_load_u8 v53, v28 offset:832
	ds_load_u8 v54, v28 offset:672
	ds_load_u8 v55, v28 offset:640
	ds_load_u8 v56, v28 offset:736
	ds_load_u8 v57, v28 offset:704
	ds_load_u8 v58, v28 offset:544
	ds_load_u8 v59, v28 offset:512
	ds_load_u8 v60, v28 offset:608
	ds_load_u8 v61, v28 offset:576
	ds_load_u8 v62, v28 offset:1408
	ds_load_u8 v63, v28 offset:1312
	ds_load_u8 v64, v28 offset:1376
	ds_load_u8 v65, v28 offset:1344
	ds_load_u8 v66, v28 offset:1280
	ds_load_u8 v67, v28 offset:1184
	ds_load_u8 v68, v28 offset:1248
	ds_load_u8 v69, v28 offset:1216
	ds_load_u8 v70, v28 offset:928
	ds_load_u8 v71, v28 offset:896
	ds_load_u8 v72, v28 offset:992
	ds_load_u8 v73, v28 offset:960
	ds_load_u8 v74, v28 offset:1024
	ds_load_u8 v75, v28 offset:1152
	ds_load_u8 v76, v28 offset:1056
	ds_load_u8 v77, v28 offset:1120
	ds_load_u8 v78, v28 offset:1088
	ds_load_u8 v79, v28 offset:1952
	ds_load_u8 v80, v28 offset:2016
	ds_load_u8 v81, v28 offset:1920
	ds_load_u8 v82, v28 offset:1824
	ds_load_u8 v83, v28 offset:1888
	ds_load_u8 v84, v28 offset:1856
	ds_load_u8 v121, v28 offset:1792
	ds_load_u8 v122, v28 offset:1696
	ds_load_u8 v123, v28 offset:1760
	ds_load_u8 v124, v28 offset:1728
	ds_load_u8 v125, v28 offset:1440
	ds_load_u8 v126, v28 offset:1504
	ds_load_u8 v127, v28 offset:1472
	ds_load_u8 v128, v28 offset:1536
	ds_load_u8 v129, v28 offset:1664
	ds_load_u8 v130, v28 offset:1568
	ds_load_u8 v131, v28 offset:1632
	ds_load_u8 v132, v28 offset:1600
	ds_load_u8 v133, v27 offset:14592
	ds_load_u8 v134, v27 offset:14336
	ds_load_u8 v135, v27 offset:15104
	ds_load_u8 v136, v27 offset:14848
	ds_load_u8 v137, v27 offset:13568
	ds_load_u8 v138, v27 offset:13312
	ds_load_u8 v139, v27 offset:14080
	ds_load_u8 v140, v27 offset:13824
	ds_load_u8 v141, v27 offset:12544
	ds_load_u8 v142, v27 offset:3328
	ds_load_u8 v143, v27 offset:3072
	ds_load_u8 v144, v27 offset:3840
	ds_load_u8 v145, v27 offset:3584
	ds_load_u8 v146, v27 offset:3968
	ds_load_u8 v147, v27 offset:3712
	ds_load_u8 v148, v27 offset:3456
	ds_load_u8 v149, v27 offset:3200
	ds_load_u8 v150, v27 offset:2304
	ds_load_u8 v151, v27 offset:2048
	ds_load_u8 v152, v27 offset:2816
	ds_load_u8 v153, v27 offset:2560
	ds_load_u8 v154, v27 offset:2944
	ds_load_u8 v155, v27 offset:2688
	ds_load_u8 v156, v27 offset:2432
	ds_load_u8 v157, v27 offset:2176
	ds_load_u8 v158, v27 offset:1280
	ds_load_u8 v159, v27 offset:1024
	ds_load_u8 v160, v27 offset:1792
	ds_load_u8 v161, v27 offset:1536
	ds_load_u8 v162, v27 offset:1920
	ds_load_u8 v163, v27 offset:1664
	ds_load_u8 v164, v27 offset:1408
	ds_load_u8 v165, v27 offset:1152
	ds_load_u8 v166, v27 offset:256
	ds_load_u8 v167, v27
	ds_load_u8 v168, v27 offset:768
	ds_load_u8 v169, v27 offset:512
	ds_load_u8 v170, v27 offset:896
	ds_load_u8 v171, v27 offset:640
	ds_load_u8 v172, v27 offset:384
	ds_load_u8 v173, v27 offset:128
	ds_load_u8 v174, v27 offset:7424
	ds_load_u8 v175, v27 offset:7168
	ds_load_u8 v176, v27 offset:7936
	ds_load_u8 v177, v27 offset:7680
	ds_load_u8 v178, v27 offset:8064
	ds_load_u8 v179, v27 offset:7808
	ds_load_u8 v180, v27 offset:7552
	ds_load_u8 v181, v27 offset:7296
	ds_load_u8 v182, v27 offset:6400
	ds_load_u8 v183, v27 offset:6144
	ds_load_u8 v184, v27 offset:6912
	ds_load_u8 v185, v27 offset:6656
	ds_load_u8 v186, v27 offset:7040
	ds_load_u8 v187, v27 offset:6784
	ds_load_u8 v188, v27 offset:6528
	ds_load_u8 v189, v27 offset:6272
	ds_load_u8 v190, v27 offset:5376
	ds_load_u8 v191, v27 offset:5120
	ds_load_u8 v192, v27 offset:5888
	ds_load_u8 v193, v27 offset:5632
	ds_load_u8 v194, v27 offset:6016
	ds_load_u8 v195, v27 offset:5760
	ds_load_u8 v196, v27 offset:5504
	ds_load_u8 v197, v27 offset:5248
	ds_load_u8 v198, v27 offset:4352
	ds_load_u8 v199, v27 offset:4096
	ds_load_u8 v200, v27 offset:4864
	ds_load_u8 v201, v27 offset:4608
	ds_load_u8 v202, v27 offset:4992
	ds_load_u8 v203, v27 offset:4736
	ds_load_u8 v204, v27 offset:4480
	ds_load_u8 v205, v27 offset:4224
	ds_load_u8 v206, v27 offset:11520
	ds_load_u8 v207, v27 offset:11264
	ds_load_u8 v208, v27 offset:12032
	ds_load_u8 v209, v27 offset:11776
	ds_load_u8 v210, v27 offset:12160
	ds_load_u8 v211, v27 offset:11904
	ds_load_u8 v212, v27 offset:11648
	ds_load_u8 v213, v27 offset:11392
	ds_load_u8 v214, v27 offset:10496
	ds_load_u8 v215, v27 offset:10240
	ds_load_u8 v216, v27 offset:11008
	ds_load_u8 v217, v27 offset:10752
	ds_load_u8 v218, v27 offset:11136
	ds_load_u8 v219, v27 offset:10880
	ds_load_u8 v220, v27 offset:10624
	ds_load_u8 v221, v27 offset:10368
	ds_load_u8 v222, v27 offset:9472
	s_waitcnt lgkmcnt(62)
	v_perm_b32 v125, v62, v125, 0xc0c0004
	v_perm_b32 v18, v74, v76, 0xc0c0004
	ds_load_u8 v74, v27 offset:14976
	v_perm_b32 v126, v127, v126, 0xc0c0004
	s_waitcnt lgkmcnt(16)
	v_perm_b32 v206, v207, v206, 0xc0c0004
	.loc	1 362 29                        ; generate_amdgcn.py:362:29
	s_add_i32 s12, s12, s14
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_perm_b32 v238, v239, v238, 0xc0c0004
	s_waitcnt lgkmcnt(14)
	v_perm_b32 v207, v209, v208, 0xc0c0004
	v_perm_b32 v239, v25, v20, 0xc0c0004
	.loc	1 352 30                        ; generate_amdgcn.py:352:30
	scratch_load_b32 v20, off, off offset:44 ; 4-byte Folded Reload
	.loc	1 362 29                        ; generate_amdgcn.py:362:29
	s_ashr_i32 s12, s12, 8
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_perm_b32 v54, v55, v54, 0xc0c0004
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v208, v215, v214, 0xc0c0004
	v_perm_b32 v55, v57, v56, 0xc0c0004
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v209, v217, v216, 0xc0c0004
	v_perm_b32 v217, v225, v224, 0xc0c0004
	v_perm_b32 v225, v233, v232, 0xc0c0004
	v_perm_b32 v233, v124, v123, 0xc0c0004
	ds_load_u8 v123, v27 offset:14720
	ds_load_u8 v124, v27 offset:14464
	s_waitcnt lgkmcnt(3)
	v_perm_b32 v215, v223, v222, 0xc0c0004
	v_perm_b32 v223, v231, v230, 0xc0c0004
	v_perm_b32 v56, v59, v58, 0xc0c0004
	v_perm_b32 v19, v128, v130, 0xc0c0004
	ds_load_u8 v128, v27 offset:14208
	ds_load_u8 v130, v27 offset:13952
	v_perm_b32 v148, v149, v148, 0xc0c0004
	v_perm_b32 v149, v155, v154, 0xc0c0004
	v_perm_b32 v155, v163, v162, 0xc0c0004
	v_perm_b32 v163, v179, v178, 0xc0c0004
	v_perm_b32 v179, v205, v204, 0xc0c0004
	v_dual_mov_b32 v7, v15 :: v_dual_add_nc_u32 v30, s46, v8
	.loc	1 346 22                        ; generate_amdgcn.py:346:22
	v_add_nc_u32_e32 v29, s46, v15
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v58, v28 offset:1984
	ds_load_u8 v30, v30
	ds_load_u8 v29, v29
	v_perm_b32 v34, v35, v34, 0xc0c0004
	v_perm_b32 v35, v37, v36, 0xc0c0004
	s_waitcnt lgkmcnt(5)
	v_perm_b32 v205, v124, v123, 0xc0c0004
	v_lshl_or_b32 v124, v126, 16, v125
	v_lshl_or_b32 v125, v225, 16, v223
	v_perm_b32 v36, v39, v38, 0xc0c0004
	v_perm_b32 v37, v41, v40, 0xc0c0004
	v_perm_b32 v39, v45, v44, 0xc0c0004
	v_perm_b32 v40, v47, v46, 0xc0c0004
	v_perm_b32 v41, v48, v49, 0xc0c0004
	ds_load_u8 v45, v28 offset:976
	ds_load_u8 v49, v28 offset:912
	ds_load_u8 v127, v28 offset:1168
	ds_load_u8 v85, v28 offset:1136
	ds_load_u8 v21, v28 offset:1104
	ds_load_u8 v14, v28 offset:1040
	ds_load_u8 v47, v28 offset:944
	v_perm_b32 v46, v143, v142, 0xc0c0004
	v_perm_b32 v48, v145, v144, 0xc0c0004
	v_perm_b32 v142, v151, v150, 0xc0c0004
	ds_load_u8 v143, v28 offset:880
	ds_load_u8 v145, v28 offset:848
	ds_load_u8 v151, v28 offset:816
	v_perm_b32 v144, v153, v152, 0xc0c0004
	v_perm_b32 v150, v159, v158, 0xc0c0004
	v_perm_b32 v152, v161, v160, 0xc0c0004
	ds_load_u8 v153, v28 offset:784
	ds_load_u8 v159, v28 offset:752
	ds_load_u8 v161, v28 offset:720
	v_perm_b32 v158, v167, v166, 0xc0c0004
	v_perm_b32 v160, v169, v168, 0xc0c0004
	ds_load_u8 v167, v28 offset:688
	ds_load_u8 v169, v28 offset:656
	v_perm_b32 v22, v75, v67, 0xc0c0004
	ds_load_u8 v75, v28 offset:1072
	ds_load_u8 v252, v28 offset:240
	ds_load_u8 v254, v28 offset:176
	ds_load_u8 v255, v28 offset:144
	v_perm_b32 v15, v51, v50, 0xc0c0004
	ds_load_u8 v50, v28 offset:624
	ds_load_u8 v51, v28 offset:592
	v_perm_b32 v16, v53, v52, 0xc0c0004
	ds_load_u8 v52, v28 offset:560
	ds_load_u8 v53, v28 offset:528
	ds_load_u8 v253, v28 offset:208
	ds_load_u8 v57, v28 offset:1520
	v_perm_b32 v174, v175, v174, 0xc0c0004
	ds_load_u8 v175, v28 offset:1456
	v_perm_b32 v176, v177, v176, 0xc0c0004
	ds_load_u8 v177, v28 offset:1424
	v_perm_b32 v182, v183, v182, 0xc0c0004
	ds_load_u8 v183, v28 offset:1392
	v_perm_b32 v184, v185, v184, 0xc0c0004
	ds_load_u8 v185, v28 offset:1360
	v_perm_b32 v190, v191, v190, 0xc0c0004
	ds_load_u8 v191, v28 offset:1328
	v_perm_b32 v192, v193, v192, 0xc0c0004
	ds_load_u8 v193, v28 offset:1296
	v_perm_b32 v198, v199, v198, 0xc0c0004
	ds_load_u8 v199, v28 offset:1264
	v_perm_b32 v200, v201, v200, 0xc0c0004
	ds_load_u8 v201, v28 offset:1232
	v_mov_b32_e32 v1, v0
	ds_load_u8 v0, v28 offset:1200
	v_perm_b32 v24, v78, v77, 0xc0c0004
	ds_load_u8 v76, v28 offset:2000
	ds_load_u8 v77, v28 offset:1968
	ds_load_u8 v78, v28 offset:1936
	ds_load_u8 v214, v28 offset:1904
	ds_load_u8 v216, v28 offset:1872
	ds_load_u8 v222, v28 offset:1840
	ds_load_u8 v224, v28 offset:1808
	ds_load_u8 v230, v28 offset:1776
	v_perm_b32 v231, v81, v79, 0xc0c0004
	ds_load_u8 v79, v28 offset:1744
	ds_load_u8 v81, v28 offset:1680
	s_waitcnt lgkmcnt(46)
	v_perm_b32 v232, v58, v80, 0xc0c0004
	ds_load_u8 v80, v28 offset:1712
	v_perm_b32 v82, v121, v82, 0xc0c0004
	v_perm_b32 v83, v84, v83, 0xc0c0004
	ds_load_u8 v84, v28 offset:1648
	ds_load_u8 v121, v28 offset:1616
	ds_load_u8 v119, v28 offset:1488
	v_perm_b32 v129, v129, v122, 0xc0c0004
	ds_load_u8 v122, v28 offset:1584
	ds_load_u8 v28, v28 offset:1552
	.loc	1 363 34                        ; generate_amdgcn.py:363:34
	s_cmp_lt_i32 s12, s41
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_perm_b32 v17, v69, v68, 0xc0c0004
	.loc	1 363 34                        ; generate_amdgcn.py:363:34
	s_cselect_b32 vcc_lo, -1, 0
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_add_i32 s11, s11, 1
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_perm_b32 v10, v132, v131, 0xc0c0004
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_cmp_lt_i32 s11, 2
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_perm_b32 v26, v26, v32, 0xc0c0004
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_cselect_b32 s11, s11, 0
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	s_waitcnt lgkmcnt(43)
	v_perm_b32 v32, v49, v47, 0xc0c0004
	s_waitcnt lgkmcnt(35)
	v_perm_b32 v49, v169, v167, 0xc0c0004
	v_perm_b32 v161, v161, v159, 0xc0c0004
	s_waitcnt lgkmcnt(34)
	v_perm_b32 v14, v14, v75, 0xc0c0004
	v_perm_b32 v21, v21, v85, 0xc0c0004
	v_perm_b32 v86, v61, v60, 0xc0c0004
	.loc	1 364 22                        ; generate_amdgcn.py:364:22
	v_add_lshl_u32 v60, v241, s12, 1
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_lshl_b32 s16, s11, 14
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v131, v27 offset:13696
	ds_load_u8 v132, v27 offset:13440
	ds_load_u8 v58, v27 offset:12288
	v_perm_b32 v146, v147, v146, 0xc0c0004
	v_perm_b32 v147, v157, v156, 0xc0c0004
	v_perm_b32 v156, v173, v172, 0xc0c0004
	v_perm_b32 v162, v181, v180, 0xc0c0004
	v_perm_b32 v173, v197, v196, 0xc0c0004
	v_perm_b32 v181, v213, v212, 0xc0c0004
	v_perm_b32 v212, v130, v128, 0xc0c0004
	s_waitcnt lgkmcnt(32)
	v_perm_b32 v169, v51, v50, 0xc0c0004
	s_waitcnt lgkmcnt(18)
	v_perm_b32 v29, v76, v29, 0xc0c0004
	s_waitcnt lgkmcnt(3)
	v_perm_b32 v28, v28, v122, 0xc0c0004
	v_perm_b32 v84, v121, v84, 0xc0c0004
	v_lshl_or_b32 v50, v160, 16, v158
	v_lshl_or_b32 v76, v16, 16, v15
	v_lshl_or_b32 v122, v17, 16, v22
	v_lshl_or_b32 v121, v24, 16, v18
	v_lshl_or_b32 v130, v233, 16, v129
	v_lshl_or_b32 v129, v10, 16, v19
	v_lshl_or_b32 v158, v161, 16, v49
	v_lshl_or_b32 v161, v21, 16, v14
	v_perm_b32 v157, v171, v170, 0xc0c0004
	v_perm_b32 v38, v43, v42, 0xc0c0004
	ds_load_u8 v42, v27 offset:15744
	ds_load_u8 v43, v27 offset:15488
	ds_load_u8 v44, v27 offset:15232
	v_perm_b32 v133, v134, v133, 0xc0c0004
	v_perm_b32 v134, v136, v135, 0xc0c0004
	v_perm_b32 v137, v138, v137, 0xc0c0004
	v_perm_b32 v138, v140, v139, 0xc0c0004
	ds_load_u8 v135, v27 offset:13184
	ds_load_u8 v136, v27 offset:12928
	ds_load_u8 v139, v27 offset:12672
	ds_load_u8 v140, v27 offset:12416
	s_waitcnt lgkmcnt(7)
	v_perm_b32 v141, v58, v141, 0xc0c0004
	ds_load_u8 v58, v27 offset:13056
	ds_load_u8 v27, v27 offset:12800
	v_perm_b32 v154, v165, v164, 0xc0c0004
	v_perm_b32 v164, v189, v188, 0xc0c0004
	v_perm_b32 v165, v187, v186, 0xc0c0004
	v_perm_b32 v178, v195, v194, 0xc0c0004
	v_perm_b32 v187, v221, v220, 0xc0c0004
	v_perm_b32 v188, v219, v218, 0xc0c0004
	v_perm_b32 v189, v229, v228, 0xc0c0004
	v_perm_b32 v194, v227, v226, 0xc0c0004
	v_perm_b32 v219, v247, v246, 0xc0c0004
	v_perm_b32 v220, v245, v244, 0xc0c0004
	v_perm_b32 v221, v251, v250, 0xc0c0004
	v_perm_b32 v226, v249, v248, 0xc0c0004
	v_perm_b32 v227, v255, v254, 0xc0c0004
	v_perm_b32 v228, v253, v252, 0xc0c0004
	v_perm_b32 v31, v33, v31, 0xc0c0004
	v_perm_b32 v166, v71, v70, 0xc0c0004
	v_perm_b32 v168, v73, v72, 0xc0c0004
	v_perm_b32 v180, v203, v202, 0xc0c0004
	v_perm_b32 v186, v211, v210, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v27, v27, v58, 0xc0c0004
	v_perm_b32 v203, v43, v42, 0xc0c0004
	v_perm_b32 v210, v74, v44, 0xc0c0004
	v_perm_b32 v213, v140, v139, 0xc0c0004
	v_perm_b32 v218, v136, v135, 0xc0c0004
	v_perm_b32 v30, v45, v30, 0xc0c0004
	v_perm_b32 v33, v153, v151, 0xc0c0004
	v_perm_b32 v47, v145, v143, 0xc0c0004
	v_perm_b32 v167, v53, v52, 0xc0c0004
	v_perm_b32 v85, v78, v77, 0xc0c0004
	v_lshl_or_b32 v45, v35, 16, v34
	v_lshl_or_b32 v44, v37, 16, v36
	v_lshl_or_b32 v43, v39, 16, v38
	v_lshl_or_b32 v42, v40, 16, v41
	v_lshl_or_b32 v53, v48, 16, v46
	v_lshl_or_b32 v52, v144, 16, v142
	v_lshl_or_b32 v51, v152, 16, v150
	v_lshl_or_b32 v135, v134, 16, v133
	v_lshl_or_b32 v134, v138, 16, v137
	v_lshl_or_b32 v140, v146, 16, v148
	v_lshl_or_b32 v139, v149, 16, v147
	v_lshl_or_b32 v138, v155, 16, v154
	v_lshl_or_b32 v137, v157, 16, v156
	v_lshl_or_b32 v156, v220, 16, v219
	v_lshl_or_b32 v155, v226, 16, v221
	v_lshl_or_b32 v154, v228, 16, v227
	v_lshl_or_b32 v153, v31, 16, v26
	v_perm_b32 v175, v177, v175, 0xc0c0004
	v_perm_b32 v57, v119, v57, 0xc0c0004
	v_perm_b32 v119, v193, v191, 0xc0c0004
	v_perm_b32 v177, v185, v183, 0xc0c0004
	v_perm_b32 v183, v201, v199, 0xc0c0004
	v_perm_b32 v193, v81, v80, 0xc0c0004
	v_perm_b32 v199, v79, v230, 0xc0c0004
	v_lshl_or_b32 v77, v168, 16, v166
	v_lshl_or_b32 v75, v55, 16, v54
	v_lshl_or_b32 v74, v86, 16, v56
	v_lshl_or_b32 v81, v176, 16, v174
	v_lshl_or_b32 v80, v184, 16, v182
	v_lshl_or_b32 v79, v192, 16, v190
	v_lshl_or_b32 v78, v200, 16, v198
	v_lshl_or_b32 v133, v27, 16, v141
	v_lshl_or_b32 v143, v165, 16, v164
	v_lshl_or_b32 v160, v30, 16, v32
	v_lshl_or_b32 v159, v47, 16, v33
	v_lshl_or_b32 v157, v169, 16, v167
	v_lshl_or_b32 v168, v29, 16, v85
	v_lshl_or_b32 v165, v84, 16, v28
	.loc	1 352 30                        ; generate_amdgcn.py:352:30
	v_add_nc_u32_e32 v58, s15, v2
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_perm_b32 v120, v66, v63, 0xc0c0004
	v_perm_b32 v23, v65, v64, 0xc0c0004
	v_perm_b32 v196, v237, v236, 0xc0c0004
	v_perm_b32 v202, v235, v234, 0xc0c0004
	v_perm_b32 v0, v127, v0, 0xc0c0004
	v_lshl_or_b32 v128, v207, 16, v206
	v_lshl_or_b32 v123, v23, 16, v120
	v_lshl_or_b32 v127, v209, 16, v208
	v_lshl_or_b32 v126, v217, 16, v215
	v_lshl_or_b32 v144, v163, 16, v162
	v_lshl_or_b32 v142, v178, 16, v173
	v_lshl_or_b32 v141, v180, 16, v179
	v_perm_b32 v204, v243, v242, 0xc0c0004
	v_perm_b32 v211, v132, v131, 0xc0c0004
	v_lshl_or_b32 v132, v232, 16, v231
	v_lshl_or_b32 v131, v83, 16, v82
	v_lshl_or_b32 v136, v239, 16, v238
	v_lshl_or_b32 v148, v186, 16, v181
	v_lshl_or_b32 v147, v188, 16, v187
	v_lshl_or_b32 v146, v194, 16, v189
	v_lshl_or_b32 v145, v202, 16, v196
	v_lshl_or_b32 v152, v204, 16, v203
	v_lshl_or_b32 v151, v210, 16, v205
	v_lshl_or_b32 v150, v212, 16, v211
	v_lshl_or_b32 v149, v218, 16, v213
	v_lshl_or_b32 v162, v183, 16, v0
	v_lshl_or_b32 v164, v57, 16, v175
	v_perm_b32 v185, v224, v222, 0xc0c0004
	v_perm_b32 v191, v216, v214, 0xc0c0004
	v_lshl_or_b32 v163, v177, 16, v119
	v_lshl_or_b32 v166, v199, 16, v193
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_add_i32 s14, s13, 1
	s_mov_b32 s46, s43
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_lshl_or_b32 v167, v191, 16, v185
	v_mov_b32_e32 v223, v9
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	scratch_load_b32 v9, off, off offset:40 ; 4-byte Folded Reload
	.loc	1 364 22                        ; generate_amdgcn.py:364:22
	v_cndmask_b32_e32 v60, 0x80000000, v60, vcc_lo
	.loc	1 352 30                        ; generate_amdgcn.py:352:30
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v62, s15, v20
	.loc	1 364 22                        ; generate_amdgcn.py:364:22
	scratch_load_b32 v20, off, off          ; 4-byte Folded Reload
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	buffer_load_b128 v[62:65], v62, s[24:27], 0 offen
	.loc	1 364 22                        ; generate_amdgcn.py:364:22
	s_waitcnt vmcnt(1)
	v_add_lshl_u32 v59, v20, s12, 1
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	scratch_load_b32 v20, off, off offset:4 ; 4-byte Folded Reload
	.loc	1 366 40                        ; generate_amdgcn.py:366:40
	s_mul_i32 s12, s12, s35
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	.loc	1 366 22 is_stmt 0              ; generate_amdgcn.py:366:22
	v_add_lshl_u32 v61, v240, s12, 1
	s_mov_b32 s12, s44
	.loc	1 352 22 is_stmt 1              ; generate_amdgcn.py:352:22
	s_add_i32 s44, s16, 0
	.loc	1 364 22                        ; generate_amdgcn.py:364:22
	v_cndmask_b32_e32 v59, 0x80000000, v59, vcc_lo
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_cndmask_b32_e32 v61, 0x80000000, v61, vcc_lo
	.loc	1 364 22                        ; generate_amdgcn.py:364:22
	buffer_load_u16 v170, v59, s[28:31], 0 offen
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	buffer_load_u16 v171, v61, s[36:39], 0 offen
	.loc	1 364 22                        ; generate_amdgcn.py:364:22
	buffer_load_u16 v172, v60, s[28:31], 0 offen
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	buffer_load_b128 v[58:61], v58, s[24:27], 0 offen
	s_waitcnt vmcnt(4)
	v_add_nc_u32_e32 v197, s44, v20
	s_clause 0x1                            ; 32-byte Folded Reload
	scratch_load_b128 v[14:17], off, off offset:8
	scratch_load_b128 v[18:21], off, off offset:24
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	s_waitcnt vmcnt(0)
	v_wmma_i32_16x16x16_iu8 v[26:33], v[50:53], v[42:45], v[14:21] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[34:41], v[137:140], v[42:45], v[14:21] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[42:49], v[50:53], v[153:156], v[14:21] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_wmma_i32_16x16x16_iu8 v[26:33], v[78:81], v[74:77], v[26:33] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[34:41], v[141:144], v[74:77], v[34:41] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[50:57], v[137:140], v[153:156], v[14:21] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_4)
	v_wmma_i32_16x16x16_iu8 v[42:49], v[78:81], v[157:160], v[42:49] neg_lo:[1,1,0]
	.loc	1 364 22                        ; generate_amdgcn.py:364:22
	v_lshlrev_b32_e32 v78, 16, v170
	.loc	1 352 30                        ; generate_amdgcn.py:352:30
	v_add_nc_u32_e32 v66, s15, v3
	v_add_nc_u32_e32 v70, s15, v4
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_wmma_i32_16x16x16_iu8 v[26:33], v[125:128], v[121:124], v[26:33] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[34:41], v[145:148], v[121:124], v[34:41] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[50:57], v[141:144], v[157:160], v[50:57] neg_lo:[1,1,0]
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_clause 0x1
	buffer_load_b128 v[66:69], v66, s[24:27], 0 offen
	buffer_load_b128 v[70:73], v70, s[24:27], 0 offen
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_wmma_i32_16x16x16_iu8 v[26:33], v[133:136], v[129:132], v[26:33] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[34:41], v[149:152], v[129:132], v[34:41] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[42:49], v[125:128], v[161:164], v[42:49] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[50:57], v[145:148], v[161:164], v[50:57] neg_lo:[1,1,0]
	.loc	1 346 22                        ; generate_amdgcn.py:346:22
	s_lshl_b32 s15, s11, 11
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v0, v26
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_lshlrev_b32_e32 v26, 16, v171
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v10, v27
	v_cvt_f32_i32_e32 v14, v28
	v_cvt_f32_i32_e32 v15, v29
	v_cvt_f32_i32_e32 v16, v30
	v_cvt_f32_i32_e32 v17, v31
	v_cvt_f32_i32_e32 v18, v32
	v_cvt_f32_i32_e32 v19, v33
	v_cvt_f32_i32_e32 v21, v34
	v_cvt_f32_i32_e32 v22, v35
	v_cvt_f32_i32_e32 v23, v36
	v_cvt_f32_i32_e32 v24, v37
	v_cvt_f32_i32_e32 v74, v38
	v_cvt_f32_i32_e32 v75, v39
	v_cvt_f32_i32_e32 v76, v40
	v_cvt_f32_i32_e32 v77, v41
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	ds_store_b32 v9, v26 offset:36864
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[26:29], v6 offset:36864
	ds_load_b128 v[30:33], v6 offset:36880
	ds_load_b128 v[34:37], v6 offset:37376
	ds_load_b128 v[38:41], v6 offset:37392
	.loc	1 346 22                        ; generate_amdgcn.py:346:22
	s_add_i32 s15, s15, 0
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_wmma_i32_16x16x16_iu8 v[42:49], v[133:136], v[165:168], v[42:49] neg_lo:[1,1,0]
	.loc	1 346 22                        ; generate_amdgcn.py:346:22
	v_add_nc_u32_e32 v195, s15, v11
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_wmma_i32_16x16x16_iu8 v[50:57], v[149:152], v[165:168], v[50:57] neg_lo:[1,1,0]
	.loc	1 364 22                        ; generate_amdgcn.py:364:22
	v_lshlrev_b32_e32 v79, 16, v172
	.loc	1 346 22                        ; generate_amdgcn.py:346:22
	s_add_i32 s43, s15, 0x8000
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v42, v42
	v_cvt_f32_i32_e32 v43, v43
	v_cvt_f32_i32_e32 v44, v44
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
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	s_waitcnt lgkmcnt(3)
	v_mul_f32_e32 v80, v28, v78
	.loc	1 346 22                        ; generate_amdgcn.py:346:22
	ds_store_b64 v195, v[12:13] offset:32768
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v12, v26, v78
	v_mul_f32_e32 v13, v27, v78
	v_mul_f32_e32 v81, v29, v78
	s_waitcnt lgkmcnt(3)
	v_mul_f32_e32 v82, v30, v78
	v_mul_f32_e32 v83, v31, v78
	v_mul_f32_e32 v84, v32, v78
	v_dual_mul_f32 v85, v33, v78 :: v_dual_mul_f32 v26, v26, v79
	s_waitcnt lgkmcnt(2)
	v_dual_mul_f32 v86, v34, v78 :: v_dual_mul_f32 v27, v27, v79
	v_dual_mul_f32 v119, v35, v78 :: v_dual_mul_f32 v28, v28, v79
	v_dual_mul_f32 v120, v36, v78 :: v_dual_mul_f32 v29, v29, v79
	v_dual_mul_f32 v121, v37, v78 :: v_dual_mul_f32 v30, v30, v79
	s_waitcnt lgkmcnt(1)
	v_dual_mul_f32 v122, v38, v78 :: v_dual_mul_f32 v31, v31, v79
	v_dual_mul_f32 v123, v39, v78 :: v_dual_mul_f32 v32, v32, v79
	v_dual_mul_f32 v124, v40, v78 :: v_dual_mul_f32 v33, v33, v79
	v_dual_mul_f32 v78, v41, v78 :: v_dual_mul_f32 v35, v35, v79
	v_dual_mul_f32 v34, v34, v79 :: v_dual_fmac_f32 v87, v12, v0
	v_mul_f32_e32 v36, v36, v79
	v_dual_mul_f32 v37, v37, v79 :: v_dual_fmac_f32 v92, v83, v17
	v_dual_mul_f32 v38, v38, v79 :: v_dual_fmac_f32 v89, v80, v14
	v_dual_mul_f32 v39, v39, v79 :: v_dual_mov_b32 v0, v1
	v_dual_mul_f32 v40, v40, v79 :: v_dual_fmac_f32 v91, v82, v16
	v_dual_mul_f32 v41, v41, v79 :: v_dual_fmac_f32 v96, v119, v22
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_dual_fmac_f32 v88, v13, v10 :: v_dual_fmac_f32 v95, v86, v21
	v_dual_fmac_f32 v90, v81, v15 :: v_dual_fmac_f32 v93, v84, v18
	v_dual_mov_b32 v15, v7 :: v_dual_fmac_f32 v94, v85, v19
	v_fmac_f32_e32 v99, v122, v74
	v_dual_fmac_f32 v97, v120, v23 :: v_dual_fmac_f32 v98, v121, v24
	v_dual_fmac_f32 v100, v123, v75 :: v_dual_fmac_f32 v101, v124, v76
	v_dual_fmac_f32 v102, v78, v77 :: v_dual_fmac_f32 v105, v28, v44
	v_dual_fmac_f32 v103, v26, v42 :: v_dual_fmac_f32 v104, v27, v43
	v_dual_fmac_f32 v106, v29, v45 :: v_dual_fmac_f32 v107, v30, v46
	v_dual_fmac_f32 v108, v31, v47 :: v_dual_fmac_f32 v109, v32, v48
	v_dual_fmac_f32 v110, v33, v49 :: v_dual_fmac_f32 v113, v35, v51
	v_dual_fmac_f32 v112, v34, v50 :: v_dual_fmac_f32 v115, v37, v53
	v_dual_fmac_f32 v114, v36, v52 :: v_dual_fmac_f32 v117, v39, v55
	v_dual_fmac_f32 v116, v38, v54 :: v_dual_fmac_f32 v111, v41, v57
	v_fmac_f32_e32 v118, v40, v56
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_cmp_lg_u32 s13, s45
	s_mov_b32 s13, s14
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	ds_store_b128 v197, v[58:61]
	ds_store_b128 v197, v[62:65] offset:4096
	s_waitcnt vmcnt(1)
	ds_store_b128 v197, v[66:69] offset:8192
	s_waitcnt vmcnt(0)
	ds_store_b128 v197, v[70:73] offset:12288
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_cbranch_scc1 .LBB0_5
; %bb.6:                                ; %Flow
	.loc	1 0 5 is_stmt 0                 ; generate_amdgcn.py:0:5
	s_clause 0x3                            ; 16-byte Folded Reload
	scratch_load_b32 v221, off, off offset:48
	scratch_load_b32 v222, off, off
	scratch_load_b32 v224, off, off offset:52
	scratch_load_b32 v225, off, off offset:56
	v_dual_mov_b32 v1, v8 :: v_dual_mov_b32 v2, v15
	s_waitcnt vmcnt(3)
	v_and_b32_e32 v220, 0xf0, v221
	s_branch .LBB0_8
.LBB0_7:
	v_dual_mov_b32 v111, 0 :: v_dual_mov_b32 v118, 0
	v_dual_mov_b32 v117, 0 :: v_dual_mov_b32 v116, 0
	v_dual_mov_b32 v115, 0 :: v_dual_mov_b32 v114, 0
	v_dual_mov_b32 v113, 0 :: v_dual_mov_b32 v112, 0
	v_dual_mov_b32 v110, 0 :: v_dual_mov_b32 v109, 0
	v_dual_mov_b32 v108, 0 :: v_dual_mov_b32 v107, 0
	v_dual_mov_b32 v106, 0 :: v_dual_mov_b32 v105, 0
	v_dual_mov_b32 v104, 0 :: v_dual_mov_b32 v103, 0
	v_dual_mov_b32 v102, 0 :: v_dual_mov_b32 v101, 0
	v_dual_mov_b32 v100, 0 :: v_dual_mov_b32 v99, 0
	v_dual_mov_b32 v98, 0 :: v_dual_mov_b32 v97, 0
	v_dual_mov_b32 v96, 0 :: v_dual_mov_b32 v95, 0
	v_dual_mov_b32 v94, 0 :: v_dual_mov_b32 v93, 0
	v_dual_mov_b32 v92, 0 :: v_dual_mov_b32 v91, 0
	v_dual_mov_b32 v90, 0 :: v_dual_mov_b32 v89, 0
	v_dual_mov_b32 v88, 0 :: v_dual_mov_b32 v87, 0
	s_add_i32 s46, 0, 0x8000
	s_add_i32 s43, 0, 0x8800
	s_add_i32 s44, 0, 0x4000
.LBB0_8:                                ; %._crit_edge
	.loc	1 352 22 is_stmt 1              ; generate_amdgcn.py:352:22
	v_or_b32_e32 v3, v0, v223
	v_dual_mov_b32 v9, 0 :: v_dual_mov_b32 v122, 0
	v_dual_mov_b32 v131, 0 :: v_dual_mov_b32 v124, 0
	v_dual_mov_b32 v121, 0 :: v_dual_mov_b32 v126, 0
	v_dual_mov_b32 v123, 0 :: v_dual_mov_b32 v128, 0
	v_dual_mov_b32 v125, 0 :: v_dual_mov_b32 v130, 0
	v_dual_mov_b32 v127, 0 :: v_dual_mov_b32 v132, 0
	v_dual_mov_b32 v129, 0 :: v_dual_mov_b32 v136, 0
	v_dual_mov_b32 v135, 0 :: v_dual_mov_b32 v138, 0
	v_dual_mov_b32 v137, 0 :: v_dual_mov_b32 v140, 0
	v_dual_mov_b32 v139, 0 :: v_dual_mov_b32 v142, 0
	v_dual_mov_b32 v141, 0 :: v_dual_mov_b32 v144, 0
	v_dual_mov_b32 v143, 0 :: v_dual_mov_b32 v146, 0
	v_dual_mov_b32 v145, 0 :: v_dual_mov_b32 v148, 0
	v_dual_mov_b32 v147, 0 :: v_dual_mov_b32 v150, 0
	v_dual_mov_b32 v149, 0 :: v_dual_mov_b32 v152, 0
	v_dual_mov_b32 v151, 0 :: v_dual_mov_b32 v154, 0
	v_mov_b32_e32 v153, 0
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	s_and_not1_b32 vcc_lo, exec_lo, s3
	.loc	1 346 22                        ; generate_amdgcn.py:346:22
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	s_cbranch_vccnz .LBB0_10
; %bb.9:
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v33, s12, v3
	s_mov_b32 s12, 0
	.loc	1 346 22                        ; generate_amdgcn.py:346:22
	v_add_nc_u32_e32 v57, s46, v1
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	s_mov_b32 s13, s12
	s_mov_b32 s14, s12
	s_mov_b32 s15, s12
	s_mov_b32 s16, s12
	s_mov_b32 s17, s12
	s_mov_b32 s18, s12
	s_mov_b32 s19, s12
	.loc	1 346 22                        ; generate_amdgcn.py:346:22
	v_add_nc_u32_e32 v4, s46, v223
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v0, v4 offset:416
	ds_load_u8 v5, v4 offset:384
	ds_load_u8 v6, v4 offset:480
	ds_load_u8 v7, v4 offset:448
	ds_load_u8 v8, v4 offset:288
	ds_load_u8 v10, v4 offset:256
	ds_load_u8 v11, v4 offset:352
	ds_load_u8 v12, v4 offset:320
	ds_load_u8 v13, v4 offset:160
	ds_load_u8 v14, v4 offset:128
	ds_load_u8 v15, v4 offset:224
	ds_load_u8 v16, v4 offset:192
	ds_load_u8 v17, v4 offset:32
	ds_load_u8 v18, v4
	ds_load_u8 v19, v4 offset:96
	ds_load_u8 v20, v4 offset:64
	ds_load_u8 v73, v4 offset:464
	ds_load_u8 v74, v4 offset:432
	ds_load_u8 v75, v4 offset:400
	ds_load_u8 v76, v4 offset:368
	s_waitcnt lgkmcnt(18)
	v_perm_b32 v0, v5, v0, 0xc0c0004
	s_waitcnt lgkmcnt(16)
	v_perm_b32 v5, v7, v6, 0xc0c0004
	s_waitcnt lgkmcnt(14)
	v_perm_b32 v6, v10, v8, 0xc0c0004
	.loc	1 346 22                        ; generate_amdgcn.py:346:22
	v_add_nc_u32_e32 v10, s46, v2
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	s_waitcnt lgkmcnt(12)
	v_perm_b32 v7, v12, v11, 0xc0c0004
	v_lshl_or_b32 v8, v5, 16, v0
	s_waitcnt lgkmcnt(10)
	v_perm_b32 v5, v14, v13, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_3)
	v_lshl_or_b32 v7, v7, 16, v6
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v6, v16, v15, 0xc0c0004
	ds_load_u8 v14, v4 offset:80
	ds_load_u8 v15, v4 offset:48
	ds_load_u8 v16, v4 offset:16
	ds_load_u8 v84, v10
	s_waitcnt lgkmcnt(10)
	v_perm_b32 v10, v18, v17, 0xc0c0004
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v11, v20, v19, 0xc0c0004
	ds_load_u8 v12, v33 offset:3328
	ds_load_u8 v13, v33 offset:3072
	ds_load_u8 v17, v33 offset:3840
	ds_load_u8 v18, v33 offset:3584
	v_lshl_or_b32 v6, v6, 16, v5
	v_lshl_or_b32 v5, v11, 16, v10
	ds_load_u8 v10, v33 offset:2304
	ds_load_u8 v11, v33 offset:2048
	ds_load_u8 v19, v33 offset:2816
	ds_load_u8 v20, v33 offset:2560
	ds_load_u8 v21, v33 offset:1280
	ds_load_u8 v22, v33 offset:1024
	ds_load_u8 v23, v33 offset:1792
	ds_load_u8 v24, v33 offset:1536
	ds_load_u8 v25, v33 offset:256
	ds_load_u8 v26, v33
	ds_load_u8 v27, v33 offset:768
	ds_load_u8 v28, v33 offset:512
	ds_load_u8 v34, v33 offset:3968
	ds_load_u8 v35, v33 offset:3712
	ds_load_u8 v36, v33 offset:3456
	ds_load_u8 v37, v33 offset:3200
	s_waitcnt lgkmcnt(14)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	s_waitcnt lgkmcnt(12)
	v_perm_b32 v11, v20, v19, 0xc0c0004
	v_perm_b32 v15, v16, v15, 0xc0c0004
	v_perm_b32 v12, v13, v12, 0xc0c0004
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v19, v26, v25, 0xc0c0004
	v_perm_b32 v13, v18, v17, 0xc0c0004
	v_perm_b32 v17, v22, v21, 0xc0c0004
	v_perm_b32 v18, v24, v23, 0xc0c0004
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v20, v28, v27, 0xc0c0004
	v_lshl_or_b32 v13, v13, 16, v12
	v_lshl_or_b32 v12, v11, 16, v10
	v_lshl_or_b32 v11, v18, 16, v17
	s_delay_alu instid0(VALU_DEP_4)
	v_lshl_or_b32 v10, v20, 16, v19
	v_dual_mov_b32 v24, s19 :: v_dual_mov_b32 v23, s18
	ds_load_u8 v41, v4 offset:928
	ds_load_u8 v42, v4 offset:896
	ds_load_u8 v43, v4 offset:992
	ds_load_u8 v44, v4 offset:960
	ds_load_u8 v45, v4 offset:800
	ds_load_u8 v46, v4 offset:768
	ds_load_u8 v47, v4 offset:864
	ds_load_u8 v48, v4 offset:832
	ds_load_u8 v49, v4 offset:672
	ds_load_u8 v50, v4 offset:640
	ds_load_u8 v51, v4 offset:736
	ds_load_u8 v52, v4 offset:704
	ds_load_u8 v85, v4 offset:976
	ds_load_u8 v86, v4 offset:944
	ds_load_u8 v119, v4 offset:912
	ds_load_u8 v120, v4 offset:880
	v_mov_b32_e32 v18, s13
	ds_load_u8 v77, v4 offset:336
	ds_load_u8 v78, v4 offset:304
	ds_load_u8 v79, v4 offset:272
	ds_load_u8 v80, v4 offset:240
	ds_load_u8 v0, v4 offset:208
	ds_load_u8 v81, v4 offset:176
	ds_load_u8 v82, v4 offset:144
	ds_load_u8 v83, v4 offset:112
	ds_load_u8 v125, v4 offset:720
	ds_load_u8 v126, v4 offset:688
	ds_load_u8 v127, v4 offset:656
	ds_load_u8 v128, v4 offset:624
	ds_load_u8 v129, v4 offset:592
	ds_load_u8 v130, v4 offset:560
	ds_load_u8 v131, v4 offset:528
	ds_load_u8 v132, v4 offset:496
	ds_load_u8 v157, v4 offset:1264
	ds_load_u8 v158, v4 offset:1232
	ds_load_u8 v159, v4 offset:1200
	ds_load_u8 v160, v4 offset:1168
	ds_load_u8 v38, v33 offset:2944
	ds_load_u8 v39, v33 offset:2688
	ds_load_u8 v40, v33 offset:2432
	ds_load_u8 v61, v33 offset:2176
	ds_load_u8 v62, v33 offset:1920
	ds_load_u8 v63, v33 offset:1664
	ds_load_u8 v64, v33 offset:1408
	ds_load_u8 v65, v33 offset:1152
	ds_load_u8 v66, v33 offset:896
	ds_load_u8 v67, v33 offset:640
	ds_load_u8 v68, v33 offset:384
	ds_load_u8 v69, v33 offset:128
	s_waitcnt lgkmcnt(42)
	v_perm_b32 v45, v46, v45, 0xc0c0004
	ds_load_u8 v138, v33 offset:6016
	ds_load_u8 v139, v33 offset:5760
	ds_load_u8 v140, v33 offset:5504
	ds_load_u8 v141, v33 offset:5248
	s_waitcnt lgkmcnt(44)
	v_perm_b32 v46, v48, v47, 0xc0c0004
	ds_load_u8 v142, v33 offset:4992
	ds_load_u8 v143, v33 offset:4736
	ds_load_u8 v144, v33 offset:4480
	ds_load_u8 v145, v33 offset:4224
	s_waitcnt lgkmcnt(46)
	v_perm_b32 v47, v50, v49, 0xc0c0004
	ds_load_u8 v177, v33 offset:10112
	ds_load_u8 v178, v33 offset:9856
	ds_load_u8 v179, v33 offset:9600
	ds_load_u8 v180, v33 offset:9344
	s_waitcnt lgkmcnt(48)
	v_perm_b32 v48, v52, v51, 0xc0c0004
	ds_load_u8 v50, v33 offset:7424
	ds_load_u8 v51, v33 offset:7168
	v_perm_b32 v41, v42, v41, 0xc0c0004
	ds_load_u8 v42, v4 offset:544
	ds_load_u8 v53, v4 offset:512
	v_perm_b32 v43, v44, v43, 0xc0c0004
	ds_load_u8 v44, v4 offset:608
	ds_load_u8 v54, v4 offset:576
	ds_load_u8 v121, v4 offset:848
	ds_load_u8 v122, v4 offset:816
	ds_load_u8 v123, v4 offset:784
	ds_load_u8 v124, v4 offset:752
	v_dual_mov_b32 v22, s17 :: v_dual_mov_b32 v19, s14
	v_dual_mov_b32 v21, s16 :: v_dual_mov_b32 v20, s15
	v_mov_b32_e32 v17, s12
	s_waitcnt lgkmcnt(49)
	v_perm_b32 v0, v0, v80, 0xc0c0004
	s_waitcnt lgkmcnt(46)
	v_perm_b32 v14, v14, v83, 0xc0c0004
	s_waitcnt lgkmcnt(39)
	v_perm_b32 v80, v131, v130, 0xc0c0004
	v_wmma_i32_16x16x16_iu8 v[25:32], v[10:13], v[5:8], v[17:24] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v52, v54, v44, 0xc0c0004
	v_lshl_or_b32 v44, v43, 16, v41
	v_perm_b32 v49, v53, v42, 0xc0c0004
	ds_load_u8 v53, v33 offset:7936
	ds_load_u8 v54, v33 offset:7680
	v_lshl_or_b32 v43, v46, 16, v45
	v_lshl_or_b32 v42, v48, 16, v47
	v_perm_b32 v50, v51, v50, 0xc0c0004
	v_lshl_or_b32 v41, v52, 16, v49
	ds_load_u8 v45, v33 offset:6400
	ds_load_u8 v46, v33 offset:6144
	ds_load_u8 v47, v33 offset:6912
	ds_load_u8 v48, v33 offset:6656
	ds_load_u8 v49, v33 offset:5376
	ds_load_u8 v52, v33 offset:5120
	ds_load_u8 v55, v33 offset:5888
	ds_load_u8 v56, v33 offset:5632
	ds_load_u8 v70, v33 offset:8064
	ds_load_u8 v71, v33 offset:7808
	ds_load_u8 v72, v33 offset:7552
	ds_load_u8 v133, v33 offset:7296
	ds_load_u8 v51, v33 offset:4352
	ds_load_u8 v58, v33 offset:4096
	s_waitcnt lgkmcnt(12)
	v_perm_b32 v45, v46, v45, 0xc0c0004
	s_waitcnt lgkmcnt(10)
	v_perm_b32 v46, v48, v47, 0xc0c0004
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v47, v52, v49, 0xc0c0004
	v_perm_b32 v53, v54, v53, 0xc0c0004
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v48, v56, v55, 0xc0c0004
	ds_load_u8 v55, v4 offset:1440
	ds_load_u8 v56, v4 offset:1408
	ds_load_u8 v54, v33 offset:4864
	ds_load_u8 v59, v33 offset:4608
	ds_load_u8 v134, v33 offset:7040
	ds_load_u8 v135, v33 offset:6784
	ds_load_u8 v136, v33 offset:6528
	ds_load_u8 v137, v33 offset:6272
	v_lshl_or_b32 v52, v53, 16, v50
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v49, v58, v51, 0xc0c0004
	v_lshl_or_b32 v51, v46, 16, v45
	v_lshl_or_b32 v50, v48, 16, v47
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v54, v59, v54, 0xc0c0004
	ds_load_u8 v58, v4 offset:1504
	ds_load_u8 v59, v4 offset:1472
	v_perm_b32 v55, v56, v55, 0xc0c0004
	ds_load_u8 v56, v4 offset:1056
	ds_load_u8 v151, v4 offset:1024
	v_lshl_or_b32 v49, v54, 16, v49
	ds_load_u8 v45, v4 offset:1312
	ds_load_u8 v46, v4 offset:1280
	ds_load_u8 v47, v4 offset:1376
	ds_load_u8 v48, v4 offset:1344
	ds_load_u8 v53, v4 offset:1184
	ds_load_u8 v54, v4 offset:1152
	ds_load_u8 v60, v4 offset:1248
	ds_load_u8 v146, v4 offset:1216
	ds_load_u8 v147, v4 offset:1520
	ds_load_u8 v148, v4 offset:1488
	ds_load_u8 v149, v4 offset:1456
	ds_load_u8 v150, v4 offset:1424
	v_wmma_i32_16x16x16_iu8 v[25:32], v[49:52], v[41:44], v[25:32] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(10)
	v_perm_b32 v45, v46, v45, 0xc0c0004
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v46, v48, v47, 0xc0c0004
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v53, v54, v53, 0xc0c0004
	v_perm_b32 v58, v59, v58, 0xc0c0004
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v54, v146, v60, 0xc0c0004
	ds_load_u8 v59, v4 offset:1120
	ds_load_u8 v152, v4 offset:1088
	ds_load_u8 v153, v4 offset:1392
	ds_load_u8 v154, v4 offset:1360
	ds_load_u8 v155, v4 offset:1328
	ds_load_u8 v156, v4 offset:1296
	v_perm_b32 v56, v151, v56, 0xc0c0004
	ds_load_u8 v60, v33 offset:11520
	ds_load_u8 v151, v33 offset:11264
	ds_load_u8 v164, v33 offset:12032
	ds_load_u8 v165, v33 offset:11776
	v_lshl_or_b32 v48, v58, 16, v55
	v_lshl_or_b32 v47, v46, 16, v45
	v_lshl_or_b32 v46, v54, 16, v53
	ds_load_u8 v146, v4 offset:1136
	ds_load_u8 v161, v4 offset:1104
	ds_load_u8 v162, v4 offset:1072
	ds_load_u8 v163, v4 offset:1040
	s_waitcnt lgkmcnt(12)
	v_perm_b32 v59, v152, v59, 0xc0c0004
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v60, v151, v60, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_2)
	v_lshl_or_b32 v45, v59, 16, v56
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v151, v165, v164, 0xc0c0004
	ds_load_u8 v164, v33 offset:8448
	ds_load_u8 v165, v33 offset:8192
	ds_load_u8 v171, v33 offset:8960
	ds_load_u8 v172, v33 offset:8704
	ds_load_u8 v173, v33 offset:11136
	ds_load_u8 v174, v33 offset:10880
	ds_load_u8 v175, v33 offset:10624
	ds_load_u8 v176, v33 offset:10368
	ds_load_u8 v53, v33 offset:10496
	ds_load_u8 v54, v33 offset:10240
	ds_load_u8 v55, v33 offset:11008
	ds_load_u8 v56, v33 offset:10752
	ds_load_u8 v58, v33 offset:9472
	ds_load_u8 v59, v33 offset:9216
	ds_load_u8 v152, v33 offset:9984
	ds_load_u8 v166, v33 offset:9728
	ds_load_u8 v167, v33 offset:12160
	ds_load_u8 v168, v33 offset:11904
	ds_load_u8 v169, v33 offset:11648
	ds_load_u8 v170, v33 offset:11392
	s_waitcnt lgkmcnt(10)
	v_perm_b32 v53, v54, v53, 0xc0c0004
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v54, v56, v55, 0xc0c0004
	v_perm_b32 v164, v165, v164, 0xc0c0004
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v58, v59, v58, 0xc0c0004
	v_perm_b32 v165, v172, v171, 0xc0c0004
	ds_load_u8 v171, v4 offset:1824
	ds_load_u8 v172, v4 offset:1792
	ds_load_u8 v187, v4 offset:1888
	ds_load_u8 v188, v4 offset:1856
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v59, v166, v152, 0xc0c0004
	ds_load_u8 v152, v4 offset:1952
	ds_load_u8 v166, v4 offset:1920
	ds_load_u8 v181, v4 offset:2016
	ds_load_u8 v182, v4 offset:1984
	ds_load_u8 v183, v33 offset:9088
	ds_load_u8 v184, v33 offset:8832
	ds_load_u8 v185, v33 offset:8576
	ds_load_u8 v186, v33 offset:8320
	v_lshl_or_b32 v55, v54, 16, v53
	v_lshl_or_b32 v56, v151, 16, v60
	v_lshl_or_b32 v53, v165, 16, v164
	v_lshl_or_b32 v54, v59, 16, v58
	ds_load_u8 v151, v57
	ds_load_u8 v164, v4 offset:2000
	ds_load_u8 v165, v4 offset:1968
	ds_load_u8 v189, v4 offset:1936
	v_wmma_i32_16x16x16_iu8 v[25:32], v[53:56], v[45:48], v[25:32] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(10)
	v_perm_b32 v57, v166, v152, 0xc0c0004
	v_perm_b32 v59, v172, v171, 0xc0c0004
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v58, v182, v181, 0xc0c0004
	v_perm_b32 v171, v188, v187, 0xc0c0004
	ds_load_u8 v172, v4 offset:1568
	ds_load_u8 v187, v4 offset:1536
	ds_load_u8 v188, v4 offset:1632
	ds_load_u8 v194, v4 offset:1600
	ds_load_u8 v152, v4 offset:1696
	ds_load_u8 v166, v4 offset:1664
	ds_load_u8 v181, v4 offset:1760
	ds_load_u8 v182, v4 offset:1728
	ds_load_u8 v190, v4 offset:1904
	ds_load_u8 v191, v4 offset:1872
	ds_load_u8 v192, v4 offset:1840
	ds_load_u8 v193, v4 offset:1808
	v_lshl_or_b32 v60, v58, 16, v57
	v_lshl_or_b32 v59, v171, 16, v59
	ds_load_u8 v171, v4 offset:1776
	ds_load_u8 v195, v4 offset:1744
	ds_load_u8 v196, v4 offset:1712
	ds_load_u8 v197, v4 offset:1680
	s_waitcnt lgkmcnt(10)
	v_perm_b32 v57, v166, v152, 0xc0c0004
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v58, v182, v181, 0xc0c0004
	ds_load_u8 v152, v33 offset:15616
	ds_load_u8 v166, v33 offset:15360
	ds_load_u8 v181, v33 offset:16128
	ds_load_u8 v182, v33 offset:15872
	ds_load_u8 v198, v4 offset:1648
	ds_load_u8 v199, v4 offset:1616
	ds_load_u8 v200, v4 offset:1584
	ds_load_u8 v201, v4 offset:1552
	v_perm_b32 v4, v187, v172, 0xc0c0004
	v_perm_b32 v172, v194, v188, 0xc0c0004
	ds_load_u8 v187, v33 offset:14592
	ds_load_u8 v188, v33 offset:14336
	ds_load_u8 v194, v33 offset:15104
	ds_load_u8 v202, v33 offset:14848
	v_lshl_or_b32 v58, v58, 16, v57
	v_lshl_or_b32 v57, v172, 16, v4
	ds_load_u8 v4, v33 offset:13568
	ds_load_u8 v172, v33 offset:13312
	ds_load_u8 v203, v33 offset:14080
	ds_load_u8 v204, v33 offset:13824
	ds_load_u8 v205, v33 offset:16256
	ds_load_u8 v206, v33 offset:16000
	ds_load_u8 v207, v33 offset:15744
	ds_load_u8 v208, v33 offset:15488
	s_waitcnt lgkmcnt(18)
	v_perm_b32 v152, v166, v152, 0xc0c0004
	ds_load_u8 v166, v33 offset:12544
	ds_load_u8 v209, v33 offset:12288
	s_waitcnt lgkmcnt(18)
	v_perm_b32 v181, v182, v181, 0xc0c0004
	ds_load_u8 v182, v33 offset:15232
	ds_load_u8 v210, v33 offset:14976
	ds_load_u8 v211, v33 offset:14720
	ds_load_u8 v212, v33 offset:14464
	s_waitcnt lgkmcnt(16)
	v_perm_b32 v187, v188, v187, 0xc0c0004
	s_waitcnt lgkmcnt(12)
	v_perm_b32 v172, v172, v4, 0xc0c0004
	v_perm_b32 v188, v202, v194, 0xc0c0004
	ds_load_u8 v194, v33 offset:13056
	ds_load_u8 v202, v33 offset:12800
	ds_load_u8 v213, v33 offset:14208
	ds_load_u8 v214, v33 offset:13952
	ds_load_u8 v215, v33 offset:13696
	ds_load_u8 v216, v33 offset:13440
	s_waitcnt lgkmcnt(16)
	v_perm_b32 v203, v204, v203, 0xc0c0004
	ds_load_u8 v204, v33 offset:13184
	ds_load_u8 v217, v33 offset:12928
	ds_load_u8 v218, v33 offset:12672
	ds_load_u8 v219, v33 offset:12416
	v_perm_b32 v4, v37, v36, 0xc0c0004
	v_perm_b32 v33, v35, v34, 0xc0c0004
	v_perm_b32 v34, v61, v40, 0xc0c0004
	v_perm_b32 v35, v39, v38, 0xc0c0004
	v_perm_b32 v36, v65, v64, 0xc0c0004
	v_perm_b32 v37, v63, v62, 0xc0c0004
	v_perm_b32 v38, v69, v68, 0xc0c0004
	v_perm_b32 v39, v67, v66, 0xc0c0004
	v_lshl_or_b32 v64, v33, 16, v4
	v_lshl_or_b32 v63, v35, 16, v34
	v_lshl_or_b32 v62, v37, 16, v36
	v_perm_b32 v4, v133, v72, 0xc0c0004
	v_lshl_or_b32 v61, v39, 16, v38
	v_perm_b32 v65, v71, v70, 0xc0c0004
	v_perm_b32 v66, v137, v136, 0xc0c0004
	v_perm_b32 v67, v135, v134, 0xc0c0004
	v_perm_b32 v68, v141, v140, 0xc0c0004
	v_perm_b32 v70, v139, v138, 0xc0c0004
	v_perm_b32 v71, v145, v144, 0xc0c0004
	v_perm_b32 v72, v143, v142, 0xc0c0004
	v_wmma_i32_16x16x16_iu8 v[33:40], v[61:64], v[5:8], v[17:24] neg_lo:[1,1,0]
	v_lshl_or_b32 v7, v65, 16, v4
	v_lshl_or_b32 v6, v67, 16, v66
	v_lshl_or_b32 v5, v70, 16, v68
	v_lshl_or_b32 v4, v72, 16, v71
	v_perm_b32 v8, v170, v169, 0xc0c0004
	v_perm_b32 v65, v168, v167, 0xc0c0004
	v_perm_b32 v66, v176, v175, 0xc0c0004
	v_perm_b32 v67, v174, v173, 0xc0c0004
	v_perm_b32 v70, v180, v179, 0xc0c0004
	v_perm_b32 v71, v178, v177, 0xc0c0004
	v_perm_b32 v72, v186, v185, 0xc0c0004
	v_perm_b32 v133, v184, v183, 0xc0c0004
	v_wmma_i32_16x16x16_iu8 v[33:40], v[4:7], v[41:44], v[33:40] neg_lo:[1,1,0]
	v_lshl_or_b32 v68, v65, 16, v8
	v_lshl_or_b32 v67, v67, 16, v66
	v_lshl_or_b32 v66, v71, 16, v70
	v_lshl_or_b32 v65, v133, 16, v72
	v_perm_b32 v41, v75, v74, 0xc0c0004
	v_perm_b32 v42, v73, v132, 0xc0c0004
	v_perm_b32 v43, v79, v78, 0xc0c0004
	v_perm_b32 v44, v77, v76, 0xc0c0004
	v_wmma_i32_16x16x16_iu8 v[33:40], v[65:68], v[45:48], v[33:40] neg_lo:[1,1,0]
	v_perm_b32 v45, v82, v81, 0xc0c0004
	v_lshl_or_b32 v76, v42, 16, v41
	v_lshl_or_b32 v73, v14, 16, v15
	v_lshl_or_b32 v75, v44, 16, v43
	v_perm_b32 v14, v85, v151, 0xc0c0004
	v_lshl_or_b32 v74, v0, 16, v45
	v_perm_b32 v0, v119, v86, 0xc0c0004
	v_perm_b32 v15, v123, v122, 0xc0c0004
	v_perm_b32 v77, v121, v120, 0xc0c0004
	v_perm_b32 v78, v127, v126, 0xc0c0004
	v_perm_b32 v79, v125, v124, 0xc0c0004
	v_perm_b32 v81, v129, v128, 0xc0c0004
	v_wmma_i32_16x16x16_iu8 v[41:48], v[10:13], v[73:76], v[17:24] neg_lo:[1,1,0]
	v_lshl_or_b32 v13, v14, 16, v0
	v_lshl_or_b32 v12, v77, 16, v15
	v_lshl_or_b32 v11, v79, 16, v78
	v_lshl_or_b32 v10, v81, 16, v80
	v_perm_b32 v0, v150, v149, 0xc0c0004
	v_perm_b32 v14, v148, v147, 0xc0c0004
	v_perm_b32 v15, v156, v155, 0xc0c0004
	v_perm_b32 v77, v154, v153, 0xc0c0004
	v_perm_b32 v78, v160, v159, 0xc0c0004
	v_perm_b32 v79, v158, v157, 0xc0c0004
	v_perm_b32 v80, v163, v162, 0xc0c0004
	v_perm_b32 v81, v161, v146, 0xc0c0004
	s_waitcnt lgkmcnt(16)
	v_perm_b32 v8, v208, v207, 0xc0c0004
	v_perm_b32 v133, v206, v205, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v138, v219, v218, 0xc0c0004
	v_perm_b32 v16, v217, v204, 0xc0c0004
	v_wmma_i32_16x16x16_iu8 v[41:48], v[49:52], v[10:13], v[41:48] neg_lo:[1,1,0]
	v_lshl_or_b32 v52, v14, 16, v0
	v_lshl_or_b32 v51, v77, 16, v15
	v_lshl_or_b32 v50, v79, 16, v78
	v_lshl_or_b32 v49, v81, 16, v80
	v_wmma_i32_16x16x16_iu8 v[17:24], v[61:64], v[73:76], v[17:24] neg_lo:[1,1,0]
	v_perm_b32 v166, v209, v166, 0xc0c0004
	v_perm_b32 v69, v202, v194, 0xc0c0004
	v_perm_b32 v134, v212, v211, 0xc0c0004
	v_perm_b32 v135, v210, v182, 0xc0c0004
	v_perm_b32 v136, v216, v215, 0xc0c0004
	v_perm_b32 v137, v214, v213, 0xc0c0004
	v_lshl_or_b32 v80, v133, 16, v8
	v_lshl_or_b32 v77, v16, 16, v138
	v_wmma_i32_16x16x16_iu8 v[41:48], v[53:56], v[49:52], v[41:48] neg_lo:[1,1,0]
	v_perm_b32 v0, v189, v165, 0xc0c0004
	v_perm_b32 v8, v164, v84, 0xc0c0004
	v_perm_b32 v14, v193, v192, 0xc0c0004
	v_perm_b32 v15, v191, v190, 0xc0c0004
	v_perm_b32 v16, v197, v196, 0xc0c0004
	v_perm_b32 v53, v195, v171, 0xc0c0004
	v_perm_b32 v54, v201, v200, 0xc0c0004
	v_perm_b32 v55, v199, v198, 0xc0c0004
	v_wmma_i32_16x16x16_iu8 v[17:24], v[4:7], v[10:13], v[17:24] neg_lo:[1,1,0]
	v_lshl_or_b32 v72, v181, 16, v152
	v_lshl_or_b32 v71, v188, 16, v187
	v_lshl_or_b32 v70, v203, 16, v172
	v_lshl_or_b32 v69, v69, 16, v166
	v_lshl_or_b32 v79, v135, 16, v134
	v_lshl_or_b32 v78, v137, 16, v136
	v_lshl_or_b32 v7, v8, 16, v0
	v_lshl_or_b32 v6, v15, 16, v14
	v_lshl_or_b32 v5, v53, 16, v16
	v_lshl_or_b32 v4, v55, 16, v54
	v_wmma_i32_16x16x16_iu8 v[17:24], v[65:68], v[49:52], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[25:32], v[69:72], v[57:60], v[25:32] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[33:40], v[77:80], v[57:60], v[33:40] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_wmma_i32_16x16x16_iu8 v[41:48], v[69:72], v[4:7], v[41:48] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[17:24], v[77:80], v[4:7], v[17:24] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_4)
	v_cvt_f32_i32_e32 v121, v26
	v_cvt_f32_i32_e32 v122, v27
	v_cvt_f32_i32_e32 v123, v28
	v_cvt_f32_i32_e32 v124, v29
	v_cvt_f32_i32_e32 v125, v30
	v_cvt_f32_i32_e32 v126, v31
	v_cvt_f32_i32_e32 v127, v32
	v_cvt_f32_i32_e32 v128, v33
	v_cvt_f32_i32_e32 v129, v34
	v_cvt_f32_i32_e32 v130, v35
	v_cvt_f32_i32_e32 v132, v36
	v_cvt_f32_i32_e32 v135, v37
	v_cvt_f32_i32_e32 v136, v38
	v_cvt_f32_i32_e32 v137, v39
	v_cvt_f32_i32_e32 v138, v40
	v_cvt_f32_i32_e32 v139, v41
	v_cvt_f32_i32_e32 v140, v42
	v_cvt_f32_i32_e32 v141, v43
	v_cvt_f32_i32_e32 v142, v44
	v_cvt_f32_i32_e32 v143, v45
	v_cvt_f32_i32_e32 v144, v46
	v_cvt_f32_i32_e32 v145, v47
	v_cvt_f32_i32_e32 v146, v48
	v_cvt_f32_i32_e32 v147, v17
	v_cvt_f32_i32_e32 v148, v18
	v_cvt_f32_i32_e32 v149, v19
	v_cvt_f32_i32_e32 v150, v20
	v_cvt_f32_i32_e32 v151, v21
	v_cvt_f32_i32_e32 v152, v22
	v_cvt_f32_i32_e32 v153, v23
	v_cvt_f32_i32_e32 v154, v24
	v_cvt_f32_i32_e32 v131, v25
.LBB0_10:
	.loc	1 362 29                        ; generate_amdgcn.py:362:29
	s_ashr_i32 s4, s22, 31
	s_mov_b32 s11, 0x31027000
	s_lshr_b32 s4, s4, 24
	s_mov_b32 s10, 0x7ffffffe
	s_add_i32 s4, s22, s4
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	s_mov_b32 s22, s10
	.loc	1 362 29                        ; generate_amdgcn.py:362:29
	s_ashr_i32 s4, s4, 8
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	s_mov_b32 s23, s11
	.loc	1 366 40 is_stmt 0              ; generate_amdgcn.py:366:40
	s_mul_i32 s5, s4, s35
	.loc	1 363 34 is_stmt 1              ; generate_amdgcn.py:363:34
	s_cmp_lt_i32 s4, s41
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_add_lshl_u32 v4, v240, s5, 1
	.loc	1 363 34                        ; generate_amdgcn.py:363:34
	s_cselect_b32 s5, -1, 0
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	s_and_b32 s21, s21, 0xffff
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_and_b32 vcc_lo, s3, s5
	.loc	1 364 22                        ; generate_amdgcn.py:364:22
	s_waitcnt vmcnt(2)
	v_add_lshl_u32 v0, v222, s4, 1
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_dual_cndmask_b32 v4, 0x80000000, v4 :: v_dual_and_b32 v133, 14, v221
	.loc	1 364 22                        ; generate_amdgcn.py:364:22
	v_add_lshl_u32 v5, v241, s4, 1
	s_and_b32 s9, s9, 0xffff
	s_delay_alu instid0(VALU_DEP_3)
	v_cndmask_b32_e32 v0, 0x80000000, v0, vcc_lo
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	buffer_load_u16 v4, v4, s[20:23], 0 offen
	v_dual_mov_b32 v11, 0 :: v_dual_and_b32 v134, 1, v221
	.loc	1 364 22                        ; generate_amdgcn.py:364:22
	v_cndmask_b32_e32 v5, 0x80000000, v5, vcc_lo
	s_clause 0x1
	buffer_load_u16 v157, v0, s[8:11], 0 offen
	buffer_load_u16 v158, v5, s[8:11], 0 offen
	v_dual_mov_b32 v49, 0 :: v_dual_lshlrev_b32 v0, 5, v134
	v_dual_mov_b32 v16, 0 :: v_dual_lshlrev_b32 v5, 1, v133
	s_waitcnt vmcnt(3)
	v_dual_mov_b32 v10, 0 :: v_dual_add_nc_u32 v155, 0, v225
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_add3_u32 v0, 0, v224, v0
	v_dual_mov_b32 v21, 0 :: v_dual_mov_b32 v12, 0
	v_dual_mov_b32 v13, 0 :: v_dual_mov_b32 v50, 0
	v_dual_mov_b32 v17, 0 :: v_dual_add_nc_u32 v156, v0, v5
	v_dual_mov_b32 v15, 0 :: v_dual_mov_b32 v18, 0
	v_dual_mov_b32 v19, 0 :: v_dual_mov_b32 v20, 0
	v_dual_mov_b32 v22, 0 :: v_dual_mov_b32 v25, 0
	v_dual_mov_b32 v24, 0 :: v_dual_mov_b32 v27, 0
	v_dual_mov_b32 v26, 0 :: v_dual_mov_b32 v29, 0
	v_dual_mov_b32 v28, 0 :: v_dual_mov_b32 v31, 0
	v_dual_mov_b32 v30, 0 :: v_dual_mov_b32 v51, 0
	v_dual_mov_b32 v32, 0 :: v_dual_mov_b32 v5, 0
	v_dual_mov_b32 v52, 0 :: v_dual_mov_b32 v7, 0
	v_mov_b32_e32 v6, 0
	v_mov_b32_e32 v8, 0
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	s_and_not1_b32 vcc_lo, exec_lo, s2
	s_mov_b32 s4, 0
	s_waitcnt vmcnt(2)
	v_dual_mov_b32 v23, 0 :: v_dual_lshlrev_b32 v0, 16, v4
	v_mov_b32_e32 v4, 0
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	ds_store_b32 v156, v0 offset:36864
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[33:36], v155 offset:36864
	ds_load_b128 v[37:40], v155 offset:36880
	ds_load_b128 v[41:44], v155 offset:37376
	ds_load_b128 v[45:48], v155 offset:37392
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	s_cbranch_vccnz .LBB0_12
; %bb.11:
	.loc	1 0 19 is_stmt 0                ; generate_amdgcn.py:0:19
	s_mov_b32 s12, 0
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	s_mov_b32 s13, s12
	s_mov_b32 s14, s12
	s_mov_b32 s15, s12
	s_mov_b32 s16, s12
	s_mov_b32 s17, s12
	s_mov_b32 s18, s12
	s_mov_b32 s19, s12
	.loc	1 346 22 is_stmt 1              ; generate_amdgcn.py:346:22
	v_add_nc_u32_e32 v159, s43, v223
	v_add_nc_u32_e32 v161, s43, v1
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v0, v159 offset:416
	ds_load_u8 v1, v159 offset:384
	.loc	1 346 22                        ; generate_amdgcn.py:346:22
	v_add_nc_u32_e32 v160, s43, v2
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v25, s44, v3
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v1, v0, 0xc0c0004
	ds_load_u8 v1, v159 offset:480
	ds_load_u8 v2, v159 offset:448
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v1, v2, v1, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v29, v1, 16, v0
	ds_load_u8 v0, v159 offset:288
	ds_load_u8 v1, v159 offset:256
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v1, v0, 0xc0c0004
	ds_load_u8 v1, v159 offset:352
	ds_load_u8 v2, v159 offset:320
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v1, v2, v1, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v28, v1, 16, v0
	ds_load_u8 v0, v159 offset:160
	ds_load_u8 v1, v159 offset:128
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v1, v0, 0xc0c0004
	ds_load_u8 v1, v159 offset:224
	ds_load_u8 v2, v159 offset:192
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v1, v2, v1, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v27, v1, 16, v0
	ds_load_u8 v0, v159 offset:32
	ds_load_u8 v1, v159
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v1, v0, 0xc0c0004
	ds_load_u8 v1, v159 offset:96
	ds_load_u8 v2, v159 offset:64
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v1, v2, v1, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v26, v1, 16, v0
	ds_load_u8 v0, v25 offset:3328
	ds_load_u8 v1, v25 offset:3072
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v1, v0, 0xc0c0004
	ds_load_u8 v1, v25 offset:3840
	ds_load_u8 v2, v25 offset:3584
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v1, v2, v1, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v72, v1, 16, v0
	ds_load_u8 v0, v25 offset:2304
	ds_load_u8 v1, v25 offset:2048
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v1, v0, 0xc0c0004
	ds_load_u8 v1, v25 offset:2816
	ds_load_u8 v2, v25 offset:2560
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v1, v2, v1, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v71, v1, 16, v0
	ds_load_u8 v0, v25 offset:1280
	ds_load_u8 v1, v25 offset:1024
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v1, v0, 0xc0c0004
	ds_load_u8 v1, v25 offset:1792
	ds_load_u8 v2, v25 offset:1536
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v1, v2, v1, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v70, v1, 16, v0
	ds_load_u8 v0, v25 offset:256
	ds_load_u8 v1, v25
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v1, v0, 0xc0c0004
	ds_load_u8 v1, v25 offset:768
	ds_load_u8 v2, v25 offset:512
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v1, v2, v1, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v69, v1, 16, v0
	v_dual_mov_b32 v1, s12 :: v_dual_mov_b32 v4, s15
	ds_load_u8 v0, v159 offset:928
	ds_load_u8 v17, v159 offset:896
	v_dual_mov_b32 v2, s13 :: v_dual_mov_b32 v3, s14
	v_dual_mov_b32 v8, s19 :: v_dual_mov_b32 v5, s16
	v_dual_mov_b32 v6, s17 :: v_dual_mov_b32 v7, s18
	s_delay_alu instid0(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu8 v[9:16], v[69:72], v[26:29], v[1:8] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v17, v0, 0xc0c0004
	ds_load_u8 v17, v159 offset:992
	ds_load_u8 v18, v159 offset:960
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v17, v18, v17, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v60, v17, 16, v0
	ds_load_u8 v0, v159 offset:800
	ds_load_u8 v17, v159 offset:768
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v17, v0, 0xc0c0004
	ds_load_u8 v17, v159 offset:864
	ds_load_u8 v18, v159 offset:832
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v17, v18, v17, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v59, v17, 16, v0
	ds_load_u8 v0, v159 offset:672
	ds_load_u8 v17, v159 offset:640
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v17, v0, 0xc0c0004
	ds_load_u8 v17, v159 offset:736
	ds_load_u8 v18, v159 offset:704
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v17, v18, v17, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v58, v17, 16, v0
	ds_load_u8 v0, v159 offset:544
	ds_load_u8 v17, v159 offset:512
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v17, v0, 0xc0c0004
	ds_load_u8 v17, v159 offset:608
	ds_load_u8 v18, v159 offset:576
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v17, v18, v17, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v57, v17, 16, v0
	ds_load_u8 v0, v25 offset:7424
	ds_load_u8 v17, v25 offset:7168
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v17, v0, 0xc0c0004
	ds_load_u8 v17, v25 offset:7936
	ds_load_u8 v18, v25 offset:7680
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v17, v18, v17, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v76, v17, 16, v0
	ds_load_u8 v0, v25 offset:6400
	ds_load_u8 v17, v25 offset:6144
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v17, v0, 0xc0c0004
	ds_load_u8 v17, v25 offset:6912
	ds_load_u8 v18, v25 offset:6656
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v17, v18, v17, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v75, v17, 16, v0
	ds_load_u8 v0, v25 offset:5376
	ds_load_u8 v17, v25 offset:5120
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v17, v0, 0xc0c0004
	ds_load_u8 v17, v25 offset:5888
	ds_load_u8 v18, v25 offset:5632
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v17, v18, v17, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v74, v17, 16, v0
	ds_load_u8 v0, v25 offset:4352
	ds_load_u8 v17, v25 offset:4096
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v17, v0, 0xc0c0004
	ds_load_u8 v17, v25 offset:4864
	ds_load_u8 v18, v25 offset:4608
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v17, v18, v17, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v73, v17, 16, v0
	ds_load_u8 v0, v159 offset:1440
	ds_load_u8 v17, v159 offset:1408
	v_wmma_i32_16x16x16_iu8 v[9:16], v[73:76], v[57:60], v[9:16] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v17, v0, 0xc0c0004
	ds_load_u8 v17, v159 offset:1504
	ds_load_u8 v18, v159 offset:1472
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v17, v18, v17, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v68, v17, 16, v0
	ds_load_u8 v0, v159 offset:1312
	ds_load_u8 v17, v159 offset:1280
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v17, v0, 0xc0c0004
	ds_load_u8 v17, v159 offset:1376
	ds_load_u8 v18, v159 offset:1344
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v17, v18, v17, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v67, v17, 16, v0
	ds_load_u8 v0, v159 offset:1184
	ds_load_u8 v17, v159 offset:1152
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v17, v0, 0xc0c0004
	ds_load_u8 v17, v159 offset:1248
	ds_load_u8 v18, v159 offset:1216
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v17, v18, v17, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v66, v17, 16, v0
	ds_load_u8 v0, v159 offset:1056
	ds_load_u8 v17, v159 offset:1024
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v17, v0, 0xc0c0004
	ds_load_u8 v17, v159 offset:1120
	ds_load_u8 v18, v159 offset:1088
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v17, v18, v17, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v65, v17, 16, v0
	ds_load_u8 v0, v25 offset:11520
	ds_load_u8 v17, v25 offset:11264
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v17, v0, 0xc0c0004
	ds_load_u8 v17, v25 offset:12032
	ds_load_u8 v18, v25 offset:11776
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v17, v18, v17, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v80, v17, 16, v0
	ds_load_u8 v0, v25 offset:10496
	ds_load_u8 v17, v25 offset:10240
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v17, v0, 0xc0c0004
	ds_load_u8 v17, v25 offset:11008
	ds_load_u8 v18, v25 offset:10752
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v17, v18, v17, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v79, v17, 16, v0
	ds_load_u8 v0, v25 offset:9472
	ds_load_u8 v17, v25 offset:9216
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v17, v0, 0xc0c0004
	ds_load_u8 v17, v25 offset:9984
	ds_load_u8 v18, v25 offset:9728
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v17, v18, v17, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v78, v17, 16, v0
	ds_load_u8 v0, v25 offset:8448
	ds_load_u8 v17, v25 offset:8192
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v17, v0, 0xc0c0004
	ds_load_u8 v17, v25 offset:8960
	ds_load_u8 v18, v25 offset:8704
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v17, v18, v17, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v77, v17, 16, v0
	ds_load_u8 v0, v159 offset:1952
	ds_load_u8 v17, v159 offset:1920
	v_wmma_i32_16x16x16_iu8 v[9:16], v[77:80], v[65:68], v[9:16] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v17, v0, 0xc0c0004
	ds_load_u8 v17, v159 offset:2016
	ds_load_u8 v18, v159 offset:1984
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v17, v18, v17, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v84, v17, 16, v0
	ds_load_u8 v0, v159 offset:1824
	ds_load_u8 v17, v159 offset:1792
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v17, v0, 0xc0c0004
	ds_load_u8 v17, v159 offset:1888
	ds_load_u8 v18, v159 offset:1856
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v17, v18, v17, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v83, v17, 16, v0
	ds_load_u8 v0, v159 offset:1696
	ds_load_u8 v17, v159 offset:1664
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v17, v0, 0xc0c0004
	ds_load_u8 v17, v159 offset:1760
	ds_load_u8 v18, v159 offset:1728
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v17, v18, v17, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v82, v17, 16, v0
	ds_load_u8 v0, v159 offset:1568
	ds_load_u8 v17, v159 offset:1536
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v17, v0, 0xc0c0004
	ds_load_u8 v17, v159 offset:1632
	ds_load_u8 v18, v159 offset:1600
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v17, v18, v17, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v81, v17, 16, v0
	ds_load_u8 v0, v25 offset:15616
	ds_load_u8 v17, v25 offset:15360
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v17, v0, 0xc0c0004
	ds_load_u8 v17, v25 offset:16128
	ds_load_u8 v18, v25 offset:15872
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v17, v18, v17, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v64, v17, 16, v0
	ds_load_u8 v0, v25 offset:14592
	ds_load_u8 v17, v25 offset:14336
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v17, v0, 0xc0c0004
	ds_load_u8 v17, v25 offset:15104
	ds_load_u8 v18, v25 offset:14848
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v17, v18, v17, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v63, v17, 16, v0
	ds_load_u8 v0, v25 offset:13568
	ds_load_u8 v17, v25 offset:13312
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v17, v0, 0xc0c0004
	ds_load_u8 v17, v25 offset:14080
	ds_load_u8 v18, v25 offset:13824
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v17, v18, v17, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v62, v17, 16, v0
	ds_load_u8 v0, v25 offset:12544
	ds_load_u8 v17, v25 offset:12288
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v17, v0, 0xc0c0004
	ds_load_u8 v17, v25 offset:13056
	ds_load_u8 v18, v25 offset:12800
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v17, v18, v17, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v61, v17, 16, v0
	ds_load_u8 v0, v25 offset:3456
	ds_load_u8 v17, v25 offset:3200
	v_wmma_i32_16x16x16_iu8 v[9:16], v[61:64], v[81:84], v[9:16] neg_lo:[1,1,0]
	v_cvt_f32_i32_e32 v9, v9
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cvt_f32_i32_e32 v10, v10
	v_cvt_f32_i32_e32 v11, v11
	s_delay_alu instid0(VALU_DEP_4)
	v_cvt_f32_i32_e32 v12, v12
	v_cvt_f32_i32_e32 v13, v13
	v_cvt_f32_i32_e32 v16, v16
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v17, v0, 0xc0c0004
	ds_load_u8 v17, v25 offset:3968
	ds_load_u8 v18, v25 offset:3712
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v17, v18, v17, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v52, v17, 16, v0
	ds_load_u8 v0, v25 offset:2432
	ds_load_u8 v17, v25 offset:2176
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v17, v0, 0xc0c0004
	ds_load_u8 v17, v25 offset:2944
	ds_load_u8 v18, v25 offset:2688
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v17, v18, v17, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v51, v17, 16, v0
	ds_load_u8 v0, v25 offset:1408
	ds_load_u8 v17, v25 offset:1152
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v17, v0, 0xc0c0004
	ds_load_u8 v17, v25 offset:1920
	ds_load_u8 v18, v25 offset:1664
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v17, v18, v17, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v50, v17, 16, v0
	ds_load_u8 v0, v25 offset:384
	ds_load_u8 v17, v25 offset:128
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v17, v0, 0xc0c0004
	ds_load_u8 v17, v25 offset:896
	ds_load_u8 v18, v25 offset:640
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v17, v18, v17, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v49, v17, 16, v0
	v_wmma_i32_16x16x16_iu8 v[17:24], v[49:52], v[26:29], v[1:8] neg_lo:[1,1,0]
	ds_load_u8 v0, v25 offset:7552
	ds_load_u8 v26, v25 offset:7296
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v26, v0, 0xc0c0004
	ds_load_u8 v26, v25 offset:8064
	ds_load_u8 v27, v25 offset:7808
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v26, v27, v26, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v56, v26, 16, v0
	ds_load_u8 v0, v25 offset:6528
	ds_load_u8 v26, v25 offset:6272
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v26, v0, 0xc0c0004
	ds_load_u8 v26, v25 offset:7040
	ds_load_u8 v27, v25 offset:6784
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v26, v27, v26, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v55, v26, 16, v0
	ds_load_u8 v0, v25 offset:5504
	ds_load_u8 v26, v25 offset:5248
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v26, v0, 0xc0c0004
	ds_load_u8 v26, v25 offset:6016
	ds_load_u8 v27, v25 offset:5760
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v26, v27, v26, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v54, v26, 16, v0
	ds_load_u8 v0, v25 offset:4480
	ds_load_u8 v26, v25 offset:4224
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v26, v0, 0xc0c0004
	ds_load_u8 v26, v25 offset:4992
	ds_load_u8 v27, v25 offset:4736
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v26, v27, v26, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v53, v26, 16, v0
	ds_load_u8 v0, v25 offset:11648
	ds_load_u8 v26, v25 offset:11392
	v_wmma_i32_16x16x16_iu8 v[17:24], v[53:56], v[57:60], v[17:24] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v26, v0, 0xc0c0004
	ds_load_u8 v26, v25 offset:12160
	ds_load_u8 v27, v25 offset:11904
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v26, v27, v26, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v60, v26, 16, v0
	ds_load_u8 v0, v25 offset:10624
	ds_load_u8 v26, v25 offset:10368
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v26, v0, 0xc0c0004
	ds_load_u8 v26, v25 offset:11136
	ds_load_u8 v27, v25 offset:10880
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v26, v27, v26, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v59, v26, 16, v0
	ds_load_u8 v0, v25 offset:9600
	ds_load_u8 v26, v25 offset:9344
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v26, v0, 0xc0c0004
	ds_load_u8 v26, v25 offset:10112
	ds_load_u8 v27, v25 offset:9856
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v26, v27, v26, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v58, v26, 16, v0
	ds_load_u8 v0, v25 offset:8576
	ds_load_u8 v26, v25 offset:8320
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v26, v0, 0xc0c0004
	ds_load_u8 v26, v25 offset:9088
	ds_load_u8 v27, v25 offset:8832
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v26, v27, v26, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v57, v26, 16, v0
	ds_load_u8 v0, v25 offset:15744
	ds_load_u8 v26, v25 offset:15488
	v_wmma_i32_16x16x16_iu8 v[17:24], v[57:60], v[65:68], v[17:24] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v26, v0, 0xc0c0004
	ds_load_u8 v26, v25 offset:16256
	ds_load_u8 v27, v25 offset:16000
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v26, v27, v26, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v68, v26, 16, v0
	ds_load_u8 v0, v25 offset:14720
	ds_load_u8 v26, v25 offset:14464
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v26, v0, 0xc0c0004
	ds_load_u8 v26, v25 offset:15232
	ds_load_u8 v27, v25 offset:14976
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v26, v27, v26, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v67, v26, 16, v0
	ds_load_u8 v0, v25 offset:13696
	ds_load_u8 v26, v25 offset:13440
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v26, v0, 0xc0c0004
	ds_load_u8 v26, v25 offset:14208
	ds_load_u8 v27, v25 offset:13952
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v26, v27, v26, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v66, v26, 16, v0
	ds_load_u8 v0, v25 offset:12672
	ds_load_u8 v26, v25 offset:12416
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v26, v0, 0xc0c0004
	ds_load_u8 v26, v25 offset:13184
	ds_load_u8 v25, v25 offset:12928
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v25, v25, v26, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v65, v25, 16, v0
	ds_load_u8 v0, v159 offset:432
	ds_load_u8 v25, v159 offset:400
	v_wmma_i32_16x16x16_iu8 v[17:24], v[65:68], v[81:84], v[17:24] neg_lo:[1,1,0]
	v_cvt_f32_i32_e32 v17, v17
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v25, v0, 0xc0c0004
	ds_load_u8 v25, v159 offset:496
	ds_load_u8 v26, v159 offset:464
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v25, v26, v25, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v84, v25, 16, v0
	ds_load_u8 v0, v159 offset:304
	ds_load_u8 v25, v159 offset:272
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v25, v0, 0xc0c0004
	ds_load_u8 v25, v159 offset:368
	ds_load_u8 v26, v159 offset:336
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v25, v26, v25, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v83, v25, 16, v0
	ds_load_u8 v0, v159 offset:176
	ds_load_u8 v25, v159 offset:144
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v25, v0, 0xc0c0004
	ds_load_u8 v25, v159 offset:240
	ds_load_u8 v26, v159 offset:208
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v25, v26, v25, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v82, v25, 16, v0
	ds_load_u8 v0, v159 offset:48
	ds_load_u8 v25, v159 offset:16
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v25, v0, 0xc0c0004
	ds_load_u8 v25, v159 offset:112
	ds_load_u8 v26, v159 offset:80
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v25, v26, v25, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v81, v25, 16, v0
	v_wmma_i32_16x16x16_iu8 v[25:32], v[69:72], v[81:84], v[1:8] neg_lo:[1,1,0]
	ds_load_u8 v0, v159 offset:944
	ds_load_u8 v69, v159 offset:912
	v_wmma_i32_16x16x16_iu8 v[1:8], v[49:52], v[81:84], v[1:8] neg_lo:[1,1,0]
	v_cvt_f32_i32_e32 v49, v14
	v_cvt_f32_i32_e32 v50, v15
	v_cvt_f32_i32_e32 v15, v18
	v_cvt_f32_i32_e32 v18, v19
	v_cvt_f32_i32_e32 v19, v20
	v_cvt_f32_i32_e32 v20, v21
	v_cvt_f32_i32_e32 v21, v22
	v_cvt_f32_i32_e32 v22, v23
	v_cvt_f32_i32_e32 v23, v24
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v69, v0, 0xc0c0004
	ds_load_u8 v69, v161
	ds_load_u8 v70, v159 offset:976
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v69, v70, v69, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v72, v69, 16, v0
	ds_load_u8 v0, v159 offset:816
	ds_load_u8 v69, v159 offset:784
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v69, v0, 0xc0c0004
	ds_load_u8 v69, v159 offset:880
	ds_load_u8 v70, v159 offset:848
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v69, v70, v69, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v71, v69, 16, v0
	ds_load_u8 v0, v159 offset:688
	ds_load_u8 v69, v159 offset:656
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v69, v0, 0xc0c0004
	ds_load_u8 v69, v159 offset:752
	ds_load_u8 v70, v159 offset:720
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v69, v70, v69, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v70, v69, 16, v0
	ds_load_u8 v0, v159 offset:560
	ds_load_u8 v69, v159 offset:528
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v69, v0, 0xc0c0004
	ds_load_u8 v69, v159 offset:624
	ds_load_u8 v85, v159 offset:592
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v69, v85, v69, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v69, v69, 16, v0
	v_wmma_i32_16x16x16_iu8 v[25:32], v[73:76], v[69:72], v[25:32] neg_lo:[1,1,0]
	ds_load_u8 v0, v159 offset:1456
	ds_load_u8 v73, v159 offset:1424
	v_wmma_i32_16x16x16_iu8 v[1:8], v[53:56], v[69:72], v[1:8] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v73, v0, 0xc0c0004
	ds_load_u8 v73, v159 offset:1520
	ds_load_u8 v74, v159 offset:1488
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v73, v74, v73, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v76, v73, 16, v0
	ds_load_u8 v0, v159 offset:1328
	ds_load_u8 v73, v159 offset:1296
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v73, v0, 0xc0c0004
	ds_load_u8 v73, v159 offset:1392
	ds_load_u8 v74, v159 offset:1360
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v73, v74, v73, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v75, v73, 16, v0
	ds_load_u8 v0, v159 offset:1200
	ds_load_u8 v73, v159 offset:1168
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v73, v0, 0xc0c0004
	ds_load_u8 v73, v159 offset:1264
	ds_load_u8 v74, v159 offset:1232
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v73, v74, v73, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v74, v73, 16, v0
	ds_load_u8 v0, v159 offset:1072
	ds_load_u8 v73, v159 offset:1040
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v73, v0, 0xc0c0004
	ds_load_u8 v73, v159 offset:1136
	ds_load_u8 v85, v159 offset:1104
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v73, v85, v73, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v73, v73, 16, v0
	v_wmma_i32_16x16x16_iu8 v[25:32], v[77:80], v[73:76], v[25:32] neg_lo:[1,1,0]
	ds_load_u8 v0, v159 offset:1968
	ds_load_u8 v77, v159 offset:1936
	v_wmma_i32_16x16x16_iu8 v[1:8], v[57:60], v[73:76], v[1:8] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v77, v0, 0xc0c0004
	ds_load_u8 v77, v160
	ds_load_u8 v78, v159 offset:2000
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v77, v78, v77, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v80, v77, 16, v0
	ds_load_u8 v0, v159 offset:1840
	ds_load_u8 v77, v159 offset:1808
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v77, v0, 0xc0c0004
	ds_load_u8 v77, v159 offset:1904
	ds_load_u8 v78, v159 offset:1872
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v77, v78, v77, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v79, v77, 16, v0
	ds_load_u8 v0, v159 offset:1712
	ds_load_u8 v77, v159 offset:1680
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v77, v0, 0xc0c0004
	ds_load_u8 v77, v159 offset:1776
	ds_load_u8 v78, v159 offset:1744
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v77, v78, v77, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v78, v77, 16, v0
	ds_load_u8 v0, v159 offset:1584
	ds_load_u8 v77, v159 offset:1552
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v77, v0, 0xc0c0004
	ds_load_u8 v77, v159 offset:1648
	ds_load_u8 v85, v159 offset:1616
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v77, v85, v77, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v77, v77, 16, v0
	v_wmma_i32_16x16x16_iu8 v[25:32], v[61:64], v[77:80], v[25:32] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[1:8], v[65:68], v[77:80], v[1:8] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cvt_f32_i32_e32 v24, v25
	v_cvt_f32_i32_e32 v25, v26
	s_delay_alu instid0(VALU_DEP_4)
	v_cvt_f32_i32_e32 v26, v27
	v_cvt_f32_i32_e32 v27, v28
	v_cvt_f32_i32_e32 v28, v29
	v_cvt_f32_i32_e32 v29, v30
	v_cvt_f32_i32_e32 v30, v31
	v_cvt_f32_i32_e32 v31, v32
	v_cvt_f32_i32_e32 v32, v1
	v_cvt_f32_i32_e32 v51, v2
	v_cvt_f32_i32_e32 v52, v3
	v_cvt_f32_i32_e32 v4, v4
	v_cvt_f32_i32_e32 v5, v5
	v_cvt_f32_i32_e32 v6, v6
	v_cvt_f32_i32_e32 v7, v7
	v_cvt_f32_i32_e32 v8, v8
.LBB0_12:
	.loc	1 362 29                        ; generate_amdgcn.py:362:29
	s_ashr_i32 s5, s42, 31
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	s_mov_b32 s22, s10
	.loc	1 362 29                        ; generate_amdgcn.py:362:29
	s_lshr_b32 s5, s5, 24
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	s_mov_b32 s23, s11
	.loc	1 362 29                        ; generate_amdgcn.py:362:29
	s_add_i32 s5, s42, s5
	v_mov_b16_e32 v3.l, 0
	s_ashr_i32 s5, s5, 8
	.loc	1 364 22                        ; generate_amdgcn.py:364:22
	s_waitcnt vmcnt(0)
	v_mov_b16_e64 v3.h, v158.l
	.loc	1 366 40                        ; generate_amdgcn.py:366:40
	s_mul_i32 s6, s5, s35
	.loc	1 363 34                        ; generate_amdgcn.py:363:34
	s_cmp_lt_i32 s5, s41
	.loc	1 364 22                        ; generate_amdgcn.py:364:22
	v_add_lshl_u32 v0, v222, s5, 1
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_add_lshl_u32 v1, v240, s6, 1
	.loc	1 363 34                        ; generate_amdgcn.py:363:34
	s_cselect_b32 s6, -1, 0
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	s_waitcnt lgkmcnt(0)
	v_mul_f32_e32 v54, v48, v3
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_and_b32 vcc_lo, s2, s6
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_dual_mul_f32 v55, v47, v3 :: v_dual_cndmask_b32 v0, 0x80000000, v0
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_cndmask_b32_e32 v1, 0x80000000, v1, vcc_lo
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v54, v54, v154, v111
	v_fma_f32 v55, v55, v153, v118
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	buffer_load_u16 v14, v1, s[20:23], 0 offen
	.loc	1 364 22                        ; generate_amdgcn.py:364:22
	v_add_lshl_u32 v1, v241, s5, 1
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v59, v44, v3
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v72, v118, v55, s3
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 364 22                        ; generate_amdgcn.py:364:22
	v_cndmask_b32_e32 v1, 0x80000000, v1, vcc_lo
	s_clause 0x1
	buffer_load_u16 v0, v0, s[8:11], 0 offen
	buffer_load_u16 v57, v1, s[8:11], 0 offen
	.loc	1 392 23                        ; generate_amdgcn.py:392:23
	v_mad_u64_u32 v[1:2], null, s40, s35, v[240:241]
	.loc	1 392 9 is_stmt 0               ; generate_amdgcn.py:392:9
	v_lshlrev_b32_e32 v2, 2, v221
	v_cmp_eq_u32_e32 vcc_lo, 0, v134
	.loc	1 368 24 is_stmt 1              ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v56, v46, v3
	v_mul_f32_e32 v60, v43, v3
	v_mul_f32_e32 v61, v42, v3
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_and_b32_e32 v71, 0x3f8, v2
	v_cndmask_b32_e64 v53, 0x840, 0, vcc_lo
	v_ashrrev_i32_e32 v2, 31, v1
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v56, v56, v152, v117
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_xor_b32_e32 v53, v53, v71
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v71, v111, v54, s3
	v_cndmask_b32_e64 v73, v117, v56, s3
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_lshl_or_b32 v76, v133, 11, v53
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v58, v45, v3
	.loc	1 364 22                        ; generate_amdgcn.py:364:22
	s_waitcnt vmcnt(1)
	v_lshlrev_b32_e32 v0, 16, v0
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v62, v41, v3
	v_mul_f32_e32 v63, v40, v3
	v_mul_f32_e32 v64, v39, v3
	v_mul_f32_e32 v65, v38, v3
	v_mul_f32_e32 v66, v37, v3
	v_mul_f32_e32 v67, v36, v3
	v_mul_f32_e32 v68, v35, v3
	v_mul_f32_e32 v69, v34, v3
	v_mul_f32_e32 v70, v33, v3
	.loc	1 364 22                        ; generate_amdgcn.py:364:22
	v_mov_b16_e64 v3.h, v157.l
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v61, v61, v148, v113
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v48, v48, v3
	v_mul_f32_e32 v47, v47, v3
	v_mul_f32_e32 v46, v46, v3
	v_mul_f32_e32 v45, v45, v3
	v_mul_f32_e32 v44, v44, v3
	v_mul_f32_e32 v43, v43, v3
	v_mul_f32_e32 v42, v42, v3
	v_mul_f32_e32 v41, v41, v3
	v_mul_f32_e32 v40, v40, v3
	v_mul_f32_e32 v39, v39, v3
	v_mul_f32_e32 v38, v38, v3
	v_mul_f32_e32 v37, v37, v3
	v_mul_f32_e32 v36, v36, v3
	v_mul_f32_e32 v35, v35, v3
	v_mul_f32_e32 v34, v34, v3
	v_mul_f32_e32 v33, v33, v3
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_lshlrev_b64 v[2:3], 2, v[1:2]
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v43, v43, v130, v97
	v_fma_f32 v42, v42, v129, v96
	v_fma_f32 v41, v41, v128, v95
	v_fma_f32 v40, v40, v127, v94
	v_fma_f32 v39, v39, v126, v93
	v_fma_f32 v75, v34, v121, v88
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_add_co_u32 v34, vcc_lo, s0, v2
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_lshlrev_b32_e32 v2, 16, v14
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v54, v38, v125, v92
	v_fma_f32 v55, v37, v124, v91
	v_fma_f32 v56, v36, v123, v90
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v80, v97, v43, s3
	v_cndmask_b32_e64 v81, v96, v42, s3
	v_cndmask_b32_e64 v82, v95, v41, s3
	v_cndmask_b32_e64 v83, v94, v40, s3
	v_cndmask_b32_e64 v14, v93, v39, s3
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	ds_store_b32 v156, v2 offset:36864
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[36:39], v155 offset:36864
	ds_load_b128 v[40:43], v155 offset:36880
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v33, v33, v131, v87
	v_fma_f32 v48, v48, v138, v102
	v_fma_f32 v47, v47, v137, v101
	v_fma_f32 v46, v46, v136, v100
	v_fma_f32 v45, v45, v135, v99
	v_fma_f32 v44, v44, v132, v98
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v2, v87, v33, s3
	.loc	1 364 22                        ; generate_amdgcn.py:364:22
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v33, 16, v57
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v77, v100, v46, s3
	v_cndmask_b32_e64 v78, v99, v45, s3
	v_cndmask_b32_e64 v79, v98, v44, s3
	v_cndmask_b32_e64 v84, v92, v54, s3
	v_cndmask_b32_e64 v85, v91, v55, s3
	v_cndmask_b32_e64 v86, v90, v56, s3
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	ds_load_b128 v[53:56], v155 offset:37392
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v60, v60, v149, v114
	v_fma_f32 v59, v59, v150, v115
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_add_nc_u32_e32 v87, 0, v76
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	s_waitcnt lgkmcnt(2)
	v_mul_f32_e32 v57, v36, v0
	s_waitcnt lgkmcnt(1)
	v_mul_f32_e32 v97, v40, v0
	v_mul_f32_e32 v40, v40, v33
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v74, v35, v122, v89
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_add_co_ci_u32_e64 v35, null, s1, v3, vcc_lo
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v3, v102, v48, s3
	v_cndmask_b32_e64 v48, v101, v47, s3
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	ds_load_b128 v[44:47], v155 offset:37376
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v62, v62, v147, v112
	v_fma_f32 v66, v66, v143, v107
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v98, v41, v0
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v67, v67, v142, v106
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v99, v42, v0
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v68, v68, v141, v105
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v100, v43, v0
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v69, v69, v140, v104
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v96, v39, v0
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v65, v65, v144, v108
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v95, v38, v0
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v64, v64, v145, v109
	v_fma_f32 v58, v58, v151, v116
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v94, v37, v0
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v63, v63, v146, v110
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v62, v112, v62, s3
	v_cndmask_b32_e64 v66, v107, v66, s3
	v_cndmask_b32_e64 v67, v106, v67, s3
	v_cndmask_b32_e64 v68, v105, v68, s3
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	s_waitcnt lgkmcnt(0)
	v_mul_f32_e32 v101, v44, v0
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v70, v70, v139, v103
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v69, v104, v69, s3
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v102, v45, v0
	v_mul_f32_e32 v104, v47, v0
	v_mul_f32_e32 v105, v53, v0
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v70, v103, v70, s3
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v103, v46, v0
	v_mul_f32_e32 v106, v54, v0
	v_mul_f32_e32 v107, v55, v0
	v_mul_f32_e32 v0, v56, v0
	v_mul_f32_e32 v36, v36, v33
	v_mul_f32_e32 v39, v39, v33
	v_mul_f32_e32 v44, v44, v33
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v61, v113, v61, s3
	v_cndmask_b32_e64 v75, v88, v75, s3
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v37, v37, v33
	v_mul_f32_e32 v45, v45, v33
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v60, v114, v60, s3
	v_cndmask_b32_e64 v65, v108, v65, s3
	v_cndmask_b32_e64 v74, v89, v74, s3
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v38, v38, v33
	v_mul_f32_e32 v41, v41, v33
	v_mul_f32_e32 v46, v46, v33
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v59, v115, v59, s3
	v_cndmask_b32_e64 v64, v109, v64, s3
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v42, v42, v33
	v_mul_f32_e32 v47, v47, v33
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v58, v116, v58, s3
	v_cndmask_b32_e64 v63, v110, v63, s3
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v43, v43, v33
	v_mul_f32_e32 v53, v53, v33
	v_mul_f32_e32 v54, v54, v33
	v_mul_f32_e32 v55, v55, v33
	v_mul_f32_e32 v33, v56, v33
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v9, v57, v9, v2
	v_fma_f32 v17, v101, v17, v82
	v_fma_f32 v19, v104, v19, v79
	v_fma_f32 v0, v0, v23, v3
	v_fma_f32 v23, v36, v24, v70
	v_fma_f32 v27, v39, v27, v67
	v_fma_f32 v39, v44, v32, v62
	v_fma_f32 v10, v94, v10, v75
	v_fma_f32 v15, v102, v15, v81
	v_fma_f32 v21, v106, v21, v77
	v_fma_f32 v25, v37, v25, v69
	v_fma_f32 v37, v40, v28, v66
	v_fma_f32 v40, v45, v51, v61
	v_fma_f32 v11, v95, v11, v74
	v_fma_f32 v56, v103, v18, v80
	v_fma_f32 v36, v38, v26, v68
	v_fma_f32 v29, v41, v29, v65
	v_fma_f32 v41, v46, v52, v60
	v_fma_f32 v12, v96, v12, v86
	v_fma_f32 v38, v42, v30, v64
	v_fma_f32 v42, v47, v4, v59
	v_fma_f32 v13, v97, v13, v85
	v_fma_f32 v57, v105, v20, v78
	v_fma_f32 v31, v43, v31, v63
	v_fma_f32 v43, v53, v5, v58
	v_fma_f32 v49, v98, v49, v84
	v_fma_f32 v50, v99, v50, v14
	v_fma_f32 v16, v100, v16, v83
	v_fma_f32 v94, v107, v22, v48
	v_fma_f32 v44, v54, v6, v73
	v_fma_f32 v45, v55, v7, v72
	v_fma_f32 v33, v33, v8, v71
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v2, v2, v9, s2
	v_cndmask_b32_e64 v18, v82, v17, s2
	v_cndmask_b32_e64 v24, v79, v19, s2
	v_cndmask_b32_e64 v32, v3, v0, s2
	v_cndmask_b32_e64 v3, v70, v23, s2
	v_cndmask_b32_e64 v19, v62, v39, s2
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_xad_u32 v88, v76, 8, 0
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v4, v75, v10, s2
	v_cndmask_b32_e64 v20, v81, v15, s2
	v_cndmask_b32_e64 v28, v77, v21, s2
	v_cndmask_b32_e64 v5, v69, v25, s2
	v_cndmask_b32_e64 v21, v61, v40, s2
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_xad_u32 v89, v76, 16, 0
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v6, v74, v11, s2
	v_cndmask_b32_e64 v22, v80, v56, s2
	v_cndmask_b32_e64 v7, v68, v36, s2
	v_cndmask_b32_e64 v23, v60, v41, s2
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_xad_u32 v90, v76, 24, 0
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v8, v86, v12, s2
	v_cndmask_b32_e64 v9, v67, v27, s2
	v_cndmask_b32_e64 v25, v59, v42, s2
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_xad_u32 v91, v76, 32, 0
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v10, v85, v13, s2
	v_cndmask_b32_e64 v26, v78, v57, s2
	v_cndmask_b32_e64 v11, v66, v37, s2
	v_cndmask_b32_e64 v27, v58, v43, s2
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_xad_u32 v92, v76, 40, 0
	v_xad_u32 v93, v76, 48, 0
	v_xad_u32 v76, v76, 56, 0
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v12, v84, v49, s2
	v_cndmask_b32_e64 v14, v14, v50, s2
	v_cndmask_b32_e64 v16, v83, v16, s2
	v_cndmask_b32_e64 v30, v48, v94, s2
	v_cndmask_b32_e64 v13, v65, v29, s2
	v_cndmask_b32_e64 v15, v64, v38, s2
	v_cndmask_b32_e64 v17, v63, v31, s2
	v_cndmask_b32_e64 v29, v73, v44, s2
	v_cndmask_b32_e64 v31, v72, v45, s2
	v_cndmask_b32_e64 v33, v71, v33, s2
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	ds_store_2addr_stride64_b64 v87, v[2:3], v[18:19] offset1:2
	ds_store_2addr_stride64_b64 v88, v[4:5], v[20:21] offset1:2
	ds_store_2addr_stride64_b64 v89, v[6:7], v[22:23] offset1:2
	ds_store_2addr_stride64_b64 v90, v[8:9], v[24:25] offset1:2
	ds_store_2addr_stride64_b64 v91, v[10:11], v[26:27] offset1:2
	ds_store_2addr_stride64_b64 v92, v[12:13], v[28:29] offset1:2
	ds_store_2addr_stride64_b64 v93, v[14:15], v[30:31] offset1:2
	ds_store_2addr_stride64_b64 v76, v[16:17], v[32:33] offset1:2
	s_waitcnt lgkmcnt(0)
	s_barrier
	global_load_b32 v37, v[34:35], off
	v_lshlrev_b32_e32 v0, 3, v220
	v_lshlrev_b32_e32 v2, 2, v133
	v_lshlrev_b32_e32 v3, 6, v134
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_or3_b32 v0, v0, v3, v2
	v_add_nc_u32_e32 v2, 0, v0
	v_xad_u32 v3, 0x840, v0, 0
	v_xad_u32 v4, 0x1008, v0, 0
	v_xad_u32 v5, 0x1848, v0, 0
	v_xad_u32 v6, 0x2010, v0, 0
	v_xad_u32 v7, 0x2850, v0, 0
	v_xad_u32 v8, 0x3018, v0, 0
	v_xad_u32 v9, 0x3858, v0, 0
	ds_load_b64 v[32:33], v2
	ds_load_b64 v[30:31], v3
	ds_load_b64 v[28:29], v4
	ds_load_b64 v[26:27], v5
	ds_load_b64 v[24:25], v6
	ds_load_b64 v[22:23], v7
	ds_load_b64 v[20:21], v8
	ds_load_b64 v[18:19], v9
	v_xad_u32 v2, 0x4020, v0, 0
	v_xad_u32 v3, 0x4860, v0, 0
	v_xad_u32 v4, 0x5028, v0, 0
	v_xad_u32 v5, 0x5868, v0, 0
	v_xad_u32 v6, 0x6030, v0, 0
	v_xad_u32 v7, 0x6870, v0, 0
	v_xad_u32 v36, 0x7038, v0, 0
	v_xad_u32 v0, 0x7878, v0, 0
	ds_load_b64 v[16:17], v2
	ds_load_b64 v[14:15], v3
	ds_load_b64 v[12:13], v4
	ds_load_b64 v[10:11], v5
	ds_load_b64 v[8:9], v6
	ds_load_b64 v[6:7], v7
	ds_load_b64 v[4:5], v36
	ds_load_b64 v[2:3], v0
.LBB0_13:                               ; %atomicrmw.start182
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0) lgkmcnt(15)
	v_add_f32_e32 v36, v37, v32
	global_atomic_cmpswap_b32 v0, v[34:35], v[36:37], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v0, v37
	v_mov_b32_e32 v37, v0
	s_or_b32 s4, vcc_lo, s4
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s4
	s_cbranch_execnz .LBB0_13
; %bb.14:                               ; %atomicrmw.end181
	.loc	1 0 9 is_stmt 0                 ; generate_amdgcn.py:0:9
	s_or_b32 exec_lo, exec_lo, s4
	.loc	1 392 23                        ; generate_amdgcn.py:392:23
	v_add_nc_u32_e32 v34, s35, v1
	s_mov_b32 s2, 0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_ashrrev_i32_e32 v35, 31, v34
	v_lshlrev_b64 v[34:35], 2, v[34:35]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add_co_u32 v34, vcc_lo, s0, v34
	v_add_co_ci_u32_e64 v35, null, s1, v35, vcc_lo
	global_load_b32 v37, v[34:35], off
.LBB0_15:                               ; %atomicrmw.start176
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0) lgkmcnt(14)
	v_add_f32_e32 v36, v37, v30
	global_atomic_cmpswap_b32 v0, v[34:35], v[36:37], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v0, v37
	v_mov_b32_e32 v37, v0
	s_or_b32 s2, vcc_lo, s2
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s2
	s_cbranch_execnz .LBB0_15
; %bb.16:                               ; %atomicrmw.end175
	.loc	1 0 9                           ; generate_amdgcn.py:0:9
	s_or_b32 exec_lo, exec_lo, s2
	.loc	1 392 23                        ; generate_amdgcn.py:392:23
	v_lshl_add_u32 v34, s35, 1, v1
	s_mov_b32 s2, 0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_ashrrev_i32_e32 v35, 31, v34
	v_lshlrev_b64 v[34:35], 2, v[34:35]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add_co_u32 v34, vcc_lo, s0, v34
	v_add_co_ci_u32_e64 v35, null, s1, v35, vcc_lo
	global_load_b32 v37, v[34:35], off
.LBB0_17:                               ; %atomicrmw.start170
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0) lgkmcnt(13)
	v_add_f32_e32 v36, v37, v28
	global_atomic_cmpswap_b32 v0, v[34:35], v[36:37], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v0, v37
	v_mov_b32_e32 v37, v0
	s_or_b32 s2, vcc_lo, s2
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s2
	s_cbranch_execnz .LBB0_17
; %bb.18:                               ; %atomicrmw.end169
	.loc	1 0 9                           ; generate_amdgcn.py:0:9
	s_or_b32 exec_lo, exec_lo, s2
	.loc	1 392 23                        ; generate_amdgcn.py:392:23
	s_waitcnt lgkmcnt(0)
	v_mad_u64_u32 v[34:35], null, s35, 3, v[1:2]
	s_mov_b32 s2, 0
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_ashrrev_i32_e32 v35, 31, v34
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[34:35], 2, v[34:35]
	v_add_co_u32 v34, vcc_lo, s0, v34
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v35, null, s1, v35, vcc_lo
	global_load_b32 v37, v[34:35], off
.LBB0_19:                               ; %atomicrmw.start164
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v36, v37, v26
	global_atomic_cmpswap_b32 v0, v[34:35], v[36:37], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v0, v37
	v_mov_b32_e32 v37, v0
	s_or_b32 s2, vcc_lo, s2
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s2
	s_cbranch_execnz .LBB0_19
; %bb.20:                               ; %atomicrmw.end163
	.loc	1 0 9                           ; generate_amdgcn.py:0:9
	s_or_b32 exec_lo, exec_lo, s2
	.loc	1 392 23                        ; generate_amdgcn.py:392:23
	v_lshl_add_u32 v34, s35, 2, v1
	s_mov_b32 s2, 0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_ashrrev_i32_e32 v35, 31, v34
	v_lshlrev_b64 v[34:35], 2, v[34:35]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add_co_u32 v34, vcc_lo, s0, v34
	v_add_co_ci_u32_e64 v35, null, s1, v35, vcc_lo
	global_load_b32 v37, v[34:35], off
.LBB0_21:                               ; %atomicrmw.start158
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v36, v37, v24
	global_atomic_cmpswap_b32 v0, v[34:35], v[36:37], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v0, v37
	v_mov_b32_e32 v37, v0
	s_or_b32 s2, vcc_lo, s2
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s2
	s_cbranch_execnz .LBB0_21
; %bb.22:                               ; %atomicrmw.end157
	.loc	1 0 9                           ; generate_amdgcn.py:0:9
	s_or_b32 exec_lo, exec_lo, s2
	.loc	1 392 23                        ; generate_amdgcn.py:392:23
	v_mad_u64_u32 v[34:35], null, s35, 5, v[1:2]
	s_mov_b32 s2, 0
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_ashrrev_i32_e32 v35, 31, v34
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[34:35], 2, v[34:35]
	v_add_co_u32 v34, vcc_lo, s0, v34
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v35, null, s1, v35, vcc_lo
	global_load_b32 v37, v[34:35], off
.LBB0_23:                               ; %atomicrmw.start152
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v36, v37, v22
	global_atomic_cmpswap_b32 v0, v[34:35], v[36:37], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v0, v37
	v_mov_b32_e32 v37, v0
	s_or_b32 s2, vcc_lo, s2
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s2
	s_cbranch_execnz .LBB0_23
; %bb.24:                               ; %atomicrmw.end151
	.loc	1 0 9                           ; generate_amdgcn.py:0:9
	s_or_b32 exec_lo, exec_lo, s2
	.loc	1 392 23                        ; generate_amdgcn.py:392:23
	v_mad_u64_u32 v[34:35], null, s35, 6, v[1:2]
	s_mov_b32 s2, 0
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_ashrrev_i32_e32 v35, 31, v34
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[34:35], 2, v[34:35]
	v_add_co_u32 v34, vcc_lo, s0, v34
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v35, null, s1, v35, vcc_lo
	global_load_b32 v37, v[34:35], off
.LBB0_25:                               ; %atomicrmw.start146
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v36, v37, v20
	global_atomic_cmpswap_b32 v0, v[34:35], v[36:37], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v0, v37
	v_mov_b32_e32 v37, v0
	s_or_b32 s2, vcc_lo, s2
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s2
	s_cbranch_execnz .LBB0_25
; %bb.26:                               ; %atomicrmw.end145
	.loc	1 0 9                           ; generate_amdgcn.py:0:9
	s_or_b32 exec_lo, exec_lo, s2
	.loc	1 392 23                        ; generate_amdgcn.py:392:23
	v_mad_u64_u32 v[34:35], null, s35, 7, v[1:2]
	s_mov_b32 s2, 0
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_ashrrev_i32_e32 v35, 31, v34
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[34:35], 2, v[34:35]
	v_add_co_u32 v34, vcc_lo, s0, v34
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v35, null, s1, v35, vcc_lo
	global_load_b32 v37, v[34:35], off
.LBB0_27:                               ; %atomicrmw.start140
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v36, v37, v18
	global_atomic_cmpswap_b32 v0, v[34:35], v[36:37], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v0, v37
	v_mov_b32_e32 v37, v0
	s_or_b32 s2, vcc_lo, s2
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s2
	s_cbranch_execnz .LBB0_27
; %bb.28:                               ; %atomicrmw.end139
	.loc	1 0 9                           ; generate_amdgcn.py:0:9
	s_or_b32 exec_lo, exec_lo, s2
	.loc	1 392 23                        ; generate_amdgcn.py:392:23
	v_lshl_add_u32 v34, s35, 3, v1
	s_mov_b32 s2, 0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_ashrrev_i32_e32 v35, 31, v34
	v_lshlrev_b64 v[34:35], 2, v[34:35]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add_co_u32 v34, vcc_lo, s0, v34
	v_add_co_ci_u32_e64 v35, null, s1, v35, vcc_lo
	global_load_b32 v37, v[34:35], off
.LBB0_29:                               ; %atomicrmw.start134
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v36, v37, v16
	global_atomic_cmpswap_b32 v0, v[34:35], v[36:37], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v0, v37
	v_mov_b32_e32 v37, v0
	s_or_b32 s2, vcc_lo, s2
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s2
	s_cbranch_execnz .LBB0_29
; %bb.30:                               ; %atomicrmw.end133
	.loc	1 0 9                           ; generate_amdgcn.py:0:9
	s_or_b32 exec_lo, exec_lo, s2
	.loc	1 392 23                        ; generate_amdgcn.py:392:23
	v_mad_u64_u32 v[34:35], null, s35, 9, v[1:2]
	s_mov_b32 s2, 0
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_ashrrev_i32_e32 v35, 31, v34
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[34:35], 2, v[34:35]
	v_add_co_u32 v34, vcc_lo, s0, v34
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v35, null, s1, v35, vcc_lo
	global_load_b32 v37, v[34:35], off
.LBB0_31:                               ; %atomicrmw.start128
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v36, v37, v14
	global_atomic_cmpswap_b32 v0, v[34:35], v[36:37], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v0, v37
	v_mov_b32_e32 v37, v0
	s_or_b32 s2, vcc_lo, s2
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s2
	s_cbranch_execnz .LBB0_31
; %bb.32:                               ; %atomicrmw.end127
	.loc	1 0 9                           ; generate_amdgcn.py:0:9
	s_or_b32 exec_lo, exec_lo, s2
	.loc	1 392 23                        ; generate_amdgcn.py:392:23
	v_mad_u64_u32 v[34:35], null, s35, 10, v[1:2]
	s_mov_b32 s2, 0
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_ashrrev_i32_e32 v35, 31, v34
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[34:35], 2, v[34:35]
	v_add_co_u32 v34, vcc_lo, s0, v34
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v35, null, s1, v35, vcc_lo
	global_load_b32 v37, v[34:35], off
.LBB0_33:                               ; %atomicrmw.start122
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v36, v37, v12
	global_atomic_cmpswap_b32 v0, v[34:35], v[36:37], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v0, v37
	v_mov_b32_e32 v37, v0
	s_or_b32 s2, vcc_lo, s2
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s2
	s_cbranch_execnz .LBB0_33
; %bb.34:                               ; %atomicrmw.end121
	.loc	1 0 9                           ; generate_amdgcn.py:0:9
	s_or_b32 exec_lo, exec_lo, s2
	.loc	1 392 23                        ; generate_amdgcn.py:392:23
	v_mad_u64_u32 v[34:35], null, s35, 11, v[1:2]
	s_mov_b32 s2, 0
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_ashrrev_i32_e32 v35, 31, v34
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[34:35], 2, v[34:35]
	v_add_co_u32 v34, vcc_lo, s0, v34
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v35, null, s1, v35, vcc_lo
	global_load_b32 v37, v[34:35], off
.LBB0_35:                               ; %atomicrmw.start116
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v36, v37, v10
	global_atomic_cmpswap_b32 v0, v[34:35], v[36:37], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v0, v37
	v_mov_b32_e32 v37, v0
	s_or_b32 s2, vcc_lo, s2
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s2
	s_cbranch_execnz .LBB0_35
; %bb.36:                               ; %atomicrmw.end115
	.loc	1 0 9                           ; generate_amdgcn.py:0:9
	s_or_b32 exec_lo, exec_lo, s2
	.loc	1 392 23                        ; generate_amdgcn.py:392:23
	v_mad_u64_u32 v[34:35], null, s35, 12, v[1:2]
	s_mov_b32 s2, 0
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_ashrrev_i32_e32 v35, 31, v34
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[34:35], 2, v[34:35]
	v_add_co_u32 v34, vcc_lo, s0, v34
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v35, null, s1, v35, vcc_lo
	global_load_b32 v37, v[34:35], off
.LBB0_37:                               ; %atomicrmw.start110
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v36, v37, v8
	global_atomic_cmpswap_b32 v0, v[34:35], v[36:37], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v0, v37
	v_mov_b32_e32 v37, v0
	s_or_b32 s2, vcc_lo, s2
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s2
	s_cbranch_execnz .LBB0_37
; %bb.38:                               ; %atomicrmw.end109
	.loc	1 0 9                           ; generate_amdgcn.py:0:9
	s_or_b32 exec_lo, exec_lo, s2
	.loc	1 392 23                        ; generate_amdgcn.py:392:23
	v_mad_u64_u32 v[34:35], null, s35, 13, v[1:2]
	s_mov_b32 s2, 0
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_ashrrev_i32_e32 v35, 31, v34
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[34:35], 2, v[34:35]
	v_add_co_u32 v34, vcc_lo, s0, v34
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v35, null, s1, v35, vcc_lo
	global_load_b32 v37, v[34:35], off
.LBB0_39:                               ; %atomicrmw.start104
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v36, v37, v6
	global_atomic_cmpswap_b32 v0, v[34:35], v[36:37], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v0, v37
	v_mov_b32_e32 v37, v0
	s_or_b32 s2, vcc_lo, s2
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s2
	s_cbranch_execnz .LBB0_39
; %bb.40:                               ; %atomicrmw.end103
	.loc	1 0 9                           ; generate_amdgcn.py:0:9
	s_or_b32 exec_lo, exec_lo, s2
	.loc	1 392 23                        ; generate_amdgcn.py:392:23
	v_mad_u64_u32 v[34:35], null, s35, 14, v[1:2]
	s_mov_b32 s2, 0
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_ashrrev_i32_e32 v35, 31, v34
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[34:35], 2, v[34:35]
	v_add_co_u32 v34, vcc_lo, s0, v34
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v35, null, s1, v35, vcc_lo
	global_load_b32 v37, v[34:35], off
.LBB0_41:                               ; %atomicrmw.start98
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v36, v37, v4
	global_atomic_cmpswap_b32 v0, v[34:35], v[36:37], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v0, v37
	v_mov_b32_e32 v37, v0
	s_or_b32 s2, vcc_lo, s2
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s2
	s_cbranch_execnz .LBB0_41
; %bb.42:                               ; %atomicrmw.end97
	.loc	1 0 9                           ; generate_amdgcn.py:0:9
	s_or_b32 exec_lo, exec_lo, s2
	.loc	1 392 23                        ; generate_amdgcn.py:392:23
	v_mad_u64_u32 v[34:35], null, s35, 15, v[1:2]
	s_mov_b32 s2, 0
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_ashrrev_i32_e32 v35, 31, v34
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[34:35], 2, v[34:35]
	v_add_co_u32 v34, vcc_lo, s0, v34
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v35, null, s1, v35, vcc_lo
	global_load_b32 v37, v[34:35], off
.LBB0_43:                               ; %atomicrmw.start92
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v36, v37, v2
	global_atomic_cmpswap_b32 v0, v[34:35], v[36:37], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v0, v37
	v_mov_b32_e32 v37, v0
	s_or_b32 s2, vcc_lo, s2
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s2
	s_cbranch_execnz .LBB0_43
; %bb.44:                               ; %atomicrmw.end91
	.loc	1 0 9                           ; generate_amdgcn.py:0:9
	s_or_b32 exec_lo, exec_lo, s2
	.loc	1 392 23                        ; generate_amdgcn.py:392:23
	v_add_nc_u32_e32 v34, s33, v1
	s_mov_b32 s2, 0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_ashrrev_i32_e32 v35, 31, v34
	v_lshlrev_b64 v[34:35], 2, v[34:35]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add_co_u32 v34, vcc_lo, s0, v34
	v_add_co_ci_u32_e64 v35, null, s1, v35, vcc_lo
	global_load_b32 v37, v[34:35], off
.LBB0_45:                               ; %atomicrmw.start86
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v36, v37, v33
	global_atomic_cmpswap_b32 v0, v[34:35], v[36:37], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v0, v37
	v_mov_b32_e32 v37, v0
	s_or_b32 s2, vcc_lo, s2
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s2
	s_cbranch_execnz .LBB0_45
; %bb.46:                               ; %atomicrmw.end85
	.loc	1 0 9                           ; generate_amdgcn.py:0:9
	s_or_b32 exec_lo, exec_lo, s2
	.loc	1 392 23                        ; generate_amdgcn.py:392:23
	v_mad_u64_u32 v[32:33], null, s35, 17, v[1:2]
	s_mov_b32 s2, 0
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_ashrrev_i32_e32 v33, 31, v32
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[32:33], 2, v[32:33]
	v_add_co_u32 v32, vcc_lo, s0, v32
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v33, null, s1, v33, vcc_lo
	global_load_b32 v35, v[32:33], off
.LBB0_47:                               ; %atomicrmw.start80
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v34, v35, v31
	global_atomic_cmpswap_b32 v0, v[32:33], v[34:35], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v0, v35
	v_mov_b32_e32 v35, v0
	s_or_b32 s2, vcc_lo, s2
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s2
	s_cbranch_execnz .LBB0_47
; %bb.48:                               ; %atomicrmw.end79
	.loc	1 0 9                           ; generate_amdgcn.py:0:9
	s_or_b32 exec_lo, exec_lo, s2
	.loc	1 392 23                        ; generate_amdgcn.py:392:23
	v_mad_u64_u32 v[30:31], null, s35, 18, v[1:2]
	s_mov_b32 s2, 0
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_ashrrev_i32_e32 v31, 31, v30
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[30:31], 2, v[30:31]
	v_add_co_u32 v30, vcc_lo, s0, v30
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v31, null, s1, v31, vcc_lo
	global_load_b32 v33, v[30:31], off
.LBB0_49:                               ; %atomicrmw.start74
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v32, v33, v29
	global_atomic_cmpswap_b32 v0, v[30:31], v[32:33], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v0, v33
	v_mov_b32_e32 v33, v0
	s_or_b32 s2, vcc_lo, s2
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s2
	s_cbranch_execnz .LBB0_49
; %bb.50:                               ; %atomicrmw.end73
	.loc	1 0 9                           ; generate_amdgcn.py:0:9
	s_or_b32 exec_lo, exec_lo, s2
	.loc	1 392 23                        ; generate_amdgcn.py:392:23
	v_mad_u64_u32 v[28:29], null, s35, 19, v[1:2]
	s_mov_b32 s2, 0
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_ashrrev_i32_e32 v29, 31, v28
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[28:29], 2, v[28:29]
	v_add_co_u32 v28, vcc_lo, s0, v28
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v29, null, s1, v29, vcc_lo
	global_load_b32 v31, v[28:29], off
.LBB0_51:                               ; %atomicrmw.start68
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v30, v31, v27
	global_atomic_cmpswap_b32 v0, v[28:29], v[30:31], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v0, v31
	v_mov_b32_e32 v31, v0
	s_or_b32 s2, vcc_lo, s2
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s2
	s_cbranch_execnz .LBB0_51
; %bb.52:                               ; %atomicrmw.end67
	.loc	1 0 9                           ; generate_amdgcn.py:0:9
	s_or_b32 exec_lo, exec_lo, s2
	.loc	1 392 23                        ; generate_amdgcn.py:392:23
	v_mad_u64_u32 v[26:27], null, s35, 20, v[1:2]
	s_mov_b32 s2, 0
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_ashrrev_i32_e32 v27, 31, v26
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[26:27], 2, v[26:27]
	v_add_co_u32 v26, vcc_lo, s0, v26
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v27, null, s1, v27, vcc_lo
	global_load_b32 v29, v[26:27], off
.LBB0_53:                               ; %atomicrmw.start62
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v28, v29, v25
	global_atomic_cmpswap_b32 v0, v[26:27], v[28:29], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v0, v29
	v_mov_b32_e32 v29, v0
	s_or_b32 s2, vcc_lo, s2
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s2
	s_cbranch_execnz .LBB0_53
; %bb.54:                               ; %atomicrmw.end61
	.loc	1 0 9                           ; generate_amdgcn.py:0:9
	s_or_b32 exec_lo, exec_lo, s2
	.loc	1 392 23                        ; generate_amdgcn.py:392:23
	v_mad_u64_u32 v[24:25], null, s35, 21, v[1:2]
	s_mov_b32 s2, 0
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_ashrrev_i32_e32 v25, 31, v24
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[24:25], 2, v[24:25]
	v_add_co_u32 v24, vcc_lo, s0, v24
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v25, null, s1, v25, vcc_lo
	global_load_b32 v27, v[24:25], off
.LBB0_55:                               ; %atomicrmw.start56
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v26, v27, v23
	global_atomic_cmpswap_b32 v0, v[24:25], v[26:27], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v0, v27
	v_mov_b32_e32 v27, v0
	s_or_b32 s2, vcc_lo, s2
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s2
	s_cbranch_execnz .LBB0_55
; %bb.56:                               ; %atomicrmw.end55
	.loc	1 0 9                           ; generate_amdgcn.py:0:9
	s_or_b32 exec_lo, exec_lo, s2
	.loc	1 392 23                        ; generate_amdgcn.py:392:23
	v_mad_u64_u32 v[22:23], null, s35, 22, v[1:2]
	s_mov_b32 s2, 0
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_ashrrev_i32_e32 v23, 31, v22
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[22:23], 2, v[22:23]
	v_add_co_u32 v22, vcc_lo, s0, v22
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v23, null, s1, v23, vcc_lo
	global_load_b32 v25, v[22:23], off
.LBB0_57:                               ; %atomicrmw.start50
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v24, v25, v21
	global_atomic_cmpswap_b32 v0, v[22:23], v[24:25], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v0, v25
	v_mov_b32_e32 v25, v0
	s_or_b32 s2, vcc_lo, s2
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s2
	s_cbranch_execnz .LBB0_57
; %bb.58:                               ; %atomicrmw.end49
	.loc	1 0 9                           ; generate_amdgcn.py:0:9
	s_or_b32 exec_lo, exec_lo, s2
	.loc	1 392 23                        ; generate_amdgcn.py:392:23
	v_mad_u64_u32 v[20:21], null, s35, 23, v[1:2]
	s_mov_b32 s2, 0
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_ashrrev_i32_e32 v21, 31, v20
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[20:21], 2, v[20:21]
	v_add_co_u32 v20, vcc_lo, s0, v20
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v21, null, s1, v21, vcc_lo
	global_load_b32 v23, v[20:21], off
.LBB0_59:                               ; %atomicrmw.start44
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v22, v23, v19
	global_atomic_cmpswap_b32 v0, v[20:21], v[22:23], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v0, v23
	v_mov_b32_e32 v23, v0
	s_or_b32 s2, vcc_lo, s2
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s2
	s_cbranch_execnz .LBB0_59
; %bb.60:                               ; %atomicrmw.end43
	.loc	1 0 9                           ; generate_amdgcn.py:0:9
	s_or_b32 exec_lo, exec_lo, s2
	.loc	1 392 23                        ; generate_amdgcn.py:392:23
	v_mad_u64_u32 v[18:19], null, s35, 24, v[1:2]
	s_mov_b32 s2, 0
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_ashrrev_i32_e32 v19, 31, v18
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[18:19], 2, v[18:19]
	v_add_co_u32 v18, vcc_lo, s0, v18
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v19, null, s1, v19, vcc_lo
	global_load_b32 v21, v[18:19], off
.LBB0_61:                               ; %atomicrmw.start38
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v20, v21, v17
	global_atomic_cmpswap_b32 v0, v[18:19], v[20:21], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v0, v21
	v_mov_b32_e32 v21, v0
	s_or_b32 s2, vcc_lo, s2
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s2
	s_cbranch_execnz .LBB0_61
; %bb.62:                               ; %atomicrmw.end37
	.loc	1 0 9                           ; generate_amdgcn.py:0:9
	s_or_b32 exec_lo, exec_lo, s2
	.loc	1 392 23                        ; generate_amdgcn.py:392:23
	v_mad_u64_u32 v[16:17], null, s35, 25, v[1:2]
	s_mov_b32 s2, 0
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_ashrrev_i32_e32 v17, 31, v16
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[16:17], 2, v[16:17]
	v_add_co_u32 v16, vcc_lo, s0, v16
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v17, null, s1, v17, vcc_lo
	global_load_b32 v19, v[16:17], off
.LBB0_63:                               ; %atomicrmw.start32
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v18, v19, v15
	global_atomic_cmpswap_b32 v0, v[16:17], v[18:19], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v0, v19
	v_mov_b32_e32 v19, v0
	s_or_b32 s2, vcc_lo, s2
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s2
	s_cbranch_execnz .LBB0_63
; %bb.64:                               ; %atomicrmw.end31
	.loc	1 0 9                           ; generate_amdgcn.py:0:9
	s_or_b32 exec_lo, exec_lo, s2
	.loc	1 392 23                        ; generate_amdgcn.py:392:23
	v_mad_u64_u32 v[14:15], null, s35, 26, v[1:2]
	s_mov_b32 s2, 0
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_ashrrev_i32_e32 v15, 31, v14
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[14:15], 2, v[14:15]
	v_add_co_u32 v14, vcc_lo, s0, v14
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v15, null, s1, v15, vcc_lo
	global_load_b32 v17, v[14:15], off
.LBB0_65:                               ; %atomicrmw.start26
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v16, v17, v13
	global_atomic_cmpswap_b32 v0, v[14:15], v[16:17], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v0, v17
	v_mov_b32_e32 v17, v0
	s_or_b32 s2, vcc_lo, s2
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s2
	s_cbranch_execnz .LBB0_65
; %bb.66:                               ; %atomicrmw.end25
	.loc	1 0 9                           ; generate_amdgcn.py:0:9
	s_or_b32 exec_lo, exec_lo, s2
	.loc	1 392 23                        ; generate_amdgcn.py:392:23
	v_mad_u64_u32 v[12:13], null, s35, 27, v[1:2]
	s_mov_b32 s2, 0
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_ashrrev_i32_e32 v13, 31, v12
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[12:13], 2, v[12:13]
	v_add_co_u32 v12, vcc_lo, s0, v12
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v13, null, s1, v13, vcc_lo
	global_load_b32 v15, v[12:13], off
.LBB0_67:                               ; %atomicrmw.start20
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v14, v15, v11
	global_atomic_cmpswap_b32 v0, v[12:13], v[14:15], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v0, v15
	v_mov_b32_e32 v15, v0
	s_or_b32 s2, vcc_lo, s2
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s2
	s_cbranch_execnz .LBB0_67
; %bb.68:                               ; %atomicrmw.end19
	.loc	1 0 9                           ; generate_amdgcn.py:0:9
	s_or_b32 exec_lo, exec_lo, s2
	.loc	1 392 23                        ; generate_amdgcn.py:392:23
	v_mad_u64_u32 v[10:11], null, s35, 28, v[1:2]
	s_mov_b32 s2, 0
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_ashrrev_i32_e32 v11, 31, v10
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[10:11], 2, v[10:11]
	v_add_co_u32 v10, vcc_lo, s0, v10
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v11, null, s1, v11, vcc_lo
	global_load_b32 v13, v[10:11], off
.LBB0_69:                               ; %atomicrmw.start14
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v12, v13, v9
	global_atomic_cmpswap_b32 v0, v[10:11], v[12:13], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v0, v13
	v_mov_b32_e32 v13, v0
	s_or_b32 s2, vcc_lo, s2
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s2
	s_cbranch_execnz .LBB0_69
; %bb.70:                               ; %atomicrmw.end13
	.loc	1 0 9                           ; generate_amdgcn.py:0:9
	s_or_b32 exec_lo, exec_lo, s2
	.loc	1 392 23                        ; generate_amdgcn.py:392:23
	v_mad_u64_u32 v[8:9], null, s35, 29, v[1:2]
	s_mov_b32 s2, 0
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_ashrrev_i32_e32 v9, 31, v8
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[8:9], 2, v[8:9]
	v_add_co_u32 v8, vcc_lo, s0, v8
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v9, null, s1, v9, vcc_lo
	global_load_b32 v11, v[8:9], off
.LBB0_71:                               ; %atomicrmw.start8
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v10, v11, v7
	global_atomic_cmpswap_b32 v0, v[8:9], v[10:11], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v0, v11
	v_mov_b32_e32 v11, v0
	s_or_b32 s2, vcc_lo, s2
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s2
	s_cbranch_execnz .LBB0_71
; %bb.72:                               ; %atomicrmw.end7
	.loc	1 0 9                           ; generate_amdgcn.py:0:9
	s_or_b32 exec_lo, exec_lo, s2
	.loc	1 392 23                        ; generate_amdgcn.py:392:23
	v_mad_u64_u32 v[6:7], null, s35, 30, v[1:2]
	s_mov_b32 s2, 0
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_ashrrev_i32_e32 v7, 31, v6
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[6:7], 2, v[6:7]
	v_add_co_u32 v6, vcc_lo, s0, v6
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v7, null, s1, v7, vcc_lo
	global_load_b32 v9, v[6:7], off
.LBB0_73:                               ; %atomicrmw.start2
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v8, v9, v5
	global_atomic_cmpswap_b32 v0, v[6:7], v[8:9], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v0, v9
	v_mov_b32_e32 v9, v0
	s_or_b32 s2, vcc_lo, s2
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s2
	s_cbranch_execnz .LBB0_73
; %bb.74:                               ; %atomicrmw.end1
	.loc	1 0 9                           ; generate_amdgcn.py:0:9
	s_or_b32 exec_lo, exec_lo, s2
	.loc	1 392 23                        ; generate_amdgcn.py:392:23
	v_mad_u64_u32 v[0:1], null, s35, 31, v[1:2]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_ashrrev_i32_e32 v1, 31, v0
	v_lshlrev_b64 v[0:1], 2, v[0:1]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add_co_u32 v0, vcc_lo, s0, v0
	v_add_co_ci_u32_e64 v1, null, s1, v1, vcc_lo
	s_mov_b32 s0, 0
	global_load_b32 v5, v[0:1], off
.LBB0_75:                               ; %atomicrmw.start
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v4, v5, v3
	global_atomic_cmpswap_b32 v2, v[0:1], v[4:5], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v2, v5
	v_mov_b32_e32 v5, v2
	s_or_b32 s0, vcc_lo, s0
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s0
	s_cbranch_execnz .LBB0_75
; %bb.76:                               ; %atomicrmw.end
	.loc	1 283 1 is_stmt 1               ; generate_amdgcn.py:283:1
	s_endpgm
.Ltmp20:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_int8xint8_tn_sc256_none_bm32_bn256_bk64_gm4_w8_s3_weu2_sk4_evenk
		.amdhsa_group_segment_fixed_size 0
		.amdhsa_private_segment_fixed_size 64
		.amdhsa_kernarg_size 80
		.amdhsa_user_sgpr_count 2
		.amdhsa_user_sgpr_dispatch_ptr 0
		.amdhsa_user_sgpr_queue_ptr 0
		.amdhsa_user_sgpr_kernarg_segment_ptr 1
		.amdhsa_user_sgpr_dispatch_id 0
		.amdhsa_user_sgpr_private_segment_size 0
		.amdhsa_wavefront_size32 1
		.amdhsa_uses_dynamic_stack 0
		.amdhsa_enable_private_segment 1
		.amdhsa_system_sgpr_workgroup_id_x 1
		.amdhsa_system_sgpr_workgroup_id_y 1
		.amdhsa_system_sgpr_workgroup_id_z 0
		.amdhsa_system_sgpr_workgroup_info 0
		.amdhsa_system_vgpr_workitem_id 0
		.amdhsa_next_free_vgpr 256
		.amdhsa_next_free_sgpr 47
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
	.size	amd_strix_halo_gfx1151_int8xint8_tn_sc256_none_bm32_bn256_bk64_gm4_w8_s3_weu2_sk4_evenk, .Lfunc_end0-amd_strix_halo_gfx1151_int8xint8_tn_sc256_none_bm32_bn256_bk64_gm4_w8_s3_weu2_sk4_evenk
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_int8xint8_tn_sc256_none_bm32_bn256_bk64_gm4_w8_s3_weu2_sk4_evenk.num_vgpr, 256
	.set amd_strix_halo_gfx1151_int8xint8_tn_sc256_none_bm32_bn256_bk64_gm4_w8_s3_weu2_sk4_evenk.num_agpr, 0
	.set amd_strix_halo_gfx1151_int8xint8_tn_sc256_none_bm32_bn256_bk64_gm4_w8_s3_weu2_sk4_evenk.numbered_sgpr, 47
	.set amd_strix_halo_gfx1151_int8xint8_tn_sc256_none_bm32_bn256_bk64_gm4_w8_s3_weu2_sk4_evenk.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_int8xint8_tn_sc256_none_bm32_bn256_bk64_gm4_w8_s3_weu2_sk4_evenk.private_seg_size, 64
	.set amd_strix_halo_gfx1151_int8xint8_tn_sc256_none_bm32_bn256_bk64_gm4_w8_s3_weu2_sk4_evenk.uses_vcc, 1
	.set amd_strix_halo_gfx1151_int8xint8_tn_sc256_none_bm32_bn256_bk64_gm4_w8_s3_weu2_sk4_evenk.uses_flat_scratch, 1
	.set amd_strix_halo_gfx1151_int8xint8_tn_sc256_none_bm32_bn256_bk64_gm4_w8_s3_weu2_sk4_evenk.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_int8xint8_tn_sc256_none_bm32_bn256_bk64_gm4_w8_s3_weu2_sk4_evenk.has_recursion, 0
	.set amd_strix_halo_gfx1151_int8xint8_tn_sc256_none_bm32_bn256_bk64_gm4_w8_s3_weu2_sk4_evenk.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 22728
; TotalNumSgprs: 49
; NumVgprs: 256
; ScratchSize: 64
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 31
; NumSGPRsForWavesPerEU: 49
; NumVGPRsForWavesPerEU: 256
; Occupancy: 5
; WaveLimiterHint : 0
; COMPUTE_PGM_RSRC2:SCRATCH_EN: 1
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
	.asciz	"amd_strix_halo_gfx1151_int8xint8_tn_sc256_none_bm32_bn256_bk64_gm4_w8_s3_weu2_sk4_evenk"             ; string offset=75 ; amd_strix_halo_gfx1151_int8xint8_tn_sc256_none_bm32_bn256_bk64_gm4_w8_s3_weu2_sk4_evenk
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
    .name:           amd_strix_halo_gfx1151_int8xint8_tn_sc256_none_bm32_bn256_bk64_gm4_w8_s3_weu2_sk4_evenk
    .private_segment_fixed_size: 64
    .sgpr_count:     49
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_int8xint8_tn_sc256_none_bm32_bn256_bk64_gm4_w8_s3_weu2_sk4_evenk.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     256
    .vgpr_spill_count: 15
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
