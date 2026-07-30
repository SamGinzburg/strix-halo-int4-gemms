	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_int4xint4_nt_pc_none_bm32_bn128_bk32_gm4_w8_s2_weu2_sk8_maskk               ; -- Begin function amd_strix_halo_gfx1151_int4xint4_nt_pc_none_bm32_bn128_bk32_gm4_w8_s2_weu2_sk8_maskk
	.p2align	8
	.type	amd_strix_halo_gfx1151_int4xint4_nt_pc_none_bm32_bn128_bk32_gm4_w8_s2_weu2_sk8_maskk,@function
amd_strix_halo_gfx1151_int4xint4_nt_pc_none_bm32_bn128_bk32_gm4_w8_s2_weu2_sk8_maskk:                      ; @amd_strix_halo_gfx1151_int4xint4_nt_pc_none_bm32_bn128_bk32_gm4_w8_s2_weu2_sk8_maskk
.Lfunc_begin0:
	.file	1 "<repo>/scripts" "generate_amdgcn.py"
	.loc	1 80 0                          ; generate_amdgcn.py:80:0
	.cfi_sections .debug_frame
	.cfi_startproc
; %bb.0:
	s_clause 0x1
	s_load_b64 s[22:23], s[0:1], 0x30
	s_load_b32 s13, s[0:1], 0x38
.Ltmp0:
	.loc	1 90 16 prologue_end            ; generate_amdgcn.py:90:16
	s_abs_i32 s6, s2
	.loc	1 99 32                         ; generate_amdgcn.py:99:32
	v_lshrrev_b32_e32 v19, 3, v0
	.loc	1 101 14                        ; generate_amdgcn.py:101:14
	v_and_b32_e32 v24, 7, v0
	v_and_b32_e32 v21, 1, v0
	.loc	1 100 32                        ; generate_amdgcn.py:100:32
	v_lshrrev_b32_e32 v20, 1, v0
	s_load_b64 s[20:21], s[0:1], 0x20
	v_bfe_i32 v13, v0, 4, 1
	.loc	1 101 14                        ; generate_amdgcn.py:101:14
	v_lshlrev_b32_e32 v17, 1, v24
	v_lshlrev_b32_e32 v18, 3, v21
	.loc	1 127 22                        ; generate_amdgcn.py:127:22
	v_bfe_i32 v15, v0, 6, 1
	v_bfe_i32 v25, v0, 3, 1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_and_b32_e32 v26, 0x88, v15
	v_and_b32_e32 v25, 0x88, v25
.Ltmp1:
	.file	2 "<triton>/python/triton/language" "standard.py"
	.loc	2 43 13                         ; standard.py:43:13 @[ generate_amdgcn.py:88:17 ]
	s_waitcnt lgkmcnt(0)
	s_add_i32 s4, s23, 0x7f
.Ltmp2:
	.loc	2 43 13 is_stmt 0               ; standard.py:43:13 @[ generate_amdgcn.py:87:17 ]
	s_add_i32 s7, s22, 31
.Ltmp3:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:88:17 ]
	s_ashr_i32 s5, s4, 31
.Ltmp4:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:87:17 ]
	s_ashr_i32 s9, s7, 31
.Ltmp5:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:88:17 ]
	s_lshr_b32 s5, s5, 25
.Ltmp6:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:87:17 ]
	s_lshr_b32 s9, s9, 27
.Ltmp7:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:88:17 ]
	s_add_i32 s4, s4, s5
.Ltmp8:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:87:17 ]
	s_add_i32 s7, s7, s9
.Ltmp9:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:88:17 ]
	s_ashr_i32 s4, s4, 7
.Ltmp10:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:87:17 ]
	s_ashr_i32 s7, s7, 5
.Ltmp11:
	.loc	1 89 24 is_stmt 1               ; generate_amdgcn.py:89:24
	s_lshl_b32 s12, s4, 2
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	.loc	1 90 16                         ; generate_amdgcn.py:90:16
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
	.loc	1 91 19                         ; generate_amdgcn.py:91:19
	s_lshl_b32 s15, s14, 2
	.loc	1 93 29                         ; generate_amdgcn.py:93:29
	s_mul_i32 s14, s14, s12
	.loc	1 92 31                         ; generate_amdgcn.py:92:31
	s_sub_i32 s4, s7, s15
	.loc	1 93 29                         ; generate_amdgcn.py:93:29
	s_sub_i32 s2, s2, s14
	.loc	1 92 20                         ; generate_amdgcn.py:92:20
	s_min_i32 s16, s4, 4
	.loc	1 94 13                         ; generate_amdgcn.py:94:13
	s_abs_i32 s14, s2
	s_abs_i32 s17, s16
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_2)
	s_cvt_f32_u32 s4, s17
	s_sub_i32 s19, 0, s17
	v_rcp_iflag_f32_e32 v1, s4
	s_load_b256 s[4:11], s[0:1], 0x0
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_3)
	v_readfirstlane_b32 s18, v1
	s_mul_f32 s18, s18, 0x4f7ffffe
	s_cvt_u32_f32 s18, s18
	s_waitcnt lgkmcnt(0)
	s_mov_b64 s[24:25], s[6:7]
	s_xor_b32 s7, s2, s16
	s_mul_i32 s19, s19, s18
	s_ashr_i32 s29, s7, 31
	s_mul_hi_u32 s12, s18, s19
	s_mov_b32 s7, 0x31027000
	s_add_i32 s18, s18, s12
	.loc	1 129 22                        ; generate_amdgcn.py:129:22
	s_mov_b32 s27, s7
	.loc	1 94 13                         ; generate_amdgcn.py:94:13
	s_mul_hi_u32 s6, s14, s18
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_mul_i32 s12, s6, s17
	s_sub_i32 s12, s14, s12
	s_add_i32 s14, s6, 1
	s_sub_i32 s18, s12, s17
	s_cmp_ge_u32 s12, s17
	s_cselect_b32 s14, s14, s6
	s_cselect_b32 s6, s18, s12
	s_add_i32 s12, s14, 1
	s_cmp_ge_u32 s6, s17
	s_mov_b32 s6, 0x7ffffffe
	s_cselect_b32 s12, s12, s14
	.loc	1 96 22                         ; generate_amdgcn.py:96:22
	s_lshr_b32 s14, s13, 31
	.loc	1 94 13                         ; generate_amdgcn.py:94:13
	s_xor_b32 s33, s12, s29
	.loc	1 108 23                        ; generate_amdgcn.py:108:23
	s_lshl_b32 s30, s3, 4
	.loc	1 96 22                         ; generate_amdgcn.py:96:22
	s_add_i32 s3, s13, s14
	.loc	1 94 13                         ; generate_amdgcn.py:94:13
	s_sub_i32 s12, s33, s29
	.loc	1 96 22                         ; generate_amdgcn.py:96:22
	s_ashr_i32 s31, s3, 1
	.loc	1 93 28                         ; generate_amdgcn.py:93:28
	s_mul_i32 s14, s12, s16
	.loc	1 127 30                        ; generate_amdgcn.py:127:30
	v_mul_lo_u32 v4, s31, v19
	.loc	1 93 28                         ; generate_amdgcn.py:93:28
	s_sub_i32 s2, s2, s14
	.loc	1 108 18                        ; generate_amdgcn.py:108:18
	v_or_b32_e32 v3, s30, v17
	.loc	1 93 13                         ; generate_amdgcn.py:93:13
	s_add_i32 s2, s2, s15
	.loc	1 129 30                        ; generate_amdgcn.py:129:30
	v_mad_u64_u32 v[1:2], null, s31, v20, v[18:19]
	.loc	1 99 14                         ; generate_amdgcn.py:99:14
	s_lshl_b32 s28, s2, 5
	.loc	1 108 18                        ; generate_amdgcn.py:108:18
	v_or_b32_e32 v5, s30, v18
	.loc	1 127 30                        ; generate_amdgcn.py:127:30
	s_mul_i32 s2, s28, s31
	.loc	1 100 14                        ; generate_amdgcn.py:100:14
	s_lshl_b32 s22, s12, 7
	.loc	1 127 30                        ; generate_amdgcn.py:127:30
	v_add3_u32 v30, v4, v17, s2
	.loc	1 109 23                        ; generate_amdgcn.py:109:23
	v_cmp_gt_i32_e32 vcc_lo, s31, v3
	.loc	1 129 30                        ; generate_amdgcn.py:129:30
	s_mul_i32 s3, s22, s31
	.loc	1 106 9                         ; generate_amdgcn.py:106:9
	s_cmp_gt_i32 s13, 1
	.loc	1 110 23                        ; generate_amdgcn.py:110:23
	v_cmp_gt_i32_e64 s2, s31, v5
	.loc	1 127 30                        ; generate_amdgcn.py:127:30
	v_add_nc_u32_e32 v2, s30, v30
	.loc	1 129 30                        ; generate_amdgcn.py:129:30
	v_add3_u32 v31, s30, s3, v1
	.loc	1 106 9                         ; generate_amdgcn.py:106:9
	s_cselect_b32 s3, -1, 0
	.loc	1 127 22                        ; generate_amdgcn.py:127:22
	s_and_b32 s5, s5, 0xffff
	.loc	1 106 9                         ; generate_amdgcn.py:106:9
	s_and_b32 vcc_lo, s3, vcc_lo
	.loc	1 129 22                        ; generate_amdgcn.py:129:22
	s_mov_b32 s26, s6
	.loc	1 127 22                        ; generate_amdgcn.py:127:22
	v_cndmask_b32_e32 v1, 0x80000000, v2, vcc_lo
	.loc	1 106 9                         ; generate_amdgcn.py:106:9
	s_and_b32 vcc_lo, s3, s2
	.loc	1 129 22                        ; generate_amdgcn.py:129:22
	s_and_b32 s25, s25, 0xffff
	v_cndmask_b32_e32 v2, 0x80000000, v31, vcc_lo
	.loc	1 127 22                        ; generate_amdgcn.py:127:22
	buffer_load_u16 v29, v1, s[4:7], 0 offen
	.loc	1 129 22                        ; generate_amdgcn.py:129:22
	buffer_load_b64 v[32:33], v2, s[24:27], 0 offen
	v_dual_mov_b32 v1, 0 :: v_dual_lshlrev_b32 v14, 1, v0
	v_lshlrev_b32_e32 v22, 3, v0
	v_and_b32_e32 v28, 0x88, v13
	s_delay_alu instid0(VALU_DEP_3)
	v_dual_mov_b32 v4, v1 :: v_dual_and_b32 v23, 0xe0, v0
	v_mov_b32_e32 v5, v1
	v_mov_b32_e32 v7, v1
	v_dual_mov_b32 v6, v1 :: v_dual_and_b32 v27, 0x778, v22
	v_dual_mov_b32 v9, v1 :: v_dual_and_b32 v16, 0x17e, v14
	v_mov_b32_e32 v11, v1
	v_mov_b32_e32 v13, v1
	s_delay_alu instid0(VALU_DEP_4)
	v_xor_b32_e32 v28, v28, v27
	v_mov_b32_e32 v2, v1
	.loc	1 127 22                        ; generate_amdgcn.py:127:22
	v_xor_b32_e32 v26, v26, v16
	v_mov_b32_e32 v3, v1
	v_mov_b32_e32 v8, v1
	v_mov_b32_e32 v10, v1
	v_mov_b32_e32 v12, v1
	v_mov_b32_e32 v14, v1
	v_dual_mov_b32 v15, v1 :: v_dual_lshlrev_b32 v24, 4, v24
	v_dual_mov_b32 v16, v1 :: v_dual_add_nc_u32 v27, 0, v26
	.loc	1 129 22                        ; generate_amdgcn.py:129:22
	v_add_nc_u32_e32 v28, 0, v28
	v_lshlrev_b32_e32 v26, 3, v23
	s_mov_b32 s12, 0
	.loc	1 106 9                         ; generate_amdgcn.py:106:9
	s_cmpk_lt_i32 s13, 0x102
	.loc	1 127 22                        ; generate_amdgcn.py:127:22
	s_waitcnt vmcnt(1)
	ds_store_b16 v27, v29 offset:2048
	.loc	1 129 22                        ; generate_amdgcn.py:129:22
	s_waitcnt vmcnt(0)
	ds_store_b64 v28, v[32:33]
	.loc	1 106 9                         ; generate_amdgcn.py:106:9
	s_cbranch_scc1 .LBB0_4
; %bb.1:                                ; %.lr.ph
	v_sub_nc_u32_e32 v29, s31, v17
	.loc	1 108 18                        ; generate_amdgcn.py:108:18
	s_add_i32 s0, s30, 0x80
	.loc	1 132 23                        ; generate_amdgcn.py:132:23
	s_mov_b32 s13, s12
	s_mov_b32 s14, s12
	s_mov_b32 s15, s12
	.loc	1 109 23                        ; generate_amdgcn.py:109:23
	v_cmp_lt_i32_e32 vcc_lo, s0, v29
	.loc	1 132 23                        ; generate_amdgcn.py:132:23
	s_mov_b32 s16, s12
	s_mov_b32 s17, s12
	s_mov_b32 s18, s12
	s_mov_b32 s19, s12
	.loc	1 127 30                        ; generate_amdgcn.py:127:30
	v_add_nc_u32_e32 v1, s0, v30
	.loc	1 106 9                         ; generate_amdgcn.py:106:9
	v_sub_nc_u32_e32 v30, s31, v18
	.loc	1 132 23                        ; generate_amdgcn.py:132:23
	v_dual_mov_b32 v9, s12 :: v_dual_add_nc_u32 v2, 0x80, v31
	v_mov_b32_e32 v10, s13
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 127 22                        ; generate_amdgcn.py:127:22
	v_cndmask_b32_e32 v1, 0x80000000, v1, vcc_lo
	.loc	1 110 23                        ; generate_amdgcn.py:110:23
	v_cmp_lt_i32_e32 vcc_lo, s0, v30
	.loc	1 129 22                        ; generate_amdgcn.py:129:22
	s_mov_b32 s26, s6
	s_mov_b32 s27, s7
	.loc	1 132 23                        ; generate_amdgcn.py:132:23
	v_dual_mov_b32 v15, s18 :: v_dual_mov_b32 v12, s15
	.loc	1 129 22                        ; generate_amdgcn.py:129:22
	v_cndmask_b32_e32 v2, 0x80000000, v2, vcc_lo
	.loc	1 127 22                        ; generate_amdgcn.py:127:22
	buffer_load_u16 v49, v1, s[4:7], 0 offen
	s_waitcnt lgkmcnt(0)
	s_barrier
	v_or_b32_e32 v1, v25, v24
	.loc	1 129 22                        ; generate_amdgcn.py:129:22
	buffer_load_b64 v[43:44], v2, s[24:27], 0 offen
	v_or3_b32 v2, v24, v26, v25
	.loc	1 132 23                        ; generate_amdgcn.py:132:23
	v_mov_b32_e32 v16, s19
	v_dual_mov_b32 v14, s17 :: v_dual_add_nc_u32 v3, 0, v1
	v_xor_b32_e32 v1, 8, v1
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_xor_b32_e32 v4, 8, v2
	v_dual_mov_b32 v11, s14 :: v_dual_add_nc_u32 v32, 0, v2
	.loc	1 127 22                        ; generate_amdgcn.py:127:22
	v_add_nc_u32_e32 v31, 0x800, v3
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_add_nc_u32_e32 v1, 0, v1
	v_add_nc_u32_e32 v33, 0, v4
	.loc	1 132 23                        ; generate_amdgcn.py:132:23
	v_mov_b32_e32 v13, s16
.Ltmp12:
	.loc	2 43 13                         ; standard.py:43:13 @[ generate_amdgcn.py:106:32 ]
	s_add_i32 s0, s31, 0x7f
.Ltmp13:
	.loc	1 127 22                        ; generate_amdgcn.py:127:22
	ds_load_2addr_b64 v[35:38], v31 offset1:32
	v_add_nc_u32_e32 v34, 0x800, v1
	.loc	1 129 22                        ; generate_amdgcn.py:129:22
	ds_load_b64 v[45:46], v32
	ds_load_b64 v[47:48], v33
	.loc	1 127 22                        ; generate_amdgcn.py:127:22
	ds_load_2addr_b64 v[39:42], v34 offset1:32
.Ltmp14:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:106:32 ]
	s_lshr_b32 s0, s0, 7
.Ltmp15:
	.loc	1 127 22                        ; generate_amdgcn.py:127:22
	s_waitcnt lgkmcnt(0)
	.loc	1 106 9                         ; generate_amdgcn.py:106:9
	s_max_u32 s0, s0, 2
	.loc	1 127 22                        ; generate_amdgcn.py:127:22
	s_barrier
	.loc	1 106 9                         ; generate_amdgcn.py:106:9
	s_cmp_eq_u32 s0, 2
	.loc	1 127 22                        ; generate_amdgcn.py:127:22
	s_waitcnt vmcnt(1)
	ds_store_b16 v27, v49 offset:2048
	.loc	1 129 22                        ; generate_amdgcn.py:129:22
	s_waitcnt vmcnt(0)
	ds_store_b64 v28, v[43:44]
	.loc	1 132 23                        ; generate_amdgcn.py:132:23
	v_wmma_i32_16x16x16_iu4 v[1:8], v[45:46], v[35:36], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[45:46], v[37:38], v[9:16] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_wmma_i32_16x16x16_iu4 v[1:8], v[47:48], v[39:40], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[47:48], v[41:42], v[9:16] neg_lo:[1,1,0]
	.loc	1 106 9                         ; generate_amdgcn.py:106:9
	s_cbranch_scc1 .LBB0_4
; %bb.2:                                ; %.peel.next
	v_lshl_or_b32 v20, s33, 7, v20
	s_lshl_b32 s1, s29, 7
	v_add_nc_u32_e32 v35, s28, v19
	s_add_i32 s2, s30, 0x100
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_subrev_nc_u32_e32 v20, s1, v20
	s_add_i32 s1, s0, -2
	v_mad_u64_u32 v[18:19], null, s31, v20, v[18:19]
	s_delay_alu instid0(VALU_DEP_1)
	v_mad_u64_u32 v[19:20], null, s31, v35, v[17:18]
	s_set_inst_prefetch_distance 0x1
	.loc	1 0 9 is_stmt 0                 ; :0:9
.Ltmp16:
	.p2align	6
.LBB0_3:                                ; =>This Inner Loop Header: Depth=1
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 127 22 is_stmt 1              ; generate_amdgcn.py:127:22
	v_add_nc_u32_e32 v17, s2, v19
	.loc	1 109 23                        ; generate_amdgcn.py:109:23
	v_cmp_lt_i32_e64 s0, s2, v29
	.loc	1 129 22                        ; generate_amdgcn.py:129:22
	v_add_nc_u32_e32 v20, s2, v18
	.loc	1 110 23                        ; generate_amdgcn.py:110:23
	v_cmp_lt_i32_e32 vcc_lo, s2, v30
	.loc	1 106 9                         ; generate_amdgcn.py:106:9
	s_add_i32 s1, s1, -1
	s_addk_i32 s2, 0x80
	.loc	1 127 22                        ; generate_amdgcn.py:127:22
	v_cndmask_b32_e64 v17, 0x80000000, v17, s0
	.loc	1 106 9                         ; generate_amdgcn.py:106:9
	s_cmp_lg_u32 s1, 0
	.loc	1 129 22                        ; generate_amdgcn.py:129:22
	v_cndmask_b32_e32 v20, 0x80000000, v20, vcc_lo
	.loc	1 127 22                        ; generate_amdgcn.py:127:22
	buffer_load_u16 v17, v17, s[4:7], 0 offen
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 129 22                        ; generate_amdgcn.py:129:22
	buffer_load_b64 v[43:44], v20, s[24:27], 0 offen
	.loc	1 127 22                        ; generate_amdgcn.py:127:22
	ds_load_2addr_b64 v[35:38], v31 offset1:32
	.loc	1 129 22                        ; generate_amdgcn.py:129:22
	ds_load_b64 v[45:46], v32
	.loc	1 127 22                        ; generate_amdgcn.py:127:22
	ds_load_2addr_b64 v[39:42], v34 offset1:32
	.loc	1 129 22                        ; generate_amdgcn.py:129:22
	ds_load_b64 v[47:48], v33
	.loc	1 127 22                        ; generate_amdgcn.py:127:22
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_waitcnt vmcnt(1)
	ds_store_b16 v27, v17 offset:2048
	.loc	1 129 22                        ; generate_amdgcn.py:129:22
	s_waitcnt vmcnt(0)
	ds_store_b64 v28, v[43:44]
	.loc	1 132 23                        ; generate_amdgcn.py:132:23
	v_wmma_i32_16x16x16_iu4 v[1:8], v[45:46], v[35:36], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[45:46], v[37:38], v[9:16] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_wmma_i32_16x16x16_iu4 v[1:8], v[47:48], v[39:40], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[47:48], v[41:42], v[9:16] neg_lo:[1,1,0]
	.loc	1 106 9                         ; generate_amdgcn.py:106:9
	s_cbranch_scc1 .LBB0_3
.LBB0_4:                                ; %._crit_edge
	.loc	1 0 9 is_stmt 0                 ; generate_amdgcn.py:0:9
	s_set_inst_prefetch_distance 0x2
	v_and_b32_e32 v17, 0xfe, v0
	v_and_b32_e32 v18, 16, v0
	.loc	1 132 23 is_stmt 1              ; generate_amdgcn.py:132:23
	s_and_not1_b32 vcc_lo, exec_lo, s3
	.loc	1 127 22                        ; generate_amdgcn.py:127:22
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 132 23                        ; generate_amdgcn.py:132:23
	s_cbranch_vccnz .LBB0_6
; %bb.5:
	.loc	1 127 22                        ; generate_amdgcn.py:127:22
	v_or_b32_e32 v19, v25, v24
	.loc	1 129 22                        ; generate_amdgcn.py:129:22
	v_or3_b32 v24, v24, v26, v25
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 127 22                        ; generate_amdgcn.py:127:22
	v_add_nc_u32_e32 v20, 0, v19
	v_xad_u32 v19, v19, 8, 0
	.loc	1 129 22                        ; generate_amdgcn.py:129:22
	v_add_nc_u32_e32 v28, 0, v24
	v_xad_u32 v29, v24, 8, 0
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 127 22                        ; generate_amdgcn.py:127:22
	v_add_nc_u32_e32 v20, 0x800, v20
	v_add_nc_u32_e32 v30, 0x800, v19
	ds_load_2addr_b64 v[24:27], v20 offset1:32
	.loc	1 129 22                        ; generate_amdgcn.py:129:22
	ds_load_b64 v[19:20], v28
	ds_load_b64 v[32:33], v29
	.loc	1 127 22                        ; generate_amdgcn.py:127:22
	ds_load_2addr_b64 v[28:31], v30 offset1:32
	.loc	1 132 23                        ; generate_amdgcn.py:132:23
	s_waitcnt lgkmcnt(2)
	v_wmma_i32_16x16x16_iu4 v[1:8], v[19:20], v[24:25], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[19:20], v[26:27], v[9:16] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_wmma_i32_16x16x16_iu4 v[1:8], v[32:33], v[28:29], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[32:33], v[30:31], v[9:16] neg_lo:[1,1,0]
.LBB0_6:                                ; %._crit_edge._crit_edge
	.loc	1 142 22                        ; generate_amdgcn.py:142:22
	v_and_or_b32 v19, v0, 15, s28
	.loc	1 100 32                        ; generate_amdgcn.py:100:32
	v_lshrrev_b32_e32 v18, 4, v18
	v_lshrrev_b32_e32 v20, 1, v23
	.loc	1 142 14                        ; generate_amdgcn.py:142:14
	s_and_b32 s1, s9, 0xffff
	s_mov_b32 s3, 0x31027000
	.loc	1 142 22 is_stmt 0              ; generate_amdgcn.py:142:22
	v_lshlrev_b32_e32 v19, 1, v19
	s_mov_b32 s2, 0x7ffffffe
	.loc	1 143 22 is_stmt 1              ; generate_amdgcn.py:143:22
	v_or3_b32 v18, v18, v20, s22
	.loc	1 142 14                        ; generate_amdgcn.py:142:14
	s_mov_b32 s0, s8
	.loc	1 144 9                         ; generate_amdgcn.py:144:9
	v_cmp_eq_u32_e32 vcc_lo, 0, v21
	.loc	1 142 14                        ; generate_amdgcn.py:142:14
	v_or_b32_e32 v20, 32, v19
	.loc	1 99 32                         ; generate_amdgcn.py:99:32
	v_bfe_i32 v31, v0, 7, 1
	.loc	1 141 15                        ; generate_amdgcn.py:141:15
	v_cvt_f32_i32_e32 v34, v6
	v_cvt_f32_i32_e32 v35, v8
	.loc	1 142 14                        ; generate_amdgcn.py:142:14
	s_clause 0x1
	buffer_load_u16 v19, v19, s[0:3], 0 offen
	buffer_load_u16 v20, v20, s[0:3], 0 offen
	.loc	1 144 9                         ; generate_amdgcn.py:144:9
	v_lshlrev_b32_e32 v6, 2, v17
	v_cndmask_b32_e64 v8, 0x440, 0, vcc_lo
	.loc	1 100 32                        ; generate_amdgcn.py:100:32
	v_and_b32_e32 v30, 0x7f, v0
	.loc	1 99 32                         ; generate_amdgcn.py:99:32
	v_lshrrev_b32_e32 v32, 7, v0
	.loc	1 141 15                        ; generate_amdgcn.py:141:15
	v_cvt_f32_i32_e32 v36, v12
	v_cvt_f32_i32_e32 v37, v14
	.loc	1 144 9                         ; generate_amdgcn.py:144:9
	v_and_b32_e32 v0, 14, v0
	v_lshlrev_b32_e32 v12, 6, v21
	v_xor_b32_e32 v6, v8, v6
	v_and_b32_e32 v14, 0x440, v31
	.loc	1 141 15                        ; generate_amdgcn.py:141:15
	v_cvt_f32_i32_e32 v33, v4
	v_cvt_f32_i32_e32 v4, v9
	v_cvt_f32_i32_e32 v9, v10
	.loc	1 144 9                         ; generate_amdgcn.py:144:9
	v_and_b32_e32 v10, 0x380, v22
	v_lshl_or_b32 v6, v0, 10, v6
	v_lshlrev_b32_e32 v0, 2, v0
	v_xor_b32_e32 v12, v14, v12
	.loc	1 141 15                        ; generate_amdgcn.py:141:15
	v_cvt_f32_i32_e32 v11, v11
	.loc	1 143 14                        ; generate_amdgcn.py:143:14
	s_and_b32 s1, s11, 0xffff
	s_mov_b32 s0, s10
	.loc	1 218 23                        ; generate_amdgcn.py:218:23
	v_mul_lo_u32 v8, s23, v32
	.loc	1 144 9                         ; generate_amdgcn.py:144:9
	v_or3_b32 v0, v10, v0, v12
	.loc	1 141 15                        ; generate_amdgcn.py:141:15
	v_cvt_f32_i32_e32 v13, v13
	v_cvt_f32_i32_e32 v15, v15
	v_cvt_f32_i32_e32 v16, v16
	.loc	1 144 9                         ; generate_amdgcn.py:144:9
	v_xad_u32 v22, v6, 8, 0
	v_add_nc_u32_e32 v44, 0, v0
	v_xad_u32 v45, 0x808, v0, 0
	v_xad_u32 v46, 0x1010, v0, 0
	v_xad_u32 v47, 0x1818, v0, 0
	v_xad_u32 v48, 0x2020, v0, 0
	v_xad_u32 v49, 0x2828, v0, 0
	v_xad_u32 v50, 0x3030, v0, 0
	v_xad_u32 v51, 0x3838, v0, 0
	v_xad_u32 v31, v6, 24, 0
	v_xad_u32 v32, v6, 32, 0
	v_xad_u32 v38, v6, 40, 0
	v_xad_u32 v39, v6, 48, 0
	v_xad_u32 v40, v6, 56, 0
	.loc	1 141 15                        ; generate_amdgcn.py:141:15
	v_cvt_f32_i32_e32 v1, v1
	v_cvt_f32_i32_e32 v3, v3
	v_cvt_f32_i32_e32 v2, v2
	v_cvt_f32_i32_e32 v5, v5
	v_cvt_f32_i32_e32 v7, v7
	.loc	1 218 23                        ; generate_amdgcn.py:218:23
	s_lshl_b32 s4, s23, 2
	s_mul_i32 s5, s23, 6
	s_lshl_b32 s6, s23, 3
	s_mul_i32 s7, s23, 10
	s_mul_i32 s8, s23, 12
	s_mul_i32 s9, s23, 14
	s_lshl_b32 s10, s23, 4
	s_mul_i32 s11, s23, 18
	s_mul_i32 s12, s23, 20
	s_mul_i32 s13, s23, 22
	s_mul_i32 s14, s23, 24
	s_mul_i32 s15, s23, 26
	s_mul_i32 s16, s23, 28
	s_mul_i32 s17, s23, 30
	.loc	1 218 9 is_stmt 0               ; generate_amdgcn.py:218:9
	s_and_b32 s21, s21, 0xffff
	.loc	1 142 14 is_stmt 1              ; generate_amdgcn.py:142:14
	s_waitcnt vmcnt(1)
	v_lshlrev_b32_e32 v0, 16, v19
	.loc	1 143 22                        ; generate_amdgcn.py:143:22
	v_lshlrev_b32_e32 v18, 1, v18
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 143 14 is_stmt 0              ; generate_amdgcn.py:143:14
	v_or_b32_e32 v23, 4, v18
	v_or_b32_e32 v24, 8, v18
	v_or_b32_e32 v25, 12, v18
	v_or_b32_e32 v26, 16, v18
	v_or_b32_e32 v27, 20, v18
	v_or_b32_e32 v28, 24, v18
	v_or_b32_e32 v29, 28, v18
	s_clause 0x7
	buffer_load_u16 v18, v18, s[0:3], 0 offen
	buffer_load_u16 v23, v23, s[0:3], 0 offen
	buffer_load_u16 v24, v24, s[0:3], 0 offen
	buffer_load_u16 v25, v25, s[0:3], 0 offen
	buffer_load_u16 v26, v26, s[0:3], 0 offen
	buffer_load_u16 v27, v27, s[0:3], 0 offen
	buffer_load_u16 v28, v28, s[0:3], 0 offen
	buffer_load_u16 v29, v29, s[0:3], 0 offen
	.loc	1 218 23 is_stmt 1              ; generate_amdgcn.py:218:23
	s_mul_i32 s0, s28, s23
	.loc	1 144 9                         ; generate_amdgcn.py:144:9
	s_waitcnt lgkmcnt(0)
	.loc	1 218 23                        ; generate_amdgcn.py:218:23
	s_add_i32 s0, s0, s22
	.loc	1 144 9                         ; generate_amdgcn.py:144:9
	s_barrier
	.loc	1 218 23                        ; generate_amdgcn.py:218:23
	s_lshl_b32 s1, s23, 1
	.loc	1 218 9 is_stmt 0               ; generate_amdgcn.py:218:9
	s_mov_b32 s22, s2
	s_mov_b32 s23, s3
	.loc	1 143 14 is_stmt 1              ; generate_amdgcn.py:143:14
	s_waitcnt vmcnt(6)
	v_lshlrev_b32_e32 v10, 16, v23
	s_waitcnt vmcnt(5)
	v_lshlrev_b32_e32 v12, 16, v24
	s_waitcnt vmcnt(4)
	v_lshlrev_b32_e32 v14, 16, v25
	.loc	1 144 16                        ; generate_amdgcn.py:144:16
	v_mul_f32_e32 v25, v0, v10
	.loc	1 218 23                        ; generate_amdgcn.py:218:23
	v_add3_u32 v17, s0, v30, v8
	.loc	1 144 9                         ; generate_amdgcn.py:144:9
	v_xad_u32 v30, v6, 16, 0
	.loc	1 143 14                        ; generate_amdgcn.py:143:14
	v_lshlrev_b32_e32 v8, 16, v18
	.loc	1 144 9                         ; generate_amdgcn.py:144:9
	v_add_nc_u32_e32 v21, 0, v6
	.loc	1 142 14                        ; generate_amdgcn.py:142:14
	v_lshlrev_b32_e32 v6, 16, v20
	.loc	1 143 14                        ; generate_amdgcn.py:143:14
	s_waitcnt vmcnt(3)
	v_lshlrev_b32_e32 v18, 16, v26
	.loc	1 144 16                        ; generate_amdgcn.py:144:16
	v_dual_mul_f32 v26, v0, v12 :: v_dual_lshlrev_b32 v41, 2, v17
	.loc	1 143 14                        ; generate_amdgcn.py:143:14
	s_waitcnt vmcnt(2)
	v_lshlrev_b32_e32 v19, 16, v27
	s_waitcnt vmcnt(1)
	v_lshlrev_b32_e32 v20, 16, v28
	.loc	1 144 16                        ; generate_amdgcn.py:144:16
	s_waitcnt vmcnt(0)
	v_dual_mul_f32 v24, v0, v8 :: v_dual_lshlrev_b32 v23, 16, v29
	v_mul_f32_e32 v8, v6, v8
	v_mul_f32_e32 v28, v0, v18
	v_mul_f32_e32 v54, v6, v10
	v_mul_f32_e32 v18, v6, v18
	v_mul_f32_e32 v27, v0, v14
	v_mul_f32_e32 v29, v0, v19
	v_mul_f32_e32 v52, v0, v20
	v_mul_f32_e32 v53, v0, v23
	.loc	1 144 9 is_stmt 0               ; generate_amdgcn.py:144:9
	v_mul_f32_e32 v0, v24, v1
	v_dual_mul_f32 v1, v8, v4 :: v_dual_mul_f32 v4, v26, v3
	v_mul_f32_e32 v3, v54, v9
	v_mul_f32_e32 v9, v18, v13
	.loc	1 144 16                        ; generate_amdgcn.py:144:16
	v_mul_f32_e32 v20, v6, v20
	v_mul_f32_e32 v23, v6, v23
	v_dual_mul_f32 v19, v6, v19 :: v_dual_mul_f32 v2, v25, v2
	.loc	1 144 9                         ; generate_amdgcn.py:144:9
	v_mul_f32_e32 v8, v28, v5
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_4) | instid1(VALU_DEP_4)
	v_mul_f32_e32 v13, v20, v15
	.loc	1 144 16                        ; generate_amdgcn.py:144:16
	v_mul_f32_e32 v55, v6, v12
	.loc	1 144 9                         ; generate_amdgcn.py:144:9
	v_dual_mul_f32 v15, v23, v16 :: v_dual_mul_f32 v56, v6, v14
	v_mul_f32_e32 v6, v27, v33
	v_mul_f32_e32 v12, v52, v7
	v_dual_mul_f32 v5, v55, v11 :: v_dual_mul_f32 v10, v29, v34
	s_delay_alu instid0(VALU_DEP_4)
	v_dual_mul_f32 v7, v56, v36 :: v_dual_mul_f32 v14, v53, v35
	v_mul_f32_e32 v11, v19, v37
	ds_store_b64 v21, v[0:1]
	ds_store_b64 v22, v[2:3]
	ds_store_b64 v30, v[4:5]
	ds_store_b64 v31, v[6:7]
	ds_store_b64 v32, v[8:9]
	ds_store_b64 v38, v[10:11]
	ds_store_b64 v39, v[12:13]
	ds_store_b64 v40, v[14:15]
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b64 v[0:1], v44
	ds_load_b64 v[2:3], v45
	ds_load_b64 v[4:5], v46
	ds_load_b64 v[6:7], v47
	ds_load_b64 v[8:9], v48
	ds_load_b64 v[10:11], v49
	ds_load_b64 v[12:13], v50
	ds_load_b64 v[14:15], v51
	.loc	1 218 9 is_stmt 1               ; generate_amdgcn.py:218:9
	v_add_lshl_u32 v42, v17, s1, 2
	v_add_lshl_u32 v43, v17, s4, 2
	v_add_lshl_u32 v16, v17, s5, 2
	v_add_lshl_u32 v18, v17, s6, 2
	v_add_lshl_u32 v19, v17, s7, 2
	v_add_lshl_u32 v20, v17, s8, 2
	v_add_lshl_u32 v21, v17, s9, 2
	v_add_lshl_u32 v22, v17, s10, 2
	v_add_lshl_u32 v23, v17, s11, 2
	v_add_lshl_u32 v24, v17, s12, 2
	s_waitcnt lgkmcnt(7)
	buffer_atomic_add_f32 v0, v41, s[20:23], 0 offen
	s_waitcnt lgkmcnt(6)
	buffer_atomic_add_f32 v2, v42, s[20:23], 0 offen
	s_waitcnt lgkmcnt(5)
	buffer_atomic_add_f32 v4, v43, s[20:23], 0 offen
	s_waitcnt lgkmcnt(4)
	buffer_atomic_add_f32 v6, v16, s[20:23], 0 offen
	s_waitcnt lgkmcnt(3)
	buffer_atomic_add_f32 v8, v18, s[20:23], 0 offen
	s_waitcnt lgkmcnt(2)
	buffer_atomic_add_f32 v10, v19, s[20:23], 0 offen
	s_waitcnt lgkmcnt(1)
	buffer_atomic_add_f32 v12, v20, s[20:23], 0 offen
	s_waitcnt lgkmcnt(0)
	s_clause 0x3
	buffer_atomic_add_f32 v14, v21, s[20:23], 0 offen
	buffer_atomic_add_f32 v1, v22, s[20:23], 0 offen
	buffer_atomic_add_f32 v3, v23, s[20:23], 0 offen
	buffer_atomic_add_f32 v5, v24, s[20:23], 0 offen
	v_add_lshl_u32 v25, v17, s13, 2
	v_add_lshl_u32 v26, v17, s14, 2
	v_add_lshl_u32 v27, v17, s15, 2
	v_add_lshl_u32 v28, v17, s16, 2
	v_add_lshl_u32 v0, v17, s17, 2
	s_clause 0x4
	buffer_atomic_add_f32 v7, v25, s[20:23], 0 offen
	buffer_atomic_add_f32 v9, v26, s[20:23], 0 offen
	buffer_atomic_add_f32 v11, v27, s[20:23], 0 offen
	buffer_atomic_add_f32 v13, v28, s[20:23], 0 offen
	buffer_atomic_add_f32 v15, v0, s[20:23], 0 offen
	.loc	1 80 1                          ; generate_amdgcn.py:80:1
	s_endpgm
.Ltmp17:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_int4xint4_nt_pc_none_bm32_bn128_bk32_gm4_w8_s2_weu2_sk8_maskk
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
		.amdhsa_inst_pref_size 22
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
	.size	amd_strix_halo_gfx1151_int4xint4_nt_pc_none_bm32_bn128_bk32_gm4_w8_s2_weu2_sk8_maskk, .Lfunc_end0-amd_strix_halo_gfx1151_int4xint4_nt_pc_none_bm32_bn128_bk32_gm4_w8_s2_weu2_sk8_maskk
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_int4xint4_nt_pc_none_bm32_bn128_bk32_gm4_w8_s2_weu2_sk8_maskk.num_vgpr, 57
	.set amd_strix_halo_gfx1151_int4xint4_nt_pc_none_bm32_bn128_bk32_gm4_w8_s2_weu2_sk8_maskk.num_agpr, 0
	.set amd_strix_halo_gfx1151_int4xint4_nt_pc_none_bm32_bn128_bk32_gm4_w8_s2_weu2_sk8_maskk.numbered_sgpr, 34
	.set amd_strix_halo_gfx1151_int4xint4_nt_pc_none_bm32_bn128_bk32_gm4_w8_s2_weu2_sk8_maskk.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_int4xint4_nt_pc_none_bm32_bn128_bk32_gm4_w8_s2_weu2_sk8_maskk.private_seg_size, 0
	.set amd_strix_halo_gfx1151_int4xint4_nt_pc_none_bm32_bn128_bk32_gm4_w8_s2_weu2_sk8_maskk.uses_vcc, 1
	.set amd_strix_halo_gfx1151_int4xint4_nt_pc_none_bm32_bn128_bk32_gm4_w8_s2_weu2_sk8_maskk.uses_flat_scratch, 0
	.set amd_strix_halo_gfx1151_int4xint4_nt_pc_none_bm32_bn128_bk32_gm4_w8_s2_weu2_sk8_maskk.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_int4xint4_nt_pc_none_bm32_bn128_bk32_gm4_w8_s2_weu2_sk8_maskk.has_recursion, 0
	.set amd_strix_halo_gfx1151_int4xint4_nt_pc_none_bm32_bn128_bk32_gm4_w8_s2_weu2_sk8_maskk.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 2792
; TotalNumSgprs: 36
; NumVgprs: 57
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
	.byte	88                              ; DW_AT_call_line
	.byte	17                              ; DW_AT_call_column
	.byte	4                               ; Abbrev [4] 0x4d:0xc DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges1                 ; DW_AT_ranges
	.byte	1                               ; DW_AT_call_file
	.byte	87                              ; DW_AT_call_line
	.byte	17                              ; DW_AT_call_column
	.byte	4                               ; Abbrev [4] 0x59:0xc DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges2                 ; DW_AT_ranges
	.byte	1                               ; DW_AT_call_file
	.byte	106                             ; DW_AT_call_line
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
	.asciz	"amd_strix_halo_gfx1151_int4xint4_nt_pc_none_bm32_bn128_bk32_gm4_w8_s2_weu2_sk8_maskk"             ; string offset=75 ; amd_strix_halo_gfx1151_int4xint4_nt_pc_none_bm32_bn128_bk32_gm4_w8_s2_weu2_sk8_maskk
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
    .name:           amd_strix_halo_gfx1151_int4xint4_nt_pc_none_bm32_bn128_bk32_gm4_w8_s2_weu2_sk8_maskk
    .private_segment_fixed_size: 0
    .sgpr_count:     36
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_int4xint4_nt_pc_none_bm32_bn128_bk32_gm4_w8_s2_weu2_sk8_maskk.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     57
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
