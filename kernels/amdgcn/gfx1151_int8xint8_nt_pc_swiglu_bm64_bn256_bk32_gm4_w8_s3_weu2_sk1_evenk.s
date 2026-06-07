	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_int8xint8_nt_pc_swiglu_bm64_bn256_bk32_gm4_w8_s3_weu2_sk1_evenk               ; -- Begin function amd_strix_halo_gfx1151_int8xint8_nt_pc_swiglu_bm64_bn256_bk32_gm4_w8_s3_weu2_sk1_evenk
	.p2align	8
	.type	amd_strix_halo_gfx1151_int8xint8_nt_pc_swiglu_bm64_bn256_bk32_gm4_w8_s3_weu2_sk1_evenk,@function
amd_strix_halo_gfx1151_int8xint8_nt_pc_swiglu_bm64_bn256_bk32_gm4_w8_s3_weu2_sk1_evenk:                      ; @amd_strix_halo_gfx1151_int8xint8_nt_pc_swiglu_bm64_bn256_bk32_gm4_w8_s3_weu2_sk1_evenk
.Lfunc_begin0:
	.file	1 "<repo>/scripts" "generate_amdgcn.py"
	.loc	1 283 0                         ; generate_amdgcn.py:283:0
	.cfi_sections .debug_frame
	.cfi_startproc
; %bb.0:
	s_clause 0x1
	s_load_b64 s[14:15], s[0:1], 0x30
	s_load_b128 s[20:23], s[0:1], 0x0
	v_mov_b32_e32 v156, v0
.Ltmp0:
	.loc	1 293 16 prologue_end           ; generate_amdgcn.py:293:16
	s_abs_i32 s7, s2
.Ltmp1:
	.file	2 "<triton>/python/triton/language" "standard.py"
	.loc	2 43 13                         ; standard.py:43:13 @[ generate_amdgcn.py:291:17 ]
	s_waitcnt lgkmcnt(0)
	s_add_i32 s4, s15, 0xff
.Ltmp2:
	.loc	2 43 13 is_stmt 0               ; standard.py:43:13 @[ generate_amdgcn.py:290:17 ]
	s_add_i32 s8, s14, 63
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
	s_lshr_b32 s10, s10, 26
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
	s_ashr_i32 s8, s8, 6
.Ltmp11:
	.loc	1 292 24 is_stmt 1              ; generate_amdgcn.py:292:24
	s_lshl_b32 s4, s4, 2
	s_mov_b64 s[24:25], s[22:23]
	.loc	1 293 16                        ; generate_amdgcn.py:293:16
	s_abs_i32 s5, s4
	s_mov_b32 s23, 0x31027000
	s_cvt_f32_u32 s6, s5
	s_sub_i32 s9, 0, s5
	s_mov_b32 s22, 0x7ffffffe
	.loc	1 350 22                        ; generate_amdgcn.py:350:22
	s_mov_b32 s27, s23
	.loc	1 293 16                        ; generate_amdgcn.py:293:16
	v_rcp_iflag_f32_e32 v0, s6
	.loc	1 350 22                        ; generate_amdgcn.py:350:22
	s_mov_b32 s26, s22
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_3)
	.loc	1 293 16                        ; generate_amdgcn.py:293:16
	v_readfirstlane_b32 s6, v0
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
	s_sub_i32 s11, 0, s8
	v_rcp_iflag_f32_e32 v0, s9
	s_load_b32 s9, s[0:1], 0x38
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_readfirstlane_b32 s10, v0
	.loc	1 301 14                        ; generate_amdgcn.py:301:14
	v_lshlrev_b32_e32 v0, 3, v156
	.loc	1 297 13                        ; generate_amdgcn.py:297:13
	s_mul_f32 s10, s10, 0x4f7ffffe
	.loc	1 301 14                        ; generate_amdgcn.py:301:14
	v_and_b32_e32 v3, 24, v0
	.loc	1 300 32                        ; generate_amdgcn.py:300:32
	v_lshrrev_b32_e32 v2, 1, v156
	.loc	1 299 32                        ; generate_amdgcn.py:299:32
	v_lshrrev_b32_e32 v1, 2, v156
	.loc	1 297 13                        ; generate_amdgcn.py:297:13
	s_cvt_u32_f32 s10, s10
	.loc	1 301 14                        ; generate_amdgcn.py:301:14
	v_and_b32_e32 v94, 1, v156
	.loc	1 350 30                        ; generate_amdgcn.py:350:30
	s_waitcnt lgkmcnt(0)
	v_mul_lo_u32 v2, s9, v2
	.loc	1 297 13                        ; generate_amdgcn.py:297:13
	s_mul_i32 s11, s11, s10
	.loc	1 348 30                        ; generate_amdgcn.py:348:30
	v_mul_lo_u32 v1, s9, v1
	.loc	1 297 13                        ; generate_amdgcn.py:297:13
	s_mul_hi_u32 s4, s10, s11
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_add_i32 s10, s10, s4
	s_mul_hi_u32 s4, s5, s10
	s_xor_b32 s10, s2, s7
	s_mul_i32 s11, s4, s8
	s_ashr_i32 s10, s10, 31
	s_sub_i32 s5, s5, s11
	s_add_i32 s11, s4, 1
	s_sub_i32 s12, s5, s8
	s_cmp_ge_u32 s5, s8
	.loc	1 350 30                        ; generate_amdgcn.py:350:30
	v_lshl_add_u32 v74, v94, 4, v2
	.loc	1 297 13                        ; generate_amdgcn.py:297:13
	s_cselect_b32 s4, s11, s4
	s_cselect_b32 s5, s12, s5
	s_add_i32 s11, s4, 1
	s_cmp_ge_u32 s5, s8
	.loc	1 350 30                        ; generate_amdgcn.py:350:30
	v_lshl_add_u32 v5, s9, 7, v74
	.loc	1 297 13                        ; generate_amdgcn.py:297:13
	s_cselect_b32 s4, s11, s4
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	s_xor_b32 s4, s4, s10
	v_mov_b32_e32 v29, v5
	s_sub_i32 s4, s4, s10
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	v_and_b32_e32 v0, 0x778, v0
	.loc	1 296 28                        ; generate_amdgcn.py:296:28
	s_mul_i32 s5, s4, s7
	.loc	1 300 14                        ; generate_amdgcn.py:300:14
	s_lshl_b32 s14, s4, 8
	.loc	1 296 28                        ; generate_amdgcn.py:296:28
	s_sub_i32 s2, s2, s5
	.loc	1 342 22                        ; generate_amdgcn.py:342:22
	s_lshl_b32 s7, s3, 5
	.loc	1 296 13                        ; generate_amdgcn.py:296:13
	s_add_i32 s2, s2, s6
.Ltmp12:
	.loc	2 43 13                         ; standard.py:43:13 @[ generate_amdgcn.py:307:28 ]
	s_add_i32 s6, s9, 31
.Ltmp13:
	.loc	1 299 14                        ; generate_amdgcn.py:299:14
	s_lshl_b32 s28, s2, 6
	.loc	1 356 39                        ; generate_amdgcn.py:356:39
	s_add_i32 s29, s14, s15
	.loc	1 348 30                        ; generate_amdgcn.py:348:30
	s_mul_i32 s2, s28, s9
	.loc	1 350 30                        ; generate_amdgcn.py:350:30
	s_mul_i32 s34, s14, s9
	.loc	1 348 30                        ; generate_amdgcn.py:348:30
	v_add3_u32 v96, v1, v3, s2
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_cmp_gt_i32 s6, 31
	.loc	1 356 39                        ; generate_amdgcn.py:356:39
	s_mul_i32 s35, s29, s9
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_cselect_b32 s3, -1, 0
	.loc	1 350 30                        ; generate_amdgcn.py:350:30
	s_add_i32 s2, s34, s7
	.loc	1 348 30                        ; generate_amdgcn.py:348:30
	v_add_nc_u32_e32 v1, s7, v96
	.loc	1 348 22 is_stmt 0              ; generate_amdgcn.py:348:22
	s_and_b32 s21, s21, 0xffff
	.loc	1 350 22 is_stmt 1              ; generate_amdgcn.py:350:22
	s_and_b32 s25, s25, 0xffff
	.loc	1 356 39                        ; generate_amdgcn.py:356:39
	s_add_i32 s4, s35, s7
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_cmp_gt_i32 s6, 63
	.loc	1 350 30                        ; generate_amdgcn.py:350:30
	v_add_nc_u32_e32 v2, s2, v74
	v_add_nc_u32_e32 v3, s2, v5
	.loc	1 356 39                        ; generate_amdgcn.py:356:39
	v_add_nc_u32_e32 v4, s4, v74
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_cselect_b32 s2, -1, 0
	.loc	1 342 17                        ; generate_amdgcn.py:342:17
	s_add_i32 s7, s7, 32
	.loc	1 356 39                        ; generate_amdgcn.py:356:39
	v_add_nc_u32_e32 v5, s4, v5
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	v_cndmask_b32_e64 v1, 0x80000000, v1, s3
	.loc	1 348 30 is_stmt 0              ; generate_amdgcn.py:348:30
	v_add_nc_u32_e32 v6, s7, v96
	.loc	1 350 22 is_stmt 1              ; generate_amdgcn.py:350:22
	v_cndmask_b32_e64 v7, 0x80000000, v2, s3
	.loc	1 350 30 is_stmt 0              ; generate_amdgcn.py:350:30
	v_add_nc_u32_e32 v2, 32, v2
	.loc	1 350 22                        ; generate_amdgcn.py:350:22
	v_cndmask_b32_e64 v9, 0x80000000, v3, s3
	.loc	1 350 30                        ; generate_amdgcn.py:350:30
	v_add_nc_u32_e32 v3, 32, v3
	.loc	1 356 31 is_stmt 1              ; generate_amdgcn.py:356:31
	v_cndmask_b32_e64 v13, 0x80000000, v4, s3
	.loc	1 356 39 is_stmt 0              ; generate_amdgcn.py:356:39
	v_add_nc_u32_e32 v4, 32, v4
	v_add_nc_u32_e32 v21, 32, v5
	.loc	1 348 22 is_stmt 1              ; generate_amdgcn.py:348:22
	buffer_load_b64 v[38:39], v1, s[20:23], 0 offen
	v_cndmask_b32_e64 v1, 0x80000000, v6, s2
	.loc	1 350 22                        ; generate_amdgcn.py:350:22
	v_cndmask_b32_e64 v2, 0x80000000, v2, s2
	v_cndmask_b32_e64 v3, 0x80000000, v3, s2
	.loc	1 356 31                        ; generate_amdgcn.py:356:31
	v_cndmask_b32_e64 v17, 0x80000000, v5, s3
	v_cndmask_b32_e64 v4, 0x80000000, v4, s2
	v_cndmask_b32_e64 v34, 0x80000000, v21, s2
	.loc	1 350 22                        ; generate_amdgcn.py:350:22
	s_clause 0x3
	buffer_load_b128 v[5:8], v7, s[24:27], 0 offen
	buffer_load_b128 v[9:12], v9, s[24:27], 0 offen
	buffer_load_b128 v[13:16], v13, s[24:27], 0 offen
	buffer_load_b128 v[17:20], v17, s[24:27], 0 offen
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	buffer_load_b64 v[40:41], v1, s[20:23], 0 offen
	.loc	1 350 22                        ; generate_amdgcn.py:350:22
	s_clause 0x3
	buffer_load_b128 v[21:24], v2, s[24:27], 0 offen
	buffer_load_b128 v[25:28], v3, s[24:27], 0 offen
	buffer_load_b128 v[30:33], v4, s[24:27], 0 offen
	buffer_load_b128 v[34:37], v34, s[24:27], 0 offen
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	v_bfe_i32 v1, v156, 4, 1
	.loc	1 350 22                        ; generate_amdgcn.py:350:22
	v_lshlrev_b32_e32 v2, 4, v156
	v_bfe_i32 v3, v156, 3, 1
	s_mov_b32 s5, 0
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_cmpk_gt_i32 s6, 0x5f
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	v_and_b32_e32 v1, 0x90, v1
	.loc	1 350 22                        ; generate_amdgcn.py:350:22
	v_and_b32_e32 v4, 0xf70, v2
	v_and_b32_e32 v3, 0x90, v3
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	v_xor_b32_e32 v165, v1, v0
	.loc	1 350 22                        ; generate_amdgcn.py:350:22
	v_xor_b32_e32 v155, v3, v4
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	v_and_b32_e32 v4, 16, v156
	v_lshlrev_b32_e32 v3, 5, v156
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_add_nc_u32_e32 v1, 0, v165
	.loc	1 350 22                        ; generate_amdgcn.py:350:22
	v_add_nc_u32_e32 v42, 0, v155
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	s_waitcnt vmcnt(9)
	ds_store_b64 v1, v[38:39] offset:32768
	.loc	1 350 22                        ; generate_amdgcn.py:350:22
	s_waitcnt vmcnt(8)
	ds_store_b128 v42, v[5:8]
	s_waitcnt vmcnt(7)
	ds_store_b128 v42, v[9:12] offset:4096
	.loc	1 356 31                        ; generate_amdgcn.py:356:31
	s_waitcnt vmcnt(6)
	ds_store_b128 v42, v[13:16] offset:16384
	s_waitcnt vmcnt(5)
	ds_store_b128 v42, v[17:20] offset:20480
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_waitcnt vmcnt(4)
	ds_store_b64 v1, v[40:41] offset:34816
	.loc	1 350 22                        ; generate_amdgcn.py:350:22
	s_waitcnt vmcnt(3)
	ds_store_b128 v42, v[21:24] offset:8192
	s_waitcnt vmcnt(2)
	ds_store_b128 v42, v[25:28] offset:12288
	.loc	1 356 31                        ; generate_amdgcn.py:356:31
	s_waitcnt vmcnt(1)
	ds_store_b128 v42, v[30:33] offset:24576
	s_waitcnt vmcnt(0)
	ds_store_b128 v42, v[34:37] offset:28672
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_cbranch_scc1 .LBB0_2
; %bb.1:                                ; %.._crit_edge_crit_edge
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	v_and_b32_e32 v6, 0x160, v3
	v_and_b32_e32 v1, 4, v156
	s_mov_b32 s4, 0
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 350 22                        ; generate_amdgcn.py:350:22
	v_and_or_b32 v26, 0xe00, v2, v6
	s_branch .LBB0_3
.LBB0_2:
	.loc	1 0 22 is_stmt 0                ; generate_amdgcn.py:0:22
	s_mov_b32 s4, -1
                                        ; implicit-def: $vgpr6
                                        ; implicit-def: $vgpr1
                                        ; implicit-def: $vgpr26
.LBB0_3:                                ; %Flow608
	s_clause 0x1
	s_load_b128 s[16:19], s[0:1], 0x10
	s_load_b64 s[12:13], s[0:1], 0x20
	v_cmp_eq_u32_e64 s0, 0, v4
	s_and_not1_b32 vcc_lo, exec_lo, s4
	s_mov_b32 s4, 0
	s_cbranch_vccnz .LBB0_7
; %bb.4:                                ; %.lr.ph
	v_bfe_i32 v1, v156, 2, 1
	v_and_b32_e32 v3, 0x160, v3
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v94, off offset:192
	scratch_store_b32 off, v156, off offset:184
.Ltmp14:
	.loc	2 43 12 is_stmt 1               ; standard.py:43:12 @[ generate_amdgcn.py:307:28 ]
	s_lshr_b32 s37, s6, 5
	s_add_i32 s1, s7, 32
	v_mov_b32_e32 v94, 0
	v_and_or_b32 v0, 0xe00, v2, v3
	s_mov_b32 s5, s4
	s_mov_b32 s6, s4
	s_mov_b32 s7, s4
	s_mov_b32 s8, s4
	s_mov_b32 s9, s4
	s_mov_b32 s10, s4
	s_mov_b32 s11, s4
	s_delay_alu instid0(SALU_CYCLE_1)
	v_dual_mov_b32 v122, s11 :: v_dual_and_b32 v1, 0x90, v1
	scratch_store_b32 off, v0, off offset:200 ; 4-byte Folded Spill
	v_dual_mov_b32 v115, s4 :: v_dual_mov_b32 v2, 0
	v_or_b32_e32 v0, v0, v1
	v_or_b32_e32 v1, v1, v3
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v1, off offset:168
	scratch_store_b32 off, v0, off offset:160
	v_xor_b32_e32 v0, 16, v0
	v_mov_b32_e32 v1, 0
	v_dual_mov_b32 v5, 0 :: v_dual_mov_b32 v236, 0
	v_mov_b32_e32 v237, 0
	scratch_store_b32 off, v0, off offset:176 ; 4-byte Folded Spill
	v_mov_b32_e32 v0, 0
	v_dual_mov_b32 v234, 0 :: v_dual_mov_b32 v73, 0
	v_mov_b32_e32 v85, 0
	v_dual_mov_b32 v121, s10 :: v_dual_mov_b32 v120, s9
	scratch_store_b64 off, v[0:1], off offset:80 ; 8-byte Folded Spill
	v_dual_mov_b32 v0, 0 :: v_dual_mov_b32 v1, 0
	v_dual_mov_b32 v119, s8 :: v_dual_mov_b32 v118, s7
	v_dual_mov_b32 v117, s6 :: v_dual_mov_b32 v116, s5
	scratch_store_b64 off, v[0:1], off offset:40 ; 8-byte Folded Spill
	v_dual_mov_b32 v0, 0 :: v_dual_mov_b32 v1, 0
	v_dual_mov_b32 v95, 0 :: v_dual_mov_b32 v78, 0
	v_dual_mov_b32 v79, 0 :: v_dual_mov_b32 v4, 0
	scratch_store_b64 off, v[0:1], off offset:88 ; 8-byte Folded Spill
	v_dual_mov_b32 v0, 0 :: v_dual_mov_b32 v1, 0
	scratch_store_b32 off, v3, off offset:208 ; 4-byte Folded Spill
	v_dual_mov_b32 v3, 0 :: v_dual_mov_b32 v158, 0
	v_dual_mov_b32 v157, 0 :: v_dual_mov_b32 v232, 0
	scratch_store_b64 off, v[0:1], off      ; 8-byte Folded Spill
	v_dual_mov_b32 v0, 0 :: v_dual_mov_b32 v1, 0
	v_dual_mov_b32 v233, 0 :: v_dual_mov_b32 v6, 0
	v_dual_mov_b32 v7, 0 :: v_dual_mov_b32 v26, 0
	scratch_store_b64 off, v[0:1], off offset:48 ; 8-byte Folded Spill
	v_dual_mov_b32 v0, 0 :: v_dual_mov_b32 v1, 0
	v_dual_mov_b32 v235, 0 :: v_dual_mov_b32 v246, 0
	v_dual_mov_b32 v25, 0 :: v_dual_mov_b32 v28, 0
	scratch_store_b64 off, v[0:1], off offset:16 ; 8-byte Folded Spill
	v_dual_mov_b32 v0, 0 :: v_dual_mov_b32 v1, 0
	v_dual_mov_b32 v247, 0 :: v_dual_mov_b32 v242, 0
	v_dual_mov_b32 v27, 0 :: v_dual_mov_b32 v240, 0
	scratch_store_b64 off, v[0:1], off offset:8 ; 8-byte Folded Spill
	v_dual_mov_b32 v0, 0 :: v_dual_mov_b32 v1, 0
	v_dual_mov_b32 v162, 0 :: v_dual_mov_b32 v241, 0
	v_dual_mov_b32 v152, 0 :: v_dual_mov_b32 v239, 0
	v_dual_mov_b32 v250, 0 :: v_dual_mov_b32 v151, 0
	v_dual_mov_b32 v148, 0 :: v_dual_mov_b32 v249, 0
	v_dual_mov_b32 v54, 0 :: v_dual_mov_b32 v147, 0
	v_dual_mov_b32 v244, 0 :: v_dual_mov_b32 v55, 0
	v_dual_mov_b32 v150, 0 :: v_dual_mov_b32 v245, 0
	v_dual_mov_b32 v144, 0 :: v_dual_mov_b32 v149, 0
	v_dual_mov_b32 v146, 0 :: v_dual_mov_b32 v143, 0
	v_dual_mov_b32 v140, 0 :: v_dual_mov_b32 v145, 0
	v_dual_mov_b32 v136, 0 :: v_dual_mov_b32 v139, 0
	v_dual_mov_b32 v132, 0 :: v_dual_mov_b32 v135, 0
	v_dual_mov_b32 v142, 0 :: v_dual_mov_b32 v131, 0
	v_dual_mov_b32 v138, 0 :: v_dual_mov_b32 v141, 0
	v_dual_mov_b32 v134, 0 :: v_dual_mov_b32 v137, 0
	v_dual_mov_b32 v130, 0 :: v_dual_mov_b32 v133, 0
	v_dual_mov_b32 v128, 0 :: v_dual_mov_b32 v129, 0
	v_dual_mov_b32 v126, 0 :: v_dual_mov_b32 v127, 0
	v_dual_mov_b32 v154, 0 :: v_dual_mov_b32 v125, 0
	v_dual_mov_b32 v252, 0 :: v_dual_mov_b32 v153, 0
	v_dual_mov_b32 v160, 0 :: v_dual_mov_b32 v251, 0
	v_dual_mov_b32 v230, 0 :: v_dual_mov_b32 v159, 0
	v_dual_mov_b32 v56, 0 :: v_dual_mov_b32 v231, 0
	v_dual_mov_b32 v254, 0 :: v_dual_mov_b32 v57, 0
	v_dual_mov_b32 v80, 0 :: v_dual_mov_b32 v253, 0
	v_dual_mov_b32 v114, 0 :: v_dual_mov_b32 v81, 0
	v_dual_mov_b32 v110, 0 :: v_dual_mov_b32 v113, 0
	v_dual_mov_b32 v106, 0 :: v_dual_mov_b32 v109, 0
	v_dual_mov_b32 v82, 0 :: v_dual_mov_b32 v105, 0
	v_dual_mov_b32 v112, 0 :: v_dual_mov_b32 v83, 0
	v_dual_mov_b32 v108, 0 :: v_dual_mov_b32 v111, 0
	v_dual_mov_b32 v104, 0 :: v_dual_mov_b32 v107, 0
	v_dual_mov_b32 v102, 0 :: v_dual_mov_b32 v103, 0
	v_dual_mov_b32 v100, 0 :: v_dual_mov_b32 v101, 0
	v_dual_mov_b32 v90, 0 :: v_dual_mov_b32 v99, 0
	v_dual_mov_b32 v88, 0 :: v_dual_mov_b32 v91, 0
	v_dual_mov_b32 v98, 0 :: v_dual_mov_b32 v89, 0
	v_dual_mov_b32 v92, 0 :: v_dual_mov_b32 v97, 0
	v_dual_mov_b32 v86, 0 :: v_dual_mov_b32 v93, 0
	v_dual_mov_b32 v72, 0 :: v_dual_mov_b32 v87, 0
	v_mov_b32_e32 v84, 0
	scratch_store_b64 off, v[0:1], off offset:32 ; 8-byte Folded Spill
	v_dual_mov_b32 v0, 0 :: v_dual_mov_b32 v1, 0
	v_mov_b32_e32 v161, 0
	s_add_i32 s39, 0, 0x8000
	s_add_i32 s33, 0, 0x8800
	s_add_i32 s31, 0, 0x2000
	s_add_i32 s36, 0, 0x4000
	s_add_i32 s30, 0, 0x6000
	s_add_i32 s37, s37, -3
	s_mov_b32 s38, 1
	s_mov_b32 s26, s22
	s_mov_b32 s27, s23
	s_mov_b32 s5, 0
	scratch_store_b64 off, v[0:1], off offset:24 ; 8-byte Folded Spill
.Ltmp15:
.LBB0_5:                                ; =>This Inner Loop Header: Depth=1
	.loc	2 0 12 is_stmt 0                ; standard.py:0:12
	scratch_load_b32 v0, off, off offset:168 ; 4-byte Folded Reload
	s_mov_b32 s6, s4
	.loc	1 308 14 is_stmt 1              ; generate_amdgcn.py:308:14
	s_lshl_b32 s4, s5, 5
	s_clause 0x9                            ; 80-byte Folded Spill
	scratch_store_b64 off, v[94:95], off offset:144
	scratch_store_b64 off, v[56:57], off offset:72
	scratch_store_b64 off, v[54:55], off offset:136
	scratch_store_b64 off, v[80:81], off offset:128
	scratch_store_b64 off, v[253:254], off offset:120
	scratch_store_b64 off, v[251:252], off offset:112
	scratch_store_b64 off, v[4:5], off offset:104
	scratch_store_b64 off, v[161:162], off offset:96
	scratch_store_b64 off, v[153:154], off offset:56
	scratch_store_b64 off, v[159:160], off offset:64
	.loc	1 342 17                        ; generate_amdgcn.py:342:17
	s_add_i32 s4, s1, s4
	s_delay_alu instid0(SALU_CYCLE_1)
	v_dual_mov_b32 v76, v29 :: v_dual_add_nc_u32 v13, s4, v96
	v_dual_mov_b32 v8, v74 :: v_dual_mov_b32 v75, v3
	v_mov_b32_e32 v74, v2
	v_dual_mov_b32 v2, v78 :: v_dual_mov_b32 v3, v79
	v_dual_mov_b32 v78, v246 :: v_dual_mov_b32 v79, v247
	v_dual_mov_b32 v80, v113 :: v_dual_mov_b32 v81, v114
	v_dual_mov_b32 v114, v112 :: v_dual_mov_b32 v113, v111
	v_dual_mov_b32 v112, v110 :: v_dual_mov_b32 v111, v109
	v_dual_mov_b32 v110, v108 :: v_dual_mov_b32 v109, v107
	v_dual_mov_b32 v108, v106 :: v_dual_mov_b32 v107, v105
	v_dual_mov_b32 v106, v104 :: v_dual_mov_b32 v105, v103
	v_dual_mov_b32 v104, v102 :: v_dual_mov_b32 v103, v101
	v_dual_mov_b32 v102, v100 :: v_dual_mov_b32 v101, v99
	v_dual_mov_b32 v100, v98 :: v_dual_mov_b32 v99, v97
	v_dual_mov_b32 v98, v93 :: v_dual_mov_b32 v97, v92
	v_dual_mov_b32 v93, v91 :: v_dual_mov_b32 v92, v90
	v_dual_mov_b32 v91, v89 :: v_dual_mov_b32 v90, v88
	v_dual_mov_b32 v89, v87 :: v_dual_mov_b32 v88, v86
	v_dual_mov_b32 v87, v73 :: v_dual_mov_b32 v86, v72
	v_dual_mov_b32 v94, v234 :: v_dual_mov_b32 v159, v239
	v_dual_mov_b32 v160, v240 :: v_dual_mov_b32 v95, v235
	scratch_load_b32 v1, off, off offset:176 ; 4-byte Folded Reload
	v_dual_mov_b32 v154, v150 :: v_dual_mov_b32 v153, v149
	v_dual_mov_b32 v150, v148 :: v_dual_mov_b32 v149, v147
	v_dual_mov_b32 v148, v146 :: v_dual_mov_b32 v147, v145
	v_dual_mov_b32 v146, v144 :: v_dual_mov_b32 v145, v143
	v_dual_mov_b32 v144, v142 :: v_dual_mov_b32 v143, v141
	v_dual_mov_b32 v142, v140 :: v_dual_mov_b32 v141, v139
	v_dual_mov_b32 v140, v138 :: v_dual_mov_b32 v139, v137
	v_dual_mov_b32 v138, v136 :: v_dual_mov_b32 v137, v135
	v_dual_mov_b32 v136, v134 :: v_dual_mov_b32 v135, v133
	v_dual_mov_b32 v134, v132 :: v_dual_mov_b32 v133, v131
	v_dual_mov_b32 v132, v130 :: v_dual_mov_b32 v131, v129
	v_dual_mov_b32 v130, v128 :: v_dual_mov_b32 v129, v127
	v_dual_mov_b32 v128, v126 :: v_dual_mov_b32 v123, v232
	v_mov_b32_e32 v127, v125
	v_dual_mov_b32 v125, v230 :: v_dual_mov_b32 v126, v231
	v_dual_mov_b32 v124, v233 :: v_dual_mov_b32 v29, v155
	v_dual_mov_b32 v155, v249 :: v_dual_mov_b32 v156, v250
	v_dual_mov_b32 v4, v241 :: v_dual_mov_b32 v255, v158
	v_mov_b32_e32 v254, v157
	v_dual_mov_b32 v158, v152 :: v_dual_mov_b32 v5, v242
	v_mov_b32_e32 v157, v151
	v_dual_mov_b32 v151, v244 :: v_dual_mov_b32 v152, v245
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v9, s39, v0
	v_xor_b32_e32 v10, 16, v0
	scratch_load_b32 v0, off, off offset:160 ; 4-byte Folded Reload
	v_add_nc_u32_e32 v10, s39, v10
	s_mov_b32 s39, s33
	.loc	1 350 22                        ; generate_amdgcn.py:350:22
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v12, s6, v1
	.loc	1 356 31                        ; generate_amdgcn.py:356:31
	v_add_nc_u32_e32 v70, s36, v1
	.loc	1 350 22                        ; generate_amdgcn.py:350:22
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v11, s6, v0
	.loc	1 356 31                        ; generate_amdgcn.py:356:31
	v_add_nc_u32_e32 v62, s36, v0
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	buffer_load_b64 v[0:1], v13, s[20:23], 0 offen
	.loc	1 350 30                        ; generate_amdgcn.py:350:30
	s_add_i32 s6, s4, s34
	.loc	1 356 39                        ; generate_amdgcn.py:356:39
	s_add_i32 s4, s4, s35
	s_mov_b32 s36, s30
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	s_waitcnt vmcnt(0)
	scratch_store_b64 off, v[0:1], off offset:152 ; 8-byte Folded Spill
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[30:33], v9
	.loc	1 350 22                        ; generate_amdgcn.py:350:22
	ds_load_b128 v[34:37], v11
	ds_load_b128 v[38:41], v11 offset:4096
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	ds_load_b128 v[42:45], v9 offset:512
	ds_load_b128 v[46:49], v9 offset:1024
	ds_load_b128 v[161:164], v9 offset:1536
	.loc	1 350 22                        ; generate_amdgcn.py:350:22
	ds_load_b128 v[50:53], v12
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	ds_load_b128 v[230:233], v10
	ds_load_b128 v[246:249], v10 offset:512
	ds_load_b128 v[54:57], v10 offset:1024
	ds_load_b128 v[58:61], v10 offset:1536
	.loc	1 350 22                        ; generate_amdgcn.py:350:22
	ds_load_b128 v[214:217], v12 offset:4096
	v_dual_mov_b32 v0, v236 :: v_dual_mov_b32 v1, v237
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	s_waitcnt lgkmcnt(10)
	v_wmma_i32_16x16x16_iu8 v[9:16], v[34:37], v[30:33], v[115:122] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(8)
	v_wmma_i32_16x16x16_iu8 v[166:173], v[34:37], v[42:45], v[115:122] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(7)
	v_wmma_i32_16x16x16_iu8 v[182:189], v[34:37], v[46:49], v[115:122] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(6)
	v_wmma_i32_16x16x16_iu8 v[190:197], v[34:37], v[161:164], v[115:122] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(4)
	v_wmma_i32_16x16x16_iu8 v[9:16], v[50:53], v[230:233], v[9:16] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(3)
	v_wmma_i32_16x16x16_iu8 v[166:173], v[50:53], v[246:249], v[166:173] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(2)
	v_wmma_i32_16x16x16_iu8 v[182:189], v[50:53], v[54:57], v[182:189] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu8 v[190:197], v[50:53], v[58:61], v[190:197] neg_lo:[1,1,0]
	.loc	1 356 31                        ; generate_amdgcn.py:356:31
	ds_load_b128 v[50:53], v62
	ds_load_b128 v[62:65], v62 offset:4096
	ds_load_b128 v[66:69], v70
	ds_load_b128 v[70:73], v70 offset:4096
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_wmma_i32_16x16x16_iu8 v[17:24], v[38:41], v[30:33], v[115:122] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[174:181], v[38:41], v[42:45], v[115:122] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[198:205], v[38:41], v[46:49], v[115:122] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[206:213], v[38:41], v[161:164], v[115:122] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(4)
	v_wmma_i32_16x16x16_iu8 v[17:24], v[214:217], v[230:233], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[174:181], v[214:217], v[246:249], v[174:181] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[198:205], v[214:217], v[54:57], v[198:205] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[206:213], v[214:217], v[58:61], v[206:213] neg_lo:[1,1,0]
	v_cvt_f32_i32_e32 v9, v9
	v_cvt_f32_i32_e32 v10, v10
	v_cvt_f32_i32_e32 v14, v14
	v_cvt_f32_i32_e32 v11, v11
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	s_waitcnt lgkmcnt(3)
	v_wmma_i32_16x16x16_iu8 v[214:221], v[50:53], v[30:33], v[115:122] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(2)
	v_wmma_i32_16x16x16_iu8 v[222:229], v[62:65], v[30:33], v[115:122] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[238:245], v[62:65], v[42:45], v[115:122] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu8 v[214:221], v[66:69], v[230:233], v[214:221] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu8 v[222:229], v[70:73], v[230:233], v[222:229] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[230:237], v[50:53], v[42:45], v[115:122] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[238:245], v[70:73], v[246:249], v[238:245] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[30:37], v[62:65], v[46:49], v[115:122] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_3)
	v_wmma_i32_16x16x16_iu8 v[230:237], v[66:69], v[246:249], v[230:237] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[246:253], v[50:53], v[46:49], v[115:122] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[38:45], v[50:53], v[161:164], v[115:122] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[46:53], v[62:65], v[161:164], v[115:122] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[30:37], v[70:73], v[54:57], v[30:37] neg_lo:[1,1,0]
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v163, v172
	v_cvt_f32_i32_e32 v164, v173
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_wmma_i32_16x16x16_iu8 v[46:53], v[70:73], v[58:61], v[46:53] neg_lo:[1,1,0]
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v70, v166
	v_cvt_f32_i32_e32 v71, v167
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_cvt_f32_i32_e32 v166, v230
	v_cvt_f32_i32_e32 v167, v231
	v_dual_mov_b32 v231, v126 :: v_dual_mov_b32 v230, v125
	v_dual_mov_b32 v125, v127 :: v_dual_mov_b32 v126, v128
	v_dual_mov_b32 v127, v129 :: v_dual_mov_b32 v128, v130
	v_dual_mov_b32 v129, v131 :: v_dual_mov_b32 v130, v132
	v_dual_mov_b32 v131, v133 :: v_dual_mov_b32 v132, v134
	v_dual_mov_b32 v133, v135 :: v_dual_mov_b32 v134, v136
	v_dual_mov_b32 v135, v137 :: v_dual_mov_b32 v136, v138
	v_dual_mov_b32 v137, v139 :: v_dual_mov_b32 v138, v140
	v_dual_mov_b32 v139, v141 :: v_dual_mov_b32 v140, v142
	v_dual_mov_b32 v141, v143 :: v_dual_mov_b32 v142, v144
	v_dual_mov_b32 v143, v145 :: v_dual_mov_b32 v144, v146
	v_dual_mov_b32 v145, v147 :: v_dual_mov_b32 v146, v148
	v_mov_b32_e32 v147, v149
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v72, v168
	v_cvt_f32_i32_e32 v73, v169
	v_mov_b32_e32 v148, v150
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_cvt_f32_i32_e32 v168, v232
	v_cvt_f32_i32_e32 v169, v233
	v_dual_mov_b32 v233, v124 :: v_dual_mov_b32 v232, v123
	v_cvt_f32_i32_e32 v172, v236
	v_cvt_f32_i32_e32 v173, v237
	v_dual_mov_b32 v237, v1 :: v_dual_mov_b32 v236, v0
	scratch_load_b64 v[0:1], off, off offset:80 ; 8-byte Folded Reload
	v_wmma_i32_16x16x16_iu8 v[246:253], v[66:69], v[54:57], v[246:253] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[38:45], v[66:69], v[58:61], v[38:45] neg_lo:[1,1,0]
	v_cvt_f32_i32_e32 v60, v220
	v_cvt_f32_i32_e32 v61, v221
	v_cvt_f32_i32_e32 v220, v244
	v_cvt_f32_i32_e32 v221, v245
	v_dual_mov_b32 v245, v152 :: v_dual_mov_b32 v244, v151
	v_mov_b32_e32 v151, v157
	v_cvt_f32_i32_e32 v62, v222
	v_cvt_f32_i32_e32 v63, v223
	v_mov_b32_e32 v152, v158
	v_cvt_f32_i32_e32 v222, v246
	v_cvt_f32_i32_e32 v223, v247
	v_dual_mov_b32 v247, v79 :: v_dual_mov_b32 v246, v78
	v_dual_mov_b32 v79, v3 :: v_dual_mov_b32 v78, v2
	v_dual_mov_b32 v2, v74 :: v_dual_mov_b32 v3, v75
	v_mov_b32_e32 v74, v8
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_dual_add_f32 v152, v152, v71 :: v_dual_add_f32 v245, v245, v73
	v_add_f32_e32 v244, v244, v72
	v_dual_mov_b32 v72, v86 :: v_dual_mov_b32 v73, v87
	v_dual_mov_b32 v86, v88 :: v_dual_mov_b32 v87, v89
	v_dual_mov_b32 v88, v90 :: v_dual_mov_b32 v89, v91
	v_dual_mov_b32 v90, v92 :: v_dual_mov_b32 v91, v93
	v_dual_mov_b32 v92, v97 :: v_dual_mov_b32 v93, v98
	v_dual_mov_b32 v97, v99 :: v_dual_mov_b32 v98, v100
	v_dual_mov_b32 v99, v101 :: v_dual_mov_b32 v100, v102
	v_mov_b32_e32 v101, v103
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v12, v12
	v_cvt_f32_i32_e32 v161, v170
	v_cvt_f32_i32_e32 v162, v171
	v_dual_mov_b32 v102, v104 :: v_dual_mov_b32 v103, v105
	v_dual_mov_b32 v104, v106 :: v_dual_mov_b32 v105, v107
	v_dual_mov_b32 v106, v108 :: v_dual_mov_b32 v107, v109
	v_dual_mov_b32 v108, v110 :: v_dual_mov_b32 v109, v111
	v_dual_mov_b32 v110, v112 :: v_dual_mov_b32 v111, v113
	v_cvt_f32_i32_e32 v16, v16
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_cvt_f32_i32_e32 v65, v225
	v_cvt_f32_i32_e32 v66, v226
	v_cvt_f32_i32_e32 v225, v249
	v_cvt_f32_i32_e32 v226, v250
	v_mov_b32_e32 v112, v114
	v_dual_mov_b32 v114, v81 :: v_dual_add_f32 v147, v147, v161
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_dual_add_f32 v148, v148, v162 :: v_dual_add_f32 v143, v143, v163
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v15, v15
	v_cvt_f32_i32_e32 v17, v17
	v_cvt_f32_i32_e32 v18, v18
	v_cvt_f32_i32_e32 v20, v20
	v_mov_b32_e32 v149, v153
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_cvt_f32_i32_e32 v55, v215
	v_cvt_f32_i32_e32 v56, v216
	v_mov_b32_e32 v150, v154
	v_cvt_f32_i32_e32 v170, v234
	v_cvt_f32_i32_e32 v171, v235
	v_mov_b32_e32 v235, v95
	v_cvt_f32_i32_e32 v215, v239
	v_cvt_f32_i32_e32 v216, v240
	v_dual_mov_b32 v240, v160 :: v_dual_mov_b32 v157, v254
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v13, v13
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_cvt_f32_i32_e32 v57, v217
	v_cvt_f32_i32_e32 v58, v218
	v_dual_mov_b32 v234, v94 :: v_dual_mov_b32 v239, v159
	v_cvt_f32_i32_e32 v217, v241
	v_cvt_f32_i32_e32 v218, v242
	v_dual_mov_b32 v242, v5 :: v_dual_mov_b32 v241, v4
	v_mov_b32_e32 v158, v255
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v21, v21
	v_cvt_f32_i32_e32 v175, v175
	v_cvt_f32_i32_e32 v193, v193
	v_cvt_f32_i32_e32 v206, v206
	v_cvt_f32_i32_e32 v207, v207
	v_cvt_f32_i32_e32 v19, v19
	v_cvt_f32_i32_e32 v22, v22
	v_cvt_f32_i32_e32 v23, v23
	v_cvt_f32_i32_e32 v24, v24
	v_cvt_f32_i32_e32 v179, v179
	v_cvt_f32_i32_e32 v183, v183
	v_cvt_f32_i32_e32 v197, v197
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_cvt_f32_i32_e32 v43, v43
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v210, v210
	v_cvt_f32_i32_e32 v211, v211
	v_cvt_f32_i32_e32 v213, v213
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_cvt_f32_i32_e32 v48, v48
	v_cvt_f32_i32_e32 v49, v49
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_dual_add_f32 v234, v234, v21 :: v_dual_add_f32 v241, v241, v23
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_cvt_f32_i32_e32 v67, v227
	v_cvt_f32_i32_e32 v68, v228
	v_cvt_f32_i32_e32 v69, v229
	v_cvt_f32_i32_e32 v227, v251
	v_cvt_f32_i32_e32 v228, v252
	v_cvt_f32_i32_e32 v229, v253
	v_cvt_f32_i32_e32 v47, v47
	v_cvt_f32_i32_e32 v52, v52
	v_cvt_f32_i32_e32 v53, v53
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_dual_add_f32 v246, v246, v19 :: v_dual_add_f32 v235, v235, v22
	v_dual_add_f32 v242, v242, v24 :: v_dual_add_f32 v151, v151, v70
	v_mov_b32_e32 v113, v80
	s_clause 0x2                            ; 24-byte Folded Reload
	scratch_load_b64 v[80:81], off, off offset:128
	scratch_load_b64 v[253:254], off, off offset:120
	scratch_load_b64 v[251:252], off, off offset:112
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v195, v195
	v_cvt_f32_i32_e32 v208, v208
	v_cvt_f32_i32_e32 v209, v209
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_cvt_f32_i32_e32 v54, v214
	v_cvt_f32_i32_e32 v45, v45
	v_cvt_f32_i32_e32 v50, v50
	v_cvt_f32_i32_e32 v51, v51
	v_cvt_f32_i32_e32 v59, v219
	v_cvt_f32_i32_e32 v64, v224
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v174, v174
	v_cvt_f32_i32_e32 v176, v176
	v_cvt_f32_i32_e32 v177, v177
	v_cvt_f32_i32_e32 v178, v178
	v_cvt_f32_i32_e32 v180, v180
	v_cvt_f32_i32_e32 v181, v181
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_cvt_f32_i32_e32 v214, v238
	v_cvt_f32_i32_e32 v219, v243
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v182, v182
	v_cvt_f32_i32_e32 v184, v184
	v_cvt_f32_i32_e32 v185, v185
	v_cvt_f32_i32_e32 v186, v186
	v_cvt_f32_i32_e32 v187, v187
	v_cvt_f32_i32_e32 v188, v188
	v_cvt_f32_i32_e32 v189, v189
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_cvt_f32_i32_e32 v224, v248
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v198, v198
	v_cvt_f32_i32_e32 v199, v199
	v_cvt_f32_i32_e32 v200, v200
	v_cvt_f32_i32_e32 v201, v201
	v_cvt_f32_i32_e32 v202, v202
	v_cvt_f32_i32_e32 v203, v203
	v_cvt_f32_i32_e32 v204, v204
	v_cvt_f32_i32_e32 v205, v205
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_cvt_f32_i32_e32 v30, v30
	v_cvt_f32_i32_e32 v31, v31
	v_cvt_f32_i32_e32 v32, v32
	v_cvt_f32_i32_e32 v33, v33
	v_cvt_f32_i32_e32 v34, v34
	v_cvt_f32_i32_e32 v35, v35
	v_cvt_f32_i32_e32 v36, v36
	v_cvt_f32_i32_e32 v37, v37
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v190, v190
	v_cvt_f32_i32_e32 v191, v191
	v_cvt_f32_i32_e32 v192, v192
	v_cvt_f32_i32_e32 v194, v194
	v_cvt_f32_i32_e32 v196, v196
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_cvt_f32_i32_e32 v38, v38
	v_cvt_f32_i32_e32 v39, v39
	v_cvt_f32_i32_e32 v40, v40
	v_cvt_f32_i32_e32 v41, v41
	v_cvt_f32_i32_e32 v42, v42
	v_cvt_f32_i32_e32 v44, v44
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v212, v212
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_cvt_f32_i32_e32 v46, v46
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_dual_add_f32 v139, v139, v174 :: v_dual_add_f32 v138, v138, v177
	v_dual_add_f32 v137, v137, v176 :: v_dual_add_f32 v130, v130, v181
	v_dual_add_f32 v131, v131, v178 :: v_dual_add_f32 v230, v230, v184
	v_add_f32_e32 v129, v129, v180
	v_add_f32_e32 v125, v125, v182
	v_dual_add_f32 v231, v231, v185 :: v_dual_add_f32 v114, v114, v199
	v_dual_add_f32 v113, v113, v198 :: v_dual_add_f32 v106, v106, v203
	v_dual_add_f32 v111, v111, v200 :: v_dual_add_f32 v100, v100, v191
	v_dual_add_f32 v105, v105, v202 :: v_dual_add_f32 v92, v92, v192
	v_dual_add_f32 v103, v103, v204 :: v_dual_add_f32 v88, v88, v194
	v_dual_add_f32 v99, v99, v190 :: v_dual_add_f32 v72, v72, v196
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_dual_add_f32 v79, v79, v59 :: v_dual_add_f32 v26, v26, v65
	v_dual_add_f32 v157, v157, v60 :: v_dual_add_f32 v6, v6, v66
	v_dual_add_f32 v233, v233, v63 :: v_dual_add_f32 v28, v28, v69
	v_dual_add_f32 v25, v25, v64 :: v_dual_add_f32 v240, v240, v167
	v_dual_add_f32 v239, v239, v166 :: v_dual_add_f32 v150, v150, v173
	v_dual_add_f32 v149, v149, v172 :: v_dual_add_f32 v136, v136, v219
	v_dual_add_f32 v145, v145, v214 :: v_dual_add_f32 v134, v134, v221
	v_dual_add_f32 v141, v141, v216 :: v_dual_add_f32 v128, v128, v223
	v_dual_add_f32 v83, v83, v33 :: v_dual_add_f32 v102, v102, v39
	v_dual_add_f32 v109, v109, v34 :: v_dual_add_f32 v98, v98, v41
	v_dual_add_f32 v107, v107, v36 :: v_dual_add_f32 v90, v90, v42
	v_dual_add_f32 v101, v101, v38 :: v_dual_add_f32 v86, v86, v44
	v_dual_add_f32 v97, v97, v40 :: v_dual_add_f32 v84, v84, v46
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_add_f32_e32 v3, v3, v14
	scratch_load_b64 v[161:162], off, off offset:96 ; 8-byte Folded Reload
	v_add_f32_e32 v126, v126, v183
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_add_f32_e32 v142, v142, v217
	v_add_f32_e32 v108, v108, v37
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_dual_add_f32 v112, v112, v201 :: v_dual_add_f32 v237, v237, v16
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_dual_add_f32 v78, v78, v58 :: v_dual_add_f32 v247, v247, v20
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_add_f32_e32 v132, v132, v179
	v_add_f32_e32 v104, v104, v205
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_add_f32_e32 v232, v232, v62
	v_add_f32_e32 v82, v82, v32
	v_add_f32_e32 v146, v146, v215
	s_waitcnt vmcnt(4)
	v_dual_add_f32 v110, v110, v35 :: v_dual_add_f32 v1, v1, v10
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_add_f32_e32 v0, v0, v9
	v_dual_add_f32 v144, v144, v164 :: v_dual_add_nc_u32 v9, s6, v74
	scratch_store_b64 off, v[0:1], off offset:80 ; 8-byte Folded Spill
	scratch_load_b64 v[0:1], off, off offset:40 ; 8-byte Folded Reload
	v_dual_mov_b32 v250, v156 :: v_dual_mov_b32 v249, v155
	v_mov_b32_e32 v155, v29
	v_dual_mov_b32 v29, v76 :: v_dual_add_f32 v2, v2, v13
	v_add_f32_e32 v140, v140, v175
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_dual_add_f32 v158, v158, v61 :: v_dual_add_f32 v249, v249, v170
	.loc	1 350 30                        ; generate_amdgcn.py:350:30
	v_add_nc_u32_e32 v13, s6, v29
	.loc	1 356 39                        ; generate_amdgcn.py:356:39
	v_add_nc_u32_e32 v21, s4, v29
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_add_i32 s6, s38, 1
	s_delay_alu instid0(SALU_CYCLE_1)
	s_cmp_lt_i32 s6, 2
	.loc	1 356 31                        ; generate_amdgcn.py:356:31
	buffer_load_b128 v[21:24], v21, s[24:27], 0 offen
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_cselect_b32 s38, s6, 0
	s_add_i32 s6, s5, 1
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	s_lshl_b32 s7, s38, 11
	.loc	1 350 22                        ; generate_amdgcn.py:350:22
	s_lshl_b32 s8, s38, 13
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	s_add_i32 s7, s7, 0
	s_delay_alu instid0(SALU_CYCLE_1)
	v_add_nc_u32_e32 v70, s7, v165
	s_add_i32 s33, s7, 0x8000
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	s_waitcnt vmcnt(4)
	v_dual_add_f32 v81, v81, v31 :: v_dual_add_f32 v254, v254, v189
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	s_waitcnt vmcnt(3)
	v_dual_add_f32 v252, v252, v187 :: v_dual_add_f32 v251, v251, v186
	v_dual_add_f32 v253, v253, v188 :: v_dual_add_f32 v80, v80, v30
	s_waitcnt vmcnt(2)
	v_dual_add_f32 v162, v162, v213 :: v_dual_add_f32 v161, v161, v212
	s_waitcnt vmcnt(1)
	v_dual_add_f32 v1, v1, v12 :: v_dual_add_f32 v0, v0, v11
	.loc	1 350 22                        ; generate_amdgcn.py:350:22
	buffer_load_b128 v[9:12], v9, s[24:27], 0 offen
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_dual_add_f32 v27, v27, v68 :: v_dual_add_f32 v250, v250, v171
	scratch_store_b64 off, v[0:1], off offset:40 ; 8-byte Folded Spill
	scratch_load_b64 v[0:1], off, off offset:88 ; 8-byte Folded Reload
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_add_f32_e32 v236, v236, v15
	.loc	1 350 22                        ; generate_amdgcn.py:350:22
	buffer_load_b128 v[13:16], v13, s[24:27], 0 offen
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	s_waitcnt vmcnt(1)
	v_dual_add_f32 v1, v1, v18 :: v_dual_add_f32 v0, v0, v17
	.loc	1 356 39                        ; generate_amdgcn.py:356:39
	v_add_nc_u32_e32 v17, s4, v74
	s_mov_b32 s4, s31
	.loc	1 350 22                        ; generate_amdgcn.py:350:22
	s_add_i32 s31, s8, 0
	scratch_store_b64 off, v[0:1], off offset:88 ; 8-byte Folded Spill
	s_clause 0x5                            ; 48-byte Folded Reload
	scratch_load_b64 v[94:95], off, off offset:16
	scratch_load_b64 v[123:124], off, off offset:24
	scratch_load_b64 v[76:77], off, off offset:48
	scratch_load_b64 v[153:154], off, off offset:32
	scratch_load_b64 v[0:1], off, off offset:8
	scratch_load_b64 v[4:5], off, off
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_add_f32_e32 v93, v93, v193
	.loc	1 356 31                        ; generate_amdgcn.py:356:31
	buffer_load_b128 v[17:20], v17, s[24:27], 0 offen
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_add_f32_e32 v73, v73, v197
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_add_f32_e32 v91, v91, v43
	v_add_f32_e32 v85, v85, v47
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_add_f32_e32 v89, v89, v195
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_add_f32_e32 v87, v87, v45
	.loc	1 350 22                        ; generate_amdgcn.py:350:22
	v_add_nc_u32_e32 v71, s31, v155
	.loc	1 356 31                        ; generate_amdgcn.py:356:31
	s_add_i32 s30, s31, 0x4000
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_cmp_lg_u32 s5, s37
	s_mov_b32 s5, s6
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	s_waitcnt vmcnt(6)
	v_add_f32_e32 v94, v94, v210
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	s_waitcnt vmcnt(5)
	v_dual_add_f32 v124, v124, v53 :: v_dual_add_f32 v123, v123, v52
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	s_waitcnt vmcnt(3)
	v_add_f32_e32 v154, v154, v209
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	s_waitcnt vmcnt(2)
	v_add_f32_e32 v1, v1, v49
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	s_waitcnt vmcnt(1)
	v_dual_add_f32 v5, v5, v207 :: v_dual_add_f32 v4, v4, v206
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_dual_add_f32 v0, v0, v48 :: v_dual_add_f32 v77, v77, v51
	v_add_f32_e32 v76, v76, v50
	s_clause 0x2                            ; 24-byte Folded Spill
	scratch_store_b64 off, v[123:124], off offset:24
	scratch_store_b64 off, v[4:5], off
	scratch_store_b64 off, v[0:1], off offset:8
	scratch_load_b64 v[4:5], off, off offset:104 ; 8-byte Folded Reload
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_add_f32_e32 v95, v95, v211
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	scratch_load_b64 v[0:1], off, off offset:152 ; 8-byte Folded Reload
	scratch_store_b64 off, v[76:77], off offset:48 ; 8-byte Folded Spill
	s_waitcnt vmcnt(0)
	ds_store_b64 v70, v[0:1] offset:32768
	.loc	1 350 22                        ; generate_amdgcn.py:350:22
	ds_store_b128 v71, v[9:12]
	ds_store_b128 v71, v[13:16] offset:4096
	.loc	1 356 31                        ; generate_amdgcn.py:356:31
	ds_store_b128 v71, v[17:20] offset:16384
	ds_store_b128 v71, v[21:24] offset:20480
	scratch_store_b64 off, v[94:95], off offset:16 ; 8-byte Folded Spill
	scratch_load_b64 v[94:95], off, off offset:144 ; 8-byte Folded Reload
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_add_f32_e32 v153, v153, v208
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_dual_add_f32 v5, v5, v57 :: v_dual_add_f32 v4, v4, v56
	scratch_load_b64 v[56:57], off, off offset:72 ; 8-byte Folded Reload
	v_add_f32_e32 v127, v127, v222
	s_waitcnt vmcnt(1)
	v_dual_add_f32 v95, v95, v55 :: v_dual_add_f32 v94, v94, v54
	scratch_store_b64 off, v[153:154], off offset:32 ; 8-byte Folded Spill
	s_clause 0x2                            ; 24-byte Folded Reload
	scratch_load_b64 v[54:55], off, off offset:136
	scratch_load_b64 v[153:154], off, off offset:56
	scratch_load_b64 v[159:160], off, off offset:64
	v_add_f32_e32 v7, v7, v67
	v_add_f32_e32 v135, v135, v218
	v_add_f32_e32 v133, v133, v220
	s_waitcnt vmcnt(3)
	v_dual_add_f32 v57, v57, v229 :: v_dual_add_f32 v56, v56, v228
	s_waitcnt vmcnt(2)
	v_dual_add_f32 v55, v55, v169 :: v_dual_add_f32 v54, v54, v168
	s_waitcnt vmcnt(0)
	v_dual_add_f32 v160, v160, v225 :: v_dual_add_f32 v159, v159, v224
	v_dual_add_f32 v154, v154, v227 :: v_dual_add_f32 v153, v153, v226
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_cbranch_scc1 .LBB0_5
; %bb.6:                                ; %Flow
	.loc	1 0 5 is_stmt 0                 ; generate_amdgcn.py:0:5
	v_mov_b32_e32 v75, v26
	v_dual_mov_b32 v119, v95 :: v_dual_mov_b32 v118, v94
	v_dual_mov_b32 v165, v55 :: v_dual_mov_b32 v74, v25
	v_dual_mov_b32 v124, v7 :: v_dual_mov_b32 v123, v6
	s_clause 0x6                            ; 40-byte Folded Reload
	scratch_load_b64 v[214:215], off, off offset:40
	scratch_load_b64 v[95:96], off, off offset:80
	scratch_load_b32 v26, off, off offset:200
	scratch_load_b32 v6, off, off offset:208
	scratch_load_b32 v156, off, off offset:184
	scratch_load_b32 v94, off, off offset:192
	scratch_load_b64 v[120:121], off, off offset:88
	v_dual_mov_b32 v71, v57 :: v_dual_mov_b32 v164, v54
	s_mov_b32 s5, s4
	s_waitcnt vmcnt(2)
	v_dual_mov_b32 v70, v56 :: v_dual_and_b32 v1, 4, v156
	s_branch .LBB0_8
.LBB0_7:
	v_mov_b32_e32 v161, 0
	s_add_i32 s39, 0, 0x8000
	s_add_i32 s33, 0, 0x8800
	s_add_i32 s31, 0, 0x2000
	s_add_i32 s36, 0, 0x4000
	v_mov_b32_e32 v162, v161
	v_mov_b32_e32 v95, v161
	v_mov_b32_e32 v78, v161
	v_mov_b32_e32 v2, v161
	s_delay_alu instid0(VALU_DEP_4)
	v_dual_mov_b32 v4, v161 :: v_dual_mov_b32 v5, v162
	v_mov_b32_e32 v96, v162
	v_mov_b32_e32 v79, v162
	v_mov_b32_e32 v3, v162
	v_dual_mov_b32 v215, v162 :: v_dual_mov_b32 v214, v161
	v_dual_mov_b32 v157, v161 :: v_dual_mov_b32 v158, v162
	v_dual_mov_b32 v237, v162 :: v_dual_mov_b32 v236, v161
	v_dual_mov_b32 v233, v162 :: v_dual_mov_b32 v232, v161
	v_dual_mov_b32 v120, v161 :: v_dual_mov_b32 v121, v162
	v_dual_mov_b32 v123, v161 :: v_dual_mov_b32 v124, v162
	v_dual_mov_b32 v235, v162 :: v_dual_mov_b32 v234, v161
	v_dual_mov_b32 v74, v161 :: v_dual_mov_b32 v75, v162
	v_dual_mov_b32 v247, v162 :: v_dual_mov_b32 v246, v161
	v_dual_mov_b32 v27, v161 :: v_dual_mov_b32 v28, v162
	v_dual_mov_b32 v242, v162 :: v_dual_mov_b32 v241, v161
	v_dual_mov_b32 v240, v162 :: v_dual_mov_b32 v239, v161
	v_dual_mov_b32 v151, v161 :: v_dual_mov_b32 v152, v162
	v_dual_mov_b32 v250, v162 :: v_dual_mov_b32 v249, v161
	v_dual_mov_b32 v147, v161 :: v_dual_mov_b32 v148, v162
	v_dual_mov_b32 v165, v162 :: v_dual_mov_b32 v164, v161
	v_dual_mov_b32 v245, v162 :: v_dual_mov_b32 v244, v161
	v_dual_mov_b32 v149, v161 :: v_dual_mov_b32 v150, v162
	v_dual_mov_b32 v143, v161 :: v_dual_mov_b32 v144, v162
	v_dual_mov_b32 v145, v161 :: v_dual_mov_b32 v146, v162
	v_dual_mov_b32 v139, v161 :: v_dual_mov_b32 v140, v162
	v_dual_mov_b32 v135, v161 :: v_dual_mov_b32 v136, v162
	v_dual_mov_b32 v131, v161 :: v_dual_mov_b32 v132, v162
	v_dual_mov_b32 v141, v161 :: v_dual_mov_b32 v142, v162
	v_dual_mov_b32 v137, v161 :: v_dual_mov_b32 v138, v162
	v_dual_mov_b32 v133, v161 :: v_dual_mov_b32 v134, v162
	v_dual_mov_b32 v129, v161 :: v_dual_mov_b32 v130, v162
	v_dual_mov_b32 v127, v161 :: v_dual_mov_b32 v128, v162
	v_dual_mov_b32 v125, v161 :: v_dual_mov_b32 v126, v162
	v_dual_mov_b32 v153, v161 :: v_dual_mov_b32 v154, v162
	v_dual_mov_b32 v252, v162 :: v_dual_mov_b32 v251, v161
	v_dual_mov_b32 v159, v161 :: v_dual_mov_b32 v160, v162
	v_dual_mov_b32 v231, v162 :: v_dual_mov_b32 v230, v161
	v_dual_mov_b32 v70, v161 :: v_dual_mov_b32 v71, v162
	v_dual_mov_b32 v254, v162 :: v_dual_mov_b32 v253, v161
	v_dual_mov_b32 v80, v161 :: v_dual_mov_b32 v81, v162
	v_dual_mov_b32 v113, v161 :: v_dual_mov_b32 v114, v162
	v_dual_mov_b32 v109, v161 :: v_dual_mov_b32 v110, v162
	v_dual_mov_b32 v105, v161 :: v_dual_mov_b32 v106, v162
	v_dual_mov_b32 v82, v161 :: v_dual_mov_b32 v83, v162
	v_dual_mov_b32 v111, v161 :: v_dual_mov_b32 v112, v162
	v_dual_mov_b32 v107, v161 :: v_dual_mov_b32 v108, v162
	v_dual_mov_b32 v103, v161 :: v_dual_mov_b32 v104, v162
	v_dual_mov_b32 v101, v161 :: v_dual_mov_b32 v102, v162
	v_dual_mov_b32 v99, v161 :: v_dual_mov_b32 v100, v162
	v_dual_mov_b32 v90, v161 :: v_dual_mov_b32 v91, v162
	v_dual_mov_b32 v88, v161 :: v_dual_mov_b32 v89, v162
	v_dual_mov_b32 v97, v161 :: v_dual_mov_b32 v98, v162
	v_dual_mov_b32 v92, v161 :: v_dual_mov_b32 v93, v162
	v_dual_mov_b32 v86, v161 :: v_dual_mov_b32 v87, v162
	v_dual_mov_b32 v72, v161 :: v_dual_mov_b32 v73, v162
	v_dual_mov_b32 v84, v161 :: v_dual_mov_b32 v85, v162
	v_dual_mov_b32 v118, v161 :: v_dual_mov_b32 v119, v162
	s_add_i32 s30, 0, 0x6000
	s_clause 0x5                            ; 48-byte Folded Spill
	scratch_store_b64 off, v[161:162], off
	scratch_store_b64 off, v[161:162], off offset:48
	scratch_store_b64 off, v[161:162], off offset:16
	scratch_store_b64 off, v[161:162], off offset:8
	scratch_store_b64 off, v[161:162], off offset:32
	scratch_store_b64 off, v[161:162], off offset:24
.LBB0_8:                                ; %Flow609
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 348 22 is_stmt 1              ; generate_amdgcn.py:348:22
	v_cmp_eq_u32_e32 vcc_lo, 0, v1
	scratch_store_b64 off, v[2:3], off offset:80 ; 8-byte Folded Spill
	v_dual_mov_b32 v116, v5 :: v_dual_mov_b32 v115, v4
	s_waitcnt lgkmcnt(0)
	v_cndmask_b32_e64 v0, 0x90, 0, vcc_lo
	s_barrier
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cndmask_b32_e64 v25, 0, 1, s3
	s_and_not1_b32 vcc_lo, exec_lo, s3
	s_mov_b32 s4, 0
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	v_or_b32_e32 v33, v0, v6
	.loc	1 350 22                        ; generate_amdgcn.py:350:22
	v_or_b32_e32 v117, v26, v0
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cmp_ne_u32_e64 s1, 1, v25
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	v_xor_b32_e32 v163, 16, v33
	v_add_nc_u32_e32 v1, s39, v33
	.loc	1 350 22                        ; generate_amdgcn.py:350:22
	v_xor_b32_e32 v76, 16, v117
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	v_add_nc_u32_e32 v2, s39, v163
	ds_load_b128 v[29:32], v1
	ds_load_b128 v[34:37], v1 offset:512
	ds_load_b128 v[17:20], v1 offset:1024
	ds_load_b128 v[5:8], v1 offset:1536
	ds_load_b128 v[21:24], v2
	ds_load_b128 v[13:16], v2 offset:512
	ds_load_b128 v[9:12], v2 offset:1024
	.loc	1 350 22                        ; generate_amdgcn.py:350:22
	ds_load_b128 v[1:4], v2 offset:1536
	s_cbranch_vccnz .LBB0_10
; %bb.9:
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	s_mov_b32 s6, s4
	s_mov_b32 s7, s4
	s_mov_b32 s8, s4
	s_mov_b32 s9, s4
	s_mov_b32 s10, s4
	s_mov_b32 s11, s4
	.loc	1 350 22                        ; generate_amdgcn.py:350:22
	v_add_nc_u32_e32 v0, s5, v117
	ds_load_b128 v[54:57], v0
	ds_load_b128 v[58:61], v0 offset:4096
	v_add_nc_u32_e32 v0, s5, v76
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	s_mov_b32 s5, s4
	v_mov_b32_e32 v45, s11
	v_mov_b32_e32 v43, s9
	.loc	1 350 22                        ; generate_amdgcn.py:350:22
	ds_load_b128 v[62:65], v0
	ds_load_b128 v[66:69], v0 offset:4096
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_dual_mov_b32 v44, s10 :: v_dual_mov_b32 v41, s7
	v_dual_mov_b32 v42, s8 :: v_dual_mov_b32 v39, s5
	v_mov_b32_e32 v40, s6
	v_mov_b32_e32 v38, s4
	s_waitcnt lgkmcnt(3)
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu8 v[46:53], v[54:57], v[29:32], v[38:45] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu8 v[46:53], v[62:65], v[21:24], v[46:53] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cvt_f32_i32_e32 v0, v49
	v_cvt_f32_i32_e32 v25, v48
	s_delay_alu instid0(VALU_DEP_3)
	v_cvt_f32_i32_e32 v48, v50
	scratch_load_b64 v[49:50], off, off offset:80 ; 8-byte Folded Reload
	v_cvt_f32_i32_e32 v26, v51
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_add_f32_e32 v215, v215, v0
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_wmma_i32_16x16x16_iu8 v[166:173], v[58:61], v[29:32], v[38:45] neg_lo:[1,1,0]
	v_cvt_f32_i32_e32 v0, v53
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_add_f32_e32 v214, v214, v25
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v25, v52
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu8 v[166:173], v[66:69], v[21:24], v[166:173] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[174:181], v[54:57], v[34:37], v[38:45] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_dual_add_f32 v237, v237, v0 :: v_dual_add_f32 v236, v236, v25
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v0, v169
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cvt_f32_i32_e32 v25, v168
	v_wmma_i32_16x16x16_iu8 v[174:181], v[62:65], v[13:16], v[174:181] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[182:189], v[58:61], v[34:37], v[38:45] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_dual_add_f32 v247, v247, v0 :: v_dual_add_f32 v246, v246, v25
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v0, v171
	v_cvt_f32_i32_e32 v25, v172
	v_wmma_i32_16x16x16_iu8 v[182:189], v[66:69], v[13:16], v[182:189] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[190:197], v[54:57], v[17:20], v[38:45] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_add_f32_e32 v235, v235, v0
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v0, v175
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_add_f32_e32 v241, v241, v25
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v25, v174
	v_wmma_i32_16x16x16_iu8 v[190:197], v[62:65], v[9:12], v[190:197] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[198:205], v[58:61], v[17:20], v[38:45] neg_lo:[1,1,0]
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_add_f32_e32 v152, v152, v0
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v0, v179
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_add_f32_e32 v151, v151, v25
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v25, v178
	v_wmma_i32_16x16x16_iu8 v[198:205], v[66:69], v[9:12], v[198:205] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[206:213], v[54:57], v[5:8], v[38:45] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_dual_add_f32 v148, v148, v0 :: v_dual_add_f32 v147, v147, v25
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v0, v181
	v_cvt_f32_i32_e32 v25, v182
	v_wmma_i32_16x16x16_iu8 v[206:213], v[62:65], v[1:4], v[206:213] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[38:45], v[58:61], v[5:8], v[38:45] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_dual_add_f32 v144, v144, v0 :: v_dual_add_f32 v139, v139, v25
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v0, v185
	v_cvt_f32_i32_e32 v25, v184
	v_wmma_i32_16x16x16_iu8 v[38:45], v[66:69], v[1:4], v[38:45] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_dual_add_f32 v138, v138, v0 :: v_dual_add_f32 v137, v137, v25
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v0, v189
	v_cvt_f32_i32_e32 v25, v188
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_dual_add_f32 v130, v130, v0 :: v_dual_add_f32 v129, v129, v25
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v0, v191
	v_cvt_f32_i32_e32 v25, v192
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_add_f32_e32 v230, v230, v25
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v25, v194
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_add_f32_e32 v126, v126, v0
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v0, v195
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_add_f32_e32 v251, v251, v25
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v25, v198
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_add_f32_e32 v252, v252, v0
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v0, v199
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_add_f32_e32 v113, v113, v25
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v25, v202
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_add_f32_e32 v114, v114, v0
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v0, v201
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_add_f32_e32 v105, v105, v25
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v25, v204
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_add_f32_e32 v112, v112, v0
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v0, v205
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_add_f32_e32 v103, v103, v25
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v25, v208
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_add_f32_e32 v104, v104, v0
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v0, v209
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_add_f32_e32 v92, v92, v25
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v25, v212
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_add_f32_e32 v93, v93, v0
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v0, v211
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_add_f32_e32 v72, v72, v25
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v25, v38
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_add_f32_e32 v89, v89, v0
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v0, v39
	v_cvt_f32_i32_e32 v38, v40
	scratch_load_b64 v[39:40], off, off     ; 8-byte Folded Reload
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	s_waitcnt vmcnt(1)
	v_add_f32_e32 v49, v49, v48
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v48, v166
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_add_f32_e32 v120, v120, v48
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v48, v173
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_add_f32_e32 v242, v242, v48
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v48, v176
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_add_f32_e32 v244, v244, v48
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v48, v183
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_add_f32_e32 v140, v140, v48
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v48, v186
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_add_f32_e32 v50, v50, v26
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v26, v167
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_add_f32_e32 v131, v131, v48
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v48, v193
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_add_f32_e32 v121, v121, v26
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v26, v170
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_add_f32_e32 v231, v231, v48
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v48, v196
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_add_f32_e32 v234, v234, v26
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v26, v177
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_add_f32_e32 v253, v253, v48
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v48, v203
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_add_f32_e32 v245, v245, v26
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v26, v180
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_add_f32_e32 v106, v106, v48
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v48, v206
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_add_f32_e32 v143, v143, v26
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v26, v187
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_add_f32_e32 v99, v99, v48
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v48, v213
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_add_f32_e32 v132, v132, v26
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v26, v190
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_add_f32_e32 v73, v73, v48
	v_add_f32_e32 v125, v125, v26
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v26, v197
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_add_f32_e32 v254, v254, v26
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v26, v200
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_add_f32_e32 v111, v111, v26
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v26, v207
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_add_f32_e32 v100, v100, v26
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v26, v210
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_add_f32_e32 v88, v88, v26
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v26, v41
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	s_waitcnt vmcnt(0)
	v_dual_add_f32 v40, v40, v0 :: v_dual_add_f32 v39, v39, v25
	scratch_store_b64 off, v[49:50], off offset:80 ; 8-byte Folded Spill
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v0, v43
	v_cvt_f32_i32_e32 v25, v42
	scratch_store_b64 off, v[39:40], off    ; 8-byte Folded Spill
	scratch_load_b64 v[39:40], off, off offset:32 ; 8-byte Folded Reload
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v40, v40, v26
	v_add_f32_e32 v39, v39, v38
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v26, v44
	v_cvt_f32_i32_e32 v38, v47
	scratch_store_b64 off, v[39:40], off offset:32 ; 8-byte Folded Spill
	scratch_load_b64 v[40:41], off, off offset:16 ; 8-byte Folded Reload
	v_cvt_f32_i32_e32 v39, v46
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_add_f32_e32 v161, v161, v26
	s_delay_alu instid0(VALU_DEP_2)
	v_dual_add_f32 v96, v96, v38 :: v_dual_add_f32 v95, v95, v39
	s_waitcnt vmcnt(0)
	v_dual_add_f32 v40, v40, v25 :: v_dual_add_f32 v41, v41, v0
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v0, v45
	scratch_store_b64 off, v[40:41], off offset:16 ; 8-byte Folded Spill
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_add_f32_e32 v162, v162, v0
.LBB0_10:
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	s_and_b32 vcc_lo, exec_lo, s1
	s_clause 0x1                            ; 16-byte Folded Spill
	scratch_store_b64 off, v[230:231], off offset:88
	scratch_store_b64 off, v[214:215], off offset:40
	s_cbranch_vccnz .LBB0_12
; %bb.11:
	s_mov_b32 s5, s4
	s_mov_b32 s6, s4
	s_mov_b32 s7, s4
	s_mov_b32 s8, s4
	s_mov_b32 s9, s4
	s_mov_b32 s10, s4
	s_mov_b32 s11, s4
	s_delay_alu instid0(SALU_CYCLE_1)
	v_dual_mov_b32 v45, s11 :: v_dual_add_nc_u32 v0, s36, v117
	.loc	1 356 31                        ; generate_amdgcn.py:356:31
	ds_load_b128 v[54:57], v0
	ds_load_b128 v[58:61], v0 offset:4096
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_dual_mov_b32 v43, s9 :: v_dual_add_nc_u32 v0, s36, v76
	.loc	1 356 31                        ; generate_amdgcn.py:356:31
	ds_load_b128 v[62:65], v0 offset:4096
	ds_load_b128 v[66:69], v0
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_dual_mov_b32 v44, s10 :: v_dual_mov_b32 v41, s7
	v_dual_mov_b32 v42, s8 :: v_dual_mov_b32 v39, s5
	v_mov_b32_e32 v40, s6
	v_mov_b32_e32 v38, s4
	s_waitcnt lgkmcnt(3)
	s_delay_alu instid0(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu8 v[46:53], v[54:57], v[29:32], v[38:45] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(2)
	v_wmma_i32_16x16x16_iu8 v[166:173], v[58:61], v[29:32], v[38:45] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[174:181], v[54:57], v[34:37], v[38:45] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[182:189], v[58:61], v[34:37], v[38:45] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu8 v[46:53], v[66:69], v[21:24], v[46:53] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[190:197], v[54:57], v[17:20], v[38:45] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[198:205], v[58:61], v[17:20], v[38:45] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[166:173], v[62:65], v[21:24], v[166:173] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[17:24], v[54:57], v[5:8], v[38:45] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[38:45], v[58:61], v[5:8], v[38:45] neg_lo:[1,1,0]
	v_cvt_f32_i32_e32 v5, v48
	v_cvt_f32_i32_e32 v0, v49
	s_delay_alu instid0(VALU_DEP_4)
	v_wmma_i32_16x16x16_iu8 v[17:24], v[66:69], v[1:4], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[174:181], v[66:69], v[13:16], v[174:181] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[38:45], v[62:65], v[1:4], v[38:45] neg_lo:[1,1,0]
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_add_f32_e32 v115, v115, v5
	scratch_load_b64 v[4:5], off, off offset:8 ; 8-byte Folded Reload
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_cvt_f32_i32_e32 v1, v50
	v_cvt_f32_i32_e32 v2, v167
	v_cvt_f32_i32_e32 v3, v166
	v_wmma_i32_16x16x16_iu8 v[182:189], v[62:65], v[13:16], v[182:189] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[190:197], v[66:69], v[9:12], v[190:197] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_dual_add_f32 v78, v78, v1 :: v_dual_add_f32 v233, v233, v2
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_cvt_f32_i32_e32 v1, v52
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_add_f32_e32 v116, v116, v0
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_cvt_f32_i32_e32 v0, v53
	v_cvt_f32_i32_e32 v2, v170
	v_wmma_i32_16x16x16_iu8 v[198:205], v[62:65], v[9:12], v[198:205] neg_lo:[1,1,0]
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_add_f32_e32 v157, v157, v1
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_cvt_f32_i32_e32 v1, v168
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_dual_add_f32 v158, v158, v0 :: v_dual_add_f32 v123, v123, v2
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_cvt_f32_i32_e32 v0, v169
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_add_f32_e32 v232, v232, v3
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_cvt_f32_i32_e32 v2, v177
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_add_f32_e32 v74, v74, v1
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_cvt_f32_i32_e32 v1, v172
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_add_f32_e32 v75, v75, v0
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_cvt_f32_i32_e32 v0, v171
	v_cvt_f32_i32_e32 v3, v173
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_add_f32_e32 v165, v165, v2
	v_add_f32_e32 v27, v27, v1
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_cvt_f32_i32_e32 v1, v174
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_add_f32_e32 v124, v124, v0
	v_add_f32_e32 v28, v28, v3
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_cvt_f32_i32_e32 v0, v175
	v_cvt_f32_i32_e32 v3, v176
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_add_f32_e32 v239, v239, v1
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_cvt_f32_i32_e32 v1, v178
	v_cvt_f32_i32_e32 v2, v180
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_add_f32_e32 v240, v240, v0
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_cvt_f32_i32_e32 v0, v179
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_dual_add_f32 v164, v164, v3 :: v_dual_add_f32 v249, v249, v1
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_cvt_f32_i32_e32 v1, v182
	v_cvt_f32_i32_e32 v3, v183
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_add_f32_e32 v250, v250, v0
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_cvt_f32_i32_e32 v0, v181
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_add_f32_e32 v149, v149, v2
	v_add_f32_e32 v145, v145, v1
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_cvt_f32_i32_e32 v1, v184
	v_cvt_f32_i32_e32 v2, v187
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_add_f32_e32 v150, v150, v0
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_cvt_f32_i32_e32 v0, v185
	v_cvt_f32_i32_e32 v6, v51
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_add_f32_e32 v141, v141, v1
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_cvt_f32_i32_e32 v1, v188
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_add_f32_e32 v146, v146, v3
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_cvt_f32_i32_e32 v3, v186
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_add_f32_e32 v142, v142, v0
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_cvt_f32_i32_e32 v0, v189
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_add_f32_e32 v133, v133, v1
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_cvt_f32_i32_e32 v1, v192
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_add_f32_e32 v136, v136, v2
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_cvt_f32_i32_e32 v2, v190
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_add_f32_e32 v134, v134, v0
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_cvt_f32_i32_e32 v0, v191
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_add_f32_e32 v159, v159, v1
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_cvt_f32_i32_e32 v1, v194
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_add_f32_e32 v135, v135, v3
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_cvt_f32_i32_e32 v3, v193
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_add_f32_e32 v128, v128, v0
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_cvt_f32_i32_e32 v0, v195
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_add_f32_e32 v153, v153, v1
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_cvt_f32_i32_e32 v1, v198
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_add_f32_e32 v127, v127, v2
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_cvt_f32_i32_e32 v2, v197
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_add_f32_e32 v160, v160, v3
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_cvt_f32_i32_e32 v3, v196
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_add_f32_e32 v80, v80, v1
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_cvt_f32_i32_e32 v1, v202
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_add_f32_e32 v154, v154, v0
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_cvt_f32_i32_e32 v0, v199
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_dual_add_f32 v70, v70, v3 :: v_dual_add_f32 v71, v71, v2
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_cvt_f32_i32_e32 v2, v200
	v_cvt_f32_i32_e32 v3, v203
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_add_f32_e32 v81, v81, v0
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_cvt_f32_i32_e32 v0, v201
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_add_f32_e32 v109, v109, v1
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_cvt_f32_i32_e32 v1, v204
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_add_f32_e32 v82, v82, v2
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_cvt_f32_i32_e32 v2, v18
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_add_f32_e32 v83, v83, v0
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_cvt_f32_i32_e32 v0, v205
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_add_f32_e32 v107, v107, v1
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_cvt_f32_i32_e32 v1, v19
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_add_f32_e32 v110, v110, v3
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_cvt_f32_i32_e32 v3, v17
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_add_f32_e32 v108, v108, v0
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_cvt_f32_i32_e32 v0, v20
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_add_f32_e32 v97, v97, v1
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_cvt_f32_i32_e32 v1, v23
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_add_f32_e32 v101, v101, v3
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_cvt_f32_i32_e32 v3, v24
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_add_f32_e32 v98, v98, v0
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_cvt_f32_i32_e32 v0, v22
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_add_f32_e32 v102, v102, v2
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_cvt_f32_i32_e32 v2, v21
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_add_f32_e32 v87, v87, v3
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_cvt_f32_i32_e32 v3, v40
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_add_f32_e32 v91, v91, v0
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_cvt_f32_i32_e32 v0, v39
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_add_f32_e32 v90, v90, v2
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_cvt_f32_i32_e32 v2, v41
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_add_f32_e32 v86, v86, v1
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_cvt_f32_i32_e32 v1, v38
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_add_f32_e32 v79, v79, v6
	v_add_f32_e32 v85, v85, v0
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_cvt_f32_i32_e32 v0, v43
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v5, v5, v2
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_cvt_f32_i32_e32 v2, v44
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_add_f32_e32 v84, v84, v1
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_cvt_f32_i32_e32 v1, v42
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_add_f32_e32 v4, v4, v3
	s_clause 0x1                            ; 16-byte Folded Spill
	scratch_store_b64 off, v[78:79], off offset:200
	scratch_store_b64 off, v[153:154], off offset:56
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_cvt_f32_i32_e32 v3, v47
	v_dual_mov_b32 v154, v119 :: v_dual_mov_b32 v153, v118
	scratch_store_b64 off, v[4:5], off offset:8 ; 8-byte Folded Spill
	scratch_load_b64 v[5:6], off, off offset:48 ; 8-byte Folded Reload
	v_cvt_f32_i32_e32 v4, v46
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_dual_add_f32 v154, v154, v3 :: v_dual_add_f32 v153, v153, v4
	s_waitcnt vmcnt(0)
	v_dual_add_f32 v6, v6, v0 :: v_dual_add_f32 v5, v5, v1
	scratch_store_b64 off, v[232:233], off offset:192 ; 8-byte Folded Spill
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_cvt_f32_i32_e32 v0, v45
	scratch_store_b64 off, v[5:6], off offset:48 ; 8-byte Folded Spill
	scratch_load_b64 v[5:6], off, off offset:24 ; 8-byte Folded Reload
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	s_waitcnt vmcnt(0)
	v_dual_add_f32 v6, v6, v0 :: v_dual_add_f32 v5, v5, v2
	s_clause 0x1                            ; 16-byte Folded Spill
	scratch_store_b64 off, v[70:71], off offset:72
	scratch_store_b64 off, v[5:6], off offset:24
	s_branch .LBB0_13
.LBB0_12:
	.loc	1 0 17 is_stmt 0                ; generate_amdgcn.py:0:17
	s_clause 0x3                            ; 32-byte Folded Spill
	scratch_store_b64 off, v[78:79], off offset:200
	scratch_store_b64 off, v[232:233], off offset:192
	scratch_store_b64 off, v[70:71], off offset:72
	scratch_store_b64 off, v[153:154], off offset:56
	v_dual_mov_b32 v154, v119 :: v_dual_mov_b32 v153, v118
.LBB0_13:
	v_dual_mov_b32 v177, 0 :: v_dual_add_nc_u32 v0, s33, v33
	s_waitcnt lgkmcnt(4)
	v_dual_mov_b32 v192, 0 :: v_dual_add_nc_u32 v5, s33, v163
	v_dual_mov_b32 v78, v246 :: v_dual_mov_b32 v79, v247
	.loc	1 348 22 is_stmt 1              ; generate_amdgcn.py:348:22
	s_waitcnt lgkmcnt(3)
	ds_load_b128 v[21:24], v0
	s_waitcnt lgkmcnt(3)
	ds_load_b128 v[13:16], v0 offset:512
	s_waitcnt lgkmcnt(3)
	ds_load_b128 v[9:12], v0 offset:1024
	s_waitcnt lgkmcnt(3)
	ds_load_b128 v[1:4], v0 offset:1536
	ds_load_b128 v[29:32], v5
	ds_load_b128 v[35:38], v5 offset:512
	ds_load_b128 v[17:20], v5 offset:1024
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_b128 v[5:8], v5 offset:1536
	v_cndmask_b32_e64 v0, 0, 1, s2
	v_dual_mov_b32 v118, v241 :: v_dual_mov_b32 v119, v242
	v_dual_mov_b32 v204, v236 :: v_dual_mov_b32 v205, v237
	v_dual_mov_b32 v202, v234 :: v_dual_mov_b32 v203, v235
	scratch_store_b64 off, v[149:150], off offset:208 ; 8-byte Folded Spill
	v_cmp_ne_u32_e64 s1, 1, v0
	v_dual_mov_b32 v191, 0 :: v_dual_mov_b32 v174, 0
	v_dual_mov_b32 v173, 0 :: v_dual_mov_b32 v176, 0
	v_dual_mov_b32 v175, 0 :: v_dual_mov_b32 v0, 0
	v_dual_mov_b32 v163, 0 :: v_dual_mov_b32 v166, 0
	v_dual_mov_b32 v25, 0 :: v_dual_mov_b32 v168, 0
	v_dual_mov_b32 v167, 0 :: v_dual_mov_b32 v170, 0
	v_dual_mov_b32 v169, 0 :: v_dual_mov_b32 v172, 0
	v_dual_mov_b32 v171, 0 :: v_dual_mov_b32 v34, 0
	v_dual_mov_b32 v255, 0 :: v_dual_mov_b32 v62, 0
	v_dual_mov_b32 v63, 0 :: v_dual_mov_b32 v208, 0
	v_dual_mov_b32 v207, 0 :: v_dual_mov_b32 v64, 0
	v_dual_mov_b32 v66, 0 :: v_dual_mov_b32 v65, 0
	v_dual_mov_b32 v67, 0 :: v_dual_mov_b32 v70, 0
	v_dual_mov_b32 v33, 0 :: v_dual_mov_b32 v26, 0
	v_dual_mov_b32 v50, 0 :: v_dual_mov_b32 v49, 0
	v_dual_mov_b32 v52, 0 :: v_dual_mov_b32 v51, 0
	v_dual_mov_b32 v54, 0 :: v_dual_mov_b32 v53, 0
	v_dual_mov_b32 v56, 0 :: v_dual_mov_b32 v55, 0
	v_dual_mov_b32 v58, 0 :: v_dual_mov_b32 v57, 0
	v_dual_mov_b32 v60, 0 :: v_dual_mov_b32 v59, 0
	v_dual_mov_b32 v68, 0 :: v_dual_mov_b32 v61, 0
	v_dual_mov_b32 v122, 0 :: v_dual_mov_b32 v69, 0
	v_dual_mov_b32 v150, 0 :: v_dual_mov_b32 v149, 0
	v_dual_mov_b32 v178, 0 :: v_dual_mov_b32 v155, 0
	v_dual_mov_b32 v180, 0 :: v_dual_mov_b32 v179, 0
	v_dual_mov_b32 v230, 0 :: v_dual_mov_b32 v181, 0
	v_dual_mov_b32 v182, 0 :: v_dual_mov_b32 v231, 0
	v_dual_mov_b32 v183, 0 :: v_dual_mov_b32 v184, 0
	v_dual_mov_b32 v39, 0 :: v_dual_mov_b32 v40, 0
	v_dual_mov_b32 v42, 0 :: v_dual_mov_b32 v41, 0
	v_dual_mov_b32 v199, 0 :: v_dual_mov_b32 v200, 0
	v_mov_b32_e32 v71, 0
	s_and_not1_b32 vcc_lo, exec_lo, s2
	s_cbranch_vccnz .LBB0_15
; %bb.14:
	s_mov_b32 s5, s4
	s_mov_b32 s6, s4
	s_mov_b32 s7, s4
	s_mov_b32 s8, s4
	s_mov_b32 s9, s4
	s_mov_b32 s10, s4
	s_mov_b32 s11, s4
	.loc	1 350 22                        ; generate_amdgcn.py:350:22
	v_add_nc_u32_e32 v0, s31, v117
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_dual_mov_b32 v46, s11 :: v_dual_mov_b32 v41, s6
	v_mov_b32_e32 v45, s10
	.loc	1 350 22                        ; generate_amdgcn.py:350:22
	ds_load_b128 v[55:58], v0
	ds_load_b128 v[59:62], v0 offset:4096
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_dual_mov_b32 v43, s8 :: v_dual_add_nc_u32 v0, s31, v76
	.loc	1 350 22                        ; generate_amdgcn.py:350:22
	ds_load_b128 v[63:66], v0 offset:4096
	ds_load_b128 v[67:70], v0
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_dual_mov_b32 v44, s9 :: v_dual_mov_b32 v39, s4
	v_mov_b32_e32 v42, s7
	v_mov_b32_e32 v40, s5
	s_waitcnt lgkmcnt(3)
	s_delay_alu instid0(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu8 v[47:54], v[55:58], v[21:24], v[39:46] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(2)
	v_wmma_i32_16x16x16_iu8 v[178:185], v[59:62], v[21:24], v[39:46] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[186:193], v[55:58], v[13:16], v[39:46] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[194:201], v[59:62], v[13:16], v[39:46] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[209:216], v[55:58], v[9:12], v[39:46] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[217:224], v[59:62], v[9:12], v[39:46] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[225:232], v[55:58], v[1:4], v[39:46] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[39:46], v[59:62], v[1:4], v[39:46] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu8 v[47:54], v[67:70], v[29:32], v[47:54] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[178:185], v[63:66], v[29:32], v[178:185] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[186:193], v[67:70], v[35:38], v[186:193] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[194:201], v[63:66], v[35:38], v[194:201] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[209:216], v[67:70], v[17:20], v[209:216] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[217:224], v[63:66], v[17:20], v[217:224] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[225:232], v[67:70], v[5:8], v[225:232] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[39:46], v[63:66], v[5:8], v[39:46] neg_lo:[1,1,0]
	v_cvt_f32_i32_e32 v175, v49
	v_cvt_f32_i32_e32 v176, v50
	v_cvt_f32_i32_e32 v173, v51
	v_cvt_f32_i32_e32 v174, v52
	v_cvt_f32_i32_e32 v163, v53
	v_cvt_f32_i32_e32 v25, v54
	v_cvt_f32_i32_e32 v0, v178
	v_cvt_f32_i32_e32 v167, v179
	v_cvt_f32_i32_e32 v168, v180
	v_cvt_f32_i32_e32 v171, v181
	v_cvt_f32_i32_e32 v166, v182
	v_cvt_f32_i32_e32 v169, v183
	v_cvt_f32_i32_e32 v170, v184
	v_cvt_f32_i32_e32 v172, v185
	v_cvt_f32_i32_e32 v255, v186
	v_cvt_f32_i32_e32 v34, v187
	v_cvt_f32_i32_e32 v207, v188
	v_cvt_f32_i32_e32 v208, v189
	v_cvt_f32_i32_e32 v62, v190
	v_cvt_f32_i32_e32 v63, v191
	v_cvt_f32_i32_e32 v64, v192
	v_cvt_f32_i32_e32 v66, v193
	v_cvt_f32_i32_e32 v65, v194
	v_cvt_f32_i32_e32 v67, v195
	v_cvt_f32_i32_e32 v26, v196
	v_cvt_f32_i32_e32 v50, v197
	v_cvt_f32_i32_e32 v70, v198
	v_cvt_f32_i32_e32 v33, v199
	v_cvt_f32_i32_e32 v49, v200
	v_cvt_f32_i32_e32 v52, v201
	v_cvt_f32_i32_e32 v51, v209
	v_cvt_f32_i32_e32 v54, v210
	v_cvt_f32_i32_e32 v55, v211
	v_cvt_f32_i32_e32 v58, v212
	v_cvt_f32_i32_e32 v53, v213
	v_cvt_f32_i32_e32 v56, v214
	v_cvt_f32_i32_e32 v57, v215
	v_cvt_f32_i32_e32 v60, v216
	v_cvt_f32_i32_e32 v59, v217
	v_cvt_f32_i32_e32 v68, v218
	v_cvt_f32_i32_e32 v69, v219
	v_cvt_f32_i32_e32 v150, v220
	v_cvt_f32_i32_e32 v61, v221
	v_cvt_f32_i32_e32 v122, v222
	v_cvt_f32_i32_e32 v149, v223
	v_cvt_f32_i32_e32 v178, v224
	v_cvt_f32_i32_e32 v155, v225
	v_cvt_f32_i32_e32 v180, v226
	v_cvt_f32_i32_e32 v181, v227
	v_cvt_f32_i32_e32 v182, v228
	v_cvt_f32_i32_e32 v179, v229
	v_cvt_f32_i32_e32 v230, v230
	v_cvt_f32_i32_e32 v231, v231
	v_cvt_f32_i32_e32 v183, v232
	v_cvt_f32_i32_e32 v39, v39
	v_cvt_f32_i32_e32 v184, v40
	v_cvt_f32_i32_e32 v41, v41
	v_cvt_f32_i32_e32 v199, v42
	v_cvt_f32_i32_e32 v40, v43
	v_cvt_f32_i32_e32 v42, v44
	v_cvt_f32_i32_e32 v71, v45
	v_cvt_f32_i32_e32 v200, v46
	v_cvt_f32_i32_e32 v191, v47
	v_cvt_f32_i32_e32 v192, v48
.LBB0_15:
	.loc	1 0 19 is_stmt 0                ; generate_amdgcn.py:0:19
	s_clause 0x1f                           ; 128-byte Folded Spill
	scratch_store_b32 off, v42, off offset:340
	scratch_store_b32 off, v41, off offset:336
	scratch_store_b32 off, v184, off offset:332
	scratch_store_b32 off, v40, off offset:328
	scratch_store_b32 off, v183, off offset:324
	scratch_store_b32 off, v39, off offset:320
	scratch_store_b32 off, v182, off offset:316
	scratch_store_b32 off, v181, off offset:312
	scratch_store_b32 off, v180, off offset:308
	scratch_store_b32 off, v179, off offset:304
	scratch_store_b32 off, v178, off offset:300
	scratch_store_b32 off, v155, off offset:296
	scratch_store_b32 off, v150, off offset:292
	scratch_store_b32 off, v149, off offset:288
	scratch_store_b32 off, v122, off offset:284
	scratch_store_b32 off, v69, off offset:280
	scratch_store_b32 off, v68, off offset:276
	scratch_store_b32 off, v61, off offset:272
	scratch_store_b32 off, v60, off offset:268
	scratch_store_b32 off, v59, off offset:264
	scratch_store_b32 off, v58, off offset:260
	scratch_store_b32 off, v57, off offset:256
	scratch_store_b32 off, v56, off offset:252
	scratch_store_b32 off, v55, off offset:248
	scratch_store_b32 off, v54, off offset:244
	scratch_store_b32 off, v53, off offset:240
	scratch_store_b32 off, v52, off offset:236
	scratch_store_b32 off, v51, off offset:232
	scratch_store_b32 off, v50, off offset:228
	scratch_store_b32 off, v49, off offset:224
	scratch_store_b32 off, v33, off offset:220
	scratch_store_b32 off, v26, off offset:216
	s_clause 0xc                            ; 104-byte Folded Spill
	scratch_store_b64 off, v[147:148], off offset:184
	scratch_store_b64 off, v[145:146], off offset:176
	scratch_store_b64 off, v[143:144], off offset:168
	scratch_store_b64 off, v[141:142], off offset:160
	scratch_store_b64 off, v[139:140], off offset:152
	scratch_store_b64 off, v[137:138], off offset:144
	scratch_store_b64 off, v[135:136], off offset:136
	scratch_store_b64 off, v[133:134], off offset:128
	scratch_store_b64 off, v[131:132], off offset:120
	scratch_store_b64 off, v[129:130], off offset:112
	scratch_store_b64 off, v[127:128], off offset:104
	scratch_store_b64 off, v[159:160], off offset:64
	scratch_store_b64 off, v[125:126], off offset:96
	v_dual_mov_b32 v196, 0 :: v_dual_mov_b32 v193, 0
	v_dual_mov_b32 v190, 0 :: v_dual_mov_b32 v195, 0
	v_dual_mov_b32 v194, 0 :: v_dual_mov_b32 v181, 0
	v_dual_mov_b32 v180, 0 :: v_dual_mov_b32 v183, 0
	v_dual_mov_b32 v182, 0 :: v_dual_mov_b32 v185, 0
	v_dual_mov_b32 v184, 0 :: v_dual_mov_b32 v187, 0
	v_dual_mov_b32 v186, 0 :: v_dual_mov_b32 v189, 0
	v_dual_mov_b32 v188, 0 :: v_dual_mov_b32 v179, 0
	v_dual_mov_b32 v178, 0 :: v_dual_mov_b32 v209, 0
	v_dual_mov_b32 v206, 0 :: v_dual_mov_b32 v33, 0
	v_dual_mov_b32 v47, 0 :: v_dual_mov_b32 v210, 0
	v_dual_mov_b32 v212, 0 :: v_dual_mov_b32 v69, 0
	v_dual_mov_b32 v68, 0 :: v_dual_mov_b32 v215, 0
	v_dual_mov_b32 v214, 0 :: v_dual_mov_b32 v229, 0
	v_dual_mov_b32 v216, 0 :: v_dual_mov_b32 v201, 0
	v_dual_mov_b32 v218, 0 :: v_dual_mov_b32 v197, 0
	v_dual_mov_b32 v198, 0 :: v_dual_mov_b32 v225, 0
	v_dual_mov_b32 v228, 0 :: v_dual_mov_b32 v211, 0
	v_dual_mov_b32 v26, 0 :: v_dual_mov_b32 v227, 0
	v_dual_mov_b32 v48, 0 :: v_dual_mov_b32 v155, 0
	v_dual_mov_b32 v226, 0 :: v_dual_mov_b32 v213, 0
	v_dual_mov_b32 v232, 0 :: v_dual_mov_b32 v233, 0
	v_dual_mov_b32 v122, 0 :: v_dual_mov_b32 v235, 0
	v_dual_mov_b32 v234, 0 :: v_dual_mov_b32 v237, 0
	v_dual_mov_b32 v236, 0 :: v_dual_mov_b32 v217, 0
	v_dual_mov_b32 v238, 0 :: v_dual_mov_b32 v241, 0
	v_dual_mov_b32 v60, 0 :: v_dual_mov_b32 v159, 0
	v_dual_mov_b32 v242, 0 :: v_dual_mov_b32 v61, 0
	v_dual_mov_b32 v150, 0 :: v_dual_mov_b32 v243, 0
	v_dual_mov_b32 v247, 0 :: v_dual_mov_b32 v246, 0
	v_dual_mov_b32 v223, 0 :: v_dual_mov_b32 v248, 0
	v_mov_b32_e32 v224, 0
	.loc	1 359 28 is_stmt 1              ; generate_amdgcn.py:359:28
	s_and_b32 vcc_lo, exec_lo, s1
	s_cbranch_vccnz .LBB0_17
; %bb.16:
	.loc	1 0 28 is_stmt 0                ; generate_amdgcn.py:0:28
	v_dual_mov_b32 v33, v62 :: v_dual_add_nc_u32 v26, s30, v76
	v_dual_mov_b32 v122, v64 :: v_dual_mov_b32 v125, v65
	v_dual_mov_b32 v127, v70 :: v_dual_mov_b32 v128, v67
	.loc	1 356 31 is_stmt 1              ; generate_amdgcn.py:356:31
	ds_load_b128 v[55:58], v26 offset:4096
	ds_load_b128 v[59:62], v26
	v_add_nc_u32_e32 v26, s30, v117
	v_mov_b32_e32 v117, v63
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	s_mov_b32 s5, s4
	s_mov_b32 s6, s4
	s_mov_b32 s7, s4
	.loc	1 356 31                        ; generate_amdgcn.py:356:31
	ds_load_b128 v[67:70], v26
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	s_mov_b32 s8, s4
	s_mov_b32 s9, s4
	s_mov_b32 s10, s4
	s_mov_b32 s11, s4
	v_mov_b32_e32 v126, v66
	.loc	1 356 31                        ; generate_amdgcn.py:356:31
	ds_load_b128 v[63:66], v26 offset:4096
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_dual_mov_b32 v46, s11 :: v_dual_mov_b32 v43, s8
	v_dual_mov_b32 v45, s10 :: v_dual_mov_b32 v44, s9
	v_dual_mov_b32 v41, s6 :: v_dual_mov_b32 v42, s7
	v_dual_mov_b32 v39, s4 :: v_dual_mov_b32 v40, s5
	v_mov_b32_e32 v26, v230
	s_waitcnt lgkmcnt(1)
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu8 v[47:54], v[67:70], v[21:24], v[39:46] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[47:54], v[59:62], v[29:32], v[47:54] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu8 v[209:216], v[63:66], v[21:24], v[39:46] neg_lo:[1,1,0]
	v_dual_mov_b32 v21, v239 :: v_dual_mov_b32 v22, v240
	v_dual_mov_b32 v23, v244 :: v_dual_mov_b32 v24, v245
	s_delay_alu instid0(VALU_DEP_3)
	v_wmma_i32_16x16x16_iu8 v[209:216], v[55:58], v[29:32], v[209:216] neg_lo:[1,1,0]
	v_mov_b32_e32 v29, v231
	v_wmma_i32_16x16x16_iu8 v[217:224], v[67:70], v[13:16], v[39:46] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[225:232], v[63:66], v[13:16], v[39:46] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[233:240], v[67:70], v[9:12], v[39:46] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[241:248], v[63:66], v[9:12], v[39:46] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[9:16], v[67:70], v[1:4], v[39:46] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[39:46], v[63:66], v[1:4], v[39:46] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[217:224], v[59:62], v[35:38], v[217:224] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[225:232], v[55:58], v[35:38], v[225:232] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[233:240], v[59:62], v[17:20], v[233:240] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[241:248], v[55:58], v[17:20], v[241:248] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[9:16], v[59:62], v[5:8], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[39:46], v[55:58], v[5:8], v[39:46] neg_lo:[1,1,0]
	v_mov_b32_e32 v62, v33
	v_mov_b32_e32 v65, v125
	v_cvt_f32_i32_e32 v185, v211
	v_cvt_f32_i32_e32 v183, v213
	v_cvt_f32_i32_e32 v179, v218
	v_cvt_f32_i32_e32 v68, v225
	v_cvt_f32_i32_e32 v218, v228
	v_cvt_f32_i32_e32 v228, v234
	v_cvt_f32_i32_e32 v225, v239
	v_cvt_f32_i32_e32 v211, v240
	v_mov_b32_e32 v240, v22
	v_cvt_f32_i32_e32 v234, v244
	v_cvt_f32_i32_e32 v213, v245
	v_mov_b32_e32 v245, v24
	v_dual_mov_b32 v67, v128 :: v_dual_mov_b32 v70, v127
	v_dual_mov_b32 v66, v126 :: v_dual_mov_b32 v63, v117
	v_mov_b32_e32 v64, v122
	v_cvt_f32_i32_e32 v177, v47
	v_cvt_f32_i32_e32 v196, v48
	v_cvt_f32_i32_e32 v194, v49
	v_cvt_f32_i32_e32 v195, v50
	v_cvt_f32_i32_e32 v190, v51
	v_cvt_f32_i32_e32 v193, v52
	v_cvt_f32_i32_e32 v180, v53
	v_cvt_f32_i32_e32 v182, v54
	v_cvt_f32_i32_e32 v181, v209
	v_cvt_f32_i32_e32 v184, v210
	v_cvt_f32_i32_e32 v188, v212
	v_cvt_f32_i32_e32 v186, v214
	v_cvt_f32_i32_e32 v187, v215
	v_cvt_f32_i32_e32 v189, v216
	v_cvt_f32_i32_e32 v178, v217
	v_cvt_f32_i32_e32 v33, v219
	v_cvt_f32_i32_e32 v47, v220
	v_cvt_f32_i32_e32 v209, v221
	v_cvt_f32_i32_e32 v206, v222
	v_cvt_f32_i32_e32 v210, v223
	v_cvt_f32_i32_e32 v212, v224
	v_cvt_f32_i32_e32 v214, v226
	v_cvt_f32_i32_e32 v215, v227
	v_cvt_f32_i32_e32 v69, v229
	v_cvt_f32_i32_e32 v216, v230
	v_dual_mov_b32 v230, v26 :: v_dual_mov_b32 v239, v21
	v_cvt_f32_i32_e32 v229, v231
	v_mov_b32_e32 v231, v29
	v_cvt_f32_i32_e32 v201, v232
	v_cvt_f32_i32_e32 v198, v233
	v_cvt_f32_i32_e32 v197, v235
	v_cvt_f32_i32_e32 v226, v236
	v_cvt_f32_i32_e32 v26, v237
	v_cvt_f32_i32_e32 v48, v238
	v_cvt_f32_i32_e32 v227, v241
	v_cvt_f32_i32_e32 v155, v242
	v_cvt_f32_i32_e32 v122, v243
	v_mov_b32_e32 v244, v23
	v_cvt_f32_i32_e32 v232, v246
	v_cvt_f32_i32_e32 v233, v247
	v_cvt_f32_i32_e32 v236, v248
	v_cvt_f32_i32_e32 v235, v9
	v_cvt_f32_i32_e32 v238, v10
	v_cvt_f32_i32_e32 v217, v11
	v_cvt_f32_i32_e32 v242, v12
	v_cvt_f32_i32_e32 v237, v13
	v_cvt_f32_i32_e32 v60, v14
	v_cvt_f32_i32_e32 v241, v15
	v_cvt_f32_i32_e32 v159, v16
	v_cvt_f32_i32_e32 v61, v39
	v_cvt_f32_i32_e32 v150, v40
	v_cvt_f32_i32_e32 v246, v41
	v_cvt_f32_i32_e32 v223, v42
	v_cvt_f32_i32_e32 v243, v43
	v_cvt_f32_i32_e32 v247, v44
	v_cvt_f32_i32_e32 v248, v45
	v_cvt_f32_i32_e32 v224, v46
.LBB0_17:
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	s_waitcnt lgkmcnt(4)
	v_dual_add_f32 v1, v95, v191 :: v_dual_add_f32 v2, v96, v192
	.loc	1 300 32                        ; generate_amdgcn.py:300:32
	v_and_b32_e32 v160, 0xf0, v156
	.loc	1 378 14                        ; generate_amdgcn.py:378:14
	s_and_b32 s9, s17, 0xffff
	s_mov_b32 s11, 0x31027000
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_waitcnt lgkmcnt(3)
	v_cndmask_b32_e64 v32, v95, v1, s2
	.loc	1 380 16                        ; generate_amdgcn.py:380:16
	v_lshlrev_b32_e32 v1, 1, v156
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v55, v96, v2, s2
	.loc	1 380 16                        ; generate_amdgcn.py:380:16
	s_waitcnt vmcnt(1)
	v_lshlrev_b32_e32 v2, 5, v94
	v_lshl_add_u32 v3, v160, 2, 0
	s_mov_b32 s10, 0x7ffffffe
	v_and_b32_e32 v1, 28, v1
	.loc	1 378 14                        ; generate_amdgcn.py:378:14
	s_mov_b32 s8, s16
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v0, v120, v0
	s_waitcnt lgkmcnt(0)
	v_dual_add_f32 v6, v78, v168 :: v_dual_add_f32 v7, v203, v169
	.loc	1 380 16                        ; generate_amdgcn.py:380:16
	v_add3_u32 v29, v3, v2, v1
	s_clause 0x1                            ; 16-byte Folded Reload
	scratch_load_b64 v[3:4], off, off offset:40
	scratch_load_b64 v[95:96], off, off offset:80
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_dual_add_f32 v1, v153, v177 :: v_dual_add_f32 v2, v154, v196
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_dual_add_f32 v8, v202, v166 :: v_dual_add_f32 v9, v119, v172
	v_dual_add_f32 v10, v118, v170 :: v_dual_add_f32 v17, v157, v180
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v14, v153, v1, s2
	v_cndmask_b32_e64 v15, v154, v2, s2
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_dual_add_f32 v22, v75, v188 :: v_dual_add_f32 v23, v74, v185
	v_dual_add_f32 v35, v28, v189 :: v_dual_add_f32 v36, v27, v187
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v130, v78, v6, s2
	v_cndmask_b32_e64 v133, v202, v8, s2
	s_delay_alu instid0(VALU_DEP_4)
	v_cndmask_b32_e64 v148, v74, v23, s2
	v_cndmask_b32_e64 v135, v203, v7, s2
	v_cndmask_b32_e64 v131, v118, v10, s2
	v_cndmask_b32_e64 v132, v119, v9, s2
	v_cndmask_b32_e64 v141, v27, v36, s2
	v_cndmask_b32_e64 v142, v28, v35, s2
	v_cndmask_b32_e64 v17, v157, v17, s2
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	s_and_b32 s13, s13, 0xffff
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_add_f32_e32 v30, v124, v186
	v_add_f32_e32 v172, v249, v209
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v147, v124, v30, s2
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	s_waitcnt vmcnt(1)
	v_dual_add_f32 v1, v3, v175 :: v_dual_add_f32 v2, v4, v176
	.loc	1 380 16                        ; generate_amdgcn.py:380:16
	v_lshl_add_u32 v24, v160, 1, 0
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v53, v3, v1, s2
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_add_f32_e32 v1, v115, v194
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v54, v4, v2, s2
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_add_f32_e32 v2, v116, v195
	.loc	1 379 22                        ; generate_amdgcn.py:379:22
	v_or_b32_e32 v4, s14, v156
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v12, v115, v1, s2
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v1, v95, v173
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v13, v116, v2, s2
	scratch_load_b64 v[115:116], off, off offset:200 ; 8-byte Folded Reload
	.loc	1 299 32                        ; generate_amdgcn.py:299:32
	v_and_b32_e32 v94, 15, v156
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_add_f32_e32 v2, v96, v174
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v153, v95, v1, s2
	.loc	1 379 14                        ; generate_amdgcn.py:379:14
	v_lshlrev_b32_e32 v4, 1, v4
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v154, v96, v2, s2
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v3, v116, v193
	.loc	1 378 22                        ; generate_amdgcn.py:378:22
	v_or_b32_e32 v1, s28, v94
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_add_f32_e32 v2, v115, v190
	.loc	1 390 18                        ; generate_amdgcn.py:390:18
	s_mul_i32 s28, s28, s15
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v18, v116, v3, s2
	.loc	1 378 22                        ; generate_amdgcn.py:378:22
	v_lshlrev_b32_e32 v1, 1, v1
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v16, v115, v2, s2
	v_mov_b32_e32 v115, v26
	.loc	1 378 14                        ; generate_amdgcn.py:378:14
	v_or_b32_e32 v2, 32, v1
	v_or_b32_e32 v3, 64, v1
	v_or_b32_e32 v5, 0x60, v1
	s_clause 0x3
	buffer_load_u16 v26, v1, s[8:11], 0 offen
	buffer_load_u16 v149, v2, s[8:11], 0 offen
	buffer_load_u16 v175, v3, s[8:11], 0 offen
	buffer_load_u16 v117, v5, s[8:11], 0 offen
	.loc	1 379 14                        ; generate_amdgcn.py:379:14
	s_and_b32 s9, s19, 0xffff
	s_mov_b32 s8, s18
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_add_f32_e32 v5, v79, v171
	.loc	1 379 14                        ; generate_amdgcn.py:379:14
	buffer_load_u16 v1, v4, s[8:11], 0 offen
	.loc	1 380 16                        ; generate_amdgcn.py:380:16
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_add_f32_e32 v4, v121, v167
	v_dual_add_f32 v2, v205, v25 :: v_dual_add_f32 v3, v204, v163
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v134, v79, v5, s2
	v_cndmask_b32_e64 v129, v120, v0, s2
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cndmask_b32_e64 v139, v121, v4, s2
	v_cndmask_b32_e64 v138, v205, v2, s2
	v_cndmask_b32_e64 v137, v204, v3, s2
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_add_f32_e32 v79, v83, v234
	v_dual_add_f32 v234, v107, v233 :: v_dual_add_f32 v233, v102, v238
	v_dual_add_f32 v204, v109, v213 :: v_dual_add_f32 v213, v87, v159
	.loc	1 378 14                        ; generate_amdgcn.py:378:14
	s_waitcnt vmcnt(4)
	v_lshlrev_b32_e32 v140, 16, v26
	s_waitcnt vmcnt(3)
	v_lshlrev_b32_e32 v120, 16, v149
	s_waitcnt vmcnt(2)
	v_lshlrev_b32_e32 v187, 16, v175
	.loc	1 379 14                        ; generate_amdgcn.py:379:14
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v1, 16, v1
	.loc	1 380 16                        ; generate_amdgcn.py:380:16
	ds_store_b32 v29, v1
	.loc	1 382 23                        ; generate_amdgcn.py:382:23
	v_add_lshl_u32 v1, s29, v156, 1
	.loc	1 380 16                        ; generate_amdgcn.py:380:16
	s_waitcnt lgkmcnt(0)
	s_barrier
	scratch_load_b64 v[95:96], off, off offset:192 ; 8-byte Folded Reload
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_add_f32_e32 v11, v158, v182
	.loc	1 382 23                        ; generate_amdgcn.py:382:23
	buffer_load_u16 v1, v1, s[8:11], 0 offen
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_add_f32_e32 v31, v123, v183
	.loc	1 380 16                        ; generate_amdgcn.py:380:16
	ds_load_b128 v[4:7], v24 offset:512
	ds_load_b128 v[192:195], v24 offset:528
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_add_f32_e32 v183, v80, v227
	v_add_f32_e32 v227, v97, v217
	v_add_f32_e32 v217, v86, v241
	s_waitcnt vmcnt(1)
	v_dual_add_f32 v21, v95, v181 :: v_dual_add_f32 v20, v96, v184
	.loc	1 382 23                        ; generate_amdgcn.py:382:23
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v30, 16, v1
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v19, v158, v11, s2
	v_cndmask_b32_e64 v158, v75, v22, s2
	v_cndmask_b32_e64 v163, v95, v21, s2
	v_cndmask_b32_e64 v25, v96, v20, s2
	.loc	1 380 16                        ; generate_amdgcn.py:380:16
	ds_load_b128 v[20:23], v24
	ds_load_b128 v[8:11], v24 offset:16
	.loc	1 383 25                        ; generate_amdgcn.py:383:25
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b32 v29, v30
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[35:38], v24
	ds_load_b128 v[39:42], v24 offset:16
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v144, v123, v31, s2
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_add_f32_e32 v31, v239, v178
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_dual_add_f32 v29, v151, v255 :: v_dual_add_f32 v30, v152, v34
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_add_f32_e32 v34, v240, v179
	v_mov_b32_e32 v1, v48
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v143, v239, v31, s2
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_add_f32_e32 v31, v164, v33
	v_add_f32_e32 v33, v165, v47
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v128, v152, v30, s2
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_add_f32_e32 v30, v245, v208
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v136, v151, v29, s2
	v_cndmask_b32_e64 v95, v164, v31, s2
	v_cndmask_b32_e64 v96, v165, v33, s2
	v_cndmask_b32_e64 v145, v240, v34, s2
	v_cndmask_b32_e64 v126, v245, v30, s2
	s_clause 0x2                            ; 24-byte Folded Reload
	scratch_load_b64 v[164:165], off, off offset:184
	scratch_load_b64 v[239:240], off, off offset:168
	scratch_load_b64 v[180:181], off, off offset:152
	.loc	1 383 25                        ; generate_amdgcn.py:383:25
	s_waitcnt lgkmcnt(1)
	v_mul_f32_e32 v26, v36, v140
	s_clause 0x1                            ; 16-byte Folded Reload
	scratch_load_b64 v[170:171], off, off offset:32
	scratch_load_b64 v[176:177], off, off offset:136
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_dual_add_f32 v184, v81, v155 :: v_dual_add_f32 v155, v108, v236
	.loc	1 383 13                        ; generate_amdgcn.py:383:13
	v_dual_mul_f32 v15, v15, v26 :: v_dual_add_f32 v238, v84, v61
	s_clause 0x1                            ; 16-byte Folded Reload
	scratch_load_b64 v[76:77], off, off offset:48
	scratch_load_b64 v[27:28], off, off offset:24
	.loc	1 380 16                        ; generate_amdgcn.py:380:16
	v_dual_mul_f32 v61, v11, v120 :: v_dual_mul_f32 v26, 0xbfb8aa3b, v15
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v26
	v_cndmask_b32_e64 v26, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v29, 0, 0xffffffc0, vcc_lo
	v_fmac_f32_e32 v26, 0xbfb8aa3b, v15
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_exp_f32_e32 v26, v26
	v_ldexp_f32 v26, v26, v29
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_add_f32_e32 v29, v244, v207
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 383 25                        ; generate_amdgcn.py:383:25
	v_dual_mul_f32 v33, v35, v140 :: v_dual_add_f32 v26, 1.0, v26
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v127, v244, v29, s2
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 383 13                        ; generate_amdgcn.py:383:13
	v_mul_f32_e32 v14, v14, v33
	scratch_load_b64 v[244:245], off, off offset:176 ; 8-byte Folded Reload
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v29, null, v26, v26, v15
	v_rcp_f32_e32 v30, v29
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v31, -v29, v30, 1.0
	v_fmac_f32_e32 v30, v31, v30
	v_div_scale_f32 v31, vcc_lo, v15, v26, v15
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v33, v31, v30
	v_fma_f32 v34, -v29, v33, v31
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_fmac_f32_e32 v33, v34, v30
	.loc	1 385 40 is_stmt 0              ; generate_amdgcn.py:385:40
	v_mul_f32_e32 v34, 0xbfb8aa3b, v14
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v29, -v29, v33, v31
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cmp_gt_f32_e64 s1, 0xc2fc0000, v34
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fmas_f32 v29, v29, v30, v33
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v34, 0, 0x42800000, s1
	v_cndmask_b32_e64 v43, 0, 0xffffffc0, s1
	v_fmac_f32_e32 v34, 0xbfb8aa3b, v14
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_exp_f32_e32 v34, v34
	v_ldexp_f32 v34, v34, v43
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 385 34                        ; generate_amdgcn.py:385:34
	v_add_f32_e32 v31, 1.0, v34
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v30, null, v31, v31, v14
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v33, v30
	v_fma_f32 v34, -v30, v33, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v33, v34, v33
	v_div_scale_f32 v34, vcc_lo, v14, v31, v14
	v_div_fixup_f32 v123, v29, v26, v15
	.loc	1 383 25 is_stmt 1              ; generate_amdgcn.py:383:25
	v_mul_f32_e32 v15, v37, v140
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_dual_mul_f32 v43, v34, v33 :: v_dual_mul_f32 v12, v12, v15
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v44, -v30, v43, v34
	.loc	1 385 40 is_stmt 0              ; generate_amdgcn.py:385:40
	v_mul_f32_e32 v15, 0xbfb8aa3b, v12
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fmac_f32_e32 v43, v44, v33
	v_fma_f32 v30, -v30, v43, v34
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v30, v30, v33, v43
	.loc	1 383 25 is_stmt 1              ; generate_amdgcn.py:383:25
	v_mul_f32_e32 v33, v38, v140
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v124, v30, v31, v14
	.loc	1 383 13                        ; generate_amdgcn.py:383:13
	s_waitcnt lgkmcnt(0)
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_dual_mul_f32 v13, v13, v33 :: v_dual_mul_f32 v14, v40, v140
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_dual_mul_f32 v33, 0xbfb8aa3b, v13 :: v_dual_mul_f32 v14, v18, v14
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v33
	v_mul_f32_e32 v18, 0xbfb8aa3b, v14
	v_cndmask_b32_e64 v33, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v34, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v33, 0xbfb8aa3b, v13
	v_exp_f32_e32 v33, v33
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v33, v33, v34
	.loc	1 385 34 is_stmt 0              ; generate_amdgcn.py:385:34
	v_add_f32_e32 v33, 1.0, v33
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v34, null, v33, v33, v13
	v_rcp_f32_e32 v43, v34
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v44, -v34, v43, 1.0
	v_fmac_f32_e32 v43, v44, v43
	v_div_scale_f32 v44, vcc_lo, v13, v33, v13
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v45, v44, v43
	v_fma_f32 v46, -v34, v45, v44
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v45, v46, v43
	v_fma_f32 v34, -v34, v45, v44
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v34, v34, v43, v45
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v15
	v_cndmask_b32_e64 v15, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v26, 0, 0xffffffc0, vcc_lo
	v_fmac_f32_e32 v15, 0xbfb8aa3b, v12
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_exp_f32_e32 v15, v15
	v_ldexp_f32 v15, v15, v26
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 385 34                        ; generate_amdgcn.py:385:34
	v_add_f32_e32 v15, 1.0, v15
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v26, null, v15, v15, v12
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v29, v26
	.loc	1 373 13 is_stmt 1              ; generate_amdgcn.py:373:13
	s_waitcnt vmcnt(5)
	v_dual_add_f32 v149, v181, v67 :: v_dual_add_f32 v152, v180, v65
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v43, -v26, v29, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v29, v43, v29
	v_div_scale_f32 v43, vcc_lo, v12, v15, v12
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	s_waitcnt vmcnt(2)
	v_add_f32_e32 v241, v76, v243
	.loc	1 390 18                        ; generate_amdgcn.py:390:18
	v_mul_lo_u32 v243, s15, v94
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_mul_f32_e32 v44, v43, v29
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v45, -v26, v44, v43
	v_fmac_f32_e32 v44, v45, v29
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v26, -v26, v44, v43
	v_div_fmas_f32 v26, v26, v29, v44
	.loc	1 385 40 is_stmt 0              ; generate_amdgcn.py:385:40
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v18
	v_cndmask_b32_e64 v18, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v29, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v18, 0xbfb8aa3b, v14
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v125, v34, v33, v13
	.loc	1 383 25 is_stmt 1              ; generate_amdgcn.py:383:25
	v_mul_f32_e32 v13, v39, v140
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_exp_f32_e32 v18, v18
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 383 13                        ; generate_amdgcn.py:383:13
	v_mul_f32_e32 v13, v16, v13
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_mul_f32_e32 v16, 0xbfb8aa3b, v13
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v18, v18, v29
	.loc	1 385 34 is_stmt 0              ; generate_amdgcn.py:385:34
	v_add_f32_e32 v18, 1.0, v18
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v29, null, v18, v18, v14
	v_rcp_f32_e32 v30, v29
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v31, -v29, v30, 1.0
	v_fmac_f32_e32 v30, v31, v30
	v_div_scale_f32 v31, vcc_lo, v14, v18, v14
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v43, v31, v30
	v_fma_f32 v44, -v29, v43, v31
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v43, v44, v30
	v_fma_f32 v29, -v29, v43, v31
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v29, v29, v30, v43
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v16
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v156, v29, v18, v14
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v16, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v30, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v16, 0xbfb8aa3b, v13
	v_exp_f32_e32 v16, v16
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v16, v16, v30
	.loc	1 385 34                        ; generate_amdgcn.py:385:34
	v_add_f32_e32 v16, 1.0, v16
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v146, v26, v15, v12
	.loc	1 383 25 is_stmt 1              ; generate_amdgcn.py:383:25
	v_mul_f32_e32 v12, v42, v140
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v30, null, v16, v16, v13
	.loc	1 383 13                        ; generate_amdgcn.py:383:13
	v_mul_f32_e32 v26, v19, v12
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_rcp_f32_e32 v31, v30
	.loc	1 385 40 is_stmt 0              ; generate_amdgcn.py:385:40
	v_mul_f32_e32 v12, 0xbfb8aa3b, v26
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v33, -v30, v31, 1.0
	v_fmac_f32_e32 v31, v33, v31
	v_div_scale_f32 v33, vcc_lo, v13, v16, v13
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v34, v33, v31
	v_fma_f32 v43, -v30, v34, v33
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v34, v43, v31
	v_fma_f32 v30, -v30, v34, v33
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v30, v30, v31, v34
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v12
	v_cndmask_b32_e64 v12, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v15, 0, 0xffffffc0, vcc_lo
	v_fmac_f32_e32 v12, 0xbfb8aa3b, v26
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_exp_f32_e32 v12, v12
	v_ldexp_f32 v12, v12, v15
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 385 34                        ; generate_amdgcn.py:385:34
	v_add_f32_e32 v31, 1.0, v12
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v12, null, v31, v31, v26
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v15, v12
	v_fma_f32 v19, -v12, v15, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v15, v19, v15
	v_div_scale_f32 v19, vcc_lo, v26, v31, v26
	v_mul_f32_e32 v33, v19, v15
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v34, -v12, v33, v19
	v_fmac_f32_e32 v33, v34, v15
	v_div_fixup_f32 v34, v30, v16, v13
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v12, -v12, v33, v19
	v_div_fmas_f32 v33, v12, v15, v33
	.loc	1 383 25 is_stmt 1              ; generate_amdgcn.py:383:25
	v_mul_f32_e32 v12, v41, v140
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 383 13 is_stmt 0              ; generate_amdgcn.py:383:13
	v_mul_f32_e32 v29, v17, v12
	.loc	1 385 40 is_stmt 1              ; generate_amdgcn.py:385:40
	v_mul_f32_e32 v12, 0xbfb8aa3b, v29
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v12
	v_cndmask_b32_e64 v12, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v14, 0, 0xffffffc0, vcc_lo
	v_fmac_f32_e32 v12, 0xbfb8aa3b, v29
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_exp_f32_e32 v12, v12
	v_ldexp_f32 v12, v12, v14
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 385 34 is_stmt 0              ; generate_amdgcn.py:385:34
	v_add_f32_e32 v43, 1.0, v12
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v12, null, v43, v43, v29
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v14, v12
	v_fma_f32 v15, -v12, v14, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v14, v15, v14
	v_div_scale_f32 v15, vcc_lo, v29, v43, v29
	v_mul_f32_e32 v17, v15, v14
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v18, -v12, v17, v15
	v_fmac_f32_e32 v17, v18, v14
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v12, -v12, v17, v15
	v_div_fmas_f32 v44, v12, v14, v17
	.loc	1 383 25 is_stmt 1              ; generate_amdgcn.py:383:25
	ds_load_b128 v[16:19], v24 offset:512
	ds_load_b128 v[12:15], v24 offset:528
	s_waitcnt lgkmcnt(1)
	v_mul_f32_e32 v24, v17, v140
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 383 13 is_stmt 0              ; generate_amdgcn.py:383:13
	v_mul_f32_e32 v24, v25, v24
	.loc	1 385 40 is_stmt 1              ; generate_amdgcn.py:385:40
	v_mul_f32_e32 v25, 0xbfb8aa3b, v24
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v25
	v_cndmask_b32_e64 v25, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v30, 0, 0xffffffc0, vcc_lo
	v_fmac_f32_e32 v25, 0xbfb8aa3b, v24
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_exp_f32_e32 v25, v25
	v_ldexp_f32 v25, v25, v30
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 385 34 is_stmt 0              ; generate_amdgcn.py:385:34
	v_add_f32_e32 v30, 1.0, v25
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v25, null, v30, v30, v24
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v45, v25
	v_fma_f32 v46, -v25, v45, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v45, v46, v45
	v_div_scale_f32 v46, vcc_lo, v24, v30, v24
	v_mul_f32_e32 v47, v46, v45
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v48, -v25, v47, v46
	v_fmac_f32_e32 v47, v48, v45
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v25, -v25, v47, v46
	v_div_fmas_f32 v45, v25, v45, v47
	v_div_fixup_f32 v25, v33, v31, v26
	.loc	1 383 25 is_stmt 1              ; generate_amdgcn.py:383:25
	v_mul_f32_e32 v26, v16, v140
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 383 13 is_stmt 0              ; generate_amdgcn.py:383:13
	v_mul_f32_e32 v26, v163, v26
	.loc	1 385 22 is_stmt 1              ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v163, v44, v43, v29
	.loc	1 383 25                        ; generate_amdgcn.py:383:25
	v_mul_f32_e32 v29, v19, v140
	.loc	1 383 13 is_stmt 0              ; generate_amdgcn.py:383:13
	v_mul_f32_e32 v29, v158, v29
	.loc	1 385 22 is_stmt 1              ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v158, v45, v30, v24
	.loc	1 383 25                        ; generate_amdgcn.py:383:25
	v_dual_mul_f32 v24, v18, v140 :: v_dual_mul_f32 v31, 0xbfb8aa3b, v26
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_dual_mul_f32 v43, 0xbfb8aa3b, v29 :: v_dual_mul_f32 v30, v148, v24
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v31
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_mul_f32_e32 v24, 0xbfb8aa3b, v30
	v_cndmask_b32_e64 v31, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v33, 0, 0xffffffc0, vcc_lo
	v_fmac_f32_e32 v31, 0xbfb8aa3b, v26
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_exp_f32_e32 v31, v31
	v_ldexp_f32 v31, v31, v33
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 385 34 is_stmt 0              ; generate_amdgcn.py:385:34
	v_add_f32_e32 v31, 1.0, v31
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v33, null, v31, v31, v26
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v46, v33
	v_fma_f32 v47, -v33, v46, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v46, v47, v46
	v_div_scale_f32 v47, vcc_lo, v26, v31, v26
	v_mul_f32_e32 v48, v47, v46
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v49, -v33, v48, v47
	v_fmac_f32_e32 v48, v49, v46
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v33, -v33, v48, v47
	v_div_fmas_f32 v33, v33, v46, v48
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v43
	v_cndmask_b32_e64 v43, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v44, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v43, 0xbfb8aa3b, v29
	v_exp_f32_e32 v43, v43
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v43, v43, v44
	.loc	1 385 34                        ; generate_amdgcn.py:385:34
	v_add_f32_e32 v43, 1.0, v43
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v44, null, v43, v43, v29
	v_rcp_f32_e32 v46, v44
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v47, -v44, v46, 1.0
	v_fmac_f32_e32 v46, v47, v46
	v_div_scale_f32 v47, vcc_lo, v29, v43, v29
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_mul_f32_e32 v48, v47, v46
	v_div_fixup_f32 v33, v33, v31, v26
	v_fma_f32 v49, -v44, v48, v47
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v48, v49, v46
	v_fma_f32 v44, -v44, v48, v47
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v44, v44, v46, v48
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v24
	v_cndmask_b32_e64 v24, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v45, 0, 0xffffffc0, vcc_lo
	v_fmac_f32_e32 v24, 0xbfb8aa3b, v30
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_exp_f32_e32 v24, v24
	v_ldexp_f32 v24, v24, v45
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 385 34                        ; generate_amdgcn.py:385:34
	v_add_f32_e32 v45, 1.0, v24
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v24, null, v45, v45, v30
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v46, v24
	v_fma_f32 v47, -v24, v46, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v46, v47, v46
	v_div_scale_f32 v47, vcc_lo, v30, v45, v30
	v_mul_f32_e32 v48, v47, v46
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v49, -v24, v48, v47
	v_fmac_f32_e32 v48, v49, v46
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v24, -v24, v48, v47
	v_div_fmas_f32 v46, v24, v46, v48
	.loc	1 383 25 is_stmt 1              ; generate_amdgcn.py:383:25
	s_waitcnt lgkmcnt(0)
	v_mul_f32_e32 v24, v13, v140
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 383 13 is_stmt 0              ; generate_amdgcn.py:383:13
	v_mul_f32_e32 v26, v147, v24
	.loc	1 385 40 is_stmt 1              ; generate_amdgcn.py:385:40
	v_mul_f32_e32 v24, 0xbfb8aa3b, v26
	.loc	1 385 22 is_stmt 0              ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v151, v46, v45, v30
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v24
	v_cndmask_b32_e64 v24, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v31, 0, 0xffffffc0, vcc_lo
	v_fmac_f32_e32 v24, 0xbfb8aa3b, v26
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_exp_f32_e32 v24, v24
	v_ldexp_f32 v24, v24, v31
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 385 34                        ; generate_amdgcn.py:385:34
	v_add_f32_e32 v31, 1.0, v24
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v24, null, v31, v31, v26
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v47, v24
	v_fma_f32 v48, -v24, v47, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v47, v48, v47
	v_div_scale_f32 v48, vcc_lo, v26, v31, v26
	v_mul_f32_e32 v49, v48, v47
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v50, -v24, v49, v48
	v_fmac_f32_e32 v49, v50, v47
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v24, -v24, v49, v48
	v_div_fmas_f32 v47, v24, v47, v49
	v_div_fixup_f32 v24, v44, v43, v29
	.loc	1 383 25 is_stmt 1              ; generate_amdgcn.py:383:25
	v_mul_f32_e32 v29, v12, v140
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 383 13 is_stmt 0              ; generate_amdgcn.py:383:13
	v_mul_f32_e32 v147, v144, v29
	.loc	1 385 40 is_stmt 1              ; generate_amdgcn.py:385:40
	v_mul_f32_e32 v29, 0xbfb8aa3b, v147
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v29
	v_cndmask_b32_e64 v29, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v43, 0, 0xffffffc0, vcc_lo
	v_fmac_f32_e32 v29, 0xbfb8aa3b, v147
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_exp_f32_e32 v29, v29
	v_ldexp_f32 v29, v29, v43
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 385 34 is_stmt 0              ; generate_amdgcn.py:385:34
	v_add_f32_e32 v148, 1.0, v29
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v29, null, v148, v148, v147
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v43, v29
	v_fma_f32 v44, -v29, v43, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v43, v44, v43
	v_div_scale_f32 v44, vcc_lo, v147, v148, v147
	v_mul_f32_e32 v48, v44, v43
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v49, -v29, v48, v44
	v_fmac_f32_e32 v48, v49, v43
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v29, -v29, v48, v44
	v_div_fmas_f32 v166, v29, v43, v48
	.loc	1 383 25 is_stmt 1              ; generate_amdgcn.py:383:25
	v_mul_f32_e32 v29, v15, v140
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 383 13 is_stmt 0              ; generate_amdgcn.py:383:13
	v_mul_f32_e32 v167, v142, v29
	.loc	1 385 22 is_stmt 1              ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v142, v47, v31, v26
	.loc	1 383 25                        ; generate_amdgcn.py:383:25
	v_mul_f32_e32 v26, v14, v140
	.loc	1 383 13 is_stmt 0              ; generate_amdgcn.py:383:13
	v_dual_mul_f32 v26, v141, v26 :: v_dual_mul_f32 v29, 0xbfb8aa3b, v167
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	.loc	1 385 40 is_stmt 1              ; generate_amdgcn.py:385:40
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v29
	v_cndmask_b32_e64 v29, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v30, 0, 0xffffffc0, vcc_lo
	v_fmac_f32_e32 v29, 0xbfb8aa3b, v167
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_exp_f32_e32 v29, v29
	v_ldexp_f32 v29, v29, v30
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 385 34 is_stmt 0              ; generate_amdgcn.py:385:34
	v_add_f32_e32 v168, 1.0, v29
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v29, null, v168, v168, v167
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v30, v29
	v_fma_f32 v43, -v29, v30, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v30, v43, v30
	v_div_scale_f32 v43, vcc_lo, v167, v168, v167
	v_mul_f32_e32 v44, v43, v30
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v45, -v29, v44, v43
	v_fmac_f32_e32 v44, v45, v30
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v29, -v29, v44, v43
	v_div_fmas_f32 v29, v29, v30, v44
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_mul_f32_e32 v30, 0xbfb8aa3b, v26
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v29, v29, v168, v167
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v30
	v_cndmask_b32_e64 v30, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v31, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v30, 0xbfb8aa3b, v26
	v_exp_f32_e32 v30, v30
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v30, v30, v31
	.loc	1 385 34                        ; generate_amdgcn.py:385:34
	v_add_f32_e32 v30, 1.0, v30
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v31, null, v30, v30, v26
	v_rcp_f32_e32 v43, v31
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v44, -v31, v43, 1.0
	v_fmac_f32_e32 v43, v44, v43
	v_div_scale_f32 v44, vcc_lo, v26, v30, v26
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v45, v44, v43
	v_fma_f32 v46, -v31, v45, v44
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v45, v46, v43
	v_fma_f32 v31, -v31, v45, v44
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v31, v31, v43, v45
	.loc	1 383 25 is_stmt 1              ; generate_amdgcn.py:383:25
	v_mul_f32_e32 v43, v36, v120
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v30, v31, v30, v26
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 383 13                        ; generate_amdgcn.py:383:13
	v_mul_f32_e32 v43, v145, v43
	.loc	1 380 16                        ; generate_amdgcn.py:380:16
	v_mul_f32_e32 v26, v21, v140
	v_mul_f32_e32 v31, v20, v140
	scratch_load_b64 v[144:145], off, off offset:72 ; 8-byte Folded Reload
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_mul_f32_e32 v44, 0xbfb8aa3b, v43
	.loc	1 380 9                         ; generate_amdgcn.py:380:9
	v_dual_mul_f32 v26, v55, v26 :: v_dual_mul_f32 v31, v32, v31
	.loc	1 380 16 is_stmt 0              ; generate_amdgcn.py:380:16
	v_mul_f32_e32 v32, v23, v140
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 385 40 is_stmt 1              ; generate_amdgcn.py:385:40
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v44
	.loc	1 385 15 is_stmt 0              ; generate_amdgcn.py:385:15
	v_dual_mul_f32 v26, v26, v123 :: v_dual_add_f32 v123, v239, v64
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v44, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v45, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v44, 0xbfb8aa3b, v43
	v_exp_f32_e32 v44, v44
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v44, v44, v45
	.loc	1 385 34                        ; generate_amdgcn.py:385:34
	v_add_f32_e32 v44, 1.0, v44
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v45, null, v44, v44, v43
	v_rcp_f32_e32 v46, v45
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v47, -v45, v46, 1.0
	v_fmac_f32_e32 v46, v47, v46
	v_div_scale_f32 v47, vcc_lo, v43, v44, v43
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v48, v47, v46
	v_fma_f32 v49, -v45, v48, v47
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v48, v49, v46
	v_fma_f32 v45, -v45, v48, v47
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_div_fmas_f32 v45, v45, v46, v48
	.loc	1 383 25 is_stmt 1              ; generate_amdgcn.py:383:25
	v_mul_f32_e32 v46, v35, v120
	.loc	1 383 13 is_stmt 0              ; generate_amdgcn.py:383:13
	v_mul_f32_e32 v46, v143, v46
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 385 22 is_stmt 1              ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v143, v45, v44, v43
	.loc	1 380 9                         ; generate_amdgcn.py:380:9
	v_mul_f32_e32 v43, v54, v32
	.loc	1 380 16 is_stmt 0              ; generate_amdgcn.py:380:16
	v_dual_mul_f32 v32, v22, v140 :: v_dual_mul_f32 v47, 0xbfb8aa3b, v46
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	.loc	1 385 40 is_stmt 1              ; generate_amdgcn.py:385:40
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v47
	v_cndmask_b32_e64 v47, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v48, 0, 0xffffffc0, vcc_lo
	v_fmac_f32_e32 v47, 0xbfb8aa3b, v46
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_exp_f32_e32 v47, v47
	v_ldexp_f32 v47, v47, v48
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 385 34 is_stmt 0              ; generate_amdgcn.py:385:34
	v_add_f32_e32 v47, 1.0, v47
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v48, null, v47, v47, v46
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v49, v48
	v_fma_f32 v50, -v48, v49, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v49, v50, v49
	v_div_scale_f32 v50, vcc_lo, v46, v47, v46
	v_mul_f32_e32 v51, v50, v49
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v52, -v48, v51, v50
	v_fmac_f32_e32 v51, v52, v49
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v48, -v48, v51, v50
	v_div_fmas_f32 v48, v48, v49, v51
	v_div_fixup_f32 v49, v166, v148, v147
	.loc	1 383 25 is_stmt 1              ; generate_amdgcn.py:383:25
	v_mul_f32_e32 v58, v40, v120
	.loc	1 380 9                         ; generate_amdgcn.py:380:9
	v_mul_f32_e32 v44, v53, v32
	.loc	1 380 16 is_stmt 0              ; generate_amdgcn.py:380:16
	v_mul_f32_e32 v32, v9, v140
	.loc	1 385 22 is_stmt 1              ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v141, v48, v47, v46
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_add_f32_e32 v148, v98, v242
	v_dual_add_f32 v242, v90, v237 :: v_dual_add_f32 v237, v85, v150
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 380 9                         ; generate_amdgcn.py:380:9
	v_mul_f32_e32 v45, v154, v32
	.loc	1 380 16 is_stmt 0              ; generate_amdgcn.py:380:16
	v_mul_f32_e32 v32, v8, v140
	.loc	1 380 9                         ; generate_amdgcn.py:380:9
	v_mul_f32_e32 v46, v153, v32
	.loc	1 380 16                        ; generate_amdgcn.py:380:16
	v_mul_f32_e32 v32, v11, v140
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 380 9                         ; generate_amdgcn.py:380:9
	v_mul_f32_e32 v47, v138, v32
	.loc	1 380 16                        ; generate_amdgcn.py:380:16
	v_mul_f32_e32 v32, v10, v140
	.loc	1 380 9                         ; generate_amdgcn.py:380:9
	v_mul_f32_e32 v48, v137, v32
	.loc	1 380 16                        ; generate_amdgcn.py:380:16
	v_mul_f32_e32 v32, v5, v140
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 380 9                         ; generate_amdgcn.py:380:9
	v_mul_f32_e32 v50, v139, v32
	.loc	1 380 16                        ; generate_amdgcn.py:380:16
	v_mul_f32_e32 v32, v4, v140
	.loc	1 380 9                         ; generate_amdgcn.py:380:9
	v_mul_f32_e32 v51, v129, v32
	.loc	1 380 16                        ; generate_amdgcn.py:380:16
	v_mul_f32_e32 v32, v7, v140
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 380 9                         ; generate_amdgcn.py:380:9
	v_mul_f32_e32 v52, v134, v32
	.loc	1 380 16                        ; generate_amdgcn.py:380:16
	v_mul_f32_e32 v32, v6, v140
	.loc	1 380 9                         ; generate_amdgcn.py:380:9
	v_mul_f32_e32 v53, v130, v32
	.loc	1 380 16                        ; generate_amdgcn.py:380:16
	v_mul_f32_e32 v32, v193, v140
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 380 9                         ; generate_amdgcn.py:380:9
	v_mul_f32_e32 v54, v135, v32
	.loc	1 380 16                        ; generate_amdgcn.py:380:16
	v_mul_f32_e32 v32, v192, v140
	.loc	1 385 15 is_stmt 1              ; generate_amdgcn.py:385:15
	v_dual_mul_f32 v54, v54, v142 :: v_dual_mul_f32 v55, v133, v32
	.loc	1 380 16                        ; generate_amdgcn.py:380:16
	v_mul_f32_e32 v32, v195, v140
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 380 9 is_stmt 0               ; generate_amdgcn.py:380:9
	v_mul_f32_e32 v56, v132, v32
	.loc	1 380 16                        ; generate_amdgcn.py:380:16
	v_dual_mul_f32 v32, v194, v140 :: v_dual_mul_f32 v29, v56, v29
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 380 9                         ; generate_amdgcn.py:380:9
	v_mul_f32_e32 v57, v131, v32
	.loc	1 380 16                        ; generate_amdgcn.py:380:16
	v_mul_f32_e32 v32, v21, v120
	.loc	1 380 9                         ; generate_amdgcn.py:380:9
	v_mul_f32_e32 v140, v128, v32
	.loc	1 380 16                        ; generate_amdgcn.py:380:16
	v_mul_f32_e32 v32, v20, v120
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 380 9                         ; generate_amdgcn.py:380:9
	v_mul_f32_e32 v139, v136, v32
	.loc	1 383 25 is_stmt 1              ; generate_amdgcn.py:383:25
	v_mul_f32_e32 v32, v38, v120
	.loc	1 383 13 is_stmt 0              ; generate_amdgcn.py:383:13
	v_mul_f32_e32 v154, v96, v32
	.loc	1 383 25                        ; generate_amdgcn.py:383:25
	v_mul_f32_e32 v32, v37, v120
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 383 13                        ; generate_amdgcn.py:383:13
	v_mul_f32_e32 v157, v95, v32
	.loc	1 373 13 is_stmt 1              ; generate_amdgcn.py:373:13
	v_add_f32_e32 v95, v240, v66
	s_clause 0x1                            ; 12-byte Folded Reload
	scratch_load_b64 v[66:67], off, off offset:144
	scratch_load_b32 v0, off, off offset:228
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_dual_add_f32 v32, v250, v206 :: v_dual_mul_f32 v51, v51, v33
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v32, v250, v32, s2
	.loc	1 383 13                        ; generate_amdgcn.py:383:13
	v_mul_f32_e32 v153, v32, v58
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_mul_f32_e32 v32, 0xbfb8aa3b, v154
	.loc	1 385 15 is_stmt 0              ; generate_amdgcn.py:385:15
	v_dual_mul_f32 v44, v44, v146 :: v_dual_mul_f32 v43, v43, v125
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v125.h, 0
	v_mov_b16_e32 v125.l, v26.h
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v32
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cmp_o_f32_e64 s4, v44, v44
	v_cmp_o_f32_e64 s3, v43, v43
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v32, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v58, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_dual_fmac_f32 v32, 0xbfb8aa3b, v154 :: v_dual_mul_f32 v45, v45, v156
	v_exp_f32_e32 v32, v32
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	s_waitcnt vmcnt(2)
	v_add_f32_e32 v185, v144, v225
	v_dual_add_f32 v225, v91, v60 :: v_dual_add_f32 v186, v145, v211
	v_dual_add_f32 v211, v110, v232 :: v_dual_add_f32 v232, v101, v235
	v_dual_mov_b32 v235, v251 :: v_dual_mov_b32 v236, v252
	s_delay_alu instid0(TRANS32_DEP_1)
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_ldexp_f32 v32, v32, v58
	v_mul_f32_e32 v58, 0xbfb8aa3b, v157
	.loc	1 385 15 is_stmt 0              ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v25, v47, v25
	v_mul_f32_e32 v47, v48, v163
	v_dual_mul_f32 v31, v31, v124 :: v_dual_mul_f32 v46, v46, v34
	.loc	1 373 13 is_stmt 1              ; generate_amdgcn.py:373:13
	v_add_f32_e32 v124, v165, v63
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_and_b32_e32 v34, 1, v125
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v58
	.loc	1 385 34 is_stmt 0              ; generate_amdgcn.py:385:34
	v_add_f32_e32 v96, 1.0, v32
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v125.l, v43.h
	v_cmp_o_f32_e64 s1, v31, v31
	v_add3_u32 v48, v26, v34, 0x7fff
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v58, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v59, 0, 0xffffffc0, vcc_lo
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cmp_o_f32_e32 vcc_lo, v26, v26
	v_and_b32_e32 v33, 1, v125
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v168, null, v96, v96, v154
	.loc	1 385 40 is_stmt 0              ; generate_amdgcn.py:385:40
	v_fmac_f32_e32 v58, 0xbfb8aa3b, v157
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v125.l, v45.h
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_add3_u32 v33, v43, v33, 0x7fff
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_rcp_f32_e32 v128, v168
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cndmask_b16 v43.h, 0x7fff, v48.h, vcc_lo
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_exp_f32_e32 v58, v58
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_and_b32_e32 v60, 1, v125
	v_mov_b16_e32 v125.l, v25.h
	v_cmp_o_f32_e64 s6, v45, v45
	v_cmp_o_f32_e64 s5, v46, v46
	v_cmp_o_f32_e32 vcc_lo, v47, v47
	v_add3_u32 v45, v45, v60, 0x7fff
	v_mov_b16_e32 v60.h, v125.h
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v32, -v168, v128, 1.0
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 385 40 is_stmt 0              ; generate_amdgcn.py:385:40
	v_ldexp_f32 v58, v58, v59
	.loc	1 375 17 is_stmt 1              ; generate_amdgcn.py:375:17
	v_add_f32_e32 v59, v28, v224
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fmac_f32_e32 v128, v32, v128
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 385 34 is_stmt 0              ; generate_amdgcn.py:385:34
	v_dual_add_f32 v32, 1.0, v58 :: v_dual_mul_f32 v49, v55, v49
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_and_b32_e32 v55, 1, v125
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v132, null, v32, v32, v157
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cmp_o_f32_e64 s8, v49, v49
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_rcp_f32_e32 v130, v132
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v58, -v132, v130, 1.0
	v_fmac_f32_e32 v130, v58, v130
	.loc	1 385 15 is_stmt 0              ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v30, v57, v30
	.loc	1 380 16 is_stmt 1              ; generate_amdgcn.py:380:16
	v_mul_f32_e32 v57, v9, v120
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cmp_o_f32_e64 s7, v54, v54
	s_delay_alu instid0(VALU_DEP_3)
	v_mov_b16_e32 v60.l, v30.h
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v138, v67, v0
	scratch_load_b32 v0, off, off offset:216 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v146, v66, v0
	s_clause 0x1                            ; 12-byte Folded Reload
	scratch_load_b64 v[64:65], off, off offset:120
	scratch_load_b32 v0, off, off offset:220
	s_waitcnt vmcnt(0)
	v_dual_add_f32 v34, v164, v62 :: v_dual_add_f32 v135, v65, v0
	s_clause 0x1                            ; 12-byte Folded Reload
	scratch_load_b64 v[62:63], off, off offset:112
	scratch_load_b32 v0, off, off offset:236
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v34, v164, v34, s2
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v133, v63, v0
	scratch_load_b32 v0, off, off offset:224 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v134, v62, v0
	s_clause 0x1                            ; 12-byte Folded Reload
	scratch_load_b64 v[221:222], off, off offset:96
	scratch_load_b32 v0, off, off offset:244
	v_add_f32_e32 v136, v64, v70
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	scratch_store_b32 off, v59, off offset:244 ; 4-byte Folded Spill
	v_add_f32_e32 v59, v27, v248
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	scratch_store_b32 off, v59, off offset:224 ; 4-byte Folded Spill
	.loc	1 300 32                        ; generate_amdgcn.py:300:32
	v_lshrrev_b32_e32 v59, 1, v160
	.loc	1 390 18                        ; generate_amdgcn.py:390:18
	v_lshl_add_u32 v160, s15, 4, v243
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v129, v222, v0
	scratch_load_b32 v0, off, off offset:232 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v131, v221, v0
	s_clause 0x1                            ; 12-byte Folded Reload
	scratch_load_b64 v[219:220], off, off offset:88
	scratch_load_b32 v0, off, off offset:260
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v75, v220, v0
	scratch_load_b32 v0, off, off offset:248 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v26, v219, v0
	scratch_load_b32 v0, off, off offset:252 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v207, v252, v0
	scratch_load_b32 v0, off, off offset:240 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v208, v251, v0
	scratch_load_b32 v0, off, off offset:268 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v182, v254, v0
	scratch_load_b32 v0, off, off offset:256 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v206, v253, v0
	scratch_load_b32 v0, off, off offset:276 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v178, v114, v0
	scratch_load_b32 v0, off, off offset:264 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v179, v113, v0
	scratch_load_b32 v0, off, off offset:292 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v156, v112, v0
	scratch_load_b32 v0, off, off offset:280 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v78, v111, v0
	scratch_load_b32 v0, off, off offset:284 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v74, v106, v0
	scratch_load_b32 v0, off, off offset:272 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v3, v105, v0
	scratch_load_b32 v0, off, off offset:300 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v147, v104, v0
	scratch_load_b32 v0, off, off offset:288 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v137, v103, v0
	scratch_load_b32 v0, off, off offset:308 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v190, v100, v0
	scratch_load_b32 v0, off, off offset:296 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v163, v99, v0
	scratch_load_b32 v0, off, off offset:316 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v196, v93, v0
	scratch_load_b32 v0, off, off offset:312 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_dual_add_f32 v191, v92, v0 :: v_dual_add_f32 v0, v89, v230
	scratch_store_b32 off, v0, off offset:248 ; 4-byte Folded Spill
	scratch_load_b32 v0, off, off offset:304 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v255, v88, v0
	scratch_load_b32 v0, off, off offset:324 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v0, v73, v0
	scratch_store_b32 off, v0, off offset:220 ; 4-byte Folded Spill
	v_add_f32_e32 v0, v72, v231
	scratch_load_b64 v[230:231], off, off offset:128 ; 8-byte Folded Reload
	scratch_store_b32 off, v0, off offset:240 ; 4-byte Folded Spill
	s_clause 0x1                            ; 12-byte Folded Reload
	scratch_load_b64 v[173:174], off, off
	scratch_load_b32 v0, off, off offset:332
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	s_waitcnt vmcnt(2)
	v_add_f32_e32 v205, v230, v229
	v_dual_add_f32 v209, v231, v201 :: v_dual_mul_f32 v50, v50, v158
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v0, v174, v0
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v125.l, v50.h
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	scratch_store_b32 off, v0, off offset:236 ; 4-byte Folded Spill
	scratch_load_b32 v0, off, off offset:320 ; 4-byte Folded Reload
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_and_b32_e32 v56, 1, v125
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v0, v173, v0
	scratch_store_b32 off, v0, off offset:216 ; 4-byte Folded Spill
	v_add_f32_e32 v0, v171, v199
	scratch_store_b32 off, v0, off offset:228 ; 4-byte Folded Spill
	scratch_load_b32 v0, off, off offset:336 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v0, v170, v0
	scratch_store_b32 off, v0, off offset:232 ; 4-byte Folded Spill
	s_clause 0x1                            ; 12-byte Folded Reload
	scratch_load_b64 v[166:167], off, off offset:16
	scratch_load_b32 v0, off, off offset:340
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v58, v167, v0
	scratch_load_b32 v0, off, off offset:328 ; 4-byte Folded Reload
	scratch_store_b32 off, v58, off offset:192 ; 4-byte Folded Spill
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v58, v166, v0
	v_mov_b32_e32 v0, v249
	scratch_load_b64 v[249:250], off, off offset:208 ; 8-byte Folded Reload
	scratch_store_b32 off, v58, off offset:200 ; 4-byte Folded Spill
	v_add_f32_e32 v58, v162, v200
	scratch_store_b32 off, v58, off offset:40 ; 4-byte Folded Spill
	v_add_f32_e32 v58, v161, v71
	scratch_load_b64 v[70:71], off, off offset:160 ; 8-byte Folded Reload
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_dual_add_f32 v200, v244, v68 :: v_dual_add_f32 v203, v245, v214
	v_add_f32_e32 v214, v177, v216
	scratch_store_b32 off, v58, off offset:80 ; 4-byte Folded Spill
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v58.h, v125.h
	v_mov_b16_e32 v58.l, v31.h
	.loc	1 390 18 is_stmt 0              ; generate_amdgcn.py:390:18
	v_mad_u64_u32 v[251:252], null, s15, 48, v[243:244]
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_and_b32_e32 v58, 1, v58
	v_add3_u32 v31, v31, v58, 0x7fff
	v_mov_b16_e32 v58.h, v125.h
	v_mov_b16_e32 v58.l, v44.h
	v_mov_b16_e32 v31.l, v51.h
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_cndmask_b16 v43.l, 0x7fff, v31.h, s1
	v_mov_b16_e32 v31.h, v125.h
	v_and_b32_e32 v58, 1, v58
	v_cmp_o_f32_e64 s1, v25, v25
	v_add3_u32 v25, v25, v55, 0x7fff
	.loc	1 385 15 is_stmt 1              ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v55, v139, v141
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_and_b32_e32 v31, 1, v31
	v_add3_u32 v44, v44, v58, 0x7fff
	v_mov_b16_e32 v58.h, v125.h
	v_mov_b16_e32 v58.l, v47.h
	v_cndmask_b16 v139.h, 0x7fff, v25.h, s1
	v_mov_b16_e32 v44.l, v55.h
	v_add3_u32 v31, v51, v31, 0x7fff
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	s_waitcnt vmcnt(1)
	v_dual_add_f32 v169, v250, v212 :: v_dual_add_f32 v212, v176, v69
	scratch_load_b64 v[68:69], off, off offset:104 ; 8-byte Folded Reload
	v_add_f32_e32 v210, v249, v210
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v202, v69, v228
	scratch_load_b64 v[228:229], off, off offset:64 ; 8-byte Folded Reload
	v_dual_add_f32 v199, v71, v218 :: v_dual_add_f32 v218, v70, v215
	scratch_load_b64 v[215:216], off, off offset:56 ; 8-byte Folded Reload
	v_add_f32_e32 v201, v68, v198
	s_waitcnt vmcnt(1)
	v_add_f32_e32 v198, v229, v226
	v_dual_add_f32 v226, v82, v122 :: v_dual_add_f32 v197, v228, v197
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v189, v216, v1
	scratch_load_b64 v[1:2], off, off offset:8 ; 8-byte Folded Reload
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v24, v52, v24
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v52.h, v125.h
	v_mov_b16_e32 v52.l, v46.h
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_add_f32_e32 v188, v215, v115
	.loc	1 390 18                        ; generate_amdgcn.py:390:18
	v_add3_u32 v122, s28, s14, v59
	.loc	1 390 9 is_stmt 0               ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v125.l, v24.h
	s_mov_b32 s14, s10
	v_and_b32_e32 v48, 1, v52
	.loc	1 385 15 is_stmt 1              ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v52, v53, v151
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v53.h, v125.h
	.loc	1 390 18 is_stmt 0              ; generate_amdgcn.py:390:18
	v_add_nc_u32_e32 v248, 0x80, v122
	v_lshl_add_u32 v151, s15, 5, v243
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_add3_u32 v46, v46, v48, 0x7fff
	v_mov_b16_e32 v48.h, v125.h
	v_mov_b16_e32 v48.l, v49.h
	v_mov_b16_e32 v53.l, v52.h
	v_cmp_o_f32_e64 s1, v52, v52
	s_mov_b32 s15, s11
	v_and_b32_e32 v48, 1, v48
	s_delay_alu instid0(VALU_DEP_1)
	v_add3_u32 v48, v49, v48, 0x7fff
	.loc	1 375 17 is_stmt 1              ; generate_amdgcn.py:375:17
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v158, v1, v246
	v_add_f32_e32 v246, v77, v247
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cndmask_b16 v247.h, 0x7fff, v33.h, s3
	v_cndmask_b16 v247.l, 0x7fff, v44.h, s4
	v_and_b32_e32 v33, 1, v58
	v_cmp_o_f32_e64 s4, v51, v51
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_add_f32_e32 v223, v2, v223
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v44.h, v125.h
	s_delay_alu instid0(VALU_DEP_4)
	v_add3_u32 v47, v47, v33, 0x7fff
	v_cndmask_b16 v33.h, 0x7fff, v45.h, s6
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v45, v140, v143
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cndmask_b16 v140.l, 0x7fff, v31.h, s4
	v_and_b32_e32 v31, 1, v125
	v_mov_b16_e32 v125.l, v54.h
	v_cmp_o_f32_e64 s6, v24, v24
	v_cndmask_b16 v139.l, 0x7fff, v47.h, vcc_lo
	v_cmp_o_f32_e32 vcc_lo, v50, v50
	v_add3_u32 v24, v24, v31, 0x7fff
	v_and_b32_e32 v31, 1, v125
	v_mov_b16_e32 v125.l, v29.h
	v_add3_u32 v50, v50, v56, 0x7fff
	v_cndmask_b16 v33.l, 0x7fff, v46.h, s5
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v46, s3, v154, v96, v154
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_and_b32_e32 v49, 1, v125
	v_mov_b16_e32 v125.l, v45.h
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v51, s5, v157, v32, v157
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cndmask_b16 v140.h, 0x7fff, v50.h, vcc_lo
	v_and_b32_e32 v50, 1, v60
	v_cndmask_b16 v141.h, 0x7fff, v24.h, s6
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_dual_mul_f32 v25, v46, v128 :: v_dual_and_b32 v24, 1, v125
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_and_b32_e32 v47, 1, v53
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_mul_f32_e32 v53, v51, v130
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cmp_o_f32_e32 vcc_lo, v29, v29
	v_cmp_o_f32_e64 s4, v30, v30
	v_cmp_o_f32_e64 s9, v45, v45
	v_add3_u32 v30, v30, v50, 0x7fff
	v_add3_u32 v29, v29, v49, 0x7fff
	v_add3_u32 v24, v45, v24, 0x7fff
	v_add3_u32 v47, v52, v47, 0x7fff
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v52, -v168, v25, v46
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_add3_u32 v31, v54, v31, 0x7fff
	v_cndmask_b16 v252.l, 0x7fff, v30.h, s4
	v_cndmask_b16 v252.h, 0x7fff, v29.h, vcc_lo
	v_cndmask_b16 v159.h, 0x7fff, v24.h, s9
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v24, -v132, v53, v51
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v29, v0, v172, s2
	.loc	1 383 25                        ; generate_amdgcn.py:383:25
	v_mul_f32_e32 v30, v39, v120
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fmac_f32_e32 v25, v52, v128
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cndmask_b16 v143.h, 0x7fff, v31.h, s7
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_mul_f32_e32 v31, 0xbfb8aa3b, v153
	.loc	1 385 22 is_stmt 0              ; generate_amdgcn.py:385:22
	v_fmac_f32_e32 v53, v24, v130
	.loc	1 383 13 is_stmt 1              ; generate_amdgcn.py:383:13
	v_mul_f32_e32 v24, v29, v30
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v46, -v168, v25, v46
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cndmask_b16 v141.l, 0x7fff, v47.h, s1
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cmp_gt_f32_e64 s1, 0xc2fc0000, v31
	.loc	1 385 22 is_stmt 0              ; generate_amdgcn.py:385:22
	v_fma_f32 v30, -v132, v53, v51
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_mul_f32_e32 v31, 0xbfb8aa3b, v24
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	s_mov_b32 vcc_lo, s3
	.loc	1 380 16 is_stmt 1              ; generate_amdgcn.py:380:16
	v_mul_f32_e32 v45, v22, v120
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fmas_f32 v25, v46, v128, v25
	s_mov_b32 vcc_lo, s5
	.loc	1 385 40 is_stmt 0              ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v29, 0, 0x42800000, s1
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fmas_f32 v30, v30, v130, v53
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v31
	.loc	1 380 16 is_stmt 1              ; generate_amdgcn.py:380:16
	v_mul_f32_e32 v46, v23, v120
	.loc	1 380 9 is_stmt 0               ; generate_amdgcn.py:380:9
	v_mul_f32_e32 v45, v127, v45
	.loc	1 385 40 is_stmt 1              ; generate_amdgcn.py:385:40
	v_fmac_f32_e32 v29, 0xbfb8aa3b, v153
	.loc	1 385 22 is_stmt 0              ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v30, v30, v32, v157
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v31, 0, 0x42800000, vcc_lo
	.loc	1 380 9 is_stmt 1               ; generate_amdgcn.py:380:9
	v_mul_f32_e32 v46, v126, v46
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v25, v25, v96, v154
	.loc	1 385 40 is_stmt 0              ; generate_amdgcn.py:385:40
	v_exp_f32_e32 v29, v29
	v_cndmask_b32_e64 v32, 0, 0xffffffc0, s1
	v_dual_fmac_f32 v31, 0xbfb8aa3b, v24 :: v_dual_mul_f32 v30, v45, v30
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v25, v46, v25
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v45, 0, 0xffffffc0, vcc_lo
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_and_b32_e32 v44, 1, v44
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_exp_f32_e32 v31, v31
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cmp_o_f32_e64 s1, v55, v55
	v_mov_b16_e32 v125.l, v25.h
	s_delay_alu instid0(TRANS32_DEP_2)
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_ldexp_f32 v29, v29, v32
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_add3_u32 v44, v55, v44, 0x7fff
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v53, v249, v210, s2
	.loc	1 383 25                        ; generate_amdgcn.py:383:25
	v_mul_f32_e32 v54, v41, v120
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cndmask_b16 v143.l, 0x7fff, v48.h, s8
	.loc	1 385 34                        ; generate_amdgcn.py:385:34
	v_add_f32_e32 v29, 1.0, v29
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cndmask_b16 v159.l, 0x7fff, v44.h, s1
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_ldexp_f32 v31, v31, v45
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_and_b32_e32 v45, 1, v125
	v_cmp_o_f32_e64 s1, v25, v25
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v46, null, v29, v29, v153
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 385 34 is_stmt 0              ; generate_amdgcn.py:385:34
	v_add_f32_e32 v31, 1.0, v31
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_add3_u32 v45, v25, v45, 0x7fff
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v47, v250, v169, s2
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_4) | instid1(VALU_DEP_3)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_rcp_f32_e32 v44, v46
	.loc	1 383 25                        ; generate_amdgcn.py:383:25
	v_mul_f32_e32 v48, v42, v120
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v25, null, v31, v31, v24
	.loc	1 383 13                        ; generate_amdgcn.py:383:13
	v_mul_f32_e32 v53, v53, v54
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v54, s4, v24, v31, v24
	v_rcp_f32_e32 v50, v25
	.loc	1 383 13                        ; generate_amdgcn.py:383:13
	v_mul_f32_e32 v47, v47, v48
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v51, v165, v124, s2
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v49, -v46, v44, 1.0
	.loc	1 380 16                        ; generate_amdgcn.py:380:16
	v_mul_f32_e32 v48, v8, v120
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v32.l, v30.h
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_dual_mul_f32 v52, 0xbfb8aa3b, v47 :: v_dual_mul_f32 v51, v51, v57
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	.loc	1 385 22 is_stmt 0              ; generate_amdgcn.py:385:22
	v_fmac_f32_e32 v44, v49, v44
	v_div_scale_f32 v49, vcc_lo, v153, v29, v153
	v_fma_f32 v55, -v25, v50, 1.0
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cmp_gt_f32_e64 s3, 0xc2fc0000, v52
	.loc	1 380 9 is_stmt 1               ; generate_amdgcn.py:380:9
	v_mul_f32_e32 v34, v34, v48
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_mul_f32_e32 v56, v49, v44
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v32.h, v125.h
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_dual_fmac_f32 v50, v55, v50 :: v_dual_mul_f32 v55, 0xbfb8aa3b, v53
	.loc	1 385 40 is_stmt 0              ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v52, 0, 0x42800000, s3
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v58, -v46, v56, v49
	v_dual_mul_f32 v59, v54, v50 :: v_dual_and_b32 v32, 1, v32
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cmp_gt_f32_e64 s5, 0xc2fc0000, v55
	v_fmac_f32_e32 v52, 0xbfb8aa3b, v47
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fmac_f32_e32 v56, v58, v44
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v58, 0, 0xffffffc0, s3
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v57, -v25, v59, v54
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v55, 0, 0x42800000, s5
	v_exp_f32_e32 v52, v52
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v46, -v46, v56, v49
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_add3_u32 v32, v30, v32, 0x7fff
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fmac_f32_e32 v59, v57, v50
	.loc	1 385 40 is_stmt 0              ; generate_amdgcn.py:385:40
	v_fmac_f32_e32 v55, 0xbfb8aa3b, v53
	v_mov_b32_e32 v165, v81
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fmas_f32 v44, v46, v44, v56
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v46, 0, 0xffffffc0, s5
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v25, -v25, v59, v54
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_exp_f32_e32 v49, v55
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	s_mov_b32 vcc_lo, s4
	v_div_fixup_f32 v29, v44, v29, v153
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_ldexp_f32 v48, v52, v58
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fmas_f32 v25, v25, v50, v59
	.loc	1 383 25 is_stmt 1              ; generate_amdgcn.py:383:25
	v_mul_f32_e32 v50, v17, v120
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cmp_o_f32_e32 vcc_lo, v30, v30
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_dual_mul_f32 v29, v51, v29 :: v_dual_add_f32 v48, 1.0, v48
	.loc	1 385 22 is_stmt 0              ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v24, v25, v31, v24
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_ldexp_f32 v44, v49, v46
	.loc	1 307 5 is_stmt 1               ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v49, v245, v203, s2
	v_mov_b32_e32 v164, v80
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v46, null, v48, v48, v47
	.loc	1 385 34 is_stmt 0              ; generate_amdgcn.py:385:34
	v_add_f32_e32 v25, 1.0, v44
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_dual_mul_f32 v24, v34, v24 :: v_dual_mul_f32 v49, v49, v50
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_rcp_f32_e32 v31, v46
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_cndmask_b16 v81.l, 0x7fff, v32.h, vcc_lo
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v34, null, v25, v25, v53
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v54, v244, v200, s2
	.loc	1 383 25                        ; generate_amdgcn.py:383:25
	v_mul_f32_e32 v55, v16, v120
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cndmask_b16 v81.h, 0x7fff, v45.h, s1
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_rcp_f32_e32 v44, v34
	v_div_scale_f32 v56, s1, v53, v25, v53
	s_delay_alu instid0(TRANS32_DEP_2)
	v_fma_f32 v32, -v46, v31, 1.0
	.loc	1 383 13                        ; generate_amdgcn.py:383:13
	v_mul_f32_e32 v54, v54, v55
	.loc	1 378 14                        ; generate_amdgcn.py:378:14
	v_lshlrev_b32_e32 v142, 16, v117
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v50, v239, v123, s2
	v_cndmask_b32_e64 v55, v240, v95, s2
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fmac_f32_e32 v31, v32, v31
	v_div_scale_f32 v32, vcc_lo, v47, v48, v47
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fma_f32 v51, -v34, v44, 1.0
	.loc	1 385 40 is_stmt 0              ; generate_amdgcn.py:385:40
	v_dual_mul_f32 v59, 0xbfb8aa3b, v54 :: v_dual_mul_f32 v60, v10, v120
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_mul_f32_e32 v52, v32, v31
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v125.l, v29.h
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_dual_fmac_f32 v44, v51, v44 :: v_dual_mul_f32 v51, 0xbfb8aa3b, v49
	.loc	1 385 40 is_stmt 0              ; generate_amdgcn.py:385:40
	v_cmp_gt_f32_e64 s4, 0xc2fc0000, v59
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v57, -v46, v52, v32
	.loc	1 380 9 is_stmt 1               ; generate_amdgcn.py:380:9
	v_mul_f32_e32 v50, v50, v60
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_mul_f32_e32 v58, v56, v44
	.loc	1 385 40 is_stmt 0              ; generate_amdgcn.py:385:40
	v_cmp_gt_f32_e64 s3, 0xc2fc0000, v51
	v_cndmask_b32_e64 v59, 0, 0x42800000, s4
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fmac_f32_e32 v52, v57, v31
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v30.l, v24.h
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v57, -v34, v58, v56
	.loc	1 385 40 is_stmt 0              ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v51, 0, 0x42800000, s3
	v_fmac_f32_e32 v59, 0xbfb8aa3b, v54
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v32, -v46, v52, v32
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v46, 0, 0xffffffc0, s3
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_dual_fmac_f32 v58, v57, v44 :: v_dual_fmac_f32 v51, 0xbfb8aa3b, v49
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v30.h, v125.h
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fmas_f32 v31, v32, v31, v52
	s_mov_b32 vcc_lo, s1
	s_delay_alu instid0(VALU_DEP_3)
	v_fma_f32 v32, -v34, v58, v56
	.loc	1 385 40 is_stmt 0              ; generate_amdgcn.py:385:40
	v_exp_f32_e32 v51, v51
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_and_b32_e32 v45, 1, v125
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v31, v31, v48, v47
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_and_b32_e32 v30, 1, v30
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fmas_f32 v32, v32, v44, v58
	.loc	1 380 9                         ; generate_amdgcn.py:380:9
	v_mul_f32_e32 v44, v55, v61
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v47.h, v125.h
	v_add3_u32 v45, v29, v45, 0x7fff
	v_cmp_o_f32_e32 vcc_lo, v29, v29
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v25, v32, v25, v53
	.loc	1 385 40 is_stmt 0              ; generate_amdgcn.py:385:40
	v_ldexp_f32 v34, v51, v46
	v_exp_f32_e32 v46, v59
	v_cndmask_b32_e64 v51, 0, 0xffffffc0, s4
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v31, v44, v31
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_dual_mul_f32 v25, v50, v25 :: v_dual_add_f32 v34, 1.0, v34
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_cmp_o_f32_e64 s1, v24, v24
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v50, v71, v199, s2
	.loc	1 380 16                        ; generate_amdgcn.py:380:16
	v_mul_f32_e32 v61, v7, v120
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v47.l, v25.h
	v_add3_u32 v30, v24, v30, 0x7fff
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_ldexp_f32 v32, v46, v51
	.loc	1 385 22 is_stmt 0              ; generate_amdgcn.py:385:22
	v_div_scale_f32 v46, null, v34, v34, v49
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_and_b32_e32 v29, 1, v47
	.loc	1 383 25                        ; generate_amdgcn.py:383:25
	v_mul_f32_e32 v51, v19, v120
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 385 34                        ; generate_amdgcn.py:385:34
	v_add_f32_e32 v32, 1.0, v32
	.loc	1 385 22 is_stmt 0              ; generate_amdgcn.py:385:22
	v_rcp_f32_e32 v44, v46
	v_dual_mov_b32 v154, v114 :: v_dual_mov_b32 v153, v113
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_cndmask_b16 v113.h, 0x7fff, v45.h, vcc_lo
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v48, null, v32, v32, v54
	v_div_scale_f32 v45, vcc_lo, v49, v34, v49
	.loc	1 383 13                        ; generate_amdgcn.py:383:13
	v_mul_f32_e32 v50, v50, v51
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_rcp_f32_e32 v24, v48
	s_delay_alu instid0(TRANS32_DEP_2)
	v_fma_f32 v47, -v46, v44, 1.0
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cndmask_b16 v113.l, 0x7fff, v30.h, s1
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v58, v70, v218, s2
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_mul_f32_e32 v57, 0xbfb8aa3b, v50
	.loc	1 383 25                        ; generate_amdgcn.py:383:25
	v_mul_f32_e32 v59, v18, v120
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fmac_f32_e32 v44, v47, v44
	v_mov_b32_e32 v95, v99
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v125.l, v31.h
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cmp_gt_f32_e64 s3, 0xc2fc0000, v57
	.loc	1 385 22 is_stmt 0              ; generate_amdgcn.py:385:22
	v_fma_f32 v47, -v48, v24, 1.0
	v_mul_f32_e32 v52, v45, v44
	.loc	1 383 13 is_stmt 1              ; generate_amdgcn.py:383:13
	v_mul_f32_e32 v58, v58, v59
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v53, v181, v149, s2
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v57, 0, 0x42800000, s3
	.loc	1 385 22 is_stmt 0              ; generate_amdgcn.py:385:22
	v_fmac_f32_e32 v24, v47, v24
	v_div_scale_f32 v47, s1, v54, v32, v54
	v_fma_f32 v55, -v46, v52, v45
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_dual_fmac_f32 v57, 0xbfb8aa3b, v50 :: v_dual_and_b32 v30, 1, v125
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_mul_f32_e32 v56, v47, v24
	v_mov_b32_e32 v70, v109
	s_delay_alu instid0(VALU_DEP_4)
	v_fmac_f32_e32 v52, v55, v44
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_add3_u32 v29, v25, v29, 0x7fff
	v_add3_u32 v30, v31, v30, 0x7fff
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v55, -v48, v56, v47
	v_mov_b32_e32 v71, v110
	v_fma_f32 v45, -v46, v52, v45
	.loc	1 385 40 is_stmt 0              ; generate_amdgcn.py:385:40
	v_mul_f32_e32 v46, 0xbfb8aa3b, v58
	.loc	1 307 5 is_stmt 1               ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v51, v180, v152, s2
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fmac_f32_e32 v56, v55, v24
	.loc	1 380 16                        ; generate_amdgcn.py:380:16
	v_mul_f32_e32 v59, v4, v120
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fmas_f32 v44, v45, v44, v52
	.loc	1 385 40 is_stmt 0              ; generate_amdgcn.py:385:40
	v_exp_f32_e32 v45, v57
	v_cmp_gt_f32_e64 s4, 0xc2fc0000, v46
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v47, -v48, v56, v47
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v48, 0, 0xffffffc0, s3
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	s_mov_b32 vcc_lo, s1
	v_div_fixup_f32 v34, v44, v34, v49
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v46, 0, 0x42800000, s4
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fmas_f32 v24, v47, v24, v56
	.loc	1 380 16 is_stmt 1              ; generate_amdgcn.py:380:16
	v_mul_f32_e32 v47, v5, v120
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v44, 0, 0xffffffc0, s4
	v_ldexp_f32 v45, v45, v48
	v_fmac_f32_e32 v46, 0xbfb8aa3b, v58
	.loc	1 385 22 is_stmt 0              ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v24, v24, v32, v54
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_cmp_o_f32_e32 vcc_lo, v31, v31
	.loc	1 383 25                        ; generate_amdgcn.py:383:25
	v_mul_f32_e32 v49, v13, v120
	.loc	1 385 34                        ; generate_amdgcn.py:385:34
	v_add_f32_e32 v45, 1.0, v45
	.loc	1 385 40 is_stmt 0              ; generate_amdgcn.py:385:40
	v_exp_f32_e32 v32, v46
	.loc	1 380 9 is_stmt 1               ; generate_amdgcn.py:380:9
	v_mul_f32_e32 v46, v53, v47
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cndmask_b16 v109.h, 0x7fff, v30.h, vcc_lo
	v_cmp_o_f32_e32 vcc_lo, v25, v25
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v47, null, v45, v45, v50
	.loc	1 380 9                         ; generate_amdgcn.py:380:9
	v_mul_f32_e32 v48, v51, v59
	.loc	1 383 25                        ; generate_amdgcn.py:383:25
	v_dual_mul_f32 v56, v12, v120 :: v_dual_mov_b32 v127, v93
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cndmask_b16 v109.l, 0x7fff, v29.h, vcc_lo
	s_delay_alu instid0(TRANS32_DEP_1)
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_ldexp_f32 v32, v32, v44
	.loc	1 385 22 is_stmt 0              ; generate_amdgcn.py:385:22
	v_rcp_f32_e32 v44, v47
	v_div_scale_f32 v51, vcc_lo, v50, v45, v50
	v_mov_b32_e32 v126, v92
	.loc	1 307 5 is_stmt 1               ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v92, v222, v129, s2
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v24, v48, v24
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v48, v66, v146, s2
	.loc	1 380 16                        ; generate_amdgcn.py:380:16
	v_mul_f32_e32 v53, v6, v120
	.loc	1 385 34                        ; generate_amdgcn.py:385:34
	v_add_f32_e32 v30, 1.0, v32
	v_mov_b32_e32 v124, v91
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 385 22 is_stmt 0              ; generate_amdgcn.py:385:22
	v_fma_f32 v29, -v47, v44, 1.0
	v_dual_mov_b32 v123, v90 :: v_dual_mul_f32 v48, v48, v53
	.loc	1 307 5 is_stmt 1               ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v53, v64, v136, s2
	v_cndmask_b32_e64 v91, v221, v131, s2
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_4) | instid1(VALU_DEP_4)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fmac_f32_e32 v44, v29, v44
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v29, v177, v214, s2
	v_mov_b32_e32 v131, v83
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v31, v46, v34
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v55, v176, v212, s2
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_dual_mul_f32 v54, v51, v44 :: v_dual_mul_f32 v29, v29, v49
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v52, v67, v138, s2
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v34.l, v24.h
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_4) | instid1(VALU_DEP_4)
	.loc	1 383 13                        ; generate_amdgcn.py:383:13
	v_mul_f32_e32 v55, v55, v56
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v34.h, v125.h
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_mul_f32_e32 v57, 0xbfb8aa3b, v29
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v125.l, v31.h
	v_mov_b32_e32 v66, v105
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_dual_mul_f32 v60, 0xbfb8aa3b, v55 :: v_dual_and_b32 v25, 1, v34
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_cmp_gt_f32_e64 s3, 0xc2fc0000, v57
	.loc	1 385 22 is_stmt 0              ; generate_amdgcn.py:385:22
	v_fma_f32 v57, -v47, v54, v51
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_and_b32_e32 v34, 1, v125
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cmp_gt_f32_e64 s4, 0xc2fc0000, v60
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_add3_u32 v25, v24, v25, 0x7fff
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v56, 0, 0x42800000, s3
	.loc	1 385 22 is_stmt 0              ; generate_amdgcn.py:385:22
	v_fmac_f32_e32 v54, v57, v44
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_add3_u32 v34, v31, v34, 0x7fff
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v60, 0, 0x42800000, s4
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_dual_mov_b32 v67, v106 :: v_dual_fmac_f32 v56, 0xbfb8aa3b, v29
	.loc	1 385 22 is_stmt 0              ; generate_amdgcn.py:385:22
	v_fma_f32 v47, -v47, v54, v51
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v51, 0, 0xffffffc0, s3
	s_delay_alu instid0(VALU_DEP_4)
	v_fmac_f32_e32 v60, 0xbfb8aa3b, v55
	v_mov_b32_e32 v96, v100
	v_exp_f32_e32 v56, v56
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fmas_f32 v44, v47, v44, v54
	.loc	1 307 5 is_stmt 1               ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v54, v65, v135, s2
	v_dual_mov_b32 v64, v103 :: v_dual_mov_b32 v65, v104
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v32, null, v30, v30, v58
	.loc	1 385 40 is_stmt 0              ; generate_amdgcn.py:385:40
	v_exp_f32_e32 v47, v60
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v44, v44, v45, v50
	.loc	1 383 25 is_stmt 1              ; generate_amdgcn.py:383:25
	v_mul_f32_e32 v50, v15, v120
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_rcp_f32_e32 v46, v32
	v_mov_b32_e32 v130, v82
	.loc	1 383 25                        ; generate_amdgcn.py:383:25
	v_mul_f32_e32 v80, v38, v142
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	scratch_load_b32 v0, off, off offset:248 ; 4-byte Folded Reload
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v49, -v32, v46, 1.0
	v_fmac_f32_e32 v46, v49, v46
	v_div_scale_f32 v49, s1, v58, v30, v58
	s_mov_b32 vcc_lo, s1
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cmp_o_f32_e64 s1, v24, v24
	v_mov_b16_e32 v24.h, v125.h
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_mul_f32_e32 v59, v49, v46
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cndmask_b16 v105.l, 0x7fff, v25.h, s1
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v57, -v32, v59, v49
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v59, v57, v46
	v_fma_f32 v32, -v32, v59, v49
	.loc	1 385 40 is_stmt 0              ; generate_amdgcn.py:385:40
	v_ldexp_f32 v49, v56, v51
	.loc	1 380 9 is_stmt 1               ; generate_amdgcn.py:380:9
	v_dual_mul_f32 v51, v52, v61 :: v_dual_mul_f32 v56, v14, v120
	.loc	1 380 16 is_stmt 0              ; generate_amdgcn.py:380:16
	v_mul_f32_e32 v61, v9, v187
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 385 22 is_stmt 1              ; generate_amdgcn.py:385:22
	v_div_fmas_f32 v32, v32, v46, v59
	.loc	1 385 40 is_stmt 0              ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v46, 0, 0xffffffc0, s4
	.loc	1 385 34                        ; generate_amdgcn.py:385:34
	v_dual_add_f32 v49, 1.0, v49 :: v_dual_mul_f32 v44, v51, v44
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_cmp_o_f32_e32 vcc_lo, v31, v31
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v30, v32, v30, v58
	.loc	1 385 40 is_stmt 0              ; generate_amdgcn.py:385:40
	v_ldexp_f32 v32, v47, v46
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v46, null, v49, v49, v29
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v125.l, v44.h
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v30, v48, v30
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 385 34 is_stmt 0              ; generate_amdgcn.py:385:34
	v_add_f32_e32 v32, 1.0, v32
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_rcp_f32_e32 v45, v46
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_cmp_o_f32_e64 s1, v44, v44
	v_and_b32_e32 v25, 1, v125
	v_cndmask_b16 v105.h, 0x7fff, v34.h, vcc_lo
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v47, null, v32, v32, v55
	v_div_scale_f32 v34, vcc_lo, v29, v49, v29
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_add3_u32 v25, v44, v25, 0x7fff
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_rcp_f32_e32 v31, v47
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_4) | instid1(VALU_DEP_4)
	v_fma_f32 v48, -v46, v45, 1.0
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v24.l, v30.h
	.loc	1 380 16                        ; generate_amdgcn.py:380:16
	v_mul_f32_e32 v58, v192, v120
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cndmask_b16 v106.h, 0x7fff, v25.h, s1
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v25, v231, v209, s2
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_dual_fmac_f32 v45, v48, v45 :: v_dual_and_b32 v24, 1, v24
	.loc	1 380 16                        ; generate_amdgcn.py:380:16
	v_mul_f32_e32 v9, v9, v142
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v48, -v47, v31, 1.0
	v_dual_mul_f32 v44, v34, v45 :: v_dual_mul_f32 v25, v25, v50
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_add3_u32 v24, v30, v24, 0x7fff
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fmac_f32_e32 v31, v48, v31
	v_div_scale_f32 v48, s3, v55, v32, v55
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v51, -v46, v44, v34
	.loc	1 385 40 is_stmt 0              ; generate_amdgcn.py:385:40
	v_dual_mul_f32 v57, 0xbfb8aa3b, v25 :: v_dual_mul_f32 v52, v48, v31
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fmac_f32_e32 v44, v51, v45
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cmp_gt_f32_e64 s1, 0xc2fc0000, v57
	.loc	1 307 5 is_stmt 1               ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v51, v230, v205, s2
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v50, -v47, v52, v48
	v_fma_f32 v34, -v46, v44, v34
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 383 13                        ; generate_amdgcn.py:383:13
	v_mul_f32_e32 v46, v51, v56
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fmac_f32_e32 v52, v50, v31
	.loc	1 385 40 is_stmt 0              ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v50, 0, 0x42800000, s1
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fmas_f32 v34, v34, v45, v44
	s_mov_b32 vcc_lo, s3
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_mul_f32_e32 v45, 0xbfb8aa3b, v46
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v44, -v47, v52, v48
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_dual_fmac_f32 v50, 0xbfb8aa3b, v25 :: v_dual_mul_f32 v47, v193, v120
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v29, v34, v49, v29
	.loc	1 380 9 is_stmt 1               ; generate_amdgcn.py:380:9
	v_mul_f32_e32 v48, v53, v58
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fmas_f32 v31, v44, v31, v52
	.loc	1 385 40 is_stmt 0              ; generate_amdgcn.py:385:40
	v_exp_f32_e32 v44, v50
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v45
	.loc	1 380 9 is_stmt 1               ; generate_amdgcn.py:380:9
	v_mul_f32_e32 v47, v54, v47
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v52, v63, v133, s2
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v31, v31, v32, v55
	.loc	1 385 40 is_stmt 0              ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v32, 0, 0xffffffc0, s1
	v_cndmask_b32_e64 v45, 0, 0x42800000, vcc_lo
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_cmp_o_f32_e64 s1, v30, v30
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v29, v47, v29
	v_mul_f32_e32 v31, v48, v31
	.loc	1 385 40 is_stmt 0              ; generate_amdgcn.py:385:40
	v_ldexp_f32 v32, v44, v32
	v_fmac_f32_e32 v45, 0xbfb8aa3b, v46
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_cndmask_b16 v106.l, 0x7fff, v24.h, s1
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v47, v69, v202, s2
	.loc	1 383 25                        ; generate_amdgcn.py:383:25
	v_mul_f32_e32 v48, v36, v187
	.loc	1 385 34                        ; generate_amdgcn.py:385:34
	v_add_f32_e32 v32, 1.0, v32
	.loc	1 385 40 is_stmt 0              ; generate_amdgcn.py:385:40
	v_exp_f32_e32 v34, v45
	v_mov_b32_e32 v133, v98
	v_cndmask_b32_e64 v44, 0, 0xffffffc0, vcc_lo
	v_mov_b32_e32 v132, v97
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v45, null, v32, v32, v25
	.loc	1 383 13 is_stmt 1              ; generate_amdgcn.py:383:13
	v_mul_f32_e32 v98, v47, v48
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v53, v68, v201, s2
	.loc	1 383 25                        ; generate_amdgcn.py:383:25
	v_mul_f32_e32 v54, v35, v187
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_rcp_f32_e32 v24, v45
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v125.l, v29.h
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_ldexp_f32 v34, v34, v44
	.loc	1 385 22 is_stmt 0              ; generate_amdgcn.py:385:22
	v_div_scale_f32 v48, vcc_lo, v25, v32, v25
	.loc	1 383 13 is_stmt 1              ; generate_amdgcn.py:383:13
	v_dual_mul_f32 v99, v53, v54 :: v_dual_and_b32 v44, 1, v125
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(TRANS32_DEP_1)
	.loc	1 385 34                        ; generate_amdgcn.py:385:34
	v_add_f32_e32 v34, 1.0, v34
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cmp_o_f32_e64 s1, v29, v29
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v49, v62, v134, s2
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v50, -v45, v24, 1.0
	.loc	1 385 40 is_stmt 0              ; generate_amdgcn.py:385:40
	v_mul_f32_e32 v54, 0xbfb8aa3b, v99
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_add3_u32 v44, v29, v44, 0x7fff
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v29, null, v34, v34, v46
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v24, v50, v24
	.loc	1 385 40 is_stmt 0              ; generate_amdgcn.py:385:40
	v_mul_f32_e32 v50, 0xbfb8aa3b, v98
	v_cmp_gt_f32_e64 s5, 0xc2fc0000, v54
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_rcp_f32_e32 v51, v29
	.loc	1 380 16 is_stmt 1              ; generate_amdgcn.py:380:16
	v_mul_f32_e32 v47, v194, v120
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_mul_f32_e32 v56, v48, v24
	.loc	1 385 40 is_stmt 0              ; generate_amdgcn.py:385:40
	v_cmp_gt_f32_e64 s3, 0xc2fc0000, v50
	v_cndmask_b32_e64 v54, 0, 0x42800000, s5
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v53, s4, v46, v34, v46
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v57, -v45, v56, v48
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v50, 0, 0x42800000, s3
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_fmac_f32_e32 v54, 0xbfb8aa3b, v99
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v55, -v29, v51, 1.0
	.loc	1 380 9 is_stmt 1               ; generate_amdgcn.py:380:9
	v_mul_f32_e32 v47, v49, v47
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fmac_f32_e32 v56, v57, v24
	.loc	1 385 40 is_stmt 0              ; generate_amdgcn.py:385:40
	v_fmac_f32_e32 v50, 0xbfb8aa3b, v98
	v_cndmask_b32_e64 v57, 0, 0xffffffc0, s3
	v_exp_f32_e32 v49, v54
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fmac_f32_e32 v51, v55, v51
	v_fma_f32 v45, -v45, v56, v48
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_exp_f32_e32 v50, v50
	v_dual_mov_b32 v62, v101 :: v_dual_mul_f32 v55, v195, v120
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_mul_f32_e32 v58, v53, v51
	v_div_fmas_f32 v24, v45, v24, v56
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v45, 0, 0xffffffc0, s5
	v_dual_mov_b32 v63, v102 :: v_dual_mov_b32 v68, v107
	.loc	1 380 9 is_stmt 1               ; generate_amdgcn.py:380:9
	v_mul_f32_e32 v52, v52, v55
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v24, v24, v32, v25
	.loc	1 385 40 is_stmt 0              ; generate_amdgcn.py:385:40
	v_ldexp_f32 v48, v50, v57
	v_ldexp_f32 v25, v49, v45
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v55, -v29, v58, v53
	v_mov_b32_e32 v69, v108
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_dual_mov_b32 v135, v112 :: v_dual_add_f32 v102, 1.0, v48
	.loc	1 385 34                        ; generate_amdgcn.py:385:34
	v_add_f32_e32 v103, 1.0, v25
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v30.l, v31.h
	v_mov_b16_e32 v30.h, v125.h
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fmac_f32_e32 v58, v55, v51
	v_div_scale_f32 v108, null, v102, v102, v98
	v_mov_b32_e32 v134, v111
	v_div_scale_f32 v111, null, v103, v103, v99
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_rcp_f32_e32 v110, v108
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_and_b32_e32 v30, 1, v30
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v29, -v29, v58, v53
	v_rcp_f32_e32 v112, v111
	s_mov_b32 vcc_lo, s4
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cndmask_b16 v97.h, 0x7fff, v44.h, s1
	v_add3_u32 v30, v31, v30, 0x7fff
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fmas_f32 v29, v29, v51, v58
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cmp_o_f32_e32 vcc_lo, v31, v31
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v116, s1, v99, v103, v99
	v_fma_f32 v25, -v108, v110, 1.0
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_div_fixup_f32 v29, v29, v34, v46
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cndmask_b16 v97.l, 0x7fff, v30.h, vcc_lo
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v114, vcc_lo, v98, v102, v98
	v_fmac_f32_e32 v110, v25, v110
	v_fma_f32 v25, -v111, v112, 1.0
	.loc	1 385 15 is_stmt 0              ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v101, v47, v29
	.loc	1 307 5 is_stmt 1               ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v29, v229, v198, s2
	.loc	1 383 25                        ; generate_amdgcn.py:383:25
	v_mul_f32_e32 v30, v38, v187
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_dual_mul_f32 v115, v114, v110 :: v_dual_fmac_f32 v112, v25, v112
	.loc	1 385 15 is_stmt 0              ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v100, v52, v24
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v24.l, v101.h
	v_mov_b16_e32 v24.h, v125.h
	.loc	1 383 13                        ; generate_amdgcn.py:383:13
	v_mul_f32_e32 v94, v29, v30
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v25, v228, v197, s2
	.loc	1 383 25                        ; generate_amdgcn.py:383:25
	v_mul_f32_e32 v29, v37, v187
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v120, -v108, v115, v114
	v_mul_f32_e32 v118, v116, v112
	.loc	1 380 16                        ; generate_amdgcn.py:380:16
	v_dual_mul_f32 v31, v21, v187 :: v_dual_and_b32 v24, 1, v24
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 383 13                        ; generate_amdgcn.py:383:13
	v_mul_f32_e32 v93, v25, v29
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fmac_f32_e32 v115, v120, v110
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v25, -v111, v118, v116
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_add3_u32 v104, v101, v24, 0x7fff
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_dual_mul_f32 v24, 0xbfb8aa3b, v94 :: v_dual_mul_f32 v121, 0xbfb8aa3b, v93
	.loc	1 385 22 is_stmt 0              ; generate_amdgcn.py:385:22
	v_fma_f32 v32, -v108, v115, v114
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_dual_fmac_f32 v118, v25, v112 :: v_dual_mul_f32 v31, v92, v31
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v125.l, v100.h
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cmp_gt_f32_e64 s4, 0xc2fc0000, v121
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 385 22 is_stmt 0              ; generate_amdgcn.py:385:22
	v_div_fmas_f32 v32, v32, v110, v115
	v_fma_f32 v34, -v111, v118, v116
	v_mov_b32_e32 v111, v89
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cmp_gt_f32_e64 s3, 0xc2fc0000, v24
	v_cndmask_b32_e64 v30, 0, 0x42800000, s4
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	s_mov_b32 vcc_lo, s1
	v_div_fixup_f32 v32, v32, v102, v98
	.loc	1 380 16 is_stmt 1              ; generate_amdgcn.py:380:16
	v_mul_f32_e32 v24, v20, v187
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v119, 0, 0x42800000, s3
	v_cndmask_b32_e64 v25, 0, 0xffffffc0, s3
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_dual_fmac_f32 v30, 0xbfb8aa3b, v93 :: v_dual_mul_f32 v31, v31, v32
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_and_b32_e32 v107, 1, v125
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_dual_fmac_f32 v119, 0xbfb8aa3b, v94 :: v_dual_mul_f32 v24, v91, v24
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v49, v216, v189, s2
	.loc	1 383 25                        ; generate_amdgcn.py:383:25
	v_mul_f32_e32 v50, v40, v187
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cmp_o_f32_e64 s1, v101, v101
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_exp_f32_e32 v29, v119
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v56, v215, v188, s2
	.loc	1 383 25                        ; generate_amdgcn.py:383:25
	v_mul_f32_e32 v57, v39, v187
	.loc	1 383 13 is_stmt 0              ; generate_amdgcn.py:383:13
	v_mul_f32_e32 v49, v49, v50
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_cndmask_b16 v91.l, 0x7fff, v104.h, s1
	v_mov_b16_e32 v125.l, v31.h
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v50, v219, v26, s2
	.loc	1 383 13                        ; generate_amdgcn.py:383:13
	v_mul_f32_e32 v56, v56, v57
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_mul_f32_e32 v55, 0xbfb8aa3b, v49
	.loc	1 380 16                        ; generate_amdgcn.py:380:16
	v_mul_f32_e32 v57, v22, v187
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_ldexp_f32 v25, v29, v25
	v_exp_f32_e32 v29, v30
	.loc	1 385 22 is_stmt 0              ; generate_amdgcn.py:385:22
	v_div_fmas_f32 v30, v34, v112, v118
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v34, 0, 0xffffffc0, s4
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_cmp_o_f32_e32 vcc_lo, v100, v100
	.loc	1 385 34                        ; generate_amdgcn.py:385:34
	v_add_f32_e32 v25, 1.0, v25
	.loc	1 385 40 is_stmt 0              ; generate_amdgcn.py:385:40
	v_cmp_gt_f32_e64 s3, 0xc2fc0000, v55
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v30, v30, v103, v99
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v44.h, v125.h
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v52, v220, v75, s2
	.loc	1 383 25                        ; generate_amdgcn.py:383:25
	v_mul_f32_e32 v35, v35, v142
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_ldexp_f32 v29, v29, v34
	.loc	1 385 22 is_stmt 0              ; generate_amdgcn.py:385:22
	v_div_scale_f32 v34, null, v25, v25, v94
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v24, v24, v30
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_add3_u32 v30, v100, v107, 0x7fff
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 385 34                        ; generate_amdgcn.py:385:34
	v_add_f32_e32 v29, 1.0, v29
	.loc	1 385 22 is_stmt 0              ; generate_amdgcn.py:385:22
	v_rcp_f32_e32 v32, v34
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v55, 0, 0x42800000, s3
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v44.l, v24.h
	v_cndmask_b16 v91.h, 0x7fff, v30.h, vcc_lo
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v45, null, v29, v29, v93
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	.loc	1 385 40 is_stmt 0              ; generate_amdgcn.py:385:40
	v_fmac_f32_e32 v55, 0xbfb8aa3b, v49
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_and_b32_e32 v30, 1, v125
	v_mov_b32_e32 v108, v87
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_rcp_f32_e32 v46, v45
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_fma_f32 v47, -v34, v32, 1.0
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_and_b32_e32 v44, 1, v44
	v_add3_u32 v30, v31, v30, 0x7fff
	v_mov_b32_e32 v107, v86
	v_dual_mov_b32 v101, v85 :: v_dual_fmac_f32 v32, v47, v32
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v47, vcc_lo, v94, v25, v94
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_add3_u32 v44, v24, v44, 0x7fff
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v48, -v45, v46, 1.0
	v_dual_mov_b32 v100, v84 :: v_dual_mul_f32 v51, v47, v32
	.loc	1 380 16                        ; generate_amdgcn.py:380:16
	v_mul_f32_e32 v21, v21, v142
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_dual_mov_b32 v103, v73 :: v_dual_fmac_f32 v46, v48, v46
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v48, s1, v93, v29, v93
	v_fma_f32 v53, -v34, v51, v47
	.loc	1 380 16                        ; generate_amdgcn.py:380:16
	v_mul_f32_e32 v20, v20, v142
	v_mov_b32_e32 v86, v28
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_dual_mul_f32 v54, v48, v46 :: v_dual_mov_b32 v85, v27
	v_fmac_f32_e32 v51, v53, v32
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v28, v71, v211, s2
	.loc	1 383 25                        ; generate_amdgcn.py:383:25
	v_mul_f32_e32 v39, v39, v142
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v53, -v45, v54, v48
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v27, v70, v204, s2
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v34, -v34, v51, v47
	.loc	1 385 40 is_stmt 0              ; generate_amdgcn.py:385:40
	v_dual_mul_f32 v47, 0xbfb8aa3b, v56 :: v_dual_mov_b32 v110, v88
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_dual_fmac_f32 v54, v53, v46 :: v_dual_mul_f32 v53, v8, v187
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_div_fmas_f32 v32, v34, v32, v51
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_exp_f32_e32 v34, v55
	v_cmp_gt_f32_e64 s4, 0xc2fc0000, v47
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v45, -v45, v54, v48
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v48, 0, 0xffffffc0, s3
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	s_mov_b32 vcc_lo, s1
	v_div_fixup_f32 v25, v32, v25, v94
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v47, 0, 0x42800000, s4
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fmas_f32 v45, v45, v46, v54
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v32, 0, 0xffffffc0, s4
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_cmp_o_f32_e32 vcc_lo, v31, v31
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_ldexp_f32 v34, v34, v48
	v_fmac_f32_e32 v47, 0xbfb8aa3b, v56
	.loc	1 385 22 is_stmt 0              ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v29, v45, v29, v93
	.loc	1 380 9 is_stmt 1               ; generate_amdgcn.py:380:9
	v_mul_f32_e32 v48, v50, v57
	.loc	1 380 16 is_stmt 0              ; generate_amdgcn.py:380:16
	v_mul_f32_e32 v46, v23, v187
	.loc	1 385 34 is_stmt 1              ; generate_amdgcn.py:385:34
	v_add_f32_e32 v34, 1.0, v34
	.loc	1 385 40 is_stmt 0              ; generate_amdgcn.py:385:40
	v_exp_f32_e32 v45, v47
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_cndmask_b16 v87.h, 0x7fff, v30.h, vcc_lo
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v29, v48, v29
	.loc	1 380 9                         ; generate_amdgcn.py:380:9
	v_mul_f32_e32 v46, v52, v46
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v47, null, v34, v34, v49
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cmp_o_f32_e32 vcc_lo, v24, v24
	.loc	1 383 25                        ; generate_amdgcn.py:383:25
	v_mul_f32_e32 v50, v42, v187
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v25, v46, v25
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v55, v144, v185, s2
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_ldexp_f32 v31, v45, v32
	.loc	1 385 22 is_stmt 0              ; generate_amdgcn.py:385:22
	v_rcp_f32_e32 v45, v47
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v32.l, v29.h
	v_mov_b16_e32 v32.h, v125.h
	.loc	1 383 25                        ; generate_amdgcn.py:383:25
	v_mul_f32_e32 v57, v41, v187
	.loc	1 385 34                        ; generate_amdgcn.py:385:34
	v_add_f32_e32 v30, 1.0, v31
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cndmask_b16 v87.l, 0x7fff, v44.h, vcc_lo
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v51, vcc_lo, v49, v34, v49
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_and_b32_e32 v24, 1, v32
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v31, null, v30, v30, v56
	v_fma_f32 v32, -v47, v45, 1.0
	.loc	1 383 13                        ; generate_amdgcn.py:383:13
	v_mul_f32_e32 v55, v55, v57
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v52, v236, v207, s2
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_rcp_f32_e32 v46, v31
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v125.l, v25.h
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fmac_f32_e32 v45, v32, v45
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v32, v145, v186, s2
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_mul_f32_e32 v60, 0xbfb8aa3b, v55
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_add3_u32 v24, v29, v24, 0x7fff
	v_and_b32_e32 v44, 1, v125
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_mul_f32_e32 v54, v51, v45
	.loc	1 383 13                        ; generate_amdgcn.py:383:13
	v_mul_f32_e32 v32, v32, v50
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cmp_gt_f32_e64 s4, 0xc2fc0000, v60
	.loc	1 385 22 is_stmt 0              ; generate_amdgcn.py:385:22
	v_fma_f32 v50, -v31, v46, 1.0
	.loc	1 307 5 is_stmt 1               ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v48, v235, v208, s2
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_add3_u32 v44, v25, v44, 0x7fff
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_mul_f32_e32 v58, 0xbfb8aa3b, v32
	v_cndmask_b32_e64 v60, 0, 0x42800000, s4
	.loc	1 385 22 is_stmt 0              ; generate_amdgcn.py:385:22
	v_fmac_f32_e32 v46, v50, v46
	v_div_scale_f32 v50, s1, v56, v30, v56
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cmp_gt_f32_e64 s3, 0xc2fc0000, v58
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v58, -v47, v54, v51
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_dual_fmac_f32 v60, 0xbfb8aa3b, v55 :: v_dual_mul_f32 v59, v50, v46
	.loc	1 380 9 is_stmt 1               ; generate_amdgcn.py:380:9
	v_mul_f32_e32 v48, v48, v53
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v57, 0, 0x42800000, s3
	.loc	1 385 22 is_stmt 0              ; generate_amdgcn.py:385:22
	v_fmac_f32_e32 v54, v58, v45
	.loc	1 307 5 is_stmt 1               ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v53, v253, v206, s2
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v58, -v31, v59, v50
	.loc	1 380 16                        ; generate_amdgcn.py:380:16
	v_mul_f32_e32 v23, v23, v142
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_fmac_f32_e32 v57, 0xbfb8aa3b, v32
	.loc	1 385 22 is_stmt 0              ; generate_amdgcn.py:385:22
	v_fma_f32 v47, -v47, v54, v51
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v51, 0, 0xffffffc0, s3
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fmac_f32_e32 v59, v58, v46
	.loc	1 380 16 is_stmt 1              ; generate_amdgcn.py:380:16
	v_mul_f32_e32 v58, v10, v187
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_exp_f32_e32 v57, v57
	.loc	1 385 22 is_stmt 0              ; generate_amdgcn.py:385:22
	v_div_fmas_f32 v45, v47, v45, v54
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_exp_f32_e32 v47, v60
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v31, -v31, v59, v50
	s_mov_b32 vcc_lo, s1
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_cmp_o_f32_e64 s1, v29, v29
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v34, v45, v34, v49
	.loc	1 383 25                        ; generate_amdgcn.py:383:25
	v_mul_f32_e32 v49, v17, v187
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fmas_f32 v31, v31, v46, v59
	.loc	1 385 40 is_stmt 0              ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v46, 0, 0xffffffc0, s4
	v_ldexp_f32 v50, v57, v51
	.loc	1 380 9 is_stmt 1               ; generate_amdgcn.py:380:9
	v_mul_f32_e32 v51, v52, v61
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cndmask_b16 v83.l, 0x7fff, v24.h, s1
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v30, v31, v30, v56
	.loc	1 385 40 is_stmt 0              ; generate_amdgcn.py:385:40
	v_ldexp_f32 v31, v47, v46
	.loc	1 385 34                        ; generate_amdgcn.py:385:34
	v_add_f32_e32 v50, 1.0, v50
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v34, v51, v34
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_cmp_o_f32_e32 vcc_lo, v25, v25
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_dual_mul_f32 v30, v48, v30 :: v_dual_add_f32 v31, 1.0, v31
	.loc	1 385 22 is_stmt 0              ; generate_amdgcn.py:385:22
	v_div_scale_f32 v46, null, v50, v50, v32
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v125.l, v34.h
	v_cmp_o_f32_e64 s1, v34, v34
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v47, null, v31, v31, v55
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_rcp_f32_e32 v45, v46
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_and_b32_e32 v24, 1, v125
	v_cndmask_b16 v83.h, 0x7fff, v44.h, vcc_lo
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_rcp_f32_e32 v29, v47
	v_div_scale_f32 v44, vcc_lo, v32, v50, v32
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_add3_u32 v24, v34, v24, 0x7fff
	.loc	1 383 25                        ; generate_amdgcn.py:383:25
	v_mul_f32_e32 v56, v16, v187
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v25.l, v30.h
	v_mov_b16_e32 v25.h, v125.h
	s_delay_alu instid0(TRANS32_DEP_2)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v48, -v46, v45, 1.0
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cndmask_b16 v84.h, 0x7fff, v24.h, s1
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v24, v165, v184, s2
	v_cndmask_b32_e64 v54, v254, v182, s2
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_and_b32_e32 v25, 1, v25
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fmac_f32_e32 v45, v48, v45
	v_fma_f32 v48, -v47, v29, 1.0
	.loc	1 383 13                        ; generate_amdgcn.py:383:13
	v_mul_f32_e32 v24, v24, v49
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v61, v95, v163, s2
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_add3_u32 v25, v30, v25, 0x7fff
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_mul_f32_e32 v34, v44, v45
	v_fmac_f32_e32 v29, v48, v29
	v_div_scale_f32 v48, s3, v55, v31, v55
	.loc	1 385 40 is_stmt 0              ; generate_amdgcn.py:385:40
	v_mul_f32_e32 v57, 0xbfb8aa3b, v24
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v51, -v46, v34, v44
	.loc	1 380 9 is_stmt 1               ; generate_amdgcn.py:380:9
	v_mul_f32_e32 v20, v61, v20
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_dual_mul_f32 v52, v48, v29 :: v_dual_mov_b32 v89, v77
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 385 40 is_stmt 0              ; generate_amdgcn.py:385:40
	v_cmp_gt_f32_e64 s1, 0xc2fc0000, v57
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fmac_f32_e32 v34, v51, v45
	.loc	1 307 5 is_stmt 1               ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v51, v164, v183, s2
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v49, -v47, v52, v48
	v_mov_b32_e32 v88, v76
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v38, v126, v191, s2
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v44, -v46, v34, v44
	.loc	1 383 13                        ; generate_amdgcn.py:383:13
	v_mul_f32_e32 v46, v51, v56
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fmac_f32_e32 v52, v49, v29
	.loc	1 385 40 is_stmt 0              ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v49, 0, 0x42800000, s1
	.loc	1 380 16 is_stmt 1              ; generate_amdgcn.py:380:16
	v_mul_f32_e32 v8, v8, v142
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fmas_f32 v34, v44, v45, v34
	s_mov_b32 vcc_lo, s3
	v_fma_f32 v44, -v47, v52, v48
	.loc	1 385 40 is_stmt 0              ; generate_amdgcn.py:385:40
	v_fmac_f32_e32 v49, 0xbfb8aa3b, v24
	v_mul_f32_e32 v45, 0xbfb8aa3b, v46
	.loc	1 380 16 is_stmt 1              ; generate_amdgcn.py:380:16
	v_mul_f32_e32 v47, v11, v187
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v32, v34, v50, v32
	v_div_fmas_f32 v29, v44, v29, v52
	.loc	1 385 40 is_stmt 0              ; generate_amdgcn.py:385:40
	v_exp_f32_e32 v44, v49
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v45
	.loc	1 380 9 is_stmt 1               ; generate_amdgcn.py:380:9
	v_dual_mul_f32 v47, v54, v47 :: v_dual_mul_f32 v48, v53, v58
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v29, v29, v31, v55
	.loc	1 385 40 is_stmt 0              ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v31, 0, 0xffffffc0, s1
	v_cndmask_b32_e64 v45, 0, 0x42800000, vcc_lo
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_cmp_o_f32_e64 s1, v30, v30
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_dual_mul_f32 v30, v47, v32 :: v_dual_mul_f32 v55, v18, v187
	s_delay_alu instid0(TRANS32_DEP_1) | instid1(VALU_DEP_4)
	.loc	1 385 40 is_stmt 0              ; generate_amdgcn.py:385:40
	v_ldexp_f32 v31, v44, v31
	s_delay_alu instid0(VALU_DEP_4)
	v_fmac_f32_e32 v45, 0xbfb8aa3b, v46
	v_cndmask_b32_e64 v44, 0, 0xffffffc0, vcc_lo
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_cndmask_b16 v84.l, 0x7fff, v25.h, s1
	v_mov_b16_e32 v125.l, v30.h
	.loc	1 385 34                        ; generate_amdgcn.py:385:34
	v_add_f32_e32 v31, 1.0, v31
	.loc	1 385 40 is_stmt 0              ; generate_amdgcn.py:385:40
	v_exp_f32_e32 v34, v45
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_cmp_o_f32_e64 s1, v30, v30
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v52, v154, v178, s2
	.loc	1 380 16                        ; generate_amdgcn.py:380:16
	v_mul_f32_e32 v58, v5, v187
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v45, null, v31, v31, v24
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v47, v131, v79, s2
	v_cndmask_b32_e64 v49, v153, v179, s2
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 380 9                         ; generate_amdgcn.py:380:9
	v_mul_f32_e32 v52, v52, v58
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_rcp_f32_e32 v25, v45
	s_delay_alu instid0(TRANS32_DEP_2)
	.loc	1 385 40 is_stmt 0              ; generate_amdgcn.py:385:40
	v_ldexp_f32 v34, v34, v44
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_and_b32_e32 v44, 1, v125
	v_mov_b16_e32 v32.h, v125.h
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v79, v133, v148, s2
	.loc	1 380 16                        ; generate_amdgcn.py:380:16
	v_mul_f32_e32 v10, v10, v142
	.loc	1 385 34                        ; generate_amdgcn.py:385:34
	v_add_f32_e32 v34, 1.0, v34
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_add3_u32 v44, v30, v44, 0x7fff
	.loc	1 383 25                        ; generate_amdgcn.py:383:25
	v_mul_f32_e32 v17, v17, v142
	v_mul_f32_e32 v16, v16, v142
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v50, -v45, v25, 1.0
	v_div_scale_f32 v30, null, v34, v34, v46
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cndmask_b16 v75.h, 0x7fff, v44.h, s1
	.loc	1 383 25                        ; generate_amdgcn.py:383:25
	v_mul_f32_e32 v18, v18, v142
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_4) | instid1(VALU_DEP_3)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fmac_f32_e32 v25, v50, v25
	v_div_scale_f32 v50, vcc_lo, v24, v31, v24
	v_rcp_f32_e32 v51, v30
	.loc	1 380 16                        ; generate_amdgcn.py:380:16
	v_mul_f32_e32 v11, v11, v142
	v_mul_f32_e32 v5, v5, v142
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_mul_f32_e32 v57, v50, v25
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_fma_f32 v59, -v45, v57, v50
	v_fma_f32 v56, -v30, v51, 1.0
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v57, v59, v25
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v54, v130, v226, s2
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fmac_f32_e32 v51, v56, v51
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v45, -v45, v57, v50
	.loc	1 383 13                        ; generate_amdgcn.py:383:13
	v_mul_f32_e32 v54, v54, v55
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v55, s4, v46, v34, v46
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v25, v45, v25, v57
	s_mov_b32 vcc_lo, s4
	v_mul_f32_e32 v60, v55, v51
	.loc	1 385 40 is_stmt 0              ; generate_amdgcn.py:385:40
	v_mul_f32_e32 v56, 0xbfb8aa3b, v54
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v24, v25, v31, v24
	v_fma_f32 v58, -v30, v60, v55
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cmp_gt_f32_e64 s5, 0xc2fc0000, v56
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v24, v52, v24
	.loc	1 383 25 is_stmt 1              ; generate_amdgcn.py:383:25
	v_mul_f32_e32 v52, v12, v187
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fmac_f32_e32 v60, v58, v51
	.loc	1 385 40 is_stmt 0              ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v56, 0, 0x42800000, s5
	v_cndmask_b32_e64 v45, 0, 0xffffffc0, s5
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 380 16 is_stmt 1              ; generate_amdgcn.py:380:16
	v_dual_mul_f32 v58, v6, v187 :: v_dual_mul_f32 v27, v27, v52
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v30, -v30, v60, v55
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 385 40 is_stmt 0              ; generate_amdgcn.py:385:40
	v_fmac_f32_e32 v56, 0xbfb8aa3b, v54
	.loc	1 307 5 is_stmt 1               ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v52, v135, v156, s2
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v125.l, v24.h
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_mul_f32_e32 v57, 0xbfb8aa3b, v27
	.loc	1 385 22 is_stmt 0              ; generate_amdgcn.py:385:22
	v_div_fmas_f32 v30, v30, v51, v60
	.loc	1 307 5 is_stmt 1               ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v60, v96, v190, s2
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_exp_f32_e32 v50, v56
	.loc	1 383 25                        ; generate_amdgcn.py:383:25
	v_mul_f32_e32 v12, v12, v142
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cmp_gt_f32_e64 s4, 0xc2fc0000, v57
	.loc	1 385 22 is_stmt 0              ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v30, v30, v34, v46
	.loc	1 380 9 is_stmt 1               ; generate_amdgcn.py:380:9
	v_mul_f32_e32 v21, v60, v21
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_dual_mul_f32 v29, v48, v29 :: v_dual_mul_f32 v48, v19, v187
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	.loc	1 385 40 is_stmt 0              ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v57, 0, 0x42800000, s4
	.loc	1 383 25 is_stmt 1              ; generate_amdgcn.py:383:25
	v_dual_mul_f32 v19, v19, v142 :: v_dual_and_b32 v46, 1, v125
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_ldexp_f32 v25, v50, v45
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	.loc	1 383 13                        ; generate_amdgcn.py:383:13
	v_dual_mul_f32 v47, v47, v48 :: v_dual_mul_f32 v48, v4, v187
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v32.l, v29.h
	v_cmp_o_f32_e32 vcc_lo, v29, v29
	.loc	1 385 34                        ; generate_amdgcn.py:385:34
	v_add_f32_e32 v25, 1.0, v25
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 385 40 is_stmt 0              ; generate_amdgcn.py:385:40
	v_dual_mul_f32 v53, 0xbfb8aa3b, v47 :: v_dual_mul_f32 v48, v49, v48
	v_dual_fmac_f32 v57, 0xbfb8aa3b, v27 :: v_dual_and_b32 v32, 1, v32
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v44, null, v25, v25, v54
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cmp_gt_f32_e64 s3, 0xc2fc0000, v53
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v30, v48, v30
	.loc	1 383 25 is_stmt 1              ; generate_amdgcn.py:383:25
	v_mul_f32_e32 v48, v13, v187
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_rcp_f32_e32 v45, v44
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_add3_u32 v32, v29, v32, 0x7fff
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v53, 0, 0x42800000, s3
	v_cndmask_b32_e64 v59, 0, 0xffffffc0, s3
	.loc	1 383 13                        ; generate_amdgcn.py:383:13
	v_mul_f32_e32 v28, v28, v48
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v48, v134, v78, s2
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cndmask_b16 v75.l, 0x7fff, v32.h, vcc_lo
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_fmac_f32_e32 v53, 0xbfb8aa3b, v47
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v29.l, v30.h
	v_mov_b16_e32 v29.h, v125.h
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v50, -v44, v45, 1.0
	.loc	1 380 9                         ; generate_amdgcn.py:380:9
	v_mul_f32_e32 v48, v48, v58
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_exp_f32_e32 v53, v53
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_add3_u32 v46, v24, v46, 0x7fff
	v_and_b32_e32 v29, 1, v29
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_dual_fmac_f32 v45, v50, v45 :: v_dual_mul_f32 v50, 0xbfb8aa3b, v28
	.loc	1 380 16                        ; generate_amdgcn.py:380:16
	v_mul_f32_e32 v4, v4, v142
	v_mul_f32_e32 v6, v6, v142
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(TRANS32_DEP_1)
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_add3_u32 v29, v30, v29, 0x7fff
	.loc	1 383 25                        ; generate_amdgcn.py:383:25
	v_mul_f32_e32 v13, v13, v142
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cmp_gt_f32_e64 s3, 0xc2fc0000, v50
	v_ldexp_f32 v49, v53, v59
	.loc	1 385 22 is_stmt 0              ; generate_amdgcn.py:385:22
	v_div_scale_f32 v53, s1, v54, v25, v54
	.loc	1 380 16 is_stmt 1              ; generate_amdgcn.py:380:16
	v_mul_f32_e32 v59, v7, v187
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v50, 0, 0x42800000, s3
	.loc	1 385 34 is_stmt 0              ; generate_amdgcn.py:385:34
	v_add_f32_e32 v49, 1.0, v49
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_dual_mul_f32 v56, v53, v45 :: v_dual_mul_f32 v7, v7, v142
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_fmac_f32_e32 v50, 0xbfb8aa3b, v28
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v31, null, v49, v49, v47
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_exp_f32_e32 v50, v50
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_rcp_f32_e32 v34, v31
	v_fma_f32 v32, -v31, v34, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v34, v32, v34
	v_div_scale_f32 v32, vcc_lo, v47, v49, v47
	v_mul_f32_e32 v51, v32, v34
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v55, -v31, v51, v32
	v_fmac_f32_e32 v51, v55, v34
	v_fma_f32 v55, -v44, v56, v53
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v31, -v31, v51, v32
	v_fmac_f32_e32 v56, v55, v45
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v32, 0, 0xffffffc0, s3
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fmas_f32 v31, v31, v34, v51
	v_fma_f32 v34, -v44, v56, v53
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_ldexp_f32 v32, v50, v32
	v_exp_f32_e32 v44, v57
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	s_mov_b32 vcc_lo, s1
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v50, 0, 0xffffffc0, s4
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fmas_f32 v34, v34, v45, v56
	.loc	1 385 34                        ; generate_amdgcn.py:385:34
	v_dual_add_f32 v32, 1.0, v32 :: v_dual_mul_f32 v45, v52, v59
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v31, v31, v49, v47
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v47.h, v125.h
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v25, v34, v25, v54
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cmp_o_f32_e32 vcc_lo, v24, v24
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_ldexp_f32 v34, v44, v50
	.loc	1 385 22 is_stmt 0              ; generate_amdgcn.py:385:22
	v_div_scale_f32 v44, null, v32, v32, v28
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v25, v48, v25
	v_dual_mul_f32 v31, v45, v31 :: v_dual_add_f32 v34, 1.0, v34
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_rcp_f32_e32 v45, v44
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_cmp_o_f32_e64 s1, v30, v30
	v_mov_b16_e32 v47.l, v25.h
	v_cndmask_b16 v71.h, 0x7fff, v46.h, vcc_lo
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v48, null, v34, v34, v27
	v_div_scale_f32 v46, vcc_lo, v28, v32, v28
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_and_b32_e32 v30, 1, v47
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_rcp_f32_e32 v24, v48
	s_delay_alu instid0(TRANS32_DEP_2)
	v_fma_f32 v47, -v44, v45, 1.0
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v49, v69, v155, s2
	.loc	1 383 25                        ; generate_amdgcn.py:383:25
	v_mul_f32_e32 v50, v15, v187
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v56, v68, v234, s2
	.loc	1 383 25                        ; generate_amdgcn.py:383:25
	v_mul_f32_e32 v57, v14, v187
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fmac_f32_e32 v45, v47, v45
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cndmask_b16 v71.l, 0x7fff, v29.h, s1
	.loc	1 383 13                        ; generate_amdgcn.py:383:13
	v_mul_f32_e32 v49, v49, v50
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v125.l, v31.h
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v47, -v48, v24, 1.0
	v_mul_f32_e32 v51, v46, v45
	.loc	1 383 13                        ; generate_amdgcn.py:383:13
	v_mul_f32_e32 v56, v56, v57
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_mul_f32_e32 v55, 0xbfb8aa3b, v49
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v50, v66, v3, s2
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fmac_f32_e32 v24, v47, v24
	v_fma_f32 v53, -v44, v51, v46
	v_div_scale_f32 v47, s1, v27, v34, v27
	.loc	1 385 40 is_stmt 0              ; generate_amdgcn.py:385:40
	v_cmp_gt_f32_e64 s3, 0xc2fc0000, v55
	.loc	1 380 16 is_stmt 1              ; generate_amdgcn.py:380:16
	v_mul_f32_e32 v57, v192, v187
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_dual_fmac_f32 v51, v53, v45 :: v_dual_mul_f32 v54, v47, v24
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_and_b32_e32 v29, 1, v125
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v55, 0, 0x42800000, s3
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_add3_u32 v30, v25, v30, 0x7fff
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v44, -v44, v51, v46
	.loc	1 385 40 is_stmt 0              ; generate_amdgcn.py:385:40
	v_mul_f32_e32 v46, 0xbfb8aa3b, v56
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v53, -v48, v54, v47
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_fmac_f32_e32 v55, 0xbfb8aa3b, v49
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_add3_u32 v29, v31, v29, 0x7fff
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fmas_f32 v44, v44, v45, v51
	.loc	1 385 40 is_stmt 0              ; generate_amdgcn.py:385:40
	v_cmp_gt_f32_e64 s4, 0xc2fc0000, v46
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fmac_f32_e32 v54, v53, v24
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_exp_f32_e32 v45, v55
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	s_mov_b32 vcc_lo, s1
	v_div_fixup_f32 v28, v44, v32, v28
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v46, 0, 0x42800000, s4
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v47, -v48, v54, v47
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v48, 0, 0xffffffc0, s3
	v_cndmask_b32_e64 v32, 0, 0xffffffc0, s4
	.loc	1 307 5 is_stmt 1               ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v52, v67, v74, s2
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_fmac_f32_e32 v46, 0xbfb8aa3b, v56
	.loc	1 385 22 is_stmt 0              ; generate_amdgcn.py:385:22
	v_div_fmas_f32 v24, v47, v24, v54
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_ldexp_f32 v45, v45, v48
	.loc	1 380 9 is_stmt 1               ; generate_amdgcn.py:380:9
	v_mul_f32_e32 v48, v50, v57
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cmp_o_f32_e32 vcc_lo, v31, v31
	.loc	1 380 16                        ; generate_amdgcn.py:380:16
	v_mul_f32_e32 v47, v193, v187
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v24, v24, v34, v27
	.loc	1 385 40 is_stmt 0              ; generate_amdgcn.py:385:40
	v_exp_f32_e32 v27, v46
	.loc	1 385 34                        ; generate_amdgcn.py:385:34
	v_add_f32_e32 v45, 1.0, v45
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v31.h, v125.h
	v_cndmask_b16 v67.h, 0x7fff, v29.h, vcc_lo
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v24, v48, v24
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cmp_o_f32_e32 vcc_lo, v25, v25
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v44, null, v45, v45, v49
	.loc	1 380 9                         ; generate_amdgcn.py:380:9
	v_mul_f32_e32 v34, v52, v47
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v31.l, v24.h
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_ldexp_f32 v27, v27, v32
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 385 22 is_stmt 0              ; generate_amdgcn.py:385:22
	v_rcp_f32_e32 v32, v44
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_cndmask_b16 v67.l, 0x7fff, v30.h, vcc_lo
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_dual_mul_f32 v28, v34, v28 :: v_dual_and_b32 v25, 1, v31
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 385 34 is_stmt 0              ; generate_amdgcn.py:385:34
	v_add_f32_e32 v27, 1.0, v27
	.loc	1 307 5 is_stmt 1               ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v52, v62, v232, s2
	v_cndmask_b32_e64 v48, v65, v147, s2
	v_cndmask_b32_e64 v47, v64, v137, s2
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_add3_u32 v34, v24, v25, 0x7fff
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v29, null, v27, v27, v56
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_fma_f32 v30, -v44, v32, 1.0
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v25, v63, v233, s2
	.loc	1 383 13                        ; generate_amdgcn.py:383:13
	v_mul_f32_e32 v63, v52, v35
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_rcp_f32_e32 v46, v29
	.loc	1 380 16                        ; generate_amdgcn.py:380:16
	v_mul_f32_e32 v50, v194, v187
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fmac_f32_e32 v32, v30, v32
	.loc	1 383 25                        ; generate_amdgcn.py:383:25
	v_mul_f32_e32 v30, v36, v142
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v36, vcc_lo, v49, v45, v49
	.loc	1 385 40 is_stmt 0              ; generate_amdgcn.py:385:40
	v_mul_f32_e32 v54, 0xbfb8aa3b, v63
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_mov_b32 v102, v72 :: v_dual_mul_f32 v25, v25, v30
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_mul_f32_e32 v51, v36, v32
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v30, -v29, v46, 1.0
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cmp_gt_f32_e64 s4, 0xc2fc0000, v54
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v125.l, v28.h
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_mul_f32_e32 v53, 0xbfb8aa3b, v25
	.loc	1 385 22 is_stmt 0              ; generate_amdgcn.py:385:22
	v_fma_f32 v52, -v44, v51, v36
	v_fmac_f32_e32 v46, v30, v46
	v_div_scale_f32 v30, s1, v56, v27, v56
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cmp_gt_f32_e64 s3, 0xc2fc0000, v53
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fmac_f32_e32 v51, v52, v32
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v54, 0, 0x42800000, s4
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_mul_f32_e32 v53, v30, v46
	.loc	1 380 16 is_stmt 1              ; generate_amdgcn.py:380:16
	v_mul_f32_e32 v55, v195, v187
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v35, 0, 0x42800000, s3
	.loc	1 385 22 is_stmt 0              ; generate_amdgcn.py:385:22
	v_fma_f32 v36, -v44, v51, v36
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_fmac_f32_e32 v54, 0xbfb8aa3b, v63
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v52, -v29, v53, v30
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v44, 0, 0xffffffc0, s3
	v_fmac_f32_e32 v35, 0xbfb8aa3b, v25
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fmas_f32 v32, v36, v32, v51
	s_mov_b32 vcc_lo, s1
	v_fmac_f32_e32 v53, v52, v46
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v36, 0, 0xffffffc0, s4
	v_exp_f32_e32 v35, v35
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_and_b32_e32 v31, 1, v125
	v_cmp_o_f32_e64 s1, v24, v24
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v29, -v29, v53, v30
	.loc	1 385 40 is_stmt 0              ; generate_amdgcn.py:385:40
	v_exp_f32_e32 v30, v54
	.loc	1 307 5 is_stmt 1               ; generate_amdgcn.py:307:5
	s_waitcnt vmcnt(0)
	v_cndmask_b32_e64 v54, v111, v0, s2
	scratch_load_b32 v0, off, off offset:240 ; 4-byte Folded Reload
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_add3_u32 v31, v28, v31, 0x7fff
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fmas_f32 v29, v29, v46, v53
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cmp_o_f32_e32 vcc_lo, v28, v28
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_ldexp_f32 v35, v35, v44
	.loc	1 380 9                         ; generate_amdgcn.py:380:9
	v_mul_f32_e32 v44, v48, v55
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cndmask_b16 v24.l, 0x7fff, v34.h, s1
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v27, v29, v27, v56
	.loc	1 385 40 is_stmt 0              ; generate_amdgcn.py:385:40
	v_ldexp_f32 v29, v30, v36
	.loc	1 385 34                        ; generate_amdgcn.py:385:34
	v_add_f32_e32 v65, 1.0, v35
	.loc	1 380 9 is_stmt 1               ; generate_amdgcn.py:380:9
	v_mul_f32_e32 v35, v47, v50
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v30, v32, v45, v49
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cndmask_b16 v24.h, 0x7fff, v31.h, vcc_lo
	.loc	1 385 34                        ; generate_amdgcn.py:385:34
	v_add_f32_e32 v68, 1.0, v29
	.loc	1 385 22 is_stmt 0              ; generate_amdgcn.py:385:22
	v_div_scale_f32 v70, null, v65, v65, v25
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_dual_mul_f32 v64, v35, v27 :: v_dual_mul_f32 v69, v44, v30
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v74, null, v68, v68, v63
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_rcp_f32_e32 v72, v70
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v27.l, v64.h
	v_mov_b16_e32 v27.h, v125.h
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_rcp_f32_e32 v76, v74
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v125.l, v69.h
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v77, vcc_lo, v25, v65, v25
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_and_b32_e32 v27, 1, v27
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v26, s1, v63, v68, v63
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fma_f32 v28, -v70, v72, 1.0
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_and_b32_e32 v29, 1, v125
	v_add3_u32 v66, v64, v27, 0x7fff
	.loc	1 383 13                        ; generate_amdgcn.py:383:13
	v_mul_f32_e32 v27, v79, v80
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v30, v132, v227, s2
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fmac_f32_e32 v72, v28, v72
	v_fma_f32 v28, -v74, v76, 1.0
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_add3_u32 v73, v69, v29, 0x7fff
	.loc	1 383 25                        ; generate_amdgcn.py:383:25
	v_dual_mul_f32 v31, v37, v142 :: v_dual_mul_f32 v32, 0xbfb8aa3b, v27
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_mul_f32_e32 v78, v77, v72
	v_fmac_f32_e32 v76, v28, v76
	.loc	1 383 25                        ; generate_amdgcn.py:383:25
	v_mul_f32_e32 v14, v14, v142
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 383 13 is_stmt 0              ; generate_amdgcn.py:383:13
	v_mul_f32_e32 v30, v30, v31
	.loc	1 385 40 is_stmt 1              ; generate_amdgcn.py:385:40
	v_cmp_gt_f32_e64 s3, 0xc2fc0000, v32
	.loc	1 385 22 is_stmt 0              ; generate_amdgcn.py:385:22
	v_fma_f32 v28, -v70, v78, v77
	v_mul_f32_e32 v29, v26, v76
	.loc	1 383 25 is_stmt 1              ; generate_amdgcn.py:383:25
	v_mul_f32_e32 v37, v40, v142
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v46, v123, v242, s2
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v31, 0, 0x42800000, s3
	.loc	1 385 22 is_stmt 0              ; generate_amdgcn.py:385:22
	v_fmac_f32_e32 v78, v28, v72
	v_fma_f32 v28, -v74, v29, v26
	.loc	1 307 5 is_stmt 1               ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v45, v127, v196, s2
	.loc	1 380 16                        ; generate_amdgcn.py:380:16
	v_mul_f32_e32 v3, v195, v142
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_fmac_f32_e32 v31, 0xbfb8aa3b, v27
	.loc	1 385 22 is_stmt 0              ; generate_amdgcn.py:385:22
	v_fma_f32 v32, -v70, v78, v77
	v_dual_fmac_f32 v29, v28, v76 :: v_dual_mul_f32 v28, 0xbfb8aa3b, v30
	.loc	1 380 9 is_stmt 1               ; generate_amdgcn.py:380:9
	v_mul_f32_e32 v23, v45, v23
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_exp_f32_e32 v31, v31
	.loc	1 385 22 is_stmt 0              ; generate_amdgcn.py:385:22
	v_div_fmas_f32 v32, v32, v72, v78
	s_delay_alu instid0(VALU_DEP_3)
	v_fma_f32 v26, -v74, v29, v26
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cmp_gt_f32_e64 s4, 0xc2fc0000, v28
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	s_mov_b32 vcc_lo, s1
	.loc	1 307 5 is_stmt 1               ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v51, v107, v217, s2
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v25, v32, v65, v25
	v_div_fmas_f32 v26, v26, v76, v29
	.loc	1 385 40 is_stmt 0              ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v28, 0, 0x42800000, s4
	v_cndmask_b32_e64 v29, 0, 0xffffffc0, s3
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_cmp_o_f32_e32 vcc_lo, v69, v69
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v21, v21, v25
	.loc	1 385 22 is_stmt 0              ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v26, v26, v68, v63
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_fmac_f32_e32 v28, 0xbfb8aa3b, v30
	v_ldexp_f32 v25, v31, v29
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v29.h, v125.h
	v_mov_b16_e32 v125.l, v21.h
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v31, v20, v26
	.loc	1 385 40 is_stmt 0              ; generate_amdgcn.py:385:40
	v_exp_f32_e32 v28, v28
	.loc	1 385 34                        ; generate_amdgcn.py:385:34
	v_add_f32_e32 v26, 1.0, v25
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v25, 0, 0xffffffc0, s4
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_cndmask_b16 v20.h, 0x7fff, v73.h, vcc_lo
	v_mov_b16_e32 v29.l, v31.h
	v_cmp_o_f32_e32 vcc_lo, v64, v64
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v32, null, v26, v26, v27
	.loc	1 380 9                         ; generate_amdgcn.py:380:9
	v_mul_f32_e32 v9, v54, v9
	s_delay_alu instid0(TRANS32_DEP_1)
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_ldexp_f32 v25, v28, v25
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_and_b32_e32 v28, 1, v29
	v_and_b32_e32 v29, 1, v125
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_rcp_f32_e32 v34, v32
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cndmask_b16 v20.l, 0x7fff, v66.h, vcc_lo
	.loc	1 385 34                        ; generate_amdgcn.py:385:34
	v_add_f32_e32 v35, 1.0, v25
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v25, v124, v225, s2
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_add3_u32 v36, v21, v29, 0x7fff
	v_add3_u32 v28, v31, v28, 0x7fff
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v29, null, v35, v35, v30
	.loc	1 383 13                        ; generate_amdgcn.py:383:13
	v_mul_f32_e32 v25, v25, v37
	.loc	1 380 16                        ; generate_amdgcn.py:380:16
	v_mul_f32_e32 v37, v22, v142
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v40, -v32, v34, 1.0
	v_rcp_f32_e32 v44, v29
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 385 40 is_stmt 0              ; generate_amdgcn.py:385:40
	v_mul_f32_e32 v22, 0xbfb8aa3b, v25
	.loc	1 380 9 is_stmt 1               ; generate_amdgcn.py:380:9
	v_dual_mul_f32 v37, v38, v37 :: v_dual_fmac_f32 v34, v40, v34
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v40, vcc_lo, v27, v26, v27
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(TRANS32_DEP_1)
	.loc	1 385 40 is_stmt 0              ; generate_amdgcn.py:385:40
	v_cmp_gt_f32_e64 s1, 0xc2fc0000, v22
	.loc	1 383 13 is_stmt 1              ; generate_amdgcn.py:383:13
	v_mul_f32_e32 v22, v46, v39
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v39, s3, v30, v35, v30
	v_fma_f32 v47, -v29, v44, 1.0
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 385 40 is_stmt 0              ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v49, 0, 0x42800000, s1
	v_mul_f32_e32 v46, 0xbfb8aa3b, v22
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_mul_f32_e32 v48, v40, v34
	.loc	1 307 5 is_stmt 1               ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v53, v110, v255, s2
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_dual_fmac_f32 v44, v47, v44 :: v_dual_fmac_f32 v49, 0xbfb8aa3b, v25
	.loc	1 385 40 is_stmt 0              ; generate_amdgcn.py:385:40
	v_cmp_gt_f32_e64 s4, 0xc2fc0000, v46
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v47, -v32, v48, v40
	.loc	1 380 9 is_stmt 1               ; generate_amdgcn.py:380:9
	v_mul_f32_e32 v8, v53, v8
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_mul_f32_e32 v50, v39, v44
	.loc	1 385 40 is_stmt 0              ; generate_amdgcn.py:385:40
	v_exp_f32_e32 v49, v49
	v_cndmask_b32_e64 v46, 0, 0x42800000, s4
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fmac_f32_e32 v48, v47, v34
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v47, 0, 0xffffffc0, s1
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v45, -v29, v50, v39
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_cmp_o_f32_e64 s1, v31, v31
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_fmac_f32_e32 v46, 0xbfb8aa3b, v22
	.loc	1 385 22 is_stmt 0              ; generate_amdgcn.py:385:22
	v_fma_f32 v32, -v32, v48, v40
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_fmac_f32_e32 v50, v45, v44
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_ldexp_f32 v38, v49, v47
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_exp_f32_e32 v40, v46
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fmas_f32 v34, v32, v34, v48
	s_mov_b32 vcc_lo, s3
	v_fma_f32 v29, -v29, v50, v39
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v39, 0, 0xffffffc0, s4
	.loc	1 385 34                        ; generate_amdgcn.py:385:34
	v_add_f32_e32 v32, 1.0, v38
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v26, v34, v26, v27
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	v_div_fmas_f32 v29, v29, v44, v50
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_cmp_o_f32_e32 vcc_lo, v21, v21
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_ldexp_f32 v27, v40, v39
	.loc	1 385 22 is_stmt 0              ; generate_amdgcn.py:385:22
	v_div_scale_f32 v60, null, v32, v32, v25
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_div_fixup_f32 v30, v29, v35, v30
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v23, v23, v26
	.loc	1 385 34                        ; generate_amdgcn.py:385:34
	v_add_f32_e32 v29, 1.0, v27
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_rcp_f32_e32 v59, v60
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v27.h, v125.h
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v26, v37, v30
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cndmask_b16 v21.l, 0x7fff, v28.h, s1
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v58, null, v29, v29, v22
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v28, v108, v213, s2
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v27.l, v26.h
	v_cndmask_b16 v21.h, 0x7fff, v36.h, vcc_lo
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_rcp_f32_e32 v57, v58
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_fma_f32 v30, -v60, v59, 1.0
	v_div_scale_f32 v61, vcc_lo, v25, v32, v25
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_and_b32_e32 v56, 1, v27
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v31, s1, v22, v29, v22
	v_fmac_f32_e32 v59, v30, v59
	.loc	1 383 25                        ; generate_amdgcn.py:383:25
	v_mul_f32_e32 v30, v42, v142
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v125.l, v23.h
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v27, -v58, v57, 1.0
	v_mul_f32_e32 v52, v61, v59
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 383 13                        ; generate_amdgcn.py:383:13
	v_mul_f32_e32 v28, v28, v30
	.loc	1 383 25 is_stmt 0              ; generate_amdgcn.py:383:25
	v_dual_mul_f32 v30, v41, v142 :: v_dual_fmac_f32 v57, v27, v57
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_and_b32_e32 v55, 1, v125
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v27, -v60, v52, v61
	.loc	1 385 40 is_stmt 0              ; generate_amdgcn.py:385:40
	v_dual_mul_f32 v35, 0xbfb8aa3b, v28 :: v_dual_mul_f32 v30, v51, v30
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_mul_f32_e32 v34, v31, v57
	.loc	1 307 5 is_stmt 1               ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v41, v100, v238, s2
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fmac_f32_e32 v52, v27, v59
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 385 40 is_stmt 0              ; generate_amdgcn.py:385:40
	v_cmp_gt_f32_e64 s3, 0xc2fc0000, v35
	v_mul_f32_e32 v36, 0xbfb8aa3b, v30
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v27, -v58, v34, v31
	.loc	1 383 13 is_stmt 1              ; generate_amdgcn.py:383:13
	v_mul_f32_e32 v16, v41, v16
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v37, -v60, v52, v61
	.loc	1 385 40 is_stmt 0              ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v35, 0, 0x42800000, s3
	v_cmp_gt_f32_e64 s4, 0xc2fc0000, v36
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fmac_f32_e32 v34, v27, v57
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_div_fmas_f32 v36, v37, v59, v52
	s_mov_b32 vcc_lo, s1
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v27, 0, 0x42800000, s4
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v31, -v58, v34, v31
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_cmp_o_f32_e64 s1, v26, v26
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v37, 0, 0xffffffc0, s3
	v_fmac_f32_e32 v35, 0xbfb8aa3b, v28
	v_fmac_f32_e32 v27, 0xbfb8aa3b, v30
	.loc	1 385 22 is_stmt 0              ; generate_amdgcn.py:385:22
	v_div_fmas_f32 v31, v31, v57, v34
	v_div_fixup_f32 v25, v36, v32, v25
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_cmp_o_f32_e32 vcc_lo, v23, v23
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_exp_f32_e32 v35, v35
	v_exp_f32_e32 v27, v27
	.loc	1 385 22 is_stmt 0              ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v22, v31, v29, v22
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v29, 0, 0xffffffc0, s4
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_add3_u32 v31, v26, v56, 0x7fff
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_dual_mul_f32 v9, v9, v25 :: v_dual_mul_f32 v22, v8, v22
	.loc	1 385 40 is_stmt 0              ; generate_amdgcn.py:385:40
	v_ldexp_f32 v34, v35, v37
	s_delay_alu instid0(TRANS32_DEP_1) | instid1(VALU_DEP_4)
	v_ldexp_f32 v8, v27, v29
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_cmp_o_f32_e64 s3, v22, v22
	v_add3_u32 v27, v23, v55, 0x7fff
	v_mov_b16_e32 v125.l, v9.h
	.loc	1 385 34                        ; generate_amdgcn.py:385:34
	v_dual_add_f32 v32, 1.0, v34 :: v_dual_add_f32 v29, 1.0, v8
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v8.l, v22.h
	v_mov_b16_e32 v8.h, v125.h
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_and_b32_e32 v23, 1, v125
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v25, null, v32, v32, v28
	v_div_scale_f32 v35, null, v29, v29, v30
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_and_b32_e32 v26, 1, v8
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_rcp_f32_e32 v34, v25
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cndmask_b16 v8.h, 0x7fff, v27.h, vcc_lo
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_rcp_f32_e32 v36, v35
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cndmask_b16 v8.l, 0x7fff, v31.h, s1
	v_add3_u32 v26, v22, v26, 0x7fff
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v22, v101, v237, s2
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_add3_u32 v23, v9, v23, 0x7fff
	v_cmp_o_f32_e64 s1, v9, v9
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v9, vcc_lo, v28, v32, v28
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 383 13                        ; generate_amdgcn.py:383:13
	v_mul_f32_e32 v17, v22, v17
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v27, -v25, v34, 1.0
	.loc	1 385 40 is_stmt 0              ; generate_amdgcn.py:385:40
	v_mul_f32_e32 v40, 0xbfb8aa3b, v17
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fmac_f32_e32 v34, v27, v34
	v_fma_f32 v27, -v35, v36, 1.0
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cmp_gt_f32_e64 s5, 0xc2fc0000, v40
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_dual_mul_f32 v31, v9, v34 :: v_dual_fmac_f32 v36, v27, v36
	v_div_scale_f32 v27, s4, v30, v29, v30
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v40, 0, 0x42800000, s5
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v38, -v25, v31, v9
	v_dual_mul_f32 v39, v27, v36 :: v_dual_fmac_f32 v40, 0xbfb8aa3b, v17
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fmac_f32_e32 v31, v38, v34
	v_fma_f32 v38, -v35, v39, v27
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fma_f32 v9, -v25, v31, v9
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_mul_f32_e32 v25, 0xbfb8aa3b, v16
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fmac_f32_e32 v39, v38, v36
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v9, v9, v34, v31
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_exp_f32_e32 v31, v40
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v27, -v35, v39, v27
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v34, 0, 0xffffffc0, s5
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	s_mov_b32 vcc_lo, s4
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cmp_gt_f32_e64 s6, 0xc2fc0000, v25
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v9, v9, v32, v28
	v_div_fmas_f32 v27, v27, v36, v39
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v25, 0, 0x42800000, s6
	v_ldexp_f32 v31, v31, v34
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v25, 0xbfb8aa3b, v16
	v_exp_f32_e32 v25, v25
	.loc	1 307 5 is_stmt 1               ; generate_amdgcn.py:307:5
	s_waitcnt vmcnt(0)
	v_cndmask_b32_e64 v22, v102, v0, s2
	scratch_load_b32 v0, off, off offset:220 ; 4-byte Folded Reload
	.loc	1 380 9                         ; generate_amdgcn.py:380:9
	v_mul_f32_e32 v10, v22, v10
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v22, v27, v29, v30
	.loc	1 385 34 is_stmt 0              ; generate_amdgcn.py:385:34
	v_add_f32_e32 v27, 1.0, v31
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v29.h, v125.h
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v10, v10, v22
	.loc	1 385 40 is_stmt 0              ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v22, 0, 0xffffffc0, s6
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v28, null, v27, v27, v17
	v_div_scale_f32 v35, vcc_lo, v17, v27, v17
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_ldexp_f32 v22, v25, v22
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_rcp_f32_e32 v25, v28
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v29.l, v10.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 385 34                        ; generate_amdgcn.py:385:34
	v_add_f32_e32 v22, 1.0, v22
	.loc	1 385 22 is_stmt 0              ; generate_amdgcn.py:385:22
	v_fma_f32 v30, -v28, v25, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_fmac_f32_e32 v25, v30, v25
	.loc	1 307 5 is_stmt 1               ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v30, v2, v223, s2
	.loc	1 380 16                        ; generate_amdgcn.py:380:16
	v_mul_f32_e32 v2, v194, v142
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_dual_mul_f32 v36, v35, v25 :: v_dual_mul_f32 v19, v30, v19
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 385 40 is_stmt 0              ; generate_amdgcn.py:385:40
	v_mul_f32_e32 v38, 0xbfb8aa3b, v19
	.loc	1 307 5 is_stmt 1               ; generate_amdgcn.py:307:5
	s_waitcnt vmcnt(0)
	v_cndmask_b32_e64 v37, v103, v0, s2
	scratch_load_b32 v0, off, off offset:216 ; 4-byte Folded Reload
	.loc	1 380 9                         ; generate_amdgcn.py:380:9
	v_mul_f32_e32 v11, v37, v11
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v37, v1, v158, s2
	.loc	1 380 16                        ; generate_amdgcn.py:380:16
	v_mul_f32_e32 v1, v193, v142
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v11, v11, v9
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cndmask_b16 v9.h, 0x7fff, v23.h, s1
	v_and_b32_e32 v23, 1, v29
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v29, null, v22, v22, v16
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cndmask_b16 v9.l, 0x7fff, v26.h, s3
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cmp_gt_f32_e64 s3, 0xc2fc0000, v38
	.loc	1 383 13                        ; generate_amdgcn.py:383:13
	v_mul_f32_e32 v18, v37, v18
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_rcp_f32_e32 v32, v29
	v_fma_f32 v38, -v28, v36, v35
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v125.l, v11.h
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v37, 0, 0x42800000, s3
	v_mul_f32_e32 v40, 0xbfb8aa3b, v18
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_add3_u32 v23, v10, v23, 0x7fff
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fmac_f32_e32 v36, v38, v25
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 385 40 is_stmt 0              ; generate_amdgcn.py:385:40
	v_dual_fmac_f32 v37, 0xbfb8aa3b, v19 :: v_dual_and_b32 v26, 1, v125
	v_cmp_gt_f32_e64 s4, 0xc2fc0000, v40
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v30, -v29, v32, 1.0
	v_fma_f32 v28, -v28, v36, v35
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_add3_u32 v26, v11, v26, 0x7fff
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_exp_f32_e32 v37, v37
	v_cndmask_b32_e64 v38, 0, 0x42800000, s4
	.loc	1 385 22 is_stmt 0              ; generate_amdgcn.py:385:22
	v_fmac_f32_e32 v32, v30, v32
	v_div_scale_f32 v30, s1, v16, v22, v16
	v_div_fmas_f32 v25, v28, v25, v36
	s_mov_b32 vcc_lo, s1
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_dual_fmac_f32 v38, 0xbfb8aa3b, v18 :: v_dual_mul_f32 v39, v30, v32
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_cmp_o_f32_e64 s1, v10, v10
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v17, v25, v27, v17
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v10.h, v125.h
	s_delay_alu instid0(VALU_DEP_3)
	v_cndmask_b16 v26.l, 0x7fff, v23.h, s1
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_waitcnt vmcnt(0)
	v_cndmask_b32_e64 v31, v173, v0, s2
	scratch_load_b32 v0, off, off offset:236 ; 4-byte Folded Reload
	.loc	1 380 9                         ; generate_amdgcn.py:380:9
	v_mul_f32_e32 v4, v31, v4
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_waitcnt vmcnt(0)
	v_cndmask_b32_e64 v34, v174, v0, s2
	scratch_load_b32 v0, off, off offset:232 ; 4-byte Folded Reload
	.loc	1 380 9                         ; generate_amdgcn.py:380:9
	v_mul_f32_e32 v5, v34, v5
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v34, -v29, v39, v30
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 385 15 is_stmt 0              ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v5, v5, v17
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fmac_f32_e32 v39, v34, v32
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v34, 0, 0xffffffc0, s3
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v125.l, v5.h
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v28, -v29, v39, v30
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 385 40 is_stmt 0              ; generate_amdgcn.py:385:40
	v_ldexp_f32 v30, v37, v34
	v_exp_f32_e32 v29, v38
	.loc	1 307 5 is_stmt 1               ; generate_amdgcn.py:307:5
	scratch_load_b32 v38, off, off offset:192 ; 4-byte Folded Reload
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fmas_f32 v28, v28, v32, v39
	.loc	1 385 34 is_stmt 0              ; generate_amdgcn.py:385:34
	v_add_f32_e32 v30, 1.0, v30
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v32, 0, 0xffffffc0, s4
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_cmp_o_f32_e32 vcc_lo, v11, v11
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v16, v28, v22, v16
	v_div_scale_f32 v25, null, v30, v30, v19
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 385 40 is_stmt 0              ; generate_amdgcn.py:385:40
	v_ldexp_f32 v22, v29, v32
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_cndmask_b16 v26.h, 0x7fff, v26.h, vcc_lo
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v4, v4, v16
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 385 22 is_stmt 0              ; generate_amdgcn.py:385:22
	v_rcp_f32_e32 v16, v25
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_cmp_o_f32_e32 vcc_lo, v5, v5
	.loc	1 385 34                        ; generate_amdgcn.py:385:34
	v_dual_add_f32 v11, 1.0, v22 :: v_dual_and_b32 v22, 1, v125
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v10.l, v4.h
	v_cmp_o_f32_e64 s3, v4, v4
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v29, v89, v246, s2
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v17, null, v11, v11, v18
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_and_b32_e32 v10, 1, v10
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v28, -v25, v16, 1.0
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_add3_u32 v22, v5, v22, 0x7fff
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v5, s1, v19, v30, v19
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_add3_u32 v10, v4, v10, 0x7fff
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fmac_f32_e32 v16, v28, v16
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cndmask_b16 v22.h, 0x7fff, v22.h, vcc_lo
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	s_mov_b32 vcc_lo, s1
	v_rcp_f32_e32 v27, v17
	.loc	1 383 13                        ; generate_amdgcn.py:383:13
	v_mul_f32_e32 v13, v29, v13
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_mul_f32_e32 v4, v5, v16
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cndmask_b16 v22.l, 0x7fff, v10.h, s3
	.loc	1 383 25                        ; generate_amdgcn.py:383:25
	v_mul_f32_e32 v10, v15, v142
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v31, -v25, v4, v5
	v_fma_f32 v23, -v17, v27, 1.0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_dual_fmac_f32 v4, v31, v16 :: v_dual_mul_f32 v31, 0xbfb8aa3b, v13
	v_fmac_f32_e32 v27, v23, v27
	v_div_scale_f32 v23, s4, v18, v11, v18
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_fma_f32 v5, -v25, v4, v5
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v25, v88, v241, s2
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cmp_gt_f32_e64 s5, 0xc2fc0000, v31
	.loc	1 385 22 is_stmt 0              ; generate_amdgcn.py:385:22
	v_mul_f32_e32 v32, v23, v27
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_div_fmas_f32 v4, v5, v16, v4
	.loc	1 383 13 is_stmt 1              ; generate_amdgcn.py:383:13
	v_mul_f32_e32 v12, v25, v12
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	s_mov_b32 vcc_lo, s4
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v29, -v17, v32, v23
	v_div_fixup_f32 v4, v4, v30, v19
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 385 40 is_stmt 0              ; generate_amdgcn.py:385:40
	v_mul_f32_e32 v16, 0xbfb8aa3b, v12
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fmac_f32_e32 v32, v29, v27
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v29, 0, 0x42800000, s5
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v5, -v17, v32, v23
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_fmac_f32_e32 v29, 0xbfb8aa3b, v13
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fmas_f32 v5, v5, v27, v32
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v16
	v_exp_f32_e32 v17, v29
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v5, v5, v11, v18
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v16, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v11, 0, 0xffffffc0, s5
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v18.h, v125.h
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_fmac_f32_e32 v16, 0xbfb8aa3b, v12
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_exp_f32_e32 v15, v16
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_waitcnt vmcnt(1)
	v_cndmask_b32_e64 v28, v170, v0, s2
	scratch_load_b32 v0, off, off offset:228 ; 4-byte Folded Reload
	.loc	1 380 9                         ; generate_amdgcn.py:380:9
	v_mul_f32_e32 v6, v28, v6
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v5, v6, v5
	.loc	1 385 40 is_stmt 0              ; generate_amdgcn.py:385:40
	v_ldexp_f32 v6, v17, v11
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v18.l, v5.h
	.loc	1 385 34                        ; generate_amdgcn.py:385:34
	v_add_f32_e32 v6, 1.0, v6
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_waitcnt vmcnt(1)
	v_cndmask_b32_e64 v38, v167, v38, s2
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 380 9                         ; generate_amdgcn.py:380:9
	v_dual_mul_f32 v1, v38, v1 :: v_dual_and_b32 v18, 1, v18
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_add3_u32 v18, v5, v18, 0x7fff
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_waitcnt vmcnt(0)
	v_cndmask_b32_e64 v34, v171, v0, s2
	scratch_load_b32 v0, off, off offset:244 ; 4-byte Folded Reload
	.loc	1 380 9                         ; generate_amdgcn.py:380:9
	v_mul_f32_e32 v7, v34, v7
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	scratch_load_b32 v34, off, off offset:200 ; 4-byte Folded Reload
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v4, v7, v4
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v125.l, v4.h
	v_and_b32_e32 v28, 1, v125
	s_delay_alu instid0(VALU_DEP_1)
	v_add3_u32 v28, v4, v28, 0x7fff
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_waitcnt vmcnt(1)
	v_cndmask_b32_e64 v7, v86, v0, s2
	scratch_load_b32 v0, off, off offset:224 ; 4-byte Folded Reload
	.loc	1 383 13                        ; generate_amdgcn.py:383:13
	v_mul_f32_e32 v7, v7, v10
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v10, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_mul_f32_e32 v16, 0xbfb8aa3b, v7
	v_ldexp_f32 v10, v15, v10
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v16
	.loc	1 385 34 is_stmt 0              ; generate_amdgcn.py:385:34
	v_add_f32_e32 v10, 1.0, v10
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v16, 0, 0x42800000, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v19, null, v10, v10, v12
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v27, 0, 0xffffffc0, vcc_lo
	v_fmac_f32_e32 v16, 0xbfb8aa3b, v7
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_rcp_f32_e32 v25, v19
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_exp_f32_e32 v16, v16
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	v_ldexp_f32 v16, v16, v27
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v27, -v19, v25, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 385 34                        ; generate_amdgcn.py:385:34
	v_dual_add_f32 v16, 1.0, v16 :: v_dual_fmac_f32 v25, v27, v25
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v27, null, v16, v16, v7
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v32, v27
	v_fma_f32 v39, -v27, v32, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	v_fmac_f32_e32 v32, v39, v32
	.loc	1 307 5 is_stmt 1               ; generate_amdgcn.py:307:5
	s_waitcnt vmcnt(0)
	v_cndmask_b32_e64 v11, v85, v0, s2
	.loc	1 380 16                        ; generate_amdgcn.py:380:16
	v_mul_f32_e32 v0, v192, v142
	.loc	1 383 13                        ; generate_amdgcn.py:383:13
	v_mul_f32_e32 v11, v11, v14
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v14, null, v6, v6, v13
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 385 40 is_stmt 0              ; generate_amdgcn.py:385:40
	v_mul_f32_e32 v17, 0xbfb8aa3b, v11
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_rcp_f32_e32 v15, v14
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cmp_gt_f32_e64 s1, 0xc2fc0000, v17
	v_cndmask_b32_e64 v17, 0, 0x42800000, s1
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v23, -v14, v15, 1.0
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v29, 0, 0xffffffc0, s1
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v31, s1, v12, v10, v12
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_fmac_f32_e32 v17, 0xbfb8aa3b, v11
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fmac_f32_e32 v15, v23, v15
	v_div_scale_f32 v23, vcc_lo, v13, v6, v13
	v_mul_f32_e32 v37, v31, v25
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_exp_f32_e32 v17, v17
	v_ldexp_f32 v17, v17, v29
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_mul_f32_e32 v29, v23, v15
	.loc	1 385 34                        ; generate_amdgcn.py:385:34
	v_add_f32_e32 v17, 1.0, v17
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v35, -v14, v29, v23
	v_div_scale_f32 v30, null, v17, v17, v11
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v29, v35, v15
	v_fma_f32 v35, -v19, v37, v31
	v_rcp_f32_e32 v36, v30
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v14, -v14, v29, v23
	v_fmac_f32_e32 v37, v35, v25
	v_div_scale_f32 v35, s3, v7, v16, v7
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_div_fmas_f32 v14, v14, v15, v29
	v_fma_f32 v15, -v19, v37, v31
	s_mov_b32 vcc_lo, s1
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v23, -v30, v36, 1.0
	v_mul_f32_e32 v19, v35, v32
	v_div_fixup_f32 v6, v14, v6, v13
	v_div_fmas_f32 v15, v15, v25, v37
	s_mov_b32 vcc_lo, s3
	v_fmac_f32_e32 v36, v23, v36
	v_div_scale_f32 v23, s4, v11, v17, v11
	s_delay_alu instid0(VALU_DEP_3)
	v_div_fixup_f32 v10, v15, v10, v12
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v1, v1, v6
	.loc	1 307 5 is_stmt 1               ; generate_amdgcn.py:307:5
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v6, off, off offset:80
	scratch_load_b32 v12, off, off offset:40
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_mul_f32_e32 v29, v23, v36
	v_fma_f32 v25, -v27, v19, v35
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v34, v166, v34, s2
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v125.l, v1.h
	v_cmp_o_f32_e64 s1, v1, v1
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v13, -v30, v29, v23
	v_fmac_f32_e32 v19, v25, v32
	.loc	1 380 9                         ; generate_amdgcn.py:380:9
	v_mul_f32_e32 v0, v34, v0
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cndmask_b32_e64 v31, v20, v67, s0
	v_cndmask_b32_e64 v20, v67, v20, s0
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fmac_f32_e32 v29, v13, v36
	v_fma_f32 v13, -v27, v19, v35
	.loc	1 385 15 is_stmt 0              ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v0, v0, v10
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v10.h, v125.h
	v_cndmask_b32_e64 v27, v87, v84, s0
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v14, -v30, v29, v23
	v_div_fmas_f32 v13, v13, v32, v19
	s_mov_b32 vcc_lo, s4
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v10.l, v0.h
	v_cndmask_b32_e64 v32, v9, v21, s0
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fmas_f32 v14, v14, v36, v29
	v_div_fixup_f32 v7, v13, v16, v7
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cmp_o_f32_e32 vcc_lo, v4, v4
	v_and_b32_e32 v4, 1, v125
	v_cndmask_b32_e64 v9, v21, v9, s0
	v_mov_b32_e32 v21, 0x5410
	v_cndmask_b32_e64 v16, v81, v109, s0
	v_cndmask_b32_e64 v23, v106, v91, s0
	v_add3_u32 v4, v1, v4, 0x7fff
	v_cndmask_b32_e64 v29, v83, v75, s0
	v_cndmask_b32_e64 v30, v24, v71, s0
	v_cndmask_b32_e64 v24, v71, v24, s0
	v_cndmask_b32_e64 v34, v26, v8, s0
	v_cndmask_b32_e64 v8, v8, v26, s0
	v_cndmask_b32_e64 v13, v113, v159, s0
	v_cndmask_b32_e64 v15, v109, v81, s0
	v_cndmask_b32_e64 v25, v84, v87, s0
	v_cndmask_b32_e64 v19, v91, v106, s0
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_waitcnt vmcnt(1)
	v_cndmask_b32_e64 v6, v161, v6, s2
	s_waitcnt vmcnt(0)
	v_cndmask_b32_e64 v12, v162, v12, s2
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cmp_o_f32_e64 s2, v0, v0
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 380 9                         ; generate_amdgcn.py:380:9
	v_mul_f32_e32 v2, v6, v2
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v6, v14, v17, v11
	.loc	1 380 9                         ; generate_amdgcn.py:380:9
	v_mul_f32_e32 v3, v12, v3
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cndmask_b32_e64 v12, v141, v252, s0
	v_cndmask_b32_e64 v14, v159, v113, s0
	v_cndmask_b32_e64 v11, v252, v141, s0
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_dual_mul_f32 v2, v2, v6 :: v_dual_mul_f32 v3, v3, v7
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_and_b32_e32 v6, 1, v10
	v_mov_b16_e32 v7.h, v125.h
	v_cndmask_b16 v10.h, 0x7fff, v28.h, vcc_lo
	v_mov_b16_e32 v7.l, v2.h
	v_mov_b16_e32 v125.l, v3.h
	v_cmp_o_f32_e32 vcc_lo, v5, v5
	v_add3_u32 v5, v0, v6, 0x7fff
	v_cmp_o_f32_e64 s3, v3, v3
	v_and_b32_e32 v6, 1, v7
	v_and_b32_e32 v7, 1, v125
	v_cmp_o_f32_e64 s4, v2, v2
	v_cndmask_b16 v10.l, 0x7fff, v18.h, vcc_lo
	v_cndmask_b32_e64 v18, v105, v97, s0
	v_add3_u32 v0, v2, v6, 0x7fff
	v_add3_u32 v1, v3, v7, 0x7fff
	v_cndmask_b16 v2.h, 0x7fff, v4.h, s1
	v_cndmask_b16 v2.l, 0x7fff, v5.h, s2
	s_mov_b32 s1, 0x76543210
	v_cndmask_b16 v1.l, 0x7fff, v0.h, s4
	v_cndmask_b16 v1.h, 0x7fff, v1.h, s3
	v_cndmask_b32_e64 v0, v43, v33, s0
	v_cndmask_b32_e64 v35, v2, v22, s0
	v_cndmask_b32_e64 v2, v22, v2, s0
	v_mov_b32_e32 v22, 0x7632
	v_cndmask_b32_e64 v36, v1, v10, s0
	v_cndmask_b32_e64 v1, v10, v1, s0
	v_permlanex16_b32 v10, v0, s1, 0xfedcba98 op_sel:[1,0]
	v_cndmask_b32_e64 v0, 0x1054, v21, s0
	v_cndmask_b32_e64 v21, 0x3276, v22, s0
	v_cndmask_b32_e64 v5, v247, v139, s0
	v_cndmask_b32_e64 v7, v140, v143, s0
	v_cndmask_b32_e64 v3, v33, v43, s0
	v_lshl_or_b32 v0, v0, 8, v0
	v_lshl_or_b32 v21, v21, 8, v21
	v_cndmask_b32_e64 v4, v139, v247, s0
	v_cndmask_b32_e64 v6, v143, v140, s0
	v_cndmask_b32_e64 v17, v97, v105, s0
	v_and_b32_e32 v0, 0x540054, v0
	v_and_b32_e32 v21, 0x760076, v21
	v_permlanex16_b32 v5, v5, s1, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v7, v7, s1, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v12, v12, s1, 0xfedcba98 op_sel:[1,0]
	v_lshl_or_b32 v0, v0, 4, v0
	v_lshl_or_b32 v21, v21, 4, v21
	v_permlanex16_b32 v14, v14, s1, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v16, v16, s1, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v18, v18, s1, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v22, v23, s1, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v23, v27, s1, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v26, v29, s1, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v24, v24, s1, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v29, v9, s1, 0xfedcba98 op_sel:[1,0]
	v_and_b32_e32 v37, 0x5040504, v0
	v_and_b32_e32 v38, 0x7060706, v21
	v_cndmask_b32_e64 v28, v75, v83, s0
	v_permlanex16_b32 v27, v20, s1, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v39, v8, s1, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v40, v2, s1, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v41, v1, s1, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v0, v10, v3, v37
	v_perm_b32 v1, v10, v3, v38
	v_perm_b32 v2, v5, v4, v37
	v_perm_b32 v3, v5, v4, v38
	v_perm_b32 v4, v7, v6, v37
	v_perm_b32 v5, v7, v6, v38
	v_perm_b32 v6, v12, v11, v37
	v_perm_b32 v7, v12, v11, v38
	v_perm_b32 v8, v14, v13, v37
	v_perm_b32 v9, v14, v13, v38
	v_perm_b32 v10, v16, v15, v37
	v_perm_b32 v11, v16, v15, v38
	v_perm_b32 v12, v18, v17, v37
	v_perm_b32 v13, v18, v17, v38
	v_perm_b32 v16, v23, v25, v37
	v_perm_b32 v17, v23, v25, v38
	v_perm_b32 v20, v24, v30, v37
	v_perm_b32 v21, v24, v30, v38
	v_perm_b32 v24, v29, v32, v37
	v_perm_b32 v25, v29, v32, v38
	.loc	1 390 18 is_stmt 0              ; generate_amdgcn.py:390:18
	v_add_lshl_u32 v32, v122, v243, 1
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_perm_b32 v14, v22, v19, v37
	v_perm_b32 v15, v22, v19, v38
	v_perm_b32 v18, v26, v28, v37
	v_perm_b32 v19, v26, v28, v38
	v_perm_b32 v22, v27, v31, v37
	v_perm_b32 v23, v27, v31, v38
	v_perm_b32 v26, v39, v34, v37
	v_perm_b32 v27, v39, v34, v38
	v_add_lshl_u32 v34, v122, v160, 1
	s_clause 0x2
	buffer_store_b128 v[0:3], v32, s[12:15], 0 offen
	buffer_store_b128 v[4:7], v32, s[12:15], 0 offen offset:256
	buffer_store_b128 v[8:11], v34, s[12:15], 0 offen
	v_add_lshl_u32 v0, v248, v160, 1
	v_add_lshl_u32 v1, v122, v151, 1
	v_add_lshl_u32 v2, v248, v151, 1
	v_add_lshl_u32 v3, v122, v251, 1
	v_perm_b32 v28, v40, v35, v37
	v_perm_b32 v29, v40, v35, v38
	v_perm_b32 v30, v41, v36, v37
	v_perm_b32 v31, v41, v36, v38
	v_add_lshl_u32 v4, v248, v251, 1
	s_clause 0x4
	buffer_store_b128 v[12:15], v0, s[12:15], 0 offen
	buffer_store_b128 v[16:19], v1, s[12:15], 0 offen
	buffer_store_b128 v[20:23], v2, s[12:15], 0 offen
	buffer_store_b128 v[24:27], v3, s[12:15], 0 offen
	buffer_store_b128 v[28:31], v4, s[12:15], 0 offen
	.loc	1 283 1 is_stmt 1               ; generate_amdgcn.py:283:1
	s_endpgm
.Ltmp16:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_int8xint8_nt_pc_swiglu_bm64_bn256_bk32_gm4_w8_s3_weu2_sk1_evenk
		.amdhsa_group_segment_fixed_size 0
		.amdhsa_private_segment_fixed_size 348
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
		.amdhsa_next_free_sgpr 40
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
	.size	amd_strix_halo_gfx1151_int8xint8_nt_pc_swiglu_bm64_bn256_bk32_gm4_w8_s3_weu2_sk1_evenk, .Lfunc_end0-amd_strix_halo_gfx1151_int8xint8_nt_pc_swiglu_bm64_bn256_bk32_gm4_w8_s3_weu2_sk1_evenk
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_int8xint8_nt_pc_swiglu_bm64_bn256_bk32_gm4_w8_s3_weu2_sk1_evenk.num_vgpr, 256
	.set amd_strix_halo_gfx1151_int8xint8_nt_pc_swiglu_bm64_bn256_bk32_gm4_w8_s3_weu2_sk1_evenk.num_agpr, 0
	.set amd_strix_halo_gfx1151_int8xint8_nt_pc_swiglu_bm64_bn256_bk32_gm4_w8_s3_weu2_sk1_evenk.numbered_sgpr, 40
	.set amd_strix_halo_gfx1151_int8xint8_nt_pc_swiglu_bm64_bn256_bk32_gm4_w8_s3_weu2_sk1_evenk.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_int8xint8_nt_pc_swiglu_bm64_bn256_bk32_gm4_w8_s3_weu2_sk1_evenk.private_seg_size, 348
	.set amd_strix_halo_gfx1151_int8xint8_nt_pc_swiglu_bm64_bn256_bk32_gm4_w8_s3_weu2_sk1_evenk.uses_vcc, 1
	.set amd_strix_halo_gfx1151_int8xint8_nt_pc_swiglu_bm64_bn256_bk32_gm4_w8_s3_weu2_sk1_evenk.uses_flat_scratch, 1
	.set amd_strix_halo_gfx1151_int8xint8_nt_pc_swiglu_bm64_bn256_bk32_gm4_w8_s3_weu2_sk1_evenk.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_int8xint8_nt_pc_swiglu_bm64_bn256_bk32_gm4_w8_s3_weu2_sk1_evenk.has_recursion, 0
	.set amd_strix_halo_gfx1151_int8xint8_nt_pc_swiglu_bm64_bn256_bk32_gm4_w8_s3_weu2_sk1_evenk.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 28192
; TotalNumSgprs: 42
; NumVgprs: 256
; ScratchSize: 348
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 31
; NumSGPRsForWavesPerEU: 42
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
	.asciz	"amd_strix_halo_gfx1151_int8xint8_nt_pc_swiglu_bm64_bn256_bk32_gm4_w8_s3_weu2_sk1_evenk"             ; string offset=75 ; amd_strix_halo_gfx1151_int8xint8_nt_pc_swiglu_bm64_bn256_bk32_gm4_w8_s3_weu2_sk1_evenk
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
    .name:           amd_strix_halo_gfx1151_int8xint8_nt_pc_swiglu_bm64_bn256_bk32_gm4_w8_s3_weu2_sk1_evenk
    .private_segment_fixed_size: 348
    .sgpr_count:     42
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_int8xint8_nt_pc_swiglu_bm64_bn256_bk32_gm4_w8_s3_weu2_sk1_evenk.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     256
    .vgpr_spill_count: 186
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
