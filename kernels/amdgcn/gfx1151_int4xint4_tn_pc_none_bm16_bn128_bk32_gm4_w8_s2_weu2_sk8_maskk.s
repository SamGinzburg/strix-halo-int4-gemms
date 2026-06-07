	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_int4xint4_tn_pc_none_bm16_bn128_bk32_gm4_w8_s2_weu2_sk8_maskk               ; -- Begin function amd_strix_halo_gfx1151_int4xint4_tn_pc_none_bm16_bn128_bk32_gm4_w8_s2_weu2_sk8_maskk
	.p2align	8
	.type	amd_strix_halo_gfx1151_int4xint4_tn_pc_none_bm16_bn128_bk32_gm4_w8_s2_weu2_sk8_maskk,@function
amd_strix_halo_gfx1151_int4xint4_tn_pc_none_bm16_bn128_bk32_gm4_w8_s2_weu2_sk8_maskk:                      ; @amd_strix_halo_gfx1151_int4xint4_tn_pc_none_bm16_bn128_bk32_gm4_w8_s2_weu2_sk8_maskk
.Lfunc_begin0:
	.file	1 "<repo>/scripts" "generate_amdgcn.py"
	.loc	1 79 0                          ; generate_amdgcn.py:79:0
	.cfi_sections .debug_frame
	.cfi_startproc
; %bb.0:
	s_clause 0x1
	s_load_b64 s[16:17], s[0:1], 0x30
	s_load_b32 s26, s[0:1], 0x38
.Ltmp0:
	.loc	1 89 16 prologue_end            ; generate_amdgcn.py:89:16
	s_abs_i32 s6, s2
	.loc	1 98 32                         ; generate_amdgcn.py:98:32
	v_and_b32_e32 v9, 15, v0
	v_lshrrev_b32_e32 v17, 4, v0
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 99 32                         ; generate_amdgcn.py:99:32
	v_lshlrev_b32_e32 v10, 3, v9
.Ltmp1:
	.file	2 "<triton>/python/triton/language" "standard.py"
	.loc	2 43 13                         ; standard.py:43:13 @[ generate_amdgcn.py:87:17 ]
	s_waitcnt lgkmcnt(0)
	s_add_i32 s4, s17, 0x7f
.Ltmp2:
	.loc	2 43 13 is_stmt 0               ; standard.py:43:13 @[ generate_amdgcn.py:86:17 ]
	s_add_i32 s7, s16, 15
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
	s_lshr_b32 s9, s9, 28
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
	s_ashr_i32 s7, s7, 4
.Ltmp11:
	.loc	1 88 24 is_stmt 1               ; generate_amdgcn.py:88:24
	s_lshl_b32 s14, s4, 2
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	.loc	1 89 16                         ; generate_amdgcn.py:89:16
	s_abs_i32 s4, s14
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
	s_xor_b32 s8, s2, s14
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
	s_sub_i32 s15, s4, s8
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 90 19                         ; generate_amdgcn.py:90:19
	s_lshl_b32 s18, s15, 2
	.loc	1 92 29                         ; generate_amdgcn.py:92:29
	s_mul_i32 s15, s15, s14
	.loc	1 91 31                         ; generate_amdgcn.py:91:31
	s_sub_i32 s4, s7, s18
	.loc	1 92 29                         ; generate_amdgcn.py:92:29
	s_sub_i32 s2, s2, s15
	.loc	1 91 20                         ; generate_amdgcn.py:91:20
	s_min_i32 s19, s4, 4
	s_load_b256 s[4:11], s[0:1], 0x0
	.loc	1 93 13                         ; generate_amdgcn.py:93:13
	s_abs_i32 s20, s19
	s_abs_i32 s14, s2
	s_cvt_f32_u32 s12, s20
	s_delay_alu instid0(SALU_CYCLE_3) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_iflag_f32_e32 v1, s12
	v_readfirstlane_b32 s12, v1
	.loc	1 111 30                        ; generate_amdgcn.py:111:30
	v_mad_u64_u32 v[1:2], null, s16, v17, v[9:10]
	.loc	1 117 30                        ; generate_amdgcn.py:117:30
	v_mad_u64_u32 v[2:3], null, s17, v17, v[10:11]
	.loc	1 93 13                         ; generate_amdgcn.py:93:13
	s_mul_f32 s21, s12, 0x4f7ffffe
	s_waitcnt lgkmcnt(0)
	s_mov_b64 s[12:13], s[6:7]
	s_sub_i32 s7, 0, s20
	.loc	1 99 32                         ; generate_amdgcn.py:99:32
	v_lshrrev_b32_e32 v11, 1, v0
	.loc	1 93 13                         ; generate_amdgcn.py:93:13
	s_cvt_u32_f32 s6, s21
	s_delay_alu instid0(SALU_CYCLE_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	s_mul_i32 s7, s7, s6
	.loc	1 99 32                         ; generate_amdgcn.py:99:32
	v_and_b32_e32 v11, 0x70, v11
	.loc	1 93 13                         ; generate_amdgcn.py:93:13
	s_mul_hi_u32 s7, s6, s7
	s_delay_alu instid0(SALU_CYCLE_1)
	s_add_i32 s6, s6, s7
	s_mov_b32 s7, 0x31027000
	s_mul_hi_u32 s15, s14, s6
	s_xor_b32 s6, s2, s19
	s_mul_i32 s21, s15, s20
	s_ashr_i32 s22, s6, 31
	s_sub_i32 s14, s14, s21
	s_add_i32 s21, s15, 1
	s_sub_i32 s23, s14, s20
	s_cmp_ge_u32 s14, s20
	s_mov_b32 s6, 0x7ffffffe
	s_cselect_b32 s15, s21, s15
	s_cselect_b32 s14, s23, s14
	s_add_i32 s21, s15, 1
	s_cmp_ge_u32 s14, s20
	s_cselect_b32 s14, s21, s15
	.loc	1 95 22                         ; generate_amdgcn.py:95:22
	s_lshr_b32 s15, s26, 31
	.loc	1 93 13                         ; generate_amdgcn.py:93:13
	s_xor_b32 s23, s14, s22
	.loc	1 107 23                        ; generate_amdgcn.py:107:23
	s_lshl_b32 s24, s3, 4
	.loc	1 95 22                         ; generate_amdgcn.py:95:22
	s_add_i32 s3, s26, s15
	.loc	1 93 13                         ; generate_amdgcn.py:93:13
	s_sub_i32 s15, s23, s22
	.loc	1 107 18                        ; generate_amdgcn.py:107:18
	v_or_b32_e32 v3, s24, v17
	.loc	1 92 28                         ; generate_amdgcn.py:92:28
	s_mul_i32 s19, s15, s19
	.loc	1 95 22                         ; generate_amdgcn.py:95:22
	s_ashr_i32 s25, s3, 1
	.loc	1 92 28                         ; generate_amdgcn.py:92:28
	s_sub_i32 s2, s2, s19
	.loc	1 111 30                        ; generate_amdgcn.py:111:30
	s_mul_i32 s14, s16, s24
	.loc	1 92 13                         ; generate_amdgcn.py:92:13
	s_add_i32 s2, s2, s18
	.loc	1 99 14                         ; generate_amdgcn.py:99:14
	s_lshl_b32 s20, s15, 7
	.loc	1 108 23                        ; generate_amdgcn.py:108:23
	v_cmp_gt_i32_e32 vcc_lo, s25, v3
	.loc	1 98 14                         ; generate_amdgcn.py:98:14
	s_lshl_b32 s21, s2, 4
	.loc	1 117 30                        ; generate_amdgcn.py:117:30
	s_mul_i32 s27, s17, s24
	.loc	1 105 9                         ; generate_amdgcn.py:105:9
	s_cmp_gt_i32 s26, 1
	.loc	1 111 30                        ; generate_amdgcn.py:111:30
	v_add3_u32 v18, s14, s21, v1
	.loc	1 117 30                        ; generate_amdgcn.py:117:30
	v_add3_u32 v16, s27, s20, v2
	.loc	1 105 9                         ; generate_amdgcn.py:105:9
	s_cselect_b32 s2, -1, 0
	.loc	1 111 22                        ; generate_amdgcn.py:111:22
	s_and_b32 s5, s5, 0xffff
	.loc	1 105 9                         ; generate_amdgcn.py:105:9
	s_and_b32 vcc_lo, s2, vcc_lo
	.loc	1 117 22                        ; generate_amdgcn.py:117:22
	s_mov_b32 s14, s6
	.loc	1 111 22                        ; generate_amdgcn.py:111:22
	v_dual_cndmask_b32 v1, 0x80000000, v18 :: v_dual_cndmask_b32 v2, 0x80000000, v16
	.loc	1 117 22                        ; generate_amdgcn.py:117:22
	s_mov_b32 s15, s7
	s_and_b32 s13, s13, 0xffff
	.loc	1 111 22                        ; generate_amdgcn.py:111:22
	buffer_load_u8 v15, v1, s[4:7], 0 offen
	.loc	1 117 22                        ; generate_amdgcn.py:117:22
	buffer_load_b64 v[19:20], v2, s[12:15], 0 offen
	s_load_b64 s[18:19], s[0:1], 0x20
	v_dual_mov_b32 v1, 0 :: v_dual_lshlrev_b32 v12, 3, v0
	.loc	1 111 22                        ; generate_amdgcn.py:111:22
	v_add_nc_u32_e32 v13, 0, v0
	s_mov_b64 s[0:1], s[10:11]
	.loc	1 105 9                         ; generate_amdgcn.py:105:9
	s_cmpk_lt_i32 s26, 0x102
	s_delay_alu instid0(VALU_DEP_2)
	v_mov_b32_e32 v2, v1
	v_mov_b32_e32 v3, v1
	v_mov_b32_e32 v4, v1
	v_dual_mov_b32 v5, v1 :: v_dual_add_nc_u32 v14, 0, v12
	v_mov_b32_e32 v6, v1
	v_dual_mov_b32 v7, v1 :: v_dual_add_nc_u32 v12, 0, v9
	v_mov_b32_e32 v8, v1
	.loc	1 111 22                        ; generate_amdgcn.py:111:22
	s_waitcnt vmcnt(1)
	ds_store_b8 v13, v15 offset:2048
	.loc	1 117 22                        ; generate_amdgcn.py:117:22
	s_waitcnt vmcnt(0)
	ds_store_b64 v14, v[19:20]
	.loc	1 105 9                         ; generate_amdgcn.py:105:9
	s_cbranch_scc1 .LBB0_4
; %bb.1:                                ; %.lr.ph
	v_sub_nc_u32_e32 v15, s25, v17
	.loc	1 111 30                        ; generate_amdgcn.py:111:30
	s_lshl_b32 s3, s16, 7
	.loc	1 107 18                        ; generate_amdgcn.py:107:18
	s_add_i32 s11, s24, 0x80
	.loc	1 117 30                        ; generate_amdgcn.py:117:30
	s_lshl_b32 s10, s17, 7
	.loc	1 111 30                        ; generate_amdgcn.py:111:30
	v_add_nc_u32_e32 v1, s3, v18
	.loc	1 108 23                        ; generate_amdgcn.py:108:23
	v_cmp_lt_i32_e32 vcc_lo, s11, v15
	.loc	1 117 30                        ; generate_amdgcn.py:117:30
	v_add_nc_u32_e32 v2, s10, v16
	.loc	1 117 22 is_stmt 0              ; generate_amdgcn.py:117:22
	s_mov_b32 s14, s6
	s_mov_b32 s15, s7
.Ltmp12:
	.loc	2 43 13 is_stmt 1               ; standard.py:43:13 @[ generate_amdgcn.py:105:32 ]
	s_addk_i32 s25, 0x7f
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
.Ltmp13:
	.loc	1 111 22                        ; generate_amdgcn.py:111:22
	v_dual_cndmask_b32 v1, 0x80000000, v1 :: v_dual_cndmask_b32 v2, 0x80000000, v2
.Ltmp14:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:105:32 ]
	s_lshr_b32 s11, s25, 7
.Ltmp15:
	.loc	1 105 9                         ; generate_amdgcn.py:105:9
	s_max_u32 s25, s11, 2
	.loc	1 111 22                        ; generate_amdgcn.py:111:22
	buffer_load_u8 v24, v1, s[4:7], 0 offen
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 117 22                        ; generate_amdgcn.py:117:22
	buffer_load_b64 v[18:19], v2, s[12:15], 0 offen
	v_add_nc_u32_e32 v1, 0, v11
	.loc	1 105 9                         ; generate_amdgcn.py:105:9
	s_cmp_eq_u32 s25, 2
	s_delay_alu instid0(VALU_DEP_1)
	v_add_nc_u32_e32 v16, v1, v9
	.loc	1 118 23                        ; generate_amdgcn.py:118:23
	ds_load_u8 v1, v12 offset:2128
	ds_load_u8 v2, v12 offset:2160
	ds_load_u8 v3, v12 offset:2144
	ds_load_u8 v4, v12 offset:2112
	ds_load_u8 v5, v12 offset:2048
	ds_load_u8 v6, v12 offset:2064
	ds_load_u8 v7, v12 offset:2080
	ds_load_u8 v8, v12 offset:2096
	ds_load_u8 v20, v16 offset:640
	ds_load_u8 v21, v16 offset:896
	ds_load_u8 v22, v16 offset:768
	ds_load_u8 v23, v16 offset:512
	ds_load_u8 v25, v16 offset:128
	ds_load_u8 v26, v16 offset:256
	ds_load_u8 v27, v16
	ds_load_u8 v28, v16 offset:384
	s_waitcnt lgkmcnt(13)
	v_perm_b32 v2, v3, v2, 0xc0c0004
	s_waitcnt lgkmcnt(12)
	v_perm_b32 v4, v4, v1, 0xc0c0004
	v_mov_b32_e32 v1, 0
	s_waitcnt lgkmcnt(10)
	v_perm_b32 v3, v5, v6, 0xc0c0004
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v5, v7, v8, 0xc0c0004
	s_waitcnt lgkmcnt(5)
	v_perm_b32 v7, v22, v21, 0xc0c0004
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v6, v23, v20, 0xc0c0004
	v_lshl_or_b32 v21, v2, 16, v4
	v_lshl_or_b32 v20, v5, 16, v3
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v8, v27, v25, 0xc0c0004
	ds_load_u8 v25, v12 offset:2256
	ds_load_u8 v27, v12 offset:2288
	ds_load_u8 v29, v12 offset:2272
	ds_load_u8 v30, v12 offset:2240
	ds_load_u8 v31, v12 offset:2192
	ds_load_u8 v32, v12 offset:2224
	ds_load_u8 v33, v12 offset:2208
	ds_load_u8 v34, v12 offset:2176
	ds_load_u8 v35, v16 offset:1664
	ds_load_u8 v36, v16 offset:1920
	ds_load_u8 v37, v16 offset:1792
	ds_load_u8 v38, v16 offset:1536
	ds_load_u8 v39, v16 offset:1152
	ds_load_u8 v40, v16 offset:1408
	ds_load_u8 v41, v16 offset:1280
	ds_load_u8 v42, v16 offset:1024
	s_waitcnt lgkmcnt(16)
	v_perm_b32 v22, v26, v28, 0xc0c0004
	v_lshl_or_b32 v23, v7, 16, v6
	v_mov_b32_e32 v2, v1
	v_mov_b32_e32 v3, v1
	v_mov_b32_e32 v4, v1
	v_lshl_or_b32 v22, v22, 16, v8
	v_mov_b32_e32 v5, v1
	v_mov_b32_e32 v6, v1
	v_mov_b32_e32 v7, v1
	v_mov_b32_e32 v8, v1
	s_waitcnt lgkmcnt(12)
	v_perm_b32 v25, v30, v25, 0xc0c0004
	v_perm_b32 v26, v29, v27, 0xc0c0004
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v27, v34, v31, 0xc0c0004
	v_perm_b32 v28, v33, v32, 0xc0c0004
	s_waitcnt lgkmcnt(5)
	v_perm_b32 v30, v37, v36, 0xc0c0004
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v29, v38, v35, 0xc0c0004
	v_wmma_i32_16x16x16_iu4 v[1:8], v[22:23], v[20:21], v[1:8] neg_lo:[1,1,0]
	v_lshl_or_b32 v21, v26, 16, v25
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v32, v41, v40, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v31, v42, v39, 0xc0c0004
	v_lshl_or_b32 v20, v28, 16, v27
	v_lshl_or_b32 v23, v30, 16, v29
	.loc	1 111 22                        ; generate_amdgcn.py:111:22
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 118 23                        ; generate_amdgcn.py:118:23
	v_lshl_or_b32 v22, v32, 16, v31
	.loc	1 111 22                        ; generate_amdgcn.py:111:22
	s_waitcnt vmcnt(1)
	ds_store_b8 v13, v24 offset:2048
	.loc	1 117 22                        ; generate_amdgcn.py:117:22
	s_waitcnt vmcnt(0)
	ds_store_b64 v14, v[18:19]
	.loc	1 118 23                        ; generate_amdgcn.py:118:23
	v_wmma_i32_16x16x16_iu4 v[1:8], v[22:23], v[20:21], v[1:8] neg_lo:[1,1,0]
	.loc	1 105 9                         ; generate_amdgcn.py:105:9
	s_cbranch_scc1 .LBB0_4
; %bb.2:                                ; %.peel.next
	s_add_i32 s11, s24, 0x100
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add_nc_u32_e32 v17, s11, v17
	v_mul_lo_u32 v18, s17, v17
	v_mul_lo_u32 v17, s16, v17
	s_lshl_b32 s16, s23, 7
	s_delay_alu instid0(VALU_DEP_2) | instid1(SALU_CYCLE_1)
	v_add3_u32 v10, v18, s16, v10
	s_lshl_b32 s16, s22, 7
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_add3_u32 v17, v17, s21, v9
	v_subrev_nc_u32_e32 v10, s16, v10
	s_add_i32 s16, s25, -2
.LBB0_3:                                ; =>This Inner Loop Header: Depth=1
	.loc	1 108 23                        ; generate_amdgcn.py:108:23
	v_cmp_lt_i32_e32 vcc_lo, s11, v15
	.loc	1 105 9                         ; generate_amdgcn.py:105:9
	s_add_i32 s16, s16, -1
	s_addk_i32 s11, 0x80
	s_cmp_lg_u32 s16, 0
	.loc	1 111 22                        ; generate_amdgcn.py:111:22
	v_dual_cndmask_b32 v18, 0x80000000, v17 :: v_dual_cndmask_b32 v19, 0x80000000, v10
	.loc	1 105 9                         ; generate_amdgcn.py:105:9
	v_add_nc_u32_e32 v17, s3, v17
	v_add_nc_u32_e32 v10, s10, v10
	.loc	1 111 22                        ; generate_amdgcn.py:111:22
	buffer_load_u8 v28, v18, s[4:7], 0 offen
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 117 22                        ; generate_amdgcn.py:117:22
	buffer_load_b64 v[18:19], v19, s[12:15], 0 offen
	.loc	1 118 23                        ; generate_amdgcn.py:118:23
	ds_load_u8 v20, v12 offset:2128
	ds_load_u8 v21, v12 offset:2160
	ds_load_u8 v22, v12 offset:2144
	ds_load_u8 v23, v12 offset:2112
	ds_load_u8 v24, v12 offset:2048
	ds_load_u8 v25, v12 offset:2064
	ds_load_u8 v26, v12 offset:2080
	ds_load_u8 v27, v12 offset:2096
	ds_load_u8 v29, v16 offset:640
	ds_load_u8 v30, v16 offset:896
	ds_load_u8 v31, v16 offset:768
	ds_load_u8 v32, v16 offset:512
	ds_load_u8 v33, v16 offset:128
	ds_load_u8 v34, v16 offset:384
	ds_load_u8 v35, v16 offset:256
	ds_load_u8 v36, v16
	ds_load_u8 v37, v12 offset:2256
	ds_load_u8 v38, v12 offset:2288
	ds_load_u8 v39, v12 offset:2272
	ds_load_u8 v40, v12 offset:2240
	ds_load_u8 v41, v12 offset:2192
	ds_load_u8 v42, v12 offset:2224
	ds_load_u8 v43, v12 offset:2208
	ds_load_u8 v44, v12 offset:2176
	ds_load_u8 v45, v16 offset:1664
	ds_load_u8 v46, v16 offset:1920
	ds_load_u8 v47, v16 offset:1792
	ds_load_u8 v48, v16 offset:1536
	ds_load_u8 v49, v16 offset:1152
	ds_load_u8 v50, v16 offset:1280
	ds_load_u8 v51, v16 offset:1024
	ds_load_u8 v52, v16 offset:1408
	s_waitcnt lgkmcnt(28)
	v_perm_b32 v20, v23, v20, 0xc0c0004
	v_perm_b32 v21, v22, v21, 0xc0c0004
	s_waitcnt lgkmcnt(26)
	v_perm_b32 v22, v24, v25, 0xc0c0004
	s_waitcnt lgkmcnt(24)
	v_perm_b32 v23, v26, v27, 0xc0c0004
	s_waitcnt lgkmcnt(20)
	v_perm_b32 v24, v32, v29, 0xc0c0004
	v_perm_b32 v25, v31, v30, 0xc0c0004
	s_waitcnt lgkmcnt(16)
	v_perm_b32 v26, v36, v33, 0xc0c0004
	v_perm_b32 v27, v35, v34, 0xc0c0004
	s_waitcnt lgkmcnt(12)
	v_perm_b32 v29, v40, v37, 0xc0c0004
	v_perm_b32 v30, v39, v38, 0xc0c0004
	s_waitcnt lgkmcnt(9)
	v_perm_b32 v32, v43, v42, 0xc0c0004
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v31, v44, v41, 0xc0c0004
	v_lshl_or_b32 v21, v21, 16, v20
	v_lshl_or_b32 v20, v23, 16, v22
	s_waitcnt lgkmcnt(5)
	v_perm_b32 v34, v47, v46, 0xc0c0004
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v33, v48, v45, 0xc0c0004
	v_lshl_or_b32 v23, v25, 16, v24
	v_lshl_or_b32 v22, v27, 16, v26
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v35, v51, v49, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v36, v50, v52, 0xc0c0004
	v_lshl_or_b32 v25, v30, 16, v29
	v_lshl_or_b32 v24, v32, 16, v31
	v_lshl_or_b32 v27, v34, 16, v33
	v_wmma_i32_16x16x16_iu4 v[1:8], v[22:23], v[20:21], v[1:8] neg_lo:[1,1,0]
	v_lshl_or_b32 v26, v36, 16, v35
	.loc	1 111 22                        ; generate_amdgcn.py:111:22
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_waitcnt vmcnt(1)
	ds_store_b8 v13, v28 offset:2048
	.loc	1 117 22                        ; generate_amdgcn.py:117:22
	s_waitcnt vmcnt(0)
	ds_store_b64 v14, v[18:19]
	.loc	1 118 23                        ; generate_amdgcn.py:118:23
	v_wmma_i32_16x16x16_iu4 v[1:8], v[26:27], v[24:25], v[1:8] neg_lo:[1,1,0]
	.loc	1 105 9                         ; generate_amdgcn.py:105:9
	s_cbranch_scc1 .LBB0_3
.LBB0_4:                                ; %._crit_edge
	.loc	1 0 0 is_stmt 0                 ; generate_amdgcn.py:0
	v_and_b32_e32 v10, 0xf0, v0
	.loc	1 118 23 is_stmt 1              ; generate_amdgcn.py:118:23
	s_and_not1_b32 vcc_lo, exec_lo, s2
	.loc	1 111 22                        ; generate_amdgcn.py:111:22
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 118 23                        ; generate_amdgcn.py:118:23
	s_cbranch_vccnz .LBB0_6
; %bb.5:
	.loc	1 117 22                        ; generate_amdgcn.py:117:22
	v_add_nc_u32_e32 v13, v12, v11
	.loc	1 118 23                        ; generate_amdgcn.py:118:23
	ds_load_u8 v14, v12 offset:2128
	ds_load_u8 v15, v12 offset:2160
	ds_load_u8 v16, v12 offset:2144
	ds_load_u8 v17, v12 offset:2112
	ds_load_u8 v18, v12 offset:2048
	ds_load_u8 v19, v12 offset:2064
	ds_load_u8 v20, v12 offset:2080
	ds_load_u8 v21, v12 offset:2096
	ds_load_u8 v22, v13 offset:640
	ds_load_u8 v23, v13 offset:896
	ds_load_u8 v24, v13 offset:768
	ds_load_u8 v25, v13 offset:512
	ds_load_u8 v26, v13 offset:128
	ds_load_u8 v27, v13 offset:384
	ds_load_u8 v28, v13 offset:256
	ds_load_u8 v29, v13
	ds_load_u8 v30, v12 offset:2256
	ds_load_u8 v31, v12 offset:2288
	ds_load_u8 v32, v12 offset:2272
	ds_load_u8 v33, v12 offset:2240
	ds_load_u8 v34, v12 offset:2192
	ds_load_u8 v35, v12 offset:2224
	ds_load_u8 v36, v12 offset:2208
	ds_load_u8 v37, v12 offset:2176
	ds_load_u8 v38, v13 offset:1664
	ds_load_u8 v39, v13 offset:1920
	ds_load_u8 v40, v13 offset:1792
	ds_load_u8 v41, v13 offset:1536
	ds_load_u8 v42, v13 offset:1152
	ds_load_u8 v43, v13 offset:1408
	ds_load_u8 v44, v13 offset:1280
	ds_load_u8 v45, v13 offset:1024
	s_waitcnt lgkmcnt(28)
	v_perm_b32 v12, v17, v14, 0xc0c0004
	v_perm_b32 v13, v16, v15, 0xc0c0004
	s_waitcnt lgkmcnt(26)
	v_perm_b32 v14, v18, v19, 0xc0c0004
	s_waitcnt lgkmcnt(24)
	v_perm_b32 v15, v20, v21, 0xc0c0004
	s_waitcnt lgkmcnt(20)
	v_perm_b32 v16, v25, v22, 0xc0c0004
	v_perm_b32 v17, v24, v23, 0xc0c0004
	s_waitcnt lgkmcnt(16)
	v_perm_b32 v18, v29, v26, 0xc0c0004
	v_perm_b32 v19, v28, v27, 0xc0c0004
	v_lshl_or_b32 v13, v13, 16, v12
	v_lshl_or_b32 v12, v15, 16, v14
	v_lshl_or_b32 v15, v17, 16, v16
	s_waitcnt lgkmcnt(12)
	v_perm_b32 v16, v33, v30, 0xc0c0004
	v_lshl_or_b32 v14, v19, 16, v18
	v_perm_b32 v17, v32, v31, 0xc0c0004
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v18, v37, v34, 0xc0c0004
	v_perm_b32 v19, v36, v35, 0xc0c0004
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v20, v41, v38, 0xc0c0004
	v_perm_b32 v21, v40, v39, 0xc0c0004
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v23, v44, v43, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v22, v45, v42, 0xc0c0004
	v_wmma_i32_16x16x16_iu4 v[1:8], v[14:15], v[12:13], v[1:8] neg_lo:[1,1,0]
	v_lshl_or_b32 v13, v17, 16, v16
	v_lshl_or_b32 v12, v19, 16, v18
	v_lshl_or_b32 v15, v21, 16, v20
	v_lshl_or_b32 v14, v23, 16, v22
	s_delay_alu instid0(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[1:8], v[14:15], v[12:13], v[1:8] neg_lo:[1,1,0]
.LBB0_6:                                ; %._crit_edge._crit_edge
	.loc	1 128 22                        ; generate_amdgcn.py:128:22
	v_or_b32_e32 v9, s21, v9
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 127 15                        ; generate_amdgcn.py:127:15
	v_cvt_f32_i32_e32 v24, v2
	.loc	1 128 14                        ; generate_amdgcn.py:128:14
	s_and_b32 s9, s9, 0xffff
	s_mov_b32 s11, 0x31027000
	s_mov_b32 s10, 0x7ffffffe
	v_lshlrev_b32_e32 v9, 1, v9
	.loc	1 99 32                         ; generate_amdgcn.py:99:32
	v_bfe_u32 v12, v0, 4, 1
	.loc	1 127 15                        ; generate_amdgcn.py:127:15
	v_cvt_f32_i32_e32 v6, v6
	.loc	1 129 14                        ; generate_amdgcn.py:129:14
	s_and_b32 s1, s1, 0xffff
	s_mov_b32 s2, s10
	.loc	1 128 14                        ; generate_amdgcn.py:128:14
	buffer_load_u16 v9, v9, s[8:11], 0 offen
	.loc	1 129 22                        ; generate_amdgcn.py:129:22
	v_or3_b32 v11, v12, v11, s20
	.loc	1 129 14 is_stmt 0              ; generate_amdgcn.py:129:14
	s_mov_b32 s3, s11
	.loc	1 130 9 is_stmt 1               ; generate_amdgcn.py:130:9
	v_bfe_i32 v21, v0, 3, 1
	.loc	1 127 15                        ; generate_amdgcn.py:127:15
	v_cvt_f32_i32_e32 v23, v1
	.loc	1 98 32                         ; generate_amdgcn.py:98:32
	v_lshrrev_b32_e32 v20, 7, v0
	.loc	1 127 15                        ; generate_amdgcn.py:127:15
	v_cvt_f32_i32_e32 v8, v8
	v_cvt_f32_i32_e32 v4, v4
	v_cvt_f32_i32_e32 v5, v5
	v_cvt_f32_i32_e32 v7, v7
	.loc	1 192 23                        ; generate_amdgcn.py:192:23
	v_mul_lo_u32 v2, s17, v20
	.loc	1 127 15                        ; generate_amdgcn.py:127:15
	v_cvt_f32_i32_e32 v20, v3
	.loc	1 128 14                        ; generate_amdgcn.py:128:14
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v9, 16, v9
	.loc	1 129 22                        ; generate_amdgcn.py:129:22
	v_lshlrev_b32_e32 v11, 1, v11
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 129 14 is_stmt 0              ; generate_amdgcn.py:129:14
	v_or_b32_e32 v12, 4, v11
	v_or_b32_e32 v13, 8, v11
	v_or_b32_e32 v14, 12, v11
	v_or_b32_e32 v15, 16, v11
	v_or_b32_e32 v16, 20, v11
	v_or_b32_e32 v17, 24, v11
	v_or_b32_e32 v18, 28, v11
	s_clause 0x7
	buffer_load_u16 v11, v11, s[0:3], 0 offen
	buffer_load_u16 v12, v12, s[0:3], 0 offen
	buffer_load_u16 v13, v13, s[0:3], 0 offen
	buffer_load_u16 v14, v14, s[0:3], 0 offen
	buffer_load_u16 v15, v15, s[0:3], 0 offen
	buffer_load_u16 v16, v16, s[0:3], 0 offen
	buffer_load_u16 v17, v17, s[0:3], 0 offen
	buffer_load_u16 v18, v18, s[0:3], 0 offen
	.loc	1 192 23 is_stmt 1              ; generate_amdgcn.py:192:23
	s_mul_i32 s0, s21, s17
	.loc	1 130 9                         ; generate_amdgcn.py:130:9
	s_waitcnt lgkmcnt(0)
	.loc	1 192 23                        ; generate_amdgcn.py:192:23
	s_add_i32 s0, s0, s20
	.loc	1 130 9                         ; generate_amdgcn.py:130:9
	s_barrier
	.loc	1 129 14                        ; generate_amdgcn.py:129:14
	s_waitcnt vmcnt(7)
	v_lshlrev_b32_e32 v11, 16, v11
	s_waitcnt vmcnt(5)
	v_lshlrev_b32_e32 v13, 16, v13
	s_waitcnt vmcnt(3)
	v_lshlrev_b32_e32 v15, 16, v15
	s_waitcnt vmcnt(1)
	v_lshlrev_b32_e32 v17, 16, v17
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v18, 16, v18
	v_lshlrev_b32_e32 v16, 16, v16
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 130 16                        ; generate_amdgcn.py:130:16
	v_dual_mul_f32 v16, v9, v16 :: v_dual_and_b32 v1, 0x1040, v21
	.loc	1 130 9 is_stmt 0               ; generate_amdgcn.py:130:9
	v_mul_f32_e32 v6, v16, v6
	.loc	1 130 16                        ; generate_amdgcn.py:130:16
	v_dual_mul_f32 v11, v9, v11 :: v_dual_and_b32 v22, 7, v0
	v_dual_mul_f32 v13, v9, v13 :: v_dual_lshlrev_b32 v10, 1, v10
	v_dual_mul_f32 v17, v9, v17 :: v_dual_lshlrev_b32 v14, 16, v14
	.loc	1 99 32 is_stmt 1               ; generate_amdgcn.py:99:32
	v_and_b32_e32 v19, 0x7f, v0
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 130 9                         ; generate_amdgcn.py:130:9
	v_lshl_or_b32 v10, v22, 2, v10
	.loc	1 130 16 is_stmt 0              ; generate_amdgcn.py:130:16
	v_dual_mul_f32 v15, v9, v15 :: v_dual_lshlrev_b32 v12, 16, v12
	v_dual_mul_f32 v14, v9, v14 :: v_dual_mul_f32 v11, v11, v23
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 130 9                         ; generate_amdgcn.py:130:9
	v_xor_b32_e32 v3, v10, v1
	.loc	1 192 23 is_stmt 1              ; generate_amdgcn.py:192:23
	v_add3_u32 v1, s0, v19, v2
	.loc	1 130 16                        ; generate_amdgcn.py:130:16
	v_mul_f32_e32 v12, v9, v12
	v_mul_f32_e32 v9, v9, v18
	.loc	1 130 9 is_stmt 0               ; generate_amdgcn.py:130:9
	v_mul_f32_e32 v13, v13, v20
	v_lshl_or_b32 v10, v22, 9, v3
	.loc	1 192 9 is_stmt 1               ; generate_amdgcn.py:192:9
	v_ashrrev_i32_e32 v2, 31, v1
	.loc	1 130 9                         ; generate_amdgcn.py:130:9
	v_mul_f32_e32 v12, v12, v24
	v_dual_mul_f32 v4, v14, v4 :: v_dual_mul_f32 v5, v15, v5
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_add_nc_u32_e32 v19, 0, v10
	.loc	1 192 9                         ; generate_amdgcn.py:192:9
	v_lshlrev_b64 v[2:3], 2, v[1:2]
	.loc	1 130 9                         ; generate_amdgcn.py:130:9
	v_xad_u32 v21, v10, 4, 0
	v_xad_u32 v22, v10, 8, 0
	v_xad_u32 v25, v10, 12, 0
	v_xad_u32 v26, v10, 16, 0
	v_xad_u32 v27, v10, 20, 0
	.loc	1 192 9                         ; generate_amdgcn.py:192:9
	v_add_co_u32 v2, vcc_lo, s18, v2
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v3, null, s19, v3, vcc_lo
	.loc	1 130 9                         ; generate_amdgcn.py:130:9
	v_xad_u32 v28, v10, 24, 0
	v_xad_u32 v10, v10, 28, 0
	v_mul_f32_e32 v7, v17, v7
	v_mul_f32_e32 v8, v9, v8
	ds_store_b32 v19, v11
	ds_store_b32 v21, v12
	ds_store_b32 v22, v13
	ds_store_b32 v25, v4
	ds_store_b32 v26, v5
	ds_store_b32 v27, v6
	ds_store_b32 v28, v7
	ds_store_b32 v10, v8
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 192 9                         ; generate_amdgcn.py:192:9
	global_load_b32 v5, v[2:3], off
	.loc	1 130 9                         ; generate_amdgcn.py:130:9
	v_lshlrev_b32_e32 v4, 1, v0
	.loc	1 98 32                         ; generate_amdgcn.py:98:32
	v_bfe_i32 v6, v0, 7, 1
	.loc	1 130 9                         ; generate_amdgcn.py:130:9
	v_lshlrev_b32_e32 v7, 2, v0
	v_lshlrev_b32_e32 v0, 5, v0
	s_mov_b32 s0, 0
	v_and_b32_e32 v4, 28, v4
	v_and_b32_e32 v6, 0x204, v6
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_or_b32 v4, 0x1c0, v7, v4
	v_xor_b32_e32 v4, v4, v6
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_or_b32 v0, v0, 32, v4
	v_add_nc_u32_e32 v4, 0, v0
	v_xad_u32 v6, 0x408, v0, 0
	v_xad_u32 v7, 0x810, v0, 0
	v_xad_u32 v8, 0xc18, v0, 0
	v_xad_u32 v13, 0x1040, v0, 0
	v_xad_u32 v14, 0x1448, v0, 0
	v_xad_u32 v15, 0x1850, v0, 0
	v_xad_u32 v16, 0x1c58, v0, 0
	ds_load_b32 v12, v4
	ds_load_b32 v11, v6
	ds_load_b32 v10, v7
	ds_load_b32 v9, v8
	ds_load_b32 v8, v13
	ds_load_b32 v7, v14
	ds_load_b32 v0, v15
	ds_load_b32 v6, v16
.LBB0_7:                                ; %atomicrmw.start38
                                        ; =>This Inner Loop Header: Depth=1
	.loc	1 192 9                         ; generate_amdgcn.py:192:9
	s_waitcnt vmcnt(0) lgkmcnt(7)
	v_add_f32_e32 v4, v5, v12
	global_atomic_cmpswap_b32 v4, v[2:3], v[4:5], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v4, v5
	v_mov_b32_e32 v5, v4
	s_or_b32 s0, vcc_lo, s0
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s0
	s_cbranch_execnz .LBB0_7
; %bb.8:                                ; %atomicrmw.end37
	.loc	1 0 9 is_stmt 0                 ; generate_amdgcn.py:0:9
	s_or_b32 exec_lo, exec_lo, s0
	.loc	1 192 23                        ; generate_amdgcn.py:192:23
	v_lshl_add_u32 v2, s17, 1, v1
	s_mov_b32 s0, 0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 192 9                         ; generate_amdgcn.py:192:9
	v_ashrrev_i32_e32 v3, 31, v2
	v_lshlrev_b64 v[2:3], 2, v[2:3]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add_co_u32 v2, vcc_lo, s18, v2
	v_add_co_ci_u32_e64 v3, null, s19, v3, vcc_lo
	global_load_b32 v5, v[2:3], off
.LBB0_9:                                ; %atomicrmw.start32
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0) lgkmcnt(6)
	v_add_f32_e32 v4, v5, v11
	global_atomic_cmpswap_b32 v4, v[2:3], v[4:5], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v4, v5
	v_mov_b32_e32 v5, v4
	s_or_b32 s0, vcc_lo, s0
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s0
	s_cbranch_execnz .LBB0_9
; %bb.10:                               ; %atomicrmw.end31
	.loc	1 0 9                           ; generate_amdgcn.py:0:9
	s_or_b32 exec_lo, exec_lo, s0
	.loc	1 192 23                        ; generate_amdgcn.py:192:23
	v_lshl_add_u32 v2, s17, 2, v1
	s_mov_b32 s0, 0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 192 9                         ; generate_amdgcn.py:192:9
	v_ashrrev_i32_e32 v3, 31, v2
	v_lshlrev_b64 v[2:3], 2, v[2:3]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add_co_u32 v2, vcc_lo, s18, v2
	v_add_co_ci_u32_e64 v3, null, s19, v3, vcc_lo
	global_load_b32 v5, v[2:3], off
.LBB0_11:                               ; %atomicrmw.start26
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0) lgkmcnt(5)
	v_add_f32_e32 v4, v5, v10
	global_atomic_cmpswap_b32 v4, v[2:3], v[4:5], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v4, v5
	v_mov_b32_e32 v5, v4
	s_or_b32 s0, vcc_lo, s0
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s0
	s_cbranch_execnz .LBB0_11
; %bb.12:                               ; %atomicrmw.end25
	.loc	1 0 9                           ; generate_amdgcn.py:0:9
	s_or_b32 exec_lo, exec_lo, s0
	.loc	1 192 23                        ; generate_amdgcn.py:192:23
	v_mad_u64_u32 v[2:3], null, s17, 6, v[1:2]
	s_mov_b32 s0, 0
	.loc	1 192 9                         ; generate_amdgcn.py:192:9
	v_ashrrev_i32_e32 v3, 31, v2
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[2:3], 2, v[2:3]
	v_add_co_u32 v2, vcc_lo, s18, v2
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v3, null, s19, v3, vcc_lo
	global_load_b32 v5, v[2:3], off
.LBB0_13:                               ; %atomicrmw.start20
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0) lgkmcnt(4)
	v_add_f32_e32 v4, v5, v9
	global_atomic_cmpswap_b32 v4, v[2:3], v[4:5], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v4, v5
	v_mov_b32_e32 v5, v4
	s_or_b32 s0, vcc_lo, s0
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s0
	s_cbranch_execnz .LBB0_13
; %bb.14:                               ; %atomicrmw.end19
	.loc	1 0 9                           ; generate_amdgcn.py:0:9
	s_or_b32 exec_lo, exec_lo, s0
	.loc	1 192 23                        ; generate_amdgcn.py:192:23
	v_lshl_add_u32 v2, s17, 3, v1
	s_mov_b32 s0, 0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 192 9                         ; generate_amdgcn.py:192:9
	v_ashrrev_i32_e32 v3, 31, v2
	v_lshlrev_b64 v[2:3], 2, v[2:3]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add_co_u32 v2, vcc_lo, s18, v2
	v_add_co_ci_u32_e64 v3, null, s19, v3, vcc_lo
	global_load_b32 v5, v[2:3], off
.LBB0_15:                               ; %atomicrmw.start14
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0) lgkmcnt(3)
	v_add_f32_e32 v4, v5, v8
	global_atomic_cmpswap_b32 v4, v[2:3], v[4:5], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v4, v5
	v_mov_b32_e32 v5, v4
	s_or_b32 s0, vcc_lo, s0
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s0
	s_cbranch_execnz .LBB0_15
; %bb.16:                               ; %atomicrmw.end13
	.loc	1 0 9                           ; generate_amdgcn.py:0:9
	s_or_b32 exec_lo, exec_lo, s0
	.loc	1 192 23                        ; generate_amdgcn.py:192:23
	v_mad_u64_u32 v[2:3], null, s17, 10, v[1:2]
	s_mov_b32 s0, 0
	.loc	1 192 9                         ; generate_amdgcn.py:192:9
	v_ashrrev_i32_e32 v3, 31, v2
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[2:3], 2, v[2:3]
	v_add_co_u32 v2, vcc_lo, s18, v2
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v3, null, s19, v3, vcc_lo
	global_load_b32 v5, v[2:3], off
.LBB0_17:                               ; %atomicrmw.start8
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0) lgkmcnt(2)
	v_add_f32_e32 v4, v5, v7
	global_atomic_cmpswap_b32 v4, v[2:3], v[4:5], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v4, v5
	v_mov_b32_e32 v5, v4
	s_or_b32 s0, vcc_lo, s0
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s0
	s_cbranch_execnz .LBB0_17
; %bb.18:                               ; %atomicrmw.end7
	.loc	1 0 9                           ; generate_amdgcn.py:0:9
	s_or_b32 exec_lo, exec_lo, s0
	.loc	1 192 23                        ; generate_amdgcn.py:192:23
	v_mad_u64_u32 v[2:3], null, s17, 12, v[1:2]
	s_mov_b32 s0, 0
	.loc	1 192 9                         ; generate_amdgcn.py:192:9
	v_ashrrev_i32_e32 v3, 31, v2
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[2:3], 2, v[2:3]
	v_add_co_u32 v2, vcc_lo, s18, v2
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v3, null, s19, v3, vcc_lo
	global_load_b32 v5, v[2:3], off
.LBB0_19:                               ; %atomicrmw.start2
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0) lgkmcnt(1)
	v_add_f32_e32 v4, v5, v0
	global_atomic_cmpswap_b32 v4, v[2:3], v[4:5], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v4, v5
	v_mov_b32_e32 v5, v4
	s_or_b32 s0, vcc_lo, s0
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s0
	s_cbranch_execnz .LBB0_19
; %bb.20:                               ; %atomicrmw.end1
	.loc	1 0 9                           ; generate_amdgcn.py:0:9
	s_or_b32 exec_lo, exec_lo, s0
	.loc	1 192 23                        ; generate_amdgcn.py:192:23
	v_mad_u64_u32 v[0:1], null, s17, 14, v[1:2]
	s_mov_b32 s0, 0
	.loc	1 192 9                         ; generate_amdgcn.py:192:9
	v_ashrrev_i32_e32 v1, 31, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[0:1], 2, v[0:1]
	v_add_co_u32 v0, vcc_lo, s18, v0
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v1, null, s19, v1, vcc_lo
	global_load_b32 v3, v[0:1], off
.LBB0_21:                               ; %atomicrmw.start
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0) lgkmcnt(0)
	v_add_f32_e32 v2, v3, v6
	global_atomic_cmpswap_b32 v2, v[0:1], v[2:3], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v2, v3
	v_mov_b32_e32 v3, v2
	s_or_b32 s0, vcc_lo, s0
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s0
	s_cbranch_execnz .LBB0_21
; %bb.22:                               ; %atomicrmw.end
	.loc	1 79 1 is_stmt 1                ; generate_amdgcn.py:79:1
	s_endpgm
.Ltmp16:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_int4xint4_tn_pc_none_bm16_bn128_bk32_gm4_w8_s2_weu2_sk8_maskk
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
		.amdhsa_next_free_sgpr 28
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
		.amdhsa_inst_pref_size 35
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
	.size	amd_strix_halo_gfx1151_int4xint4_tn_pc_none_bm16_bn128_bk32_gm4_w8_s2_weu2_sk8_maskk, .Lfunc_end0-amd_strix_halo_gfx1151_int4xint4_tn_pc_none_bm16_bn128_bk32_gm4_w8_s2_weu2_sk8_maskk
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_int4xint4_tn_pc_none_bm16_bn128_bk32_gm4_w8_s2_weu2_sk8_maskk.num_vgpr, 53
	.set amd_strix_halo_gfx1151_int4xint4_tn_pc_none_bm16_bn128_bk32_gm4_w8_s2_weu2_sk8_maskk.num_agpr, 0
	.set amd_strix_halo_gfx1151_int4xint4_tn_pc_none_bm16_bn128_bk32_gm4_w8_s2_weu2_sk8_maskk.numbered_sgpr, 28
	.set amd_strix_halo_gfx1151_int4xint4_tn_pc_none_bm16_bn128_bk32_gm4_w8_s2_weu2_sk8_maskk.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_int4xint4_tn_pc_none_bm16_bn128_bk32_gm4_w8_s2_weu2_sk8_maskk.private_seg_size, 0
	.set amd_strix_halo_gfx1151_int4xint4_tn_pc_none_bm16_bn128_bk32_gm4_w8_s2_weu2_sk8_maskk.uses_vcc, 1
	.set amd_strix_halo_gfx1151_int4xint4_tn_pc_none_bm16_bn128_bk32_gm4_w8_s2_weu2_sk8_maskk.uses_flat_scratch, 0
	.set amd_strix_halo_gfx1151_int4xint4_tn_pc_none_bm16_bn128_bk32_gm4_w8_s2_weu2_sk8_maskk.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_int4xint4_tn_pc_none_bm16_bn128_bk32_gm4_w8_s2_weu2_sk8_maskk.has_recursion, 0
	.set amd_strix_halo_gfx1151_int4xint4_tn_pc_none_bm16_bn128_bk32_gm4_w8_s2_weu2_sk8_maskk.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 4364
; TotalNumSgprs: 30
; NumVgprs: 53
; ScratchSize: 0
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 30
; NumSGPRsForWavesPerEU: 30
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
	.byte	0                               ; EOM(3)
	.section	.debug_info,"",@progbits
.Lcu_begin0:
	.long	.Ldebug_info_end0-.Ldebug_info_start0 ; Length of Unit
.Ldebug_info_start0:
	.short	4                               ; DWARF version number
	.long	.debug_abbrev                   ; Offset Into Abbrev. Section
	.byte	8                               ; Address Size (in bytes)
	.byte	1                               ; Abbrev [1] 0xb:0x5c DW_TAG_compile_unit
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
	.byte	3                               ; Abbrev [3] 0x30:0x36 DW_TAG_subprogram
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
	.byte	4                               ; Abbrev [4] 0x59:0xc DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges2                 ; DW_AT_ranges
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
	.asciz	"amd_strix_halo_gfx1151_int4xint4_tn_pc_none_bm16_bn128_bk32_gm4_w8_s2_weu2_sk8_maskk"             ; string offset=75 ; amd_strix_halo_gfx1151_int4xint4_tn_pc_none_bm16_bn128_bk32_gm4_w8_s2_weu2_sk8_maskk
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
    .name:           amd_strix_halo_gfx1151_int4xint4_tn_pc_none_bm16_bn128_bk32_gm4_w8_s2_weu2_sk8_maskk
    .private_segment_fixed_size: 0
    .sgpr_count:     30
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_int4xint4_tn_pc_none_bm16_bn128_bk32_gm4_w8_s2_weu2_sk8_maskk.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     53
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
