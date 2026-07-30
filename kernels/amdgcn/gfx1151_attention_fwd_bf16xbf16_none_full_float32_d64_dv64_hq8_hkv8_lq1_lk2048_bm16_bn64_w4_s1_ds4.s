	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_none_full_float32_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w4_s1_ds4                          ; -- Begin function amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_none_full_float32_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w4_s1_ds4
	.p2align	8
	.type	amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_none_full_float32_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w4_s1_ds4,@function
amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_none_full_float32_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w4_s1_ds4:                                 ; @amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_none_full_float32_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w4_s1_ds4
.Lfunc_begin0:
	.file	1 "<repo>/src/amd_strix_halo_kernels" "attention.py"
	.loc	1 502 0                         ; attention.py:502:0
	.cfi_sections .debug_frame
	.cfi_startproc
; %bb.0:
	s_clause 0x1
	s_load_b32 s33, s[0:1], 0x60
	s_load_b64 s[22:23], s[0:1], 0x58
.Ltmp0:
	.loc	1 559 27 prologue_end           ; attention.py:559:27
	s_abs_i32 s7, s2
	.loc	1 570 31                        ; attention.py:570:31
	v_lshrrev_b32_e32 v18, 3, v0
	s_clause 0x1
	s_load_b64 s[20:21], s[0:1], 0x40
	s_load_b64 s[24:25], s[0:1], 0x0
	s_mov_b32 s27, 0x31027000
	s_mov_b32 s26, 0x7ffffffe
	.loc	1 599 26                        ; attention.py:599:26
	v_lshlrev_b32_e32 v44, 1, v0
	v_lshlrev_b32_e32 v46, 4, v0
	.loc	1 570 31                        ; attention.py:570:31
	v_and_b32_e32 v45, 15, v0
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 599 26                        ; attention.py:599:26
	v_and_b32_e32 v6, 0x70, v44
	v_xor_b32_e32 v6, v46, v6
	.loc	1 609 32                        ; attention.py:609:32
	s_waitcnt lgkmcnt(0)
	s_abs_i32 s5, s33
	.loc	1 559 27                        ; attention.py:559:27
	s_xor_b32 s8, s2, s33
	.loc	1 609 32                        ; attention.py:609:32
	s_cvt_f32_u32 s4, s5
	s_sub_i32 s6, 0, s5
	.loc	1 559 27                        ; attention.py:559:27
	s_ashr_i32 s8, s8, 31
	.loc	1 599 26                        ; attention.py:599:26
	v_add_nc_u32_e32 v47, 0, v6
	.loc	1 609 32                        ; attention.py:609:32
	v_rcp_iflag_f32_e32 v1, s4
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_readfirstlane_b32 s4, v1
	.loc	1 598 79                        ; attention.py:598:79
	v_and_b32_e32 v1, 7, v0
	.loc	1 609 32                        ; attention.py:609:32
	s_mul_f32 s4, s4, 0x4f7ffffe
	.loc	1 598 79                        ; attention.py:598:79
	v_lshlrev_b32_e32 v17, 3, v1
	s_delay_alu instid0(SALU_CYCLE_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 609 32                        ; attention.py:609:32
	s_cvt_u32_f32 s4, s4
	.loc	1 598 26                        ; attention.py:598:26
	v_mad_u64_u32 v[41:42], null, s22, v18, v[17:18]
	s_delay_alu instid0(SALU_CYCLE_2) | instskip(SKIP_2) | instid1(SALU_CYCLE_1)
	.loc	1 609 32                        ; attention.py:609:32
	s_mul_i32 s6, s6, s4
	.loc	1 601 61                        ; attention.py:601:61
	v_cmp_gt_i32_e32 vcc_lo, s22, v17
	.loc	1 609 32                        ; attention.py:609:32
	s_mul_hi_u32 s6, s4, s6
	s_add_i32 s6, s4, s6
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	.loc	1 559 27                        ; attention.py:559:27
	s_mul_hi_u32 s4, s7, s6
	s_mul_i32 s9, s4, s5
	s_delay_alu instid0(SALU_CYCLE_1)
	s_sub_i32 s7, s7, s9
	s_add_i32 s9, s4, 1
	s_sub_i32 s10, s7, s5
	s_cmp_ge_u32 s7, s5
	s_cselect_b32 s4, s9, s4
	s_cselect_b32 s7, s10, s7
	s_add_i32 s9, s4, 1
	s_cmp_ge_u32 s7, s5
	s_cselect_b32 s4, s9, s4
	.loc	1 599 26                        ; attention.py:599:26
	s_and_b32 s25, s25, 0xffff
	.loc	1 559 27                        ; attention.py:559:27
	s_xor_b32 s4, s4, s8
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_sub_i32 s7, s4, s8
	.loc	1 564 19                        ; attention.py:564:19
	s_lshl_b32 s8, s7, 4
	.loc	1 560 27                        ; attention.py:560:27
	s_mul_i32 s7, s7, s33
	.loc	1 570 21                        ; attention.py:570:21
	v_or_b32_e32 v2, s8, v18
	.loc	1 598 26                        ; attention.py:598:26
	s_add_i32 s4, s8, s3
	.loc	1 560 27                        ; attention.py:560:27
	s_sub_i32 s11, s2, s7
	.loc	1 598 26                        ; attention.py:598:26
	s_mul_i32 s9, s4, s22
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 601 23                        ; attention.py:601:23
	v_cmp_gt_i32_e64 s4, 1, v2
	.loc	1 599 26                        ; attention.py:599:26
	v_add_lshl_u32 v2, s9, v41, 1
	.loc	1 601 22                        ; attention.py:601:22
	s_and_b32 s4, vcc_lo, s4
	s_delay_alu instid0(VALU_DEP_1) | instid1(SALU_CYCLE_1)
	.loc	1 599 26                        ; attention.py:599:26
	v_cndmask_b32_e64 v2, 0x80000000, v2, s4
	.loc	1 0 0 is_stmt 0                 ; attention.py:0
	s_add_i32 s4, s33, 31
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 609 32 is_stmt 1              ; attention.py:609:32
	s_xor_b32 s9, s4, s33
	s_abs_i32 s4, s4
	.loc	1 599 26                        ; attention.py:599:26
	buffer_load_b128 v[2:5], v2, s[24:27], 0 offen
	.loc	1 609 32                        ; attention.py:609:32
	s_mul_hi_u32 s6, s4, s6
	s_ashr_i32 s9, s9, 31
	s_mul_i32 s10, s6, s5
	s_add_i32 s12, s6, 1
	s_sub_i32 s4, s4, s10
	s_delay_alu instid0(SALU_CYCLE_1)
	s_sub_i32 s2, s4, s5
	s_cmp_ge_u32 s4, s5
	s_cselect_b32 s6, s12, s6
	s_cselect_b32 s2, s2, s4
	s_add_i32 s4, s6, 1
	s_cmp_ge_u32 s2, s5
	s_mov_b32 s12, 0
	s_cselect_b32 s2, s4, s6
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_xor_b32 s2, s2, s9
	s_sub_i32 s2, s2, s9
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_2) | instid1(SALU_CYCLE_1)
	.loc	1 610 18                        ; attention.py:610:18
	s_mul_i32 s4, s11, s2
	.loc	1 611 33                        ; attention.py:611:33
	s_lshl_b32 s2, s2, 6
	.loc	1 610 18                        ; attention.py:610:18
	s_lshl_b32 s34, s4, 6
	.loc	1 611 33                        ; attention.py:611:33
	s_add_i32 s2, s34, s2
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	.loc	1 611 18 is_stmt 0              ; attention.py:611:18
	s_min_i32 s35, s2, 0x800
	.loc	1 629 13 is_stmt 1              ; attention.py:629:13
	s_cmp_ge_i32 s34, s35
	.loc	1 599 26                        ; attention.py:599:26
	s_waitcnt vmcnt(0)
	ds_store_b128 v47, v[2:5]
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 629 13                        ; attention.py:629:13
	s_cbranch_scc1 .LBB0_3
; %bb.1:                                ; %.lr.ph
	.loc	1 599 26                        ; attention.py:599:26
	v_lshlrev_b32_e32 v1, 4, v1
	s_clause 0x1
	s_load_b32 s2, s[0:1], 0x64
	s_load_b128 s[4:7], s[0:1], 0x8
	.loc	1 570 21                        ; attention.py:570:21
	v_or_b32_e32 v2, s8, v45
	.loc	1 696 65                        ; attention.py:696:65
	v_cmp_gt_i32_e64 s0, s23, v17
	.loc	1 629 13                        ; attention.py:629:13
	v_mad_u64_u32 v[42:43], null, s23, v18, v[17:18]
	.loc	1 599 26                        ; attention.py:599:26
	v_lshl_or_b32 v19, v45, 7, v1
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 601 23                        ; attention.py:601:23
	v_cmp_gt_i32_e64 s1, 1, v2
	.loc	1 571 21                        ; attention.py:571:21
	v_bfe_i32 v3, v0, 4, 1
	.loc	1 629 13                        ; attention.py:629:13
	v_sub_nc_u32_e32 v48, 0x800, v18
	.loc	1 656 32                        ; attention.py:656:32
	s_lshl_b32 s36, s3, 11
	.loc	1 599 26                        ; attention.py:599:26
	v_xor_b32_e32 v22, 48, v19
	v_xor_b32_e32 v20, 16, v19
	v_xor_b32_e32 v21, 32, v19
	v_xor_b32_e32 v2, 0x60, v19
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_dual_mov_b32 v17, 0 :: v_dual_add_nc_u32 v54, 0, v22
	v_and_b32_e32 v23, 16, v0
	v_add_nc_u32_e32 v55, 0, v21
	s_delay_alu instid0(VALU_DEP_4)
	v_dual_mov_b32 v21, 0x7632 :: v_dual_add_nc_u32 v50, 0, v2
	.loc	1 664 27                        ; attention.py:664:27
	s_waitcnt lgkmcnt(0)
	s_mul_f32 s37, s2, 0x3fb8aa3b
	.loc	1 599 26                        ; attention.py:599:26
	v_add_nc_u32_e32 v56, 0, v20
	v_mov_b32_e32 v20, 0x5410
	v_mov_b32_e32 v24, v17
	v_cmp_eq_u32_e64 s2, 0, v23
	v_xor_b32_e32 v1, 0x70, v19
	v_xor_b32_e32 v4, 0x50, v19
	v_xor_b32_e32 v5, 64, v19
	v_add_nc_u32_e32 v57, 0, v19
	v_cndmask_b32_e64 v19, 0x1054, v20, s2
	v_cndmask_b32_e64 v20, 0x3276, v21, s2
	v_lshlrev_b32_e32 v21, 1, v45
	v_dual_mov_b32 v23, v17 :: v_dual_and_b32 v22, 0x60, v0
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_lshl_or_b32 v19, v19, 8, v19
	v_lshl_or_b32 v20, v20, 8, v20
	v_dual_mov_b32 v18, v17 :: v_dual_add_nc_u32 v49, 0, v1
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_add3_u32 v60, 0, v21, v22
	v_and_b32_e32 v19, 0x540054, v19
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_dual_mov_b32 v21, v17 :: v_dual_and_b32 v20, 0x760076, v20
	v_add_nc_u32_e32 v51, 0, v4
	v_dual_mov_b32 v43, 0xff800000 :: v_dual_add_nc_u32 v52, 0, v5
	v_lshl_or_b32 v20, v20, 4, v20
	v_lshl_or_b32 v19, v19, 4, v19
	v_dual_mov_b32 v22, v17 :: v_dual_add_nc_u32 v53, 0x800, v3
	ds_load_b128 v[29:32], v54
	ds_load_b128 v[25:28], v55
	v_and_b32_e32 v59, 0x7060706, v20
	v_mov_b32_e32 v20, v17
	ds_load_b128 v[5:8], v49
	ds_load_b128 v[1:4], v50
	ds_load_b128 v[13:16], v51
	ds_load_b128 v[9:12], v52
	v_dual_mov_b32 v61, v17 :: v_dual_and_b32 v58, 0x5040504, v19
	v_mov_b32_e32 v19, v17
	ds_load_b128 v[37:40], v56
	ds_load_b128 v[33:36], v57
	s_and_b32 s5, s5, 0xffff
	s_lshl_b32 s38, s22, 4
	s_lshl_b32 s39, s22, 5
	s_mul_i32 s40, s22, 48
	s_lshl_b32 s41, s23, 4
	s_lshl_b32 s42, s23, 5
	s_mul_i32 s43, s23, 48
	s_and_b32 s29, s7, 0xffff
	s_mov_b32 s24, s4
	s_mov_b32 s25, s5
	s_mov_b32 s13, s12
	s_mov_b32 s14, s12
	s_mov_b32 s15, s12
	s_mov_b32 s16, s12
	s_mov_b32 s17, s12
	s_mov_b32 s18, s12
	s_mov_b32 s19, s12
	s_mov_b32 s44, 0x76543210
	s_mov_b32 s28, s6
	s_mov_b32 s30, s26
	s_mov_b32 s31, s27
.LBB0_2:                                ; =>This Inner Loop Header: Depth=1
	.loc	1 657 32                        ; attention.py:657:32
	s_add_i32 s5, s34, s36
	.loc	1 660 65                        ; attention.py:660:65
	v_cmp_lt_i32_e64 s2, s34, v48
	.loc	1 657 32                        ; attention.py:657:32
	v_mad_u64_u32 v[62:63], null, s5, s22, v[41:42]
	.loc	1 663 30                        ; attention.py:663:30
	v_dual_mov_b32 v101, s19 :: v_dual_mov_b32 v98, s16
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	.loc	1 660 30                        ; attention.py:660:30
	s_and_b32 s4, vcc_lo, s2
	.loc	1 663 30                        ; attention.py:663:30
	v_dual_mov_b32 v99, s17 :: v_dual_mov_b32 v96, s14
	v_dual_mov_b32 v97, s15 :: v_dual_mov_b32 v94, s12
	v_dual_mov_b32 v100, s18 :: v_dual_lshlrev_b32 v63, 1, v62
	.loc	1 658 32                        ; attention.py:658:32
	v_add_lshl_u32 v64, v62, s38, 1
	v_add_lshl_u32 v65, v62, s39, 1
	v_add_lshl_u32 v62, v62, s40, 1
	s_delay_alu instid0(VALU_DEP_4)
	v_cndmask_b32_e64 v63, 0x80000000, v63, s4
	.loc	1 663 30                        ; attention.py:663:30
	v_mov_b32_e32 v95, s13
	.loc	1 658 32                        ; attention.py:658:32
	v_cndmask_b32_e64 v66, 0x80000000, v64, s4
	v_cndmask_b32_e64 v70, 0x80000000, v65, s4
	v_cndmask_b32_e64 v74, 0x80000000, v62, s4
	s_clause 0x3
	buffer_load_b128 v[62:65], v63, s[24:27], 0 offen
	buffer_load_b128 v[66:69], v66, s[24:27], 0 offen
	buffer_load_b128 v[70:73], v70, s[24:27], 0 offen
	buffer_load_b128 v[74:77], v74, s[24:27], 0 offen
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 696 26                        ; attention.py:696:26
	s_and_b32 s2, s0, s2
	.loc	1 658 32                        ; attention.py:658:32
	s_waitcnt vmcnt(3)
	ds_store_b128 v47, v[62:65]
	s_waitcnt vmcnt(2)
	ds_store_b128 v47, v[66:69] offset:2048
	s_waitcnt vmcnt(1)
	ds_store_b128 v47, v[70:73] offset:4096
	s_waitcnt vmcnt(0)
	ds_store_b128 v47, v[74:77] offset:6144
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[66:69], v56
	ds_load_b128 v[62:65], v57
	ds_load_b128 v[70:73], v57 offset:2048
	ds_load_b128 v[74:77], v56 offset:2048
	ds_load_b128 v[82:85], v56 offset:4096
	ds_load_b128 v[78:81], v57 offset:4096
	ds_load_b128 v[86:89], v57 offset:6144
	ds_load_b128 v[90:93], v56 offset:6144
	.loc	1 663 30                        ; attention.py:663:30
	s_waitcnt lgkmcnt(6)
	v_wmma_f32_16x16x16_bf16 v[102:109], v[62:69], v[33:40], v[94:101]
	.loc	1 658 32                        ; attention.py:658:32
	ds_load_b128 v[66:69], v54
	ds_load_b128 v[62:65], v55
	.loc	1 663 30                        ; attention.py:663:30
	s_waitcnt lgkmcnt(6)
	v_wmma_f32_16x16x16_bf16 v[110:117], v[70:77], v[33:40], v[94:101]
	s_waitcnt lgkmcnt(4)
	v_wmma_f32_16x16x16_bf16 v[118:125], v[78:85], v[33:40], v[94:101]
	s_waitcnt lgkmcnt(2)
	v_wmma_f32_16x16x16_bf16 v[126:133], v[86:93], v[33:40], v[94:101]
	v_mad_u64_u32 v[94:95], null, s5, s23, v[42:43]
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 694 30                        ; attention.py:694:30
	v_lshlrev_b32_e32 v95, 1, v94
	v_add_lshl_u32 v96, v94, s41, 1
	v_add_lshl_u32 v97, v94, s42, 1
	v_add_lshl_u32 v94, v94, s43, 1
	.loc	1 663 30                        ; attention.py:663:30
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[102:109], v[62:69], v[25:32], v[102:109]
	.loc	1 658 32                        ; attention.py:658:32
	ds_load_b128 v[62:65], v55 offset:2048
	ds_load_b128 v[66:69], v54 offset:2048
	.loc	1 694 30                        ; attention.py:694:30
	v_cndmask_b32_e64 v95, 0x80000000, v95, s2
	v_cndmask_b32_e64 v98, 0x80000000, v96, s2
	.loc	1 663 30                        ; attention.py:663:30
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[110:117], v[62:69], v[25:32], v[110:117]
	.loc	1 658 32                        ; attention.py:658:32
	ds_load_b128 v[66:69], v54 offset:4096
	ds_load_b128 v[62:65], v55 offset:4096
	.loc	1 663 30                        ; attention.py:663:30
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[118:125], v[62:69], v[25:32], v[118:125]
	.loc	1 658 32                        ; attention.py:658:32
	ds_load_b128 v[62:65], v55 offset:6144
	ds_load_b128 v[66:69], v54 offset:6144
	.loc	1 663 30                        ; attention.py:663:30
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[126:133], v[62:69], v[25:32], v[126:133]
	.loc	1 658 32                        ; attention.py:658:32
	ds_load_b128 v[66:69], v51
	ds_load_b128 v[62:65], v52
	.loc	1 663 30                        ; attention.py:663:30
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[102:109], v[62:69], v[9:16], v[102:109]
	.loc	1 658 32                        ; attention.py:658:32
	ds_load_b128 v[62:65], v52 offset:2048
	ds_load_b128 v[66:69], v51 offset:2048
	.loc	1 663 30                        ; attention.py:663:30
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[110:117], v[62:69], v[9:16], v[110:117]
	.loc	1 658 32                        ; attention.py:658:32
	ds_load_b128 v[66:69], v51 offset:4096
	ds_load_b128 v[62:65], v52 offset:4096
	.loc	1 663 30                        ; attention.py:663:30
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[118:125], v[62:69], v[9:16], v[118:125]
	.loc	1 658 32                        ; attention.py:658:32
	ds_load_b128 v[62:65], v52 offset:6144
	ds_load_b128 v[66:69], v51 offset:6144
	.loc	1 663 30                        ; attention.py:663:30
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[126:133], v[62:69], v[9:16], v[126:133]
	.loc	1 658 32                        ; attention.py:658:32
	ds_load_b128 v[66:69], v49
	ds_load_b128 v[62:65], v50
	.loc	1 663 30                        ; attention.py:663:30
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[102:109], v[62:69], v[1:8], v[102:109]
	.loc	1 658 32                        ; attention.py:658:32
	ds_load_b128 v[62:65], v50 offset:2048
	ds_load_b128 v[66:69], v49 offset:2048
	.loc	1 664 17                        ; attention.py:664:17
	v_dual_mul_f32 v71, s37, v105 :: v_dual_mul_f32 v72, s37, v106
	.loc	1 694 30                        ; attention.py:694:30
	v_cndmask_b32_e64 v106, 0x80000000, v94, s2
	.loc	1 664 17                        ; attention.py:664:17
	v_mul_f32_e32 v70, s37, v103
	.loc	1 663 30                        ; attention.py:663:30
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[110:117], v[62:69], v[1:8], v[110:117]
	.loc	1 658 32                        ; attention.py:658:32
	ds_load_b128 v[66:69], v49 offset:4096
	ds_load_b128 v[62:65], v50 offset:4096
	.loc	1 664 17                        ; attention.py:664:17
	v_mul_f32_e32 v73, s37, v107
	v_dual_mul_f32 v85, s37, v111 :: v_dual_mul_f32 v90, s37, v116
	v_mul_f32_e32 v86, s37, v112
	v_mul_f32_e32 v88, s37, v114
	.loc	1 663 30                        ; attention.py:663:30
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[118:125], v[62:69], v[1:8], v[118:125]
	.loc	1 658 32                        ; attention.py:658:32
	ds_load_b128 v[62:65], v50 offset:6144
	ds_load_b128 v[66:69], v49 offset:6144
	.loc	1 664 17                        ; attention.py:664:17
	v_mul_f32_e32 v89, s37, v115
	v_mul_f32_e32 v91, s37, v117
	v_dual_mul_f32 v87, s37, v113 :: v_dual_mul_f32 v92, s37, v118
	v_dual_mul_f32 v93, s37, v119 :: v_dual_mul_f32 v80, s37, v124
	.loc	1 663 30                        ; attention.py:663:30
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[126:133], v[62:69], v[1:8], v[126:133]
	.loc	1 664 17                        ; attention.py:664:17
	v_dual_mul_f32 v69, s37, v102 :: v_dual_mul_f32 v62, s37, v104
	.loc	1 694 30                        ; attention.py:694:30
	v_cndmask_b32_e64 v102, 0x80000000, v97, s2
	.loc	1 664 17                        ; attention.py:664:17
	v_mul_f32_e32 v63, s37, v108
	v_mul_f32_e32 v67, s37, v109
	.loc	1 694 30                        ; attention.py:694:30
	s_clause 0x3
	buffer_load_b128 v[94:97], v95, s[28:31], 0 offen
	buffer_load_b128 v[98:101], v98, s[28:31], 0 offen
	buffer_load_b128 v[102:105], v102, s[28:31], 0 offen
	buffer_load_b128 v[106:109], v106, s[28:31], 0 offen
	.loc	1 660 65                        ; attention.py:660:65
	v_cmp_lt_i32_e64 s2, s34, v53
	.loc	1 664 17                        ; attention.py:664:17
	v_mul_f32_e32 v68, s37, v110
	v_dual_mul_f32 v64, s37, v120 :: v_dual_mul_f32 v65, s37, v121
	v_mul_f32_e32 v82, s37, v126
	v_dual_mul_f32 v66, s37, v122 :: v_dual_mul_f32 v79, s37, v123
	v_dual_mul_f32 v84, s37, v128 :: v_dual_mul_f32 v81, s37, v125
	v_dual_mul_f32 v76, s37, v130 :: v_dual_mul_f32 v83, s37, v127
	v_dual_mul_f32 v78, s37, v133 :: v_dual_mul_f32 v77, s37, v132
	.loc	1 694 30                        ; attention.py:694:30
	v_add_nc_u32_e32 v110, 0, v46
	.loc	1 665 25                        ; attention.py:665:25
	s_and_b32 s2, s1, s2
	.loc	1 694 30                        ; attention.py:694:30
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 686 26                        ; attention.py:686:26
	v_cndmask_b32_e64 v88, 0xff800000, v88, s2
	v_cndmask_b32_e64 v89, 0xff800000, v89, s2
	v_cndmask_b32_e64 v90, 0xff800000, v90, s2
	v_cndmask_b32_e64 v91, 0xff800000, v91, s2
	v_cndmask_b32_e64 v92, 0xff800000, v92, s2
	v_cndmask_b32_e64 v93, 0xff800000, v93, s2
	v_cndmask_b32_e64 v62, 0xff800000, v62, s2
	.loc	1 664 17                        ; attention.py:664:17
	v_dual_mul_f32 v75, s37, v129 :: v_dual_mul_f32 v74, s37, v131
	.loc	1 629 13                        ; attention.py:629:13
	s_add_i32 s34, s34, 64
	.loc	1 694 30                        ; attention.py:694:30
	s_waitcnt vmcnt(3)
	ds_store_b128 v110, v[94:97]
	s_waitcnt vmcnt(2)
	ds_store_b128 v110, v[98:101] offset:2048
	s_waitcnt vmcnt(1)
	ds_store_b128 v110, v[102:105] offset:4096
	s_waitcnt vmcnt(0)
	ds_store_b128 v110, v[106:109] offset:6144
	.loc	1 686 26                        ; attention.py:686:26
	v_cndmask_b32_e64 v97, 0xff800000, v64, s2
	v_cndmask_b32_e64 v98, 0xff800000, v65, s2
	v_cndmask_b32_e64 v99, 0xff800000, v66, s2
	v_cndmask_b32_e64 v100, 0xff800000, v79, s2
	v_cndmask_b32_e64 v101, 0xff800000, v80, s2
	v_cndmask_b32_e64 v102, 0xff800000, v81, s2
	v_cndmask_b32_e64 v64, 0xff800000, v82, s2
	v_cndmask_b32_e64 v65, 0xff800000, v83, s2
	v_cndmask_b32_e64 v66, 0xff800000, v84, s2
	v_cndmask_b32_e64 v94, 0xff800000, v85, s2
	v_cndmask_b32_e64 v95, 0xff800000, v86, s2
	v_cndmask_b32_e64 v96, 0xff800000, v87, s2
.Ltmp1:
	.file	2 "<triton>/python/triton/language" "standard.py"
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max3_f32 v79, v97, v98, v99
	v_max3_f32 v80, v100, v101, v102
	v_max3_f32 v81, v64, v65, v66
	v_max3_f32 v86, v88, v89, v90
	v_max3_f32 v85, v94, v95, v96
	v_max3_f32 v87, v91, v92, v93
.Ltmp2:
	.loc	1 686 26                        ; attention.py:686:26
	v_cndmask_b32_e64 v82, 0xff800000, v71, s2
.Ltmp3:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max3_f32 v79, v79, v80, v81
.Ltmp4:
	.loc	1 686 26                        ; attention.py:686:26
	v_cndmask_b32_e64 v80, 0xff800000, v69, s2
	v_cndmask_b32_e64 v81, 0xff800000, v70, s2
	v_cndmask_b32_e64 v83, 0xff800000, v72, s2
	v_cndmask_b32_e64 v84, 0xff800000, v73, s2
.Ltmp5:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max3_f32 v85, v85, v86, v87
.Ltmp6:
	.loc	1 686 26                        ; attention.py:686:26
	v_cndmask_b32_e64 v86, 0xff800000, v63, s2
.Ltmp7:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max_f32_e32 v69, v80, v81
.Ltmp8:
	.loc	1 686 26                        ; attention.py:686:26
	v_cndmask_b32_e64 v87, 0xff800000, v67, s2
.Ltmp9:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max3_f32 v70, v82, v83, v84
.Ltmp10:
	.loc	1 686 26                        ; attention.py:686:26
	v_cndmask_b32_e64 v103, 0xff800000, v68, s2
	v_cndmask_b32_e64 v67, 0xff800000, v77, s2
	v_cndmask_b32_e64 v68, 0xff800000, v78, s2
	v_cndmask_b32_e64 v71, 0xff800000, v74, s2
.Ltmp11:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max3_f32 v69, v69, v62, v70
	v_max3_f32 v63, v86, v87, v103
.Ltmp12:
	.loc	1 686 26                        ; attention.py:686:26
	v_cndmask_b32_e64 v70, 0xff800000, v76, s2
.Ltmp13:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max_f32_e32 v73, v67, v68
.Ltmp14:
	.loc	1 694 30                        ; attention.py:694:30
	s_waitcnt lgkmcnt(0)
	s_barrier
.Ltmp15:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max3_f32 v63, v69, v63, v85
.Ltmp16:
	.loc	1 686 26                        ; attention.py:686:26
	v_cndmask_b32_e64 v69, 0xff800000, v75, s2
	v_mov_b32_e32 v85, v43
	.loc	1 629 13                        ; attention.py:629:13
	s_cmp_lt_i32 s34, s35
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp17:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max_f32_e32 v72, v69, v70
	v_max3_f32 v72, v72, v71, v73
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_max3_f32 v63, v63, v79, v72
.Ltmp18:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:687:29 ]
	v_permlanex16_b32 v43, v63, s44, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp19:
	.loc	1 688 24                        ; attention.py:688:24
	v_max3_f32 v43, v85, v63, v43
	.loc	1 690 62                        ; attention.py:690:62
	v_sub_f32_e32 v62, v62, v43
	v_sub_f32_e32 v72, v80, v43
	v_sub_f32_e32 v76, v84, v43
	v_sub_f32_e32 v78, v87, v43
	v_sub_f32_e32 v67, v67, v43
	.loc	1 690 49 is_stmt 0              ; attention.py:690:49
	v_exp_f32_e32 v62, v62
	v_exp_f32_e32 v72, v72
	v_exp_f32_e32 v76, v76
	v_exp_f32_e32 v78, v78
	v_exp_f32_e32 v67, v67
	.loc	1 690 62                        ; attention.py:690:62
	v_sub_f32_e32 v68, v68, v43
	v_sub_f32_e32 v64, v64, v43
	v_sub_f32_e32 v66, v66, v43
	v_sub_f32_e32 v70, v70, v43
	v_sub_f32_e32 v65, v65, v43
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v106, 0, v62, s2
	v_cndmask_b32_e64 v105, 0, v72, s2
	v_cndmask_b32_e64 v109, 0, v76, s2
	v_cndmask_b32_e64 v111, 0, v78, s2
	v_cndmask_b32_e64 v67, 0, v67, s2
	.loc	1 700 30 is_stmt 1              ; attention.py:700:30
	v_mov_b16_e32 v62.l, v106.h
	.loc	1 690 62                        ; attention.py:690:62
	v_sub_f32_e32 v63, v81, v43
	.loc	1 700 30                        ; attention.py:700:30
	v_mov_b16_e32 v72.l, v105.h
	v_cmp_o_f32_e64 s5, v105, v105
	.loc	1 690 49                        ; attention.py:690:49
	v_exp_f32_e32 v68, v68
	v_exp_f32_e32 v64, v64
	v_exp_f32_e32 v63, v63
	v_exp_f32_e32 v66, v66
	v_exp_f32_e32 v70, v70
	.loc	1 700 30                        ; attention.py:700:30
	v_cmp_o_f32_e64 s10, v67, v67
	.loc	1 690 49                        ; attention.py:690:49
	v_exp_f32_e32 v65, v65
	.loc	1 690 62 is_stmt 0              ; attention.py:690:62
	v_sub_f32_e32 v69, v69, v43
	v_sub_f32_e32 v71, v71, v43
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v64, 0, v64, s2
	v_cndmask_b32_e64 v104, 0, v63, s2
	.loc	1 700 30 is_stmt 1              ; attention.py:700:30
	v_mov_b16_e32 v63.h, 0
	.loc	1 690 49                        ; attention.py:690:49
	v_exp_f32_e32 v69, v69
	.loc	1 690 33 is_stmt 0              ; attention.py:690:33
	v_cndmask_b32_e64 v66, 0, v66, s2
	s_delay_alu instid0(TRANS32_DEP_2)
	v_cndmask_b32_e64 v65, 0, v65, s2
	.loc	1 700 30 is_stmt 1              ; attention.py:700:30
	v_mov_b16_e32 v63.l, v104.h
	v_mov_b16_e32 v72.h, v63.h
	v_cmp_o_f32_e64 s4, v104, v104
	v_mov_b16_e32 v62.h, v63.h
	v_cmp_o_f32_e64 s7, v64, v64
	v_and_b32_e32 v73, 1, v63
	v_and_b32_e32 v72, 1, v72
	v_cmp_o_f32_e64 s8, v66, v66
	v_and_b32_e32 v62, 1, v62
	v_cmp_o_f32_e64 s6, v65, v65
	v_add3_u32 v73, v104, v73, 0x7fff
	v_add3_u32 v72, v105, v72, 0x7fff
	.loc	1 690 49                        ; attention.py:690:49
	v_exp_f32_e32 v71, v71
	.loc	1 700 30                        ; attention.py:700:30
	v_add3_u32 v62, v106, v62, 0x7fff
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cndmask_b16 v73.h, 0x7fff, v73.h, s4
	v_cndmask_b16 v73.l, 0x7fff, v72.h, s5
	v_cmp_o_f32_e64 s5, v106, v106
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_permlanex16_b32 v74, v73, s44, 0xfedcba98 op_sel:[1,0]
	v_cndmask_b16 v62.l, 0x7fff, v62.h, s5
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_perm_b32 v72, v74, v73, v58
	v_perm_b32 v73, v74, v73, v59
	.loc	1 690 62                        ; attention.py:690:62
	v_sub_f32_e32 v74, v82, v43
	.loc	1 690 49 is_stmt 0              ; attention.py:690:49
	v_exp_f32_e32 v74, v74
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v107, 0, v74, s2
	.loc	1 700 30 is_stmt 1              ; attention.py:700:30
	v_mov_b16_e32 v63.l, v107.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cmp_o_f32_e64 s4, v107, v107
	v_and_b32_e32 v74, 1, v63
	v_mov_b16_e32 v63.l, v109.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_add3_u32 v74, v107, v74, 0x7fff
	v_and_b32_e32 v76, 1, v63
	v_mov_b16_e32 v63.l, v111.h
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_cndmask_b16 v62.h, 0x7fff, v74.h, s4
	v_cmp_o_f32_e64 s4, v109, v109
	v_add3_u32 v76, v109, v76, 0x7fff
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_and_b32_e32 v78, 1, v63
	v_permlanex16_b32 v75, v62, s44, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_add3_u32 v78, v111, v78, 0x7fff
	v_perm_b32 v74, v75, v62, v58
	v_perm_b32 v75, v75, v62, v59
	.loc	1 690 62                        ; attention.py:690:62
	v_sub_f32_e32 v62, v83, v43
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 690 49 is_stmt 0              ; attention.py:690:49
	v_exp_f32_e32 v62, v62
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v108, 0, v62, s2
	.loc	1 700 30 is_stmt 1              ; attention.py:700:30
	v_mov_b16_e32 v62.h, v63.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mov_b16_e32 v62.l, v108.h
	v_cmp_o_f32_e64 s5, v108, v108
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v62, 1, v62
	v_add3_u32 v62, v108, v62, 0x7fff
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_cndmask_b16 v62.l, 0x7fff, v62.h, s5
	v_cndmask_b16 v62.h, 0x7fff, v76.h, s4
	v_cmp_o_f32_e64 s4, v111, v111
	v_permlanex16_b32 v77, v62, s44, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_perm_b32 v76, v77, v62, v58
	v_perm_b32 v77, v77, v62, v59
	.loc	1 690 62                        ; attention.py:690:62
	v_sub_f32_e32 v62, v86, v43
	.loc	1 690 49 is_stmt 0              ; attention.py:690:49
	v_exp_f32_e32 v62, v62
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v110, 0, v62, s2
	.loc	1 700 30 is_stmt 1              ; attention.py:700:30
	v_mov_b16_e32 v62.h, v63.h
	v_mov_b16_e32 v62.l, v110.h
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cmp_o_f32_e64 s5, v110, v110
	v_and_b32_e32 v62, 1, v62
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add3_u32 v62, v110, v62, 0x7fff
	v_cndmask_b16 v62.l, 0x7fff, v62.h, s5
	v_cndmask_b16 v62.h, 0x7fff, v78.h, s4
	.loc	1 689 25                        ; attention.py:689:25
	v_cmp_neq_f32_e64 s4, 0xff800000, v85
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 700 30                        ; attention.py:700:30
	v_permlanex16_b32 v79, v62, s44, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v78, v79, v62, v58
	v_perm_b32 v79, v79, v62, v59
	.loc	1 689 74                        ; attention.py:689:74
	v_sub_f32_e32 v62, v85, v43
	.loc	1 694 30                        ; attention.py:694:30
	ds_load_u16_d16 v80, v60
	ds_load_u16_d16 v81, v60 offset:256
	ds_load_u16_d16 v82, v60 offset:512
	ds_load_u16_d16 v83, v60 offset:768
	ds_load_u16_d16 v84, v60 offset:1024
	ds_load_u16_d16 v85, v60 offset:1280
	ds_load_u16_d16 v86, v60 offset:1536
	ds_load_u16_d16 v87, v60 offset:1792
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v80, v60 offset:128
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v81, v60 offset:384
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v82, v60 offset:640
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v83, v60 offset:896
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v84, v60 offset:1152
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v85, v60 offset:1408
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v86, v60 offset:1664
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v87, v60 offset:1920
	.loc	1 689 61                        ; attention.py:689:61
	v_exp_f32_e32 v62, v62
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 689 25 is_stmt 0              ; attention.py:689:25
	v_cndmask_b32_e64 v62, 0, v62, s4
	.loc	1 699 23 is_stmt 1              ; attention.py:699:23
	v_mul_f32_e32 v17, v17, v62
	v_mul_f32_e32 v18, v18, v62
	v_mul_f32_e32 v19, v19, v62
	v_mul_f32_e32 v20, v20, v62
	v_mul_f32_e32 v21, v21, v62
	v_mul_f32_e32 v22, v22, v62
	v_mul_f32_e32 v23, v23, v62
	v_mul_f32_e32 v24, v24, v62
	.loc	1 700 23                        ; attention.py:700:23
	s_waitcnt lgkmcnt(0)
	s_delay_alu instid0(VALU_DEP_1)
	v_wmma_f32_16x16x16_bf16 v[17:24], v[80:87], v[72:79], v[17:24]
	.loc	1 690 62                        ; attention.py:690:62
	v_sub_f32_e32 v72, v103, v43
	v_sub_f32_e32 v73, v94, v43
	v_sub_f32_e32 v75, v96, v43
	v_sub_f32_e32 v77, v89, v43
	v_sub_f32_e32 v79, v91, v43
	.loc	1 690 49 is_stmt 0              ; attention.py:690:49
	v_exp_f32_e32 v72, v72
	v_exp_f32_e32 v73, v73
	v_exp_f32_e32 v75, v75
	v_exp_f32_e32 v77, v77
	v_exp_f32_e32 v79, v79
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v103, 0, v72, s2
	.loc	1 700 30 is_stmt 1              ; attention.py:700:30
	v_mov_b16_e32 v72.h, v63.h
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v112, 0, v73, s2
	s_delay_alu instid0(TRANS32_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	v_cndmask_b32_e64 v114, 0, v75, s2
	v_cndmask_b32_e64 v116, 0, v77, s2
	.loc	1 700 30                        ; attention.py:700:30
	v_mov_b16_e32 v72.l, v103.h
	v_cmp_o_f32_e64 s5, v103, v103
	v_mov_b16_e32 v63.l, v112.h
	v_cmp_o_f32_e64 s4, v112, v112
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v118, 0, v79, s2
	.loc	1 700 30                        ; attention.py:700:30
	v_and_b32_e32 v72, 1, v72
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add3_u32 v72, v103, v72, 0x7fff
	v_cndmask_b16 v73.l, 0x7fff, v72.h, s5
	v_and_b32_e32 v72, 1, v63
	v_mov_b16_e32 v63.l, v114.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add3_u32 v72, v112, v72, 0x7fff
	v_cndmask_b16 v73.h, 0x7fff, v72.h, s4
	v_cmp_o_f32_e64 s4, v114, v114
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_permlanex16_b32 v74, v73, s44, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v72, v74, v73, v58
	v_perm_b32 v73, v74, v73, v59
	.loc	1 690 62                        ; attention.py:690:62
	v_sub_f32_e32 v74, v95, v43
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 690 49 is_stmt 0              ; attention.py:690:49
	v_exp_f32_e32 v74, v74
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v113, 0, v74, s2
	.loc	1 700 30 is_stmt 1              ; attention.py:700:30
	v_mov_b16_e32 v74.h, v63.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mov_b16_e32 v74.l, v113.h
	v_cmp_o_f32_e64 s5, v113, v113
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v74, 1, v74
	v_add3_u32 v74, v113, v74, 0x7fff
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_cndmask_b16 v75.l, 0x7fff, v74.h, s5
	v_and_b32_e32 v74, 1, v63
	v_mov_b16_e32 v63.l, v116.h
	v_add3_u32 v74, v114, v74, 0x7fff
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_cndmask_b16 v75.h, 0x7fff, v74.h, s4
	v_cmp_o_f32_e64 s4, v116, v116
	v_permlanex16_b32 v76, v75, s44, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_perm_b32 v74, v76, v75, v58
	v_perm_b32 v75, v76, v75, v59
	.loc	1 690 62                        ; attention.py:690:62
	v_sub_f32_e32 v76, v88, v43
	.loc	1 690 49 is_stmt 0              ; attention.py:690:49
	v_exp_f32_e32 v76, v76
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v115, 0, v76, s2
	.loc	1 700 30 is_stmt 1              ; attention.py:700:30
	v_mov_b16_e32 v76.h, v63.h
	v_mov_b16_e32 v76.l, v115.h
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cmp_o_f32_e64 s5, v115, v115
	v_and_b32_e32 v76, 1, v76
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add3_u32 v76, v115, v76, 0x7fff
	v_cndmask_b16 v77.l, 0x7fff, v76.h, s5
	v_and_b32_e32 v76, 1, v63
	v_mov_b16_e32 v63.l, v118.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add3_u32 v76, v116, v76, 0x7fff
	v_cndmask_b16 v77.h, 0x7fff, v76.h, s4
	v_cmp_o_f32_e64 s4, v118, v118
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_permlanex16_b32 v78, v77, s44, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v76, v78, v77, v58
	v_perm_b32 v77, v78, v77, v59
	.loc	1 690 62                        ; attention.py:690:62
	v_sub_f32_e32 v78, v90, v43
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 690 49 is_stmt 0              ; attention.py:690:49
	v_exp_f32_e32 v78, v78
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v117, 0, v78, s2
	.loc	1 700 30 is_stmt 1              ; attention.py:700:30
	v_mov_b16_e32 v78.h, v63.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mov_b16_e32 v78.l, v117.h
	v_cmp_o_f32_e64 s5, v117, v117
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v78, 1, v78
	v_add3_u32 v78, v117, v78, 0x7fff
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_cndmask_b16 v79.l, 0x7fff, v78.h, s5
	v_and_b32_e32 v78, 1, v63
	v_add3_u32 v78, v118, v78, 0x7fff
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_cndmask_b16 v79.h, 0x7fff, v78.h, s4
	v_permlanex16_b32 v80, v79, s44, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1)
	v_perm_b32 v78, v80, v79, v58
	v_perm_b32 v79, v80, v79, v59
	.loc	1 694 30                        ; attention.py:694:30
	ds_load_u16_d16 v80, v60 offset:2048
	ds_load_u16_d16 v81, v60 offset:2304
	ds_load_u16_d16 v82, v60 offset:2560
	ds_load_u16_d16 v83, v60 offset:2816
	ds_load_u16_d16 v84, v60 offset:3072
	ds_load_u16_d16 v85, v60 offset:3328
	ds_load_u16_d16 v86, v60 offset:3584
	ds_load_u16_d16 v87, v60 offset:3840
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v80, v60 offset:2176
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v81, v60 offset:2432
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v82, v60 offset:2688
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v83, v60 offset:2944
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v84, v60 offset:3200
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v85, v60 offset:3456
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v86, v60 offset:3712
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v87, v60 offset:3968
	.loc	1 700 23                        ; attention.py:700:23
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[17:24], v[80:87], v[72:79], v[17:24]
	.loc	1 690 62                        ; attention.py:690:62
	v_sub_f32_e32 v72, v92, v43
	v_sub_f32_e32 v73, v93, v43
	.loc	1 700 30                        ; attention.py:700:30
	v_mov_b16_e32 v74.h, v63.h
.Ltmp20:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:691:24 ] ]
	v_dual_add_f32 v76, v103, v112 :: v_dual_add_f32 v77, v113, v114
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp21:
	.loc	1 690 49                        ; attention.py:690:49
	v_exp_f32_e32 v72, v72
	v_exp_f32_e32 v73, v73
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 690 33 is_stmt 0              ; attention.py:690:33
	v_cndmask_b32_e64 v72, 0, v72, s2
	v_cndmask_b32_e64 v73, 0, v73, s2
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 700 30 is_stmt 1              ; attention.py:700:30
	v_mov_b16_e32 v74.l, v72.h
	v_mov_b16_e32 v63.l, v73.h
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cmp_o_f32_e64 s4, v72, v72
	v_cmp_o_f32_e64 s5, v73, v73
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_and_b32_e32 v74, 1, v74
	v_and_b32_e32 v75, 1, v63
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_add3_u32 v74, v72, v74, 0x7fff
	v_add3_u32 v75, v73, v75, 0x7fff
.Ltmp22:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:691:24 ] ]
	v_add_f32_e32 v72, v72, v73
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp23:
	.loc	1 700 30                        ; attention.py:700:30
	v_cndmask_b16 v74.l, 0x7fff, v74.h, s4
	v_cndmask_b16 v74.h, 0x7fff, v75.h, s5
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_permlanex16_b32 v75, v74, s44, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v83, v75, v74, v58
	v_perm_b32 v84, v75, v74, v59
	.loc	1 690 62                        ; attention.py:690:62
	v_sub_f32_e32 v74, v97, v43
	v_sub_f32_e32 v75, v98, v43
	.loc	1 694 30                        ; attention.py:694:30
	ds_load_u16_d16 v91, v60 offset:4096
	ds_load_u16_d16 v92, v60 offset:4352
	ds_load_u16_d16 v93, v60 offset:4608
	ds_load_u16_d16 v94, v60 offset:4864
	ds_load_u16_d16 v95, v60 offset:5120
	ds_load_u16_d16 v96, v60 offset:5376
	ds_load_u16_d16 v97, v60 offset:5632
	ds_load_u16_d16 v98, v60 offset:5888
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v91, v60 offset:4224
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v92, v60 offset:4480
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v93, v60 offset:4736
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v94, v60 offset:4992
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v95, v60 offset:5248
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v96, v60 offset:5504
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v97, v60 offset:5760
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v98, v60 offset:6016
	.loc	1 690 49                        ; attention.py:690:49
	v_exp_f32_e32 v74, v74
	v_exp_f32_e32 v75, v75
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 690 33 is_stmt 0              ; attention.py:690:33
	v_cndmask_b32_e64 v78, 0, v74, s2
	v_cndmask_b32_e64 v119, 0, v75, s2
	.loc	1 700 30 is_stmt 1              ; attention.py:700:30
	v_mov_b16_e32 v74.h, v63.h
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mov_b16_e32 v74.l, v78.h
	v_mov_b16_e32 v63.l, v119.h
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_cmp_o_f32_e64 s4, v119, v119
	v_cmp_o_f32_e64 s5, v78, v78
.Ltmp24:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:691:24 ] ]
	v_dual_add_f32 v73, v78, v119 :: v_dual_and_b32 v74, 1, v74
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_dual_add_f32 v72, v72, v73 :: v_dual_and_b32 v75, 1, v63
.Ltmp25:
	.loc	1 700 30                        ; attention.py:700:30
	v_add3_u32 v74, v78, v74, 0x7fff
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_add3_u32 v75, v119, v75, 0x7fff
	v_cndmask_b16 v74.l, 0x7fff, v74.h, s5
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_cndmask_b16 v74.h, 0x7fff, v75.h, s4
	v_permlanex16_b32 v75, v74, s44, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	v_perm_b32 v85, v75, v74, v58
	v_perm_b32 v86, v75, v74, v59
	.loc	1 690 62                        ; attention.py:690:62
	v_sub_f32_e32 v74, v99, v43
	v_sub_f32_e32 v75, v100, v43
	.loc	1 690 49 is_stmt 0              ; attention.py:690:49
	v_exp_f32_e32 v74, v74
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	v_exp_f32_e32 v75, v75
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v79, 0, v74, s2
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_cndmask_b32_e64 v80, 0, v75, s2
	.loc	1 700 30 is_stmt 1              ; attention.py:700:30
	v_mov_b16_e32 v74.h, v63.h
	v_mov_b16_e32 v74.l, v79.h
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_mov_b16_e32 v63.l, v80.h
	v_cmp_o_f32_e64 s4, v80, v80
	v_cmp_o_f32_e64 s5, v79, v79
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_and_b32_e32 v74, 1, v74
	v_and_b32_e32 v75, 1, v63
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_add3_u32 v74, v79, v74, 0x7fff
	v_add3_u32 v75, v80, v75, 0x7fff
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b16 v74.l, 0x7fff, v74.h, s5
	v_cndmask_b16 v74.h, 0x7fff, v75.h, s4
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_permlanex16_b32 v75, v74, s44, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v87, v75, v74, v58
	v_perm_b32 v88, v75, v74, v59
	.loc	1 690 62                        ; attention.py:690:62
	v_sub_f32_e32 v74, v101, v43
	v_sub_f32_e32 v75, v102, v43
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 690 49 is_stmt 0              ; attention.py:690:49
	v_exp_f32_e32 v74, v74
	v_exp_f32_e32 v75, v75
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v81, 0, v74, s2
	v_cndmask_b32_e64 v82, 0, v75, s2
	.loc	1 700 30 is_stmt 1              ; attention.py:700:30
	v_mov_b16_e32 v74.h, v63.h
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mov_b16_e32 v74.l, v81.h
	v_mov_b16_e32 v63.l, v82.h
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_cmp_o_f32_e64 s4, v82, v82
	v_cmp_o_f32_e64 s5, v81, v81
	v_and_b32_e32 v74, 1, v74
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_and_b32_e32 v75, 1, v63
	v_mov_b16_e32 v63.l, v65.h
	v_add3_u32 v74, v81, v74, 0x7fff
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_add3_u32 v75, v82, v75, 0x7fff
	v_cndmask_b16 v74.l, 0x7fff, v74.h, s5
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_cndmask_b16 v74.h, 0x7fff, v75.h, s4
	v_permlanex16_b32 v75, v74, s44, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_3)
	v_perm_b32 v89, v75, v74, v58
	v_perm_b32 v90, v75, v74, v59
.Ltmp26:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:691:24 ] ]
	v_dual_add_f32 v74, v115, v116 :: v_dual_add_f32 v75, v117, v118
	v_dual_mov_b32 v78, v61 :: v_dual_add_f32 v61, v79, v80
.Ltmp27:
	.loc	1 700 23                        ; attention.py:700:23
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[17:24], v[91:98], v[83:90], v[17:24]
.Ltmp28:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:691:24 ] ]
	v_add_f32_e32 v84, v108, v109
	v_add_f32_e32 v86, v110, v111
.Ltmp29:
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v88, 0, v68, s2
.Ltmp30:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:691:24 ] ]
	v_add_f32_e32 v83, v105, v104
	v_add_f32_e32 v85, v106, v107
.Ltmp31:
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v87, 0, v71, s2
.Ltmp32:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:691:24 ] ]
	v_add_f32_e32 v71, v74, v75
	v_dual_add_f32 v75, v67, v88 :: v_dual_add_f32 v84, v84, v86
.Ltmp33:
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v86, 0, v69, s2
	v_cndmask_b32_e64 v69, 0, v70, s2
.Ltmp34:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:691:24 ] ]
	v_add_f32_e32 v80, v81, v82
	v_add_f32_e32 v82, v83, v85
	v_add_f32_e32 v70, v64, v65
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_dual_add_f32 v74, v66, v86 :: v_dual_add_f32 v73, v69, v87
.Ltmp35:
	.loc	1 700 30                        ; attention.py:700:30
	v_mov_b16_e32 v79.h, v63.h
.Ltmp36:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:691:24 ] ]
	v_dual_add_f32 v68, v76, v77 :: v_dual_add_f32 v61, v61, v80
.Ltmp37:
	.loc	1 700 30                        ; attention.py:700:30
	v_mov_b16_e32 v79.l, v64.h
.Ltmp38:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:691:24 ] ]
	v_dual_add_f32 v70, v70, v74 :: v_dual_add_f32 v73, v73, v75
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_add_f32_e32 v68, v68, v71
	v_dual_add_f32 v61, v72, v61 :: v_dual_and_b32 v74, 1, v79
	v_add_f32_e32 v79, v82, v84
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_add_f32_e32 v70, v70, v73
.Ltmp39:
	.loc	1 700 30                        ; attention.py:700:30
	v_mov_b16_e32 v81.h, v63.h
	v_mov_b16_e32 v83.h, v63.h
	v_add3_u32 v64, v64, v74, 0x7fff
.Ltmp40:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:691:24 ] ]
	v_dual_add_f32 v68, v79, v68 :: v_dual_add_f32 v61, v61, v70
.Ltmp41:
	.loc	1 700 30                        ; attention.py:700:30
	v_mov_b16_e32 v85.h, v63.h
	v_mov_b16_e32 v81.l, v66.h
	v_mov_b16_e32 v83.l, v69.h
	v_mov_b16_e32 v85.l, v67.h
.Ltmp42:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:691:24 ] ]
	v_add_f32_e32 v61, v68, v61
.Ltmp43:
	.loc	1 700 30                        ; attention.py:700:30
	v_cndmask_b16 v72.l, 0x7fff, v64.h, s7
	v_and_b32_e32 v75, 1, v81
	v_and_b32_e32 v76, 1, v83
	v_and_b32_e32 v77, 1, v85
.Ltmp44:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:691:24 ]
	v_permlanex16_b32 v64, v61, s44, 0xfedcba98 op_sel:[1,0]
.Ltmp45:
	.loc	1 700 30                        ; attention.py:700:30
	v_cmp_o_f32_e64 s9, v69, v69
	v_add3_u32 v66, v66, v75, 0x7fff
	v_add3_u32 v69, v69, v76, 0x7fff
	v_add3_u32 v67, v67, v77, 0x7fff
.Ltmp46:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:691:24 ] ]
	v_dual_add_f32 v61, v61, v64 :: v_dual_and_b32 v64, 1, v63
.Ltmp47:
	.loc	1 700 30                        ; attention.py:700:30
	v_mov_b16_e32 v63.l, v86.h
	v_cmp_o_f32_e64 s5, v86, v86
	v_cmp_o_f32_e64 s2, v87, v87
	v_cmp_o_f32_e64 s4, v88, v88
	v_add3_u32 v64, v65, v64, 0x7fff
	.loc	1 694 30                        ; attention.py:694:30
	ds_load_u16_d16 v64, v60 offset:6144
	ds_load_u16_d16 v65, v60 offset:6400
	ds_load_u16_d16 v66, v60 offset:6656
	ds_load_u16_d16 v67, v60 offset:6912
	ds_load_u16_d16 v68, v60 offset:7168
	ds_load_u16_d16 v69, v60 offset:7424
	ds_load_u16_d16 v70, v60 offset:7680
	ds_load_u16_d16 v71, v60 offset:7936
	.loc	1 700 30                        ; attention.py:700:30
	v_and_b32_e32 v76, 1, v63
	v_mov_b16_e32 v63.l, v87.h
	s_waitcnt lgkmcnt(5)
	v_cndmask_b16 v73.l, 0x7fff, v66.h, s8
	s_waitcnt lgkmcnt(2)
	v_cndmask_b16 v74.l, 0x7fff, v69.h, s9
	v_cndmask_b16 v75.l, 0x7fff, v67.h, s10
	v_add3_u32 v76, v86, v76, 0x7fff
	v_and_b32_e32 v77, 1, v63
	v_mov_b16_e32 v63.l, v88.h
	v_cndmask_b16 v72.h, 0x7fff, v64.h, s6
	.loc	1 694 30                        ; attention.py:694:30
	ds_load_u16_d16_hi v64, v60 offset:6272
	ds_load_u16_d16_hi v65, v60 offset:6528
	ds_load_u16_d16_hi v66, v60 offset:6784
	ds_load_u16_d16_hi v67, v60 offset:7040
	ds_load_u16_d16_hi v68, v60 offset:7296
	ds_load_u16_d16_hi v69, v60 offset:7552
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v70, v60 offset:7808
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v71, v60 offset:8064
	.loc	1 700 30                        ; attention.py:700:30
	v_and_b32_e32 v63, 1, v63
	v_cndmask_b16 v73.h, 0x7fff, v76.h, s5
	v_add3_u32 v76, v87, v77, 0x7fff
	v_permlanex16_b32 v77, v72, s44, 0xfedcba98 op_sel:[1,0]
	.loc	1 701 23                        ; attention.py:701:23
	v_fmac_f32_e32 v61, v78, v62
	.loc	1 700 30                        ; attention.py:700:30
	v_add3_u32 v63, v88, v63, 0x7fff
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_cndmask_b16 v74.h, 0x7fff, v76.h, s2
	v_permlanex16_b32 v76, v73, s44, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v79, v77, v72, v58
	v_cndmask_b16 v75.h, 0x7fff, v63.h, s4
	v_perm_b32 v80, v77, v72, v59
	v_permlanex16_b32 v63, v74, s44, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v81, v76, v73, v58
	v_perm_b32 v82, v76, v73, v59
	v_permlanex16_b32 v72, v75, s44, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_perm_b32 v83, v63, v74, v58
	v_perm_b32 v84, v63, v74, v59
	v_perm_b32 v85, v72, v75, v58
	v_perm_b32 v86, v72, v75, v59
	.loc	1 700 23 is_stmt 0              ; attention.py:700:23
	s_waitcnt lgkmcnt(0)
	s_delay_alu instid0(VALU_DEP_1)
	v_wmma_f32_16x16x16_bf16 v[17:24], v[64:71], v[79:86], v[17:24]
	.loc	1 629 13 is_stmt 1              ; attention.py:629:13
	s_cbranch_scc1 .LBB0_2
	s_branch .LBB0_4
.LBB0_3:
	.loc	1 0 13 is_stmt 0                ; attention.py:0:13
	v_dual_mov_b32 v24, 0 :: v_dual_mov_b32 v43, 0xff800000
	s_delay_alu instid0(VALU_DEP_1)
	v_mov_b32_e32 v23, v24
	v_mov_b32_e32 v22, v24
	v_mov_b32_e32 v21, v24
	v_mov_b32_e32 v20, v24
	v_mov_b32_e32 v19, v24
	v_mov_b32_e32 v18, v24
	v_mov_b32_e32 v17, v24
	v_mov_b32_e32 v61, v24
.LBB0_4:                                ; %._crit_edge
	.loc	1 825 26 is_stmt 1              ; attention.py:825:26
	v_cmp_eq_u32_e32 vcc_lo, 0, v45
	.loc	1 822 31                        ; attention.py:822:31
	s_mul_i32 s33, s33, s3
	.loc	1 821 32                        ; attention.py:821:32
	s_add_i32 s0, s23, 2
	.loc	1 822 31                        ; attention.py:822:31
	s_add_i32 s1, s11, s33
	.loc	1 833 13                        ; attention.py:833:13
	s_mov_b32 s2, exec_lo
	.loc	1 825 17                        ; attention.py:825:17
	v_dual_cndmask_b32 v1, 0xff800000, v43 :: v_dual_cndmask_b32 v4, 0, v17
	.loc	1 830 17                        ; attention.py:830:17
	v_dual_cndmask_b32 v5, 0, v18 :: v_dual_cndmask_b32 v12, 0, v21
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_dual_cndmask_b32 v13, 0, v22 :: v_dual_mov_b32 v2, v1
	.loc	1 828 36                        ; attention.py:828:36
	v_cndmask_b32_e32 v3, 0, v61, vcc_lo
.Ltmp48:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:824:29 ] ]
	v_dual_max_f32 v1, v1, v1 :: v_dual_cndmask_b32 v6, 0, v19
.Ltmp49:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:829:29 ]
	v_mov_b32_e32 v8, v4
.Ltmp50:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:824:29 ]
	v_mov_b32_dpp v2, v2 row_xmask:8 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
.Ltmp51:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:828:29 ]
	v_mov_b32_e32 v7, v3
.Ltmp52:
	.loc	1 830 17                        ; attention.py:830:17
	v_dual_cndmask_b32 v11, 0, v20 :: v_dual_cndmask_b32 v14, 0, v23
.Ltmp53:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:829:29 ]
	v_mov_b32_dpp v8, v8 row_xmask:8 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_2)
.Ltmp54:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:824:29 ] ]
	v_dual_max_f32 v2, v2, v2 :: v_dual_cndmask_b32 v15, 0, v24
.Ltmp55:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:829:29 ]
	v_mov_b32_e32 v9, v5
.Ltmp56:
	.loc	1 822 30                        ; attention.py:822:30
	s_mul_i32 s0, s1, s0
.Ltmp57:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:829:29 ] ]
	v_dual_add_f32 v4, v4, v8 :: v_dual_max_f32 v1, v1, v2
.Ltmp58:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:829:29 ]
	v_mov_b32_e32 v2, v6
.Ltmp59:
	.loc	2 293 12 is_stmt 0              ; standard.py:293:12 @[ attention.py:828:29 ]
	v_mov_b32_dpp v7, v7 row_xmask:8 row_mask:0xf bank_mask:0xf
.Ltmp60:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:829:29 ]
	v_mov_b32_dpp v9, v9 row_xmask:8 row_mask:0xf bank_mask:0xf
	v_mov_b32_e32 v17, v12
	v_mov_b32_e32 v19, v14
	v_mov_b32_dpp v2, v2 row_xmask:8 row_mask:0xf bank_mask:0xf
.Ltmp61:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:828:29 ] ]
	v_add_f32_e32 v3, v3, v7
.Ltmp62:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:829:29 ]
	v_mov_b32_e32 v7, v4
	v_mov_b32_dpp v17, v17 row_xmask:8 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v19, v19 row_xmask:8 row_mask:0xf bank_mask:0xf
.Ltmp63:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:829:29 ] ]
	v_add_f32_e32 v2, v6, v2
.Ltmp64:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:828:29 ]
	v_mov_b32_e32 v6, v3
.Ltmp65:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:824:29 ]
	v_mov_b32_e32 v10, v1
.Ltmp66:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:829:29 ] ]
	v_add_f32_e32 v5, v5, v9
.Ltmp67:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:829:29 ]
	v_mov_b32_dpp v7, v7 row_xmask:4 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp68:
	.loc	2 293 12 is_stmt 0              ; standard.py:293:12 @[ attention.py:828:29 ]
	v_mov_b32_dpp v6, v6 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp69:
	.loc	2 191 16 is_stmt 1              ; standard.py:191:16 @[ attention.py:824:29 ]
	v_mov_b32_dpp v10, v10 row_xmask:4 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
.Ltmp70:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:824:29 ] ]
	v_max_f32_e32 v9, v10, v10
.Ltmp71:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:829:29 ]
	v_mov_b32_e32 v10, v2
	v_mov_b32_e32 v8, v5
	v_mov_b32_dpp v10, v10 row_xmask:4 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
.Ltmp72:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:824:29 ] ]
	v_max_f32_e32 v9, v1, v9
.Ltmp73:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:828:29 ] ]
	v_add_f32_e32 v1, v3, v6
.Ltmp74:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:829:29 ]
	v_mov_b32_dpp v8, v8 row_xmask:4 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp75:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:829:29 ] ]
	v_dual_add_f32 v3, v4, v7 :: v_dual_add_f32 v2, v2, v10
.Ltmp76:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:828:29 ]
	v_mov_b32_e32 v6, v1
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp77:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:829:29 ] ]
	v_add_f32_e32 v4, v5, v8
.Ltmp78:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:824:29 ]
	v_dual_mov_b32 v5, v9 :: v_dual_mov_b32 v8, v3
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
.Ltmp79:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:828:29 ]
	v_mov_b32_dpp v6, v6 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp80:
	.loc	2 293 12 is_stmt 0              ; standard.py:293:12 @[ attention.py:829:29 ]
	v_mov_b32_e32 v16, v2
.Ltmp81:
	.loc	2 191 16 is_stmt 1              ; standard.py:191:16 @[ attention.py:824:29 ]
	v_mov_b32_dpp v5, v5 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp82:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:829:29 ]
	v_mov_b32_e32 v10, v4
	v_mov_b32_dpp v8, v8 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp83:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:828:29 ] ]
	v_add_f32_e32 v7, v1, v6
.Ltmp84:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:829:29 ]
	v_mov_b32_dpp v16, v16 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp85:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:824:29 ] ]
	v_max_f32_e32 v5, v5, v5
.Ltmp86:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:829:29 ]
	v_mov_b32_dpp v10, v10 row_xmask:2 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
.Ltmp87:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:824:29 ] ]
	v_max_f32_e32 v9, v9, v5
.Ltmp88:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:829:29 ] ]
	v_add_f32_e32 v1, v3, v8
	v_dual_add_f32 v3, v4, v10 :: v_dual_add_f32 v4, v2, v16
.Ltmp89:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:829:29 ]
	v_mov_b32_e32 v16, v11
.Ltmp90:
	.loc	2 293 12 is_stmt 0              ; standard.py:293:12 @[ attention.py:828:29 ]
	v_mov_b32_e32 v8, v7
.Ltmp91:
	.loc	2 191 16 is_stmt 1              ; standard.py:191:16 @[ attention.py:824:29 ]
	v_mov_b32_e32 v10, v9
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp92:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:829:29 ]
	v_dual_mov_b32 v2, v1 :: v_dual_mov_b32 v5, v3
	v_mov_b32_dpp v16, v16 row_xmask:8 row_mask:0xf bank_mask:0xf
	v_mov_b32_e32 v18, v13
	v_mov_b32_e32 v6, v4
.Ltmp93:
	.loc	2 293 12 is_stmt 0              ; standard.py:293:12 @[ attention.py:828:29 ]
	v_mov_b32_dpp v8, v8 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp94:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:829:29 ]
	v_mov_b32_dpp v2, v2 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp95:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:829:29 ] ]
	v_add_f32_e32 v11, v11, v16
.Ltmp96:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:829:29 ]
	v_mov_b32_dpp v18, v18 row_xmask:8 row_mask:0xf bank_mask:0xf
	v_mov_b32_e32 v20, v15
	v_mov_b32_dpp v5, v5 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp97:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:824:29 ]
	v_mov_b32_dpp v10, v10 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp98:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:829:29 ]
	v_mov_b32_dpp v6, v6 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp99:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:829:29 ] ]
	v_add_f32_e32 v13, v13, v18
.Ltmp100:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:829:29 ]
	v_mov_b32_dpp v20, v20 row_xmask:8 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp101:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:829:29 ] ]
	v_dual_add_f32 v12, v12, v17 :: v_dual_add_f32 v15, v15, v20
	v_dual_add_f32 v14, v14, v19 :: v_dual_mov_b32 v17, v12
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp102:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:829:29 ]
	v_dual_mov_b32 v16, v11 :: v_dual_mov_b32 v19, v14
	v_mov_b32_dpp v17, v17 row_xmask:4 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_mov_b32_dpp v16, v16 row_xmask:4 row_mask:0xf bank_mask:0xf
	v_mov_b32_e32 v18, v13
	v_mov_b32_dpp v19, v19 row_xmask:4 row_mask:0xf bank_mask:0xf
	v_mov_b32_e32 v20, v15
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp103:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:829:29 ] ]
	v_add_f32_e32 v11, v11, v16
.Ltmp104:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:829:29 ]
	v_mov_b32_dpp v18, v18 row_xmask:4 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp105:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:829:29 ] ]
	v_dual_add_f32 v12, v12, v17 :: v_dual_add_f32 v17, v14, v19
.Ltmp106:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:829:29 ]
	v_mov_b32_dpp v20, v20 row_xmask:4 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp107:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:829:29 ] ]
	v_dual_add_f32 v16, v13, v18 :: v_dual_mov_b32 v13, v11
.Ltmp108:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:829:29 ]
	v_dual_mov_b32 v14, v12 :: v_dual_mov_b32 v19, v17
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_mov_b32_dpp v13, v13 row_xmask:2 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v14, v14 row_xmask:2 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mov_b32_dpp v19, v19 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp109:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:829:29 ] ]
	v_add_f32_e32 v11, v11, v13
	v_dual_add_f32 v18, v15, v20 :: v_dual_mov_b32 v15, v16
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_dual_add_f32 v13, v12, v14 :: v_dual_mov_b32 v12, v11
.Ltmp110:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:829:29 ]
	v_mov_b32_e32 v20, v18
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mov_b32_dpp v15, v15 row_xmask:2 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v12, v12 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mov_b32_dpp v20, v20 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp111:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:829:29 ] ]
	v_add_f32_e32 v14, v16, v15
	v_add_f32_e32 v15, v17, v19
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp112:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:829:29 ]
	v_dual_mov_b32 v16, v13 :: v_dual_add_f32 v17, v18, v20
	v_dual_mov_b32 v18, v14 :: v_dual_mov_b32 v19, v15
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mov_b32_dpp v16, v16 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_e32 v20, v17
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_mov_b32_dpp v18, v18 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v19, v19 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_3)
	v_mov_b32_dpp v20, v20 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp113:
	.loc	1 833 13                        ; attention.py:833:13
	v_cmpx_eq_u32_e32 0, v0
	s_cbranch_execz .LBB0_6
; %bb.5:
.Ltmp114:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:824:29 ] ]
	v_dual_max_f32 v10, v10, v10 :: v_dual_max_f32 v9, v9, v9
.Ltmp115:
	.loc	1 833 13                        ; attention.py:833:13
	s_ashr_i32 s1, s0, 31
.Ltmp116:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:828:29 ] ]
	v_add_f32_e32 v8, v7, v8
.Ltmp117:
	.loc	1 833 13                        ; attention.py:833:13
	s_lshl_b64 s[4:5], s[0:1], 2
	s_delay_alu instid0(VALU_DEP_2)
.Ltmp118:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:824:29 ] ]
	v_max_f32_e32 v7, v9, v10
.Ltmp119:
	.loc	1 833 13                        ; attention.py:833:13
	v_mov_b32_e32 v9, 0
	s_add_u32 s4, s20, s4
	s_addc_u32 s5, s21, s5
	.loc	1 834 13                        ; attention.py:834:13
	global_store_b64 v9, v[7:8], s[4:5]
.LBB0_6:                                ; %.critedge
	.loc	1 0 13 is_stmt 0                ; attention.py:0:13
	s_or_b32 exec_lo, exec_lo, s2
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_4) | instid1(VALU_DEP_4)
.Ltmp120:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:829:29 ] ]
	v_dual_add_f32 v10, v17, v20 :: v_dual_add_f32 v9, v15, v19
	v_dual_add_f32 v8, v14, v18 :: v_dual_lshlrev_b32 v15, 2, v0
	v_add_f32_e32 v7, v13, v16
	v_dual_add_f32 v14, v11, v12 :: v_dual_add_f32 v13, v4, v6
	v_dual_add_f32 v12, v3, v5 :: v_dual_lshlrev_b32 v3, 5, v0
	v_dual_add_f32 v11, v1, v2 :: v_dual_and_b32 v4, 0xc0, v15
.Ltmp121:
	.loc	1 835 13                        ; attention.py:835:13
	v_and_b32_e32 v5, 0xe0, v44
	v_and_b32_e32 v1, 28, v44
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_and_b32_e32 v2, 32, v3
	v_add_nc_u32_e32 v3, 0, v4
	s_waitcnt lgkmcnt(0)
	v_add_nc_u32_e32 v4, 0, v5
	.loc	1 571 21                        ; attention.py:571:21
	v_and_b32_e32 v5, 63, v0
	.loc	1 835 13                        ; attention.py:835:13
	s_barrier
	v_add3_u32 v1, v3, v2, v1
	ds_store_b128 v4, v[11:14]
	ds_store_b128 v4, v[7:10] offset:16
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b32 v1, v1
	v_and_b32_e32 v0, 64, v0
	.loc	1 836 17                        ; attention.py:836:17
	v_add_nc_u32_e32 v2, s0, v5
	.loc	1 838 22                        ; attention.py:838:22
	v_cmp_gt_i32_e32 vcc_lo, s23, v5
	.loc	1 835 13                        ; attention.py:835:13
	s_and_b32 s21, s21, 0xffff
	s_mov_b32 s23, 0x31027000
	v_cmp_eq_u32_e64 s0, 0, v0
	v_lshl_add_u32 v0, v2, 2, 8
	s_mov_b32 s22, 0x7ffffffe
	s_and_b32 vcc_lo, s0, vcc_lo
	s_delay_alu instid0(VALU_DEP_1)
	v_cndmask_b32_e32 v0, 0x80000000, v0, vcc_lo
	s_waitcnt lgkmcnt(0)
	buffer_store_b32 v1, v0, s[20:23], 0 offen
	.loc	1 502 5                         ; attention.py:502:5
	s_nop 0
	s_sendmsg sendmsg(MSG_DEALLOC_VGPRS)
	s_endpgm
.Ltmp122:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_none_full_float32_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w4_s1_ds4
		.amdhsa_group_segment_fixed_size 0
		.amdhsa_private_segment_fixed_size 0
		.amdhsa_kernarg_size 152
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
		.amdhsa_next_free_vgpr 134
		.amdhsa_next_free_sgpr 45
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
		.amdhsa_inst_pref_size 57
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
	.size	amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_none_full_float32_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w4_s1_ds4, .Lfunc_end0-amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_none_full_float32_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w4_s1_ds4
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_none_full_float32_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w4_s1_ds4.num_vgpr, 134
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_none_full_float32_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w4_s1_ds4.num_agpr, 0
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_none_full_float32_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w4_s1_ds4.numbered_sgpr, 45
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_none_full_float32_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w4_s1_ds4.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_none_full_float32_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w4_s1_ds4.private_seg_size, 0
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_none_full_float32_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w4_s1_ds4.uses_vcc, 1
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_none_full_float32_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w4_s1_ds4.uses_flat_scratch, 0
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_none_full_float32_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w4_s1_ds4.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_none_full_float32_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w4_s1_ds4.has_recursion, 0
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_none_full_float32_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w4_s1_ds4.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 7212
; TotalNumSgprs: 47
; NumVgprs: 134
; ScratchSize: 0
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 16
; NumSGPRsForWavesPerEU: 47
; NumVGPRsForWavesPerEU: 134
; Occupancy: 10
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
	.byte	1                               ; DW_CHILDREN_yes
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
	.byte	5                               ; Abbreviation Code
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
	.byte	6                               ; Abbreviation Code
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
	.byte	1                               ; Abbrev [1] 0xb:0xbd DW_TAG_compile_unit
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
	.byte	3                               ; Abbrev [3] 0x30:0x97 DW_TAG_subprogram
	.quad	.Lfunc_begin0                   ; DW_AT_low_pc
	.long	.Lfunc_end0-.Lfunc_begin0       ; DW_AT_high_pc
	.long	42                              ; DW_AT_abstract_origin
	.byte	4                               ; Abbrev [4] 0x41:0x1a DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges0                 ; DW_AT_ranges
	.byte	1                               ; DW_AT_call_file
	.short	687                             ; DW_AT_call_line
	.byte	29                              ; DW_AT_call_column
	.byte	5                               ; Abbrev [5] 0x4e:0xc DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges1                 ; DW_AT_ranges
	.byte	2                               ; DW_AT_call_file
	.byte	191                             ; DW_AT_call_line
	.byte	16                              ; DW_AT_call_column
	.byte	0                               ; End Of Children Mark
	.byte	4                               ; Abbrev [4] 0x5b:0x1b DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges2                 ; DW_AT_ranges
	.byte	1                               ; DW_AT_call_file
	.short	691                             ; DW_AT_call_line
	.byte	24                              ; DW_AT_call_column
	.byte	6                               ; Abbrev [6] 0x68:0xd DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges3                 ; DW_AT_ranges
	.byte	2                               ; DW_AT_call_file
	.short	293                             ; DW_AT_call_line
	.byte	12                              ; DW_AT_call_column
	.byte	0                               ; End Of Children Mark
	.byte	4                               ; Abbrev [4] 0x76:0x1a DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges4                 ; DW_AT_ranges
	.byte	1                               ; DW_AT_call_file
	.short	824                             ; DW_AT_call_line
	.byte	29                              ; DW_AT_call_column
	.byte	5                               ; Abbrev [5] 0x83:0xc DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges5                 ; DW_AT_ranges
	.byte	2                               ; DW_AT_call_file
	.byte	191                             ; DW_AT_call_line
	.byte	16                              ; DW_AT_call_column
	.byte	0                               ; End Of Children Mark
	.byte	4                               ; Abbrev [4] 0x90:0x1b DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges6                 ; DW_AT_ranges
	.byte	1                               ; DW_AT_call_file
	.short	829                             ; DW_AT_call_line
	.byte	29                              ; DW_AT_call_column
	.byte	6                               ; Abbrev [6] 0x9d:0xd DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges7                 ; DW_AT_ranges
	.byte	2                               ; DW_AT_call_file
	.short	293                             ; DW_AT_call_line
	.byte	12                              ; DW_AT_call_column
	.byte	0                               ; End Of Children Mark
	.byte	4                               ; Abbrev [4] 0xab:0x1b DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges8                 ; DW_AT_ranges
	.byte	1                               ; DW_AT_call_file
	.short	828                             ; DW_AT_call_line
	.byte	29                              ; DW_AT_call_column
	.byte	6                               ; Abbrev [6] 0xb8:0xd DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges9                 ; DW_AT_ranges
	.byte	2                               ; DW_AT_call_file
	.short	293                             ; DW_AT_call_line
	.byte	12                              ; DW_AT_call_column
	.byte	0                               ; End Of Children Mark
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
	.quad	.Ltmp11-.Lfunc_begin0
	.quad	.Ltmp12-.Lfunc_begin0
	.quad	.Ltmp13-.Lfunc_begin0
	.quad	.Ltmp14-.Lfunc_begin0
	.quad	.Ltmp15-.Lfunc_begin0
	.quad	.Ltmp16-.Lfunc_begin0
	.quad	.Ltmp17-.Lfunc_begin0
	.quad	.Ltmp19-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges1:
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
	.quad	.Ltmp11-.Lfunc_begin0
	.quad	.Ltmp12-.Lfunc_begin0
	.quad	.Ltmp13-.Lfunc_begin0
	.quad	.Ltmp14-.Lfunc_begin0
	.quad	.Ltmp15-.Lfunc_begin0
	.quad	.Ltmp16-.Lfunc_begin0
	.quad	.Ltmp17-.Lfunc_begin0
	.quad	.Ltmp18-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges2:
	.quad	.Ltmp20-.Lfunc_begin0
	.quad	.Ltmp21-.Lfunc_begin0
	.quad	.Ltmp22-.Lfunc_begin0
	.quad	.Ltmp23-.Lfunc_begin0
	.quad	.Ltmp24-.Lfunc_begin0
	.quad	.Ltmp25-.Lfunc_begin0
	.quad	.Ltmp26-.Lfunc_begin0
	.quad	.Ltmp27-.Lfunc_begin0
	.quad	.Ltmp28-.Lfunc_begin0
	.quad	.Ltmp29-.Lfunc_begin0
	.quad	.Ltmp30-.Lfunc_begin0
	.quad	.Ltmp31-.Lfunc_begin0
	.quad	.Ltmp32-.Lfunc_begin0
	.quad	.Ltmp33-.Lfunc_begin0
	.quad	.Ltmp34-.Lfunc_begin0
	.quad	.Ltmp35-.Lfunc_begin0
	.quad	.Ltmp36-.Lfunc_begin0
	.quad	.Ltmp37-.Lfunc_begin0
	.quad	.Ltmp38-.Lfunc_begin0
	.quad	.Ltmp39-.Lfunc_begin0
	.quad	.Ltmp40-.Lfunc_begin0
	.quad	.Ltmp41-.Lfunc_begin0
	.quad	.Ltmp42-.Lfunc_begin0
	.quad	.Ltmp43-.Lfunc_begin0
	.quad	.Ltmp44-.Lfunc_begin0
	.quad	.Ltmp45-.Lfunc_begin0
	.quad	.Ltmp46-.Lfunc_begin0
	.quad	.Ltmp47-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges3:
	.quad	.Ltmp20-.Lfunc_begin0
	.quad	.Ltmp21-.Lfunc_begin0
	.quad	.Ltmp22-.Lfunc_begin0
	.quad	.Ltmp23-.Lfunc_begin0
	.quad	.Ltmp24-.Lfunc_begin0
	.quad	.Ltmp25-.Lfunc_begin0
	.quad	.Ltmp26-.Lfunc_begin0
	.quad	.Ltmp27-.Lfunc_begin0
	.quad	.Ltmp28-.Lfunc_begin0
	.quad	.Ltmp29-.Lfunc_begin0
	.quad	.Ltmp30-.Lfunc_begin0
	.quad	.Ltmp31-.Lfunc_begin0
	.quad	.Ltmp32-.Lfunc_begin0
	.quad	.Ltmp33-.Lfunc_begin0
	.quad	.Ltmp34-.Lfunc_begin0
	.quad	.Ltmp35-.Lfunc_begin0
	.quad	.Ltmp36-.Lfunc_begin0
	.quad	.Ltmp37-.Lfunc_begin0
	.quad	.Ltmp38-.Lfunc_begin0
	.quad	.Ltmp39-.Lfunc_begin0
	.quad	.Ltmp40-.Lfunc_begin0
	.quad	.Ltmp41-.Lfunc_begin0
	.quad	.Ltmp42-.Lfunc_begin0
	.quad	.Ltmp43-.Lfunc_begin0
	.quad	.Ltmp46-.Lfunc_begin0
	.quad	.Ltmp47-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges4:
	.quad	.Ltmp48-.Lfunc_begin0
	.quad	.Ltmp49-.Lfunc_begin0
	.quad	.Ltmp50-.Lfunc_begin0
	.quad	.Ltmp51-.Lfunc_begin0
	.quad	.Ltmp54-.Lfunc_begin0
	.quad	.Ltmp55-.Lfunc_begin0
	.quad	.Ltmp65-.Lfunc_begin0
	.quad	.Ltmp66-.Lfunc_begin0
	.quad	.Ltmp69-.Lfunc_begin0
	.quad	.Ltmp71-.Lfunc_begin0
	.quad	.Ltmp72-.Lfunc_begin0
	.quad	.Ltmp73-.Lfunc_begin0
	.quad	.Ltmp78-.Lfunc_begin0
	.quad	.Ltmp79-.Lfunc_begin0
	.quad	.Ltmp81-.Lfunc_begin0
	.quad	.Ltmp82-.Lfunc_begin0
	.quad	.Ltmp85-.Lfunc_begin0
	.quad	.Ltmp86-.Lfunc_begin0
	.quad	.Ltmp87-.Lfunc_begin0
	.quad	.Ltmp88-.Lfunc_begin0
	.quad	.Ltmp91-.Lfunc_begin0
	.quad	.Ltmp92-.Lfunc_begin0
	.quad	.Ltmp97-.Lfunc_begin0
	.quad	.Ltmp98-.Lfunc_begin0
	.quad	.Ltmp114-.Lfunc_begin0
	.quad	.Ltmp115-.Lfunc_begin0
	.quad	.Ltmp118-.Lfunc_begin0
	.quad	.Ltmp119-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges5:
	.quad	.Ltmp48-.Lfunc_begin0
	.quad	.Ltmp49-.Lfunc_begin0
	.quad	.Ltmp54-.Lfunc_begin0
	.quad	.Ltmp55-.Lfunc_begin0
	.quad	.Ltmp70-.Lfunc_begin0
	.quad	.Ltmp71-.Lfunc_begin0
	.quad	.Ltmp72-.Lfunc_begin0
	.quad	.Ltmp73-.Lfunc_begin0
	.quad	.Ltmp85-.Lfunc_begin0
	.quad	.Ltmp86-.Lfunc_begin0
	.quad	.Ltmp87-.Lfunc_begin0
	.quad	.Ltmp88-.Lfunc_begin0
	.quad	.Ltmp114-.Lfunc_begin0
	.quad	.Ltmp115-.Lfunc_begin0
	.quad	.Ltmp118-.Lfunc_begin0
	.quad	.Ltmp119-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges6:
	.quad	.Ltmp49-.Lfunc_begin0
	.quad	.Ltmp50-.Lfunc_begin0
	.quad	.Ltmp53-.Lfunc_begin0
	.quad	.Ltmp54-.Lfunc_begin0
	.quad	.Ltmp55-.Lfunc_begin0
	.quad	.Ltmp56-.Lfunc_begin0
	.quad	.Ltmp57-.Lfunc_begin0
	.quad	.Ltmp59-.Lfunc_begin0
	.quad	.Ltmp60-.Lfunc_begin0
	.quad	.Ltmp61-.Lfunc_begin0
	.quad	.Ltmp62-.Lfunc_begin0
	.quad	.Ltmp64-.Lfunc_begin0
	.quad	.Ltmp66-.Lfunc_begin0
	.quad	.Ltmp68-.Lfunc_begin0
	.quad	.Ltmp71-.Lfunc_begin0
	.quad	.Ltmp72-.Lfunc_begin0
	.quad	.Ltmp74-.Lfunc_begin0
	.quad	.Ltmp76-.Lfunc_begin0
	.quad	.Ltmp77-.Lfunc_begin0
	.quad	.Ltmp78-.Lfunc_begin0
	.quad	.Ltmp80-.Lfunc_begin0
	.quad	.Ltmp81-.Lfunc_begin0
	.quad	.Ltmp82-.Lfunc_begin0
	.quad	.Ltmp83-.Lfunc_begin0
	.quad	.Ltmp84-.Lfunc_begin0
	.quad	.Ltmp85-.Lfunc_begin0
	.quad	.Ltmp86-.Lfunc_begin0
	.quad	.Ltmp87-.Lfunc_begin0
	.quad	.Ltmp88-.Lfunc_begin0
	.quad	.Ltmp90-.Lfunc_begin0
	.quad	.Ltmp92-.Lfunc_begin0
	.quad	.Ltmp93-.Lfunc_begin0
	.quad	.Ltmp94-.Lfunc_begin0
	.quad	.Ltmp97-.Lfunc_begin0
	.quad	.Ltmp98-.Lfunc_begin0
	.quad	.Ltmp113-.Lfunc_begin0
	.quad	.Ltmp120-.Lfunc_begin0
	.quad	.Ltmp121-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges7:
	.quad	.Ltmp57-.Lfunc_begin0
	.quad	.Ltmp58-.Lfunc_begin0
	.quad	.Ltmp63-.Lfunc_begin0
	.quad	.Ltmp64-.Lfunc_begin0
	.quad	.Ltmp66-.Lfunc_begin0
	.quad	.Ltmp67-.Lfunc_begin0
	.quad	.Ltmp75-.Lfunc_begin0
	.quad	.Ltmp76-.Lfunc_begin0
	.quad	.Ltmp77-.Lfunc_begin0
	.quad	.Ltmp78-.Lfunc_begin0
	.quad	.Ltmp88-.Lfunc_begin0
	.quad	.Ltmp89-.Lfunc_begin0
	.quad	.Ltmp95-.Lfunc_begin0
	.quad	.Ltmp96-.Lfunc_begin0
	.quad	.Ltmp99-.Lfunc_begin0
	.quad	.Ltmp100-.Lfunc_begin0
	.quad	.Ltmp101-.Lfunc_begin0
	.quad	.Ltmp102-.Lfunc_begin0
	.quad	.Ltmp103-.Lfunc_begin0
	.quad	.Ltmp104-.Lfunc_begin0
	.quad	.Ltmp105-.Lfunc_begin0
	.quad	.Ltmp106-.Lfunc_begin0
	.quad	.Ltmp107-.Lfunc_begin0
	.quad	.Ltmp108-.Lfunc_begin0
	.quad	.Ltmp109-.Lfunc_begin0
	.quad	.Ltmp110-.Lfunc_begin0
	.quad	.Ltmp111-.Lfunc_begin0
	.quad	.Ltmp112-.Lfunc_begin0
	.quad	.Ltmp120-.Lfunc_begin0
	.quad	.Ltmp121-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges8:
	.quad	.Ltmp51-.Lfunc_begin0
	.quad	.Ltmp52-.Lfunc_begin0
	.quad	.Ltmp59-.Lfunc_begin0
	.quad	.Ltmp60-.Lfunc_begin0
	.quad	.Ltmp61-.Lfunc_begin0
	.quad	.Ltmp62-.Lfunc_begin0
	.quad	.Ltmp64-.Lfunc_begin0
	.quad	.Ltmp65-.Lfunc_begin0
	.quad	.Ltmp68-.Lfunc_begin0
	.quad	.Ltmp69-.Lfunc_begin0
	.quad	.Ltmp73-.Lfunc_begin0
	.quad	.Ltmp74-.Lfunc_begin0
	.quad	.Ltmp76-.Lfunc_begin0
	.quad	.Ltmp77-.Lfunc_begin0
	.quad	.Ltmp79-.Lfunc_begin0
	.quad	.Ltmp80-.Lfunc_begin0
	.quad	.Ltmp83-.Lfunc_begin0
	.quad	.Ltmp84-.Lfunc_begin0
	.quad	.Ltmp90-.Lfunc_begin0
	.quad	.Ltmp91-.Lfunc_begin0
	.quad	.Ltmp93-.Lfunc_begin0
	.quad	.Ltmp94-.Lfunc_begin0
	.quad	.Ltmp116-.Lfunc_begin0
	.quad	.Ltmp117-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges9:
	.quad	.Ltmp61-.Lfunc_begin0
	.quad	.Ltmp62-.Lfunc_begin0
	.quad	.Ltmp73-.Lfunc_begin0
	.quad	.Ltmp74-.Lfunc_begin0
	.quad	.Ltmp83-.Lfunc_begin0
	.quad	.Ltmp84-.Lfunc_begin0
	.quad	.Ltmp116-.Lfunc_begin0
	.quad	.Ltmp117-.Lfunc_begin0
	.quad	0
	.quad	0
	.section	.debug_str,"MS",@progbits,1
.Linfo_string0:
	.asciz	"triton"                        ; string offset=0 ; triton
.Linfo_string1:
	.asciz	"attention.py"                  ; string offset=7 ; attention.py
.Linfo_string2:
	.asciz	"<repo>/src/amd_strix_halo_kernels" ; string offset=20 ; <repo>/src/amd_strix_halo_kernels
.Linfo_string3:
	.asciz	"amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_none_full_float32_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w4_s1_ds4"                        ; string offset=88 ; amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_none_full_float32_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w4_s1_ds4
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
      - .address_space:  global
        .offset:         48
        .size:           8
        .value_kind:     global_buffer
      - .address_space:  global
        .offset:         56
        .size:           8
        .value_kind:     global_buffer
      - .address_space:  global
        .offset:         64
        .size:           8
        .value_kind:     global_buffer
      - .offset:         72
        .size:           4
        .value_kind:     by_value
      - .offset:         76
        .size:           4
        .value_kind:     by_value
      - .offset:         80
        .size:           4
        .value_kind:     by_value
      - .offset:         84
        .size:           4
        .value_kind:     by_value
      - .offset:         88
        .size:           4
        .value_kind:     by_value
      - .offset:         92
        .size:           4
        .value_kind:     by_value
      - .offset:         96
        .size:           4
        .value_kind:     by_value
      - .offset:         100
        .size:           4
        .value_kind:     by_value
      - .offset:         104
        .size:           4
        .value_kind:     by_value
      - .offset:         108
        .size:           4
        .value_kind:     by_value
      - .offset:         112
        .size:           4
        .value_kind:     by_value
      - .offset:         116
        .size:           4
        .value_kind:     by_value
      - .offset:         120
        .size:           1
        .value_kind:     by_value
      - .offset:         121
        .size:           1
        .value_kind:     by_value
      - .offset:         124
        .size:           4
        .value_kind:     by_value
      - .offset:         128
        .size:           4
        .value_kind:     by_value
      - .offset:         132
        .size:           4
        .value_kind:     by_value
      - .address_space:  global
        .offset:         136
        .size:           8
        .value_kind:     global_buffer
      - .address_space:  global
        .offset:         144
        .size:           8
        .value_kind:     global_buffer
    .group_segment_fixed_size: 0
    .kernarg_segment_align: 8
    .kernarg_segment_size: 152
    .max_flat_workgroup_size: 128
    .name:           amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_none_full_float32_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w4_s1_ds4
    .private_segment_fixed_size: 0
    .sgpr_count:     47
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_none_full_float32_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w4_s1_ds4.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     134
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
