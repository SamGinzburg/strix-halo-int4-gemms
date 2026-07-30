	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_attention_fwd_bf16xint4_bool_local_bfloat16_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn16_w4_s1_ds1                          ; -- Begin function amd_strix_halo_gfx1151_attention_fwd_bf16xint4_bool_local_bfloat16_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn16_w4_s1_ds1
	.p2align	8
	.type	amd_strix_halo_gfx1151_attention_fwd_bf16xint4_bool_local_bfloat16_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn16_w4_s1_ds1,@function
amd_strix_halo_gfx1151_attention_fwd_bf16xint4_bool_local_bfloat16_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn16_w4_s1_ds1:                                 ; @amd_strix_halo_gfx1151_attention_fwd_bf16xint4_bool_local_bfloat16_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn16_w4_s1_ds1
.Lfunc_begin0:
	.file	1 "<repo>/src/amd_strix_halo_kernels" "attention.py"
	.loc	1 502 0                         ; attention.py:502:0
	.cfi_sections .debug_frame
	.cfi_startproc
; %bb.0:
	s_clause 0x1
	s_load_b32 s14, s[0:1], 0x80
	s_load_b32 s33, s[0:1], 0x5c
.Ltmp0:
	.loc	1 598 79 prologue_end           ; attention.py:598:79
	v_and_b32_e32 v2, 7, v0
	.loc	1 570 31                        ; attention.py:570:31
	v_lshrrev_b32_e32 v3, 3, v0
	s_clause 0x1
	s_load_b64 s[4:5], s[0:1], 0x0
	s_load_b64 s[12:13], s[0:1], 0x78
	.loc	1 564 19                        ; attention.py:564:19
	s_lshl_b32 s21, s2, 6
	.loc	1 598 79                        ; attention.py:598:79
	v_lshlrev_b32_e32 v1, 3, v2
	.loc	1 597 26                        ; attention.py:597:26
	s_lshl_b32 s2, s3, 11
	.loc	1 570 21                        ; attention.py:570:21
	v_or_b32_e32 v5, s21, v3
	.loc	1 598 26                        ; attention.py:598:26
	s_add_i32 s26, s21, s2
	s_mov_b32 s7, 0x31027000
	s_mov_b32 s6, 0x7ffffffe
	.loc	1 599 26                        ; attention.py:599:26
	v_lshlrev_b32_e32 v19, 4, v0
	.loc	1 601 23                        ; attention.py:601:23
	v_cmp_gt_i32_e32 vcc_lo, 0x800, v5
	v_and_b32_e32 v85, 16, v0
	.loc	1 598 26                        ; attention.py:598:26
	s_waitcnt lgkmcnt(0)
	v_mad_u64_u32 v[78:79], null, s33, v3, v[1:2]
	.loc	1 601 61                        ; attention.py:601:61
	v_cmp_gt_i32_e64 s2, s33, v1
	.loc	1 598 26                        ; attention.py:598:26
	s_lshl_b32 s8, s33, 4
	s_lshl_b32 s9, s33, 5
	s_mul_i32 s10, s33, 48
	.loc	1 599 26                        ; attention.py:599:26
	s_and_b32 s5, s5, 0xffff
	.loc	1 601 22                        ; attention.py:601:22
	s_and_b32 vcc_lo, vcc_lo, s2
	.loc	1 598 26                        ; attention.py:598:26
	v_mad_u64_u32 v[3:4], null, s33, s26, v[78:79]
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	.loc	1 599 26                        ; attention.py:599:26
	v_lshlrev_b32_e32 v1, 1, v3
	v_add_lshl_u32 v4, v3, s8, 1
	v_add_lshl_u32 v5, v3, s9, 1
	v_add_lshl_u32 v3, v3, s10, 1
	v_cndmask_b32_e32 v1, 0x80000000, v1, vcc_lo
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cndmask_b32_e32 v7, 0x80000000, v4, vcc_lo
	v_cndmask_b32_e32 v11, 0x80000000, v5, vcc_lo
	s_delay_alu instid0(VALU_DEP_4)
	v_cndmask_b32_e32 v15, 0x80000000, v3, vcc_lo
	s_clause 0x3
	buffer_load_b128 v[3:6], v1, s[4:7], 0 offen
	buffer_load_b128 v[7:10], v7, s[4:7], 0 offen
	buffer_load_b128 v[11:14], v11, s[4:7], 0 offen
	buffer_load_b128 v[15:18], v15, s[4:7], 0 offen
	v_lshlrev_b32_e32 v1, 1, v0
	.loc	1 616 17                        ; attention.py:616:17
	s_add_i32 s4, s21, s13
	.loc	1 613 39                        ; attention.py:613:39
	s_sub_i32 s6, s21, s12
	.loc	1 616 17                        ; attention.py:616:17
	s_add_i32 s4, s4, s14
	.loc	1 613 39                        ; attention.py:613:39
	s_add_i32 s6, s6, s14
	.loc	1 616 17                        ; attention.py:616:17
	s_add_i32 s5, s4, 64
	.loc	1 599 26                        ; attention.py:599:26
	v_and_b32_e32 v20, 0x70, v1
	.loc	1 614 25                        ; attention.py:614:25
	s_min_i32 s5, s5, 0x800
	.loc	1 613 25                        ; attention.py:613:25
	s_max_i32 s6, s6, 0
	.loc	1 619 35                        ; attention.py:619:35
	s_add_i32 s5, s5, 15
	.loc	1 618 33                        ; attention.py:618:33
	s_and_b32 s34, s6, 0x7ffffff0
	.loc	1 599 26                        ; attention.py:599:26
	v_xor_b32_e32 v19, v19, v20
	.loc	1 619 34                        ; attention.py:619:34
	s_ashr_i32 s7, s5, 31
	s_mov_b32 s4, 0
	s_lshr_b32 s7, s7, 28
	s_delay_alu instid0(SALU_CYCLE_1)
	s_add_i32 s5, s5, s7
	.loc	1 599 26                        ; attention.py:599:26
	v_add_nc_u32_e32 v86, 0, v19
	.loc	1 619 33                        ; attention.py:619:33
	s_and_b32 s35, s5, -16
	.loc	1 599 26                        ; attention.py:599:26
	s_waitcnt vmcnt(3)
	ds_store_b128 v86, v[3:6]
	s_waitcnt vmcnt(2)
	ds_store_b128 v86, v[7:10] offset:2048
	s_waitcnt vmcnt(1)
	ds_store_b128 v86, v[11:14] offset:4096
	s_waitcnt vmcnt(0)
	ds_store_b128 v86, v[15:18] offset:6144
	.loc	1 707 13                        ; attention.py:707:13
	s_cmp_lt_i32 s34, s35
	.loc	1 599 26                        ; attention.py:599:26
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 707 13                        ; attention.py:707:13
	s_cbranch_scc1 .LBB0_2
; %bb.1:                                ; %.._crit_edge_crit_edge
	v_and_b32_e32 v33, 16, v0
	s_branch .LBB0_3
.LBB0_2:
	.loc	1 0 13 is_stmt 0                ; attention.py:0:13
	s_mov_b32 s4, -1
                                        ; implicit-def: $vgpr33
.LBB0_3:                                ; %Flow
	s_clause 0x1
	s_load_b64 s[24:25], s[0:1], 0x38
	s_load_b32 s27, s[0:1], 0x60
	v_and_b32_e32 v82, 15, v0
	v_and_b32_e32 v83, 0x60, v0
	v_lshrrev_b32_e32 v84, 1, v0
	s_and_not1_b32 vcc_lo, exec_lo, s4
	s_cbranch_vccnz .LBB0_22
; %bb.4:                                ; %.lr.ph
	.loc	1 599 26 is_stmt 1              ; attention.py:599:26
	v_lshlrev_b32_e32 v2, 4, v2
	.loc	1 566 23                        ; attention.py:566:23
	s_ashr_i32 s8, s3, 31
	s_clause 0x1
	s_load_b128 s[28:31], s[0:1], 0x28
	s_load_b128 s[4:7], s[0:1], 0x8
	s_lshr_b32 s15, s8, 28
	s_load_b128 s[8:11], s[0:1], 0x64
	v_lshl_or_b32 v95, v82, 7, v2
	s_add_i32 s0, s3, s15
	v_dual_mov_b32 v14, 0x7531 :: v_dual_and_b32 v3, 1, v0
	.loc	1 567 22                        ; attention.py:567:22
	s_and_b32 s1, s0, -16
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 599 26                        ; attention.py:599:26
	v_lshl_or_b32 v2, v83, 6, v95
	.loc	1 567 22                        ; attention.py:567:22
	s_sub_i32 s1, s3, s1
	.loc	1 566 23                        ; attention.py:566:23
	s_ashr_i32 s15, s0, 4
	.loc	1 569 19                        ; attention.py:569:19
	s_bfe_u32 s3, s1, 0x10007
	.loc	1 570 21                        ; attention.py:570:21
	v_or_b32_e32 v4, s21, v84
	.loc	1 599 26                        ; attention.py:599:26
	v_xad_u32 v7, 0x70, v2, 0
	v_xad_u32 v8, 0x60, v2, 0
	.loc	1 569 19                        ; attention.py:569:19
	s_add_i32 s3, s1, s3
	.loc	1 599 26                        ; attention.py:599:26
	v_xad_u32 v9, v2, 48, 0
	ds_load_b128 v[37:40], v7
	ds_load_b128 v[33:36], v8
	v_xad_u32 v7, 0x50, v2, 0
	.loc	1 569 19                        ; attention.py:569:19
	s_bfe_i32 s3, s3, 0x80000
	.loc	1 599 26                        ; attention.py:599:26
	v_xad_u32 v8, v2, 64, 0
	.loc	1 569 19                        ; attention.py:569:19
	s_sext_i32_i16 s0, s3
	.loc	1 754 27                        ; attention.py:754:27
	s_waitcnt lgkmcnt(0)
	s_mul_i32 s1, s10, s1
	.loc	1 753 27                        ; attention.py:753:27
	s_mul_i32 s3, s9, s15
	.loc	1 599 26                        ; attention.py:599:26
	v_xad_u32 v10, v2, 32, 0
	v_xad_u32 v11, v2, 16, 0
	.loc	1 752 25                        ; attention.py:752:25
	s_add_i32 s47, s1, s3
	v_dual_mov_b32 v25, 0 :: v_dual_add_nc_u32 v2, 0, v2
	.loc	1 599 26                        ; attention.py:599:26
	ds_load_b128 v[45:48], v7
	ds_load_b128 v[41:44], v8
	ds_load_b128 v[53:56], v9
	ds_load_b128 v[49:52], v10
	ds_load_b128 v[61:64], v11
	ds_load_b128 v[57:60], v2
	v_mov_b32_e32 v9, 0x6420
	v_cmp_eq_u32_e64 s1, 0, v3
	.loc	1 573 27                        ; attention.py:573:27
	v_add_nc_u32_e32 v6, s14, v4
	.loc	1 601 23                        ; attention.py:601:23
	v_cmp_gt_i32_e32 vcc_lo, 0x800, v4
	v_dual_mov_b32 v65, 0 :: v_dual_and_b32 v4, 0x70, v0
	s_delay_alu instid0(VALU_DEP_4)
	v_cndmask_b32_e64 v9, 0x7531, v9, s1
	v_cndmask_b32_e64 v14, 0x6420, v14, s1
	.loc	1 571 21                        ; attention.py:571:21
	v_lshlrev_b32_e32 v87, 3, v3
	v_mul_lo_u32 v12, s11, v84
	v_mov_b32_e32 v26, v65
	v_lshl_or_b32 v9, v9, 8, v9
	v_lshl_or_b32 v14, v14, 8, v14
	v_or_b32_e32 v88, 1, v87
	v_or_b32_e32 v89, 2, v87
	v_or_b32_e32 v90, 3, v87
	v_or_b32_e32 v91, 4, v87
	v_or_b32_e32 v92, 5, v87
	v_or_b32_e32 v93, 6, v87
	v_or_b32_e32 v94, 7, v87
	v_dual_mov_b32 v32, v65 :: v_dual_and_b32 v9, 0x750031, v9
	v_dual_mov_b32 v19, v65 :: v_dual_and_b32 v14, 0x750031, v14
	.loc	1 570 31                        ; attention.py:570:31
	v_lshlrev_b32_e32 v79, 2, v82
	v_dual_mov_b32 v27, v65 :: v_dual_add_nc_u32 v98, v12, v88
	v_dual_mov_b32 v30, v65 :: v_dual_add_nc_u32 v99, v12, v89
	v_dual_mov_b32 v29, v65 :: v_dual_add_nc_u32 v100, v12, v90
	v_dual_mov_b32 v18, v65 :: v_dual_add_nc_u32 v101, v12, v91
	v_dual_mov_b32 v31, v65 :: v_dual_add_nc_u32 v102, v12, v92
	v_dual_mov_b32 v20, v65 :: v_dual_add_nc_u32 v103, v12, v93
	v_lshl_or_b32 v9, v9, 4, v9
	v_dual_mov_b32 v17, 0 :: v_dual_add_nc_u32 v104, v12, v94
	v_bfe_u32 v16, v0, 4, 1
	v_dual_mov_b32 v22, v65 :: v_dual_add_nc_u32 v105, v12, v87
	v_lshl_or_b32 v12, v14, 4, v14
	v_mov_b32_e32 v14, 0x7632
	v_cmp_eq_u32_e64 s3, 0, v85
	v_dual_mov_b32 v21, v65 :: v_dual_and_b32 v106, 0x7050301, v9
	v_mov_b32_e32 v9, 0x5410
	.loc	1 748 47                        ; attention.py:748:47
	v_subrev_nc_u32_e32 v96, s12, v6
	v_dual_mov_b32 v28, v65 :: v_dual_add_nc_u32 v97, s13, v6
	.loc	1 771 51                        ; attention.py:771:51
	v_lshrrev_b32_e32 v6, 4, v0
	v_and_or_b32 v1, v1, 30, v16
	v_and_b32_e32 v107, 0x7050301, v12
	v_cndmask_b32_e64 v12, 0x3276, v14, s3
	.loc	1 569 19                        ; attention.py:569:19
	s_ashr_i32 s0, s0, 1
	v_xor_b32_e32 v11, 0x50, v95
	.loc	1 734 33                        ; attention.py:734:33
	s_lshl3_add_u32 s14, s15, s0
	v_cndmask_b32_e64 v9, 0x1054, v9, s3
	v_lshlrev_b32_e32 v108, 2, v1
	v_lshl_or_b32 v110, s14, 10, v6
	v_lshl_or_b32 v1, v12, 8, v12
	v_lshlrev_b32_e32 v6, 5, v0
	.loc	1 571 21                        ; attention.py:571:21
	v_bfe_i32 v5, v0, 0, 1
	v_xor_b32_e32 v13, 0x60, v95
	v_dual_mov_b32 v24, v65 :: v_dual_lshlrev_b32 v3, 6, v3
	v_dual_mov_b32 v23, v65 :: v_dual_lshlrev_b32 v16, 2, v84
	v_lshl_or_b32 v9, v9, 8, v9
	v_dual_mov_b32 v14, v65 :: v_dual_and_b32 v1, 0x760076, v1
	v_bfe_i32 v12, v0, 2, 1
	v_add_nc_u32_e32 v118, 0, v11
	v_dual_mov_b32 v11, v65 :: v_dual_and_b32 v6, 0x160, v6
	v_xor_b32_e32 v2, 16, v95
	v_and_or_b32 v109, v16, 60, v3
	v_and_b32_e32 v3, 0x540054, v9
	v_dual_mov_b32 v16, v65 :: v_dual_lshlrev_b32 v9, 7, v0
	v_lshl_or_b32 v1, v1, 4, v1
	v_lshrrev_b32_e32 v4, 2, v4
	v_and_b32_e32 v5, 0x90, v5
	v_add_nc_u32_e32 v119, 0, v13
	v_mov_b32_e32 v13, v65
	v_and_or_b32 v111, 0x90, v12, v6
	v_and_b32_e32 v9, 0x700, v9
	v_dual_mov_b32 v6, v65 :: v_dual_and_b32 v113, 0x7060706, v1
	v_add_nc_u32_e32 v114, 0, v2
	v_mov_b32_e32 v12, v65
	v_lshl_or_b32 v3, v3, 4, v3
	v_mov_b32_e32 v2, v65
	v_xor_b32_e32 v1, v5, v4
	v_xor_b32_e32 v4, 16, v111
	v_xor_b32_e32 v7, 32, v95
	v_xor_b32_e32 v8, 48, v95
	v_xor_b32_e32 v10, 64, v95
	v_xor_b32_e32 v15, 0x70, v95
	v_and_b32_e32 v112, 0x5040504, v3
	v_dual_mov_b32 v125, 0 :: v_dual_add_nc_u32 v122, 0, v4
	v_dual_mov_b32 v4, v65 :: v_dual_add_nc_u32 v3, 0, v9
	.loc	1 778 24                        ; attention.py:778:24
	v_cmp_gt_i32_e64 s0, s27, v79
	v_dual_mov_b32 v128, 0xff800000 :: v_dual_add_nc_u32 v115, 0, v7
	v_add_nc_u32_e32 v116, 0, v8
	v_dual_mov_b32 v126, 0xff800000 :: v_dual_add_nc_u32 v117, 0, v10
	v_dual_mov_b32 v7, v65 :: v_dual_add_nc_u32 v120, 0, v15
	v_dual_mov_b32 v9, 0 :: v_dual_mov_b32 v10, v65
	v_mov_b32_e32 v15, v65
	v_mov_b32_e32 v5, v65
	v_dual_mov_b32 v8, v65 :: v_dual_add_nc_u32 v121, v3, v1
	v_mov_b32_e32 v1, 0
	v_mov_b32_e32 v3, v65
	v_xor_b32_e32 v123, 4, v108
	v_xor_b32_e32 v124, 64, v109
	v_mov_b32_e32 v127, 0xff800000
	.loc	1 742 27                        ; attention.py:742:27
	s_mul_f32 s45, s8, 0x3fb8aa3b
	.loc	1 752 25                        ; attention.py:752:25
	s_mul_i32 s8, s11, s21
	s_and_b32 s5, s5, 0xffff
	s_mov_b32 s39, 0x31027000
	s_mov_b32 s38, 0x7ffffffe
	s_mov_b64 s[22:23], s[30:31]
	.loc	1 734 32                        ; attention.py:734:32
	s_lshl_b32 s44, s14, 11
	.loc	1 794 21                        ; attention.py:794:21
	s_lshl_b32 s46, s14, 7
	s_add_i32 s47, s47, s8
	s_and_b32 s41, s7, 0xffff
	s_and_b32 s29, s29, 0xffff
	s_mov_b32 s36, s4
	s_mov_b32 s37, s5
	s_mov_b32 s40, s6
	s_mov_b32 s42, s38
	s_mov_b32 s43, s39
	s_mov_b32 s48, 0x76543210
	s_mov_b32 s30, s38
	s_mov_b32 s31, s39
	s_branch .LBB0_6
.LBB0_5:                                ;   in Loop: Header=BB0_6 Depth=1
	.loc	1 0 21 is_stmt 0                ; attention.py:0:21
	s_or_b32 exec_lo, exec_lo, s5
	.loc	1 771 36 is_stmt 1              ; attention.py:771:36
	s_lshr_b32 s5, s34, 1
	.loc	1 798 53                        ; attention.py:798:53
	s_lshr_b32 s4, s34, 4
	.loc	1 742 17                        ; attention.py:742:17
	v_dual_mul_f32 v67, s45, v67 :: v_dual_add_nc_u32 v80, s5, v110
	.loc	1 798 25                        ; attention.py:798:25
	s_add_i32 s4, s4, s46
	.loc	1 759 34                        ; attention.py:759:34
	s_waitcnt vmcnt(0)
	v_and_b16 v76.l, 0xff, v76.l
	.loc	1 798 25                        ; attention.py:798:25
	s_mul_i32 s4, s4, s27
	.loc	1 774 30                        ; attention.py:774:30
	v_mad_u64_u32 v[80:81], null, v80, s27, v[79:80]
	.loc	1 797 41                        ; attention.py:797:41
	v_add_lshl_u32 v129, s4, v79, 1
	.loc	1 759 34                        ; attention.py:759:34
	v_and_b16 v74.l, 0xff, v74.l
	v_and_b16 v75.l, 0xff, v75.l
	v_and_b16 v77.l, 0xff, v77.l
	v_and_b16 v75.h, 0xff, v75.h
	.loc	1 797 41                        ; attention.py:797:41
	v_cndmask_b32_e64 v81, 0x80000000, v129, s0
	.loc	1 775 32                        ; attention.py:775:32
	v_cndmask_b32_e64 v129, 0x80000000, v80, s0
	.loc	1 759 34                        ; attention.py:759:34
	v_and_b16 v77.h, 0xff, v77.h
	v_and_b16 v76.h, 0xff, v76.h
	v_and_b16 v74.h, 0xff, v74.h
	.loc	1 797 41                        ; attention.py:797:41
	buffer_load_b64 v[80:81], v81, s[28:31], 0 offen
	.loc	1 775 32                        ; attention.py:775:32
	buffer_load_b32 v129, v129, s[40:43], 0 offen
	.loc	1 759 34                        ; attention.py:759:34
	v_cmp_ne_u16_e64 s5, 0, v74.l
	v_cmp_ne_u16_e64 s7, 0, v75.l
	v_cmp_ne_u16_e64 s9, 0, v76.l
	v_cmp_ne_u16_e64 s11, 0, v77.l
	v_cmp_ne_u16_e64 s6, 0, v75.h
	v_cmp_ne_u16_e64 s4, 0, v74.h
	v_cmp_ne_u16_e64 s8, 0, v76.h
	v_cmp_ne_u16_e64 s10, 0, v77.h
	.loc	1 759 25 is_stmt 0              ; attention.py:759:25
	s_and_b32 s5, s13, s5
	s_and_b32 s7, s15, s7
	s_and_b32 s9, s17, s9
	s_and_b32 s11, s19, s11
	v_cndmask_b32_e64 v76, 0, 1, s5
	v_cndmask_b32_e64 v74, 0, 1, s7
	v_cndmask_b32_e64 v132, 0, 1, s9
	v_cndmask_b32_e64 v130, 0, 1, s11
	s_and_b32 s6, s14, s6
	s_and_b32 s4, s12, s4
	s_and_b32 s8, s16, s8
	s_and_b32 s10, s18, s10
	v_cndmask_b32_e64 v75, 0, 1, s6
	v_cndmask_b32_e64 v77, 0, 1, s4
	v_cndmask_b32_e64 v133, 0, 1, s8
	v_cndmask_b32_e64 v131, 0, 1, s10
	v_lshlrev_b16 v74.l, 8, v74.l
	v_lshlrev_b16 v74.h, 8, v76.l
	v_lshlrev_b16 v75.h, 8, v130.l
	v_lshlrev_b16 v76.l, 8, v132.l
	.loc	1 742 17 is_stmt 1              ; attention.py:742:17
	v_mul_f32_e32 v72, s45, v72
	.loc	1 759 25                        ; attention.py:759:25
	v_or_b16 v77.h, v75.l, v74.l
	v_or_b16 v77.l, v77.l, v74.h
	v_or_b16 v74.h, v131.l, v75.h
	v_or_b16 v74.l, v133.l, v76.l
	.loc	1 742 17                        ; attention.py:742:17
	v_dual_mul_f32 v76, s45, v66 :: v_dual_mul_f32 v69, s45, v69
	v_dual_mul_f32 v68, s45, v68 :: v_dual_mul_f32 v71, s45, v71
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 759 25                        ; attention.py:759:25
	v_perm_b32 v75, v74, v77, v106
	v_perm_b32 v74, v74, v77, v107
	.loc	1 766 24                        ; attention.py:766:24
	v_max_f32_e32 v77, v126, v126
	.loc	1 742 17                        ; attention.py:742:17
	v_dual_mul_f32 v70, s45, v70 :: v_dual_mul_f32 v73, s45, v73
	.loc	1 759 25                        ; attention.py:759:25
	ds_bpermute_b32 v75, v108, v75
	ds_bpermute_b32 v74, v123, v74
	.loc	1 767 25                        ; attention.py:767:25
	v_cmp_neq_f32_e64 s20, 0xff800000, v128
	.loc	1 775 32                        ; attention.py:775:32
	v_mov_b16_e32 v66.l, 0
	.loc	1 814 30                        ; attention.py:814:30
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 707 13                        ; attention.py:707:13
	s_add_i32 s34, s34, 16
	.loc	1 759 25                        ; attention.py:759:25
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 816 30                        ; attention.py:816:30
	v_mov_b16_e64 v141.h, v66.l
	v_mov_b16_e64 v140.h, v66.l
	v_mov_b16_e64 v142.h, v66.l
	.loc	1 797 41                        ; attention.py:797:41
	v_mov_b16_e64 v131.l, v66.l
	.loc	1 816 30                        ; attention.py:816:30
	v_mov_b16_e64 v152.h, v66.l
	.loc	1 814 30                        ; attention.py:814:30
	v_mov_b16_e64 v132.h, v66.l
	v_mov_b16_e64 v133.h, v66.l
	v_mov_b16_e64 v134.h, v66.l
	v_mov_b16_e64 v135.h, v66.l
	v_mov_b16_e64 v136.h, v66.l
	v_mov_b16_e64 v137.h, v66.l
	v_mov_b16_e64 v138.h, v66.l
	v_mov_b16_e64 v139.h, v66.l
	.loc	1 759 25                        ; attention.py:759:25
	v_cndmask_b32_e64 v126, v74, v75, s3
	.loc	1 766 24                        ; attention.py:766:24
	v_max_f32_e32 v130, v127, v127
	.loc	1 759 25                        ; attention.py:759:25
	v_cndmask_b32_e64 v74, v75, v74, s3
	.loc	1 816 30                        ; attention.py:816:30
	v_mov_b16_e32 v75.h, v66.l
	.loc	1 707 13                        ; attention.py:707:13
	s_cmp_lt_i32 s34, s35
	.loc	1 759 25                        ; attention.py:759:25
	v_and_b32_e32 v143, 1, v126
	v_and_b32_e32 v148, 0x1000000, v126
	v_and_b32_e32 v146, 0x100, v74
	v_and_b32_e32 v147, 0x1000000, v74
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cmp_eq_u32_e64 s12, 1, v143
	v_cmp_eq_u32_e64 s19, 0, v148
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cmp_eq_u32_e64 s15, 0, v146
	v_cmp_eq_u32_e64 s17, 0, v147
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 764 26                        ; attention.py:764:26
	v_cndmask_b32_e64 v76, 0xff800000, v76, s12
	.loc	1 759 25                        ; attention.py:759:25
	v_and_b32_e32 v145, 1, v74
	v_and_b32_e32 v74, 0x10000, v74
	.loc	1 764 26                        ; attention.py:764:26
	v_cndmask_b32_e64 v71, v71, 0xff800000, s15
	v_cndmask_b32_e64 v73, v73, 0xff800000, s17
	v_cndmask_b32_e64 v69, v69, 0xff800000, s19
	.loc	1 759 25                        ; attention.py:759:25
	v_cmp_eq_u32_e64 s14, 1, v145
	v_cmp_eq_u32_e64 s16, 0, v74
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 764 26                        ; attention.py:764:26
	v_cndmask_b32_e64 v150, v73, v69, s3
	v_cndmask_b32_e64 v70, 0xff800000, v70, s14
	s_delay_alu instid0(VALU_DEP_3)
	v_cndmask_b32_e64 v72, v72, 0xff800000, s16
	.loc	1 759 25                        ; attention.py:759:25
	v_and_b32_e32 v144, 0x100, v126
	v_and_b32_e32 v126, 0x10000, v126
	.loc	1 764 26                        ; attention.py:764:26
	v_cndmask_b32_e64 v151, v69, v73, s3
.Ltmp1:
	.file	2 "<triton>/python/triton/language" "standard.py"
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:765:29 ] ]
	v_max3_f32 v147, v69, v70, v71
	v_max_f32_e32 v145, v72, v73
.Ltmp2:
	.loc	1 759 25                        ; attention.py:759:25
	v_cmp_eq_u32_e64 s13, 0, v144
	v_cmp_eq_u32_e64 s18, 0, v126
	.loc	1 764 26                        ; attention.py:764:26
	v_cndmask_b32_e64 v74, v70, v76, s3
	v_cndmask_b32_e64 v126, v76, v70, s3
	.loc	1 759 25                        ; attention.py:759:25
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 764 26                        ; attention.py:764:26
	v_cndmask_b32_e64 v67, v67, 0xff800000, s13
	v_cndmask_b32_e64 v68, v68, 0xff800000, s18
	ds_bpermute_b32 v74, v109, v74
	ds_bpermute_b32 v126, v124, v126
	.loc	1 759 25                        ; attention.py:759:25
	.loc	1 764 26                        ; attention.py:764:26
	v_cndmask_b32_e64 v143, v71, v67, s3
	v_cndmask_b32_e64 v144, v67, v71, s3
.Ltmp3:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:765:29 ] ]
	v_max3_f32 v146, v76, v67, v68
.Ltmp4:
	.loc	1 764 26                        ; attention.py:764:26
	v_cndmask_b32_e64 v148, v72, v68, s3
	v_cndmask_b32_e64 v149, v68, v72, s3
	ds_bpermute_b32 v143, v109, v143
	ds_bpermute_b32 v144, v124, v144
.Ltmp5:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:765:29 ] ]
	v_max3_f32 v145, v146, v147, v145
.Ltmp6:
	.loc	1 764 26                        ; attention.py:764:26
	ds_bpermute_b32 v147, v109, v148
	ds_bpermute_b32 v148, v124, v149
	ds_bpermute_b32 v149, v109, v150
	ds_bpermute_b32 v150, v124, v151
.Ltmp7:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:765:29 ]
	v_permlanex16_b32 v146, v145, s48, 0xfedcba98 op_sel:[1,0]
.Ltmp8:
	.loc	1 816 30                        ; attention.py:816:30
	v_mov_b16_e64 v151.h, v66.l
	.loc	1 759 25                        ; attention.py:759:25
	.loc	1 787 39                        ; attention.py:787:39
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 766 24                        ; attention.py:766:24
	v_max3_f32 v159, v128, v145, v146
	.loc	1 764 26                        ; attention.py:764:26
	s_waitcnt lgkmcnt(6)
	v_cndmask_b32_e64 v154, v126, v74, s1
	v_cndmask_b32_e64 v155, v74, v126, s1
	.loc	1 816 30                        ; attention.py:816:30
	v_mov_b16_e64 v146.h, v66.l
	v_mov_b16_e64 v145.h, v66.l
	.loc	1 767 74                        ; attention.py:767:74
	v_sub_f32_e32 v153, v128, v159
	.loc	1 768 62                        ; attention.py:768:62
	v_sub_f32_e32 v70, v70, v159
	v_sub_f32_e32 v73, v73, v159
	v_sub_f32_e32 v76, v76, v159
	.loc	1 764 26                        ; attention.py:764:26
	s_waitcnt lgkmcnt(4)
	v_cndmask_b32_e64 v156, v144, v143, s1
	v_cndmask_b32_e64 v143, v143, v144, s1
	.loc	1 767 61                        ; attention.py:767:61
	v_exp_f32_e32 v153, v153
	.loc	1 764 26                        ; attention.py:764:26
	s_waitcnt lgkmcnt(2)
	v_cndmask_b32_e64 v144, v148, v147, s1
	v_cndmask_b32_e64 v147, v147, v148, s1
	s_waitcnt lgkmcnt(0)
	v_cndmask_b32_e64 v148, v150, v149, s1
	v_cndmask_b32_e64 v157, v149, v150, s1
.Ltmp9:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:765:29 ] ]
	v_dual_max_f32 v150, v150, v150 :: v_dual_max_f32 v149, v149, v149
.Ltmp10:
	.loc	1 768 62                        ; attention.py:768:62
	v_sub_f32_e32 v72, v72, v159
.Ltmp11:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:765:29 ] ]
	v_max3_f32 v74, v74, v126, v156
	v_max3_f32 v126, v143, v144, v147
.Ltmp12:
	.loc	1 768 49                        ; attention.py:768:49
	v_exp_f32_e32 v70, v70
.Ltmp13:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:765:29 ] ]
	v_max_f32_e32 v149, v149, v150
.Ltmp14:
	.loc	1 767 25                        ; attention.py:767:25
	v_cndmask_b32_e64 v160, 0, v153, s20
	.loc	1 768 62                        ; attention.py:768:62
	v_sub_f32_e32 v71, v71, v159
	.loc	1 768 49 is_stmt 0              ; attention.py:768:49
	v_exp_f32_e32 v76, v76
	v_exp_f32_e32 v72, v72
.Ltmp15:
	.loc	2 170 12 is_stmt 1              ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:765:29 ] ]
	v_max3_f32 v74, v74, v126, v149
.Ltmp16:
	.loc	1 815 23                        ; attention.py:815:23
	v_mul_f32_e32 v25, v25, v160
	.loc	1 768 49                        ; attention.py:768:49
	v_exp_f32_e32 v73, v73
	v_exp_f32_e32 v71, v71
	.loc	1 768 33 is_stmt 0              ; attention.py:768:33
	v_cndmask_b32_e64 v150, 0, v70, s14
.Ltmp17:
	.loc	2 191 16 is_stmt 1              ; standard.py:191:16 @[ attention.py:765:29 ]
	v_dual_mov_b32 v70, v74 :: v_dual_sub_f32 v67, v67, v159
.Ltmp18:
	.loc	1 768 62                        ; attention.py:768:62
	v_sub_f32_e32 v68, v68, v159
	v_sub_f32_e32 v69, v69, v159
	s_delay_alu instid0(TRANS32_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 768 33 is_stmt 0              ; attention.py:768:33
	v_cndmask_b32_e64 v128, v72, 0, s16
.Ltmp19:
	.loc	2 191 16 is_stmt 1              ; standard.py:191:16 @[ attention.py:765:29 ]
	v_mov_b32_dpp v70, v70 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp20:
	.loc	1 815 23                        ; attention.py:815:23
	v_mul_f32_e32 v27, v27, v160
	s_delay_alu instid0(TRANS32_DEP_2)
	.loc	1 768 33                        ; attention.py:768:33
	v_cndmask_b32_e64 v149, v73, 0, s17
	v_cndmask_b32_e64 v72, 0, v76, s12
	v_cndmask_b32_e64 v76, v71, 0, s15
.Ltmp21:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:765:29 ] ]
	v_dual_max_f32 v70, v70, v70 :: v_dual_mul_f32 v29, v29, v160
.Ltmp22:
	.loc	1 768 49                        ; attention.py:768:49
	v_exp_f32_e32 v68, v68
	v_exp_f32_e32 v69, v69
	v_exp_f32_e32 v67, v67
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_4)
.Ltmp23:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:765:29 ] ]
	v_dual_max_f32 v70, v74, v70 :: v_dual_mul_f32 v31, v31, v160
.Ltmp24:
	.loc	1 815 23                        ; attention.py:815:23
	v_mul_f32_e32 v12, v12, v160
	.loc	1 816 30                        ; attention.py:816:30
	v_mov_b16_e64 v141.l, v72.h
	.loc	1 815 23                        ; attention.py:815:23
	v_mul_f32_e32 v32, v32, v160
	.loc	1 766 24                        ; attention.py:766:24
	v_max_f32_e32 v126, v77, v70
	.loc	1 815 23                        ; attention.py:815:23
	v_mul_f32_e32 v26, v26, v160
	v_mul_f32_e32 v28, v28, v160
	v_mul_f32_e32 v30, v30, v160
	s_delay_alu instid0(VALU_DEP_4)
	v_dual_mul_f32 v17, v17, v160 :: v_dual_sub_f32 v74, v156, v126
	v_mul_f32_e32 v18, v18, v160
	v_mul_f32_e32 v19, v19, v160
	v_mul_f32_e32 v21, v21, v160
	v_mul_f32_e32 v22, v22, v160
	.loc	1 768 62                        ; attention.py:768:62
	v_sub_f32_e32 v71, v154, v126
	v_sub_f32_e32 v73, v155, v126
	v_sub_f32_e32 v77, v143, v126
	v_sub_f32_e32 v143, v144, v126
	v_sub_f32_e32 v144, v147, v126
	v_sub_f32_e32 v147, v148, v126
	v_sub_f32_e32 v148, v157, v126
	.loc	1 768 49 is_stmt 0              ; attention.py:768:49
	v_exp_f32_e32 v71, v71
	v_exp_f32_e32 v73, v73
	v_exp_f32_e32 v74, v74
	v_exp_f32_e32 v77, v77
	v_exp_f32_e32 v143, v143
	v_exp_f32_e32 v144, v144
	v_exp_f32_e32 v147, v147
	v_exp_f32_e32 v148, v148
	.loc	1 768 33                        ; attention.py:768:33
	v_cndmask_b32_e64 v68, v68, 0, s18
	v_cndmask_b32_e64 v69, v69, 0, s19
	v_cndmask_b32_e64 v71, 0, v71, s4
	v_cndmask_b32_e64 v73, 0, v73, s5
	v_cndmask_b32_e64 v74, 0, v74, s6
	v_cndmask_b32_e64 v77, 0, v77, s7
	v_cndmask_b32_e64 v143, 0, v143, s8
	v_cndmask_b32_e64 v144, 0, v144, s9
	v_cndmask_b32_e64 v147, 0, v147, s10
	v_cndmask_b32_e64 v148, 0, v148, s11
	.loc	1 815 23 is_stmt 1              ; attention.py:815:23
	v_dual_mul_f32 v20, v20, v160 :: v_dual_add_f32 v71, v71, v73
	v_dual_mul_f32 v24, v24, v160 :: v_dual_add_f32 v73, v74, v77
.Ltmp25:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:769:24 ] ]
	v_add_f32_e32 v74, v143, v144
.Ltmp26:
	.loc	1 768 33                        ; attention.py:768:33
	v_cndmask_b32_e64 v67, v67, 0, s13
	.loc	1 766 24                        ; attention.py:766:24
	v_max_f32_e32 v161, v130, v70
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 815 23                        ; attention.py:815:23
	v_dual_mul_f32 v9, v9, v160 :: v_dual_add_f32 v70, v71, v73
	v_mul_f32_e32 v13, v13, v160
	.loc	1 816 30                        ; attention.py:816:30
	v_mov_b16_e64 v140.l, v67.h
	v_mov_b16_e32 v75.l, v69.h
	v_mov_b16_e64 v142.l, v68.h
	v_and_b32_e32 v141, 1, v141
	.loc	1 815 23                        ; attention.py:815:23
	v_mul_f32_e32 v23, v23, v160
	s_delay_alu instid0(VALU_DEP_4)
	v_dual_mul_f32 v10, v10, v160 :: v_dual_and_b32 v75, 1, v75
	.loc	1 816 30                        ; attention.py:816:30
	v_cmp_o_f32_e64 s13, v72, v72
	v_mov_b16_e64 v146.l, v150.h
	v_and_b32_e32 v142, 1, v142
	.loc	1 815 23                        ; attention.py:815:23
	v_mul_f32_e32 v2, v2, v160
	.loc	1 816 30                        ; attention.py:816:30
	v_cmp_o_f32_e64 s12, v67, v67
	v_cmp_o_f32_e64 s14, v69, v69
	v_cmp_o_f32_e64 s15, v68, v68
	v_mov_b16_e64 v152.l, v128.h
	v_and_b32_e32 v73, 1, v146
	.loc	1 767 25                        ; attention.py:767:25
	v_cmp_neq_f32_e64 s4, 0xff800000, v127
	.loc	1 816 30                        ; attention.py:816:30
	v_mov_b16_e64 v145.l, v76.h
	v_mov_b16_e64 v151.l, v149.h
	.loc	1 815 23                        ; attention.py:815:23
	v_mul_f32_e32 v11, v11, v160
	v_mul_f32_e32 v14, v14, v160
	v_mul_f32_e32 v5, v5, v160
	v_mul_f32_e32 v6, v6, v160
	v_dual_mul_f32 v7, v7, v160 :: v_dual_and_b32 v130, 1, v151
	v_mul_f32_e32 v8, v8, v160
	.loc	1 797 41                        ; attention.py:797:41
	s_waitcnt vmcnt(1)
	v_mov_b16_e32 v66.h, v80.l
.Ltmp27:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:769:24 ] ]
	v_add_f32_e32 v77, v147, v148
.Ltmp28:
	.loc	1 797 41                        ; attention.py:797:41
	v_mov_b16_e64 v131.h, v81.l
	.loc	1 815 23                        ; attention.py:815:23
	v_dual_mul_f32 v16, v16, v160 :: v_dual_and_b32 v81, 0xffff0000, v81
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_4)
.Ltmp29:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:769:24 ] ]
	v_dual_add_f32 v71, v74, v77 :: v_dual_and_b32 v140, 1, v140
.Ltmp30:
	.loc	1 767 74                        ; attention.py:767:74
	v_sub_f32_e32 v74, v127, v161
	.loc	1 815 23                        ; attention.py:815:23
	v_mul_f32_e32 v15, v15, v160
	.loc	1 797 41                        ; attention.py:797:41
	v_and_b32_e32 v80, 0xffff0000, v80
	.loc	1 816 30                        ; attention.py:816:30
	v_add3_u32 v67, v67, v140, 0x7fff
.Ltmp31:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:769:24 ] ]
	v_add_f32_e32 v70, v70, v71
.Ltmp32:
	.loc	1 816 30                        ; attention.py:816:30
	v_add3_u32 v71, v72, v141, 0x7fff
	.loc	1 767 61                        ; attention.py:767:61
	v_exp_f32_e32 v72, v74
	.loc	1 815 23                        ; attention.py:815:23
	v_mul_f32_e32 v1, v1, v160
	.loc	1 816 30                        ; attention.py:816:30
	v_add3_u32 v140, v68, v142, 0x7fff
.Ltmp33:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:769:24 ]
	v_mov_b32_e32 v74, v70
.Ltmp34:
	.loc	1 816 30                        ; attention.py:816:30
	v_add3_u32 v68, v69, v75, 0x7fff
	v_and_b32_e32 v143, 1, v152
	v_add3_u32 v141, v150, v73, 0x7fff
	v_cndmask_b16 v152.l, 0x7fff, v71.h, s13
.Ltmp35:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:769:24 ]
	v_mov_b32_dpp v74, v74 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp36:
	.loc	1 816 30                        ; attention.py:816:30
	v_cndmask_b16 v154.h, 0x7fff, v68.h, s14
	.loc	1 767 25                        ; attention.py:767:25
	v_cndmask_b32_e64 v162, 0, v72, s4
	.loc	1 775 32                        ; attention.py:775:32
	s_waitcnt vmcnt(0)
	v_lshrrev_b32_e32 v71, 8, v129
	v_mov_b16_e64 v72.l, v129.h
	v_lshrrev_b32_e32 v73, 24, v129
	.loc	1 785 32                        ; attention.py:785:32
	v_lshrrev_b16 v68.l, 4, v129.l
	.loc	1 783 76                        ; attention.py:783:76
	v_and_b16 v68.h, v129.l, 15
	v_and_b16 v69.l, v129.h, 15
	.loc	1 815 23                        ; attention.py:815:23
	v_mul_f32_e32 v4, v4, v160
	.loc	1 816 30                        ; attention.py:816:30
	v_cndmask_b16 v152.h, 0x7fff, v67.h, s12
.Ltmp37:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:769:24 ] ]
	v_add_f32_e32 v67, v70, v74
.Ltmp38:
	.loc	1 775 32                        ; attention.py:775:32
	v_bfe_i32 v70, v129, 0, 8
	.loc	1 785 32                        ; attention.py:785:32
	v_lshrrev_b32_e32 v74, 20, v129
	.loc	1 775 32                        ; attention.py:775:32
	v_bfe_i32 v75, v71, 0, 8
	v_bfe_i32 v127, v72, 0, 8
	v_bfe_i32 v129, v73, 0, 8
	.loc	1 785 32                        ; attention.py:785:32
	v_and_b16 v68.l, v68.l, 15
	.loc	1 786 38                        ; attention.py:786:38
	v_cmp_lt_u16_e64 s4, 7, v68.h
	.loc	1 785 32                        ; attention.py:785:32
	v_lshrrev_b16 v69.h, 4, v71.l
	.loc	1 783 76                        ; attention.py:783:76
	v_and_b16 v70.h, v71.l, 15
	.loc	1 786 38                        ; attention.py:786:38
	v_cmp_lt_u16_e64 s5, 7, v69.l
	.loc	1 783 76                        ; attention.py:783:76
	v_and_b16 v72.l, v73.l, 15
	.loc	1 785 32                        ; attention.py:785:32
	v_and_b16 v71.l, v74.l, 15
	v_lshrrev_b16 v71.h, 4, v73.l
	.loc	1 787 39                        ; attention.py:787:39
	v_cmp_gt_i16_e64 s6, 0, v70.l
	.loc	1 787 56 is_stmt 0              ; attention.py:787:56
	v_or_b16 v70.l, v68.l, -16
	.loc	1 786 29 is_stmt 1              ; attention.py:786:29
	v_cndmask_b16 v72.h, 0, -16, s4
	.loc	1 785 32                        ; attention.py:785:32
	v_and_b16 v69.h, v69.h, 15
	.loc	1 787 39                        ; attention.py:787:39
	v_mov_b16_e32 v73.l, v75.l
	.loc	1 786 38                        ; attention.py:786:38
	v_cmp_lt_u16_e64 s4, 7, v70.h
	.loc	1 787 39                        ; attention.py:787:39
	v_mov_b16_e32 v74.l, v127.l
	.loc	1 786 29                        ; attention.py:786:29
	v_cndmask_b16 v74.h, 0, -16, s5
	.loc	1 787 39                        ; attention.py:787:39
	v_mov_b16_e64 v75.l, v129.l
	.loc	1 786 38                        ; attention.py:786:38
	v_cmp_lt_u16_e64 s5, 7, v72.l
	.loc	1 787 56                        ; attention.py:787:56
	v_or_b16 v73.h, v71.l, -16
	v_or_b16 v75.h, v71.h, -16
	.loc	1 786 29                        ; attention.py:786:29
	v_or_b16 v127.l, v68.h, v72.h
	.loc	1 787 30                        ; attention.py:787:30
	v_cndmask_b16 v70.l, v68.l, v70.l, s6
	.loc	1 787 39 is_stmt 0              ; attention.py:787:39
	v_cmp_gt_i16_e64 s6, 0, v73.l
	.loc	1 787 56                        ; attention.py:787:56
	v_or_b16 v68.l, v69.h, -16
	.loc	1 786 29 is_stmt 1              ; attention.py:786:29
	v_cndmask_b16 v68.h, 0, -16, s4
	.loc	1 787 39                        ; attention.py:787:39
	v_cmp_gt_i16_e64 s4, 0, v74.l
	.loc	1 786 29                        ; attention.py:786:29
	v_or_b16 v73.l, v69.l, v74.h
	.loc	1 787 39                        ; attention.py:787:39
	v_cmp_gt_i16_e64 s7, 0, v75.l
	.loc	1 786 29                        ; attention.py:786:29
	v_cndmask_b16 v69.l, 0, -16, s5
	.loc	1 814 31                        ; attention.py:814:31
	v_bfe_i32 v74, v70, 0, 16
	v_bfe_i32 v127, v127, 0, 16
	.loc	1 786 29                        ; attention.py:786:29
	v_or_b16 v70.l, v70.h, v68.h
	.loc	1 787 30                        ; attention.py:787:30
	v_cndmask_b16 v68.l, v69.h, v68.l, s6
	v_cndmask_b16 v71.l, v71.l, v73.h, s4
	.loc	1 814 31                        ; attention.py:814:31
	v_bfe_i32 v73, v73, 0, 16
	.loc	1 786 29                        ; attention.py:786:29
	v_or_b16 v69.l, v72.l, v69.l
	.loc	1 787 30                        ; attention.py:787:30
	v_cndmask_b16 v72.l, v71.h, v75.h, s7
	.loc	1 814 31                        ; attention.py:814:31
	v_cvt_f32_i32_e32 v74, v74
	v_cvt_f32_i32_e32 v75, v127
	v_bfe_i32 v68, v68, 0, 16
	v_bfe_i32 v70, v70, 0, 16
	v_bfe_i32 v71, v71, 0, 16
	v_cvt_f32_i32_e32 v73, v73
	v_bfe_i32 v72, v72, 0, 16
	v_bfe_i32 v69, v69, 0, 16
	.loc	1 815 23                        ; attention.py:815:23
	v_dual_mul_f32 v3, v3, v160 :: v_dual_mul_f32 v74, v66, v74
	.loc	1 814 31                        ; attention.py:814:31
	v_mul_f32_e32 v66, v66, v75
	v_cvt_f32_i32_e32 v68, v68
	v_cvt_f32_i32_e32 v70, v70
	v_cvt_f32_i32_e32 v71, v71
	v_mul_f32_e32 v73, v131, v73
	v_cvt_f32_i32_e32 v72, v72
	v_cvt_f32_i32_e32 v69, v69
	.loc	1 814 30 is_stmt 0              ; attention.py:814:30
	v_mov_b16_e64 v132.l, v74.h
	v_mov_b16_e64 v133.l, v66.h
	.loc	1 814 31                        ; attention.py:814:31
	v_dual_mul_f32 v71, v131, v71 :: v_dual_mul_f32 v68, v80, v68
	s_delay_alu instid0(VALU_DEP_4)
	v_dual_mul_f32 v69, v81, v69 :: v_dual_mul_f32 v70, v80, v70
	.loc	1 814 30                        ; attention.py:814:30
	v_mov_b16_e64 v137.l, v73.h
	.loc	1 814 31                        ; attention.py:814:31
	v_mul_f32_e32 v72, v81, v72
	.loc	1 814 30                        ; attention.py:814:30
	v_and_b32_e32 v75, 1, v132
	v_and_b32_e32 v80, 1, v133
	v_mov_b16_e64 v134.l, v68.h
	v_mov_b16_e64 v135.l, v70.h
	v_mov_b16_e64 v136.l, v71.h
	v_and_b32_e32 v81, 1, v137
	v_mov_b16_e64 v138.l, v72.h
	v_mov_b16_e64 v139.l, v69.h
	v_cmp_o_f32_e64 s4, v74, v74
	v_cmp_o_f32_e64 s5, v66, v66
	v_cmp_o_f32_e64 s6, v73, v73
	v_add3_u32 v66, v66, v80, 0x7fff
	v_add3_u32 v74, v74, v75, 0x7fff
	v_and_b32_e32 v75, 1, v134
	v_and_b32_e32 v80, 1, v135
	v_and_b32_e32 v127, 1, v136
	v_add3_u32 v73, v73, v81, 0x7fff
	v_and_b32_e32 v81, 1, v138
	v_and_b32_e32 v129, 1, v139
	.loc	1 816 30 is_stmt 1              ; attention.py:816:30
	v_and_b32_e32 v77, 1, v145
	.loc	1 814 30                        ; attention.py:814:30
	v_cmp_o_f32_e64 s7, v68, v68
	v_cmp_o_f32_e64 s8, v70, v70
	v_cmp_o_f32_e64 s9, v71, v71
	v_cmp_o_f32_e64 s10, v72, v72
	v_cmp_o_f32_e64 s11, v69, v69
	v_cndmask_b16 v74.l, 0x7fff, v66.h, s5
	v_add3_u32 v66, v70, v80, 0x7fff
	v_add3_u32 v68, v68, v75, 0x7fff
	v_add3_u32 v70, v71, v127, 0x7fff
	v_add3_u32 v71, v72, v81, 0x7fff
	v_add3_u32 v69, v69, v129, 0x7fff
	v_cndmask_b16 v74.h, 0x7fff, v74.h, s4
	v_cndmask_b16 v66.l, 0x7fff, v73.h, s6
	v_cndmask_b16 v68.h, 0x7fff, v68.h, s7
	v_cndmask_b16 v68.l, 0x7fff, v66.h, s8
	v_cndmask_b16 v66.h, 0x7fff, v70.h, s9
	v_cndmask_b16 v70.h, 0x7fff, v71.h, s10
	v_cndmask_b16 v70.l, 0x7fff, v69.h, s11
	.loc	1 816 30                        ; attention.py:816:30
	v_add3_u32 v69, v76, v77, 0x7fff
	v_cmp_o_f32_e64 s4, v76, v76
	v_cmp_o_f32_e64 s5, v150, v150
	v_add3_u32 v71, v128, v143, 0x7fff
	v_add3_u32 v72, v149, v130, 0x7fff
	v_cmp_o_f32_e64 s6, v149, v149
	v_cmp_o_f32_e64 s7, v128, v128
	.loc	1 814 30                        ; attention.py:814:30
	v_add_nc_u32_e32 v81, 0, v111
	.loc	1 816 30                        ; attention.py:816:30
	v_cndmask_b16 v154.l, 0x7fff, v140.h, s15
	v_cndmask_b16 v76.h, 0x7fff, v69.h, s4
	v_cndmask_b16 v76.l, 0x7fff, v141.h, s5
	v_cndmask_b16 v77.h, 0x7fff, v72.h, s6
	v_cndmask_b16 v77.l, 0x7fff, v71.h, s7
	.loc	1 814 30                        ; attention.py:814:30
	ds_store_2addr_b32 v121, v74, v68 offset1:8
	ds_store_2addr_b32 v121, v66, v70 offset0:16 offset1:24
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[68:71], v81
	ds_load_b128 v[127:130], v81 offset:512
	ds_load_b128 v[72:75], v122
	ds_load_b128 v[131:134], v122 offset:512
	ds_load_b128 v[135:138], v81 offset:1024
	ds_load_b128 v[143:146], v81 offset:1536
	ds_load_b128 v[139:142], v122 offset:1024
	ds_load_b128 v[147:150], v122 offset:1536
	.loc	1 816 30                        ; attention.py:816:30
	v_permlanex16_b32 v80, v152, s48, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v66, v154, s48, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v81, v76, s48, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v158, v77, s48, 0xfedcba98 op_sel:[1,0]
	.loc	1 817 23                        ; attention.py:817:23
	v_fmac_f32_e32 v67, v125, v162
	.loc	1 816 30                        ; attention.py:816:30
	v_perm_b32 v151, v80, v152, v112
	v_perm_b32 v152, v80, v152, v113
	v_perm_b32 v153, v66, v154, v112
	v_perm_b32 v154, v66, v154, v113
	v_perm_b32 v155, v81, v76, v112
	v_perm_b32 v156, v81, v76, v113
	v_perm_b32 v157, v158, v77, v112
	v_perm_b32 v158, v158, v77, v113
	v_mov_b32_e32 v125, v67
	.loc	1 816 23 is_stmt 0              ; attention.py:816:23
	s_waitcnt lgkmcnt(5)
	s_delay_alu instid0(VALU_DEP_2)
	v_wmma_f32_16x16x16_bf16 v[25:32], v[68:75], v[151:158], v[25:32]
	s_waitcnt lgkmcnt(4)
	v_wmma_f32_16x16x16_bf16 v[17:24], v[127:134], v[151:158], v[17:24]
	s_waitcnt lgkmcnt(1)
	v_wmma_f32_16x16x16_bf16 v[9:16], v[135:142], v[151:158], v[9:16]
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[1:8], v[143:150], v[151:158], v[1:8]
	v_dual_mov_b32 v128, v159 :: v_dual_mov_b32 v127, v161
	.loc	1 707 13 is_stmt 1              ; attention.py:707:13
	s_cbranch_scc0 .LBB0_23
.LBB0_6:                                ; =>This Inner Loop Header: Depth=1
	.loc	1 735 32                        ; attention.py:735:32
	s_add_i32 s4, s34, s44
	.loc	1 736 32                        ; attention.py:736:32
	v_add_nc_u32_e32 v71, 0, v95
	.loc	1 735 32                        ; attention.py:735:32
	s_mul_i32 s4, s4, s33
	.loc	1 741 30                        ; attention.py:741:30
	v_mov_b32_e32 v72, v65
	.loc	1 736 32                        ; attention.py:736:32
	v_add_lshl_u32 v66, s4, v78, 1
	.loc	1 708 31                        ; attention.py:708:31
	v_or_b32_e32 v74, s34, v87
	.loc	1 752 25                        ; attention.py:752:25
	s_add_i32 s6, s47, s34
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 736 32                        ; attention.py:736:32
	v_cndmask_b32_e64 v66, 0x80000000, v66, s2
	.loc	1 748 30                        ; attention.py:748:30
	v_cmp_ge_i32_e64 s4, v74, v96
	.loc	1 749 30                        ; attention.py:749:30
	v_cmp_le_i32_e64 s5, v74, v97
	v_mov_b16_e32 v74.l, 0
	.loc	1 736 32                        ; attention.py:736:32
	buffer_load_b128 v[67:70], v66, s[36:39], 0 offen
	.loc	1 741 30                        ; attention.py:741:30
	v_mov_b32_e32 v66, v65
	.loc	1 736 32                        ; attention.py:736:32
	s_waitcnt lgkmcnt(0)
	s_barrier
	v_mov_b16_e32 v74.h, v74.l
	.loc	1 749 21                        ; attention.py:749:21
	s_and_b32 s4, s4, s5
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_b32 s12, vcc_lo, s4
	.loc	1 736 32                        ; attention.py:736:32
	s_waitcnt vmcnt(0)
	ds_store_b128 v86, v[67:70]
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[129:132], v71
	ds_load_b128 v[133:136], v114
	ds_load_b128 v[137:140], v115
	ds_load_b128 v[141:144], v116
	ds_load_b128 v[145:148], v117
	ds_load_b128 v[149:152], v118
	.loc	1 741 30                        ; attention.py:741:30
	v_mov_b32_e32 v67, v65
	v_mov_b32_e32 v68, v65
	v_mov_b32_e32 v69, v65
	v_mov_b32_e32 v70, v65
	v_mov_b32_e32 v71, v65
	v_mov_b32_e32 v73, v72
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_mov_b32_e32 v72, v71
	v_mov_b32_e32 v71, v70
	v_mov_b32_e32 v70, v69
	v_mov_b32_e32 v69, v68
	v_mov_b32_e32 v68, v67
	v_mov_b32_e32 v67, v66
	v_mov_b32_e32 v66, v65
	.loc	1 736 32                        ; attention.py:736:32
	ds_load_b128 v[153:156], v119
	ds_load_b128 v[157:160], v120
	.loc	1 741 30                        ; attention.py:741:30
	s_waitcnt lgkmcnt(6)
	v_wmma_f32_16x16x16_bf16 v[66:73], v[129:136], v[57:64], v[66:73]
	s_waitcnt lgkmcnt(4)
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_wmma_f32_16x16x16_bf16 v[66:73], v[137:144], v[49:56], v[66:73]
	s_waitcnt lgkmcnt(2)
	v_wmma_f32_16x16x16_bf16 v[66:73], v[145:152], v[41:48], v[66:73]
	s_waitcnt lgkmcnt(0)
	s_delay_alu instid0(VALU_DEP_1)
	v_wmma_f32_16x16x16_bf16 v[66:73], v[153:160], v[33:40], v[66:73]
	.loc	1 759 34                        ; attention.py:759:34
	s_and_saveexec_b32 s5, s12
	s_cbranch_execz .LBB0_8
; %bb.7:                                ;   in Loop: Header=BB0_6 Depth=1
	.loc	1 0 34 is_stmt 0                ; attention.py:0:34
	v_add_nc_u32_e32 v75, s6, v105
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_ashrrev_i32_e32 v76, 31, v75
	v_add_co_u32 v75, s4, s22, v75
	v_add_co_ci_u32_e64 v76, null, s23, v76, s4
	.loc	1 759 34                        ; attention.py:759:34
	global_load_d16_hi_u8 v74, v[75:76], off
.LBB0_8:                                ;   in Loop: Header=BB0_6 Depth=1
	.loc	1 0 34                          ; attention.py:0:34
	s_or_b32 exec_lo, exec_lo, s5
	.loc	1 708 31 is_stmt 1              ; attention.py:708:31
	v_or_b32_e32 v75, s34, v88
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(SALU_CYCLE_1)
	.loc	1 748 30                        ; attention.py:748:30
	v_cmp_ge_i32_e64 s4, v75, v96
	.loc	1 749 30                        ; attention.py:749:30
	v_cmp_le_i32_e64 s5, v75, v97
	.loc	1 749 21 is_stmt 0              ; attention.py:749:21
	s_and_b32 s4, s4, s5
	s_and_b32 s13, vcc_lo, s4
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 759 34 is_stmt 1              ; attention.py:759:34
	s_and_saveexec_b32 s5, s13
	s_cbranch_execz .LBB0_10
; %bb.9:                                ;   in Loop: Header=BB0_6 Depth=1
	.loc	1 0 34 is_stmt 0                ; attention.py:0:34
	v_add_nc_u32_e32 v75, s6, v98
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 759 34                        ; attention.py:759:34
	v_ashrrev_i32_e32 v76, 31, v75
	v_add_co_u32 v75, s4, s22, v75
	v_add_co_ci_u32_e64 v76, null, s23, v76, s4
	global_load_d16_u8 v74, v[75:76], off
.LBB0_10:                               ;   in Loop: Header=BB0_6 Depth=1
	.loc	1 0 34                          ; attention.py:0:34
	s_or_b32 exec_lo, exec_lo, s5
	.loc	1 708 31 is_stmt 1              ; attention.py:708:31
	v_or_b32_e32 v76, s34, v89
	v_mov_b16_e32 v75.l, 0
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 748 30                        ; attention.py:748:30
	v_cmp_ge_i32_e64 s4, v76, v96
	.loc	1 749 30                        ; attention.py:749:30
	v_cmp_le_i32_e64 s5, v76, v97
	v_mov_b16_e32 v75.h, v75.l
	.loc	1 749 21 is_stmt 0              ; attention.py:749:21
	s_and_b32 s4, s4, s5
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_and_b32 s14, vcc_lo, s4
	.loc	1 759 34 is_stmt 1              ; attention.py:759:34
	s_and_saveexec_b32 s5, s14
	s_cbranch_execz .LBB0_12
; %bb.11:                               ;   in Loop: Header=BB0_6 Depth=1
	.loc	1 0 34 is_stmt 0                ; attention.py:0:34
	v_add_nc_u32_e32 v76, s6, v99
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 759 34                        ; attention.py:759:34
	v_ashrrev_i32_e32 v77, 31, v76
	v_add_co_u32 v76, s4, s22, v76
	v_add_co_ci_u32_e64 v77, null, s23, v77, s4
	global_load_d16_hi_u8 v75, v[76:77], off
.LBB0_12:                               ;   in Loop: Header=BB0_6 Depth=1
	.loc	1 0 34                          ; attention.py:0:34
	s_or_b32 exec_lo, exec_lo, s5
	.loc	1 708 31 is_stmt 1              ; attention.py:708:31
	v_or_b32_e32 v76, s34, v90
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(SALU_CYCLE_1)
	.loc	1 748 30                        ; attention.py:748:30
	v_cmp_ge_i32_e64 s4, v76, v96
	.loc	1 749 30                        ; attention.py:749:30
	v_cmp_le_i32_e64 s5, v76, v97
	.loc	1 749 21 is_stmt 0              ; attention.py:749:21
	s_and_b32 s4, s4, s5
	s_and_b32 s15, vcc_lo, s4
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 759 34 is_stmt 1              ; attention.py:759:34
	s_and_saveexec_b32 s5, s15
	s_cbranch_execz .LBB0_14
; %bb.13:                               ;   in Loop: Header=BB0_6 Depth=1
	.loc	1 0 34 is_stmt 0                ; attention.py:0:34
	v_add_nc_u32_e32 v76, s6, v100
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 759 34                        ; attention.py:759:34
	v_ashrrev_i32_e32 v77, 31, v76
	v_add_co_u32 v76, s4, s22, v76
	v_add_co_ci_u32_e64 v77, null, s23, v77, s4
	global_load_d16_u8 v75, v[76:77], off
.LBB0_14:                               ;   in Loop: Header=BB0_6 Depth=1
	.loc	1 0 34                          ; attention.py:0:34
	s_or_b32 exec_lo, exec_lo, s5
	.loc	1 708 31 is_stmt 1              ; attention.py:708:31
	v_or_b32_e32 v77, s34, v91
	v_mov_b16_e32 v76.l, 0
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 748 30                        ; attention.py:748:30
	v_cmp_ge_i32_e64 s4, v77, v96
	.loc	1 749 30                        ; attention.py:749:30
	v_cmp_le_i32_e64 s5, v77, v97
	v_mov_b16_e32 v76.h, v76.l
	.loc	1 749 21 is_stmt 0              ; attention.py:749:21
	s_and_b32 s4, s4, s5
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_and_b32 s16, vcc_lo, s4
	.loc	1 759 34 is_stmt 1              ; attention.py:759:34
	s_and_saveexec_b32 s5, s16
	s_cbranch_execz .LBB0_16
; %bb.15:                               ;   in Loop: Header=BB0_6 Depth=1
	.loc	1 0 34 is_stmt 0                ; attention.py:0:34
	v_add_nc_u32_e32 v77, s6, v101
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 759 34                        ; attention.py:759:34
	v_ashrrev_i32_e32 v81, 31, v77
	v_add_co_u32 v80, s4, s22, v77
	v_add_co_ci_u32_e64 v81, null, s23, v81, s4
	global_load_d16_hi_u8 v76, v[80:81], off
.LBB0_16:                               ;   in Loop: Header=BB0_6 Depth=1
	.loc	1 0 34                          ; attention.py:0:34
	s_or_b32 exec_lo, exec_lo, s5
	.loc	1 708 31 is_stmt 1              ; attention.py:708:31
	v_or_b32_e32 v77, s34, v92
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(SALU_CYCLE_1)
	.loc	1 748 30                        ; attention.py:748:30
	v_cmp_ge_i32_e64 s4, v77, v96
	.loc	1 749 30                        ; attention.py:749:30
	v_cmp_le_i32_e64 s5, v77, v97
	.loc	1 749 21 is_stmt 0              ; attention.py:749:21
	s_and_b32 s4, s4, s5
	s_and_b32 s17, vcc_lo, s4
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 759 34 is_stmt 1              ; attention.py:759:34
	s_and_saveexec_b32 s5, s17
	s_cbranch_execz .LBB0_18
; %bb.17:                               ;   in Loop: Header=BB0_6 Depth=1
	.loc	1 0 34 is_stmt 0                ; attention.py:0:34
	v_add_nc_u32_e32 v77, s6, v102
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 759 34                        ; attention.py:759:34
	v_ashrrev_i32_e32 v81, 31, v77
	v_add_co_u32 v80, s4, s22, v77
	v_add_co_ci_u32_e64 v81, null, s23, v81, s4
	global_load_d16_u8 v76, v[80:81], off
.LBB0_18:                               ;   in Loop: Header=BB0_6 Depth=1
	.loc	1 0 34                          ; attention.py:0:34
	s_or_b32 exec_lo, exec_lo, s5
	.loc	1 708 31 is_stmt 1              ; attention.py:708:31
	v_or_b32_e32 v80, s34, v93
	v_mov_b16_e32 v77.l, 0
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 748 30                        ; attention.py:748:30
	v_cmp_ge_i32_e64 s4, v80, v96
	.loc	1 749 30                        ; attention.py:749:30
	v_cmp_le_i32_e64 s5, v80, v97
	v_mov_b16_e32 v77.h, v77.l
	.loc	1 749 21 is_stmt 0              ; attention.py:749:21
	s_and_b32 s4, s4, s5
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_and_b32 s18, vcc_lo, s4
	.loc	1 759 34 is_stmt 1              ; attention.py:759:34
	s_and_saveexec_b32 s5, s18
	s_cbranch_execz .LBB0_20
; %bb.19:                               ;   in Loop: Header=BB0_6 Depth=1
	.loc	1 0 34 is_stmt 0                ; attention.py:0:34
	v_add_nc_u32_e32 v80, s6, v103
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 759 34                        ; attention.py:759:34
	v_ashrrev_i32_e32 v81, 31, v80
	v_add_co_u32 v80, s4, s22, v80
	v_add_co_ci_u32_e64 v81, null, s23, v81, s4
	global_load_d16_hi_u8 v77, v[80:81], off
.LBB0_20:                               ;   in Loop: Header=BB0_6 Depth=1
	.loc	1 0 34                          ; attention.py:0:34
	s_or_b32 exec_lo, exec_lo, s5
	.loc	1 708 31 is_stmt 1              ; attention.py:708:31
	v_or_b32_e32 v80, s34, v94
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(SALU_CYCLE_1)
	.loc	1 748 30                        ; attention.py:748:30
	v_cmp_ge_i32_e64 s4, v80, v96
	.loc	1 749 30                        ; attention.py:749:30
	v_cmp_le_i32_e64 s5, v80, v97
	.loc	1 749 21 is_stmt 0              ; attention.py:749:21
	s_and_b32 s4, s4, s5
	s_and_b32 s19, vcc_lo, s4
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 759 34 is_stmt 1              ; attention.py:759:34
	s_and_saveexec_b32 s5, s19
	s_cbranch_execz .LBB0_5
; %bb.21:                               ;   in Loop: Header=BB0_6 Depth=1
	.loc	1 0 34 is_stmt 0                ; attention.py:0:34
	v_add_nc_u32_e32 v80, s6, v104
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 759 34                        ; attention.py:759:34
	v_ashrrev_i32_e32 v81, 31, v80
	v_add_co_u32 v80, s4, s22, v80
	v_add_co_ci_u32_e64 v81, null, s23, v81, s4
	global_load_d16_u8 v77, v[80:81], off
	s_branch .LBB0_5
.LBB0_22:
	.loc	1 0 34                          ; attention.py:0:34
	v_dual_mov_b32 v8, 0 :: v_dual_mov_b32 v67, 0
	s_delay_alu instid0(VALU_DEP_1)
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
	s_branch .LBB0_24
.LBB0_23:                               ; %._crit_edge.loopexit
	v_mov_b32_e32 v33, v85
.LBB0_24:                               ; %._crit_edge
	.loc	1 707 13 is_stmt 1              ; attention.py:707:13
	v_lshlrev_b32_e32 v0, 3, v0
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	v_lshrrev_b32_e32 v34, 2, v33
	.loc	1 846 36                        ; attention.py:846:36
	v_mov_b16_e32 v39.h, 0
	.loc	1 846 17 is_stmt 0              ; attention.py:846:17
	s_waitcnt lgkmcnt(0)
	s_and_b32 s25, s25, 0xffff
	.loc	1 707 13 is_stmt 1              ; attention.py:707:13
	v_and_or_b32 v0, 0x78, v0, v34
	.loc	1 570 31                        ; attention.py:570:31
	v_lshrrev_b32_e32 v34, 1, v83
	.loc	1 846 36                        ; attention.py:846:36
	v_mov_b16_e32 v40.h, v39.h
	.loc	1 707 13                        ; attention.py:707:13
	ds_bpermute_b32 v38, v0, v67
	.loc	1 570 31                        ; attention.py:570:31
	v_or_b32_e32 v36, v34, v82
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	.loc	1 570 21 is_stmt 0              ; attention.py:570:21
	v_or_b32_e32 v41, s21, v36
	.loc	1 843 24 is_stmt 1              ; attention.py:843:24
	v_or_b32_e32 v36, s26, v36
	s_mov_b32 s26, 0x7ffffffe
	.loc	1 601 23                        ; attention.py:601:23
	v_cmp_gt_i32_e64 s1, 0x800, v41
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 843 24                        ; attention.py:843:24
	v_mul_lo_u32 v36, s27, v36
	.loc	1 841 48                        ; attention.py:841:48
	s_waitcnt lgkmcnt(0)
	v_div_scale_f32 v41, null, v38, v38, v26
	v_div_scale_f32 v43, null, v38, v38, v25
	v_div_scale_f32 v45, null, v38, v38, v28
	v_div_scale_f32 v46, null, v38, v38, v27
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_rcp_f32_e32 v47, v41
	v_rcp_f32_e32 v48, v43
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_rcp_f32_e32 v49, v45
	v_rcp_f32_e32 v51, v46
	v_div_scale_f32 v42, vcc_lo, v26, v38, v26
	v_div_scale_f32 v44, s5, v25, v38, v25
	v_div_scale_f32 v50, s6, v28, v38, v28
	v_fma_f32 v54, -v41, v47, 1.0
	s_delay_alu instid0(TRANS32_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	v_fma_f32 v55, -v43, v48, 1.0
	v_fma_f32 v56, -v45, v49, 1.0
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v58, -v46, v51, 1.0
	v_dual_fmac_f32 v47, v54, v47 :: v_dual_and_b32 v0, 8, v84
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_fmac_f32 v48, v55, v48 :: v_dual_fmac_f32 v49, v56, v49
	v_fmac_f32_e32 v51, v58, v51
	v_div_scale_f32 v57, null, v38, v38, v29
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_dual_mul_f32 v55, v42, v47 :: v_dual_mul_f32 v56, v44, v48
	v_div_scale_f32 v52, s7, v27, v38, v27
	v_rcp_f32_e32 v59, v57
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_fma_f32 v61, -v41, v55, v42
	v_mul_f32_e32 v58, v50, v49
	v_fma_f32 v62, -v43, v56, v44
	v_div_scale_f32 v53, null, v38, v38, v30
	v_fmac_f32_e32 v55, v61, v47
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v63, -v45, v58, v50
	v_fmac_f32_e32 v56, v62, v48
	v_mul_f32_e32 v60, v52, v51
	v_rcp_f32_e32 v54, v53
	v_fma_f32 v41, -v41, v55, v42
	v_fmac_f32_e32 v58, v63, v49
	v_fma_f32 v42, -v43, v56, v44
	v_fma_f32 v65, -v46, v60, v52
	v_div_scale_f32 v44, s8, v30, v38, v30
	s_delay_alu instid0(VALU_DEP_4)
	v_fma_f32 v43, -v45, v58, v50
	v_fma_f32 v45, -v57, v59, 1.0
	v_div_fmas_f32 v41, v41, v47, v55
	s_mov_b32 vcc_lo, s5
	.loc	1 841 28 is_stmt 0              ; attention.py:841:28
	v_cmp_lt_f32_e64 s5, 0, v38
	.loc	1 841 48                        ; attention.py:841:48
	v_fmac_f32_e32 v60, v65, v51
	v_fmac_f32_e32 v59, v45, v59
	v_div_fmas_f32 v42, v42, v48, v56
	v_div_fixup_f32 v26, v41, v38, v26
	s_mov_b32 vcc_lo, s6
	v_fma_f32 v64, -v53, v54, 1.0
	v_fma_f32 v46, -v46, v60, v52
	v_div_fixup_f32 v25, v42, v38, v25
	.loc	1 841 19                        ; attention.py:841:19
	v_cndmask_b32_e64 v26, 0, v26, s5
	.loc	1 841 48                        ; attention.py:841:48
	v_div_scale_f32 v42, s6, v29, v38, v29
	v_div_scale_f32 v47, null, v38, v38, v32
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 846 36 is_stmt 1              ; attention.py:846:36
	v_mov_b16_e32 v39.l, v26.h
	.loc	1 841 48                        ; attention.py:841:48
	v_mul_f32_e32 v45, v42, v59
	v_div_fmas_f32 v41, v43, v49, v58
	s_mov_b32 vcc_lo, s7
	v_fmac_f32_e32 v54, v64, v54
	v_div_fmas_f32 v43, v46, v51, v60
	.loc	1 841 19 is_stmt 0              ; attention.py:841:19
	v_cndmask_b32_e64 v46, 0, v25, s5
	.loc	1 841 48                        ; attention.py:841:48
	v_div_fixup_f32 v25, v41, v38, v28
	.loc	1 846 36 is_stmt 1              ; attention.py:846:36
	v_and_b32_e32 v28, 1, v39
	v_cmp_o_f32_e32 vcc_lo, v26, v26
	.loc	1 841 48                        ; attention.py:841:48
	v_div_fixup_f32 v27, v43, v38, v27
	.loc	1 846 36                        ; attention.py:846:36
	v_mov_b16_e32 v40.l, v46.h
	.loc	1 841 19                        ; attention.py:841:19
	v_cndmask_b32_e64 v41, 0, v25, s5
	.loc	1 846 36                        ; attention.py:846:36
	v_add3_u32 v26, v26, v28, 0x7fff
	.loc	1 841 48                        ; attention.py:841:48
	v_mul_f32_e32 v28, v44, v54
	.loc	1 846 36                        ; attention.py:846:36
	v_cmp_o_f32_e64 s7, v46, v46
	v_and_b32_e32 v25, 1, v40
	v_mov_b16_e32 v39.l, v41.h
	v_cmp_o_f32_e64 s9, v41, v41
	.loc	1 841 48                        ; attention.py:841:48
	v_fma_f32 v43, -v53, v28, v44
	.loc	1 841 19 is_stmt 0              ; attention.py:841:19
	v_cndmask_b32_e64 v27, 0, v27, s5
	.loc	1 846 36 is_stmt 1              ; attention.py:846:36
	v_add3_u32 v40, v46, v25, 0x7fff
	v_and_b32_e32 v46, 1, v39
	v_cndmask_b16 v25.h, 0x7fff, v26.h, vcc_lo
	.loc	1 841 48                        ; attention.py:841:48
	v_fmac_f32_e32 v28, v43, v54
	v_fma_f32 v43, -v57, v45, v42
	s_mov_b32 vcc_lo, s8
	.loc	1 846 36                        ; attention.py:846:36
	v_add3_u32 v46, v41, v46, 0x7fff
	v_mov_b16_e32 v26.l, v27.h
	.loc	1 841 48                        ; attention.py:841:48
	v_fma_f32 v41, -v53, v28, v44
	v_fmac_f32_e32 v45, v43, v59
	v_rcp_f32_e32 v43, v47
	v_div_scale_f32 v44, null, v38, v38, v31
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_div_fmas_f32 v28, v41, v54, v28
	v_fma_f32 v42, -v57, v45, v42
	s_mov_b32 vcc_lo, s6
	.loc	1 846 36                        ; attention.py:846:36
	v_mov_b16_e32 v26.h, v39.h
	.loc	1 841 48                        ; attention.py:841:48
	v_rcp_f32_e32 v41, v44
	.loc	1 846 36                        ; attention.py:846:36
	v_cndmask_b16 v25.l, 0x7fff, v40.h, s7
	.loc	1 841 48                        ; attention.py:841:48
	v_div_fmas_f32 v42, v42, v59, v45
	s_delay_alu instid0(TRANS32_DEP_2)
	v_fma_f32 v45, -v47, v43, 1.0
	.loc	1 846 36                        ; attention.py:846:36
	v_cmp_o_f32_e64 s6, v27, v27
	.loc	1 598 79                        ; attention.py:598:79
	v_or_b32_e32 v37, 16, v0
	v_or_b32_e32 v35, 32, v0
	.loc	1 841 48                        ; attention.py:841:48
	v_div_fixup_f32 v29, v42, v38, v29
	v_fmac_f32_e32 v43, v45, v43
	v_div_scale_f32 v42, vcc_lo, v32, v38, v32
	.loc	1 846 36                        ; attention.py:846:36
	v_and_b32_e32 v26, 1, v26
	.loc	1 841 48                        ; attention.py:841:48
	v_fma_f32 v45, -v44, v41, 1.0
	.loc	1 844 63                        ; attention.py:844:63
	v_cmp_gt_i32_e64 s4, s27, v0
	.loc	1 598 79                        ; attention.py:598:79
	v_or_b32_e32 v34, 48, v0
	.loc	1 844 63                        ; attention.py:844:63
	v_cmp_gt_i32_e64 s3, s27, v37
	.loc	1 846 36                        ; attention.py:846:36
	v_add3_u32 v40, v27, v26, 0x7fff
	.loc	1 841 48                        ; attention.py:841:48
	v_div_fixup_f32 v27, v28, v38, v30
	.loc	1 841 19 is_stmt 0              ; attention.py:841:19
	v_cndmask_b32_e64 v28, 0, v29, s5
	.loc	1 841 48                        ; attention.py:841:48
	v_mul_f32_e32 v29, v42, v43
	v_fmac_f32_e32 v41, v45, v41
	v_div_scale_f32 v30, s7, v31, v38, v31
	.loc	1 841 19                        ; attention.py:841:19
	v_cndmask_b32_e64 v27, 0, v27, s5
	.loc	1 846 36 is_stmt 1              ; attention.py:846:36
	v_cndmask_b16 v26.h, 0x7fff, v46.h, s9
	v_mov_b16_e32 v45.l, v28.h
	v_mov_b16_e32 v45.h, v39.h
	.loc	1 841 48                        ; attention.py:841:48
	v_fma_f32 v46, -v47, v29, v42
	.loc	1 846 36                        ; attention.py:846:36
	v_mov_b16_e32 v39.l, v27.h
	.loc	1 841 48                        ; attention.py:841:48
	v_mul_f32_e32 v48, v30, v41
	.loc	1 846 36                        ; attention.py:846:36
	v_cndmask_b16 v26.l, 0x7fff, v40.h, s6
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	.loc	1 841 48                        ; attention.py:841:48
	v_dual_fmac_f32 v29, v46, v43 :: v_dual_and_b32 v40, 1, v45
	v_div_scale_f32 v46, null, v38, v38, v18
	.loc	1 846 36                        ; attention.py:846:36
	v_and_b32_e32 v49, 1, v39
	.loc	1 841 48                        ; attention.py:841:48
	v_fma_f32 v45, -v44, v48, v30
	v_fma_f32 v42, -v47, v29, v42
	v_div_scale_f32 v47, null, v38, v38, v17
	.loc	1 846 36                        ; attention.py:846:36
	v_add3_u32 v40, v28, v40, 0x7fff
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 841 48                        ; attention.py:841:48
	v_fmac_f32_e32 v48, v45, v41
	v_rcp_f32_e32 v45, v46
	v_div_fmas_f32 v29, v42, v43, v29
	v_rcp_f32_e32 v42, v47
	s_mov_b32 vcc_lo, s7
	v_fma_f32 v30, -v44, v48, v30
	.loc	1 846 36                        ; attention.py:846:36
	v_cmp_o_f32_e64 s8, v28, v28
	.loc	1 841 48                        ; attention.py:841:48
	v_div_fixup_f32 v29, v29, v38, v32
	.loc	1 846 36                        ; attention.py:846:36
	v_add3_u32 v43, v27, v49, 0x7fff
	.loc	1 841 48                        ; attention.py:841:48
	v_div_scale_f32 v49, null, v38, v38, v20
	v_div_fmas_f32 v30, v30, v41, v48
	v_fma_f32 v41, -v46, v45, 1.0
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v32, -v47, v42, 1.0
	.loc	1 841 19 is_stmt 0              ; attention.py:841:19
	v_cndmask_b32_e64 v29, 0, v29, s5
	.loc	1 846 36 is_stmt 1              ; attention.py:846:36
	v_cmp_o_f32_e32 vcc_lo, v27, v27
	.loc	1 841 48                        ; attention.py:841:48
	v_div_fixup_f32 v30, v30, v38, v31
	v_fmac_f32_e32 v45, v41, v45
	v_div_scale_f32 v31, s6, v18, v38, v18
	v_fmac_f32_e32 v42, v32, v42
	v_div_scale_f32 v32, s7, v17, v38, v17
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_mul_f32_e32 v41, v31, v45
	.loc	1 846 36                        ; attention.py:846:36
	v_mov_b16_e32 v39.l, v29.h
	v_cmp_o_f32_e64 s9, v29, v29
	.loc	1 841 48                        ; attention.py:841:48
	v_mul_f32_e32 v48, v32, v42
	.loc	1 846 36                        ; attention.py:846:36
	v_cndmask_b16 v27.h, 0x7fff, v43.h, vcc_lo
	.loc	1 841 48                        ; attention.py:841:48
	v_fma_f32 v44, -v46, v41, v31
	.loc	1 846 36                        ; attention.py:846:36
	v_and_b32_e32 v28, 1, v39
	.loc	1 841 48                        ; attention.py:841:48
	s_mov_b32 vcc_lo, s6
	.loc	1 841 19 is_stmt 0              ; attention.py:841:19
	v_cndmask_b32_e64 v30, 0, v30, s5
	.loc	1 846 36 is_stmt 1              ; attention.py:846:36
	v_mov_b16_e32 v43.h, v39.h
	.loc	1 841 48                        ; attention.py:841:48
	v_fmac_f32_e32 v41, v44, v45
	v_fma_f32 v44, -v47, v48, v32
	.loc	1 846 36                        ; attention.py:846:36
	v_add3_u32 v28, v29, v28, 0x7fff
	v_mov_b16_e32 v43.l, v30.h
	v_cndmask_b16 v27.l, 0x7fff, v40.h, s8
	.loc	1 841 48                        ; attention.py:841:48
	v_fma_f32 v29, -v46, v41, v31
	v_fmac_f32_e32 v48, v44, v42
	v_rcp_f32_e32 v31, v49
	v_div_scale_f32 v44, null, v38, v38, v19
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_div_fmas_f32 v29, v29, v45, v41
	v_fma_f32 v32, -v47, v48, v32
	s_mov_b32 vcc_lo, s7
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(TRANS32_DEP_2)
	v_rcp_f32_e32 v41, v44
	.loc	1 846 36                        ; attention.py:846:36
	v_and_b32_e32 v43, 1, v43
	.loc	1 841 48                        ; attention.py:841:48
	v_div_fixup_f32 v18, v29, v38, v18
	v_div_fmas_f32 v32, v32, v42, v48
	v_fma_f32 v42, -v49, v31, 1.0
	.loc	1 846 36                        ; attention.py:846:36
	v_cmp_o_f32_e64 s6, v30, v30
	v_add3_u32 v40, v30, v43, 0x7fff
	.loc	1 841 48                        ; attention.py:841:48
	v_div_scale_f32 v30, s7, v19, v38, v19
	v_div_fixup_f32 v17, v32, v38, v17
	v_fmac_f32_e32 v31, v42, v31
	v_div_scale_f32 v32, vcc_lo, v20, v38, v20
	v_fma_f32 v42, -v44, v41, 1.0
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 841 19 is_stmt 0              ; attention.py:841:19
	v_cndmask_b32_e64 v29, 0, v17, s5
	v_cndmask_b32_e64 v18, 0, v18, s5
	.loc	1 846 36 is_stmt 1              ; attention.py:846:36
	v_cndmask_b16 v28.l, 0x7fff, v40.h, s6
	.loc	1 841 48                        ; attention.py:841:48
	v_div_scale_f32 v47, null, v38, v38, v21
	v_fmac_f32_e32 v41, v42, v41
	.loc	1 846 36                        ; attention.py:846:36
	v_mov_b16_e32 v42.l, v29.h
	v_mov_b16_e32 v42.h, v39.h
	.loc	1 841 48                        ; attention.py:841:48
	v_mul_f32_e32 v17, v32, v31
	.loc	1 846 36                        ; attention.py:846:36
	v_mov_b16_e32 v39.l, v18.h
	.loc	1 841 48                        ; attention.py:841:48
	v_mul_f32_e32 v45, v30, v41
	.loc	1 846 36                        ; attention.py:846:36
	v_cndmask_b16 v28.h, 0x7fff, v28.h, s9
	v_and_b32_e32 v40, 1, v42
	.loc	1 841 48                        ; attention.py:841:48
	v_fma_f32 v43, -v49, v17, v32
	.loc	1 846 17                        ; attention.py:846:17
	v_add_lshl_u32 v0, v36, v0, 1
	.loc	1 841 48                        ; attention.py:841:48
	v_fma_f32 v42, -v44, v45, v30
	.loc	1 846 36                        ; attention.py:846:36
	v_and_b32_e32 v46, 1, v39
	v_add3_u32 v40, v29, v40, 0x7fff
	.loc	1 841 48                        ; attention.py:841:48
	v_fmac_f32_e32 v17, v43, v31
	v_div_scale_f32 v43, null, v38, v38, v22
	v_fmac_f32_e32 v45, v42, v41
	.loc	1 844 63                        ; attention.py:844:63
	v_cmp_gt_i32_e64 s2, s27, v35
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 841 48                        ; attention.py:841:48
	v_fma_f32 v32, -v49, v17, v32
	v_rcp_f32_e32 v42, v43
	.loc	1 844 63                        ; attention.py:844:63
	v_cmp_gt_i32_e64 s0, s27, v34
	.loc	1 841 48                        ; attention.py:841:48
	v_fma_f32 v30, -v44, v45, v30
	s_mov_b32 s27, 0x31027000
	v_div_fmas_f32 v17, v32, v31, v17
	v_rcp_f32_e32 v31, v47
	s_mov_b32 vcc_lo, s7
	v_div_fmas_f32 v30, v30, v41, v45
	.loc	1 846 36                        ; attention.py:846:36
	v_add3_u32 v41, v18, v46, 0x7fff
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_4) | instid1(TRANS32_DEP_1)
	.loc	1 841 48                        ; attention.py:841:48
	v_fma_f32 v32, -v43, v42, 1.0
	.loc	1 846 36                        ; attention.py:846:36
	v_cmp_o_f32_e32 vcc_lo, v18, v18
	.loc	1 841 48                        ; attention.py:841:48
	v_div_fixup_f32 v18, v17, v38, v20
	v_div_fixup_f32 v19, v30, v38, v19
	v_div_scale_f32 v20, s6, v22, v38, v22
	v_fma_f32 v30, -v47, v31, 1.0
	v_fmac_f32_e32 v42, v32, v42
	.loc	1 841 19 is_stmt 0              ; attention.py:841:19
	v_cndmask_b32_e64 v18, 0, v18, s5
	v_cndmask_b32_e64 v19, 0, v19, s5
	.loc	1 846 36 is_stmt 1              ; attention.py:846:36
	v_cndmask_b16 v17.h, 0x7fff, v41.h, vcc_lo
	.loc	1 841 48                        ; attention.py:841:48
	v_fmac_f32_e32 v31, v30, v31
	v_div_scale_f32 v30, s7, v21, v38, v21
	.loc	1 846 36                        ; attention.py:846:36
	v_mov_b16_e32 v39.l, v18.h
	.loc	1 841 48                        ; attention.py:841:48
	v_mul_f32_e32 v32, v20, v42
	.loc	1 846 36                        ; attention.py:846:36
	v_cmp_o_f32_e32 vcc_lo, v29, v29
	v_mov_b16_e32 v29.l, v19.h
	v_mov_b16_e32 v29.h, v39.h
	.loc	1 841 48                        ; attention.py:841:48
	v_mul_f32_e32 v44, v30, v31
	.loc	1 846 36                        ; attention.py:846:36
	v_and_b32_e32 v45, 1, v39
	.loc	1 841 48                        ; attention.py:841:48
	v_fma_f32 v41, -v43, v32, v20
	.loc	1 846 36                        ; attention.py:846:36
	v_cndmask_b16 v17.l, 0x7fff, v40.h, vcc_lo
	v_and_b32_e32 v29, 1, v29
	.loc	1 841 48                        ; attention.py:841:48
	v_fma_f32 v40, -v47, v44, v30
	.loc	1 846 36                        ; attention.py:846:36
	v_cmp_o_f32_e64 s8, v18, v18
	.loc	1 841 48                        ; attention.py:841:48
	v_fmac_f32_e32 v32, v41, v42
	.loc	1 846 36                        ; attention.py:846:36
	v_add3_u32 v41, v18, v45, 0x7fff
	.loc	1 841 48                        ; attention.py:841:48
	s_mov_b32 vcc_lo, s6
	v_fmac_f32_e32 v44, v40, v31
	v_div_scale_f32 v40, null, v38, v38, v23
	v_fma_f32 v18, -v43, v32, v20
	v_div_scale_f32 v20, null, v38, v38, v24
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fma_f32 v30, -v47, v44, v30
	.loc	1 846 36                        ; attention.py:846:36
	v_add3_u32 v29, v19, v29, 0x7fff
	.loc	1 841 48                        ; attention.py:841:48
	v_div_fmas_f32 v18, v18, v42, v32
	s_delay_alu instid0(VALU_DEP_4)
	v_rcp_f32_e32 v32, v20
	v_rcp_f32_e32 v42, v40
	s_mov_b32 vcc_lo, s7
	v_div_scale_f32 v43, null, v38, v38, v10
	v_div_fmas_f32 v30, v30, v31, v44
	.loc	1 846 36                        ; attention.py:846:36
	v_cmp_o_f32_e32 vcc_lo, v19, v19
	.loc	1 841 48                        ; attention.py:841:48
	v_div_fixup_f32 v19, v18, v38, v22
	.loc	1 846 36                        ; attention.py:846:36
	v_cndmask_b16 v18.h, 0x7fff, v41.h, s8
	.loc	1 841 48                        ; attention.py:841:48
	v_rcp_f32_e32 v47, v43
	s_delay_alu instid0(TRANS32_DEP_3)
	v_fma_f32 v22, -v20, v32, 1.0
	.loc	1 846 36                        ; attention.py:846:36
	v_cndmask_b16 v18.l, 0x7fff, v29.h, vcc_lo
	.loc	1 841 48                        ; attention.py:841:48
	v_fma_f32 v29, -v40, v42, 1.0
	v_div_fixup_f32 v21, v30, v38, v21
	.loc	1 841 19 is_stmt 0              ; attention.py:841:19
	v_cndmask_b32_e64 v19, 0, v19, s5
	.loc	1 846 36 is_stmt 1              ; attention.py:846:36
	v_mov_b16_e32 v30.h, v39.h
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_4) | instid1(VALU_DEP_4)
	.loc	1 841 48                        ; attention.py:841:48
	v_fmac_f32_e32 v42, v29, v42
	v_div_scale_f32 v29, s6, v23, v38, v23
	v_fmac_f32_e32 v32, v22, v32
	v_div_scale_f32 v22, vcc_lo, v24, v38, v24
	.loc	1 841 19 is_stmt 0              ; attention.py:841:19
	v_cndmask_b32_e64 v21, 0, v21, s5
	.loc	1 841 48                        ; attention.py:841:48
	v_mul_f32_e32 v41, v29, v42
	.loc	1 846 36 is_stmt 1              ; attention.py:846:36
	v_mov_b16_e32 v39.l, v19.h
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 841 48                        ; attention.py:841:48
	v_mul_f32_e32 v31, v22, v32
	.loc	1 846 36                        ; attention.py:846:36
	v_cmp_o_f32_e64 s7, v19, v19
	v_mov_b16_e32 v30.l, v21.h
	.loc	1 841 48                        ; attention.py:841:48
	v_fma_f32 v46, -v40, v41, v29
	.loc	1 846 36                        ; attention.py:846:36
	v_and_b32_e32 v44, 1, v39
	.loc	1 841 48                        ; attention.py:841:48
	v_fma_f32 v45, -v20, v31, v22
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 846 36                        ; attention.py:846:36
	v_and_b32_e32 v30, 1, v30
	.loc	1 841 48                        ; attention.py:841:48
	v_fmac_f32_e32 v41, v46, v42
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 846 36                        ; attention.py:846:36
	v_add3_u32 v44, v19, v44, 0x7fff
	.loc	1 841 48                        ; attention.py:841:48
	v_fmac_f32_e32 v31, v45, v32
	v_div_scale_f32 v45, null, v38, v38, v9
	.loc	1 846 36                        ; attention.py:846:36
	v_add3_u32 v30, v21, v30, 0x7fff
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 841 48                        ; attention.py:841:48
	v_fma_f32 v19, -v20, v31, v22
	v_fma_f32 v20, -v40, v41, v29
	v_rcp_f32_e32 v29, v45
	v_fma_f32 v22, -v43, v47, 1.0
	.loc	1 846 36                        ; attention.py:846:36
	v_mov_b16_e32 v40.h, v39.h
	.loc	1 841 48                        ; attention.py:841:48
	v_div_fmas_f32 v31, v19, v32, v31
	s_mov_b32 vcc_lo, s6
	.loc	1 846 36                        ; attention.py:846:36
	v_cndmask_b16 v19.h, 0x7fff, v44.h, s7
	.loc	1 841 48                        ; attention.py:841:48
	v_div_fmas_f32 v20, v20, v42, v41
	v_fmac_f32_e32 v47, v22, v47
	v_div_fixup_f32 v24, v31, v38, v24
	v_div_scale_f32 v22, vcc_lo, v10, v38, v10
	v_fma_f32 v32, -v45, v29, 1.0
	v_div_fixup_f32 v20, v20, v38, v23
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 841 19 is_stmt 0              ; attention.py:841:19
	v_cndmask_b32_e64 v24, 0, v24, s5
	.loc	1 841 48                        ; attention.py:841:48
	v_mul_f32_e32 v23, v22, v47
	v_div_scale_f32 v31, s6, v9, v38, v9
	.loc	1 846 36 is_stmt 1              ; attention.py:846:36
	v_cmp_o_f32_e64 s7, v21, v21
	s_delay_alu instid0(VALU_DEP_4)
	v_mov_b16_e32 v39.l, v24.h
	.loc	1 841 48                        ; attention.py:841:48
	v_fmac_f32_e32 v29, v32, v29
	v_fma_f32 v21, -v43, v23, v22
	v_div_scale_f32 v41, null, v38, v38, v11
	.loc	1 846 36                        ; attention.py:846:36
	v_cndmask_b16 v19.l, 0x7fff, v30.h, s7
	v_and_b32_e32 v30, 1, v39
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	.loc	1 841 48                        ; attention.py:841:48
	v_dual_mul_f32 v32, v31, v29 :: v_dual_fmac_f32 v23, v21, v47
	.loc	1 841 19 is_stmt 0              ; attention.py:841:19
	v_cndmask_b32_e64 v20, 0, v20, s5
	.loc	1 841 48                        ; attention.py:841:48
	v_rcp_f32_e32 v42, v41
	v_fma_f32 v21, -v45, v32, v31
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v22, -v43, v23, v22
	.loc	1 846 36 is_stmt 1              ; attention.py:846:36
	v_mov_b16_e32 v40.l, v20.h
	v_cmp_o_f32_e64 s7, v20, v20
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	.loc	1 841 48                        ; attention.py:841:48
	v_fmac_f32_e32 v32, v21, v29
	v_div_scale_f32 v21, null, v38, v38, v12
	v_div_fmas_f32 v22, v22, v47, v23
	s_mov_b32 vcc_lo, s6
	v_fma_f32 v23, -v45, v32, v31
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_rcp_f32_e32 v31, v21
	v_div_fixup_f32 v10, v22, v38, v10
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_div_fmas_f32 v23, v23, v29, v32
	.loc	1 846 36                        ; attention.py:846:36
	v_add3_u32 v29, v24, v30, 0x7fff
	v_cmp_o_f32_e32 vcc_lo, v24, v24
	.loc	1 841 19                        ; attention.py:841:19
	v_cndmask_b32_e64 v10, 0, v10, s5
	.loc	1 846 36                        ; attention.py:846:36
	v_mov_b16_e32 v30.h, v39.h
	.loc	1 841 48                        ; attention.py:841:48
	v_div_fixup_f32 v23, v23, v38, v9
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v24, -v21, v31, 1.0
	.loc	1 846 36                        ; attention.py:846:36
	v_and_b32_e32 v40, 1, v40
	v_cndmask_b16 v9.h, 0x7fff, v29.h, vcc_lo
	.loc	1 841 48                        ; attention.py:841:48
	v_fma_f32 v29, -v41, v42, 1.0
	.loc	1 841 19 is_stmt 0              ; attention.py:841:19
	v_cndmask_b32_e64 v23, 0, v23, s5
	.loc	1 841 48                        ; attention.py:841:48
	v_fmac_f32_e32 v31, v24, v31
	v_div_scale_f32 v24, vcc_lo, v12, v38, v12
	s_delay_alu instid0(VALU_DEP_4)
	v_fmac_f32_e32 v42, v29, v42
	v_div_scale_f32 v29, s6, v11, v38, v11
	.loc	1 846 36 is_stmt 1              ; attention.py:846:36
	v_mov_b16_e32 v30.l, v23.h
	v_mov_b16_e32 v39.l, v10.h
	.loc	1 841 48                        ; attention.py:841:48
	v_mul_f32_e32 v32, v24, v31
	.loc	1 846 36                        ; attention.py:846:36
	v_add3_u32 v22, v20, v40, 0x7fff
	.loc	1 841 48                        ; attention.py:841:48
	v_mul_f32_e32 v40, v29, v42
	.loc	1 846 36                        ; attention.py:846:36
	v_and_b32_e32 v20, 1, v30
	v_and_b32_e32 v30, 1, v39
	.loc	1 841 48                        ; attention.py:841:48
	v_fma_f32 v43, -v21, v32, v24
	.loc	1 846 36                        ; attention.py:846:36
	v_cndmask_b16 v9.l, 0x7fff, v22.h, s7
	.loc	1 841 48                        ; attention.py:841:48
	v_fma_f32 v44, -v41, v40, v29
	.loc	1 846 36                        ; attention.py:846:36
	v_cmp_o_f32_e64 s7, v10, v10
	v_add3_u32 v22, v10, v30, 0x7fff
	.loc	1 841 48                        ; attention.py:841:48
	v_fmac_f32_e32 v32, v43, v31
	v_div_scale_f32 v30, null, v38, v38, v14
	v_fmac_f32_e32 v40, v44, v42
	v_div_scale_f32 v43, null, v38, v38, v13
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v10, -v21, v32, v24
	v_rcp_f32_e32 v24, v30
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v21, -v41, v40, v29
	v_rcp_f32_e32 v29, v43
	.loc	1 846 36                        ; attention.py:846:36
	v_add3_u32 v20, v23, v20, 0x7fff
	.loc	1 841 48                        ; attention.py:841:48
	v_div_fmas_f32 v10, v10, v31, v32
	s_mov_b32 vcc_lo, s6
	.loc	1 846 36                        ; attention.py:846:36
	v_cndmask_b16 v22.h, 0x7fff, v22.h, s7
	.loc	1 841 48                        ; attention.py:841:48
	v_div_fmas_f32 v21, v21, v42, v40
	.loc	1 846 36                        ; attention.py:846:36
	v_cmp_o_f32_e32 vcc_lo, v23, v23
	.loc	1 841 48                        ; attention.py:841:48
	v_div_fixup_f32 v10, v10, v38, v12
	v_fma_f32 v12, -v30, v24, 1.0
	v_div_scale_f32 v31, null, v38, v38, v16
	v_div_fixup_f32 v11, v21, v38, v11
	v_fma_f32 v21, -v43, v29, 1.0
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v24, v12, v24
	v_div_scale_f32 v12, s6, v14, v38, v14
	.loc	1 846 36                        ; attention.py:846:36
	v_cndmask_b16 v22.l, 0x7fff, v20.h, vcc_lo
	.loc	1 841 48                        ; attention.py:841:48
	v_fmac_f32_e32 v29, v21, v29
	v_div_scale_f32 v21, s7, v13, v38, v13
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_mul_f32_e32 v20, v12, v24
	v_rcp_f32_e32 v42, v31
	.loc	1 841 19 is_stmt 0              ; attention.py:841:19
	v_cndmask_b32_e64 v10, 0, v10, s5
	.loc	1 841 48                        ; attention.py:841:48
	v_mul_f32_e32 v23, v21, v29
	s_mov_b32 vcc_lo, s6
	v_fma_f32 v40, -v30, v20, v12
	.loc	1 841 19                        ; attention.py:841:19
	v_cndmask_b32_e64 v11, 0, v11, s5
	.loc	1 846 36 is_stmt 1              ; attention.py:846:36
	v_mov_b16_e32 v39.l, v10.h
	.loc	1 841 48                        ; attention.py:841:48
	v_fma_f32 v41, -v43, v23, v21
	.loc	1 846 36                        ; attention.py:846:36
	v_mov_b16_e32 v32.h, v39.h
	.loc	1 841 48                        ; attention.py:841:48
	v_fmac_f32_e32 v20, v40, v24
	v_div_scale_f32 v40, null, v38, v38, v15
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_fmac_f32 v23, v41, v29 :: v_dual_and_b32 v44, 1, v39
	v_fma_f32 v12, -v30, v20, v12
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_rcp_f32_e32 v41, v40
	v_fma_f32 v30, -v31, v42, 1.0
	v_fma_f32 v21, -v43, v23, v21
	.loc	1 846 36                        ; attention.py:846:36
	v_mov_b16_e32 v32.l, v11.h
	.loc	1 841 48                        ; attention.py:841:48
	v_div_fmas_f32 v12, v12, v24, v20
	s_mov_b32 vcc_lo, s7
	v_fmac_f32_e32 v42, v30, v42
	v_div_fmas_f32 v20, v21, v29, v23
	v_div_scale_f32 v21, vcc_lo, v16, v38, v16
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fma_f32 v23, -v40, v41, 1.0
	v_div_fixup_f32 v12, v12, v38, v14
	v_div_fixup_f32 v13, v20, v38, v13
	s_delay_alu instid0(VALU_DEP_4)
	v_mul_f32_e32 v14, v21, v42
	v_div_scale_f32 v20, s6, v15, v38, v15
	v_fmac_f32_e32 v41, v23, v41
	.loc	1 846 36                        ; attention.py:846:36
	v_add3_u32 v24, v10, v44, 0x7fff
	v_cmp_o_f32_e64 s7, v10, v10
	.loc	1 841 48                        ; attention.py:841:48
	v_fma_f32 v10, -v31, v14, v21
	.loc	1 841 19 is_stmt 0              ; attention.py:841:19
	v_cndmask_b32_e64 v12, 0, v12, s5
	.loc	1 841 48                        ; attention.py:841:48
	v_mul_f32_e32 v23, v20, v41
	v_div_scale_f32 v30, null, v38, v38, v1
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v14, v10, v42
	.loc	1 846 36 is_stmt 1              ; attention.py:846:36
	v_and_b32_e32 v32, 1, v32
	.loc	1 841 48                        ; attention.py:841:48
	v_fma_f32 v10, -v40, v23, v20
	.loc	1 846 36                        ; attention.py:846:36
	v_mov_b16_e32 v39.l, v12.h
	v_cmp_o_f32_e64 s8, v11, v11
	.loc	1 841 48                        ; attention.py:841:48
	v_fma_f32 v21, -v31, v14, v21
	v_rcp_f32_e32 v31, v30
	v_fmac_f32_e32 v23, v10, v41
	v_div_scale_f32 v10, null, v38, v38, v2
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_div_fmas_f32 v14, v21, v42, v14
	s_mov_b32 vcc_lo, s6
	v_fma_f32 v20, -v40, v23, v20
	s_delay_alu instid0(VALU_DEP_3)
	v_rcp_f32_e32 v21, v10
	.loc	1 846 36                        ; attention.py:846:36
	v_add3_u32 v32, v11, v32, 0x7fff
	v_and_b32_e32 v11, 1, v39
	.loc	1 841 19                        ; attention.py:841:19
	v_cndmask_b32_e64 v13, 0, v13, s5
	.loc	1 841 48 is_stmt 0              ; attention.py:841:48
	v_div_fmas_f32 v20, v20, v41, v23
	.loc	1 846 36 is_stmt 1              ; attention.py:846:36
	v_cmp_o_f32_e32 vcc_lo, v12, v12
	v_mov_b16_e32 v29.h, v39.h
	v_add3_u32 v11, v12, v11, 0x7fff
	.loc	1 841 48                        ; attention.py:841:48
	v_div_fixup_f32 v12, v14, v38, v16
	v_div_fixup_f32 v15, v20, v38, v15
	v_fma_f32 v20, -v10, v21, 1.0
	v_fma_f32 v14, -v30, v31, 1.0
	v_div_scale_f32 v16, s6, v2, v38, v2
	.loc	1 846 36                        ; attention.py:846:36
	v_mov_b16_e32 v29.l, v13.h
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	.loc	1 841 48                        ; attention.py:841:48
	v_fmac_f32_e32 v21, v20, v21
	.loc	1 846 36                        ; attention.py:846:36
	v_cndmask_b16 v23.h, 0x7fff, v24.h, s7
	.loc	1 841 48                        ; attention.py:841:48
	v_fmac_f32_e32 v31, v14, v31
	v_div_scale_f32 v14, s7, v1, v38, v1
	v_mul_f32_e32 v20, v16, v21
	.loc	1 846 36                        ; attention.py:846:36
	v_and_b32_e32 v29, 1, v29
	v_cndmask_b16 v23.l, 0x7fff, v32.h, s8
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 841 48                        ; attention.py:841:48
	v_mul_f32_e32 v32, v14, v31
	.loc	1 846 36                        ; attention.py:846:36
	v_cndmask_b16 v11.h, 0x7fff, v11.h, vcc_lo
	.loc	1 841 48                        ; attention.py:841:48
	v_fma_f32 v40, -v10, v20, v16
	.loc	1 846 36                        ; attention.py:846:36
	v_add3_u32 v24, v13, v29, 0x7fff
	.loc	1 841 19                        ; attention.py:841:19
	v_cndmask_b32_e64 v12, 0, v12, s5
	.loc	1 846 36                        ; attention.py:846:36
	v_cmp_o_f32_e32 vcc_lo, v13, v13
	.loc	1 841 48                        ; attention.py:841:48
	v_fma_f32 v13, -v30, v32, v14
	v_fmac_f32_e32 v20, v40, v21
	.loc	1 841 19 is_stmt 0              ; attention.py:841:19
	v_cndmask_b32_e64 v15, 0, v15, s5
	.loc	1 846 36 is_stmt 1              ; attention.py:846:36
	v_mov_b16_e32 v39.l, v12.h
	v_cndmask_b16 v11.l, 0x7fff, v24.h, vcc_lo
	.loc	1 841 48                        ; attention.py:841:48
	v_fmac_f32_e32 v32, v13, v31
	v_fma_f32 v10, -v10, v20, v16
	v_div_scale_f32 v16, null, v38, v38, v4
	s_mov_b32 vcc_lo, s6
	.loc	1 846 36                        ; attention.py:846:36
	v_and_b32_e32 v24, 1, v39
	.loc	1 841 48                        ; attention.py:841:48
	v_fma_f32 v14, -v30, v32, v14
	v_div_fmas_f32 v10, v10, v21, v20
	v_div_scale_f32 v21, null, v38, v38, v3
	v_rcp_f32_e32 v20, v16
	s_mov_b32 vcc_lo, s7
	.loc	1 846 36                        ; attention.py:846:36
	v_mov_b16_e32 v29.l, v15.h
	v_mov_b16_e32 v29.h, v39.h
	.loc	1 841 48                        ; attention.py:841:48
	v_div_fmas_f32 v14, v14, v31, v32
	v_div_fixup_f32 v2, v10, v38, v2
	.loc	1 846 36                        ; attention.py:846:36
	v_add3_u32 v10, v12, v24, 0x7fff
	v_cmp_o_f32_e32 vcc_lo, v12, v12
	.loc	1 841 48                        ; attention.py:841:48
	v_rcp_f32_e32 v12, v21
	.loc	1 846 36                        ; attention.py:846:36
	v_and_b32_e32 v29, 1, v29
	.loc	1 841 48                        ; attention.py:841:48
	v_div_fixup_f32 v1, v14, v38, v1
	.loc	1 841 19 is_stmt 0              ; attention.py:841:19
	v_cndmask_b32_e64 v2, 0, v2, s5
	.loc	1 841 48                        ; attention.py:841:48
	v_fma_f32 v14, -v16, v20, 1.0
	.loc	1 846 36 is_stmt 1              ; attention.py:846:36
	v_cndmask_b16 v10.h, 0x7fff, v10.h, vcc_lo
	v_add3_u32 v13, v15, v29, 0x7fff
	v_cmp_o_f32_e32 vcc_lo, v15, v15
	.loc	1 841 19                        ; attention.py:841:19
	v_cndmask_b32_e64 v1, 0, v1, s5
	.loc	1 846 36                        ; attention.py:846:36
	v_mov_b16_e32 v39.l, v2.h
	.loc	1 841 48                        ; attention.py:841:48
	v_fma_f32 v15, -v21, v12, 1.0
	v_fmac_f32_e32 v20, v14, v20
	v_div_scale_f32 v14, s6, v4, v38, v4
	.loc	1 846 36                        ; attention.py:846:36
	v_mov_b16_e32 v24.l, v1.h
	v_mov_b16_e32 v24.h, v39.h
	.loc	1 841 48                        ; attention.py:841:48
	v_dual_fmac_f32 v12, v15, v12 :: v_dual_and_b32 v29, 1, v39
	v_div_scale_f32 v15, s7, v3, v38, v3
	v_mul_f32_e32 v30, v14, v20
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 846 36                        ; attention.py:846:36
	v_and_b32_e32 v24, 1, v24
	v_add3_u32 v29, v2, v29, 0x7fff
	v_cmp_o_f32_e64 s8, v2, v2
	.loc	1 841 48                        ; attention.py:841:48
	v_mul_f32_e32 v2, v15, v12
	v_fma_f32 v31, -v16, v30, v14
	.loc	1 846 36                        ; attention.py:846:36
	v_cndmask_b16 v10.l, 0x7fff, v13.h, vcc_lo
	v_add3_u32 v13, v1, v24, 0x7fff
	v_cndmask_b16 v24.h, 0x7fff, v29.h, s8
	.loc	1 841 48                        ; attention.py:841:48
	v_fma_f32 v29, -v21, v2, v15
	v_fmac_f32_e32 v30, v31, v20
	.loc	1 846 36                        ; attention.py:846:36
	v_cmp_o_f32_e64 s8, v1, v1
	.loc	1 841 48                        ; attention.py:841:48
	s_mov_b32 vcc_lo, s6
	.loc	1 846 36                        ; attention.py:846:36
	v_mov_b16_e32 v32.h, v39.h
	.loc	1 841 48                        ; attention.py:841:48
	v_fmac_f32_e32 v2, v29, v12
	v_fma_f32 v1, -v16, v30, v14
	v_div_scale_f32 v14, null, v38, v38, v6
	.loc	1 846 36                        ; attention.py:846:36
	v_cndmask_b16 v24.l, 0x7fff, v13.h, s8
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 841 48                        ; attention.py:841:48
	v_fma_f32 v15, -v21, v2, v15
	v_div_fmas_f32 v1, v1, v20, v30
	s_mov_b32 vcc_lo, s7
	v_rcp_f32_e32 v16, v14
	v_div_scale_f32 v20, null, v38, v38, v5
	v_div_fmas_f32 v2, v15, v12, v2
	v_div_fixup_f32 v1, v1, v38, v4
	v_div_scale_f32 v21, null, v38, v38, v7
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_rcp_f32_e32 v4, v20
	v_div_fixup_f32 v2, v2, v38, v3
	v_div_scale_f32 v3, null, v38, v38, v8
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fma_f32 v12, -v14, v16, 1.0
	v_div_scale_f32 v30, s6, v5, v38, v5
	v_rcp_f32_e32 v15, v3
	.loc	1 841 19 is_stmt 0              ; attention.py:841:19
	v_cndmask_b32_e64 v2, 0, v2, s5
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(TRANS32_DEP_2)
	.loc	1 841 48                        ; attention.py:841:48
	v_fmac_f32_e32 v16, v12, v16
	v_div_scale_f32 v12, vcc_lo, v6, v38, v6
	v_fma_f32 v13, -v20, v4, 1.0
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 846 36 is_stmt 1              ; attention.py:846:36
	v_mov_b16_e32 v32.l, v2.h
	.loc	1 841 19                        ; attention.py:841:19
	v_cndmask_b32_e64 v1, 0, v1, s5
	.loc	1 841 48 is_stmt 0              ; attention.py:841:48
	v_mul_f32_e32 v29, v12, v16
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_fma_f32 v31, -v3, v15, 1.0
	v_fmac_f32_e32 v4, v13, v4
	v_rcp_f32_e32 v13, v21
	v_fma_f32 v40, -v14, v29, v12
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_dual_fmac_f32 v15, v31, v15 :: v_dual_and_b32 v32, 1, v32
	v_div_scale_f32 v31, s7, v8, v38, v8
	v_mul_f32_e32 v41, v30, v4
	v_fmac_f32_e32 v29, v40, v16
	.loc	1 846 36 is_stmt 1              ; attention.py:846:36
	v_mov_b16_e32 v39.l, v1.h
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 841 48                        ; attention.py:841:48
	v_mul_f32_e32 v44, v31, v15
	v_fma_f32 v42, -v21, v13, 1.0
	v_fma_f32 v40, -v20, v41, v30
	v_fma_f32 v12, -v14, v29, v12
	.loc	1 846 36                        ; attention.py:846:36
	v_and_b32_e32 v43, 1, v39
	.loc	1 841 48                        ; attention.py:841:48
	v_fma_f32 v14, -v3, v44, v31
	v_fmac_f32_e32 v13, v42, v13
	v_fmac_f32_e32 v41, v40, v4
	v_div_scale_f32 v42, s8, v7, v38, v7
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v44, v14, v15
	v_div_fmas_f32 v12, v12, v16, v29
	v_fma_f32 v16, -v20, v41, v30
	s_delay_alu instid0(VALU_DEP_4)
	v_mul_f32_e32 v40, v42, v13
	s_mov_b32 vcc_lo, s6
	v_fma_f32 v3, -v3, v44, v31
	.loc	1 846 36                        ; attention.py:846:36
	v_add3_u32 v14, v2, v32, 0x7fff
	.loc	1 841 48                        ; attention.py:841:48
	v_div_fmas_f32 v4, v16, v4, v41
	s_mov_b32 vcc_lo, s7
	v_fma_f32 v20, -v21, v40, v42
	v_div_fmas_f32 v3, v3, v15, v44
	.loc	1 846 36                        ; attention.py:846:36
	v_cmp_o_f32_e64 s6, v2, v2
	.loc	1 841 48                        ; attention.py:841:48
	v_div_fixup_f32 v4, v4, v38, v5
	s_mov_b32 vcc_lo, s8
	v_div_fixup_f32 v6, v12, v38, v6
	v_div_fixup_f32 v3, v3, v38, v8
	.loc	1 846 36                        ; attention.py:846:36
	v_cndmask_b16 v8.l, 0x7fff, v14.h, s6
	.loc	1 841 48                        ; attention.py:841:48
	v_fmac_f32_e32 v40, v20, v13
	.loc	1 846 36                        ; attention.py:846:36
	v_add3_u32 v12, v1, v43, 0x7fff
	.loc	1 841 19                        ; attention.py:841:19
	v_cndmask_b32_e64 v6, 0, v6, s5
	v_cndmask_b32_e64 v4, 0, v4, s5
	v_cndmask_b32_e64 v2, 0, v3, s5
	.loc	1 841 48 is_stmt 0              ; attention.py:841:48
	v_fma_f32 v5, -v21, v40, v42
	.loc	1 846 36 is_stmt 1              ; attention.py:846:36
	v_mov_b32_e32 v14, 0x5410
	v_mov_b16_e32 v39.l, v6.h
	v_mov_b32_e32 v15, 0x7632
	v_cmp_o_f32_e64 s6, v2, v2
	.loc	1 841 48                        ; attention.py:841:48
	v_div_fmas_f32 v5, v5, v13, v40
	.loc	1 846 36                        ; attention.py:846:36
	v_cmp_o_f32_e32 vcc_lo, v1, v1
	v_and_b32_e32 v3, 1, v39
	v_mov_b16_e32 v39.l, v2.h
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 841 48                        ; attention.py:841:48
	v_div_fixup_f32 v1, v5, v38, v7
	.loc	1 846 36                        ; attention.py:846:36
	v_mov_b16_e32 v5.l, v4.h
	v_mov_b16_e32 v5.h, v39.h
	v_mov_b16_e32 v7.h, v39.h
	v_cndmask_b16 v8.h, 0x7fff, v12.h, vcc_lo
	.loc	1 841 19                        ; attention.py:841:19
	v_cndmask_b32_e64 v1, 0, v1, s5
	.loc	1 846 36                        ; attention.py:846:36
	v_add3_u32 v3, v6, v3, 0x7fff
	v_and_b32_e32 v5, 1, v5
	v_cmp_o_f32_e32 vcc_lo, v6, v6
	v_cmp_o_f32_e64 s5, v4, v4
	v_mov_b16_e32 v7.l, v1.h
	v_cmp_o_f32_e64 s7, v1, v1
	v_add3_u32 v5, v4, v5, 0x7fff
	v_and_b32_e32 v12, 1, v39
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_and_b32_e32 v7, 1, v7
	v_add3_u32 v6, v2, v12, 0x7fff
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_add3_u32 v4, v1, v7, 0x7fff
	v_cndmask_b16 v1.h, 0x7fff, v3.h, vcc_lo
	v_cmp_eq_u32_e32 vcc_lo, 0, v33
	v_cndmask_b16 v2.h, 0x7fff, v6.h, s6
	v_cndmask_b16 v1.l, 0x7fff, v5.h, s5
	v_cndmask_b16 v2.l, 0x7fff, v4.h, s7
	s_mov_b32 s5, 0x76543210
	v_cndmask_b32_e32 v14, 0x1054, v14, vcc_lo
	v_cndmask_b32_e32 v15, 0x3276, v15, vcc_lo
	v_cndmask_b32_e32 v4, v25, v27, vcc_lo
	v_dual_cndmask_b32 v6, v26, v28 :: v_dual_cndmask_b32 v7, v19, v17
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_lshl_or_b32 v14, v14, 8, v14
	v_lshl_or_b32 v15, v15, 8, v15
	v_cndmask_b32_e32 v12, v17, v19, vcc_lo
	v_cndmask_b32_e32 v13, v9, v18, vcc_lo
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_dual_cndmask_b32 v9, v18, v9 :: v_dual_and_b32 v14, 0x540054, v14
	v_dual_cndmask_b32 v16, v11, v22 :: v_dual_and_b32 v15, 0x760076, v15
	v_cndmask_b32_e32 v11, v22, v11, vcc_lo
	v_dual_cndmask_b32 v17, v10, v23 :: v_dual_cndmask_b32 v10, v23, v10
	v_dual_cndmask_b32 v19, v2, v8 :: v_dual_cndmask_b32 v2, v8, v2
	v_lshl_or_b32 v8, v14, 4, v14
	v_lshl_or_b32 v14, v15, 4, v15
	v_dual_cndmask_b32 v18, v1, v24 :: v_dual_cndmask_b32 v1, v24, v1
	v_cndmask_b32_e32 v3, v27, v25, vcc_lo
	v_cndmask_b32_e32 v5, v28, v26, vcc_lo
	v_permlanex16_b32 v4, v4, s5, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v6, v6, s5, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v12, v12, s5, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v9, v9, s5, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v11, v11, s5, 0xfedcba98 op_sel:[1,0]
	v_and_b32_e32 v15, 0x5040504, v8
	v_and_b32_e32 v20, 0x7060706, v14
	v_permlanex16_b32 v14, v10, s5, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v21, v1, s5, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v22, v2, s5, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v1, v4, v3, v15
	v_perm_b32 v2, v4, v3, v20
	v_perm_b32 v3, v6, v5, v15
	v_perm_b32 v4, v6, v5, v20
	v_perm_b32 v5, v12, v7, v15
	v_perm_b32 v6, v12, v7, v20
	v_perm_b32 v7, v9, v13, v15
	v_perm_b32 v8, v9, v13, v20
	v_perm_b32 v9, v11, v16, v15
	v_perm_b32 v10, v11, v16, v20
	v_perm_b32 v11, v14, v17, v15
	v_perm_b32 v12, v14, v17, v20
	.loc	1 846 17 is_stmt 0              ; attention.py:846:17
	v_add_lshl_u32 v17, v36, v37, 1
	.loc	1 844 24 is_stmt 1              ; attention.py:844:24
	s_and_b32 vcc_lo, s1, s4
	.loc	1 846 36                        ; attention.py:846:36
	v_perm_b32 v13, v21, v18, v15
	v_perm_b32 v14, v21, v18, v20
	.loc	1 846 17 is_stmt 0              ; attention.py:846:17
	v_add_lshl_u32 v18, v36, v35, 1
	v_cndmask_b32_e32 v0, 0x80000000, v0, vcc_lo
	.loc	1 844 24 is_stmt 1              ; attention.py:844:24
	s_and_b32 vcc_lo, s1, s3
	.loc	1 846 36                        ; attention.py:846:36
	v_perm_b32 v15, v22, v19, v15
	v_perm_b32 v16, v22, v19, v20
	.loc	1 846 17 is_stmt 0              ; attention.py:846:17
	v_add_lshl_u32 v19, v36, v34, 1
	v_cndmask_b32_e32 v17, 0x80000000, v17, vcc_lo
	.loc	1 844 24 is_stmt 1              ; attention.py:844:24
	s_and_b32 vcc_lo, s1, s2
	.loc	1 846 17                        ; attention.py:846:17
	v_cndmask_b32_e32 v18, 0x80000000, v18, vcc_lo
	.loc	1 844 24                        ; attention.py:844:24
	s_and_b32 vcc_lo, s1, s0
	.loc	1 846 17                        ; attention.py:846:17
	v_cndmask_b32_e32 v19, 0x80000000, v19, vcc_lo
	s_clause 0x3
	buffer_store_b128 v[1:4], v0, s[24:27], 0 offen
	buffer_store_b128 v[5:8], v17, s[24:27], 0 offen
	buffer_store_b128 v[9:12], v18, s[24:27], 0 offen
	buffer_store_b128 v[13:16], v19, s[24:27], 0 offen
	.loc	1 502 5                         ; attention.py:502:5
	s_nop 0
	s_sendmsg sendmsg(MSG_DEALLOC_VGPRS)
	s_endpgm
.Ltmp39:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_attention_fwd_bf16xint4_bool_local_bfloat16_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn16_w4_s1_ds1
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
		.amdhsa_next_free_vgpr 163
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
	.size	amd_strix_halo_gfx1151_attention_fwd_bf16xint4_bool_local_bfloat16_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn16_w4_s1_ds1, .Lfunc_end0-amd_strix_halo_gfx1151_attention_fwd_bf16xint4_bool_local_bfloat16_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn16_w4_s1_ds1
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xint4_bool_local_bfloat16_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn16_w4_s1_ds1.num_vgpr, 163
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xint4_bool_local_bfloat16_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn16_w4_s1_ds1.num_agpr, 0
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xint4_bool_local_bfloat16_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn16_w4_s1_ds1.numbered_sgpr, 49
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xint4_bool_local_bfloat16_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn16_w4_s1_ds1.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xint4_bool_local_bfloat16_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn16_w4_s1_ds1.private_seg_size, 0
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xint4_bool_local_bfloat16_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn16_w4_s1_ds1.uses_vcc, 1
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xint4_bool_local_bfloat16_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn16_w4_s1_ds1.uses_flat_scratch, 0
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xint4_bool_local_bfloat16_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn16_w4_s1_ds1.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xint4_bool_local_bfloat16_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn16_w4_s1_ds1.has_recursion, 0
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xint4_bool_local_bfloat16_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn16_w4_s1_ds1.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 10776
; TotalNumSgprs: 51
; NumVgprs: 163
; ScratchSize: 0
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 20
; NumSGPRsForWavesPerEU: 51
; NumVGPRsForWavesPerEU: 163
; Occupancy: 9
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
	.quad	.Ltmp19-.Lfunc_begin0
	.quad	.Ltmp20-.Lfunc_begin0
	.quad	.Ltmp21-.Lfunc_begin0
	.quad	.Ltmp22-.Lfunc_begin0
	.quad	.Ltmp23-.Lfunc_begin0
	.quad	.Ltmp24-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges1:
	.quad	.Ltmp1-.Lfunc_begin0
	.quad	.Ltmp2-.Lfunc_begin0
	.quad	.Ltmp3-.Lfunc_begin0
	.quad	.Ltmp4-.Lfunc_begin0
	.quad	.Ltmp5-.Lfunc_begin0
	.quad	.Ltmp6-.Lfunc_begin0
	.quad	.Ltmp9-.Lfunc_begin0
	.quad	.Ltmp10-.Lfunc_begin0
	.quad	.Ltmp11-.Lfunc_begin0
	.quad	.Ltmp12-.Lfunc_begin0
	.quad	.Ltmp13-.Lfunc_begin0
	.quad	.Ltmp14-.Lfunc_begin0
	.quad	.Ltmp15-.Lfunc_begin0
	.quad	.Ltmp16-.Lfunc_begin0
	.quad	.Ltmp21-.Lfunc_begin0
	.quad	.Ltmp22-.Lfunc_begin0
	.quad	.Ltmp23-.Lfunc_begin0
	.quad	.Ltmp24-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges2:
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
	.quad	0
	.quad	0
.Ldebug_ranges3:
	.quad	.Ltmp25-.Lfunc_begin0
	.quad	.Ltmp26-.Lfunc_begin0
	.quad	.Ltmp27-.Lfunc_begin0
	.quad	.Ltmp28-.Lfunc_begin0
	.quad	.Ltmp29-.Lfunc_begin0
	.quad	.Ltmp30-.Lfunc_begin0
	.quad	.Ltmp31-.Lfunc_begin0
	.quad	.Ltmp32-.Lfunc_begin0
	.quad	.Ltmp37-.Lfunc_begin0
	.quad	.Ltmp38-.Lfunc_begin0
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
	.asciz	"amd_strix_halo_gfx1151_attention_fwd_bf16xint4_bool_local_bfloat16_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn16_w4_s1_ds1"                        ; string offset=88 ; amd_strix_halo_gfx1151_attention_fwd_bf16xint4_bool_local_bfloat16_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn16_w4_s1_ds1
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
    .name:           amd_strix_halo_gfx1151_attention_fwd_bf16xint4_bool_local_bfloat16_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn16_w4_s1_ds1
    .private_segment_fixed_size: 0
    .sgpr_count:     51
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_attention_fwd_bf16xint4_bool_local_bfloat16_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn16_w4_s1_ds1.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     163
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
