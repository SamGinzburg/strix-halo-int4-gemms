	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_int8xint8_nt_pc_swiglu_bm16_bn128_bk64_gm4_w8_s3_weu2_sk1_evenk               ; -- Begin function amd_strix_halo_gfx1151_int8xint8_nt_pc_swiglu_bm16_bn128_bk64_gm4_w8_s3_weu2_sk1_evenk
	.p2align	8
	.type	amd_strix_halo_gfx1151_int8xint8_nt_pc_swiglu_bm16_bn128_bk64_gm4_w8_s3_weu2_sk1_evenk,@function
amd_strix_halo_gfx1151_int8xint8_nt_pc_swiglu_bm16_bn128_bk64_gm4_w8_s3_weu2_sk1_evenk:                      ; @amd_strix_halo_gfx1151_int8xint8_nt_pc_swiglu_bm16_bn128_bk64_gm4_w8_s3_weu2_sk1_evenk
.Lfunc_begin0:
	.file	1 "<repo>/scripts" "generate_amdgcn.py"
	.loc	1 283 0                         ; generate_amdgcn.py:283:0
	.cfi_sections .debug_frame
	.cfi_startproc
; %bb.0:
	s_clause 0x1
	s_load_b64 s[14:15], s[0:1], 0x30
	s_load_b128 s[20:23], s[0:1], 0x0
.Ltmp0:
	.loc	1 293 16 prologue_end           ; generate_amdgcn.py:293:16
	s_abs_i32 s7, s2
	.loc	1 301 14                        ; generate_amdgcn.py:301:14
	v_lshlrev_b32_e32 v6, 4, v0
	.loc	1 299 32                        ; generate_amdgcn.py:299:32
	v_lshrrev_b32_e32 v34, 4, v0
	.loc	1 300 32                        ; generate_amdgcn.py:300:32
	v_lshrrev_b32_e32 v2, 2, v0
	.loc	1 299 32                        ; generate_amdgcn.py:299:32
	v_and_b32_e32 v33, 15, v0
	.loc	1 300 32                        ; generate_amdgcn.py:300:32
	v_and_b32_e32 v35, 0xe0, v0
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 301 14                        ; generate_amdgcn.py:301:14
	v_lshlrev_b32_e32 v3, 2, v33
.Ltmp1:
	.file	2 "<triton>/python/triton/language" "standard.py"
	.loc	2 43 13                         ; standard.py:43:13 @[ generate_amdgcn.py:291:17 ]
	s_waitcnt lgkmcnt(0)
	s_add_i32 s4, s15, 0x7f
.Ltmp2:
	.loc	2 43 13 is_stmt 0               ; standard.py:43:13 @[ generate_amdgcn.py:290:17 ]
	s_add_i32 s8, s14, 15
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
	s_lshr_b32 s10, s10, 28
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
	s_ashr_i32 s8, s8, 4
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
	v_rcp_iflag_f32_e32 v1, s6
	.loc	1 350 22                        ; generate_amdgcn.py:350:22
	s_mov_b32 s26, s22
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_3)
	.loc	1 293 16                        ; generate_amdgcn.py:293:16
	v_readfirstlane_b32 s6, v1
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
	s_load_b32 s10, s[0:1], 0x38
	s_xor_b32 s5, s5, s9
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_sub_i32 s5, s5, s9
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
	v_rcp_iflag_f32_e32 v1, s9
	.loc	1 348 30                        ; generate_amdgcn.py:348:30
	s_waitcnt lgkmcnt(0)
	v_mul_lo_u32 v4, s10, v34
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 297 13                        ; generate_amdgcn.py:297:13
	v_readfirstlane_b32 s9, v1
	.loc	1 301 14                        ; generate_amdgcn.py:301:14
	v_and_b32_e32 v1, 48, v6
	.loc	1 297 13                        ; generate_amdgcn.py:297:13
	s_mul_f32 s9, s9, 0x4f7ffffe
	.loc	1 350 30                        ; generate_amdgcn.py:350:30
	v_mad_u64_u32 v[9:10], null, s10, v2, v[1:2]
	s_delay_alu instid0(SALU_CYCLE_2) | instskip(NEXT) | instid1(SALU_CYCLE_3)
	.loc	1 297 13                        ; generate_amdgcn.py:297:13
	s_cvt_u32_f32 s9, s9
	s_mul_i32 s11, s11, s9
	.loc	1 350 30                        ; generate_amdgcn.py:350:30
	v_lshl_add_u32 v10, s10, 6, v9
	.loc	1 297 13                        ; generate_amdgcn.py:297:13
	s_mul_hi_u32 s4, s9, s11
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_add_i32 s9, s9, s4
	s_mul_hi_u32 s4, s5, s9
	s_xor_b32 s9, s2, s7
	s_mul_i32 s11, s4, s8
	s_ashr_i32 s9, s9, 31
	s_sub_i32 s5, s5, s11
	s_add_i32 s11, s4, 1
	s_sub_i32 s12, s5, s8
	s_cmp_ge_u32 s5, s8
	s_cselect_b32 s4, s11, s4
	s_cselect_b32 s5, s12, s5
	s_add_i32 s11, s4, 1
	s_cmp_ge_u32 s5, s8
	s_cselect_b32 s4, s11, s4
	.loc	1 342 22                        ; generate_amdgcn.py:342:22
	s_lshl_b32 s36, s3, 6
	.loc	1 297 13                        ; generate_amdgcn.py:297:13
	s_xor_b32 s4, s4, s9
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_sub_i32 s4, s4, s9
	.loc	1 296 28                        ; generate_amdgcn.py:296:28
	s_mul_i32 s5, s4, s7
	.loc	1 300 14                        ; generate_amdgcn.py:300:14
	s_lshl_b32 s14, s4, 7
	.loc	1 296 28                        ; generate_amdgcn.py:296:28
	s_sub_i32 s2, s2, s5
	.loc	1 356 39                        ; generate_amdgcn.py:356:39
	s_add_i32 s28, s14, s15
	.loc	1 296 13                        ; generate_amdgcn.py:296:13
	s_add_i32 s2, s2, s6
.Ltmp12:
	.loc	2 43 13                         ; standard.py:43:13 @[ generate_amdgcn.py:307:28 ]
	s_add_i32 s6, s10, 63
.Ltmp13:
	.loc	1 299 14                        ; generate_amdgcn.py:299:14
	s_lshl_b32 s29, s2, 4
	.loc	1 350 30                        ; generate_amdgcn.py:350:30
	s_mul_i32 s34, s14, s10
	.loc	1 348 30                        ; generate_amdgcn.py:348:30
	s_mul_i32 s2, s29, s10
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_cmp_gt_i32 s6, 63
	.loc	1 348 30                        ; generate_amdgcn.py:348:30
	v_add3_u32 v11, v4, v3, s2
	.loc	1 356 39                        ; generate_amdgcn.py:356:39
	s_mul_i32 s35, s28, s10
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_cselect_b32 s3, -1, 0
	.loc	1 350 30                        ; generate_amdgcn.py:350:30
	s_add_i32 s2, s34, s36
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	s_and_b32 s21, s21, 0xffff
	.loc	1 348 30 is_stmt 0              ; generate_amdgcn.py:348:30
	v_add_nc_u32_e32 v1, s36, v11
	.loc	1 350 22 is_stmt 1              ; generate_amdgcn.py:350:22
	s_and_b32 s25, s25, 0xffff
	.loc	1 356 39                        ; generate_amdgcn.py:356:39
	s_add_i32 s4, s35, s36
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_cmpk_gt_i32 s6, 0x7f
	.loc	1 350 30                        ; generate_amdgcn.py:350:30
	v_add_nc_u32_e32 v2, s2, v9
	v_add_nc_u32_e32 v3, s2, v10
	.loc	1 356 39                        ; generate_amdgcn.py:356:39
	v_add_nc_u32_e32 v4, s4, v9
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_cselect_b32 s2, -1, 0
	.loc	1 342 17                        ; generate_amdgcn.py:342:17
	s_add_i32 s36, s36, 64
	.loc	1 356 39                        ; generate_amdgcn.py:356:39
	v_add_nc_u32_e32 v5, s4, v10
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	v_cndmask_b32_e64 v1, 0x80000000, v1, s3
	.loc	1 348 30 is_stmt 0              ; generate_amdgcn.py:348:30
	v_add_nc_u32_e32 v7, s36, v11
	.loc	1 350 30 is_stmt 1              ; generate_amdgcn.py:350:30
	v_add_nc_u32_e32 v26, 64, v2
	.loc	1 350 22 is_stmt 0              ; generate_amdgcn.py:350:22
	v_cndmask_b32_e64 v8, 0x80000000, v2, s3
	.loc	1 350 30                        ; generate_amdgcn.py:350:30
	v_add_nc_u32_e32 v27, 64, v3
	.loc	1 350 22                        ; generate_amdgcn.py:350:22
	v_cndmask_b32_e64 v12, 0x80000000, v3, s3
	.loc	1 356 39 is_stmt 1              ; generate_amdgcn.py:356:39
	v_add_nc_u32_e32 v28, 64, v4
	.loc	1 356 31 is_stmt 0              ; generate_amdgcn.py:356:31
	v_cndmask_b32_e64 v13, 0x80000000, v4, s3
	.loc	1 356 39                        ; generate_amdgcn.py:356:39
	v_add_nc_u32_e32 v29, 64, v5
	.loc	1 356 31                        ; generate_amdgcn.py:356:31
	v_cndmask_b32_e64 v22, 0x80000000, v5, s3
	.loc	1 348 22 is_stmt 1              ; generate_amdgcn.py:348:22
	buffer_load_b32 v30, v1, s[20:23], 0 offen
	v_cndmask_b32_e64 v1, 0x80000000, v7, s2
	.loc	1 350 22                        ; generate_amdgcn.py:350:22
	v_cndmask_b32_e64 v7, 0x80000000, v26, s2
	s_clause 0x3
	buffer_load_b128 v[2:5], v8, s[24:27], 0 offen
	buffer_load_b128 v[14:17], v12, s[24:27], 0 offen
	buffer_load_b128 v[18:21], v13, s[24:27], 0 offen
	buffer_load_b128 v[22:25], v22, s[24:27], 0 offen
	v_cndmask_b32_e64 v8, 0x80000000, v27, s2
	.loc	1 356 31                        ; generate_amdgcn.py:356:31
	v_cndmask_b32_e64 v12, 0x80000000, v28, s2
	v_cndmask_b32_e64 v13, 0x80000000, v29, s2
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	buffer_load_b32 v31, v1, s[20:23], 0 offen
	.loc	1 350 22                        ; generate_amdgcn.py:350:22
	s_clause 0x3
	buffer_load_b128 v[26:29], v7, s[24:27], 0 offen
	buffer_load_b128 v[36:39], v8, s[24:27], 0 offen
	buffer_load_b128 v[40:43], v12, s[24:27], 0 offen
	buffer_load_b128 v[44:47], v13, s[24:27], 0 offen
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	v_lshrrev_b32_e32 v1, 1, v0
	.loc	1 350 22                        ; generate_amdgcn.py:350:22
	v_lshlrev_b32_e32 v7, 1, v0
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	v_lshlrev_b32_e32 v8, 2, v0
	s_mov_b32 s5, 0
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_cmpk_gt_i32 s6, 0xbf
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	v_and_b32_e32 v1, 48, v1
	.loc	1 350 22                        ; generate_amdgcn.py:350:22
	v_and_b32_e32 v7, 48, v7
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	v_xor_b32_e32 v12, v8, v1
	.loc	1 350 22                        ; generate_amdgcn.py:350:22
	v_xor_b32_e32 v13, v6, v7
	v_lshlrev_b32_e32 v1, 3, v0
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	v_add_nc_u32_e32 v6, 0, v12
	.loc	1 350 22                        ; generate_amdgcn.py:350:22
	v_add_nc_u32_e32 v7, 0, v13
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	s_waitcnt vmcnt(9)
	ds_store_b32 v6, v30 offset:32768
	.loc	1 350 22                        ; generate_amdgcn.py:350:22
	s_waitcnt vmcnt(8)
	ds_store_b128 v7, v[2:5]
	s_waitcnt vmcnt(7)
	ds_store_b128 v7, v[14:17] offset:4096
	.loc	1 356 31                        ; generate_amdgcn.py:356:31
	s_waitcnt vmcnt(6)
	ds_store_b128 v7, v[18:21] offset:16384
	s_waitcnt vmcnt(5)
	ds_store_b128 v7, v[22:25] offset:20480
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_waitcnt vmcnt(4)
	ds_store_b32 v6, v31 offset:33792
	.loc	1 350 22                        ; generate_amdgcn.py:350:22
	s_waitcnt vmcnt(3)
	ds_store_b128 v7, v[26:29] offset:8192
	s_waitcnt vmcnt(2)
	ds_store_b128 v7, v[36:39] offset:12288
	.loc	1 356 31                        ; generate_amdgcn.py:356:31
	s_waitcnt vmcnt(1)
	ds_store_b128 v7, v[40:43] offset:24576
	s_waitcnt vmcnt(0)
	ds_store_b128 v7, v[44:47] offset:28672
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_cbranch_scc1 .LBB0_2
; %bb.1:                                ; %.._crit_edge_crit_edge
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	v_and_b32_e32 v2, 48, v1
	s_mov_b32 s4, 0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v40, v33, 6, v2
	.loc	1 350 22                        ; generate_amdgcn.py:350:22
	v_lshl_or_b32 v36, v35, 5, v40
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	v_xor_b32_e32 v41, 16, v40
	v_xor_b32_e32 v42, 32, v40
	v_xor_b32_e32 v43, 48, v40
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 350 22                        ; generate_amdgcn.py:350:22
	v_xor_b32_e32 v37, 16, v36
	v_xor_b32_e32 v38, 32, v36
	v_xor_b32_e32 v39, 48, v36
	s_branch .LBB0_3
.LBB0_2:
	.loc	1 0 22 is_stmt 0                ; generate_amdgcn.py:0:22
	s_mov_b32 s4, -1
                                        ; implicit-def: $vgpr40
                                        ; implicit-def: $vgpr41
                                        ; implicit-def: $vgpr42
                                        ; implicit-def: $vgpr43
                                        ; implicit-def: $vgpr36
                                        ; implicit-def: $vgpr37
                                        ; implicit-def: $vgpr38
                                        ; implicit-def: $vgpr39
.LBB0_3:                                ; %Flow88
	s_clause 0x1
	s_load_b128 s[16:19], s[0:1], 0x10
	s_load_b64 s[12:13], s[0:1], 0x20
	s_and_not1_b32 vcc_lo, exec_lo, s4
	s_mov_b32 s4, 0
	s_cbranch_vccnz .LBB0_7
; %bb.4:                                ; %.lr.ph
.Ltmp14:
	.loc	2 43 12 is_stmt 1               ; standard.py:43:12 @[ generate_amdgcn.py:307:28 ]
	s_lshr_b32 s37, s6, 6
	s_mov_b32 s5, s4
	s_mov_b32 s6, s4
	s_mov_b32 s7, s4
	s_mov_b32 s8, s4
	s_mov_b32 s9, s4
	s_mov_b32 s10, s4
	s_mov_b32 s11, s4
	v_and_b32_e32 v1, 48, v1
	v_dual_mov_b32 v17, 0 :: v_dual_mov_b32 v18, 0
	v_dual_mov_b32 v25, 0 :: v_dual_mov_b32 v20, 0
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_lshl_or_b32 v40, v33, 6, v1
	v_dual_mov_b32 v1, s4 :: v_dual_mov_b32 v6, s9
	v_dual_mov_b32 v2, s5 :: v_dual_mov_b32 v3, s6
	v_mov_b32_e32 v8, s11
	v_lshl_or_b32 v36, v35, 5, v40
	v_xor_b32_e32 v41, 16, v40
	v_xor_b32_e32 v42, 32, v40
	v_xor_b32_e32 v43, 48, v40
	v_mov_b32_e32 v4, s7
	v_xor_b32_e32 v37, 16, v36
	v_xor_b32_e32 v38, 32, v36
	v_xor_b32_e32 v39, 48, v36
	v_mov_b32_e32 v5, s8
	v_dual_mov_b32 v7, s10 :: v_dual_mov_b32 v26, 0
	v_dual_mov_b32 v19, 0 :: v_dual_mov_b32 v22, 0
	v_dual_mov_b32 v21, 0 :: v_dual_mov_b32 v28, 0
	v_dual_mov_b32 v27, 0 :: v_dual_mov_b32 v32, 0
	v_dual_mov_b32 v31, 0 :: v_dual_mov_b32 v24, 0
	v_dual_mov_b32 v23, 0 :: v_dual_mov_b32 v30, 0
	v_mov_b32_e32 v29, 0
	s_add_i32 s36, s36, 64
	s_add_i32 s0, 0, 0x8000
	s_add_i32 s33, 0, 0x8400
	s_add_i32 s30, 0, 0x2000
	s_add_i32 s31, 0, 0x4000
	s_add_i32 s1, 0, 0x6000
	s_add_i32 s37, s37, -3
	s_mov_b32 s38, 1
	s_mov_b32 s26, s22
	s_mov_b32 s27, s23
	s_mov_b32 s5, 0
.Ltmp15:
.LBB0_5:                                ; =>This Inner Loop Header: Depth=1
	.loc	2 0 12 is_stmt 0                ; standard.py:0:12
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 308 14 is_stmt 1              ; generate_amdgcn.py:308:14
	s_lshl_b32 s6, s5, 6
	s_mov_b32 s8, s31
	.loc	1 342 17                        ; generate_amdgcn.py:342:17
	s_add_i32 s6, s36, s6
	.loc	1 356 31                        ; generate_amdgcn.py:356:31
	v_add_nc_u32_e32 v50, s8, v36
	.loc	1 350 30                        ; generate_amdgcn.py:350:30
	s_add_i32 s7, s6, s34
	.loc	1 348 30                        ; generate_amdgcn.py:348:30
	v_add_nc_u32_e32 v14, s6, v11
	.loc	1 356 39                        ; generate_amdgcn.py:356:39
	s_add_i32 s6, s6, s35
	.loc	1 350 30                        ; generate_amdgcn.py:350:30
	v_add_nc_u32_e32 v15, s7, v9
	v_add_nc_u32_e32 v16, s7, v10
	.loc	1 356 39                        ; generate_amdgcn.py:356:39
	v_add_nc_u32_e32 v44, s6, v9
	v_add_nc_u32_e32 v45, s6, v10
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	buffer_load_b32 v14, v14, s[20:23], 0 offen
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 350 22                        ; generate_amdgcn.py:350:22
	s_clause 0x3
	buffer_load_b128 v[60:63], v15, s[24:27], 0 offen
	buffer_load_b128 v[64:67], v16, s[24:27], 0 offen
	buffer_load_b128 v[68:71], v44, s[24:27], 0 offen
	buffer_load_b128 v[72:75], v45, s[24:27], 0 offen
	s_mov_b32 s6, s0
	s_mov_b32 s7, s4
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	v_add_nc_u32_e32 v15, s6, v40
	v_add_nc_u32_e32 v16, s6, v41
	v_add_nc_u32_e32 v44, s6, v42
	v_add_nc_u32_e32 v45, s6, v43
	.loc	1 350 22                        ; generate_amdgcn.py:350:22
	v_add_nc_u32_e32 v46, s7, v36
	v_add_nc_u32_e32 v47, s7, v37
	v_add_nc_u32_e32 v48, s7, v38
	v_add_nc_u32_e32 v49, s7, v39
	.loc	1 356 31                        ; generate_amdgcn.py:356:31
	v_add_nc_u32_e32 v51, s8, v37
	v_add_nc_u32_e32 v56, s8, v38
	v_add_nc_u32_e32 v57, s8, v39
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	ds_load_b128 v[76:79], v15
	ds_load_b128 v[80:83], v16
	ds_load_b128 v[84:87], v44
	ds_load_b128 v[88:91], v45
	.loc	1 350 22                        ; generate_amdgcn.py:350:22
	ds_load_b128 v[52:55], v46
	ds_load_b128 v[92:95], v47
	.loc	1 356 31                        ; generate_amdgcn.py:356:31
	ds_load_b128 v[96:99], v50
	.loc	1 350 22                        ; generate_amdgcn.py:350:22
	ds_load_b128 v[100:103], v48
	ds_load_b128 v[104:107], v49
	.loc	1 356 31                        ; generate_amdgcn.py:356:31
	ds_load_b128 v[108:111], v51
	ds_load_b128 v[112:115], v56
	ds_load_b128 v[116:119], v57
	s_mov_b32 s31, s1
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_add_i32 s1, s38, 1
	s_mov_b32 s4, s30
	s_cmp_lt_i32 s1, 2
	s_mov_b32 s0, s33
	s_cselect_b32 s38, s1, 0
	s_add_i32 s6, s5, 1
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	s_lshl_b32 s1, s38, 10
	.loc	1 350 22                        ; generate_amdgcn.py:350:22
	s_lshl_b32 s7, s38, 13
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	s_add_i32 s1, s1, 0
	.loc	1 350 22                        ; generate_amdgcn.py:350:22
	s_add_i32 s30, s7, 0
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	s_add_i32 s33, s1, 0x8000
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	s_waitcnt lgkmcnt(7)
	v_wmma_i32_16x16x16_iu8 v[44:51], v[52:55], v[76:79], v[1:8] neg_lo:[1,1,0]
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	s_waitcnt lgkmcnt(5)
	v_wmma_i32_16x16x16_iu8 v[52:59], v[96:99], v[76:79], v[1:8] neg_lo:[1,1,0]
	.loc	1 350 22                        ; generate_amdgcn.py:350:22
	v_add_nc_u32_e32 v16, s30, v13
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_wmma_i32_16x16x16_iu8 v[44:51], v[92:95], v[80:83], v[44:51] neg_lo:[1,1,0]
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	s_waitcnt lgkmcnt(0)
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_wmma_i32_16x16x16_iu8 v[52:59], v[108:111], v[80:83], v[52:59] neg_lo:[1,1,0]
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	s_barrier
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_wmma_i32_16x16x16_iu8 v[44:51], v[100:103], v[84:87], v[44:51] neg_lo:[1,1,0]
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_wmma_i32_16x16x16_iu8 v[52:59], v[112:115], v[84:87], v[52:59] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_wmma_i32_16x16x16_iu8 v[44:51], v[104:107], v[88:91], v[44:51] neg_lo:[1,1,0]
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_wmma_i32_16x16x16_iu8 v[52:59], v[116:119], v[88:91], v[52:59] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v44, v44
	v_cvt_f32_i32_e32 v45, v45
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_cvt_f32_i32_e32 v52, v52
	v_cvt_f32_i32_e32 v53, v53
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v46, v46
	v_cvt_f32_i32_e32 v47, v47
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_cvt_f32_i32_e32 v54, v54
	v_cvt_f32_i32_e32 v55, v55
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v48, v48
	v_cvt_f32_i32_e32 v49, v49
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_cvt_f32_i32_e32 v56, v56
	v_cvt_f32_i32_e32 v57, v57
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v50, v50
	v_cvt_f32_i32_e32 v51, v51
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_cvt_f32_i32_e32 v58, v58
	v_cvt_f32_i32_e32 v59, v59
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_dual_add_f32 v26, v26, v45 :: v_dual_add_nc_u32 v15, s1, v12
	v_dual_add_f32 v25, v25, v44 :: v_dual_add_f32 v32, v32, v47
	v_dual_add_f32 v31, v31, v46 :: v_dual_add_f32 v22, v22, v49
	v_dual_add_f32 v21, v21, v48 :: v_dual_add_f32 v30, v30, v51
	v_dual_add_f32 v29, v29, v50 :: v_dual_add_f32 v18, v18, v53
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_dual_add_f32 v17, v17, v52 :: v_dual_add_f32 v28, v28, v55
	v_dual_add_f32 v27, v27, v54 :: v_dual_add_f32 v20, v20, v57
	v_dual_add_f32 v19, v19, v56 :: v_dual_add_f32 v24, v24, v59
	v_add_f32_e32 v23, v23, v58
	.loc	1 356 31                        ; generate_amdgcn.py:356:31
	s_add_i32 s1, s30, 0x4000
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_cmp_lg_u32 s5, s37
	s_mov_b32 s5, s6
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	s_waitcnt vmcnt(4)
	ds_store_b32 v15, v14 offset:32768
	.loc	1 350 22                        ; generate_amdgcn.py:350:22
	s_waitcnt vmcnt(3)
	ds_store_b128 v16, v[60:63]
	s_waitcnt vmcnt(2)
	ds_store_b128 v16, v[64:67] offset:4096
	.loc	1 356 31                        ; generate_amdgcn.py:356:31
	s_waitcnt vmcnt(1)
	ds_store_b128 v16, v[68:71] offset:16384
	s_waitcnt vmcnt(0)
	ds_store_b128 v16, v[72:75] offset:20480
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_cbranch_scc1 .LBB0_5
; %bb.6:                                ; %Flow
	.loc	1 0 5 is_stmt 0                 ; generate_amdgcn.py:0:5
	s_mov_b32 s5, s4
	s_branch .LBB0_8
.LBB0_7:
	v_mov_b32_e32 v17, 0
	s_add_i32 s0, 0, 0x8000
	s_add_i32 s33, 0, 0x8400
	s_add_i32 s30, 0, 0x2000
	s_add_i32 s31, 0, 0x4000
	v_mov_b32_e32 v18, v17
	s_add_i32 s1, 0, 0x6000
	s_delay_alu instid0(VALU_DEP_1)
	v_dual_mov_b32 v26, v18 :: v_dual_mov_b32 v25, v17
	v_dual_mov_b32 v20, v18 :: v_dual_mov_b32 v19, v17
	v_dual_mov_b32 v22, v18 :: v_dual_mov_b32 v21, v17
	v_dual_mov_b32 v28, v18 :: v_dual_mov_b32 v27, v17
	v_dual_mov_b32 v32, v18 :: v_dual_mov_b32 v31, v17
	v_dual_mov_b32 v24, v18 :: v_dual_mov_b32 v23, v17
	v_dual_mov_b32 v30, v18 :: v_dual_mov_b32 v29, v17
.LBB0_8:                                ; %Flow89
	.loc	1 348 22 is_stmt 1              ; generate_amdgcn.py:348:22
	v_add_nc_u32_e32 v1, s0, v40
	v_add_nc_u32_e32 v2, s0, v41
	v_add_nc_u32_e32 v3, s0, v42
	v_add_nc_u32_e32 v4, s0, v43
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[13:16], v1
	ds_load_b128 v[9:12], v2
	ds_load_b128 v[5:8], v3
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_b128 v[1:4], v4
	v_cndmask_b32_e64 v45, 0, 1, s3
	v_and_b32_e32 v44, 0xf0, v0
	s_and_not1_b32 vcc_lo, exec_lo, s3
	s_delay_alu instid0(VALU_DEP_2)
	v_cmp_ne_u32_e64 s0, 1, v45
	s_cbranch_vccnz .LBB0_10
; %bb.9:
	.loc	1 350 22                        ; generate_amdgcn.py:350:22
	v_add_nc_u32_e32 v45, s5, v36
	v_add_nc_u32_e32 v46, s5, v37
	ds_load_b128 v[53:56], v45
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_mov_b32_e32 v45, 0
	.loc	1 350 22                        ; generate_amdgcn.py:350:22
	v_add_nc_u32_e32 v47, s5, v39
	v_add_nc_u32_e32 v48, s5, v38
	ds_load_b128 v[57:60], v46
	ds_load_b128 v[61:64], v47
	ds_load_b128 v[65:68], v48
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_mov_b32_e32 v46, v45
	v_mov_b32_e32 v47, v45
	v_mov_b32_e32 v48, v45
	v_mov_b32_e32 v49, v45
	v_mov_b32_e32 v50, v45
	v_mov_b32_e32 v51, v45
	v_mov_b32_e32 v52, v45
	s_waitcnt lgkmcnt(3)
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu8 v[45:52], v[53:56], v[13:16], v[45:52] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(2)
	v_wmma_i32_16x16x16_iu8 v[45:52], v[57:60], v[9:12], v[45:52] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu8 v[45:52], v[65:68], v[5:8], v[45:52] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[45:52], v[61:64], v[1:4], v[45:52] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cvt_f32_i32_e32 v47, v47
	v_cvt_f32_i32_e32 v48, v48
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cvt_f32_i32_e32 v49, v49
	v_cvt_f32_i32_e32 v50, v50
	v_cvt_f32_i32_e32 v51, v51
	v_cvt_f32_i32_e32 v52, v52
	v_cvt_f32_i32_e32 v45, v45
	v_cvt_f32_i32_e32 v46, v46
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_dual_add_f32 v32, v32, v48 :: v_dual_add_f32 v31, v31, v47
	v_dual_add_f32 v22, v22, v50 :: v_dual_add_f32 v21, v21, v49
	s_delay_alu instid0(VALU_DEP_3)
	v_add_f32_e32 v26, v26, v46
	v_dual_add_f32 v30, v30, v52 :: v_dual_add_f32 v29, v29, v51
	v_add_f32_e32 v25, v25, v45
.LBB0_10:
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	s_and_b32 vcc_lo, exec_lo, s0
	s_cbranch_vccnz .LBB0_12
; %bb.11:
	.loc	1 356 31                        ; generate_amdgcn.py:356:31
	v_add_nc_u32_e32 v45, s31, v36
	v_add_nc_u32_e32 v46, s31, v37
	ds_load_b128 v[53:56], v45
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_mov_b32_e32 v45, 0
	.loc	1 356 31                        ; generate_amdgcn.py:356:31
	v_add_nc_u32_e32 v47, s31, v39
	v_add_nc_u32_e32 v48, s31, v38
	ds_load_b128 v[57:60], v46
	ds_load_b128 v[61:64], v47
	ds_load_b128 v[65:68], v48
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_mov_b32_e32 v46, v45
	v_mov_b32_e32 v47, v45
	v_mov_b32_e32 v48, v45
	v_mov_b32_e32 v49, v45
	v_mov_b32_e32 v50, v45
	v_mov_b32_e32 v51, v45
	v_mov_b32_e32 v52, v45
	s_waitcnt lgkmcnt(3)
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu8 v[45:52], v[53:56], v[13:16], v[45:52] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(2)
	v_wmma_i32_16x16x16_iu8 v[45:52], v[57:60], v[9:12], v[45:52] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu8 v[45:52], v[65:68], v[5:8], v[45:52] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[45:52], v[61:64], v[1:4], v[45:52] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cvt_f32_i32_e32 v1, v47
	v_cvt_f32_i32_e32 v2, v48
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cvt_f32_i32_e32 v3, v49
	v_cvt_f32_i32_e32 v4, v50
	v_cvt_f32_i32_e32 v5, v51
	v_cvt_f32_i32_e32 v6, v52
	v_cvt_f32_i32_e32 v7, v45
	v_cvt_f32_i32_e32 v8, v46
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_dual_add_f32 v28, v28, v2 :: v_dual_add_f32 v27, v27, v1
	v_dual_add_f32 v20, v20, v4 :: v_dual_add_f32 v19, v19, v3
	v_dual_add_f32 v24, v24, v6 :: v_dual_add_f32 v23, v23, v5
	s_delay_alu instid0(VALU_DEP_4)
	v_dual_add_f32 v18, v18, v8 :: v_dual_add_f32 v17, v17, v7
.LBB0_12:
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	s_waitcnt lgkmcnt(0)
	v_add_nc_u32_e32 v1, s33, v40
	v_mov_b32_e32 v40, 0
	v_dual_mov_b32 v47, 0 :: v_dual_add_nc_u32 v2, s33, v41
	v_add_nc_u32_e32 v3, s33, v42
	v_mov_b32_e32 v42, 0
	v_dual_mov_b32 v49, 0 :: v_dual_add_nc_u32 v4, s33, v43
	ds_load_b128 v[13:16], v1
	ds_load_b128 v[9:12], v2
	ds_load_b128 v[5:8], v3
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_b128 v[1:4], v4
	v_cndmask_b32_e64 v41, 0, 1, s2
	v_dual_mov_b32 v43, 0 :: v_dual_mov_b32 v48, 0
	v_dual_mov_b32 v46, 0 :: v_dual_mov_b32 v45, 0
	s_delay_alu instid0(VALU_DEP_3)
	v_cmp_ne_u32_e64 s0, 1, v41
	v_mov_b32_e32 v41, 0
	s_and_not1_b32 vcc_lo, exec_lo, s2
	s_cbranch_vccnz .LBB0_14
; %bb.13:
	v_dual_mov_b32 v49, 0 :: v_dual_add_nc_u32 v42, s30, v37
	.loc	1 350 22                        ; generate_amdgcn.py:350:22
	v_add_nc_u32_e32 v41, s30, v36
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_dual_mov_b32 v54, v49 :: v_dual_add_nc_u32 v43, s30, v38
	v_mov_b32_e32 v50, v49
	.loc	1 350 22                        ; generate_amdgcn.py:350:22
	ds_load_b128 v[45:48], v41
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_dual_mov_b32 v52, v49 :: v_dual_add_nc_u32 v41, s30, v39
	.loc	1 350 22                        ; generate_amdgcn.py:350:22
	ds_load_b128 v[57:60], v42
	ds_load_b128 v[61:64], v41
	ds_load_b128 v[65:68], v43
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_mov_b32_e32 v51, v49
	v_mov_b32_e32 v53, v49
	v_mov_b32_e32 v55, v49
	v_mov_b32_e32 v56, v49
	s_waitcnt lgkmcnt(3)
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu8 v[49:56], v[45:48], v[13:16], v[49:56] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(2)
	v_wmma_i32_16x16x16_iu8 v[49:56], v[57:60], v[9:12], v[49:56] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu8 v[49:56], v[65:68], v[5:8], v[49:56] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[49:56], v[61:64], v[1:4], v[49:56] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cvt_f32_i32_e32 v42, v51
	v_cvt_f32_i32_e32 v46, v52
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cvt_f32_i32_e32 v41, v53
	v_cvt_f32_i32_e32 v43, v54
	v_cvt_f32_i32_e32 v45, v55
	v_cvt_f32_i32_e32 v48, v56
	v_cvt_f32_i32_e32 v47, v49
	v_cvt_f32_i32_e32 v49, v50
.LBB0_14:
	.loc	1 0 19 is_stmt 0                ; generate_amdgcn.py:0:19
	v_dual_mov_b32 v50, 0 :: v_dual_mov_b32 v51, 0
	v_dual_mov_b32 v53, 0 :: v_dual_mov_b32 v52, 0
	v_dual_mov_b32 v55, 0 :: v_dual_mov_b32 v54, 0
	v_mov_b32_e32 v56, 0
	.loc	1 359 28 is_stmt 1              ; generate_amdgcn.py:359:28
	s_and_b32 vcc_lo, exec_lo, s0
	s_cbranch_vccnz .LBB0_16
; %bb.15:
	v_dual_mov_b32 v52, 0 :: v_dual_add_nc_u32 v37, s1, v37
	.loc	1 356 31                        ; generate_amdgcn.py:356:31
	v_add_nc_u32_e32 v36, s1, v36
	v_add_nc_u32_e32 v40, s1, v39
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_dual_mov_b32 v57, v52 :: v_dual_add_nc_u32 v50, s1, v38
	v_mov_b32_e32 v53, v52
	.loc	1 356 31                        ; generate_amdgcn.py:356:31
	ds_load_b128 v[60:63], v36
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_mov_b32_e32 v55, v52
	.loc	1 356 31                        ; generate_amdgcn.py:356:31
	ds_load_b128 v[36:39], v37
	ds_load_b128 v[64:67], v40
	ds_load_b128 v[68:71], v50
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_mov_b32_e32 v54, v52
	v_mov_b32_e32 v56, v52
	v_mov_b32_e32 v58, v52
	v_mov_b32_e32 v59, v52
	s_waitcnt lgkmcnt(3)
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu8 v[52:59], v[60:63], v[13:16], v[52:59] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(2)
	v_wmma_i32_16x16x16_iu8 v[52:59], v[36:39], v[9:12], v[52:59] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu8 v[52:59], v[68:71], v[5:8], v[52:59] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[52:59], v[64:67], v[1:4], v[52:59] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cvt_f32_i32_e32 v40, v52
	v_cvt_f32_i32_e32 v50, v53
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cvt_f32_i32_e32 v52, v54
	v_cvt_f32_i32_e32 v55, v55
	v_cvt_f32_i32_e32 v51, v56
	v_cvt_f32_i32_e32 v53, v57
	v_cvt_f32_i32_e32 v54, v58
	v_cvt_f32_i32_e32 v56, v59
.LBB0_16:
	.loc	1 300 32                        ; generate_amdgcn.py:300:32
	s_waitcnt lgkmcnt(0)
	v_lshrrev_b32_e32 v2, 1, v35
	.loc	1 378 22                        ; generate_amdgcn.py:378:22
	v_or_b32_e32 v1, s29, v33
	.loc	1 378 14 is_stmt 0              ; generate_amdgcn.py:378:14
	s_and_b32 s9, s17, 0xffff
	s_mov_b32 s11, 0x31027000
	s_mov_b32 s10, 0x7ffffffe
	.loc	1 300 32 is_stmt 1              ; generate_amdgcn.py:300:32
	v_and_or_b32 v2, v34, 1, v2
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_dual_add_f32 v42, v31, v42 :: v_dual_lshlrev_b32 v3, 1, v1
	.loc	1 378 14                        ; generate_amdgcn.py:378:14
	s_mov_b32 s8, s16
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_add_f32_e32 v45, v29, v45
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 300 32                        ; generate_amdgcn.py:300:32
	v_or_b32_e32 v9, 2, v2
	.loc	1 378 14                        ; generate_amdgcn.py:378:14
	buffer_load_u16 v11, v3, s[8:11], 0 offen
	.loc	1 379 22                        ; generate_amdgcn.py:379:22
	v_or_b32_e32 v3, s14, v2
	.loc	1 300 32                        ; generate_amdgcn.py:300:32
	v_or_b32_e32 v8, 4, v2
	v_or_b32_e32 v4, 14, v2
	.loc	1 379 22                        ; generate_amdgcn.py:379:22
	v_or_b32_e32 v12, s14, v9
	.loc	1 300 32                        ; generate_amdgcn.py:300:32
	v_or_b32_e32 v5, 12, v2
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_dual_add_f32 v38, v26, v49 :: v_dual_lshlrev_b32 v3, 1, v3
	.loc	1 300 32                        ; generate_amdgcn.py:300:32
	v_or_b32_e32 v6, 10, v2
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_dual_add_f32 v37, v25, v47 :: v_dual_lshlrev_b32 v12, 1, v12
	.loc	1 300 32                        ; generate_amdgcn.py:300:32
	v_or_b32_e32 v7, 8, v2
	v_or_b32_e32 v10, 6, v2
	.loc	1 382 23                        ; generate_amdgcn.py:382:23
	v_add_lshl_u32 v2, s28, v2, 1
	.loc	1 379 14                        ; generate_amdgcn.py:379:14
	s_and_b32 s9, s19, 0xffff
	s_mov_b32 s8, s18
	s_clause 0x2
	buffer_load_u16 v34, v3, s[8:11], 0 offen
	buffer_load_u16 v12, v12, s[8:11], 0 offen
	buffer_load_u16 v35, v2, s[8:11], 0 offen
	.loc	1 382 23                        ; generate_amdgcn.py:382:23
	v_add_lshl_u32 v2, s28, v9, 1
	v_add_lshl_u32 v3, s28, v8, 1
	.loc	1 379 22                        ; generate_amdgcn.py:379:22
	v_or_b32_e32 v13, s14, v8
	.loc	1 382 23                        ; generate_amdgcn.py:382:23
	v_add_lshl_u32 v8, s28, v10, 1
	.loc	1 379 22                        ; generate_amdgcn.py:379:22
	v_or_b32_e32 v15, s14, v7
	.loc	1 382 23                        ; generate_amdgcn.py:382:23
	v_add_lshl_u32 v7, s28, v7, 1
	.loc	1 379 22                        ; generate_amdgcn.py:379:22
	v_or_b32_e32 v16, s14, v6
	v_or_b32_e32 v33, s14, v5
	.loc	1 382 23                        ; generate_amdgcn.py:382:23
	v_add_lshl_u32 v6, s28, v6, 1
	v_add_lshl_u32 v5, s28, v5, 1
	v_add_lshl_u32 v9, s28, v4, 1
	.loc	1 379 22                        ; generate_amdgcn.py:379:22
	v_or_b32_e32 v14, s14, v10
	.loc	1 382 23                        ; generate_amdgcn.py:382:23
	s_clause 0x6
	buffer_load_u16 v10, v2, s[8:11], 0 offen
	buffer_load_u16 v36, v3, s[8:11], 0 offen
	buffer_load_u16 v8, v8, s[8:11], 0 offen
	buffer_load_u16 v7, v7, s[8:11], 0 offen
	buffer_load_u16 v6, v6, s[8:11], 0 offen
	buffer_load_u16 v5, v5, s[8:11], 0 offen
	buffer_load_u16 v9, v9, s[8:11], 0 offen
	.loc	1 379 22                        ; generate_amdgcn.py:379:22
	v_or_b32_e32 v4, s14, v4
	.loc	1 379 14 is_stmt 0              ; generate_amdgcn.py:379:14
	v_lshlrev_b32_e32 v3, 1, v13
	.loc	1 375 17 is_stmt 1              ; generate_amdgcn.py:375:17
	v_dual_add_f32 v40, v17, v40 :: v_dual_lshlrev_b32 v13, 1, v15
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_dual_add_f32 v43, v22, v43 :: v_dual_lshlrev_b32 v2, 1, v14
	v_dual_add_f32 v39, v32, v46 :: v_dual_lshlrev_b32 v14, 1, v16
	.loc	1 379 14                        ; generate_amdgcn.py:379:14
	s_clause 0x1
	buffer_load_u16 v15, v2, s[8:11], 0 offen
	buffer_load_u16 v16, v3, s[8:11], 0 offen
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_dual_add_f32 v46, v18, v50 :: v_dual_lshlrev_b32 v3, 1, v4
	v_dual_add_f32 v47, v28, v55 :: v_dual_lshlrev_b32 v2, 1, v33
	.loc	1 379 14                        ; generate_amdgcn.py:379:14
	s_clause 0x3
	buffer_load_u16 v4, v14, s[8:11], 0 offen
	buffer_load_u16 v13, v13, s[8:11], 0 offen
	buffer_load_u16 v14, v3, s[8:11], 0 offen
	buffer_load_u16 v33, v2, s[8:11], 0 offen
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v17, v17, v40, s2
	v_cndmask_b32_e64 v18, v18, v46, s2
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_dual_add_f32 v49, v20, v53 :: v_dual_add_f32 v50, v19, v51
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v25, v25, v37, s2
	.loc	1 300 32                        ; generate_amdgcn.py:300:32
	v_lshrrev_b32_e32 v2, 1, v44
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_dual_add_f32 v41, v21, v41 :: v_dual_add_f32 v44, v30, v48
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_add_f32_e32 v48, v27, v52
	v_dual_add_f32 v51, v24, v56 :: v_dual_add_f32 v52, v23, v54
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v28, v28, v47, s2
	v_cndmask_b32_e64 v19, v19, v50, s2
	v_cndmask_b32_e64 v20, v20, v49, s2
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b32_e32 v54, 0x7632
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v27, v27, v48, s2
	v_cndmask_b32_e64 v21, v21, v41, s2
	v_cndmask_b32_e64 v22, v22, v43, s2
	v_cndmask_b32_e64 v23, v23, v52, s2
	v_cndmask_b32_e64 v24, v24, v51, s2
	v_cndmask_b32_e64 v26, v26, v38, s2
	v_cndmask_b32_e64 v31, v31, v42, s2
	v_cndmask_b32_e64 v32, v32, v39, s2
	v_cndmask_b32_e64 v29, v29, v45, s2
	v_cndmask_b32_e64 v30, v30, v44, s2
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v3.h, 0
	v_dual_mov_b32 v53, 0x5410 :: v_dual_and_b32 v0, 16, v0
	s_mov_b32 s7, 0x76543210
	s_and_b32 s13, s13, 0xffff
	s_delay_alu instid0(VALU_DEP_2)
	v_mov_b16_e32 v37.h, v3.h
	v_mov_b16_e32 v38.h, v3.h
	v_mov_b16_e32 v39.h, v3.h
	v_mov_b16_e32 v40.h, v3.h
	.loc	1 378 14                        ; generate_amdgcn.py:378:14
	s_waitcnt vmcnt(16)
	v_lshlrev_b32_e32 v11, 16, v11
	.loc	1 382 23                        ; generate_amdgcn.py:382:23
	s_waitcnt vmcnt(12)
	v_lshlrev_b32_e32 v10, 16, v10
	.loc	1 383 25                        ; generate_amdgcn.py:383:25
	s_waitcnt vmcnt(9)
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_dual_mul_f32 v10, v11, v10 :: v_dual_lshlrev_b32 v7, 16, v7
	.loc	1 383 13 is_stmt 0              ; generate_amdgcn.py:383:13
	v_mul_f32_e32 v10, v18, v10
	.loc	1 379 14 is_stmt 1              ; generate_amdgcn.py:379:14
	v_lshlrev_b32_e32 v34, 16, v34
	.loc	1 382 23                        ; generate_amdgcn.py:382:23
	v_lshlrev_b32_e32 v35, 16, v35
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 383 25                        ; generate_amdgcn.py:383:25
	v_dual_mul_f32 v7, v11, v7 :: v_dual_lshlrev_b32 v8, 16, v8
	.loc	1 382 23                        ; generate_amdgcn.py:382:23
	s_waitcnt vmcnt(7)
	v_lshlrev_b32_e32 v5, 16, v5
	v_lshlrev_b32_e32 v36, 16, v36
	.loc	1 383 25                        ; generate_amdgcn.py:383:25
	s_waitcnt vmcnt(6)
	v_dual_mul_f32 v8, v11, v8 :: v_dual_lshlrev_b32 v9, 16, v9
	.loc	1 379 14                        ; generate_amdgcn.py:379:14
	v_lshlrev_b32_e32 v12, 16, v12
	.loc	1 380 16                        ; generate_amdgcn.py:380:16
	v_mul_f32_e32 v34, v11, v34
	.loc	1 383 25                        ; generate_amdgcn.py:383:25
	v_mul_f32_e32 v35, v11, v35
	v_dual_mul_f32 v5, v11, v5 :: v_dual_lshlrev_b32 v6, 16, v6
	.loc	1 380 9                         ; generate_amdgcn.py:380:9
	s_waitcnt vmcnt(4)
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_mul_f32 v25, v25, v34 :: v_dual_lshlrev_b32 v16, 16, v16
	.loc	1 383 13                        ; generate_amdgcn.py:383:13
	v_mul_f32_e32 v17, v17, v35
	.loc	1 383 25 is_stmt 0              ; generate_amdgcn.py:383:25
	v_mul_f32_e32 v35, v11, v36
	.loc	1 380 16 is_stmt 1              ; generate_amdgcn.py:380:16
	s_waitcnt vmcnt(2)
	s_delay_alu instid0(VALU_DEP_3)
	v_dual_mul_f32 v16, v11, v16 :: v_dual_lshlrev_b32 v13, 16, v13
	.loc	1 383 25                        ; generate_amdgcn.py:383:25
	v_mul_f32_e32 v6, v11, v6
	v_mul_f32_e32 v9, v11, v9
	.loc	1 380 16                        ; generate_amdgcn.py:380:16
	v_dual_mul_f32 v12, v11, v12 :: v_dual_lshlrev_b32 v15, 16, v15
	.loc	1 379 14                        ; generate_amdgcn.py:379:14
	v_lshlrev_b32_e32 v4, 16, v4
	.loc	1 383 13                        ; generate_amdgcn.py:383:13
	s_waitcnt vmcnt(1)
	v_dual_mul_f32 v27, v27, v35 :: v_dual_lshlrev_b32 v14, 16, v14
	s_waitcnt vmcnt(0)
	v_dual_mul_f32 v8, v28, v8 :: v_dual_lshlrev_b32 v33, 16, v33
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_dual_mul_f32 v18, 0xbfb8aa3b, v17 :: v_dual_mul_f32 v7, v19, v7
	.loc	1 380 16                        ; generate_amdgcn.py:380:16
	v_mul_f32_e32 v15, v11, v15
	v_dual_mul_f32 v13, v11, v13 :: v_dual_mul_f32 v6, v20, v6
	v_dual_mul_f32 v4, v11, v4 :: v_dual_mul_f32 v9, v24, v9
	v_dual_mul_f32 v19, v11, v33 :: v_dual_mul_f32 v12, v26, v12
	v_dual_mul_f32 v11, v11, v14 :: v_dual_mul_f32 v20, 0xbfb8aa3b, v27
	.loc	1 383 13                        ; generate_amdgcn.py:383:13
	v_dual_mul_f32 v5, v23, v5 :: v_dual_mul_f32 v14, 0xbfb8aa3b, v10
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_mul_f32_e32 v23, 0xbfb8aa3b, v8
	.loc	1 380 9                         ; generate_amdgcn.py:380:9
	v_dual_mul_f32 v4, v22, v4 :: v_dual_mul_f32 v13, v21, v13
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_dual_mul_f32 v21, 0xbfb8aa3b, v7 :: v_dual_mul_f32 v24, 0xbfb8aa3b, v5
	v_mul_f32_e32 v22, 0xbfb8aa3b, v6
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v18
	v_cmp_gt_f32_e64 s0, 0xc2fc0000, v23
	v_cmp_gt_f32_e64 s3, 0xc2fc0000, v21
	.loc	1 380 9                         ; generate_amdgcn.py:380:9
	v_dual_mul_f32 v11, v30, v11 :: v_dual_mul_f32 v26, 0xbfb8aa3b, v9
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cmp_gt_f32_e64 s2, 0xc2fc0000, v22
	v_cndmask_b32_e64 v18, 0, 0x42800000, vcc_lo
	s_delay_alu instid0(VALU_DEP_4)
	v_cndmask_b32_e64 v21, 0, 0x42800000, s3
	v_cndmask_b32_e64 v28, 0, 0xffffffc0, vcc_lo
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v14
	v_cndmask_b32_e64 v22, 0, 0x42800000, s2
	v_cndmask_b32_e64 v23, 0, 0x42800000, s0
	v_fmac_f32_e32 v21, 0xbfb8aa3b, v7
	v_cmp_gt_f32_e64 s1, 0xc2fc0000, v20
	v_cndmask_b32_e64 v14, 0, 0x42800000, vcc_lo
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_dual_fmac_f32 v22, 0xbfb8aa3b, v6 :: v_dual_fmac_f32 v23, 0xbfb8aa3b, v8
	v_exp_f32_e32 v21, v21
	v_cndmask_b32_e64 v33, 0, 0xffffffc0, s3
	s_delay_alu instid0(VALU_DEP_3)
	v_fmac_f32_e32 v14, 0xbfb8aa3b, v10
	v_cndmask_b32_e64 v20, 0, 0x42800000, s1
	v_cmp_gt_f32_e64 s4, 0xc2fc0000, v26
	v_exp_f32_e32 v23, v23
	.loc	1 380 9                         ; generate_amdgcn.py:380:9
	v_dual_mul_f32 v19, v29, v19 :: v_dual_fmac_f32 v18, 0xbfb8aa3b, v17
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v30, 0, 0xffffffc0, s0
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	v_cndmask_b32_e64 v26, 0, 0x42800000, s4
	v_ldexp_f32 v21, v21, v33
	v_fmac_f32_e32 v20, 0xbfb8aa3b, v27
	v_exp_f32_e32 v18, v18
	v_cmp_gt_f32_e64 s5, 0xc2fc0000, v24
	v_exp_f32_e32 v14, v14
	.loc	1 385 34 is_stmt 0              ; generate_amdgcn.py:385:34
	v_add_f32_e32 v21, 1.0, v21
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_ldexp_f32 v23, v23, v30
	v_fmac_f32_e32 v26, 0xbfb8aa3b, v9
	v_cndmask_b32_e64 v24, 0, 0x42800000, s5
	v_cndmask_b32_e64 v29, 0, 0xffffffc0, vcc_lo
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v43, null, v21, v21, v7
	.loc	1 385 34                        ; generate_amdgcn.py:385:34
	v_add_f32_e32 v23, 1.0, v23
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_exp_f32_e32 v26, v26
	v_ldexp_f32 v18, v18, v28
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_4) | instid1(VALU_DEP_3)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_rcp_f32_e32 v52, v43
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v28, 0, 0xffffffc0, s4
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v33, null, v23, v23, v8
	v_div_scale_f32 v44, s4, v7, v21, v7
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_ldexp_f32 v14, v14, v29
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_rcp_f32_e32 v49, v33
	s_delay_alu instid0(TRANS32_DEP_3) | instskip(SKIP_1) | instid1(TRANS32_DEP_2)
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_ldexp_f32 v26, v26, v28
	v_cndmask_b32_e64 v34, 0, 0xffffffc0, s5
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v62, -v43, v52, 1.0
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_exp_f32_e32 v22, v22
	.loc	1 380 9 is_stmt 1               ; generate_amdgcn.py:380:9
	v_dual_mul_f32 v15, v32, v15 :: v_dual_mul_f32 v16, v31, v16
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v32, 0, 0xffffffc0, s2
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(TRANS32_DEP_2)
	.loc	1 385 22 is_stmt 0              ; generate_amdgcn.py:385:22
	v_fmac_f32_e32 v52, v62, v52
	.loc	1 385 34                        ; generate_amdgcn.py:385:34
	v_add_f32_e32 v26, 1.0, v26
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v59, -v33, v49, 1.0
	.loc	1 385 34                        ; generate_amdgcn.py:385:34
	v_add_f32_e32 v18, 1.0, v18
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_exp_f32_e32 v20, v20
	v_cndmask_b32_e64 v31, 0, 0xffffffc0, s1
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v45, null, v26, v26, v9
	v_fmac_f32_e32 v49, v59, v49
	v_div_scale_f32 v28, null, v18, v18, v17
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_rcp_f32_e32 v56, v45
	v_div_scale_f32 v29, vcc_lo, v17, v18, v17
	v_rcp_f32_e32 v30, v28
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_ldexp_f32 v22, v22, v32
	s_delay_alu instid0(TRANS32_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_ldexp_f32 v20, v20, v31
	.loc	1 385 34                        ; generate_amdgcn.py:385:34
	v_add_f32_e32 v22, 1.0, v22
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v63, -v45, v56, 1.0
	v_fma_f32 v55, -v28, v30, 1.0
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_div_scale_f32 v41, null, v22, v22, v6
	v_fmac_f32_e32 v56, v63, v56
	v_mul_f32_e32 v63, v44, v52
	v_div_scale_f32 v46, s5, v9, v26, v9
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_rcp_f32_e32 v51, v41
	v_fma_f32 v70, -v43, v63, v44
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_dual_fmac_f32 v30, v55, v30 :: v_dual_fmac_f32 v63, v70, v52
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_dual_fmac_f32 v24, 0xbfb8aa3b, v5 :: v_dual_mul_f32 v65, v29, v30
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v61, -v41, v51, 1.0
	.loc	1 385 34                        ; generate_amdgcn.py:385:34
	v_add_f32_e32 v14, 1.0, v14
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_exp_f32_e32 v24, v24
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fmac_f32_e32 v51, v61, v51
	v_div_scale_f32 v31, null, v14, v14, v10
	v_div_scale_f32 v32, s0, v10, v14, v10
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	v_rcp_f32_e32 v48, v31
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_ldexp_f32 v24, v24, v34
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v34, s1, v8, v23, v8
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 385 34                        ; generate_amdgcn.py:385:34
	v_add_f32_e32 v24, 1.0, v24
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v55, -v31, v48, 1.0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_div_scale_f32 v47, null, v24, v24, v5
	v_rcp_f32_e32 v57, v47
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v64, -v47, v57, 1.0
	.loc	1 385 34                        ; generate_amdgcn.py:385:34
	v_dual_add_f32 v20, 1.0, v20 :: v_dual_fmac_f32 v57, v64, v57
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v35, null, v20, v20, v27
	v_div_scale_f32 v36, s2, v27, v20, v27
	v_rcp_f32_e32 v50, v35
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v60, -v35, v50, 1.0
	v_fmac_f32_e32 v50, v60, v50
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_dual_mul_f32 v60, v34, v49 :: v_dual_mul_f32 v61, v36, v50
	v_fma_f32 v67, -v33, v60, v34
	v_div_scale_f32 v58, s6, v5, v24, v5
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_fma_f32 v68, -v35, v61, v36
	v_fmac_f32_e32 v48, v55, v48
	v_fma_f32 v55, -v28, v65, v29
	v_dual_fmac_f32 v60, v67, v49 :: v_dual_fmac_f32 v61, v68, v50
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mul_f32_e32 v59, v32, v48
	v_fmac_f32_e32 v65, v55, v30
	v_div_scale_f32 v42, s3, v6, v22, v6
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v55, -v31, v59, v32
	v_fma_f32 v28, -v28, v65, v29
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fmac_f32_e32 v59, v55, v48
	v_div_fmas_f32 v28, v28, v30, v65
	s_mov_b32 vcc_lo, s0
	v_fma_f32 v30, -v33, v60, v34
	v_fma_f32 v33, -v43, v63, v44
	v_fma_f32 v29, -v31, v59, v32
	v_div_fixup_f32 v17, v28, v18, v17
	v_fma_f32 v31, -v35, v61, v36
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v18, v29, v48, v59
	s_mov_b32 vcc_lo, s1
	v_div_fmas_f32 v28, v30, v49, v60
	s_mov_b32 vcc_lo, s2
	v_div_fixup_f32 v10, v18, v14, v10
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v14, v25, v17
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fmas_f32 v29, v31, v50, v61
	s_mov_b32 vcc_lo, s3
	v_div_fixup_f32 v8, v28, v23, v8
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v10, v12, v10
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v3.l, v14.h
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v20, v29, v20, v27
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cmp_o_f32_e64 s0, v14, v14
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v8, v15, v8
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v37.l, v10.h
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_mul_f32_e32 v62, v42, v51
	.loc	1 385 15 is_stmt 0              ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v16, v16, v20
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_cmp_o_f32_e64 s1, v8, v8
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v69, -v41, v62, v42
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v38.l, v16.h
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_mul_f32_e32 v66, v58, v57
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cmp_o_f32_e64 s2, v16, v16
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fmac_f32_e32 v62, v69, v51
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v32, -v41, v62, v42
	v_div_fmas_f32 v17, v32, v51, v62
	s_mov_b32 vcc_lo, s4
	v_div_fmas_f32 v18, v33, v52, v63
	s_mov_b32 vcc_lo, s5
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_div_fixup_f32 v6, v17, v22, v6
	v_dual_mul_f32 v64, v46, v56 :: v_dual_and_b32 v17, 1, v3
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v3.l, v8.h
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v7, v18, v21, v7
	.loc	1 385 15 is_stmt 0              ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v4, v4, v6
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v71, -v45, v64, v46
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_cmp_o_f32_e64 s3, v4, v4
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fmac_f32_e32 v64, v71, v56
	v_fma_f32 v34, -v45, v64, v46
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_div_fmas_f32 v12, v34, v56, v64
	s_mov_b32 vcc_lo, s6
	v_div_fixup_f32 v9, v12, v26, v9
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_add3_u32 v12, v14, v17, 0x7fff
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v9, v11, v9
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_and_b32_e32 v11, 1, v3
	v_mov_b16_e32 v3.l, v4.h
	v_add3_u32 v8, v8, v11, 0x7fff
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_cndmask_b16 v8.h, 0x7fff, v8.h, s1
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_dual_mul_f32 v6, v13, v7 :: v_dual_and_b32 v13, 1, v38
	.loc	1 385 22 is_stmt 0              ; generate_amdgcn.py:385:22
	v_fma_f32 v72, -v47, v66, v58
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_and_b32_e32 v7, 1, v37
	v_mov_b16_e32 v39.l, v6.h
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cmp_o_f32_e64 s4, v6, v6
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fmac_f32_e32 v66, v72, v57
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_4) | instid1(VALU_DEP_3)
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_add3_u32 v7, v10, v7, 0x7fff
	v_cndmask_b16 v7.l, 0x7fff, v12.h, s0
	v_and_b32_e32 v14, 1, v39
	v_cmp_o_f32_e64 s0, v9, v9
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v35, -v47, v66, v58
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_add3_u32 v6, v6, v14, 0x7fff
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fmas_f32 v15, v35, v57, v66
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cmp_o_f32_e32 vcc_lo, v10, v10
	v_and_b32_e32 v10, 1, v3
	v_mov_b16_e32 v3.l, v9.h
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v5, v15, v24, v5
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cndmask_b16 v7.h, 0x7fff, v7.h, vcc_lo
	v_cmp_eq_u32_e32 vcc_lo, 0, v0
	v_add3_u32 v4, v4, v10, 0x7fff
	v_and_b32_e32 v3, 1, v3
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v5, v19, v5
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_add3_u32 v0, v16, v13, 0x7fff
	v_cndmask_b32_e32 v10, 0x1054, v53, vcc_lo
	v_cndmask_b32_e32 v11, 0x3276, v54, vcc_lo
	v_cndmask_b16 v4.h, 0x7fff, v4.h, s3
	v_mov_b16_e32 v40.l, v5.h
	v_cmp_o_f32_e64 s3, v5, v5
	v_add3_u32 v3, v9, v3, 0x7fff
	v_lshl_or_b32 v9, v10, 8, v10
	v_lshl_or_b32 v10, v11, 8, v11
	v_and_b32_e32 v12, 1, v40
	v_cndmask_b16 v4.l, 0x7fff, v6.h, s4
	v_cndmask_b16 v8.l, 0x7fff, v0.h, s2
	v_cndmask_b16 v0.h, 0x7fff, v3.h, s0
	v_and_b32_e32 v3, 0x540054, v9
	v_add3_u32 v5, v5, v12, 0x7fff
	v_dual_cndmask_b32 v6, v4, v7 :: v_dual_and_b32 v9, 0x760076, v10
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_lshl_or_b32 v3, v3, 4, v3
	v_cndmask_b16 v0.l, 0x7fff, v5.h, s3
	.loc	1 390 18 is_stmt 0              ; generate_amdgcn.py:390:18
	v_mul_lo_u32 v5, v1, s15
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cndmask_b32_e32 v1, v7, v4, vcc_lo
	v_lshl_or_b32 v4, v9, 4, v9
	v_and_b32_e32 v3, 0x5040504, v3
	v_cndmask_b32_e32 v7, v8, v0, vcc_lo
	v_cndmask_b32_e32 v8, v0, v8, vcc_lo
	v_permlanex16_b32 v1, v1, s7, 0xfedcba98 op_sel:[1,0]
	v_and_b32_e32 v4, 0x7060706, v4
	.loc	1 390 18                        ; generate_amdgcn.py:390:18
	v_or_b32_e32 v9, s14, v2
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_permlanex16_b32 v7, v7, s7, 0xfedcba98 op_sel:[1,0]
	s_mov_b32 s14, s10
	v_perm_b32 v0, v1, v6, v3
	v_perm_b32 v1, v1, v6, v4
	s_mov_b32 s15, s11
	v_perm_b32 v2, v7, v8, v3
	v_perm_b32 v3, v7, v8, v4
	v_add_lshl_u32 v4, v9, v5, 1
	buffer_store_b128 v[0:3], v4, s[12:15], 0 offen
	.loc	1 283 1 is_stmt 1               ; generate_amdgcn.py:283:1
	s_nop 0
	s_sendmsg sendmsg(MSG_DEALLOC_VGPRS)
	s_endpgm
.Ltmp16:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_int8xint8_nt_pc_swiglu_bm16_bn128_bk64_gm4_w8_s3_weu2_sk1_evenk
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
		.amdhsa_next_free_sgpr 39
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
		.amdhsa_inst_pref_size 46
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
	.size	amd_strix_halo_gfx1151_int8xint8_nt_pc_swiglu_bm16_bn128_bk64_gm4_w8_s3_weu2_sk1_evenk, .Lfunc_end0-amd_strix_halo_gfx1151_int8xint8_nt_pc_swiglu_bm16_bn128_bk64_gm4_w8_s3_weu2_sk1_evenk
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_int8xint8_nt_pc_swiglu_bm16_bn128_bk64_gm4_w8_s3_weu2_sk1_evenk.num_vgpr, 120
	.set amd_strix_halo_gfx1151_int8xint8_nt_pc_swiglu_bm16_bn128_bk64_gm4_w8_s3_weu2_sk1_evenk.num_agpr, 0
	.set amd_strix_halo_gfx1151_int8xint8_nt_pc_swiglu_bm16_bn128_bk64_gm4_w8_s3_weu2_sk1_evenk.numbered_sgpr, 39
	.set amd_strix_halo_gfx1151_int8xint8_nt_pc_swiglu_bm16_bn128_bk64_gm4_w8_s3_weu2_sk1_evenk.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_int8xint8_nt_pc_swiglu_bm16_bn128_bk64_gm4_w8_s3_weu2_sk1_evenk.private_seg_size, 0
	.set amd_strix_halo_gfx1151_int8xint8_nt_pc_swiglu_bm16_bn128_bk64_gm4_w8_s3_weu2_sk1_evenk.uses_vcc, 1
	.set amd_strix_halo_gfx1151_int8xint8_nt_pc_swiglu_bm16_bn128_bk64_gm4_w8_s3_weu2_sk1_evenk.uses_flat_scratch, 0
	.set amd_strix_halo_gfx1151_int8xint8_nt_pc_swiglu_bm16_bn128_bk64_gm4_w8_s3_weu2_sk1_evenk.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_int8xint8_nt_pc_swiglu_bm16_bn128_bk64_gm4_w8_s3_weu2_sk1_evenk.has_recursion, 0
	.set amd_strix_halo_gfx1151_int8xint8_nt_pc_swiglu_bm16_bn128_bk64_gm4_w8_s3_weu2_sk1_evenk.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 5796
; TotalNumSgprs: 41
; NumVgprs: 120
; ScratchSize: 0
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 30
; NumSGPRsForWavesPerEU: 41
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
	.asciz	"amd_strix_halo_gfx1151_int8xint8_nt_pc_swiglu_bm16_bn128_bk64_gm4_w8_s3_weu2_sk1_evenk"             ; string offset=75 ; amd_strix_halo_gfx1151_int8xint8_nt_pc_swiglu_bm16_bn128_bk64_gm4_w8_s3_weu2_sk1_evenk
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
    .name:           amd_strix_halo_gfx1151_int8xint8_nt_pc_swiglu_bm16_bn128_bk64_gm4_w8_s3_weu2_sk1_evenk
    .private_segment_fixed_size: 0
    .sgpr_count:     41
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_int8xint8_nt_pc_swiglu_bm16_bn128_bk64_gm4_w8_s3_weu2_sk1_evenk.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     120
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
