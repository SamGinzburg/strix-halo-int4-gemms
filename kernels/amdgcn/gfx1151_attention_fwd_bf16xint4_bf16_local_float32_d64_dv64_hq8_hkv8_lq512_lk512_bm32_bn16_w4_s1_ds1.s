	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_attention_fwd_bf16xint4_bf16_local_float32_d64_dv64_hq8_hkv8_lq512_lk512_bm32_bn16_w4_s1_ds1                          ; -- Begin function amd_strix_halo_gfx1151_attention_fwd_bf16xint4_bf16_local_float32_d64_dv64_hq8_hkv8_lq512_lk512_bm32_bn16_w4_s1_ds1
	.p2align	8
	.type	amd_strix_halo_gfx1151_attention_fwd_bf16xint4_bf16_local_float32_d64_dv64_hq8_hkv8_lq512_lk512_bm32_bn16_w4_s1_ds1,@function
amd_strix_halo_gfx1151_attention_fwd_bf16xint4_bf16_local_float32_d64_dv64_hq8_hkv8_lq512_lk512_bm32_bn16_w4_s1_ds1:                                 ; @amd_strix_halo_gfx1151_attention_fwd_bf16xint4_bf16_local_float32_d64_dv64_hq8_hkv8_lq512_lk512_bm32_bn16_w4_s1_ds1
.Lfunc_begin0:
	.file	1 "<repo>/src/amd_strix_halo_kernels" "attention.py"
	.loc	1 502 0                         ; attention.py:502:0
	.cfi_sections .debug_frame
	.cfi_startproc
; %bb.0:
	s_clause 0x1
	s_load_b64 s[34:35], s[0:1], 0x5c
	s_load_b64 s[20:21], s[0:1], 0x0
	v_dual_mov_b32 v8, 0 :: v_dual_and_b32 v17, 7, v0
.Ltmp0:
	.loc	1 570 31 prologue_end           ; attention.py:570:31
	v_lshrrev_b32_e32 v4, 3, v0
	.loc	1 564 19                        ; attention.py:564:19
	s_lshl_b32 s18, s2, 5
	.loc	1 597 26                        ; attention.py:597:26
	s_lshl_b32 s19, s3, 9
	s_delay_alu instid0(VALU_DEP_2)
	v_dual_mov_b32 v6, v8 :: v_dual_lshlrev_b32 v1, 3, v17
	.loc	1 598 26                        ; attention.py:598:26
	s_add_i32 s15, s18, s19
	s_mov_b32 s23, 0x31027000
	s_mov_b32 s22, 0x7ffffffe
	s_clause 0x1
	s_load_b64 s[12:13], s[0:1], 0x78
	s_load_b64 s[16:17], s[0:1], 0x38
	.loc	1 599 26                        ; attention.py:599:26
	v_lshlrev_b32_e32 v10, 1, v0
	v_dual_mov_b32 v14, v8 :: v_dual_lshlrev_b32 v9, 4, v0
	v_dual_mov_b32 v7, v8 :: v_dual_and_b32 v62, 15, v0
	.loc	1 570 31                        ; attention.py:570:31
	v_and_b32_e32 v63, 64, v0
	v_dual_mov_b32 v5, v8 :: v_dual_and_b32 v66, 0x7c, v0
	.loc	1 598 26                        ; attention.py:598:26
	s_waitcnt lgkmcnt(0)
	v_mad_u64_u32 v[58:59], null, s34, v4, v[1:2]
	.loc	1 601 61                        ; attention.py:601:61
	v_cmp_gt_i32_e32 vcc_lo, s34, v1
	.loc	1 598 26                        ; attention.py:598:26
	s_lshl_b32 s4, s34, 4
	.loc	1 599 26                        ; attention.py:599:26
	s_and_b32 s21, s21, 0xffff
	.loc	1 598 79                        ; attention.py:598:79
	v_and_b32_e32 v64, 16, v0
	v_dual_mov_b32 v16, v8 :: v_dual_and_b32 v65, 32, v0
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 598 26 is_stmt 0              ; attention.py:598:26
	v_mad_u64_u32 v[2:3], null, s34, s15, v[58:59]
	.loc	1 570 21 is_stmt 1              ; attention.py:570:21
	v_or_b32_e32 v3, s18, v4
	.loc	1 613 39                        ; attention.py:613:39
	s_sub_i32 s5, s18, s12
	v_mov_b32_e32 v13, v8
	v_mov_b32_e32 v11, v8
	v_mov_b32_e32 v126, v8
	.loc	1 601 23                        ; attention.py:601:23
	v_cmp_gt_i32_e64 s2, 0x200, v3
	v_dual_mov_b32 v4, v8 :: v_dual_lshlrev_b32 v1, 1, v2
	.loc	1 599 26                        ; attention.py:599:26
	v_add_lshl_u32 v2, v2, s4, 1
	.loc	1 616 17                        ; attention.py:616:17
	s_add_i32 s4, s18, s13
	.loc	1 601 22                        ; attention.py:601:22
	s_and_b32 s2, s2, vcc_lo
	v_mov_b32_e32 v3, v8
	.loc	1 599 26                        ; attention.py:599:26
	v_cndmask_b32_e64 v1, 0x80000000, v1, s2
	v_cndmask_b32_e64 v2, 0x80000000, v2, s2
	s_load_b32 s2, s[0:1], 0x80
	s_clause 0x1
	buffer_load_b128 v[18:21], v1, s[20:23], 0 offen
	buffer_load_b128 v[22:25], v2, s[20:23], 0 offen
	v_mov_b32_e32 v1, v8
	v_dual_mov_b32 v15, v8 :: v_dual_and_b32 v26, 0x70, v10
	v_mov_b32_e32 v2, v8
	v_dual_mov_b32 v10, v8 :: v_dual_lshlrev_b32 v59, 2, v62
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_xor_b32_e32 v26, v9, v26
	v_mov_b32_e32 v12, v8
	v_mov_b32_e32 v9, v8
	v_add_nc_u32_e32 v67, 0, v26
	s_waitcnt vmcnt(1)
	ds_store_b128 v67, v[18:21]
	s_waitcnt vmcnt(0)
	ds_store_b128 v67, v[22:25] offset:2048
	.loc	1 616 17                        ; attention.py:616:17
	s_waitcnt lgkmcnt(0)
	s_add_i32 s4, s4, s2
	.loc	1 613 39                        ; attention.py:613:39
	s_add_i32 s5, s5, s2
	.loc	1 616 17                        ; attention.py:616:17
	s_add_i32 s4, s4, 32
	.loc	1 613 25                        ; attention.py:613:25
	s_max_i32 s5, s5, 0
	.loc	1 614 25                        ; attention.py:614:25
	s_min_i32 s4, s4, 0x200
	.loc	1 618 33                        ; attention.py:618:33
	s_and_b32 s33, s5, 0x7ffffff0
	.loc	1 619 35                        ; attention.py:619:35
	s_add_i32 s4, s4, 15
	.loc	1 599 26                        ; attention.py:599:26
	s_waitcnt lgkmcnt(0)
	.loc	1 619 34                        ; attention.py:619:34
	s_ashr_i32 s6, s4, 31
	.loc	1 599 26                        ; attention.py:599:26
	s_barrier
	.loc	1 619 34                        ; attention.py:619:34
	s_lshr_b32 s6, s6, 28
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_add_i32 s4, s4, s6
	.loc	1 619 33 is_stmt 0              ; attention.py:619:33
	s_and_b32 s40, s4, -16
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 707 13 is_stmt 1              ; attention.py:707:13
	s_cmp_ge_i32 s33, s40
	s_cbranch_scc1 .LBB0_3
; %bb.1:                                ; %.lr.ph
	.loc	1 570 31                        ; attention.py:570:31
	v_lshrrev_b32_e32 v5, 2, v66
	.loc	1 599 26                        ; attention.py:599:26
	v_lshlrev_b32_e32 v6, 4, v17
	s_clause 0x2
	s_load_b128 s[4:7], s[0:1], 0x64
	s_load_b128 s[8:11], s[0:1], 0x8
	s_load_b128 s[24:27], s[0:1], 0x28
	.loc	1 566 23                        ; attention.py:566:23
	s_ashr_i32 s1, s3, 31
	v_and_b32_e32 v12, 24, v0
	.loc	1 570 21                        ; attention.py:570:21
	v_or_b32_e32 v3, s18, v5
	.loc	1 599 26                        ; attention.py:599:26
	v_lshl_or_b32 v68, v62, 7, v6
	.loc	1 566 23                        ; attention.py:566:23
	s_lshr_b32 s1, s1, 29
	v_dual_mov_b32 v126, 0 :: v_dual_lshlrev_b32 v49, 2, v65
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 573 27                        ; attention.py:573:27
	v_add_nc_u32_e32 v7, s2, v3
	.loc	1 566 23                        ; attention.py:566:23
	s_add_i32 s2, s3, s1
	.loc	1 601 23                        ; attention.py:601:23
	v_cmp_gt_i32_e64 s1, 0x200, v3
	.loc	1 599 26                        ; attention.py:599:26
	v_lshl_or_b32 v3, v65, 6, v68
	v_lshrrev_b32_e32 v16, 1, v12
	.loc	1 748 47                        ; attention.py:748:47
	v_subrev_nc_u32_e32 v69, s12, v7
	.loc	1 749 47                        ; attention.py:749:47
	v_add_nc_u32_e32 v70, s13, v7
	.loc	1 567 22                        ; attention.py:567:22
	s_and_b32 s12, s2, -8
	.loc	1 599 26                        ; attention.py:599:26
	v_xad_u32 v7, 0x70, v3, 0
	v_xad_u32 v9, 0x60, v3, 0
	v_xad_u32 v10, 0x50, v3, 0
	ds_load_b128 v[21:24], v7
	ds_load_b128 v[17:20], v9
	v_xad_u32 v7, v3, 48, 0
	.loc	1 567 22                        ; attention.py:567:22
	s_sub_i32 s12, s3, s12
	.loc	1 566 23                        ; attention.py:566:23
	s_ashr_i32 s2, s2, 3
	.loc	1 599 26                        ; attention.py:599:26
	v_xad_u32 v11, v3, 64, 0
	v_xad_u32 v9, v3, 32, 0
	.loc	1 754 27                        ; attention.py:754:27
	s_waitcnt lgkmcnt(0)
	s_mul_i32 s6, s6, s12
	.loc	1 753 27                        ; attention.py:753:27
	s_mul_i32 s2, s5, s2
	.loc	1 599 26                        ; attention.py:599:26
	ds_load_b128 v[29:32], v10
	ds_load_b128 v[25:28], v11
	.loc	1 752 25                        ; attention.py:752:25
	s_add_i32 s43, s6, s2
	.loc	1 599 26                        ; attention.py:599:26
	v_xad_u32 v10, v3, 16, 0
	ds_load_b128 v[37:40], v7
	ds_load_b128 v[33:36], v9
	v_and_b32_e32 v7, 31, v0
	v_cmp_eq_u32_e64 s2, 0, v65
	v_lshl_or_b32 v6, v12, 5, v6
	v_add_nc_u32_e32 v3, 0, v3
	.loc	1 571 21                        ; attention.py:571:21
	v_and_b32_e32 v2, 3, v0
	.loc	1 599 26                        ; attention.py:599:26
	ds_load_b128 v[45:48], v10
	ds_load_b128 v[41:44], v3
	v_lshlrev_b32_e32 v10, 2, v7
	v_cndmask_b32_e64 v11, 0x104, 0, s2
	v_or3_b32 v72, v6, v49, v16
	v_cndmask_b32_e64 v6, 0x84, 0, s2
	v_lshrrev_b32_e32 v54, 5, v63
	v_lshlrev_b32_e32 v7, 4, v7
	v_xor_b32_e32 v11, v11, v10
	v_and_b32_e32 v55, 12, v0
	v_xor_b32_e32 v6, v6, v10
	v_lshrrev_b32_e32 v10, 4, v65
	v_lshlrev_b32_e32 v56, 5, v2
	v_dual_mov_b32 v108, 0xff800000 :: v_dual_lshlrev_b32 v15, 1, v63
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_or_b32_e32 v73, v6, v54
	v_or3_b32 v74, v7, v10, v16
	v_lshlrev_b32_e32 v6, 1, v55
	v_lshl_or_b32 v7, v55, 7, v56
	v_lshl_or_b32 v10, v64, 4, v49
	v_and_b32_e32 v49, 48, v0
	v_lshlrev_b32_e32 v54, 3, v62
	v_or_b32_e32 v71, v11, v15
	.loc	1 771 51                        ; attention.py:771:51
	v_and_b32_e32 v4, 0x70, v0
	v_or3_b32 v75, v7, v10, v6
	v_lshrrev_b32_e32 v7, 1, v49
	v_lshl_or_b32 v10, v49, 5, v54
	v_bfe_i32 v49, v0, 2, 1
	v_lshrrev_b32_e32 v8, 4, v0
	v_xor_b32_e32 v9, 32, v68
	v_lshlrev_b32_e32 v78, 7, v0
	v_xor_b32_e32 v7, v10, v7
	v_dual_mov_b32 v111, 0xff800000 :: v_dual_add_nc_u32 v10, 0, v15
	v_lshlrev_b32_e32 v15, 5, v0
	v_bfe_i32 v0, v0, 0, 1
	v_and_b32_e32 v49, 0x90, v49
	v_lshlrev_b32_e32 v79, 4, v65
	v_lshrrev_b32_e32 v80, 1, v63
	v_and_b32_e32 v15, 0x160, v15
	v_and_b32_e32 v0, 0x90, v0
	v_and_b32_e32 v81, 0x700, v78
	v_lshlrev_b32_e32 v100, 1, v62
	v_add_nc_u32_e32 v97, v10, v7
	v_or3_b32 v78, v49, v79, v15
	v_add_nc_u32_e32 v15, 0, v80
	v_mov_b32_e32 v49, 0
	.loc	1 707 13                        ; attention.py:707:13
	v_add_nc_u32_e32 v1, 0, v65
	v_add_nc_u32_e32 v80, 0, v9
	v_mov_b32_e32 v9, 0
	v_lshrrev_b32_e32 v4, 2, v4
	v_mov_b32_e32 v10, v49
	v_lshl_add_u32 v1, v64, 2, v1
	v_xor_b32_e32 v60, 16, v75
	v_xor_b32_e32 v61, 24, v75
	v_xor_b32_e32 v0, v0, v4
	v_add_nc_u32_e32 v4, 0, v81
	v_add_nc_u32_e32 v99, v1, v100
	v_mov_b32_e32 v1, 0
	v_add_nc_u32_e32 v95, 0, v60
	v_add_nc_u32_e32 v96, 0, v61
	v_add_nc_u32_e32 v101, v4, v0
	.loc	1 571 21                        ; attention.py:571:21
	v_lshlrev_b32_e32 v0, 2, v2
	v_xor_b32_e32 v3, 16, v68
	v_xor_b32_e32 v13, 48, v68
	v_xor_b32_e32 v14, 64, v68
	v_xor_b32_e32 v12, 0x50, v68
	.loc	1 707 13                        ; attention.py:707:13
	v_mad_u64_u32 v[60:61], null, s7, v5, v[0:1]
	v_xor_b32_e32 v50, 0x60, v68
	v_xor_b32_e32 v51, 0x70, v68
	v_xor_b32_e32 v11, 0x208, v71
	v_xor_b32_e32 v52, 4, v72
	v_xor_b32_e32 v53, 8, v72
	v_xor_b32_e32 v57, 12, v72
	v_xor_b32_e32 v16, 0x108, v73
	v_xor_b32_e32 v55, 4, v74
	v_xor_b32_e32 v6, 8, v74
	v_xor_b32_e32 v54, 12, v74
	v_xor_b32_e32 v56, 8, v75
	v_lshl_or_b32 v76, s3, 8, v8
	v_lshlrev_b32_e32 v8, 1, v65
	v_add_nc_u32_e32 v77, 0, v59
	v_xor_b32_e32 v102, 16, v78
	.loc	1 778 24                        ; attention.py:778:24
	v_cmp_gt_i32_e64 s0, s35, v59
	v_add_nc_u32_e32 v79, 0, v3
	v_add_nc_u32_e32 v81, 0, v13
	v_add_nc_u32_e32 v82, 0, v14
	v_add_nc_u32_e32 v83, 0, v12
	v_add_nc_u32_e32 v84, 0, v50
	v_add_nc_u32_e32 v85, 0, v51
	v_add_nc_u32_e32 v86, 0, v11
	v_add_nc_u32_e32 v87, 0, v52
	v_add_nc_u32_e32 v88, 0, v53
	v_add_nc_u32_e32 v89, 0, v57
	v_add_nc_u32_e32 v90, 0, v16
	v_add_nc_u32_e32 v91, 0, v55
	v_add_nc_u32_e32 v92, 0, v6
	v_add_nc_u32_e32 v93, 0, v54
	v_add_nc_u32_e32 v94, 0, v56
	v_add_nc_u32_e32 v100, v15, v100
	v_dual_mov_b32 v11, v49 :: v_dual_add_nc_u32 v102, 0, v102
	v_mov_b32_e32 v12, v49
	v_mov_b32_e32 v13, v49
	v_mov_b32_e32 v14, v49
	v_mov_b32_e32 v15, v49
	v_mov_b32_e32 v16, v49
	v_mov_b32_e32 v2, v49
	v_mov_b32_e32 v3, v49
	v_mov_b32_e32 v4, v49
	v_mov_b32_e32 v5, v49
	v_mov_b32_e32 v6, v49
	v_mov_b32_e32 v7, v49
	.loc	1 571 21                        ; attention.py:571:21
	v_or_b32_e32 v61, 1, v0
	v_or_b32_e32 v103, 2, v0
	v_or_b32_e32 v104, 3, v0
	.loc	1 707 13                        ; attention.py:707:13
	v_add_nc_u32_e32 v105, 1, v60
	v_add_nc_u32_e32 v106, 2, v60
	v_add_nc_u32_e32 v107, 3, v60
	v_dual_mov_b32 v57, 0xff800000 :: v_dual_add_nc_u32 v98, v77, v8
	v_mov_b32_e32 v8, v49
	.loc	1 742 27                        ; attention.py:742:27
	s_mul_f32 s42, s4, 0x3fb8aa3b
	.loc	1 752 25                        ; attention.py:752:25
	s_mul_i32 s4, s7, s18
	s_and_b32 s9, s9, 0xffff
	s_and_b32 s27, s27, 0xffff
	.loc	1 794 21                        ; attention.py:794:21
	s_lshl_b32 s41, s3, 5
	s_add_i32 s43, s43, s4
	s_and_b32 s37, s11, 0xffff
	s_and_b32 s25, s25, 0xffff
	s_mov_b32 s44, 0x76543210
	s_mov_b32 s20, s8
	s_mov_b32 s21, s9
	s_mov_b32 s28, s26
	s_mov_b32 s29, s27
	s_mov_b32 s30, s22
	s_mov_b32 s31, s23
	s_mov_b32 s36, s10
	s_mov_b32 s38, s22
	s_mov_b32 s39, s23
	s_mov_b32 s26, s22
	s_mov_b32 s27, s23
.LBB0_2:                                ; =>This Inner Loop Header: Depth=1
	.loc	1 735 32                        ; attention.py:735:32
	s_add_i32 s2, s33, s19
	.loc	1 708 31                        ; attention.py:708:31
	v_or_b32_e32 v55, s33, v103
	.loc	1 735 32                        ; attention.py:735:32
	s_mul_i32 s2, s2, s34
	.loc	1 708 31                        ; attention.py:708:31
	v_or_b32_e32 v56, s33, v0
	.loc	1 736 32                        ; attention.py:736:32
	v_add_lshl_u32 v50, s2, v58, 1
	.loc	1 708 31                        ; attention.py:708:31
	v_or_b32_e32 v109, s33, v104
	v_or_b32_e32 v110, s33, v61
	.loc	1 752 25                        ; attention.py:752:25
	s_add_i32 s2, s43, s33
	.loc	1 749 30                        ; attention.py:749:30
	v_cmp_le_i32_e64 s3, v55, v70
	.loc	1 736 32                        ; attention.py:736:32
	v_cndmask_b32_e32 v50, 0x80000000, v50, vcc_lo
	.loc	1 761 36                        ; attention.py:761:36
	v_add_lshl_u32 v112, s2, v106, 1
	v_add_lshl_u32 v113, s2, v60, 1
	v_add_lshl_u32 v114, s2, v107, 1
	v_add_lshl_u32 v115, s2, v105, 1
	.loc	1 736 32                        ; attention.py:736:32
	buffer_load_b128 v[51:54], v50, s[20:23], 0 offen
	.loc	1 748 30                        ; attention.py:748:30
	v_cmp_ge_i32_e64 s2, v55, v69
	v_cmp_ge_i32_e64 s4, v56, v69
	.loc	1 749 30                        ; attention.py:749:30
	v_cmp_le_i32_e64 s5, v56, v70
	.loc	1 748 30                        ; attention.py:748:30
	v_cmp_ge_i32_e64 s6, v109, v69
	.loc	1 749 30                        ; attention.py:749:30
	v_cmp_le_i32_e64 s7, v109, v70
	.loc	1 748 30                        ; attention.py:748:30
	v_cmp_ge_i32_e64 s8, v110, v69
	.loc	1 749 30                        ; attention.py:749:30
	v_cmp_le_i32_e64 s9, v110, v70
	.loc	1 749 21 is_stmt 0              ; attention.py:749:21
	s_and_b32 s2, s2, s3
	s_and_b32 s5, s4, s5
	s_and_b32 s3, s6, s7
	s_and_b32 s4, s1, s2
	s_and_b32 s6, s8, s9
	s_and_b32 s2, s1, s5
	s_and_b32 s5, s1, s3
	s_and_b32 s3, s1, s6
	.loc	1 761 36 is_stmt 1              ; attention.py:761:36
	v_cndmask_b32_e64 v55, 0x80000000, v112, s4
	v_cndmask_b32_e64 v110, 0x80000000, v115, s3
	v_cndmask_b32_e64 v56, 0x80000000, v113, s2
	v_cndmask_b32_e64 v109, 0x80000000, v114, s5
	.loc	1 736 32                        ; attention.py:736:32
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 741 30                        ; attention.py:741:30
	v_dual_mov_b32 v50, v49 :: v_dual_add_nc_u32 v125, 0, v68
	.loc	1 766 24                        ; attention.py:766:24
	v_dual_max_f32 v113, v57, v57 :: v_dual_add_nc_u32 v116, 0, v75
	.loc	1 771 36                        ; attention.py:771:36
	s_lshr_b32 s6, s33, 1
	.loc	1 775 32                        ; attention.py:775:32
	v_mov_b16_e32 v112.l, 0
	.loc	1 798 53                        ; attention.py:798:53
	s_lshr_b32 s7, s33, 4
	.loc	1 766 24                        ; attention.py:766:24
	v_dual_max_f32 v114, v108, v108 :: v_dual_add_nc_u32 v115, v77, v63
	.loc	1 798 25                        ; attention.py:798:25
	s_add_i32 s7, s7, s41
	.loc	1 767 25                        ; attention.py:767:25
	v_cmp_neq_f32_e64 s14, 0xff800000, v111
	.loc	1 798 25                        ; attention.py:798:25
	s_mul_i32 s8, s7, s35
	.loc	1 707 13                        ; attention.py:707:13
	s_add_i32 s33, s33, 16
	.loc	1 763 25                        ; attention.py:763:25
	.loc	1 762 35                        ; attention.py:762:35
	v_add_nc_u32_e32 v124, 0, v71
	v_add_nc_u32_e32 v123, 0, v72
	.loc	1 763 25                        ; attention.py:763:25
	v_add_nc_u32_e32 v122, 0, v73
	v_add_nc_u32_e32 v121, 0, v74
	.loc	1 736 32                        ; attention.py:736:32
	s_waitcnt vmcnt(0)
	ds_store_b128 v67, v[51:54]
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 761 36                        ; attention.py:761:36
	s_clause 0x3
	buffer_load_u16 v118, v55, s[28:31], 0 offen
	buffer_load_u16 v117, v110, s[28:31], 0 offen
	buffer_load_u16 v119, v56, s[28:31], 0 offen
	buffer_load_u16 v120, v109, s[28:31], 0 offen
	.loc	1 741 30                        ; attention.py:741:30
	v_dual_mov_b32 v56, v49 :: v_dual_mov_b32 v109, v126
	.loc	1 736 32                        ; attention.py:736:32
	ds_load_b128 v[125:128], v125
	ds_load_b128 v[129:132], v79
	.loc	1 741 30                        ; attention.py:741:30
	v_mov_b32_e32 v51, v49
	v_mov_b32_e32 v52, v49
	v_mov_b32_e32 v53, v49
	v_mov_b32_e32 v54, v49
	v_dual_mov_b32 v55, v49 :: v_dual_add_nc_u32 v110, 0, v78
	v_mov_b32_e32 v57, v56
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_mov_b32_e32 v56, v55
	v_mov_b32_e32 v55, v54
	v_mov_b32_e32 v54, v53
	v_mov_b32_e32 v53, v52
	v_mov_b32_e32 v52, v51
	v_mov_b32_e32 v51, v50
	v_mov_b32_e32 v50, v49
	.loc	1 814 30                        ; attention.py:814:30
	s_waitcnt vmcnt(2)
	v_mov_b16_e32 v117.h, v112.l
	.loc	1 741 30                        ; attention.py:741:30
	s_waitcnt lgkmcnt(0)
	s_delay_alu instid0(VALU_DEP_2)
	v_wmma_f32_16x16x16_bf16 v[50:57], v[125:132], v[41:48], v[50:57]
	.loc	1 736 32                        ; attention.py:736:32
	ds_load_b128 v[125:128], v80
	ds_load_b128 v[129:132], v81
	.loc	1 741 30                        ; attention.py:741:30
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[50:57], v[125:132], v[33:40], v[50:57]
	.loc	1 736 32                        ; attention.py:736:32
	ds_load_b128 v[125:128], v82
	ds_load_b128 v[129:132], v83
	.loc	1 741 30                        ; attention.py:741:30
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[50:57], v[125:132], v[25:32], v[50:57]
	.loc	1 736 32                        ; attention.py:736:32
	ds_load_b128 v[125:128], v84
	ds_load_b128 v[129:132], v85
	.loc	1 762 35                        ; attention.py:762:35
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 741 30                        ; attention.py:741:30
	v_wmma_f32_16x16x16_bf16 v[50:57], v[125:132], v[17:24], v[50:57]
	.loc	1 774 30                        ; attention.py:774:30
	v_add_nc_u32_e32 v125, s6, v76
	.loc	1 761 36                        ; attention.py:761:36
	v_mov_b16_e64 v129.l, v112.l
	v_mov_b16_e64 v130.l, v112.l
	v_mov_b16_e64 v128.l, v112.l
	v_mov_b16_e32 v126.l, v112.l
	v_mov_b16_e32 v127.l, v112.l
	v_cndmask_b16 v131.h, 0xff80, v118.l, s4
	s_waitcnt vmcnt(1)
	v_cndmask_b16 v131.l, 0xff80, v119.l, s2
	s_waitcnt vmcnt(0)
	v_cndmask_b16 v120.h, 0xff80, v120.l, s5
	v_cndmask_b16 v120.l, 0xff80, v117.l, s3
	.loc	1 762 35                        ; attention.py:762:35
	ds_store_b32 v124, v131
	ds_store_b32 v86, v120
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b32 v118, v123
	ds_load_b32 v119, v87
	ds_load_b32 v123, v88
	ds_load_b32 v124, v89
	.loc	1 761 36                        ; attention.py:761:36
	v_mov_b16_e64 v112.h, v131.l
	v_mov_b16_e64 v129.h, v131.h
	v_mov_b16_e64 v130.h, v120.h
	.loc	1 763 25                        ; attention.py:763:25
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 763 34 is_stmt 0              ; attention.py:763:34
	v_cmp_neq_f32_e64 s6, 0xff800000, v112
	.loc	1 761 36 is_stmt 1              ; attention.py:761:36
	v_mov_b16_e32 v112.h, v120.l
	.loc	1 763 34                        ; attention.py:763:34
	v_cmp_neq_f32_e64 s9, 0xff800000, v130
	.loc	1 763 25 is_stmt 0              ; attention.py:763:25
	s_and_b32 s2, s2, s6
	.loc	1 763 34                        ; attention.py:763:34
	v_cmp_neq_f32_e64 s7, 0xff800000, v112
	.loc	1 763 25                        ; attention.py:763:25
	s_and_b32 s5, s5, s9
	v_cndmask_b32_e64 v120, 0, 1, s2
	.loc	1 761 36 is_stmt 1              ; attention.py:761:36
	v_mov_b16_e32 v112.h, v118.l
	v_mov_b16_e32 v126.h, v119.l
	v_and_b32_e32 v119, 0xffff0000, v119
	v_mov_b16_e64 v128.h, v124.l
	v_and_b32_e32 v124, 0xffff0000, v124
	v_mov_b16_e32 v127.h, v123.l
	v_and_b32_e32 v123, 0xffff0000, v123
	.loc	1 762 35                        ; attention.py:762:35
	v_mul_f32_e32 v133, 0x3fb8aa3b, v119
	.loc	1 761 36                        ; attention.py:761:36
	v_and_b32_e32 v118, 0xffff0000, v118
	.loc	1 762 35                        ; attention.py:762:35
	v_mul_f32_e32 v136, 0x3fb8aa3b, v124
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_dual_mul_f32 v134, 0x3fb8aa3b, v112 :: v_dual_mul_f32 v135, 0x3fb8aa3b, v123
	.loc	1 762 25 is_stmt 0              ; attention.py:762:25
	v_fmac_f32_e32 v133, s42, v53
	.loc	1 797 41 is_stmt 1              ; attention.py:797:41
	v_add_lshl_u32 v53, s8, v59, 1
	.loc	1 763 34                        ; attention.py:763:34
	v_cmp_neq_f32_e64 s8, 0xff800000, v129
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	.loc	1 762 35                        ; attention.py:762:35
	v_dual_mul_f32 v123, 0x3fb8aa3b, v128 :: v_dual_fmac_f32 v134, s42, v50
	v_mul_f32_e32 v132, 0x3fb8aa3b, v118
	.loc	1 762 25 is_stmt 0              ; attention.py:762:25
	v_fmac_f32_e32 v136, s42, v57
	.loc	1 763 25 is_stmt 1              ; attention.py:763:25
	s_and_b32 s4, s4, s8
	.loc	1 762 25                        ; attention.py:762:25
	v_fmac_f32_e32 v123, s42, v56
	.loc	1 774 30                        ; attention.py:774:30
	v_mad_u64_u32 v[118:119], null, v125, s35, v[59:60]
	.loc	1 797 41                        ; attention.py:797:41
	v_cndmask_b32_e64 v57, 0x80000000, v53, s0
	.loc	1 763 25                        ; attention.py:763:25
	v_cndmask_b32_e64 v53, 0, 1, s4
	v_cndmask_b32_e64 v119, 0, 1, s5
	.loc	1 762 35                        ; attention.py:762:35
	v_dual_mul_f32 v126, 0x3fb8aa3b, v126 :: v_dual_mul_f32 v127, 0x3fb8aa3b, v127
	.loc	1 762 25 is_stmt 0              ; attention.py:762:25
	v_fmac_f32_e32 v132, s42, v51
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 763 25 is_stmt 1              ; attention.py:763:25
	v_mov_b16_e32 v50.l, v53.l
	v_mov_b16_e32 v51.l, v119.l
	s_and_b32 s3, s3, s7
	.loc	1 762 25                        ; attention.py:762:25
	v_dual_fmac_f32 v126, s42, v52 :: v_dual_fmac_f32 v135, s42, v55
	.loc	1 763 25                        ; attention.py:763:25
	v_mov_b16_e32 v52.l, v120.l
	v_lshlrev_b16 v50.l, 8, v50.l
	v_cndmask_b32_e64 v53, 0, 1, s3
	v_lshlrev_b16 v51.l, 8, v51.l
	.loc	1 762 25                        ; attention.py:762:25
	v_fmac_f32_e32 v127, s42, v54
	.loc	1 775 32                        ; attention.py:775:32
	v_cndmask_b32_e64 v118, 0x80000000, v118, s0
	.loc	1 763 25                        ; attention.py:763:25
	v_or_b16 v50.l, v52.l, v50.l
	.loc	1 797 41                        ; attention.py:797:41
	v_mov_b16_e32 v56.l, v112.l
	.loc	1 763 25                        ; attention.py:763:25
	v_or_b16 v51.l, v53.l, v51.l
	ds_store_b16 v122, v50
	ds_store_b16 v90, v51
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_u16_d16 v50, v93
	ds_load_u16_d16 v51, v121
	ds_load_u16_d16 v52, v91
	ds_load_u16_d16 v53, v92
	.loc	1 764 26                        ; attention.py:764:26
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 814 30                        ; attention.py:814:30
	v_mov_b16_e32 v54.h, v112.l
	v_mov_b16_e32 v50.h, v112.l
	v_mov_b16_e32 v52.h, v112.l
	v_mov_b16_e32 v55.h, v112.l
	v_mov_b16_e32 v51.h, v112.l
	.loc	1 707 13                        ; attention.py:707:13
	s_cmp_lt_i32 s33, s40
	.loc	1 763 25                        ; attention.py:763:25
	v_and_b16 v53.h, 1, v50.l
	v_and_b16 v54.l, 1, v51.l
	v_lshrrev_b16 v51.l, 8, v51.l
	v_and_b16 v55.l, 1, v52.l
	v_lshrrev_b16 v52.l, 8, v52.l
	v_cmp_eq_u16_e64 s6, 1, v53.h
	v_lshrrev_b16 v53.h, 8, v53.l
	v_lshrrev_b16 v50.l, 8, v50.l
	v_and_b16 v51.l, 1, v51.l
	v_and_b16 v52.l, 1, v52.l
	v_and_b16 v53.l, 1, v53.l
	v_and_b16 v53.h, 1, v53.h
	v_and_b16 v50.l, 1, v50.l
	v_cmp_eq_u16_e64 s7, 1, v54.l
	v_cmp_eq_u16_e64 s10, 1, v51.l
	v_cmp_eq_u16_e64 s8, 1, v55.l
	v_cmp_eq_u16_e64 s11, 1, v52.l
	v_cmp_eq_u16_e64 s9, 1, v53.l
	v_cmp_eq_u16_e64 s12, 1, v53.h
	v_cmp_eq_u16_e64 s13, 1, v50.l
	.loc	1 764 26                        ; attention.py:764:26
	v_cndmask_b32_e64 v122, 0xff800000, v134, s7
	v_cndmask_b32_e64 v128, 0xff800000, v123, s6
	v_cndmask_b32_e64 v123, 0xff800000, v132, s10
	v_cndmask_b32_e64 v124, 0xff800000, v126, s8
	v_cndmask_b32_e64 v125, 0xff800000, v133, s11
	v_cndmask_b32_e64 v126, 0xff800000, v127, s9
	v_cndmask_b32_e64 v127, 0xff800000, v135, s12
	v_cndmask_b32_e64 v129, 0xff800000, v136, s13
	ds_store_b64 v116, v[122:123]
	ds_store_b64 v94, v[124:125]
	ds_store_b64 v95, v[126:127]
	ds_store_b64 v96, v[128:129]
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 775 32                        ; attention.py:775:32
	buffer_load_b32 v116, v118, s[36:39], 0 offen
	.loc	1 797 41                        ; attention.py:797:41
	buffer_load_b64 v[130:131], v57, s[24:27], 0 offen
.Ltmp1:
	.file	2 "<triton>/python/triton/language" "standard.py"
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:765:29 ] ]
	v_max3_f32 v53, v122, v123, v124
	v_max3_f32 v57, v125, v126, v127
.Ltmp2:
	.loc	1 764 26                        ; attention.py:764:26
	ds_load_2addr_b64 v[118:121], v97 offset1:32
.Ltmp3:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:765:29 ] ]
	v_max_f32_e32 v132, v128, v129
.Ltmp4:
	.loc	1 815 23                        ; attention.py:815:23
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp5:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:765:29 ] ]
	v_max3_f32 v53, v53, v57, v132
.Ltmp6:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:765:29 ]
	v_permlanex16_b32 v57, v53, s44, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp7:
	.loc	1 766 24                        ; attention.py:766:24
	v_max3_f32 v53, v111, v53, v57
.Ltmp8:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:765:29 ] ]
	v_dual_max_f32 v132, v120, v120 :: v_dual_sub_f32 v57, v122, v53
.Ltmp9:
	.loc	1 768 62                        ; attention.py:768:62
	v_sub_f32_e32 v122, v123, v53
	v_sub_f32_e32 v123, v124, v53
	v_sub_f32_e32 v124, v125, v53
	v_sub_f32_e32 v125, v126, v53
	.loc	1 767 74                        ; attention.py:767:74
	v_dual_sub_f32 v126, v111, v53 :: v_dual_max_f32 v111, v118, v118
	.loc	1 768 49                        ; attention.py:768:49
	v_exp_f32_e32 v57, v57
	v_exp_f32_e32 v122, v122
	v_exp_f32_e32 v123, v123
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 767 61                        ; attention.py:767:61
	v_exp_f32_e32 v126, v126
.Ltmp10:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:765:29 ] ]
	v_max_f32_e32 v111, v111, v132
.Ltmp11:
	.loc	1 768 49                        ; attention.py:768:49
	v_exp_f32_e32 v124, v124
	v_exp_f32_e32 v125, v125
	.loc	1 768 62 is_stmt 0              ; attention.py:768:62
	v_sub_f32_e32 v129, v129, v53
	.loc	1 814 30 is_stmt 1              ; attention.py:814:30
	v_mov_b16_e64 v132.h, v112.l
.Ltmp12:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:765:29 ] ]
	v_max3_f32 v111, v111, v119, v121
.Ltmp13:
	.loc	1 768 62                        ; attention.py:768:62
	v_sub_f32_e32 v128, v128, v53
	.loc	1 768 33 is_stmt 0              ; attention.py:768:33
	v_cndmask_b32_e64 v57, 0, v57, s7
	v_cndmask_b32_e64 v122, 0, v122, s10
	.loc	1 767 25 is_stmt 1              ; attention.py:767:25
	v_cndmask_b32_e64 v126, 0, v126, s14
	.loc	1 768 33                        ; attention.py:768:33
	v_cndmask_b32_e64 v123, 0, v123, s8
	.loc	1 768 49 is_stmt 0              ; attention.py:768:49
	v_exp_f32_e32 v128, v128
	.loc	1 768 33                        ; attention.py:768:33
	v_cndmask_b32_e64 v124, 0, v124, s11
	.loc	1 816 30 is_stmt 1              ; attention.py:816:30
	v_cmp_o_f32_e64 s7, v122, v122
	.loc	1 815 23                        ; attention.py:815:23
	ds_store_b32 v98, v126
	.loc	1 816 30                        ; attention.py:816:30
	v_bfe_u32 v126, v57, 16, 1
	.loc	1 768 33                        ; attention.py:768:33
	v_cndmask_b32_e64 v125, 0, v125, s9
	.loc	1 816 30                        ; attention.py:816:30
	v_cmp_o_f32_e64 s8, v123, v123
	.loc	1 768 49                        ; attention.py:768:49
	v_exp_f32_e32 v129, v129
	.loc	1 816 30                        ; attention.py:816:30
	v_cmp_o_f32_e64 s9, v124, v124
	.loc	1 815 23                        ; attention.py:815:23
	s_waitcnt lgkmcnt(0)
	.loc	1 768 33                        ; attention.py:768:33
	v_cndmask_b32_e64 v128, 0, v128, s6
	.loc	1 816 30                        ; attention.py:816:30
	v_cmp_o_f32_e64 s6, v57, v57
	v_add3_u32 v57, v57, v126, 0x7fff
	v_bfe_u32 v126, v122, 16, 1
	v_cmp_o_f32_e64 s10, v125, v125
	.loc	1 815 23                        ; attention.py:815:23
	s_barrier
	ds_load_b32 v143, v115
	.loc	1 768 33                        ; attention.py:768:33
	v_cndmask_b32_e64 v129, 0, v129, s13
	.loc	1 816 30                        ; attention.py:816:30
	v_add3_u32 v122, v122, v126, 0x7fff
	v_bfe_u32 v126, v123, 16, 1
	s_waitcnt lgkmcnt(0)
	s_barrier
	v_cmp_o_f32_e64 s13, v129, v129
	v_cndmask_b16 v51.l, 0x7fff, v122.h, s7
	v_add3_u32 v123, v123, v126, 0x7fff
	v_bfe_u32 v126, v124, 16, 1
	v_cndmask_b16 v50.l, 0x7fff, v57.h, s6
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cndmask_b16 v52.l, 0x7fff, v123.h, s8
	v_add3_u32 v124, v124, v126, 0x7fff
	v_bfe_u32 v126, v125, 16, 1
	ds_store_b16 v99, v50
	v_cndmask_b16 v54.l, 0x7fff, v124.h, s9
	v_add3_u32 v125, v125, v126, 0x7fff
	.loc	1 815 23                        ; attention.py:815:23
	v_mul_f32_e32 v13, v13, v143
	v_mul_f32_e32 v15, v15, v143
	v_mul_f32_e32 v1, v1, v143
	v_mul_f32_e32 v3, v3, v143
	.loc	1 816 30                        ; attention.py:816:30
	v_cndmask_b16 v55.l, 0x7fff, v125.h, s10
	.loc	1 815 23                        ; attention.py:815:23
	v_mul_f32_e32 v5, v5, v143
	v_mul_f32_e32 v7, v7, v143
	v_mul_f32_e32 v10, v10, v143
	v_mul_f32_e32 v12, v12, v143
	v_mul_f32_e32 v14, v14, v143
	v_mul_f32_e32 v16, v16, v143
	v_mul_f32_e32 v2, v2, v143
	v_mul_f32_e32 v4, v4, v143
	v_mul_f32_e32 v8, v8, v143
	v_mul_f32_e32 v6, v6, v143
	.loc	1 783 76                        ; attention.py:783:76
	s_waitcnt vmcnt(1)
	v_and_b16 v50.l, v116.l, 15
	.loc	1 797 41                        ; attention.py:797:41
	s_waitcnt vmcnt(0)
	v_mov_b16_e64 v112.h, v130.l
	.loc	1 768 62                        ; attention.py:768:62
	v_sub_f32_e32 v127, v127, v53
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 768 49 is_stmt 0              ; attention.py:768:49
	v_exp_f32_e32 v127, v127
	.loc	1 768 33                        ; attention.py:768:33
	v_cndmask_b32_e64 v127, 0, v127, s12
	.loc	1 816 30 is_stmt 1              ; attention.py:816:30
	v_cmp_o_f32_e64 s12, v128, v128
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_bfe_u32 v126, v127, 16, 1
	v_cmp_o_f32_e64 s11, v127, v127
	v_add3_u32 v126, v127, v126, 0x7fff
	v_bfe_u32 v127, v128, 16, 1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b16 v56.h, 0x7fff, v126.h, s11
	v_add3_u32 v127, v128, v127, 0x7fff
	v_bfe_u32 v128, v129, 16, 1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b16 v57.l, 0x7fff, v127.h, s12
	v_add3_u32 v128, v129, v128, 0x7fff
.Ltmp14:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:765:29 ]
	v_mov_b32_e32 v129, v111
.Ltmp15:
	.loc	1 797 41                        ; attention.py:797:41
	v_and_b32_e32 v127, 0xffff0000, v131
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 816 30                        ; attention.py:816:30
	v_cndmask_b16 v57.h, 0x7fff, v128.h, s13
.Ltmp16:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:765:29 ]
	v_mov_b32_dpp v129, v129 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp17:
	.loc	1 816 30                        ; attention.py:816:30
	ds_store_b16 v99, v51 offset:128
	ds_store_b16 v99, v52 offset:256
	ds_store_b16 v99, v54 offset:384
	ds_store_b16 v99, v55 offset:512
	ds_store_b16_d16_hi v99, v56 offset:640
	ds_store_b16 v99, v57 offset:768
	ds_store_b16_d16_hi v99, v57 offset:896
	.loc	1 797 41                        ; attention.py:797:41
	v_mov_b16_e64 v56.h, v131.l
	.loc	1 785 32                        ; attention.py:785:32
	v_lshrrev_b16 v51.l, 4, v116.l
	.loc	1 783 76                        ; attention.py:783:76
	v_and_b16 v52.l, v116.h, 15
.Ltmp18:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:765:29 ] ]
	v_max_f32_e32 v129, v129, v129
.Ltmp19:
	.loc	1 816 30                        ; attention.py:816:30
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 785 32                        ; attention.py:785:32
	v_and_b16 v51.l, v51.l, 15
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
.Ltmp20:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:765:29 ] ]
	v_max_f32_e32 v111, v111, v129
.Ltmp21:
	.loc	1 814 30                        ; attention.py:814:30
	v_mov_b16_e64 v129.h, v112.l
.Ltmp22:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:765:29 ]
	v_mov_b32_e32 v115, v111
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v115, v115 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp23:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:765:29 ] ]
	v_max_f32_e32 v57, v115, v115
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_max_f32_e32 v111, v111, v57
.Ltmp24:
	.loc	1 766 24                        ; attention.py:766:24
	v_max_f32_e32 v57, v113, v111
	v_max_f32_e32 v144, v114, v111
	.loc	1 815 23                        ; attention.py:815:23
	v_mul_f32_e32 v9, v9, v143
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	.loc	1 768 62                        ; attention.py:768:62
	v_sub_f32_e32 v111, v118, v57
	v_sub_f32_e32 v113, v120, v57
	v_sub_f32_e32 v114, v119, v57
	v_dual_sub_f32 v115, v121, v57 :: v_dual_and_b32 v118, 0xffff0000, v130
	.loc	1 768 49 is_stmt 0              ; attention.py:768:49
	v_exp_f32_e32 v111, v111
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_exp_f32_e32 v113, v113
	v_exp_f32_e32 v114, v114
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(TRANS32_DEP_3)
	v_exp_f32_e32 v115, v115
	.loc	1 768 33                        ; attention.py:768:33
	v_cndmask_b32_e64 v111, 0, v111, s2
	v_cndmask_b32_e64 v113, 0, v113, s3
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_cndmask_b32_e64 v114, 0, v114, s4
	v_cndmask_b32_e64 v115, 0, v115, s5
	.loc	1 786 38 is_stmt 1              ; attention.py:786:38
	v_cmp_lt_u16_e64 s2, 7, v50.l
	v_cmp_lt_u16_e64 s3, 7, v52.l
.Ltmp25:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:769:24 ] ]
	v_add_f32_e32 v111, v111, v113
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_add_f32_e32 v113, v114, v115
.Ltmp26:
	.loc	1 775 32                        ; attention.py:775:32
	v_mov_b16_e32 v114.l, v116.h
	v_lshrrev_b32_e32 v115, 24, v116
.Ltmp27:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:769:24 ] ]
	v_add_f32_e32 v111, v111, v113
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp28:
	.loc	1 775 32                        ; attention.py:775:32
	v_bfe_i32 v120, v114, 0, 8
	v_bfe_i32 v121, v115, 0, 8
	.loc	1 787 56                        ; attention.py:787:56
	v_or_b16 v114.l, v51.l, -16
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp29:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:769:24 ]
	v_mov_b32_e32 v113, v111
	v_mov_b32_dpp v113, v113 row_xmask:2 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_3)
.Ltmp30:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:769:24 ] ]
	v_add_f32_e32 v126, v111, v113
.Ltmp31:
	.loc	1 775 32                        ; attention.py:775:32
	v_bfe_i32 v111, v116, 0, 8
	v_lshrrev_b32_e32 v113, 8, v116
	.loc	1 785 32                        ; attention.py:785:32
	v_lshrrev_b32_e32 v116, 20, v116
	.loc	1 787 39                        ; attention.py:787:39
	v_mov_b16_e32 v54.l, v111.l
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 775 32                        ; attention.py:775:32
	v_bfe_i32 v119, v113, 0, 8
	.loc	1 785 32                        ; attention.py:785:32
	v_lshrrev_b16 v55.l, 4, v113.l
	.loc	1 783 76                        ; attention.py:783:76
	v_and_b16 v111.l, v113.l, 15
	v_and_b16 v113.l, v115.l, 15
	.loc	1 787 39                        ; attention.py:787:39
	v_cmp_gt_i16_e64 s4, 0, v54.l
	.loc	1 786 29                        ; attention.py:786:29
	v_cndmask_b16 v54.l, 0, -16, s2
	.loc	1 785 32                        ; attention.py:785:32
	v_lshrrev_b16 v113.h, 4, v115.l
	.loc	1 787 39                        ; attention.py:787:39
	v_mov_b16_e32 v115.l, v119.l
	.loc	1 785 32                        ; attention.py:785:32
	v_and_b16 v55.l, v55.l, 15
	.loc	1 786 38                        ; attention.py:786:38
	v_cmp_lt_u16_e64 s2, 7, v111.l
	.loc	1 786 29 is_stmt 0              ; attention.py:786:29
	v_or_b16 v117.l, v50.l, v54.l
	v_cndmask_b16 v50.l, 0, -16, s3
	.loc	1 785 32 is_stmt 1              ; attention.py:785:32
	v_and_b16 v111.h, v116.l, 15
	.loc	1 787 39                        ; attention.py:787:39
	v_mov_b16_e32 v116.l, v120.l
	v_mov_b16_e32 v54.l, v121.l
	.loc	1 787 30 is_stmt 0              ; attention.py:787:30
	v_cndmask_b16 v119.l, v51.l, v114.l, s4
	.loc	1 786 38 is_stmt 1              ; attention.py:786:38
	v_cmp_lt_u16_e64 s3, 7, v113.l
	.loc	1 787 39                        ; attention.py:787:39
	v_cmp_gt_i16_e64 s4, 0, v115.l
	.loc	1 787 56 is_stmt 0              ; attention.py:787:56
	v_or_b16 v114.h, v55.l, -16
	.loc	1 786 29 is_stmt 1              ; attention.py:786:29
	v_or_b16 v115.l, v52.l, v50.l
	v_cndmask_b16 v50.l, 0, -16, s2
	.loc	1 787 56                        ; attention.py:787:56
	v_or_b16 v51.l, v111.h, -16
	v_or_b16 v114.l, v113.h, -16
	.loc	1 787 39 is_stmt 0              ; attention.py:787:39
	v_cmp_gt_i16_e64 s5, 0, v116.l
	v_cmp_gt_i16_e64 s2, 0, v54.l
	.loc	1 786 29 is_stmt 1              ; attention.py:786:29
	v_cndmask_b16 v52.l, 0, -16, s3
	.loc	1 814 31                        ; attention.py:814:31
	v_bfe_i32 v116, v117, 0, 16
	v_bfe_i32 v119, v119, 0, 16
	.loc	1 787 30                        ; attention.py:787:30
	v_cndmask_b16 v54.l, v55.l, v114.h, s4
	.loc	1 786 29                        ; attention.py:786:29
	v_or_b16 v50.l, v111.l, v50.l
	.loc	1 787 30                        ; attention.py:787:30
	v_cndmask_b16 v51.l, v111.h, v51.l, s5
	.loc	1 786 29                        ; attention.py:786:29
	v_or_b16 v52.l, v113.l, v52.l
	.loc	1 787 30                        ; attention.py:787:30
	v_cndmask_b16 v55.l, v113.h, v114.l, s2
	.loc	1 814 31                        ; attention.py:814:31
	v_bfe_i32 v111, v115, 0, 16
	v_cvt_f32_i32_e32 v115, v116
	v_cvt_f32_i32_e32 v116, v119
	v_bfe_i32 v113, v54, 0, 16
	v_bfe_i32 v114, v50, 0, 16
	v_bfe_i32 v119, v51, 0, 16
	v_cvt_f32_i32_e32 v111, v111
	v_mul_f32_e32 v115, v112, v115
	v_mul_f32_e32 v112, v112, v116
	v_bfe_i32 v116, v55, 0, 16
	v_bfe_i32 v128, v52, 0, 16
	v_cvt_f32_i32_e32 v113, v113
	v_cvt_f32_i32_e32 v114, v114
	v_cvt_f32_i32_e32 v119, v119
	v_cvt_f32_i32_e32 v116, v116
	v_mul_f32_e32 v111, v56, v111
	v_cvt_f32_i32_e32 v128, v128
	v_mul_f32_e32 v113, v118, v113
	v_mul_f32_e32 v114, v118, v114
	v_mul_f32_e32 v56, v56, v119
	v_mul_f32_e32 v116, v127, v116
	v_mul_f32_e32 v127, v127, v128
	.loc	1 814 30 is_stmt 0              ; attention.py:814:30
	v_mov_b16_e32 v55.l, v112.h
	v_mov_b16_e32 v54.l, v111.h
	.loc	1 816 30 is_stmt 1              ; attention.py:816:30
	ds_load_u16_d16 v118, v100
	ds_load_u16_d16 v119, v100 offset:128
	ds_load_u16_d16 v120, v100 offset:256
	ds_load_u16_d16 v121, v100 offset:384
	ds_load_u16_d16 v122, v100 offset:512
	ds_load_u16_d16 v123, v100 offset:640
	ds_load_u16_d16 v124, v100 offset:768
	ds_load_u16_d16 v125, v100 offset:896
	.loc	1 814 30                        ; attention.py:814:30
	v_mov_b16_e32 v117.l, v115.h
	v_mov_b16_e32 v50.l, v113.h
	v_mov_b16_e32 v51.l, v114.h
	v_and_b32_e32 v55, 1, v55
	v_and_b32_e32 v54, 1, v54
	v_mov_b16_e32 v52.l, v56.h
	v_mov_b16_e64 v132.l, v116.h
	v_mov_b16_e64 v129.l, v127.h
	v_and_b32_e32 v117, 1, v117
	v_and_b32_e32 v50, 1, v50
	v_and_b32_e32 v51, 1, v51
	v_cmp_o_f32_e64 s3, v112, v112
	v_cmp_o_f32_e64 s4, v111, v111
	v_add3_u32 v55, v112, v55, 0x7fff
	v_add3_u32 v54, v111, v54, 0x7fff
	v_and_b32_e32 v52, 1, v52
	v_and_b32_e32 v111, 1, v132
	v_and_b32_e32 v112, 1, v129
	v_cmp_o_f32_e64 s2, v115, v115
	v_cmp_o_f32_e64 s5, v113, v113
	v_cmp_o_f32_e64 s6, v114, v114
	v_add3_u32 v115, v115, v117, 0x7fff
	v_add3_u32 v50, v113, v50, 0x7fff
	v_add3_u32 v51, v114, v51, 0x7fff
	v_cmp_o_f32_e64 s7, v56, v56
	v_cmp_o_f32_e64 s8, v116, v116
	v_cmp_o_f32_e64 s9, v127, v127
	v_add3_u32 v52, v56, v52, 0x7fff
	v_add3_u32 v56, v116, v111, 0x7fff
	v_add3_u32 v111, v127, v112, 0x7fff
	v_cndmask_b16 v55.h, 0x7fff, v55.h, s3
	v_cndmask_b16 v55.l, 0x7fff, v115.h, s2
	v_cndmask_b16 v50.l, 0x7fff, v54.h, s4
	v_cndmask_b16 v54.h, 0x7fff, v50.h, s5
	v_cndmask_b16 v54.l, 0x7fff, v51.h, s6
	v_cndmask_b16 v50.h, 0x7fff, v52.h, s7
	v_cndmask_b16 v51.h, 0x7fff, v56.h, s8
	v_cndmask_b16 v51.l, 0x7fff, v111.h, s9
	.loc	1 816 30                        ; attention.py:816:30
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v118, v100 offset:64
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v119, v100 offset:192
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v120, v100 offset:320
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v121, v100 offset:448
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v122, v100 offset:576
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v123, v100 offset:704
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v124, v100 offset:832
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v125, v100 offset:960
	.loc	1 814 30                        ; attention.py:814:30
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_2addr_b32 v101, v55, v54 offset1:8
	ds_store_2addr_b32 v101, v50, v51 offset0:16 offset1:24
.Ltmp32:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:769:24 ]
	v_mov_b32_e32 v51, v126
.Ltmp33:
	.loc	1 814 30                        ; attention.py:814:30
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[127:130], v110
	ds_load_b128 v[135:138], v110 offset:1024
	ds_load_b128 v[131:134], v102
	ds_load_b128 v[139:142], v102 offset:1024
	.loc	1 767 25                        ; attention.py:767:25
	v_cmp_neq_f32_e64 s2, 0xff800000, v108
.Ltmp34:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:769:24 ]
	v_mov_b32_dpp v51, v51 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp35:
	.loc	1 767 74                        ; attention.py:767:74
	v_sub_f32_e32 v145, v108, v144
	v_dual_mov_b32 v111, v53 :: v_dual_mov_b32 v108, v144
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp36:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:769:24 ] ]
	v_add_f32_e32 v126, v126, v51
.Ltmp37:
	.loc	1 767 61                        ; attention.py:767:61
	v_exp_f32_e32 v50, v145
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	.loc	1 767 25 is_stmt 0              ; attention.py:767:25
	v_cndmask_b32_e64 v50, 0, v50, s2
	.loc	1 815 23 is_stmt 1              ; attention.py:815:23
	v_mul_f32_e32 v11, v11, v143
	.loc	1 816 23                        ; attention.py:816:23
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[1:8], v[135:142], v[118:125], v[1:8]
	.loc	1 817 23                        ; attention.py:817:23
	v_fmac_f32_e32 v126, v109, v50
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 816 23                        ; attention.py:816:23
	v_wmma_f32_16x16x16_bf16 v[9:16], v[127:134], v[118:125], v[9:16]
	.loc	1 707 13                        ; attention.py:707:13
	s_cbranch_scc1 .LBB0_2
.LBB0_3:                                ; %._crit_edge
	v_add_nc_u32_e32 v0, 0, v66
	v_add3_u32 v17, 0, v59, v63
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 598 79                        ; attention.py:598:79
	v_lshrrev_b32_e32 v18, 4, v64
	.loc	1 707 13                        ; attention.py:707:13
	ds_store_b32 v0, v126
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b32 v0, v17
	.loc	1 570 31                        ; attention.py:570:31
	v_lshrrev_b32_e32 v17, 2, v63
	.loc	1 598 79                        ; attention.py:598:79
	v_lshrrev_b32_e32 v19, 1, v65
	.loc	1 848 17                        ; attention.py:848:17
	s_and_b32 s17, s17, 0xffff
	s_mov_b32 s19, 0x31027000
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 570 31                        ; attention.py:570:31
	v_or_b32_e32 v17, v17, v62
	.loc	1 598 79                        ; attention.py:598:79
	v_or_b32_e32 v18, v18, v19
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 570 21                        ; attention.py:570:21
	v_or_b32_e32 v19, s18, v17
	.loc	1 598 79                        ; attention.py:598:79
	v_or_b32_e32 v20, 32, v18
	s_mov_b32 s18, 0x7ffffffe
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_4) | instid1(VALU_DEP_3)
	.loc	1 601 23                        ; attention.py:601:23
	v_cmp_gt_i32_e64 s0, 0x200, v19
	.loc	1 841 48                        ; attention.py:841:48
	s_waitcnt lgkmcnt(0)
	v_div_scale_f32 v19, null, v0, v0, v9
	v_div_scale_f32 v22, null, v0, v0, v10
	v_div_scale_f32 v24, null, v0, v0, v11
	v_rcp_f32_e32 v26, v19
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_rcp_f32_e32 v27, v22
	v_div_scale_f32 v21, vcc_lo, v9, v0, v9
	v_rcp_f32_e32 v28, v24
	v_div_scale_f32 v23, s1, v10, v0, v10
	v_div_scale_f32 v29, null, v0, v0, v12
	v_div_scale_f32 v25, s2, v11, v0, v11
	s_delay_alu instid0(TRANS32_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	v_fma_f32 v33, -v19, v26, 1.0
	v_fma_f32 v34, -v22, v27, 1.0
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	v_rcp_f32_e32 v32, v29
	v_fma_f32 v35, -v24, v28, 1.0
	v_div_scale_f32 v39, null, v0, v0, v14
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_dual_fmac_f32 v27, v34, v27 :: v_dual_fmac_f32 v26, v33, v26
	v_div_scale_f32 v31, null, v0, v0, v13
	v_div_scale_f32 v30, s3, v12, v0, v12
	v_mul_f32_e32 v37, v23, v27
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_dual_fmac_f32 v28, v35, v28 :: v_dual_mul_f32 v35, v21, v26
	v_fma_f32 v34, -v29, v32, 1.0
	v_rcp_f32_e32 v33, v31
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_fma_f32 v41, -v22, v37, v23
	v_div_scale_f32 v36, s4, v13, v0, v13
	v_fma_f32 v40, -v19, v35, v21
	v_mul_f32_e32 v38, v25, v28
	v_dual_fmac_f32 v32, v34, v32 :: v_dual_fmac_f32 v37, v41, v27
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v35, v40, v26
	v_fma_f32 v42, -v24, v38, v25
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v34, -v31, v33, 1.0
	v_fma_f32 v19, -v19, v35, v21
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v38, v42, v28
	v_fma_f32 v21, -v22, v37, v23
	v_div_fmas_f32 v19, v19, v26, v35
	s_delay_alu instid0(VALU_DEP_3)
	v_fma_f32 v22, -v24, v38, v25
	v_rcp_f32_e32 v25, v39
	s_mov_b32 vcc_lo, s1
	.loc	1 841 28 is_stmt 0              ; attention.py:841:28
	v_cmp_lt_f32_e64 s1, 0, v0
	.loc	1 841 48                        ; attention.py:841:48
	v_div_fixup_f32 v9, v19, v0, v9
	v_div_fmas_f32 v21, v21, v27, v37
	s_mov_b32 vcc_lo, s2
	v_div_scale_f32 v27, null, v0, v0, v16
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_div_fixup_f32 v10, v21, v0, v10
	v_fma_f32 v19, -v39, v25, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v25, v19, v25
	v_div_fmas_f32 v22, v22, v28, v38
	v_div_scale_f32 v19, s2, v14, v0, v14
	v_mul_f32_e32 v40, v30, v32
	s_mov_b32 vcc_lo, s3
	v_div_fixup_f32 v11, v22, v0, v11
	v_div_scale_f32 v22, null, v0, v0, v15
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fma_f32 v23, -v29, v40, v30
	v_fmac_f32_e32 v33, v34, v33
	v_rcp_f32_e32 v26, v22
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fmac_f32_e32 v40, v23, v32
	v_mul_f32_e32 v24, v36, v33
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v21, -v29, v40, v30
	v_fma_f32 v23, -v31, v24, v36
	v_rcp_f32_e32 v30, v27
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v29, -v22, v26, 1.0
	v_div_fmas_f32 v21, v21, v32, v40
	s_mov_b32 vcc_lo, s4
	v_div_scale_f32 v32, null, v0, v0, v2
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_4) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v26, v29, v26
	v_fmac_f32_e32 v24, v23, v33
	v_mul_f32_e32 v23, v19, v25
	v_div_fixup_f32 v12, v21, v0, v12
	v_rcp_f32_e32 v34, v32
	v_fma_f32 v21, -v31, v24, v36
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v28, -v39, v23, v19
	v_fmac_f32_e32 v23, v28, v25
	v_div_scale_f32 v28, s3, v15, v0, v15
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v36, -v32, v34, 1.0
	v_mul_f32_e32 v31, v28, v26
	v_div_fmas_f32 v21, v21, v33, v24
	v_div_scale_f32 v24, null, v0, v0, v1
	s_mov_b32 vcc_lo, s2
	v_div_scale_f32 v35, s2, v1, v0, v1
	v_rcp_f32_e32 v29, v24
	v_div_fixup_f32 v13, v21, v0, v13
	v_fma_f32 v21, -v27, v30, 1.0
	v_fmac_f32_e32 v34, v36, v34
	v_div_scale_f32 v36, s5, v2, v0, v2
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 841 19                        ; attention.py:841:19
	v_cndmask_b32_e64 v13, 0, v13, s1
	.loc	1 841 48                        ; attention.py:841:48
	v_fmac_f32_e32 v30, v21, v30
	v_fma_f32 v19, -v39, v23, v19
	v_div_scale_f32 v21, s4, v16, v0, v16
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v33, -v24, v29, 1.0
	v_div_fmas_f32 v19, v19, v25, v23
	v_fma_f32 v23, -v22, v31, v28
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_mul_f32_e32 v25, v21, v30
	v_fmac_f32_e32 v29, v33, v29
	v_div_scale_f32 v33, null, v0, v0, v3
	v_div_fixup_f32 v14, v19, v0, v14
	s_mov_b32 vcc_lo, s3
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mul_f32_e32 v38, v35, v29
	v_rcp_f32_e32 v37, v33
	v_fmac_f32_e32 v31, v23, v26
	v_fma_f32 v23, -v27, v25, v21
	.loc	1 841 19                        ; attention.py:841:19
	v_cndmask_b32_e64 v14, 0, v14, s1
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 841 48                        ; attention.py:841:48
	v_fma_f32 v19, -v22, v31, v28
	v_fma_f32 v28, -v33, v37, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v37, v28, v37
	v_fmac_f32_e32 v25, v23, v30
	v_mul_f32_e32 v23, v36, v34
	v_fma_f32 v22, -v24, v38, v35
	v_fmac_f32_e32 v38, v22, v29
	v_div_fmas_f32 v19, v19, v26, v31
	s_delay_alu instid0(VALU_DEP_4)
	v_fma_f32 v22, -v32, v23, v36
	v_div_scale_f32 v26, s3, v3, v0, v3
	s_mov_b32 vcc_lo, s4
	v_fma_f32 v24, -v24, v38, v35
	v_fmac_f32_e32 v23, v22, v34
	v_mul_f32_e32 v22, v26, v37
	v_fma_f32 v21, -v27, v25, v21
	v_div_fixup_f32 v15, v19, v0, v15
	v_div_scale_f32 v31, null, v0, v0, v8
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v28, -v33, v22, v26
	v_div_fmas_f32 v21, v21, v30, v25
	v_div_scale_f32 v25, null, v0, v0, v4
	s_mov_b32 vcc_lo, s2
	v_fmac_f32_e32 v22, v28, v37
	v_div_fmas_f32 v24, v24, v29, v38
	v_fma_f32 v27, -v32, v23, v36
	v_rcp_f32_e32 v29, v25
	s_mov_b32 vcc_lo, s5
	v_div_fixup_f32 v16, v21, v0, v16
	v_fma_f32 v19, -v33, v22, v26
	v_div_fmas_f32 v23, v27, v34, v23
	v_div_scale_f32 v21, null, v0, v0, v5
	s_mov_b32 vcc_lo, s3
	v_div_fixup_f32 v1, v24, v0, v1
	v_div_fixup_f32 v2, v23, v0, v2
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_fma_f32 v23, -v25, v29, 1.0
	v_div_fmas_f32 v19, v19, v37, v22
	v_rcp_f32_e32 v22, v21
	v_div_scale_f32 v24, null, v0, v0, v7
	v_fmac_f32_e32 v29, v23, v29
	v_div_scale_f32 v23, null, v0, v0, v6
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_rcp_f32_e32 v28, v24
	v_div_fixup_f32 v3, v19, v0, v3
	v_div_scale_f32 v26, vcc_lo, v4, v0, v4
	v_rcp_f32_e32 v27, v23
	s_delay_alu instid0(TRANS32_DEP_3) | instskip(SKIP_4) | instid1(TRANS32_DEP_3)
	v_fma_f32 v19, -v21, v22, 1.0
	v_rcp_f32_e32 v33, v31
	.loc	1 841 19                        ; attention.py:841:19
	v_cndmask_b32_e64 v15, 0, v15, s1
	v_cndmask_b32_e64 v16, 0, v16, s1
	v_cndmask_b32_e64 v1, 0, v1, s1
	.loc	1 841 48                        ; attention.py:841:48
	v_fma_f32 v35, -v24, v28, 1.0
	.loc	1 841 19                        ; attention.py:841:19
	v_cndmask_b32_e64 v2, 0, v2, s1
	v_cndmask_b32_e64 v3, 0, v3, s1
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 841 48                        ; attention.py:841:48
	v_fma_f32 v32, -v23, v27, 1.0
	v_fmac_f32_e32 v22, v19, v22
	v_div_scale_f32 v19, s2, v5, v0, v5
	v_dual_fmac_f32 v28, v35, v28 :: v_dual_fmac_f32 v27, v32, v27
	v_div_scale_f32 v32, s3, v6, v0, v6
	v_div_scale_f32 v35, s4, v7, v0, v7
	v_fma_f32 v37, -v31, v33, 1.0
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mul_f32_e32 v38, v32, v27
	v_dual_mul_f32 v30, v26, v29 :: v_dual_mul_f32 v39, v35, v28
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_dual_mul_f32 v36, v19, v22 :: v_dual_fmac_f32 v33, v37, v33
	v_div_scale_f32 v37, s5, v8, v0, v8
	v_fma_f32 v34, -v25, v30, v26
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v30, v34, v29
	v_fma_f32 v34, -v21, v36, v19
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v25, -v25, v30, v26
	v_fmac_f32_e32 v36, v34, v22
	v_fma_f32 v34, -v24, v39, v35
	v_mul_f32_e32 v40, v37, v33
	v_fma_f32 v26, -v23, v38, v32
	v_div_fmas_f32 v25, v25, v29, v30
	v_fma_f32 v19, -v21, v36, v19
	v_fmac_f32_e32 v39, v34, v28
	v_fma_f32 v21, -v31, v40, v37
	v_fmac_f32_e32 v38, v26, v27
	s_mov_b32 vcc_lo, s2
	v_div_fixup_f32 v4, v25, v0, v4
	v_div_fmas_f32 v19, v19, v22, v36
	v_fmac_f32_e32 v40, v21, v33
	v_fma_f32 v22, -v23, v38, v32
	v_fma_f32 v21, -v24, v39, v35
	s_mov_b32 vcc_lo, s3
	v_div_fixup_f32 v5, v19, v0, v5
	v_fma_f32 v23, -v31, v40, v37
	v_div_fmas_f32 v22, v22, v27, v38
	s_mov_b32 vcc_lo, s4
	.loc	1 841 19                        ; attention.py:841:19
	v_cndmask_b32_e64 v4, 0, v4, s1
	.loc	1 841 48                        ; attention.py:841:48
	v_div_fmas_f32 v21, v21, v28, v39
	s_mov_b32 vcc_lo, s5
	v_div_fixup_f32 v6, v22, v0, v6
	v_div_fmas_f32 v23, v23, v33, v40
	.loc	1 844 63 is_stmt 1              ; attention.py:844:63
	v_cmp_gt_i32_e32 vcc_lo, s35, v18
	.loc	1 841 48                        ; attention.py:841:48
	v_div_fixup_f32 v7, v21, v0, v7
	.loc	1 841 19 is_stmt 0              ; attention.py:841:19
	v_cndmask_b32_e64 v5, 0, v5, s1
	v_cndmask_b32_e64 v6, 0, v6, s1
	.loc	1 841 48                        ; attention.py:841:48
	v_div_fixup_f32 v0, v23, v0, v8
	.loc	1 841 19                        ; attention.py:841:19
	v_cndmask_b32_e64 v8, 0, v9, s1
	v_cndmask_b32_e64 v9, 0, v10, s1
	v_cndmask_b32_e64 v10, 0, v11, s1
	v_cndmask_b32_e64 v11, 0, v12, s1
	.loc	1 843 24 is_stmt 1              ; attention.py:843:24
	v_or_b32_e32 v12, s15, v17
	.loc	1 844 24                        ; attention.py:844:24
	s_and_b32 vcc_lo, s0, vcc_lo
	.loc	1 841 19                        ; attention.py:841:19
	v_cndmask_b32_e64 v7, 0, v7, s1
	v_cndmask_b32_e64 v0, 0, v0, s1
	.loc	1 844 63                        ; attention.py:844:63
	v_cmp_gt_i32_e64 s1, s35, v20
	.loc	1 843 24                        ; attention.py:843:24
	v_mul_lo_u32 v12, s35, v12
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add_lshl_u32 v17, v12, v18, 2
	.loc	1 848 17                        ; attention.py:848:17
	v_cndmask_b32_e32 v18, 0x80000000, v17, vcc_lo
	v_add_nc_u32_e32 v19, 8, v17
	v_add_nc_u32_e32 v21, 32, v17
	v_add_nc_u32_e32 v22, 40, v17
	buffer_store_b32 v8, v18, s[16:19], 0 offen
	v_add_nc_u32_e32 v8, 16, v17
	v_dual_cndmask_b32 v18, 0x80000000, v19 :: v_dual_add_nc_u32 v19, 24, v17
	s_delay_alu instid0(VALU_DEP_2)
	v_cndmask_b32_e32 v8, 0x80000000, v8, vcc_lo
	buffer_store_b32 v9, v18, s[16:19], 0 offen
	v_dual_cndmask_b32 v9, 0x80000000, v19 :: v_dual_cndmask_b32 v18, 0x80000000, v21
	v_cndmask_b32_e32 v19, 0x80000000, v22, vcc_lo
	buffer_store_b32 v10, v8, s[16:19], 0 offen
	v_add_nc_u32_e32 v8, 48, v17
	s_clause 0x2
	buffer_store_b32 v11, v9, s[16:19], 0 offen
	buffer_store_b32 v13, v18, s[16:19], 0 offen
	buffer_store_b32 v14, v19, s[16:19], 0 offen
	v_add_nc_u32_e32 v9, 56, v17
	v_add_lshl_u32 v10, v12, v20, 2
	v_add_nc_u32_e32 v11, 0x88, v17
	v_add_nc_u32_e32 v12, 0x90, v17
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_dual_cndmask_b32 v8, 0x80000000, v8 :: v_dual_cndmask_b32 v9, 0x80000000, v9
	.loc	1 844 24                        ; attention.py:844:24
	s_and_b32 vcc_lo, s0, s1
	.loc	1 848 17                        ; attention.py:848:17
	v_dual_cndmask_b32 v10, 0x80000000, v10 :: v_dual_cndmask_b32 v11, 0x80000000, v11
	s_delay_alu instid0(VALU_DEP_3)
	v_cndmask_b32_e32 v12, 0x80000000, v12, vcc_lo
	s_clause 0x4
	buffer_store_b32 v15, v8, s[16:19], 0 offen
	buffer_store_b32 v16, v9, s[16:19], 0 offen
	buffer_store_b32 v1, v10, s[16:19], 0 offen
	buffer_store_b32 v2, v11, s[16:19], 0 offen
	buffer_store_b32 v3, v12, s[16:19], 0 offen
	v_add_nc_u32_e32 v1, 0x98, v17
	v_add_nc_u32_e32 v2, 0xa0, v17
	v_add_nc_u32_e32 v3, 0xa8, v17
	v_add_nc_u32_e32 v8, 0xb0, v17
	v_add_nc_u32_e32 v9, 0xb8, v17
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_cndmask_b32 v1, 0x80000000, v1 :: v_dual_cndmask_b32 v2, 0x80000000, v2
	v_dual_cndmask_b32 v3, 0x80000000, v3 :: v_dual_cndmask_b32 v8, 0x80000000, v8
	s_delay_alu instid0(VALU_DEP_3)
	v_cndmask_b32_e32 v9, 0x80000000, v9, vcc_lo
	s_clause 0x4
	buffer_store_b32 v4, v1, s[16:19], 0 offen
	buffer_store_b32 v5, v2, s[16:19], 0 offen
	buffer_store_b32 v6, v3, s[16:19], 0 offen
	buffer_store_b32 v7, v8, s[16:19], 0 offen
	buffer_store_b32 v0, v9, s[16:19], 0 offen
	.loc	1 502 5                         ; attention.py:502:5
	s_nop 0
	s_sendmsg sendmsg(MSG_DEALLOC_VGPRS)
	s_endpgm
.Ltmp38:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_attention_fwd_bf16xint4_bf16_local_float32_d64_dv64_hq8_hkv8_lq512_lk512_bm32_bn16_w4_s1_ds1
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
		.amdhsa_next_free_vgpr 146
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
		.amdhsa_inst_pref_size 56
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
	.size	amd_strix_halo_gfx1151_attention_fwd_bf16xint4_bf16_local_float32_d64_dv64_hq8_hkv8_lq512_lk512_bm32_bn16_w4_s1_ds1, .Lfunc_end0-amd_strix_halo_gfx1151_attention_fwd_bf16xint4_bf16_local_float32_d64_dv64_hq8_hkv8_lq512_lk512_bm32_bn16_w4_s1_ds1
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xint4_bf16_local_float32_d64_dv64_hq8_hkv8_lq512_lk512_bm32_bn16_w4_s1_ds1.num_vgpr, 146
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xint4_bf16_local_float32_d64_dv64_hq8_hkv8_lq512_lk512_bm32_bn16_w4_s1_ds1.num_agpr, 0
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xint4_bf16_local_float32_d64_dv64_hq8_hkv8_lq512_lk512_bm32_bn16_w4_s1_ds1.numbered_sgpr, 45
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xint4_bf16_local_float32_d64_dv64_hq8_hkv8_lq512_lk512_bm32_bn16_w4_s1_ds1.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xint4_bf16_local_float32_d64_dv64_hq8_hkv8_lq512_lk512_bm32_bn16_w4_s1_ds1.private_seg_size, 0
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xint4_bf16_local_float32_d64_dv64_hq8_hkv8_lq512_lk512_bm32_bn16_w4_s1_ds1.uses_vcc, 1
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xint4_bf16_local_float32_d64_dv64_hq8_hkv8_lq512_lk512_bm32_bn16_w4_s1_ds1.uses_flat_scratch, 0
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xint4_bf16_local_float32_d64_dv64_hq8_hkv8_lq512_lk512_bm32_bn16_w4_s1_ds1.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xint4_bf16_local_float32_d64_dv64_hq8_hkv8_lq512_lk512_bm32_bn16_w4_s1_ds1.has_recursion, 0
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xint4_bf16_local_float32_d64_dv64_hq8_hkv8_lq512_lk512_bm32_bn16_w4_s1_ds1.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 7064
; TotalNumSgprs: 47
; NumVgprs: 146
; ScratchSize: 0
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 18
; NumSGPRsForWavesPerEU: 47
; NumVGPRsForWavesPerEU: 146
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
	.quad	.Ltmp8-.Lfunc_begin0
	.quad	.Ltmp9-.Lfunc_begin0
	.quad	.Ltmp10-.Lfunc_begin0
	.quad	.Ltmp11-.Lfunc_begin0
	.quad	.Ltmp12-.Lfunc_begin0
	.quad	.Ltmp13-.Lfunc_begin0
	.quad	.Ltmp18-.Lfunc_begin0
	.quad	.Ltmp19-.Lfunc_begin0
	.quad	.Ltmp20-.Lfunc_begin0
	.quad	.Ltmp21-.Lfunc_begin0
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
	.quad	.Ltmp31-.Lfunc_begin0
	.quad	.Ltmp32-.Lfunc_begin0
	.quad	.Ltmp33-.Lfunc_begin0
	.quad	.Ltmp34-.Lfunc_begin0
	.quad	.Ltmp35-.Lfunc_begin0
	.quad	.Ltmp36-.Lfunc_begin0
	.quad	.Ltmp37-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges3:
	.quad	.Ltmp25-.Lfunc_begin0
	.quad	.Ltmp26-.Lfunc_begin0
	.quad	.Ltmp27-.Lfunc_begin0
	.quad	.Ltmp28-.Lfunc_begin0
	.quad	.Ltmp30-.Lfunc_begin0
	.quad	.Ltmp31-.Lfunc_begin0
	.quad	.Ltmp36-.Lfunc_begin0
	.quad	.Ltmp37-.Lfunc_begin0
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
	.asciz	"amd_strix_halo_gfx1151_attention_fwd_bf16xint4_bf16_local_float32_d64_dv64_hq8_hkv8_lq512_lk512_bm32_bn16_w4_s1_ds1"                        ; string offset=88 ; amd_strix_halo_gfx1151_attention_fwd_bf16xint4_bf16_local_float32_d64_dv64_hq8_hkv8_lq512_lk512_bm32_bn16_w4_s1_ds1
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
    .name:           amd_strix_halo_gfx1151_attention_fwd_bf16xint4_bf16_local_float32_d64_dv64_hq8_hkv8_lq512_lk512_bm32_bn16_w4_s1_ds1
    .private_segment_fixed_size: 0
    .sgpr_count:     47
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_attention_fwd_bf16xint4_bf16_local_float32_d64_dv64_hq8_hkv8_lq512_lk512_bm32_bn16_w4_s1_ds1.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     146
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
