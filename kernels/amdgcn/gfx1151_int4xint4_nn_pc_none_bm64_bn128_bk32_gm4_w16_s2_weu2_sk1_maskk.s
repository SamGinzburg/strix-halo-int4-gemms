	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_int4xint4_nn_pc_none_bm64_bn128_bk32_gm4_w16_s2_weu2_sk1_maskk               ; -- Begin function amd_strix_halo_gfx1151_int4xint4_nn_pc_none_bm64_bn128_bk32_gm4_w16_s2_weu2_sk1_maskk
	.p2align	8
	.type	amd_strix_halo_gfx1151_int4xint4_nn_pc_none_bm64_bn128_bk32_gm4_w16_s2_weu2_sk1_maskk,@function
amd_strix_halo_gfx1151_int4xint4_nn_pc_none_bm64_bn128_bk32_gm4_w16_s2_weu2_sk1_maskk:                      ; @amd_strix_halo_gfx1151_int4xint4_nn_pc_none_bm64_bn128_bk32_gm4_w16_s2_weu2_sk1_maskk
.Lfunc_begin0:
	.file	1 "<repo>/scripts" "generate_amdgcn.py"
	.loc	1 79 0                          ; generate_amdgcn.py:79:0
	.cfi_sections .debug_frame
	.cfi_startproc
; %bb.0:
	s_clause 0x1
	s_load_b64 s[22:23], s[0:1], 0x30
	s_load_b32 s13, s[0:1], 0x38
.Ltmp0:
	.loc	1 89 16 prologue_end            ; generate_amdgcn.py:89:16
	s_abs_i32 s6, s2
	.loc	1 100 14                        ; generate_amdgcn.py:100:14
	v_lshlrev_b32_e32 v3, 1, v0
	v_lshrrev_b32_e32 v29, 5, v0
	.loc	1 98 32                         ; generate_amdgcn.py:98:32
	v_lshrrev_b32_e32 v28, 3, v0
	s_load_b64 s[20:21], s[0:1], 0x20
	v_mov_b32_e32 v9, 0
	.loc	1 100 14                        ; generate_amdgcn.py:100:14
	v_and_b32_e32 v17, 14, v3
	.loc	1 98 32                         ; generate_amdgcn.py:98:32
	v_and_b32_e32 v21, 15, v0
	s_delay_alu instid0(VALU_DEP_3)
	v_dual_mov_b32 v13, v9 :: v_dual_and_b32 v22, 0x108, v0
	v_mov_b32_e32 v10, v9
	v_mov_b32_e32 v12, v9
	v_mov_b32_e32 v7, v9
	v_mov_b32_e32 v8, v9
	v_mov_b32_e32 v11, v9
.Ltmp1:
	.file	2 "<triton>/python/triton/language" "standard.py"
	.loc	2 43 13                         ; standard.py:43:13 @[ generate_amdgcn.py:87:17 ]
	s_waitcnt lgkmcnt(0)
	s_add_i32 s4, s23, 0x7f
.Ltmp2:
	.loc	2 43 13 is_stmt 0               ; standard.py:43:13 @[ generate_amdgcn.py:86:17 ]
	s_add_i32 s7, s22, 63
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
	s_lshr_b32 s9, s9, 26
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
	s_ashr_i32 s7, s7, 6
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
	s_waitcnt lgkmcnt(0)
	s_mov_b64 s[24:25], s[6:7]
	s_sub_i32 s6, 0, s17
	s_mul_f32 s18, s18, 0x4f7ffffe
	s_mov_b32 s7, 0x31027000
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	.loc	1 117 22                        ; generate_amdgcn.py:117:22
	s_mov_b32 s27, s7
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
	s_mov_b32 s26, s6
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
	.loc	1 107 18                        ; generate_amdgcn.py:107:18
	v_or_b32_e32 v4, s33, v17
	.loc	1 92 28                         ; generate_amdgcn.py:92:28
	s_sub_i32 s2, s2, s12
	.loc	1 99 14                         ; generate_amdgcn.py:99:14
	s_lshl_b32 s3, s14, 7
	.loc	1 92 13                         ; generate_amdgcn.py:92:13
	s_add_i32 s2, s2, s15
	.loc	1 107 18                        ; generate_amdgcn.py:107:18
	v_or_b32_e32 v5, s33, v29
	.loc	1 98 14                         ; generate_amdgcn.py:98:14
	s_lshl_b32 s22, s2, 6
	.loc	1 108 23                        ; generate_amdgcn.py:108:23
	v_cmp_gt_i32_e32 vcc_lo, s31, v4
	.loc	1 105 9                         ; generate_amdgcn.py:105:9
	s_cmp_gt_i32 s13, 1
	.loc	1 113 30                        ; generate_amdgcn.py:113:30
	s_mul_i32 s2, s22, s31
	.loc	1 105 9                         ; generate_amdgcn.py:105:9
	s_cselect_b32 s28, -1, 0
	.loc	1 117 30                        ; generate_amdgcn.py:117:30
	s_mul_i32 s12, s23, s33
	.loc	1 105 9                         ; generate_amdgcn.py:105:9
	s_and_b32 vcc_lo, s28, vcc_lo
	.loc	1 99 32                         ; generate_amdgcn.py:99:32
	v_lshlrev_b32_e32 v20, 2, v0
	.loc	1 113 22                        ; generate_amdgcn.py:113:22
	s_and_b32 s5, s5, 0xffff
	.loc	1 117 22                        ; generate_amdgcn.py:117:22
	s_and_b32 s25, s25, 0xffff
	v_mov_b32_e32 v4, v9
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 99 32                         ; generate_amdgcn.py:99:32
	v_and_b32_e32 v18, 0x7c, v20
	.loc	1 117 30                        ; generate_amdgcn.py:117:30
	v_mad_u64_u32 v[1:2], null, s23, v29, v[18:19]
	.loc	1 113 30                        ; generate_amdgcn.py:113:30
	v_mul_lo_u32 v2, s31, v28
	.loc	1 99 32                         ; generate_amdgcn.py:99:32
	v_lshrrev_b32_e32 v19, 1, v0
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 117 30                        ; generate_amdgcn.py:117:30
	v_add3_u32 v27, s12, s3, v1
	s_mov_b32 s12, 0
	.loc	1 113 30                        ; generate_amdgcn.py:113:30
	v_add3_u32 v26, v2, v17, s2
	.loc	1 109 23                        ; generate_amdgcn.py:109:23
	v_cmp_gt_i32_e64 s2, s31, v5
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 113 30                        ; generate_amdgcn.py:113:30
	v_add_nc_u32_e32 v2, s33, v26
	.loc	1 113 22 is_stmt 0              ; generate_amdgcn.py:113:22
	v_cndmask_b32_e32 v1, 0x80000000, v2, vcc_lo
	.loc	1 105 9 is_stmt 1               ; generate_amdgcn.py:105:9
	s_and_b32 vcc_lo, s28, s2
	s_cmp_lt_i32 s13, 34
	.loc	1 117 22                        ; generate_amdgcn.py:117:22
	v_cndmask_b32_e32 v2, 0x80000000, v27, vcc_lo
	.loc	1 113 22                        ; generate_amdgcn.py:113:22
	buffer_load_u16 v25, v1, s[4:7], 0 offen
	.loc	1 117 22                        ; generate_amdgcn.py:117:22
	buffer_load_b32 v30, v2, s[24:27], 0 offen
	.loc	1 113 22                        ; generate_amdgcn.py:113:22
	v_bfe_i32 v1, v0, 6, 1
	v_dual_mov_b32 v14, v9 :: v_dual_and_b32 v5, 0x37e, v3
	v_mov_b32_e32 v15, v9
	v_mov_b32_e32 v2, v9
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_and_b32_e32 v6, 0x88, v1
	v_dual_mov_b32 v1, v9 :: v_dual_add_nc_u32 v24, 0, v20
	v_dual_mov_b32 v3, v9 :: v_dual_and_b32 v20, 0x70, v19
	v_xor_b32_e32 v23, v6, v5
	v_mov_b32_e32 v16, v9
	v_mov_b32_e32 v5, v9
	s_delay_alu instid0(VALU_DEP_3)
	v_dual_mov_b32 v6, v9 :: v_dual_add_nc_u32 v23, 0, v23
	s_waitcnt vmcnt(1)
	ds_store_b16 v23, v25 offset:2048
	.loc	1 117 22                        ; generate_amdgcn.py:117:22
	s_waitcnt vmcnt(0)
	ds_store_b32 v24, v30
	.loc	1 105 9                         ; generate_amdgcn.py:105:9
	s_cbranch_scc1 .LBB0_4
; %bb.1:                                ; %.lr.ph
	v_sub_nc_u32_e32 v25, s31, v17
	.loc	1 107 18                        ; generate_amdgcn.py:107:18
	s_add_i32 s1, s33, 16
	.loc	1 118 23                        ; generate_amdgcn.py:118:23
	s_mov_b32 s13, s12
	s_mov_b32 s14, s12
	s_mov_b32 s15, s12
	.loc	1 108 23                        ; generate_amdgcn.py:108:23
	v_cmp_lt_i32_e32 vcc_lo, s1, v25
	.loc	1 118 23                        ; generate_amdgcn.py:118:23
	s_mov_b32 s16, s12
	s_mov_b32 s17, s12
	s_mov_b32 s18, s12
	s_mov_b32 s19, s12
	.loc	1 113 30                        ; generate_amdgcn.py:113:30
	v_add_nc_u32_e32 v1, s1, v26
	.loc	1 105 9                         ; generate_amdgcn.py:105:9
	v_sub_nc_u32_e32 v26, s31, v29
	.loc	1 117 30                        ; generate_amdgcn.py:117:30
	s_lshl_b32 s0, s23, 4
	.loc	1 117 22 is_stmt 0              ; generate_amdgcn.py:117:22
	s_mov_b32 s26, s6
	.loc	1 117 30                        ; generate_amdgcn.py:117:30
	v_add_nc_u32_e32 v2, s0, v27
	.loc	1 113 22 is_stmt 1              ; generate_amdgcn.py:113:22
	v_cndmask_b32_e32 v1, 0x80000000, v1, vcc_lo
	.loc	1 109 23                        ; generate_amdgcn.py:109:23
	v_cmp_lt_i32_e32 vcc_lo, s1, v26
	.loc	1 117 22                        ; generate_amdgcn.py:117:22
	s_mov_b32 s27, s7
.Ltmp12:
	.loc	2 43 13                         ; standard.py:43:13 @[ generate_amdgcn.py:105:32 ]
	s_add_i32 s1, s31, 15
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	2 43 12 is_stmt 0               ; standard.py:43:12 @[ generate_amdgcn.py:105:32 ]
	s_lshr_b32 s1, s1, 4
.Ltmp13:
	.loc	1 117 22 is_stmt 1              ; generate_amdgcn.py:117:22
	v_cndmask_b32_e32 v2, 0x80000000, v2, vcc_lo
	.loc	1 113 22                        ; generate_amdgcn.py:113:22
	buffer_load_u16 v44, v1, s[4:7], 0 offen
	s_waitcnt lgkmcnt(0)
	s_barrier
	v_add_nc_u32_e32 v1, 0, v21
	.loc	1 117 22                        ; generate_amdgcn.py:117:22
	buffer_load_b32 v45, v2, s[24:27], 0 offen
	.loc	1 105 9                         ; generate_amdgcn.py:105:9
	s_max_u32 s2, s1, 2
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	s_cmp_eq_u32 s2, 2
	v_add_nc_u32_e32 v27, v1, v20
	v_lshl_or_b32 v1, v21, 4, v22
	v_xor_b32_e32 v2, 8, v1
	.loc	1 113 22                        ; generate_amdgcn.py:113:22
	v_add_nc_u32_e32 v30, 0, v1
	s_delay_alu instid0(VALU_DEP_2)
	v_add_nc_u32_e32 v31, 0, v2
	.loc	1 118 23                        ; generate_amdgcn.py:118:23
	v_dual_mov_b32 v1, s12 :: v_dual_mov_b32 v6, s17
	ds_load_u8 v9, v27 offset:640
	ds_load_u8 v10, v27 offset:896
	ds_load_u8 v11, v27 offset:768
	ds_load_u8 v12, v27 offset:512
	ds_load_u8 v13, v27 offset:128
	ds_load_u8 v14, v27 offset:384
	ds_load_u8 v15, v27 offset:256
	ds_load_u8 v16, v27
	ds_load_u8 v40, v27 offset:1664
	ds_load_u8 v41, v27 offset:1920
	ds_load_u8 v42, v27 offset:1792
	ds_load_u8 v43, v27 offset:1536
	ds_load_u8 v46, v27 offset:1152
	ds_load_u8 v47, v27 offset:1408
	ds_load_u8 v48, v27 offset:1280
	ds_load_u8 v49, v27 offset:1024
	.loc	1 113 22                        ; generate_amdgcn.py:113:22
	ds_load_2addr_stride64_b64 v[32:35], v30 offset0:4 offset1:5
	.loc	1 118 23                        ; generate_amdgcn.py:118:23
	v_mov_b32_e32 v8, s19
	.loc	1 113 22                        ; generate_amdgcn.py:113:22
	ds_load_2addr_stride64_b64 v[36:39], v31 offset0:4 offset1:5
	.loc	1 118 23                        ; generate_amdgcn.py:118:23
	v_dual_mov_b32 v2, s13 :: v_dual_mov_b32 v3, s14
	v_mov_b32_e32 v4, s15
	s_waitcnt lgkmcnt(15)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	s_waitcnt lgkmcnt(14)
	v_perm_b32 v9, v12, v9, 0xc0c0004
	v_mov_b32_e32 v5, s16
	v_mov_b32_e32 v7, s18
	s_waitcnt lgkmcnt(11)
	v_perm_b32 v12, v15, v14, 0xc0c0004
	s_waitcnt lgkmcnt(10)
	v_perm_b32 v11, v16, v13, 0xc0c0004
	.loc	1 113 22                        ; generate_amdgcn.py:113:22
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 118 23                        ; generate_amdgcn.py:118:23
	v_perm_b32 v14, v42, v41, 0xc0c0004
	v_perm_b32 v13, v43, v40, 0xc0c0004
	v_lshl_or_b32 v41, v10, 16, v9
	v_lshl_or_b32 v40, v12, 16, v11
	v_perm_b32 v16, v48, v47, 0xc0c0004
	v_perm_b32 v15, v49, v46, 0xc0c0004
	v_lshl_or_b32 v43, v14, 16, v13
	.loc	1 113 22                        ; generate_amdgcn.py:113:22
	s_waitcnt vmcnt(1)
	ds_store_b16 v23, v44 offset:2048
	.loc	1 117 22                        ; generate_amdgcn.py:117:22
	s_waitcnt vmcnt(0)
	ds_store_b32 v24, v45
	.loc	1 118 23                        ; generate_amdgcn.py:118:23
	v_lshl_or_b32 v42, v16, 16, v15
	v_wmma_i32_16x16x16_iu4 v[9:16], v[40:41], v[32:33], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[1:8], v[40:41], v[34:35], v[1:8] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_wmma_i32_16x16x16_iu4 v[9:16], v[42:43], v[36:37], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[1:8], v[42:43], v[38:39], v[1:8] neg_lo:[1,1,0]
	.loc	1 105 9                         ; generate_amdgcn.py:105:9
	s_cbranch_scc1 .LBB0_4
; %bb.2:                                ; %.peel.next
	s_add_i32 s1, s33, 32
	v_add_nc_u32_e32 v28, s22, v28
	v_add_nc_u32_e32 v29, s1, v29
	s_lshl_b32 s12, s30, 7
	s_add_i32 s2, s2, -2
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_lo_u32 v29, s23, v29
	v_add3_u32 v29, v29, s12, v18
	v_mad_u64_u32 v[17:18], null, s31, v28, v[17:18]
	s_lshl_b32 s12, s29, 7
	s_delay_alu instid0(SALU_CYCLE_1)
	v_subrev_nc_u32_e32 v18, s12, v29
.LBB0_3:                                ; =>This Inner Loop Header: Depth=1
	.loc	1 109 23                        ; generate_amdgcn.py:109:23
	v_cmp_lt_i32_e32 vcc_lo, s1, v26
	.loc	1 113 22                        ; generate_amdgcn.py:113:22
	v_add_nc_u32_e32 v28, s1, v17
	.loc	1 105 9                         ; generate_amdgcn.py:105:9
	s_add_i32 s2, s2, -1
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 117 22                        ; generate_amdgcn.py:117:22
	v_cndmask_b32_e32 v29, 0x80000000, v18, vcc_lo
	.loc	1 108 23                        ; generate_amdgcn.py:108:23
	v_cmp_lt_i32_e32 vcc_lo, s1, v25
	.loc	1 105 9                         ; generate_amdgcn.py:105:9
	v_add_nc_u32_e32 v18, s0, v18
	s_add_i32 s1, s1, 16
	s_cmp_lg_u32 s2, 0
	.loc	1 113 22                        ; generate_amdgcn.py:113:22
	v_cndmask_b32_e32 v28, 0x80000000, v28, vcc_lo
	buffer_load_u16 v42, v28, s[4:7], 0 offen
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 117 22                        ; generate_amdgcn.py:117:22
	buffer_load_b32 v43, v29, s[24:27], 0 offen
	.loc	1 118 23                        ; generate_amdgcn.py:118:23
	ds_load_u8 v28, v27 offset:640
	ds_load_u8 v29, v27 offset:896
	ds_load_u8 v40, v27 offset:768
	ds_load_u8 v41, v27 offset:512
	ds_load_u8 v44, v27 offset:128
	ds_load_u8 v45, v27 offset:384
	ds_load_u8 v46, v27 offset:256
	ds_load_u8 v47, v27
	ds_load_u8 v48, v27 offset:1664
	ds_load_u8 v49, v27 offset:1920
	ds_load_u8 v50, v27 offset:1792
	ds_load_u8 v51, v27 offset:1536
	ds_load_u8 v52, v27 offset:1152
	ds_load_u8 v53, v27 offset:1280
	ds_load_u8 v54, v27 offset:1024
	ds_load_u8 v55, v27 offset:1408
	.loc	1 113 22                        ; generate_amdgcn.py:113:22
	ds_load_2addr_stride64_b64 v[32:35], v30 offset0:4 offset1:5
	ds_load_2addr_stride64_b64 v[36:39], v31 offset0:4 offset1:5
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_waitcnt vmcnt(1)
	ds_store_b16 v23, v42 offset:2048
	.loc	1 117 22                        ; generate_amdgcn.py:117:22
	s_waitcnt vmcnt(0)
	ds_store_b32 v24, v43
	.loc	1 118 23                        ; generate_amdgcn.py:118:23
	v_perm_b32 v28, v41, v28, 0xc0c0004
	v_perm_b32 v29, v40, v29, 0xc0c0004
	v_perm_b32 v40, v47, v44, 0xc0c0004
	v_perm_b32 v41, v46, v45, 0xc0c0004
	v_perm_b32 v44, v51, v48, 0xc0c0004
	v_perm_b32 v45, v50, v49, 0xc0c0004
	v_perm_b32 v46, v54, v52, 0xc0c0004
	v_perm_b32 v47, v53, v55, 0xc0c0004
	v_lshl_or_b32 v29, v29, 16, v28
	v_lshl_or_b32 v28, v41, 16, v40
	v_lshl_or_b32 v41, v45, 16, v44
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_lshl_or_b32 v40, v47, 16, v46
	v_wmma_i32_16x16x16_iu4 v[9:16], v[28:29], v[32:33], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[1:8], v[28:29], v[34:35], v[1:8] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_wmma_i32_16x16x16_iu4 v[9:16], v[40:41], v[36:37], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[1:8], v[40:41], v[38:39], v[1:8] neg_lo:[1,1,0]
	.loc	1 105 9                         ; generate_amdgcn.py:105:9
	s_cbranch_scc1 .LBB0_3
.LBB0_4:                                ; %._crit_edge
	.loc	1 118 23                        ; generate_amdgcn.py:118:23
	s_and_not1_b32 vcc_lo, exec_lo, s28
	.loc	1 113 22                        ; generate_amdgcn.py:113:22
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 118 23                        ; generate_amdgcn.py:118:23
	s_cbranch_vccnz .LBB0_6
; %bb.5:
	.loc	1 117 22                        ; generate_amdgcn.py:117:22
	v_add3_u32 v17, 0, v21, v20
	.loc	1 113 22                        ; generate_amdgcn.py:113:22
	v_lshl_or_b32 v18, v21, 4, v22
	.loc	1 118 23                        ; generate_amdgcn.py:118:23
	ds_load_u8 v30, v17 offset:640
	ds_load_u8 v31, v17 offset:896
	ds_load_u8 v32, v17 offset:768
	ds_load_u8 v33, v17 offset:512
	ds_load_u8 v34, v17 offset:128
	ds_load_u8 v35, v17 offset:384
	ds_load_u8 v36, v17 offset:256
	ds_load_u8 v37, v17
	ds_load_u8 v38, v17 offset:1664
	ds_load_u8 v39, v17 offset:1920
	ds_load_u8 v40, v17 offset:1792
	ds_load_u8 v41, v17 offset:1536
	ds_load_u8 v42, v17 offset:1152
	ds_load_u8 v43, v17 offset:1280
	ds_load_u8 v44, v17 offset:1024
	ds_load_u8 v17, v17 offset:1408
	.loc	1 113 22                        ; generate_amdgcn.py:113:22
	v_add_nc_u32_e32 v22, 0, v18
	v_xad_u32 v18, v18, 8, 0
	ds_load_2addr_stride64_b64 v[22:25], v22 offset0:4 offset1:5
	ds_load_2addr_stride64_b64 v[26:29], v18 offset0:4 offset1:5
	.loc	1 118 23                        ; generate_amdgcn.py:118:23
	s_waitcnt lgkmcnt(14)
	v_perm_b32 v18, v33, v30, 0xc0c0004
	v_perm_b32 v30, v32, v31, 0xc0c0004
	s_waitcnt lgkmcnt(11)
	v_perm_b32 v32, v36, v35, 0xc0c0004
	s_waitcnt lgkmcnt(10)
	v_perm_b32 v31, v37, v34, 0xc0c0004
	v_lshl_or_b32 v18, v30, 16, v18
	s_waitcnt lgkmcnt(7)
	v_perm_b32 v34, v40, v39, 0xc0c0004
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v33, v41, v38, 0xc0c0004
	s_waitcnt lgkmcnt(3)
	v_perm_b32 v35, v44, v42, 0xc0c0004
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v36, v43, v17, 0xc0c0004
	v_lshl_or_b32 v17, v32, 16, v31
	v_lshl_or_b32 v31, v34, 16, v33
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_lshl_or_b32 v30, v36, 16, v35
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu4 v[9:16], v[17:18], v[22:23], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[1:8], v[17:18], v[24:25], v[1:8] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_wmma_i32_16x16x16_iu4 v[9:16], v[30:31], v[26:27], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[1:8], v[30:31], v[28:29], v[1:8] neg_lo:[1,1,0]
.LBB0_6:                                ; %._crit_edge._crit_edge
	.loc	1 99 32                         ; generate_amdgcn.py:99:32
	v_lshrrev_b32_e32 v17, 4, v0
	v_bfe_u32 v18, v0, 4, 1
	.loc	1 128 14                        ; generate_amdgcn.py:128:14
	s_and_b32 s17, s9, 0xffff
	s_mov_b32 s19, 0x31027000
	s_mov_b32 s18, 0x7ffffffe
	.loc	1 98 32                         ; generate_amdgcn.py:98:32
	v_and_or_b32 v17, v17, 16, v21
	.loc	1 129 22                        ; generate_amdgcn.py:129:22
	v_or3_b32 v18, v18, v20, s3
	.loc	1 128 14                        ; generate_amdgcn.py:128:14
	s_mov_b32 s16, s8
	.loc	1 99 32                         ; generate_amdgcn.py:99:32
	v_and_b32_e32 v19, 0x78, v19
	.loc	1 127 15                        ; generate_amdgcn.py:127:15
	v_cvt_f32_i32_e32 v9, v9
	.loc	1 98 32                         ; generate_amdgcn.py:98:32
	v_or_b32_e32 v20, 32, v17
	.loc	1 128 22                        ; generate_amdgcn.py:128:22
	v_or_b32_e32 v21, s22, v17
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_dual_mov_b32 v31, 0x7632 :: v_dual_lshlrev_b32 v18, 1, v18
	.loc	1 190 18 is_stmt 0              ; generate_amdgcn.py:190:18
	v_mul_lo_u32 v17, s23, v17
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 128 22 is_stmt 1              ; generate_amdgcn.py:128:22
	v_or_b32_e32 v22, s22, v20
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_dual_mov_b32 v30, 0x5410 :: v_dual_lshlrev_b32 v21, 1, v21
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 129 14                        ; generate_amdgcn.py:129:14
	v_or_b32_e32 v23, 4, v18
	v_or_b32_e32 v24, 8, v18
	.loc	1 128 14                        ; generate_amdgcn.py:128:14
	v_lshlrev_b32_e32 v22, 1, v22
	.loc	1 129 14                        ; generate_amdgcn.py:129:14
	v_or_b32_e32 v25, 12, v18
	v_or_b32_e32 v26, 16, v18
	v_or_b32_e32 v27, 20, v18
	.loc	1 128 14                        ; generate_amdgcn.py:128:14
	s_clause 0x1
	buffer_load_u16 v21, v21, s[16:19], 0 offen
	buffer_load_u16 v22, v22, s[16:19], 0 offen
	.loc	1 129 14                        ; generate_amdgcn.py:129:14
	s_and_b32 s17, s11, 0xffff
	s_mov_b32 s16, s10
	v_or_b32_e32 v28, 24, v18
	v_or_b32_e32 v29, 28, v18
	s_clause 0x7
	buffer_load_u16 v18, v18, s[16:19], 0 offen
	buffer_load_u16 v23, v23, s[16:19], 0 offen
	buffer_load_u16 v24, v24, s[16:19], 0 offen
	buffer_load_u16 v25, v25, s[16:19], 0 offen
	buffer_load_u16 v26, v26, s[16:19], 0 offen
	buffer_load_u16 v27, v27, s[16:19], 0 offen
	buffer_load_u16 v28, v28, s[16:19], 0 offen
	buffer_load_u16 v29, v29, s[16:19], 0 offen
	.loc	1 190 18                        ; generate_amdgcn.py:190:18
	v_mul_lo_u32 v20, s23, v20
	s_mul_i32 s22, s22, s23
	.loc	1 127 15                        ; generate_amdgcn.py:127:15
	v_cvt_f32_i32_e32 v10, v10
	.loc	1 190 18                        ; generate_amdgcn.py:190:18
	v_add3_u32 v19, s22, s3, v19
	.loc	1 127 15                        ; generate_amdgcn.py:127:15
	v_cvt_f32_i32_e32 v1, v1
	v_cvt_f32_i32_e32 v3, v3
	v_cvt_f32_i32_e32 v11, v11
	v_cvt_f32_i32_e32 v13, v13
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_add_lshl_u32 v17, v19, v17, 1
	v_add_lshl_u32 v19, v19, v20, 1
	.loc	1 127 15                        ; generate_amdgcn.py:127:15
	v_cvt_f32_i32_e32 v14, v14
	v_cvt_f32_i32_e32 v4, v4
	v_cvt_f32_i32_e32 v12, v12
	v_cvt_f32_i32_e32 v15, v15
	v_cvt_f32_i32_e32 v16, v16
	v_cvt_f32_i32_e32 v8, v8
	v_cvt_f32_i32_e32 v5, v5
	v_cvt_f32_i32_e32 v2, v2
	v_cvt_f32_i32_e32 v6, v6
	v_cvt_f32_i32_e32 v7, v7
	s_mov_b32 s15, 0x76543210
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	s_and_b32 s21, s21, 0xffff
	s_mov_b32 s22, s18
	s_mov_b32 s23, s19
	.loc	1 128 14                        ; generate_amdgcn.py:128:14
	s_waitcnt vmcnt(9)
	v_lshlrev_b32_e32 v20, 16, v21
	s_waitcnt vmcnt(8)
	v_lshlrev_b32_e32 v21, 16, v22
	.loc	1 129 14                        ; generate_amdgcn.py:129:14
	s_waitcnt vmcnt(6)
	v_lshlrev_b32_e32 v22, 16, v23
	s_waitcnt vmcnt(5)
	v_lshlrev_b32_e32 v23, 16, v24
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 130 16                        ; generate_amdgcn.py:130:16
	v_mul_f32_e32 v33, v20, v23
	s_waitcnt vmcnt(4)
	v_dual_mul_f32 v23, v21, v23 :: v_dual_lshlrev_b32 v24, 16, v25
	.loc	1 129 14                        ; generate_amdgcn.py:129:14
	s_waitcnt vmcnt(3)
	v_lshlrev_b32_e32 v25, 16, v26
	v_lshlrev_b32_e32 v18, 16, v18
	s_waitcnt vmcnt(2)
	v_lshlrev_b32_e32 v26, 16, v27
	.loc	1 130 9                         ; generate_amdgcn.py:130:9
	v_mul_f32_e32 v3, v23, v3
	.loc	1 130 16 is_stmt 0              ; generate_amdgcn.py:130:16
	v_mul_f32_e32 v35, v20, v25
	.loc	1 129 14 is_stmt 1              ; generate_amdgcn.py:129:14
	s_waitcnt vmcnt(1)
	v_lshlrev_b32_e32 v27, 16, v28
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_and_b32_e32 v0, 16, v0
	.loc	1 130 16                        ; generate_amdgcn.py:130:16
	v_mul_f32_e32 v36, v20, v26
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cmp_o_f32_e64 s9, v3, v3
	.loc	1 130 9                         ; generate_amdgcn.py:130:9
	v_mul_f32_e32 v13, v35, v13
	.loc	1 130 16 is_stmt 0              ; generate_amdgcn.py:130:16
	v_mul_f32_e32 v37, v20, v27
	v_mul_f32_e32 v34, v20, v24
	.loc	1 129 14 is_stmt 1              ; generate_amdgcn.py:129:14
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v28, 16, v29
	.loc	1 130 16                        ; generate_amdgcn.py:130:16
	v_mul_f32_e32 v29, v20, v18
	v_mul_f32_e32 v18, v21, v18
	v_dual_mul_f32 v25, v21, v25 :: v_dual_mul_f32 v32, v20, v22
	v_mul_f32_e32 v24, v21, v24
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 130 9 is_stmt 0               ; generate_amdgcn.py:130:9
	v_mul_f32_e32 v9, v29, v9
	.loc	1 130 16                        ; generate_amdgcn.py:130:16
	v_dual_mul_f32 v26, v21, v26 :: v_dual_mul_f32 v1, v18, v1
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 130 9                         ; generate_amdgcn.py:130:9
	v_mul_f32_e32 v10, v32, v10
	.loc	1 190 9 is_stmt 1               ; generate_amdgcn.py:190:9
	v_bfe_u32 v29, v3, 16, 1
	v_bfe_u32 v18, v9, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v9, v9
	.loc	1 130 16                        ; generate_amdgcn.py:130:16
	v_mul_f32_e32 v22, v21, v22
	v_mul_f32_e32 v27, v21, v27
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_add3_u32 v3, v3, v29, 0x7fff
	v_add3_u32 v9, v9, v18, 0x7fff
	.loc	1 130 16                        ; generate_amdgcn.py:130:16
	v_mul_f32_e32 v20, v20, v28
	v_mul_f32_e32 v21, v21, v28
	.loc	1 130 9 is_stmt 0               ; generate_amdgcn.py:130:9
	v_dual_mul_f32 v11, v33, v11 :: v_dual_mul_f32 v12, v34, v12
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 190 9 is_stmt 1               ; generate_amdgcn.py:190:9
	v_cndmask_b16 v9.l, 0x7fff, v9.h, vcc_lo
	v_cmp_eq_u32_e32 vcc_lo, 0, v0
	.loc	1 130 9                         ; generate_amdgcn.py:130:9
	v_dual_mul_f32 v14, v36, v14 :: v_dual_mul_f32 v15, v37, v15
	v_mul_f32_e32 v4, v24, v4
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cndmask_b16 v0.l, 0x7fff, v3.h, s9
	v_dual_cndmask_b32 v3, 0x1054, v30 :: v_dual_mul_f32 v16, v20, v16
	.loc	1 130 9                         ; generate_amdgcn.py:130:9
	v_mul_f32_e32 v5, v25, v5
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_bfe_u32 v20, v10, 16, 1
	v_bfe_u32 v23, v13, 16, 1
	v_bfe_u32 v24, v14, 16, 1
	v_lshl_or_b32 v3, v3, 8, v3
	.loc	1 130 9                         ; generate_amdgcn.py:130:9
	v_mul_f32_e32 v8, v21, v8
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_bfe_u32 v21, v11, 16, 1
	v_cmp_o_f32_e64 s0, v10, v10
	v_cmp_o_f32_e64 s1, v11, v11
	v_cmp_o_f32_e64 s3, v13, v13
	v_cmp_o_f32_e64 s4, v14, v14
	v_add3_u32 v10, v10, v20, 0x7fff
	v_add3_u32 v11, v11, v21, 0x7fff
	v_add3_u32 v13, v13, v23, 0x7fff
	v_add3_u32 v14, v14, v24, 0x7fff
	.loc	1 130 9                         ; generate_amdgcn.py:130:9
	v_dual_mul_f32 v2, v22, v2 :: v_dual_mul_f32 v7, v27, v7
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cndmask_b16 v9.h, 0x7fff, v10.h, s0
	v_cndmask_b16 v10.l, 0x7fff, v11.h, s1
	v_cndmask_b16 v11.l, 0x7fff, v13.h, s3
	v_cndmask_b16 v11.h, 0x7fff, v14.h, s4
	.loc	1 130 9                         ; generate_amdgcn.py:130:9
	v_mul_f32_e32 v6, v26, v6
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_bfe_u32 v22, v12, 16, 1
	v_bfe_u32 v25, v15, 16, 1
	v_bfe_u32 v26, v16, 16, 1
	v_bfe_u32 v27, v1, 16, 1
	v_bfe_u32 v28, v2, 16, 1
	v_bfe_u32 v32, v4, 16, 1
	v_bfe_u32 v33, v5, 16, 1
	v_bfe_u32 v34, v6, 16, 1
	v_cmp_o_f32_e64 s2, v12, v12
	v_cmp_o_f32_e64 s5, v15, v15
	v_cmp_o_f32_e64 s6, v16, v16
	v_cmp_o_f32_e64 s7, v1, v1
	v_cmp_o_f32_e64 s8, v2, v2
	v_cmp_o_f32_e64 s10, v4, v4
	v_cmp_o_f32_e64 s11, v5, v5
	v_cmp_o_f32_e64 s12, v6, v6
	v_bfe_u32 v35, v7, 16, 1
	v_add3_u32 v12, v12, v22, 0x7fff
	v_add3_u32 v15, v15, v25, 0x7fff
	v_add3_u32 v16, v16, v26, 0x7fff
	v_add3_u32 v1, v1, v27, 0x7fff
	v_add3_u32 v2, v2, v28, 0x7fff
	v_add3_u32 v4, v4, v32, 0x7fff
	v_add3_u32 v5, v5, v33, 0x7fff
	v_add3_u32 v6, v6, v34, 0x7fff
	v_and_b32_e32 v3, 0x540054, v3
	v_bfe_u32 v36, v8, 16, 1
	v_cmp_o_f32_e64 s13, v7, v7
	v_cmp_o_f32_e64 s14, v8, v8
	v_add3_u32 v7, v7, v35, 0x7fff
	v_cndmask_b16 v10.h, 0x7fff, v12.h, s2
	v_add3_u32 v8, v8, v36, 0x7fff
	v_cndmask_b16 v12.l, 0x7fff, v15.h, s5
	v_cndmask_b16 v12.h, 0x7fff, v16.h, s6
	v_cndmask_b16 v1.l, 0x7fff, v1.h, s7
	v_cndmask_b16 v1.h, 0x7fff, v2.h, s8
	v_cndmask_b16 v0.h, 0x7fff, v4.h, s10
	v_cndmask_b16 v5.l, 0x7fff, v5.h, s11
	v_cndmask_b16 v5.h, 0x7fff, v6.h, s12
	v_cndmask_b32_e32 v4, 0x3276, v31, vcc_lo
	v_cndmask_b32_e32 v2, v11, v9, vcc_lo
	v_cndmask_b16 v6.l, 0x7fff, v7.h, s13
	v_cndmask_b16 v6.h, 0x7fff, v8.h, s14
	v_dual_cndmask_b32 v7, v9, v11 :: v_dual_cndmask_b32 v8, v12, v10
	v_dual_cndmask_b32 v9, v10, v12 :: v_dual_cndmask_b32 v10, v5, v1
	v_cndmask_b32_e32 v1, v1, v5, vcc_lo
	v_lshl_or_b32 v4, v4, 8, v4
	v_lshl_or_b32 v3, v3, 4, v3
	v_dual_cndmask_b32 v11, v6, v0 :: v_dual_cndmask_b32 v0, v0, v6
	v_permlanex16_b32 v5, v7, s15, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_and_b32_e32 v4, 0x760076, v4
	v_and_b32_e32 v6, 0x5040504, v3
	v_permlanex16_b32 v3, v9, s15, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v9, v1, s15, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v12, v0, s15, 0xfedcba98 op_sel:[1,0]
	v_lshl_or_b32 v4, v4, 4, v4
	v_perm_b32 v0, v5, v2, v6
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_and_b32_e32 v7, 0x7060706, v4
	v_perm_b32 v4, v9, v10, v6
	v_perm_b32 v1, v5, v2, v7
	v_perm_b32 v2, v3, v8, v6
	v_perm_b32 v3, v3, v8, v7
	v_perm_b32 v5, v9, v10, v7
	v_perm_b32 v6, v12, v11, v6
	v_perm_b32 v7, v12, v11, v7
	s_clause 0x1
	buffer_store_b128 v[0:3], v17, s[20:23], 0 offen
	buffer_store_b128 v[4:7], v19, s[20:23], 0 offen
	.loc	1 79 1                          ; generate_amdgcn.py:79:1
	s_endpgm
.Ltmp14:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_int4xint4_nn_pc_none_bm64_bn128_bk32_gm4_w16_s2_weu2_sk1_maskk
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
		.amdhsa_next_free_vgpr 56
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
		.amdhsa_inst_pref_size 29
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
	.size	amd_strix_halo_gfx1151_int4xint4_nn_pc_none_bm64_bn128_bk32_gm4_w16_s2_weu2_sk1_maskk, .Lfunc_end0-amd_strix_halo_gfx1151_int4xint4_nn_pc_none_bm64_bn128_bk32_gm4_w16_s2_weu2_sk1_maskk
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_int4xint4_nn_pc_none_bm64_bn128_bk32_gm4_w16_s2_weu2_sk1_maskk.num_vgpr, 56
	.set amd_strix_halo_gfx1151_int4xint4_nn_pc_none_bm64_bn128_bk32_gm4_w16_s2_weu2_sk1_maskk.num_agpr, 0
	.set amd_strix_halo_gfx1151_int4xint4_nn_pc_none_bm64_bn128_bk32_gm4_w16_s2_weu2_sk1_maskk.numbered_sgpr, 34
	.set amd_strix_halo_gfx1151_int4xint4_nn_pc_none_bm64_bn128_bk32_gm4_w16_s2_weu2_sk1_maskk.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_int4xint4_nn_pc_none_bm64_bn128_bk32_gm4_w16_s2_weu2_sk1_maskk.private_seg_size, 0
	.set amd_strix_halo_gfx1151_int4xint4_nn_pc_none_bm64_bn128_bk32_gm4_w16_s2_weu2_sk1_maskk.uses_vcc, 1
	.set amd_strix_halo_gfx1151_int4xint4_nn_pc_none_bm64_bn128_bk32_gm4_w16_s2_weu2_sk1_maskk.uses_flat_scratch, 0
	.set amd_strix_halo_gfx1151_int4xint4_nn_pc_none_bm64_bn128_bk32_gm4_w16_s2_weu2_sk1_maskk.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_int4xint4_nn_pc_none_bm64_bn128_bk32_gm4_w16_s2_weu2_sk1_maskk.has_recursion, 0
	.set amd_strix_halo_gfx1151_int4xint4_nn_pc_none_bm64_bn128_bk32_gm4_w16_s2_weu2_sk1_maskk.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 3696
; TotalNumSgprs: 36
; NumVgprs: 56
; ScratchSize: 0
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 6
; NumSGPRsForWavesPerEU: 36
; NumVGPRsForWavesPerEU: 56
; Occupancy: 16
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
	.asciz	"amd_strix_halo_gfx1151_int4xint4_nn_pc_none_bm64_bn128_bk32_gm4_w16_s2_weu2_sk1_maskk"             ; string offset=75 ; amd_strix_halo_gfx1151_int4xint4_nn_pc_none_bm64_bn128_bk32_gm4_w16_s2_weu2_sk1_maskk
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
    .max_flat_workgroup_size: 512
    .name:           amd_strix_halo_gfx1151_int4xint4_nn_pc_none_bm64_bn128_bk32_gm4_w16_s2_weu2_sk1_maskk
    .private_segment_fixed_size: 0
    .sgpr_count:     36
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_int4xint4_nn_pc_none_bm64_bn128_bk32_gm4_w16_s2_weu2_sk1_maskk.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     56
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
