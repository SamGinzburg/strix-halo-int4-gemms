	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_attention_fwd_bf16xint4_bool_local_bfloat16_d64_dv64_hq16_hkv8_lq2048_lk2048_bm32_bn16_w4_s1_ds1                          ; -- Begin function amd_strix_halo_gfx1151_attention_fwd_bf16xint4_bool_local_bfloat16_d64_dv64_hq16_hkv8_lq2048_lk2048_bm32_bn16_w4_s1_ds1
	.p2align	8
	.type	amd_strix_halo_gfx1151_attention_fwd_bf16xint4_bool_local_bfloat16_d64_dv64_hq16_hkv8_lq2048_lk2048_bm32_bn16_w4_s1_ds1,@function
amd_strix_halo_gfx1151_attention_fwd_bf16xint4_bool_local_bfloat16_d64_dv64_hq16_hkv8_lq2048_lk2048_bm32_bn16_w4_s1_ds1:                                 ; @amd_strix_halo_gfx1151_attention_fwd_bf16xint4_bool_local_bfloat16_d64_dv64_hq16_hkv8_lq2048_lk2048_bm32_bn16_w4_s1_ds1
.Lfunc_begin0:
	.file	1 "<repo>/src/amd_strix_halo_kernels" "attention.py"
	.loc	1 502 0                         ; attention.py:502:0
	.cfi_sections .debug_frame
	.cfi_startproc
; %bb.0:
	s_clause 0x1
	s_load_b32 s14, s[0:1], 0x80
	s_load_b32 s35, s[0:1], 0x5c
.Ltmp0:
	.loc	1 598 79 prologue_end           ; attention.py:598:79
	v_and_b32_e32 v18, 7, v0
	.loc	1 570 31                        ; attention.py:570:31
	v_lshrrev_b32_e32 v2, 3, v0
	.loc	1 564 19                        ; attention.py:564:19
	s_lshl_b32 s34, s2, 5
	.loc	1 597 26                        ; attention.py:597:26
	s_lshl_b32 s2, s3, 11
	s_clause 0x1
	s_load_b64 s[4:5], s[0:1], 0x0
	s_load_b64 s[12:13], s[0:1], 0x78
	.loc	1 598 79                        ; attention.py:598:79
	v_lshlrev_b32_e32 v1, 3, v18
	.loc	1 598 26 is_stmt 0              ; attention.py:598:26
	s_add_i32 s15, s34, s2
	.loc	1 570 21 is_stmt 1              ; attention.py:570:21
	v_or_b32_e32 v4, s34, v2
	s_mov_b32 s7, 0x31027000
	.loc	1 599 26                        ; attention.py:599:26
	v_lshlrev_b32_e32 v9, 1, v0
	.loc	1 570 31                        ; attention.py:570:31
	v_and_b32_e32 v62, 15, v0
	.loc	1 598 79                        ; attention.py:598:79
	v_and_b32_e32 v49, 48, v0
	.loc	1 601 23                        ; attention.py:601:23
	v_cmp_gt_i32_e32 vcc_lo, 0x800, v4
	v_and_b32_e32 v65, 16, v0
	.loc	1 599 26                        ; attention.py:599:26
	v_and_b32_e32 v9, 0x70, v9
	v_lshlrev_b32_e32 v10, 4, v0
	.loc	1 598 26                        ; attention.py:598:26
	s_waitcnt lgkmcnt(0)
	v_mad_u64_u32 v[59:60], null, s35, v2, v[1:2]
	.loc	1 601 61                        ; attention.py:601:61
	v_cmp_gt_i32_e64 s2, s35, v1
	.loc	1 598 26                        ; attention.py:598:26
	s_lshl_b32 s6, s35, 4
	.loc	1 599 26                        ; attention.py:599:26
	v_xor_b32_e32 v9, v10, v9
	s_and_b32 s5, s5, 0xffff
	.loc	1 601 22                        ; attention.py:601:22
	s_and_b32 vcc_lo, vcc_lo, s2
	.loc	1 598 26                        ; attention.py:598:26
	v_mad_u64_u32 v[2:3], null, s35, s15, v[59:60]
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 599 26                        ; attention.py:599:26
	v_add_nc_u32_e32 v66, 0, v9
	v_lshlrev_b32_e32 v1, 1, v2
	v_add_lshl_u32 v2, v2, s6, 1
	s_mov_b32 s6, 0x7ffffffe
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b32_e32 v1, 0x80000000, v1, vcc_lo
	v_cndmask_b32_e32 v5, 0x80000000, v2, vcc_lo
	s_clause 0x1
	buffer_load_b128 v[1:4], v1, s[4:7], 0 offen
	buffer_load_b128 v[5:8], v5, s[4:7], 0 offen
	.loc	1 616 17                        ; attention.py:616:17
	s_add_i32 s5, s34, s13
	.loc	1 613 39                        ; attention.py:613:39
	s_sub_i32 s6, s34, s12
	.loc	1 616 17                        ; attention.py:616:17
	s_add_i32 s5, s5, s14
	.loc	1 613 39                        ; attention.py:613:39
	s_add_i32 s6, s6, s14
	.loc	1 616 17                        ; attention.py:616:17
	s_add_i32 s5, s5, 32
	.loc	1 613 25                        ; attention.py:613:25
	s_max_i32 s6, s6, 0
	.loc	1 614 25                        ; attention.py:614:25
	s_min_i32 s5, s5, 0x800
	.loc	1 618 33                        ; attention.py:618:33
	s_and_b32 s36, s6, 0x7ffffff0
	.loc	1 619 35                        ; attention.py:619:35
	s_add_i32 s5, s5, 15
	s_mov_b32 s4, 0
	.loc	1 619 34 is_stmt 0              ; attention.py:619:34
	s_ashr_i32 s7, s5, 31
	.loc	1 599 26 is_stmt 1              ; attention.py:599:26
	s_waitcnt vmcnt(1)
	ds_store_b128 v66, v[1:4]
	s_waitcnt vmcnt(0)
	ds_store_b128 v66, v[5:8] offset:2048
	.loc	1 619 34                        ; attention.py:619:34
	s_lshr_b32 s7, s7, 28
	.loc	1 599 26                        ; attention.py:599:26
	s_waitcnt lgkmcnt(0)
	.loc	1 619 34                        ; attention.py:619:34
	s_add_i32 s5, s5, s7
	.loc	1 599 26                        ; attention.py:599:26
	s_barrier
	.loc	1 619 33                        ; attention.py:619:33
	s_and_b32 s37, s5, -16
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 707 13                        ; attention.py:707:13
	s_cmp_lt_i32 s36, s37
	s_cbranch_scc1 .LBB0_2
; %bb.1:                                ; %.._crit_edge_crit_edge
	.loc	1 846 36                        ; attention.py:846:36
	v_and_b32_e32 v17, 16, v0
	s_branch .LBB0_3
.LBB0_2:
	.loc	1 0 36 is_stmt 0                ; attention.py:0:36
	s_mov_b32 s4, -1
                                        ; implicit-def: $vgpr17
.LBB0_3:                                ; %Flow100
	s_clause 0x1
	s_load_b64 s[16:17], s[0:1], 0x38
	s_load_b32 s33, s[0:1], 0x60
	v_dual_mov_b32 v8, 0 :: v_dual_and_b32 v63, 64, v0
	v_and_b32_e32 v64, 0x7c, v0
	v_lshlrev_b32_e32 v60, 2, v62
	v_lshrrev_b32_e32 v61, 1, v49
	s_and_not1_b32 vcc_lo, exec_lo, s4
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
	v_mov_b32_e32 v50, v8
	s_cbranch_vccnz .LBB0_15
; %bb.4:                                ; %.lr.ph
	s_load_b128 s[8:11], s[0:1], 0x64
	.loc	1 570 31 is_stmt 1              ; attention.py:570:31
	v_lshrrev_b32_e32 v2, 2, v64
	.loc	1 571 21                        ; attention.py:571:21
	v_and_b32_e32 v1, 3, v0
	.loc	1 566 23                        ; attention.py:566:23
	s_ashr_i32 s4, s3, 31
	.loc	1 599 26                        ; attention.py:599:26
	v_and_b32_e32 v5, 32, v0
	.loc	1 566 23                        ; attention.py:566:23
	s_lshr_b32 s4, s4, 28
	.loc	1 570 21                        ; attention.py:570:21
	v_or_b32_e32 v3, s34, v2
	.loc	1 571 21                        ; attention.py:571:21
	v_lshlrev_b32_e32 v67, 2, v1
	.loc	1 566 23                        ; attention.py:566:23
	s_add_i32 s18, s3, s4
	s_clause 0x1
	s_load_b128 s[20:23], s[0:1], 0x28
	s_load_b128 s[4:7], s[0:1], 0x8
	.loc	1 573 27                        ; attention.py:573:27
	v_add_nc_u32_e32 v4, s14, v3
	.loc	1 601 23                        ; attention.py:601:23
	v_cmp_gt_i32_e32 vcc_lo, 0x800, v3
	.loc	1 599 26                        ; attention.py:599:26
	v_lshlrev_b32_e32 v3, 4, v18
	.loc	1 567 22                        ; attention.py:567:22
	s_and_b32 s19, s18, -16
	.loc	1 571 21                        ; attention.py:571:21
	v_or_b32_e32 v68, 1, v67
	v_or_b32_e32 v69, 2, v67
	v_or_b32_e32 v70, 3, v67
	.loc	1 599 26                        ; attention.py:599:26
	v_lshl_or_b32 v72, v62, 7, v3
	.loc	1 567 22                        ; attention.py:567:22
	s_sub_i32 s1, s3, s19
	s_waitcnt lgkmcnt(0)
	v_mul_lo_u32 v2, s11, v2
	.loc	1 569 19                        ; attention.py:569:19
	s_bfe_u32 s0, s1, 0x10007
	.loc	1 748 47                        ; attention.py:748:47
	v_subrev_nc_u32_e32 v71, s12, v4
	.loc	1 569 19                        ; attention.py:569:19
	s_add_i32 s0, s1, s0
	.loc	1 749 47                        ; attention.py:749:47
	v_add_nc_u32_e32 v73, s13, v4
	.loc	1 599 26                        ; attention.py:599:26
	v_lshl_or_b32 v4, v5, 6, v72
	.loc	1 569 19                        ; attention.py:569:19
	s_bfe_i32 s0, s0, 0x80000
	.loc	1 771 51                        ; attention.py:771:51
	v_lshrrev_b32_e32 v8, 4, v0
	.loc	1 707 13                        ; attention.py:707:13
	v_add_nc_u32_e32 v74, v2, v68
	v_dual_mov_b32 v106, 0xff800000 :: v_dual_add_nc_u32 v75, v2, v69
	v_add_nc_u32_e32 v76, v2, v70
	v_add_nc_u32_e32 v79, v2, v67
	v_dual_mov_b32 v107, 0xff800000 :: v_dual_lshlrev_b32 v2, 3, v62
	.loc	1 569 19                        ; attention.py:569:19
	s_sext_i32_i16 s0, s0
	.loc	1 599 26                        ; attention.py:599:26
	v_xad_u32 v9, 0x70, v4, 0
	v_bfe_i32 v54, v0, 2, 1
	s_delay_alu instid0(VALU_DEP_3)
	v_lshl_or_b32 v2, v49, 5, v2
	v_lshlrev_b32_e32 v49, 5, v0
	.loc	1 566 23                        ; attention.py:566:23
	s_ashr_i32 s3, s18, 4
	.loc	1 569 19                        ; attention.py:569:19
	s_ashr_i32 s0, s0, 1
	.loc	1 599 26                        ; attention.py:599:26
	v_xad_u32 v10, 0x60, v4, 0
	.loc	1 734 33                        ; attention.py:734:33
	s_lshl3_add_u32 s14, s3, s0
	.loc	1 707 13                        ; attention.py:707:13
	v_add_nc_u32_e32 v6, 0, v5
	.loc	1 599 26                        ; attention.py:599:26
	ds_load_b128 v[21:24], v9
	ds_load_b128 v[17:20], v10
	v_xad_u32 v9, 0x50, v4, 0
	v_lshlrev_b32_e32 v52, 2, v5
	v_lshrrev_b32_e32 v53, 4, v5
	v_lshl_or_b32 v81, s14, 10, v8
	v_dual_mov_b32 v105, 0xff800000 :: v_dual_lshlrev_b32 v8, 1, v5
	v_and_b32_e32 v49, 0x160, v49
	v_and_b32_e32 v54, 0x90, v54
	v_lshlrev_b32_e32 v5, 4, v5
	v_xad_u32 v10, v4, 64, 0
	v_xad_u32 v11, v4, 48, 0
	v_xad_u32 v12, v4, 32, 0
	v_xad_u32 v13, v4, 16, 0
	v_lshrrev_b32_e32 v57, 1, v63
	v_or3_b32 v83, v54, v5, v49
	v_dual_mov_b32 v49, 0 :: v_dual_add_nc_u32 v4, 0, v4
	ds_load_b128 v[29:32], v9
	ds_load_b128 v[25:28], v10
	ds_load_b128 v[37:40], v11
	ds_load_b128 v[33:36], v12
	ds_load_b128 v[45:48], v13
	ds_load_b128 v[41:44], v4
	v_xor_b32_e32 v9, 32, v72
	v_bfe_i32 v3, v0, 5, 1
	v_and_b32_e32 v13, 31, v0
	v_lshlrev_b32_e32 v55, 1, v62
	v_xor_b32_e32 v15, 0x70, v72
	v_add_nc_u32_e32 v85, 0, v9
	v_mov_b32_e32 v9, 0
	v_lshl_add_u32 v5, v65, 2, v6
	v_add_nc_u32_e32 v6, 0, v57
	v_and_b32_e32 v3, 0x84, v3
	v_lshrrev_b32_e32 v50, 1, v0
	v_add_nc_u32_e32 v82, 0, v60
	.loc	1 771 51                        ; attention.py:771:51
	v_and_b32_e32 v7, 0x70, v0
	v_add_nc_u32_e32 v101, v6, v55
	v_mov_b32_e32 v6, v49
	v_lshlrev_b32_e32 v16, 2, v13
	v_xor_b32_e32 v4, 16, v72
	v_lshlrev_b32_e32 v56, 7, v0
	v_add_nc_u32_e32 v90, 0, v15
	v_add_nc_u32_e32 v99, v82, v8
	v_mov_b32_e32 v15, v49
	v_mov_b32_e32 v8, v49
	v_xor_b32_e32 v3, v3, v16
	v_and_b32_e32 v16, 12, v50
	v_and_b32_e32 v50, 12, v0
	v_bfe_i32 v0, v0, 0, 1
	v_xor_b32_e32 v10, 48, v72
	v_and_b32_e32 v56, 0x700, v56
	v_add_nc_u32_e32 v84, 0, v4
	v_mov_b32_e32 v4, v49
	v_lshrrev_b32_e32 v7, 2, v7
	v_and_b32_e32 v0, 0x90, v0
	v_lshrrev_b32_e32 v51, 5, v63
	v_add_nc_u32_e32 v86, 0, v10
	v_dual_mov_b32 v10, v49 :: v_dual_lshlrev_b32 v1, 5, v1
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_4) | instid1(VALU_DEP_4)
	v_xor_b32_e32 v0, v0, v7
	v_add_nc_u32_e32 v7, 0, v56
	v_dual_mov_b32 v104, 0 :: v_dual_lshlrev_b32 v13, 4, v13
	v_or_b32_e32 v77, v3, v51
	v_add_nc_u32_e32 v100, v5, v55
	v_dual_mov_b32 v5, v49 :: v_dual_add_nc_u32 v102, v7, v0
	v_lshlrev_b32_e32 v3, 1, v50
	v_lshl_or_b32 v1, v50, 7, v1
	v_mov_b32_e32 v7, v49
	v_lshl_or_b32 v50, v65, 4, v52
	v_or3_b32 v78, v13, v53, v16
	v_xor_b32_e32 v11, 64, v72
	v_xor_b32_e32 v12, 0x50, v72
	v_xor_b32_e32 v14, 0x60, v72
	v_or3_b32 v80, v1, v50, v3
	v_xor_b32_e32 v13, 0x108, v77
	v_xor_b32_e32 v1, 4, v78
	v_xor_b32_e32 v3, 8, v78
	v_xor_b32_e32 v16, 12, v78
	v_xor_b32_e32 v50, 8, v80
	v_xor_b32_e32 v51, 16, v80
	v_xor_b32_e32 v52, 24, v80
	v_xor_b32_e32 v2, v2, v61
	v_lshl_add_u32 v53, v63, 1, 0
	v_xor_b32_e32 v54, 16, v83
	.loc	1 754 27                        ; attention.py:754:27
	s_mul_i32 s1, s10, s1
	.loc	1 753 27                        ; attention.py:753:27
	s_mul_i32 s3, s9, s3
	.loc	1 778 24                        ; attention.py:778:24
	v_cmp_gt_i32_e64 s0, s33, v60
	v_add_nc_u32_e32 v87, 0, v11
	v_add_nc_u32_e32 v88, 0, v12
	v_add_nc_u32_e32 v89, 0, v14
	v_add_nc_u32_e32 v91, 0, v13
	v_add_nc_u32_e32 v92, 0, v1
	v_add_nc_u32_e32 v93, 0, v3
	v_add_nc_u32_e32 v94, 0, v16
	v_add_nc_u32_e32 v95, 0, v50
	v_add_nc_u32_e32 v96, 0, v51
	v_add_nc_u32_e32 v97, 0, v52
	v_add_nc_u32_e32 v98, v53, v2
	v_add_nc_u32_e32 v103, 0, v54
	v_mov_b32_e32 v11, v49
	v_mov_b32_e32 v12, v49
	v_mov_b32_e32 v13, v49
	v_mov_b32_e32 v14, v49
	v_dual_mov_b32 v16, v49 :: v_dual_mov_b32 v1, 0
	v_mov_b32_e32 v2, v49
	v_mov_b32_e32 v3, v49
	.loc	1 742 27                        ; attention.py:742:27
	s_mul_f32 s39, s8, 0x3fb8aa3b
	.loc	1 752 25                        ; attention.py:752:25
	s_mul_i32 s8, s11, s34
	s_add_i32 s41, s1, s3
	s_and_b32 s5, s5, 0xffff
	s_mov_b32 s27, 0x31027000
	s_mov_b32 s26, 0x7ffffffe
	s_mov_b64 s[18:19], s[22:23]
	.loc	1 734 32                        ; attention.py:734:32
	s_lshl_b32 s38, s14, 11
	.loc	1 794 21                        ; attention.py:794:21
	s_lshl_b32 s40, s14, 7
	s_add_i32 s41, s41, s8
	s_and_b32 s29, s7, 0xffff
	s_and_b32 s21, s21, 0xffff
	s_mov_b32 s24, s4
	s_mov_b32 s25, s5
	s_mov_b32 s42, 0x76543210
	s_mov_b32 s28, s6
	s_mov_b32 s30, s26
	s_mov_b32 s31, s27
	s_mov_b32 s22, s26
	s_mov_b32 s23, s27
	s_branch .LBB0_6
.LBB0_5:                                ;   in Loop: Header=BB0_6 Depth=1
	.loc	1 0 21 is_stmt 0                ; attention.py:0:21
	s_or_b32 exec_lo, exec_lo, s3
	.loc	1 759 34 is_stmt 1              ; attention.py:759:34
	s_waitcnt vmcnt(0)
	v_and_b16 v58.h, 0xff, v58.h
	v_and_b16 v58.l, 0xff, v58.l
	v_and_b16 v0.h, 0xff, v0.h
	v_and_b16 v0.l, 0xff, v0.l
	.loc	1 759 25 is_stmt 0              ; attention.py:759:25
	s_waitcnt lgkmcnt(0)
	.loc	1 759 34                        ; attention.py:759:34
	v_cmp_ne_u16_e64 s1, 0, v58.h
	v_cmp_ne_u16_e64 s3, 0, v58.l
	v_cmp_ne_u16_e64 s4, 0, v0.h
	v_cmp_ne_u16_e64 s5, 0, v0.l
	.loc	1 759 25                        ; attention.py:759:25
	s_barrier
	s_and_b32 s1, s8, s1
	s_and_b32 s3, s9, s3
	v_cndmask_b32_e64 v0, 0, 1, s1
	v_cndmask_b32_e64 v58, 0, 1, s3
	s_and_b32 s4, s6, s4
	s_and_b32 s5, s7, s5
	v_cndmask_b32_e64 v108, 0, 1, s4
	v_lshlrev_b16 v0.l, 8, v0.l
	v_cndmask_b32_e64 v109, 0, 1, s5
	v_lshlrev_b16 v0.h, 8, v58.l
	v_add_nc_u32_e32 v58, 0, v77
	.loc	1 742 17 is_stmt 1              ; attention.py:742:17
	v_dual_mul_f32 v110, s39, v52 :: v_dual_mul_f32 v111, s39, v54
	.loc	1 759 25                        ; attention.py:759:25
	v_or_b16 v0.l, v108.l, v0.l
	.loc	1 742 17                        ; attention.py:742:17
	v_dual_mul_f32 v53, s39, v53 :: v_dual_add_nc_u32 v108, 0, v78
	.loc	1 759 25                        ; attention.py:759:25
	v_or_b16 v0.h, v109.l, v0.h
	.loc	1 742 17                        ; attention.py:742:17
	v_mul_f32_e32 v109, s39, v51
	.loc	1 759 25                        ; attention.py:759:25
	ds_store_b16 v58, v0
	ds_store_b16_d16_hi v91, v0
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_u16_d16 v0, v108
	s_waitcnt lgkmcnt(0)
	ds_load_u16_d16_hi v0, v92
	ds_load_u16_d16 v58, v93
	s_waitcnt lgkmcnt(0)
	ds_load_u16_d16_hi v58, v94
	.loc	1 742 17                        ; attention.py:742:17
	v_dual_mul_f32 v108, s39, v50 :: v_dual_mul_f32 v113, s39, v56
	.loc	1 771 36                        ; attention.py:771:36
	s_lshr_b32 s14, s36, 1
	.loc	1 742 17                        ; attention.py:742:17
	v_dual_mul_f32 v112, s39, v55 :: v_dual_max_f32 v117, v105, v105
	.loc	1 764 26                        ; attention.py:764:26
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 775 32                        ; attention.py:775:32
	v_mov_b16_e32 v116.l, 0
	.loc	1 759 25                        ; attention.py:759:25
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 797 41                        ; attention.py:797:41
	v_mov_b16_e32 v119.l, v116.l
	.loc	1 814 30                        ; attention.py:814:30
	v_mov_b16_e32 v120.h, v116.l
	v_mov_b16_e32 v121.h, v116.l
	v_mov_b16_e32 v122.h, v116.l
	.loc	1 759 25                        ; attention.py:759:25
	v_lshrrev_b16 v50.l, 8, v0.l
	v_and_b16 v0.l, 1, v0.l
	v_lshrrev_b16 v50.h, 8, v0.h
	v_and_b16 v0.h, 1, v0.h
	v_lshrrev_b16 v51.l, 8, v58.l
	v_lshrrev_b16 v52.l, 8, v58.h
	v_and_b16 v52.h, 1, v58.h
	v_and_b16 v51.h, 1, v58.l
	v_and_b16 v50.l, 1, v50.l
	v_and_b16 v50.h, 1, v50.h
	v_and_b16 v51.l, 1, v51.l
	v_cmp_eq_u16_e64 s6, 1, v0.l
	v_cmp_eq_u16_e64 s8, 1, v0.h
	.loc	1 766 24                        ; attention.py:766:24
	v_dual_max_f32 v107, v107, v107 :: v_dual_add_nc_u32 v0, s14, v81
	.loc	1 759 25                        ; attention.py:759:25
	v_and_b16 v52.l, 1, v52.l
	v_cmp_eq_u16_e64 s12, 1, v52.h
	.loc	1 798 53                        ; attention.py:798:53
	s_lshr_b32 s14, s36, 4
	.loc	1 759 25                        ; attention.py:759:25
	v_cmp_eq_u16_e64 s7, 1, v50.l
	v_cmp_eq_u16_e64 s9, 1, v50.h
	v_cmp_eq_u16_e64 s10, 1, v51.h
	v_cmp_eq_u16_e64 s11, 1, v51.l
	.loc	1 774 30                        ; attention.py:774:30
	v_mad_u64_u32 v[50:51], null, v0, s33, v[60:61]
	.loc	1 798 25                        ; attention.py:798:25
	s_add_i32 s14, s14, s40
	.loc	1 764 26                        ; attention.py:764:26
	v_cndmask_b32_e64 v56, 0xff800000, v110, s8
	.loc	1 798 25                        ; attention.py:798:25
	s_mul_i32 s14, s14, s33
	.loc	1 764 26                        ; attention.py:764:26
	v_cndmask_b32_e64 v110, 0xff800000, v113, s12
	.loc	1 742 17                        ; attention.py:742:17
	v_mul_f32_e32 v114, s39, v57
	.loc	1 759 25                        ; attention.py:759:25
	v_cmp_eq_u16_e64 s13, 1, v52.l
	.loc	1 797 41                        ; attention.py:797:41
	v_add_lshl_u32 v0, s14, v60, 1
	.loc	1 764 26                        ; attention.py:764:26
	v_cndmask_b32_e64 v54, 0xff800000, v108, s6
	v_cndmask_b32_e64 v55, 0xff800000, v109, s7
	v_cndmask_b32_e64 v57, 0xff800000, v53, s9
	v_cndmask_b32_e64 v108, 0xff800000, v111, s10
	v_cndmask_b32_e64 v109, 0xff800000, v112, s11
	v_cndmask_b32_e64 v111, 0xff800000, v114, s13
	v_add_nc_u32_e32 v52, 0, v80
	.loc	1 775 32                        ; attention.py:775:32
	v_cndmask_b32_e64 v50, 0x80000000, v50, s0
	.loc	1 797 41                        ; attention.py:797:41
	v_cndmask_b32_e64 v0, 0x80000000, v0, s0
.Ltmp1:
	.file	2 "<triton>/python/triton/language" "standard.py"
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:765:29 ] ]
	v_max3_f32 v58, v57, v108, v109
	v_max_f32_e32 v115, v110, v111
.Ltmp2:
	.loc	1 764 26                        ; attention.py:764:26
	ds_store_b64 v52, v[54:55]
	ds_store_b64 v95, v[56:57]
	ds_store_b64 v96, v[108:109]
	ds_store_b64 v97, v[110:111]
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 775 32                        ; attention.py:775:32
	buffer_load_b32 v114, v50, s[28:31], 0 offen
	.loc	1 797 41                        ; attention.py:797:41
	buffer_load_b64 v[112:113], v0, s[20:23], 0 offen
	.loc	1 764 26                        ; attention.py:764:26
	ds_load_2addr_b64 v[50:53], v98 offset1:32
.Ltmp3:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:765:29 ] ]
	v_max3_f32 v0, v54, v55, v56
.Ltmp4:
	.loc	1 767 25                        ; attention.py:767:25
	v_cmp_neq_f32_e64 s14, 0xff800000, v106
	.loc	1 815 23                        ; attention.py:815:23
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 814 30                        ; attention.py:814:30
	v_mov_b16_e32 v124.h, v116.l
.Ltmp5:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:765:29 ] ]
	v_max3_f32 v0, v0, v58, v115
.Ltmp6:
	.loc	1 814 30                        ; attention.py:814:30
	v_add_nc_u32_e32 v115, 0, v83
	v_mov_b16_e32 v125.h, v116.l
	v_mov_b16_e32 v123.h, v116.l
	.loc	1 707 13                        ; attention.py:707:13
	s_add_i32 s36, s36, 16
.Ltmp7:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:765:29 ]
	v_permlanex16_b32 v58, v0, s42, 0xfedcba98 op_sel:[1,0]
.Ltmp8:
	.loc	1 707 13                        ; attention.py:707:13
	s_cmp_lt_i32 s36, s37
	.loc	1 787 39                        ; attention.py:787:39
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	.loc	1 766 24                        ; attention.py:766:24
	v_max3_f32 v126, v106, v0, v58
	.loc	1 815 23                        ; attention.py:815:23
	v_add_nc_u32_e32 v118, v82, v63
.Ltmp9:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:765:29 ] ]
	v_max_f32_e32 v0, v52, v52
	v_max_f32_e32 v58, v50, v50
.Ltmp10:
	.loc	1 767 74                        ; attention.py:767:74
	v_sub_f32_e32 v127, v106, v126
	.loc	1 768 62                        ; attention.py:768:62
	v_sub_f32_e32 v57, v57, v126
	v_sub_f32_e32 v108, v108, v126
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_dual_sub_f32 v111, v111, v126 :: v_dual_max_f32 v0, v58, v0
	.loc	1 767 61                        ; attention.py:767:61
	v_exp_f32_e32 v58, v127
	.loc	1 768 62                        ; attention.py:768:62
	v_sub_f32_e32 v55, v55, v126
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 768 49 is_stmt 0              ; attention.py:768:49
	v_exp_f32_e32 v108, v108
	v_exp_f32_e32 v111, v111
.Ltmp11:
	.loc	2 170 12 is_stmt 1              ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:765:29 ] ]
	v_max3_f32 v0, v0, v51, v53
.Ltmp12:
	.loc	1 768 49                        ; attention.py:768:49
	v_exp_f32_e32 v57, v57
	v_exp_f32_e32 v55, v55
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
.Ltmp13:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:765:29 ]
	v_mov_b32_e32 v127, v0
.Ltmp14:
	.loc	1 767 25                        ; attention.py:767:25
	v_cndmask_b32_e64 v58, 0, v58, s14
	.loc	1 768 33                        ; attention.py:768:33
	v_cndmask_b32_e64 v106, 0, v108, s10
.Ltmp15:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:765:29 ]
	v_mov_b32_dpp v127, v127 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp16:
	.loc	1 768 62                        ; attention.py:768:62
	v_sub_f32_e32 v109, v109, v126
	.loc	1 815 23                        ; attention.py:815:23
	ds_store_b32 v99, v58
	.loc	1 768 33                        ; attention.py:768:33
	v_cndmask_b32_e64 v55, 0, v55, s7
	v_cndmask_b32_e64 v57, 0, v57, s9
.Ltmp17:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:765:29 ] ]
	v_max_f32_e32 v58, v127, v127
.Ltmp18:
	.loc	1 768 49                        ; attention.py:768:49
	v_exp_f32_e32 v109, v109
	.loc	1 815 23                        ; attention.py:815:23
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b32 v127, v118
.Ltmp19:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:765:29 ] ]
	v_max_f32_e32 v0, v0, v58
.Ltmp20:
	.loc	1 768 62                        ; attention.py:768:62
	v_sub_f32_e32 v54, v54, v126
	.loc	1 816 30                        ; attention.py:816:30
	v_bfe_u32 v118, v55, 16, 1
	v_bfe_u32 v128, v57, 16, 1
	v_bfe_u32 v130, v106, 16, 1
.Ltmp21:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:765:29 ]
	v_mov_b32_e32 v129, v0
.Ltmp22:
	.loc	1 768 49                        ; attention.py:768:49
	v_exp_f32_e32 v54, v54
	.loc	1 768 33 is_stmt 0              ; attention.py:768:33
	v_cndmask_b32_e64 v108, 0, v109, s11
	.loc	1 816 30 is_stmt 1              ; attention.py:816:30
	v_cmp_o_f32_e64 s7, v55, v55
	v_cmp_o_f32_e64 s9, v57, v57
.Ltmp23:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:765:29 ]
	v_mov_b32_dpp v129, v129 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp24:
	.loc	1 768 62                        ; attention.py:768:62
	v_sub_f32_e32 v56, v56, v126
	.loc	1 816 30                        ; attention.py:816:30
	v_cmp_o_f32_e64 s10, v106, v106
	v_bfe_u32 v131, v108, 16, 1
	v_cmp_o_f32_e64 s11, v108, v108
.Ltmp25:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:765:29 ] ]
	v_dual_max_f32 v129, v129, v129 :: v_dual_sub_f32 v110, v110, v126
.Ltmp26:
	.loc	1 768 33                        ; attention.py:768:33
	v_cndmask_b32_e64 v54, 0, v54, s6
	.loc	1 768 49 is_stmt 0              ; attention.py:768:49
	v_exp_f32_e32 v56, v56
	.loc	1 816 30 is_stmt 1              ; attention.py:816:30
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 768 49                        ; attention.py:768:49
	v_exp_f32_e32 v110, v110
	.loc	1 816 30                        ; attention.py:816:30
	v_cmp_o_f32_e64 s6, v54, v54
	.loc	1 815 23                        ; attention.py:815:23
	v_mul_f32_e32 v10, v10, v127
	v_mul_f32_e32 v16, v16, v127
	v_mul_f32_e32 v2, v2, v127
	v_mul_f32_e32 v4, v4, v127
	v_mul_f32_e32 v6, v6, v127
	.loc	1 768 33                        ; attention.py:768:33
	v_cndmask_b32_e64 v56, 0, v56, s8
	.loc	1 815 23                        ; attention.py:815:23
	v_mul_f32_e32 v8, v8, v127
	v_mul_f32_e32 v9, v9, v127
	.loc	1 768 33                        ; attention.py:768:33
	v_cndmask_b32_e64 v109, 0, v110, s12
	v_cndmask_b32_e64 v110, 0, v111, s13
	.loc	1 816 30                        ; attention.py:816:30
	v_bfe_u32 v111, v54, 16, 1
	v_bfe_u32 v58, v56, 16, 1
	v_cmp_o_f32_e64 s8, v56, v56
	v_bfe_u32 v132, v109, 16, 1
	v_cmp_o_f32_e64 s12, v109, v109
	v_add3_u32 v54, v54, v111, 0x7fff
.Ltmp27:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:765:29 ] ]
	v_max_f32_e32 v111, v0, v129
.Ltmp28:
	.loc	1 816 30                        ; attention.py:816:30
	v_add3_u32 v0, v55, v118, 0x7fff
	v_add3_u32 v55, v56, v58, 0x7fff
	v_add3_u32 v56, v57, v128, 0x7fff
	v_add3_u32 v57, v106, v130, 0x7fff
	.loc	1 766 24                        ; attention.py:766:24
	v_max_f32_e32 v107, v107, v111
	.loc	1 816 30                        ; attention.py:816:30
	v_add3_u32 v106, v109, v132, 0x7fff
	v_cndmask_b16 v0.l, 0x7fff, v54.h, s6
	v_bfe_u32 v133, v110, 16, 1
	v_cmp_o_f32_e64 s13, v110, v110
	.loc	1 768 62                        ; attention.py:768:62
	v_sub_f32_e32 v50, v50, v107
	v_sub_f32_e32 v51, v51, v107
	.loc	1 816 30                        ; attention.py:816:30
	v_add3_u32 v58, v108, v131, 0x7fff
	v_add3_u32 v108, v110, v133, 0x7fff
	v_cndmask_b16 v0.h, 0x7fff, v0.h, s7
	.loc	1 768 49                        ; attention.py:768:49
	v_exp_f32_e32 v54, v50
	.loc	1 816 30                        ; attention.py:816:30
	v_cndmask_b16 v50.l, 0x7fff, v55.h, s8
	v_cndmask_b16 v50.h, 0x7fff, v56.h, s9
	.loc	1 768 49                        ; attention.py:768:49
	v_exp_f32_e32 v110, v51
	.loc	1 816 30                        ; attention.py:816:30
	v_cndmask_b16 v51.l, 0x7fff, v57.h, s10
	v_cndmask_b16 v51.h, 0x7fff, v58.h, s11
	.loc	1 814 30                        ; attention.py:814:30
	v_mov_b16_e32 v118.h, v116.l
	v_mov_b16_e64 v128.h, v116.l
	.loc	1 815 23                        ; attention.py:815:23
	v_mul_f32_e32 v1, v1, v127
	v_mul_f32_e32 v15, v15, v127
	.loc	1 768 33                        ; attention.py:768:33
	v_cndmask_b32_e64 v54, 0, v54, s4
	.loc	1 815 23                        ; attention.py:815:23
	v_mul_f32_e32 v3, v3, v127
	v_mul_f32_e32 v5, v5, v127
	.loc	1 768 33                        ; attention.py:768:33
	v_cndmask_b32_e64 v56, 0, v110, s1
	.loc	1 815 23                        ; attention.py:815:23
	v_mul_f32_e32 v7, v7, v127
	.loc	1 775 32                        ; attention.py:775:32
	s_waitcnt vmcnt(1)
	v_lshrrev_b32_e32 v110, 24, v114
	.loc	1 797 41                        ; attention.py:797:41
	s_waitcnt vmcnt(0)
	v_mov_b16_e32 v116.h, v112.l
	.loc	1 766 24                        ; attention.py:766:24
	v_max_f32_e32 v129, v117, v111
	.loc	1 768 62                        ; attention.py:768:62
	v_dual_sub_f32 v52, v52, v107 :: v_dual_and_b32 v131, 0xffff0000, v112
	.loc	1 785 32                        ; attention.py:785:32
	v_lshrrev_b32_e32 v111, 20, v114
	.loc	1 775 32                        ; attention.py:775:32
	v_bfe_i32 v132, v110, 0, 8
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 767 74                        ; attention.py:767:74
	v_sub_f32_e32 v117, v105, v129
	.loc	1 768 49                        ; attention.py:768:49
	v_exp_f32_e32 v109, v52
	.loc	1 816 30                        ; attention.py:816:30
	v_cndmask_b16 v52.l, 0x7fff, v106.h, s12
	v_cndmask_b16 v52.h, 0x7fff, v108.h, s13
	ds_store_b16 v100, v0
	ds_store_b16_d16_hi v100, v0 offset:128
	ds_store_b16 v100, v50 offset:256
	ds_store_b16_d16_hi v100, v50 offset:384
	ds_store_b16 v100, v51 offset:512
	ds_store_b16_d16_hi v100, v51 offset:640
	ds_store_b16 v100, v52 offset:768
	ds_store_b16_d16_hi v100, v52 offset:896
	.loc	1 775 32                        ; attention.py:775:32
	v_lshrrev_b32_e32 v108, 8, v114
	v_bfe_i32 v106, v114, 0, 8
	.loc	1 797 41                        ; attention.py:797:41
	v_mov_b16_e32 v119.h, v113.l
	v_and_b32_e32 v113, 0xffff0000, v113
	.loc	1 816 30                        ; attention.py:816:30
	s_waitcnt lgkmcnt(0)
	.loc	1 783 76                        ; attention.py:783:76
	v_and_b16 v106.h, v108.l, 15
	.loc	1 768 33                        ; attention.py:768:33
	v_cndmask_b32_e64 v55, 0, v109, s5
	.loc	1 775 32                        ; attention.py:775:32
	v_mov_b16_e32 v109.l, v114.h
	v_bfe_i32 v112, v108, 0, 8
	.loc	1 785 32                        ; attention.py:785:32
	v_lshrrev_b16 v108.h, 4, v110.l
	.loc	1 787 39                        ; attention.py:787:39
	v_cmp_gt_i16_e64 s4, 0, v106.l
.Ltmp29:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:769:24 ] ]
	v_add_f32_e32 v0, v54, v55
.Ltmp30:
	.loc	1 768 62                        ; attention.py:768:62
	v_sub_f32_e32 v53, v53, v107
	.loc	1 816 30                        ; attention.py:816:30
	s_barrier
	.loc	1 787 56                        ; attention.py:787:56
	v_or_b16 v112.h, v108.h, -16
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 768 49                        ; attention.py:768:49
	v_exp_f32_e32 v53, v53
	.loc	1 768 33 is_stmt 0              ; attention.py:768:33
	v_cndmask_b32_e64 v53, 0, v53, s3
	s_delay_alu instid0(VALU_DEP_1)
.Ltmp31:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:769:24 ] ]
	v_add_f32_e32 v50, v56, v53
.Ltmp32:
	.loc	1 816 30                        ; attention.py:816:30
	ds_load_u16_d16 v51, v101
	ds_load_u16_d16 v52, v101 offset:128
	ds_load_u16_d16 v53, v101 offset:256
	ds_load_u16_d16 v54, v101 offset:384
	ds_load_u16_d16 v55, v101 offset:512
	ds_load_u16_d16 v56, v101 offset:640
	ds_load_u16_d16 v57, v101 offset:768
	ds_load_u16_d16 v58, v101 offset:896
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v51, v101 offset:64
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v52, v101 offset:192
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v53, v101 offset:320
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v54, v101 offset:448
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v55, v101 offset:576
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v56, v101 offset:704
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v57, v101 offset:832
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v58, v101 offset:960
.Ltmp33:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:769:24 ] ]
	v_dual_add_f32 v0, v0, v50 :: v_dual_mul_f32 v11, v11, v127
.Ltmp34:
	.loc	1 814 30                        ; attention.py:814:30
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp35:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:769:24 ]
	v_mov_b32_e32 v50, v0
	v_mov_b32_dpp v50, v50 row_xmask:2 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1)
.Ltmp36:
	.loc	1 815 23                        ; attention.py:815:23
	v_dual_mul_f32 v13, v13, v127 :: v_dual_add_f32 v130, v0, v50
	.loc	1 783 76                        ; attention.py:783:76
	v_and_b16 v0.h, v114.l, 15
	.loc	1 785 32                        ; attention.py:785:32
	v_lshrrev_b16 v0.l, 4, v114.l
	.loc	1 783 76                        ; attention.py:783:76
	v_and_b16 v50.l, v114.h, 15
	.loc	1 775 32                        ; attention.py:775:32
	v_bfe_i32 v114, v109, 0, 8
	.loc	1 785 32                        ; attention.py:785:32
	v_lshrrev_b16 v50.h, 4, v108.l
	.loc	1 786 38                        ; attention.py:786:38
	v_cmp_lt_u16_e64 s1, 7, v0.h
	.loc	1 785 32                        ; attention.py:785:32
	v_and_b16 v0.l, v0.l, 15
	v_and_b16 v108.l, v111.l, 15
	.loc	1 786 38                        ; attention.py:786:38
	v_cmp_lt_u16_e64 s3, 7, v50.l
	.loc	1 783 76                        ; attention.py:783:76
	v_and_b16 v109.l, v110.l, 15
	.loc	1 786 29                        ; attention.py:786:29
	v_cndmask_b16 v109.h, 0, -16, s1
	.loc	1 786 38 is_stmt 0              ; attention.py:786:38
	v_cmp_lt_u16_e64 s1, 7, v106.h
	.loc	1 787 39 is_stmt 1              ; attention.py:787:39
	v_mov_b16_e32 v111.l, v114.l
	.loc	1 787 56 is_stmt 0              ; attention.py:787:56
	v_or_b16 v106.l, v0.l, -16
	.loc	1 785 32 is_stmt 1              ; attention.py:785:32
	v_and_b16 v50.h, v50.h, 15
	.loc	1 787 39                        ; attention.py:787:39
	v_mov_b16_e32 v110.l, v112.l
	.loc	1 787 56 is_stmt 0              ; attention.py:787:56
	v_or_b16 v110.h, v108.l, -16
	.loc	1 786 29 is_stmt 1              ; attention.py:786:29
	v_cndmask_b16 v111.h, 0, -16, s3
	.loc	1 787 39                        ; attention.py:787:39
	v_mov_b16_e64 v112.l, v132.l
	.loc	1 786 38                        ; attention.py:786:38
	v_cmp_lt_u16_e64 s3, 7, v109.l
	.loc	1 786 29 is_stmt 0              ; attention.py:786:29
	v_or_b16 v114.l, v0.h, v109.h
	v_cndmask_b16 v0.h, 0, -16, s1
	.loc	1 787 39 is_stmt 1              ; attention.py:787:39
	v_cmp_gt_i16_e64 s1, 0, v111.l
	.loc	1 787 30 is_stmt 0              ; attention.py:787:30
	v_cndmask_b16 v106.l, v0.l, v106.l, s4
	.loc	1 787 39                        ; attention.py:787:39
	v_cmp_gt_i16_e64 s4, 0, v110.l
	.loc	1 787 56                        ; attention.py:787:56
	v_or_b16 v0.l, v50.h, -16
	.loc	1 786 29 is_stmt 1              ; attention.py:786:29
	v_or_b16 v110.l, v50.l, v111.h
	.loc	1 787 39                        ; attention.py:787:39
	v_cmp_gt_i16_e64 s5, 0, v112.l
	.loc	1 786 29                        ; attention.py:786:29
	v_cndmask_b16 v50.l, 0, -16, s3
	.loc	1 787 30                        ; attention.py:787:30
	v_cndmask_b16 v108.l, v108.l, v110.h, s1
	.loc	1 814 31                        ; attention.py:814:31
	v_bfe_i32 v111, v106, 0, 16
	v_bfe_i32 v114, v114, 0, 16
	.loc	1 786 29                        ; attention.py:786:29
	v_or_b16 v106.l, v106.h, v0.h
	.loc	1 787 30                        ; attention.py:787:30
	v_cndmask_b16 v0.l, v50.h, v0.l, s4
	.loc	1 786 29                        ; attention.py:786:29
	v_or_b16 v50.l, v109.l, v50.l
	.loc	1 787 30                        ; attention.py:787:30
	v_cndmask_b16 v109.l, v108.h, v112.h, s5
	.loc	1 814 31                        ; attention.py:814:31
	v_bfe_i32 v108, v108, 0, 16
	v_bfe_i32 v110, v110, 0, 16
	v_cvt_f32_i32_e32 v111, v111
	v_cvt_f32_i32_e32 v112, v114
	v_bfe_i32 v0, v0, 0, 16
	v_bfe_i32 v106, v106, 0, 16
	v_cvt_f32_i32_e32 v108, v108
	v_cvt_f32_i32_e32 v110, v110
	v_bfe_i32 v109, v109, 0, 16
	v_bfe_i32 v50, v50, 0, 16
	v_mul_f32_e32 v111, v116, v111
	v_mul_f32_e32 v112, v116, v112
	v_cvt_f32_i32_e32 v0, v0
	v_cvt_f32_i32_e32 v106, v106
	v_mul_f32_e32 v108, v119, v108
	v_mul_f32_e32 v110, v119, v110
	v_cvt_f32_i32_e32 v109, v109
	v_cvt_f32_i32_e32 v50, v50
	.loc	1 814 30 is_stmt 0              ; attention.py:814:30
	v_mov_b16_e32 v120.l, v111.h
	v_mov_b16_e32 v121.l, v112.h
	.loc	1 814 31                        ; attention.py:814:31
	v_mul_f32_e32 v0, v131, v0
	.loc	1 814 30                        ; attention.py:814:30
	v_mov_b16_e32 v124.l, v108.h
	.loc	1 814 31                        ; attention.py:814:31
	v_mul_f32_e32 v106, v131, v106
	.loc	1 815 23 is_stmt 1              ; attention.py:815:23
	v_dual_mul_f32 v12, v12, v127 :: v_dual_mul_f32 v109, v113, v109
	.loc	1 814 30                        ; attention.py:814:30
	v_mov_b16_e32 v125.l, v110.h
	.loc	1 814 31 is_stmt 0              ; attention.py:814:31
	v_mul_f32_e32 v50, v113, v50
	.loc	1 815 23 is_stmt 1              ; attention.py:815:23
	v_dual_mul_f32 v14, v14, v127 :: v_dual_and_b32 v113, 1, v120
	.loc	1 814 30                        ; attention.py:814:30
	v_and_b32_e32 v114, 1, v121
	v_mov_b16_e32 v122.l, v0.h
	v_and_b32_e32 v119, 1, v124
	v_mov_b16_e32 v123.l, v106.h
	v_and_b32_e32 v116, 1, v125
	v_mov_b16_e32 v118.l, v109.h
	v_mov_b16_e64 v128.l, v50.h
	v_cmp_o_f32_e64 s1, v111, v111
	v_cmp_o_f32_e64 s3, v112, v112
	v_add3_u32 v112, v112, v114, 0x7fff
	v_add3_u32 v111, v111, v113, 0x7fff
	v_and_b32_e32 v113, 1, v122
	v_and_b32_e32 v114, 1, v123
	v_cmp_o_f32_e64 s4, v110, v110
	v_add3_u32 v110, v110, v116, 0x7fff
	v_and_b32_e32 v116, 1, v118
	v_and_b32_e32 v118, 1, v128
	v_cmp_o_f32_e64 s5, v0, v0
	v_cmp_o_f32_e64 s6, v106, v106
	v_cndmask_b16 v111.h, 0x7fff, v111.h, s1
	v_add3_u32 v0, v0, v113, 0x7fff
	.loc	1 767 25                        ; attention.py:767:25
	v_cmp_neq_f32_e64 s1, 0xff800000, v105
	v_mov_b32_e32 v105, v129
	.loc	1 814 30                        ; attention.py:814:30
	v_add3_u32 v106, v106, v114, 0x7fff
	v_cmp_o_f32_e64 s7, v108, v108
	v_cmp_o_f32_e64 s8, v109, v109
	v_cmp_o_f32_e64 s9, v50, v50
	v_add3_u32 v108, v108, v119, 0x7fff
	v_add3_u32 v109, v109, v116, 0x7fff
	v_add3_u32 v50, v50, v118, 0x7fff
	v_cndmask_b16 v111.l, 0x7fff, v112.h, s3
	v_cndmask_b16 v0.l, 0x7fff, v110.h, s4
	v_cndmask_b16 v110.h, 0x7fff, v0.h, s5
	v_cndmask_b16 v110.l, 0x7fff, v106.h, s6
	v_cndmask_b16 v0.h, 0x7fff, v108.h, s7
	v_cndmask_b16 v106.h, 0x7fff, v109.h, s8
	v_cndmask_b16 v106.l, 0x7fff, v50.h, s9
	.loc	1 767 61                        ; attention.py:767:61
	v_exp_f32_e32 v50, v117
.Ltmp37:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:769:24 ]
	v_mov_b32_e32 v124, v130
.Ltmp38:
	.loc	1 814 30                        ; attention.py:814:30
	ds_store_2addr_b32 v102, v111, v110 offset1:8
	ds_store_2addr_b32 v102, v0, v106 offset0:16 offset1:24
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[108:111], v115
	ds_load_b128 v[116:119], v115 offset:1024
	ds_load_b128 v[112:115], v103
	ds_load_b128 v[120:123], v103 offset:1024
.Ltmp39:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:769:24 ]
	v_mov_b32_dpp v124, v124 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_e32 v106, v126
.Ltmp40:
	.loc	1 767 25                        ; attention.py:767:25
	v_cndmask_b32_e64 v0, 0, v50, s1
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp41:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:769:24 ] ]
	v_add_f32_e32 v50, v130, v124
.Ltmp42:
	.loc	1 817 23                        ; attention.py:817:23
	v_fmac_f32_e32 v50, v104, v0
	s_delay_alu instid0(VALU_DEP_1)
	v_mov_b32_e32 v104, v50
	.loc	1 816 23                        ; attention.py:816:23
	s_waitcnt lgkmcnt(1)
	v_wmma_f32_16x16x16_bf16 v[9:16], v[108:115], v[51:58], v[9:16]
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[1:8], v[116:123], v[51:58], v[1:8]
	.loc	1 707 13                        ; attention.py:707:13
	s_cbranch_scc0 .LBB0_14
.LBB0_6:                                ; =>This Inner Loop Header: Depth=1
	.loc	1 735 32                        ; attention.py:735:32
	s_add_i32 s1, s36, s38
	.loc	1 741 30                        ; attention.py:741:30
	v_mov_b32_e32 v56, v49
	.loc	1 735 32                        ; attention.py:735:32
	s_mul_i32 s1, s1, s35
	.loc	1 741 30                        ; attention.py:741:30
	v_mov_b32_e32 v50, v49
	.loc	1 736 32                        ; attention.py:736:32
	v_add_lshl_u32 v0, s1, v59, 1
	.loc	1 741 30                        ; attention.py:741:30
	v_mov_b32_e32 v55, v49
	.loc	1 752 25                        ; attention.py:752:25
	s_add_i32 s4, s41, s36
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 736 32                        ; attention.py:736:32
	v_cndmask_b32_e64 v0, 0x80000000, v0, s2
	buffer_load_b128 v[51:54], v0, s[24:27], 0 offen
	v_add_nc_u32_e32 v0, 0, v72
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_waitcnt vmcnt(0)
	ds_store_b128 v66, v[51:54]
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 741 30                        ; attention.py:741:30
	v_mov_b32_e32 v51, v49
	.loc	1 736 32                        ; attention.py:736:32
	ds_load_b128 v[108:111], v0
	ds_load_b128 v[112:115], v84
	ds_load_b128 v[116:119], v85
	ds_load_b128 v[120:123], v86
	ds_load_b128 v[124:127], v87
	ds_load_b128 v[128:131], v88
	.loc	1 741 30                        ; attention.py:741:30
	v_mov_b32_e32 v52, v49
	v_mov_b32_e32 v53, v49
	v_mov_b32_e32 v54, v49
	v_mov_b32_e32 v57, v56
	v_mov_b32_e32 v56, v55
	s_delay_alu instid0(VALU_DEP_3)
	v_mov_b32_e32 v55, v54
	v_mov_b32_e32 v54, v53
	v_mov_b32_e32 v53, v52
	v_mov_b32_e32 v52, v51
	v_mov_b32_e32 v51, v50
	v_mov_b32_e32 v50, v49
	.loc	1 736 32                        ; attention.py:736:32
	ds_load_b128 v[132:135], v89
	ds_load_b128 v[136:139], v90
	.loc	1 708 31                        ; attention.py:708:31
	v_or_b32_e32 v0, s36, v67
	.loc	1 741 30                        ; attention.py:741:30
	s_waitcnt lgkmcnt(6)
	v_wmma_f32_16x16x16_bf16 v[50:57], v[108:115], v[41:48], v[50:57]
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 748 30                        ; attention.py:748:30
	v_cmp_ge_i32_e64 s1, v0, v71
	.loc	1 749 30                        ; attention.py:749:30
	v_cmp_le_i32_e64 s3, v0, v73
	v_mov_b16_e32 v0.l, 0
	.loc	1 741 30                        ; attention.py:741:30
	s_waitcnt lgkmcnt(4)
	v_wmma_f32_16x16x16_bf16 v[50:57], v[116:123], v[33:40], v[50:57]
	.loc	1 749 21                        ; attention.py:749:21
	s_and_b32 s1, s1, s3
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_mov_b16_e32 v0.h, v0.l
	s_and_b32 s6, vcc_lo, s1
	.loc	1 741 30                        ; attention.py:741:30
	s_waitcnt lgkmcnt(2)
	v_wmma_f32_16x16x16_bf16 v[50:57], v[124:131], v[25:32], v[50:57]
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[50:57], v[132:139], v[17:24], v[50:57]
	.loc	1 759 34                        ; attention.py:759:34
	s_and_saveexec_b32 s3, s6
	s_cbranch_execz .LBB0_8
; %bb.7:                                ;   in Loop: Header=BB0_6 Depth=1
	.loc	1 0 34 is_stmt 0                ; attention.py:0:34
	v_add_nc_u32_e32 v58, s4, v79
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_ashrrev_i32_e32 v109, 31, v58
	v_add_co_u32 v108, s1, s18, v58
	v_add_co_ci_u32_e64 v109, null, s19, v109, s1
	.loc	1 759 34                        ; attention.py:759:34
	global_load_d16_hi_u8 v0, v[108:109], off
.LBB0_8:                                ;   in Loop: Header=BB0_6 Depth=1
	.loc	1 0 34                          ; attention.py:0:34
	s_or_b32 exec_lo, exec_lo, s3
	.loc	1 708 31 is_stmt 1              ; attention.py:708:31
	v_or_b32_e32 v58, s36, v68
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(SALU_CYCLE_1)
	.loc	1 748 30                        ; attention.py:748:30
	v_cmp_ge_i32_e64 s1, v58, v71
	.loc	1 749 30                        ; attention.py:749:30
	v_cmp_le_i32_e64 s3, v58, v73
	.loc	1 749 21 is_stmt 0              ; attention.py:749:21
	s_and_b32 s1, s1, s3
	s_and_b32 s7, vcc_lo, s1
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 759 34 is_stmt 1              ; attention.py:759:34
	s_and_saveexec_b32 s3, s7
	s_cbranch_execz .LBB0_10
; %bb.9:                                ;   in Loop: Header=BB0_6 Depth=1
	.loc	1 0 34 is_stmt 0                ; attention.py:0:34
	v_add_nc_u32_e32 v58, s4, v74
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 759 34                        ; attention.py:759:34
	v_ashrrev_i32_e32 v109, 31, v58
	v_add_co_u32 v108, s1, s18, v58
	v_add_co_ci_u32_e64 v109, null, s19, v109, s1
	global_load_d16_u8 v0, v[108:109], off
.LBB0_10:                               ;   in Loop: Header=BB0_6 Depth=1
	.loc	1 0 34                          ; attention.py:0:34
	s_or_b32 exec_lo, exec_lo, s3
	.loc	1 708 31 is_stmt 1              ; attention.py:708:31
	v_or_b32_e32 v108, s36, v69
	v_mov_b16_e32 v58.l, 0
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 748 30                        ; attention.py:748:30
	v_cmp_ge_i32_e64 s1, v108, v71
	.loc	1 749 30                        ; attention.py:749:30
	v_cmp_le_i32_e64 s3, v108, v73
	v_mov_b16_e32 v58.h, v58.l
	.loc	1 749 21 is_stmt 0              ; attention.py:749:21
	s_and_b32 s1, s1, s3
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_and_b32 s8, vcc_lo, s1
	.loc	1 759 34 is_stmt 1              ; attention.py:759:34
	s_and_saveexec_b32 s3, s8
	s_cbranch_execz .LBB0_12
; %bb.11:                               ;   in Loop: Header=BB0_6 Depth=1
	.loc	1 0 34 is_stmt 0                ; attention.py:0:34
	v_add_nc_u32_e32 v108, s4, v75
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 759 34                        ; attention.py:759:34
	v_ashrrev_i32_e32 v109, 31, v108
	v_add_co_u32 v108, s1, s18, v108
	v_add_co_ci_u32_e64 v109, null, s19, v109, s1
	global_load_d16_hi_u8 v58, v[108:109], off
.LBB0_12:                               ;   in Loop: Header=BB0_6 Depth=1
	.loc	1 0 34                          ; attention.py:0:34
	s_or_b32 exec_lo, exec_lo, s3
	.loc	1 708 31 is_stmt 1              ; attention.py:708:31
	v_or_b32_e32 v108, s36, v70
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(SALU_CYCLE_1)
	.loc	1 748 30                        ; attention.py:748:30
	v_cmp_ge_i32_e64 s1, v108, v71
	.loc	1 749 30                        ; attention.py:749:30
	v_cmp_le_i32_e64 s3, v108, v73
	.loc	1 749 21 is_stmt 0              ; attention.py:749:21
	s_and_b32 s1, s1, s3
	s_and_b32 s9, vcc_lo, s1
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 759 34 is_stmt 1              ; attention.py:759:34
	s_and_saveexec_b32 s3, s9
	s_cbranch_execz .LBB0_5
; %bb.13:                               ;   in Loop: Header=BB0_6 Depth=1
	.loc	1 0 34 is_stmt 0                ; attention.py:0:34
	v_add_nc_u32_e32 v108, s4, v76
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 759 34                        ; attention.py:759:34
	v_ashrrev_i32_e32 v109, 31, v108
	v_add_co_u32 v108, s1, s18, v108
	v_add_co_ci_u32_e64 v109, null, s19, v109, s1
	global_load_d16_u8 v58, v[108:109], off
	s_branch .LBB0_5
.LBB0_14:                               ; %Flow
	.loc	1 0 34                          ; attention.py:0:34
	v_mov_b32_e32 v17, v65
.LBB0_15:                               ; %._crit_edge
	.loc	1 707 13 is_stmt 1              ; attention.py:707:13
	v_add_nc_u32_e32 v0, 0, v64
	v_add3_u32 v18, 0, v60, v63
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 846 17                        ; attention.py:846:17
	s_and_b32 s17, s17, 0xffff
	.loc	1 707 13                        ; attention.py:707:13
	ds_store_b32 v0, v50
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b32 v18, v18
	.loc	1 570 31                        ; attention.py:570:31
	v_lshrrev_b32_e32 v0, 2, v63
	s_mov_b32 s19, 0x31027000
	s_mov_b32 s18, 0x7ffffffe
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_or_b32_e32 v19, v0, v62
	.loc	1 598 79                        ; attention.py:598:79
	v_or_b32_e32 v0, 32, v61
	.loc	1 570 21                        ; attention.py:570:21
	v_or_b32_e32 v20, s34, v19
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_3)
	.loc	1 601 23                        ; attention.py:601:23
	v_cmp_gt_i32_e64 s0, 0x800, v20
	.loc	1 841 48                        ; attention.py:841:48
	s_waitcnt lgkmcnt(0)
	v_div_scale_f32 v20, null, v18, v18, v9
	v_div_scale_f32 v22, null, v18, v18, v10
	v_div_scale_f32 v24, null, v18, v18, v11
	v_rcp_f32_e32 v28, v20
	v_div_scale_f32 v26, null, v18, v18, v12
	v_div_scale_f32 v27, null, v18, v18, v13
	v_rcp_f32_e32 v29, v22
	v_rcp_f32_e32 v30, v24
	v_div_scale_f32 v33, null, v18, v18, v14
	v_rcp_f32_e32 v32, v26
	v_rcp_f32_e32 v34, v27
	v_fma_f32 v36, -v20, v28, 1.0
	s_delay_alu instid0(VALU_DEP_2)
	v_rcp_f32_e32 v39, v33
	v_div_scale_f32 v21, vcc_lo, v9, v18, v9
	v_div_scale_f32 v35, s4, v13, v18, v13
	v_fma_f32 v37, -v22, v29, 1.0
	v_fma_f32 v38, -v24, v30, 1.0
	v_fmac_f32_e32 v28, v36, v28
	s_delay_alu instid0(TRANS32_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	v_fma_f32 v40, -v26, v32, 1.0
	v_fma_f32 v36, -v27, v34, 1.0
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_dual_fmac_f32 v29, v37, v29 :: v_dual_fmac_f32 v30, v38, v30
	v_mul_f32_e32 v37, v21, v28
	v_fma_f32 v41, -v33, v39, 1.0
	v_div_scale_f32 v23, s1, v10, v18, v10
	v_div_scale_f32 v25, s2, v11, v18, v11
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_dual_fmac_f32 v32, v40, v32 :: v_dual_fmac_f32 v39, v41, v39
	v_fma_f32 v43, -v20, v37, v21
	v_fmac_f32_e32 v34, v36, v34
	v_mul_f32_e32 v40, v25, v30
	v_div_scale_f32 v31, s3, v12, v18, v12
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v37, v43, v28
	v_mul_f32_e32 v43, v35, v34
	v_mul_f32_e32 v38, v23, v29
	v_fma_f32 v45, -v24, v40, v25
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v20, -v20, v37, v21
	v_fma_f32 v44, -v22, v38, v23
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v40, v45, v30
	v_div_fmas_f32 v20, v20, v28, v37
	s_mov_b32 vcc_lo, s1
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v38, v44, v29
	.loc	1 841 28 is_stmt 0              ; attention.py:841:28
	v_cmp_lt_f32_e64 s1, 0, v18
	.loc	1 841 48                        ; attention.py:841:48
	v_div_fixup_f32 v9, v20, v18, v9
	v_div_scale_f32 v20, null, v18, v18, v15
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_fma_f32 v21, -v22, v38, v23
	v_fma_f32 v22, -v24, v40, v25
	v_div_scale_f32 v25, null, v18, v18, v16
	v_rcp_f32_e32 v24, v20
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_div_fmas_f32 v21, v21, v29, v38
	s_mov_b32 vcc_lo, s2
	v_div_scale_f32 v29, null, v18, v18, v1
	v_div_fmas_f32 v22, v22, v30, v40
	v_div_fixup_f32 v10, v21, v18, v10
	v_fma_f32 v21, -v27, v43, v35
	s_mov_b32 vcc_lo, s3
	v_rcp_f32_e32 v28, v25
	v_div_fixup_f32 v11, v22, v18, v11
	v_div_scale_f32 v22, s2, v14, v18, v14
	v_dual_mul_f32 v42, v31, v32 :: v_dual_fmac_f32 v43, v21, v34
	.loc	1 841 19                        ; attention.py:841:19
	v_cndmask_b32_e64 v9, 0, v9, s1
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 841 48                        ; attention.py:841:48
	v_mul_f32_e32 v21, v22, v39
	.loc	1 841 19                        ; attention.py:841:19
	v_cndmask_b32_e64 v10, 0, v10, s1
	.loc	1 841 48                        ; attention.py:841:48
	v_fma_f32 v36, -v26, v42, v31
	.loc	1 841 19                        ; attention.py:841:19
	v_cndmask_b32_e64 v11, 0, v11, s1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 841 48                        ; attention.py:841:48
	v_fmac_f32_e32 v42, v36, v32
	v_fma_f32 v23, -v26, v42, v31
	v_fma_f32 v26, -v33, v21, v22
	v_div_scale_f32 v31, null, v18, v18, v2
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_div_fmas_f32 v23, v23, v32, v42
	v_fmac_f32_e32 v21, v26, v39
	v_div_scale_f32 v26, s3, v15, v18, v15
	s_mov_b32 vcc_lo, s4
	v_div_fixup_f32 v12, v23, v18, v12
	v_fma_f32 v22, -v33, v21, v22
	v_rcp_f32_e32 v33, v31
	v_fma_f32 v23, -v27, v43, v35
	v_fma_f32 v27, -v20, v24, 1.0
	.loc	1 841 19                        ; attention.py:841:19
	v_cndmask_b32_e64 v12, 0, v12, s1
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(TRANS32_DEP_1)
	.loc	1 841 48                        ; attention.py:841:48
	v_div_fmas_f32 v23, v23, v34, v43
	s_mov_b32 vcc_lo, s2
	v_div_scale_f32 v35, s2, v1, v18, v1
	v_fma_f32 v36, -v31, v33, 1.0
	v_fmac_f32_e32 v24, v27, v24
	v_rcp_f32_e32 v27, v29
	v_div_fmas_f32 v21, v22, v39, v21
	v_div_fixup_f32 v13, v23, v18, v13
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_dual_fmac_f32 v33, v36, v33 :: v_dual_mul_f32 v30, v26, v24
	v_fma_f32 v23, -v25, v28, 1.0
	v_div_scale_f32 v36, s5, v2, v18, v2
	v_div_fixup_f32 v14, v21, v18, v14
	v_fma_f32 v22, -v20, v30, v26
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_fma_f32 v32, -v29, v27, 1.0
	v_fmac_f32_e32 v28, v23, v28
	v_div_scale_f32 v23, s4, v16, v18, v16
	v_dual_fmac_f32 v30, v22, v24 :: v_dual_fmac_f32 v27, v32, v27
	v_div_scale_f32 v32, null, v18, v18, v3
	s_mov_b32 vcc_lo, s3
	v_fma_f32 v20, -v20, v30, v26
	v_mul_f32_e32 v38, v35, v27
	v_rcp_f32_e32 v37, v32
	.loc	1 841 19                        ; attention.py:841:19
	v_cndmask_b32_e64 v13, 0, v13, s1
	v_cndmask_b32_e64 v14, 0, v14, s1
	.loc	1 841 48                        ; attention.py:841:48
	v_div_fmas_f32 v20, v20, v24, v30
	v_fma_f32 v21, -v29, v38, v35
	v_div_scale_f32 v24, s3, v3, v18, v3
	s_mov_b32 vcc_lo, s4
	v_div_fixup_f32 v15, v20, v18, v15
	v_fmac_f32_e32 v38, v21, v27
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v26, -v32, v37, 1.0
	.loc	1 841 19                        ; attention.py:841:19
	v_cndmask_b32_e64 v15, 0, v15, s1
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 841 48                        ; attention.py:841:48
	v_dual_fmac_f32 v37, v26, v37 :: v_dual_mul_f32 v34, v23, v28
	v_div_scale_f32 v26, null, v18, v18, v4
	v_fma_f32 v22, -v25, v34, v23
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_fmac_f32_e32 v34, v22, v28
	v_mul_f32_e32 v22, v36, v33
	v_fma_f32 v23, -v25, v34, v23
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_fma_f32 v21, -v31, v22, v36
	v_fma_f32 v25, -v29, v38, v35
	v_rcp_f32_e32 v29, v26
	v_div_fmas_f32 v23, v23, v28, v34
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v22, v21, v33
	v_mul_f32_e32 v21, v24, v37
	s_mov_b32 vcc_lo, s2
	v_div_fmas_f32 v25, v25, v27, v38
	v_fma_f32 v27, -v31, v22, v36
	s_delay_alu instid0(VALU_DEP_3)
	v_fma_f32 v28, -v32, v21, v24
	s_mov_b32 vcc_lo, s5
	v_div_fixup_f32 v16, v23, v18, v16
	v_fma_f32 v23, -v26, v29, 1.0
	v_div_fmas_f32 v22, v27, v33, v22
	v_fmac_f32_e32 v21, v28, v37
	s_mov_b32 vcc_lo, s3
	v_div_scale_f32 v31, null, v18, v18, v8
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_div_fixup_f32 v2, v22, v18, v2
	v_fma_f32 v20, -v32, v21, v24
	v_div_scale_f32 v22, null, v18, v18, v5
	v_fmac_f32_e32 v29, v23, v29
	v_div_scale_f32 v23, null, v18, v18, v6
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_div_fmas_f32 v20, v20, v37, v21
	v_rcp_f32_e32 v21, v22
	v_div_scale_f32 v24, null, v18, v18, v7
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_rcp_f32_e32 v27, v23
	v_div_fixup_f32 v1, v25, v18, v1
	v_div_scale_f32 v25, vcc_lo, v4, v18, v4
	v_rcp_f32_e32 v28, v24
	v_div_fixup_f32 v3, v20, v18, v3
	v_rcp_f32_e32 v33, v31
	v_fma_f32 v20, -v22, v21, 1.0
	v_mul_f32_e32 v30, v25, v29
	.loc	1 841 19                        ; attention.py:841:19
	v_cndmask_b32_e64 v16, 0, v16, s1
	s_delay_alu instid0(TRANS32_DEP_3)
	.loc	1 841 48                        ; attention.py:841:48
	v_fma_f32 v32, -v23, v27, 1.0
	.loc	1 841 19                        ; attention.py:841:19
	v_cndmask_b32_e64 v1, 0, v1, s1
	.loc	1 841 48                        ; attention.py:841:48
	v_fmac_f32_e32 v21, v20, v21
	v_div_scale_f32 v20, s2, v5, v18, v5
	v_fma_f32 v35, -v24, v28, 1.0
	v_fma_f32 v34, -v26, v30, v25
	v_fma_f32 v37, -v31, v33, 1.0
	s_delay_alu instid0(VALU_DEP_4)
	v_mul_f32_e32 v36, v20, v21
	v_fmac_f32_e32 v27, v32, v27
	v_div_scale_f32 v32, s3, v6, v18, v6
	v_fmac_f32_e32 v28, v35, v28
	v_div_scale_f32 v35, s4, v7, v18, v7
	v_fmac_f32_e32 v30, v34, v29
	v_fma_f32 v34, -v22, v36, v20
	v_fmac_f32_e32 v33, v37, v33
	v_div_scale_f32 v37, s5, v8, v18, v8
	v_dual_mul_f32 v38, v32, v27 :: v_dual_mul_f32 v39, v35, v28
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v36, v34, v21
	v_mul_f32_e32 v40, v37, v33
	v_fma_f32 v25, -v26, v30, v25
	s_delay_alu instid0(VALU_DEP_4)
	v_fma_f32 v26, -v23, v38, v32
	v_fma_f32 v34, -v24, v39, v35
	v_fma_f32 v20, -v22, v36, v20
	v_fma_f32 v22, -v31, v40, v37
	v_div_fmas_f32 v25, v25, v29, v30
	v_fmac_f32_e32 v38, v26, v27
	v_fmac_f32_e32 v39, v34, v28
	s_mov_b32 vcc_lo, s2
	v_fmac_f32_e32 v40, v22, v33
	v_div_fmas_f32 v20, v20, v21, v36
	v_fma_f32 v21, -v23, v38, v32
	v_fma_f32 v22, -v24, v39, v35
	s_mov_b32 vcc_lo, s3
	v_fma_f32 v23, -v31, v40, v37
	v_div_fixup_f32 v4, v25, v18, v4
	v_div_fmas_f32 v21, v21, v27, v38
	s_mov_b32 vcc_lo, s4
	v_div_fixup_f32 v5, v20, v18, v5
	v_div_fmas_f32 v22, v22, v28, v39
	s_mov_b32 vcc_lo, s5
	v_div_fixup_f32 v6, v21, v18, v6
	v_div_fmas_f32 v23, v23, v33, v40
	.loc	1 846 36 is_stmt 1              ; attention.py:846:36
	v_cmp_o_f32_e32 vcc_lo, v9, v9
	.loc	1 841 48                        ; attention.py:841:48
	v_div_fixup_f32 v7, v22, v18, v7
	.loc	1 846 36                        ; attention.py:846:36
	v_bfe_u32 v20, v11, 16, 1
	v_bfe_u32 v21, v12, 16, 1
	.loc	1 841 48                        ; attention.py:841:48
	v_div_fixup_f32 v8, v23, v18, v8
	.loc	1 843 24                        ; attention.py:843:24
	v_or_b32_e32 v18, s15, v19
	.loc	1 846 36                        ; attention.py:846:36
	v_bfe_u32 v19, v9, 16, 1
	v_cmp_o_f32_e64 s3, v11, v11
	v_cmp_o_f32_e64 s4, v12, v12
	.loc	1 841 19                        ; attention.py:841:19
	v_cndmask_b32_e64 v2, 0, v2, s1
	v_cndmask_b32_e64 v3, 0, v3, s1
	.loc	1 846 36                        ; attention.py:846:36
	v_add3_u32 v19, v9, v19, 0x7fff
	v_bfe_u32 v9, v10, 16, 1
	.loc	1 841 19                        ; attention.py:841:19
	v_cndmask_b32_e64 v4, 0, v4, s1
	v_cndmask_b32_e64 v5, 0, v5, s1
	v_cndmask_b32_e64 v6, 0, v6, s1
	.loc	1 846 36                        ; attention.py:846:36
	v_cndmask_b16 v19.l, 0x7fff, v19.h, vcc_lo
	v_add3_u32 v9, v10, v9, 0x7fff
	v_cmp_o_f32_e32 vcc_lo, v10, v10
	v_add3_u32 v10, v11, v20, 0x7fff
	v_add3_u32 v11, v12, v21, 0x7fff
	v_bfe_u32 v12, v14, 16, 1
	.loc	1 841 19                        ; attention.py:841:19
	v_cndmask_b32_e64 v7, 0, v7, s1
	.loc	1 846 36                        ; attention.py:846:36
	v_cndmask_b16 v19.h, 0x7fff, v9.h, vcc_lo
	v_bfe_u32 v9, v13, 16, 1
	v_cndmask_b16 v10.l, 0x7fff, v10.h, s3
	v_cmp_o_f32_e32 vcc_lo, v13, v13
	v_add3_u32 v12, v14, v12, 0x7fff
	v_cmp_o_f32_e64 s3, v14, v14
	v_add3_u32 v9, v13, v9, 0x7fff
	v_cndmask_b16 v10.h, 0x7fff, v11.h, s4
	v_bfe_u32 v11, v15, 16, 1
	v_bfe_u32 v13, v16, 16, 1
	v_bfe_u32 v14, v2, 16, 1
	v_cndmask_b16 v9.l, 0x7fff, v9.h, vcc_lo
	v_cndmask_b16 v9.h, 0x7fff, v12.h, s3
	v_bfe_u32 v12, v1, 16, 1
	v_add3_u32 v11, v15, v11, 0x7fff
	v_cmp_o_f32_e64 s4, v15, v15
	v_add3_u32 v13, v16, v13, 0x7fff
	v_cmp_o_f32_e32 vcc_lo, v16, v16
	v_add3_u32 v12, v1, v12, 0x7fff
	v_cmp_o_f32_e64 s3, v1, v1
	v_add3_u32 v1, v2, v14, 0x7fff
	v_cndmask_b16 v11.l, 0x7fff, v11.h, s4
	v_cmp_o_f32_e64 s4, v2, v2
	v_cndmask_b16 v11.h, 0x7fff, v13.h, vcc_lo
	v_bfe_u32 v2, v3, 16, 1
	v_cndmask_b16 v1.l, 0x7fff, v12.h, s3
	v_bfe_u32 v12, v4, 16, 1
	v_bfe_u32 v13, v5, 16, 1
	.loc	1 841 19                        ; attention.py:841:19
	v_cndmask_b32_e64 v8, 0, v8, s1
	.loc	1 846 36                        ; attention.py:846:36
	v_cndmask_b16 v1.h, 0x7fff, v1.h, s4
	v_add3_u32 v2, v3, v2, 0x7fff
	v_cmp_o_f32_e32 vcc_lo, v3, v3
	v_add3_u32 v3, v4, v12, 0x7fff
	v_cmp_o_f32_e64 s3, v4, v4
	v_add3_u32 v4, v5, v13, 0x7fff
	v_cmp_o_f32_e64 s4, v5, v5
	v_bfe_u32 v5, v6, 16, 1
	v_bfe_u32 v12, v7, 16, 1
	v_cndmask_b16 v2.l, 0x7fff, v2.h, vcc_lo
	v_cndmask_b16 v2.h, 0x7fff, v3.h, s3
	v_cndmask_b16 v3.l, 0x7fff, v4.h, s4
	v_add3_u32 v4, v6, v5, 0x7fff
	v_cmp_o_f32_e32 vcc_lo, v6, v6
	v_add3_u32 v5, v7, v12, 0x7fff
	v_bfe_u32 v6, v8, 16, 1
	v_cmp_o_f32_e64 s3, v7, v7
	v_cmp_eq_u32_e64 s4, 0, v17
	v_mov_b32_e32 v7, 0x5410
	v_mov_b32_e32 v12, 0x7632
	v_add3_u32 v6, v8, v6, 0x7fff
	v_cmp_o_f32_e64 s5, v8, v8
	v_cndmask_b16 v3.h, 0x7fff, v4.h, vcc_lo
	v_cndmask_b32_e64 v7, 0x1054, v7, s4
	v_cndmask_b32_e64 v12, 0x3276, v12, s4
	v_cndmask_b16 v4.l, 0x7fff, v5.h, s3
	v_cndmask_b16 v4.h, 0x7fff, v6.h, s5
	v_cndmask_b32_e64 v8, v9, v19, s4
	v_lshl_or_b32 v5, v7, 8, v7
	v_lshl_or_b32 v6, v12, 8, v12
	v_cndmask_b32_e64 v7, v19, v9, s4
	v_cndmask_b32_e64 v9, v11, v10, s4
	v_cndmask_b32_e64 v10, v10, v11, s4
	v_and_b32_e32 v5, 0x540054, v5
	v_and_b32_e32 v6, 0x760076, v6
	v_cndmask_b32_e64 v11, v3, v1, s4
	v_cndmask_b32_e64 v1, v1, v3, s4
	.loc	1 843 24                        ; attention.py:843:24
	v_mul_lo_u32 v18, s33, v18
	.loc	1 846 36                        ; attention.py:846:36
	v_lshl_or_b32 v3, v5, 4, v5
	v_lshl_or_b32 v5, v6, 4, v6
	s_mov_b32 s3, 0x76543210
	v_cndmask_b32_e64 v12, v4, v2, s4
	v_cndmask_b32_e64 v2, v2, v4, s4
	v_permlanex16_b32 v4, v7, s3, 0xfedcba98 op_sel:[1,0]
	v_and_b32_e32 v7, 0x5040504, v3
	v_and_b32_e32 v13, 0x7060706, v5
	v_permlanex16_b32 v5, v10, s3, 0xfedcba98 op_sel:[1,0]
	.loc	1 844 63                        ; attention.py:844:63
	v_cmp_gt_i32_e64 s1, s33, v61
	v_cmp_gt_i32_e64 s2, s33, v0
	.loc	1 846 36                        ; attention.py:846:36
	v_permlanex16_b32 v6, v1, s3, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v10, v2, s3, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v1, v4, v8, v7
	v_perm_b32 v2, v4, v8, v13
	v_perm_b32 v3, v5, v9, v7
	v_perm_b32 v4, v5, v9, v13
	.loc	1 846 17 is_stmt 0              ; attention.py:846:17
	v_add_lshl_u32 v9, v18, v61, 1
	v_add_lshl_u32 v0, v18, v0, 1
	.loc	1 844 24 is_stmt 1              ; attention.py:844:24
	s_and_b32 vcc_lo, s0, s1
	.loc	1 846 36                        ; attention.py:846:36
	v_perm_b32 v5, v6, v11, v7
	v_perm_b32 v6, v6, v11, v13
	.loc	1 846 17 is_stmt 0              ; attention.py:846:17
	v_cndmask_b32_e32 v9, 0x80000000, v9, vcc_lo
	.loc	1 844 24 is_stmt 1              ; attention.py:844:24
	s_and_b32 vcc_lo, s0, s2
	.loc	1 846 36                        ; attention.py:846:36
	v_perm_b32 v7, v10, v12, v7
	v_perm_b32 v8, v10, v12, v13
	.loc	1 846 17 is_stmt 0              ; attention.py:846:17
	v_cndmask_b32_e32 v0, 0x80000000, v0, vcc_lo
	s_clause 0x1
	buffer_store_b128 v[1:4], v9, s[16:19], 0 offen
	buffer_store_b128 v[5:8], v0, s[16:19], 0 offen
	.loc	1 502 5 is_stmt 1               ; attention.py:502:5
	s_nop 0
	s_sendmsg sendmsg(MSG_DEALLOC_VGPRS)
	s_endpgm
.Ltmp43:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_attention_fwd_bf16xint4_bool_local_bfloat16_d64_dv64_hq16_hkv8_lq2048_lk2048_bm32_bn16_w4_s1_ds1
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
		.amdhsa_next_free_vgpr 140
		.amdhsa_next_free_sgpr 43
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
		.amdhsa_inst_pref_size 58
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
	.size	amd_strix_halo_gfx1151_attention_fwd_bf16xint4_bool_local_bfloat16_d64_dv64_hq16_hkv8_lq2048_lk2048_bm32_bn16_w4_s1_ds1, .Lfunc_end0-amd_strix_halo_gfx1151_attention_fwd_bf16xint4_bool_local_bfloat16_d64_dv64_hq16_hkv8_lq2048_lk2048_bm32_bn16_w4_s1_ds1
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xint4_bool_local_bfloat16_d64_dv64_hq16_hkv8_lq2048_lk2048_bm32_bn16_w4_s1_ds1.num_vgpr, 140
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xint4_bool_local_bfloat16_d64_dv64_hq16_hkv8_lq2048_lk2048_bm32_bn16_w4_s1_ds1.num_agpr, 0
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xint4_bool_local_bfloat16_d64_dv64_hq16_hkv8_lq2048_lk2048_bm32_bn16_w4_s1_ds1.numbered_sgpr, 43
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xint4_bool_local_bfloat16_d64_dv64_hq16_hkv8_lq2048_lk2048_bm32_bn16_w4_s1_ds1.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xint4_bool_local_bfloat16_d64_dv64_hq16_hkv8_lq2048_lk2048_bm32_bn16_w4_s1_ds1.private_seg_size, 0
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xint4_bool_local_bfloat16_d64_dv64_hq16_hkv8_lq2048_lk2048_bm32_bn16_w4_s1_ds1.uses_vcc, 1
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xint4_bool_local_bfloat16_d64_dv64_hq16_hkv8_lq2048_lk2048_bm32_bn16_w4_s1_ds1.uses_flat_scratch, 0
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xint4_bool_local_bfloat16_d64_dv64_hq16_hkv8_lq2048_lk2048_bm32_bn16_w4_s1_ds1.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xint4_bool_local_bfloat16_d64_dv64_hq16_hkv8_lq2048_lk2048_bm32_bn16_w4_s1_ds1.has_recursion, 0
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xint4_bool_local_bfloat16_d64_dv64_hq16_hkv8_lq2048_lk2048_bm32_bn16_w4_s1_ds1.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 7396
; TotalNumSgprs: 45
; NumVgprs: 140
; ScratchSize: 0
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 17
; NumSGPRsForWavesPerEU: 45
; NumVGPRsForWavesPerEU: 140
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
	.quad	.Ltmp25-.Lfunc_begin0
	.quad	.Ltmp26-.Lfunc_begin0
	.quad	.Ltmp27-.Lfunc_begin0
	.quad	.Ltmp28-.Lfunc_begin0
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
	.quad	.Ltmp17-.Lfunc_begin0
	.quad	.Ltmp18-.Lfunc_begin0
	.quad	.Ltmp19-.Lfunc_begin0
	.quad	.Ltmp20-.Lfunc_begin0
	.quad	.Ltmp25-.Lfunc_begin0
	.quad	.Ltmp26-.Lfunc_begin0
	.quad	.Ltmp27-.Lfunc_begin0
	.quad	.Ltmp28-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges2:
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
	.quad	0
	.quad	0
.Ldebug_ranges3:
	.quad	.Ltmp29-.Lfunc_begin0
	.quad	.Ltmp30-.Lfunc_begin0
	.quad	.Ltmp31-.Lfunc_begin0
	.quad	.Ltmp32-.Lfunc_begin0
	.quad	.Ltmp33-.Lfunc_begin0
	.quad	.Ltmp34-.Lfunc_begin0
	.quad	.Ltmp41-.Lfunc_begin0
	.quad	.Ltmp42-.Lfunc_begin0
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
	.asciz	"amd_strix_halo_gfx1151_attention_fwd_bf16xint4_bool_local_bfloat16_d64_dv64_hq16_hkv8_lq2048_lk2048_bm32_bn16_w4_s1_ds1"                        ; string offset=88 ; amd_strix_halo_gfx1151_attention_fwd_bf16xint4_bool_local_bfloat16_d64_dv64_hq16_hkv8_lq2048_lk2048_bm32_bn16_w4_s1_ds1
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
    .name:           amd_strix_halo_gfx1151_attention_fwd_bf16xint4_bool_local_bfloat16_d64_dv64_hq16_hkv8_lq2048_lk2048_bm32_bn16_w4_s1_ds1
    .private_segment_fixed_size: 0
    .sgpr_count:     45
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_attention_fwd_bf16xint4_bool_local_bfloat16_d64_dv64_hq16_hkv8_lq2048_lk2048_bm32_bn16_w4_s1_ds1.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     140
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
