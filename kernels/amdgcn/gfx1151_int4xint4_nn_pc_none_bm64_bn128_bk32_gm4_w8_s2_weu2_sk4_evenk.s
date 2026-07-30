	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_int4xint4_nn_pc_none_bm64_bn128_bk32_gm4_w8_s2_weu2_sk4_evenk               ; -- Begin function amd_strix_halo_gfx1151_int4xint4_nn_pc_none_bm64_bn128_bk32_gm4_w8_s2_weu2_sk4_evenk
	.p2align	8
	.type	amd_strix_halo_gfx1151_int4xint4_nn_pc_none_bm64_bn128_bk32_gm4_w8_s2_weu2_sk4_evenk,@function
amd_strix_halo_gfx1151_int4xint4_nn_pc_none_bm64_bn128_bk32_gm4_w8_s2_weu2_sk4_evenk:                      ; @amd_strix_halo_gfx1151_int4xint4_nn_pc_none_bm64_bn128_bk32_gm4_w8_s2_weu2_sk4_evenk
.Lfunc_begin0:
	.file	1 "<repo>/scripts" "generate_amdgcn.py"
	.loc	1 80 0                          ; generate_amdgcn.py:80:0
	.cfi_sections .debug_frame
	.cfi_startproc
; %bb.0:
	s_clause 0x1
	s_load_b64 s[20:21], s[0:1], 0x30
	s_load_b128 s[12:15], s[0:1], 0x0
.Ltmp0:
	.loc	1 90 16 prologue_end            ; generate_amdgcn.py:90:16
	s_abs_i32 s7, s2
	.loc	1 101 14                        ; generate_amdgcn.py:101:14
	v_lshlrev_b32_e32 v37, 2, v0
	v_lshrrev_b32_e32 v49, 4, v0
	.loc	1 99 32                         ; generate_amdgcn.py:99:32
	v_lshrrev_b32_e32 v48, 2, v0
	.loc	1 127 22                        ; generate_amdgcn.py:127:22
	v_bfe_i32 v11, v0, 5, 1
	v_bfe_i32 v42, v0, 3, 1
	.loc	1 101 14                        ; generate_amdgcn.py:101:14
	v_and_b32_e32 v33, 12, v37
	.loc	1 100 32                        ; generate_amdgcn.py:100:32
	v_and_b32_e32 v36, 0x60, v0
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 127 22                        ; generate_amdgcn.py:127:22
	v_and_b32_e32 v16, 0x88, v11
	.loc	1 100 32                        ; generate_amdgcn.py:100:32
	v_lshrrev_b32_e32 v40, 1, v36
.Ltmp1:
	.file	2 "<triton>/python/triton/language" "standard.py"
	.loc	2 43 13                         ; standard.py:43:13 @[ generate_amdgcn.py:88:17 ]
	s_waitcnt lgkmcnt(0)
	s_add_i32 s4, s21, 0x7f
.Ltmp2:
	.loc	2 43 13 is_stmt 0               ; standard.py:43:13 @[ generate_amdgcn.py:87:17 ]
	s_add_i32 s8, s20, 63
.Ltmp3:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:88:17 ]
	s_ashr_i32 s5, s4, 31
.Ltmp4:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:87:17 ]
	s_ashr_i32 s10, s8, 31
.Ltmp5:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:88:17 ]
	s_lshr_b32 s5, s5, 25
.Ltmp6:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:87:17 ]
	s_lshr_b32 s10, s10, 26
.Ltmp7:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:88:17 ]
	s_add_i32 s4, s4, s5
.Ltmp8:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:87:17 ]
	s_add_i32 s8, s8, s10
.Ltmp9:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:88:17 ]
	s_ashr_i32 s4, s4, 7
.Ltmp10:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:87:17 ]
	s_ashr_i32 s8, s8, 6
.Ltmp11:
	.loc	1 89 24 is_stmt 1               ; generate_amdgcn.py:89:24
	s_lshl_b32 s4, s4, 2
	s_mov_b64 s[16:17], s[14:15]
	.loc	1 90 16                         ; generate_amdgcn.py:90:16
	s_abs_i32 s5, s4
	s_mov_b32 s15, 0x31027000
	s_cvt_f32_u32 s6, s5
	s_sub_i32 s9, 0, s5
	s_mov_b32 s14, 0x7ffffffe
	.loc	1 131 22                        ; generate_amdgcn.py:131:22
	s_mov_b32 s19, s15
	.loc	1 90 16                         ; generate_amdgcn.py:90:16
	v_rcp_iflag_f32_e32 v1, s6
	.loc	1 131 22                        ; generate_amdgcn.py:131:22
	s_mov_b32 s18, s14
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_3)
	.loc	1 90 16                         ; generate_amdgcn.py:90:16
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
	.loc	1 91 19                         ; generate_amdgcn.py:91:19
	s_lshl_b32 s6, s5, 2
	.loc	1 93 29                         ; generate_amdgcn.py:93:29
	s_mul_i32 s5, s5, s4
	.loc	1 92 31                         ; generate_amdgcn.py:92:31
	s_sub_i32 s7, s8, s6
	.loc	1 93 29                         ; generate_amdgcn.py:93:29
	s_sub_i32 s4, s2, s5
	.loc	1 92 20                         ; generate_amdgcn.py:92:20
	s_min_i32 s7, s7, 4
	.loc	1 94 13                         ; generate_amdgcn.py:94:13
	s_abs_i32 s5, s4
	s_abs_i32 s8, s7
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_2)
	s_cvt_f32_u32 s9, s8
	s_sub_i32 s11, 0, s8
	v_rcp_iflag_f32_e32 v1, s9
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_3)
	v_readfirstlane_b32 s9, v1
	s_mul_f32 s9, s9, 0x4f7ffffe
	s_cvt_u32_f32 s9, s9
	s_delay_alu instid0(SALU_CYCLE_3) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_mul_i32 s11, s11, s9
	s_mul_hi_u32 s2, s9, s11
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_add_i32 s9, s9, s2
	s_mul_hi_u32 s2, s5, s9
	s_xor_b32 s9, s4, s7
	s_mul_i32 s11, s2, s8
	s_ashr_i32 s24, s9, 31
	s_sub_i32 s5, s5, s11
	s_add_i32 s9, s2, 1
	s_sub_i32 s11, s5, s8
	s_cmp_ge_u32 s5, s8
	s_cselect_b32 s2, s9, s2
	s_cselect_b32 s5, s11, s5
	s_add_i32 s9, s2, 1
	s_cmp_ge_u32 s5, s8
	s_cselect_b32 s5, s9, s2
	.loc	1 96 22                         ; generate_amdgcn.py:96:22
	s_waitcnt lgkmcnt(0)
	s_lshr_b32 s8, s10, 31
	.loc	1 94 13                         ; generate_amdgcn.py:94:13
	s_xor_b32 s25, s5, s24
	.loc	1 108 23                        ; generate_amdgcn.py:108:23
	s_lshl_b32 s2, s3, 4
	.loc	1 96 22                         ; generate_amdgcn.py:96:22
	s_add_i32 s3, s10, s8
	.loc	1 94 13                         ; generate_amdgcn.py:94:13
	s_sub_i32 s5, s25, s24
	.loc	1 96 22                         ; generate_amdgcn.py:96:22
	s_ashr_i32 s26, s3, 1
	.loc	1 93 28                         ; generate_amdgcn.py:93:28
	s_mul_i32 s3, s5, s7
	s_delay_alu instid0(SALU_CYCLE_1)
	s_sub_i32 s3, s4, s3
	.loc	1 131 30                        ; generate_amdgcn.py:131:30
	s_mul_i32 s4, s21, s2
	.loc	1 93 13                         ; generate_amdgcn.py:93:13
	s_add_i32 s6, s3, s6
	.loc	1 100 14                        ; generate_amdgcn.py:100:14
	s_lshl_b32 s3, s5, 7
	.loc	1 99 14                         ; generate_amdgcn.py:99:14
	s_lshl_b32 s20, s6, 6
	.loc	1 106 9                         ; generate_amdgcn.py:106:9
	s_cmp_lt_i32 s10, 2
	s_cselect_b32 s22, -1, 0
	s_cmp_gt_i32 s10, 1
	s_cselect_b32 vcc_lo, -1, 0
	.loc	1 99 32                         ; generate_amdgcn.py:99:32
	v_and_b32_e32 v39, 15, v0
	.loc	1 127 22                        ; generate_amdgcn.py:127:22
	s_and_b32 s13, s13, 0xffff
	.loc	1 131 22                        ; generate_amdgcn.py:131:22
	s_and_b32 s17, s17, 0xffff
	.loc	1 106 9                         ; generate_amdgcn.py:106:9
	s_cmpk_lt_i32 s10, 0x82
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 100 32                        ; generate_amdgcn.py:100:32
	v_lshlrev_b32_e32 v34, 3, v39
	.loc	1 131 30                        ; generate_amdgcn.py:131:30
	v_mad_u64_u32 v[1:2], null, s21, v49, v[34:35]
	.loc	1 127 30                        ; generate_amdgcn.py:127:30
	v_mad_u64_u32 v[2:3], null, s26, v48, v[33:34]
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 131 30                        ; generate_amdgcn.py:131:30
	v_add3_u32 v45, s4, s3, v1
	.loc	1 127 30                        ; generate_amdgcn.py:127:30
	s_mul_i32 s4, s20, s26
	s_delay_alu instid0(VALU_DEP_2) | instid1(SALU_CYCLE_1)
	v_add3_u32 v46, s2, s4, v2
	s_mov_b32 s4, 0
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 131 22                        ; generate_amdgcn.py:131:22
	v_dual_cndmask_b32 v2, 0x80000000, v45 :: v_dual_cndmask_b32 v1, 0x80000000, v46
	.loc	1 127 22                        ; generate_amdgcn.py:127:22
	buffer_load_b32 v47, v1, s[12:15], 0 offen
	.loc	1 131 22                        ; generate_amdgcn.py:131:22
	buffer_load_b64 v[50:51], v2, s[16:19], 0 offen
	v_mov_b32_e32 v1, 0
	.loc	1 99 32                         ; generate_amdgcn.py:99:32
	v_and_b32_e32 v35, 0x80, v0
	.loc	1 131 22                        ; generate_amdgcn.py:131:22
	v_lshlrev_b32_e32 v41, 3, v0
	s_delay_alu instid0(VALU_DEP_3)
	v_dual_mov_b32 v3, v1 :: v_dual_lshlrev_b32 v38, 4, v0
	v_mov_b32_e32 v2, v1
	v_mov_b32_e32 v5, v1
	v_dual_mov_b32 v18, v1 :: v_dual_and_b32 v15, 0x37c, v37
	v_mov_b32_e32 v4, v1
	v_mov_b32_e32 v6, v1
	v_mov_b32_e32 v8, v1
	v_mov_b32_e32 v17, v1
	.loc	1 127 22                        ; generate_amdgcn.py:127:22
	v_xor_b32_e32 v44, v16, v15
	v_mov_b32_e32 v7, v1
	v_mov_b32_e32 v19, v1
	v_dual_mov_b32 v20, v1 :: v_dual_add_nc_u32 v43, 0, v41
	v_mov_b32_e32 v21, v1
	v_dual_mov_b32 v22, v1 :: v_dual_and_b32 v41, 0x88, v42
	v_mov_b32_e32 v23, v1
	v_mov_b32_e32 v24, v1
	v_mov_b32_e32 v25, v1
	v_mov_b32_e32 v26, v1
	v_mov_b32_e32 v27, v1
	v_mov_b32_e32 v28, v1
	v_mov_b32_e32 v29, v1
	v_mov_b32_e32 v30, v1
	v_mov_b32_e32 v31, v1
	v_mov_b32_e32 v32, v1
	v_mov_b32_e32 v9, v1
	v_mov_b32_e32 v10, v1
	v_mov_b32_e32 v11, v1
	v_mov_b32_e32 v12, v1
	v_mov_b32_e32 v13, v1
	v_mov_b32_e32 v14, v1
	v_mov_b32_e32 v15, v1
	v_mov_b32_e32 v16, v1
	v_add_nc_u32_e32 v44, 0, v44
	v_lshlrev_b32_e32 v42, 1, v35
	s_waitcnt vmcnt(1)
	ds_store_b32 v44, v47 offset:2048
	.loc	1 131 22                        ; generate_amdgcn.py:131:22
	s_waitcnt vmcnt(0)
	ds_store_b64 v43, v[50:51]
	.loc	1 106 9                         ; generate_amdgcn.py:106:9
	s_cbranch_scc1 .LBB0_4
; %bb.1:                                ; %.lr.ph
	.loc	1 131 30                        ; generate_amdgcn.py:131:30
	s_lshl_b32 s23, s21, 6
	.loc	1 132 23                        ; generate_amdgcn.py:132:23
	s_mov_b32 s5, s4
	s_mov_b32 s6, s4
	s_mov_b32 s7, s4
	s_mov_b32 s8, s4
	s_mov_b32 s9, s4
	s_mov_b32 s10, s4
	s_mov_b32 s11, s4
	.loc	1 131 30                        ; generate_amdgcn.py:131:30
	v_add_nc_u32_e32 v1, s23, v45
	.loc	1 131 22 is_stmt 0              ; generate_amdgcn.py:131:22
	s_mov_b32 s18, s14
	s_mov_b32 s19, s15
	.loc	1 127 22 is_stmt 1              ; generate_amdgcn.py:127:22
	buffer_load_b32 v66, v46, s[12:15], 0 offen offset:64
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 131 22                        ; generate_amdgcn.py:131:22
	buffer_load_b64 v[58:59], v1, s[16:19], 0 offen
	v_add_nc_u32_e32 v1, 0, v39
.Ltmp12:
	.loc	2 43 13                         ; standard.py:43:13 @[ generate_amdgcn.py:106:32 ]
	s_add_i32 s27, s26, 63
	s_delay_alu instid0(VALU_DEP_1)
	v_add_nc_u32_e32 v45, v1, v40
	v_lshlrev_b32_e32 v1, 4, v0
.Ltmp13:
	.loc	1 132 23                        ; generate_amdgcn.py:132:23
	ds_load_u8 v2, v45 offset:640
	ds_load_u8 v3, v45 offset:512
	ds_load_u8 v4, v45 offset:896
	ds_load_u8 v5, v45 offset:768
	ds_load_u8 v6, v45 offset:128
	ds_load_u8 v7, v45
	ds_load_u8 v8, v45 offset:384
	ds_load_u8 v9, v45 offset:256
	v_and_b32_e32 v1, 0x70, v1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_or3_b32 v1, v41, v42, v1
	v_xor_b32_e32 v10, 8, v1
	.loc	1 127 22                        ; generate_amdgcn.py:127:22
	v_add_nc_u32_e32 v46, 0, v1
	s_delay_alu instid0(VALU_DEP_2)
	v_add_nc_u32_e32 v47, 0, v10
	.loc	1 132 23                        ; generate_amdgcn.py:132:23
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v1, v3, v2, 0xc0c0004
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v3, v7, v6, 0xc0c0004
	v_perm_b32 v2, v5, v4, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v4, v9, v8, 0xc0c0004
	v_mov_b32_e32 v16, s11
	v_mov_b32_e32 v12, s7
	ds_load_u8 v17, v45 offset:960
	ds_load_u8 v18, v45 offset:832
	ds_load_u8 v19, v45 offset:704
	ds_load_u8 v20, v45 offset:576
	ds_load_u8 v21, v45 offset:448
	ds_load_u8 v22, v45 offset:320
	ds_load_u8 v23, v45 offset:192
	ds_load_u8 v24, v45 offset:64
	ds_load_u8 v25, v45 offset:1664
	ds_load_u8 v26, v45 offset:1536
	ds_load_u8 v27, v45 offset:1920
	ds_load_u8 v28, v45 offset:1792
	ds_load_u8 v29, v45 offset:1152
	ds_load_u8 v30, v45 offset:1024
	ds_load_u8 v31, v45 offset:1408
	ds_load_u8 v32, v45 offset:1280
	ds_load_u8 v62, v45 offset:1984
	ds_load_u8 v67, v45 offset:1856
	ds_load_u8 v68, v45 offset:1728
	ds_load_u8 v69, v45 offset:1600
	ds_load_u8 v70, v45 offset:1472
	ds_load_u8 v71, v45 offset:1344
	ds_load_u8 v72, v45 offset:1216
	ds_load_u8 v73, v45 offset:1088
	v_mov_b32_e32 v15, s10
	.loc	1 127 22                        ; generate_amdgcn.py:127:22
	ds_load_2addr_stride64_b64 v[50:53], v46 offset0:4 offset1:5
	ds_load_2addr_stride64_b64 v[54:57], v47 offset0:4 offset1:5
	.loc	1 132 23                        ; generate_amdgcn.py:132:23
	v_lshl_or_b32 v61, v2, 16, v1
	v_lshl_or_b32 v60, v4, 16, v3
	s_waitcnt lgkmcnt(16)
	v_perm_b32 v25, v26, v25, 0xc0c0004
	v_mov_b32_e32 v14, s9
	s_waitcnt lgkmcnt(14)
	v_perm_b32 v26, v28, v27, 0xc0c0004
	v_mov_b32_e32 v13, s8
	v_dual_mov_b32 v11, s6 :: v_dual_mov_b32 v10, s5
	v_mov_b32_e32 v9, s4
	s_delay_alu instid0(VALU_DEP_4)
	v_lshl_or_b32 v63, v26, 16, v25
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v26, v67, v62, 0xc0c0004
.Ltmp14:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:106:32 ]
	s_lshr_b32 s4, s27, 6
.Ltmp15:
	.loc	1 132 23                        ; generate_amdgcn.py:132:23
	v_perm_b32 v17, v18, v17, 0xc0c0004
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v25, v69, v68, 0xc0c0004
	v_perm_b32 v19, v20, v19, 0xc0c0004
	v_perm_b32 v18, v24, v23, 0xc0c0004
	v_perm_b32 v20, v22, v21, 0xc0c0004
	v_perm_b32 v21, v30, v29, 0xc0c0004
	v_perm_b32 v22, v32, v31, 0xc0c0004
	v_lshl_or_b32 v65, v17, 16, v19
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v27, v73, v72, 0xc0c0004
	v_lshl_or_b32 v64, v20, 16, v18
	v_perm_b32 v28, v71, v70, 0xc0c0004
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu4 v[1:8], v[60:61], v[50:51], v[9:16] neg_lo:[1,1,0]
	v_lshl_or_b32 v62, v22, 16, v21
	v_wmma_i32_16x16x16_iu4 v[17:24], v[64:65], v[50:51], v[9:16] neg_lo:[1,1,0]
	v_lshl_or_b32 v51, v26, 16, v25
	v_lshl_or_b32 v50, v28, 16, v27
	v_wmma_i32_16x16x16_iu4 v[25:32], v[60:61], v[52:53], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[64:65], v[52:53], v[9:16] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[1:8], v[62:63], v[54:55], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[17:24], v[50:51], v[54:55], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[25:32], v[62:63], v[56:57], v[25:32] neg_lo:[1,1,0]
	.loc	1 106 9                         ; generate_amdgcn.py:106:9
	s_max_u32 s4, s4, 2
	.loc	1 132 23                        ; generate_amdgcn.py:132:23
	v_wmma_i32_16x16x16_iu4 v[9:16], v[50:51], v[56:57], v[9:16] neg_lo:[1,1,0]
	.loc	1 106 9                         ; generate_amdgcn.py:106:9
	s_cmp_eq_u32 s4, 2
	.loc	1 127 22                        ; generate_amdgcn.py:127:22
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_waitcnt vmcnt(1)
	ds_store_b32 v44, v66 offset:2048
	.loc	1 131 22                        ; generate_amdgcn.py:131:22
	s_waitcnt vmcnt(0)
	ds_store_b64 v43, v[58:59]
	.loc	1 106 9                         ; generate_amdgcn.py:106:9
	s_cbranch_scc1 .LBB0_4
; %bb.2:                                ; %.peel.next
	v_add3_u32 v49, s2, v49, 0x80
	v_add_nc_u32_e32 v48, s20, v48
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_mul_lo_u32 v50, s21, v49
	v_mad_u64_u32 v[48:49], null, s26, v48, s[2:3]
	s_lshl_b32 s2, s25, 7
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_add3_u32 v34, v50, s2, v34
	s_lshl_b32 s2, s24, 7
	v_add3_u32 v33, v48, v33, 0x80
	v_subrev_nc_u32_e32 v34, s2, v34
	s_add_i32 s2, s4, -2
.LBB0_3:                                ; =>This Inner Loop Header: Depth=1
	.loc	1 127 22                        ; generate_amdgcn.py:127:22
	buffer_load_b32 v66, v33, s[12:15], 0 offen
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 131 22                        ; generate_amdgcn.py:131:22
	buffer_load_b64 v[56:57], v34, s[16:19], 0 offen
	.loc	1 132 23                        ; generate_amdgcn.py:132:23
	ds_load_u8 v58, v45 offset:1664
	ds_load_u8 v59, v45 offset:1536
	ds_load_u8 v60, v45 offset:1920
	ds_load_u8 v61, v45 offset:1792
	ds_load_u8 v62, v45 offset:1152
	ds_load_u8 v63, v45 offset:1024
	ds_load_u8 v64, v45 offset:1408
	ds_load_u8 v65, v45 offset:1280
	ds_load_u8 v67, v45 offset:640
	ds_load_u8 v68, v45 offset:512
	ds_load_u8 v69, v45 offset:896
	ds_load_u8 v70, v45 offset:768
	ds_load_u8 v71, v45 offset:960
	ds_load_u8 v72, v45 offset:832
	ds_load_u8 v73, v45 offset:704
	ds_load_u8 v74, v45 offset:576
	ds_load_u8 v75, v45 offset:128
	ds_load_u8 v76, v45
	ds_load_u8 v77, v45 offset:384
	ds_load_u8 v78, v45 offset:256
	ds_load_u8 v79, v45 offset:448
	ds_load_u8 v80, v45 offset:320
	ds_load_u8 v81, v45 offset:192
	ds_load_u8 v82, v45 offset:64
	ds_load_u8 v83, v45 offset:1984
	ds_load_u8 v84, v45 offset:1856
	ds_load_u8 v85, v45 offset:1728
	ds_load_u8 v86, v45 offset:1600
	ds_load_u8 v87, v45 offset:1472
	ds_load_u8 v88, v45 offset:1344
	ds_load_u8 v89, v45 offset:1216
	ds_load_u8 v90, v45 offset:1088
	.loc	1 127 22                        ; generate_amdgcn.py:127:22
	ds_load_2addr_stride64_b64 v[48:51], v46 offset0:4 offset1:5
	ds_load_2addr_stride64_b64 v[52:55], v47 offset0:4 offset1:5
	.loc	1 132 23                        ; generate_amdgcn.py:132:23
	s_waitcnt lgkmcnt(24)
	v_perm_b32 v67, v68, v67, 0xc0c0004
	s_waitcnt lgkmcnt(22)
	v_perm_b32 v68, v70, v69, 0xc0c0004
	v_perm_b32 v64, v65, v64, 0xc0c0004
	s_waitcnt lgkmcnt(16)
	v_perm_b32 v69, v76, v75, 0xc0c0004
	v_perm_b32 v76, v63, v62, 0xc0c0004
	s_waitcnt lgkmcnt(14)
	v_perm_b32 v70, v78, v77, 0xc0c0004
	v_perm_b32 v62, v74, v73, 0xc0c0004
	v_perm_b32 v63, v72, v71, 0xc0c0004
	s_waitcnt lgkmcnt(12)
	v_perm_b32 v71, v80, v79, 0xc0c0004
	s_waitcnt lgkmcnt(10)
	v_perm_b32 v65, v82, v81, 0xc0c0004
	v_perm_b32 v75, v59, v58, 0xc0c0004
	v_perm_b32 v60, v61, v60, 0xc0c0004
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v73, v84, v83, 0xc0c0004
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v72, v86, v85, 0xc0c0004
	v_lshl_or_b32 v59, v68, 16, v67
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v77, v88, v87, 0xc0c0004
	v_lshl_or_b32 v58, v70, 16, v69
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v74, v90, v89, 0xc0c0004
	v_lshl_or_b32 v63, v63, 16, v62
	v_lshl_or_b32 v62, v71, 16, v65
	v_lshl_or_b32 v61, v60, 16, v75
	v_lshl_or_b32 v60, v64, 16, v76
	v_lshl_or_b32 v65, v73, 16, v72
	v_lshl_or_b32 v64, v77, 16, v74
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu4 v[1:8], v[58:59], v[48:49], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[17:24], v[62:63], v[48:49], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[25:32], v[58:59], v[50:51], v[25:32] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[62:63], v[50:51], v[9:16] neg_lo:[1,1,0]
	.loc	1 106 9                         ; generate_amdgcn.py:106:9
	v_add_nc_u32_e32 v34, s23, v34
	v_add_nc_u32_e32 v33, 64, v33
	.loc	1 132 23                        ; generate_amdgcn.py:132:23
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[1:8], v[60:61], v[52:53], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[17:24], v[64:65], v[52:53], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[25:32], v[60:61], v[54:55], v[25:32] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[64:65], v[54:55], v[9:16] neg_lo:[1,1,0]
	.loc	1 106 9                         ; generate_amdgcn.py:106:9
	s_add_i32 s2, s2, -1
	.loc	1 127 22                        ; generate_amdgcn.py:127:22
	s_waitcnt lgkmcnt(0)
	.loc	1 106 9                         ; generate_amdgcn.py:106:9
	s_cmp_lg_u32 s2, 0
	.loc	1 127 22                        ; generate_amdgcn.py:127:22
	s_barrier
	s_waitcnt vmcnt(1)
	ds_store_b32 v44, v66 offset:2048
	.loc	1 131 22                        ; generate_amdgcn.py:131:22
	s_waitcnt vmcnt(0)
	ds_store_b64 v43, v[56:57]
	.loc	1 106 9                         ; generate_amdgcn.py:106:9
	s_cbranch_scc1 .LBB0_3
.LBB0_4:                                ; %._crit_edge
	.loc	1 0 9 is_stmt 0                 ; generate_amdgcn.py:0:9
	s_clause 0x1
	s_load_b128 s[4:7], s[0:1], 0x10
	s_load_b64 s[0:1], s[0:1], 0x20
	.loc	1 132 23 is_stmt 1              ; generate_amdgcn.py:132:23
	s_and_not1_b32 vcc_lo, exec_lo, s22
	.loc	1 127 22                        ; generate_amdgcn.py:127:22
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 132 23                        ; generate_amdgcn.py:132:23
	s_cbranch_vccnz .LBB0_7
; %bb.5:                                ; %._crit_edge._crit_edge
	.loc	1 144 9                         ; generate_amdgcn.py:144:9
	v_lshlrev_b32_e32 v33, 4, v0
	s_cbranch_execz .LBB0_8
; %bb.6:
	.loc	1 0 9 is_stmt 0                 ; generate_amdgcn.py:0:9
	s_delay_alu instid0(VALU_DEP_1)
	v_mov_b32_e32 v38, v33
	s_branch .LBB0_9
.LBB0_7:
                                        ; implicit-def: $vgpr33
.LBB0_8:
	.loc	1 131 22 is_stmt 1              ; generate_amdgcn.py:131:22
	v_add3_u32 v33, 0, v39, v40
	.loc	1 127 22                        ; generate_amdgcn.py:127:22
	v_and_b32_e32 v34, 0x70, v38
	.loc	1 132 23                        ; generate_amdgcn.py:132:23
	ds_load_u8 v45, v33 offset:640
	ds_load_u8 v46, v33 offset:512
	ds_load_u8 v47, v33 offset:896
	ds_load_u8 v48, v33 offset:768
	ds_load_u8 v49, v33 offset:128
	ds_load_u8 v50, v33
	ds_load_u8 v51, v33 offset:384
	ds_load_u8 v52, v33 offset:256
	.loc	1 127 22                        ; generate_amdgcn.py:127:22
	v_or3_b32 v34, v41, v42, v34
	.loc	1 132 23                        ; generate_amdgcn.py:132:23
	ds_load_u8 v53, v33 offset:960
	ds_load_u8 v54, v33 offset:832
	ds_load_u8 v55, v33 offset:704
	ds_load_u8 v56, v33 offset:576
	ds_load_u8 v57, v33 offset:448
	ds_load_u8 v58, v33 offset:320
	ds_load_u8 v59, v33 offset:192
	ds_load_u8 v60, v33 offset:64
	.loc	1 127 22                        ; generate_amdgcn.py:127:22
	v_add_nc_u32_e32 v41, 0, v34
	v_xad_u32 v61, v34, 8, 0
	ds_load_2addr_stride64_b64 v[41:44], v41 offset0:4 offset1:5
	.loc	1 132 23                        ; generate_amdgcn.py:132:23
	s_waitcnt lgkmcnt(15)
	v_perm_b32 v34, v46, v45, 0xc0c0004
	s_waitcnt lgkmcnt(13)
	v_perm_b32 v45, v48, v47, 0xc0c0004
	s_waitcnt lgkmcnt(11)
	v_perm_b32 v46, v50, v49, 0xc0c0004
	s_waitcnt lgkmcnt(9)
	v_perm_b32 v47, v52, v51, 0xc0c0004
	ds_load_u8 v49, v33 offset:1664
	ds_load_u8 v50, v33 offset:1536
	ds_load_u8 v51, v33 offset:1152
	ds_load_u8 v52, v33 offset:1024
	ds_load_u8 v62, v33 offset:1408
	ds_load_u8 v63, v33 offset:1280
	ds_load_u8 v64, v33 offset:1920
	ds_load_u8 v65, v33 offset:1792
	ds_load_u8 v66, v33 offset:1984
	ds_load_u8 v67, v33 offset:1856
	ds_load_u8 v68, v33 offset:1728
	ds_load_u8 v69, v33 offset:1600
	ds_load_u8 v70, v33 offset:1472
	ds_load_u8 v71, v33 offset:1344
	ds_load_u8 v72, v33 offset:1216
	ds_load_u8 v73, v33 offset:1088
	v_lshl_or_b32 v34, v45, 16, v34
	v_lshl_or_b32 v33, v47, 16, v46
	.loc	1 127 22                        ; generate_amdgcn.py:127:22
	ds_load_2addr_stride64_b64 v[45:48], v61 offset0:4 offset1:5
	.loc	1 132 23                        ; generate_amdgcn.py:132:23
	s_waitcnt lgkmcnt(15)
	v_perm_b32 v61, v50, v49, 0xc0c0004
	v_perm_b32 v49, v56, v55, 0xc0c0004
	v_perm_b32 v50, v54, v53, 0xc0c0004
	v_perm_b32 v53, v60, v59, 0xc0c0004
	v_perm_b32 v54, v58, v57, 0xc0c0004
	s_waitcnt lgkmcnt(13)
	v_perm_b32 v51, v52, v51, 0xc0c0004
	s_waitcnt lgkmcnt(9)
	v_perm_b32 v55, v65, v64, 0xc0c0004
	v_perm_b32 v56, v63, v62, 0xc0c0004
	v_lshl_or_b32 v50, v50, 16, v49
	v_lshl_or_b32 v49, v54, 16, v53
	s_waitcnt lgkmcnt(5)
	v_perm_b32 v53, v69, v68, 0xc0c0004
	v_perm_b32 v54, v67, v66, 0xc0c0004
	s_waitcnt lgkmcnt(3)
	v_perm_b32 v58, v71, v70, 0xc0c0004
	v_wmma_i32_16x16x16_iu4 v[1:8], v[33:34], v[41:42], v[1:8] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v57, v73, v72, 0xc0c0004
	v_lshl_or_b32 v52, v55, 16, v61
	v_lshl_or_b32 v51, v56, 16, v51
	v_wmma_i32_16x16x16_iu4 v[17:24], v[49:50], v[41:42], v[17:24] neg_lo:[1,1,0]
	v_lshl_or_b32 v42, v54, 16, v53
	v_lshl_or_b32 v41, v58, 16, v57
	v_wmma_i32_16x16x16_iu4 v[25:32], v[33:34], v[43:44], v[25:32] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[49:50], v[43:44], v[9:16] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[1:8], v[51:52], v[45:46], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[17:24], v[41:42], v[45:46], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[25:32], v[51:52], v[47:48], v[25:32] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[41:42], v[47:48], v[9:16] neg_lo:[1,1,0]
.LBB0_9:
	.loc	1 99 32                         ; generate_amdgcn.py:99:32
	v_lshrrev_b32_e32 v33, 3, v35
	.loc	1 142 14                        ; generate_amdgcn.py:142:14
	s_and_b32 s9, s5, 0xffff
	s_mov_b32 s11, 0x31027000
	s_mov_b32 s10, 0x7ffffffe
	s_mov_b32 s8, s4
	.loc	1 142 22 is_stmt 0              ; generate_amdgcn.py:142:22
	v_or3_b32 v33, v33, v39, s20
	.loc	1 100 32 is_stmt 1              ; generate_amdgcn.py:100:32
	v_bfe_u32 v34, v0, 4, 1
	v_and_b32_e32 v55, 0x7f, v0
	.loc	1 141 15                        ; generate_amdgcn.py:141:15
	v_cvt_f32_i32_e32 v57, v4
	v_cvt_f32_i32_e32 v58, v6
	.loc	1 142 22                        ; generate_amdgcn.py:142:22
	v_lshlrev_b32_e32 v33, 1, v33
	.loc	1 141 15                        ; generate_amdgcn.py:141:15
	v_cvt_f32_i32_e32 v59, v8
	.loc	1 144 9                         ; generate_amdgcn.py:144:9
	v_and_b32_e32 v4, 14, v0
	v_and_b32_e32 v6, 0x78, v37
	v_and_b32_e32 v8, 1, v0
	.loc	1 142 14                        ; generate_amdgcn.py:142:14
	v_or_b32_e32 v39, 64, v33
	.loc	1 144 9                         ; generate_amdgcn.py:144:9
	v_bfe_i32 v0, v0, 0, 1
	.loc	1 141 15                        ; generate_amdgcn.py:141:15
	v_cvt_f32_i32_e32 v69, v12
	.loc	1 144 9                         ; generate_amdgcn.py:144:9
	v_lshl_or_b32 v6, v36, 3, v6
	.loc	1 142 14                        ; generate_amdgcn.py:142:14
	s_clause 0x1
	buffer_load_u16 v33, v33, s[8:11], 0 offen
	buffer_load_u16 v39, v39, s[8:11], 0 offen
	.loc	1 144 9                         ; generate_amdgcn.py:144:9
	v_lshlrev_b32_e32 v12, 11, v4
	v_and_b32_e32 v0, 0x840, v0
	.loc	1 143 22                        ; generate_amdgcn.py:143:22
	v_or3_b32 v34, v34, v40, s3
	.loc	1 143 14 is_stmt 0              ; generate_amdgcn.py:143:14
	s_and_b32 s9, s7, 0xffff
	s_mov_b32 s8, s6
	.loc	1 144 9 is_stmt 1               ; generate_amdgcn.py:144:9
	v_cmp_eq_u32_e32 vcc_lo, 0, v35
	v_xor_b32_e32 v0, v6, v0
	.loc	1 141 15                        ; generate_amdgcn.py:141:15
	v_cvt_f32_i32_e32 v67, v10
	v_cvt_f32_i32_e32 v25, v25
	v_cvt_f32_i32_e32 v63, v26
	.loc	1 144 9                         ; generate_amdgcn.py:144:9
	v_cndmask_b32_e64 v10, 0x840, 0, vcc_lo
	v_or3_b32 v0, v0, v12, v35
	.loc	1 141 15                        ; generate_amdgcn.py:141:15
	v_cvt_f32_i32_e32 v66, v9
	.loc	1 144 9                         ; generate_amdgcn.py:144:9
	v_lshlrev_b32_e32 v4, 2, v4
	.loc	1 141 15                        ; generate_amdgcn.py:141:15
	v_cvt_f32_i32_e32 v70, v13
	.loc	1 99 32                         ; generate_amdgcn.py:99:32
	v_lshrrev_b32_e32 v56, 7, v35
	.loc	1 144 9                         ; generate_amdgcn.py:144:9
	v_add_nc_u32_e32 v88, 0, v0
	v_xad_u32 v89, v0, 8, 0
	v_xad_u32 v90, v0, 16, 0
	v_xad_u32 v91, v0, 24, 0
	v_xad_u32 v92, v0, 32, 0
	v_xad_u32 v93, v0, 40, 0
	v_xad_u32 v94, v0, 48, 0
	v_xad_u32 v95, v0, 56, 0
	.loc	1 141 15                        ; generate_amdgcn.py:141:15
	v_cvt_f32_i32_e32 v60, v20
	v_cvt_f32_i32_e32 v64, v28
	v_cvt_f32_i32_e32 v29, v29
	v_cvt_f32_i32_e32 v68, v11
	.loc	1 218 23                        ; generate_amdgcn.py:218:23
	v_mul_lo_u32 v11, s21, v56
	.loc	1 141 15                        ; generate_amdgcn.py:141:15
	v_cvt_f32_i32_e32 v62, v24
	v_cvt_f32_i32_e32 v27, v27
	v_cvt_f32_i32_e32 v65, v30
	v_cvt_f32_i32_e32 v31, v31
	v_cvt_f32_i32_e32 v71, v14
	.loc	1 218 23                        ; generate_amdgcn.py:218:23
	s_mul_i32 s2, s20, s21
	.loc	1 141 15                        ; generate_amdgcn.py:141:15
	v_cvt_f32_i32_e32 v7, v7
	.loc	1 218 23                        ; generate_amdgcn.py:218:23
	s_add_i32 s2, s2, s3
	.loc	1 141 15                        ; generate_amdgcn.py:141:15
	v_cvt_f32_i32_e32 v61, v22
	v_cvt_f32_i32_e32 v32, v32
	v_cvt_f32_i32_e32 v72, v15
	v_cvt_f32_i32_e32 v73, v16
	v_cvt_f32_i32_e32 v5, v5
	v_cvt_f32_i32_e32 v1, v1
	v_cvt_f32_i32_e32 v17, v17
	v_cvt_f32_i32_e32 v23, v23
	v_cvt_f32_i32_e32 v2, v2
	v_cvt_f32_i32_e32 v3, v3
	v_cvt_f32_i32_e32 v18, v18
	v_cvt_f32_i32_e32 v19, v19
	v_cvt_f32_i32_e32 v21, v21
	.loc	1 218 23                        ; generate_amdgcn.py:218:23
	s_lshl_b32 s5, s21, 1
	s_lshl_b32 s6, s21, 2
	s_mul_i32 s7, s21, 6
	s_mul_i32 s12, s21, 12
	s_mul_i32 s13, s21, 14
	s_lshl_b32 s14, s21, 4
	s_mul_i32 s15, s21, 18
	s_mul_i32 s16, s21, 20
	s_mul_i32 s17, s21, 22
	s_mul_i32 s18, s21, 24
	s_mul_i32 s19, s21, 26
	s_mul_i32 s20, s21, 28
	s_mul_i32 s22, s21, 30
	s_lshl_b32 s23, s21, 5
	s_mul_i32 s24, s21, 34
	s_mul_i32 s25, s21, 36
	s_mul_i32 s26, s21, 38
	s_mul_i32 s27, s21, 40
	s_mul_i32 s28, s21, 42
	s_mul_i32 s29, s21, 44
	s_mul_i32 s30, s21, 46
	s_mul_i32 s31, s21, 48
	s_mul_i32 s33, s21, 50
	s_mul_i32 s34, s21, 52
	.loc	1 218 9 is_stmt 0               ; generate_amdgcn.py:218:9
	s_and_b32 s1, s1, 0xffff
	s_mov_b32 s3, s11
	.loc	1 218 23                        ; generate_amdgcn.py:218:23
	s_mul_i32 s35, s21, 54
	s_mul_i32 s36, s21, 56
	s_mul_i32 s37, s21, 58
	s_mul_i32 s38, s21, 60
	s_mul_i32 s4, s21, 62
	.loc	1 142 14 is_stmt 1              ; generate_amdgcn.py:142:14
	s_waitcnt vmcnt(1)
	v_lshlrev_b32_e32 v0, 16, v33
	.loc	1 143 22                        ; generate_amdgcn.py:143:22
	v_lshlrev_b32_e32 v34, 1, v34
	.loc	1 144 9                         ; generate_amdgcn.py:144:9
	v_lshlrev_b32_e32 v8, 6, v8
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 143 14                        ; generate_amdgcn.py:143:14
	v_or_b32_e32 v40, 4, v34
	v_or_b32_e32 v41, 8, v34
	v_or_b32_e32 v42, 12, v34
	v_or_b32_e32 v43, 16, v34
	v_or_b32_e32 v44, 20, v34
	v_or_b32_e32 v45, 24, v34
	v_or_b32_e32 v46, 28, v34
	s_clause 0x7
	buffer_load_u16 v47, v34, s[8:11], 0 offen
	buffer_load_u16 v40, v40, s[8:11], 0 offen
	buffer_load_u16 v41, v41, s[8:11], 0 offen
	buffer_load_u16 v42, v42, s[8:11], 0 offen
	buffer_load_u16 v43, v43, s[8:11], 0 offen
	buffer_load_u16 v44, v44, s[8:11], 0 offen
	buffer_load_u16 v45, v45, s[8:11], 0 offen
	buffer_load_u16 v46, v46, s[8:11], 0 offen
	.loc	1 144 9                         ; generate_amdgcn.py:144:9
	v_xor_b32_e32 v6, v10, v8
	.loc	1 143 14                        ; generate_amdgcn.py:143:14
	s_waitcnt vmcnt(4)
	v_lshlrev_b32_e32 v10, 16, v42
	s_waitcnt vmcnt(2)
	v_lshlrev_b32_e32 v12, 16, v44
	.loc	1 144 9                         ; generate_amdgcn.py:144:9
	v_and_b32_e32 v9, 0x700, v38
	.loc	1 144 16 is_stmt 0              ; generate_amdgcn.py:144:16
	s_waitcnt vmcnt(1)
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_dual_mul_f32 v42, v0, v12 :: v_dual_lshlrev_b32 v13, 16, v45
	.loc	1 144 9                         ; generate_amdgcn.py:144:9
	v_or3_b32 v4, v9, v4, v6
	s_delay_alu instid0(VALU_DEP_1)
	v_add_nc_u32_e32 v96, 0, v4
	v_xad_u32 v97, 0x1008, v4, 0
	v_xad_u32 v98, 0x2010, v4, 0
	v_xad_u32 v99, 0x3018, v4, 0
	v_xad_u32 v100, 0x4020, v4, 0
	v_xad_u32 v101, 0x5028, v4, 0
	v_xad_u32 v102, 0x6030, v4, 0
	v_xad_u32 v103, 0x7038, v4, 0
	.loc	1 142 14 is_stmt 1              ; generate_amdgcn.py:142:14
	v_lshlrev_b32_e32 v4, 16, v39
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 144 16                        ; generate_amdgcn.py:144:16
	v_mul_f32_e32 v105, v4, v12
	.loc	1 143 14                        ; generate_amdgcn.py:143:14
	v_lshlrev_b32_e32 v9, 16, v41
	.loc	1 144 16                        ; generate_amdgcn.py:144:16
	v_mul_f32_e32 v39, v0, v9
	.loc	1 143 14                        ; generate_amdgcn.py:143:14
	v_or_b32_e32 v48, 0x80, v34
	v_or_b32_e32 v49, 0x84, v34
	v_or_b32_e32 v50, 0x88, v34
	v_or_b32_e32 v51, 0x8c, v34
	v_or_b32_e32 v52, 0x90, v34
	v_or_b32_e32 v53, 0x94, v34
	v_or_b32_e32 v54, 0x98, v34
	v_or_b32_e32 v34, 0x9c, v34
	s_clause 0x7
	buffer_load_u16 v48, v48, s[8:11], 0 offen
	buffer_load_u16 v49, v49, s[8:11], 0 offen
	buffer_load_u16 v50, v50, s[8:11], 0 offen
	buffer_load_u16 v51, v51, s[8:11], 0 offen
	buffer_load_u16 v52, v52, s[8:11], 0 offen
	buffer_load_u16 v53, v53, s[8:11], 0 offen
	buffer_load_u16 v54, v54, s[8:11], 0 offen
	buffer_load_u16 v34, v34, s[8:11], 0 offen
	.loc	1 144 9                         ; generate_amdgcn.py:144:9
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 218 23                        ; generate_amdgcn.py:218:23
	s_lshl_b32 s8, s21, 3
	s_mul_i32 s9, s21, 10
	.loc	1 143 14                        ; generate_amdgcn.py:143:14
	s_waitcnt vmcnt(4)
	v_lshlrev_b32_e32 v22, 16, v51
	s_waitcnt vmcnt(3)
	v_lshlrev_b32_e32 v24, 16, v52
	v_lshlrev_b32_e32 v6, 16, v47
	s_waitcnt vmcnt(1)
	v_lshlrev_b32_e32 v28, 16, v54
	v_lshlrev_b32_e32 v20, 16, v50
	v_lshlrev_b32_e32 v26, 16, v53
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v30, 16, v34
	v_lshlrev_b32_e32 v15, 16, v48
	.loc	1 144 16                        ; generate_amdgcn.py:144:16
	v_mul_f32_e32 v51, v0, v28
	v_mul_f32_e32 v47, v0, v20
	v_dual_mul_f32 v113, v4, v28 :: v_dual_lshlrev_b32 v14, 16, v46
	v_dual_mul_f32 v109, v4, v20 :: v_dual_lshlrev_b32 v16, 16, v49
	v_mul_f32_e32 v111, v4, v24
	v_mul_f32_e32 v50, v0, v26
	v_mul_f32_e32 v52, v0, v30
	v_dual_mul_f32 v107, v4, v15 :: v_dual_lshlrev_b32 v8, 16, v40
	v_mul_f32_e32 v40, v0, v10
	.loc	1 218 23                        ; generate_amdgcn.py:218:23
	v_add3_u32 v36, s2, v55, v11
	.loc	1 143 14                        ; generate_amdgcn.py:143:14
	v_lshlrev_b32_e32 v11, 16, v43
	.loc	1 144 16                        ; generate_amdgcn.py:144:16
	v_mul_f32_e32 v43, v0, v13
	v_mul_f32_e32 v106, v4, v14
	v_mul_f32_e32 v104, v4, v10
	v_mul_f32_e32 v45, v0, v15
	v_mul_f32_e32 v46, v0, v16
	v_dual_mul_f32 v9, v4, v9 :: v_dual_mul_f32 v12, v43, v7
	.loc	1 144 9 is_stmt 0               ; generate_amdgcn.py:144:9
	v_mul_f32_e32 v15, v106, v32
	v_mul_f32_e32 v7, v104, v64
	.loc	1 144 16                        ; generate_amdgcn.py:144:16
	v_mul_f32_e32 v48, v0, v22
	v_mul_f32_e32 v41, v0, v11
	v_mul_f32_e32 v11, v4, v11
	v_mul_f32_e32 v13, v4, v13
	v_mul_f32_e32 v34, v0, v8
	v_mul_f32_e32 v54, v4, v8
	v_mul_f32_e32 v110, v4, v22
	.loc	1 144 9                         ; generate_amdgcn.py:144:9
	v_mul_f32_e32 v8, v41, v5
	v_mul_f32_e32 v5, v9, v27
	.loc	1 144 16                        ; generate_amdgcn.py:144:16
	v_mul_f32_e32 v49, v0, v24
	v_mul_f32_e32 v33, v0, v6
	v_mul_f32_e32 v53, v4, v6
	.loc	1 144 9                         ; generate_amdgcn.py:144:9
	v_mul_f32_e32 v9, v11, v29
	v_dual_mul_f32 v11, v105, v65 :: v_dual_mul_f32 v114, v4, v30
	v_mul_f32_e32 v29, v113, v72
	.loc	1 144 16                        ; generate_amdgcn.py:144:16
	v_mul_f32_e32 v108, v4, v16
	v_dual_mul_f32 v44, v0, v14 :: v_dual_lshlrev_b32 v35, 2, v36
	.loc	1 144 9                         ; generate_amdgcn.py:144:9
	v_dual_mul_f32 v13, v13, v31 :: v_dual_mul_f32 v112, v4, v26
	v_mul_f32_e32 v31, v114, v73
	v_mul_f32_e32 v16, v45, v17
	v_mul_f32_e32 v28, v51, v23
	v_mul_f32_e32 v17, v107, v66
	v_mul_f32_e32 v23, v110, v69
	v_mul_f32_e32 v0, v33, v1
	v_dual_mul_f32 v1, v53, v25 :: v_dual_mul_f32 v2, v34, v2
	v_mul_f32_e32 v27, v112, v71
	v_mul_f32_e32 v4, v39, v3
	v_mul_f32_e32 v18, v46, v18
	v_mul_f32_e32 v20, v47, v19
	v_mul_f32_e32 v3, v54, v63
	v_dual_mul_f32 v19, v108, v67 :: v_dual_mul_f32 v24, v49, v21
	v_dual_mul_f32 v21, v109, v68 :: v_dual_mul_f32 v6, v40, v57
	v_dual_mul_f32 v25, v111, v70 :: v_dual_mul_f32 v22, v48, v60
	v_mul_f32_e32 v10, v42, v58
	v_mul_f32_e32 v14, v44, v59
	v_mul_f32_e32 v26, v50, v61
	v_mul_f32_e32 v30, v52, v62
	ds_store_2addr_stride64_b64 v88, v[0:1], v[16:17] offset1:2
	ds_store_2addr_stride64_b64 v89, v[2:3], v[18:19] offset1:2
	ds_store_2addr_stride64_b64 v90, v[4:5], v[20:21] offset1:2
	ds_store_2addr_stride64_b64 v91, v[6:7], v[22:23] offset1:2
	ds_store_2addr_stride64_b64 v92, v[8:9], v[24:25] offset1:2
	ds_store_2addr_stride64_b64 v93, v[10:11], v[26:27] offset1:2
	ds_store_2addr_stride64_b64 v94, v[12:13], v[28:29] offset1:2
	ds_store_2addr_stride64_b64 v95, v[14:15], v[30:31] offset1:2
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_2addr_b64 v[0:3], v96 offset1:16
	ds_load_2addr_b64 v[4:7], v97 offset1:16
	ds_load_2addr_b64 v[8:11], v98 offset1:16
	ds_load_2addr_b64 v[12:15], v99 offset1:16
	ds_load_2addr_b64 v[16:19], v100 offset1:16
	ds_load_2addr_b64 v[20:23], v101 offset1:16
	ds_load_2addr_b64 v[24:27], v102 offset1:16
	ds_load_2addr_b64 v[28:31], v103 offset1:16
	.loc	1 218 9 is_stmt 1               ; generate_amdgcn.py:218:9
	v_add_lshl_u32 v37, v36, s5, 2
	v_add_lshl_u32 v38, v36, s6, 2
	s_mov_b32 s2, s10
	v_add_lshl_u32 v55, v36, s7, 2
	v_add_lshl_u32 v56, v36, s8, 2
	v_add_lshl_u32 v74, v36, s9, 2
	v_add_lshl_u32 v75, v36, s12, 2
	v_add_lshl_u32 v76, v36, s13, 2
	v_add_lshl_u32 v77, v36, s14, 2
	v_add_lshl_u32 v78, v36, s15, 2
	v_add_lshl_u32 v79, v36, s16, 2
	v_add_lshl_u32 v80, v36, s17, 2
	v_add_lshl_u32 v81, v36, s18, 2
	v_add_lshl_u32 v82, v36, s19, 2
	v_add_lshl_u32 v83, v36, s20, 2
	v_add_lshl_u32 v84, v36, s22, 2
	v_add_lshl_u32 v85, v36, s23, 2
	v_add_lshl_u32 v86, v36, s24, 2
	v_add_lshl_u32 v87, v36, s25, 2
	v_add_lshl_u32 v32, v36, s26, 2
	v_add_lshl_u32 v33, v36, s27, 2
	v_add_lshl_u32 v34, v36, s28, 2
	v_add_lshl_u32 v39, v36, s29, 2
	v_add_lshl_u32 v40, v36, s30, 2
	v_add_lshl_u32 v41, v36, s31, 2
	v_add_lshl_u32 v42, v36, s33, 2
	v_add_lshl_u32 v43, v36, s34, 2
	s_waitcnt lgkmcnt(7)
	buffer_atomic_add_f32 v0, v35, s[0:3], 0 offen
	s_waitcnt lgkmcnt(6)
	buffer_atomic_add_f32 v4, v37, s[0:3], 0 offen
	s_waitcnt lgkmcnt(5)
	buffer_atomic_add_f32 v8, v38, s[0:3], 0 offen
	s_waitcnt lgkmcnt(4)
	buffer_atomic_add_f32 v12, v55, s[0:3], 0 offen
	s_waitcnt lgkmcnt(3)
	buffer_atomic_add_f32 v16, v56, s[0:3], 0 offen
	s_waitcnt lgkmcnt(2)
	buffer_atomic_add_f32 v20, v74, s[0:3], 0 offen
	s_waitcnt lgkmcnt(1)
	buffer_atomic_add_f32 v24, v75, s[0:3], 0 offen
	s_waitcnt lgkmcnt(0)
	s_clause 0x13
	buffer_atomic_add_f32 v28, v76, s[0:3], 0 offen
	buffer_atomic_add_f32 v2, v77, s[0:3], 0 offen
	buffer_atomic_add_f32 v6, v78, s[0:3], 0 offen
	buffer_atomic_add_f32 v10, v79, s[0:3], 0 offen
	buffer_atomic_add_f32 v14, v80, s[0:3], 0 offen
	buffer_atomic_add_f32 v18, v81, s[0:3], 0 offen
	buffer_atomic_add_f32 v22, v82, s[0:3], 0 offen
	buffer_atomic_add_f32 v26, v83, s[0:3], 0 offen
	buffer_atomic_add_f32 v30, v84, s[0:3], 0 offen
	buffer_atomic_add_f32 v1, v85, s[0:3], 0 offen
	buffer_atomic_add_f32 v5, v86, s[0:3], 0 offen
	buffer_atomic_add_f32 v9, v87, s[0:3], 0 offen
	buffer_atomic_add_f32 v13, v32, s[0:3], 0 offen
	buffer_atomic_add_f32 v17, v33, s[0:3], 0 offen
	buffer_atomic_add_f32 v21, v34, s[0:3], 0 offen
	buffer_atomic_add_f32 v25, v39, s[0:3], 0 offen
	buffer_atomic_add_f32 v29, v40, s[0:3], 0 offen
	buffer_atomic_add_f32 v3, v41, s[0:3], 0 offen
	buffer_atomic_add_f32 v7, v42, s[0:3], 0 offen
	buffer_atomic_add_f32 v11, v43, s[0:3], 0 offen
	v_add_lshl_u32 v44, v36, s35, 2
	v_add_lshl_u32 v45, v36, s36, 2
	v_add_lshl_u32 v46, v36, s37, 2
	v_add_lshl_u32 v47, v36, s38, 2
	v_add_lshl_u32 v0, v36, s4, 2
	s_clause 0x4
	buffer_atomic_add_f32 v15, v44, s[0:3], 0 offen
	buffer_atomic_add_f32 v19, v45, s[0:3], 0 offen
	buffer_atomic_add_f32 v23, v46, s[0:3], 0 offen
	buffer_atomic_add_f32 v27, v47, s[0:3], 0 offen
	buffer_atomic_add_f32 v31, v0, s[0:3], 0 offen
	.loc	1 80 1                          ; generate_amdgcn.py:80:1
	s_nop 0
	s_sendmsg sendmsg(MSG_DEALLOC_VGPRS)
	s_endpgm
.Ltmp16:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_int4xint4_nn_pc_none_bm64_bn128_bk32_gm4_w8_s2_weu2_sk4_evenk
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
		.amdhsa_inst_pref_size 41
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
	.size	amd_strix_halo_gfx1151_int4xint4_nn_pc_none_bm64_bn128_bk32_gm4_w8_s2_weu2_sk4_evenk, .Lfunc_end0-amd_strix_halo_gfx1151_int4xint4_nn_pc_none_bm64_bn128_bk32_gm4_w8_s2_weu2_sk4_evenk
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_int4xint4_nn_pc_none_bm64_bn128_bk32_gm4_w8_s2_weu2_sk4_evenk.num_vgpr, 115
	.set amd_strix_halo_gfx1151_int4xint4_nn_pc_none_bm64_bn128_bk32_gm4_w8_s2_weu2_sk4_evenk.num_agpr, 0
	.set amd_strix_halo_gfx1151_int4xint4_nn_pc_none_bm64_bn128_bk32_gm4_w8_s2_weu2_sk4_evenk.numbered_sgpr, 39
	.set amd_strix_halo_gfx1151_int4xint4_nn_pc_none_bm64_bn128_bk32_gm4_w8_s2_weu2_sk4_evenk.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_int4xint4_nn_pc_none_bm64_bn128_bk32_gm4_w8_s2_weu2_sk4_evenk.private_seg_size, 0
	.set amd_strix_halo_gfx1151_int4xint4_nn_pc_none_bm64_bn128_bk32_gm4_w8_s2_weu2_sk4_evenk.uses_vcc, 1
	.set amd_strix_halo_gfx1151_int4xint4_nn_pc_none_bm64_bn128_bk32_gm4_w8_s2_weu2_sk4_evenk.uses_flat_scratch, 0
	.set amd_strix_halo_gfx1151_int4xint4_nn_pc_none_bm64_bn128_bk32_gm4_w8_s2_weu2_sk4_evenk.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_int4xint4_nn_pc_none_bm64_bn128_bk32_gm4_w8_s2_weu2_sk4_evenk.has_recursion, 0
	.set amd_strix_halo_gfx1151_int4xint4_nn_pc_none_bm64_bn128_bk32_gm4_w8_s2_weu2_sk4_evenk.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 5136
; TotalNumSgprs: 41
; NumVgprs: 115
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
	.asciz	"amd_strix_halo_gfx1151_int4xint4_nn_pc_none_bm64_bn128_bk32_gm4_w8_s2_weu2_sk4_evenk"             ; string offset=75 ; amd_strix_halo_gfx1151_int4xint4_nn_pc_none_bm64_bn128_bk32_gm4_w8_s2_weu2_sk4_evenk
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
    .name:           amd_strix_halo_gfx1151_int4xint4_nn_pc_none_bm64_bn128_bk32_gm4_w8_s2_weu2_sk4_evenk
    .private_segment_fixed_size: 0
    .sgpr_count:     41
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_int4xint4_nn_pc_none_bm64_bn128_bk32_gm4_w8_s2_weu2_sk4_evenk.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     115
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
