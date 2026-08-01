	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_int8xint8_nt_sc256_none_bm64_bn256_bk64_gm4_w8_s3_weu2_sk8_evenk               ; -- Begin function amd_strix_halo_gfx1151_int8xint8_nt_sc256_none_bm64_bn256_bk64_gm4_w8_s3_weu2_sk8_evenk
	.p2align	8
	.type	amd_strix_halo_gfx1151_int8xint8_nt_sc256_none_bm64_bn256_bk64_gm4_w8_s3_weu2_sk8_evenk,@function
amd_strix_halo_gfx1151_int8xint8_nt_sc256_none_bm64_bn256_bk64_gm4_w8_s3_weu2_sk8_evenk:                      ; @amd_strix_halo_gfx1151_int8xint8_nt_sc256_none_bm64_bn256_bk64_gm4_w8_s3_weu2_sk8_evenk
.Lfunc_begin0:
	.file	1 "<repo>/scripts" "generate_amdgcn.py"
	.loc	1 338 0                         ; generate_amdgcn.py:338:0
	.cfi_sections .debug_frame
	.cfi_startproc
; %bb.0:
	s_clause 0x1
	s_load_b64 s[34:35], s[0:1], 0x30
	s_load_b32 s13, s[0:1], 0x38
.Ltmp0:
	.loc	1 349 16 prologue_end           ; generate_amdgcn.py:349:16
	s_abs_i32 s6, s2
.Ltmp1:
	.file	2 "<triton>/python/triton/language" "standard.py"
	.loc	2 43 13                         ; standard.py:43:13 @[ generate_amdgcn.py:347:17 ]
	s_waitcnt lgkmcnt(0)
	s_add_i32 s4, s35, 0xff
.Ltmp2:
	.loc	2 43 13 is_stmt 0               ; standard.py:43:13 @[ generate_amdgcn.py:346:17 ]
	s_add_i32 s7, s34, 63
.Ltmp3:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:347:17 ]
	s_ashr_i32 s5, s4, 31
.Ltmp4:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:346:17 ]
	s_ashr_i32 s9, s7, 31
.Ltmp5:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:347:17 ]
	s_lshr_b32 s5, s5, 24
.Ltmp6:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:346:17 ]
	s_lshr_b32 s9, s9, 26
.Ltmp7:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:347:17 ]
	s_add_i32 s4, s4, s5
.Ltmp8:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:346:17 ]
	s_add_i32 s7, s7, s9
.Ltmp9:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:347:17 ]
	s_ashr_i32 s4, s4, 8
.Ltmp10:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:346:17 ]
	s_ashr_i32 s7, s7, 6
.Ltmp11:
	.loc	1 348 24 is_stmt 1              ; generate_amdgcn.py:348:24
	s_lshl_b32 s12, s4, 2
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	.loc	1 349 16                        ; generate_amdgcn.py:349:16
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
	s_sub_i32 s14, s4, s8
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 350 19                        ; generate_amdgcn.py:350:19
	s_lshl_b32 s17, s14, 2
	.loc	1 352 29                        ; generate_amdgcn.py:352:29
	s_mul_i32 s14, s14, s12
	.loc	1 351 31                        ; generate_amdgcn.py:351:31
	s_sub_i32 s4, s7, s17
	.loc	1 352 29                        ; generate_amdgcn.py:352:29
	s_sub_i32 s2, s2, s14
	.loc	1 351 20                        ; generate_amdgcn.py:351:20
	s_min_i32 s16, s4, 4
	s_load_b256 s[4:11], s[0:1], 0x0
	.loc	1 353 13                        ; generate_amdgcn.py:353:13
	s_abs_i32 s15, s16
	s_abs_i32 s12, s2
	s_cvt_f32_u32 s18, s15
	s_delay_alu instid0(SALU_CYCLE_3) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_iflag_f32_e32 v1, s18
	v_readfirstlane_b32 s18, v1
	s_waitcnt lgkmcnt(0)
	s_mov_b64 s[24:25], s[6:7]
	s_sub_i32 s7, 0, s15
	s_mul_f32 s18, s18, 0x4f7ffffe
	s_delay_alu instid0(SALU_CYCLE_3) | instskip(NEXT) | instid1(SALU_CYCLE_3)
	s_cvt_u32_f32 s6, s18
	s_mul_i32 s7, s7, s6
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_mul_hi_u32 s7, s6, s7
	s_add_i32 s6, s6, s7
	s_mov_b32 s7, 0x31027000
	s_mul_hi_u32 s18, s12, s6
	s_xor_b32 s6, s2, s16
	s_mul_i32 s19, s18, s15
	s_ashr_i32 s14, s6, 31
	s_sub_i32 s12, s12, s19
	s_add_i32 s19, s18, 1
	s_sub_i32 s20, s12, s15
	s_cmp_ge_u32 s12, s15
	s_mov_b32 s6, 0x7ffffffe
	s_cselect_b32 s18, s19, s18
	s_cselect_b32 s12, s20, s12
	s_add_i32 s19, s18, 1
	s_cmp_ge_u32 s12, s15
	.loc	1 406 22                        ; generate_amdgcn.py:406:22
	s_mov_b32 s26, s6
	.loc	1 353 13                        ; generate_amdgcn.py:353:13
	s_cselect_b32 s12, s19, s18
	.loc	1 398 22                        ; generate_amdgcn.py:398:22
	s_lshl_b32 s22, s3, 6
	v_mov_b32_e32 v249, v0
	.loc	1 353 13                        ; generate_amdgcn.py:353:13
	s_xor_b32 s15, s12, s14
.Ltmp12:
	.loc	2 43 13                         ; standard.py:43:13 @[ generate_amdgcn.py:417:30 ]
	s_add_i32 s18, s13, 0xff
.Ltmp13:
	.loc	1 353 13                        ; generate_amdgcn.py:353:13
	s_sub_i32 s12, s15, s14
	.loc	1 406 22                        ; generate_amdgcn.py:406:22
	s_mov_b32 s27, s7
	.loc	1 355 32                        ; generate_amdgcn.py:355:32
	v_lshlrev_b32_e32 v240, 4, v249
	v_lshrrev_b32_e32 v2, 2, v249
	.loc	1 352 28                        ; generate_amdgcn.py:352:28
	s_mul_i32 s16, s12, s16
	s_mov_b64 s[20:21], s[10:11]
	s_sub_i32 s2, s2, s16
	.loc	1 355 32                        ; generate_amdgcn.py:355:32
	v_and_b32_e32 v239, 48, v240
	.loc	1 352 13                        ; generate_amdgcn.py:352:13
	s_add_i32 s2, s2, s17
	.loc	1 356 32                        ; generate_amdgcn.py:356:32
	v_or_b32_e32 v3, 0xc0, v2
	.loc	1 355 14                        ; generate_amdgcn.py:355:14
	s_lshl_b32 s33, s2, 6
.Ltmp14:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:417:30 ]
	s_ashr_i32 s2, s18, 31
.Ltmp15:
	.loc	1 404 30                        ; generate_amdgcn.py:404:30
	v_mad_u64_u32 v[4:5], null, s13, v2, v[239:240]
.Ltmp16:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:417:30 ]
	s_lshr_b32 s2, s2, 24
.Ltmp17:
	.loc	2 43 13 is_stmt 0               ; standard.py:43:13 @[ generate_amdgcn.py:363:28 ]
	s_add_i32 s16, s13, 0x1ff
.Ltmp18:
	.loc	1 356 14 is_stmt 1              ; generate_amdgcn.py:356:14
	s_lshl_b32 s17, s12, 8
	.loc	1 406 30                        ; generate_amdgcn.py:406:30
	v_mul_lo_u32 v1, s13, v3
.Ltmp19:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:417:30 ]
	s_add_i32 s18, s18, s2
.Ltmp20:
	.loc	1 406 30                        ; generate_amdgcn.py:406:30
	s_mul_i32 s2, s17, s13
	.loc	1 404 30                        ; generate_amdgcn.py:404:30
	v_mad_u64_u32 v[5:6], null, s33, s13, v[4:5]
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_cmpk_gt_i32 s16, 0x1ff
	.loc	1 406 30                        ; generate_amdgcn.py:406:30
	v_lshl_add_u32 v7, s13, 6, v4
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_cselect_b32 s3, -1, 0
	.loc	1 406 30                        ; generate_amdgcn.py:406:30
	s_add_i32 s12, s2, s22
	v_lshl_add_u32 v8, s13, 7, v4
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	s_and_b32 s5, s5, 0xffff
	.loc	1 406 22                        ; generate_amdgcn.py:406:22
	s_and_b32 s25, s25, 0xffff
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_cmpk_gt_i32 s16, 0x3ff
	.loc	1 406 30                        ; generate_amdgcn.py:406:30
	v_add_nc_u32_e32 v4, s12, v4
	.loc	1 404 30                        ; generate_amdgcn.py:404:30
	v_add_nc_u32_e32 v6, s22, v5
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_cselect_b32 s2, -1, 0
	.loc	1 398 17                        ; generate_amdgcn.py:398:17
	s_add_i32 s28, s22, 0x200
	.loc	1 406 30                        ; generate_amdgcn.py:406:30
	v_add3_u32 v1, v1, v239, s12
	v_add_nc_u32_e32 v9, s12, v7
	v_add_nc_u32_e32 v10, s12, v8
	s_addk_i32 s12, 0x200
	.loc	1 404 30                        ; generate_amdgcn.py:404:30
	v_add_nc_u32_e32 v5, s28, v5
	.loc	1 406 22                        ; generate_amdgcn.py:406:22
	v_cndmask_b32_e64 v13, 0x80000000, v4, s3
	.loc	1 406 30 is_stmt 0              ; generate_amdgcn.py:406:30
	v_add_nc_u32_e32 v4, 0x200, v4
	.loc	1 404 22 is_stmt 1              ; generate_amdgcn.py:404:22
	v_cndmask_b32_e64 v6, 0x80000000, v6, s3
	.loc	1 406 30                        ; generate_amdgcn.py:406:30
	v_add_nc_u32_e32 v7, s12, v7
	v_add_nc_u32_e32 v8, s12, v8
	.loc	1 406 22 is_stmt 0              ; generate_amdgcn.py:406:22
	v_cndmask_b32_e64 v16, 0x80000000, v1, s3
	.loc	1 406 30                        ; generate_amdgcn.py:406:30
	v_add_nc_u32_e32 v1, 0x200, v1
	.loc	1 406 22                        ; generate_amdgcn.py:406:22
	v_cndmask_b32_e64 v15, 0x80000000, v10, s3
	.loc	1 404 22 is_stmt 1              ; generate_amdgcn.py:404:22
	v_cndmask_b32_e64 v5, 0x80000000, v5, s2
	.loc	1 406 22                        ; generate_amdgcn.py:406:22
	v_cndmask_b32_e64 v14, 0x80000000, v9, s3
	v_cndmask_b32_e64 v4, 0x80000000, v4, s2
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	buffer_load_b128 v[9:12], v6, s[4:7], 0 offen
	.loc	1 406 22                        ; generate_amdgcn.py:406:22
	v_cndmask_b32_e64 v6, 0x80000000, v7, s2
	v_cndmask_b32_e64 v7, 0x80000000, v8, s2
	v_cndmask_b32_e64 v1, 0x80000000, v1, s2
	s_clause 0x3
	buffer_load_b128 v[22:25], v13, s[24:27], 0 offen
	buffer_load_b128 v[26:29], v14, s[24:27], 0 offen
	buffer_load_b128 v[30:33], v15, s[24:27], 0 offen
	buffer_load_b128 v[34:37], v16, s[24:27], 0 offen
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	buffer_load_b128 v[38:41], v5, s[4:7], 0 offen
	.loc	1 406 22                        ; generate_amdgcn.py:406:22
	s_clause 0x3
	buffer_load_b128 v[42:45], v4, s[24:27], 0 offen
	buffer_load_b128 v[46:49], v6, s[24:27], 0 offen
	buffer_load_b128 v[50:53], v7, s[24:27], 0 offen
	buffer_load_b128 v[54:57], v1, s[24:27], 0 offen
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	v_lshlrev_b32_e32 v242, 1, v249
	.loc	1 355 32                        ; generate_amdgcn.py:355:32
	v_and_b32_e32 v4, 15, v249
	v_lshlrev_b32_e32 v5, 3, v249
	v_lshlrev_b32_e32 v15, 5, v249
	s_mov_b32 s12, 0
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	v_and_b32_e32 v1, 48, v242
	.loc	1 355 32                        ; generate_amdgcn.py:355:32
	v_or_b32_e32 v6, 16, v4
	v_or_b32_e32 v7, 32, v4
	v_or_b32_e32 v8, 48, v4
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_cmpk_gt_i32 s16, 0x5ff
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	v_xor_b32_e32 v16, v240, v1
	s_delay_alu instid0(VALU_DEP_1)
	v_add_nc_u32_e32 v1, 0, v16
	s_waitcnt vmcnt(9)
	ds_store_b128 v1, v[9:12] offset:32768
	.loc	1 406 22                        ; generate_amdgcn.py:406:22
	s_waitcnt vmcnt(8)
	ds_store_b128 v1, v[22:25]
	s_waitcnt vmcnt(7)
	ds_store_b128 v1, v[26:29] offset:4096
	s_waitcnt vmcnt(6)
	ds_store_b128 v1, v[30:33] offset:8192
	s_waitcnt vmcnt(5)
	ds_store_b128 v1, v[34:37] offset:12288
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_waitcnt vmcnt(4)
	ds_store_b128 v1, v[38:41] offset:36864
	.loc	1 406 22                        ; generate_amdgcn.py:406:22
	s_waitcnt vmcnt(3)
	ds_store_b128 v1, v[42:45] offset:16384
	s_waitcnt vmcnt(2)
	ds_store_b128 v1, v[46:49] offset:20480
	s_waitcnt vmcnt(1)
	ds_store_b128 v1, v[50:53] offset:24576
	s_waitcnt vmcnt(0)
	ds_store_b128 v1, v[54:57] offset:28672
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_cbranch_scc1 .LBB0_2
; %bb.1:                                ; %.._crit_edge_crit_edge
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	v_and_b32_e32 v9, 48, v5
	.loc	1 406 22                        ; generate_amdgcn.py:406:22
	v_lshlrev_b32_e32 v1, 5, v249
	s_mov_b32 s10, 0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	v_lshl_or_b32 v91, v4, 6, v9
	.loc	1 406 22                        ; generate_amdgcn.py:406:22
	v_and_b32_e32 v241, 0x1c00, v1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	v_xor_b32_e32 v92, 16, v91
	.loc	1 406 22                        ; generate_amdgcn.py:406:22
	v_or_b32_e32 v94, v91, v241
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	v_xor_b32_e32 v93, 32, v91
	v_xor_b32_e32 v90, 48, v91
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 406 22                        ; generate_amdgcn.py:406:22
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
                                        ; implicit-def: $vgpr241
                                        ; implicit-def: $vgpr94
                                        ; implicit-def: $vgpr95
                                        ; implicit-def: $vgpr96
                                        ; implicit-def: $vgpr97
.LBB0_3:                                ; %Flow96
	s_load_b64 s[0:1], s[0:1], 0x20
	v_or_b32_e32 v9, s33, v4
	v_or_b32_e32 v6, s33, v6
	v_or_b32_e32 v7, s33, v7
	v_or_b32_e32 v8, s33, v8
	s_ashr_i32 s34, s18, 8
	v_or_b32_e32 v18, s17, v249
	v_mul_lo_u32 v34, v9, s34
	v_mul_lo_u32 v35, v6, s34
	v_mul_lo_u32 v0, v7, s34
	v_mul_lo_u32 v36, v8, s34
	v_and_b32_e32 v14, 0xf0, v249
	v_and_b32_e32 v13, 28, v242
	s_and_not1_b32 vcc_lo, exec_lo, s10
	scratch_store_b32 off, v0, off          ; 4-byte Folded Spill
	s_cbranch_vccnz .LBB0_7
; %bb.4:                                ; %.lr.ph
	scratch_load_b32 v0, off, off           ; 4-byte Folded Reload
	v_dual_mov_b32 v22, 0 :: v_dual_and_b32 v1, 48, v5
	.loc	1 363 5 is_stmt 1               ; generate_amdgcn.py:363:5
	s_lshl_b32 s11, s15, 8
	s_lshl_b32 s14, s14, 8
	v_or_b32_e32 v3, s11, v3
	s_delay_alu instid0(VALU_DEP_2)
	v_lshl_or_b32 v91, v4, 6, v1
	v_or_b32_e32 v1, s11, v2
.Ltmp21:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:363:28 ]
	s_lshr_b32 s10, s16, 9
	s_mov_b32 s15, s12
.Ltmp22:
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_subrev_nc_u32_e32 v3, s14, v3
	s_mov_b32 s16, s12
	v_subrev_nc_u32_e32 v1, s14, v1
	s_mov_b32 s14, s12
	s_mov_b32 s17, s12
	s_mov_b32 s18, s12
	s_mov_b32 s19, s12
	v_lshlrev_b32_e32 v4, 2, v14
	v_and_b32_e32 v5, 32, v15
	v_or_b32_e32 v6, 0x80, v1
	v_or_b32_e32 v7, 64, v1
	v_add_nc_u32_e32 v2, s33, v2
	v_mul_lo_u32 v3, s13, v3
	v_add3_u32 v9, 0, v4, v5
	v_mul_lo_u32 v4, s13, v6
	v_mul_lo_u32 v5, s13, v7
	v_mul_lo_u32 v1, s13, v1
	v_mul_lo_u32 v2, s13, v2
	s_mov_b32 s13, s12
	v_and_b32_e32 v241, 0x1c00, v15
	v_lshlrev_b32_e32 v10, 1, v14
	v_add3_u32 v98, v3, v239, 0x400
	v_add3_u32 v99, v4, v239, 0x400
	v_add3_u32 v100, v5, v239, 0x400
	v_add3_u32 v101, v1, v239, 0x400
	v_add3_u32 v102, v2, v239, 0x400
	v_dual_mov_b32 v1, s12 :: v_dual_mov_b32 v2, s13
	v_or_b32_e32 v94, v91, v241
	v_xor_b32_e32 v92, 16, v91
	v_xor_b32_e32 v93, 32, v91
	v_xor_b32_e32 v90, 48, v91
	v_mov_b32_e32 v3, s14
	v_xor_b32_e32 v95, 16, v94
	v_xor_b32_e32 v96, 32, v94
	v_xor_b32_e32 v97, 48, v94
	v_dual_mov_b32 v4, s15 :: v_dual_mov_b32 v5, s16
	v_dual_mov_b32 v6, s17 :: v_dual_mov_b32 v7, s18
	v_dual_mov_b32 v8, s19 :: v_dual_add_nc_u32 v103, v9, v13
	v_dual_mov_b32 v23, 0 :: v_dual_add_nc_u32 v104, 0, v10
	v_dual_mov_b32 v24, 0 :: v_dual_mov_b32 v25, 0
	v_dual_mov_b32 v26, 0 :: v_dual_mov_b32 v27, 0
	v_dual_mov_b32 v28, 0 :: v_dual_mov_b32 v29, 0
	v_dual_mov_b32 v30, 0 :: v_dual_mov_b32 v31, 0
	v_dual_mov_b32 v32, 0 :: v_dual_mov_b32 v33, 0
	v_dual_mov_b32 v37, 0 :: v_dual_mov_b32 v38, 0
	v_dual_mov_b32 v39, 0 :: v_dual_mov_b32 v40, 0
	v_dual_mov_b32 v42, 0 :: v_dual_mov_b32 v43, 0
	v_dual_mov_b32 v44, 0 :: v_dual_mov_b32 v45, 0
	v_dual_mov_b32 v46, 0 :: v_dual_mov_b32 v47, 0
	v_dual_mov_b32 v48, 0 :: v_dual_mov_b32 v49, 0
	v_dual_mov_b32 v50, 0 :: v_dual_mov_b32 v51, 0
	v_dual_mov_b32 v52, 0 :: v_dual_mov_b32 v53, 0
	v_dual_mov_b32 v54, 0 :: v_dual_mov_b32 v55, 0
	v_dual_mov_b32 v56, 0 :: v_dual_mov_b32 v57, 0
	v_dual_mov_b32 v58, 0 :: v_dual_mov_b32 v59, 0
	v_dual_mov_b32 v60, 0 :: v_dual_mov_b32 v61, 0
	v_dual_mov_b32 v62, 0 :: v_dual_mov_b32 v63, 0
	v_dual_mov_b32 v64, 0 :: v_dual_mov_b32 v65, 0
	v_dual_mov_b32 v66, 0 :: v_dual_mov_b32 v67, 0
	v_dual_mov_b32 v68, 0 :: v_dual_mov_b32 v69, 0
	v_dual_mov_b32 v70, 0 :: v_dual_mov_b32 v71, 0
	v_dual_mov_b32 v72, 0 :: v_dual_mov_b32 v73, 0
	v_dual_mov_b32 v74, 0 :: v_dual_mov_b32 v75, 0
	v_dual_mov_b32 v76, 0 :: v_dual_mov_b32 v77, 0
	v_dual_mov_b32 v78, 0 :: v_dual_mov_b32 v79, 0
	v_dual_mov_b32 v80, 0 :: v_dual_mov_b32 v81, 0
	v_dual_mov_b32 v83, 0 :: v_dual_mov_b32 v84, 0
	v_dual_mov_b32 v85, 0 :: v_dual_mov_b32 v86, 0
	v_dual_mov_b32 v87, 0 :: v_dual_mov_b32 v88, 0
	v_dual_mov_b32 v89, 0 :: v_dual_mov_b32 v82, 0
	s_mov_b32 s31, 0x31027000
	s_mov_b32 s30, 0x7ffffffe
	s_and_b32 s29, s9, 0xffff
	s_mov_b32 s28, s8
	s_and_b32 s37, s21, 0xffff
	s_mov_b32 s36, s20
	s_mov_b32 s11, 1
	s_add_i32 s10, s10, -2
	s_add_i32 s23, 0, 0x8000
	s_add_i32 s40, 0, 0x9000
	s_add_i32 s41, 0, 0x4000
	s_mov_b32 s26, s6
	s_mov_b32 s27, s7
	s_mov_b32 s38, s30
	s_mov_b32 s39, s31
.LBB0_5:                                ; =>This Inner Loop Header: Depth=1
	.loc	1 0 5 is_stmt 0                 ; generate_amdgcn.py:0:5
	s_mov_b32 s13, s22
	.loc	1 406 22 is_stmt 1              ; generate_amdgcn.py:406:22
	v_add_nc_u32_e32 v20, s12, v94
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	v_add_nc_u32_e32 v9, s13, v102
	v_add_nc_u32_e32 v17, s23, v91
	.loc	1 406 22                        ; generate_amdgcn.py:406:22
	v_add_nc_u32_e32 v21, s12, v95
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	v_add_nc_u32_e32 v19, s23, v92
	buffer_load_b128 v[9:12], v9, s[4:7], 0 offen
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 406 22                        ; generate_amdgcn.py:406:22
	ds_load_b128 v[170:173], v20 offset:8192
	ds_load_b128 v[174:177], v21 offset:8192
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	ds_load_b128 v[122:125], v17
	.loc	1 406 22                        ; generate_amdgcn.py:406:22
	ds_load_b128 v[162:165], v20
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	ds_load_b128 v[126:129], v19
	.loc	1 406 22                        ; generate_amdgcn.py:406:22
	ds_load_b128 v[166:169], v21
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	ds_load_b128 v[138:141], v17 offset:1024
	ds_load_b128 v[142:145], v19 offset:1024
	ds_load_b128 v[154:157], v17 offset:2048
	ds_load_b128 v[158:161], v19 offset:2048
	ds_load_b128 v[178:181], v17 offset:3072
	ds_load_b128 v[182:185], v19 offset:3072
	v_add_nc_u32_e32 v17, s23, v93
	.loc	1 406 22                        ; generate_amdgcn.py:406:22
	v_add_nc_u32_e32 v19, s12, v96
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	s_waitcnt lgkmcnt(8)
	v_wmma_i32_16x16x16_iu8 v[106:113], v[162:165], v[122:125], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[114:121], v[170:173], v[122:125], v[1:8] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(5)
	v_wmma_i32_16x16x16_iu8 v[130:137], v[170:173], v[138:141], v[1:8] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_wmma_i32_16x16x16_iu8 v[106:113], v[166:169], v[126:129], v[106:113] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[114:121], v[174:177], v[126:129], v[114:121] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[122:129], v[162:165], v[138:141], v[1:8] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(4)
	v_wmma_i32_16x16x16_iu8 v[130:137], v[174:177], v[142:145], v[130:137] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(3)
	v_wmma_i32_16x16x16_iu8 v[146:153], v[170:173], v[154:157], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[122:129], v[166:169], v[142:145], v[122:129] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[138:145], v[162:165], v[154:157], v[1:8] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(2)
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_wmma_i32_16x16x16_iu8 v[146:153], v[174:177], v[158:161], v[146:153] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[138:145], v[166:169], v[158:161], v[138:145] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu8 v[154:161], v[162:165], v[178:181], v[1:8] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	s_delay_alu instid0(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu8 v[154:161], v[166:169], v[182:185], v[154:161] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[162:169], v[170:173], v[178:181], v[1:8] neg_lo:[1,1,0]
	.loc	1 406 22                        ; generate_amdgcn.py:406:22
	ds_load_b128 v[178:181], v19 offset:8192
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_wmma_i32_16x16x16_iu8 v[162:169], v[174:177], v[182:185], v[162:169] neg_lo:[1,1,0]
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	ds_load_b128 v[170:173], v17
	.loc	1 406 22                        ; generate_amdgcn.py:406:22
	ds_load_b128 v[174:177], v19
	v_add_nc_u32_e32 v19, s12, v97
	.loc	1 418 29                        ; generate_amdgcn.py:418:29
	s_ashr_i32 s12, s22, 31
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_lshr_b32 s12, s12, 24
	s_add_i32 s12, s22, s12
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_ashr_i32 s12, s12, 8
	.loc	1 422 40                        ; generate_amdgcn.py:422:40
	s_mul_i32 s14, s12, s35
	.loc	1 419 34                        ; generate_amdgcn.py:419:34
	s_cmp_lt_i32 s12, s34
	.loc	1 420 22                        ; generate_amdgcn.py:420:22
	s_waitcnt vmcnt(1)
	v_add_lshl_u32 v20, v0, s12, 1
	.loc	1 419 34                        ; generate_amdgcn.py:419:34
	s_cselect_b32 vcc_lo, -1, 0
	.loc	1 420 22                        ; generate_amdgcn.py:420:22
	v_add_lshl_u32 v21, v36, s12, 1
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_add_i32 s11, s11, 1
	s_delay_alu instid0(SALU_CYCLE_1)
	s_cmp_lt_i32 s11, 2
	.loc	1 420 22                        ; generate_amdgcn.py:420:22
	v_cndmask_b32_e32 v20, 0x80000000, v20, vcc_lo
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu8 v[114:121], v[178:181], v[170:173], v[114:121] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu8 v[106:113], v[174:177], v[170:173], v[106:113] neg_lo:[1,1,0]
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	ds_load_b128 v[170:173], v17 offset:1024
	.loc	1 420 22                        ; generate_amdgcn.py:420:22
	v_cndmask_b32_e32 v21, 0x80000000, v21, vcc_lo
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_cselect_b32 s11, s11, 0
	s_add_i32 s10, s10, -1
	.loc	1 406 22                        ; generate_amdgcn.py:406:22
	s_lshl_b32 s15, s11, 14
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_addk_i32 s22, 0x200
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu8 v[122:129], v[174:177], v[170:173], v[122:129] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[130:137], v[178:181], v[170:173], v[130:137] neg_lo:[1,1,0]
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	ds_load_b128 v[170:173], v17 offset:2048
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu8 v[138:145], v[174:177], v[170:173], v[138:145] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[146:153], v[178:181], v[170:173], v[146:153] neg_lo:[1,1,0]
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	ds_load_b128 v[170:173], v17 offset:3072
	v_add_nc_u32_e32 v17, s23, v90
	s_mov_b32 s23, s40
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu8 v[154:161], v[174:177], v[170:173], v[154:161] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[162:169], v[178:181], v[170:173], v[162:169] neg_lo:[1,1,0]
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	ds_load_b128 v[170:173], v17
	.loc	1 406 22                        ; generate_amdgcn.py:406:22
	ds_load_b128 v[174:177], v19
	ds_load_b128 v[178:181], v19 offset:8192
	.loc	1 420 22                        ; generate_amdgcn.py:420:22
	v_add_lshl_u32 v19, v35, s12, 1
	s_delay_alu instid0(VALU_DEP_1)
	v_cndmask_b32_e32 v19, 0x80000000, v19, vcc_lo
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu8 v[106:113], v[174:177], v[170:173], v[106:113] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu8 v[114:121], v[178:181], v[170:173], v[114:121] neg_lo:[1,1,0]
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	ds_load_b128 v[170:173], v17 offset:1024
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v106, v106
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
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu8 v[122:129], v[174:177], v[170:173], v[122:129] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[130:137], v[178:181], v[170:173], v[130:137] neg_lo:[1,1,0]
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	ds_load_b128 v[170:173], v17 offset:2048
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v126, v126
	v_cvt_f32_i32_e32 v128, v128
	v_cvt_f32_i32_e32 v130, v130
	v_cvt_f32_i32_e32 v122, v122
	v_cvt_f32_i32_e32 v123, v123
	v_cvt_f32_i32_e32 v124, v124
	v_cvt_f32_i32_e32 v125, v125
	v_cvt_f32_i32_e32 v127, v127
	v_cvt_f32_i32_e32 v129, v129
	v_cvt_f32_i32_e32 v131, v131
	v_cvt_f32_i32_e32 v132, v132
	v_cvt_f32_i32_e32 v133, v133
	v_cvt_f32_i32_e32 v134, v134
	v_cvt_f32_i32_e32 v135, v135
	v_cvt_f32_i32_e32 v136, v136
	v_cvt_f32_i32_e32 v137, v137
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu8 v[138:145], v[174:177], v[170:173], v[138:145] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[146:153], v[178:181], v[170:173], v[146:153] neg_lo:[1,1,0]
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	ds_load_b128 v[170:173], v17 offset:3072
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	v_add_lshl_u32 v17, v18, s14, 1
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v138, v138
	v_cvt_f32_i32_e32 v139, v139
	v_cvt_f32_i32_e32 v140, v140
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	v_cndmask_b32_e32 v17, 0x80000000, v17, vcc_lo
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v141, v141
	v_cvt_f32_i32_e32 v142, v142
	v_cvt_f32_i32_e32 v143, v143
	v_cvt_f32_i32_e32 v144, v144
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	buffer_load_u16 v17, v17, s[36:39], 0 offen
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v145, v145
	v_cvt_f32_i32_e32 v146, v146
	v_cvt_f32_i32_e32 v147, v147
	v_cvt_f32_i32_e32 v148, v148
	v_cvt_f32_i32_e32 v149, v149
	v_cvt_f32_i32_e32 v150, v150
	v_cvt_f32_i32_e32 v151, v151
	v_cvt_f32_i32_e32 v152, v152
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu8 v[162:169], v[178:181], v[170:173], v[162:169] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[154:161], v[174:177], v[170:173], v[154:161] neg_lo:[1,1,0]
	.loc	1 406 30                        ; generate_amdgcn.py:406:30
	v_add_nc_u32_e32 v173, s13, v100
	v_add_nc_u32_e32 v177, s13, v99
	.loc	1 406 22 is_stmt 0              ; generate_amdgcn.py:406:22
	v_add_nc_u32_e32 v181, s13, v98
	.loc	1 409 19 is_stmt 1              ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v105, v169
	.loc	1 406 30                        ; generate_amdgcn.py:406:30
	v_add_nc_u32_e32 v169, s13, v101
	.loc	1 406 22 is_stmt 0              ; generate_amdgcn.py:406:22
	s_clause 0x3
	buffer_load_b128 v[169:172], v169, s[24:27], 0 offen
	buffer_load_b128 v[173:176], v173, s[24:27], 0 offen
	buffer_load_b128 v[177:180], v177, s[24:27], 0 offen
	buffer_load_b128 v[181:184], v181, s[24:27], 0 offen
	.loc	1 409 19 is_stmt 1              ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v153, v153
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
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	s_waitcnt vmcnt(4)
	v_lshlrev_b32_e32 v17, 16, v17
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	ds_store_b32 v103, v17 offset:40960
	.loc	1 420 22                        ; generate_amdgcn.py:420:22
	v_add_lshl_u32 v17, v34, s12, 1
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	s_lshl_b32 s12, s11, 12
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	s_add_i32 s14, s12, 0
	s_mov_b32 s12, s41
	.loc	1 420 22                        ; generate_amdgcn.py:420:22
	v_cndmask_b32_e32 v17, 0x80000000, v17, vcc_lo
	s_clause 0x3
	buffer_load_u16 v17, v17, s[28:31], 0 offen
	buffer_load_u16 v19, v19, s[28:31], 0 offen
	buffer_load_u16 v20, v20, s[28:31], 0 offen
	buffer_load_u16 v21, v21, s[28:31], 0 offen
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[185:188], v104 offset:40960
	ds_load_b128 v[189:192], v104 offset:40976
	ds_load_b128 v[193:196], v104 offset:41472
	ds_load_b128 v[197:200], v104 offset:41488
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	v_add_nc_u32_e32 v201, s14, v16
	.loc	1 406 22                        ; generate_amdgcn.py:406:22
	s_add_i32 s41, s15, 0
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	s_add_i32 s40, s14, 0x8000
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_cmp_lg_u32 s10, 0
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	ds_store_b128 v201, v[9:12] offset:32768
	.loc	1 420 22                        ; generate_amdgcn.py:420:22
	s_waitcnt vmcnt(3)
	v_lshlrev_b32_e32 v10, 16, v17
	s_waitcnt vmcnt(2)
	v_lshlrev_b32_e32 v11, 16, v19
	.loc	1 406 22                        ; generate_amdgcn.py:406:22
	v_add_nc_u32_e32 v9, s41, v16
	.loc	1 420 22                        ; generate_amdgcn.py:420:22
	s_waitcnt vmcnt(1)
	v_lshlrev_b32_e32 v12, 16, v20
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	s_waitcnt vmcnt(0) lgkmcnt(2)
	v_dual_mul_f32 v220, v195, v10 :: v_dual_lshlrev_b32 v17, 16, v21
	v_mul_f32_e32 v222, v193, v11
	v_mul_f32_e32 v210, v189, v11
	v_dual_mul_f32 v212, v191, v11 :: v_dual_mul_f32 v19, v185, v10
	v_mul_f32_e32 v224, v195, v11
	v_mul_f32_e32 v20, v186, v10
	v_dual_mul_f32 v21, v187, v10 :: v_dual_mul_f32 v226, v193, v12
	v_dual_mul_f32 v201, v188, v11 :: v_dual_mul_f32 v202, v185, v12
	v_mul_f32_e32 v203, v186, v12
	v_mul_f32_e32 v204, v187, v12
	s_waitcnt lgkmcnt(1)
	v_dual_mul_f32 v205, v188, v12 :: v_dual_mul_f32 v230, v197, v10
	v_mul_f32_e32 v206, v189, v10
	v_dual_mul_f32 v207, v190, v10 :: v_dual_mul_f32 v236, v197, v12
	v_mul_f32_e32 v208, v191, v10
	v_dual_mul_f32 v209, v192, v10 :: v_dual_mul_f32 v234, v198, v11
	v_dual_mul_f32 v211, v190, v11 :: v_dual_mul_f32 v238, v199, v12
	v_dual_mul_f32 v213, v192, v11 :: v_dual_mul_f32 v214, v189, v12
	v_dual_mul_f32 v215, v190, v12 :: v_dual_fmac_f32 v22, v19, v106
	v_mul_f32_e32 v216, v191, v12
	v_dual_mul_f32 v217, v192, v12 :: v_dual_fmac_f32 v26, v206, v110
	v_mul_f32_e32 v189, v189, v17
	v_mul_f32_e32 v190, v190, v17
	v_dual_mul_f32 v191, v191, v17 :: v_dual_fmac_f32 v24, v21, v108
	v_mul_f32_e32 v192, v192, v17
	v_mul_f32_e32 v218, v193, v10
	.loc	1 406 22                        ; generate_amdgcn.py:406:22
	ds_store_b128 v9, v[169:172]
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_dual_mul_f32 v169, v188, v10 :: v_dual_mul_f32 v228, v195, v12
	v_mul_f32_e32 v170, v185, v11
	v_mul_f32_e32 v171, v186, v11
	v_dual_mul_f32 v172, v187, v11 :: v_dual_mul_f32 v185, v185, v17
	v_mul_f32_e32 v232, v199, v10
	v_mul_f32_e32 v186, v186, v17
	v_mul_f32_e32 v187, v187, v17
	v_dual_mul_f32 v188, v188, v17 :: v_dual_mul_f32 v219, v194, v10
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_dual_fmac_f32 v28, v208, v112 :: v_dual_mul_f32 v223, v194, v11
	v_fmac_f32_e32 v32, v220, v116
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_dual_mul_f32 v225, v196, v11 :: v_dual_fmac_f32 v30, v218, v114
	v_dual_mul_f32 v193, v193, v17 :: v_dual_fmac_f32 v42, v170, v122
	v_dual_mul_f32 v195, v195, v17 :: v_dual_fmac_f32 v44, v172, v124
	v_dual_mul_f32 v231, v198, v10 :: v_dual_fmac_f32 v48, v212, v128
	v_mul_f32_e32 v221, v196, v10
	v_mul_f32_e32 v10, v200, v10
	v_mul_f32_e32 v229, v196, v12
	v_dual_mul_f32 v196, v196, v17 :: v_dual_mul_f32 v233, v197, v11
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fmac_f32_e32 v46, v210, v126
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v227, v194, v12
	v_dual_mul_f32 v194, v194, v17 :: v_dual_mul_f32 v235, v199, v11
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_dual_fmac_f32 v50, v222, v130 :: v_dual_mul_f32 v11, v200, v11
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_dual_mul_f32 v237, v198, v12 :: v_dual_fmac_f32 v70, v236, v150
	v_dual_mul_f32 v12, v200, v12 :: v_dual_mul_f32 v197, v197, v17
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fmac_f32_e32 v52, v224, v132
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v198, v198, v17
	v_dual_mul_f32 v199, v199, v17 :: v_dual_fmac_f32 v58, v202, v138
	v_dual_mul_f32 v17, v200, v17 :: v_dual_fmac_f32 v62, v214, v142
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_dual_fmac_f32 v23, v20, v107 :: v_dual_fmac_f32 v66, v226, v146
	v_dual_fmac_f32 v25, v169, v109 :: v_dual_fmac_f32 v60, v204, v140
	v_dual_fmac_f32 v27, v207, v111 :: v_dual_fmac_f32 v64, v216, v144
	v_dual_fmac_f32 v29, v209, v113 :: v_dual_fmac_f32 v68, v228, v148
	v_dual_fmac_f32 v31, v219, v115 :: v_dual_fmac_f32 v72, v238, v152
	v_dual_fmac_f32 v37, v230, v118 :: v_dual_fmac_f32 v80, v191, v160
	v_dual_fmac_f32 v38, v231, v119 :: v_dual_fmac_f32 v33, v221, v117
	v_fmac_f32_e32 v76, v187, v156
	v_dual_fmac_f32 v39, v232, v120 :: v_dual_fmac_f32 v74, v185, v154
	v_dual_fmac_f32 v40, v10, v121 :: v_dual_fmac_f32 v43, v171, v123
	v_fmac_f32_e32 v78, v189, v158
	v_dual_fmac_f32 v45, v201, v125 :: v_dual_fmac_f32 v84, v194, v163
	v_dual_fmac_f32 v47, v211, v127 :: v_dual_fmac_f32 v86, v196, v165
	v_dual_fmac_f32 v49, v213, v129 :: v_dual_fmac_f32 v88, v198, v167
	v_dual_fmac_f32 v51, v223, v131 :: v_dual_fmac_f32 v82, v17, v105
	v_fmac_f32_e32 v53, v225, v133
	v_dual_fmac_f32 v54, v233, v134 :: v_dual_fmac_f32 v55, v234, v135
	v_fmac_f32_e32 v56, v235, v136
	v_fmac_f32_e32 v57, v11, v137
	v_fmac_f32_e32 v59, v203, v139
	v_fmac_f32_e32 v61, v205, v141
	v_fmac_f32_e32 v63, v215, v143
	v_fmac_f32_e32 v65, v217, v145
	v_fmac_f32_e32 v67, v227, v147
	v_fmac_f32_e32 v69, v229, v149
	v_fmac_f32_e32 v71, v237, v151
	v_fmac_f32_e32 v73, v12, v153
	v_fmac_f32_e32 v75, v186, v155
	v_fmac_f32_e32 v77, v188, v157
	v_fmac_f32_e32 v79, v190, v159
	v_fmac_f32_e32 v81, v192, v161
	v_fmac_f32_e32 v83, v193, v162
	v_fmac_f32_e32 v85, v195, v164
	v_fmac_f32_e32 v87, v197, v166
	v_fmac_f32_e32 v89, v199, v168
	.loc	1 406 22                        ; generate_amdgcn.py:406:22
	ds_store_b128 v9, v[173:176] offset:4096
	ds_store_b128 v9, v[177:180] offset:8192
	ds_store_b128 v9, v[181:184] offset:12288
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_cbranch_scc1 .LBB0_5
; %bb.6:                                ; %Flow
	.loc	1 0 5 is_stmt 0                 ; generate_amdgcn.py:0:5
	v_mov_b32_e32 v1, v15
	s_add_i32 s28, s13, 0x400
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
	s_add_i32 s23, 0, 0x8000
	s_add_i32 s40, 0, 0x9000
	s_add_i32 s41, 0, 0x4000
.LBB0_8:                                ; %._crit_edge
	v_dual_mov_b32 v98, 0 :: v_dual_mov_b32 v233, 0
	v_dual_mov_b32 v154, 0 :: v_dual_mov_b32 v17, 0
	v_dual_mov_b32 v164, 0 :: v_dual_mov_b32 v121, 0
	v_dual_mov_b32 v232, 0 :: v_dual_mov_b32 v235, 0
	v_dual_mov_b32 v118, 0 :: v_dual_mov_b32 v237, 0
	v_dual_mov_b32 v190, 0 :: v_dual_mov_b32 v243, 0
	v_dual_mov_b32 v234, 0 :: v_dual_mov_b32 v245, 0
	v_dual_mov_b32 v236, 0 :: v_dual_mov_b32 v19, 0
	v_dual_mov_b32 v238, 0 :: v_dual_mov_b32 v21, 0
	v_dual_mov_b32 v244, 0 :: v_dual_mov_b32 v173, 0
	v_dual_mov_b32 v0, 0 :: v_dual_mov_b32 v127, 0
	v_dual_mov_b32 v124, 0 :: v_dual_mov_b32 v129, 0
	v_dual_mov_b32 v20, 0 :: v_dual_mov_b32 v165, 0
	v_dual_mov_b32 v172, 0 :: v_dual_mov_b32 v247, 0
	v_dual_mov_b32 v128, 0 :: v_dual_mov_b32 v131, 0
	v_dual_mov_b32 v130, 0 :: v_dual_mov_b32 v135, 0
	v_dual_mov_b32 v246, 0 :: v_dual_mov_b32 v175, 0
	v_dual_mov_b32 v248, 0 :: v_dual_mov_b32 v137, 0
	v_dual_mov_b32 v166, 0 :: v_dual_mov_b32 v177, 0
	v_dual_mov_b32 v132, 0 :: v_dual_mov_b32 v141, 0
	v_dual_mov_b32 v174, 0 :: v_dual_mov_b32 v143, 0
	v_dual_mov_b32 v134, 0 :: v_dual_mov_b32 v145, 0
	v_dual_mov_b32 v176, 0 :: v_dual_mov_b32 v109, 0
	v_dual_mov_b32 v140, 0 :: v_dual_mov_b32 v111, 0
	v_dual_mov_b32 v142, 0 :: v_dual_mov_b32 v113, 0
	v_dual_mov_b32 v144, 0 :: v_dual_mov_b32 v115, 0
	v_dual_mov_b32 v146, 0 :: v_dual_mov_b32 v117, 0
	v_dual_mov_b32 v110, 0 :: v_dual_mov_b32 v119, 0
	v_dual_mov_b32 v112, 0 :: v_dual_mov_b32 v123, 0
	v_dual_mov_b32 v116, 0 :: v_dual_mov_b32 v125, 0
	v_dual_mov_b32 v120, 0 :: v_dual_mov_b32 v133, 0
	v_mov_b32_e32 v122, 0
	v_mov_b32_e32 v126, 0
	v_mov_b32_e32 v136, 0
	.loc	1 409 19 is_stmt 1              ; generate_amdgcn.py:409:19
	s_and_not1_b32 vcc_lo, exec_lo, s3
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	s_cbranch_vccnz .LBB0_10
; %bb.9:
	.loc	1 406 22                        ; generate_amdgcn.py:406:22
	v_add_nc_u32_e32 v2, s12, v96
	v_add_nc_u32_e32 v3, s12, v95
	v_add_nc_u32_e32 v4, s12, v97
	v_add_nc_u32_e32 v5, s12, v94
	s_mov_b32 s12, 0
	ds_load_b128 v[174:177], v5 offset:8192
	ds_load_b128 v[178:181], v5
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	s_mov_b32 s13, s12
	s_mov_b32 s14, s12
	s_mov_b32 s15, s12
	s_mov_b32 s16, s12
	s_mov_b32 s17, s12
	s_mov_b32 s18, s12
	s_mov_b32 s19, s12
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	v_add_nc_u32_e32 v10, s23, v91
	v_add_nc_u32_e32 v11, s23, v93
	v_add_nc_u32_e32 v15, s23, v92
	.loc	1 406 22                        ; generate_amdgcn.py:406:22
	ds_load_b128 v[99:102], v2 offset:8192
	ds_load_b128 v[162:165], v2
	ds_load_b128 v[166:169], v3 offset:8192
	ds_load_b128 v[170:173], v3
	ds_load_b128 v[190:193], v4 offset:8192
	ds_load_b128 v[194:197], v4
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_dual_mov_b32 v2, s12 :: v_dual_mov_b32 v7, s17
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	ds_load_b128 v[138:141], v10 offset:1024
	ds_load_b128 v[122:125], v10
	ds_load_b128 v[182:185], v11 offset:1024
	ds_load_b128 v[130:133], v11
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_mov_b32_e32 v8, s18
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	ds_load_b128 v[186:189], v15 offset:1024
	ds_load_b128 v[134:137], v15
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_dual_mov_b32 v9, s19 :: v_dual_add_nc_u32 v12, s23, v90
	v_dual_mov_b32 v3, s13 :: v_dual_mov_b32 v4, s14
	v_dual_mov_b32 v5, s15 :: v_dual_mov_b32 v6, s16
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
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
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
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
	v_cvt_f32_i32_e32 v164, v115
	v_cvt_f32_i32_e32 v232, v116
	v_cvt_f32_i32_e32 v233, v117
	v_cvt_f32_i32_e32 v118, v118
	v_cvt_f32_i32_e32 v17, v119
	v_cvt_f32_i32_e32 v190, v120
	v_cvt_f32_i32_e32 v121, v121
	v_cvt_f32_i32_e32 v234, v106
	v_cvt_f32_i32_e32 v235, v107
	v_cvt_f32_i32_e32 v236, v108
	v_cvt_f32_i32_e32 v237, v109
	v_cvt_f32_i32_e32 v238, v110
	v_cvt_f32_i32_e32 v243, v111
	v_cvt_f32_i32_e32 v244, v112
	v_cvt_f32_i32_e32 v245, v113
	v_cvt_f32_i32_e32 v19, v122
	v_cvt_f32_i32_e32 v21, v123
	v_cvt_f32_i32_e32 v0, v124
	v_cvt_f32_i32_e32 v173, v125
	v_cvt_f32_i32_e32 v124, v126
	v_cvt_f32_i32_e32 v20, v127
	v_cvt_f32_i32_e32 v172, v128
	v_cvt_f32_i32_e32 v127, v129
	v_cvt_f32_i32_e32 v128, v130
	v_cvt_f32_i32_e32 v129, v131
	v_cvt_f32_i32_e32 v130, v132
	v_cvt_f32_i32_e32 v165, v133
	v_cvt_f32_i32_e32 v246, v134
	v_cvt_f32_i32_e32 v247, v135
	v_cvt_f32_i32_e32 v248, v136
	v_cvt_f32_i32_e32 v166, v137
	v_cvt_f32_i32_e32 v131, v138
	v_cvt_f32_i32_e32 v132, v139
	v_cvt_f32_i32_e32 v174, v140
	v_cvt_f32_i32_e32 v134, v141
	v_cvt_f32_i32_e32 v135, v142
	v_cvt_f32_i32_e32 v175, v143
	v_cvt_f32_i32_e32 v137, v144
	v_cvt_f32_i32_e32 v176, v145
	v_cvt_f32_i32_e32 v177, v146
	v_cvt_f32_i32_e32 v140, v147
	v_cvt_f32_i32_e32 v141, v148
	v_cvt_f32_i32_e32 v142, v149
	v_cvt_f32_i32_e32 v143, v150
	v_cvt_f32_i32_e32 v144, v151
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
	v_cvt_f32_i32_e32 v119, v2
	v_cvt_f32_i32_e32 v120, v3
	v_cvt_f32_i32_e32 v122, v4
	v_cvt_f32_i32_e32 v123, v5
	v_cvt_f32_i32_e32 v125, v6
	v_cvt_f32_i32_e32 v126, v7
	v_cvt_f32_i32_e32 v133, v8
	v_cvt_f32_i32_e32 v136, v9
	v_cvt_f32_i32_e32 v154, v114
.LBB0_10:
	.loc	1 420 22                        ; generate_amdgcn.py:420:22
	scratch_load_b32 v5, off, off           ; 4-byte Folded Reload
	.loc	1 418 29                        ; generate_amdgcn.py:418:29
	s_ashr_i32 s4, s22, 31
	s_mov_b32 s11, 0x31027000
	s_lshr_b32 s4, s4, 24
	s_mov_b32 s10, 0x7ffffffe
	s_add_i32 s4, s22, s4
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	s_mov_b32 s22, s10
	.loc	1 418 29                        ; generate_amdgcn.py:418:29
	s_ashr_i32 s4, s4, 8
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	s_mov_b32 s23, s11
	.loc	1 422 40 is_stmt 0              ; generate_amdgcn.py:422:40
	s_mul_i32 s5, s4, s35
	.loc	1 419 34 is_stmt 1              ; generate_amdgcn.py:419:34
	s_cmp_lt_i32 s4, s34
	.loc	1 420 22                        ; generate_amdgcn.py:420:22
	v_add_lshl_u32 v2, v34, s4, 1
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	v_add_lshl_u32 v3, v18, s5, 1
	.loc	1 419 34                        ; generate_amdgcn.py:419:34
	s_cselect_b32 s5, -1, 0
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	s_and_b32 s21, s21, 0xffff
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_and_b32 vcc_lo, s3, s5
	.loc	1 420 22                        ; generate_amdgcn.py:420:22
	v_add_lshl_u32 v4, v35, s4, 1
	v_dual_cndmask_b32 v2, 0x80000000, v2 :: v_dual_cndmask_b32 v3, 0x80000000, v3
	v_add_lshl_u32 v6, v36, s4, 1
	s_and_b32 s9, s9, 0xffff
	v_dual_mov_b32 v168, 0 :: v_dual_and_b32 v1, 32, v1
	v_mov_b32_e32 v161, 0
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	buffer_load_u16 v3, v3, s[20:23], 0 offen
	.loc	1 420 22                        ; generate_amdgcn.py:420:22
	v_cndmask_b32_e32 v6, 0x80000000, v6, vcc_lo
	v_mov_b32_e32 v212, 0
	v_dual_mov_b32 v170, 0 :: v_dual_mov_b32 v171, 0
	v_dual_mov_b32 v160, 0 :: v_dual_mov_b32 v251, 0
	v_dual_mov_b32 v162, 0 :: v_dual_mov_b32 v179, 0
	v_dual_mov_b32 v250, 0 :: v_dual_mov_b32 v181, 0
	v_dual_mov_b32 v178, 0 :: v_dual_mov_b32 v183, 0
	v_dual_mov_b32 v180, 0 :: v_dual_mov_b32 v185, 0
	v_dual_mov_b32 v182, 0 :: v_dual_mov_b32 v187, 0
	v_dual_mov_b32 v184, 0 :: v_dual_mov_b32 v189, 0
	v_dual_mov_b32 v186, 0 :: v_dual_mov_b32 v191, 0
	v_dual_mov_b32 v188, 0 :: v_dual_mov_b32 v193, 0
	v_dual_mov_b32 v192, 0 :: v_dual_mov_b32 v195, 0
	v_dual_mov_b32 v194, 0 :: v_dual_mov_b32 v197, 0
	v_dual_mov_b32 v196, 0 :: v_dual_mov_b32 v199, 0
	v_dual_mov_b32 v198, 0 :: v_dual_mov_b32 v201, 0
	v_dual_mov_b32 v200, 0 :: v_dual_mov_b32 v203, 0
	v_dual_mov_b32 v202, 0 :: v_dual_mov_b32 v205, 0
	v_dual_mov_b32 v204, 0 :: v_dual_mov_b32 v207, 0
	v_dual_mov_b32 v206, 0 :: v_dual_mov_b32 v209, 0
	v_dual_mov_b32 v208, 0 :: v_dual_mov_b32 v211, 0
	v_dual_mov_b32 v210, 0 :: v_dual_mov_b32 v213, 0
	v_dual_mov_b32 v216, 0 :: v_dual_mov_b32 v217, 0
	v_dual_mov_b32 v218, 0 :: v_dual_mov_b32 v219, 0
	v_dual_mov_b32 v220, 0 :: v_dual_mov_b32 v221, 0
	v_dual_mov_b32 v222, 0 :: v_dual_mov_b32 v223, 0
	v_dual_mov_b32 v224, 0 :: v_dual_mov_b32 v225, 0
	v_dual_mov_b32 v226, 0 :: v_dual_mov_b32 v227, 0
	v_dual_mov_b32 v228, 0 :: v_dual_mov_b32 v229, 0
	v_dual_mov_b32 v230, 0 :: v_dual_mov_b32 v231, 0
	s_mov_b32 s12, 0
	v_mov_b32_e32 v167, 0
	v_mov_b32_e32 v169, 0
	v_mov_b32_e32 v215, 0
	s_waitcnt vmcnt(1)
	v_add_lshl_u32 v5, v5, s4, 1
	s_delay_alu instid0(VALU_DEP_1)
	v_dual_cndmask_b32 v4, 0x80000000, v4 :: v_dual_cndmask_b32 v5, 0x80000000, v5
	s_clause 0x3
	buffer_load_u16 v139, v2, s[8:11], 0 offen
	buffer_load_u16 v155, v4, s[8:11], 0 offen
	buffer_load_u16 v114, v5, s[8:11], 0 offen
	buffer_load_u16 v99, v6, s[8:11], 0 offen
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_lshlrev_b32_e32 v2, 2, v14
	v_lshlrev_b32_e32 v4, 1, v14
	v_mov_b32_e32 v214, 0
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	s_and_not1_b32 vcc_lo, exec_lo, s2
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_add3_u32 v1, 0, v2, v1
	v_add_nc_u32_e32 v163, 0, v4
	s_delay_alu instid0(VALU_DEP_2)
	v_add_nc_u32_e32 v138, v1, v13
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	s_waitcnt vmcnt(4)
	v_lshlrev_b32_e32 v1, 16, v3
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	ds_store_b32 v138, v1 offset:40960
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[1:4], v163 offset:40960
	ds_load_b128 v[5:8], v163 offset:40976
	ds_load_b128 v[9:12], v163 offset:41472
	ds_load_b128 v[13:16], v163 offset:41488
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	s_cbranch_vccnz .LBB0_12
; %bb.11:
	.loc	1 406 22                        ; generate_amdgcn.py:406:22
	s_waitcnt vmcnt(0)
	scratch_store_b32 off, v99, off offset:68 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v99, s41, v94
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	v_add_nc_u32_e32 v91, s40, v91
	v_dual_mov_b32 v151, v138 :: v_dual_add_nc_u32 v188, s41, v97
	v_dual_mov_b32 v138, v122 :: v_dual_add_nc_u32 v189, s41, v96
	.loc	1 406 22                        ; generate_amdgcn.py:406:22
	v_add_nc_u32_e32 v98, s41, v95
	s_clause 0x2                            ; 16-byte Folded Spill
	scratch_store_b32 off, v134, off offset:12
	scratch_store_b32 off, v19, off offset:16
	scratch_store_b64 off, v[239:240], off offset:4
	v_mov_b32_e32 v122, v164
	v_mov_b16_e64 v150.l, v139.l
	v_mov_b32_e32 v139, v136
	v_mov_b32_e32 v136, v120
	v_mov_b32_e32 v120, v118
	v_dual_mov_b32 v134, v119 :: v_dual_mov_b32 v119, v21
	v_dual_mov_b32 v148, v131 :: v_dual_mov_b32 v149, v132
	v_dual_mov_b32 v132, v245 :: v_dual_mov_b32 v147, v166
	v_dual_mov_b32 v162, v247 :: v_dual_mov_b32 v21, v249
	v_dual_mov_b32 v166, v248 :: v_dual_add_nc_u32 v223, s40, v93
	ds_load_b128 v[248:251], v99
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	ds_load_b128 v[191:194], v91
	.loc	1 406 22                        ; generate_amdgcn.py:406:22
	ds_load_b128 v[252:255], v99 offset:8192
	v_dual_mov_b32 v153, v175 :: v_dual_add_nc_u32 v92, s40, v92
	v_dual_mov_b32 v152, v135 :: v_dual_mov_b32 v171, v130
	v_dual_mov_b32 v135, v241 :: v_dual_mov_b32 v118, v0
	v_dual_mov_b32 v161, v246 :: v_dual_mov_b32 v130, v243
	v_mov_b32_e32 v131, v244
	ds_load_b128 v[240:243], v98 offset:8192
	ds_load_b128 v[244:247], v98
	s_clause 0xb                            ; 48-byte Folded Spill
	scratch_store_b32 off, v174, off offset:36
	scratch_store_b32 off, v154, off offset:44
	scratch_store_b32 off, v17, off offset:56
	scratch_store_b32 off, v232, off offset:64
	scratch_store_b32 off, v173, off offset:28
	scratch_store_b32 off, v190, off offset:48
	scratch_store_b32 off, v233, off offset:40
	scratch_store_b32 off, v20, off offset:32
	scratch_store_b32 off, v234, off offset:52
	scratch_store_b32 off, v177, off offset:60
	scratch_store_b32 off, v172, off offset:20
	scratch_store_b32 off, v235, off offset:24
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	ds_load_b128 v[232:235], v91 offset:2048
	v_dual_mov_b32 v190, v109 :: v_dual_mov_b32 v19, v36
	ds_load_b128 v[106:109], v92
	ds_load_b128 v[207:210], v91 offset:1024
	ds_load_b128 v[98:101], v91 offset:3072
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	s_mov_b32 s19, s12
	s_mov_b32 s13, s12
	s_mov_b32 s14, s12
	s_mov_b32 s15, s12
	s_mov_b32 s16, s12
	s_mov_b32 s17, s12
	s_mov_b32 s18, s12
	v_dual_mov_b32 v156, v176 :: v_dual_mov_b32 v231, s19
	v_dual_mov_b32 v224, s12 :: v_dual_mov_b32 v17, v115
	v_mov_b32_e32 v164, v110
	v_dual_mov_b32 v154, v111 :: v_dual_mov_b32 v41, v117
	v_dual_mov_b32 v160, v112 :: v_dual_mov_b32 v159, v142
	v_dual_mov_b32 v0, v34 :: v_dual_mov_b32 v157, v140
	v_mov_b32_e32 v34, v113
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	ds_load_b128 v[110:113], v92 offset:2048
	v_dual_mov_b32 v20, v35 :: v_dual_mov_b32 v35, v116
	v_mov_b16_e32 v36.l, v114.l
	ds_load_b128 v[114:117], v92 offset:1024
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_dual_mov_b32 v230, s18 :: v_dual_mov_b32 v229, s17
	v_dual_mov_b32 v228, s16 :: v_dual_mov_b32 v227, s15
	v_dual_mov_b32 v226, s14 :: v_dual_mov_b32 v225, s13
	.loc	1 406 22                        ; generate_amdgcn.py:406:22
	ds_load_b128 v[94:97], v188 offset:8192
	ds_load_b128 v[167:170], v189
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	ds_load_b128 v[102:105], v92 offset:3072
	v_dual_mov_b32 v140, v127 :: v_dual_mov_b32 v127, v236
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	s_waitcnt lgkmcnt(12)
	v_wmma_i32_16x16x16_iu8 v[172:179], v[248:251], v[191:194], v[224:231] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(11)
	v_wmma_i32_16x16x16_iu8 v[180:187], v[252:255], v[191:194], v[224:231] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(6)
	v_wmma_i32_16x16x16_iu8 v[191:198], v[248:251], v[207:210], v[224:231] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[199:206], v[252:255], v[207:210], v[224:231] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[207:214], v[248:251], v[232:235], v[224:231] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[215:222], v[252:255], v[232:235], v[224:231] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[172:179], v[244:247], v[106:109], v[172:179] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[180:187], v[240:243], v[106:109], v[180:187] neg_lo:[1,1,0]
	.loc	1 406 22                        ; generate_amdgcn.py:406:22
	ds_load_b128 v[106:109], v188
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	v_add_nc_u32_e32 v188, s40, v90
	v_dual_mov_b32 v142, v129 :: v_dual_mov_b32 v129, v238
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	s_waitcnt lgkmcnt(4)
	v_wmma_i32_16x16x16_iu8 v[191:198], v[244:247], v[114:117], v[191:198] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[199:206], v[240:243], v[114:117], v[199:206] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[207:214], v[244:247], v[110:113], v[207:214] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[215:222], v[240:243], v[110:113], v[215:222] neg_lo:[1,1,0]
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	ds_load_b128 v[110:113], v188
	ds_load_b128 v[114:117], v188 offset:1024
	v_dual_mov_b32 v158, v141 :: v_dual_mov_b32 v141, v128
	v_mov_b32_e32 v128, v237
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_wmma_i32_16x16x16_iu8 v[232:239], v[248:251], v[98:101], v[224:231] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[224:231], v[252:255], v[98:101], v[224:231] neg_lo:[1,1,0]
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	ds_load_b128 v[98:101], v223
	.loc	1 406 22                        ; generate_amdgcn.py:406:22
	ds_load_b128 v[248:251], v189 offset:8192
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	ds_load_b128 v[90:93], v223 offset:1024
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	s_waitcnt lgkmcnt(6)
	v_wmma_i32_16x16x16_iu8 v[232:239], v[244:247], v[102:105], v[232:239] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[224:231], v[240:243], v[102:105], v[224:231] neg_lo:[1,1,0]
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	ds_load_b128 v[102:105], v223 offset:2048
	ds_load_b128 v[240:243], v223 offset:3072
	ds_load_b128 v[244:247], v188 offset:2048
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	s_waitcnt lgkmcnt(5)
	v_wmma_i32_16x16x16_iu8 v[172:179], v[167:170], v[98:101], v[172:179] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(4)
	v_wmma_i32_16x16x16_iu8 v[180:187], v[248:251], v[98:101], v[180:187] neg_lo:[1,1,0]
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	ds_load_b128 v[98:101], v188 offset:3072
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	s_waitcnt lgkmcnt(4)
	v_wmma_i32_16x16x16_iu8 v[191:198], v[167:170], v[90:93], v[191:198] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[199:206], v[248:251], v[90:93], v[199:206] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(3)
	v_wmma_i32_16x16x16_iu8 v[207:214], v[167:170], v[102:105], v[207:214] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[215:222], v[248:251], v[102:105], v[215:222] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(2)
	v_wmma_i32_16x16x16_iu8 v[232:239], v[167:170], v[240:243], v[232:239] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[224:231], v[248:251], v[240:243], v[224:231] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[172:179], v[106:109], v[110:113], v[172:179] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[180:187], v[94:97], v[110:113], v[180:187] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[191:198], v[106:109], v[114:117], v[191:198] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[199:206], v[94:97], v[114:117], v[199:206] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu8 v[207:214], v[106:109], v[244:247], v[207:214] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[215:222], v[94:97], v[244:247], v[215:222] neg_lo:[1,1,0]
	v_mov_b32_e32 v249, v21
	scratch_load_b64 v[90:91], off, off offset:4 ; 8-byte Folded Reload
	v_mov_b32_e32 v111, v154
	v_dual_mov_b32 v243, v130 :: v_dual_mov_b32 v130, v171
	v_mov_b32_e32 v115, v17
	v_cvt_f32_i32_e32 v168, v174
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu8 v[232:239], v[106:109], v[98:101], v[232:239] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[224:231], v[94:97], v[98:101], v[224:231] neg_lo:[1,1,0]
	scratch_load_b32 v99, off, off offset:68 ; 4-byte Folded Reload
	v_cvt_f32_i32_e32 v251, v182
	v_cvt_f32_i32_e32 v182, v187
	v_cvt_f32_i32_e32 v187, v195
	v_cvt_f32_i32_e32 v195, v202
	v_cvt_f32_i32_e32 v202, v209
	v_cvt_f32_i32_e32 v209, v216
	v_cvt_f32_i32_e32 v216, v232
	s_clause 0x3                            ; 16-byte Folded Reload
	scratch_load_b32 v232, off, off offset:64
	scratch_load_b32 v17, off, off offset:56
	scratch_load_b32 v154, off, off offset:44
	scratch_load_b32 v174, off, off offset:36
	v_dual_mov_b32 v113, v34 :: v_dual_mov_b32 v34, v0
	v_dual_mov_b32 v241, v135 :: v_dual_mov_b32 v112, v160
	v_dual_mov_b32 v21, v119 :: v_dual_mov_b32 v0, v118
	v_mov_b32_e32 v245, v132
	v_dual_mov_b32 v118, v120 :: v_dual_mov_b32 v109, v190
	v_mov_b32_e32 v246, v161
	v_cvt_f32_i32_e32 v98, v172
	v_cvt_f32_i32_e32 v167, v173
	v_cvt_f32_i32_e32 v161, v177
	v_cvt_f32_i32_e32 v160, v178
	v_cvt_f32_i32_e32 v178, v183
	v_cvt_f32_i32_e32 v183, v191
	v_cvt_f32_i32_e32 v188, v196
	v_cvt_f32_i32_e32 v191, v198
	v_cvt_f32_i32_e32 v196, v203
	v_cvt_f32_i32_e32 v198, v205
	v_cvt_f32_i32_e32 v203, v210
	v_cvt_f32_i32_e32 v205, v212
	v_cvt_f32_i32_e32 v210, v217
	v_cvt_f32_i32_e32 v212, v219
	v_cvt_f32_i32_e32 v217, v233
	s_clause 0x2                            ; 12-byte Folded Reload
	scratch_load_b32 v233, off, off offset:40
	scratch_load_b32 v190, off, off offset:48
	scratch_load_b32 v173, off, off offset:28
	v_cvt_f32_i32_e32 v219, v235
	s_clause 0x2                            ; 12-byte Folded Reload
	scratch_load_b32 v235, off, off offset:24
	scratch_load_b32 v172, off, off offset:20
	scratch_load_b32 v177, off, off offset:60
	v_dual_mov_b32 v110, v164 :: v_dual_mov_b32 v119, v134
	v_lshlrev_b32_e32 v242, 1, v249
	v_mov_b16_e32 v114.l, v36.l
	v_mov_b32_e32 v116, v35
	v_dual_mov_b32 v36, v19 :: v_dual_mov_b32 v35, v20
	v_cvt_f32_i32_e32 v189, v197
	v_cvt_f32_i32_e32 v197, v204
	v_cvt_f32_i32_e32 v204, v211
	v_cvt_f32_i32_e32 v211, v218
	v_cvt_f32_i32_e32 v218, v234
	s_clause 0x3                            ; 16-byte Folded Reload
	scratch_load_b32 v234, off, off offset:52
	scratch_load_b32 v20, off, off offset:32
	scratch_load_b32 v19, off, off offset:16
	scratch_load_b32 v134, off, off offset:12
	v_dual_mov_b32 v248, v166 :: v_dual_mov_b32 v135, v152
	v_dual_mov_b32 v166, v147 :: v_dual_mov_b32 v117, v41
	v_dual_mov_b32 v247, v162 :: v_dual_lshlrev_b32 v240, 4, v249
	v_mov_b32_e32 v120, v136
	v_mov_b32_e32 v136, v139
	v_mov_b16_e64 v139.l, v150.l
	v_mov_b32_e32 v164, v122
	v_mov_b32_e32 v122, v138
	v_mov_b32_e32 v138, v151
	v_mov_b32_e32 v132, v149
	v_dual_mov_b32 v244, v131 :: v_dual_mov_b32 v131, v148
	v_cvt_f32_i32_e32 v169, v175
	v_cvt_f32_i32_e32 v170, v176
	v_cvt_f32_i32_e32 v162, v179
	v_cvt_f32_i32_e32 v171, v180
	v_cvt_f32_i32_e32 v250, v181
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
	v_dual_mov_b32 v175, v153 :: v_dual_mov_b32 v176, v156
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
	v_cvt_f32_i32_e32 v224, v224
	v_cvt_f32_i32_e32 v225, v225
	v_cvt_f32_i32_e32 v226, v226
	v_cvt_f32_i32_e32 v227, v227
	v_cvt_f32_i32_e32 v228, v228
	v_cvt_f32_i32_e32 v229, v229
	v_cvt_f32_i32_e32 v230, v230
	v_cvt_f32_i32_e32 v231, v231
	s_waitcnt vmcnt(15)
	v_mov_b32_e32 v239, v90
.LBB0_12:
	.loc	1 418 29                        ; generate_amdgcn.py:418:29
	s_ashr_i32 s4, s28, 31
	v_mov_b16_e32 v91.l, 0
	s_lshr_b32 s4, s4, 24
	.loc	1 420 22                        ; generate_amdgcn.py:420:22
	s_waitcnt vmcnt(0)
	v_mov_b16_e32 v91.h, v99.l
	.loc	1 418 29                        ; generate_amdgcn.py:418:29
	s_add_i32 s4, s28, s4
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	s_mov_b32 s22, s10
	.loc	1 418 29                        ; generate_amdgcn.py:418:29
	s_ashr_i32 s4, s4, 8
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	s_mov_b32 s23, s11
	.loc	1 420 22                        ; generate_amdgcn.py:420:22
	v_add_lshl_u32 v41, v34, s4, 1
	v_add_lshl_u32 v34, v35, s4, 1
	scratch_load_b32 v35, off, off          ; 4-byte Folded Reload
	.loc	1 419 34                        ; generate_amdgcn.py:419:34
	s_cmp_lt_i32 s4, s34
	.loc	1 422 40                        ; generate_amdgcn.py:422:40
	s_mul_i32 s5, s4, s35
	.loc	1 420 22                        ; generate_amdgcn.py:420:22
	v_add_lshl_u32 v36, v36, s4, 1
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	v_add_lshl_u32 v90, v18, s5, 1
	.loc	1 419 34                        ; generate_amdgcn.py:419:34
	s_cselect_b32 s5, -1, 0
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	s_waitcnt lgkmcnt(0)
	v_mul_f32_e32 v93, v15, v91
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_and_b32 vcc_lo, s2, s5
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_dual_mul_f32 v94, v14, v91 :: v_dual_cndmask_b32 v41, 0x80000000, v41
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	v_cndmask_b32_e32 v90, 0x80000000, v90, vcc_lo
	.loc	1 420 22                        ; generate_amdgcn.py:420:22
	v_cndmask_b32_e32 v36, 0x80000000, v36, vcc_lo
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v96, v12, v91
	v_mul_f32_e32 v100, v9, v91
	v_mul_f32_e32 v101, v8, v91
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	buffer_load_u16 v90, v90, s[20:23], 0 offen
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v92, v16, v91
	v_mul_f32_e32 v102, v7, v91
	v_mul_f32_e32 v103, v6, v91
	v_mul_f32_e32 v104, v5, v91
	v_mul_f32_e32 v105, v4, v91
	v_mul_f32_e32 v106, v3, v91
	v_mul_f32_e32 v107, v2, v91
	v_mul_f32_e32 v108, v1, v91
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v92, v92, v136, v82
	v_fma_f32 v93, v93, v133, v89
	v_fma_f32 v94, v94, v126, v88
	v_fma_f32 v96, v96, v123, v86
	v_fma_f32 v100, v100, v119, v83
	v_fma_f32 v101, v101, v117, v81
	v_fma_f32 v102, v102, v116, v80
	v_fma_f32 v103, v103, v115, v79
	v_fma_f32 v104, v104, v113, v78
	v_fma_f32 v105, v105, v112, v77
	v_fma_f32 v106, v106, v111, v76
	v_fma_f32 v107, v107, v110, v75
	v_fma_f32 v108, v108, v109, v74
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v82, v82, v92, s3
	v_cndmask_b32_e64 v89, v89, v93, s3
	v_cndmask_b32_e64 v88, v88, v94, s3
	v_cndmask_b32_e64 v86, v86, v96, s3
	v_cndmask_b32_e64 v83, v83, v100, s3
	v_cndmask_b32_e64 v81, v81, v101, s3
	v_cndmask_b32_e64 v80, v80, v102, s3
	v_cndmask_b32_e64 v79, v79, v103, s3
	v_cndmask_b32_e64 v78, v78, v104, s3
	v_cndmask_b32_e64 v77, v77, v105, s3
	v_cndmask_b32_e64 v75, v75, v107, s3
	v_cndmask_b32_e64 v74, v74, v108, s3
	v_cndmask_b32_e64 v76, v76, v106, s3
	.loc	1 450 23                        ; generate_amdgcn.py:450:23
	s_mul_i32 s37, s33, s35
	.loc	1 450 9 is_stmt 0               ; generate_amdgcn.py:450:9
	s_and_b32 s1, s1, 0xffff
	.loc	1 450 23                        ; generate_amdgcn.py:450:23
	s_add_i32 s70, s37, s35
	s_lshl1_add_u32 s69, s35, s37
	s_lshl2_add_u32 s67, s35, s37
	s_mul_i32 s5, s35, 7
	s_mul_i32 s6, s35, 9
	s_add_i32 s64, s37, s5
	s_mul_i32 s7, s35, 10
	s_lshl3_add_u32 s63, s35, s37
	s_add_i32 s62, s37, s6
	s_add_i32 s61, s37, s7
	s_mul_i32 s12, s35, 13
	s_mul_i32 s13, s35, 14
	s_mul_i32 s14, s35, 15
	s_add_i32 s58, s37, s12
	s_add_i32 s57, s37, s13
	s_mul_i32 s15, s35, 17
	s_add_i32 s56, s37, s14
	s_mul_i32 s16, s35, 18
	s_lshl4_add_u32 s55, s35, s37
	s_mul_i32 s17, s35, 19
	s_add_i32 s54, s37, s15
	s_mul_i32 s18, s35, 20
	s_add_i32 s53, s37, s16
	s_mul_i32 s19, s35, 21
	s_add_i32 s52, s37, s17
	s_mul_i32 s20, s35, 22
	s_add_i32 s51, s37, s18
	s_mul_i32 s21, s35, 23
	s_add_i32 s50, s37, s19
	s_mul_i32 s22, s35, 24
	s_add_i32 s49, s37, s20
	s_mul_i32 s23, s35, 25
	s_add_i32 s48, s37, s21
	s_mul_i32 s24, s35, 26
	s_add_i32 s47, s37, s22
	s_mul_i32 s25, s35, 27
	s_add_i32 s46, s37, s23
	s_mul_i32 s26, s35, 28
	s_add_i32 s45, s37, s24
	s_mul_i32 s27, s35, 29
	s_add_i32 s44, s37, s25
	s_mul_i32 s28, s35, 30
	s_add_i32 s43, s37, s26
	s_mul_i32 s29, s35, 31
	s_add_i32 s42, s37, s27
	s_lshl_b32 s30, s35, 5
	s_add_i32 s41, s37, s28
	s_mul_i32 s31, s35, 33
	s_add_i32 s40, s37, s29
	s_mul_i32 s33, s35, 34
	s_add_i32 s39, s37, s30
	s_mul_i32 s34, s35, 35
	s_add_i32 s38, s37, s31
	s_mul_i32 s71, s35, 36
	s_add_i32 s36, s37, s33
	s_mul_i32 s72, s35, 37
	s_add_i32 s34, s37, s34
	s_mul_i32 s73, s35, 38
	s_add_i32 s33, s37, s71
	s_mul_i32 s74, s35, 39
	s_add_i32 s31, s37, s72
	s_mul_i32 s75, s35, 40
	s_add_i32 s30, s37, s73
	s_mul_i32 s76, s35, 41
	s_add_i32 s24, s37, s74
	s_mul_i32 s77, s35, 42
	s_add_i32 s23, s37, s75
	s_mul_i32 s78, s35, 43
	s_add_i32 s21, s37, s76
	s_mul_i32 s79, s35, 44
	s_add_i32 s19, s37, s77
	s_mul_i32 s80, s35, 45
	s_add_i32 s17, s37, s78
	s_mul_i32 s81, s35, 46
	s_add_i32 s14, s37, s79
	s_mul_i32 s82, s35, 47
	s_add_i32 s12, s37, s80
	s_mul_i32 s83, s35, 48
	s_mul_i32 s84, s35, 49
	s_add_i32 s5, s37, s82
	s_mul_i32 s85, s35, 50
	s_mul_i32 s86, s35, 51
	s_mul_i32 s87, s35, 52
	s_mul_i32 s88, s35, 53
	s_mul_i32 s89, s35, 54
	s_mul_i32 s90, s35, 55
	s_mul_i32 s91, s35, 56
	s_mul_i32 s92, s35, 57
	s_mul_i32 s93, s35, 58
	s_mul_i32 s94, s35, 59
	s_mul_i32 s95, s35, 60
	s_mul_i32 s96, s35, 61
	s_mul_i32 s97, s35, 62
	s_mul_i32 s98, s35, 63
	s_add_i32 s28, s37, s84
	s_add_i32 s26, s37, s85
	s_add_i32 s29, s37, s86
	s_add_i32 s27, s37, s87
	s_add_i32 s25, s37, s88
	s_add_i32 s22, s37, s89
	s_add_i32 s20, s37, s90
	s_add_i32 s18, s37, s91
	s_add_i32 s15, s37, s92
	s_add_i32 s16, s37, s93
	s_add_i32 s13, s37, s94
	s_add_i32 s6, s37, s96
	s_add_i32 s7, s37, s97
	.loc	1 420 22 is_stmt 1              ; generate_amdgcn.py:420:22
	s_waitcnt vmcnt(1)
	v_add_lshl_u32 v35, v35, s4, 1
	v_cndmask_b32_e32 v34, 0x80000000, v34, vcc_lo
	.loc	1 450 23                        ; generate_amdgcn.py:450:23
	s_mul_i32 s4, s35, 6
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	s_add_i32 s65, s37, s4
	.loc	1 420 22                        ; generate_amdgcn.py:420:22
	v_cndmask_b32_e32 v35, 0x80000000, v35, vcc_lo
	s_clause 0x3
	buffer_load_u16 v41, v41, s[8:11], 0 offen
	buffer_load_u16 v34, v34, s[8:11], 0 offen
	buffer_load_u16 v35, v35, s[8:11], 0 offen
	buffer_load_u16 v36, v36, s[8:11], 0 offen
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v95, v13, v91
	v_mul_f32_e32 v97, v11, v91
	v_mul_f32_e32 v99, v10, v91
	.loc	1 420 22                        ; generate_amdgcn.py:420:22
	v_mov_b16_e32 v91.h, v114.l
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	s_waitcnt lgkmcnt(0)
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v95, v95, v125, v87
	v_fma_f32 v97, v97, v122, v85
	v_fma_f32 v99, v99, v120, v84
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
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
	.loc	1 420 22                        ; generate_amdgcn.py:420:22
	v_mov_b16_e64 v91.h, v155.l
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v87, v87, v95, s3
	v_cndmask_b32_e64 v85, v85, v97, s3
	v_cndmask_b32_e64 v84, v84, v99, s3
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v92, v109, v146, v73
	v_fma_f32 v93, v110, v145, v72
	v_fma_f32 v94, v111, v144, v71
	v_fma_f32 v95, v112, v143, v70
	v_fma_f32 v96, v113, v142, v69
	v_fma_f32 v97, v114, v141, v68
	v_fma_f32 v99, v115, v140, v67
	v_fma_f32 v100, v116, v177, v66
	v_fma_f32 v101, v117, v176, v65
	v_fma_f32 v102, v147, v137, v64
	v_fma_f32 v103, v148, v175, v63
	v_fma_f32 v104, v149, v135, v62
	v_fma_f32 v105, v150, v134, v61
	v_fma_f32 v107, v152, v132, v59
	v_fma_f32 v108, v153, v131, v58
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v109, v16, v91
	v_mul_f32_e32 v110, v15, v91
	v_mul_f32_e32 v111, v14, v91
	v_mul_f32_e32 v112, v13, v91
	v_mul_f32_e32 v113, v12, v91
	v_mul_f32_e32 v114, v11, v91
	v_mul_f32_e32 v115, v10, v91
	v_mul_f32_e32 v116, v9, v91
	v_mul_f32_e32 v117, v8, v91
	v_mul_f32_e32 v131, v7, v91
	v_mul_f32_e32 v132, v6, v91
	v_mul_f32_e32 v133, v5, v91
	v_mul_f32_e32 v134, v4, v91
	v_mul_f32_e32 v135, v3, v91
	v_mul_f32_e32 v136, v2, v91
	v_mul_f32_e32 v137, v1, v91
	.loc	1 420 22                        ; generate_amdgcn.py:420:22
	v_mov_b16_e64 v91.h, v139.l
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v72, v72, v93, s3
	v_cndmask_b32_e64 v93, v63, v103, s3
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v103, v132, v20, v47
	v_fma_f32 v20, v135, v0, v44
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v6, v6, v91
	v_mul_f32_e32 v1, v1, v91
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v106, v151, v174, v60
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v11, v11, v91
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v20, v44, v20, s3
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v44, v6, v17, v27
	v_fma_f32 v17, v1, v154, v22
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v9, v9, v91
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v71, v71, v94, s3
	v_cndmask_b32_e64 v94, v60, v106, s3
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v60, v110, v248, v56
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v17, v22, v17, s3
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v63, v111, v247, v55
	v_fma_f32 v11, v11, v236, v32
	v_fma_f32 v9, v9, v234, v30
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	s_waitcnt vmcnt(4)
	v_lshlrev_b32_e32 v1, 16, v90
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_dual_mul_f32 v13, v13, v91 :: v_dual_lshlrev_b32 v0, 6, v249
	s_barrier
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v60, v56, v60, s3
	v_cndmask_b32_e64 v56, v55, v63, s3
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	ds_store_b32 v138, v1 offset:40960
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v32, v32, v11, s3
	v_cndmask_b32_e64 v30, v30, v9, s3
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v13, v13, v238, v37
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v73, v73, v92, s3
	v_cndmask_b32_e64 v70, v70, v95, s3
	v_cndmask_b32_e64 v69, v69, v96, s3
	v_cndmask_b32_e64 v67, v67, v99, s3
	v_cndmask_b32_e64 v37, v37, v13, s3
	v_cndmask_b32_e64 v66, v66, v100, s3
	v_cndmask_b32_e64 v92, v64, v102, s3
	v_cndmask_b32_e64 v95, v59, v107, s3
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v96, v113, v165, v53
	v_fma_f32 v99, v115, v129, v51
	v_fma_f32 v100, v116, v128, v50
	v_fma_f32 v21, v136, v21, v43
	v_fma_f32 v19, v137, v19, v42
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v8, v8, v91
	v_mul_f32_e32 v7, v7, v91
	v_mul_f32_e32 v5, v5, v91
	v_mul_f32_e32 v4, v4, v91
	v_mul_f32_e32 v3, v3, v91
	v_mul_f32_e32 v2, v2, v91
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v21, v43, v21, s3
	v_cndmask_b32_e64 v42, v42, v19, s3
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v19, v8, v121, v29
	v_fma_f32 v43, v7, v190, v28
	v_fma_f32 v55, v3, v232, v24
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v68, v68, v97, s3
	v_cndmask_b32_e64 v65, v65, v101, s3
	v_cndmask_b32_e64 v29, v29, v19, s3
	v_cndmask_b32_e64 v62, v62, v104, s3
	v_cndmask_b32_e64 v61, v61, v105, s3
	v_cndmask_b32_e64 v27, v27, v44, s3
	v_cndmask_b32_e64 v24, v24, v55, s3
	v_cndmask_b32_e64 v58, v58, v108, s3
	v_cndmask_b32_e64 v53, v53, v96, s3
	v_cndmask_b32_e64 v50, v50, v100, s3
	v_cndmask_b32_e64 v28, v28, v43, s3
	.loc	1 450 23                        ; generate_amdgcn.py:450:23
	s_mul_i32 s8, s35, 11
	s_mul_i32 s9, s35, 12
	s_add_i32 s60, s37, s8
	s_add_i32 s59, s37, s9
	s_add_i32 s8, s37, s81
	s_add_i32 s9, s37, s95
	s_add_i32 s4, s37, s98
	.loc	1 420 22                        ; generate_amdgcn.py:420:22
	s_waitcnt vmcnt(2)
	v_lshlrev_b32_e32 v22, 16, v34
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	s_waitcnt vmcnt(0)
	v_dual_mul_f32 v15, v15, v91 :: v_dual_lshlrev_b32 v34, 16, v36
	v_mul_f32_e32 v12, v12, v91
	v_mul_f32_e32 v10, v10, v91
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v15, v15, v244, v39
	v_fma_f32 v12, v12, v237, v33
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v10, v10, v235, v31
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v63, v39, v15, s3
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cndmask_b32_e64 v33, v33, v12, s3
	v_cndmask_b32_e64 v39, v31, v10, s3
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	ds_load_b128 v[9:12], v163 offset:41472
	v_mul_f32_e32 v16, v16, v91
	v_mul_f32_e32 v14, v14, v91
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v91, v47, v103, s3
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v47, v5, v118, v26
	.loc	1 420 22                        ; generate_amdgcn.py:420:22
	v_lshlrev_b32_e32 v31, 16, v35
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v16, v16, v245, v40
	v_fma_f32 v14, v14, v243, v38
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	ds_load_b128 v[5:8], v163 offset:40976
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v19, v26, v47, s3
	.loc	1 420 22                        ; generate_amdgcn.py:420:22
	v_lshlrev_b32_e32 v26, 16, v41
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v40, v40, v16, s3
	v_cndmask_b32_e64 v38, v38, v14, s3
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	ds_load_b128 v[13:16], v163 offset:41488
	s_waitcnt lgkmcnt(2)
	v_mul_f32_e32 v113, v12, v22
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v64, v112, v246, v54
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v90, v10, v26
	v_mul_f32_e32 v111, v10, v22
	v_mul_f32_e32 v126, v10, v31
	v_mul_f32_e32 v10, v10, v34
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v54, v54, v64, s3
	v_cndmask_b32_e64 v64, v51, v99, s3
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v51, v4, v233, v25
	v_fma_f32 v104, v133, v124, v46
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v96, v11, v26
	v_mul_f32_e32 v110, v9, v22
	v_mul_f32_e32 v112, v11, v22
	s_waitcnt lgkmcnt(0)
	v_mul_f32_e32 v116, v15, v22
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v59, v109, v166, v57
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v115, v14, v22
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v97, v114, v130, v52
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v46, v46, v104, s3
	v_cndmask_b32_e64 v25, v25, v51, s3
	v_cndmask_b32_e64 v57, v57, v59, s3
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v59, v2, v164, v23
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	ds_load_b128 v[1:4], v163 offset:40960
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v52, v52, v97, s3
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v97, v12, v26
	v_mul_f32_e32 v99, v13, v26
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v23, v23, v59, s3
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v59, v9, v26
	v_mul_f32_e32 v100, v14, v26
	v_mul_f32_e32 v114, v13, v22
	v_mul_f32_e32 v44, v5, v26
	v_mul_f32_e32 v47, v6, v26
	v_mul_f32_e32 v55, v8, v26
	v_mul_f32_e32 v106, v5, v22
	v_mul_f32_e32 v107, v6, v22
	v_mul_f32_e32 v109, v8, v22
	v_mul_f32_e32 v121, v5, v31
	v_mul_f32_e32 v122, v6, v31
	v_dual_mul_f32 v124, v8, v31 :: v_dual_mul_f32 v5, v5, v34
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v105, v134, v173, v45
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v6, v6, v34
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v101, v117, v127, v49
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	s_waitcnt lgkmcnt(0)
	v_mul_f32_e32 v35, v1, v26
	v_mul_f32_e32 v8, v8, v34
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v102, v131, v172, v48
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v45, v45, v105, s3
	v_cndmask_b32_e64 v49, v49, v101, s3
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v36, v2, v26
	v_mul_f32_e32 v41, v3, v26
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v48, v48, v102, s3
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v43, v4, v26
	v_mul_f32_e32 v51, v7, v26
	v_mul_f32_e32 v101, v15, v26
	v_mul_f32_e32 v26, v16, v26
	v_mul_f32_e32 v102, v1, v22
	v_mul_f32_e32 v103, v2, v22
	v_mul_f32_e32 v104, v3, v22
	v_mul_f32_e32 v105, v4, v22
	v_mul_f32_e32 v108, v7, v22
	v_dual_mul_f32 v22, v16, v22 :: v_dual_mul_f32 v117, v1, v31
	v_mul_f32_e32 v118, v2, v31
	v_mul_f32_e32 v119, v3, v31
	v_mul_f32_e32 v120, v4, v31
	v_mul_f32_e32 v123, v7, v31
	v_mul_f32_e32 v125, v9, v31
	v_mul_f32_e32 v127, v11, v31
	v_mul_f32_e32 v128, v12, v31
	v_mul_f32_e32 v129, v13, v31
	v_mul_f32_e32 v130, v14, v31
	v_mul_f32_e32 v131, v15, v31
	v_mul_f32_e32 v31, v16, v31
	v_mul_f32_e32 v1, v1, v34
	v_mul_f32_e32 v2, v2, v34
	v_mul_f32_e32 v3, v3, v34
	v_mul_f32_e32 v4, v4, v34
	v_mul_f32_e32 v7, v7, v34
	v_mul_f32_e32 v9, v9, v34
	v_mul_f32_e32 v11, v11, v34
	v_mul_f32_e32 v12, v12, v34
	v_mul_f32_e32 v13, v13, v34
	v_mul_f32_e32 v14, v14, v34
	v_mul_f32_e32 v15, v15, v34
	v_mul_f32_e32 v16, v16, v34
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v34, v35, v98, v17
	v_fma_f32 v35, v36, v167, v23
	v_fma_f32 v36, v41, v168, v24
	v_fma_f32 v41, v43, v169, v25
	v_fma_f32 v43, v44, v170, v19
	v_fma_f32 v44, v47, v161, v27
	v_fma_f32 v47, v51, v160, v28
	v_fma_f32 v51, v55, v162, v29
	v_fma_f32 v55, v59, v171, v30
	v_fma_f32 v59, v90, v250, v39
	v_fma_f32 v90, v96, v251, v32
	v_fma_f32 v96, v97, v178, v33
	v_fma_f32 v97, v99, v179, v37
	v_fma_f32 v98, v100, v180, v38
	v_fma_f32 v99, v101, v181, v63
	v_fma_f32 v100, v102, v183, v42
	v_fma_f32 v101, v103, v184, v21
	v_fma_f32 v102, v104, v185, v20
	v_fma_f32 v103, v105, v186, v45
	v_fma_f32 v104, v106, v187, v46
	v_fma_f32 v105, v107, v188, v91
	v_fma_f32 v106, v108, v189, v48
	v_fma_f32 v107, v109, v191, v49
	v_fma_f32 v108, v110, v192, v50
	v_fma_f32 v109, v111, v193, v64
	v_fma_f32 v110, v112, v194, v52
	v_fma_f32 v111, v113, v195, v53
	v_fma_f32 v112, v114, v196, v54
	v_fma_f32 v113, v115, v197, v56
	v_fma_f32 v114, v116, v198, v60
	v_fma_f32 v115, v117, v200, v58
	v_fma_f32 v116, v118, v201, v95
	v_fma_f32 v117, v119, v202, v94
	v_fma_f32 v118, v120, v203, v61
	v_fma_f32 v119, v121, v204, v62
	v_fma_f32 v120, v122, v205, v93
	v_fma_f32 v121, v123, v206, v92
	v_fma_f32 v122, v124, v207, v65
	v_fma_f32 v123, v125, v208, v66
	v_fma_f32 v124, v126, v209, v67
	v_fma_f32 v125, v127, v210, v68
	v_fma_f32 v127, v129, v212, v70
	v_fma_f32 v129, v131, v214, v72
	v_fma_f32 v131, v1, v216, v74
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v1, v17, v34, s2
	.loc	1 450 9                         ; generate_amdgcn.py:450:9
	v_and_b32_e32 v17, 16, v249
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v126, v128, v211, v69
	v_fma_f32 v143, v13, v228, v87
	v_fma_f32 v144, v14, v229, v88
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v13, v25, v41, s2
	v_cndmask_b32_e64 v14, v45, v103, s2
	v_cndmask_b32_e64 v41, v67, v124, s2
	v_cndmask_b32_e64 v45, v68, v125, s2
	.loc	1 450 9                         ; generate_amdgcn.py:450:9
	v_and_b32_e32 v67, 0xcf0, v240
	v_and_or_b32 v68, v242, 64, v17
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v19, v19, v43, s2
	v_cndmask_b32_e64 v43, v32, v90, s2
	v_cndmask_b32_e64 v32, v49, v107, s2
	v_cndmask_b32_e64 v49, v69, v126, s2
	.loc	1 450 9                         ; generate_amdgcn.py:450:9
	v_lshlrev_b32_e32 v69, 13, v249
	v_xor_b32_e32 v67, v68, v67
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v133, v3, v218, v76
	v_fma_f32 v26, v26, v182, v40
	v_fma_f32 v22, v22, v199, v57
	v_fma_f32 v135, v5, v220, v78
	.loc	1 450 9                         ; generate_amdgcn.py:450:9
	v_and_or_b32 v67, 0xe000, v69, v67
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v137, v7, v222, v80
	v_fma_f32 v132, v2, v217, v75
	v_fma_f32 v134, v4, v219, v77
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v2, v42, v100, s2
	v_cndmask_b32_e64 v3, v58, v115, s2
	v_cndmask_b32_e64 v4, v74, v131, s2
	.loc	1 450 9                         ; generate_amdgcn.py:450:9
	v_add_nc_u32_e32 v68, 0, v67
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v139, v9, v224, v83
	v_fma_f32 v140, v10, v225, v84
	v_fma_f32 v141, v11, v226, v85
	v_fma_f32 v142, v12, v227, v86
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v9, v24, v36, s2
	v_cndmask_b32_e64 v10, v20, v102, s2
	v_cndmask_b32_e64 v11, v94, v117, s2
	v_cndmask_b32_e64 v12, v76, v133, s2
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v136, v6, v221, v79
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v39, v39, v59, s2
	v_cndmask_b32_e64 v59, v63, v99, s2
	v_cndmask_b32_e64 v63, v40, v26, s2
	v_cndmask_b32_e64 v6, v21, v101, s2
	v_cndmask_b32_e64 v20, v46, v104, s2
	v_cndmask_b32_e64 v40, v64, v109, s2
	v_cndmask_b32_e64 v64, v57, v22, s2
	v_cndmask_b32_e64 v21, v62, v119, s2
	v_cndmask_b32_e64 v22, v78, v135, s2
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v128, v130, v213, v71
	v_fma_f32 v130, v31, v215, v73
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v5, v23, v35, s2
	v_cndmask_b32_e64 v23, v27, v44, s2
	v_cndmask_b32_e64 v27, v28, v47, s2
	v_cndmask_b32_e64 v31, v29, v51, s2
	v_cndmask_b32_e64 v35, v30, v55, s2
	v_cndmask_b32_e64 v28, v48, v106, s2
	v_cndmask_b32_e64 v29, v92, v121, s2
	v_cndmask_b32_e64 v30, v80, v137, s2
	.loc	1 450 9                         ; generate_amdgcn.py:450:9
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v68, v[1:4]
	ds_store_b128 v68, v[9:12] offset:256
	ds_store_b128 v68, v[19:22] offset:512
	ds_store_b128 v68, v[27:30] offset:768
	v_lshlrev_b32_e32 v2, 2, v17
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v138, v8, v223, v81
	v_fma_f32 v145, v15, v230, v89
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v51, v37, v97, s2
	v_cndmask_b32_e64 v55, v38, v98, s2
	v_cndmask_b32_e64 v36, v50, v108, s2
	v_cndmask_b32_e64 v7, v95, v116, s2
	v_cndmask_b32_e64 v37, v66, v123, s2
	v_cndmask_b32_e64 v8, v75, v132, s2
	v_cndmask_b32_e64 v38, v83, v139, s2
	.loc	1 450 9                         ; generate_amdgcn.py:450:9
	v_xad_u32 v1, v67, 32, 0
	v_and_or_b32 v0, 0x300, v0, v2
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v146, v16, v231, v82
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v44, v52, v110, s2
	v_cndmask_b32_e64 v15, v61, v118, s2
	v_cndmask_b32_e64 v16, v77, v134, s2
	v_cndmask_b32_e64 v46, v85, v141, s2
	v_cndmask_b32_e64 v24, v91, v105, s2
	v_cndmask_b32_e64 v48, v53, v111, s2
	v_cndmask_b32_e64 v52, v54, v112, s2
	v_cndmask_b32_e64 v25, v93, v120, s2
	v_cndmask_b32_e64 v53, v70, v127, s2
	v_cndmask_b32_e64 v26, v79, v136, s2
	v_cndmask_b32_e64 v54, v87, v143, s2
	v_cndmask_b32_e64 v47, v33, v96, s2
	v_cndmask_b32_e64 v60, v60, v114, s2
	v_cndmask_b32_e64 v33, v65, v122, s2
	v_cndmask_b32_e64 v61, v72, v129, s2
	v_cndmask_b32_e64 v34, v81, v138, s2
	v_cndmask_b32_e64 v62, v89, v145, s2
	.loc	1 450 9                         ; generate_amdgcn.py:450:9
	ds_store_b128 v68, v[35:38] offset:4096
	ds_store_b128 v68, v[43:46] offset:4352
	ds_store_b128 v68, v[51:54] offset:4608
	ds_store_b128 v68, v[59:62] offset:4864
	ds_store_b128 v1, v[5:8]
	ds_store_b128 v1, v[13:16] offset:256
	ds_store_b128 v1, v[23:26] offset:512
	ds_store_b128 v1, v[31:34] offset:768
	v_or3_b32 v16, v0, v241, v239
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v42, v84, v140, s2
	v_cndmask_b32_e64 v50, v86, v142, s2
	v_cndmask_b32_e64 v56, v56, v113, s2
	v_cndmask_b32_e64 v57, v71, v128, s2
	.loc	1 450 9                         ; generate_amdgcn.py:450:9
	v_add_nc_u32_e32 v4, 0, v16
	v_xad_u32 v12, 0x2010, v16, 0
	v_xad_u32 v31, 0x6030, v16, 0
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v58, v88, v144, s2
	v_cndmask_b32_e64 v65, v73, v130, s2
	v_cndmask_b32_e64 v66, v82, v146, s2
	.loc	1 450 9                         ; generate_amdgcn.py:450:9
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
	.loc	1 450 23 is_stmt 0              ; generate_amdgcn.py:450:23
	s_mul_i32 s2, s35, 3
	.loc	1 450 9                         ; generate_amdgcn.py:450:9
	v_add_lshl_u32 v17, s37, v18, 2
	.loc	1 450 23                        ; generate_amdgcn.py:450:23
	s_mul_i32 s3, s35, 5
	s_add_i32 s68, s37, s2
	.loc	1 450 9                         ; generate_amdgcn.py:450:9
	v_add_lshl_u32 v67, s70, v18, 2
	ds_load_b128 v[63:66], v16 offset:128
	v_add_lshl_u32 v68, s69, v18, 2
	.loc	1 450 23                        ; generate_amdgcn.py:450:23
	s_add_i32 s66, s37, s3
	.loc	1 450 9                         ; generate_amdgcn.py:450:9
	s_mov_b32 s2, s10
	s_mov_b32 s3, s11
	v_add_lshl_u32 v69, s68, v18, 2
	s_waitcnt lgkmcnt(15)
	buffer_atomic_add_f32 v0, v17, s[0:3], 0 offen
	s_waitcnt lgkmcnt(13)
	buffer_atomic_add_f32 v8, v67, s[0:3], 0 offen
	s_waitcnt lgkmcnt(11)
	buffer_atomic_add_f32 v19, v68, s[0:3], 0 offen
	s_waitcnt lgkmcnt(9)
	buffer_atomic_add_f32 v27, v69, s[0:3], 0 offen
	v_add_lshl_u32 v0, s67, v18, 2
	v_add_lshl_u32 v8, s66, v18, 2
	v_add_lshl_u32 v16, s65, v18, 2
	v_add_lshl_u32 v17, s64, v18, 2
	v_add_lshl_u32 v19, s63, v18, 2
	s_waitcnt lgkmcnt(2)
	s_clause 0x4
	buffer_atomic_add_f32 v35, v0, s[0:3], 0 offen
	buffer_atomic_add_f32 v43, v8, s[0:3], 0 offen
	buffer_atomic_add_f32 v51, v16, s[0:3], 0 offen
	buffer_atomic_add_f32 v59, v17, s[0:3], 0 offen
	buffer_atomic_add_f32 v4, v19, s[0:3], 0 offen
	v_add_lshl_u32 v0, s62, v18, 2
	v_add_lshl_u32 v4, s61, v18, 2
	v_add_lshl_u32 v8, s60, v18, 2
	v_add_lshl_u32 v16, s59, v18, 2
	v_add_lshl_u32 v17, s58, v18, 2
	s_clause 0x2
	buffer_atomic_add_f32 v12, v0, s[0:3], 0 offen
	buffer_atomic_add_f32 v23, v4, s[0:3], 0 offen
	buffer_atomic_add_f32 v31, v8, s[0:3], 0 offen
	s_waitcnt lgkmcnt(1)
	s_clause 0x1
	buffer_atomic_add_f32 v39, v16, s[0:3], 0 offen
	buffer_atomic_add_f32 v47, v17, s[0:3], 0 offen
	v_add_lshl_u32 v0, s57, v18, 2
	v_add_lshl_u32 v4, s56, v18, 2
	v_add_lshl_u32 v8, s55, v18, 2
	v_add_lshl_u32 v12, s54, v18, 2
	v_add_lshl_u32 v16, s53, v18, 2
	buffer_atomic_add_f32 v55, v0, s[0:3], 0 offen
	s_waitcnt lgkmcnt(0)
	s_clause 0x3
	buffer_atomic_add_f32 v63, v4, s[0:3], 0 offen
	buffer_atomic_add_f32 v1, v8, s[0:3], 0 offen
	buffer_atomic_add_f32 v9, v12, s[0:3], 0 offen
	buffer_atomic_add_f32 v20, v16, s[0:3], 0 offen
	v_add_lshl_u32 v0, s52, v18, 2
	v_add_lshl_u32 v1, s51, v18, 2
	v_add_lshl_u32 v4, s50, v18, 2
	v_add_lshl_u32 v8, s49, v18, 2
	v_add_lshl_u32 v9, s48, v18, 2
	s_clause 0x4
	buffer_atomic_add_f32 v28, v0, s[0:3], 0 offen
	buffer_atomic_add_f32 v36, v1, s[0:3], 0 offen
	buffer_atomic_add_f32 v44, v4, s[0:3], 0 offen
	buffer_atomic_add_f32 v52, v8, s[0:3], 0 offen
	buffer_atomic_add_f32 v60, v9, s[0:3], 0 offen
	v_add_lshl_u32 v0, s47, v18, 2
	v_add_lshl_u32 v1, s46, v18, 2
	v_add_lshl_u32 v4, s45, v18, 2
	v_add_lshl_u32 v8, s44, v18, 2
	v_add_lshl_u32 v9, s43, v18, 2
	s_clause 0x4
	buffer_atomic_add_f32 v5, v0, s[0:3], 0 offen
	buffer_atomic_add_f32 v13, v1, s[0:3], 0 offen
	buffer_atomic_add_f32 v24, v4, s[0:3], 0 offen
	buffer_atomic_add_f32 v32, v8, s[0:3], 0 offen
	buffer_atomic_add_f32 v40, v9, s[0:3], 0 offen
	v_add_lshl_u32 v0, s42, v18, 2
	v_add_lshl_u32 v1, s41, v18, 2
	v_add_lshl_u32 v4, s40, v18, 2
	v_add_lshl_u32 v5, s39, v18, 2
	v_add_lshl_u32 v8, s38, v18, 2
	s_clause 0x4
	buffer_atomic_add_f32 v48, v0, s[0:3], 0 offen
	buffer_atomic_add_f32 v56, v1, s[0:3], 0 offen
	buffer_atomic_add_f32 v64, v4, s[0:3], 0 offen
	buffer_atomic_add_f32 v2, v5, s[0:3], 0 offen
	buffer_atomic_add_f32 v10, v8, s[0:3], 0 offen
	v_add_lshl_u32 v0, s36, v18, 2
	v_add_lshl_u32 v1, s34, v18, 2
	v_add_lshl_u32 v2, s33, v18, 2
	v_add_lshl_u32 v4, s31, v18, 2
	v_add_lshl_u32 v5, s30, v18, 2
	s_clause 0x4
	buffer_atomic_add_f32 v21, v0, s[0:3], 0 offen
	buffer_atomic_add_f32 v29, v1, s[0:3], 0 offen
	buffer_atomic_add_f32 v37, v2, s[0:3], 0 offen
	buffer_atomic_add_f32 v45, v4, s[0:3], 0 offen
	buffer_atomic_add_f32 v53, v5, s[0:3], 0 offen
	v_add_lshl_u32 v0, s24, v18, 2
	v_add_lshl_u32 v1, s23, v18, 2
	v_add_lshl_u32 v2, s21, v18, 2
	v_add_lshl_u32 v4, s19, v18, 2
	v_add_lshl_u32 v5, s17, v18, 2
	s_clause 0x4
	buffer_atomic_add_f32 v61, v0, s[0:3], 0 offen
	buffer_atomic_add_f32 v6, v1, s[0:3], 0 offen
	buffer_atomic_add_f32 v14, v2, s[0:3], 0 offen
	buffer_atomic_add_f32 v25, v4, s[0:3], 0 offen
	buffer_atomic_add_f32 v33, v5, s[0:3], 0 offen
	v_add_lshl_u32 v0, s14, v18, 2
	v_add_lshl_u32 v1, s12, v18, 2
	.loc	1 450 23                        ; generate_amdgcn.py:450:23
	s_add_i32 s35, s37, s83
	.loc	1 450 9                         ; generate_amdgcn.py:450:9
	v_add_lshl_u32 v2, s8, v18, 2
	v_add_lshl_u32 v4, s5, v18, 2
	v_add_lshl_u32 v5, s35, v18, 2
	s_clause 0x4
	buffer_atomic_add_f32 v41, v0, s[0:3], 0 offen
	buffer_atomic_add_f32 v49, v1, s[0:3], 0 offen
	buffer_atomic_add_f32 v57, v2, s[0:3], 0 offen
	buffer_atomic_add_f32 v65, v4, s[0:3], 0 offen
	buffer_atomic_add_f32 v3, v5, s[0:3], 0 offen
	v_add_lshl_u32 v0, s28, v18, 2
	v_add_lshl_u32 v1, s26, v18, 2
	v_add_lshl_u32 v2, s29, v18, 2
	v_add_lshl_u32 v3, s27, v18, 2
	v_add_lshl_u32 v4, s25, v18, 2
	s_clause 0x4
	buffer_atomic_add_f32 v11, v0, s[0:3], 0 offen
	buffer_atomic_add_f32 v22, v1, s[0:3], 0 offen
	buffer_atomic_add_f32 v30, v2, s[0:3], 0 offen
	buffer_atomic_add_f32 v38, v3, s[0:3], 0 offen
	buffer_atomic_add_f32 v46, v4, s[0:3], 0 offen
	v_add_lshl_u32 v0, s22, v18, 2
	v_add_lshl_u32 v1, s20, v18, 2
	v_add_lshl_u32 v2, s18, v18, 2
	v_add_lshl_u32 v3, s15, v18, 2
	v_add_lshl_u32 v4, s16, v18, 2
	s_clause 0x4
	buffer_atomic_add_f32 v54, v0, s[0:3], 0 offen
	buffer_atomic_add_f32 v62, v1, s[0:3], 0 offen
	buffer_atomic_add_f32 v7, v2, s[0:3], 0 offen
	buffer_atomic_add_f32 v15, v3, s[0:3], 0 offen
	buffer_atomic_add_f32 v26, v4, s[0:3], 0 offen
	v_add_lshl_u32 v0, s13, v18, 2
	v_add_lshl_u32 v1, s9, v18, 2
	v_add_lshl_u32 v2, s6, v18, 2
	v_add_lshl_u32 v3, s7, v18, 2
	v_add_lshl_u32 v4, s4, v18, 2
	s_clause 0x4
	buffer_atomic_add_f32 v34, v0, s[0:3], 0 offen
	buffer_atomic_add_f32 v42, v1, s[0:3], 0 offen
	buffer_atomic_add_f32 v50, v2, s[0:3], 0 offen
	buffer_atomic_add_f32 v58, v3, s[0:3], 0 offen
	buffer_atomic_add_f32 v66, v4, s[0:3], 0 offen
	.loc	1 338 1 is_stmt 1               ; generate_amdgcn.py:338:1
	s_endpgm
.Ltmp23:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_int8xint8_nt_sc256_none_bm64_bn256_bk64_gm4_w8_s3_weu2_sk8_evenk
		.amdhsa_group_segment_fixed_size 0
		.amdhsa_private_segment_fixed_size 76
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
	.size	amd_strix_halo_gfx1151_int8xint8_nt_sc256_none_bm64_bn256_bk64_gm4_w8_s3_weu2_sk8_evenk, .Lfunc_end0-amd_strix_halo_gfx1151_int8xint8_nt_sc256_none_bm64_bn256_bk64_gm4_w8_s3_weu2_sk8_evenk
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_int8xint8_nt_sc256_none_bm64_bn256_bk64_gm4_w8_s3_weu2_sk8_evenk.num_vgpr, 256
	.set amd_strix_halo_gfx1151_int8xint8_nt_sc256_none_bm64_bn256_bk64_gm4_w8_s3_weu2_sk8_evenk.num_agpr, 0
	.set amd_strix_halo_gfx1151_int8xint8_nt_sc256_none_bm64_bn256_bk64_gm4_w8_s3_weu2_sk8_evenk.numbered_sgpr, 99
	.set amd_strix_halo_gfx1151_int8xint8_nt_sc256_none_bm64_bn256_bk64_gm4_w8_s3_weu2_sk8_evenk.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_int8xint8_nt_sc256_none_bm64_bn256_bk64_gm4_w8_s3_weu2_sk8_evenk.private_seg_size, 76
	.set amd_strix_halo_gfx1151_int8xint8_nt_sc256_none_bm64_bn256_bk64_gm4_w8_s3_weu2_sk8_evenk.uses_vcc, 1
	.set amd_strix_halo_gfx1151_int8xint8_nt_sc256_none_bm64_bn256_bk64_gm4_w8_s3_weu2_sk8_evenk.uses_flat_scratch, 1
	.set amd_strix_halo_gfx1151_int8xint8_nt_sc256_none_bm64_bn256_bk64_gm4_w8_s3_weu2_sk8_evenk.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_int8xint8_nt_sc256_none_bm64_bn256_bk64_gm4_w8_s3_weu2_sk8_evenk.has_recursion, 0
	.set amd_strix_halo_gfx1151_int8xint8_nt_sc256_none_bm64_bn256_bk64_gm4_w8_s3_weu2_sk8_evenk.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 12020
; TotalNumSgprs: 101
; NumVgprs: 256
; ScratchSize: 76
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
	.short	347                             ; DW_AT_call_line
	.byte	17                              ; DW_AT_call_column
	.byte	4                               ; Abbrev [4] 0x4e:0xd DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges1                 ; DW_AT_ranges
	.byte	1                               ; DW_AT_call_file
	.short	346                             ; DW_AT_call_line
	.byte	17                              ; DW_AT_call_column
	.byte	4                               ; Abbrev [4] 0x5b:0xd DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges2                 ; DW_AT_ranges
	.byte	1                               ; DW_AT_call_file
	.short	417                             ; DW_AT_call_line
	.byte	30                              ; DW_AT_call_column
	.byte	4                               ; Abbrev [4] 0x68:0xd DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges3                 ; DW_AT_ranges
	.byte	1                               ; DW_AT_call_file
	.short	363                             ; DW_AT_call_line
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
	.quad	.Ltmp19-.Lfunc_begin0
	.quad	.Ltmp20-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges3:
	.quad	.Ltmp17-.Lfunc_begin0
	.quad	.Ltmp18-.Lfunc_begin0
	.quad	.Ltmp21-.Lfunc_begin0
	.quad	.Ltmp22-.Lfunc_begin0
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
	.asciz	"amd_strix_halo_gfx1151_int8xint8_nt_sc256_none_bm64_bn256_bk64_gm4_w8_s3_weu2_sk8_evenk"             ; string offset=75 ; amd_strix_halo_gfx1151_int8xint8_nt_sc256_none_bm64_bn256_bk64_gm4_w8_s3_weu2_sk8_evenk
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
    .name:           amd_strix_halo_gfx1151_int8xint8_nt_sc256_none_bm64_bn256_bk64_gm4_w8_s3_weu2_sk8_evenk
    .private_segment_fixed_size: 76
    .sgpr_count:     101
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_int8xint8_nt_sc256_none_bm64_bn256_bk64_gm4_w8_s3_weu2_sk8_evenk.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     256
    .vgpr_spill_count: 18
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
