	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_int4xint4_nn_pc_none_bm32_bn128_bk32_gm4_w8_s2_weu2_sk8_maskk               ; -- Begin function amd_strix_halo_gfx1151_int4xint4_nn_pc_none_bm32_bn128_bk32_gm4_w8_s2_weu2_sk8_maskk
	.p2align	8
	.type	amd_strix_halo_gfx1151_int4xint4_nn_pc_none_bm32_bn128_bk32_gm4_w8_s2_weu2_sk8_maskk,@function
amd_strix_halo_gfx1151_int4xint4_nn_pc_none_bm32_bn128_bk32_gm4_w8_s2_weu2_sk8_maskk:                      ; @amd_strix_halo_gfx1151_int4xint4_nn_pc_none_bm32_bn128_bk32_gm4_w8_s2_weu2_sk8_maskk
.Lfunc_begin0:
	.file	1 "<repo>/scripts" "generate_amdgcn.py"
	.loc	1 79 0                          ; generate_amdgcn.py:79:0
	.cfi_sections .debug_frame
	.cfi_startproc
; %bb.0:
	s_clause 0x1
	s_load_b64 s[24:25], s[0:1], 0x30
	s_load_b32 s13, s[0:1], 0x38
.Ltmp0:
	.loc	1 89 16 prologue_end            ; generate_amdgcn.py:89:16
	s_abs_i32 s6, s2
	v_mov_b32_e32 v9, 0
	.loc	1 98 32                         ; generate_amdgcn.py:98:32
	v_and_b32_e32 v19, 15, v0
	.loc	1 100 14                        ; generate_amdgcn.py:100:14
	v_lshrrev_b32_e32 v30, 4, v0
	.loc	1 98 32                         ; generate_amdgcn.py:98:32
	v_lshrrev_b32_e32 v29, 3, v0
	s_delay_alu instid0(VALU_DEP_4)
	v_dual_mov_b32 v12, v9 :: v_dual_and_b32 v23, 7, v0
	v_mov_b32_e32 v10, v9
	.loc	1 99 32                         ; generate_amdgcn.py:99:32
	v_lshlrev_b32_e32 v18, 3, v19
	s_load_b64 s[26:27], s[0:1], 0x20
	v_lshrrev_b32_e32 v21, 1, v0
	v_bfe_i32 v22, v0, 3, 1
	v_mov_b32_e32 v11, v9
	s_delay_alu instid0(VALU_DEP_3)
	v_and_b32_e32 v21, 0x70, v21
.Ltmp1:
	.file	2 "<triton>/python/triton/language" "standard.py"
	.loc	2 43 13                         ; standard.py:43:13 @[ generate_amdgcn.py:87:17 ]
	s_waitcnt lgkmcnt(0)
	s_add_i32 s4, s25, 0x7f
.Ltmp2:
	.loc	2 43 13 is_stmt 0               ; standard.py:43:13 @[ generate_amdgcn.py:86:17 ]
	s_add_i32 s7, s24, 31
.Ltmp3:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:87:17 ]
	s_ashr_i32 s5, s4, 31
.Ltmp4:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:86:17 ]
	s_ashr_i32 s9, s7, 31
.Ltmp5:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:87:17 ]
	s_lshr_b32 s5, s5, 25
.Ltmp6:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:86:17 ]
	s_lshr_b32 s9, s9, 27
.Ltmp7:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:87:17 ]
	s_add_i32 s4, s4, s5
.Ltmp8:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:86:17 ]
	s_add_i32 s7, s7, s9
.Ltmp9:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:87:17 ]
	s_ashr_i32 s4, s4, 7
.Ltmp10:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:86:17 ]
	s_ashr_i32 s7, s7, 5
.Ltmp11:
	.loc	1 88 24 is_stmt 1               ; generate_amdgcn.py:88:24
	s_lshl_b32 s12, s4, 2
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	.loc	1 89 16                         ; generate_amdgcn.py:89:16
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
	.loc	1 90 19                         ; generate_amdgcn.py:90:19
	s_lshl_b32 s15, s14, 2
	.loc	1 92 29                         ; generate_amdgcn.py:92:29
	s_mul_i32 s14, s14, s12
	.loc	1 91 31                         ; generate_amdgcn.py:91:31
	s_sub_i32 s4, s7, s15
	.loc	1 92 29                         ; generate_amdgcn.py:92:29
	s_sub_i32 s2, s2, s14
	.loc	1 91 20                         ; generate_amdgcn.py:91:20
	s_min_i32 s16, s4, 4
	s_load_b256 s[4:11], s[0:1], 0x0
	.loc	1 93 13                         ; generate_amdgcn.py:93:13
	s_abs_i32 s17, s16
	s_abs_i32 s12, s2
	s_cvt_f32_u32 s18, s17
	s_delay_alu instid0(SALU_CYCLE_3) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_iflag_f32_e32 v1, s18
	v_readfirstlane_b32 s18, v1
	.loc	1 117 30                        ; generate_amdgcn.py:117:30
	v_mad_u64_u32 v[1:2], null, s25, v30, v[18:19]
	s_waitcnt lgkmcnt(0)
	s_mov_b64 s[20:21], s[6:7]
	.loc	1 93 13                         ; generate_amdgcn.py:93:13
	s_sub_i32 s6, 0, s17
	s_mul_f32 s18, s18, 0x4f7ffffe
	s_mov_b32 s7, 0x31027000
	s_mov_b64 s[0:1], s[10:11]
	.loc	1 117 22                        ; generate_amdgcn.py:117:22
	s_mov_b32 s23, s7
	.loc	1 93 13                         ; generate_amdgcn.py:93:13
	s_cvt_u32_f32 s18, s18
	s_delay_alu instid0(SALU_CYCLE_3) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_mul_i32 s6, s6, s18
	s_mul_hi_u32 s6, s18, s6
	s_delay_alu instid0(SALU_CYCLE_1)
	s_add_i32 s18, s18, s6
	s_xor_b32 s6, s2, s16
	s_mul_hi_u32 s14, s12, s18
	s_ashr_i32 s29, s6, 31
	s_mul_i32 s18, s14, s17
	s_mov_b32 s6, 0x7ffffffe
	s_sub_i32 s12, s12, s18
	s_add_i32 s18, s14, 1
	s_sub_i32 s19, s12, s17
	s_cmp_ge_u32 s12, s17
	.loc	1 117 22                        ; generate_amdgcn.py:117:22
	s_mov_b32 s22, s6
	.loc	1 93 13                         ; generate_amdgcn.py:93:13
	s_cselect_b32 s14, s18, s14
	s_cselect_b32 s12, s19, s12
	s_add_i32 s18, s14, 1
	s_cmp_ge_u32 s12, s17
	s_cselect_b32 s12, s18, s14
	.loc	1 95 22                         ; generate_amdgcn.py:95:22
	s_lshr_b32 s14, s13, 31
	.loc	1 93 13                         ; generate_amdgcn.py:93:13
	s_xor_b32 s30, s12, s29
	.loc	1 95 22                         ; generate_amdgcn.py:95:22
	s_add_i32 s12, s13, s14
	.loc	1 93 13                         ; generate_amdgcn.py:93:13
	s_sub_i32 s14, s30, s29
	.loc	1 107 23                        ; generate_amdgcn.py:107:23
	s_lshl_b32 s33, s3, 4
	.loc	1 95 22                         ; generate_amdgcn.py:95:22
	s_ashr_i32 s31, s12, 1
	.loc	1 92 28                         ; generate_amdgcn.py:92:28
	s_mul_i32 s12, s14, s16
	.loc	1 117 30                        ; generate_amdgcn.py:117:30
	s_mul_i32 s3, s25, s33
	.loc	1 99 14                         ; generate_amdgcn.py:99:14
	s_lshl_b32 s28, s14, 7
	.loc	1 113 30                        ; generate_amdgcn.py:113:30
	v_mul_lo_u32 v2, s31, v29
	.loc	1 92 28                         ; generate_amdgcn.py:92:28
	s_sub_i32 s2, s2, s12
	.loc	1 117 30                        ; generate_amdgcn.py:117:30
	v_add3_u32 v28, s3, s28, v1
	.loc	1 100 14                        ; generate_amdgcn.py:100:14
	v_lshlrev_b32_e32 v17, 1, v23
	.loc	1 92 13                         ; generate_amdgcn.py:92:13
	s_add_i32 s2, s2, s15
	.loc	1 107 18                        ; generate_amdgcn.py:107:18
	v_or_b32_e32 v4, s33, v30
	.loc	1 98 14                         ; generate_amdgcn.py:98:14
	s_lshl_b32 s24, s2, 5
	.loc	1 105 9                         ; generate_amdgcn.py:105:9
	s_cmp_gt_i32 s13, 1
	.loc	1 107 18                        ; generate_amdgcn.py:107:18
	v_or_b32_e32 v3, s33, v17
	.loc	1 113 30                        ; generate_amdgcn.py:113:30
	s_mul_i32 s2, s24, s31
	.loc	1 105 9                         ; generate_amdgcn.py:105:9
	s_cselect_b32 s3, -1, 0
	.loc	1 113 30                        ; generate_amdgcn.py:113:30
	v_add3_u32 v27, v2, v17, s2
	.loc	1 109 23                        ; generate_amdgcn.py:109:23
	v_cmp_gt_i32_e64 s2, s31, v4
	.loc	1 108 23                        ; generate_amdgcn.py:108:23
	v_cmp_gt_i32_e32 vcc_lo, s31, v3
	.loc	1 113 22                        ; generate_amdgcn.py:113:22
	s_and_b32 s5, s5, 0xffff
	.loc	1 117 22                        ; generate_amdgcn.py:117:22
	s_and_b32 s21, s21, 0xffff
	.loc	1 113 30                        ; generate_amdgcn.py:113:30
	v_add_nc_u32_e32 v2, s33, v27
	.loc	1 113 22 is_stmt 0              ; generate_amdgcn.py:113:22
	v_bfe_i32 v3, v0, 6, 1
	.loc	1 105 9 is_stmt 1               ; generate_amdgcn.py:105:9
	s_and_b32 vcc_lo, s3, vcc_lo
	v_lshlrev_b32_e32 v23, 4, v23
	s_mov_b32 s12, 0
	.loc	1 113 22                        ; generate_amdgcn.py:113:22
	v_cndmask_b32_e32 v1, 0x80000000, v2, vcc_lo
	.loc	1 105 9                         ; generate_amdgcn.py:105:9
	s_and_b32 vcc_lo, s3, s2
	.loc	1 113 22                        ; generate_amdgcn.py:113:22
	v_and_b32_e32 v7, 0x88, v3
	.loc	1 117 22                        ; generate_amdgcn.py:117:22
	v_cndmask_b32_e32 v2, 0x80000000, v28, vcc_lo
	.loc	1 113 22                        ; generate_amdgcn.py:113:22
	buffer_load_u16 v26, v1, s[4:7], 0 offen
	.loc	1 117 22                        ; generate_amdgcn.py:117:22
	buffer_load_b64 v[31:32], v2, s[20:23], 0 offen
	.loc	1 113 22                        ; generate_amdgcn.py:113:22
	v_lshlrev_b32_e32 v2, 1, v0
	v_mov_b32_e32 v14, v9
	v_dual_mov_b32 v15, v9 :: v_dual_lshlrev_b32 v20, 3, v0
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_dual_mov_b32 v13, v9 :: v_dual_and_b32 v6, 0x17e, v2
	v_mov_b32_e32 v16, v9
	v_dual_mov_b32 v2, v9 :: v_dual_add_nc_u32 v25, 0, v20
	v_mov_b32_e32 v3, v9
	s_delay_alu instid0(VALU_DEP_4)
	v_xor_b32_e32 v24, v7, v6
	v_mov_b32_e32 v1, v9
	v_mov_b32_e32 v4, v9
	v_mov_b32_e32 v5, v9
	v_mov_b32_e32 v6, v9
	v_mov_b32_e32 v7, v9
	v_mov_b32_e32 v8, v9
	v_add_nc_u32_e32 v24, 0, v24
	.loc	1 105 9                         ; generate_amdgcn.py:105:9
	s_cmpk_lt_i32 s13, 0x102
	.loc	1 113 22                        ; generate_amdgcn.py:113:22
	s_waitcnt vmcnt(1)
	ds_store_b16 v24, v26 offset:2048
	.loc	1 117 22                        ; generate_amdgcn.py:117:22
	s_waitcnt vmcnt(0)
	ds_store_b64 v25, v[31:32]
	.loc	1 105 9                         ; generate_amdgcn.py:105:9
	s_cbranch_scc1 .LBB0_4
; %bb.1:                                ; %.lr.ph
	v_sub_nc_u32_e32 v26, s31, v17
	.loc	1 107 18                        ; generate_amdgcn.py:107:18
	s_add_i32 s10, s33, 0x80
	.loc	1 118 23                        ; generate_amdgcn.py:118:23
	s_mov_b32 s13, s12
	s_mov_b32 s14, s12
	s_mov_b32 s15, s12
	.loc	1 108 23                        ; generate_amdgcn.py:108:23
	v_cmp_lt_i32_e32 vcc_lo, s10, v26
	.loc	1 118 23                        ; generate_amdgcn.py:118:23
	s_mov_b32 s16, s12
	s_mov_b32 s17, s12
	s_mov_b32 s18, s12
	s_mov_b32 s19, s12
	.loc	1 113 30                        ; generate_amdgcn.py:113:30
	v_add_nc_u32_e32 v1, s10, v27
	.loc	1 105 9                         ; generate_amdgcn.py:105:9
	v_sub_nc_u32_e32 v27, s31, v30
	.loc	1 117 30                        ; generate_amdgcn.py:117:30
	s_lshl_b32 s2, s25, 7
	.loc	1 117 22 is_stmt 0              ; generate_amdgcn.py:117:22
	s_mov_b32 s22, s6
	.loc	1 117 30                        ; generate_amdgcn.py:117:30
	v_add_nc_u32_e32 v2, s2, v28
	.loc	1 113 22 is_stmt 1              ; generate_amdgcn.py:113:22
	v_cndmask_b32_e32 v1, 0x80000000, v1, vcc_lo
	.loc	1 109 23                        ; generate_amdgcn.py:109:23
	v_cmp_lt_i32_e32 vcc_lo, s10, v27
	.loc	1 117 22                        ; generate_amdgcn.py:117:22
	s_mov_b32 s23, s7
.Ltmp12:
	.loc	2 43 13                         ; standard.py:43:13 @[ generate_amdgcn.py:105:32 ]
	s_add_i32 s10, s31, 0x7f
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	2 43 12 is_stmt 0               ; standard.py:43:12 @[ generate_amdgcn.py:105:32 ]
	s_lshr_b32 s10, s10, 7
.Ltmp13:
	.loc	1 117 22 is_stmt 1              ; generate_amdgcn.py:117:22
	v_cndmask_b32_e32 v2, 0x80000000, v2, vcc_lo
	.loc	1 113 22                        ; generate_amdgcn.py:113:22
	buffer_load_u16 v47, v1, s[4:7], 0 offen
	s_waitcnt lgkmcnt(0)
	s_barrier
	v_add_nc_u32_e32 v1, 0, v21
	.loc	1 117 22                        ; generate_amdgcn.py:117:22
	buffer_load_b64 v[41:42], v2, s[20:23], 0 offen
	v_and_or_b32 v2, 0x88, v22, v23
	.loc	1 105 9                         ; generate_amdgcn.py:105:9
	s_max_u32 s11, s10, 2
	v_add_nc_u32_e32 v28, v1, v19
	s_cmp_eq_u32 s11, 2
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_xor_b32_e32 v1, 8, v2
	.loc	1 113 22                        ; generate_amdgcn.py:113:22
	v_add_nc_u32_e32 v2, 0, v2
	v_add_nc_u32_e32 v1, 0, v1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_add_nc_u32_e32 v31, 0x800, v2
	v_add_nc_u32_e32 v32, 0x800, v1
	.loc	1 118 23                        ; generate_amdgcn.py:118:23
	v_mov_b32_e32 v1, s12
	ds_load_u8 v9, v28 offset:640
	ds_load_u8 v10, v28 offset:896
	ds_load_u8 v11, v28 offset:768
	ds_load_u8 v12, v28 offset:512
	ds_load_u8 v13, v28 offset:128
	ds_load_u8 v14, v28 offset:384
	ds_load_u8 v15, v28 offset:256
	ds_load_u8 v16, v28
	ds_load_u8 v43, v28 offset:1664
	ds_load_u8 v44, v28 offset:1920
	ds_load_u8 v45, v28 offset:1792
	ds_load_u8 v46, v28 offset:1536
	ds_load_u8 v48, v28 offset:1152
	ds_load_u8 v49, v28 offset:1408
	ds_load_u8 v50, v28 offset:1280
	ds_load_u8 v51, v28 offset:1024
	v_mov_b32_e32 v6, s17
	.loc	1 113 22                        ; generate_amdgcn.py:113:22
	ds_load_2addr_b64 v[33:36], v31 offset1:32
	.loc	1 118 23                        ; generate_amdgcn.py:118:23
	v_mov_b32_e32 v7, s18
	.loc	1 113 22                        ; generate_amdgcn.py:113:22
	ds_load_2addr_b64 v[37:40], v32 offset1:32
	.loc	1 118 23                        ; generate_amdgcn.py:118:23
	v_dual_mov_b32 v2, s13 :: v_dual_mov_b32 v3, s14
	s_waitcnt lgkmcnt(15)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	s_waitcnt lgkmcnt(14)
	v_perm_b32 v9, v12, v9, 0xc0c0004
	v_dual_mov_b32 v4, s15 :: v_dual_mov_b32 v5, s16
	s_waitcnt lgkmcnt(11)
	v_perm_b32 v12, v15, v14, 0xc0c0004
	s_waitcnt lgkmcnt(10)
	v_perm_b32 v11, v16, v13, 0xc0c0004
	v_mov_b32_e32 v8, s19
	.loc	1 113 22                        ; generate_amdgcn.py:113:22
	s_waitcnt lgkmcnt(0)
	.loc	1 118 23                        ; generate_amdgcn.py:118:23
	v_perm_b32 v14, v45, v44, 0xc0c0004
	v_perm_b32 v13, v46, v43, 0xc0c0004
	v_lshl_or_b32 v44, v10, 16, v9
	v_lshl_or_b32 v43, v12, 16, v11
	v_perm_b32 v16, v50, v49, 0xc0c0004
	v_perm_b32 v15, v51, v48, 0xc0c0004
	v_lshl_or_b32 v46, v14, 16, v13
	.loc	1 113 22                        ; generate_amdgcn.py:113:22
	s_barrier
	s_waitcnt vmcnt(1)
	ds_store_b16 v24, v47 offset:2048
	.loc	1 117 22                        ; generate_amdgcn.py:117:22
	s_waitcnt vmcnt(0)
	ds_store_b64 v25, v[41:42]
	.loc	1 118 23                        ; generate_amdgcn.py:118:23
	v_lshl_or_b32 v45, v16, 16, v15
	v_wmma_i32_16x16x16_iu4 v[9:16], v[43:44], v[33:34], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[1:8], v[43:44], v[35:36], v[1:8] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_wmma_i32_16x16x16_iu4 v[9:16], v[45:46], v[37:38], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[1:8], v[45:46], v[39:40], v[1:8] neg_lo:[1,1,0]
	.loc	1 105 9                         ; generate_amdgcn.py:105:9
	s_cbranch_scc1 .LBB0_4
; %bb.2:                                ; %.peel.next
	s_add_i32 s10, s33, 0x100
	v_add_nc_u32_e32 v29, s24, v29
	v_add_nc_u32_e32 v30, s10, v30
	s_lshl_b32 s12, s30, 7
	s_add_i32 s11, s11, -2
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_lo_u32 v30, s25, v30
	v_add3_u32 v30, v30, s12, v18
	v_mad_u64_u32 v[17:18], null, s31, v29, v[17:18]
	s_lshl_b32 s12, s29, 7
	s_delay_alu instid0(SALU_CYCLE_1)
	v_subrev_nc_u32_e32 v18, s12, v30
.LBB0_3:                                ; =>This Inner Loop Header: Depth=1
	.loc	1 109 23                        ; generate_amdgcn.py:109:23
	v_cmp_lt_i32_e32 vcc_lo, s10, v27
	.loc	1 113 22                        ; generate_amdgcn.py:113:22
	v_add_nc_u32_e32 v29, s10, v17
	.loc	1 105 9                         ; generate_amdgcn.py:105:9
	s_add_i32 s11, s11, -1
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 117 22                        ; generate_amdgcn.py:117:22
	v_cndmask_b32_e32 v30, 0x80000000, v18, vcc_lo
	.loc	1 108 23                        ; generate_amdgcn.py:108:23
	v_cmp_lt_i32_e32 vcc_lo, s10, v26
	.loc	1 105 9                         ; generate_amdgcn.py:105:9
	v_add_nc_u32_e32 v18, s2, v18
	s_addk_i32 s10, 0x80
	s_cmp_lg_u32 s11, 0
	.loc	1 113 22                        ; generate_amdgcn.py:113:22
	v_cndmask_b32_e32 v29, 0x80000000, v29, vcc_lo
	buffer_load_u16 v45, v29, s[4:7], 0 offen
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 117 22                        ; generate_amdgcn.py:117:22
	buffer_load_b64 v[29:30], v30, s[20:23], 0 offen
	.loc	1 118 23                        ; generate_amdgcn.py:118:23
	ds_load_u8 v41, v28 offset:640
	ds_load_u8 v42, v28 offset:896
	ds_load_u8 v43, v28 offset:768
	ds_load_u8 v44, v28 offset:512
	ds_load_u8 v46, v28 offset:128
	ds_load_u8 v47, v28 offset:384
	ds_load_u8 v48, v28 offset:256
	ds_load_u8 v49, v28
	ds_load_u8 v50, v28 offset:1664
	ds_load_u8 v51, v28 offset:1920
	ds_load_u8 v52, v28 offset:1792
	ds_load_u8 v53, v28 offset:1536
	ds_load_u8 v54, v28 offset:1152
	ds_load_u8 v55, v28 offset:1280
	ds_load_u8 v56, v28 offset:1024
	ds_load_u8 v57, v28 offset:1408
	.loc	1 113 22                        ; generate_amdgcn.py:113:22
	ds_load_2addr_b64 v[33:36], v31 offset1:32
	ds_load_2addr_b64 v[37:40], v32 offset1:32
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_waitcnt vmcnt(1)
	ds_store_b16 v24, v45 offset:2048
	.loc	1 117 22                        ; generate_amdgcn.py:117:22
	s_waitcnt vmcnt(0)
	ds_store_b64 v25, v[29:30]
	.loc	1 118 23                        ; generate_amdgcn.py:118:23
	v_perm_b32 v41, v44, v41, 0xc0c0004
	v_perm_b32 v42, v43, v42, 0xc0c0004
	v_perm_b32 v43, v49, v46, 0xc0c0004
	v_perm_b32 v44, v48, v47, 0xc0c0004
	v_perm_b32 v46, v53, v50, 0xc0c0004
	v_perm_b32 v47, v52, v51, 0xc0c0004
	v_perm_b32 v48, v56, v54, 0xc0c0004
	v_perm_b32 v49, v55, v57, 0xc0c0004
	v_lshl_or_b32 v42, v42, 16, v41
	v_lshl_or_b32 v41, v44, 16, v43
	v_lshl_or_b32 v44, v47, 16, v46
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_lshl_or_b32 v43, v49, 16, v48
	v_wmma_i32_16x16x16_iu4 v[9:16], v[41:42], v[33:34], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[1:8], v[41:42], v[35:36], v[1:8] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_wmma_i32_16x16x16_iu4 v[9:16], v[43:44], v[37:38], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[1:8], v[43:44], v[39:40], v[1:8] neg_lo:[1,1,0]
	.loc	1 105 9                         ; generate_amdgcn.py:105:9
	s_cbranch_scc1 .LBB0_3
.LBB0_4:                                ; %._crit_edge
	.loc	1 118 23                        ; generate_amdgcn.py:118:23
	s_and_not1_b32 vcc_lo, exec_lo, s3
	.loc	1 113 22                        ; generate_amdgcn.py:113:22
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 118 23                        ; generate_amdgcn.py:118:23
	s_cbranch_vccnz .LBB0_6
; %bb.5:
	.loc	1 117 22                        ; generate_amdgcn.py:117:22
	v_add3_u32 v18, 0, v21, v19
	.loc	1 113 22                        ; generate_amdgcn.py:113:22
	v_and_or_b32 v17, 0x88, v22, v23
	.loc	1 118 23                        ; generate_amdgcn.py:118:23
	ds_load_u8 v30, v18 offset:640
	ds_load_u8 v31, v18 offset:896
	ds_load_u8 v32, v18 offset:768
	ds_load_u8 v33, v18 offset:512
	ds_load_u8 v34, v18 offset:128
	ds_load_u8 v35, v18 offset:384
	ds_load_u8 v36, v18 offset:256
	ds_load_u8 v37, v18
	.loc	1 113 22                        ; generate_amdgcn.py:113:22
	v_xad_u32 v22, v17, 8, 0
	v_add_nc_u32_e32 v17, 0, v17
	.loc	1 118 23                        ; generate_amdgcn.py:118:23
	ds_load_u8 v38, v18 offset:1664
	ds_load_u8 v39, v18 offset:1792
	ds_load_u8 v40, v18 offset:1536
	ds_load_u8 v41, v18 offset:1920
	ds_load_u8 v42, v18 offset:1152
	ds_load_u8 v43, v18 offset:1280
	ds_load_u8 v44, v18 offset:1024
	ds_load_u8 v45, v18 offset:1408
	.loc	1 113 22                        ; generate_amdgcn.py:113:22
	v_add_nc_u32_e32 v18, 0x800, v22
	v_add_nc_u32_e32 v17, 0x800, v17
	ds_load_2addr_b64 v[22:25], v17 offset1:32
	ds_load_2addr_b64 v[26:29], v18 offset1:32
	.loc	1 118 23                        ; generate_amdgcn.py:118:23
	s_waitcnt lgkmcnt(15)
	v_perm_b32 v18, v32, v31, 0xc0c0004
	s_waitcnt lgkmcnt(14)
	v_perm_b32 v17, v33, v30, 0xc0c0004
	s_waitcnt lgkmcnt(7)
	v_perm_b32 v32, v40, v38, 0xc0c0004
	v_perm_b32 v31, v36, v35, 0xc0c0004
	v_perm_b32 v30, v37, v34, 0xc0c0004
	v_lshl_or_b32 v18, v18, 16, v17
	s_waitcnt lgkmcnt(3)
	v_perm_b32 v33, v44, v42, 0xc0c0004
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v34, v43, v45, 0xc0c0004
	v_lshl_or_b32 v17, v31, 16, v30
	v_perm_b32 v30, v39, v41, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_lshl_or_b32 v31, v30, 16, v32
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu4 v[9:16], v[17:18], v[22:23], v[9:16] neg_lo:[1,1,0]
	v_lshl_or_b32 v30, v34, 16, v33
	v_wmma_i32_16x16x16_iu4 v[1:8], v[17:18], v[24:25], v[1:8] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_wmma_i32_16x16x16_iu4 v[9:16], v[30:31], v[26:27], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[1:8], v[30:31], v[28:29], v[1:8] neg_lo:[1,1,0]
.LBB0_6:                                ; %._crit_edge._crit_edge
	.loc	1 99 32                         ; generate_amdgcn.py:99:32
	v_bfe_u32 v18, v0, 4, 1
	.loc	1 128 22                        ; generate_amdgcn.py:128:22
	v_or_b32_e32 v17, s24, v19
	.loc	1 128 14 is_stmt 0              ; generate_amdgcn.py:128:14
	s_and_b32 s9, s9, 0xffff
	s_mov_b32 s11, 0x31027000
	s_mov_b32 s10, 0x7ffffffe
	.loc	1 129 22 is_stmt 1              ; generate_amdgcn.py:129:22
	v_or3_b32 v18, v18, v21, s28
	.loc	1 128 22                        ; generate_amdgcn.py:128:22
	v_lshlrev_b32_e32 v17, 1, v17
	.loc	1 129 14                        ; generate_amdgcn.py:129:14
	s_and_b32 s1, s1, 0xffff
	s_mov_b32 s2, s10
	s_mov_b32 s3, s11
	.loc	1 129 22 is_stmt 0              ; generate_amdgcn.py:129:22
	v_lshlrev_b32_e32 v18, 1, v18
	.loc	1 128 14 is_stmt 1              ; generate_amdgcn.py:128:14
	v_or_b32_e32 v19, 32, v17
	.loc	1 130 9                         ; generate_amdgcn.py:130:9
	v_lshlrev_b32_e32 v30, 2, v0
	.loc	1 127 15                        ; generate_amdgcn.py:127:15
	v_cvt_f32_i32_e32 v31, v1
	.loc	1 128 14                        ; generate_amdgcn.py:128:14
	s_clause 0x1
	buffer_load_u16 v17, v17, s[8:11], 0 offen
	buffer_load_u16 v21, v19, s[8:11], 0 offen
	.loc	1 129 14                        ; generate_amdgcn.py:129:14
	v_or_b32_e32 v19, 4, v18
	v_or_b32_e32 v22, 8, v18
	v_or_b32_e32 v23, 12, v18
	v_or_b32_e32 v24, 16, v18
	v_or_b32_e32 v25, 20, v18
	v_or_b32_e32 v26, 24, v18
	v_or_b32_e32 v27, 28, v18
	s_clause 0x7
	buffer_load_u16 v28, v18, s[0:3], 0 offen
	buffer_load_u16 v29, v19, s[0:3], 0 offen
	buffer_load_u16 v22, v22, s[0:3], 0 offen
	buffer_load_u16 v23, v23, s[0:3], 0 offen
	buffer_load_u16 v24, v24, s[0:3], 0 offen
	buffer_load_u16 v25, v25, s[0:3], 0 offen
	buffer_load_u16 v26, v26, s[0:3], 0 offen
	buffer_load_u16 v27, v27, s[0:3], 0 offen
	.loc	1 98 32                         ; generate_amdgcn.py:98:32
	v_lshrrev_b32_e32 v19, 7, v0
	.loc	1 130 9                         ; generate_amdgcn.py:130:9
	v_bfe_i32 v1, v0, 0, 1
	.loc	1 127 15                        ; generate_amdgcn.py:127:15
	v_cvt_f32_i32_e32 v33, v3
	v_cvt_f32_i32_e32 v32, v2
	v_cvt_f32_i32_e32 v35, v5
	.loc	1 192 23                        ; generate_amdgcn.py:192:23
	v_mul_lo_u32 v3, s25, v19
	.loc	1 127 15                        ; generate_amdgcn.py:127:15
	v_cvt_f32_i32_e32 v36, v6
	v_cvt_f32_i32_e32 v37, v7
	v_cvt_f32_i32_e32 v38, v8
	.loc	1 192 23                        ; generate_amdgcn.py:192:23
	s_mul_i32 s0, s24, s25
	.loc	1 127 15                        ; generate_amdgcn.py:127:15
	v_cvt_f32_i32_e32 v9, v9
	.loc	1 192 23                        ; generate_amdgcn.py:192:23
	s_add_i32 s0, s0, s28
	.loc	1 127 15                        ; generate_amdgcn.py:127:15
	v_cvt_f32_i32_e32 v10, v10
	v_cvt_f32_i32_e32 v11, v11
	v_cvt_f32_i32_e32 v12, v12
	v_cvt_f32_i32_e32 v13, v13
	v_cvt_f32_i32_e32 v14, v14
	v_cvt_f32_i32_e32 v15, v15
	v_cvt_f32_i32_e32 v16, v16
	.loc	1 130 9                         ; generate_amdgcn.py:130:9
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 129 14                        ; generate_amdgcn.py:129:14
	s_waitcnt vmcnt(4)
	v_lshlrev_b32_e32 v7, 16, v23
	.loc	1 130 9                         ; generate_amdgcn.py:130:9
	v_and_b32_e32 v1, 0x440, v1
	.loc	1 129 14                        ; generate_amdgcn.py:129:14
	s_waitcnt vmcnt(3)
	v_lshlrev_b32_e32 v8, 16, v24
	v_lshlrev_b32_e32 v6, 16, v22
	.loc	1 99 32                         ; generate_amdgcn.py:99:32
	v_and_b32_e32 v18, 0x7f, v0
	.loc	1 129 14                        ; generate_amdgcn.py:129:14
	v_lshlrev_b32_e32 v5, 16, v29
	.loc	1 130 9                         ; generate_amdgcn.py:130:9
	v_and_b32_e32 v2, 0x3f8, v30
	.loc	1 129 14                        ; generate_amdgcn.py:129:14
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v22, 16, v27
	.loc	1 130 9                         ; generate_amdgcn.py:130:9
	v_and_b32_e32 v34, 14, v0
	.loc	1 127 15                        ; generate_amdgcn.py:127:15
	v_cvt_f32_i32_e32 v30, v4
	.loc	1 130 9                         ; generate_amdgcn.py:130:9
	v_xor_b32_e32 v2, v1, v2
	.loc	1 192 23                        ; generate_amdgcn.py:192:23
	v_add3_u32 v1, s0, v18, v3
	s_mov_b32 s0, 0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 130 9                         ; generate_amdgcn.py:130:9
	v_lshl_or_b32 v4, v34, 10, v2
	.loc	1 192 9                         ; generate_amdgcn.py:192:9
	v_ashrrev_i32_e32 v2, 31, v1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 130 9                         ; generate_amdgcn.py:130:9
	v_xad_u32 v40, v4, 8, 0
	.loc	1 192 9                         ; generate_amdgcn.py:192:9
	v_lshlrev_b64 v[2:3], 2, v[1:2]
	.loc	1 130 9                         ; generate_amdgcn.py:130:9
	v_xad_u32 v41, v4, 16, 0
	v_xad_u32 v42, v4, 24, 0
	v_xad_u32 v43, v4, 32, 0
	v_xad_u32 v44, v4, 40, 0
	v_xad_u32 v45, v4, 48, 0
	.loc	1 192 9                         ; generate_amdgcn.py:192:9
	v_add_co_u32 v18, vcc_lo, s26, v2
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_4)
	v_add_co_ci_u32_e64 v19, null, s27, v3, vcc_lo
	.loc	1 128 14                        ; generate_amdgcn.py:128:14
	v_lshlrev_b32_e32 v3, 16, v21
	v_lshlrev_b32_e32 v2, 16, v17
	.loc	1 129 14                        ; generate_amdgcn.py:129:14
	v_lshlrev_b32_e32 v21, 16, v26
	.loc	1 130 9                         ; generate_amdgcn.py:130:9
	v_xad_u32 v46, v4, 56, 0
	.loc	1 130 16 is_stmt 0              ; generate_amdgcn.py:130:16
	v_mul_f32_e32 v49, v3, v7
	s_delay_alu instid0(VALU_DEP_3)
	v_mul_f32_e32 v29, v2, v21
	v_mul_f32_e32 v21, v3, v21
	v_dual_mul_f32 v50, v3, v8 :: v_dual_lshlrev_b32 v17, 16, v25
	v_dual_mul_f32 v27, v2, v8 :: v_dual_mul_f32 v48, v3, v6
	v_dual_mul_f32 v24, v2, v5 :: v_dual_add_nc_u32 v39, 0, v4
	.loc	1 129 14 is_stmt 1              ; generate_amdgcn.py:129:14
	v_lshlrev_b32_e32 v4, 16, v28
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 130 16                        ; generate_amdgcn.py:130:16
	v_mul_f32_e32 v28, v2, v17
	v_mul_f32_e32 v5, v3, v5
	v_mul_f32_e32 v17, v3, v17
	v_mul_f32_e32 v25, v2, v6
	v_mul_f32_e32 v23, v2, v4
	v_mul_f32_e32 v4, v3, v4
	v_dual_mul_f32 v26, v2, v7 :: v_dual_mul_f32 v5, v5, v32
	v_mul_f32_e32 v47, v2, v22
	s_delay_alu instid0(VALU_DEP_3)
	v_dual_mul_f32 v22, v3, v22 :: v_dual_mul_f32 v3, v4, v31
	.loc	1 130 9 is_stmt 0               ; generate_amdgcn.py:130:9
	v_mul_f32_e32 v2, v23, v9
	v_mul_f32_e32 v4, v24, v10
	v_dual_mul_f32 v6, v25, v11 :: v_dual_mul_f32 v7, v48, v33
	v_dual_mul_f32 v8, v26, v12 :: v_dual_mul_f32 v9, v49, v30
	v_dual_mul_f32 v10, v27, v13 :: v_dual_mul_f32 v11, v50, v35
	v_dual_mul_f32 v12, v28, v14 :: v_dual_mul_f32 v13, v17, v36
	v_dual_mul_f32 v14, v29, v15 :: v_dual_mul_f32 v17, v22, v38
	v_dual_mul_f32 v16, v47, v16 :: v_dual_mul_f32 v15, v21, v37
	ds_store_b64 v39, v[2:3]
	ds_store_b64 v40, v[4:5]
	ds_store_b64 v41, v[6:7]
	ds_store_b64 v42, v[8:9]
	ds_store_b64 v43, v[10:11]
	ds_store_b64 v44, v[12:13]
	ds_store_b64 v45, v[14:15]
	ds_store_b64 v46, v[16:17]
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 192 9 is_stmt 1               ; generate_amdgcn.py:192:9
	global_load_b32 v21, v[18:19], off
	.loc	1 130 9                         ; generate_amdgcn.py:130:9
	v_and_b32_e32 v2, 1, v0
	.loc	1 98 32                         ; generate_amdgcn.py:98:32
	v_bfe_i32 v0, v0, 7, 1
	.loc	1 130 9                         ; generate_amdgcn.py:130:9
	v_and_b32_e32 v3, 0x380, v20
	v_lshlrev_b32_e32 v4, 2, v34
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_lshlrev_b32_e32 v2, 6, v2
	v_and_b32_e32 v0, 0x440, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_xor_b32_e32 v0, v0, v2
	v_or3_b32 v0, v3, v4, v0
	s_delay_alu instid0(VALU_DEP_1)
	v_add_nc_u32_e32 v2, 0, v0
	v_xad_u32 v3, 0x808, v0, 0
	v_xad_u32 v4, 0x1010, v0, 0
	v_xad_u32 v5, 0x1818, v0, 0
	v_xad_u32 v6, 0x2020, v0, 0
	v_xad_u32 v7, 0x2828, v0, 0
	v_xad_u32 v20, 0x3030, v0, 0
	v_xad_u32 v0, 0x3838, v0, 0
	ds_load_b64 v[16:17], v2
	ds_load_b64 v[14:15], v3
	ds_load_b64 v[12:13], v4
	ds_load_b64 v[10:11], v5
	ds_load_b64 v[8:9], v6
	ds_load_b64 v[6:7], v7
	ds_load_b64 v[4:5], v20
	ds_load_b64 v[2:3], v0
.LBB0_7:                                ; %atomicrmw.start86
                                        ; =>This Inner Loop Header: Depth=1
	.loc	1 192 9                         ; generate_amdgcn.py:192:9
	s_waitcnt vmcnt(0) lgkmcnt(7)
	v_add_f32_e32 v20, v21, v16
	global_atomic_cmpswap_b32 v0, v[18:19], v[20:21], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v0, v21
	v_mov_b32_e32 v21, v0
	s_or_b32 s0, vcc_lo, s0
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s0
	s_cbranch_execnz .LBB0_7
; %bb.8:                                ; %atomicrmw.end85
	.loc	1 0 9 is_stmt 0                 ; generate_amdgcn.py:0:9
	s_or_b32 exec_lo, exec_lo, s0
	.loc	1 192 23                        ; generate_amdgcn.py:192:23
	v_lshl_add_u32 v18, s25, 1, v1
	s_mov_b32 s0, 0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 192 9                         ; generate_amdgcn.py:192:9
	v_ashrrev_i32_e32 v19, 31, v18
	v_lshlrev_b64 v[18:19], 2, v[18:19]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add_co_u32 v18, vcc_lo, s26, v18
	v_add_co_ci_u32_e64 v19, null, s27, v19, vcc_lo
	global_load_b32 v21, v[18:19], off
.LBB0_9:                                ; %atomicrmw.start80
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0) lgkmcnt(6)
	v_add_f32_e32 v20, v21, v14
	global_atomic_cmpswap_b32 v0, v[18:19], v[20:21], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v0, v21
	v_mov_b32_e32 v21, v0
	s_or_b32 s0, vcc_lo, s0
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s0
	s_cbranch_execnz .LBB0_9
; %bb.10:                               ; %atomicrmw.end79
	.loc	1 0 9                           ; generate_amdgcn.py:0:9
	s_or_b32 exec_lo, exec_lo, s0
	.loc	1 192 23                        ; generate_amdgcn.py:192:23
	v_lshl_add_u32 v18, s25, 2, v1
	s_mov_b32 s0, 0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 192 9                         ; generate_amdgcn.py:192:9
	v_ashrrev_i32_e32 v19, 31, v18
	v_lshlrev_b64 v[18:19], 2, v[18:19]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add_co_u32 v18, vcc_lo, s26, v18
	v_add_co_ci_u32_e64 v19, null, s27, v19, vcc_lo
	global_load_b32 v21, v[18:19], off
.LBB0_11:                               ; %atomicrmw.start74
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0) lgkmcnt(5)
	v_add_f32_e32 v20, v21, v12
	global_atomic_cmpswap_b32 v0, v[18:19], v[20:21], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v0, v21
	v_mov_b32_e32 v21, v0
	s_or_b32 s0, vcc_lo, s0
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s0
	s_cbranch_execnz .LBB0_11
; %bb.12:                               ; %atomicrmw.end73
	.loc	1 0 9                           ; generate_amdgcn.py:0:9
	s_or_b32 exec_lo, exec_lo, s0
	.loc	1 192 23                        ; generate_amdgcn.py:192:23
	s_waitcnt lgkmcnt(0)
	v_mad_u64_u32 v[18:19], null, s25, 6, v[1:2]
	s_mov_b32 s0, 0
	.loc	1 192 9                         ; generate_amdgcn.py:192:9
	v_ashrrev_i32_e32 v19, 31, v18
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[18:19], 2, v[18:19]
	v_add_co_u32 v18, vcc_lo, s26, v18
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v19, null, s27, v19, vcc_lo
	global_load_b32 v21, v[18:19], off
.LBB0_13:                               ; %atomicrmw.start68
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v20, v21, v10
	global_atomic_cmpswap_b32 v0, v[18:19], v[20:21], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v0, v21
	v_mov_b32_e32 v21, v0
	s_or_b32 s0, vcc_lo, s0
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s0
	s_cbranch_execnz .LBB0_13
; %bb.14:                               ; %atomicrmw.end67
	.loc	1 0 9                           ; generate_amdgcn.py:0:9
	s_or_b32 exec_lo, exec_lo, s0
	.loc	1 192 23                        ; generate_amdgcn.py:192:23
	v_lshl_add_u32 v18, s25, 3, v1
	s_mov_b32 s0, 0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 192 9                         ; generate_amdgcn.py:192:9
	v_ashrrev_i32_e32 v19, 31, v18
	v_lshlrev_b64 v[18:19], 2, v[18:19]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add_co_u32 v18, vcc_lo, s26, v18
	v_add_co_ci_u32_e64 v19, null, s27, v19, vcc_lo
	global_load_b32 v21, v[18:19], off
.LBB0_15:                               ; %atomicrmw.start62
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v20, v21, v8
	global_atomic_cmpswap_b32 v0, v[18:19], v[20:21], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v0, v21
	v_mov_b32_e32 v21, v0
	s_or_b32 s0, vcc_lo, s0
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s0
	s_cbranch_execnz .LBB0_15
; %bb.16:                               ; %atomicrmw.end61
	.loc	1 0 9                           ; generate_amdgcn.py:0:9
	s_or_b32 exec_lo, exec_lo, s0
	.loc	1 192 23                        ; generate_amdgcn.py:192:23
	v_mad_u64_u32 v[18:19], null, s25, 10, v[1:2]
	s_mov_b32 s0, 0
	.loc	1 192 9                         ; generate_amdgcn.py:192:9
	v_ashrrev_i32_e32 v19, 31, v18
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[18:19], 2, v[18:19]
	v_add_co_u32 v18, vcc_lo, s26, v18
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v19, null, s27, v19, vcc_lo
	global_load_b32 v21, v[18:19], off
.LBB0_17:                               ; %atomicrmw.start56
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v20, v21, v6
	global_atomic_cmpswap_b32 v0, v[18:19], v[20:21], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v0, v21
	v_mov_b32_e32 v21, v0
	s_or_b32 s0, vcc_lo, s0
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s0
	s_cbranch_execnz .LBB0_17
; %bb.18:                               ; %atomicrmw.end55
	.loc	1 0 9                           ; generate_amdgcn.py:0:9
	s_or_b32 exec_lo, exec_lo, s0
	.loc	1 192 23                        ; generate_amdgcn.py:192:23
	v_mad_u64_u32 v[18:19], null, s25, 12, v[1:2]
	s_mov_b32 s0, 0
	.loc	1 192 9                         ; generate_amdgcn.py:192:9
	v_ashrrev_i32_e32 v19, 31, v18
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[18:19], 2, v[18:19]
	v_add_co_u32 v18, vcc_lo, s26, v18
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v19, null, s27, v19, vcc_lo
	global_load_b32 v21, v[18:19], off
.LBB0_19:                               ; %atomicrmw.start50
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v20, v21, v4
	global_atomic_cmpswap_b32 v0, v[18:19], v[20:21], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v0, v21
	v_mov_b32_e32 v21, v0
	s_or_b32 s0, vcc_lo, s0
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s0
	s_cbranch_execnz .LBB0_19
; %bb.20:                               ; %atomicrmw.end49
	.loc	1 0 9                           ; generate_amdgcn.py:0:9
	s_or_b32 exec_lo, exec_lo, s0
	.loc	1 192 23                        ; generate_amdgcn.py:192:23
	v_mad_u64_u32 v[18:19], null, s25, 14, v[1:2]
	s_mov_b32 s0, 0
	.loc	1 192 9                         ; generate_amdgcn.py:192:9
	v_ashrrev_i32_e32 v19, 31, v18
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[18:19], 2, v[18:19]
	v_add_co_u32 v18, vcc_lo, s26, v18
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v19, null, s27, v19, vcc_lo
	global_load_b32 v21, v[18:19], off
.LBB0_21:                               ; %atomicrmw.start44
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v20, v21, v2
	global_atomic_cmpswap_b32 v0, v[18:19], v[20:21], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v0, v21
	v_mov_b32_e32 v21, v0
	s_or_b32 s0, vcc_lo, s0
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s0
	s_cbranch_execnz .LBB0_21
; %bb.22:                               ; %atomicrmw.end43
	.loc	1 0 9                           ; generate_amdgcn.py:0:9
	s_or_b32 exec_lo, exec_lo, s0
	.loc	1 192 23                        ; generate_amdgcn.py:192:23
	v_lshl_add_u32 v18, s25, 4, v1
	s_mov_b32 s0, 0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 192 9                         ; generate_amdgcn.py:192:9
	v_ashrrev_i32_e32 v19, 31, v18
	v_lshlrev_b64 v[18:19], 2, v[18:19]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add_co_u32 v18, vcc_lo, s26, v18
	v_add_co_ci_u32_e64 v19, null, s27, v19, vcc_lo
	global_load_b32 v21, v[18:19], off
.LBB0_23:                               ; %atomicrmw.start38
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v20, v21, v17
	global_atomic_cmpswap_b32 v0, v[18:19], v[20:21], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v0, v21
	v_mov_b32_e32 v21, v0
	s_or_b32 s0, vcc_lo, s0
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s0
	s_cbranch_execnz .LBB0_23
; %bb.24:                               ; %atomicrmw.end37
	.loc	1 0 9                           ; generate_amdgcn.py:0:9
	s_or_b32 exec_lo, exec_lo, s0
	.loc	1 192 23                        ; generate_amdgcn.py:192:23
	v_mad_u64_u32 v[16:17], null, s25, 18, v[1:2]
	s_mov_b32 s0, 0
	.loc	1 192 9                         ; generate_amdgcn.py:192:9
	v_ashrrev_i32_e32 v17, 31, v16
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[16:17], 2, v[16:17]
	v_add_co_u32 v16, vcc_lo, s26, v16
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v17, null, s27, v17, vcc_lo
	global_load_b32 v19, v[16:17], off
.LBB0_25:                               ; %atomicrmw.start32
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v18, v19, v15
	global_atomic_cmpswap_b32 v0, v[16:17], v[18:19], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v0, v19
	v_mov_b32_e32 v19, v0
	s_or_b32 s0, vcc_lo, s0
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s0
	s_cbranch_execnz .LBB0_25
; %bb.26:                               ; %atomicrmw.end31
	.loc	1 0 9                           ; generate_amdgcn.py:0:9
	s_or_b32 exec_lo, exec_lo, s0
	.loc	1 192 23                        ; generate_amdgcn.py:192:23
	v_mad_u64_u32 v[14:15], null, s25, 20, v[1:2]
	s_mov_b32 s0, 0
	.loc	1 192 9                         ; generate_amdgcn.py:192:9
	v_ashrrev_i32_e32 v15, 31, v14
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[14:15], 2, v[14:15]
	v_add_co_u32 v14, vcc_lo, s26, v14
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v15, null, s27, v15, vcc_lo
	global_load_b32 v17, v[14:15], off
.LBB0_27:                               ; %atomicrmw.start26
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v16, v17, v13
	global_atomic_cmpswap_b32 v0, v[14:15], v[16:17], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v0, v17
	v_mov_b32_e32 v17, v0
	s_or_b32 s0, vcc_lo, s0
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s0
	s_cbranch_execnz .LBB0_27
; %bb.28:                               ; %atomicrmw.end25
	.loc	1 0 9                           ; generate_amdgcn.py:0:9
	s_or_b32 exec_lo, exec_lo, s0
	.loc	1 192 23                        ; generate_amdgcn.py:192:23
	v_mad_u64_u32 v[12:13], null, s25, 22, v[1:2]
	s_mov_b32 s0, 0
	.loc	1 192 9                         ; generate_amdgcn.py:192:9
	v_ashrrev_i32_e32 v13, 31, v12
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[12:13], 2, v[12:13]
	v_add_co_u32 v12, vcc_lo, s26, v12
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v13, null, s27, v13, vcc_lo
	global_load_b32 v15, v[12:13], off
.LBB0_29:                               ; %atomicrmw.start20
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v14, v15, v11
	global_atomic_cmpswap_b32 v0, v[12:13], v[14:15], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v0, v15
	v_mov_b32_e32 v15, v0
	s_or_b32 s0, vcc_lo, s0
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s0
	s_cbranch_execnz .LBB0_29
; %bb.30:                               ; %atomicrmw.end19
	.loc	1 0 9                           ; generate_amdgcn.py:0:9
	s_or_b32 exec_lo, exec_lo, s0
	.loc	1 192 23                        ; generate_amdgcn.py:192:23
	v_mad_u64_u32 v[10:11], null, s25, 24, v[1:2]
	s_mov_b32 s0, 0
	.loc	1 192 9                         ; generate_amdgcn.py:192:9
	v_ashrrev_i32_e32 v11, 31, v10
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[10:11], 2, v[10:11]
	v_add_co_u32 v10, vcc_lo, s26, v10
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v11, null, s27, v11, vcc_lo
	global_load_b32 v13, v[10:11], off
.LBB0_31:                               ; %atomicrmw.start14
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v12, v13, v9
	global_atomic_cmpswap_b32 v0, v[10:11], v[12:13], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v0, v13
	v_mov_b32_e32 v13, v0
	s_or_b32 s0, vcc_lo, s0
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s0
	s_cbranch_execnz .LBB0_31
; %bb.32:                               ; %atomicrmw.end13
	.loc	1 0 9                           ; generate_amdgcn.py:0:9
	s_or_b32 exec_lo, exec_lo, s0
	.loc	1 192 23                        ; generate_amdgcn.py:192:23
	v_mad_u64_u32 v[8:9], null, s25, 26, v[1:2]
	s_mov_b32 s0, 0
	.loc	1 192 9                         ; generate_amdgcn.py:192:9
	v_ashrrev_i32_e32 v9, 31, v8
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[8:9], 2, v[8:9]
	v_add_co_u32 v8, vcc_lo, s26, v8
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v9, null, s27, v9, vcc_lo
	global_load_b32 v11, v[8:9], off
.LBB0_33:                               ; %atomicrmw.start8
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v10, v11, v7
	global_atomic_cmpswap_b32 v0, v[8:9], v[10:11], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v0, v11
	v_mov_b32_e32 v11, v0
	s_or_b32 s0, vcc_lo, s0
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s0
	s_cbranch_execnz .LBB0_33
; %bb.34:                               ; %atomicrmw.end7
	.loc	1 0 9                           ; generate_amdgcn.py:0:9
	s_or_b32 exec_lo, exec_lo, s0
	.loc	1 192 23                        ; generate_amdgcn.py:192:23
	v_mad_u64_u32 v[6:7], null, s25, 28, v[1:2]
	s_mov_b32 s0, 0
	.loc	1 192 9                         ; generate_amdgcn.py:192:9
	v_ashrrev_i32_e32 v7, 31, v6
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[6:7], 2, v[6:7]
	v_add_co_u32 v6, vcc_lo, s26, v6
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v7, null, s27, v7, vcc_lo
	global_load_b32 v9, v[6:7], off
.LBB0_35:                               ; %atomicrmw.start2
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v8, v9, v5
	global_atomic_cmpswap_b32 v0, v[6:7], v[8:9], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v0, v9
	v_mov_b32_e32 v9, v0
	s_or_b32 s0, vcc_lo, s0
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s0
	s_cbranch_execnz .LBB0_35
; %bb.36:                               ; %atomicrmw.end1
	.loc	1 0 9                           ; generate_amdgcn.py:0:9
	s_or_b32 exec_lo, exec_lo, s0
	.loc	1 192 23                        ; generate_amdgcn.py:192:23
	v_mad_u64_u32 v[0:1], null, s25, 30, v[1:2]
	s_mov_b32 s0, 0
	.loc	1 192 9                         ; generate_amdgcn.py:192:9
	v_ashrrev_i32_e32 v1, 31, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[0:1], 2, v[0:1]
	v_add_co_u32 v0, vcc_lo, s26, v0
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v1, null, s27, v1, vcc_lo
	global_load_b32 v5, v[0:1], off
.LBB0_37:                               ; %atomicrmw.start
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
	s_cbranch_execnz .LBB0_37
; %bb.38:                               ; %atomicrmw.end
	.loc	1 79 1 is_stmt 1                ; generate_amdgcn.py:79:1
	s_endpgm
.Ltmp14:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_int4xint4_nn_pc_none_bm32_bn128_bk32_gm4_w8_s2_weu2_sk8_maskk
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
		.amdhsa_next_free_sgpr 34
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
	.size	amd_strix_halo_gfx1151_int4xint4_nn_pc_none_bm32_bn128_bk32_gm4_w8_s2_weu2_sk8_maskk, .Lfunc_end0-amd_strix_halo_gfx1151_int4xint4_nn_pc_none_bm32_bn128_bk32_gm4_w8_s2_weu2_sk8_maskk
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_int4xint4_nn_pc_none_bm32_bn128_bk32_gm4_w8_s2_weu2_sk8_maskk.num_vgpr, 58
	.set amd_strix_halo_gfx1151_int4xint4_nn_pc_none_bm32_bn128_bk32_gm4_w8_s2_weu2_sk8_maskk.num_agpr, 0
	.set amd_strix_halo_gfx1151_int4xint4_nn_pc_none_bm32_bn128_bk32_gm4_w8_s2_weu2_sk8_maskk.numbered_sgpr, 34
	.set amd_strix_halo_gfx1151_int4xint4_nn_pc_none_bm32_bn128_bk32_gm4_w8_s2_weu2_sk8_maskk.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_int4xint4_nn_pc_none_bm32_bn128_bk32_gm4_w8_s2_weu2_sk8_maskk.private_seg_size, 0
	.set amd_strix_halo_gfx1151_int4xint4_nn_pc_none_bm32_bn128_bk32_gm4_w8_s2_weu2_sk8_maskk.uses_vcc, 1
	.set amd_strix_halo_gfx1151_int4xint4_nn_pc_none_bm32_bn128_bk32_gm4_w8_s2_weu2_sk8_maskk.uses_flat_scratch, 0
	.set amd_strix_halo_gfx1151_int4xint4_nn_pc_none_bm32_bn128_bk32_gm4_w8_s2_weu2_sk8_maskk.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_int4xint4_nn_pc_none_bm32_bn128_bk32_gm4_w8_s2_weu2_sk8_maskk.has_recursion, 0
	.set amd_strix_halo_gfx1151_int4xint4_nn_pc_none_bm32_bn128_bk32_gm4_w8_s2_weu2_sk8_maskk.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 4784
; TotalNumSgprs: 36
; NumVgprs: 58
; ScratchSize: 0
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 30
; NumSGPRsForWavesPerEU: 36
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
	.byte	11                              ; DW_FORM_data1
	.byte	87                              ; DW_AT_call_column
	.byte	11                              ; DW_FORM_data1
	.byte	0                               ; EOM(1)
	.byte	0                               ; EOM(2)
	.byte	5                               ; Abbreviation Code
	.byte	29                              ; DW_TAG_inlined_subroutine
	.byte	0                               ; DW_CHILDREN_no
	.byte	49                              ; DW_AT_abstract_origin
	.byte	19                              ; DW_FORM_ref4
	.byte	17                              ; DW_AT_low_pc
	.byte	1                               ; DW_FORM_addr
	.byte	18                              ; DW_AT_high_pc
	.byte	6                               ; DW_FORM_data4
	.byte	88                              ; DW_AT_call_file
	.byte	11                              ; DW_FORM_data1
	.byte	89                              ; DW_AT_call_line
	.byte	11                              ; DW_FORM_data1
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
	.byte	1                               ; Abbrev [1] 0xb:0x64 DW_TAG_compile_unit
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
	.byte	3                               ; Abbrev [3] 0x30:0x3e DW_TAG_subprogram
	.quad	.Lfunc_begin0                   ; DW_AT_low_pc
	.long	.Lfunc_end0-.Lfunc_begin0       ; DW_AT_high_pc
	.long	42                              ; DW_AT_abstract_origin
	.byte	4                               ; Abbrev [4] 0x41:0xc DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges0                 ; DW_AT_ranges
	.byte	1                               ; DW_AT_call_file
	.byte	87                              ; DW_AT_call_line
	.byte	17                              ; DW_AT_call_column
	.byte	4                               ; Abbrev [4] 0x4d:0xc DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges1                 ; DW_AT_ranges
	.byte	1                               ; DW_AT_call_file
	.byte	86                              ; DW_AT_call_line
	.byte	17                              ; DW_AT_call_column
	.byte	5                               ; Abbrev [5] 0x59:0x14 DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.quad	.Ltmp12                         ; DW_AT_low_pc
	.long	.Ltmp13-.Ltmp12                 ; DW_AT_high_pc
	.byte	1                               ; DW_AT_call_file
	.byte	105                             ; DW_AT_call_line
	.byte	32                              ; DW_AT_call_column
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
	.section	.debug_str,"MS",@progbits,1
.Linfo_string0:
	.asciz	"triton"                        ; string offset=0 ; triton
.Linfo_string1:
	.asciz	"generate_amdgcn.py"            ; string offset=7 ; generate_amdgcn.py
.Linfo_string2:
	.asciz	"<repo>/scripts" ; string offset=26 ; <repo>/scripts
.Linfo_string3:
	.asciz	"amd_strix_halo_gfx1151_int4xint4_nn_pc_none_bm32_bn128_bk32_gm4_w8_s2_weu2_sk8_maskk"             ; string offset=75 ; amd_strix_halo_gfx1151_int4xint4_nn_pc_none_bm32_bn128_bk32_gm4_w8_s2_weu2_sk8_maskk
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
    .name:           amd_strix_halo_gfx1151_int4xint4_nn_pc_none_bm32_bn128_bk32_gm4_w8_s2_weu2_sk8_maskk
    .private_segment_fixed_size: 0
    .sgpr_count:     36
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_int4xint4_nn_pc_none_bm32_bn128_bk32_gm4_w8_s2_weu2_sk8_maskk.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     58
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
