	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_attention_fwd_bf16xint4_fp32_local_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn16_w4_s1_ds1                          ; -- Begin function amd_strix_halo_gfx1151_attention_fwd_bf16xint4_fp32_local_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn16_w4_s1_ds1
	.p2align	8
	.type	amd_strix_halo_gfx1151_attention_fwd_bf16xint4_fp32_local_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn16_w4_s1_ds1,@function
amd_strix_halo_gfx1151_attention_fwd_bf16xint4_fp32_local_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn16_w4_s1_ds1:                                 ; @amd_strix_halo_gfx1151_attention_fwd_bf16xint4_fp32_local_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn16_w4_s1_ds1
.Lfunc_begin0:
	.file	1 "<repo>/src/amd_strix_halo_kernels" "attention.py"
	.loc	1 502 0                         ; attention.py:502:0
	.cfi_sections .debug_frame
	.cfi_startproc
; %bb.0:
	s_clause 0x1
	s_load_b32 s14, s[0:1], 0x80
	s_load_b32 s23, s[0:1], 0x5c
.Ltmp0:
	.loc	1 598 79 prologue_end           ; attention.py:598:79
	v_and_b32_e32 v33, 7, v0
	.loc	1 570 31                        ; attention.py:570:31
	v_lshrrev_b32_e32 v2, 3, v0
	.loc	1 564 19                        ; attention.py:564:19
	s_lshl_b32 s22, s2, 6
	.loc	1 597 26                        ; attention.py:597:26
	s_lshl_b32 s2, s3, 11
	s_clause 0x1
	s_load_b64 s[4:5], s[0:1], 0x0
	s_load_b64 s[12:13], s[0:1], 0x78
	.loc	1 598 79                        ; attention.py:598:79
	v_lshlrev_b32_e32 v1, 3, v33
	.loc	1 598 26 is_stmt 0              ; attention.py:598:26
	s_add_i32 s18, s22, s2
	.loc	1 570 21 is_stmt 1              ; attention.py:570:21
	v_or_b32_e32 v4, s22, v2
	.loc	1 599 26                        ; attention.py:599:26
	v_lshlrev_b32_e32 v17, 1, v0
	s_mov_b32 s7, 0x31027000
	s_mov_b32 s6, 0x7ffffffe
	v_lshlrev_b32_e32 v18, 4, v0
	.loc	1 601 23                        ; attention.py:601:23
	v_cmp_gt_i32_e32 vcc_lo, 0x800, v4
	.loc	1 599 26                        ; attention.py:599:26
	v_and_b32_e32 v17, 0x70, v17
	.loc	1 570 31                        ; attention.py:570:31
	v_and_b32_e32 v78, 15, v0
	v_lshlrev_b32_e32 v82, 2, v0
	.loc	1 598 26                        ; attention.py:598:26
	s_waitcnt lgkmcnt(0)
	v_mad_u64_u32 v[74:75], null, s23, v2, v[1:2]
	.loc	1 601 61                        ; attention.py:601:61
	v_cmp_gt_i32_e64 s2, s23, v1
	.loc	1 598 26                        ; attention.py:598:26
	s_lshl_b32 s8, s23, 4
	s_lshl_b32 s9, s23, 5
	s_mul_i32 s10, s23, 48
	.loc	1 599 26                        ; attention.py:599:26
	s_and_b32 s5, s5, 0xffff
	.loc	1 601 22                        ; attention.py:601:22
	s_and_b32 vcc_lo, vcc_lo, s2
	.loc	1 598 26                        ; attention.py:598:26
	v_mad_u64_u32 v[2:3], null, s23, s18, v[74:75]
	.loc	1 599 26                        ; attention.py:599:26
	v_xor_b32_e32 v17, v18, v17
	v_lshlrev_b32_e32 v83, 3, v78
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_add_nc_u32_e32 v84, 0, v17
	v_lshlrev_b32_e32 v1, 1, v2
	v_add_lshl_u32 v3, v2, s8, 1
	v_add_lshl_u32 v4, v2, s9, 1
	v_add_lshl_u32 v2, v2, s10, 1
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cndmask_b32_e32 v1, 0x80000000, v1, vcc_lo
	v_cndmask_b32_e32 v5, 0x80000000, v3, vcc_lo
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cndmask_b32_e32 v9, 0x80000000, v4, vcc_lo
	v_cndmask_b32_e32 v13, 0x80000000, v2, vcc_lo
	s_clause 0x3
	buffer_load_b128 v[1:4], v1, s[4:7], 0 offen
	buffer_load_b128 v[5:8], v5, s[4:7], 0 offen
	buffer_load_b128 v[9:12], v9, s[4:7], 0 offen
	buffer_load_b128 v[13:16], v13, s[4:7], 0 offen
	.loc	1 616 17                        ; attention.py:616:17
	s_add_i32 s5, s22, s13
	.loc	1 613 39                        ; attention.py:613:39
	s_sub_i32 s6, s22, s12
	s_mov_b32 s4, 0
	.loc	1 616 17                        ; attention.py:616:17
	s_add_i32 s5, s5, s14
	.loc	1 613 39                        ; attention.py:613:39
	s_add_i32 s6, s6, s14
	.loc	1 616 17                        ; attention.py:616:17
	s_add_i32 s5, s5, 64
	.loc	1 613 25                        ; attention.py:613:25
	s_max_i32 s6, s6, 0
	.loc	1 614 25                        ; attention.py:614:25
	s_min_i32 s5, s5, 0x800
	.loc	1 618 33                        ; attention.py:618:33
	s_and_b32 s33, s6, 0x7ffffff0
	.loc	1 619 35                        ; attention.py:619:35
	s_add_i32 s5, s5, 15
	.loc	1 599 26                        ; attention.py:599:26
	s_waitcnt vmcnt(3)
	ds_store_b128 v84, v[1:4]
	s_waitcnt vmcnt(2)
	ds_store_b128 v84, v[5:8] offset:2048
	s_waitcnt vmcnt(1)
	ds_store_b128 v84, v[9:12] offset:4096
	s_waitcnt vmcnt(0)
	ds_store_b128 v84, v[13:16] offset:6144
	.loc	1 619 34                        ; attention.py:619:34
	s_ashr_i32 s7, s5, 31
	.loc	1 599 26                        ; attention.py:599:26
	s_waitcnt lgkmcnt(0)
	.loc	1 619 34                        ; attention.py:619:34
	s_lshr_b32 s7, s7, 28
	.loc	1 599 26                        ; attention.py:599:26
	s_barrier
	.loc	1 619 34                        ; attention.py:619:34
	s_add_i32 s5, s5, s7
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	.loc	1 619 33 is_stmt 0              ; attention.py:619:33
	s_and_b32 s34, s5, -16
	.loc	1 707 13 is_stmt 1              ; attention.py:707:13
	s_cmp_lt_i32 s33, s34
	s_cbranch_scc1 .LBB0_2
; %bb.1:                                ; %.._crit_edge_crit_edge
	v_lshlrev_b32_e32 v34, 3, v78
	v_lshlrev_b32_e32 v35, 2, v0
	s_branch .LBB0_3
.LBB0_2:
	.loc	1 0 13 is_stmt 0                ; attention.py:0:13
	s_mov_b32 s4, -1
                                        ; implicit-def: $vgpr34
                                        ; implicit-def: $vgpr35
.LBB0_3:                                ; %Flow80
	s_clause 0x1
	s_load_b64 s[20:21], s[0:1], 0x38
	s_load_b32 s19, s[0:1], 0x60
	v_dual_mov_b32 v8, 0 :: v_dual_and_b32 v79, 0x60, v0
	v_and_b32_e32 v81, 0x7c, v0
	v_lshrrev_b32_e32 v80, 4, v0
	s_and_not1_b32 vcc_lo, exec_lo, s4
	s_delay_alu instid0(VALU_DEP_3)
	v_mov_b32_e32 v7, v8
	v_mov_b32_e32 v6, v8
	v_mov_b32_e32 v5, v8
	v_mov_b32_e32 v4, v8
	v_mov_b32_e32 v3, v8
	v_mov_b32_e32 v2, v8
	v_mov_b32_e32 v1, v8
	v_mov_b32_e32 v16, v8
	v_mov_b32_e32 v15, v8
	v_mov_b32_e32 v14, v8
	v_mov_b32_e32 v13, v8
	v_mov_b32_e32 v12, v8
	v_mov_b32_e32 v11, v8
	v_mov_b32_e32 v10, v8
	v_mov_b32_e32 v9, v8
	v_mov_b32_e32 v24, v8
	v_mov_b32_e32 v23, v8
	v_mov_b32_e32 v22, v8
	v_mov_b32_e32 v21, v8
	v_mov_b32_e32 v20, v8
	v_mov_b32_e32 v19, v8
	v_mov_b32_e32 v18, v8
	v_mov_b32_e32 v17, v8
	v_mov_b32_e32 v32, v8
	v_mov_b32_e32 v31, v8
	v_mov_b32_e32 v30, v8
	v_mov_b32_e32 v29, v8
	v_mov_b32_e32 v28, v8
	v_mov_b32_e32 v27, v8
	v_mov_b32_e32 v26, v8
	v_mov_b32_e32 v25, v8
	v_mov_b32_e32 v77, v8
	v_mov_b32_e32 v76, v8
	s_cbranch_vccnz .LBB0_7
; %bb.4:                                ; %.lr.ph
	.loc	1 566 23 is_stmt 1              ; attention.py:566:23
	s_ashr_i32 s4, s3, 31
	.loc	1 570 31                        ; attention.py:570:31
	v_lshrrev_b32_e32 v1, 2, v81
	.loc	1 566 23                        ; attention.py:566:23
	s_lshr_b32 s8, s4, 28
	v_dual_mov_b32 v65, 0 :: v_dual_and_b32 v2, 3, v0
	s_add_i32 s15, s3, s8
	s_load_b128 s[8:11], s[0:1], 0x64
	.loc	1 599 26                        ; attention.py:599:26
	v_lshlrev_b32_e32 v6, 4, v33
	.loc	1 570 31                        ; attention.py:570:31
	v_or_b32_e32 v3, s22, v1
	v_mov_b32_e32 v27, v65
	v_dual_mov_b32 v26, v65 :: v_dual_lshlrev_b32 v85, 2, v2
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_lshl_or_b32 v89, v78, 7, v6
	.loc	1 570 21 is_stmt 0              ; attention.py:570:21
	v_or_b32_e32 v4, 32, v3
	.loc	1 573 27 is_stmt 1              ; attention.py:573:27
	v_add_nc_u32_e32 v5, s14, v3
	.loc	1 601 23                        ; attention.py:601:23
	v_cmp_gt_i32_e32 vcc_lo, 0x800, v3
	.loc	1 571 21                        ; attention.py:571:21
	v_or_b32_e32 v86, 1, v85
	.loc	1 599 26                        ; attention.py:599:26
	v_lshl_or_b32 v3, v79, 6, v89
	.loc	1 571 21                        ; attention.py:571:21
	v_or_b32_e32 v87, 2, v85
	.loc	1 748 47                        ; attention.py:748:47
	v_subrev_nc_u32_e32 v90, s12, v5
	v_dual_mov_b32 v29, v65 :: v_dual_add_nc_u32 v92, s13, v5
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 599 26                        ; attention.py:599:26
	v_xad_u32 v5, 0x70, v3, 0
	v_xad_u32 v6, 0x60, v3, 0
	ds_load_b128 v[37:40], v5
	ds_load_b128 v[33:36], v6
	s_waitcnt lgkmcnt(0)
	v_mul_lo_u32 v1, s11, v1
	v_xad_u32 v5, 0x50, v3, 0
	v_xad_u32 v6, v3, 64, 0
	v_xad_u32 v7, v3, 48, 0
	v_xad_u32 v8, v3, 32, 0
	v_xad_u32 v9, v3, 16, 0
	.loc	1 571 21                        ; attention.py:571:21
	v_or_b32_e32 v88, 3, v85
	v_dual_mov_b32 v30, v65 :: v_dual_add_nc_u32 v3, 0, v3
	.loc	1 599 26                        ; attention.py:599:26
	ds_load_b128 v[45:48], v5
	ds_load_b128 v[41:44], v6
	ds_load_b128 v[53:56], v7
	ds_load_b128 v[49:52], v8
	ds_load_b128 v[61:64], v9
	ds_load_b128 v[57:60], v3
	v_lshl_add_u32 v9, s11, 5, v1
	.loc	1 707 13                        ; attention.py:707:13
	v_add_nc_u32_e32 v94, v1, v85
	v_dual_mov_b32 v32, v65 :: v_dual_and_b32 v1, 12, v0
	v_and_b32_e32 v15, 64, v0
	s_delay_alu instid0(VALU_DEP_4)
	v_dual_mov_b32 v76, 0 :: v_dual_add_nc_u32 v95, v9, v85
	v_add_nc_u32_e32 v96, v9, v86
	v_dual_mov_b32 v134, 0xff800000 :: v_dual_add_nc_u32 v97, v9, v87
	v_add_nc_u32_e32 v98, v9, v88
	v_lshlrev_b32_e32 v9, 5, v0
	v_lshlrev_b32_e32 v13, 1, v1
	v_dual_mov_b32 v24, v65 :: v_dual_lshlrev_b32 v1, 8, v1
	v_bfe_i32 v17, v0, 5, 1
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_and_b32_e32 v16, 0x260, v9
	v_lshl_or_b32 v13, v79, 2, v13
	v_dual_mov_b32 v23, v65 :: v_dual_and_b32 v18, 28, v0
	v_lshlrev_b32_e32 v19, 1, v15
	v_lshrrev_b32_e32 v15, 5, v15
	s_delay_alu instid0(VALU_DEP_4)
	v_or3_b32 v99, v1, v16, v13
	v_and_b32_e32 v1, 0x120, v17
	v_lshl_or_b32 v2, v2, 5, v18
	v_and_b32_e32 v16, 0x300, v9
	v_and_b32_e32 v17, 0xfc, v82
	v_xor_b32_e32 v13, 8, v99
	v_xor_b32_e32 v10, 0x60, v89
	v_xor_b32_e32 v101, v2, v1
	v_and_b32_e32 v12, 48, v0
	s_clause 0x1
	s_load_b128 s[4:7], s[0:1], 0x8
	s_load_b128 s[24:27], s[0:1], 0x28
	v_add_nc_u32_e32 v114, 0, v13
	v_mov_b32_e32 v13, v65
	v_or3_b32 v102, v16, v17, v15
	v_add_nc_u32_e32 v111, 0, v10
	v_mov_b32_e32 v10, v65
	v_add_nc_u32_e32 v100, 0, v19
	v_or_b32_e32 v18, v101, v19
	v_xor_b32_e32 v19, 0x60, v102
	.loc	1 567 22                        ; attention.py:567:22
	s_and_b32 s0, s15, -16
	v_and_b32_e32 v1, 16, v0
	s_sub_i32 s1, s3, s0
	.loc	1 566 23                        ; attention.py:566:23
	s_ashr_i32 s15, s15, 4
	v_add_nc_u32_e32 v120, 0, v19
	v_mov_b32_e32 v19, v65
	v_lshrrev_b32_e32 v14, 1, v12
	v_lshl_or_b32 v12, v12, 6, v83
	.loc	1 569 19                        ; attention.py:569:19
	s_bfe_u32 s0, s1, 0x10007
	.loc	1 742 27                        ; attention.py:742:27
	s_mul_f32 s44, s8, 0x3fb8aa3b
	.loc	1 569 19                        ; attention.py:569:19
	s_add_i32 s0, s1, s0
	.loc	1 754 27                        ; attention.py:754:27
	s_mul_i32 s1, s10, s1
	v_xor_b32_e32 v12, v12, v14
	v_xor_b32_e32 v14, 16, v99
	.loc	1 753 27                        ; attention.py:753:27
	s_mul_i32 s8, s9, s15
	v_dual_mov_b32 v2, 0x5410 :: v_dual_lshlrev_b32 v75, 2, v78
	.loc	1 752 25                        ; attention.py:752:25
	s_add_i32 s46, s1, s8
	s_delay_alu instid0(VALU_DEP_2)
	v_add_nc_u32_e32 v115, 0, v14
	v_mov_b32_e32 v14, v65
	v_cmp_eq_u32_e64 s1, 0, v1
	v_dual_mov_b32 v25, 0 :: v_dual_add_nc_u32 v4, s14, v4
	v_xor_b32_e32 v16, 0x240, v18
	v_xor_b32_e32 v18, 64, v102
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_cndmask_b32_e64 v1, 0x1054, v2, s1
	v_mov_b32_e32 v2, 0x7632
	.loc	1 748 47                        ; attention.py:748:47
	v_subrev_nc_u32_e32 v91, s12, v4
	v_dual_mov_b32 v28, v65 :: v_dual_add_nc_u32 v93, s13, v4
	v_lshl_or_b32 v1, v1, 8, v1
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_cndmask_b32_e64 v2, 0x3276, v2, s1
	v_dual_mov_b32 v31, v65 :: v_dual_and_b32 v4, 0x70, v0
	v_xor_b32_e32 v3, 16, v89
	v_xor_b32_e32 v15, 24, v99
	v_lshl_or_b32 v2, v2, 8, v2
	v_and_b32_e32 v1, 0x540054, v1
	v_lshlrev_b32_e32 v20, 7, v0
	v_bfe_i32 v21, v0, 0, 1
	v_bfe_i32 v22, v0, 2, 1
	v_and_b32_e32 v2, 0x760076, v2
	v_add_nc_u32_e32 v119, 0, v18
	v_dual_mov_b32 v18, v65 :: v_dual_and_b32 v9, 0x160, v9
	v_xor_b32_e32 v5, 32, v89
	v_xor_b32_e32 v6, 48, v89
	v_lshl_or_b32 v1, v1, 4, v1
	v_lshrrev_b32_e32 v4, 2, v4
	v_and_b32_e32 v21, 0x90, v21
	v_and_or_b32 v103, 0x90, v22, v9
	v_dual_mov_b32 v129, 0xff800000 :: v_dual_add_nc_u32 v106, 0, v3
	v_add_nc_u32_e32 v116, 0, v15
	v_mov_b32_e32 v15, v65
	v_lshl_or_b32 v2, v2, 4, v2
	v_dual_mov_b32 v3, v65 :: v_dual_and_b32 v20, 0x700, v20
	.loc	1 569 19                        ; attention.py:569:19
	s_bfe_i32 s0, s0, 0x80000
	v_xor_b32_e32 v7, 64, v89
	s_sext_i32_i16 s0, s0
	v_xor_b32_e32 v8, 0x50, v89
	v_xor_b32_e32 v11, 0x70, v89
	v_xor_b32_e32 v17, 32, v102
	v_and_b32_e32 v104, 0x5040504, v1
	v_and_b32_e32 v105, 0x7060706, v2
	v_dual_mov_b32 v128, 0xff800000 :: v_dual_add_nc_u32 v107, 0, v5
	v_dual_mov_b32 v135, 0xff800000 :: v_dual_add_nc_u32 v108, 0, v6
	v_dual_mov_b32 v5, v65 :: v_dual_add_nc_u32 v2, 0, v20
	v_dual_mov_b32 v77, 0 :: v_dual_mov_b32 v6, v65
	v_xor_b32_e32 v1, v21, v4
	v_xor_b32_e32 v4, 16, v103
	s_ashr_i32 s0, s0, 1
	v_add_nc_u32_e32 v109, 0, v7
	.loc	1 734 33                        ; attention.py:734:33
	s_lshl3_add_u32 s3, s15, s0
	.loc	1 778 24                        ; attention.py:778:24
	v_cmp_gt_i32_e64 s0, s19, v75
	v_dual_mov_b32 v127, 0xff800000 :: v_dual_add_nc_u32 v110, 0, v8
	v_add_nc_u32_e32 v112, 0, v11
	v_add_nc_u32_e32 v117, 0, v16
	v_add_nc_u32_e32 v118, 0, v17
	v_add_nc_u32_e32 v121, v2, v1
	v_dual_mov_b32 v17, 0 :: v_dual_add_nc_u32 v122, 0, v4
	v_mov_b32_e32 v20, v65
	v_mov_b32_e32 v21, v65
	v_dual_mov_b32 v22, v65 :: v_dual_mov_b32 v9, 0
	v_mov_b32_e32 v11, v65
	v_add_nc_u32_e32 v113, v100, v12
	v_mov_b32_e32 v12, v65
	v_dual_mov_b32 v16, v65 :: v_dual_mov_b32 v1, 0
	v_mov_b32_e32 v2, v65
	v_mov_b32_e32 v4, v65
	v_mov_b32_e32 v7, v65
	v_dual_mov_b32 v8, v65 :: v_dual_add_nc_u32 v123, 1, v94
	.loc	1 707 13                        ; attention.py:707:13
	v_add_nc_u32_e32 v124, 2, v94
	v_add_nc_u32_e32 v125, 3, v94
	v_lshl_or_b32 v126, s3, 10, v80
	.loc	1 752 25                        ; attention.py:752:25
	s_mul_i32 s9, s11, s22
	s_waitcnt lgkmcnt(0)
	s_and_b32 s5, s5, 0xffff
	s_mov_b32 s31, 0x31027000
	s_mov_b32 s30, 0x7ffffffe
	s_and_b32 s27, s27, 0xffff
	.loc	1 734 32                        ; attention.py:734:32
	s_lshl_b32 s35, s3, 11
	.loc	1 794 21                        ; attention.py:794:21
	s_lshl_b32 s45, s3, 7
	s_add_i32 s46, s46, s9
	s_and_b32 s41, s7, 0xffff
	s_and_b32 s25, s25, 0xffff
	s_mov_b32 s28, s4
	s_mov_b32 s29, s5
	s_mov_b32 s36, s26
	s_mov_b32 s37, s27
	s_mov_b32 s38, s30
	s_mov_b32 s39, s31
	s_mov_b32 s47, 0x76543210
	s_mov_b32 s40, s6
	s_mov_b32 s42, s30
	s_mov_b32 s43, s31
	s_mov_b32 s26, s30
	s_mov_b32 s27, s31
.LBB0_5:                                ; =>This Inner Loop Header: Depth=1
	.loc	1 735 32                        ; attention.py:735:32
	s_add_i32 s1, s33, s35
	.loc	1 741 30                        ; attention.py:741:30
	v_dual_mov_b32 v72, v65 :: v_dual_mov_b32 v131, v76
	.loc	1 735 32                        ; attention.py:735:32
	s_mul_i32 s1, s1, s23
	.loc	1 741 30                        ; attention.py:741:30
	v_dual_mov_b32 v67, v65 :: v_dual_add_nc_u32 v138, 0, v89
	v_dual_mov_b32 v66, v65 :: v_dual_add_nc_u32 v73, 0, v99
	v_dual_mov_b32 v68, v65 :: v_dual_add_nc_u32 v137, v100, v101
	v_dual_mov_b32 v69, v65 :: v_dual_add_nc_u32 v136, 0, v102
	v_dual_mov_b32 v70, v65 :: v_dual_max_f32 v135, v135, v135
	v_dual_mov_b32 v71, v65 :: v_dual_add_nc_u32 v132, 0, v103
	.loc	1 736 32                        ; attention.py:736:32
	v_add_lshl_u32 v151, s1, v74, 1
	.loc	1 741 30                        ; attention.py:741:30
	v_mov_b32_e32 v150, v72
	.loc	1 766 24                        ; attention.py:766:24
	v_dual_max_f32 v76, v127, v127 :: v_dual_mov_b32 v147, v69
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 741 30                        ; attention.py:741:30
	v_dual_mov_b32 v149, v71 :: v_dual_mov_b32 v148, v70
	v_dual_mov_b32 v145, v67 :: v_dual_mov_b32 v146, v68
	v_dual_mov_b32 v143, v65 :: v_dual_mov_b32 v144, v66
	.loc	1 736 32                        ; attention.py:736:32
	v_cndmask_b32_e64 v66, 0x80000000, v151, s2
	.loc	1 708 31                        ; attention.py:708:31
	v_or_b32_e32 v142, s33, v85
	v_or_b32_e32 v140, s33, v87
	v_or_b32_e32 v139, s33, v88
	.loc	1 771 36                        ; attention.py:771:36
	s_lshr_b32 s4, s33, 1
	.loc	1 736 32                        ; attention.py:736:32
	buffer_load_b128 v[66:69], v66, s[28:31], 0 offen
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 708 31                        ; attention.py:708:31
	v_or_b32_e32 v141, s33, v86
	v_dual_mov_b32 v130, v77 :: v_dual_add_nc_u32 v167, s4, v126
	.loc	1 748 30                        ; attention.py:748:30
	v_cmp_ge_i32_e64 s1, v142, v90
	.loc	1 749 30                        ; attention.py:749:30
	v_cmp_le_i32_e64 s4, v142, v92
	.loc	1 752 25                        ; attention.py:752:25
	s_add_i32 s3, s46, s33
	.loc	1 798 53                        ; attention.py:798:53
	s_lshr_b32 s5, s33, 4
	.loc	1 748 30                        ; attention.py:748:30
	v_cmp_ge_i32_e64 s10, v140, v90
	.loc	1 749 30                        ; attention.py:749:30
	v_cmp_le_i32_e64 s12, v140, v92
	.loc	1 748 30                        ; attention.py:748:30
	v_cmp_ge_i32_e64 s14, v139, v90
	.loc	1 749 30                        ; attention.py:749:30
	v_cmp_le_i32_e64 s16, v139, v92
	.loc	1 761 36                        ; attention.py:761:36
	v_add_lshl_u32 v159, s3, v94, 2
	v_add_lshl_u32 v160, s3, v124, 2
	v_add_lshl_u32 v161, s3, v123, 2
	v_add_lshl_u32 v162, s3, v125, 2
	v_add_lshl_u32 v163, s3, v95, 2
	v_add_lshl_u32 v164, s3, v97, 2
	v_add_lshl_u32 v165, s3, v96, 2
	v_add_lshl_u32 v166, s3, v98, 2
	.loc	1 798 25                        ; attention.py:798:25
	s_add_i32 s48, s5, s45
	.loc	1 748 30                        ; attention.py:748:30
	v_cmp_ge_i32_e64 s3, v142, v91
	.loc	1 749 30                        ; attention.py:749:30
	v_cmp_le_i32_e64 s5, v142, v93
	.loc	1 748 30                        ; attention.py:748:30
	v_cmp_ge_i32_e64 s6, v141, v90
	v_cmp_ge_i32_e64 s7, v141, v91
	.loc	1 749 30                        ; attention.py:749:30
	v_cmp_le_i32_e64 s8, v141, v92
	v_cmp_le_i32_e64 s9, v141, v93
	.loc	1 748 30                        ; attention.py:748:30
	v_cmp_ge_i32_e64 s11, v140, v91
	.loc	1 749 30                        ; attention.py:749:30
	v_cmp_le_i32_e64 s13, v140, v93
	.loc	1 748 30                        ; attention.py:748:30
	v_cmp_ge_i32_e64 s15, v139, v91
	.loc	1 749 30                        ; attention.py:749:30
	v_cmp_le_i32_e64 s17, v139, v93
	.loc	1 749 21 is_stmt 0              ; attention.py:749:21
	s_and_b32 s1, s1, s4
	s_and_b32 s10, s10, s12
	s_and_b32 s12, s14, s16
	s_and_b32 s4, vcc_lo, s1
	s_and_b32 s3, s3, s5
	s_and_b32 s5, vcc_lo, s10
	s_and_b32 s6, s6, s8
	s_and_b32 s11, s11, s13
	s_and_b32 s7, s7, s9
	s_and_b32 s9, s15, s17
	s_and_b32 s10, vcc_lo, s12
	s_and_b32 s3, vcc_lo, s3
	s_and_b32 s8, vcc_lo, s6
	s_and_b32 s1, vcc_lo, s11
	s_and_b32 s6, vcc_lo, s7
	s_and_b32 s9, vcc_lo, s9
	.loc	1 775 32 is_stmt 1              ; attention.py:775:32
	v_mov_b16_e64 v133.l, 0
	.loc	1 766 24                        ; attention.py:766:24
	v_dual_max_f32 v134, v134, v134 :: v_dual_max_f32 v77, v128, v128
	.loc	1 798 25                        ; attention.py:798:25
	s_mul_i32 s48, s48, s19
	.loc	1 707 13                        ; attention.py:707:13
	s_add_i32 s33, s33, 16
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 816 30                        ; attention.py:816:30
	v_mov_b16_e64 v168.h, v133.l
	v_mov_b16_e64 v170.h, v133.l
	v_mov_b16_e64 v169.h, v133.l
	v_mov_b16_e64 v171.h, v133.l
	v_mov_b16_e64 v70.h, v133.l
	v_mov_b16_e64 v142.h, v133.l
	v_mov_b16_e64 v72.h, v133.l
	v_mov_b16_e64 v71.h, v133.l
	.loc	1 814 30                        ; attention.py:814:30
	v_mov_b16_e64 v139.h, v133.l
	v_mov_b16_e64 v141.h, v133.l
	v_mov_b16_e64 v140.h, v133.l
	.loc	1 763 25                        ; attention.py:763:25
	.loc	1 736 32                        ; attention.py:736:32
	s_waitcnt vmcnt(0)
	ds_store_b128 v84, v[66:69]
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[151:154], v138
	ds_load_b128 v[155:158], v106
	.loc	1 761 36                        ; attention.py:761:36
	v_cndmask_b32_e64 v66, 0x80000000, v159, s4
	v_cndmask_b32_e64 v67, 0x80000000, v160, s5
	v_cndmask_b32_e64 v69, 0x80000000, v162, s10
	v_cndmask_b32_e64 v68, 0x80000000, v161, s8
	.loc	1 814 30                        ; attention.py:814:30
	v_mov_b16_e64 v138.h, v133.l
	.loc	1 741 30                        ; attention.py:741:30
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[143:150], v[151:158], v[57:64], v[143:150]
	.loc	1 736 32                        ; attention.py:736:32
	ds_load_b128 v[151:154], v107
	ds_load_b128 v[155:158], v108
	.loc	1 741 30                        ; attention.py:741:30
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[143:150], v[151:158], v[49:56], v[143:150]
	.loc	1 736 32                        ; attention.py:736:32
	ds_load_b128 v[151:154], v109
	ds_load_b128 v[155:158], v110
	.loc	1 741 30                        ; attention.py:741:30
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[143:150], v[151:158], v[41:48], v[143:150]
	.loc	1 736 32                        ; attention.py:736:32
	ds_load_b128 v[151:154], v111
	ds_load_b128 v[155:158], v112
	.loc	1 741 30                        ; attention.py:741:30
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[143:150], v[151:158], v[33:40], v[143:150]
	.loc	1 761 36                        ; attention.py:761:36
	v_cndmask_b32_e64 v151, 0x80000000, v163, s3
	v_cndmask_b32_e64 v152, 0x80000000, v164, s1
	v_cndmask_b32_e64 v153, 0x80000000, v165, s6
	v_cndmask_b32_e64 v154, 0x80000000, v166, s9
	s_clause 0x7
	buffer_load_b32 v66, v66, s[36:39], 0 offen
	buffer_load_b32 v67, v67, s[36:39], 0 offen
	buffer_load_b32 v69, v69, s[36:39], 0 offen
	buffer_load_b32 v151, v151, s[36:39], 0 offen
	buffer_load_b32 v154, v154, s[36:39], 0 offen
	buffer_load_b32 v153, v153, s[36:39], 0 offen
	buffer_load_b32 v68, v68, s[36:39], 0 offen
	buffer_load_b32 v152, v152, s[36:39], 0 offen
	.loc	1 762 35                        ; attention.py:762:35
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 761 36                        ; attention.py:761:36
	s_waitcnt vmcnt(7)
	v_cndmask_b32_e64 v66, 0xff800000, v66, s4
	s_waitcnt vmcnt(6)
	v_cndmask_b32_e64 v67, 0xff800000, v67, s5
	s_waitcnt vmcnt(5)
	v_cndmask_b32_e64 v69, 0xff800000, v69, s10
	s_waitcnt vmcnt(4)
	v_cndmask_b32_e64 v151, 0xff800000, v151, s3
	s_waitcnt vmcnt(3)
	v_cndmask_b32_e64 v154, 0xff800000, v154, s9
	s_waitcnt vmcnt(2)
	v_cndmask_b32_e64 v153, 0xff800000, v153, s6
	s_waitcnt vmcnt(1)
	v_cndmask_b32_e64 v68, 0xff800000, v68, s8
	s_waitcnt vmcnt(0)
	v_cndmask_b32_e64 v152, 0xff800000, v152, s1
	.loc	1 763 34                        ; attention.py:763:34
	v_cmp_neq_f32_e64 s11, 0xff800000, v67
	v_cmp_neq_f32_e64 s12, 0xff800000, v151
	.loc	1 762 35                        ; attention.py:762:35
	ds_store_2addr_b64 v113, v[66:67], v[151:152] offset1:32
	ds_store_2addr_b64 v113, v[68:69], v[153:154] offset0:64 offset1:96
	.loc	1 763 34                        ; attention.py:763:34
	v_cmp_neq_f32_e64 s13, 0xff800000, v152
	v_cmp_neq_f32_e64 s7, 0xff800000, v66
	.loc	1 763 25 is_stmt 0              ; attention.py:763:25
	s_and_b32 s3, s3, s12
	s_and_b32 s5, s5, s11
	.loc	1 763 34                        ; attention.py:763:34
	v_cmp_neq_f32_e64 s14, 0xff800000, v68
	.loc	1 763 25                        ; attention.py:763:25
	s_and_b32 s1, s1, s13
	v_cndmask_b32_e64 v67, 0, 1, s3
	v_cndmask_b32_e64 v66, 0, 1, s1
	v_cndmask_b32_e64 v68, 0, 1, s5
	.loc	1 763 34                        ; attention.py:763:34
	v_cmp_neq_f32_e64 s16, 0xff800000, v154
	.loc	1 763 25                        ; attention.py:763:25
	s_and_b32 s7, s4, s7
	.loc	1 763 34                        ; attention.py:763:34
	v_cmp_neq_f32_e64 s15, 0xff800000, v69
	.loc	1 763 25                        ; attention.py:763:25
	v_lshlrev_b16 v66.l, 8, v66.l
	.loc	1 763 34                        ; attention.py:763:34
	v_cmp_neq_f32_e64 s17, 0xff800000, v153
	.loc	1 763 25                        ; attention.py:763:25
	v_cndmask_b32_e64 v69, 0, 1, s7
	s_and_b32 s4, s9, s16
	s_and_b32 s9, s8, s14
	v_or_b16 v153.h, v67.l, v66.l
	v_mov_b16_e32 v66.l, v68.l
	v_cndmask_b32_e64 v154, 0, 1, s4
	v_mov_b16_e32 v67.l, v69.l
	s_and_b32 s6, s6, s17
	s_and_b32 s8, s10, s15
	v_lshlrev_b16 v66.l, 8, v66.l
	v_cndmask_b32_e64 v68, 0, 1, s8
	.loc	1 762 35 is_stmt 1              ; attention.py:762:35
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b64 v[151:152], v73
	ds_load_b64 v[155:156], v114
	ds_load_b64 v[157:158], v115
	.loc	1 763 25                        ; attention.py:763:25
	v_or_b16 v153.l, v67.l, v66.l
	v_mov_b16_e64 v66.l, v154.l
	v_cndmask_b32_e64 v67, 0, 1, s6
	.loc	1 707 13                        ; attention.py:707:13
	s_cmp_lt_i32 s33, s34
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 763 25                        ; attention.py:763:25
	v_lshlrev_b16 v66.l, 8, v66.l
	v_or_b16 v154.h, v67.l, v66.l
	v_mov_b16_e32 v66.l, v68.l
	v_cndmask_b32_e64 v67, 0, 1, s9
	.loc	1 774 30                        ; attention.py:774:30
	v_mad_u64_u32 v[68:69], null, v167, s19, v[75:76]
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 763 25                        ; attention.py:763:25
	v_lshlrev_b16 v66.l, 8, v66.l
	.loc	1 762 35                        ; attention.py:762:35
	s_waitcnt lgkmcnt(2)
	v_dual_mul_f32 v151, 0x3fb8aa3b, v151 :: v_dual_mul_f32 v152, 0x3fb8aa3b, v152
	s_waitcnt lgkmcnt(1)
	v_dual_mul_f32 v155, 0x3fb8aa3b, v155 :: v_dual_mul_f32 v156, 0x3fb8aa3b, v156
	s_waitcnt lgkmcnt(0)
	v_mul_f32_e32 v157, 0x3fb8aa3b, v157
	.loc	1 763 25                        ; attention.py:763:25
	v_or_b16 v154.l, v67.l, v66.l
	.loc	1 762 35                        ; attention.py:762:35
	ds_load_b64 v[66:67], v116
	.loc	1 763 25                        ; attention.py:763:25
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b32 v137, v153
	ds_store_b32 v117, v154
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 775 32                        ; attention.py:775:32
	v_cndmask_b32_e64 v153, 0x80000000, v68, s0
	.loc	1 762 35                        ; attention.py:762:35
	v_dual_mul_f32 v158, 0x3fb8aa3b, v158 :: v_dual_fmac_f32 v151, s44, v143
	.loc	1 762 25 is_stmt 0              ; attention.py:762:25
	v_dual_fmac_f32 v152, s44, v144 :: v_dual_fmac_f32 v155, s44, v145
	v_dual_fmac_f32 v156, s44, v146 :: v_dual_fmac_f32 v157, s44, v147
	.loc	1 797 41 is_stmt 1              ; attention.py:797:41
	v_mov_b16_e64 v137.l, v133.l
	.loc	1 762 35                        ; attention.py:762:35
	v_dual_mul_f32 v159, 0x3fb8aa3b, v66 :: v_dual_mul_f32 v160, 0x3fb8aa3b, v67
	.loc	1 763 25                        ; attention.py:763:25
	ds_load_u16_d16 v66, v136
	s_waitcnt lgkmcnt(0)
	ds_load_u16_d16_hi v66, v118
	ds_load_u16_d16 v67, v119
	s_waitcnt lgkmcnt(0)
	ds_load_u16_d16_hi v67, v120
	.loc	1 762 25                        ; attention.py:762:25
	v_dual_fmac_f32 v158, s44, v148 :: v_dual_fmac_f32 v159, s44, v149
	.loc	1 764 26                        ; attention.py:764:26
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 763 25                        ; attention.py:763:25
	v_and_b16 v68.l, 1, v66.l
	v_lshrrev_b16 v66.l, 8, v66.l
	v_and_b16 v68.h, 1, v66.h
	v_lshrrev_b16 v66.h, 8, v66.h
	v_and_b16 v69.l, 1, v67.l
	v_lshrrev_b16 v67.l, 8, v67.l
	v_lshrrev_b16 v69.h, 8, v67.h
	v_and_b16 v66.l, 1, v66.l
	v_and_b16 v66.h, 1, v66.h
	v_and_b16 v67.h, 1, v67.h
	v_and_b16 v67.l, 1, v67.l
	v_and_b16 v69.h, 1, v69.h
	v_cmp_eq_u16_e64 s13, 1, v68.l
	v_cmp_eq_u16_e64 s15, 1, v66.l
	v_cmp_eq_u16_e64 s14, 1, v68.h
	v_cmp_eq_u16_e64 s16, 1, v66.h
	v_cmp_eq_u16_e64 s11, 1, v69.l
	v_cmp_eq_u16_e64 s17, 1, v67.l
	.loc	1 764 26                        ; attention.py:764:26
	v_cndmask_b32_e64 v147, 0xff800000, v151, s13
	.loc	1 762 25                        ; attention.py:762:25
	v_fmac_f32_e32 v160, s44, v150
	.loc	1 763 25                        ; attention.py:763:25
	v_cmp_eq_u16_e64 s10, 1, v67.h
	v_cmp_eq_u16_e64 s12, 1, v69.h
	.loc	1 764 26                        ; attention.py:764:26
	v_cndmask_b32_e64 v148, 0xff800000, v152, s15
	v_cndmask_b32_e64 v149, 0xff800000, v155, s14
	v_cndmask_b32_e64 v150, 0xff800000, v156, s16
	v_cndmask_b32_e64 v151, 0xff800000, v157, s11
	v_cndmask_b32_e64 v152, 0xff800000, v158, s17
	v_cndmask_b32_e64 v68, 0xff800000, v159, s10
	v_cndmask_b32_e64 v69, 0xff800000, v160, s12
	ds_store_b64 v73, v[147:148]
	ds_store_b64 v114, v[149:150]
	ds_store_b64 v115, v[151:152]
	ds_store_b64 v116, v[68:69]
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 775 32                        ; attention.py:775:32
	buffer_load_b32 v153, v153, s[40:43], 0 offen
.Ltmp1:
	.file	2 "<triton>/python/triton/language" "standard.py"
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:765:29 ] ]
	v_max3_f32 v66, v147, v148, v149
	v_max3_f32 v67, v150, v151, v152
	v_max_f32_e32 v136, v68, v69
.Ltmp2:
	.loc	1 764 26                        ; attention.py:764:26
	ds_load_2addr_b64 v[143:146], v113 offset1:32
	.loc	1 814 30                        ; attention.py:814:30
	v_mov_b16_e64 v159.h, v133.l
.Ltmp3:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:765:29 ] ]
	v_max3_f32 v66, v66, v67, v136
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp4:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:765:29 ]
	v_permlanex16_b32 v67, v66, s47, 0xfedcba98 op_sel:[1,0]
.Ltmp5:
	.loc	1 766 24                        ; attention.py:766:24
	v_max3_f32 v73, v129, v66, v67
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 768 62                        ; attention.py:768:62
	v_sub_f32_e32 v136, v150, v73
	v_sub_f32_e32 v157, v68, v73
	v_sub_f32_e32 v67, v147, v73
	v_sub_f32_e32 v156, v69, v73
	v_sub_f32_e32 v154, v149, v73
	.loc	1 768 49 is_stmt 0              ; attention.py:768:49
	v_exp_f32_e32 v68, v136
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	v_exp_f32_e32 v67, v67
	.loc	1 768 33                        ; attention.py:768:33
	v_cndmask_b32_e64 v68, 0, v68, s16
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b32_e64 v67, 0, v67, s13
	.loc	1 816 30 is_stmt 1              ; attention.py:816:30
	v_mov_b16_e64 v170.l, v68.h
	.loc	1 768 62                        ; attention.py:768:62
	v_sub_f32_e32 v66, v148, v73
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 816 30                        ; attention.py:816:30
	v_mov_b16_e64 v169.l, v67.h
	v_cmp_o_f32_e64 s16, v68, v68
	v_and_b32_e32 v147, 1, v170
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 768 49                        ; attention.py:768:49
	v_exp_f32_e32 v66, v66
	.loc	1 816 30                        ; attention.py:816:30
	v_and_b32_e32 v136, 1, v169
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_4) | instid1(VALU_DEP_3)
	v_add3_u32 v68, v68, v147, 0x7fff
	.loc	1 764 26                        ; attention.py:764:26
	ds_load_2addr_b64 v[147:150], v113 offset0:64 offset1:96
	.loc	1 768 33                        ; attention.py:768:33
	v_cndmask_b32_e64 v66, 0, v66, s15
	.loc	1 816 30                        ; attention.py:816:30
	v_cmp_o_f32_e64 s15, v67, v67
	v_add3_u32 v67, v67, v136, 0x7fff
	v_mov_b16_e64 v168.l, v66.h
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cmp_o_f32_e64 s13, v66, v66
	v_and_b32_e32 v69, 1, v168
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_add3_u32 v66, v66, v69, 0x7fff
	v_cndmask_b16 v69.l, 0x7fff, v67.h, s15
	v_cndmask_b16 v69.h, 0x7fff, v66.h, s13
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_permlanex16_b32 v67, v69, s47, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v66, v67, v69, v104
	v_perm_b32 v67, v67, v69, v105
	.loc	1 768 49                        ; attention.py:768:49
	v_exp_f32_e32 v69, v154
.Ltmp6:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:765:29 ] ]
	s_waitcnt lgkmcnt(1)
	v_max_f32_e32 v154, v143, v143
.Ltmp7:
	.loc	1 768 49                        ; attention.py:768:49
	v_exp_f32_e32 v157, v157
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 768 33 is_stmt 0              ; attention.py:768:33
	v_cndmask_b32_e64 v69, 0, v69, s14
	v_cndmask_b32_e64 v157, 0, v157, s10
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 816 30 is_stmt 1              ; attention.py:816:30
	v_mov_b16_e64 v171.l, v69.h
	.loc	1 768 62                        ; attention.py:768:62
	v_sub_f32_e32 v155, v151, v73
	.loc	1 816 30                        ; attention.py:816:30
	v_cmp_o_f32_e64 s13, v69, v69
	v_cndmask_b16 v151.h, 0x7fff, v68.h, s16
	v_mov_b16_e64 v70.l, v157.h
	v_and_b32_e32 v136, 1, v171
	v_cmp_o_f32_e64 s10, v157, v157
	.loc	1 768 49                        ; attention.py:768:49
	v_exp_f32_e32 v155, v155
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 816 30                        ; attention.py:816:30
	v_and_b32_e32 v70, 1, v70
	v_add3_u32 v69, v69, v136, 0x7fff
	.loc	1 767 74                        ; attention.py:767:74
	v_sub_f32_e32 v136, v129, v73
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 816 30                        ; attention.py:816:30
	v_add3_u32 v157, v157, v70, 0x7fff
	v_cndmask_b16 v151.l, 0x7fff, v69.h, s13
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(TRANS32_DEP_2)
	.loc	1 767 61                        ; attention.py:767:61
	v_exp_f32_e32 v158, v136
	.loc	1 767 25 is_stmt 0              ; attention.py:767:25
	v_cmp_neq_f32_e64 s13, 0xff800000, v129
	.loc	1 768 33 is_stmt 1              ; attention.py:768:33
	v_cndmask_b32_e64 v155, 0, v155, s11
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 816 30                        ; attention.py:816:30
	v_permlanex16_b32 v69, v151, s47, 0xfedcba98 op_sel:[1,0]
	v_mov_b16_e64 v71.l, v155.h
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cmp_o_f32_e64 s11, v155, v155
	v_perm_b32 v68, v69, v151, v104
	v_perm_b32 v69, v69, v151, v105
.Ltmp8:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:765:29 ] ]
	s_waitcnt lgkmcnt(0)
	v_max_f32_e32 v151, v147, v147
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_dual_max_f32 v129, v149, v149 :: v_dual_max_f32 v154, v154, v151
.Ltmp9:
	.loc	1 767 25                        ; attention.py:767:25
	v_cndmask_b32_e64 v151, 0, v158, s13
.Ltmp10:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:765:29 ] ]
	v_max_f32_e32 v136, v145, v145
.Ltmp11:
	.loc	1 768 62                        ; attention.py:768:62
	v_sub_f32_e32 v152, v152, v73
.Ltmp12:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:765:29 ] ]
	v_max3_f32 v154, v154, v144, v148
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_4)
.Ltmp13:
	.loc	1 815 23                        ; attention.py:815:23
	v_mul_f32_e32 v9, v9, v151
	v_mul_f32_e32 v11, v11, v151
	v_mul_f32_e32 v31, v31, v151
	v_dual_mul_f32 v23, v23, v151 :: v_dual_mov_b32 v70, v154
.Ltmp14:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:765:29 ] ]
	v_dual_max_f32 v129, v136, v129 :: v_dual_mul_f32 v26, v26, v151
.Ltmp15:
	.loc	1 768 49                        ; attention.py:768:49
	v_exp_f32_e32 v156, v156
	.loc	1 815 23                        ; attention.py:815:23
	v_mul_f32_e32 v25, v25, v151
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_3)
.Ltmp16:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:765:29 ]
	v_mov_b32_dpp v70, v70 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp17:
	.loc	1 815 23                        ; attention.py:815:23
	v_mul_f32_e32 v13, v13, v151
	.loc	1 768 49                        ; attention.py:768:49
	v_exp_f32_e32 v152, v152
.Ltmp18:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:765:29 ] ]
	v_max3_f32 v129, v129, v146, v150
.Ltmp19:
	.loc	1 815 23                        ; attention.py:815:23
	v_dual_mul_f32 v3, v3, v151 :: v_dual_max_f32 v70, v70, v70
	v_mul_f32_e32 v15, v15, v151
	v_mul_f32_e32 v28, v28, v151
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 768 33                        ; attention.py:768:33
	v_cndmask_b32_e64 v156, 0, v156, s12
	.loc	1 815 23                        ; attention.py:815:23
	v_dual_mul_f32 v27, v27, v151 :: v_dual_max_f32 v154, v154, v70
.Ltmp20:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:765:29 ]
	v_mov_b32_e32 v70, v129
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp21:
	.loc	1 768 33                        ; attention.py:768:33
	v_cndmask_b32_e64 v152, 0, v152, s17
	.loc	1 816 30                        ; attention.py:816:30
	v_mov_b16_e64 v142.l, v156.h
	.loc	1 815 23                        ; attention.py:815:23
	v_mul_f32_e32 v21, v21, v151
	.loc	1 816 30                        ; attention.py:816:30
	v_cmp_o_f32_e64 s12, v156, v156
.Ltmp22:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:765:29 ]
	v_mov_b32_dpp v70, v70 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp23:
	.loc	1 815 23                        ; attention.py:815:23
	v_mul_f32_e32 v1, v1, v151
	.loc	1 816 30                        ; attention.py:816:30
	v_mov_b16_e64 v72.l, v152.h
	.loc	1 815 23                        ; attention.py:815:23
	v_dual_mul_f32 v17, v17, v151 :: v_dual_and_b32 v142, 1, v142
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp24:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:765:29 ] ]
	v_dual_max_f32 v70, v70, v70 :: v_dual_mul_f32 v7, v7, v151
.Ltmp25:
	.loc	1 816 30                        ; attention.py:816:30
	v_and_b32_e32 v72, 1, v72
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_add3_u32 v142, v156, v142, 0x7fff
	v_cmp_o_f32_e64 s13, v152, v152
.Ltmp26:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:765:29 ] ]
	v_dual_max_f32 v158, v129, v70 :: v_dual_and_b32 v71, 1, v71
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_4)
.Ltmp27:
	.loc	1 816 30                        ; attention.py:816:30
	v_add3_u32 v72, v152, v72, 0x7fff
	v_mov_b32_e32 v129, v73
	v_cndmask_b16 v73.h, 0x7fff, v142.h, s12
.Ltmp28:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:765:29 ]
	v_mov_b32_e32 v142, v158
.Ltmp29:
	.loc	1 816 30                        ; attention.py:816:30
	v_add3_u32 v71, v155, v71, 0x7fff
	v_cndmask_b16 v72.h, 0x7fff, v72.h, s13
	.loc	1 815 23                        ; attention.py:815:23
	v_mul_f32_e32 v5, v5, v151
	.loc	1 816 30                        ; attention.py:816:30
	v_cndmask_b16 v73.l, 0x7fff, v157.h, s10
.Ltmp30:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:765:29 ]
	v_mov_b32_dpp v142, v142 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp31:
	.loc	1 816 30                        ; attention.py:816:30
	v_cndmask_b16 v72.l, 0x7fff, v71.h, s11
	.loc	1 767 25                        ; attention.py:767:25
	v_cmp_neq_f32_e64 s10, 0xff800000, v127
	v_cmp_neq_f32_e64 s11, 0xff800000, v128
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 815 23                        ; attention.py:815:23
	v_dual_mul_f32 v29, v29, v151 :: v_dual_max_f32 v142, v142, v142
	.loc	1 816 30                        ; attention.py:816:30
	v_permlanex16_b32 v71, v72, s47, 0xfedcba98 op_sel:[1,0]
	.loc	1 815 23                        ; attention.py:815:23
	v_mul_f32_e32 v19, v19, v151
	v_mul_f32_e32 v24, v24, v151
	v_mul_f32_e32 v14, v14, v151
.Ltmp32:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:765:29 ] ]
	v_max_f32_e32 v142, v158, v142
.Ltmp33:
	.loc	1 816 30                        ; attention.py:816:30
	v_perm_b32 v70, v71, v72, v104
	v_perm_b32 v71, v71, v72, v105
.Ltmp34:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:765:29 ]
	v_mov_b32_e32 v72, v154
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
.Ltmp35:
	.loc	1 815 23                        ; attention.py:815:23
	v_dual_mul_f32 v30, v30, v151 :: v_dual_max_f32 v135, v135, v142
	v_dual_mul_f32 v32, v32, v151 :: v_dual_max_f32 v77, v77, v142
.Ltmp36:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:765:29 ]
	v_mov_b32_dpp v72, v72 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp37:
	.loc	1 815 23                        ; attention.py:815:23
	v_mul_f32_e32 v6, v6, v151
	v_mul_f32_e32 v8, v8, v151
	.loc	1 814 30                        ; attention.py:814:30
	v_mov_b16_e64 v136.h, v133.l
	v_mov_b16_e64 v155.h, v133.l
.Ltmp38:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:765:29 ] ]
	v_max_f32_e32 v160, v72, v72
.Ltmp39:
	.loc	1 814 30                        ; attention.py:814:30
	v_mov_b16_e64 v156.h, v133.l
	.loc	1 816 30                        ; attention.py:816:30
	v_permlanex16_b32 v157, v73, s47, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp40:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:765:29 ] ]
	v_max_f32_e32 v154, v154, v160
.Ltmp41:
	.loc	1 816 30                        ; attention.py:816:30
	v_perm_b32 v72, v157, v73, v104
	v_perm_b32 v73, v157, v73, v105
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 766 24                        ; attention.py:766:24
	v_max_f32_e32 v134, v134, v154
	.loc	1 815 23                        ; attention.py:815:23
	v_mul_f32_e32 v18, v18, v151
	v_mul_f32_e32 v22, v22, v151
	.loc	1 766 24                        ; attention.py:766:24
	v_max_f32_e32 v76, v76, v154
	.loc	1 767 74                        ; attention.py:767:74
	v_sub_f32_e32 v154, v128, v77
	.loc	1 768 62                        ; attention.py:768:62
	v_sub_f32_e32 v142, v143, v134
	v_dual_sub_f32 v143, v144, v134 :: v_dual_sub_f32 v144, v145, v135
	v_dual_sub_f32 v145, v146, v135 :: v_dual_sub_f32 v146, v147, v134
	v_dual_sub_f32 v147, v148, v134 :: v_dual_sub_f32 v148, v149, v135
	v_sub_f32_e32 v149, v150, v135
	.loc	1 768 49 is_stmt 0              ; attention.py:768:49
	v_exp_f32_e32 v142, v142
	s_delay_alu instid0(VALU_DEP_3)
	v_exp_f32_e32 v146, v146
	v_exp_f32_e32 v143, v143
	v_exp_f32_e32 v147, v147
	v_exp_f32_e32 v144, v144
	v_exp_f32_e32 v148, v148
	v_exp_f32_e32 v145, v145
	v_exp_f32_e32 v149, v149
	.loc	1 815 23 is_stmt 1              ; attention.py:815:23
	v_mul_f32_e32 v10, v10, v151
	.loc	1 767 74                        ; attention.py:767:74
	v_dual_sub_f32 v150, v127, v76 :: v_dual_mov_b32 v127, v76
	v_mov_b32_e32 v128, v77
	.loc	1 768 33                        ; attention.py:768:33
	v_cndmask_b32_e64 v76, 0, v142, s7
	v_cndmask_b32_e64 v77, 0, v146, s9
	v_cndmask_b32_e64 v142, 0, v143, s5
	v_cndmask_b32_e64 v143, 0, v147, s8
	v_cndmask_b32_e64 v144, 0, v144, s3
	v_cndmask_b32_e64 v146, 0, v148, s6
	v_cndmask_b32_e64 v145, 0, v145, s1
	v_cndmask_b32_e64 v147, 0, v149, s4
.Ltmp42:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:769:24 ] ]
	v_dual_add_f32 v76, v76, v77 :: v_dual_add_f32 v77, v142, v143
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_add_f32_e32 v142, v144, v146
.Ltmp43:
	.loc	1 767 61                        ; attention.py:767:61
	v_exp_f32_e32 v154, v154
.Ltmp44:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:769:24 ] ]
	v_dual_add_f32 v143, v145, v147 :: v_dual_add_f32 v76, v76, v77
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_add_f32_e32 v77, v142, v143
.Ltmp45:
	.loc	1 815 23                        ; attention.py:815:23
	v_mul_f32_e32 v20, v20, v151
.Ltmp46:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:769:24 ]
	v_mov_b32_e32 v142, v76
.Ltmp47:
	.loc	1 767 61                        ; attention.py:767:61
	v_exp_f32_e32 v150, v150
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 767 25 is_stmt 0              ; attention.py:767:25
	v_cndmask_b32_e64 v161, 0, v154, s11
.Ltmp48:
	.loc	2 293 12 is_stmt 1              ; standard.py:293:12 @[ attention.py:769:24 ]
	v_dual_mov_b32 v143, v77 :: v_dual_mul_f32 v4, v4, v151
	v_mov_b32_dpp v142, v142 row_xmask:2 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_mov_b32_dpp v143, v143 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp49:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:769:24 ] ]
	v_add_f32_e32 v162, v76, v142
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp50:
	.loc	1 767 25                        ; attention.py:767:25
	v_cndmask_b32_e64 v160, 0, v150, s10
.Ltmp51:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:769:24 ] ]
	v_add_f32_e32 v163, v77, v143
.Ltmp52:
	.loc	1 815 23                        ; attention.py:815:23
	v_mul_f32_e32 v16, v16, v151
	v_mul_f32_e32 v2, v2, v151
	.loc	1 775 32                        ; attention.py:775:32
	s_waitcnt vmcnt(0)
	v_bfe_i32 v142, v153, 0, 8
	.loc	1 783 76                        ; attention.py:783:76
	v_and_b16 v76.l, v153.l, 15
	.loc	1 785 32                        ; attention.py:785:32
	v_lshrrev_b16 v76.h, 4, v153.l
	.loc	1 775 32                        ; attention.py:775:32
	v_lshrrev_b32_e32 v143, 8, v153
	.loc	1 783 76                        ; attention.py:783:76
	v_and_b16 v77.l, v153.h, 15
	.loc	1 775 32                        ; attention.py:775:32
	v_lshrrev_b32_e32 v144, 24, v153
	.loc	1 787 39                        ; attention.py:787:39
	v_mov_b16_e64 v136.l, v142.l
	.loc	1 786 38                        ; attention.py:786:38
	v_cmp_lt_u16_e64 s1, 7, v76.l
	.loc	1 775 32                        ; attention.py:775:32
	v_mov_b16_e64 v139.l, v153.h
	.loc	1 785 32                        ; attention.py:785:32
	v_lshrrev_b32_e32 v147, 20, v153
	v_and_b16 v76.h, v76.h, 15
	.loc	1 775 32                        ; attention.py:775:32
	v_bfe_i32 v148, v143, 0, 8
	.loc	1 786 38                        ; attention.py:786:38
	v_cmp_lt_u16_e64 s3, 7, v77.l
	.loc	1 783 76                        ; attention.py:783:76
	v_and_b16 v140.l, v144.l, 15
	.loc	1 787 39                        ; attention.py:787:39
	v_cmp_gt_i16_e64 s4, 0, v136.l
	.loc	1 786 29                        ; attention.py:786:29
	v_cndmask_b16 v136.l, 0, -16, s1
	.loc	1 783 76                        ; attention.py:783:76
	v_and_b16 v77.h, v143.l, 15
	.loc	1 785 32                        ; attention.py:785:32
	v_lshrrev_b16 v138.l, 4, v143.l
	.loc	1 775 32                        ; attention.py:775:32
	v_bfe_i32 v149, v139, 0, 8
	.loc	1 785 32                        ; attention.py:785:32
	v_and_b16 v139.l, v147.l, 15
	.loc	1 787 56                        ; attention.py:787:56
	v_or_b16 v142.l, v76.h, -16
	.loc	1 787 39 is_stmt 0              ; attention.py:787:39
	v_mov_b16_e64 v143.l, v148.l
	.loc	1 786 29 is_stmt 1              ; attention.py:786:29
	v_or_b16 v147.l, v76.l, v136.l
	v_cndmask_b16 v76.l, 0, -16, s3
	.loc	1 786 38 is_stmt 0              ; attention.py:786:38
	v_cmp_lt_u16_e64 s3, 7, v140.l
	.loc	1 775 32 is_stmt 1              ; attention.py:775:32
	v_bfe_i32 v150, v144, 0, 8
	.loc	1 786 38                        ; attention.py:786:38
	v_cmp_lt_u16_e64 s1, 7, v77.h
	.loc	1 787 30                        ; attention.py:787:30
	v_cndmask_b16 v148.l, v76.h, v142.l, s4
	.loc	1 787 39 is_stmt 0              ; attention.py:787:39
	v_cmp_gt_i16_e64 s4, 0, v143.l
	.loc	1 786 29 is_stmt 1              ; attention.py:786:29
	v_or_b16 v143.l, v77.l, v76.l
	v_cndmask_b16 v77.l, 0, -16, s3
	.loc	1 787 39                        ; attention.py:787:39
	v_mov_b16_e64 v136.l, v150.l
	.loc	1 786 29                        ; attention.py:786:29
	v_cndmask_b16 v142.h, 0, -16, s1
	.loc	1 785 32                        ; attention.py:785:32
	v_and_b16 v138.l, v138.l, 15
	v_lshrrev_b16 v141.l, 4, v144.l
	.loc	1 786 29                        ; attention.py:786:29
	v_or_b16 v77.l, v140.l, v77.l
	.loc	1 787 39                        ; attention.py:787:39
	v_cmp_gt_i16_e64 s1, 0, v136.l
	.loc	1 786 29                        ; attention.py:786:29
	v_or_b16 v136.l, v77.h, v142.h
	.loc	1 787 39                        ; attention.py:787:39
	v_mov_b16_e64 v144.l, v149.l
	.loc	1 787 56 is_stmt 0              ; attention.py:787:56
	v_or_b16 v76.l, v138.l, -16
	.loc	1 814 31 is_stmt 1              ; attention.py:814:31
	v_bfe_i32 v77, v77, 0, 16
	.loc	1 787 56                        ; attention.py:787:56
	v_or_b16 v76.h, v139.l, -16
	v_or_b16 v142.l, v141.l, -16
	.loc	1 787 39 is_stmt 0              ; attention.py:787:39
	v_cmp_gt_i16_e64 s5, 0, v144.l
	.loc	1 787 30                        ; attention.py:787:30
	v_cndmask_b16 v76.l, v138.l, v76.l, s4
	.loc	1 814 31 is_stmt 1              ; attention.py:814:31
	v_cvt_f32_i32_e32 v77, v77
	.loc	1 815 23                        ; attention.py:815:23
	v_mul_f32_e32 v12, v12, v151
	.loc	1 797 41                        ; attention.py:797:41
	v_add_lshl_u32 v151, s48, v75, 1
	.loc	1 814 31                        ; attention.py:814:31
	v_bfe_i32 v144, v147, 0, 16
	v_bfe_i32 v147, v148, 0, 16
	.loc	1 787 30                        ; attention.py:787:30
	v_cndmask_b16 v138.l, v139.l, v76.h, s5
	v_cndmask_b16 v139.l, v141.l, v142.l, s1
	.loc	1 797 41                        ; attention.py:797:41
	v_cndmask_b32_e64 v151, 0x80000000, v151, s0
	.loc	1 814 31                        ; attention.py:814:31
	v_bfe_i32 v142, v143, 0, 16
	v_bfe_i32 v76, v76, 0, 16
	v_bfe_i32 v143, v136, 0, 16
	v_cvt_f32_i32_e32 v144, v144
	.loc	1 797 41                        ; attention.py:797:41
	buffer_load_b64 v[151:152], v151, s[24:27], 0 offen
	.loc	1 814 31                        ; attention.py:814:31
	v_cvt_f32_i32_e32 v147, v147
	v_bfe_i32 v148, v138, 0, 16
	v_cvt_f32_i32_e32 v142, v142
	v_bfe_i32 v149, v139, 0, 16
	v_cvt_f32_i32_e32 v76, v76
	v_cvt_f32_i32_e32 v143, v143
	.loc	1 814 30 is_stmt 0              ; attention.py:814:30
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 797 41 is_stmt 1              ; attention.py:797:41
	s_waitcnt vmcnt(0)
	v_mov_b16_e64 v133.h, v151.l
	v_mov_b16_e64 v137.h, v152.l
	v_and_b32_e32 v145, 0xffff0000, v151
	v_and_b32_e32 v146, 0xffff0000, v152
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 814 31                        ; attention.py:814:31
	v_mul_f32_e32 v144, v133, v144
	v_mul_f32_e32 v133, v133, v147
	v_cvt_f32_i32_e32 v147, v148
	v_mul_f32_e32 v142, v137, v142
	v_cvt_f32_i32_e32 v148, v149
	v_mul_f32_e32 v76, v145, v76
	v_mul_f32_e32 v143, v145, v143
	.loc	1 814 30 is_stmt 0              ; attention.py:814:30
	v_mov_b16_e64 v141.l, v144.h
	v_mov_b16_e64 v140.l, v133.h
	.loc	1 814 31                        ; attention.py:814:31
	v_mul_f32_e32 v137, v137, v147
	v_mul_f32_e32 v145, v146, v148
	v_mul_f32_e32 v77, v146, v77
	.loc	1 814 30                        ; attention.py:814:30
	v_mov_b16_e64 v136.l, v142.h
	v_mov_b16_e64 v138.l, v76.h
	v_mov_b16_e64 v139.l, v143.h
	v_and_b32_e32 v141, 1, v141
	v_and_b32_e32 v140, 1, v140
	v_and_b32_e32 v136, 1, v136
	v_mov_b16_e64 v155.l, v137.h
	v_mov_b16_e64 v156.l, v145.h
	v_mov_b16_e64 v159.l, v77.h
	v_and_b32_e32 v138, 1, v138
	v_and_b32_e32 v139, 1, v139
	v_cmp_o_f32_e64 s1, v144, v144
	v_cmp_o_f32_e64 s3, v133, v133
	v_cmp_o_f32_e64 s4, v142, v142
	v_add3_u32 v141, v144, v141, 0x7fff
	v_add3_u32 v133, v133, v140, 0x7fff
	v_add3_u32 v136, v142, v136, 0x7fff
	v_and_b32_e32 v140, 1, v155
	v_and_b32_e32 v142, 1, v156
	v_and_b32_e32 v144, 1, v159
	v_cmp_o_f32_e64 s5, v76, v76
	v_cmp_o_f32_e64 s6, v143, v143
	v_add3_u32 v76, v76, v138, 0x7fff
	v_add3_u32 v138, v143, v139, 0x7fff
	v_cmp_o_f32_e64 s7, v137, v137
	v_cmp_o_f32_e64 s8, v145, v145
	v_cmp_o_f32_e64 s9, v77, v77
	v_add3_u32 v137, v137, v140, 0x7fff
	v_add3_u32 v139, v145, v142, 0x7fff
	v_add3_u32 v77, v77, v144, 0x7fff
	v_cndmask_b16 v133.h, 0x7fff, v133.h, s3
	v_cndmask_b16 v133.l, 0x7fff, v141.h, s1
	v_cndmask_b16 v76.l, 0x7fff, v136.h, s4
	v_cndmask_b16 v136.h, 0x7fff, v76.h, s5
	v_cndmask_b16 v136.l, 0x7fff, v138.h, s6
	v_cndmask_b16 v76.h, 0x7fff, v137.h, s7
	v_cndmask_b16 v137.h, 0x7fff, v139.h, s8
	v_cndmask_b16 v137.l, 0x7fff, v77.h, s9
	ds_store_2addr_b32 v121, v133, v136 offset1:8
	ds_store_2addr_b32 v121, v76, v137 offset0:16 offset1:24
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[140:143], v122
	ds_load_b128 v[136:139], v132
	ds_load_b128 v[144:147], v132 offset:512
	ds_load_b128 v[148:151], v122 offset:512
	ds_load_b128 v[152:155], v132 offset:1024
.Ltmp53:
	.loc	2 293 12 is_stmt 1              ; standard.py:293:12 @[ attention.py:769:24 ]
	v_dual_mov_b32 v76, v162 :: v_dual_mov_b32 v77, v163
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_mov_b32_dpp v76, v76 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v77, v77 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp54:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:769:24 ] ]
	v_dual_add_f32 v76, v162, v76 :: v_dual_add_f32 v77, v163, v77
.Ltmp55:
	.loc	1 817 23                        ; attention.py:817:23
	v_fmac_f32_e32 v76, v131, v160
	.loc	1 816 23                        ; attention.py:816:23
	s_waitcnt lgkmcnt(3)
	v_wmma_f32_16x16x16_bf16 v[25:32], v[136:143], v[66:73], v[25:32]
	.loc	1 814 30                        ; attention.py:814:30
	ds_load_b128 v[136:139], v132 offset:1536
	ds_load_b128 v[156:159], v122 offset:1024
	ds_load_b128 v[140:143], v122 offset:1536
	.loc	1 817 23                        ; attention.py:817:23
	v_fmac_f32_e32 v77, v130, v161
	.loc	1 816 23                        ; attention.py:816:23
	s_waitcnt lgkmcnt(4)
	v_wmma_f32_16x16x16_bf16 v[17:24], v[144:151], v[66:73], v[17:24]
	s_waitcnt lgkmcnt(1)
	v_wmma_f32_16x16x16_bf16 v[9:16], v[152:159], v[66:73], v[9:16]
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[1:8], v[136:143], v[66:73], v[1:8]
	.loc	1 707 13                        ; attention.py:707:13
	s_cbranch_scc1 .LBB0_5
; %bb.6:                                ; %Flow
	.loc	1 0 13 is_stmt 0                ; attention.py:0:13
	v_dual_mov_b32 v34, v83 :: v_dual_mov_b32 v35, v82
.LBB0_7:                                ; %._crit_edge
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 707 13 is_stmt 1              ; attention.py:707:13
	v_and_b32_e32 v33, 0x80, v35
	v_and_b32_e32 v35, 4, v80
	v_add_nc_u32_e32 v34, 0, v34
	v_lshl_add_u32 v36, v81, 1, 0
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 848 17                        ; attention.py:848:17
	s_and_b32 s21, s21, 0xffff
	.loc	1 707 13                        ; attention.py:707:13
	v_add3_u32 v33, v34, v33, v35
	ds_store_b64 v36, v[76:77]
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 598 79                        ; attention.py:598:79
	v_bfe_u32 v36, v0, 4, 1
	.loc	1 707 13                        ; attention.py:707:13
	ds_load_b32 v38, v33
	.loc	1 570 31                        ; attention.py:570:31
	v_lshrrev_b32_e32 v33, 1, v79
	.loc	1 598 79                        ; attention.py:598:79
	v_or_b32_e32 v0, 62, v80
	s_mov_b32 s23, 0x31027000
	v_or_b32_e32 v34, 32, v36
	v_or_b32_e32 v35, 16, v36
	.loc	1 570 31                        ; attention.py:570:31
	v_or_b32_e32 v37, v33, v78
	.loc	1 598 79                        ; attention.py:598:79
	v_or_b32_e32 v33, 48, v36
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	.loc	1 570 21                        ; attention.py:570:21
	v_or_b32_e32 v39, s22, v37
	.loc	1 843 24                        ; attention.py:843:24
	v_or_b32_e32 v37, s18, v37
	s_mov_b32 s22, 0x7ffffffe
	.loc	1 601 23                        ; attention.py:601:23
	v_cmp_gt_i32_e64 s0, 0x800, v39
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_4) | instid1(VALU_DEP_3)
	.loc	1 843 24                        ; attention.py:843:24
	v_mul_lo_u32 v37, s19, v37
	.loc	1 841 48                        ; attention.py:841:48
	s_waitcnt lgkmcnt(0)
	v_div_scale_f32 v39, null, v38, v38, v25
	v_div_scale_f32 v43, null, v38, v38, v27
	v_div_scale_f32 v41, null, v38, v38, v26
	v_rcp_f32_e32 v46, v39
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_rcp_f32_e32 v49, v43
	v_div_scale_f32 v45, null, v38, v38, v28
	v_rcp_f32_e32 v47, v41
	v_div_scale_f32 v40, vcc_lo, v25, v38, v25
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(TRANS32_DEP_3)
	v_rcp_f32_e32 v51, v45
	v_div_scale_f32 v42, s1, v26, v38, v26
	v_fma_f32 v53, -v39, v46, 1.0
	v_fma_f32 v56, -v43, v49, 1.0
	v_div_scale_f32 v44, s2, v27, v38, v27
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v54, -v41, v47, 1.0
	v_dual_fmac_f32 v46, v53, v46 :: v_dual_fmac_f32 v49, v56, v49
	v_div_scale_f32 v50, null, v38, v38, v29
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_dual_fmac_f32 v47, v54, v47 :: v_dual_mul_f32 v56, v40, v46
	v_fma_f32 v54, -v45, v51, 1.0
	v_div_scale_f32 v55, null, v38, v38, v30
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_rcp_f32_e32 v53, v50
	v_fma_f32 v59, -v39, v56, v40
	v_div_scale_f32 v48, s3, v28, v38, v28
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_rcp_f32_e32 v58, v55
	v_div_scale_f32 v52, s4, v29, v38, v29
	v_dual_fmac_f32 v56, v59, v46 :: v_dual_mul_f32 v57, v42, v47
	v_dual_fmac_f32 v51, v54, v51 :: v_dual_mul_f32 v54, v44, v49
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v61, -v50, v53, 1.0
	v_fma_f32 v39, -v39, v56, v40
	s_delay_alu instid0(VALU_DEP_4)
	v_fma_f32 v60, -v41, v57, v42
	.loc	1 848 17                        ; attention.py:848:17
	v_add_lshl_u32 v0, v37, v0, 2
	.loc	1 841 48                        ; attention.py:841:48
	v_fma_f32 v63, -v43, v54, v44
	v_fmac_f32_e32 v53, v61, v53
	v_div_fmas_f32 v39, v39, v46, v56
	v_fmac_f32_e32 v57, v60, v47
	s_mov_b32 vcc_lo, s1
	v_fmac_f32_e32 v54, v63, v49
	v_mul_f32_e32 v62, v48, v51
	v_div_fixup_f32 v25, v39, v38, v25
	v_fma_f32 v40, -v41, v57, v42
	v_fma_f32 v41, -v55, v58, 1.0
	v_fma_f32 v43, -v43, v54, v44
	v_fma_f32 v59, -v45, v62, v48
	v_div_scale_f32 v42, null, v38, v38, v31
	s_delay_alu instid0(VALU_DEP_4)
	v_fmac_f32_e32 v58, v41, v58
	v_div_fmas_f32 v40, v40, v47, v57
	s_mov_b32 vcc_lo, s2
	v_fmac_f32_e32 v62, v59, v51
	v_div_fmas_f32 v39, v43, v49, v54
	v_mul_f32_e32 v43, v52, v53
	v_div_fixup_f32 v26, v40, v38, v26
	v_rcp_f32_e32 v41, v42
	v_fma_f32 v40, -v45, v62, v48
	v_div_scale_f32 v45, null, v38, v38, v32
	v_fma_f32 v46, -v50, v43, v52
	s_mov_b32 vcc_lo, s3
	v_div_scale_f32 v44, s2, v30, v38, v30
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_rcp_f32_e32 v49, v45
	v_fmac_f32_e32 v43, v46, v53
	v_div_scale_f32 v46, null, v38, v38, v17
	v_div_fmas_f32 v40, v40, v51, v62
	v_fma_f32 v48, -v42, v41, 1.0
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v50, -v50, v43, v52
	v_rcp_f32_e32 v51, v46
	s_mov_b32 vcc_lo, s4
	v_div_fixup_f32 v27, v39, v38, v27
	v_fmac_f32_e32 v41, v48, v41
	v_fma_f32 v48, -v45, v49, 1.0
	v_div_fmas_f32 v43, v50, v53, v43
	v_div_fixup_f32 v28, v40, v38, v28
	v_div_scale_f32 v40, s3, v31, v38, v31
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_4) | instid1(VALU_DEP_2)
	v_fmac_f32_e32 v49, v48, v49
	v_div_scale_f32 v48, s5, v32, v38, v32
	v_fma_f32 v53, -v46, v51, 1.0
	s_mov_b32 vcc_lo, s2
	v_div_scale_f32 v54, null, v38, v38, v18
	v_dual_mul_f32 v52, v48, v49 :: v_dual_fmac_f32 v51, v53, v51
	v_mul_f32_e32 v47, v44, v58
	v_div_scale_f32 v53, s2, v17, v38, v17
	v_div_fixup_f32 v29, v43, v38, v29
	.loc	1 841 28 is_stmt 0              ; attention.py:841:28
	v_cmp_lt_f32_e64 s1, 0, v38
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 841 48                        ; attention.py:841:48
	v_fma_f32 v39, -v55, v47, v44
	.loc	1 841 19                        ; attention.py:841:19
	v_cndmask_b32_e64 v25, 0, v25, s1
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 841 48                        ; attention.py:841:48
	v_fmac_f32_e32 v47, v39, v58
	v_mul_f32_e32 v39, v40, v41
	.loc	1 841 19                        ; attention.py:841:19
	v_cndmask_b32_e64 v26, 0, v26, s1
	v_cndmask_b32_e64 v27, 0, v27, s1
	v_cndmask_b32_e64 v28, 0, v28, s1
	.loc	1 841 48                        ; attention.py:841:48
	v_fma_f32 v44, -v55, v47, v44
	v_fma_f32 v50, -v42, v39, v40
	.loc	1 841 19                        ; attention.py:841:19
	v_cndmask_b32_e64 v29, 0, v29, s1
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 841 48                        ; attention.py:841:48
	v_div_fmas_f32 v44, v44, v58, v47
	v_fmac_f32_e32 v39, v50, v41
	v_fma_f32 v50, -v45, v52, v48
	s_mov_b32 vcc_lo, s3
	v_rcp_f32_e32 v47, v54
	v_div_fixup_f32 v30, v44, v38, v30
	v_fma_f32 v40, -v42, v39, v40
	v_mul_f32_e32 v42, v53, v51
	v_fmac_f32_e32 v52, v50, v49
	v_div_scale_f32 v44, null, v38, v38, v19
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_div_fmas_f32 v39, v40, v41, v39
	v_fma_f32 v41, -v46, v42, v53
	s_delay_alu instid0(VALU_DEP_4)
	v_fma_f32 v40, -v45, v52, v48
	s_mov_b32 vcc_lo, s5
	v_fma_f32 v43, -v54, v47, 1.0
	v_div_fixup_f32 v31, v39, v38, v31
	v_fmac_f32_e32 v42, v41, v51
	v_div_fmas_f32 v40, v40, v49, v52
	v_div_scale_f32 v52, null, v38, v38, v21
	s_mov_b32 vcc_lo, s2
	v_fma_f32 v39, -v46, v42, v53
	v_fmac_f32_e32 v47, v43, v47
	v_rcp_f32_e32 v43, v44
	v_div_scale_f32 v48, null, v38, v38, v20
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_div_fmas_f32 v39, v39, v51, v42
	v_rcp_f32_e32 v42, v52
	v_div_scale_f32 v45, s3, v18, v38, v18
	v_rcp_f32_e32 v41, v48
	v_div_fixup_f32 v32, v40, v38, v32
	v_div_scale_f32 v46, s4, v19, v38, v19
	s_delay_alu instid0(TRANS32_DEP_3) | instskip(SKIP_1) | instid1(TRANS32_DEP_2)
	v_fma_f32 v50, -v44, v43, 1.0
	v_div_scale_f32 v51, null, v38, v38, v22
	v_fma_f32 v55, -v52, v42, 1.0
	v_div_fixup_f32 v17, v39, v38, v17
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_fmac_f32_e32 v43, v50, v43
	v_fma_f32 v50, -v48, v41, 1.0
	s_mov_b32 vcc_lo, s3
	v_dual_fmac_f32 v42, v55, v42 :: v_dual_mul_f32 v49, v45, v47
	.loc	1 841 19                        ; attention.py:841:19
	v_cndmask_b32_e64 v30, 0, v30, s1
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 841 48                        ; attention.py:841:48
	v_fmac_f32_e32 v41, v50, v41
	v_div_scale_f32 v50, s2, v20, v38, v20
	v_fma_f32 v40, -v54, v49, v45
	.loc	1 841 19                        ; attention.py:841:19
	v_cndmask_b32_e64 v31, 0, v31, s1
	v_cndmask_b32_e64 v32, 0, v32, s1
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	.loc	1 841 48                        ; attention.py:841:48
	v_mul_f32_e32 v53, v50, v41
	.loc	1 841 19                        ; attention.py:841:19
	v_cndmask_b32_e64 v17, 0, v17, s1
	.loc	1 841 48                        ; attention.py:841:48
	v_fmac_f32_e32 v49, v40, v47
	v_mul_f32_e32 v40, v46, v43
	v_fma_f32 v39, -v54, v49, v45
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_fma_f32 v45, -v44, v40, v46
	v_rcp_f32_e32 v54, v51
	v_div_fmas_f32 v39, v39, v47, v49
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v40, v45, v43
	v_fma_f32 v45, -v48, v53, v50
	v_div_scale_f32 v47, s3, v21, v38, v21
	v_div_fixup_f32 v18, v39, v38, v18
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_fma_f32 v39, -v44, v40, v46
	v_fma_f32 v49, -v51, v54, 1.0
	v_fmac_f32_e32 v53, v45, v41
	v_div_scale_f32 v46, null, v38, v38, v23
	s_mov_b32 vcc_lo, s4
	v_mul_f32_e32 v44, v47, v42
	v_fmac_f32_e32 v54, v49, v54
	v_div_scale_f32 v45, s5, v22, v38, v22
	v_div_fmas_f32 v39, v39, v43, v40
	v_fma_f32 v40, -v48, v53, v50
	v_rcp_f32_e32 v48, v46
	v_div_scale_f32 v50, null, v38, v38, v24
	s_mov_b32 vcc_lo, s2
	v_fma_f32 v43, -v52, v44, v47
	v_mul_f32_e32 v49, v45, v54
	v_div_fmas_f32 v40, v40, v41, v53
	v_rcp_f32_e32 v41, v50
	v_div_fixup_f32 v19, v39, v38, v19
	v_fmac_f32_e32 v44, v43, v42
	v_fma_f32 v43, -v51, v49, v45
	v_fma_f32 v53, -v46, v48, 1.0
	v_div_fixup_f32 v20, v40, v38, v20
	v_div_scale_f32 v40, s2, v23, v38, v23
	v_fma_f32 v39, -v52, v44, v47
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_dual_fmac_f32 v49, v43, v54 :: v_dual_fmac_f32 v48, v53, v48
	v_fma_f32 v43, -v50, v41, 1.0
	s_mov_b32 vcc_lo, s3
	v_div_scale_f32 v52, null, v38, v38, v10
	v_div_fmas_f32 v39, v39, v42, v44
	v_fma_f32 v42, -v51, v49, v45
	v_dual_mul_f32 v44, v40, v48 :: v_dual_fmac_f32 v41, v43, v41
	v_div_scale_f32 v43, null, v38, v38, v9
	s_mov_b32 vcc_lo, s5
	v_div_scale_f32 v45, s3, v24, v38, v24
	v_div_fmas_f32 v42, v42, v54, v49
	v_rcp_f32_e32 v47, v43
	v_fma_f32 v49, -v46, v44, v40
	s_delay_alu instid0(VALU_DEP_3)
	v_mul_f32_e32 v51, v45, v41
	v_div_fixup_f32 v21, v39, v38, v21
	v_div_fixup_f32 v22, v42, v38, v22
	v_rcp_f32_e32 v42, v52
	v_fmac_f32_e32 v44, v49, v48
	v_fma_f32 v39, -v50, v51, v45
	s_mov_b32 vcc_lo, s2
	v_div_scale_f32 v54, null, v38, v38, v12
	v_fma_f32 v49, -v43, v47, 1.0
	v_fma_f32 v40, -v46, v44, v40
	v_div_scale_f32 v46, null, v38, v38, v11
	v_fmac_f32_e32 v51, v39, v41
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v47, v49, v47
	v_div_scale_f32 v39, s4, v9, v38, v9
	v_rcp_f32_e32 v49, v46
	v_fma_f32 v53, -v52, v42, 1.0
	v_div_fmas_f32 v40, v40, v48, v44
	v_fma_f32 v44, -v50, v51, v45
	v_mul_f32_e32 v45, v39, v47
	v_div_scale_f32 v48, s2, v10, v38, v10
	v_fmac_f32_e32 v42, v53, v42
	s_mov_b32 vcc_lo, s3
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_fma_f32 v53, -v43, v45, v39
	v_fma_f32 v50, -v46, v49, 1.0
	v_rcp_f32_e32 v56, v54
	v_mul_f32_e32 v55, v48, v42
	v_div_fmas_f32 v41, v44, v41, v51
	v_fmac_f32_e32 v45, v53, v47
	v_fmac_f32_e32 v49, v50, v49
	v_div_scale_f32 v50, s5, v11, v38, v11
	v_fma_f32 v44, -v52, v55, v48
	v_div_fixup_f32 v23, v40, v38, v23
	v_fma_f32 v39, -v43, v45, v39
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_mul_f32_e32 v51, v50, v49
	v_div_scale_f32 v43, null, v38, v38, v13
	v_div_fixup_f32 v24, v41, v38, v24
	v_fmac_f32_e32 v55, v44, v42
	v_fma_f32 v40, -v46, v51, v50
	v_fma_f32 v41, -v54, v56, 1.0
	s_mov_b32 vcc_lo, s4
	.loc	1 841 19                        ; attention.py:841:19
	v_cndmask_b32_e64 v18, 0, v18, s1
	.loc	1 841 48                        ; attention.py:841:48
	v_fma_f32 v44, -v52, v55, v48
	v_fmac_f32_e32 v51, v40, v49
	v_rcp_f32_e32 v40, v43
	v_fmac_f32_e32 v56, v41, v56
	v_div_scale_f32 v41, s3, v12, v38, v12
	v_div_fmas_f32 v39, v39, v47, v45
	s_mov_b32 vcc_lo, s2
	.loc	1 841 19                        ; attention.py:841:19
	v_cndmask_b32_e64 v19, 0, v19, s1
	.loc	1 841 48                        ; attention.py:841:48
	v_div_fmas_f32 v42, v44, v42, v55
	v_fma_f32 v44, -v46, v51, v50
	v_mul_f32_e32 v45, v41, v56
	v_div_scale_f32 v46, null, v38, v38, v14
	v_fma_f32 v47, -v43, v40, 1.0
	s_mov_b32 vcc_lo, s5
	v_div_fixup_f32 v9, v39, v38, v9
	v_div_fmas_f32 v44, v44, v49, v51
	v_rcp_f32_e32 v48, v46
	v_fma_f32 v49, -v54, v45, v41
	v_fmac_f32_e32 v40, v47, v40
	v_div_scale_f32 v47, s2, v13, v38, v13
	v_div_fixup_f32 v10, v42, v38, v10
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v45, v49, v56
	s_mov_b32 vcc_lo, s3
	v_mul_f32_e32 v39, v47, v40
	v_div_fixup_f32 v11, v44, v38, v11
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_fma_f32 v42, -v46, v48, 1.0
	v_fma_f32 v41, -v54, v45, v41
	v_div_scale_f32 v44, null, v38, v38, v15
	v_fma_f32 v49, -v43, v39, v47
	v_fmac_f32_e32 v48, v42, v48
	v_div_scale_f32 v42, s4, v14, v38, v14
	v_div_fmas_f32 v41, v41, v56, v45
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v39, v49, v40
	v_rcp_f32_e32 v50, v44
	v_mul_f32_e32 v45, v42, v48
	s_mov_b32 vcc_lo, s2
	v_div_fixup_f32 v12, v41, v38, v12
	v_fma_f32 v41, -v43, v39, v47
	v_div_scale_f32 v49, null, v38, v38, v16
	v_fma_f32 v43, -v46, v45, v42
	.loc	1 841 19                        ; attention.py:841:19
	v_cndmask_b32_e64 v20, 0, v20, s1
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_4) | instid1(VALU_DEP_3)
	.loc	1 841 48                        ; attention.py:841:48
	v_div_fmas_f32 v39, v41, v40, v39
	v_div_scale_f32 v40, null, v38, v38, v1
	v_fma_f32 v47, -v44, v50, 1.0
	v_rcp_f32_e32 v51, v49
	v_fmac_f32_e32 v45, v43, v48
	v_rcp_f32_e32 v43, v40
	v_div_scale_f32 v41, s2, v15, v38, v15
	v_fmac_f32_e32 v50, v47, v50
	v_div_scale_f32 v47, null, v38, v38, v2
	v_div_fixup_f32 v13, v39, v38, v13
	v_fma_f32 v42, -v46, v45, v42
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v39, -v49, v51, 1.0
	v_rcp_f32_e32 v53, v47
	s_delay_alu instid0(TRANS32_DEP_2)
	v_fma_f32 v52, -v40, v43, 1.0
	v_mul_f32_e32 v46, v41, v50
	s_mov_b32 vcc_lo, s4
	v_fmac_f32_e32 v51, v39, v51
	v_div_scale_f32 v39, s3, v16, v38, v16
	v_fmac_f32_e32 v43, v52, v43
	v_div_scale_f32 v52, null, v38, v38, v3
	v_div_fmas_f32 v42, v42, v48, v45
	v_fma_f32 v45, -v44, v46, v41
	v_mul_f32_e32 v48, v39, v51
	v_div_scale_f32 v54, s4, v1, v38, v1
	v_fma_f32 v55, -v47, v53, 1.0
	v_rcp_f32_e32 v56, v52
	v_fmac_f32_e32 v46, v45, v50
	v_fma_f32 v45, -v49, v48, v39
	v_mul_f32_e32 v57, v54, v43
	v_fmac_f32_e32 v53, v55, v53
	v_div_scale_f32 v55, s5, v2, v38, v2
	v_div_fixup_f32 v14, v42, v38, v14
	v_fma_f32 v41, -v44, v46, v41
	v_fmac_f32_e32 v48, v45, v51
	v_fma_f32 v42, -v40, v57, v54
	v_mul_f32_e32 v44, v55, v53
	v_fma_f32 v45, -v52, v56, 1.0
	s_mov_b32 vcc_lo, s2
	v_fma_f32 v39, -v49, v48, v39
	v_fmac_f32_e32 v57, v42, v43
	v_fma_f32 v42, -v47, v44, v55
	v_fmac_f32_e32 v56, v45, v56
	v_div_scale_f32 v45, s2, v3, v38, v3
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v40, -v40, v57, v54
	v_fmac_f32_e32 v44, v42, v53
	v_div_fmas_f32 v41, v41, v50, v46
	s_delay_alu instid0(VALU_DEP_4)
	v_mul_f32_e32 v42, v45, v56
	s_mov_b32 vcc_lo, s3
	v_div_scale_f32 v46, null, v38, v38, v4
	v_div_fmas_f32 v39, v39, v51, v48
	s_mov_b32 vcc_lo, s4
	v_div_fixup_f32 v15, v41, v38, v15
	v_div_fmas_f32 v40, v40, v43, v57
	v_fma_f32 v43, -v47, v44, v55
	v_fma_f32 v47, -v52, v42, v45
	v_rcp_f32_e32 v48, v46
	v_div_fixup_f32 v16, v39, v38, v16
	v_div_fixup_f32 v1, v40, v38, v1
	v_div_scale_f32 v40, null, v38, v38, v5
	v_fmac_f32_e32 v42, v47, v56
	s_mov_b32 vcc_lo, s5
	v_div_scale_f32 v50, null, v38, v38, v8
	v_div_fmas_f32 v43, v43, v53, v44
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_fma_f32 v39, -v52, v42, v45
	v_fma_f32 v41, -v46, v48, 1.0
	s_mov_b32 vcc_lo, s2
	v_rcp_f32_e32 v52, v50
	v_div_fixup_f32 v2, v43, v38, v2
	v_div_fmas_f32 v39, v39, v56, v42
	v_rcp_f32_e32 v42, v40
	v_fmac_f32_e32 v48, v41, v48
	v_div_scale_f32 v41, null, v38, v38, v6
	v_div_scale_f32 v43, null, v38, v38, v7
	v_div_scale_f32 v44, vcc_lo, v4, v38, v4
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_rcp_f32_e32 v45, v41
	v_rcp_f32_e32 v47, v43
	v_div_fixup_f32 v3, v39, v38, v3
	s_delay_alu instid0(TRANS32_DEP_3)
	v_fma_f32 v39, -v40, v42, 1.0
	v_mul_f32_e32 v49, v44, v48
	v_fma_f32 v56, -v50, v52, 1.0
	.loc	1 841 19                        ; attention.py:841:19
	v_cndmask_b32_e64 v21, 0, v21, s1
	v_cndmask_b32_e64 v22, 0, v22, s1
	.loc	1 841 48                        ; attention.py:841:48
	v_fmac_f32_e32 v42, v39, v42
	v_div_scale_f32 v39, s2, v5, v38, v5
	v_fma_f32 v51, -v41, v45, 1.0
	v_fma_f32 v54, -v43, v47, 1.0
	v_fma_f32 v53, -v46, v49, v44
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_dual_mul_f32 v55, v39, v42 :: v_dual_fmac_f32 v52, v56, v52
	v_fmac_f32_e32 v45, v51, v45
	v_div_scale_f32 v51, s3, v6, v38, v6
	v_fmac_f32_e32 v47, v54, v47
	v_div_scale_f32 v54, s4, v7, v38, v7
	v_fmac_f32_e32 v49, v53, v48
	v_fma_f32 v53, -v40, v55, v39
	v_div_scale_f32 v56, s5, v8, v38, v8
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_mul_f32 v57, v51, v45 :: v_dual_mul_f32 v58, v54, v47
	v_fmac_f32_e32 v55, v53, v42
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_mul_f32_e32 v59, v56, v52
	v_fma_f32 v44, -v46, v49, v44
	v_fma_f32 v46, -v41, v57, v51
	v_fma_f32 v53, -v43, v58, v54
	v_fma_f32 v39, -v40, v55, v39
	v_fma_f32 v40, -v50, v59, v56
	v_div_fmas_f32 v44, v44, v48, v49
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_dual_fmac_f32 v57, v46, v45 :: v_dual_fmac_f32 v58, v53, v47
	s_mov_b32 vcc_lo, s2
	v_fmac_f32_e32 v59, v40, v52
	v_div_fmas_f32 v39, v39, v42, v55
	s_delay_alu instid0(VALU_DEP_3)
	v_fma_f32 v41, -v41, v57, v51
	v_fma_f32 v40, -v43, v58, v54
	s_mov_b32 vcc_lo, s3
	v_fma_f32 v42, -v50, v59, v56
	v_div_fixup_f32 v4, v44, v38, v4
	v_div_fmas_f32 v41, v41, v45, v57
	s_mov_b32 vcc_lo, s4
	v_div_fixup_f32 v5, v39, v38, v5
	v_div_fmas_f32 v40, v40, v47, v58
	s_mov_b32 vcc_lo, s5
	v_div_fixup_f32 v6, v41, v38, v6
	v_div_fmas_f32 v42, v42, v52, v59
	.loc	1 844 63 is_stmt 1              ; attention.py:844:63
	v_cmp_gt_i32_e32 vcc_lo, s19, v36
	.loc	1 841 48                        ; attention.py:841:48
	v_div_fixup_f32 v7, v40, v38, v7
	.loc	1 841 19 is_stmt 0              ; attention.py:841:19
	v_cndmask_b32_e64 v23, 0, v23, s1
	v_cndmask_b32_e64 v24, 0, v24, s1
	.loc	1 841 48                        ; attention.py:841:48
	v_div_fixup_f32 v8, v42, v38, v8
	.loc	1 843 24 is_stmt 1              ; attention.py:843:24
	v_add_lshl_u32 v38, v37, v36, 2
	.loc	1 844 24                        ; attention.py:844:24
	s_and_b32 vcc_lo, s0, vcc_lo
	.loc	1 841 19                        ; attention.py:841:19
	v_cndmask_b32_e64 v9, 0, v9, s1
	v_cndmask_b32_e64 v10, 0, v10, s1
	v_cndmask_b32_e64 v11, 0, v11, s1
	.loc	1 848 17                        ; attention.py:848:17
	v_add_nc_u32_e32 v36, 8, v38
	v_add_nc_u32_e32 v39, 16, v38
	v_cndmask_b32_e32 v40, 0x80000000, v38, vcc_lo
	.loc	1 841 19                        ; attention.py:841:19
	v_cndmask_b32_e64 v12, 0, v12, s1
	v_cndmask_b32_e64 v13, 0, v13, s1
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 848 17                        ; attention.py:848:17
	v_dual_cndmask_b32 v36, 0x80000000, v36 :: v_dual_cndmask_b32 v39, 0x80000000, v39
	s_clause 0x2
	buffer_store_b32 v25, v40, s[20:23], 0 offen
	buffer_store_b32 v26, v36, s[20:23], 0 offen
	buffer_store_b32 v27, v39, s[20:23], 0 offen
	v_add_nc_u32_e32 v25, 24, v38
	v_add_nc_u32_e32 v26, 32, v38
	v_add_nc_u32_e32 v27, 40, v38
	v_add_nc_u32_e32 v36, 48, v38
	v_add_nc_u32_e32 v39, 56, v38
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_dual_cndmask_b32 v25, 0x80000000, v25 :: v_dual_cndmask_b32 v26, 0x80000000, v26
	v_cndmask_b32_e32 v27, 0x80000000, v27, vcc_lo
	.loc	1 841 19                        ; attention.py:841:19
	v_cndmask_b32_e64 v14, 0, v14, s1
	v_cndmask_b32_e64 v15, 0, v15, s1
	v_cndmask_b32_e64 v16, 0, v16, s1
	v_cndmask_b32_e64 v1, 0, v1, s1
	v_cndmask_b32_e64 v2, 0, v2, s1
	v_cndmask_b32_e64 v3, 0, v3, s1
	v_cndmask_b32_e64 v4, 0, v4, s1
	v_cndmask_b32_e64 v5, 0, v5, s1
	v_cndmask_b32_e64 v6, 0, v6, s1
	v_cndmask_b32_e64 v7, 0, v7, s1
	v_cndmask_b32_e64 v8, 0, v8, s1
	.loc	1 844 63                        ; attention.py:844:63
	v_cmp_gt_i32_e64 s1, s19, v35
	.loc	1 848 17                        ; attention.py:848:17
	v_dual_cndmask_b32 v36, 0x80000000, v36 :: v_dual_cndmask_b32 v39, 0x80000000, v39
	s_clause 0x4
	buffer_store_b32 v28, v25, s[20:23], 0 offen
	buffer_store_b32 v29, v26, s[20:23], 0 offen
	buffer_store_b32 v30, v27, s[20:23], 0 offen
	buffer_store_b32 v31, v36, s[20:23], 0 offen
	buffer_store_b32 v32, v39, s[20:23], 0 offen
	v_add_lshl_u32 v25, v37, v35, 2
	v_add_nc_u32_e32 v26, 0x48, v38
	v_add_nc_u32_e32 v27, 0x50, v38
	.loc	1 844 24                        ; attention.py:844:24
	s_and_b32 vcc_lo, s0, s1
	.loc	1 848 17                        ; attention.py:848:17
	v_add_nc_u32_e32 v28, 0x58, v38
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_cndmask_b32 v25, 0x80000000, v25 :: v_dual_cndmask_b32 v26, 0x80000000, v26
	v_cndmask_b32_e32 v27, 0x80000000, v27, vcc_lo
	v_add_nc_u32_e32 v29, 0x60, v38
	s_delay_alu instid0(VALU_DEP_4)
	v_cndmask_b32_e32 v28, 0x80000000, v28, vcc_lo
	s_clause 0x2
	buffer_store_b32 v17, v25, s[20:23], 0 offen
	buffer_store_b32 v18, v26, s[20:23], 0 offen
	buffer_store_b32 v19, v27, s[20:23], 0 offen
	v_add_nc_u32_e32 v18, 0x68, v38
	.loc	1 844 63                        ; attention.py:844:63
	v_cmp_gt_i32_e64 s2, s19, v34
	.loc	1 848 17                        ; attention.py:848:17
	v_cndmask_b32_e32 v17, 0x80000000, v29, vcc_lo
	buffer_store_b32 v20, v28, s[20:23], 0 offen
	v_add_nc_u32_e32 v19, 0x70, v38
	v_add_nc_u32_e32 v20, 0x78, v38
	v_cndmask_b32_e32 v18, 0x80000000, v18, vcc_lo
	buffer_store_b32 v21, v17, s[20:23], 0 offen
	v_add_lshl_u32 v17, v37, v34, 2
	v_dual_cndmask_b32 v19, 0x80000000, v19 :: v_dual_cndmask_b32 v20, 0x80000000, v20
	.loc	1 844 24                        ; attention.py:844:24
	s_and_b32 vcc_lo, s0, s2
	.loc	1 848 17                        ; attention.py:848:17
	buffer_store_b32 v22, v18, s[20:23], 0 offen
	v_add_nc_u32_e32 v18, 0x88, v38
	v_cndmask_b32_e32 v17, 0x80000000, v17, vcc_lo
	s_clause 0x2
	buffer_store_b32 v23, v19, s[20:23], 0 offen
	buffer_store_b32 v24, v20, s[20:23], 0 offen
	buffer_store_b32 v9, v17, s[20:23], 0 offen
	v_add_nc_u32_e32 v9, 0x90, v38
	v_cndmask_b32_e32 v17, 0x80000000, v18, vcc_lo
	v_add_nc_u32_e32 v18, 0x98, v38
	v_add_nc_u32_e32 v19, 0xa0, v38
	v_add_nc_u32_e32 v20, 0xa8, v38
	v_cndmask_b32_e32 v9, 0x80000000, v9, vcc_lo
	buffer_store_b32 v10, v17, s[20:23], 0 offen
	v_dual_cndmask_b32 v10, 0x80000000, v18 :: v_dual_cndmask_b32 v17, 0x80000000, v19
	v_cndmask_b32_e32 v18, 0x80000000, v20, vcc_lo
	.loc	1 844 63                        ; attention.py:844:63
	v_cmp_gt_i32_e64 s3, s19, v33
	.loc	1 848 17                        ; attention.py:848:17
	buffer_store_b32 v11, v9, s[20:23], 0 offen
	v_add_nc_u32_e32 v9, 0xb0, v38
	s_clause 0x2
	buffer_store_b32 v12, v10, s[20:23], 0 offen
	buffer_store_b32 v13, v17, s[20:23], 0 offen
	buffer_store_b32 v14, v18, s[20:23], 0 offen
	v_add_nc_u32_e32 v10, 0xb8, v38
	v_add_lshl_u32 v11, v37, v33, 2
	v_add_nc_u32_e32 v12, 0xc8, v38
	v_add_nc_u32_e32 v13, 0xd0, v38
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_dual_cndmask_b32 v9, 0x80000000, v9 :: v_dual_cndmask_b32 v10, 0x80000000, v10
	.loc	1 844 24                        ; attention.py:844:24
	s_and_b32 vcc_lo, s0, s3
	.loc	1 848 17                        ; attention.py:848:17
	v_dual_cndmask_b32 v11, 0x80000000, v11 :: v_dual_cndmask_b32 v12, 0x80000000, v12
	s_delay_alu instid0(VALU_DEP_3)
	v_cndmask_b32_e32 v13, 0x80000000, v13, vcc_lo
	s_clause 0x4
	buffer_store_b32 v15, v9, s[20:23], 0 offen
	buffer_store_b32 v16, v10, s[20:23], 0 offen
	buffer_store_b32 v1, v11, s[20:23], 0 offen
	buffer_store_b32 v2, v12, s[20:23], 0 offen
	buffer_store_b32 v3, v13, s[20:23], 0 offen
	v_add_nc_u32_e32 v1, 0xd8, v38
	v_add_nc_u32_e32 v2, 0xe0, v38
	v_add_nc_u32_e32 v3, 0xe8, v38
	v_add_nc_u32_e32 v9, 0xf0, v38
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_cndmask_b32 v0, 0x80000000, v0 :: v_dual_cndmask_b32 v1, 0x80000000, v1
	v_dual_cndmask_b32 v2, 0x80000000, v2 :: v_dual_cndmask_b32 v3, 0x80000000, v3
	s_delay_alu instid0(VALU_DEP_3)
	v_cndmask_b32_e32 v9, 0x80000000, v9, vcc_lo
	s_clause 0x4
	buffer_store_b32 v4, v1, s[20:23], 0 offen
	buffer_store_b32 v5, v2, s[20:23], 0 offen
	buffer_store_b32 v6, v3, s[20:23], 0 offen
	buffer_store_b32 v7, v9, s[20:23], 0 offen
	buffer_store_b32 v8, v0, s[20:23], 0 offen
	.loc	1 502 5                         ; attention.py:502:5
	s_nop 0
	s_sendmsg sendmsg(MSG_DEALLOC_VGPRS)
	s_endpgm
.Ltmp56:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_attention_fwd_bf16xint4_fp32_local_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn16_w4_s1_ds1
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
		.amdhsa_next_free_vgpr 172
		.amdhsa_next_free_sgpr 49
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
	.size	amd_strix_halo_gfx1151_attention_fwd_bf16xint4_fp32_local_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn16_w4_s1_ds1, .Lfunc_end0-amd_strix_halo_gfx1151_attention_fwd_bf16xint4_fp32_local_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn16_w4_s1_ds1
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xint4_fp32_local_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn16_w4_s1_ds1.num_vgpr, 172
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xint4_fp32_local_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn16_w4_s1_ds1.num_agpr, 0
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xint4_fp32_local_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn16_w4_s1_ds1.numbered_sgpr, 49
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xint4_fp32_local_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn16_w4_s1_ds1.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xint4_fp32_local_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn16_w4_s1_ds1.private_seg_size, 0
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xint4_fp32_local_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn16_w4_s1_ds1.uses_vcc, 1
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xint4_fp32_local_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn16_w4_s1_ds1.uses_flat_scratch, 0
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xint4_fp32_local_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn16_w4_s1_ds1.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xint4_fp32_local_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn16_w4_s1_ds1.has_recursion, 0
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xint4_fp32_local_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn16_w4_s1_ds1.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 10016
; TotalNumSgprs: 51
; NumVgprs: 172
; ScratchSize: 0
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 21
; NumSGPRsForWavesPerEU: 51
; NumVGPRsForWavesPerEU: 172
; Occupancy: 8
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
	.byte	1                               ; Abbrev [1] 0xb:0x6d DW_TAG_compile_unit
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
	.byte	3                               ; Abbrev [3] 0x30:0x47 DW_TAG_subprogram
	.quad	.Lfunc_begin0                   ; DW_AT_low_pc
	.long	.Lfunc_end0-.Lfunc_begin0       ; DW_AT_high_pc
	.long	42                              ; DW_AT_abstract_origin
	.byte	4                               ; Abbrev [4] 0x41:0x1a DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges0                 ; DW_AT_ranges
	.byte	1                               ; DW_AT_call_file
	.short	765                             ; DW_AT_call_line
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
	.short	769                             ; DW_AT_call_line
	.byte	24                              ; DW_AT_call_column
	.byte	6                               ; Abbrev [6] 0x68:0xd DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges3                 ; DW_AT_ranges
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
	.quad	.Ltmp19-.Lfunc_begin0
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
	.quad	0
	.quad	0
.Ldebug_ranges1:
	.quad	.Ltmp1-.Lfunc_begin0
	.quad	.Ltmp2-.Lfunc_begin0
	.quad	.Ltmp3-.Lfunc_begin0
	.quad	.Ltmp4-.Lfunc_begin0
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
	.quad	.Ltmp18-.Lfunc_begin0
	.quad	.Ltmp19-.Lfunc_begin0
	.quad	.Ltmp24-.Lfunc_begin0
	.quad	.Ltmp25-.Lfunc_begin0
	.quad	.Ltmp26-.Lfunc_begin0
	.quad	.Ltmp27-.Lfunc_begin0
	.quad	.Ltmp32-.Lfunc_begin0
	.quad	.Ltmp33-.Lfunc_begin0
	.quad	.Ltmp38-.Lfunc_begin0
	.quad	.Ltmp39-.Lfunc_begin0
	.quad	.Ltmp40-.Lfunc_begin0
	.quad	.Ltmp41-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges2:
	.quad	.Ltmp42-.Lfunc_begin0
	.quad	.Ltmp43-.Lfunc_begin0
	.quad	.Ltmp44-.Lfunc_begin0
	.quad	.Ltmp45-.Lfunc_begin0
	.quad	.Ltmp46-.Lfunc_begin0
	.quad	.Ltmp47-.Lfunc_begin0
	.quad	.Ltmp48-.Lfunc_begin0
	.quad	.Ltmp50-.Lfunc_begin0
	.quad	.Ltmp51-.Lfunc_begin0
	.quad	.Ltmp52-.Lfunc_begin0
	.quad	.Ltmp53-.Lfunc_begin0
	.quad	.Ltmp55-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges3:
	.quad	.Ltmp42-.Lfunc_begin0
	.quad	.Ltmp43-.Lfunc_begin0
	.quad	.Ltmp44-.Lfunc_begin0
	.quad	.Ltmp45-.Lfunc_begin0
	.quad	.Ltmp49-.Lfunc_begin0
	.quad	.Ltmp50-.Lfunc_begin0
	.quad	.Ltmp51-.Lfunc_begin0
	.quad	.Ltmp52-.Lfunc_begin0
	.quad	.Ltmp54-.Lfunc_begin0
	.quad	.Ltmp55-.Lfunc_begin0
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
	.asciz	"amd_strix_halo_gfx1151_attention_fwd_bf16xint4_fp32_local_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn16_w4_s1_ds1"                        ; string offset=88 ; amd_strix_halo_gfx1151_attention_fwd_bf16xint4_fp32_local_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn16_w4_s1_ds1
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
        .size:           1
        .value_kind:     by_value
      - .offset:         117
        .size:           1
        .value_kind:     by_value
      - .offset:         120
        .size:           4
        .value_kind:     by_value
      - .offset:         124
        .size:           4
        .value_kind:     by_value
      - .offset:         128
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
    .name:           amd_strix_halo_gfx1151_attention_fwd_bf16xint4_fp32_local_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn16_w4_s1_ds1
    .private_segment_fixed_size: 0
    .sgpr_count:     51
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_attention_fwd_bf16xint4_fp32_local_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn16_w4_s1_ds1.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     172
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
