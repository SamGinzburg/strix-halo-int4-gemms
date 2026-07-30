	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_int8xint8_nt_sc256_none_bm64_bn128_bk64_gm4_w8_s3_weu2_sk4_evenk               ; -- Begin function amd_strix_halo_gfx1151_int8xint8_nt_sc256_none_bm64_bn128_bk64_gm4_w8_s3_weu2_sk4_evenk
	.p2align	8
	.type	amd_strix_halo_gfx1151_int8xint8_nt_sc256_none_bm64_bn128_bk64_gm4_w8_s3_weu2_sk4_evenk,@function
amd_strix_halo_gfx1151_int8xint8_nt_sc256_none_bm64_bn128_bk64_gm4_w8_s3_weu2_sk4_evenk:                      ; @amd_strix_halo_gfx1151_int8xint8_nt_sc256_none_bm64_bn128_bk64_gm4_w8_s3_weu2_sk4_evenk
.Lfunc_begin0:
	.file	1 "<repo>/scripts" "generate_amdgcn.py"
	.loc	1 309 0                         ; generate_amdgcn.py:309:0
	.cfi_sections .debug_frame
	.cfi_startproc
; %bb.0:
	s_clause 0x1
	s_load_b64 s[34:35], s[0:1], 0x30
	s_load_b32 s12, s[0:1], 0x38
.Ltmp0:
	.loc	1 319 16 prologue_end           ; generate_amdgcn.py:319:16
	s_abs_i32 s6, s2
	.loc	1 325 32                        ; generate_amdgcn.py:325:32
	v_lshlrev_b32_e32 v12, 4, v0
	v_lshrrev_b32_e32 v2, 2, v0
	.loc	1 326 32                        ; generate_amdgcn.py:326:32
	v_and_b32_e32 v13, 0x60, v0
.Ltmp1:
	.file	2 "<triton>/python/triton/language" "standard.py"
	.loc	2 43 13                         ; standard.py:43:13 @[ generate_amdgcn.py:317:17 ]
	s_waitcnt lgkmcnt(0)
	s_add_i32 s4, s35, 0x7f
.Ltmp2:
	.loc	2 43 13 is_stmt 0               ; standard.py:43:13 @[ generate_amdgcn.py:316:17 ]
	s_add_i32 s7, s34, 63
.Ltmp3:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:317:17 ]
	s_ashr_i32 s5, s4, 31
.Ltmp4:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:316:17 ]
	s_ashr_i32 s9, s7, 31
.Ltmp5:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:317:17 ]
	s_lshr_b32 s5, s5, 25
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
	s_ashr_i32 s4, s4, 7
.Ltmp10:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:316:17 ]
	s_ashr_i32 s7, s7, 6
.Ltmp11:
	.loc	1 318 24 is_stmt 1              ; generate_amdgcn.py:318:24
	s_lshl_b32 s13, s4, 2
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	.loc	1 319 16                        ; generate_amdgcn.py:319:16
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
	.loc	1 320 19                        ; generate_amdgcn.py:320:19
	s_lshl_b32 s15, s14, 2
	.loc	1 322 29                        ; generate_amdgcn.py:322:29
	s_mul_i32 s14, s14, s13
	.loc	1 321 31                        ; generate_amdgcn.py:321:31
	s_sub_i32 s4, s7, s15
	.loc	1 322 29                        ; generate_amdgcn.py:322:29
	s_sub_i32 s2, s2, s14
	.loc	1 321 20                        ; generate_amdgcn.py:321:20
	s_min_i32 s16, s4, 4
	.loc	1 323 13                        ; generate_amdgcn.py:323:13
	s_abs_i32 s14, s2
	s_abs_i32 s17, s16
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_2)
	s_cvt_f32_u32 s4, s17
	s_sub_i32 s19, 0, s17
	v_rcp_iflag_f32_e32 v1, s4
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	v_readfirstlane_b32 s4, v1
	.loc	1 325 32                        ; generate_amdgcn.py:325:32
	v_and_b32_e32 v1, 48, v12
	.loc	1 323 13                        ; generate_amdgcn.py:323:13
	s_mul_f32 s18, s4, 0x4f7ffffe
	s_load_b256 s[4:11], s[0:1], 0x0
	.loc	1 374 30                        ; generate_amdgcn.py:374:30
	v_mad_u64_u32 v[9:10], null, s12, v2, v[1:2]
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_3)
	.loc	1 323 13                        ; generate_amdgcn.py:323:13
	s_cvt_u32_f32 s18, s18
	s_mul_i32 s19, s19, s18
	.loc	1 376 30                        ; generate_amdgcn.py:376:30
	v_lshl_add_u32 v72, s12, 6, v9
	.loc	1 323 13                        ; generate_amdgcn.py:323:13
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
	s_waitcnt lgkmcnt(0)
	s_mov_b64 s[24:25], s[6:7]
	s_cselect_b32 s6, s19, s13
	s_cselect_b32 s7, s20, s14
	s_add_i32 s13, s6, 1
	s_cmp_ge_u32 s7, s17
	s_mov_b32 s7, 0x31027000
	s_cselect_b32 s6, s13, s6
	.loc	1 368 22                        ; generate_amdgcn.py:368:22
	s_lshl_b32 s22, s3, 6
	.loc	1 323 13                        ; generate_amdgcn.py:323:13
	s_xor_b32 s13, s6, s18
	s_mov_b32 s6, 0x7ffffffe
	s_sub_i32 s13, s13, s18
	.loc	1 376 22                        ; generate_amdgcn.py:376:22
	s_mov_b32 s26, s6
	.loc	1 322 28                        ; generate_amdgcn.py:322:28
	s_mul_i32 s14, s13, s16
	.loc	1 326 14                        ; generate_amdgcn.py:326:14
	s_lshl_b32 s33, s13, 7
	.loc	1 322 28                        ; generate_amdgcn.py:322:28
	s_sub_i32 s2, s2, s14
.Ltmp12:
	.loc	2 43 13                         ; standard.py:43:13 @[ generate_amdgcn.py:333:28 ]
	s_add_i32 s14, s12, 0xff
.Ltmp13:
	.loc	1 322 13                        ; generate_amdgcn.py:322:13
	s_add_i32 s2, s2, s15
	.loc	1 376 30                        ; generate_amdgcn.py:376:30
	s_mul_i32 s23, s33, s12
	.loc	1 325 14                        ; generate_amdgcn.py:325:14
	s_lshl_b32 s34, s2, 6
.Ltmp14:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:333:28 ]
	s_ashr_i32 s2, s14, 31
.Ltmp15:
	.loc	1 374 30                        ; generate_amdgcn.py:374:30
	v_mad_u64_u32 v[10:11], null, s34, s12, v[9:10]
.Ltmp16:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:333:28 ]
	s_lshr_b32 s2, s2, 24
.Ltmp17:
	.loc	1 376 22                        ; generate_amdgcn.py:376:22
	s_mov_b32 s27, s7
.Ltmp18:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:333:28 ]
	s_add_i32 s13, s14, s2
.Ltmp19:
	.loc	1 333 5                         ; generate_amdgcn.py:333:5
	s_cmpk_gt_i32 s14, 0xff
	.loc	1 325 32                        ; generate_amdgcn.py:325:32
	v_and_b32_e32 v11, 0x80, v0
	.loc	1 333 5                         ; generate_amdgcn.py:333:5
	s_cselect_b32 s3, -1, 0
	.loc	1 376 30                        ; generate_amdgcn.py:376:30
	s_add_i32 s2, s23, s22
	.loc	1 374 30                        ; generate_amdgcn.py:374:30
	v_add_nc_u32_e32 v1, s22, v10
	.loc	1 374 22 is_stmt 0              ; generate_amdgcn.py:374:22
	s_and_b32 s5, s5, 0xffff
	.loc	1 376 22 is_stmt 1              ; generate_amdgcn.py:376:22
	s_and_b32 s25, s25, 0xffff
	.loc	1 333 5                         ; generate_amdgcn.py:333:5
	s_cmpk_gt_i32 s14, 0x1ff
	.loc	1 376 30                        ; generate_amdgcn.py:376:30
	v_add_nc_u32_e32 v2, s2, v9
	v_add_nc_u32_e32 v3, s2, v72
	.loc	1 333 5                         ; generate_amdgcn.py:333:5
	s_cselect_b32 s2, -1, 0
	.loc	1 368 17                        ; generate_amdgcn.py:368:17
	s_add_i32 s40, s22, 0x100
	.loc	1 374 22                        ; generate_amdgcn.py:374:22
	v_cndmask_b32_e64 v1, 0x80000000, v1, s3
	.loc	1 374 30 is_stmt 0              ; generate_amdgcn.py:374:30
	v_add_nc_u32_e32 v4, s40, v10
	.loc	1 376 22 is_stmt 1              ; generate_amdgcn.py:376:22
	v_cndmask_b32_e64 v5, 0x80000000, v2, s3
	.loc	1 376 30 is_stmt 0              ; generate_amdgcn.py:376:30
	v_add_nc_u32_e32 v2, 0x100, v2
	v_add_nc_u32_e32 v6, 0x100, v3
	.loc	1 376 22                        ; generate_amdgcn.py:376:22
	v_cndmask_b32_e64 v3, 0x80000000, v3, s3
	.loc	1 374 22 is_stmt 1              ; generate_amdgcn.py:374:22
	buffer_load_b128 v[27:30], v1, s[4:7], 0 offen
	v_cndmask_b32_e64 v1, 0x80000000, v4, s2
	.loc	1 376 22                        ; generate_amdgcn.py:376:22
	v_cndmask_b32_e64 v2, 0x80000000, v2, s2
	v_cndmask_b32_e64 v4, 0x80000000, v6, s2
	s_clause 0x1
	buffer_load_b128 v[31:34], v5, s[24:27], 0 offen
	buffer_load_b128 v[35:38], v3, s[24:27], 0 offen
	.loc	1 374 22                        ; generate_amdgcn.py:374:22
	buffer_load_b128 v[39:42], v1, s[4:7], 0 offen
	.loc	1 376 22                        ; generate_amdgcn.py:376:22
	s_clause 0x1
	buffer_load_b128 v[43:46], v2, s[24:27], 0 offen
	buffer_load_b128 v[47:50], v4, s[24:27], 0 offen
	.loc	1 374 22                        ; generate_amdgcn.py:374:22
	v_lshlrev_b32_e32 v4, 1, v0
	.loc	1 325 32                        ; generate_amdgcn.py:325:32
	v_and_b32_e32 v2, 15, v0
	.loc	1 326 32                        ; generate_amdgcn.py:326:32
	v_lshrrev_b32_e32 v3, 4, v0
	.loc	1 325 32                        ; generate_amdgcn.py:325:32
	v_lshrrev_b32_e32 v5, 3, v11
	.loc	1 326 32                        ; generate_amdgcn.py:326:32
	v_lshrrev_b32_e32 v6, 1, v13
	.loc	1 374 22                        ; generate_amdgcn.py:374:22
	v_and_b32_e32 v4, 48, v4
	v_lshlrev_b32_e32 v1, 3, v0
	s_mov_b32 s12, 0
	.loc	1 325 32                        ; generate_amdgcn.py:325:32
	v_or_b32_e32 v8, v5, v2
	.loc	1 326 32                        ; generate_amdgcn.py:326:32
	v_and_or_b32 v5, v3, 1, v6
	.loc	1 374 22                        ; generate_amdgcn.py:374:22
	v_xor_b32_e32 v73, v12, v4
	v_lshlrev_b32_e32 v2, 6, v2
	v_lshlrev_b32_e32 v3, 5, v13
	.loc	1 325 32                        ; generate_amdgcn.py:325:32
	v_or_b32_e32 v26, 32, v8
	.loc	1 326 32                        ; generate_amdgcn.py:326:32
	v_or_b32_e32 v14, 2, v5
	v_or_b32_e32 v15, 4, v5
	v_or_b32_e32 v16, 6, v5
	v_or_b32_e32 v17, 8, v5
	v_or_b32_e32 v18, 10, v5
	v_or_b32_e32 v19, 12, v5
	v_or_b32_e32 v20, 14, v5
	v_or_b32_e32 v21, 64, v5
	v_or_b32_e32 v22, 0x42, v5
	v_or_b32_e32 v23, 0x44, v5
	v_or_b32_e32 v24, 0x46, v5
	v_or_b32_e32 v25, 0x48, v5
	v_or_b32_e32 v4, 0x4a, v5
	.loc	1 374 22                        ; generate_amdgcn.py:374:22
	v_add_nc_u32_e32 v51, 0, v73
	.loc	1 326 32                        ; generate_amdgcn.py:326:32
	v_or_b32_e32 v6, 0x4c, v5
	v_or_b32_e32 v7, 0x4e, v5
	s_mov_b64 s[20:21], s[10:11]
	.loc	1 333 5                         ; generate_amdgcn.py:333:5
	s_cmpk_gt_i32 s14, 0x2ff
	.loc	1 374 22                        ; generate_amdgcn.py:374:22
	s_waitcnt vmcnt(5)
	ds_store_b128 v51, v[27:30] offset:16384
	.loc	1 376 22                        ; generate_amdgcn.py:376:22
	s_waitcnt vmcnt(4)
	ds_store_b128 v51, v[31:34]
	s_waitcnt vmcnt(3)
	ds_store_b128 v51, v[35:38] offset:4096
	.loc	1 374 22                        ; generate_amdgcn.py:374:22
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_waitcnt vmcnt(2)
	ds_store_b128 v51, v[39:42] offset:20480
	.loc	1 376 22                        ; generate_amdgcn.py:376:22
	s_waitcnt vmcnt(1)
	ds_store_b128 v51, v[43:46] offset:8192
	s_waitcnt vmcnt(0)
	ds_store_b128 v51, v[47:50] offset:12288
	.loc	1 333 5                         ; generate_amdgcn.py:333:5
	s_cbranch_scc1 .LBB0_2
; %bb.1:                                ; %.._crit_edge_crit_edge
	.loc	1 376 22                        ; generate_amdgcn.py:376:22
	v_and_b32_e32 v27, 48, v1
	.loc	1 374 22                        ; generate_amdgcn.py:374:22
	v_and_or_b32 v64, 0x430, v1, v2
	s_mov_b32 s10, 0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 376 22                        ; generate_amdgcn.py:376:22
	v_or3_b32 v68, v3, v27, v2
	.loc	1 374 22                        ; generate_amdgcn.py:374:22
	v_xor_b32_e32 v65, 16, v64
	v_xor_b32_e32 v67, 32, v64
	v_xor_b32_e32 v66, 48, v64
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 376 22                        ; generate_amdgcn.py:376:22
	v_xor_b32_e32 v69, 16, v68
	v_xor_b32_e32 v70, 32, v68
	v_xor_b32_e32 v71, 48, v68
	s_branch .LBB0_3
.LBB0_2:
	.loc	1 0 22 is_stmt 0                ; generate_amdgcn.py:0:22
	s_mov_b32 s10, -1
                                        ; implicit-def: $vgpr64
                                        ; implicit-def: $vgpr65
                                        ; implicit-def: $vgpr67
                                        ; implicit-def: $vgpr66
                                        ; implicit-def: $vgpr68
                                        ; implicit-def: $vgpr69
                                        ; implicit-def: $vgpr70
                                        ; implicit-def: $vgpr71
.LBB0_3:                                ; %Flow43
	s_load_b64 s[0:1], s[0:1], 0x20
	v_or_b32_e32 v8, s34, v8
	v_or_b32_e32 v26, s34, v26
	s_ashr_i32 s41, s13, 8
	v_or_b32_e32 v61, s33, v5
	v_or_b32_e32 v60, s33, v14
	v_mul_lo_u32 v62, v8, s41
	v_mul_lo_u32 v63, v26, s41
	v_or_b32_e32 v59, s33, v15
	v_or_b32_e32 v58, s33, v16
	v_or_b32_e32 v57, s33, v17
	v_or_b32_e32 v56, s33, v18
	v_or_b32_e32 v55, s33, v19
	v_or_b32_e32 v54, s33, v20
	v_or_b32_e32 v53, s33, v21
	v_or_b32_e32 v52, s33, v22
	v_or_b32_e32 v51, s33, v23
	v_or_b32_e32 v49, s33, v24
	v_or_b32_e32 v47, s33, v25
	v_or_b32_e32 v50, s33, v4
	v_or_b32_e32 v48, s33, v6
	v_or_b32_e32 v46, s33, v7
	s_and_not1_b32 vcc_lo, exec_lo, s10
	s_cbranch_vccnz .LBB0_6
; %bb.4:                                ; %.lr.ph
	s_mov_b32 s13, s12
	s_mov_b32 s14, s12
	s_mov_b32 s15, s12
	s_mov_b32 s16, s12
	s_mov_b32 s17, s12
	s_mov_b32 s18, s12
	s_mov_b32 s19, s12
	v_and_b32_e32 v4, 48, v1
	v_and_or_b32 v64, 0x430, v1, v2
	v_dual_mov_b32 v14, 0 :: v_dual_mov_b32 v15, 0
	v_dual_mov_b32 v16, 0 :: v_dual_mov_b32 v19, 0
	s_delay_alu instid0(VALU_DEP_4)
	v_or3_b32 v68, v3, v4, v2
	v_mov_b32_e32 v1, s12
	v_xor_b32_e32 v65, 16, v64
	v_xor_b32_e32 v67, 32, v64
	v_xor_b32_e32 v66, 48, v64
	v_xor_b32_e32 v69, 16, v68
	v_xor_b32_e32 v70, 32, v68
	v_xor_b32_e32 v71, 48, v68
	v_dual_mov_b32 v2, s13 :: v_dual_mov_b32 v5, s16
	v_dual_mov_b32 v3, s14 :: v_dual_mov_b32 v4, s15
	v_dual_mov_b32 v7, s18 :: v_dual_mov_b32 v6, s17
	v_dual_mov_b32 v8, s19 :: v_dual_mov_b32 v17, 0
	v_dual_mov_b32 v18, 0 :: v_dual_mov_b32 v21, 0
	v_dual_mov_b32 v20, 0 :: v_dual_mov_b32 v23, 0
	v_dual_mov_b32 v22, 0 :: v_dual_mov_b32 v25, 0
	v_dual_mov_b32 v24, 0 :: v_dual_mov_b32 v27, 0
	v_dual_mov_b32 v26, 0 :: v_dual_mov_b32 v29, 0
	v_dual_mov_b32 v28, 0 :: v_dual_mov_b32 v31, 0
	v_dual_mov_b32 v30, 0 :: v_dual_mov_b32 v33, 0
	v_dual_mov_b32 v32, 0 :: v_dual_mov_b32 v35, 0
	v_dual_mov_b32 v34, 0 :: v_dual_mov_b32 v37, 0
	v_dual_mov_b32 v36, 0 :: v_dual_mov_b32 v39, 0
	v_dual_mov_b32 v40, 0 :: v_dual_mov_b32 v41, 0
	v_dual_mov_b32 v42, 0 :: v_dual_mov_b32 v43, 0
	v_dual_mov_b32 v44, 0 :: v_dual_mov_b32 v45, 0
	v_mov_b32_e32 v38, 0
	s_mov_b32 s31, 0x31027000
	s_mov_b32 s30, 0x7ffffffe
	.loc	1 333 5 is_stmt 1               ; generate_amdgcn.py:333:5
	s_max_i32 s44, s41, 3
	s_add_i32 s11, s40, 0x100
	s_and_b32 s29, s9, 0xffff
	s_mov_b32 s28, s8
	s_and_b32 s37, s21, 0xffff
	s_mov_b32 s36, s20
	s_add_i32 s10, 0, 0x4000
	s_add_i32 s42, 0, 0x5000
	s_add_i32 s43, 0, 0x2000
	s_add_i32 s44, s44, -3
	s_mov_b32 s45, 1
	s_mov_b32 s26, s6
	s_mov_b32 s27, s7
	s_mov_b32 s38, s30
	s_mov_b32 s39, s31
.LBB0_5:                                ; =>This Inner Loop Header: Depth=1
	.loc	1 0 5 is_stmt 0                 ; generate_amdgcn.py:0:5
	s_mov_b32 s14, s22
	.loc	1 334 14 is_stmt 1              ; generate_amdgcn.py:334:14
	s_lshl_b32 s15, s13, 8
	s_mov_b32 s22, s40
	.loc	1 368 17                        ; generate_amdgcn.py:368:17
	s_add_i32 s40, s11, s15
	.loc	1 388 29                        ; generate_amdgcn.py:388:29
	s_ashr_i32 s15, s14, 31
	.loc	1 374 30                        ; generate_amdgcn.py:374:30
	v_add_nc_u32_e32 v74, s40, v10
	.loc	1 388 29                        ; generate_amdgcn.py:388:29
	s_lshr_b32 s15, s15, 24
	.loc	1 376 30                        ; generate_amdgcn.py:376:30
	s_add_i32 s16, s40, s23
	.loc	1 388 29                        ; generate_amdgcn.py:388:29
	s_add_i32 s14, s14, s15
	s_delay_alu instid0(SALU_CYCLE_1)
	s_ashr_i32 s14, s14, 8
	.loc	1 374 22                        ; generate_amdgcn.py:374:22
	buffer_load_b128 v[106:109], v74, s[4:7], 0 offen
	.loc	1 390 22                        ; generate_amdgcn.py:390:22
	v_add_lshl_u32 v74, v62, s14, 1
	.loc	1 392 40                        ; generate_amdgcn.py:392:40
	s_mul_i32 s15, s14, s35
	.loc	1 389 34                        ; generate_amdgcn.py:389:34
	s_cmp_lt_i32 s14, s41
	.loc	1 390 22                        ; generate_amdgcn.py:390:22
	v_add_lshl_u32 v75, v63, s14, 1
	.loc	1 392 22                        ; generate_amdgcn.py:392:22
	v_add_lshl_u32 v76, v61, s15, 1
	v_add_lshl_u32 v77, v60, s15, 1
	.loc	1 389 34                        ; generate_amdgcn.py:389:34
	s_cselect_b32 vcc_lo, -1, 0
	.loc	1 392 22                        ; generate_amdgcn.py:392:22
	v_add_lshl_u32 v78, v59, s15, 1
	v_add_lshl_u32 v79, v58, s15, 1
	v_add_lshl_u32 v80, v57, s15, 1
	v_add_lshl_u32 v81, v56, s15, 1
	v_add_lshl_u32 v82, v55, s15, 1
	v_add_lshl_u32 v83, v54, s15, 1
	v_add_lshl_u32 v84, v53, s15, 1
	v_add_lshl_u32 v85, v52, s15, 1
	v_add_lshl_u32 v86, v51, s15, 1
	v_add_lshl_u32 v87, v49, s15, 1
	v_add_lshl_u32 v88, v47, s15, 1
	v_add_lshl_u32 v89, v50, s15, 1
	v_add_lshl_u32 v90, v48, s15, 1
	v_add_lshl_u32 v91, v46, s15, 1
	.loc	1 390 22                        ; generate_amdgcn.py:390:22
	v_dual_cndmask_b32 v74, 0x80000000, v74 :: v_dual_cndmask_b32 v75, 0x80000000, v75
	.loc	1 392 22                        ; generate_amdgcn.py:392:22
	v_dual_cndmask_b32 v76, 0x80000000, v76 :: v_dual_cndmask_b32 v77, 0x80000000, v77
	v_dual_cndmask_b32 v78, 0x80000000, v78 :: v_dual_cndmask_b32 v79, 0x80000000, v79
	.loc	1 374 22                        ; generate_amdgcn.py:374:22
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 392 22                        ; generate_amdgcn.py:392:22
	v_dual_cndmask_b32 v80, 0x80000000, v80 :: v_dual_cndmask_b32 v81, 0x80000000, v81
	v_dual_cndmask_b32 v82, 0x80000000, v82 :: v_dual_cndmask_b32 v83, 0x80000000, v83
	v_dual_cndmask_b32 v84, 0x80000000, v84 :: v_dual_cndmask_b32 v85, 0x80000000, v85
	v_dual_cndmask_b32 v86, 0x80000000, v86 :: v_dual_cndmask_b32 v87, 0x80000000, v87
	v_dual_cndmask_b32 v88, 0x80000000, v88 :: v_dual_cndmask_b32 v89, 0x80000000, v89
	v_dual_cndmask_b32 v90, 0x80000000, v90 :: v_dual_cndmask_b32 v91, 0x80000000, v91
	.loc	1 390 22                        ; generate_amdgcn.py:390:22
	s_clause 0x1
	buffer_load_u16 v174, v74, s[28:31], 0 offen
	buffer_load_u16 v175, v75, s[28:31], 0 offen
	.loc	1 392 22                        ; generate_amdgcn.py:392:22
	s_clause 0xf
	buffer_load_u16 v176, v76, s[36:39], 0 offen
	buffer_load_u16 v177, v77, s[36:39], 0 offen
	buffer_load_u16 v178, v78, s[36:39], 0 offen
	buffer_load_u16 v179, v79, s[36:39], 0 offen
	buffer_load_u16 v180, v80, s[36:39], 0 offen
	buffer_load_u16 v181, v81, s[36:39], 0 offen
	buffer_load_u16 v182, v82, s[36:39], 0 offen
	buffer_load_u16 v183, v83, s[36:39], 0 offen
	buffer_load_u16 v184, v84, s[36:39], 0 offen
	buffer_load_u16 v185, v85, s[36:39], 0 offen
	buffer_load_u16 v186, v86, s[36:39], 0 offen
	buffer_load_u16 v187, v87, s[36:39], 0 offen
	buffer_load_u16 v188, v88, s[36:39], 0 offen
	buffer_load_u16 v189, v89, s[36:39], 0 offen
	buffer_load_u16 v190, v90, s[36:39], 0 offen
	buffer_load_u16 v191, v91, s[36:39], 0 offen
	.loc	1 376 30                        ; generate_amdgcn.py:376:30
	v_add_nc_u32_e32 v74, s16, v9
	v_add_nc_u32_e32 v75, s16, v72
	.loc	1 376 22 is_stmt 0              ; generate_amdgcn.py:376:22
	s_clause 0x1
	buffer_load_b128 v[110:113], v74, s[24:27], 0 offen
	buffer_load_b128 v[114:117], v75, s[24:27], 0 offen
	s_mov_b32 s14, s10
	s_mov_b32 s15, s12
	.loc	1 374 22 is_stmt 1              ; generate_amdgcn.py:374:22
	v_add_nc_u32_e32 v74, s14, v64
	v_add_nc_u32_e32 v75, s14, v65
	v_add_nc_u32_e32 v76, s14, v67
	v_add_nc_u32_e32 v77, s14, v66
	.loc	1 376 22                        ; generate_amdgcn.py:376:22
	v_add_nc_u32_e32 v78, s15, v68
	v_add_nc_u32_e32 v79, s15, v69
	v_add_nc_u32_e32 v80, s15, v70
	v_add_nc_u32_e32 v81, s15, v71
	.loc	1 374 22                        ; generate_amdgcn.py:374:22
	ds_load_b128 v[90:93], v74
	ds_load_b128 v[118:121], v74 offset:2048
	ds_load_b128 v[122:125], v75
	ds_load_b128 v[126:129], v75 offset:2048
	ds_load_b128 v[130:133], v76
	ds_load_b128 v[134:137], v76 offset:2048
	ds_load_b128 v[138:141], v77
	ds_load_b128 v[142:145], v77 offset:2048
	.loc	1 376 22                        ; generate_amdgcn.py:376:22
	ds_load_b128 v[98:101], v78
	ds_load_b128 v[146:149], v78 offset:4096
	ds_load_b128 v[150:153], v79
	ds_load_b128 v[154:157], v79 offset:4096
	ds_load_b128 v[158:161], v80
	ds_load_b128 v[162:165], v80 offset:4096
	ds_load_b128 v[166:169], v81
	ds_load_b128 v[170:173], v81 offset:4096
	.loc	1 333 5                         ; generate_amdgcn.py:333:5
	s_add_i32 s14, s45, 1
	s_mov_b32 s12, s43
	s_cmp_lt_i32 s14, 2
	s_mov_b32 s10, s42
	s_cselect_b32 s45, s14, 0
	s_add_i32 s14, s13, 1
	.loc	1 374 22                        ; generate_amdgcn.py:374:22
	s_lshl_b32 s15, s45, 12
	s_waitcnt lgkmcnt(0)
	s_add_i32 s16, s15, 0
	s_barrier
	.loc	1 376 22                        ; generate_amdgcn.py:376:22
	s_add_i32 s43, s16, s15
	.loc	1 374 22                        ; generate_amdgcn.py:374:22
	s_add_i32 s42, s16, 0x4000
	.loc	1 379 19                        ; generate_amdgcn.py:379:19
	v_wmma_i32_16x16x16_iu8 v[74:81], v[98:101], v[90:93], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[82:89], v[146:149], v[90:93], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[90:97], v[98:101], v[118:121], v[1:8] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_wmma_i32_16x16x16_iu8 v[74:81], v[150:153], v[122:125], v[74:81] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[98:105], v[146:149], v[118:121], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[82:89], v[154:157], v[122:125], v[82:89] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_wmma_i32_16x16x16_iu8 v[90:97], v[150:153], v[126:129], v[90:97] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[74:81], v[158:161], v[130:133], v[74:81] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_4)
	v_wmma_i32_16x16x16_iu8 v[98:105], v[154:157], v[126:129], v[98:105] neg_lo:[1,1,0]
	.loc	1 333 5                         ; generate_amdgcn.py:333:5
	s_cmp_lg_u32 s13, s44
	.loc	1 379 19                        ; generate_amdgcn.py:379:19
	v_wmma_i32_16x16x16_iu8 v[82:89], v[162:165], v[130:133], v[82:89] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[90:97], v[158:161], v[134:137], v[90:97] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[74:81], v[166:169], v[138:141], v[74:81] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[98:105], v[162:165], v[134:137], v[98:105] neg_lo:[1,1,0]
	s_mov_b32 s13, s14
	v_wmma_i32_16x16x16_iu8 v[82:89], v[170:173], v[138:141], v[82:89] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[90:97], v[166:169], v[142:145], v[90:97] neg_lo:[1,1,0]
	v_cvt_f32_i32_e32 v75, v75
	v_wmma_i32_16x16x16_iu8 v[98:105], v[170:173], v[142:145], v[98:105] neg_lo:[1,1,0]
	v_cvt_f32_i32_e32 v74, v74
	v_cvt_f32_i32_e32 v76, v76
	v_cvt_f32_i32_e32 v77, v77
	v_cvt_f32_i32_e32 v78, v78
	v_cvt_f32_i32_e32 v79, v79
	v_cvt_f32_i32_e32 v80, v80
	v_cvt_f32_i32_e32 v81, v81
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
	v_cvt_f32_i32_e32 v92, v92
	v_cvt_f32_i32_e32 v93, v93
	v_cvt_f32_i32_e32 v94, v94
	v_cvt_f32_i32_e32 v95, v95
	v_cvt_f32_i32_e32 v96, v96
	v_cvt_f32_i32_e32 v97, v97
	v_cvt_f32_i32_e32 v98, v98
	v_cvt_f32_i32_e32 v99, v99
	v_cvt_f32_i32_e32 v100, v100
	v_cvt_f32_i32_e32 v101, v101
	v_cvt_f32_i32_e32 v102, v102
	v_cvt_f32_i32_e32 v103, v103
	v_cvt_f32_i32_e32 v104, v104
	v_cvt_f32_i32_e32 v105, v105
	.loc	1 392 22                        ; generate_amdgcn.py:392:22
	s_waitcnt vmcnt(3)
	v_lshlrev_b32_e32 v134, 16, v190
	v_lshlrev_b32_e32 v121, 16, v177
	s_waitcnt vmcnt(2)
	v_lshlrev_b32_e32 v135, 16, v191
	v_lshlrev_b32_e32 v132, 16, v188
	.loc	1 390 22                        ; generate_amdgcn.py:390:22
	v_lshlrev_b32_e32 v119, 16, v175
	v_lshlrev_b32_e32 v118, 16, v174
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 394 24                        ; generate_amdgcn.py:394:24
	v_mul_f32_e32 v137, v118, v121
	v_mul_f32_e32 v121, v119, v121
	v_dual_mul_f32 v148, v118, v132 :: v_dual_lshlrev_b32 v125, 16, v181
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 399 13                        ; generate_amdgcn.py:399:13
	v_dual_fmac_f32 v15, v137, v75 :: v_dual_lshlrev_b32 v122, 16, v178
	.loc	1 394 24                        ; generate_amdgcn.py:394:24
	v_mul_f32_e32 v150, v118, v134
	v_mul_f32_e32 v141, v118, v125
	v_mul_f32_e32 v125, v119, v125
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_dual_mul_f32 v138, v118, v122 :: v_dual_lshlrev_b32 v127, 16, v183
	v_mul_f32_e32 v122, v119, v122
	.loc	1 392 22                        ; generate_amdgcn.py:392:22
	v_lshlrev_b32_e32 v124, 16, v180
	.loc	1 394 24                        ; generate_amdgcn.py:394:24
	v_dual_mul_f32 v132, v119, v132 :: v_dual_fmac_f32 v19, v141, v79
	v_mul_f32_e32 v143, v118, v127
	v_mul_f32_e32 v127, v119, v127
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_dual_mul_f32 v140, v118, v124 :: v_dual_lshlrev_b32 v129, 16, v185
	v_mul_f32_e32 v124, v119, v124
	.loc	1 392 22                        ; generate_amdgcn.py:392:22
	v_lshlrev_b32_e32 v126, 16, v182
	.loc	1 399 13                        ; generate_amdgcn.py:399:13
	v_dual_fmac_f32 v16, v138, v76 :: v_dual_fmac_f32 v21, v143, v81
	.loc	1 394 24                        ; generate_amdgcn.py:394:24
	v_mul_f32_e32 v145, v118, v129
	v_mul_f32_e32 v129, v119, v129
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_dual_mul_f32 v142, v118, v126 :: v_dual_lshlrev_b32 v131, 16, v187
	v_mul_f32_e32 v126, v119, v126
	.loc	1 392 22                        ; generate_amdgcn.py:392:22
	v_lshlrev_b32_e32 v128, 16, v184
	.loc	1 394 24                        ; generate_amdgcn.py:394:24
	v_dual_mul_f32 v134, v119, v134 :: v_dual_fmac_f32 v23, v145, v83
	v_mul_f32_e32 v147, v118, v131
	v_mul_f32_e32 v131, v119, v131
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_dual_mul_f32 v144, v118, v128 :: v_dual_lshlrev_b32 v133, 16, v189
	v_mul_f32_e32 v128, v119, v128
	.loc	1 392 22                        ; generate_amdgcn.py:392:22
	v_lshlrev_b32_e32 v120, 16, v176
	.loc	1 394 24                        ; generate_amdgcn.py:394:24
	v_dual_mul_f32 v149, v118, v133 :: v_dual_lshlrev_b32 v130, 16, v186
	.loc	1 392 22                        ; generate_amdgcn.py:392:22
	v_lshlrev_b32_e32 v123, 16, v179
	.loc	1 394 24                        ; generate_amdgcn.py:394:24
	v_mul_f32_e32 v133, v119, v133
	s_delay_alu instid0(VALU_DEP_3)
	v_dual_mul_f32 v146, v118, v130 :: v_dual_add_nc_u32 v193, s43, v73
	v_mul_f32_e32 v136, v118, v120
	v_mul_f32_e32 v120, v119, v120
	v_dual_mul_f32 v139, v118, v123 :: v_dual_add_nc_u32 v192, s16, v73
	v_mul_f32_e32 v123, v119, v123
	v_mul_f32_e32 v130, v119, v130
	v_mul_f32_e32 v118, v118, v135
	v_dual_mul_f32 v119, v119, v135 :: v_dual_fmac_f32 v14, v136, v74
	.loc	1 399 13                        ; generate_amdgcn.py:399:13
	v_dual_fmac_f32 v17, v139, v77 :: v_dual_fmac_f32 v18, v140, v78
	v_dual_fmac_f32 v25, v147, v85 :: v_dual_fmac_f32 v20, v142, v80
	v_dual_fmac_f32 v27, v149, v87 :: v_dual_fmac_f32 v22, v144, v82
	v_fmac_f32_e32 v29, v118, v89
	v_dual_fmac_f32 v24, v146, v84 :: v_dual_fmac_f32 v31, v121, v91
	v_dual_fmac_f32 v26, v148, v86 :: v_dual_fmac_f32 v33, v123, v93
	v_dual_fmac_f32 v28, v150, v88 :: v_dual_fmac_f32 v35, v125, v95
	v_dual_fmac_f32 v30, v120, v90 :: v_dual_fmac_f32 v37, v127, v97
	v_dual_fmac_f32 v32, v122, v92 :: v_dual_fmac_f32 v39, v128, v98
	v_dual_fmac_f32 v34, v124, v94 :: v_dual_fmac_f32 v41, v130, v100
	v_dual_fmac_f32 v36, v126, v96 :: v_dual_fmac_f32 v43, v132, v102
	v_dual_fmac_f32 v40, v129, v99 :: v_dual_fmac_f32 v45, v134, v104
	v_fmac_f32_e32 v42, v131, v101
	v_fmac_f32_e32 v44, v133, v103
	v_fmac_f32_e32 v38, v119, v105
	.loc	1 374 22                        ; generate_amdgcn.py:374:22
	ds_store_b128 v192, v[106:109] offset:16384
	.loc	1 376 22                        ; generate_amdgcn.py:376:22
	s_waitcnt vmcnt(1)
	ds_store_b128 v193, v[110:113]
	s_waitcnt vmcnt(0)
	ds_store_b128 v193, v[114:117] offset:4096
	.loc	1 333 5                         ; generate_amdgcn.py:333:5
	s_cbranch_scc1 .LBB0_5
	s_branch .LBB0_7
.LBB0_6:
	.loc	1 0 5 is_stmt 0                 ; generate_amdgcn.py:0:5
	v_dual_mov_b32 v38, 0 :: v_dual_mov_b32 v45, 0
	v_dual_mov_b32 v44, 0 :: v_dual_mov_b32 v43, 0
	v_dual_mov_b32 v42, 0 :: v_dual_mov_b32 v41, 0
	v_dual_mov_b32 v40, 0 :: v_dual_mov_b32 v39, 0
	v_dual_mov_b32 v37, 0 :: v_dual_mov_b32 v36, 0
	v_dual_mov_b32 v35, 0 :: v_dual_mov_b32 v34, 0
	v_dual_mov_b32 v33, 0 :: v_dual_mov_b32 v32, 0
	v_dual_mov_b32 v31, 0 :: v_dual_mov_b32 v30, 0
	v_dual_mov_b32 v29, 0 :: v_dual_mov_b32 v28, 0
	v_dual_mov_b32 v27, 0 :: v_dual_mov_b32 v26, 0
	v_dual_mov_b32 v25, 0 :: v_dual_mov_b32 v24, 0
	v_dual_mov_b32 v23, 0 :: v_dual_mov_b32 v22, 0
	v_dual_mov_b32 v21, 0 :: v_dual_mov_b32 v20, 0
	v_dual_mov_b32 v19, 0 :: v_dual_mov_b32 v18, 0
	v_dual_mov_b32 v17, 0 :: v_dual_mov_b32 v16, 0
	v_dual_mov_b32 v15, 0 :: v_dual_mov_b32 v14, 0
	s_add_i32 s10, 0, 0x4000
	s_add_i32 s42, 0, 0x5000
	s_add_i32 s43, 0, 0x2000
.LBB0_7:                                ; %._crit_edge
	v_dual_mov_b32 v1, 0 :: v_dual_mov_b32 v2, 0
	v_dual_mov_b32 v73, 0 :: v_dual_mov_b32 v4, 0
	v_dual_mov_b32 v3, 0 :: v_dual_mov_b32 v6, 0
	v_dual_mov_b32 v5, 0 :: v_dual_mov_b32 v8, 0
	v_dual_mov_b32 v7, 0 :: v_dual_mov_b32 v10, 0
	v_dual_mov_b32 v9, 0 :: v_dual_mov_b32 v72, 0
	v_dual_mov_b32 v74, 0 :: v_dual_mov_b32 v75, 0
	v_dual_mov_b32 v76, 0 :: v_dual_mov_b32 v77, 0
	v_dual_mov_b32 v78, 0 :: v_dual_mov_b32 v79, 0
	v_dual_mov_b32 v80, 0 :: v_dual_mov_b32 v81, 0
	v_dual_mov_b32 v82, 0 :: v_dual_mov_b32 v83, 0
	v_dual_mov_b32 v84, 0 :: v_dual_mov_b32 v85, 0
	v_dual_mov_b32 v86, 0 :: v_dual_mov_b32 v87, 0
	v_dual_mov_b32 v88, 0 :: v_dual_mov_b32 v89, 0
	v_dual_mov_b32 v90, 0 :: v_dual_mov_b32 v91, 0
	v_dual_mov_b32 v92, 0 :: v_dual_mov_b32 v93, 0
	v_mov_b32_e32 v94, 0
	.loc	1 379 19 is_stmt 1              ; generate_amdgcn.py:379:19
	s_and_not1_b32 vcc_lo, exec_lo, s3
	.loc	1 374 22                        ; generate_amdgcn.py:374:22
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 379 19                        ; generate_amdgcn.py:379:19
	s_cbranch_vccnz .LBB0_9
; %bb.8:
	.loc	1 376 22                        ; generate_amdgcn.py:376:22
	v_add_nc_u32_e32 v6, s12, v70
	v_add_nc_u32_e32 v10, s12, v69
	v_add_nc_u32_e32 v72, s12, v71
	v_add_nc_u32_e32 v73, s12, v68
	s_mov_b32 s12, 0
	.loc	1 374 22                        ; generate_amdgcn.py:374:22
	v_add_nc_u32_e32 v74, s10, v65
	.loc	1 379 19                        ; generate_amdgcn.py:379:19
	s_mov_b32 s19, s12
	s_mov_b32 s16, s12
	s_mov_b32 s18, s12
	s_mov_b32 s13, s12
	s_mov_b32 s14, s12
	s_mov_b32 s15, s12
	s_mov_b32 s17, s12
	v_dual_mov_b32 v94, s19 :: v_dual_mov_b32 v93, s18
	v_mov_b32_e32 v91, s16
	.loc	1 376 22                        ; generate_amdgcn.py:376:22
	ds_load_b128 v[2:5], v6 offset:4096
	ds_load_b128 v[6:9], v6
	ds_load_b128 v[81:84], v10 offset:4096
	ds_load_b128 v[111:114], v10
	.loc	1 379 19                        ; generate_amdgcn.py:379:19
	v_dual_mov_b32 v87, s12 :: v_dual_add_nc_u32 v10, s10, v64
	.loc	1 376 22                        ; generate_amdgcn.py:376:22
	ds_load_b128 v[115:118], v73 offset:4096
	ds_load_b128 v[119:122], v73
	.loc	1 374 22                        ; generate_amdgcn.py:374:22
	ds_load_b128 v[123:126], v10 offset:2048
	ds_load_b128 v[103:106], v10
	.loc	1 379 19                        ; generate_amdgcn.py:379:19
	v_dual_mov_b32 v92, s17 :: v_dual_add_nc_u32 v73, s10, v67
	.loc	1 374 22                        ; generate_amdgcn.py:374:22
	ds_load_b128 v[135:138], v74 offset:2048
	ds_load_b128 v[139:142], v74
	v_add_nc_u32_e32 v10, s10, v66
	ds_load_b128 v[127:130], v73 offset:2048
	ds_load_b128 v[131:134], v73
	.loc	1 379 19                        ; generate_amdgcn.py:379:19
	v_dual_mov_b32 v90, s15 :: v_dual_mov_b32 v89, s14
	.loc	1 374 22                        ; generate_amdgcn.py:374:22
	ds_load_b128 v[143:146], v10
	.loc	1 379 19                        ; generate_amdgcn.py:379:19
	v_mov_b32_e32 v88, s13
	.loc	1 376 22                        ; generate_amdgcn.py:376:22
	ds_load_b128 v[147:150], v72
	ds_load_b128 v[151:154], v72 offset:4096
	.loc	1 374 22                        ; generate_amdgcn.py:374:22
	ds_load_b128 v[155:158], v10 offset:2048
	.loc	1 379 19                        ; generate_amdgcn.py:379:19
	s_waitcnt lgkmcnt(8)
	v_wmma_i32_16x16x16_iu8 v[73:80], v[119:122], v[103:106], v[87:94] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[95:102], v[115:118], v[103:106], v[87:94] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[103:110], v[119:122], v[123:126], v[87:94] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[87:94], v[115:118], v[123:126], v[87:94] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(6)
	v_wmma_i32_16x16x16_iu8 v[73:80], v[111:114], v[139:142], v[73:80] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[95:102], v[81:84], v[139:142], v[95:102] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[103:110], v[111:114], v[135:138], v[103:110] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[87:94], v[81:84], v[135:138], v[87:94] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(4)
	v_wmma_i32_16x16x16_iu8 v[73:80], v[6:9], v[131:134], v[73:80] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[95:102], v[2:5], v[131:134], v[95:102] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[103:110], v[6:9], v[127:130], v[103:110] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[87:94], v[2:5], v[127:130], v[87:94] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(2)
	v_wmma_i32_16x16x16_iu8 v[73:80], v[147:150], v[143:146], v[73:80] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu8 v[95:102], v[151:154], v[143:146], v[95:102] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu8 v[103:110], v[147:150], v[155:158], v[103:110] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[87:94], v[151:154], v[155:158], v[87:94] neg_lo:[1,1,0]
	v_cvt_f32_i32_e32 v2, v74
	v_cvt_f32_i32_e32 v3, v75
	v_cvt_f32_i32_e32 v4, v76
	v_cvt_f32_i32_e32 v5, v77
	v_cvt_f32_i32_e32 v6, v78
	v_cvt_f32_i32_e32 v7, v79
	v_cvt_f32_i32_e32 v8, v80
	v_cvt_f32_i32_e32 v9, v95
	v_cvt_f32_i32_e32 v10, v96
	v_cvt_f32_i32_e32 v72, v97
	v_cvt_f32_i32_e32 v74, v98
	v_cvt_f32_i32_e32 v75, v99
	v_cvt_f32_i32_e32 v76, v100
	v_cvt_f32_i32_e32 v77, v101
	v_cvt_f32_i32_e32 v78, v102
	v_cvt_f32_i32_e32 v79, v103
	v_cvt_f32_i32_e32 v80, v104
	v_cvt_f32_i32_e32 v81, v105
	v_cvt_f32_i32_e32 v82, v106
	v_cvt_f32_i32_e32 v83, v107
	v_cvt_f32_i32_e32 v84, v108
	v_cvt_f32_i32_e32 v85, v109
	v_cvt_f32_i32_e32 v86, v110
	v_cvt_f32_i32_e32 v87, v87
	v_cvt_f32_i32_e32 v88, v88
	v_cvt_f32_i32_e32 v89, v89
	v_cvt_f32_i32_e32 v90, v90
	v_cvt_f32_i32_e32 v91, v91
	v_cvt_f32_i32_e32 v92, v92
	v_cvt_f32_i32_e32 v93, v93
	v_cvt_f32_i32_e32 v94, v94
	v_cvt_f32_i32_e32 v73, v73
.LBB0_9:
	.loc	1 388 29                        ; generate_amdgcn.py:388:29
	s_ashr_i32 s4, s22, 31
	s_mov_b32 s11, 0x31027000
	s_lshr_b32 s4, s4, 24
	s_mov_b32 s10, 0x7ffffffe
	s_add_i32 s4, s22, s4
	.loc	1 392 22                        ; generate_amdgcn.py:392:22
	s_mov_b32 s22, s10
	.loc	1 388 29                        ; generate_amdgcn.py:388:29
	s_ashr_i32 s4, s4, 8
	.loc	1 392 22                        ; generate_amdgcn.py:392:22
	s_mov_b32 s23, s11
	.loc	1 389 34                        ; generate_amdgcn.py:389:34
	s_cmp_lt_i32 s4, s41
	.loc	1 390 22                        ; generate_amdgcn.py:390:22
	v_add_lshl_u32 v95, v62, s4, 1
	v_add_lshl_u32 v96, v63, s4, 1
	.loc	1 389 34                        ; generate_amdgcn.py:389:34
	s_cselect_b32 s5, -1, 0
	.loc	1 392 40                        ; generate_amdgcn.py:392:40
	s_mul_i32 s4, s4, s35
	.loc	1 333 5                         ; generate_amdgcn.py:333:5
	s_and_b32 vcc_lo, s3, s5
	.loc	1 390 22                        ; generate_amdgcn.py:390:22
	s_and_b32 s9, s9, 0xffff
	v_dual_cndmask_b32 v95, 0x80000000, v95 :: v_dual_cndmask_b32 v96, 0x80000000, v96
	.loc	1 392 22                        ; generate_amdgcn.py:392:22
	v_add_lshl_u32 v97, v61, s4, 1
	v_add_lshl_u32 v98, v60, s4, 1
	.loc	1 390 22                        ; generate_amdgcn.py:390:22
	s_clause 0x1
	buffer_load_u16 v95, v95, s[8:11], 0 offen
	buffer_load_u16 v127, v96, s[8:11], 0 offen
	.loc	1 392 22                        ; generate_amdgcn.py:392:22
	v_add_lshl_u32 v96, v59, s4, 1
	v_add_lshl_u32 v99, v58, s4, 1
	v_add_lshl_u32 v100, v57, s4, 1
	v_dual_cndmask_b32 v97, 0x80000000, v97 :: v_dual_cndmask_b32 v98, 0x80000000, v98
	v_add_lshl_u32 v101, v56, s4, 1
	v_add_lshl_u32 v102, v55, s4, 1
	v_add_lshl_u32 v103, v54, s4, 1
	v_dual_cndmask_b32 v96, 0x80000000, v96 :: v_dual_cndmask_b32 v99, 0x80000000, v99
	v_add_lshl_u32 v104, v53, s4, 1
	s_and_b32 s21, s21, 0xffff
	v_add_lshl_u32 v105, v52, s4, 1
	v_dual_cndmask_b32 v100, 0x80000000, v100 :: v_dual_cndmask_b32 v101, 0x80000000, v101
	v_add_lshl_u32 v106, v51, s4, 1
	v_dual_cndmask_b32 v102, 0x80000000, v102 :: v_dual_cndmask_b32 v103, 0x80000000, v103
	s_clause 0x7
	buffer_load_u16 v128, v97, s[20:23], 0 offen
	buffer_load_u16 v129, v98, s[20:23], 0 offen
	buffer_load_u16 v130, v96, s[20:23], 0 offen
	buffer_load_u16 v131, v99, s[20:23], 0 offen
	buffer_load_u16 v132, v100, s[20:23], 0 offen
	buffer_load_u16 v133, v101, s[20:23], 0 offen
	buffer_load_u16 v134, v102, s[20:23], 0 offen
	buffer_load_u16 v135, v103, s[20:23], 0 offen
	v_add_lshl_u32 v99, v49, s4, 1
	v_add_lshl_u32 v100, v47, s4, 1
	v_dual_cndmask_b32 v96, 0x80000000, v104 :: v_dual_cndmask_b32 v97, 0x80000000, v105
	v_add_lshl_u32 v101, v50, s4, 1
	v_add_lshl_u32 v102, v48, s4, 1
	v_add_lshl_u32 v103, v46, s4, 1
	v_dual_cndmask_b32 v98, 0x80000000, v106 :: v_dual_cndmask_b32 v99, 0x80000000, v99
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_cndmask_b32 v100, 0x80000000, v100 :: v_dual_cndmask_b32 v101, 0x80000000, v101
	v_dual_cndmask_b32 v102, 0x80000000, v102 :: v_dual_cndmask_b32 v103, 0x80000000, v103
	s_clause 0x7
	buffer_load_u16 v136, v96, s[20:23], 0 offen
	buffer_load_u16 v137, v97, s[20:23], 0 offen
	buffer_load_u16 v138, v98, s[20:23], 0 offen
	buffer_load_u16 v139, v99, s[20:23], 0 offen
	buffer_load_u16 v140, v100, s[20:23], 0 offen
	buffer_load_u16 v141, v101, s[20:23], 0 offen
	buffer_load_u16 v142, v102, s[20:23], 0 offen
	buffer_load_u16 v143, v103, s[20:23], 0 offen
	v_dual_mov_b32 v96, 0 :: v_dual_mov_b32 v97, 0
	v_dual_mov_b32 v98, 0 :: v_dual_mov_b32 v99, 0
	v_dual_mov_b32 v100, 0 :: v_dual_mov_b32 v101, 0
	v_dual_mov_b32 v102, 0 :: v_dual_mov_b32 v103, 0
	v_dual_mov_b32 v104, 0 :: v_dual_mov_b32 v105, 0
	v_dual_mov_b32 v106, 0 :: v_dual_mov_b32 v107, 0
	v_dual_mov_b32 v108, 0 :: v_dual_mov_b32 v109, 0
	v_dual_mov_b32 v110, 0 :: v_dual_mov_b32 v111, 0
	v_dual_mov_b32 v112, 0 :: v_dual_mov_b32 v113, 0
	v_dual_mov_b32 v114, 0 :: v_dual_mov_b32 v115, 0
	v_dual_mov_b32 v116, 0 :: v_dual_mov_b32 v117, 0
	v_dual_mov_b32 v118, 0 :: v_dual_mov_b32 v119, 0
	v_dual_mov_b32 v120, 0 :: v_dual_mov_b32 v121, 0
	v_dual_mov_b32 v122, 0 :: v_dual_mov_b32 v123, 0
	v_dual_mov_b32 v124, 0 :: v_dual_mov_b32 v125, 0
	v_mov_b32_e32 v126, 0
	.loc	1 379 19                        ; generate_amdgcn.py:379:19
	s_and_not1_b32 vcc_lo, exec_lo, s2
	s_mov_b32 s12, 0
	s_cbranch_vccnz .LBB0_11
; %bb.10:
	s_mov_b32 s13, s12
	s_mov_b32 s14, s12
	s_mov_b32 s15, s12
	s_mov_b32 s16, s12
	s_mov_b32 s17, s12
	s_mov_b32 s18, s12
	s_mov_b32 s19, s12
	.loc	1 376 22                        ; generate_amdgcn.py:376:22
	v_add_nc_u32_e32 v1, s43, v70
	v_add_nc_u32_e32 v68, s43, v68
	ds_load_b128 v[120:123], v1 offset:4096
	ds_load_b128 v[144:147], v1
	.loc	1 374 22                        ; generate_amdgcn.py:374:22
	v_add_nc_u32_e32 v1, s42, v64
	.loc	1 376 22                        ; generate_amdgcn.py:376:22
	v_add_nc_u32_e32 v69, s43, v69
	ds_load_b128 v[148:151], v68 offset:4096
	ds_load_b128 v[152:155], v68
	.loc	1 374 22                        ; generate_amdgcn.py:374:22
	v_add_nc_u32_e32 v64, s42, v67
	v_add_nc_u32_e32 v65, s42, v65
	ds_load_b128 v[156:159], v1 offset:2048
	ds_load_b128 v[112:115], v1
	.loc	1 376 22                        ; generate_amdgcn.py:376:22
	ds_load_b128 v[160:163], v69 offset:4096
	ds_load_b128 v[164:167], v69
	.loc	1 374 22                        ; generate_amdgcn.py:374:22
	ds_load_b128 v[168:171], v64 offset:2048
	ds_load_b128 v[172:175], v64
	ds_load_b128 v[176:179], v65 offset:2048
	ds_load_b128 v[180:183], v65
	.loc	1 376 22                        ; generate_amdgcn.py:376:22
	v_add_nc_u32_e32 v96, s43, v71
	.loc	1 374 22                        ; generate_amdgcn.py:374:22
	v_add_nc_u32_e32 v1, s42, v66
	.loc	1 379 19                        ; generate_amdgcn.py:379:19
	v_dual_mov_b32 v71, s19 :: v_dual_mov_b32 v70, s18
	v_dual_mov_b32 v69, s17 :: v_dual_mov_b32 v68, s16
	.loc	1 374 22                        ; generate_amdgcn.py:374:22
	ds_load_b128 v[184:187], v1
	.loc	1 379 19                        ; generate_amdgcn.py:379:19
	v_dual_mov_b32 v67, s15 :: v_dual_mov_b32 v66, s14
	v_dual_mov_b32 v65, s13 :: v_dual_mov_b32 v64, s12
	.loc	1 376 22                        ; generate_amdgcn.py:376:22
	ds_load_b128 v[188:191], v96
	ds_load_b128 v[192:195], v96 offset:4096
	.loc	1 374 22                        ; generate_amdgcn.py:374:22
	ds_load_b128 v[196:199], v1 offset:2048
	.loc	1 379 19                        ; generate_amdgcn.py:379:19
	s_waitcnt lgkmcnt(10)
	v_wmma_i32_16x16x16_iu8 v[96:103], v[152:155], v[112:115], v[64:71] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[104:111], v[148:151], v[112:115], v[64:71] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[112:119], v[152:155], v[156:159], v[64:71] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[64:71], v[148:151], v[156:159], v[64:71] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(4)
	v_wmma_i32_16x16x16_iu8 v[96:103], v[164:167], v[180:183], v[96:103] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[104:111], v[160:163], v[180:183], v[104:111] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[112:119], v[164:167], v[176:179], v[112:119] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[64:71], v[160:163], v[176:179], v[64:71] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_wmma_i32_16x16x16_iu8 v[96:103], v[144:147], v[172:175], v[96:103] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[104:111], v[120:123], v[172:175], v[104:111] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_wmma_i32_16x16x16_iu8 v[112:119], v[144:147], v[168:171], v[112:119] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[64:71], v[120:123], v[168:171], v[64:71] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(2)
	v_wmma_i32_16x16x16_iu8 v[96:103], v[188:191], v[184:187], v[96:103] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu8 v[104:111], v[192:195], v[184:187], v[104:111] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu8 v[112:119], v[188:191], v[196:199], v[112:119] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[64:71], v[192:195], v[196:199], v[64:71] neg_lo:[1,1,0]
	v_cvt_f32_i32_e32 v1, v96
	v_cvt_f32_i32_e32 v96, v97
	v_cvt_f32_i32_e32 v97, v98
	v_cvt_f32_i32_e32 v98, v99
	v_cvt_f32_i32_e32 v99, v100
	v_cvt_f32_i32_e32 v100, v101
	v_cvt_f32_i32_e32 v101, v102
	v_cvt_f32_i32_e32 v102, v103
	v_cvt_f32_i32_e32 v103, v104
	v_cvt_f32_i32_e32 v104, v105
	v_cvt_f32_i32_e32 v105, v106
	v_cvt_f32_i32_e32 v106, v107
	v_cvt_f32_i32_e32 v107, v108
	v_cvt_f32_i32_e32 v108, v109
	v_cvt_f32_i32_e32 v109, v110
	v_cvt_f32_i32_e32 v110, v111
	v_cvt_f32_i32_e32 v111, v112
	v_cvt_f32_i32_e32 v112, v113
	v_cvt_f32_i32_e32 v113, v114
	v_cvt_f32_i32_e32 v114, v115
	v_cvt_f32_i32_e32 v115, v116
	v_cvt_f32_i32_e32 v116, v117
	v_cvt_f32_i32_e32 v117, v118
	v_cvt_f32_i32_e32 v118, v119
	v_cvt_f32_i32_e32 v119, v64
	v_cvt_f32_i32_e32 v120, v65
	v_cvt_f32_i32_e32 v121, v66
	v_cvt_f32_i32_e32 v122, v67
	v_cvt_f32_i32_e32 v123, v68
	v_cvt_f32_i32_e32 v124, v69
	v_cvt_f32_i32_e32 v125, v70
	v_cvt_f32_i32_e32 v126, v71
.LBB0_11:
	.loc	1 388 29                        ; generate_amdgcn.py:388:29
	s_ashr_i32 s4, s40, 31
	.loc	1 392 22                        ; generate_amdgcn.py:392:22
	s_mov_b32 s22, s10
	.loc	1 388 29                        ; generate_amdgcn.py:388:29
	s_lshr_b32 s4, s4, 24
	.loc	1 392 22                        ; generate_amdgcn.py:392:22
	s_mov_b32 s23, s11
	.loc	1 388 29                        ; generate_amdgcn.py:388:29
	s_add_i32 s4, s40, s4
	v_mov_b16_e32 v64.l, 0
	s_ashr_i32 s4, s4, 8
	.loc	1 390 22                        ; generate_amdgcn.py:390:22
	s_waitcnt vmcnt(16)
	v_mov_b16_e32 v64.h, v127.l
	.loc	1 389 34                        ; generate_amdgcn.py:389:34
	s_cmp_lt_i32 s4, s41
	.loc	1 390 22                        ; generate_amdgcn.py:390:22
	v_add_lshl_u32 v62, v62, s4, 1
	v_add_lshl_u32 v63, v63, s4, 1
	.loc	1 392 40                        ; generate_amdgcn.py:392:40
	s_mul_i32 s4, s4, s35
	.loc	1 389 34                        ; generate_amdgcn.py:389:34
	s_cselect_b32 s5, -1, 0
	.loc	1 392 22                        ; generate_amdgcn.py:392:22
	v_add_lshl_u32 v53, v53, s4, 1
	v_add_lshl_u32 v52, v52, s4, 1
	v_add_lshl_u32 v51, v51, s4, 1
	.loc	1 333 5                         ; generate_amdgcn.py:333:5
	s_and_b32 vcc_lo, s2, s5
	.loc	1 392 22                        ; generate_amdgcn.py:392:22
	v_add_lshl_u32 v49, v49, s4, 1
	v_add_lshl_u32 v61, v61, s4, 1
	v_add_lshl_u32 v47, v47, s4, 1
	v_add_lshl_u32 v50, v50, s4, 1
	v_add_lshl_u32 v48, v48, s4, 1
	v_add_lshl_u32 v46, v46, s4, 1
	v_add_lshl_u32 v60, v60, s4, 1
	v_dual_cndmask_b32 v53, 0x80000000, v53 :: v_dual_cndmask_b32 v52, 0x80000000, v52
	v_add_lshl_u32 v59, v59, s4, 1
	v_add_lshl_u32 v58, v58, s4, 1
	v_dual_cndmask_b32 v51, 0x80000000, v51 :: v_dual_cndmask_b32 v50, 0x80000000, v50
	v_add_lshl_u32 v57, v57, s4, 1
	v_add_lshl_u32 v56, v56, s4, 1
	v_add_lshl_u32 v55, v55, s4, 1
	v_add_lshl_u32 v54, v54, s4, 1
	v_dual_cndmask_b32 v49, 0x80000000, v49 :: v_dual_cndmask_b32 v48, 0x80000000, v48
	v_dual_cndmask_b32 v61, 0x80000000, v61 :: v_dual_cndmask_b32 v60, 0x80000000, v60
	v_dual_cndmask_b32 v47, 0x80000000, v47 :: v_dual_cndmask_b32 v46, 0x80000000, v46
	s_clause 0x7
	buffer_load_u16 v53, v53, s[20:23], 0 offen
	buffer_load_u16 v52, v52, s[20:23], 0 offen
	buffer_load_u16 v51, v51, s[20:23], 0 offen
	buffer_load_u16 v49, v49, s[20:23], 0 offen
	buffer_load_u16 v47, v47, s[20:23], 0 offen
	buffer_load_u16 v50, v50, s[20:23], 0 offen
	buffer_load_u16 v48, v48, s[20:23], 0 offen
	buffer_load_u16 v46, v46, s[20:23], 0 offen
	v_dual_cndmask_b32 v59, 0x80000000, v59 :: v_dual_cndmask_b32 v58, 0x80000000, v58
	v_dual_cndmask_b32 v57, 0x80000000, v57 :: v_dual_cndmask_b32 v56, 0x80000000, v56
	v_dual_cndmask_b32 v55, 0x80000000, v55 :: v_dual_cndmask_b32 v54, 0x80000000, v54
	s_clause 0x7
	buffer_load_u16 v61, v61, s[20:23], 0 offen
	buffer_load_u16 v60, v60, s[20:23], 0 offen
	buffer_load_u16 v59, v59, s[20:23], 0 offen
	buffer_load_u16 v58, v58, s[20:23], 0 offen
	buffer_load_u16 v57, v57, s[20:23], 0 offen
	buffer_load_u16 v56, v56, s[20:23], 0 offen
	buffer_load_u16 v55, v55, s[20:23], 0 offen
	buffer_load_u16 v54, v54, s[20:23], 0 offen
	.loc	1 390 22                        ; generate_amdgcn.py:390:22
	v_dual_cndmask_b32 v62, 0x80000000, v62 :: v_dual_cndmask_b32 v63, 0x80000000, v63
	s_clause 0x1
	buffer_load_u16 v62, v62, s[8:11], 0 offen
	buffer_load_u16 v63, v63, s[8:11], 0 offen
	.loc	1 392 22                        ; generate_amdgcn.py:392:22
	s_waitcnt vmcnt(18)
	v_mov_b16_e64 v65.h, v143.l
	v_mov_b16_e64 v66.h, v142.l
	v_mov_b16_e64 v67.h, v141.l
	v_mov_b16_e64 v68.h, v140.l
	v_mov_b16_e64 v69.h, v139.l
	v_mov_b16_e64 v70.h, v138.l
	v_mov_b16_e64 v71.h, v137.l
	v_mov_b16_e64 v127.h, v136.l
	v_mov_b16_e64 v128.h, v135.l
	v_mov_b16_e64 v129.h, v134.l
	v_mov_b16_e64 v130.h, v133.l
	v_mov_b16_e64 v131.h, v132.l
	v_mov_b16_e64 v132.h, v131.l
	v_mov_b16_e64 v133.h, v130.l
	v_mov_b16_e64 v134.h, v129.l
	v_mov_b16_e64 v135.h, v128.l
	v_mov_b16_e32 v65.l, v64.l
	.loc	1 418 9                         ; generate_amdgcn.py:418:9
	v_lshlrev_b32_e32 v139, 2, v0
	.loc	1 392 22                        ; generate_amdgcn.py:392:22
	v_mov_b16_e32 v66.l, v64.l
	.loc	1 326 32                        ; generate_amdgcn.py:326:32
	v_and_b32_e32 v136, 0x7f, v0
	.loc	1 392 22                        ; generate_amdgcn.py:392:22
	v_mov_b16_e32 v67.l, v64.l
	v_mov_b16_e32 v68.l, v64.l
	v_mov_b16_e32 v69.l, v64.l
	v_mov_b16_e32 v70.l, v64.l
	.loc	1 418 9                         ; generate_amdgcn.py:418:9
	v_and_b32_e32 v138, 14, v0
	.loc	1 392 22                        ; generate_amdgcn.py:392:22
	v_mov_b16_e32 v71.l, v64.l
	v_mov_b16_e32 v127.l, v64.l
	.loc	1 418 9                         ; generate_amdgcn.py:418:9
	v_and_b32_e32 v140, 1, v0
	v_bfe_i32 v0, v0, 0, 1
	.loc	1 392 22                        ; generate_amdgcn.py:392:22
	v_mov_b16_e64 v128.l, v64.l
	v_mov_b16_e64 v129.l, v64.l
	v_mov_b16_e64 v130.l, v64.l
	v_mov_b16_e64 v131.l, v64.l
	v_mov_b16_e64 v132.l, v64.l
	v_mov_b16_e64 v133.l, v64.l
	v_mov_b16_e64 v134.l, v64.l
	v_mov_b16_e64 v135.l, v64.l
	.loc	1 394 24                        ; generate_amdgcn.py:394:24
	v_dual_mul_f32 v151, v64, v129 :: v_dual_and_b32 v0, 0x840, v0
	v_dual_mul_f32 v142, v64, v65 :: v_dual_and_b32 v139, 0x78, v139
	v_mul_f32_e32 v146, v64, v69
	v_mul_f32_e32 v143, v64, v66
	v_mul_f32_e32 v144, v64, v67
	v_mul_f32_e32 v145, v64, v68
	v_mul_f32_e32 v147, v64, v70
	v_dual_mul_f32 v148, v64, v71 :: v_dual_lshlrev_b32 v141, 11, v138
	v_mul_f32_e32 v149, v64, v127
	v_mul_f32_e32 v150, v64, v128
	v_mul_f32_e32 v152, v64, v130
	v_mul_f32_e32 v153, v64, v131
	v_mul_f32_e32 v154, v64, v132
	v_mul_f32_e32 v155, v64, v133
	v_mul_f32_e32 v156, v64, v134
	v_mul_f32_e32 v157, v64, v135
	.loc	1 390 22                        ; generate_amdgcn.py:390:22
	v_mov_b16_e32 v64.h, v95.l
	.loc	1 418 9                         ; generate_amdgcn.py:418:9
	v_lshl_or_b32 v13, v13, 3, v139
	.loc	1 325 32                        ; generate_amdgcn.py:325:32
	v_lshrrev_b32_e32 v137, 7, v11
	.loc	1 399 13                        ; generate_amdgcn.py:399:13
	v_fma_f32 v80, v156, v80, v31
	v_fma_f32 v87, v149, v87, v39
	.loc	1 394 24                        ; generate_amdgcn.py:394:24
	v_mul_f32_e32 v127, v64, v127
	v_mul_f32_e32 v71, v64, v71
	v_mul_f32_e32 v131, v64, v131
	v_mul_f32_e32 v133, v64, v133
	v_mul_f32_e32 v65, v64, v65
	v_mul_f32_e32 v67, v64, v67
	v_mul_f32_e32 v129, v64, v129
	.loc	1 399 13                        ; generate_amdgcn.py:399:13
	v_fma_f32 v5, v131, v5, v18
	v_fma_f32 v3, v133, v3, v16
	.loc	1 394 24                        ; generate_amdgcn.py:394:24
	v_mul_f32_e32 v66, v64, v66
	v_mul_f32_e32 v68, v64, v68
	v_mul_f32_e32 v69, v64, v69
	v_mul_f32_e32 v70, v64, v70
	v_mul_f32_e32 v128, v64, v128
	v_mul_f32_e32 v130, v64, v130
	v_mul_f32_e32 v132, v64, v132
	v_mul_f32_e32 v134, v64, v134
	v_mul_f32_e32 v64, v64, v135
	.loc	1 418 9                         ; generate_amdgcn.py:418:9
	v_xor_b32_e32 v0, v13, v0
	.loc	1 333 5                         ; generate_amdgcn.py:333:5
	v_cndmask_b32_e64 v5, v18, v5, s3
	v_cndmask_b32_e64 v3, v16, v3, s3
	v_cndmask_b32_e64 v80, v31, v80, s3
	.loc	1 399 13                        ; generate_amdgcn.py:399:13
	v_fma_f32 v31, v66, v77, v28
	v_fma_f32 v6, v130, v6, v19
	v_fma_f32 v4, v132, v4, v17
	v_fma_f32 v64, v64, v73, v14
	v_fma_f32 v2, v134, v2, v15
	.loc	1 418 23                        ; generate_amdgcn.py:418:23
	v_mul_lo_u32 v137, s35, v137
	.loc	1 399 13                        ; generate_amdgcn.py:399:13
	v_fma_f32 v85, v151, v85, v36
	.loc	1 333 5                         ; generate_amdgcn.py:333:5
	v_cndmask_b32_e64 v28, v28, v31, s3
	.loc	1 418 23                        ; generate_amdgcn.py:418:23
	s_mul_i32 s38, s34, s35
	.loc	1 333 5                         ; generate_amdgcn.py:333:5
	v_cndmask_b32_e64 v2, v15, v2, s3
	.loc	1 418 23                        ; generate_amdgcn.py:418:23
	s_add_i32 s38, s38, s33
	.loc	1 399 13                        ; generate_amdgcn.py:399:13
	v_fma_f32 v94, v142, v94, v38
	v_fma_f32 v89, v147, v89, v41
	.loc	1 333 5                         ; generate_amdgcn.py:333:5
	v_cndmask_b32_e64 v39, v39, v87, s3
	v_cndmask_b32_e64 v36, v36, v85, s3
	.loc	1 418 23                        ; generate_amdgcn.py:418:23
	v_add3_u32 v95, s38, v136, v137
	.loc	1 399 13                        ; generate_amdgcn.py:399:13
	v_fma_f32 v90, v146, v90, v42
	.loc	1 333 5                         ; generate_amdgcn.py:333:5
	v_cndmask_b32_e64 v38, v38, v94, s3
	v_cndmask_b32_e64 v41, v41, v89, s3
	.loc	1 418 9                         ; generate_amdgcn.py:418:9
	v_cmp_eq_u32_e32 vcc_lo, 0, v11
	.loc	1 399 13                        ; generate_amdgcn.py:399:13
	v_fma_f32 v92, v144, v92, v44
	.loc	1 333 5                         ; generate_amdgcn.py:333:5
	v_cndmask_b32_e64 v42, v42, v90, s3
	.loc	1 399 13                        ; generate_amdgcn.py:399:13
	v_fma_f32 v93, v143, v93, v45
	.loc	1 418 9                         ; generate_amdgcn.py:418:9
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 333 5                         ; generate_amdgcn.py:333:5
	v_cndmask_b32_e64 v44, v44, v92, s3
	.loc	1 418 23                        ; generate_amdgcn.py:418:23
	s_lshl_b32 s37, s35, 1
	.loc	1 333 5                         ; generate_amdgcn.py:333:5
	v_cndmask_b32_e64 v45, v45, v93, s3
	.loc	1 418 23                        ; generate_amdgcn.py:418:23
	s_lshl_b32 s36, s35, 2
	.loc	1 418 9 is_stmt 0               ; generate_amdgcn.py:418:9
	s_and_b32 s1, s1, 0xffff
	.loc	1 418 23                        ; generate_amdgcn.py:418:23
	s_mul_i32 s29, s35, 6
	s_lshl_b32 s34, s35, 3
	s_mul_i32 s28, s35, 10
	s_mul_i32 s27, s35, 12
	s_mul_i32 s26, s35, 14
	s_lshl_b32 s31, s35, 4
	s_mul_i32 s25, s35, 18
	s_mul_i32 s24, s35, 20
	s_mul_i32 s23, s35, 22
	s_mul_i32 s22, s35, 24
	s_mul_i32 s21, s35, 26
	s_mul_i32 s20, s35, 28
	s_mul_i32 s19, s35, 30
	s_lshl_b32 s30, s35, 5
	s_mul_i32 s18, s35, 34
	s_mul_i32 s17, s35, 36
	s_mul_i32 s16, s35, 38
	s_mul_i32 s15, s35, 40
	s_mul_i32 s14, s35, 42
	s_mul_i32 s13, s35, 44
	s_mul_i32 s12, s35, 46
	s_mul_i32 s9, s35, 48
	s_mul_i32 s8, s35, 50
	s_mul_i32 s7, s35, 52
	s_mul_i32 s6, s35, 54
	s_mul_i32 s5, s35, 56
	s_mul_i32 s4, s35, 58
	s_mul_i32 s33, s35, 60
	.loc	1 392 22 is_stmt 1              ; generate_amdgcn.py:392:22
	s_waitcnt vmcnt(15)
	v_lshlrev_b32_e32 v31, 16, v51
	s_waitcnt vmcnt(13)
	v_lshlrev_b32_e32 v47, 16, v47
	s_waitcnt vmcnt(11)
	v_lshlrev_b32_e32 v48, 16, v48
	.loc	1 399 13                        ; generate_amdgcn.py:399:13
	v_fma_f32 v9, v127, v9, v22
	.loc	1 392 22                        ; generate_amdgcn.py:392:22
	s_waitcnt vmcnt(10)
	v_lshlrev_b32_e32 v46, 16, v46
	.loc	1 399 13                        ; generate_amdgcn.py:399:13
	v_fma_f32 v7, v129, v7, v20
	.loc	1 392 22                        ; generate_amdgcn.py:392:22
	s_waitcnt vmcnt(7)
	v_lshlrev_b32_e32 v16, 16, v59
	.loc	1 399 13                        ; generate_amdgcn.py:399:13
	v_fma_f32 v13, v65, v78, v29
	.loc	1 333 5                         ; generate_amdgcn.py:333:5
	v_cndmask_b32_e64 v9, v22, v9, s3
	.loc	1 392 22                        ; generate_amdgcn.py:392:22
	s_waitcnt vmcnt(5)
	v_lshlrev_b32_e32 v18, 16, v57
	s_waitcnt vmcnt(2)
	v_lshlrev_b32_e32 v22, 16, v54
	.loc	1 399 13                        ; generate_amdgcn.py:399:13
	v_fma_f32 v10, v71, v10, v23
	.loc	1 333 5                         ; generate_amdgcn.py:333:5
	v_cndmask_b32_e64 v7, v20, v7, s3
	.loc	1 392 22                        ; generate_amdgcn.py:392:22
	v_lshlrev_b32_e32 v20, 16, v55
	.loc	1 399 13                        ; generate_amdgcn.py:399:13
	v_fma_f32 v66, v69, v74, v25
	.loc	1 333 5                         ; generate_amdgcn.py:333:5
	v_cndmask_b32_e64 v69, v29, v13, s3
	v_cndmask_b32_e64 v10, v23, v10, s3
	.loc	1 392 22                        ; generate_amdgcn.py:392:22
	v_lshlrev_b32_e32 v23, 16, v53
	.loc	1 399 13                        ; generate_amdgcn.py:399:13
	v_fma_f32 v82, v154, v82, v33
	.loc	1 333 5                         ; generate_amdgcn.py:333:5
	v_cndmask_b32_e64 v13, v19, v6, s3
	v_cndmask_b32_e64 v6, v17, v4, s3
	.loc	1 390 22                        ; generate_amdgcn.py:390:22
	s_waitcnt vmcnt(1)
	v_lshlrev_b32_e32 v4, 16, v62
	.loc	1 392 22                        ; generate_amdgcn.py:392:22
	v_lshlrev_b32_e32 v15, 16, v60
	.loc	1 333 5                         ; generate_amdgcn.py:333:5
	v_cndmask_b32_e64 v82, v33, v82, s3
	.loc	1 399 13                        ; generate_amdgcn.py:399:13
	v_fma_f32 v33, v67, v76, v27
	v_fma_f32 v88, v148, v88, v40
	v_fma_f32 v67, v70, v72, v24
	.loc	1 392 22                        ; generate_amdgcn.py:392:22
	v_lshlrev_b32_e32 v17, 16, v58
	.loc	1 399 13                        ; generate_amdgcn.py:399:13
	v_fma_f32 v86, v150, v86, v37
	.loc	1 333 5                         ; generate_amdgcn.py:333:5
	v_cndmask_b32_e64 v29, v27, v33, s3
	.loc	1 392 22                        ; generate_amdgcn.py:392:22
	v_lshlrev_b32_e32 v33, 16, v49
	v_lshlrev_b32_e32 v49, 16, v50
	.loc	1 399 13                        ; generate_amdgcn.py:399:13
	v_fma_f32 v8, v128, v8, v21
	v_fma_f32 v65, v68, v75, v26
	.loc	1 418 9                         ; generate_amdgcn.py:418:9
	v_or3_b32 v68, v0, v141, v11
	.loc	1 333 5                         ; generate_amdgcn.py:333:5
	v_cndmask_b32_e64 v0, v14, v64, s3
	.loc	1 392 22                        ; generate_amdgcn.py:392:22
	v_lshlrev_b32_e32 v14, 16, v61
	.loc	1 399 13                        ; generate_amdgcn.py:399:13
	v_fma_f32 v79, v157, v79, v30
	.loc	1 333 5                         ; generate_amdgcn.py:333:5
	v_cndmask_b32_e64 v21, v21, v8, s3
	.loc	1 390 22                        ; generate_amdgcn.py:390:22
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v8, 16, v63
	.loc	1 399 13                        ; generate_amdgcn.py:399:13
	v_fma_f32 v81, v155, v81, v32
	.loc	1 418 9                         ; generate_amdgcn.py:418:9
	v_add_nc_u32_e32 v64, 0, v68
	.loc	1 399 13                        ; generate_amdgcn.py:399:13
	v_fma_f32 v83, v153, v83, v34
	.loc	1 392 22                        ; generate_amdgcn.py:392:22
	v_lshlrev_b32_e32 v19, 16, v56
	v_lshlrev_b32_e32 v27, 16, v52
	.loc	1 399 13                        ; generate_amdgcn.py:399:13
	v_fma_f32 v84, v152, v84, v35
	.loc	1 333 5                         ; generate_amdgcn.py:333:5
	v_cndmask_b32_e64 v32, v32, v81, s3
	v_cndmask_b32_e64 v30, v30, v79, s3
	.loc	1 394 24                        ; generate_amdgcn.py:394:24
	v_mul_f32_e32 v50, v4, v14
	v_mul_f32_e32 v52, v4, v16
	v_mul_f32_e32 v54, v4, v18
	v_mul_f32_e32 v56, v4, v20
	v_mul_f32_e32 v58, v4, v23
	v_mul_f32_e32 v14, v8, v14
	v_mul_f32_e32 v16, v8, v16
	v_mul_f32_e32 v20, v8, v20
	v_mul_f32_e32 v23, v8, v23
	.loc	1 333 5                         ; generate_amdgcn.py:333:5
	v_cndmask_b32_e64 v40, v40, v88, s3
	v_cndmask_b32_e64 v37, v37, v86, s3
	v_cndmask_b32_e64 v34, v34, v83, s3
	v_cndmask_b32_e64 v26, v26, v65, s3
	v_cndmask_b32_e64 v24, v24, v67, s3
	.loc	1 394 24                        ; generate_amdgcn.py:394:24
	v_mul_f32_e32 v51, v4, v15
	v_mul_f32_e32 v53, v4, v17
	v_mul_f32_e32 v55, v4, v19
	v_mul_f32_e32 v57, v4, v22
	v_mul_f32_e32 v59, v4, v27
	v_mul_f32_e32 v60, v4, v31
	v_mul_f32_e32 v62, v4, v47
	v_mul_f32_e32 v67, v4, v48
	v_mul_f32_e32 v15, v8, v15
	v_mul_f32_e32 v18, v8, v18
	v_mul_f32_e32 v22, v8, v22
	v_mul_f32_e32 v27, v8, v27
	.loc	1 333 5                         ; generate_amdgcn.py:333:5
	v_cndmask_b32_e64 v35, v35, v84, s3
	.loc	1 394 24                        ; generate_amdgcn.py:394:24
	v_mul_f32_e32 v61, v4, v33
	v_mul_f32_e32 v63, v4, v49
	v_mul_f32_e32 v17, v8, v17
	v_mul_f32_e32 v19, v8, v19
	v_mul_f32_e32 v31, v8, v31
	v_mul_f32_e32 v33, v8, v33
	v_mul_f32_e32 v47, v8, v47
	v_mul_f32_e32 v49, v8, v49
	v_mul_f32_e32 v48, v8, v48
	v_mul_f32_e32 v8, v8, v46
	.loc	1 399 13                        ; generate_amdgcn.py:399:13
	v_fma_f32 v1, v50, v1, v0
	v_fma_f32 v50, v52, v97, v3
	v_fma_f32 v52, v54, v99, v5
	v_fma_f32 v54, v56, v101, v7
	v_fma_f32 v56, v58, v103, v9
	v_fma_f32 v14, v14, v111, v30
	v_fma_f32 v16, v16, v113, v32
	v_fma_f32 v20, v20, v117, v36
	v_fma_f32 v72, v23, v119, v39
	.loc	1 333 5                         ; generate_amdgcn.py:333:5
	v_cndmask_b32_e64 v25, v25, v66, s3
	.loc	1 394 24                        ; generate_amdgcn.py:394:24
	v_mul_f32_e32 v4, v4, v46
	.loc	1 399 13                        ; generate_amdgcn.py:399:13
	v_fma_f32 v46, v51, v96, v2
	v_fma_f32 v51, v53, v98, v6
	v_fma_f32 v53, v55, v100, v13
	v_fma_f32 v55, v57, v102, v21
	v_fma_f32 v57, v59, v104, v10
	v_fma_f32 v58, v60, v105, v24
	v_fma_f32 v60, v62, v107, v26
	v_fma_f32 v62, v67, v109, v28
	v_fma_f32 v67, v15, v112, v80
	v_fma_f32 v18, v18, v115, v34
	v_fma_f32 v22, v22, v118, v37
	v_fma_f32 v73, v27, v120, v40
	v_fma_f32 v71, v19, v116, v35
	v_fma_f32 v74, v31, v121, v41
	v_fma_f32 v76, v8, v126, v38
	.loc	1 333 5                         ; generate_amdgcn.py:333:5
	v_cndmask_b32_e64 v0, v0, v1, s2
	v_cndmask_b32_e64 v8, v5, v52, s2
	v_cndmask_b32_e64 v19, v9, v56, s2
	v_cndmask_b32_e64 v1, v30, v14, s2
	v_cndmask_b32_e64 v5, v32, v16, s2
	v_cndmask_b32_e64 v16, v36, v20, s2
	v_cndmask_b32_e64 v20, v39, v72, s2
	.loc	1 399 13                        ; generate_amdgcn.py:399:13
	v_fma_f32 v91, v145, v91, v43
	.loc	1 418 9                         ; generate_amdgcn.py:418:9
	v_xad_u32 v65, v68, 8, 0
	.loc	1 399 13                        ; generate_amdgcn.py:399:13
	v_fma_f32 v59, v61, v106, v25
	v_fma_f32 v61, v63, v108, v29
	v_fma_f32 v63, v4, v110, v69
	v_fma_f32 v70, v17, v114, v82
	v_fma_f32 v75, v33, v122, v42
	.loc	1 333 5                         ; generate_amdgcn.py:333:5
	v_cndmask_b32_e64 v2, v2, v46, s2
	v_cndmask_b32_e64 v4, v3, v50, s2
	v_cndmask_b32_e64 v17, v21, v55, s2
	v_cndmask_b32_e64 v21, v10, v57, s2
	v_cndmask_b32_e64 v3, v80, v67, s2
	v_cndmask_b32_e64 v9, v34, v18, s2
	v_cndmask_b32_e64 v18, v37, v22, s2
	v_cndmask_b32_e64 v22, v40, v73, s2
	.loc	1 418 9                         ; generate_amdgcn.py:418:9
	v_xad_u32 v66, v68, 16, 0
	.loc	1 333 5                         ; generate_amdgcn.py:333:5
	v_cndmask_b32_e64 v23, v24, v58, s2
	v_cndmask_b32_e64 v24, v41, v74, s2
	.loc	1 418 9                         ; generate_amdgcn.py:418:9
	ds_store_2addr_stride64_b64 v64, v[0:1], v[19:20] offset1:2
	ds_store_2addr_stride64_b64 v65, v[2:3], v[21:22] offset1:2
	v_lshlrev_b32_e32 v1, 6, v140
	v_cndmask_b32_e64 v2, 0x840, 0, vcc_lo
	.loc	1 333 5                         ; generate_amdgcn.py:333:5
	v_cndmask_b32_e64 v43, v43, v91, s3
	v_cndmask_b32_e64 v6, v6, v51, s2
	v_cndmask_b32_e64 v15, v7, v54, s2
	v_cndmask_b32_e64 v25, v25, v59, s2
	v_cndmask_b32_e64 v27, v26, v60, s2
	v_cndmask_b32_e64 v7, v82, v70, s2
	v_cndmask_b32_e64 v26, v42, v75, s2
	.loc	1 418 9                         ; generate_amdgcn.py:418:9
	v_xad_u32 v0, v68, 24, 0
	ds_store_2addr_stride64_b64 v66, v[4:5], v[23:24] offset1:2
	ds_store_2addr_stride64_b64 v0, v[6:7], v[25:26] offset1:2
	v_and_b32_e32 v0, 0x700, v12
	v_lshlrev_b32_e32 v3, 2, v138
	v_xor_b32_e32 v1, v2, v1
	.loc	1 399 13                        ; generate_amdgcn.py:399:13
	v_fma_f32 v47, v47, v123, v43
	v_fma_f32 v49, v49, v124, v44
	v_fma_f32 v48, v48, v125, v45
	.loc	1 333 5                         ; generate_amdgcn.py:333:5
	v_cndmask_b32_e64 v31, v28, v62, s2
	.loc	1 418 9                         ; generate_amdgcn.py:418:9
	v_or3_b32 v19, v0, v3, v1
	.loc	1 333 5                         ; generate_amdgcn.py:333:5
	v_cndmask_b32_e64 v28, v43, v47, s2
	.loc	1 418 9                         ; generate_amdgcn.py:418:9
	v_xad_u32 v2, v68, 32, 0
	.loc	1 333 5                         ; generate_amdgcn.py:333:5
	v_cndmask_b32_e64 v13, v13, v53, s2
	v_cndmask_b32_e64 v29, v29, v61, s2
	v_cndmask_b32_e64 v14, v35, v71, s2
	v_cndmask_b32_e64 v30, v44, v49, s2
	.loc	1 418 9                         ; generate_amdgcn.py:418:9
	v_xad_u32 v4, v68, 40, 0
	.loc	1 333 5                         ; generate_amdgcn.py:333:5
	v_cndmask_b32_e64 v32, v45, v48, s2
	.loc	1 418 9                         ; generate_amdgcn.py:418:9
	v_xad_u32 v5, v68, 48, 0
	.loc	1 333 5                         ; generate_amdgcn.py:333:5
	v_cndmask_b32_e64 v33, v69, v63, s2
	v_cndmask_b32_e64 v34, v38, v76, s2
	.loc	1 418 9                         ; generate_amdgcn.py:418:9
	v_xad_u32 v6, v68, 56, 0
	v_add_nc_u32_e32 v0, 0, v19
	ds_store_2addr_stride64_b64 v2, v[8:9], v[27:28] offset1:2
	ds_store_2addr_stride64_b64 v4, v[13:14], v[29:30] offset1:2
	ds_store_2addr_stride64_b64 v5, v[15:16], v[31:32] offset1:2
	ds_store_2addr_stride64_b64 v6, v[17:18], v[33:34] offset1:2
	v_xad_u32 v4, 0x1008, v19, 0
	s_waitcnt lgkmcnt(0)
	v_xad_u32 v8, 0x2010, v19, 0
	s_barrier
	ds_load_2addr_b64 v[0:3], v0 offset1:16
	ds_load_2addr_b64 v[4:7], v4 offset1:16
	v_xad_u32 v16, 0x4020, v19, 0
	v_xad_u32 v12, 0x3018, v19, 0
	v_xad_u32 v20, 0x5028, v19, 0
	v_xad_u32 v24, 0x6030, v19, 0
	ds_load_2addr_b64 v[8:11], v8 offset1:16
	v_xad_u32 v28, 0x7038, v19, 0
	ds_load_2addr_b64 v[16:19], v16 offset1:16
	ds_load_2addr_b64 v[20:23], v20 offset1:16
	ds_load_2addr_b64 v[24:27], v24 offset1:16
	ds_load_2addr_b64 v[12:15], v12 offset1:16
	v_lshlrev_b32_e32 v32, 2, v95
	v_add_lshl_u32 v33, v95, s37, 2
	ds_load_2addr_b64 v[28:31], v28 offset1:16
	s_mov_b32 s2, s10
	s_mov_b32 s3, s11
	s_waitcnt lgkmcnt(7)
	buffer_atomic_add_f32 v0, v32, s[0:3], 0 offen
	s_waitcnt lgkmcnt(6)
	buffer_atomic_add_f32 v4, v33, s[0:3], 0 offen
	v_add_lshl_u32 v0, v95, s36, 2
	v_add_lshl_u32 v4, v95, s29, 2
	v_add_lshl_u32 v32, v95, s34, 2
	v_add_lshl_u32 v33, v95, s28, 2
	v_add_lshl_u32 v34, v95, s27, 2
	s_waitcnt lgkmcnt(5)
	buffer_atomic_add_f32 v8, v0, s[0:3], 0 offen
	s_waitcnt lgkmcnt(1)
	s_clause 0x3
	buffer_atomic_add_f32 v12, v4, s[0:3], 0 offen
	buffer_atomic_add_f32 v16, v32, s[0:3], 0 offen
	buffer_atomic_add_f32 v20, v33, s[0:3], 0 offen
	buffer_atomic_add_f32 v24, v34, s[0:3], 0 offen
	v_add_lshl_u32 v0, v95, s26, 2
	v_add_lshl_u32 v4, v95, s31, 2
	v_add_lshl_u32 v8, v95, s25, 2
	v_add_lshl_u32 v12, v95, s24, 2
	v_add_lshl_u32 v16, v95, s23, 2
	s_waitcnt lgkmcnt(0)
	s_clause 0x4
	buffer_atomic_add_f32 v28, v0, s[0:3], 0 offen
	buffer_atomic_add_f32 v2, v4, s[0:3], 0 offen
	buffer_atomic_add_f32 v6, v8, s[0:3], 0 offen
	buffer_atomic_add_f32 v10, v12, s[0:3], 0 offen
	buffer_atomic_add_f32 v14, v16, s[0:3], 0 offen
	v_add_lshl_u32 v0, v95, s22, 2
	v_add_lshl_u32 v2, v95, s21, 2
	v_add_lshl_u32 v4, v95, s20, 2
	v_add_lshl_u32 v6, v95, s19, 2
	v_add_lshl_u32 v8, v95, s30, 2
	s_clause 0x4
	buffer_atomic_add_f32 v18, v0, s[0:3], 0 offen
	buffer_atomic_add_f32 v22, v2, s[0:3], 0 offen
	buffer_atomic_add_f32 v26, v4, s[0:3], 0 offen
	buffer_atomic_add_f32 v30, v6, s[0:3], 0 offen
	buffer_atomic_add_f32 v1, v8, s[0:3], 0 offen
	v_add_lshl_u32 v0, v95, s18, 2
	v_add_lshl_u32 v1, v95, s17, 2
	v_add_lshl_u32 v2, v95, s16, 2
	v_add_lshl_u32 v4, v95, s15, 2
	v_add_lshl_u32 v6, v95, s14, 2
	s_clause 0x4
	buffer_atomic_add_f32 v5, v0, s[0:3], 0 offen
	buffer_atomic_add_f32 v9, v1, s[0:3], 0 offen
	buffer_atomic_add_f32 v13, v2, s[0:3], 0 offen
	buffer_atomic_add_f32 v17, v4, s[0:3], 0 offen
	buffer_atomic_add_f32 v21, v6, s[0:3], 0 offen
	v_add_lshl_u32 v0, v95, s13, 2
	v_add_lshl_u32 v1, v95, s12, 2
	v_add_lshl_u32 v2, v95, s9, 2
	v_add_lshl_u32 v4, v95, s8, 2
	v_add_lshl_u32 v5, v95, s7, 2
	s_clause 0x4
	buffer_atomic_add_f32 v25, v0, s[0:3], 0 offen
	buffer_atomic_add_f32 v29, v1, s[0:3], 0 offen
	buffer_atomic_add_f32 v3, v2, s[0:3], 0 offen
	buffer_atomic_add_f32 v7, v4, s[0:3], 0 offen
	buffer_atomic_add_f32 v11, v5, s[0:3], 0 offen
	v_add_lshl_u32 v0, v95, s6, 2
	v_add_lshl_u32 v1, v95, s5, 2
	.loc	1 418 23 is_stmt 0              ; generate_amdgcn.py:418:23
	s_mul_i32 s10, s35, 62
	.loc	1 418 9                         ; generate_amdgcn.py:418:9
	v_add_lshl_u32 v2, v95, s4, 2
	v_add_lshl_u32 v3, v95, s33, 2
	v_add_lshl_u32 v4, v95, s10, 2
	s_clause 0x4
	buffer_atomic_add_f32 v15, v0, s[0:3], 0 offen
	buffer_atomic_add_f32 v19, v1, s[0:3], 0 offen
	buffer_atomic_add_f32 v23, v2, s[0:3], 0 offen
	buffer_atomic_add_f32 v27, v3, s[0:3], 0 offen
	buffer_atomic_add_f32 v31, v4, s[0:3], 0 offen
	.loc	1 309 1 is_stmt 1               ; generate_amdgcn.py:309:1
	s_nop 0
	s_sendmsg sendmsg(MSG_DEALLOC_VGPRS)
	s_endpgm
.Ltmp20:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_int8xint8_nt_sc256_none_bm64_bn128_bk64_gm4_w8_s3_weu2_sk4_evenk
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
		.amdhsa_next_free_sgpr 46
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
	.size	amd_strix_halo_gfx1151_int8xint8_nt_sc256_none_bm64_bn128_bk64_gm4_w8_s3_weu2_sk4_evenk, .Lfunc_end0-amd_strix_halo_gfx1151_int8xint8_nt_sc256_none_bm64_bn128_bk64_gm4_w8_s3_weu2_sk4_evenk
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_int8xint8_nt_sc256_none_bm64_bn128_bk64_gm4_w8_s3_weu2_sk4_evenk.num_vgpr, 200
	.set amd_strix_halo_gfx1151_int8xint8_nt_sc256_none_bm64_bn128_bk64_gm4_w8_s3_weu2_sk4_evenk.num_agpr, 0
	.set amd_strix_halo_gfx1151_int8xint8_nt_sc256_none_bm64_bn128_bk64_gm4_w8_s3_weu2_sk4_evenk.numbered_sgpr, 46
	.set amd_strix_halo_gfx1151_int8xint8_nt_sc256_none_bm64_bn128_bk64_gm4_w8_s3_weu2_sk4_evenk.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_int8xint8_nt_sc256_none_bm64_bn128_bk64_gm4_w8_s3_weu2_sk4_evenk.private_seg_size, 0
	.set amd_strix_halo_gfx1151_int8xint8_nt_sc256_none_bm64_bn128_bk64_gm4_w8_s3_weu2_sk4_evenk.uses_vcc, 1
	.set amd_strix_halo_gfx1151_int8xint8_nt_sc256_none_bm64_bn128_bk64_gm4_w8_s3_weu2_sk4_evenk.uses_flat_scratch, 0
	.set amd_strix_halo_gfx1151_int8xint8_nt_sc256_none_bm64_bn128_bk64_gm4_w8_s3_weu2_sk4_evenk.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_int8xint8_nt_sc256_none_bm64_bn128_bk64_gm4_w8_s3_weu2_sk4_evenk.has_recursion, 0
	.set amd_strix_halo_gfx1151_int8xint8_nt_sc256_none_bm64_bn128_bk64_gm4_w8_s3_weu2_sk4_evenk.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 8012
; TotalNumSgprs: 48
; NumVgprs: 200
; ScratchSize: 0
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 30
; NumSGPRsForWavesPerEU: 48
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
	.asciz	"amd_strix_halo_gfx1151_int8xint8_nt_sc256_none_bm64_bn128_bk64_gm4_w8_s3_weu2_sk4_evenk"             ; string offset=75 ; amd_strix_halo_gfx1151_int8xint8_nt_sc256_none_bm64_bn128_bk64_gm4_w8_s3_weu2_sk4_evenk
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
    .name:           amd_strix_halo_gfx1151_int8xint8_nt_sc256_none_bm64_bn128_bk64_gm4_w8_s3_weu2_sk4_evenk
    .private_segment_fixed_size: 0
    .sgpr_count:     48
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_int8xint8_nt_sc256_none_bm64_bn128_bk64_gm4_w8_s3_weu2_sk4_evenk.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     200
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
