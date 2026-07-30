	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_int8xint8_nt_sc128_none_bm64_bn256_bk64_gm4_w8_s3_weu2_sk8_maskk               ; -- Begin function amd_strix_halo_gfx1151_int8xint8_nt_sc128_none_bm64_bn256_bk64_gm4_w8_s3_weu2_sk8_maskk
	.p2align	8
	.type	amd_strix_halo_gfx1151_int8xint8_nt_sc128_none_bm64_bn256_bk64_gm4_w8_s3_weu2_sk8_maskk,@function
amd_strix_halo_gfx1151_int8xint8_nt_sc128_none_bm64_bn256_bk64_gm4_w8_s3_weu2_sk8_maskk:                      ; @amd_strix_halo_gfx1151_int8xint8_nt_sc128_none_bm64_bn256_bk64_gm4_w8_s3_weu2_sk8_maskk
.Lfunc_begin0:
	.file	1 "<repo>/scripts" "generate_amdgcn.py"
	.loc	1 309 0                         ; generate_amdgcn.py:309:0
	.cfi_sections .debug_frame
	.cfi_startproc
; %bb.0:
	s_clause 0x1
	s_load_b64 s[22:23], s[0:1], 0x30
	s_load_b32 s26, s[0:1], 0x38
.Ltmp0:
	.loc	1 319 16 prologue_end           ; generate_amdgcn.py:319:16
	s_abs_i32 s6, s2
.Ltmp1:
	.file	2 "<triton>/python/triton/language" "standard.py"
	.loc	2 43 13                         ; standard.py:43:13 @[ generate_amdgcn.py:317:17 ]
	s_waitcnt lgkmcnt(0)
	s_add_i32 s4, s23, 0xff
.Ltmp2:
	.loc	2 43 13 is_stmt 0               ; standard.py:43:13 @[ generate_amdgcn.py:316:17 ]
	s_add_i32 s7, s22, 63
.Ltmp3:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:317:17 ]
	s_ashr_i32 s5, s4, 31
.Ltmp4:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:316:17 ]
	s_ashr_i32 s9, s7, 31
.Ltmp5:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:317:17 ]
	s_lshr_b32 s5, s5, 24
.Ltmp6:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:316:17 ]
	s_lshr_b32 s9, s9, 26
.Ltmp7:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:317:17 ]
	s_add_i32 s4, s4, s5
.Ltmp8:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:316:17 ]
	s_add_i32 s7, s7, s9
.Ltmp9:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:317:17 ]
	s_ashr_i32 s4, s4, 8
.Ltmp10:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:316:17 ]
	s_ashr_i32 s7, s7, 6
.Ltmp11:
	.loc	1 318 24 is_stmt 1              ; generate_amdgcn.py:318:24
	s_lshl_b32 s12, s4, 2
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	.loc	1 319 16                        ; generate_amdgcn.py:319:16
	s_abs_i32 s4, s12
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
	s_xor_b32 s8, s2, s12
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
	s_sub_i32 s13, s4, s8
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 320 19                        ; generate_amdgcn.py:320:19
	s_lshl_b32 s18, s13, 2
	.loc	1 322 29                        ; generate_amdgcn.py:322:29
	s_mul_i32 s13, s13, s12
	.loc	1 321 31                        ; generate_amdgcn.py:321:31
	s_sub_i32 s14, s7, s18
	.loc	1 322 29                        ; generate_amdgcn.py:322:29
	s_sub_i32 s2, s2, s13
	.loc	1 321 20                        ; generate_amdgcn.py:321:20
	s_min_i32 s16, s14, 4
	s_load_b256 s[4:11], s[0:1], 0x0
	.loc	1 323 13                        ; generate_amdgcn.py:323:13
	s_abs_i32 s14, s16
	s_xor_b32 s13, s2, s16
	s_cvt_f32_u32 s15, s14
	s_sub_i32 s17, 0, s14
	s_ashr_i32 s13, s13, 31
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_iflag_f32_e32 v1, s15
	v_readfirstlane_b32 s15, v1
	s_waitcnt lgkmcnt(0)
	s_mov_b64 s[28:29], s[6:7]
	s_mov_b32 s7, 0x31027000
	s_mul_f32 s15, s15, 0x4f7ffffe
	s_mov_b32 s6, 0x7ffffffe
	.loc	1 376 22                        ; generate_amdgcn.py:376:22
	s_mov_b32 s31, s7
	s_mov_b32 s30, s6
	.loc	1 323 13                        ; generate_amdgcn.py:323:13
	s_cvt_u32_f32 s15, s15
	s_mov_b64 s[24:25], s[10:11]
	s_delay_alu instid0(SALU_CYCLE_2) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_mul_i32 s17, s17, s15
	s_mul_hi_u32 s12, s15, s17
	s_abs_i32 s17, s2
	s_add_i32 s15, s15, s12
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_mul_hi_u32 s12, s17, s15
	s_mul_i32 s15, s12, s14
	s_delay_alu instid0(SALU_CYCLE_1)
	s_sub_i32 s15, s17, s15
	s_add_i32 s17, s12, 1
	s_sub_i32 s19, s15, s14
	s_cmp_ge_u32 s15, s14
	s_cselect_b32 s12, s17, s12
	s_cselect_b32 s15, s19, s15
	s_add_i32 s17, s12, 1
	s_cmp_ge_u32 s15, s14
	s_cselect_b32 s12, s17, s12
.Ltmp12:
	.loc	2 43 13                         ; standard.py:43:13 @[ generate_amdgcn.py:387:30 ]
	s_add_i32 s17, s26, 0x7f
.Ltmp13:
	.loc	1 323 13                        ; generate_amdgcn.py:323:13
	s_xor_b32 s14, s12, s13
	.loc	1 368 22                        ; generate_amdgcn.py:368:22
	s_lshl_b32 s27, s3, 6
	.loc	1 323 13                        ; generate_amdgcn.py:323:13
	s_sub_i32 s12, s14, s13
.Ltmp14:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:387:30 ]
	s_ashr_i32 s3, s17, 31
.Ltmp15:
	.loc	1 322 28                        ; generate_amdgcn.py:322:28
	s_mul_i32 s19, s12, s16
.Ltmp16:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:387:30 ]
	s_lshr_b32 s3, s3, 25
.Ltmp17:
	.loc	1 322 28                        ; generate_amdgcn.py:322:28
	s_sub_i32 s2, s2, s19
.Ltmp18:
	.loc	2 43 13                         ; standard.py:43:13 @[ generate_amdgcn.py:333:28 ]
	s_add_i32 s15, s26, 0x1ff
.Ltmp19:
	.loc	1 322 13                        ; generate_amdgcn.py:322:13
	s_add_i32 s2, s2, s18
	.loc	1 326 14                        ; generate_amdgcn.py:326:14
	s_lshl_b32 s16, s12, 8
.Ltmp20:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:387:30 ]
	s_add_i32 s17, s17, s3
.Ltmp21:
	.loc	1 325 14                        ; generate_amdgcn.py:325:14
	s_lshl_b32 s22, s2, 6
	.loc	1 376 30                        ; generate_amdgcn.py:376:30
	s_mul_i32 s12, s16, s26
	.loc	1 333 5                         ; generate_amdgcn.py:333:5
	s_cmpk_gt_i32 s15, 0x1ff
	s_cselect_b32 s3, -1, 0
	.loc	1 376 30                        ; generate_amdgcn.py:376:30
	s_add_i32 s12, s12, s27
	v_mov_b32_e32 v17, v0
	.loc	1 374 22                        ; generate_amdgcn.py:374:22
	s_and_b32 s5, s5, 0xffff
	.loc	1 376 22                        ; generate_amdgcn.py:376:22
	s_and_b32 s29, s29, 0xffff
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 325 32                        ; generate_amdgcn.py:325:32
	v_lshlrev_b32_e32 v241, 4, v17
	v_lshrrev_b32_e32 v2, 2, v17
	v_and_b32_e32 v245, 48, v241
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 326 32                        ; generate_amdgcn.py:326:32
	v_or_b32_e32 v3, 0xc0, v2
	.loc	1 374 30                        ; generate_amdgcn.py:374:30
	v_mad_u64_u32 v[4:5], null, s26, v2, v[245:246]
	.loc	1 368 17                        ; generate_amdgcn.py:368:17
	v_or_b32_e32 v5, s27, v245
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 376 30                        ; generate_amdgcn.py:376:30
	v_mul_lo_u32 v1, s26, v3
	.loc	1 369 23                        ; generate_amdgcn.py:369:23
	v_cmp_gt_i32_e32 vcc_lo, s26, v5
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 374 30                        ; generate_amdgcn.py:374:30
	v_mad_u64_u32 v[5:6], null, s22, s26, v[4:5]
	.loc	1 376 30                        ; generate_amdgcn.py:376:30
	v_lshl_add_u32 v7, s26, 6, v4
	v_lshl_add_u32 v8, s26, 7, v4
	v_add_nc_u32_e32 v4, s12, v4
	.loc	1 333 5                         ; generate_amdgcn.py:333:5
	s_and_b32 vcc_lo, vcc_lo, s3
	s_cmpk_gt_i32 s15, 0x3ff
	.loc	1 376 30                        ; generate_amdgcn.py:376:30
	v_add_nc_u32_e32 v6, s12, v7
	.loc	1 333 5                         ; generate_amdgcn.py:333:5
	s_cselect_b32 s2, -1, 0
	.loc	1 368 17                        ; generate_amdgcn.py:368:17
	s_add_i32 s35, s27, 0x200
	.loc	1 376 30                        ; generate_amdgcn.py:376:30
	v_add_nc_u32_e32 v9, s12, v8
	.loc	1 374 30                        ; generate_amdgcn.py:374:30
	v_add_nc_u32_e32 v10, s27, v5
	.loc	1 376 30                        ; generate_amdgcn.py:376:30
	v_add_nc_u32_e32 v13, 0x200, v4
	.loc	1 376 22 is_stmt 0              ; generate_amdgcn.py:376:22
	v_cndmask_b32_e32 v4, 0x80000000, v4, vcc_lo
	.loc	1 376 30                        ; generate_amdgcn.py:376:30
	v_add3_u32 v1, v1, v245, s12
	.loc	1 368 17 is_stmt 1              ; generate_amdgcn.py:368:17
	v_or_b32_e32 v16, s35, v245
	.loc	1 376 30                        ; generate_amdgcn.py:376:30
	s_addk_i32 s12, 0x200
	.loc	1 374 22                        ; generate_amdgcn.py:374:22
	v_cndmask_b32_e32 v10, 0x80000000, v10, vcc_lo
	.loc	1 376 22                        ; generate_amdgcn.py:376:22
	v_dual_cndmask_b32 v6, 0x80000000, v6 :: v_dual_cndmask_b32 v15, 0x80000000, v9
	.loc	1 376 30 is_stmt 0              ; generate_amdgcn.py:376:30
	v_add_nc_u32_e32 v14, 0x200, v1
	v_add_nc_u32_e32 v8, s12, v8
	.loc	1 376 22                        ; generate_amdgcn.py:376:22
	v_cndmask_b32_e32 v1, 0x80000000, v1, vcc_lo
	.loc	1 369 23 is_stmt 1              ; generate_amdgcn.py:369:23
	v_cmp_gt_i32_e32 vcc_lo, s26, v16
	.loc	1 374 30                        ; generate_amdgcn.py:374:30
	v_add_nc_u32_e32 v5, s35, v5
	.loc	1 376 30                        ; generate_amdgcn.py:376:30
	v_add_nc_u32_e32 v7, s12, v7
	.loc	1 376 22 is_stmt 0              ; generate_amdgcn.py:376:22
	s_clause 0x3
	buffer_load_b128 v[22:25], v4, s[28:31], 0 offen
	buffer_load_b128 v[26:29], v6, s[28:31], 0 offen
	buffer_load_b128 v[30:33], v15, s[28:31], 0 offen
	buffer_load_b128 v[34:37], v1, s[28:31], 0 offen
	.loc	1 374 22 is_stmt 1              ; generate_amdgcn.py:374:22
	buffer_load_b128 v[9:12], v10, s[4:7], 0 offen
	.loc	1 333 5                         ; generate_amdgcn.py:333:5
	s_and_b32 vcc_lo, vcc_lo, s2
	.loc	1 374 22                        ; generate_amdgcn.py:374:22
	v_lshlrev_b32_e32 v243, 1, v17
	v_cndmask_b32_e32 v1, 0x80000000, v5, vcc_lo
	.loc	1 376 22                        ; generate_amdgcn.py:376:22
	v_dual_cndmask_b32 v4, 0x80000000, v13 :: v_dual_cndmask_b32 v5, 0x80000000, v7
	v_dual_cndmask_b32 v6, 0x80000000, v8 :: v_dual_cndmask_b32 v7, 0x80000000, v14
	.loc	1 374 22                        ; generate_amdgcn.py:374:22
	buffer_load_b128 v[38:41], v1, s[4:7], 0 offen
	.loc	1 376 22                        ; generate_amdgcn.py:376:22
	s_clause 0x3
	buffer_load_b128 v[42:45], v4, s[28:31], 0 offen
	buffer_load_b128 v[46:49], v5, s[28:31], 0 offen
	buffer_load_b128 v[50:53], v6, s[28:31], 0 offen
	buffer_load_b128 v[54:57], v7, s[28:31], 0 offen
	.loc	1 374 22                        ; generate_amdgcn.py:374:22
	v_and_b32_e32 v1, 48, v243
	.loc	1 325 32                        ; generate_amdgcn.py:325:32
	v_and_b32_e32 v4, 15, v17
	v_lshlrev_b32_e32 v5, 3, v17
	v_lshlrev_b32_e32 v15, 5, v17
	s_mov_b32 s12, 0
	.loc	1 374 22                        ; generate_amdgcn.py:374:22
	v_xor_b32_e32 v16, v241, v1
	.loc	1 325 32                        ; generate_amdgcn.py:325:32
	v_or_b32_e32 v6, 16, v4
	v_or_b32_e32 v7, 32, v4
	v_or_b32_e32 v8, 48, v4
	.loc	1 333 5                         ; generate_amdgcn.py:333:5
	s_cmpk_gt_i32 s15, 0x5ff
	.loc	1 374 22                        ; generate_amdgcn.py:374:22
	v_add_nc_u32_e32 v1, 0, v16
	s_waitcnt vmcnt(5)
	ds_store_b128 v1, v[9:12] offset:32768
	.loc	1 376 22                        ; generate_amdgcn.py:376:22
	ds_store_b128 v1, v[22:25]
	ds_store_b128 v1, v[26:29] offset:4096
	ds_store_b128 v1, v[30:33] offset:8192
	ds_store_b128 v1, v[34:37] offset:12288
	.loc	1 374 22                        ; generate_amdgcn.py:374:22
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_waitcnt vmcnt(4)
	ds_store_b128 v1, v[38:41] offset:36864
	.loc	1 376 22                        ; generate_amdgcn.py:376:22
	s_waitcnt vmcnt(3)
	ds_store_b128 v1, v[42:45] offset:16384
	s_waitcnt vmcnt(2)
	ds_store_b128 v1, v[46:49] offset:20480
	s_waitcnt vmcnt(1)
	ds_store_b128 v1, v[50:53] offset:24576
	s_waitcnt vmcnt(0)
	ds_store_b128 v1, v[54:57] offset:28672
	.loc	1 333 5                         ; generate_amdgcn.py:333:5
	s_cbranch_scc1 .LBB0_2
; %bb.1:                                ; %.._crit_edge_crit_edge
	.loc	1 374 22                        ; generate_amdgcn.py:374:22
	v_and_b32_e32 v9, 48, v5
	.loc	1 376 22                        ; generate_amdgcn.py:376:22
	v_lshlrev_b32_e32 v1, 5, v17
	s_mov_b32 s10, 0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 374 22                        ; generate_amdgcn.py:374:22
	v_lshl_or_b32 v91, v4, 6, v9
	.loc	1 376 22                        ; generate_amdgcn.py:376:22
	v_and_b32_e32 v242, 0x1c00, v1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 374 22                        ; generate_amdgcn.py:374:22
	v_xor_b32_e32 v92, 16, v91
	.loc	1 376 22                        ; generate_amdgcn.py:376:22
	v_or_b32_e32 v94, v91, v242
	.loc	1 374 22                        ; generate_amdgcn.py:374:22
	v_xor_b32_e32 v93, 32, v91
	v_xor_b32_e32 v90, 48, v91
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 376 22                        ; generate_amdgcn.py:376:22
	v_xor_b32_e32 v95, 16, v94
	v_xor_b32_e32 v96, 32, v94
	v_xor_b32_e32 v97, 48, v94
	s_branch .LBB0_3
.LBB0_2:
	.loc	1 0 22 is_stmt 0                ; generate_amdgcn.py:0:22
	s_mov_b32 s10, -1
                                        ; implicit-def: $vgpr91
                                        ; implicit-def: $vgpr92
                                        ; implicit-def: $vgpr93
                                        ; implicit-def: $vgpr90
                                        ; implicit-def: $vgpr1
                                        ; implicit-def: $vgpr242
                                        ; implicit-def: $vgpr94
                                        ; implicit-def: $vgpr95
                                        ; implicit-def: $vgpr96
                                        ; implicit-def: $vgpr97
.LBB0_3:                                ; %Flow96
	s_load_b64 s[20:21], s[0:1], 0x20
	v_or_b32_e32 v9, s22, v4
	v_or_b32_e32 v6, s22, v6
	v_or_b32_e32 v7, s22, v7
	v_or_b32_e32 v8, s22, v8
	s_ashr_i32 s1, s17, 7
	v_or_b32_e32 v18, s16, v17
	v_mul_lo_u32 v34, v9, s1
	v_mul_lo_u32 v0, v6, s1
	v_mul_lo_u32 v35, v7, s1
	v_mul_lo_u32 v36, v8, s1
	v_and_b32_e32 v14, 0xf0, v17
	v_and_b32_e32 v13, 28, v243
	s_and_not1_b32 vcc_lo, exec_lo, s10
	s_cbranch_vccnz .LBB0_7
; %bb.4:                                ; %.lr.ph
	v_dual_mov_b32 v22, 0 :: v_dual_and_b32 v1, 48, v5
	.loc	1 333 5 is_stmt 1               ; generate_amdgcn.py:333:5
	s_lshl_b32 s10, s14, 8
	s_lshl_b32 s11, s13, 8
	v_or_b32_e32 v3, s10, v3
	s_delay_alu instid0(VALU_DEP_2)
	v_lshl_or_b32 v91, v4, 6, v1
	v_or_b32_e32 v1, s10, v2
.Ltmp22:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:333:28 ]
	s_lshr_b32 s0, s15, 9
	s_mov_b32 s13, s12
.Ltmp23:
	.loc	1 333 5                         ; generate_amdgcn.py:333:5
	v_subrev_nc_u32_e32 v3, s11, v3
	s_mov_b32 s14, s12
	v_subrev_nc_u32_e32 v1, s11, v1
	s_mov_b32 s15, s12
	s_mov_b32 s16, s12
	s_mov_b32 s17, s12
	s_mov_b32 s18, s12
	v_or_b32_e32 v6, 0x80, v1
	v_or_b32_e32 v7, 64, v1
	s_mov_b32 s19, s12
	v_lshlrev_b32_e32 v4, 2, v14
	v_and_b32_e32 v5, 32, v15
	v_add_nc_u32_e32 v2, s22, v2
	v_mul_lo_u32 v3, s26, v3
	v_mul_lo_u32 v1, s26, v1
	v_and_b32_e32 v242, 0x1c00, v15
	v_add3_u32 v9, 0, v4, v5
	v_mul_lo_u32 v4, s26, v6
	v_mul_lo_u32 v5, s26, v7
	v_mul_lo_u32 v2, s26, v2
	v_lshlrev_b32_e32 v10, 1, v14
	v_add3_u32 v98, v3, v245, 0x400
	v_add3_u32 v101, v1, v245, 0x400
	v_xor_b32_e32 v92, 16, v91
	v_xor_b32_e32 v93, 32, v91
	v_add3_u32 v99, v4, v245, 0x400
	v_add3_u32 v100, v5, v245, 0x400
	v_add3_u32 v102, v2, v245, 0x400
	v_mov_b32_e32 v1, s12
	v_or_b32_e32 v94, v91, v242
	v_xor_b32_e32 v90, 48, v91
	v_or_b32_e32 v103, 0x400, v245
	v_dual_mov_b32 v2, s13 :: v_dual_mov_b32 v3, s14
	s_delay_alu instid0(VALU_DEP_4)
	v_xor_b32_e32 v95, 16, v94
	v_xor_b32_e32 v96, 32, v94
	v_xor_b32_e32 v97, 48, v94
	v_dual_mov_b32 v5, s16 :: v_dual_mov_b32 v6, s17
	v_mov_b32_e32 v23, 0
	v_dual_mov_b32 v7, s18 :: v_dual_mov_b32 v4, s15
	v_dual_mov_b32 v8, s19 :: v_dual_add_nc_u32 v105, 0, v10
	v_dual_mov_b32 v25, 0 :: v_dual_add_nc_u32 v104, v9, v13
	v_dual_mov_b32 v27, 0 :: v_dual_mov_b32 v24, 0
	v_dual_mov_b32 v29, 0 :: v_dual_mov_b32 v26, 0
	v_dual_mov_b32 v31, 0 :: v_dual_mov_b32 v28, 0
	v_dual_mov_b32 v33, 0 :: v_dual_mov_b32 v30, 0
	v_dual_mov_b32 v37, 0 :: v_dual_mov_b32 v32, 0
	v_dual_mov_b32 v39, 0 :: v_dual_mov_b32 v38, 0
	v_dual_mov_b32 v43, 0 :: v_dual_mov_b32 v40, 0
	v_dual_mov_b32 v45, 0 :: v_dual_mov_b32 v42, 0
	v_dual_mov_b32 v47, 0 :: v_dual_mov_b32 v44, 0
	v_dual_mov_b32 v49, 0 :: v_dual_mov_b32 v46, 0
	v_dual_mov_b32 v51, 0 :: v_dual_mov_b32 v48, 0
	v_dual_mov_b32 v53, 0 :: v_dual_mov_b32 v50, 0
	v_dual_mov_b32 v55, 0 :: v_dual_mov_b32 v52, 0
	v_dual_mov_b32 v57, 0 :: v_dual_mov_b32 v54, 0
	v_dual_mov_b32 v59, 0 :: v_dual_mov_b32 v56, 0
	v_dual_mov_b32 v61, 0 :: v_dual_mov_b32 v58, 0
	v_dual_mov_b32 v63, 0 :: v_dual_mov_b32 v60, 0
	v_dual_mov_b32 v65, 0 :: v_dual_mov_b32 v62, 0
	v_dual_mov_b32 v67, 0 :: v_dual_mov_b32 v64, 0
	v_dual_mov_b32 v69, 0 :: v_dual_mov_b32 v66, 0
	v_dual_mov_b32 v71, 0 :: v_dual_mov_b32 v68, 0
	v_dual_mov_b32 v73, 0 :: v_dual_mov_b32 v70, 0
	v_dual_mov_b32 v75, 0 :: v_dual_mov_b32 v72, 0
	v_dual_mov_b32 v77, 0 :: v_dual_mov_b32 v74, 0
	v_dual_mov_b32 v79, 0 :: v_dual_mov_b32 v76, 0
	v_dual_mov_b32 v81, 0 :: v_dual_mov_b32 v78, 0
	v_dual_mov_b32 v83, 0 :: v_dual_mov_b32 v80, 0
	v_dual_mov_b32 v85, 0 :: v_dual_mov_b32 v84, 0
	v_dual_mov_b32 v87, 0 :: v_dual_mov_b32 v86, 0
	v_dual_mov_b32 v89, 0 :: v_dual_mov_b32 v88, 0
	v_mov_b32_e32 v82, 0
	s_mov_b32 s39, 0x31027000
	s_mov_b32 s38, 0x7ffffffe
	s_and_b32 s37, s9, 0xffff
	s_mov_b32 s36, s8
	s_and_b32 s41, s25, 0xffff
	s_mov_b32 s40, s24
	s_mov_b32 s11, 1
	s_add_i32 s10, s0, -2
	s_add_i32 s0, 0, 0x8000
	s_add_i32 s33, 0, 0x9000
	s_add_i32 s34, 0, 0x4000
	s_mov_b32 s30, s6
	s_mov_b32 s31, s7
	s_mov_b32 s42, s38
	s_mov_b32 s43, s39
.LBB0_5:                                ; =>This Inner Loop Header: Depth=1
	.loc	1 0 5 is_stmt 0                 ; generate_amdgcn.py:0:5
	s_mov_b32 s13, s27
	.loc	1 376 22 is_stmt 1              ; generate_amdgcn.py:376:22
	v_add_nc_u32_e32 v21, s12, v94
	.loc	1 369 23                        ; generate_amdgcn.py:369:23
	v_add_nc_u32_e32 v9, s13, v103
	.loc	1 374 22                        ; generate_amdgcn.py:374:22
	v_add_nc_u32_e32 v10, s13, v102
	v_add_nc_u32_e32 v19, s0, v91
	.loc	1 376 22                        ; generate_amdgcn.py:376:22
	v_add_nc_u32_e32 v106, s12, v95
	.loc	1 374 22                        ; generate_amdgcn.py:374:22
	v_add_nc_u32_e32 v20, s0, v92
	.loc	1 369 23                        ; generate_amdgcn.py:369:23
	v_cmp_gt_i32_e32 vcc_lo, s26, v9
	.loc	1 374 22                        ; generate_amdgcn.py:374:22
	v_cndmask_b32_e32 v9, 0x80000000, v10, vcc_lo
	buffer_load_b128 v[9:12], v9, s[4:7], 0 offen
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 376 22                        ; generate_amdgcn.py:376:22
	ds_load_b128 v[171:174], v21 offset:8192
	ds_load_b128 v[175:178], v106 offset:8192
	.loc	1 374 22                        ; generate_amdgcn.py:374:22
	ds_load_b128 v[123:126], v19
	.loc	1 376 22                        ; generate_amdgcn.py:376:22
	ds_load_b128 v[163:166], v21
	.loc	1 374 22                        ; generate_amdgcn.py:374:22
	ds_load_b128 v[127:130], v20
	.loc	1 376 22                        ; generate_amdgcn.py:376:22
	ds_load_b128 v[167:170], v106
	.loc	1 374 22                        ; generate_amdgcn.py:374:22
	ds_load_b128 v[139:142], v19 offset:1024
	ds_load_b128 v[143:146], v20 offset:1024
	ds_load_b128 v[155:158], v19 offset:2048
	ds_load_b128 v[159:162], v20 offset:2048
	ds_load_b128 v[179:182], v19 offset:3072
	ds_load_b128 v[183:186], v20 offset:3072
	v_add_nc_u32_e32 v19, s0, v93
	.loc	1 376 22                        ; generate_amdgcn.py:376:22
	v_add_nc_u32_e32 v20, s12, v96
	.loc	1 376 30 is_stmt 0              ; generate_amdgcn.py:376:30
	v_add_nc_u32_e32 v21, s13, v99
	.loc	1 379 19 is_stmt 1              ; generate_amdgcn.py:379:19
	s_waitcnt lgkmcnt(8)
	v_wmma_i32_16x16x16_iu8 v[107:114], v[163:166], v[123:126], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[115:122], v[171:174], v[123:126], v[1:8] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(5)
	v_wmma_i32_16x16x16_iu8 v[131:138], v[171:174], v[139:142], v[1:8] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_wmma_i32_16x16x16_iu8 v[107:114], v[167:170], v[127:130], v[107:114] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[115:122], v[175:178], v[127:130], v[115:122] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[123:130], v[163:166], v[139:142], v[1:8] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(4)
	v_wmma_i32_16x16x16_iu8 v[131:138], v[175:178], v[143:146], v[131:138] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(3)
	v_wmma_i32_16x16x16_iu8 v[147:154], v[171:174], v[155:158], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[123:130], v[167:170], v[143:146], v[123:130] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[139:146], v[163:166], v[155:158], v[1:8] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(2)
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_wmma_i32_16x16x16_iu8 v[147:154], v[175:178], v[159:162], v[147:154] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[139:146], v[167:170], v[159:162], v[139:146] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu8 v[155:162], v[163:166], v[179:182], v[1:8] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	s_delay_alu instid0(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu8 v[155:162], v[167:170], v[183:186], v[155:162] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[163:170], v[171:174], v[179:182], v[1:8] neg_lo:[1,1,0]
	.loc	1 376 22                        ; generate_amdgcn.py:376:22
	ds_load_b128 v[179:182], v20 offset:8192
	.loc	1 379 19                        ; generate_amdgcn.py:379:19
	v_wmma_i32_16x16x16_iu8 v[163:170], v[175:178], v[183:186], v[163:170] neg_lo:[1,1,0]
	.loc	1 374 22                        ; generate_amdgcn.py:374:22
	ds_load_b128 v[171:174], v19
	.loc	1 376 22                        ; generate_amdgcn.py:376:22
	ds_load_b128 v[175:178], v20
	v_add_nc_u32_e32 v20, s12, v97
	.loc	1 379 19                        ; generate_amdgcn.py:379:19
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu8 v[115:122], v[179:182], v[171:174], v[115:122] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu8 v[107:114], v[175:178], v[171:174], v[107:114] neg_lo:[1,1,0]
	.loc	1 374 22                        ; generate_amdgcn.py:374:22
	ds_load_b128 v[171:174], v19 offset:1024
	.loc	1 379 19                        ; generate_amdgcn.py:379:19
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu8 v[123:130], v[175:178], v[171:174], v[123:130] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[131:138], v[179:182], v[171:174], v[131:138] neg_lo:[1,1,0]
	.loc	1 374 22                        ; generate_amdgcn.py:374:22
	ds_load_b128 v[171:174], v19 offset:2048
	.loc	1 379 19                        ; generate_amdgcn.py:379:19
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu8 v[139:146], v[175:178], v[171:174], v[139:146] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[147:154], v[179:182], v[171:174], v[147:154] neg_lo:[1,1,0]
	.loc	1 374 22                        ; generate_amdgcn.py:374:22
	ds_load_b128 v[171:174], v19 offset:3072
	v_add_nc_u32_e32 v19, s0, v90
	.loc	1 388 29                        ; generate_amdgcn.py:388:29
	s_ashr_i32 s0, s27, 31
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_lshr_b32 s0, s0, 25
	s_add_i32 s0, s27, s0
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_ashr_i32 s12, s0, 7
	.loc	1 392 40                        ; generate_amdgcn.py:392:40
	s_mul_i32 s14, s12, s23
	.loc	1 389 34                        ; generate_amdgcn.py:389:34
	s_cmp_lt_i32 s12, s1
	s_cselect_b32 s0, -1, 0
	.loc	1 333 5                         ; generate_amdgcn.py:333:5
	s_add_i32 s11, s11, 1
	s_delay_alu instid0(SALU_CYCLE_1)
	s_cmp_lt_i32 s11, 2
	s_cselect_b32 s11, s11, 0
	s_add_i32 s10, s10, -1
	.loc	1 379 19                        ; generate_amdgcn.py:379:19
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu8 v[155:162], v[175:178], v[171:174], v[155:162] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[163:170], v[179:182], v[171:174], v[163:170] neg_lo:[1,1,0]
	.loc	1 374 22                        ; generate_amdgcn.py:374:22
	ds_load_b128 v[171:174], v19
	.loc	1 376 22                        ; generate_amdgcn.py:376:22
	ds_load_b128 v[175:178], v20
	ds_load_b128 v[179:182], v20 offset:8192
	.loc	1 376 30 is_stmt 0              ; generate_amdgcn.py:376:30
	v_add_nc_u32_e32 v20, s13, v100
	.loc	1 333 5 is_stmt 1               ; generate_amdgcn.py:333:5
	s_addk_i32 s27, 0x200
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 376 22                        ; generate_amdgcn.py:376:22
	v_cndmask_b32_e32 v20, 0x80000000, v20, vcc_lo
	.loc	1 379 19                        ; generate_amdgcn.py:379:19
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu8 v[107:114], v[175:178], v[171:174], v[107:114] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu8 v[115:122], v[179:182], v[171:174], v[115:122] neg_lo:[1,1,0]
	.loc	1 374 22                        ; generate_amdgcn.py:374:22
	ds_load_b128 v[171:174], v19 offset:1024
	.loc	1 379 19                        ; generate_amdgcn.py:379:19
	v_cvt_f32_i32_e32 v107, v107
	v_cvt_f32_i32_e32 v108, v108
	v_cvt_f32_i32_e32 v109, v109
	v_cvt_f32_i32_e32 v110, v110
	v_cvt_f32_i32_e32 v111, v111
	v_cvt_f32_i32_e32 v112, v112
	v_cvt_f32_i32_e32 v113, v113
	v_cvt_f32_i32_e32 v114, v114
	v_cvt_f32_i32_e32 v115, v115
	v_cvt_f32_i32_e32 v116, v116
	v_cvt_f32_i32_e32 v117, v117
	v_cvt_f32_i32_e32 v118, v118
	v_cvt_f32_i32_e32 v119, v119
	v_cvt_f32_i32_e32 v120, v120
	v_cvt_f32_i32_e32 v121, v121
	v_cvt_f32_i32_e32 v122, v122
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu8 v[123:130], v[175:178], v[171:174], v[123:130] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[131:138], v[179:182], v[171:174], v[131:138] neg_lo:[1,1,0]
	.loc	1 374 22                        ; generate_amdgcn.py:374:22
	ds_load_b128 v[171:174], v19 offset:2048
	.loc	1 379 19                        ; generate_amdgcn.py:379:19
	v_cvt_f32_i32_e32 v123, v123
	v_cvt_f32_i32_e32 v124, v124
	v_cvt_f32_i32_e32 v125, v125
	v_cvt_f32_i32_e32 v126, v126
	v_cvt_f32_i32_e32 v127, v127
	v_cvt_f32_i32_e32 v128, v128
	v_cvt_f32_i32_e32 v129, v129
	v_cvt_f32_i32_e32 v130, v130
	v_cvt_f32_i32_e32 v131, v131
	v_cvt_f32_i32_e32 v132, v132
	v_cvt_f32_i32_e32 v133, v133
	v_cvt_f32_i32_e32 v134, v134
	v_cvt_f32_i32_e32 v135, v135
	v_cvt_f32_i32_e32 v136, v136
	v_cvt_f32_i32_e32 v137, v137
	v_cvt_f32_i32_e32 v138, v138
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu8 v[139:146], v[175:178], v[171:174], v[139:146] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[147:154], v[179:182], v[171:174], v[147:154] neg_lo:[1,1,0]
	.loc	1 374 22                        ; generate_amdgcn.py:374:22
	ds_load_b128 v[171:174], v19 offset:3072
	.loc	1 392 22                        ; generate_amdgcn.py:392:22
	v_add_lshl_u32 v19, v18, s14, 1
	.loc	1 379 19                        ; generate_amdgcn.py:379:19
	v_cvt_f32_i32_e32 v139, v139
	v_cvt_f32_i32_e32 v140, v140
	v_cvt_f32_i32_e32 v141, v141
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 392 22                        ; generate_amdgcn.py:392:22
	v_cndmask_b32_e64 v19, 0x80000000, v19, s0
	.loc	1 379 19                        ; generate_amdgcn.py:379:19
	v_cvt_f32_i32_e32 v142, v142
	v_cvt_f32_i32_e32 v143, v143
	v_cvt_f32_i32_e32 v144, v144
	v_cvt_f32_i32_e32 v145, v145
	.loc	1 392 22                        ; generate_amdgcn.py:392:22
	buffer_load_u16 v19, v19, s[40:43], 0 offen
	.loc	1 379 19                        ; generate_amdgcn.py:379:19
	v_cvt_f32_i32_e32 v146, v146
	v_cvt_f32_i32_e32 v147, v147
	v_cvt_f32_i32_e32 v148, v148
	v_cvt_f32_i32_e32 v149, v149
	v_cvt_f32_i32_e32 v150, v150
	v_cvt_f32_i32_e32 v151, v151
	v_cvt_f32_i32_e32 v152, v152
	v_cvt_f32_i32_e32 v153, v153
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu8 v[163:170], v[179:182], v[171:174], v[163:170] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[155:162], v[175:178], v[171:174], v[155:162] neg_lo:[1,1,0]
	.loc	1 390 22                        ; generate_amdgcn.py:390:22
	v_add_lshl_u32 v171, v0, s12, 1
	v_add_lshl_u32 v172, v35, s12, 1
	v_add_lshl_u32 v173, v36, s12, 1
	.loc	1 379 19                        ; generate_amdgcn.py:379:19
	v_cvt_f32_i32_e32 v106, v170
	.loc	1 376 22                        ; generate_amdgcn.py:376:22
	v_add_nc_u32_e32 v170, s13, v98
	.loc	1 390 22                        ; generate_amdgcn.py:390:22
	v_cndmask_b32_e64 v171, 0x80000000, v171, s0
	v_cndmask_b32_e64 v172, 0x80000000, v172, s0
	v_cndmask_b32_e64 v173, 0x80000000, v173, s0
	.loc	1 379 19                        ; generate_amdgcn.py:379:19
	v_cvt_f32_i32_e32 v154, v154
	v_cvt_f32_i32_e32 v155, v155
	v_cvt_f32_i32_e32 v156, v156
	v_cvt_f32_i32_e32 v157, v157
	v_cvt_f32_i32_e32 v158, v158
	v_cvt_f32_i32_e32 v159, v159
	v_cvt_f32_i32_e32 v160, v160
	v_cvt_f32_i32_e32 v161, v161
	v_cvt_f32_i32_e32 v162, v162
	v_cvt_f32_i32_e32 v163, v163
	v_cvt_f32_i32_e32 v164, v164
	v_cvt_f32_i32_e32 v165, v165
	v_cvt_f32_i32_e32 v166, v166
	v_cvt_f32_i32_e32 v167, v167
	v_cvt_f32_i32_e32 v168, v168
	v_cvt_f32_i32_e32 v169, v169
	.loc	1 376 22                        ; generate_amdgcn.py:376:22
	v_cndmask_b32_e32 v182, 0x80000000, v170, vcc_lo
	.loc	1 390 22                        ; generate_amdgcn.py:390:22
	v_add_lshl_u32 v170, v34, s12, 1
	s_mov_b32 s12, s34
	s_delay_alu instid0(VALU_DEP_1)
	v_cndmask_b32_e64 v170, 0x80000000, v170, s0
	.loc	1 374 22                        ; generate_amdgcn.py:374:22
	s_lshl_b32 s0, s11, 12
	.loc	1 390 22                        ; generate_amdgcn.py:390:22
	s_clause 0x3
	buffer_load_u16 v202, v170, s[36:39], 0 offen
	buffer_load_u16 v203, v171, s[36:39], 0 offen
	buffer_load_u16 v204, v172, s[36:39], 0 offen
	buffer_load_u16 v205, v173, s[36:39], 0 offen
	.loc	1 376 22                        ; generate_amdgcn.py:376:22
	v_cndmask_b32_e32 v21, 0x80000000, v21, vcc_lo
	.loc	1 374 22                        ; generate_amdgcn.py:374:22
	s_add_i32 s14, s0, 0
	.loc	1 376 22                        ; generate_amdgcn.py:376:22
	s_lshl_b32 s0, s11, 14
	s_delay_alu instid0(SALU_CYCLE_1)
	s_add_i32 s34, s0, 0
	s_mov_b32 s0, s33
	.loc	1 374 22                        ; generate_amdgcn.py:374:22
	s_add_i32 s33, s14, 0x8000
	.loc	1 333 5                         ; generate_amdgcn.py:333:5
	s_cmp_lg_u32 s10, 0
	.loc	1 392 22                        ; generate_amdgcn.py:392:22
	s_waitcnt vmcnt(4)
	v_lshlrev_b32_e32 v19, 16, v19
	.loc	1 394 24                        ; generate_amdgcn.py:394:24
	ds_store_b32 v104, v19 offset:40960
	.loc	1 376 30                        ; generate_amdgcn.py:376:30
	v_add_nc_u32_e32 v19, s13, v101
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 376 22 is_stmt 0              ; generate_amdgcn.py:376:22
	v_cndmask_b32_e32 v19, 0x80000000, v19, vcc_lo
	s_clause 0x3
	buffer_load_b128 v[170:173], v19, s[28:31], 0 offen
	buffer_load_b128 v[174:177], v20, s[28:31], 0 offen
	buffer_load_b128 v[178:181], v21, s[28:31], 0 offen
	buffer_load_b128 v[182:185], v182, s[28:31], 0 offen
	.loc	1 394 24 is_stmt 1              ; generate_amdgcn.py:394:24
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[186:189], v105 offset:40960
	ds_load_b128 v[190:193], v105 offset:40976
	ds_load_b128 v[194:197], v105 offset:41472
	ds_load_b128 v[198:201], v105 offset:41488
	.loc	1 374 22                        ; generate_amdgcn.py:374:22
	v_add_nc_u32_e32 v19, s14, v16
	ds_store_b128 v19, v[9:12] offset:32768
	.loc	1 390 22                        ; generate_amdgcn.py:390:22
	s_waitcnt vmcnt(7)
	v_lshlrev_b32_e32 v10, 16, v202
	s_waitcnt vmcnt(5)
	v_lshlrev_b32_e32 v12, 16, v204
	.loc	1 394 24                        ; generate_amdgcn.py:394:24
	s_waitcnt lgkmcnt(4)
	s_delay_alu instid0(VALU_DEP_2)
	v_dual_mul_f32 v20, v186, v10 :: v_dual_lshlrev_b32 v11, 16, v203
	v_mul_f32_e32 v21, v187, v10
	s_waitcnt lgkmcnt(3)
	v_mul_f32_e32 v208, v190, v10
	v_mul_f32_e32 v210, v192, v10
	s_waitcnt lgkmcnt(1)
	v_dual_mul_f32 v233, v199, v10 :: v_dual_mul_f32 v240, v200, v12
	s_waitcnt vmcnt(4)
	v_dual_mul_f32 v216, v190, v12 :: v_dual_lshlrev_b32 v19, 16, v205
	v_dual_mul_f32 v212, v190, v11 :: v_dual_add_nc_u32 v9, s34, v16
	v_mul_f32_e32 v202, v188, v11
	v_dual_mul_f32 v203, v189, v11 :: v_dual_mul_f32 v204, v186, v12
	v_mul_f32_e32 v205, v187, v12
	v_mul_f32_e32 v206, v188, v12
	v_mul_f32_e32 v207, v189, v12
	v_dual_mul_f32 v211, v193, v10 :: v_dual_mul_f32 v214, v192, v11
	v_dual_mul_f32 v213, v191, v11 :: v_dual_mul_f32 v220, v194, v10
	v_dual_mul_f32 v215, v193, v11 :: v_dual_mul_f32 v222, v196, v10
	v_dual_mul_f32 v217, v191, v12 :: v_dual_mul_f32 v190, v190, v19
	v_dual_mul_f32 v209, v191, v10 :: v_dual_mul_f32 v218, v192, v12
	v_dual_mul_f32 v219, v193, v12 :: v_dual_mul_f32 v192, v192, v19
	v_dual_mul_f32 v191, v191, v19 :: v_dual_mul_f32 v228, v194, v12
	v_dual_mul_f32 v193, v193, v19 :: v_dual_mul_f32 v230, v196, v12
	v_dual_mul_f32 v221, v195, v10 :: v_dual_mul_f32 v224, v194, v11
	v_dual_mul_f32 v223, v197, v10 :: v_dual_mul_f32 v226, v196, v11
	v_dual_mul_f32 v225, v195, v11 :: v_dual_mul_f32 v232, v198, v10
	v_dual_mul_f32 v227, v197, v11 :: v_dual_mul_f32 v234, v200, v10
	v_dual_mul_f32 v229, v195, v12 :: v_dual_mul_f32 v194, v194, v19
	v_dual_mul_f32 v231, v197, v12 :: v_dual_mul_f32 v196, v196, v19
	v_mul_f32_e32 v195, v195, v19
	v_dual_mul_f32 v197, v197, v19 :: v_dual_mul_f32 v238, v198, v12
	v_mul_f32_e32 v235, v198, v11
	v_dual_mul_f32 v236, v199, v11 :: v_dual_fmac_f32 v23, v21, v108
	v_dual_mul_f32 v239, v199, v12 :: v_dual_mul_f32 v198, v198, v19
	v_dual_mul_f32 v12, v201, v12 :: v_dual_mul_f32 v199, v199, v19
	.loc	1 399 13                        ; generate_amdgcn.py:399:13
	v_fmac_f32_e32 v32, v222, v117
	v_dual_fmac_f32 v22, v20, v107 :: v_dual_fmac_f32 v27, v209, v112
	v_dual_fmac_f32 v26, v208, v111 :: v_dual_fmac_f32 v29, v211, v114
	v_fmac_f32_e32 v28, v210, v113
	v_dual_fmac_f32 v30, v220, v115 :: v_dual_fmac_f32 v31, v221, v116
	v_dual_fmac_f32 v33, v223, v118 :: v_dual_fmac_f32 v38, v233, v120
	v_dual_fmac_f32 v37, v232, v119 :: v_dual_fmac_f32 v44, v202, v125
	v_dual_fmac_f32 v45, v203, v126 :: v_dual_fmac_f32 v48, v214, v129
	v_dual_fmac_f32 v46, v212, v127 :: v_dual_fmac_f32 v47, v213, v128
	v_dual_fmac_f32 v50, v224, v131 :: v_dual_fmac_f32 v49, v215, v130
	v_dual_fmac_f32 v52, v226, v133 :: v_dual_fmac_f32 v51, v225, v132
	v_dual_fmac_f32 v54, v235, v135 :: v_dual_fmac_f32 v55, v236, v136
	v_fmac_f32_e32 v60, v206, v141
	v_dual_fmac_f32 v58, v204, v139 :: v_dual_fmac_f32 v59, v205, v140
	v_dual_fmac_f32 v62, v216, v143 :: v_dual_fmac_f32 v61, v207, v142
	v_dual_fmac_f32 v64, v218, v145 :: v_dual_fmac_f32 v63, v217, v144
	v_dual_fmac_f32 v66, v228, v147 :: v_dual_fmac_f32 v65, v219, v146
	v_dual_fmac_f32 v68, v230, v149 :: v_dual_fmac_f32 v67, v229, v148
	v_dual_fmac_f32 v70, v238, v151 :: v_dual_fmac_f32 v69, v231, v150
	v_fmac_f32_e32 v72, v240, v153
	v_dual_fmac_f32 v73, v12, v154 :: v_dual_fmac_f32 v78, v190, v159
	v_dual_fmac_f32 v79, v191, v160 :: v_dual_fmac_f32 v86, v197, v166
	v_dual_fmac_f32 v80, v192, v161 :: v_dual_fmac_f32 v83, v194, v163
	v_dual_fmac_f32 v88, v199, v168 :: v_dual_fmac_f32 v87, v198, v167
	.loc	1 376 22                        ; generate_amdgcn.py:376:22
	s_waitcnt vmcnt(3)
	ds_store_b128 v9, v[170:173]
	.loc	1 394 24                        ; generate_amdgcn.py:394:24
	v_mul_f32_e32 v170, v188, v10
	v_dual_mul_f32 v171, v189, v10 :: v_dual_mul_f32 v172, v186, v11
	v_mul_f32_e32 v173, v187, v11
	v_mul_f32_e32 v186, v186, v19
	v_mul_f32_e32 v187, v187, v19
	v_mul_f32_e32 v188, v188, v19
	v_mul_f32_e32 v189, v189, v19
	v_dual_mul_f32 v10, v201, v10 :: v_dual_mul_f32 v237, v200, v11
	.loc	1 399 13                        ; generate_amdgcn.py:399:13
	v_dual_fmac_f32 v24, v170, v109 :: v_dual_mul_f32 v11, v201, v11
	.loc	1 394 24                        ; generate_amdgcn.py:394:24
	v_dual_mul_f32 v200, v200, v19 :: v_dual_fmac_f32 v25, v171, v110
	s_delay_alu instid0(VALU_DEP_3)
	v_dual_mul_f32 v19, v201, v19 :: v_dual_fmac_f32 v40, v10, v122
	.loc	1 399 13                        ; generate_amdgcn.py:399:13
	v_dual_fmac_f32 v39, v234, v121 :: v_dual_fmac_f32 v42, v172, v123
	v_fmac_f32_e32 v43, v173, v124
	v_dual_fmac_f32 v53, v227, v134 :: v_dual_fmac_f32 v56, v237, v137
	v_fmac_f32_e32 v57, v11, v138
	v_dual_fmac_f32 v71, v239, v152 :: v_dual_fmac_f32 v74, v186, v155
	v_dual_fmac_f32 v75, v187, v156 :: v_dual_fmac_f32 v76, v188, v157
	v_fmac_f32_e32 v77, v189, v158
	v_dual_fmac_f32 v81, v193, v162 :: v_dual_fmac_f32 v84, v195, v164
	v_dual_fmac_f32 v85, v196, v165 :: v_dual_fmac_f32 v82, v19, v106
	v_fmac_f32_e32 v89, v200, v169
	.loc	1 376 22                        ; generate_amdgcn.py:376:22
	s_waitcnt vmcnt(2)
	ds_store_b128 v9, v[174:177] offset:4096
	s_waitcnt vmcnt(1)
	ds_store_b128 v9, v[178:181] offset:8192
	s_waitcnt vmcnt(0)
	ds_store_b128 v9, v[182:185] offset:12288
	.loc	1 333 5                         ; generate_amdgcn.py:333:5
	s_cbranch_scc1 .LBB0_5
; %bb.6:                                ; %Flow
	.loc	1 0 5 is_stmt 0                 ; generate_amdgcn.py:0:5
	v_mov_b32_e32 v1, v15
	s_add_i32 s35, s13, 0x400
	s_branch .LBB0_8
.LBB0_7:
	v_dual_mov_b32 v82, 0 :: v_dual_mov_b32 v89, 0
	v_dual_mov_b32 v88, 0 :: v_dual_mov_b32 v87, 0
	v_dual_mov_b32 v86, 0 :: v_dual_mov_b32 v85, 0
	v_dual_mov_b32 v84, 0 :: v_dual_mov_b32 v83, 0
	v_dual_mov_b32 v81, 0 :: v_dual_mov_b32 v80, 0
	v_dual_mov_b32 v79, 0 :: v_dual_mov_b32 v78, 0
	v_dual_mov_b32 v77, 0 :: v_dual_mov_b32 v76, 0
	v_dual_mov_b32 v75, 0 :: v_dual_mov_b32 v74, 0
	v_dual_mov_b32 v73, 0 :: v_dual_mov_b32 v72, 0
	v_dual_mov_b32 v71, 0 :: v_dual_mov_b32 v70, 0
	v_dual_mov_b32 v69, 0 :: v_dual_mov_b32 v68, 0
	v_dual_mov_b32 v67, 0 :: v_dual_mov_b32 v66, 0
	v_dual_mov_b32 v65, 0 :: v_dual_mov_b32 v64, 0
	v_dual_mov_b32 v63, 0 :: v_dual_mov_b32 v62, 0
	v_dual_mov_b32 v61, 0 :: v_dual_mov_b32 v60, 0
	v_dual_mov_b32 v59, 0 :: v_dual_mov_b32 v58, 0
	v_dual_mov_b32 v57, 0 :: v_dual_mov_b32 v56, 0
	v_dual_mov_b32 v55, 0 :: v_dual_mov_b32 v54, 0
	v_dual_mov_b32 v53, 0 :: v_dual_mov_b32 v52, 0
	v_dual_mov_b32 v51, 0 :: v_dual_mov_b32 v50, 0
	v_dual_mov_b32 v49, 0 :: v_dual_mov_b32 v48, 0
	v_dual_mov_b32 v47, 0 :: v_dual_mov_b32 v46, 0
	v_dual_mov_b32 v45, 0 :: v_dual_mov_b32 v44, 0
	v_dual_mov_b32 v43, 0 :: v_dual_mov_b32 v42, 0
	v_dual_mov_b32 v40, 0 :: v_dual_mov_b32 v39, 0
	v_dual_mov_b32 v38, 0 :: v_dual_mov_b32 v37, 0
	v_dual_mov_b32 v33, 0 :: v_dual_mov_b32 v32, 0
	v_dual_mov_b32 v31, 0 :: v_dual_mov_b32 v30, 0
	v_dual_mov_b32 v29, 0 :: v_dual_mov_b32 v28, 0
	v_dual_mov_b32 v27, 0 :: v_dual_mov_b32 v26, 0
	v_dual_mov_b32 v25, 0 :: v_dual_mov_b32 v24, 0
	v_dual_mov_b32 v23, 0 :: v_dual_mov_b32 v22, 0
	s_add_i32 s0, 0, 0x8000
	s_add_i32 s33, 0, 0x9000
	s_add_i32 s34, 0, 0x4000
.LBB0_8:                                ; %._crit_edge
	v_dual_mov_b32 v98, 0 :: v_dual_mov_b32 v19, 0
	v_dual_mov_b32 v118, 0 :: v_dual_mov_b32 v233, 0
	v_dual_mov_b32 v232, 0 :: v_dual_mov_b32 v121, 0
	v_dual_mov_b32 v252, 0 :: v_dual_mov_b32 v235, 0
	v_dual_mov_b32 v190, 0 :: v_dual_mov_b32 v237, 0
	v_dual_mov_b32 v172, 0 :: v_dual_mov_b32 v239, 0
	v_dual_mov_b32 v234, 0 :: v_dual_mov_b32 v173, 0
	v_dual_mov_b32 v236, 0 :: v_dual_mov_b32 v127, 0
	v_dual_mov_b32 v238, 0 :: v_dual_mov_b32 v129, 0
	v_dual_mov_b32 v240, 0 :: v_dual_mov_b32 v247, 0
	v_dual_mov_b32 v244, 0 :: v_dual_mov_b32 v131, 0
	v_dual_mov_b32 v254, 0 :: v_dual_mov_b32 v255, 0
	v_dual_mov_b32 v250, 0 :: v_dual_mov_b32 v177, 0
	v_dual_mov_b32 v174, 0 :: v_dual_mov_b32 v135, 0
	v_dual_mov_b32 v124, 0 :: v_dual_mov_b32 v253, 0
	v_dual_mov_b32 v20, 0 :: v_dual_mov_b32 v175, 0
	v_dual_mov_b32 v164, 0 :: v_dual_mov_b32 v141, 0
	v_dual_mov_b32 v128, 0 :: v_dual_mov_b32 v171, 0
	v_dual_mov_b32 v130, 0 :: v_dual_mov_b32 v21, 0
	v_dual_mov_b32 v178, 0 :: v_dual_mov_b32 v145, 0
	v_dual_mov_b32 v246, 0 :: v_dual_mov_b32 v109, 0
	v_dual_mov_b32 v248, 0 :: v_dual_mov_b32 v111, 0
	v_dual_mov_b32 v166, 0 :: v_dual_mov_b32 v113, 0
	v_dual_mov_b32 v134, 0 :: v_dual_mov_b32 v115, 0
	v_dual_mov_b32 v138, 0 :: v_dual_mov_b32 v117, 0
	v_dual_mov_b32 v176, 0 :: v_dual_mov_b32 v147, 0
	v_dual_mov_b32 v140, 0 :: v_dual_mov_b32 v123, 0
	v_dual_mov_b32 v142, 0 :: v_dual_mov_b32 v137, 0
	v_mov_b32_e32 v146, 0
	v_mov_b32_e32 v110, 0
	v_mov_b32_e32 v112, 0
	v_mov_b32_e32 v116, 0
	v_mov_b32_e32 v122, 0
	v_mov_b32_e32 v152, 0
	v_mov_b32_e32 v126, 0
	v_mov_b32_e32 v156, 0
	v_mov_b32_e32 v160, 0
	.loc	1 379 19 is_stmt 1              ; generate_amdgcn.py:379:19
	s_and_not1_b32 vcc_lo, exec_lo, s3
	.loc	1 374 22                        ; generate_amdgcn.py:374:22
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 379 19                        ; generate_amdgcn.py:379:19
	s_cbranch_vccnz .LBB0_10
; %bb.9:
	.loc	1 376 22                        ; generate_amdgcn.py:376:22
	v_add_nc_u32_e32 v2, s12, v96
	v_add_nc_u32_e32 v3, s12, v95
	v_add_nc_u32_e32 v4, s12, v97
	v_add_nc_u32_e32 v5, s12, v94
	s_mov_b32 s12, 0
	ds_load_b128 v[174:177], v5 offset:8192
	ds_load_b128 v[178:181], v5
	.loc	1 379 19                        ; generate_amdgcn.py:379:19
	s_mov_b32 s13, s12
	s_mov_b32 s14, s12
	s_mov_b32 s15, s12
	s_mov_b32 s16, s12
	s_mov_b32 s17, s12
	s_mov_b32 s18, s12
	s_mov_b32 s19, s12
	.loc	1 374 22                        ; generate_amdgcn.py:374:22
	v_add_nc_u32_e32 v10, s0, v91
	v_add_nc_u32_e32 v11, s0, v93
	v_add_nc_u32_e32 v15, s0, v92
	.loc	1 376 22                        ; generate_amdgcn.py:376:22
	ds_load_b128 v[99:102], v2 offset:8192
	ds_load_b128 v[162:165], v2
	ds_load_b128 v[166:169], v3 offset:8192
	ds_load_b128 v[170:173], v3
	ds_load_b128 v[190:193], v4 offset:8192
	ds_load_b128 v[194:197], v4
	.loc	1 379 19                        ; generate_amdgcn.py:379:19
	v_dual_mov_b32 v2, s12 :: v_dual_mov_b32 v7, s17
	.loc	1 374 22                        ; generate_amdgcn.py:374:22
	ds_load_b128 v[138:141], v10 offset:1024
	ds_load_b128 v[122:125], v10
	ds_load_b128 v[182:185], v11 offset:1024
	ds_load_b128 v[130:133], v11
	.loc	1 379 19                        ; generate_amdgcn.py:379:19
	v_mov_b32_e32 v8, s18
	.loc	1 374 22                        ; generate_amdgcn.py:374:22
	ds_load_b128 v[186:189], v15 offset:1024
	ds_load_b128 v[134:137], v15
	.loc	1 379 19                        ; generate_amdgcn.py:379:19
	v_dual_mov_b32 v9, s19 :: v_dual_add_nc_u32 v12, s0, v90
	v_dual_mov_b32 v3, s13 :: v_dual_mov_b32 v4, s14
	v_dual_mov_b32 v5, s15 :: v_dual_mov_b32 v6, s16
	.loc	1 374 22                        ; generate_amdgcn.py:374:22
	ds_load_b128 v[198:201], v12 offset:1024
	ds_load_b128 v[142:145], v12
	ds_load_b128 v[202:205], v10 offset:3072
	ds_load_b128 v[154:157], v10 offset:2048
	ds_load_b128 v[206:209], v15 offset:3072
	ds_load_b128 v[210:213], v15 offset:2048
	ds_load_b128 v[214:217], v11 offset:3072
	ds_load_b128 v[218:221], v11 offset:2048
	ds_load_b128 v[222:225], v12 offset:3072
	ds_load_b128 v[226:229], v12 offset:2048
	.loc	1 379 19                        ; generate_amdgcn.py:379:19
	s_waitcnt lgkmcnt(14)
	v_wmma_i32_16x16x16_iu8 v[114:121], v[178:181], v[122:125], v[2:9] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[106:113], v[174:177], v[122:125], v[2:9] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[122:129], v[178:181], v[138:141], v[2:9] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(10)
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_wmma_i32_16x16x16_iu8 v[114:121], v[170:173], v[134:137], v[114:121] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[106:113], v[166:169], v[134:137], v[106:113] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_wmma_i32_16x16x16_iu8 v[122:129], v[170:173], v[186:189], v[122:129] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[114:121], v[162:165], v[130:133], v[114:121] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_3)
	v_wmma_i32_16x16x16_iu8 v[106:113], v[99:102], v[130:133], v[106:113] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[130:137], v[174:177], v[138:141], v[2:9] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(6)
	v_wmma_i32_16x16x16_iu8 v[146:153], v[174:177], v[154:157], v[2:9] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[114:121], v[194:197], v[142:145], v[114:121] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[106:113], v[190:193], v[142:145], v[106:113] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[138:145], v[178:181], v[154:157], v[2:9] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[154:161], v[178:181], v[202:205], v[2:9] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[2:9], v[174:177], v[202:205], v[2:9] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[130:137], v[166:169], v[186:189], v[130:137] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(4)
	v_wmma_i32_16x16x16_iu8 v[138:145], v[170:173], v[210:213], v[138:145] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[146:153], v[166:169], v[210:213], v[146:153] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[154:161], v[170:173], v[206:209], v[154:161] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[2:9], v[166:169], v[206:209], v[2:9] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[122:129], v[162:165], v[182:185], v[122:129] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[130:137], v[99:102], v[182:185], v[130:137] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(2)
	v_wmma_i32_16x16x16_iu8 v[138:145], v[162:165], v[218:221], v[138:145] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[146:153], v[99:102], v[218:221], v[146:153] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[154:161], v[162:165], v[214:217], v[154:161] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[2:9], v[99:102], v[214:217], v[2:9] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[122:129], v[194:197], v[198:201], v[122:129] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[130:137], v[190:193], v[198:201], v[130:137] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu8 v[138:145], v[194:197], v[226:229], v[138:145] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[146:153], v[190:193], v[226:229], v[146:153] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[154:161], v[194:197], v[222:225], v[154:161] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[2:9], v[190:193], v[222:225], v[2:9] neg_lo:[1,1,0]
	v_cvt_f32_i32_e32 v19, v115
	v_cvt_f32_i32_e32 v232, v116
	v_cvt_f32_i32_e32 v233, v117
	v_cvt_f32_i32_e32 v252, v118
	v_cvt_f32_i32_e32 v190, v119
	v_cvt_f32_i32_e32 v172, v120
	v_cvt_f32_i32_e32 v121, v121
	v_cvt_f32_i32_e32 v234, v106
	v_cvt_f32_i32_e32 v235, v107
	v_cvt_f32_i32_e32 v236, v108
	v_cvt_f32_i32_e32 v237, v109
	v_cvt_f32_i32_e32 v238, v110
	v_cvt_f32_i32_e32 v239, v111
	v_cvt_f32_i32_e32 v240, v112
	v_cvt_f32_i32_e32 v244, v113
	v_cvt_f32_i32_e32 v254, v122
	v_cvt_f32_i32_e32 v250, v123
	v_cvt_f32_i32_e32 v174, v124
	v_cvt_f32_i32_e32 v124, v125
	v_cvt_f32_i32_e32 v20, v126
	v_cvt_f32_i32_e32 v173, v127
	v_cvt_f32_i32_e32 v164, v128
	v_cvt_f32_i32_e32 v127, v129
	v_cvt_f32_i32_e32 v128, v130
	v_cvt_f32_i32_e32 v129, v131
	v_cvt_f32_i32_e32 v130, v132
	v_cvt_f32_i32_e32 v178, v133
	v_cvt_f32_i32_e32 v246, v134
	v_cvt_f32_i32_e32 v247, v135
	v_cvt_f32_i32_e32 v248, v136
	v_cvt_f32_i32_e32 v166, v137
	v_cvt_f32_i32_e32 v131, v138
	v_cvt_f32_i32_e32 v255, v139
	v_cvt_f32_i32_e32 v177, v140
	v_cvt_f32_i32_e32 v134, v141
	v_cvt_f32_i32_e32 v135, v142
	v_cvt_f32_i32_e32 v253, v143
	v_cvt_f32_i32_e32 v175, v144
	v_cvt_f32_i32_e32 v138, v145
	v_cvt_f32_i32_e32 v176, v146
	v_cvt_f32_i32_e32 v140, v147
	v_cvt_f32_i32_e32 v141, v148
	v_cvt_f32_i32_e32 v142, v149
	v_cvt_f32_i32_e32 v171, v150
	v_cvt_f32_i32_e32 v21, v151
	v_cvt_f32_i32_e32 v145, v152
	v_cvt_f32_i32_e32 v146, v153
	v_cvt_f32_i32_e32 v109, v154
	v_cvt_f32_i32_e32 v110, v155
	v_cvt_f32_i32_e32 v111, v156
	v_cvt_f32_i32_e32 v112, v157
	v_cvt_f32_i32_e32 v113, v158
	v_cvt_f32_i32_e32 v115, v159
	v_cvt_f32_i32_e32 v116, v160
	v_cvt_f32_i32_e32 v117, v161
	v_cvt_f32_i32_e32 v147, v2
	v_cvt_f32_i32_e32 v122, v3
	v_cvt_f32_i32_e32 v123, v4
	v_cvt_f32_i32_e32 v152, v5
	v_cvt_f32_i32_e32 v126, v6
	v_cvt_f32_i32_e32 v156, v7
	v_cvt_f32_i32_e32 v160, v8
	v_cvt_f32_i32_e32 v137, v9
	v_cvt_f32_i32_e32 v118, v114
.LBB0_10:
	.loc	1 388 29                        ; generate_amdgcn.py:388:29
	s_ashr_i32 s0, s27, 31
	s_mov_b32 s11, 0x31027000
	s_lshr_b32 s0, s0, 25
	s_mov_b32 s10, 0x7ffffffe
	s_add_i32 s0, s27, s0
	.loc	1 392 22                        ; generate_amdgcn.py:392:22
	s_mov_b32 s26, s10
	.loc	1 388 29                        ; generate_amdgcn.py:388:29
	s_ashr_i32 s0, s0, 7
	.loc	1 392 22                        ; generate_amdgcn.py:392:22
	s_mov_b32 s27, s11
	.loc	1 392 40 is_stmt 0              ; generate_amdgcn.py:392:40
	s_mul_i32 s4, s0, s23
	.loc	1 389 34 is_stmt 1              ; generate_amdgcn.py:389:34
	s_cmp_lt_i32 s0, s1
	.loc	1 390 22                        ; generate_amdgcn.py:390:22
	v_add_lshl_u32 v2, v34, s0, 1
	.loc	1 392 22                        ; generate_amdgcn.py:392:22
	v_add_lshl_u32 v3, v18, s4, 1
	.loc	1 389 34                        ; generate_amdgcn.py:389:34
	s_cselect_b32 s4, -1, 0
	.loc	1 392 22                        ; generate_amdgcn.py:392:22
	s_and_b32 s25, s25, 0xffff
	.loc	1 333 5                         ; generate_amdgcn.py:333:5
	s_and_b32 vcc_lo, s3, s4
	.loc	1 390 22                        ; generate_amdgcn.py:390:22
	v_add_lshl_u32 v4, v0, s0, 1
	v_dual_cndmask_b32 v2, 0x80000000, v2 :: v_dual_cndmask_b32 v3, 0x80000000, v3
	v_add_lshl_u32 v5, v35, s0, 1
	v_add_lshl_u32 v6, v36, s0, 1
	s_delay_alu instid0(VALU_DEP_4)
	v_cndmask_b32_e32 v4, 0x80000000, v4, vcc_lo
	s_and_b32 s9, s9, 0xffff
	.loc	1 392 22                        ; generate_amdgcn.py:392:22
	buffer_load_u16 v3, v3, s[24:27], 0 offen
	.loc	1 390 22                        ; generate_amdgcn.py:390:22
	v_dual_cndmask_b32 v5, 0x80000000, v5 :: v_dual_cndmask_b32 v6, 0x80000000, v6
	.loc	1 394 24                        ; generate_amdgcn.py:394:24
	v_and_b32_e32 v1, 32, v1
	.loc	1 390 22                        ; generate_amdgcn.py:390:22
	s_clause 0x3
	buffer_load_u16 v154, v2, s[8:11], 0 offen
	buffer_load_u16 v120, v4, s[8:11], 0 offen
	buffer_load_u16 v114, v5, s[8:11], 0 offen
	buffer_load_u16 v99, v6, s[8:11], 0 offen
	v_dual_mov_b32 v167, 0 :: v_dual_lshlrev_b32 v2, 2, v14
	v_dual_mov_b32 v169, 0 :: v_dual_lshlrev_b32 v4, 1, v14
	v_mov_b32_e32 v220, 0
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 394 24                        ; generate_amdgcn.py:394:24
	v_add3_u32 v1, 0, v2, v1
	v_dual_mov_b32 v226, 0 :: v_dual_add_nc_u32 v163, 0, v4
	v_dual_mov_b32 v168, 0 :: v_dual_mov_b32 v155, 0
	s_delay_alu instid0(VALU_DEP_3)
	v_dual_mov_b32 v170, 0 :: v_dual_add_nc_u32 v165, v1, v13
	v_dual_mov_b32 v161, 0 :: v_dual_mov_b32 v162, 0
	v_mov_b32_e32 v249, 0
	v_dual_mov_b32 v251, 0 :: v_dual_mov_b32 v144, 0
	v_dual_mov_b32 v139, 0 :: v_dual_mov_b32 v180, 0
	v_dual_mov_b32 v179, 0 :: v_dual_mov_b32 v182, 0
	v_dual_mov_b32 v181, 0 :: v_dual_mov_b32 v184, 0
	v_dual_mov_b32 v183, 0 :: v_dual_mov_b32 v186, 0
	v_dual_mov_b32 v185, 0 :: v_dual_mov_b32 v188, 0
	v_dual_mov_b32 v187, 0 :: v_dual_mov_b32 v192, 0
	v_dual_mov_b32 v189, 0 :: v_dual_mov_b32 v194, 0
	v_dual_mov_b32 v191, 0 :: v_dual_mov_b32 v196, 0
	v_dual_mov_b32 v193, 0 :: v_dual_mov_b32 v198, 0
	v_dual_mov_b32 v195, 0 :: v_dual_mov_b32 v200, 0
	v_dual_mov_b32 v197, 0 :: v_dual_mov_b32 v202, 0
	v_dual_mov_b32 v199, 0 :: v_dual_mov_b32 v204, 0
	v_dual_mov_b32 v201, 0 :: v_dual_mov_b32 v206, 0
	v_dual_mov_b32 v203, 0 :: v_dual_mov_b32 v208, 0
	v_dual_mov_b32 v205, 0 :: v_dual_mov_b32 v210, 0
	v_dual_mov_b32 v207, 0 :: v_dual_mov_b32 v212, 0
	v_dual_mov_b32 v209, 0 :: v_dual_mov_b32 v214, 0
	v_dual_mov_b32 v211, 0 :: v_dual_mov_b32 v216, 0
	v_dual_mov_b32 v213, 0 :: v_dual_mov_b32 v218, 0
	v_dual_mov_b32 v215, 0 :: v_dual_mov_b32 v224, 0
	v_dual_mov_b32 v217, 0 :: v_dual_mov_b32 v228, 0
	v_dual_mov_b32 v219, 0 :: v_dual_mov_b32 v230, 0
	v_mov_b32_e32 v221, 0
	v_mov_b32_e32 v223, 0
	v_mov_b32_e32 v225, 0
	v_mov_b32_e32 v227, 0
	v_mov_b32_e32 v229, 0
	v_mov_b32_e32 v231, 0
	.loc	1 379 19                        ; generate_amdgcn.py:379:19
	s_and_not1_b32 vcc_lo, exec_lo, s2
	s_mov_b32 s12, 0
	s_waitcnt vmcnt(4)
	v_dual_mov_b32 v222, 0 :: v_dual_lshlrev_b32 v1, 16, v3
	.loc	1 394 24                        ; generate_amdgcn.py:394:24
	ds_store_b32 v165, v1 offset:40960
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[1:4], v163 offset:40960
	ds_load_b128 v[5:8], v163 offset:40976
	ds_load_b128 v[9:12], v163 offset:41472
	ds_load_b128 v[13:16], v163 offset:41488
	.loc	1 379 19                        ; generate_amdgcn.py:379:19
	s_cbranch_vccnz .LBB0_12
; %bb.11:
	.loc	1 0 19 is_stmt 0                ; generate_amdgcn.py:0:19
	scratch_store_b32 off, v241, off        ; 4-byte Folded Spill
	.loc	1 376 22 is_stmt 1              ; generate_amdgcn.py:376:22
	s_waitcnt vmcnt(0)
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v99, off offset:72
	scratch_store_b32 off, v243, off offset:4
	v_dual_mov_b32 v132, v124 :: v_dual_add_nc_u32 v99, s34, v94
	.loc	1 374 22                        ; generate_amdgcn.py:374:22
	v_add_nc_u32_e32 v91, s33, v91
	v_dual_mov_b32 v139, v252 :: v_dual_add_nc_u32 v188, s34, v97
	v_dual_mov_b32 v153, v126 :: v_dual_add_nc_u32 v98, s34, v95
	v_dual_mov_b32 v133, v121 :: v_dual_mov_b32 v126, v123
	v_dual_mov_b32 v149, v253 :: v_dual_mov_b32 v124, v242
	v_dual_mov_b32 v151, v134 :: v_dual_mov_b32 v148, v240
	v_mov_b32_e32 v134, v254
	v_dual_mov_b32 v125, v122 :: v_dual_mov_b32 v150, v255
	v_dual_mov_b32 v123, v147 :: v_dual_mov_b32 v122, v250
	v_dual_mov_b32 v161, v145 :: v_dual_mov_b32 v162, v146
	v_dual_mov_b32 v146, v247 :: v_dual_mov_b32 v147, v166
	v_dual_mov_b32 v166, v248 :: v_dual_mov_b32 v121, v17
	.loc	1 376 22                        ; generate_amdgcn.py:376:22
	ds_load_b128 v[248:251], v99
	.loc	1 374 22                        ; generate_amdgcn.py:374:22
	ds_load_b128 v[191:194], v91
	.loc	1 376 22                        ; generate_amdgcn.py:376:22
	ds_load_b128 v[252:255], v99 offset:8192
	.loc	1 379 19                        ; generate_amdgcn.py:379:19
	s_mov_b32 s13, s12
	s_mov_b32 s14, s12
	s_mov_b32 s15, s12
	s_mov_b32 s16, s12
	s_mov_b32 s17, s12
	s_mov_b32 s18, s12
	s_mov_b32 s19, s12
	s_delay_alu instid0(SALU_CYCLE_1)
	v_dual_mov_b32 v231, s19 :: v_dual_add_nc_u32 v92, s33, v92
	.loc	1 376 22                        ; generate_amdgcn.py:376:22
	ds_load_b128 v[240:243], v98 offset:8192
	v_dual_mov_b32 v136, v244 :: v_dual_mov_b32 v155, v138
	v_dual_mov_b32 v138, v245 :: v_dual_mov_b32 v145, v246
	ds_load_b128 v[244:247], v98
	s_clause 0xf                            ; 64-byte Folded Spill
	scratch_store_b32 off, v177, off offset:32
	scratch_store_b32 off, v118, off offset:52
	scratch_store_b32 off, v190, off offset:64
	scratch_store_b32 off, v232, off offset:68
	scratch_store_b32 off, v21, off offset:16
	scratch_store_b32 off, v178, off offset:24
	scratch_store_b32 off, v174, off offset:44
	scratch_store_b32 off, v172, off offset:56
	scratch_store_b32 off, v233, off offset:48
	scratch_store_b32 off, v175, off offset:28
	scratch_store_b32 off, v20, off offset:40
	scratch_store_b32 off, v234, off offset:60
	scratch_store_b32 off, v176, off offset:8
	scratch_store_b32 off, v164, off offset:12
	scratch_store_b32 off, v173, off offset:20
	scratch_store_b32 off, v235, off offset:36
	.loc	1 374 22                        ; generate_amdgcn.py:374:22
	ds_load_b128 v[232:235], v91 offset:2048
	v_dual_mov_b32 v190, v109 :: v_dual_mov_b32 v17, v112
	ds_load_b128 v[106:109], v92
	ds_load_b128 v[207:210], v91 offset:1024
	ds_load_b128 v[98:101], v91 offset:3072
	v_dual_mov_b32 v144, v19 :: v_dual_add_nc_u32 v189, s34, v96
	v_dual_mov_b32 v164, v110 :: v_dual_mov_b32 v19, v35
	v_dual_mov_b32 v20, v34 :: v_dual_mov_b32 v35, v0
	v_dual_mov_b32 v34, v111 :: v_dual_mov_b32 v119, v36
	v_dual_mov_b32 v0, v113 :: v_dual_mov_b32 v157, v140
	ds_load_b128 v[110:113], v92 offset:2048
	v_dual_mov_b32 v118, v115 :: v_dual_mov_b32 v41, v117
	v_dual_mov_b32 v36, v116 :: v_dual_mov_b32 v159, v142
	v_mov_b16_e32 v21.l, v114.l
	ds_load_b128 v[114:117], v92 offset:1024
	.loc	1 379 19                        ; generate_amdgcn.py:379:19
	v_dual_mov_b32 v230, s18 :: v_dual_add_nc_u32 v223, s33, v93
	v_dual_mov_b32 v229, s17 :: v_dual_mov_b32 v228, s16
	v_dual_mov_b32 v227, s15 :: v_dual_mov_b32 v226, s14
	v_dual_mov_b32 v225, s13 :: v_dual_mov_b32 v224, s12
	.loc	1 376 22                        ; generate_amdgcn.py:376:22
	ds_load_b128 v[94:97], v188 offset:8192
	ds_load_b128 v[167:170], v189
	v_dual_mov_b32 v140, v127 :: v_dual_mov_b32 v127, v236
	v_dual_mov_b32 v158, v141 :: v_dual_mov_b32 v141, v128
	.loc	1 379 19                        ; generate_amdgcn.py:379:19
	s_waitcnt lgkmcnt(11)
	v_wmma_i32_16x16x16_iu8 v[172:179], v[248:251], v[191:194], v[224:231] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(10)
	v_wmma_i32_16x16x16_iu8 v[180:187], v[252:255], v[191:194], v[224:231] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(5)
	v_wmma_i32_16x16x16_iu8 v[191:198], v[248:251], v[207:210], v[224:231] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[199:206], v[252:255], v[207:210], v[224:231] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[207:214], v[248:251], v[232:235], v[224:231] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[215:222], v[252:255], v[232:235], v[224:231] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[172:179], v[244:247], v[106:109], v[172:179] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[180:187], v[240:243], v[106:109], v[180:187] neg_lo:[1,1,0]
	.loc	1 376 22                        ; generate_amdgcn.py:376:22
	ds_load_b128 v[106:109], v188
	.loc	1 374 22                        ; generate_amdgcn.py:374:22
	v_add_nc_u32_e32 v188, s33, v90
	v_mov_b32_e32 v128, v237
	v_dual_mov_b32 v142, v129 :: v_dual_mov_b32 v143, v130
	v_mov_b32_e32 v129, v238
	.loc	1 379 19                        ; generate_amdgcn.py:379:19
	s_waitcnt lgkmcnt(3)
	v_wmma_i32_16x16x16_iu8 v[191:198], v[244:247], v[114:117], v[191:198] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[199:206], v[240:243], v[114:117], v[199:206] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[207:214], v[244:247], v[110:113], v[207:214] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[215:222], v[240:243], v[110:113], v[215:222] neg_lo:[1,1,0]
	.loc	1 374 22                        ; generate_amdgcn.py:374:22
	ds_load_b128 v[110:113], v188
	ds_load_b128 v[114:117], v188 offset:1024
	v_mov_b32_e32 v130, v239
	.loc	1 379 19                        ; generate_amdgcn.py:379:19
	v_wmma_i32_16x16x16_iu8 v[232:239], v[248:251], v[98:101], v[224:231] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[224:231], v[252:255], v[98:101], v[224:231] neg_lo:[1,1,0]
	.loc	1 374 22                        ; generate_amdgcn.py:374:22
	ds_load_b128 v[98:101], v223
	.loc	1 376 22                        ; generate_amdgcn.py:376:22
	ds_load_b128 v[248:251], v189 offset:8192
	.loc	1 374 22                        ; generate_amdgcn.py:374:22
	ds_load_b128 v[102:105], v92 offset:3072
	ds_load_b128 v[90:93], v223 offset:1024
	v_mov_b32_e32 v254, v134
	v_mov_b32_e32 v134, v151
	v_dual_mov_b32 v252, v139 :: v_dual_mov_b32 v253, v149
	v_mov_b32_e32 v255, v150
	.loc	1 379 19                        ; generate_amdgcn.py:379:19
	s_waitcnt lgkmcnt(3)
	v_wmma_i32_16x16x16_iu8 v[172:179], v[167:170], v[98:101], v[172:179] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(2)
	v_wmma_i32_16x16x16_iu8 v[180:187], v[248:251], v[98:101], v[180:187] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu8 v[232:239], v[244:247], v[102:105], v[232:239] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[224:231], v[240:243], v[102:105], v[224:231] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[172:179], v[106:109], v[110:113], v[172:179] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[180:187], v[94:97], v[110:113], v[180:187] neg_lo:[1,1,0]
	v_dual_mov_b32 v113, v0 :: v_dual_mov_b32 v0, v35
	v_mov_b32_e32 v111, v34
	v_mov_b32_e32 v35, v19
	.loc	1 374 22                        ; generate_amdgcn.py:374:22
	ds_load_b128 v[102:105], v223 offset:2048
	ds_load_b128 v[240:243], v223 offset:3072
	ds_load_b128 v[244:247], v188 offset:2048
	ds_load_b128 v[98:101], v188 offset:3072
	.loc	1 379 19                        ; generate_amdgcn.py:379:19
	s_waitcnt lgkmcnt(4)
	v_wmma_i32_16x16x16_iu8 v[191:198], v[167:170], v[90:93], v[191:198] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[199:206], v[248:251], v[90:93], v[199:206] neg_lo:[1,1,0]
	v_mov_b32_e32 v112, v17
	v_mov_b32_e32 v110, v164
	v_mov_b32_e32 v19, v144
	v_wmma_i32_16x16x16_iu8 v[191:198], v[106:109], v[114:117], v[191:198] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[199:206], v[94:97], v[114:117], v[199:206] neg_lo:[1,1,0]
	v_mov_b16_e32 v114.l, v21.l
	v_mov_b32_e32 v115, v118
	v_cvt_f32_i32_e32 v139, v182
	v_cvt_f32_i32_e32 v188, v196
	v_cvt_f32_i32_e32 v196, v203
	v_cvt_f32_i32_e32 v144, v183
	v_cvt_f32_i32_e32 v182, v187
	v_cvt_f32_i32_e32 v183, v191
	v_cvt_f32_i32_e32 v187, v195
	s_waitcnt lgkmcnt(3)
	v_wmma_i32_16x16x16_iu8 v[207:214], v[167:170], v[102:105], v[207:214] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[215:222], v[248:251], v[102:105], v[215:222] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(2)
	v_wmma_i32_16x16x16_iu8 v[232:239], v[167:170], v[240:243], v[232:239] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[224:231], v[248:251], v[240:243], v[224:231] neg_lo:[1,1,0]
	v_cvt_f32_i32_e32 v168, v174
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu8 v[207:214], v[106:109], v[244:247], v[207:214] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[215:222], v[94:97], v[244:247], v[215:222] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu8 v[232:239], v[106:109], v[98:101], v[232:239] neg_lo:[1,1,0]
	v_mov_b32_e32 v246, v145
	v_mov_b32_e32 v145, v161
	v_wmma_i32_16x16x16_iu8 v[224:231], v[94:97], v[98:101], v[224:231] neg_lo:[1,1,0]
	v_cvt_f32_i32_e32 v98, v172
	v_cvt_f32_i32_e32 v161, v178
	v_cvt_f32_i32_e32 v203, v210
	v_cvt_f32_i32_e32 v210, v217
	v_cvt_f32_i32_e32 v217, v233
	s_clause 0x4                            ; 20-byte Folded Reload
	scratch_load_b32 v233, off, off offset:48
	scratch_load_b32 v172, off, off offset:56
	scratch_load_b32 v174, off, off offset:44
	scratch_load_b32 v178, off, off offset:24
	scratch_load_b32 v21, off, off offset:16
	v_mov_b32_e32 v248, v166
	v_mov_b32_e32 v166, v147
	v_dual_mov_b32 v250, v122 :: v_dual_mov_b32 v147, v123
	v_dual_mov_b32 v242, v124 :: v_dual_mov_b32 v123, v126
	v_dual_mov_b32 v126, v153 :: v_dual_mov_b32 v109, v190
	v_dual_mov_b32 v245, v138 :: v_dual_mov_b32 v138, v155
	v_cvt_f32_i32_e32 v167, v173
	v_cvt_f32_i32_e32 v170, v176
	v_cvt_f32_i32_e32 v155, v177
	v_cvt_f32_i32_e32 v191, v198
	v_cvt_f32_i32_e32 v195, v202
	v_cvt_f32_i32_e32 v198, v205
	v_cvt_f32_i32_e32 v202, v209
	v_cvt_f32_i32_e32 v205, v212
	v_cvt_f32_i32_e32 v209, v216
	v_cvt_f32_i32_e32 v212, v219
	v_cvt_f32_i32_e32 v216, v232
	s_clause 0x3                            ; 16-byte Folded Reload
	scratch_load_b32 v232, off, off offset:68
	scratch_load_b32 v190, off, off offset:64
	scratch_load_b32 v118, off, off offset:52
	scratch_load_b32 v177, off, off offset:32
	v_cvt_f32_i32_e32 v219, v235
	s_clause 0x3                            ; 16-byte Folded Reload
	scratch_load_b32 v235, off, off offset:36
	scratch_load_b32 v173, off, off offset:20
	scratch_load_b32 v164, off, off offset:12
	scratch_load_b32 v176, off, off offset:8
	v_dual_mov_b32 v34, v20 :: v_dual_mov_b32 v17, v121
	v_cvt_f32_i32_e32 v169, v175
	v_cvt_f32_i32_e32 v189, v197
	v_cvt_f32_i32_e32 v197, v204
	v_cvt_f32_i32_e32 v204, v211
	v_cvt_f32_i32_e32 v211, v218
	v_cvt_f32_i32_e32 v218, v234
	s_clause 0x5                            ; 24-byte Folded Reload
	scratch_load_b32 v234, off, off offset:60
	scratch_load_b32 v20, off, off offset:40
	scratch_load_b32 v175, off, off offset:28
	scratch_load_b32 v243, off, off offset:4
	scratch_load_b32 v99, off, off offset:72
	scratch_load_b32 v241, off, off
	v_dual_mov_b32 v240, v148 :: v_dual_mov_b32 v117, v41
	v_dual_mov_b32 v122, v125 :: v_dual_mov_b32 v247, v146
	v_dual_mov_b32 v124, v132 :: v_dual_mov_b32 v121, v133
	v_mov_b32_e32 v116, v36
	v_mov_b32_e32 v36, v119
	v_mov_b32_e32 v146, v162
	v_mov_b32_e32 v244, v136
	v_cvt_f32_i32_e32 v162, v179
	v_cvt_f32_i32_e32 v249, v180
	v_cvt_f32_i32_e32 v251, v181
	v_cvt_f32_i32_e32 v179, v184
	v_cvt_f32_i32_e32 v180, v185
	v_cvt_f32_i32_e32 v181, v186
	v_cvt_f32_i32_e32 v184, v192
	v_cvt_f32_i32_e32 v185, v193
	v_cvt_f32_i32_e32 v186, v194
	v_cvt_f32_i32_e32 v192, v199
	v_cvt_f32_i32_e32 v193, v200
	v_cvt_f32_i32_e32 v194, v201
	v_cvt_f32_i32_e32 v199, v206
	v_cvt_f32_i32_e32 v200, v207
	v_cvt_f32_i32_e32 v201, v208
	v_cvt_f32_i32_e32 v206, v213
	v_cvt_f32_i32_e32 v207, v214
	v_cvt_f32_i32_e32 v208, v215
	v_cvt_f32_i32_e32 v213, v220
	v_cvt_f32_i32_e32 v214, v221
	v_cvt_f32_i32_e32 v215, v222
	v_cvt_f32_i32_e32 v220, v236
	v_dual_mov_b32 v236, v127 :: v_dual_mov_b32 v127, v140
	v_mov_b32_e32 v140, v157
	v_cvt_f32_i32_e32 v221, v237
	v_dual_mov_b32 v237, v128 :: v_dual_mov_b32 v128, v141
	v_mov_b32_e32 v141, v158
	v_cvt_f32_i32_e32 v222, v238
	v_dual_mov_b32 v238, v129 :: v_dual_mov_b32 v129, v142
	v_mov_b32_e32 v142, v159
	v_cvt_f32_i32_e32 v223, v239
	v_dual_mov_b32 v239, v130 :: v_dual_mov_b32 v130, v143
	v_cvt_f32_i32_e32 v224, v224
	v_cvt_f32_i32_e32 v225, v225
	v_cvt_f32_i32_e32 v226, v226
	v_cvt_f32_i32_e32 v227, v227
	v_cvt_f32_i32_e32 v228, v228
	v_cvt_f32_i32_e32 v229, v229
	v_cvt_f32_i32_e32 v230, v230
	v_cvt_f32_i32_e32 v231, v231
.LBB0_12:
	.loc	1 388 29                        ; generate_amdgcn.py:388:29
	s_ashr_i32 s0, s35, 31
	.loc	1 392 22                        ; generate_amdgcn.py:392:22
	s_mov_b32 s26, s10
	.loc	1 388 29                        ; generate_amdgcn.py:388:29
	s_lshr_b32 s0, s0, 25
	.loc	1 392 22                        ; generate_amdgcn.py:392:22
	s_mov_b32 s27, s11
	.loc	1 388 29                        ; generate_amdgcn.py:388:29
	s_add_i32 s0, s35, s0
	v_mov_b16_e32 v91.l, 0
	s_ashr_i32 s0, s0, 7
	.loc	1 390 22                        ; generate_amdgcn.py:390:22
	s_waitcnt vmcnt(0)
	v_mov_b16_e32 v91.h, v99.l
	.loc	1 389 34                        ; generate_amdgcn.py:389:34
	s_cmp_lt_i32 s0, s1
	.loc	1 392 40                        ; generate_amdgcn.py:392:40
	s_mul_i32 s1, s0, s23
	.loc	1 390 22                        ; generate_amdgcn.py:390:22
	v_add_lshl_u32 v41, v34, s0, 1
	.loc	1 392 22                        ; generate_amdgcn.py:392:22
	v_add_lshl_u32 v90, v18, s1, 1
	.loc	1 389 34                        ; generate_amdgcn.py:389:34
	s_cselect_b32 s1, -1, 0
	.loc	1 390 22                        ; generate_amdgcn.py:390:22
	v_add_lshl_u32 v34, v0, s0, 1
	.loc	1 333 5                         ; generate_amdgcn.py:333:5
	s_and_b32 vcc_lo, s2, s1
	.loc	1 390 22                        ; generate_amdgcn.py:390:22
	v_add_lshl_u32 v35, v35, s0, 1
	v_dual_cndmask_b32 v41, 0x80000000, v41 :: v_dual_cndmask_b32 v90, 0x80000000, v90
	v_add_lshl_u32 v36, v36, s0, 1
	s_delay_alu instid0(VALU_DEP_3)
	v_dual_cndmask_b32 v34, 0x80000000, v34 :: v_dual_cndmask_b32 v35, 0x80000000, v35
	.loc	1 394 24                        ; generate_amdgcn.py:394:24
	s_waitcnt lgkmcnt(0)
	v_mul_f32_e32 v93, v15, v91
	.loc	1 392 22                        ; generate_amdgcn.py:392:22
	buffer_load_u16 v90, v90, s[24:27], 0 offen
	.loc	1 390 22                        ; generate_amdgcn.py:390:22
	v_cndmask_b32_e32 v36, 0x80000000, v36, vcc_lo
	s_clause 0x3
	buffer_load_u16 v41, v41, s[8:11], 0 offen
	buffer_load_u16 v34, v34, s[8:11], 0 offen
	buffer_load_u16 v35, v35, s[8:11], 0 offen
	buffer_load_u16 v36, v36, s[8:11], 0 offen
	.loc	1 394 24                        ; generate_amdgcn.py:394:24
	v_mul_f32_e32 v92, v16, v91
	v_mul_f32_e32 v94, v14, v91
	v_mul_f32_e32 v95, v13, v91
	v_mul_f32_e32 v96, v12, v91
	v_mul_f32_e32 v97, v11, v91
	v_mul_f32_e32 v99, v10, v91
	v_mul_f32_e32 v100, v9, v91
	v_mul_f32_e32 v101, v8, v91
	v_mul_f32_e32 v102, v7, v91
	v_mul_f32_e32 v103, v6, v91
	v_mul_f32_e32 v104, v5, v91
	v_mul_f32_e32 v105, v4, v91
	v_mul_f32_e32 v106, v3, v91
	v_mul_f32_e32 v107, v2, v91
	v_mul_f32_e32 v108, v1, v91
	.loc	1 390 22                        ; generate_amdgcn.py:390:22
	v_mov_b16_e32 v91.h, v114.l
	.loc	1 399 13                        ; generate_amdgcn.py:399:13
	v_fma_f32 v92, v92, v137, v82
	v_fma_f32 v93, v93, v160, v89
	v_fma_f32 v94, v94, v156, v88
	v_fma_f32 v95, v95, v126, v87
	v_fma_f32 v96, v96, v152, v86
	v_fma_f32 v97, v97, v123, v85
	v_fma_f32 v99, v99, v122, v84
	v_fma_f32 v100, v100, v147, v83
	v_fma_f32 v101, v101, v117, v81
	v_fma_f32 v102, v102, v116, v80
	v_fma_f32 v103, v103, v115, v79
	v_fma_f32 v104, v104, v113, v78
	v_fma_f32 v105, v105, v112, v77
	v_fma_f32 v106, v106, v111, v76
	v_fma_f32 v107, v107, v110, v75
	v_fma_f32 v108, v108, v109, v74
	.loc	1 394 24                        ; generate_amdgcn.py:394:24
	v_mul_f32_e32 v109, v16, v91
	v_mul_f32_e32 v110, v15, v91
	v_mul_f32_e32 v111, v14, v91
	v_mul_f32_e32 v112, v13, v91
	v_mul_f32_e32 v113, v12, v91
	v_mul_f32_e32 v114, v11, v91
	v_mul_f32_e32 v115, v10, v91
	v_mul_f32_e32 v116, v9, v91
	v_mul_f32_e32 v117, v8, v91
	v_mul_f32_e32 v147, v7, v91
	v_mul_f32_e32 v148, v6, v91
	v_mul_f32_e32 v149, v5, v91
	v_mul_f32_e32 v150, v4, v91
	v_mul_f32_e32 v151, v3, v91
	v_mul_f32_e32 v152, v2, v91
	v_mul_f32_e32 v153, v1, v91
	.loc	1 390 22                        ; generate_amdgcn.py:390:22
	v_mov_b16_e32 v91.h, v120.l
	.loc	1 333 5                         ; generate_amdgcn.py:333:5
	v_cndmask_b32_e64 v82, v82, v92, s3
	v_cndmask_b32_e64 v89, v89, v93, s3
	v_cndmask_b32_e64 v88, v88, v94, s3
	v_cndmask_b32_e64 v87, v87, v95, s3
	v_cndmask_b32_e64 v86, v86, v96, s3
	v_cndmask_b32_e64 v85, v85, v97, s3
	v_cndmask_b32_e64 v84, v84, v99, s3
	v_cndmask_b32_e64 v83, v83, v100, s3
	v_cndmask_b32_e64 v81, v81, v101, s3
	v_cndmask_b32_e64 v79, v79, v103, s3
	v_cndmask_b32_e64 v78, v78, v104, s3
	v_cndmask_b32_e64 v77, v77, v105, s3
	v_cndmask_b32_e64 v76, v76, v106, s3
	v_cndmask_b32_e64 v74, v74, v108, s3
	.loc	1 399 13                        ; generate_amdgcn.py:399:13
	v_fma_f32 v92, v109, v146, v73
	v_fma_f32 v93, v110, v145, v72
	v_fma_f32 v94, v111, v21, v71
	v_fma_f32 v95, v112, v171, v70
	v_fma_f32 v96, v113, v142, v69
	v_fma_f32 v97, v114, v141, v68
	v_fma_f32 v99, v115, v140, v67
	v_fma_f32 v100, v116, v176, v66
	v_fma_f32 v101, v117, v138, v65
	v_fma_f32 v103, v148, v253, v63
	v_fma_f32 v104, v149, v135, v62
	v_fma_f32 v105, v150, v134, v61
	v_fma_f32 v106, v151, v177, v60
	v_fma_f32 v108, v153, v131, v58
	.loc	1 394 24                        ; generate_amdgcn.py:394:24
	v_mul_f32_e32 v109, v16, v91
	v_mul_f32_e32 v110, v15, v91
	v_mul_f32_e32 v111, v14, v91
	v_mul_f32_e32 v112, v13, v91
	v_mul_f32_e32 v113, v12, v91
	v_mul_f32_e32 v114, v11, v91
	v_mul_f32_e32 v115, v10, v91
	v_mul_f32_e32 v116, v9, v91
	v_dual_mul_f32 v117, v8, v91 :: v_dual_lshlrev_b32 v0, 6, v17
	v_mul_f32_e32 v131, v7, v91
	v_mul_f32_e32 v132, v6, v91
	v_mul_f32_e32 v133, v5, v91
	v_mul_f32_e32 v134, v4, v91
	v_mul_f32_e32 v135, v3, v91
	v_mul_f32_e32 v136, v2, v91
	v_mul_f32_e32 v137, v1, v91
	.loc	1 390 22                        ; generate_amdgcn.py:390:22
	v_mov_b16_e64 v91.h, v154.l
	.loc	1 333 5                         ; generate_amdgcn.py:333:5
	v_cndmask_b32_e64 v72, v72, v93, s3
	v_cndmask_b32_e64 v71, v71, v94, s3
	v_cndmask_b32_e64 v93, v63, v103, s3
	v_cndmask_b32_e64 v94, v60, v106, s3
	.loc	1 399 13                        ; generate_amdgcn.py:399:13
	v_fma_f32 v60, v110, v248, v56
	v_fma_f32 v63, v111, v247, v55
	.loc	1 394 24                        ; generate_amdgcn.py:394:24
	v_mul_f32_e32 v15, v15, v91
	v_mul_f32_e32 v12, v12, v91
	v_mul_f32_e32 v11, v11, v91
	v_mul_f32_e32 v10, v10, v91
	v_mul_f32_e32 v9, v9, v91
	v_mul_f32_e32 v2, v2, v91
	v_mul_f32_e32 v1, v1, v91
	v_mul_f32_e32 v16, v16, v91
	v_mul_f32_e32 v14, v14, v91
	v_mul_f32_e32 v13, v13, v91
	.loc	1 333 5                         ; generate_amdgcn.py:333:5
	v_cndmask_b32_e64 v60, v56, v60, s3
	v_cndmask_b32_e64 v56, v55, v63, s3
	.loc	1 399 13                        ; generate_amdgcn.py:399:13
	v_fma_f32 v15, v15, v240, v39
	v_fma_f32 v12, v12, v237, v33
	v_fma_f32 v11, v11, v236, v32
	v_fma_f32 v10, v10, v235, v31
	v_fma_f32 v9, v9, v234, v30
	v_fma_f32 v63, v2, v19, v23
	v_fma_f32 v19, v1, v118, v22
	.loc	1 394 24                        ; generate_amdgcn.py:394:24
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 399 13                        ; generate_amdgcn.py:399:13
	v_fma_f32 v16, v16, v244, v40
	v_fma_f32 v14, v14, v239, v38
	v_fma_f32 v13, v13, v238, v37
	.loc	1 333 5                         ; generate_amdgcn.py:333:5
	v_cndmask_b32_e64 v33, v33, v12, s3
	v_cndmask_b32_e64 v32, v32, v11, s3
	v_cndmask_b32_e64 v30, v30, v9, s3
	v_cndmask_b32_e64 v40, v40, v16, s3
	v_cndmask_b32_e64 v38, v38, v14, s3
	v_cndmask_b32_e64 v37, v37, v13, s3
	v_cndmask_b32_e64 v19, v22, v19, s3
	v_cndmask_b32_e64 v80, v80, v102, s3
	v_cndmask_b32_e64 v75, v75, v107, s3
	.loc	1 399 13                        ; generate_amdgcn.py:399:13
	v_fma_f32 v107, v152, v255, v59
	.loc	1 333 5                         ; generate_amdgcn.py:333:5
	v_cndmask_b32_e64 v73, v73, v92, s3
	v_cndmask_b32_e64 v70, v70, v95, s3
	v_cndmask_b32_e64 v67, v67, v99, s3
	v_cndmask_b32_e64 v62, v62, v104, s3
	v_cndmask_b32_e64 v95, v59, v107, s3
	.loc	1 399 13                        ; generate_amdgcn.py:399:13
	v_fma_f32 v99, v115, v129, v51
	v_fma_f32 v103, v132, v173, v47
	v_fma_f32 v104, v133, v20, v46
	v_fma_f32 v20, v136, v250, v43
	v_fma_f32 v21, v137, v254, v42
	.loc	1 394 24                        ; generate_amdgcn.py:394:24
	v_mul_f32_e32 v8, v8, v91
	v_mul_f32_e32 v7, v7, v91
	v_mul_f32_e32 v6, v6, v91
	v_mul_f32_e32 v5, v5, v91
	v_mul_f32_e32 v4, v4, v91
	v_mul_f32_e32 v3, v3, v91
	.loc	1 333 5                         ; generate_amdgcn.py:333:5
	v_cndmask_b32_e64 v91, v47, v103, s3
	v_cndmask_b32_e64 v20, v43, v20, s3
	v_cndmask_b32_e64 v21, v42, v21, s3
	.loc	1 399 13                        ; generate_amdgcn.py:399:13
	v_fma_f32 v42, v8, v121, v29
	v_fma_f32 v43, v7, v172, v28
	v_fma_f32 v47, v6, v190, v27
	v_fma_f32 v55, v4, v233, v25
	.loc	1 333 5                         ; generate_amdgcn.py:333:5
	v_cndmask_b32_e64 v69, v69, v96, s3
	v_cndmask_b32_e64 v68, v68, v97, s3
	v_cndmask_b32_e64 v66, v66, v100, s3
	v_cndmask_b32_e64 v65, v65, v101, s3
	v_cndmask_b32_e64 v61, v61, v105, s3
	.loc	1 399 13                        ; generate_amdgcn.py:399:13
	v_fma_f32 v96, v113, v178, v53
	v_fma_f32 v100, v116, v128, v50
	v_fma_f32 v101, v117, v127, v49
	v_fma_f32 v105, v134, v124, v45
	v_fma_f32 v106, v135, v174, v44
	.loc	1 333 5                         ; generate_amdgcn.py:333:5
	v_cndmask_b32_e64 v58, v58, v108, s3
	v_cndmask_b32_e64 v53, v53, v96, s3
	v_cndmask_b32_e64 v50, v50, v100, s3
	v_cndmask_b32_e64 v49, v49, v101, s3
	v_cndmask_b32_e64 v46, v46, v104, s3
	v_cndmask_b32_e64 v45, v45, v105, s3
	v_cndmask_b32_e64 v44, v44, v106, s3
	v_cndmask_b32_e64 v29, v29, v42, s3
	v_cndmask_b32_e64 v23, v23, v63, s3
	v_cndmask_b32_e64 v28, v28, v43, s3
	v_cndmask_b32_e64 v27, v27, v47, s3
	v_cndmask_b32_e64 v25, v25, v55, s3
	.loc	1 418 23                        ; generate_amdgcn.py:418:23
	s_mul_i32 s37, s22, s23
	s_mul_i32 s0, s23, 3
	s_add_i32 s70, s37, s23
	s_lshl1_add_u32 s69, s23, s37
	s_mul_i32 s22, s23, 24
	s_add_i32 s68, s37, s0
	s_mul_i32 s1, s23, 5
	s_mul_i32 s4, s23, 9
	s_mul_i32 s5, s23, 10
	s_mul_i32 s6, s23, 11
	s_mul_i32 s7, s23, 12
	s_mul_i32 s8, s23, 13
	s_mul_i32 s9, s23, 14
	s_mul_i32 s12, s23, 15
	s_mul_i32 s13, s23, 17
	s_mul_i32 s14, s23, 18
	s_mul_i32 s15, s23, 19
	s_mul_i32 s16, s23, 20
	s_mul_i32 s17, s23, 21
	s_mul_i32 s18, s23, 22
	s_mul_i32 s19, s23, 23
	s_mul_i32 s24, s23, 25
	s_mul_i32 s25, s23, 26
	s_mul_i32 s26, s23, 27
	s_mul_i32 s27, s23, 28
	s_mul_i32 s28, s23, 29
	s_mul_i32 s29, s23, 30
	s_mul_i32 s30, s23, 31
	s_lshl_b32 s31, s23, 5
	s_mul_i32 s33, s23, 33
	s_mul_i32 s34, s23, 34
	s_mul_i32 s35, s23, 35
	s_mul_i32 s71, s23, 36
	s_mul_i32 s72, s23, 37
	s_mul_i32 s73, s23, 38
	s_mul_i32 s74, s23, 39
	s_mul_i32 s75, s23, 40
	s_mul_i32 s76, s23, 41
	s_mul_i32 s77, s23, 42
	s_mul_i32 s78, s23, 43
	s_mul_i32 s79, s23, 44
	s_mul_i32 s80, s23, 45
	s_mul_i32 s81, s23, 46
	s_mul_i32 s82, s23, 47
	s_mul_i32 s83, s23, 48
	s_mul_i32 s84, s23, 49
	s_mul_i32 s85, s23, 50
	s_mul_i32 s86, s23, 51
	s_mul_i32 s87, s23, 52
	s_mul_i32 s88, s23, 53
	s_mul_i32 s89, s23, 54
	s_mul_i32 s90, s23, 55
	s_mul_i32 s91, s23, 56
	s_mul_i32 s92, s23, 57
	s_mul_i32 s93, s23, 58
	s_mul_i32 s94, s23, 59
	s_mul_i32 s95, s23, 60
	s_mul_i32 s96, s23, 61
	s_mul_i32 s97, s23, 62
	s_mul_i32 s98, s23, 63
	s_lshl2_add_u32 s67, s23, s37
	s_lshl3_add_u32 s63, s23, s37
	s_lshl4_add_u32 s55, s23, s37
	s_add_i32 s47, s37, s22
	.loc	1 418 9 is_stmt 0               ; generate_amdgcn.py:418:9
	s_and_b32 s21, s21, 0xffff
	s_mov_b32 s22, s10
	.loc	1 418 23                        ; generate_amdgcn.py:418:23
	s_add_i32 s66, s37, s1
	s_add_i32 s62, s37, s4
	s_add_i32 s61, s37, s5
	s_add_i32 s60, s37, s6
	s_add_i32 s59, s37, s7
	s_add_i32 s58, s37, s8
	s_add_i32 s57, s37, s9
	s_add_i32 s56, s37, s12
	s_add_i32 s54, s37, s13
	s_add_i32 s53, s37, s14
	s_add_i32 s52, s37, s15
	s_add_i32 s51, s37, s16
	s_add_i32 s50, s37, s17
	s_add_i32 s49, s37, s18
	s_add_i32 s48, s37, s19
	s_add_i32 s46, s37, s24
	s_add_i32 s45, s37, s25
	s_add_i32 s44, s37, s26
	s_add_i32 s43, s37, s27
	s_add_i32 s42, s37, s28
	s_add_i32 s41, s37, s29
	s_add_i32 s40, s37, s30
	s_add_i32 s39, s37, s31
	s_add_i32 s38, s37, s33
	s_add_i32 s36, s37, s34
	s_add_i32 s34, s37, s35
	s_add_i32 s33, s37, s71
	s_add_i32 s31, s37, s72
	s_add_i32 s30, s37, s73
	s_add_i32 s24, s37, s74
	s_add_i32 s19, s37, s75
	s_add_i32 s17, s37, s76
	s_add_i32 s15, s37, s77
	s_add_i32 s13, s37, s78
	s_add_i32 s8, s37, s79
	s_add_i32 s6, s37, s80
	s_add_i32 s4, s37, s81
	s_add_i32 s1, s37, s82
	s_add_i32 s35, s37, s83
	s_add_i32 s28, s37, s84
	s_add_i32 s26, s37, s85
	s_add_i32 s29, s37, s86
	s_add_i32 s27, s37, s87
	s_add_i32 s25, s37, s88
	s_add_i32 s18, s37, s89
	s_add_i32 s16, s37, s90
	s_add_i32 s14, s37, s91
	s_add_i32 s9, s37, s92
	s_add_i32 s12, s37, s93
	s_add_i32 s7, s37, s94
	s_add_i32 s5, s37, s95
	s_add_i32 s0, s37, s98
	.loc	1 392 22 is_stmt 1              ; generate_amdgcn.py:392:22
	s_waitcnt vmcnt(4)
	v_lshlrev_b32_e32 v1, 16, v90
	.loc	1 333 5                         ; generate_amdgcn.py:333:5
	v_cndmask_b32_e64 v90, v39, v15, s3
	v_cndmask_b32_e64 v39, v31, v10, s3
	.loc	1 390 22                        ; generate_amdgcn.py:390:22
	s_waitcnt vmcnt(2)
	v_lshlrev_b32_e32 v22, 16, v34
	s_waitcnt vmcnt(1)
	v_lshlrev_b32_e32 v34, 16, v35
	.loc	1 394 24                        ; generate_amdgcn.py:394:24
	ds_store_b32 v165, v1 offset:40960
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[9:12], v163 offset:41472
	ds_load_b128 v[13:16], v163 offset:41488
	.loc	1 390 22                        ; generate_amdgcn.py:390:22
	v_lshlrev_b32_e32 v31, 16, v41
	.loc	1 394 24                        ; generate_amdgcn.py:394:24
	s_waitcnt vmcnt(0) lgkmcnt(1)
	v_dual_mul_f32 v126, v9, v34 :: v_dual_lshlrev_b32 v35, 16, v36
	.loc	1 399 13                        ; generate_amdgcn.py:399:13
	v_fma_f32 v102, v147, v175, v64
	.loc	1 394 24                        ; generate_amdgcn.py:394:24
	v_mul_f32_e32 v129, v12, v34
	s_waitcnt lgkmcnt(0)
	v_mul_f32_e32 v132, v15, v34
	.loc	1 399 13                        ; generate_amdgcn.py:399:13
	v_fma_f32 v59, v109, v166, v57
	.loc	1 394 24                        ; generate_amdgcn.py:394:24
	v_mul_f32_e32 v100, v13, v31
	.loc	1 333 5                         ; generate_amdgcn.py:333:5
	v_cndmask_b32_e64 v92, v64, v102, s3
	.loc	1 399 13                        ; generate_amdgcn.py:399:13
	v_fma_f32 v64, v112, v246, v54
	v_fma_f32 v102, v131, v164, v48
	.loc	1 333 5                         ; generate_amdgcn.py:333:5
	v_cndmask_b32_e64 v57, v57, v59, s3
	.loc	1 399 13                        ; generate_amdgcn.py:399:13
	v_fma_f32 v59, v3, v232, v24
	.loc	1 394 24                        ; generate_amdgcn.py:394:24
	ds_load_b128 v[1:4], v163 offset:40960
	.loc	1 333 5                         ; generate_amdgcn.py:333:5
	v_cndmask_b32_e64 v54, v54, v64, s3
	v_cndmask_b32_e64 v64, v51, v99, s3
	.loc	1 399 13                        ; generate_amdgcn.py:399:13
	v_fma_f32 v51, v5, v252, v26
	.loc	1 394 24                        ; generate_amdgcn.py:394:24
	ds_load_b128 v[5:8], v163 offset:40976
	v_mul_f32_e32 v131, v14, v34
	.loc	1 399 13                        ; generate_amdgcn.py:399:13
	v_fma_f32 v97, v114, v130, v52
	.loc	1 333 5                         ; generate_amdgcn.py:333:5
	v_cndmask_b32_e64 v48, v48, v102, s3
	v_cndmask_b32_e64 v24, v24, v59, s3
	.loc	1 394 24                        ; generate_amdgcn.py:394:24
	v_dual_mul_f32 v102, v15, v31 :: v_dual_mul_f32 v111, v9, v22
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 333 5                         ; generate_amdgcn.py:333:5
	v_cndmask_b32_e64 v52, v52, v97, s3
	.loc	1 394 24                        ; generate_amdgcn.py:394:24
	v_mul_f32_e32 v112, v10, v22
	v_mul_f32_e32 v113, v11, v22
	v_mul_f32_e32 v114, v12, v22
	v_mul_f32_e32 v115, v13, v22
	v_mul_f32_e32 v116, v14, v22
	v_mul_f32_e32 v117, v15, v22
	v_mul_f32_e32 v127, v10, v34
	.loc	1 333 5                         ; generate_amdgcn.py:333:5
	v_cndmask_b32_e64 v26, v26, v51, s3
	.loc	1 394 24                        ; generate_amdgcn.py:394:24
	s_waitcnt lgkmcnt(1)
	v_mul_f32_e32 v36, v1, v31
	v_mul_f32_e32 v41, v2, v31
	v_dual_mul_f32 v42, v3, v31 :: v_dual_mul_f32 v103, v1, v22
	v_mul_f32_e32 v104, v2, v22
	v_mul_f32_e32 v105, v3, v22
	v_mul_f32_e32 v106, v4, v22
	s_waitcnt lgkmcnt(0)
	v_mul_f32_e32 v107, v5, v22
	v_mul_f32_e32 v108, v6, v22
	v_mul_f32_e32 v109, v7, v22
	v_mul_f32_e32 v110, v8, v22
	v_mul_f32_e32 v118, v1, v34
	v_mul_f32_e32 v119, v2, v34
	v_mul_f32_e32 v120, v3, v34
	v_mul_f32_e32 v121, v4, v34
	v_mul_f32_e32 v122, v5, v34
	v_mul_f32_e32 v123, v6, v34
	v_mul_f32_e32 v124, v7, v34
	v_mul_f32_e32 v125, v8, v34
	v_mul_f32_e32 v43, v4, v31
	v_mul_f32_e32 v47, v5, v31
	v_mul_f32_e32 v51, v6, v31
	v_mul_f32_e32 v55, v7, v31
	v_mul_f32_e32 v59, v8, v31
	v_mul_f32_e32 v63, v9, v31
	v_mul_f32_e32 v96, v10, v31
	v_mul_f32_e32 v97, v11, v31
	v_mul_f32_e32 v99, v12, v31
	v_mul_f32_e32 v101, v14, v31
	v_mul_f32_e32 v31, v16, v31
	v_mul_f32_e32 v22, v16, v22
	v_mul_f32_e32 v128, v11, v34
	v_mul_f32_e32 v130, v13, v34
	v_dual_mul_f32 v34, v16, v34 :: v_dual_mul_f32 v1, v1, v35
	v_mul_f32_e32 v2, v2, v35
	v_mul_f32_e32 v3, v3, v35
	v_mul_f32_e32 v4, v4, v35
	v_mul_f32_e32 v5, v5, v35
	v_mul_f32_e32 v6, v6, v35
	v_mul_f32_e32 v7, v7, v35
	v_mul_f32_e32 v8, v8, v35
	v_mul_f32_e32 v9, v9, v35
	v_mul_f32_e32 v10, v10, v35
	v_mul_f32_e32 v11, v11, v35
	v_mul_f32_e32 v12, v12, v35
	v_mul_f32_e32 v13, v13, v35
	v_mul_f32_e32 v14, v14, v35
	v_mul_f32_e32 v15, v15, v35
	v_mul_f32_e32 v16, v16, v35
	.loc	1 399 13                        ; generate_amdgcn.py:399:13
	v_fma_f32 v35, v36, v98, v19
	v_fma_f32 v36, v41, v167, v23
	v_fma_f32 v41, v42, v168, v24
	v_fma_f32 v98, v100, v179, v37
	v_fma_f32 v100, v102, v181, v90
	v_fma_f32 v102, v103, v183, v21
	v_fma_f32 v103, v104, v184, v20
	v_fma_f32 v104, v105, v185, v44
	v_fma_f32 v105, v106, v186, v45
	v_fma_f32 v106, v107, v187, v46
	v_fma_f32 v107, v108, v188, v91
	v_fma_f32 v108, v109, v189, v48
	v_fma_f32 v109, v110, v191, v49
	v_fma_f32 v110, v111, v192, v50
	v_fma_f32 v111, v112, v193, v64
	v_fma_f32 v112, v113, v194, v52
	v_fma_f32 v113, v114, v195, v53
	v_fma_f32 v114, v115, v196, v54
	v_fma_f32 v115, v116, v197, v56
	v_fma_f32 v116, v117, v198, v60
	v_fma_f32 v117, v118, v200, v58
	v_fma_f32 v118, v119, v201, v95
	v_fma_f32 v119, v120, v202, v94
	v_fma_f32 v120, v121, v203, v61
	v_fma_f32 v121, v122, v204, v62
	v_fma_f32 v122, v123, v205, v93
	v_fma_f32 v123, v124, v206, v92
	v_fma_f32 v124, v125, v207, v65
	v_fma_f32 v125, v126, v208, v66
	v_fma_f32 v126, v127, v209, v67
	v_fma_f32 v42, v43, v169, v25
	v_fma_f32 v43, v47, v170, v26
	v_fma_f32 v47, v51, v155, v27
	v_fma_f32 v51, v55, v161, v28
	v_fma_f32 v55, v59, v162, v29
	v_fma_f32 v59, v63, v249, v30
	v_fma_f32 v63, v96, v251, v39
	v_fma_f32 v96, v97, v139, v32
	v_fma_f32 v127, v128, v210, v68
	v_fma_f32 v128, v129, v211, v69
	v_fma_f32 v140, v9, v224, v83
	.loc	1 333 5                         ; generate_amdgcn.py:333:5
	v_cndmask_b32_e64 v9, v24, v41, s2
	v_cndmask_b32_e64 v41, v67, v126, s2
	.loc	1 418 9                         ; generate_amdgcn.py:418:9
	v_and_b32_e32 v67, 16, v17
	.loc	1 399 13                        ; generate_amdgcn.py:399:13
	v_fma_f32 v129, v130, v212, v70
	v_fma_f32 v130, v131, v213, v71
	v_fma_f32 v131, v132, v214, v72
	v_fma_f32 v132, v1, v216, v74
	v_fma_f32 v145, v14, v229, v88
	.loc	1 333 5                         ; generate_amdgcn.py:333:5
	v_cndmask_b32_e64 v1, v19, v35, s2
	v_cndmask_b32_e64 v19, v26, v43, s2
	v_cndmask_b32_e64 v43, v32, v96, s2
	v_cndmask_b32_e64 v14, v45, v105, s2
	v_cndmask_b32_e64 v32, v49, v109, s2
	v_cndmask_b32_e64 v45, v68, v127, s2
	v_cndmask_b32_e64 v49, v69, v128, s2
	.loc	1 418 9                         ; generate_amdgcn.py:418:9
	v_and_b32_e32 v68, 0xcf0, v241
	v_and_or_b32 v69, v243, 64, v67
	.loc	1 399 13                        ; generate_amdgcn.py:399:13
	v_fma_f32 v136, v5, v220, v78
	.loc	1 333 5                         ; generate_amdgcn.py:333:5
	v_cndmask_b32_e64 v5, v23, v36, s2
	v_cndmask_b32_e64 v23, v27, v47, s2
	v_cndmask_b32_e64 v27, v28, v51, s2
	v_cndmask_b32_e64 v28, v48, v108, s2
	v_cndmask_b32_e64 v48, v53, v113, s2
	v_cndmask_b32_e64 v53, v70, v129, s2
	.loc	1 418 9                         ; generate_amdgcn.py:418:9
	v_lshlrev_b32_e32 v70, 13, v17
	v_xor_b32_e32 v68, v69, v68
	.loc	1 399 13                        ; generate_amdgcn.py:399:13
	v_fma_f32 v134, v3, v218, v76
	v_fma_f32 v97, v99, v144, v33
	v_fma_f32 v99, v101, v180, v38
	v_fma_f32 v101, v31, v182, v40
	.loc	1 418 9                         ; generate_amdgcn.py:418:9
	v_and_or_b32 v68, 0xe000, v70, v68
	.loc	1 399 13                        ; generate_amdgcn.py:399:13
	v_fma_f32 v22, v22, v199, v57
	v_fma_f32 v138, v7, v222, v80
	v_fma_f32 v133, v2, v217, v75
	v_fma_f32 v135, v4, v219, v77
	.loc	1 333 5                         ; generate_amdgcn.py:333:5
	v_cndmask_b32_e64 v2, v21, v102, s2
	v_cndmask_b32_e64 v3, v58, v117, s2
	v_cndmask_b32_e64 v4, v74, v132, s2
	.loc	1 418 9                         ; generate_amdgcn.py:418:9
	v_add_nc_u32_e32 v69, 0, v68
	.loc	1 399 13                        ; generate_amdgcn.py:399:13
	v_fma_f32 v141, v10, v225, v84
	v_fma_f32 v142, v11, v226, v85
	v_fma_f32 v143, v12, v227, v86
	.loc	1 333 5                         ; generate_amdgcn.py:333:5
	v_cndmask_b32_e64 v10, v44, v104, s2
	v_cndmask_b32_e64 v11, v94, v119, s2
	v_cndmask_b32_e64 v12, v76, v134, s2
	.loc	1 399 13                        ; generate_amdgcn.py:399:13
	v_fma_f32 v137, v6, v221, v79
	.loc	1 333 5                         ; generate_amdgcn.py:333:5
	v_cndmask_b32_e64 v39, v39, v63, s2
	v_cndmask_b32_e64 v63, v40, v101, s2
	v_cndmask_b32_e64 v6, v20, v103, s2
	v_cndmask_b32_e64 v20, v46, v106, s2
	v_cndmask_b32_e64 v40, v64, v111, s2
	v_cndmask_b32_e64 v64, v57, v22, s2
	v_cndmask_b32_e64 v21, v62, v121, s2
	v_cndmask_b32_e64 v22, v78, v136, s2
	v_cndmask_b32_e64 v31, v29, v55, s2
	v_cndmask_b32_e64 v35, v30, v59, s2
	v_cndmask_b32_e64 v29, v92, v123, s2
	v_cndmask_b32_e64 v30, v80, v138, s2
	.loc	1 418 9                         ; generate_amdgcn.py:418:9
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v69, v[1:4]
	ds_store_b128 v69, v[9:12] offset:256
	ds_store_b128 v69, v[19:22] offset:512
	ds_store_b128 v69, v[27:30] offset:768
	v_lshlrev_b32_e32 v2, 2, v67
	.loc	1 399 13                        ; generate_amdgcn.py:399:13
	v_fma_f32 v144, v13, v228, v87
	v_fma_f32 v34, v34, v215, v73
	v_fma_f32 v139, v8, v223, v81
	v_fma_f32 v146, v15, v230, v89
	.loc	1 333 5                         ; generate_amdgcn.py:333:5
	v_cndmask_b32_e64 v51, v37, v98, s2
	v_cndmask_b32_e64 v55, v38, v99, s2
	v_cndmask_b32_e64 v36, v50, v110, s2
	v_cndmask_b32_e64 v7, v95, v118, s2
	v_cndmask_b32_e64 v37, v66, v125, s2
	v_cndmask_b32_e64 v8, v75, v133, s2
	v_cndmask_b32_e64 v38, v83, v140, s2
	.loc	1 418 9                         ; generate_amdgcn.py:418:9
	v_xad_u32 v1, v68, 32, 0
	v_and_or_b32 v0, 0x300, v0, v2
	.loc	1 399 13                        ; generate_amdgcn.py:399:13
	v_fma_f32 v147, v16, v231, v82
	.loc	1 333 5                         ; generate_amdgcn.py:333:5
	v_cndmask_b32_e64 v13, v25, v42, s2
	v_cndmask_b32_e64 v44, v52, v112, s2
	v_cndmask_b32_e64 v15, v61, v120, s2
	v_cndmask_b32_e64 v16, v77, v135, s2
	v_cndmask_b32_e64 v46, v85, v142, s2
	v_cndmask_b32_e64 v24, v91, v107, s2
	v_cndmask_b32_e64 v52, v54, v114, s2
	v_cndmask_b32_e64 v25, v93, v122, s2
	v_cndmask_b32_e64 v26, v79, v137, s2
	v_cndmask_b32_e64 v54, v87, v144, s2
	v_cndmask_b32_e64 v47, v33, v97, s2
	v_cndmask_b32_e64 v59, v90, v100, s2
	v_cndmask_b32_e64 v60, v60, v116, s2
	v_cndmask_b32_e64 v33, v65, v124, s2
	v_cndmask_b32_e64 v61, v72, v131, s2
	v_cndmask_b32_e64 v65, v73, v34, s2
	v_cndmask_b32_e64 v34, v81, v139, s2
	v_cndmask_b32_e64 v62, v89, v146, s2
	.loc	1 418 9                         ; generate_amdgcn.py:418:9
	ds_store_b128 v69, v[35:38] offset:4096
	ds_store_b128 v69, v[43:46] offset:4352
	ds_store_b128 v69, v[51:54] offset:4608
	ds_store_b128 v69, v[59:62] offset:4864
	ds_store_b128 v1, v[5:8]
	ds_store_b128 v1, v[13:16] offset:256
	ds_store_b128 v1, v[23:26] offset:512
	ds_store_b128 v1, v[31:34] offset:768
	v_or3_b32 v16, v0, v242, v245
	.loc	1 333 5                         ; generate_amdgcn.py:333:5
	v_cndmask_b32_e64 v42, v84, v141, s2
	v_cndmask_b32_e64 v50, v86, v143, s2
	v_cndmask_b32_e64 v56, v56, v115, s2
	v_cndmask_b32_e64 v57, v71, v130, s2
	.loc	1 418 9                         ; generate_amdgcn.py:418:9
	v_add_nc_u32_e32 v4, 0, v16
	v_xad_u32 v12, 0x2010, v16, 0
	v_xad_u32 v31, 0x6030, v16, 0
	.loc	1 333 5                         ; generate_amdgcn.py:333:5
	v_cndmask_b32_e64 v58, v88, v145, s2
	v_cndmask_b32_e64 v66, v82, v147, s2
	.loc	1 418 9                         ; generate_amdgcn.py:418:9
	v_xad_u32 v17, 0x4020, v16, 0
	ds_store_b128 v1, v[39:42] offset:4096
	ds_store_b128 v1, v[47:50] offset:4352
	ds_store_b128 v1, v[55:58] offset:4608
	ds_store_b128 v1, v[63:66] offset:4864
	v_xad_u32 v47, 0xa050, v16, 0
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[0:3], v4
	ds_load_b128 v[4:7], v4 offset:128
	ds_load_b128 v[8:11], v12
	ds_load_b128 v[12:15], v12 offset:128
	ds_load_b128 v[19:22], v17
	ds_load_b128 v[23:26], v17 offset:128
	v_xad_u32 v17, 0x8040, v16, 0
	ds_load_b128 v[27:30], v31
	ds_load_b128 v[31:34], v31 offset:128
	v_xad_u32 v55, 0xc060, v16, 0
	v_xad_u32 v16, 0xe070, v16, 0
	ds_load_b128 v[43:46], v47
	ds_load_b128 v[47:50], v47 offset:128
	ds_load_b128 v[51:54], v55
	ds_load_b128 v[55:58], v55 offset:128
	ds_load_b128 v[59:62], v16
	ds_load_b128 v[35:38], v17
	ds_load_b128 v[39:42], v17 offset:128
	v_add_lshl_u32 v17, s37, v18, 2
	v_add_lshl_u32 v67, s70, v18, 2
	ds_load_b128 v[63:66], v16 offset:128
	v_add_lshl_u32 v68, s69, v18, 2
	.loc	1 418 23 is_stmt 0              ; generate_amdgcn.py:418:23
	s_mul_i32 s2, s23, 6
	s_mul_i32 s3, s23, 7
	.loc	1 418 9                         ; generate_amdgcn.py:418:9
	s_mov_b32 s23, s11
	v_add_lshl_u32 v69, s68, v18, 2
	.loc	1 418 23                        ; generate_amdgcn.py:418:23
	s_add_i32 s65, s37, s2
	.loc	1 418 9                         ; generate_amdgcn.py:418:9
	s_waitcnt lgkmcnt(15)
	buffer_atomic_add_f32 v0, v17, s[20:23], 0 offen
	s_waitcnt lgkmcnt(13)
	buffer_atomic_add_f32 v8, v67, s[20:23], 0 offen
	s_waitcnt lgkmcnt(11)
	buffer_atomic_add_f32 v19, v68, s[20:23], 0 offen
	s_waitcnt lgkmcnt(9)
	buffer_atomic_add_f32 v27, v69, s[20:23], 0 offen
	v_add_lshl_u32 v0, s67, v18, 2
	.loc	1 418 23                        ; generate_amdgcn.py:418:23
	s_add_i32 s64, s37, s3
	.loc	1 418 9                         ; generate_amdgcn.py:418:9
	v_add_lshl_u32 v8, s66, v18, 2
	v_add_lshl_u32 v16, s65, v18, 2
	v_add_lshl_u32 v17, s64, v18, 2
	v_add_lshl_u32 v19, s63, v18, 2
	s_waitcnt lgkmcnt(2)
	s_clause 0x4
	buffer_atomic_add_f32 v35, v0, s[20:23], 0 offen
	buffer_atomic_add_f32 v43, v8, s[20:23], 0 offen
	buffer_atomic_add_f32 v51, v16, s[20:23], 0 offen
	buffer_atomic_add_f32 v59, v17, s[20:23], 0 offen
	buffer_atomic_add_f32 v4, v19, s[20:23], 0 offen
	v_add_lshl_u32 v0, s62, v18, 2
	v_add_lshl_u32 v4, s61, v18, 2
	v_add_lshl_u32 v8, s60, v18, 2
	v_add_lshl_u32 v16, s59, v18, 2
	v_add_lshl_u32 v17, s58, v18, 2
	s_clause 0x2
	buffer_atomic_add_f32 v12, v0, s[20:23], 0 offen
	buffer_atomic_add_f32 v23, v4, s[20:23], 0 offen
	buffer_atomic_add_f32 v31, v8, s[20:23], 0 offen
	s_waitcnt lgkmcnt(1)
	s_clause 0x1
	buffer_atomic_add_f32 v39, v16, s[20:23], 0 offen
	buffer_atomic_add_f32 v47, v17, s[20:23], 0 offen
	v_add_lshl_u32 v0, s57, v18, 2
	v_add_lshl_u32 v4, s56, v18, 2
	v_add_lshl_u32 v8, s55, v18, 2
	v_add_lshl_u32 v12, s54, v18, 2
	v_add_lshl_u32 v16, s53, v18, 2
	buffer_atomic_add_f32 v55, v0, s[20:23], 0 offen
	s_waitcnt lgkmcnt(0)
	s_clause 0x3
	buffer_atomic_add_f32 v63, v4, s[20:23], 0 offen
	buffer_atomic_add_f32 v1, v8, s[20:23], 0 offen
	buffer_atomic_add_f32 v9, v12, s[20:23], 0 offen
	buffer_atomic_add_f32 v20, v16, s[20:23], 0 offen
	v_add_lshl_u32 v0, s52, v18, 2
	v_add_lshl_u32 v1, s51, v18, 2
	v_add_lshl_u32 v4, s50, v18, 2
	v_add_lshl_u32 v8, s49, v18, 2
	v_add_lshl_u32 v9, s48, v18, 2
	s_clause 0x4
	buffer_atomic_add_f32 v28, v0, s[20:23], 0 offen
	buffer_atomic_add_f32 v36, v1, s[20:23], 0 offen
	buffer_atomic_add_f32 v44, v4, s[20:23], 0 offen
	buffer_atomic_add_f32 v52, v8, s[20:23], 0 offen
	buffer_atomic_add_f32 v60, v9, s[20:23], 0 offen
	v_add_lshl_u32 v0, s47, v18, 2
	v_add_lshl_u32 v1, s46, v18, 2
	v_add_lshl_u32 v4, s45, v18, 2
	v_add_lshl_u32 v8, s44, v18, 2
	v_add_lshl_u32 v9, s43, v18, 2
	s_clause 0x4
	buffer_atomic_add_f32 v5, v0, s[20:23], 0 offen
	buffer_atomic_add_f32 v13, v1, s[20:23], 0 offen
	buffer_atomic_add_f32 v24, v4, s[20:23], 0 offen
	buffer_atomic_add_f32 v32, v8, s[20:23], 0 offen
	buffer_atomic_add_f32 v40, v9, s[20:23], 0 offen
	v_add_lshl_u32 v0, s42, v18, 2
	v_add_lshl_u32 v1, s41, v18, 2
	v_add_lshl_u32 v4, s40, v18, 2
	v_add_lshl_u32 v5, s39, v18, 2
	v_add_lshl_u32 v8, s38, v18, 2
	s_clause 0x4
	buffer_atomic_add_f32 v48, v0, s[20:23], 0 offen
	buffer_atomic_add_f32 v56, v1, s[20:23], 0 offen
	buffer_atomic_add_f32 v64, v4, s[20:23], 0 offen
	buffer_atomic_add_f32 v2, v5, s[20:23], 0 offen
	buffer_atomic_add_f32 v10, v8, s[20:23], 0 offen
	v_add_lshl_u32 v0, s36, v18, 2
	v_add_lshl_u32 v1, s34, v18, 2
	v_add_lshl_u32 v2, s33, v18, 2
	v_add_lshl_u32 v4, s31, v18, 2
	v_add_lshl_u32 v5, s30, v18, 2
	s_clause 0x4
	buffer_atomic_add_f32 v21, v0, s[20:23], 0 offen
	buffer_atomic_add_f32 v29, v1, s[20:23], 0 offen
	buffer_atomic_add_f32 v37, v2, s[20:23], 0 offen
	buffer_atomic_add_f32 v45, v4, s[20:23], 0 offen
	buffer_atomic_add_f32 v53, v5, s[20:23], 0 offen
	v_add_lshl_u32 v0, s24, v18, 2
	v_add_lshl_u32 v1, s19, v18, 2
	v_add_lshl_u32 v2, s17, v18, 2
	v_add_lshl_u32 v4, s15, v18, 2
	v_add_lshl_u32 v5, s13, v18, 2
	s_clause 0x4
	buffer_atomic_add_f32 v61, v0, s[20:23], 0 offen
	buffer_atomic_add_f32 v6, v1, s[20:23], 0 offen
	buffer_atomic_add_f32 v14, v2, s[20:23], 0 offen
	buffer_atomic_add_f32 v25, v4, s[20:23], 0 offen
	buffer_atomic_add_f32 v33, v5, s[20:23], 0 offen
	v_add_lshl_u32 v0, s8, v18, 2
	v_add_lshl_u32 v1, s6, v18, 2
	v_add_lshl_u32 v2, s4, v18, 2
	v_add_lshl_u32 v4, s1, v18, 2
	v_add_lshl_u32 v5, s35, v18, 2
	s_clause 0x4
	buffer_atomic_add_f32 v41, v0, s[20:23], 0 offen
	buffer_atomic_add_f32 v49, v1, s[20:23], 0 offen
	buffer_atomic_add_f32 v57, v2, s[20:23], 0 offen
	buffer_atomic_add_f32 v65, v4, s[20:23], 0 offen
	buffer_atomic_add_f32 v3, v5, s[20:23], 0 offen
	v_add_lshl_u32 v0, s28, v18, 2
	v_add_lshl_u32 v1, s26, v18, 2
	v_add_lshl_u32 v2, s29, v18, 2
	v_add_lshl_u32 v3, s27, v18, 2
	v_add_lshl_u32 v4, s25, v18, 2
	s_clause 0x4
	buffer_atomic_add_f32 v11, v0, s[20:23], 0 offen
	buffer_atomic_add_f32 v22, v1, s[20:23], 0 offen
	buffer_atomic_add_f32 v30, v2, s[20:23], 0 offen
	buffer_atomic_add_f32 v38, v3, s[20:23], 0 offen
	buffer_atomic_add_f32 v46, v4, s[20:23], 0 offen
	v_add_lshl_u32 v0, s18, v18, 2
	v_add_lshl_u32 v1, s16, v18, 2
	v_add_lshl_u32 v2, s14, v18, 2
	v_add_lshl_u32 v3, s9, v18, 2
	v_add_lshl_u32 v4, s12, v18, 2
	.loc	1 418 23                        ; generate_amdgcn.py:418:23
	s_add_i32 s2, s37, s96
	.loc	1 418 9                         ; generate_amdgcn.py:418:9
	s_clause 0x4
	buffer_atomic_add_f32 v54, v0, s[20:23], 0 offen
	buffer_atomic_add_f32 v62, v1, s[20:23], 0 offen
	buffer_atomic_add_f32 v7, v2, s[20:23], 0 offen
	buffer_atomic_add_f32 v15, v3, s[20:23], 0 offen
	buffer_atomic_add_f32 v26, v4, s[20:23], 0 offen
	v_add_lshl_u32 v0, s7, v18, 2
	.loc	1 418 23                        ; generate_amdgcn.py:418:23
	s_add_i32 s3, s37, s97
	.loc	1 418 9                         ; generate_amdgcn.py:418:9
	v_add_lshl_u32 v1, s5, v18, 2
	v_add_lshl_u32 v2, s2, v18, 2
	v_add_lshl_u32 v3, s3, v18, 2
	v_add_lshl_u32 v4, s0, v18, 2
	s_clause 0x4
	buffer_atomic_add_f32 v34, v0, s[20:23], 0 offen
	buffer_atomic_add_f32 v42, v1, s[20:23], 0 offen
	buffer_atomic_add_f32 v50, v2, s[20:23], 0 offen
	buffer_atomic_add_f32 v58, v3, s[20:23], 0 offen
	buffer_atomic_add_f32 v66, v4, s[20:23], 0 offen
	.loc	1 309 1 is_stmt 1               ; generate_amdgcn.py:309:1
	s_endpgm
.Ltmp24:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_int8xint8_nt_sc128_none_bm64_bn256_bk64_gm4_w8_s3_weu2_sk8_maskk
		.amdhsa_group_segment_fixed_size 0
		.amdhsa_private_segment_fixed_size 80
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
		.amdhsa_next_free_sgpr 99
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
	.size	amd_strix_halo_gfx1151_int8xint8_nt_sc128_none_bm64_bn256_bk64_gm4_w8_s3_weu2_sk8_maskk, .Lfunc_end0-amd_strix_halo_gfx1151_int8xint8_nt_sc128_none_bm64_bn256_bk64_gm4_w8_s3_weu2_sk8_maskk
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_int8xint8_nt_sc128_none_bm64_bn256_bk64_gm4_w8_s3_weu2_sk8_maskk.num_vgpr, 256
	.set amd_strix_halo_gfx1151_int8xint8_nt_sc128_none_bm64_bn256_bk64_gm4_w8_s3_weu2_sk8_maskk.num_agpr, 0
	.set amd_strix_halo_gfx1151_int8xint8_nt_sc128_none_bm64_bn256_bk64_gm4_w8_s3_weu2_sk8_maskk.numbered_sgpr, 99
	.set amd_strix_halo_gfx1151_int8xint8_nt_sc128_none_bm64_bn256_bk64_gm4_w8_s3_weu2_sk8_maskk.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_int8xint8_nt_sc128_none_bm64_bn256_bk64_gm4_w8_s3_weu2_sk8_maskk.private_seg_size, 80
	.set amd_strix_halo_gfx1151_int8xint8_nt_sc128_none_bm64_bn256_bk64_gm4_w8_s3_weu2_sk8_maskk.uses_vcc, 1
	.set amd_strix_halo_gfx1151_int8xint8_nt_sc128_none_bm64_bn256_bk64_gm4_w8_s3_weu2_sk8_maskk.uses_flat_scratch, 1
	.set amd_strix_halo_gfx1151_int8xint8_nt_sc128_none_bm64_bn256_bk64_gm4_w8_s3_weu2_sk8_maskk.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_int8xint8_nt_sc128_none_bm64_bn256_bk64_gm4_w8_s3_weu2_sk8_maskk.has_recursion, 0
	.set amd_strix_halo_gfx1151_int8xint8_nt_sc128_none_bm64_bn256_bk64_gm4_w8_s3_weu2_sk8_maskk.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 12100
; TotalNumSgprs: 101
; NumVgprs: 256
; ScratchSize: 80
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 31
; NumSGPRsForWavesPerEU: 101
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
	.short	387                             ; DW_AT_call_line
	.byte	30                              ; DW_AT_call_column
	.byte	4                               ; Abbrev [4] 0x68:0xd DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges3                 ; DW_AT_ranges
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
	.quad	.Ltmp20-.Lfunc_begin0
	.quad	.Ltmp21-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges3:
	.quad	.Ltmp18-.Lfunc_begin0
	.quad	.Ltmp19-.Lfunc_begin0
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
	.asciz	"amd_strix_halo_gfx1151_int8xint8_nt_sc128_none_bm64_bn256_bk64_gm4_w8_s3_weu2_sk8_maskk"             ; string offset=75 ; amd_strix_halo_gfx1151_int8xint8_nt_sc128_none_bm64_bn256_bk64_gm4_w8_s3_weu2_sk8_maskk
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
    .name:           amd_strix_halo_gfx1151_int8xint8_nt_sc128_none_bm64_bn256_bk64_gm4_w8_s3_weu2_sk8_maskk
    .private_segment_fixed_size: 80
    .sgpr_count:     101
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_int8xint8_nt_sc128_none_bm64_bn256_bk64_gm4_w8_s3_weu2_sk8_maskk.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     256
    .vgpr_spill_count: 19
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
