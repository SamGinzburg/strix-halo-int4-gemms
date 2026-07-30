	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_attention_fwd_bf16xint4_none_local_bfloat16_d64_dv64_hq16_hkv8_lq2048_lk2048_bm32_bn16_w4_s1_ds1                          ; -- Begin function amd_strix_halo_gfx1151_attention_fwd_bf16xint4_none_local_bfloat16_d64_dv64_hq16_hkv8_lq2048_lk2048_bm32_bn16_w4_s1_ds1
	.p2align	8
	.type	amd_strix_halo_gfx1151_attention_fwd_bf16xint4_none_local_bfloat16_d64_dv64_hq16_hkv8_lq2048_lk2048_bm32_bn16_w4_s1_ds1,@function
amd_strix_halo_gfx1151_attention_fwd_bf16xint4_none_local_bfloat16_d64_dv64_hq16_hkv8_lq2048_lk2048_bm32_bn16_w4_s1_ds1:                                 ; @amd_strix_halo_gfx1151_attention_fwd_bf16xint4_none_local_bfloat16_d64_dv64_hq16_hkv8_lq2048_lk2048_bm32_bn16_w4_s1_ds1
.Lfunc_begin0:
	.file	1 "<repo>/src/amd_strix_halo_kernels" "attention.py"
	.loc	1 502 0                         ; attention.py:502:0
	.cfi_sections .debug_frame
	.cfi_startproc
; %bb.0:
	s_clause 0x1
	s_load_b32 s12, s[0:1], 0x84
	s_load_b32 s10, s[0:1], 0x5c
.Ltmp0:
	.loc	1 570 31 prologue_end           ; attention.py:570:31
	v_lshrrev_b32_e32 v50, 3, v0
	.loc	1 598 79                        ; attention.py:598:79
	v_and_b32_e32 v17, 7, v0
	s_clause 0x1
	s_load_b64 s[4:5], s[0:1], 0x0
	s_load_b64 s[8:9], s[0:1], 0x7c
	.loc	1 564 19                        ; attention.py:564:19
	s_lshl_b32 s22, s2, 5
	.loc	1 597 26                        ; attention.py:597:26
	s_lshl_b32 s2, s3, 11
	.loc	1 598 79                        ; attention.py:598:79
	v_lshlrev_b32_e32 v2, 3, v17
	.loc	1 598 26 is_stmt 0              ; attention.py:598:26
	s_add_i32 s18, s22, s2
	.loc	1 570 21 is_stmt 1              ; attention.py:570:21
	v_or_b32_e32 v3, s22, v50
	s_mov_b32 s7, 0x31027000
	.loc	1 599 26                        ; attention.py:599:26
	v_lshlrev_b32_e32 v9, 1, v0
	.loc	1 570 31                        ; attention.py:570:31
	v_and_b32_e32 v64, 32, v0
	v_and_b32_e32 v66, 15, v0
	.loc	1 601 23                        ; attention.py:601:23
	v_cmp_gt_i32_e32 vcc_lo, 0x800, v3
	.loc	1 599 26                        ; attention.py:599:26
	v_lshlrev_b32_e32 v10, 4, v0
	v_and_b32_e32 v9, 0x70, v9
	v_lshlrev_b32_e32 v67, 1, v64
	v_lshlrev_b32_e32 v69, 1, v66
	.loc	1 598 26                        ; attention.py:598:26
	s_waitcnt lgkmcnt(0)
	v_mul_lo_u32 v1, s10, v50
	s_mul_i32 s2, s10, s18
	s_lshl_b32 s6, s10, 4
	.loc	1 599 26                        ; attention.py:599:26
	s_and_b32 s5, s5, 0xffff
	v_xor_b32_e32 v9, v10, v9
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 598 26                        ; attention.py:598:26
	v_add3_u32 v1, v1, v2, s2
	.loc	1 601 61                        ; attention.py:601:61
	v_cmp_gt_i32_e64 s2, s10, v2
	.loc	1 599 26                        ; attention.py:599:26
	v_add_nc_u32_e32 v70, 0, v9
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	v_lshlrev_b32_e32 v2, 1, v1
	v_add_lshl_u32 v1, v1, s6, 1
	.loc	1 601 22                        ; attention.py:601:22
	s_and_b32 vcc_lo, vcc_lo, s2
	s_mov_b32 s6, 0x7ffffffe
	.loc	1 599 26                        ; attention.py:599:26
	v_dual_cndmask_b32 v2, 0x80000000, v2 :: v_dual_cndmask_b32 v5, 0x80000000, v1
	s_clause 0x1
	buffer_load_b128 v[1:4], v2, s[4:7], 0 offen
	buffer_load_b128 v[5:8], v5, s[4:7], 0 offen
	.loc	1 616 17                        ; attention.py:616:17
	s_add_i32 s5, s22, s9
	.loc	1 613 39                        ; attention.py:613:39
	s_sub_i32 s6, s22, s8
	.loc	1 616 17                        ; attention.py:616:17
	s_add_i32 s5, s5, s12
	.loc	1 613 39                        ; attention.py:613:39
	s_add_i32 s6, s6, s12
	.loc	1 616 17                        ; attention.py:616:17
	s_add_i32 s5, s5, 32
	.loc	1 613 25                        ; attention.py:613:25
	s_max_i32 s11, s6, 0
	.loc	1 614 25                        ; attention.py:614:25
	s_min_i32 s5, s5, 0x800
	.loc	1 618 33                        ; attention.py:618:33
	s_and_b32 s23, s11, 0x7ffffff0
	.loc	1 619 35                        ; attention.py:619:35
	s_add_i32 s5, s5, 15
	s_mov_b32 s4, 0
	.loc	1 619 34 is_stmt 0              ; attention.py:619:34
	s_ashr_i32 s7, s5, 31
	.loc	1 599 26 is_stmt 1              ; attention.py:599:26
	s_waitcnt vmcnt(1)
	ds_store_b128 v70, v[1:4]
	s_waitcnt vmcnt(0)
	ds_store_b128 v70, v[5:8] offset:2048
	.loc	1 619 34                        ; attention.py:619:34
	s_lshr_b32 s7, s7, 28
	.loc	1 599 26                        ; attention.py:599:26
	s_waitcnt lgkmcnt(0)
	.loc	1 619 34                        ; attention.py:619:34
	s_add_i32 s5, s5, s7
	.loc	1 599 26                        ; attention.py:599:26
	s_barrier
	.loc	1 619 33                        ; attention.py:619:33
	s_and_b32 s33, s5, -16
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 707 13                        ; attention.py:707:13
	s_cmp_lt_i32 s23, s33
	s_cbranch_scc1 .LBB0_2
; %bb.1:                                ; %.._crit_edge_crit_edge
	.loc	1 841 48                        ; attention.py:841:48
	v_lshlrev_b32_e32 v19, 1, v64
	.loc	1 841 19 is_stmt 0              ; attention.py:841:19
	v_lshlrev_b32_e32 v18, 1, v66
	s_branch .LBB0_3
.LBB0_2:
	.loc	1 0 19                          ; attention.py:0:19
	s_mov_b32 s4, -1
                                        ; implicit-def: $vgpr19
                                        ; implicit-def: $vgpr18
.LBB0_3:                                ; %Flow91
	s_clause 0x1
	s_load_b64 s[20:21], s[0:1], 0x38
	s_load_b32 s19, s[0:1], 0x60
	v_dual_mov_b32 v8, 0 :: v_dual_lshlrev_b32 v49, 2, v66
	v_and_b32_e32 v65, 64, v0
	v_and_b32_e32 v63, 16, v0
	s_and_not1_b32 vcc_lo, exec_lo, s4
	s_delay_alu instid0(VALU_DEP_3)
	v_dual_mov_b32 v7, v8 :: v_dual_add_nc_u32 v68, 0, v49
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
	v_mov_b32_e32 v98, v8
	s_cbranch_vccnz .LBB0_7
; %bb.4:                                ; %.lr.ph
	.loc	1 566 23 is_stmt 1              ; attention.py:566:23
	s_ashr_i32 s4, s3, 31
	.loc	1 570 31                        ; attention.py:570:31
	v_lshrrev_b32_e32 v1, 1, v64
	.loc	1 566 23                        ; attention.py:566:23
	s_lshr_b32 s4, s4, 28
	v_dual_mov_b32 v91, 0xff800000 :: v_dual_lshlrev_b32 v2, 4, v17
	s_add_i32 s14, s3, s4
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 570 21                        ; attention.py:570:21
	v_or3_b32 v1, v66, v1, s22
	.loc	1 567 22                        ; attention.py:567:22
	s_and_b32 s4, s14, 0xfff0
	s_load_b32 s13, s[0:1], 0x64
	s_sub_i32 s3, s3, s4
	s_clause 0x1
	s_load_b128 s[4:7], s[0:1], 0x8
	s_load_b64 s[24:25], s[0:1], 0x28
	.loc	1 569 19                        ; attention.py:569:19
	s_bfe_u32 s0, s3, 0x10007
	.loc	1 599 26                        ; attention.py:599:26
	v_lshl_or_b32 v71, v66, 7, v2
	.loc	1 569 19                        ; attention.py:569:19
	s_add_i32 s3, s3, s0
	.loc	1 573 27                        ; attention.py:573:27
	v_add_nc_u32_e32 v3, s12, v1
	.loc	1 569 19                        ; attention.py:569:19
	s_bfe_i32 s0, s3, 0x80000
	.loc	1 566 23                        ; attention.py:566:23
	s_ashr_i32 s1, s14, 4
	.loc	1 569 19                        ; attention.py:569:19
	s_sext_i32_i16 s0, s0
	.loc	1 601 23                        ; attention.py:601:23
	v_cmp_gt_i32_e32 vcc_lo, 0x800, v1
	.loc	1 569 19                        ; attention.py:569:19
	s_ashr_i32 s3, s0, 1
	.loc	1 599 26                        ; attention.py:599:26
	v_lshl_or_b32 v1, v64, 6, v71
	.loc	1 748 47                        ; attention.py:748:47
	v_subrev_nc_u32_e32 v73, s8, v3
	.loc	1 749 47                        ; attention.py:749:47
	v_add_nc_u32_e32 v74, s9, v3
	.loc	1 707 13                        ; attention.py:707:13
	s_lshr_b32 s8, s11, 4
	s_lshl_b32 s9, s1, 10
	s_lshl_b32 s11, s3, 7
	s_add_i32 s9, s8, s9
	s_lshl_b32 s12, s3, 11
	s_add_i32 s9, s9, s11
	s_lshl_b32 s11, s1, 14
	s_lshl_b32 s1, s1, 13
	s_lshl_b32 s3, s3, 10
	.loc	1 599 26                        ; attention.py:599:26
	v_xad_u32 v3, 0x70, v1, 0
	.loc	1 771 51                        ; attention.py:771:51
	v_lshrrev_b32_e32 v7, 4, v0
	.loc	1 599 26                        ; attention.py:599:26
	v_xad_u32 v4, 0x60, v1, 0
	.loc	1 707 13                        ; attention.py:707:13
	s_add_i32 s1, s1, s3
	.loc	1 599 26                        ; attention.py:599:26
	ds_load_b128 v[21:24], v3
	ds_load_b128 v[17:20], v4
	.loc	1 707 13                        ; attention.py:707:13
	s_lshl3_add_u32 s1, s8, s1
	.loc	1 599 26                        ; attention.py:599:26
	v_xad_u32 v3, 0x50, v1, 0
	.loc	1 707 13                        ; attention.py:707:13
	v_or_b32_e32 v7, s1, v7
	.loc	1 599 26                        ; attention.py:599:26
	v_xad_u32 v4, v1, 64, 0
	v_xad_u32 v8, v1, 48, 0
	v_xad_u32 v9, v1, 32, 0
	v_xad_u32 v10, v1, 16, 0
	.loc	1 778 24                        ; attention.py:778:24
	s_waitcnt lgkmcnt(0)
	v_cmp_gt_i32_e64 s0, s19, v49
	.loc	1 771 51                        ; attention.py:771:51
	v_and_b32_e32 v6, 0x70, v0
	v_bfe_i32 v12, v0, 0, 1
	v_lshrrev_b32_e32 v13, 1, v65
	.loc	1 707 13                        ; attention.py:707:13
	v_mad_u64_u32 v[61:62], null, s19, v7, v[49:50]
	v_mov_b32_e32 v49, 0
	.loc	1 599 26                        ; attention.py:599:26
	v_add_nc_u32_e32 v1, 0, v1
	ds_load_b128 v[29:32], v3
	ds_load_b128 v[25:28], v4
	ds_load_b128 v[37:40], v8
	ds_load_b128 v[33:36], v9
	ds_load_b128 v[45:48], v10
	ds_load_b128 v[41:44], v1
	v_xor_b32_e32 v9, 0x50, v71
	v_and_b32_e32 v12, 0x90, v12
	v_lshlrev_b32_e32 v15, 5, v0
	v_bfe_i32 v16, v0, 2, 1
	v_add_nc_u32_e32 v13, 0, v13
	v_add_nc_u32_e32 v81, 0, v9
	v_mov_b32_e32 v9, 0
	v_lshrrev_b32_e32 v6, 2, v6
	v_xor_b32_e32 v1, 16, v71
	v_xor_b32_e32 v3, 32, v71
	v_xor_b32_e32 v4, 48, v71
	v_add_nc_u32_e32 v85, v13, v69
	v_mov_b32_e32 v13, v49
	v_xor_b32_e32 v6, v12, v6
	v_and_b32_e32 v12, 0x160, v15
	v_and_b32_e32 v15, 0x90, v16
	v_lshlrev_b32_e32 v16, 4, v64
	.loc	1 707 13                        ; attention.py:707:13
	s_add_i32 s11, s11, s12
	v_add_nc_u32_e32 v77, 0, v1
	v_dual_mov_b32 v7, v49 :: v_dual_add_nc_u32 v78, 0, v3
	v_dual_mov_b32 v98, 0 :: v_dual_add_nc_u32 v79, 0, v4
	v_mov_b32_e32 v1, 0
	v_mov_b32_e32 v3, v49
	v_mov_b32_e32 v4, v49
	v_or3_b32 v75, v15, v16, v12
	v_add3_u32 v12, s11, s23, v50
	v_xor_b32_e32 v11, 0x70, v71
	v_lshlrev_b32_e32 v14, 7, v0
	v_add_nc_u32_e32 v5, 0, v64
	v_lshlrev_b32_e32 v15, 3, v66
	v_mul_lo_u32 v12, s10, v12
	v_add_nc_u32_e32 v83, 0, v11
	v_dual_mov_b32 v11, v49 :: v_dual_and_b32 v14, 0x700, v14
	s_mul_i32 s9, s19, s9
	v_xor_b32_e32 v8, 64, v71
	v_xor_b32_e32 v10, 0x60, v71
	v_xor_b32_e32 v16, 16, v75
	v_lshl_add_u32 v76, s9, 1, v15
	v_lshl_add_u32 v62, v12, 1, v2
	v_mov_b32_e32 v12, v49
	v_lshl_add_u32 v5, v63, 2, v5
	v_dual_mov_b32 v15, v49 :: v_dual_add_nc_u32 v14, 0, v14
	.loc	1 571 21                        ; attention.py:571:21
	v_lshrrev_b32_e32 v72, 4, v63
	v_add_nc_u32_e32 v80, 0, v8
	v_add_nc_u32_e32 v82, 0, v10
	v_add_nc_u32_e32 v84, v5, v69
	v_dual_mov_b32 v10, v49 :: v_dual_add_nc_u32 v87, 0, v16
	v_mov_b32_e32 v16, v49
	v_mov_b32_e32 v2, v49
	v_dual_mov_b32 v5, v49 :: v_dual_add_nc_u32 v86, v14, v6
	v_mov_b32_e32 v14, v49
	v_mov_b32_e32 v6, v49
	v_mov_b32_e32 v8, v49
	.loc	1 742 27                        ; attention.py:742:27
	s_mul_f32 s34, s13, 0x3fb8aa3b
	s_and_b32 s5, s5, 0xffff
	s_mov_b32 s31, 0x31027000
	s_mov_b32 s30, 0x7ffffffe
	s_and_b32 s37, s7, 0xffff
	s_and_b32 s25, s25, 0xffff
	.loc	1 707 13                        ; attention.py:707:13
	s_lshl_b32 s35, s19, 1
	s_lshl_b32 s40, s19, 3
	s_lshl_b32 s41, s10, 5
	s_mov_b32 s28, s4
	s_mov_b32 s29, s5
	s_mov_b32 s42, 0x76543210
	s_mov_b32 s36, s6
	s_mov_b32 s38, s30
	s_mov_b32 s39, s31
	s_mov_b32 s26, s30
	s_mov_b32 s27, s31
.LBB0_5:                                ; =>This Inner Loop Header: Depth=1
	.loc	1 736 32                        ; attention.py:736:32
	v_cndmask_b32_e64 v50, 0x80000000, v62, s2
	.loc	1 775 32                        ; attention.py:775:32
	v_cndmask_b32_e64 v95, 0x80000000, v61, s0
	.loc	1 797 41                        ; attention.py:797:41
	v_cndmask_b32_e64 v96, 0x80000000, v76, s0
	.loc	1 741 30                        ; attention.py:741:30
	v_dual_mov_b32 v51, v49 :: v_dual_add_nc_u32 v94, 0, v71
	.loc	1 736 32                        ; attention.py:736:32
	buffer_load_b128 v[57:60], v50, s[28:31], 0 offen
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 741 30                        ; attention.py:741:30
	v_dual_mov_b32 v50, v49 :: v_dual_add_nc_u32 v97, s23, v72
	v_dual_mov_b32 v56, v49 :: v_dual_add_nc_u32 v61, s40, v61
	v_dual_mov_b32 v52, v49 :: v_dual_add_nc_u32 v93, v68, v67
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 708 31                        ; attention.py:708:31
	v_add_nc_u32_e32 v108, 6, v97
	v_add_nc_u32_e32 v109, 8, v97
	v_add_nc_u32_e32 v110, 10, v97
	v_add_nc_u32_e32 v111, 12, v97
	.loc	1 735 32                        ; attention.py:735:32
	v_add_nc_u32_e32 v112, 14, v97
	.loc	1 748 30                        ; attention.py:748:30
	v_cmp_ge_i32_e64 s8, v108, v73
	.loc	1 749 30                        ; attention.py:749:30
	v_cmp_le_i32_e64 s9, v108, v74
	.loc	1 748 30                        ; attention.py:748:30
	v_cmp_ge_i32_e64 s10, v109, v73
	.loc	1 749 30                        ; attention.py:749:30
	v_cmp_le_i32_e64 s11, v109, v74
	.loc	1 748 30                        ; attention.py:748:30
	v_cmp_ge_i32_e64 s12, v110, v73
	.loc	1 749 30                        ; attention.py:749:30
	v_cmp_le_i32_e64 s13, v110, v74
	.loc	1 748 30                        ; attention.py:748:30
	v_cmp_ge_i32_e64 s14, v111, v73
	.loc	1 749 30                        ; attention.py:749:30
	v_cmp_le_i32_e64 s15, v111, v74
	.loc	1 748 30                        ; attention.py:748:30
	v_cmp_ge_i32_e64 s16, v112, v73
	.loc	1 749 30                        ; attention.py:749:30
	v_cmp_le_i32_e64 s17, v112, v74
	.loc	1 741 30                        ; attention.py:741:30
	v_dual_mov_b32 v53, v49 :: v_dual_add_nc_u32 v92, v68, v65
	v_dual_mov_b32 v54, v49 :: v_dual_add_nc_u32 v89, 0, v75
	v_dual_mov_b32 v55, v49 :: v_dual_mov_b32 v88, v98
	v_dual_mov_b32 v107, v56 :: v_dual_add_nc_u32 v76, s35, v76
	s_delay_alu instid0(VALU_DEP_2)
	v_dual_mov_b32 v105, v54 :: v_dual_mov_b32 v106, v55
	v_dual_mov_b32 v104, v53 :: v_dual_mov_b32 v103, v52
	v_dual_mov_b32 v102, v51 :: v_dual_mov_b32 v101, v50
	v_dual_mov_b32 v100, v49 :: v_dual_add_nc_u32 v55, 4, v97
	.loc	1 748 30                        ; attention.py:748:30
	v_cmp_ge_i32_e64 s1, v97, v73
	.loc	1 749 30                        ; attention.py:749:30
	v_cmp_le_i32_e64 s3, v97, v74
	.loc	1 775 32                        ; attention.py:775:32
	v_mov_b16_e32 v90.l, 0
	.loc	1 707 13                        ; attention.py:707:13
	s_add_i32 s23, s23, 16
	.loc	1 748 30                        ; attention.py:748:30
	v_cmp_ge_i32_e64 s6, v55, v73
	.loc	1 749 30                        ; attention.py:749:30
	v_cmp_le_i32_e64 s7, v55, v74
	.loc	1 749 21 is_stmt 0              ; attention.py:749:21
	s_and_b32 s43, s1, s3
	.loc	1 797 41 is_stmt 1              ; attention.py:797:41
	v_mov_b16_e32 v99.l, v90.l
	.loc	1 814 30                        ; attention.py:814:30
	v_mov_b16_e32 v98.h, v90.l
	v_mov_b16_e32 v50.h, v90.l
	.loc	1 749 21                        ; attention.py:749:21
	s_and_b32 s3, s6, s7
	s_and_b32 s6, s12, s13
	s_and_b32 s7, s14, s15
	s_and_b32 s3, vcc_lo, s3
	s_and_b32 s6, vcc_lo, s6
	s_and_b32 s7, vcc_lo, s7
	.loc	1 814 30                        ; attention.py:814:30
	v_mov_b16_e32 v53.h, v90.l
	v_mov_b16_e32 v51.h, v90.l
	v_mov_b16_e32 v56.h, v90.l
	v_mov_b16_e32 v52.h, v90.l
	.loc	1 707 13                        ; attention.py:707:13
	v_add_nc_u32_e32 v62, s41, v62
	.loc	1 736 32                        ; attention.py:736:32
	s_waitcnt vmcnt(0)
	ds_store_b128 v70, v[57:60]
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 775 32                        ; attention.py:775:32
	buffer_load_b32 v95, v95, s[36:39], 0 offen
	.loc	1 797 41                        ; attention.py:797:41
	buffer_load_b64 v[59:60], v96, s[24:27], 0 offen
	.loc	1 736 32                        ; attention.py:736:32
	ds_load_b128 v[108:111], v94
	ds_load_b128 v[112:115], v77
	.loc	1 741 30                        ; attention.py:741:30
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[100:107], v[108:115], v[41:48], v[100:107]
	.loc	1 736 32                        ; attention.py:736:32
	ds_load_b128 v[108:111], v78
	ds_load_b128 v[112:115], v79
	.loc	1 741 30                        ; attention.py:741:30
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[100:107], v[108:115], v[33:40], v[100:107]
	.loc	1 736 32                        ; attention.py:736:32
	ds_load_b128 v[108:111], v80
	ds_load_b128 v[112:115], v81
	.loc	1 741 30                        ; attention.py:741:30
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[100:107], v[108:115], v[25:32], v[100:107]
	.loc	1 736 32                        ; attention.py:736:32
	ds_load_b128 v[108:111], v82
	ds_load_b128 v[112:115], v83
	.loc	1 815 23                        ; attention.py:815:23
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 741 30                        ; attention.py:741:30
	v_wmma_f32_16x16x16_bf16 v[100:107], v[108:115], v[17:24], v[100:107]
	.loc	1 708 31                        ; attention.py:708:31
	v_add_nc_u32_e32 v54, 2, v97
	.loc	1 814 30                        ; attention.py:814:30
	v_mov_b16_e32 v97.h, v90.l
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 742 17                        ; attention.py:742:17
	v_mul_f32_e32 v55, s34, v100
	.loc	1 748 30                        ; attention.py:748:30
	v_cmp_ge_i32_e64 s4, v54, v73
	.loc	1 749 30                        ; attention.py:749:30
	v_cmp_le_i32_e64 s5, v54, v74
	.loc	1 742 17                        ; attention.py:742:17
	v_dual_mul_f32 v57, s34, v101 :: v_dual_mul_f32 v96, s34, v104
	v_mul_f32_e32 v58, s34, v102
	v_mul_f32_e32 v94, s34, v103
	.loc	1 749 21                        ; attention.py:749:21
	s_and_b32 s1, s4, s5
	.loc	1 742 17                        ; attention.py:742:17
	v_mul_f32_e32 v101, s34, v106
	.loc	1 749 21                        ; attention.py:749:21
	s_and_b32 s1, vcc_lo, s1
	.loc	1 742 17                        ; attention.py:742:17
	v_mul_f32_e32 v102, s34, v107
	.loc	1 764 26                        ; attention.py:764:26
	v_cndmask_b32_e64 v57, 0xff800000, v57, s1
	.loc	1 742 17                        ; attention.py:742:17
	v_mul_f32_e32 v100, s34, v105
	.loc	1 749 21                        ; attention.py:749:21
	s_and_b32 s4, s8, s9
	s_and_b32 s5, s10, s11
	s_and_b32 s8, s16, s17
	s_and_b32 s4, vcc_lo, s4
	s_and_b32 s5, vcc_lo, s5
	s_and_b32 s8, vcc_lo, s8
	s_and_b32 s9, vcc_lo, s43
	.loc	1 764 26                        ; attention.py:764:26
	v_cndmask_b32_e64 v58, 0xff800000, v58, s3
	v_cndmask_b32_e64 v103, 0xff800000, v55, s9
	v_cndmask_b32_e64 v94, 0xff800000, v94, s4
	v_cndmask_b32_e64 v96, 0xff800000, v96, s5
	v_cndmask_b32_e64 v100, 0xff800000, v100, s6
	v_cndmask_b32_e64 v101, 0xff800000, v101, s7
	v_cndmask_b32_e64 v102, 0xff800000, v102, s8
.Ltmp1:
	.file	2 "<triton>/python/triton/language" "standard.py"
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:765:29 ] ]
	v_max3_f32 v55, v103, v57, v58
.Ltmp2:
	.loc	1 767 25                        ; attention.py:767:25
	v_cmp_neq_f32_e64 s10, 0xff800000, v91
.Ltmp3:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:765:29 ] ]
	v_max3_f32 v104, v94, v96, v100
.Ltmp4:
	.loc	1 814 30                        ; attention.py:814:30
	v_mov_b16_e32 v54.h, v90.l
.Ltmp5:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:765:29 ] ]
	v_max_f32_e32 v105, v101, v102
.Ltmp6:
	.loc	1 707 13                        ; attention.py:707:13
	s_cmp_lt_i32 s23, s33
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp7:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:765:29 ] ]
	v_max3_f32 v55, v55, v104, v105
.Ltmp8:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:765:29 ]
	v_permlanex16_b32 v104, v55, s42, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp9:
	.loc	1 766 24                        ; attention.py:766:24
	v_max3_f32 v55, v91, v55, v104
	.loc	1 767 74                        ; attention.py:767:74
	v_sub_f32_e32 v104, v91, v55
	.loc	1 768 62                        ; attention.py:768:62
	v_sub_f32_e32 v103, v103, v55
	v_sub_f32_e32 v57, v57, v55
	v_sub_f32_e32 v100, v100, v55
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 767 61                        ; attention.py:767:61
	v_exp_f32_e32 v104, v104
	.loc	1 768 49                        ; attention.py:768:49
	v_exp_f32_e32 v103, v103
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_exp_f32_e32 v105, v57
	v_exp_f32_e32 v100, v100
	.loc	1 767 25                        ; attention.py:767:25
	v_cndmask_b32_e64 v57, 0, v104, s10
	s_delay_alu instid0(TRANS32_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	.loc	1 768 33                        ; attention.py:768:33
	v_cndmask_b32_e64 v91, 0, v103, s9
	v_cndmask_b32_e64 v103, 0, v105, s1
	s_delay_alu instid0(TRANS32_DEP_1)
	v_cndmask_b32_e64 v100, 0, v100, s6
	.loc	1 815 23                        ; attention.py:815:23
	ds_store_b32 v93, v57
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b32 v92, v92
	.loc	1 768 62                        ; attention.py:768:62
	v_sub_f32_e32 v96, v96, v55
	.loc	1 816 30                        ; attention.py:816:30
	v_bfe_u32 v93, v91, 16, 1
	v_bfe_u32 v104, v103, 16, 1
	v_cmp_o_f32_e64 s1, v91, v91
	v_bfe_u32 v108, v100, 16, 1
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 815 23                        ; attention.py:815:23
	v_mul_f32_e32 v9, v9, v92
	.loc	1 768 49                        ; attention.py:768:49
	v_exp_f32_e32 v96, v96
	.loc	1 815 23                        ; attention.py:815:23
	v_mul_f32_e32 v12, v12, v92
	v_mul_f32_e32 v14, v14, v92
	v_mul_f32_e32 v16, v16, v92
	v_mul_f32_e32 v2, v2, v92
	v_mul_f32_e32 v3, v3, v92
	v_mul_f32_e32 v4, v4, v92
	v_mul_f32_e32 v6, v6, v92
	v_mul_f32_e32 v7, v7, v92
	v_mul_f32_e32 v8, v8, v92
	.loc	1 768 33                        ; attention.py:768:33
	v_cndmask_b32_e64 v96, 0, v96, s5
	.loc	1 815 23                        ; attention.py:815:23
	v_mul_f32_e32 v11, v11, v92
	v_mul_f32_e32 v13, v13, v92
	v_mul_f32_e32 v15, v15, v92
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 816 30                        ; attention.py:816:30
	v_bfe_u32 v107, v96, 16, 1
	v_cmp_o_f32_e64 s6, v96, v96
	.loc	1 797 41                        ; attention.py:797:41
	s_waitcnt vmcnt(0)
	v_mov_b16_e32 v99.h, v60.l
	.loc	1 768 62                        ; attention.py:768:62
	v_sub_f32_e32 v102, v102, v55
	.loc	1 797 41                        ; attention.py:797:41
	v_mov_b16_e32 v90.h, v59.l
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 768 49                        ; attention.py:768:49
	v_exp_f32_e32 v102, v102
	.loc	1 768 33 is_stmt 0              ; attention.py:768:33
	v_cndmask_b32_e64 v102, 0, v102, s8
.Ltmp10:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:769:24 ] ]
	v_add_f32_e32 v111, v91, v103
.Ltmp11:
	.loc	1 768 62                        ; attention.py:768:62
	v_sub_f32_e32 v58, v58, v55
	.loc	1 816 30                        ; attention.py:816:30
	v_add3_u32 v91, v91, v93, 0x7fff
.Ltmp12:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:769:24 ] ]
	v_add_f32_e32 v93, v96, v100
.Ltmp13:
	.loc	1 816 30                        ; attention.py:816:30
	v_bfe_u32 v110, v102, 16, 1
	v_add3_u32 v96, v96, v107, 0x7fff
	.loc	1 768 49                        ; attention.py:768:49
	v_exp_f32_e32 v58, v58
	.loc	1 816 30                        ; attention.py:816:30
	v_cmp_o_f32_e64 s9, v102, v102
	v_cndmask_b16 v50.l, 0x7fff, v91.h, s1
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(TRANS32_DEP_1)
	v_cndmask_b16 v54.l, 0x7fff, v96.h, s6
	.loc	1 797 41                        ; attention.py:797:41
	v_and_b32_e32 v96, 0xffff0000, v59
	v_and_b32_e32 v59, 0xffff0000, v60
	.loc	1 775 32                        ; attention.py:775:32
	v_lshrrev_b32_e32 v60, 24, v95
	.loc	1 768 33                        ; attention.py:768:33
	v_cndmask_b32_e64 v58, 0, v58, s3
	.loc	1 768 62 is_stmt 0              ; attention.py:768:62
	v_sub_f32_e32 v101, v101, v55
	.loc	1 816 30 is_stmt 1              ; attention.py:816:30
	v_cmp_o_f32_e64 s3, v103, v103
	v_add3_u32 v103, v103, v104, 0x7fff
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_bfe_u32 v105, v58, 16, 1
	.loc	1 768 49                        ; attention.py:768:49
	v_exp_f32_e32 v101, v101
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 816 30                        ; attention.py:816:30
	v_cndmask_b16 v51.l, 0x7fff, v103.h, s3
	.loc	1 768 33                        ; attention.py:768:33
	v_cndmask_b32_e64 v101, 0, v101, s7
	.loc	1 816 30                        ; attention.py:816:30
	v_cmp_o_f32_e64 s7, v100, v100
	v_add3_u32 v100, v100, v108, 0x7fff
	s_delay_alu instid0(VALU_DEP_3)
.Ltmp14:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:769:24 ] ]
	v_add_f32_e32 v104, v101, v102
.Ltmp15:
	.loc	1 768 62                        ; attention.py:768:62
	v_sub_f32_e32 v94, v94, v55
	.loc	1 816 30                        ; attention.py:816:30
	v_bfe_u32 v109, v101, 16, 1
	v_cmp_o_f32_e64 s8, v101, v101
	v_add3_u32 v102, v102, v110, 0x7fff
.Ltmp16:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:769:24 ] ]
	v_add_f32_e32 v93, v93, v104
.Ltmp17:
	.loc	1 768 49                        ; attention.py:768:49
	v_exp_f32_e32 v94, v94
	.loc	1 816 30                        ; attention.py:816:30
	v_add3_u32 v101, v101, v109, 0x7fff
	v_cndmask_b16 v56.l, 0x7fff, v100.h, s7
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 768 33                        ; attention.py:768:33
	v_cndmask_b32_e64 v94, 0, v94, s4
	.loc	1 816 30                        ; attention.py:816:30
	v_cmp_o_f32_e64 s4, v58, v58
	v_bfe_u32 v106, v94, 16, 1
.Ltmp18:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:769:24 ] ]
	v_add_f32_e32 v112, v58, v94
.Ltmp19:
	.loc	1 816 30                        ; attention.py:816:30
	v_add3_u32 v58, v58, v105, 0x7fff
	v_cmp_o_f32_e64 s5, v94, v94
	v_cndmask_b16 v58.l, 0x7fff, v101.h, s8
	v_add3_u32 v94, v94, v106, 0x7fff
.Ltmp20:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:769:24 ] ]
	v_add_f32_e32 v105, v111, v112
.Ltmp21:
	.loc	1 816 30                        ; attention.py:816:30
	v_cndmask_b16 v52.l, 0x7fff, v58.h, s4
	v_cndmask_b16 v58.h, 0x7fff, v102.h, s9
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cndmask_b16 v53.l, 0x7fff, v94.h, s5
.Ltmp22:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:769:24 ] ]
	v_add_f32_e32 v91, v105, v93
.Ltmp23:
	.loc	1 816 30                        ; attention.py:816:30
	ds_store_b16 v84, v50
	ds_store_b16 v84, v51 offset:128
	ds_store_b16 v84, v52 offset:256
	ds_store_b16 v84, v53 offset:384
	ds_store_b16 v84, v54 offset:512
	ds_store_b16 v84, v56 offset:640
	ds_store_b16 v84, v58 offset:768
	ds_store_b16_d16_hi v84, v58 offset:896
	.loc	1 775 32                        ; attention.py:775:32
	v_bfe_i32 v93, v95, 0, 8
	.loc	1 783 76                        ; attention.py:783:76
	v_and_b16 v50.l, v95.l, 15
	.loc	1 785 32                        ; attention.py:785:32
	v_lshrrev_b16 v51.l, 4, v95.l
	.loc	1 775 32                        ; attention.py:775:32
	v_lshrrev_b32_e32 v94, 8, v95
	v_mov_b16_e32 v54.l, v95.h
	.loc	1 787 39                        ; attention.py:787:39
	v_mov_b16_e32 v53.l, v93.l
	.loc	1 786 38                        ; attention.py:786:38
	v_cmp_lt_u16_e64 s1, 7, v50.l
	.loc	1 785 32                        ; attention.py:785:32
	v_and_b16 v51.l, v51.l, 15
	.loc	1 775 32                        ; attention.py:775:32
	v_bfe_i32 v93, v94, 0, 8
	.loc	1 783 76                        ; attention.py:783:76
	v_and_b16 v52.l, v95.h, 15
	.loc	1 787 39                        ; attention.py:787:39
	v_cmp_gt_i16_e64 s3, 0, v53.l
	.loc	1 786 29                        ; attention.py:786:29
	v_cndmask_b16 v53.l, 0, -16, s1
	.loc	1 785 32                        ; attention.py:785:32
	v_lshrrev_b32_e32 v95, 20, v95
	.loc	1 816 30                        ; attention.py:816:30
	s_waitcnt lgkmcnt(0)
	.loc	1 786 38                        ; attention.py:786:38
	v_cmp_lt_u16_e64 s1, 7, v52.l
	.loc	1 816 30                        ; attention.py:816:30
	s_barrier
	.loc	1 786 29                        ; attention.py:786:29
	v_or_b16 v97.l, v50.l, v53.l
	.loc	1 787 56                        ; attention.py:787:56
	v_or_b16 v50.l, v51.l, -16
	.loc	1 787 39 is_stmt 0              ; attention.py:787:39
	v_mov_b16_e32 v53.l, v93.l
	.loc	1 775 32 is_stmt 1              ; attention.py:775:32
	v_bfe_i32 v93, v60, 0, 8
	.loc	1 816 30                        ; attention.py:816:30
	ds_load_u16_d16 v100, v85
	ds_load_u16_d16 v101, v85 offset:128
	ds_load_u16_d16 v102, v85 offset:256
	ds_load_u16_d16 v103, v85 offset:384
	ds_load_u16_d16 v104, v85 offset:512
	ds_load_u16_d16 v105, v85 offset:640
	ds_load_u16_d16 v106, v85 offset:768
	ds_load_u16_d16 v107, v85 offset:896
.Ltmp24:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:769:24 ]
	v_permlanex16_b32 v58, v91, s42, 0xfedcba98 op_sel:[1,0]
.Ltmp25:
	.loc	1 787 30                        ; attention.py:787:30
	v_cndmask_b16 v98.l, v51.l, v50.l, s3
	.loc	1 785 32                        ; attention.py:785:32
	v_lshrrev_b16 v50.l, 4, v94.l
	.loc	1 783 76                        ; attention.py:783:76
	v_and_b16 v51.l, v94.l, 15
	.loc	1 775 32                        ; attention.py:775:32
	v_bfe_i32 v94, v54, 0, 8
	.loc	1 787 39                        ; attention.py:787:39
	v_mov_b16_e32 v56.l, v93.l
	v_cmp_gt_i16_e64 s3, 0, v53.l
	.loc	1 785 32                        ; attention.py:785:32
	v_and_b16 v50.l, v50.l, 15
	v_and_b16 v53.l, v95.l, 15
	.loc	1 787 39                        ; attention.py:787:39
	v_mov_b16_e32 v54.l, v94.l
	v_cmp_gt_i16_e64 s5, 0, v56.l
	.loc	1 814 31                        ; attention.py:814:31
	v_bfe_i32 v93, v98, 0, 16
	.loc	1 787 56                        ; attention.py:787:56
	v_or_b16 v56.l, v50.l, -16
	.loc	1 815 23                        ; attention.py:815:23
	v_mul_f32_e32 v1, v1, v92
	.loc	1 787 39                        ; attention.py:787:39
	v_cmp_gt_i16_e64 s4, 0, v54.l
	.loc	1 786 29                        ; attention.py:786:29
	v_cndmask_b16 v54.l, 0, -16, s1
	.loc	1 786 38 is_stmt 0              ; attention.py:786:38
	v_cmp_lt_u16_e64 s1, 7, v51.l
	.loc	1 787 30 is_stmt 1              ; attention.py:787:30
	v_cndmask_b16 v56.l, v50.l, v56.l, s3
	.loc	1 814 31                        ; attention.py:814:31
	v_cvt_f32_i32_e32 v93, v93
	.loc	1 816 30                        ; attention.py:816:30
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v100, v85 offset:64
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v101, v85 offset:192
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v102, v85 offset:320
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v103, v85 offset:448
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v104, v85 offset:576
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v105, v85 offset:704
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v106, v85 offset:832
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v107, v85 offset:960
	.loc	1 786 29                        ; attention.py:786:29
	v_or_b16 v94.l, v52.l, v54.l
	.loc	1 783 76                        ; attention.py:783:76
	v_and_b16 v52.l, v60.l, 15
	.loc	1 786 29                        ; attention.py:786:29
	v_cndmask_b16 v50.l, 0, -16, s1
	.loc	1 785 32                        ; attention.py:785:32
	v_lshrrev_b16 v54.l, 4, v60.l
	.loc	1 814 31                        ; attention.py:814:31
	v_bfe_i32 v60, v97, 0, 16
	v_bfe_i32 v94, v94, 0, 16
	.loc	1 786 38                        ; attention.py:786:38
	v_cmp_lt_u16_e64 s1, 7, v52.l
	.loc	1 786 29 is_stmt 0              ; attention.py:786:29
	v_or_b16 v51.l, v51.l, v50.l
	.loc	1 787 56 is_stmt 1              ; attention.py:787:56
	v_or_b16 v50.l, v53.l, -16
	.loc	1 814 31                        ; attention.py:814:31
	v_cvt_f32_i32_e32 v60, v60
	v_bfe_i32 v95, v56, 0, 16
	v_cvt_f32_i32_e32 v94, v94
	v_bfe_i32 v108, v51, 0, 16
	.loc	1 787 30                        ; attention.py:787:30
	v_cndmask_b16 v53.l, v53.l, v50.l, s4
	.loc	1 786 29                        ; attention.py:786:29
	v_cndmask_b16 v50.l, 0, -16, s1
	.loc	1 814 31                        ; attention.py:814:31
	v_mul_f32_e32 v60, v90, v60
	v_mul_f32_e32 v90, v90, v93
	v_cvt_f32_i32_e32 v95, v95
	v_bfe_i32 v109, v53, 0, 16
	.loc	1 786 29                        ; attention.py:786:29
	v_or_b16 v52.l, v52.l, v50.l
	.loc	1 787 56                        ; attention.py:787:56
	v_or_b16 v50.l, v54.l, -16
	.loc	1 814 31                        ; attention.py:814:31
	v_cvt_f32_i32_e32 v108, v108
	v_mul_f32_e32 v94, v99, v94
	v_cvt_f32_i32_e32 v93, v109
	v_bfe_i32 v111, v52, 0, 16
	.loc	1 787 30                        ; attention.py:787:30
	v_cndmask_b16 v50.l, v54.l, v50.l, s5
	.loc	1 814 30                        ; attention.py:814:30
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 814 31 is_stmt 0              ; attention.py:814:31
	v_mul_f32_e32 v93, v99, v93
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_bfe_i32 v110, v50, 0, 16
	.loc	1 814 30                        ; attention.py:814:30
	v_mov_b16_e32 v52.l, v93.h
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cmp_o_f32_e64 s7, v93, v93
	.loc	1 814 31                        ; attention.py:814:31
	v_cvt_f32_i32_e32 v109, v110
	v_cvt_f32_i32_e32 v110, v111
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_dual_mul_f32 v99, v59, v109 :: v_dual_and_b32 v52, 1, v52
	.loc	1 815 23 is_stmt 1              ; attention.py:815:23
	v_dual_mul_f32 v10, v10, v92 :: v_dual_mul_f32 v95, v96, v95
	.loc	1 814 31                        ; attention.py:814:31
	v_mul_f32_e32 v59, v59, v110
	.loc	1 814 30 is_stmt 0              ; attention.py:814:30
	v_mov_b16_e32 v98.l, v60.h
	s_delay_alu instid0(VALU_DEP_4)
	v_mov_b16_e32 v53.l, v99.h
	.loc	1 814 31                        ; attention.py:814:31
	v_mul_f32_e32 v96, v96, v108
	.loc	1 814 30                        ; attention.py:814:30
	v_mov_b16_e32 v50.l, v95.h
	v_mov_b16_e32 v54.l, v59.h
	v_and_b32_e32 v98, 1, v98
	v_and_b32_e32 v53, 1, v53
	v_mov_b16_e32 v51.l, v96.h
	v_and_b32_e32 v50, 1, v50
	v_and_b32_e32 v54, 1, v54
	v_cmp_o_f32_e64 s1, v60, v60
	v_cmp_o_f32_e64 s5, v95, v95
	v_and_b32_e32 v51, 1, v51
	v_mov_b16_e32 v97.l, v90.h
	v_cmp_o_f32_e64 s3, v90, v90
	v_cmp_o_f32_e64 s6, v96, v96
	v_add3_u32 v60, v60, v98, 0x7fff
	v_add3_u32 v50, v95, v50, 0x7fff
	v_and_b32_e32 v97, 1, v97
	v_mov_b16_e32 v56.l, v94.h
	v_cmp_o_f32_e64 s4, v94, v94
	v_add3_u32 v51, v96, v51, 0x7fff
.Ltmp26:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:769:24 ] ]
	v_add_f32_e32 v98, v91, v58
.Ltmp27:
	.loc	1 814 30                        ; attention.py:814:30
	v_add3_u32 v90, v90, v97, 0x7fff
	v_dual_mov_b32 v91, v55 :: v_dual_and_b32 v56, 1, v56
	v_cmp_o_f32_e64 s8, v99, v99
	v_cmp_o_f32_e64 s9, v59, v59
	v_add3_u32 v52, v93, v52, 0x7fff
	s_delay_alu instid0(VALU_DEP_4)
	v_add3_u32 v56, v94, v56, 0x7fff
	v_add3_u32 v53, v99, v53, 0x7fff
	v_add3_u32 v54, v59, v54, 0x7fff
	v_cndmask_b16 v90.h, 0x7fff, v90.h, s3
	v_cndmask_b16 v90.l, 0x7fff, v60.h, s1
	v_cndmask_b16 v50.l, 0x7fff, v56.h, s4
	v_cndmask_b16 v56.h, 0x7fff, v50.h, s5
	v_cndmask_b16 v56.l, 0x7fff, v51.h, s6
	v_cndmask_b16 v50.h, 0x7fff, v52.h, s7
	v_cndmask_b16 v51.h, 0x7fff, v53.h, s8
	v_cndmask_b16 v51.l, 0x7fff, v54.h, s9
	ds_store_2addr_b32 v86, v90, v56 offset1:8
	ds_store_2addr_b32 v86, v50, v51 offset0:16 offset1:24
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[108:111], v89
	ds_load_b128 v[116:119], v89 offset:1024
	ds_load_b128 v[112:115], v87
	ds_load_b128 v[120:123], v87 offset:1024
	.loc	1 815 23                        ; attention.py:815:23
	v_dual_mul_f32 v5, v5, v92 :: v_dual_fmac_f32 v98, v88, v57
	.loc	1 816 23                        ; attention.py:816:23
	s_waitcnt lgkmcnt(1)
	v_wmma_f32_16x16x16_bf16 v[9:16], v[108:115], v[100:107], v[9:16]
	s_waitcnt lgkmcnt(0)
	s_delay_alu instid0(VALU_DEP_2)
	v_wmma_f32_16x16x16_bf16 v[1:8], v[116:123], v[100:107], v[1:8]
	.loc	1 707 13                        ; attention.py:707:13
	s_cbranch_scc1 .LBB0_5
; %bb.6:                                ; %Flow
	.loc	1 0 13 is_stmt 0                ; attention.py:0:13
	v_dual_mov_b32 v19, v67 :: v_dual_mov_b32 v18, v69
.LBB0_7:                                ; %._crit_edge
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 841 48 is_stmt 1              ; attention.py:841:48
	v_add_nc_u32_e32 v17, v68, v19
	v_add_nc_u32_e32 v19, v68, v65
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 598 79                        ; attention.py:598:79
	v_lshrrev_b32_e32 v0, 1, v0
	.loc	1 841 48                        ; attention.py:841:48
	ds_store_b32 v17, v98
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b32 v19, v19
	.loc	1 570 31                        ; attention.py:570:31
	v_lshrrev_b32_e32 v17, 2, v65
	.loc	1 841 19                        ; attention.py:841:19
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 846 17                        ; attention.py:846:17
	s_and_b32 s21, s21, 0xffff
	s_mov_b32 s23, 0x31027000
	.loc	1 570 31                        ; attention.py:570:31
	v_or_b32_e32 v20, v17, v66
	.loc	1 841 19                        ; attention.py:841:19
	v_add_nc_u32_e32 v18, 0, v18
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 570 21                        ; attention.py:570:21
	v_or_b32_e32 v21, s22, v20
	s_mov_b32 s22, 0x7ffffffe
	.loc	1 601 23                        ; attention.py:601:23
	v_cmp_gt_i32_e64 s0, 0x800, v21
	.loc	1 841 48                        ; attention.py:841:48
	v_div_scale_f32 v21, null, v19, v19, v9
	v_div_scale_f32 v23, null, v19, v19, v10
	v_div_scale_f32 v24, null, v19, v19, v11
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_rcp_f32_e32 v26, v21
	v_rcp_f32_e32 v27, v23
	v_div_scale_f32 v25, null, v19, v19, v12
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_rcp_f32_e32 v28, v24
	v_div_scale_f32 v22, vcc_lo, v9, v19, v9
	v_rcp_f32_e32 v30, v25
	v_div_scale_f32 v36, null, v19, v19, v13
	v_fma_f32 v33, -v21, v26, 1.0
	s_delay_alu instid0(TRANS32_DEP_3) | instskip(SKIP_1) | instid1(TRANS32_DEP_2)
	v_fma_f32 v34, -v23, v27, 1.0
	v_div_scale_f32 v29, s1, v10, v19, v10
	v_fma_f32 v35, -v24, v28, 1.0
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_dual_fmac_f32 v26, v33, v26 :: v_dual_fmac_f32 v27, v34, v27
	v_rcp_f32_e32 v38, v36
	v_div_scale_f32 v31, s2, v11, v19, v11
	v_mul_f32_e32 v34, v22, v26
	v_fma_f32 v37, -v25, v30, 1.0
	v_fmac_f32_e32 v28, v35, v28
	.loc	1 598 79                        ; attention.py:598:79
	v_and_b32_e32 v17, 24, v0
	.loc	1 841 48                        ; attention.py:841:48
	v_div_scale_f32 v43, null, v19, v19, v14
	v_fma_f32 v40, -v21, v34, v22
	v_fmac_f32_e32 v30, v37, v30
	v_div_scale_f32 v33, s4, v13, v19, v13
	v_div_scale_f32 v32, s3, v12, v19, v12
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_dual_fmac_f32 v34, v40, v26 :: v_dual_mul_f32 v35, v29, v27
	v_fma_f32 v40, -v36, v38, 1.0
	v_mul_f32_e32 v37, v31, v28
	.loc	1 598 79                        ; attention.py:598:79
	v_or_b32_e32 v0, 32, v17
	.loc	1 841 48                        ; attention.py:841:48
	v_fma_f32 v21, -v21, v34, v22
	v_fma_f32 v41, -v23, v35, v29
	v_fmac_f32_e32 v38, v40, v38
	v_fma_f32 v42, -v24, v37, v31
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_div_fmas_f32 v21, v21, v26, v34
	v_fmac_f32_e32 v35, v41, v27
	s_mov_b32 vcc_lo, s1
	s_delay_alu instid0(VALU_DEP_3)
	v_fmac_f32_e32 v37, v42, v28
	.loc	1 841 19 is_stmt 0              ; attention.py:841:19
	v_lshrrev_b32_e32 v41, 6, v65
	.loc	1 841 48                        ; attention.py:841:48
	v_div_fixup_f32 v9, v21, v19, v9
	v_fma_f32 v22, -v23, v35, v29
	v_div_scale_f32 v29, null, v19, v19, v15
	v_fma_f32 v23, -v24, v37, v31
	v_rcp_f32_e32 v24, v43
	s_delay_alu instid0(VALU_DEP_3)
	v_div_fmas_f32 v22, v22, v27, v35
	s_mov_b32 vcc_lo, s2
	v_mul_f32_e32 v21, v33, v38
	v_div_fmas_f32 v23, v23, v28, v37
	s_mov_b32 vcc_lo, s3
	v_div_fixup_f32 v10, v22, v19, v10
	v_div_scale_f32 v27, null, v19, v19, v16
	s_delay_alu instid0(VALU_DEP_3)
	v_div_fixup_f32 v11, v23, v19, v11
	v_rcp_f32_e32 v23, v29
	v_fma_f32 v22, -v43, v24, 1.0
	v_mul_f32_e32 v39, v32, v30
	v_fma_f32 v26, -v36, v21, v33
	v_rcp_f32_e32 v28, v27
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v24, v22, v24
	v_fma_f32 v44, -v25, v39, v32
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(TRANS32_DEP_2)
	v_fmac_f32_e32 v21, v26, v38
	v_div_scale_f32 v22, s1, v14, v19, v14
	v_fma_f32 v26, -v29, v23, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v23, v26, v23
	v_div_scale_f32 v26, s2, v15, v19, v15
	v_fmac_f32_e32 v39, v44, v30
	v_fma_f32 v25, -v25, v39, v32
	v_fma_f32 v32, -v27, v28, 1.0
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_div_fmas_f32 v25, v25, v30, v39
	v_fma_f32 v30, -v36, v21, v33
	s_mov_b32 vcc_lo, s4
	v_fmac_f32_e32 v28, v32, v28
	v_div_scale_f32 v32, s3, v16, v19, v16
	v_div_fixup_f32 v12, v25, v19, v12
	v_mul_f32_e32 v25, v22, v24
	v_div_fmas_f32 v21, v30, v38, v21
	v_mul_f32_e32 v30, v26, v23
	s_mov_b32 vcc_lo, s1
	v_div_scale_f32 v38, s4, v7, v19, v7
	v_fma_f32 v31, -v43, v25, v22
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fma_f32 v33, -v29, v30, v26
	v_div_fixup_f32 v13, v21, v19, v13
	v_fmac_f32_e32 v25, v31, v24
	v_div_scale_f32 v31, null, v19, v19, v1
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v30, v33, v23
	v_fma_f32 v21, -v43, v25, v22
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_rcp_f32_e32 v34, v31
	v_mul_f32_e32 v22, v32, v28
	v_div_fmas_f32 v21, v21, v24, v25
	v_fma_f32 v24, -v29, v30, v26
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(TRANS32_DEP_1)
	v_fma_f32 v25, -v27, v22, v32
	s_mov_b32 vcc_lo, s2
	v_div_scale_f32 v29, null, v19, v19, v2
	v_fma_f32 v26, -v31, v34, 1.0
	s_delay_alu instid0(VALU_DEP_3)
	v_fmac_f32_e32 v22, v25, v28
	v_div_fixup_f32 v14, v21, v19, v14
	v_div_fmas_f32 v23, v24, v23, v30
	s_mov_b32 vcc_lo, s3
	v_fmac_f32_e32 v34, v26, v34
	v_div_scale_f32 v26, s1, v1, v19, v1
	v_fma_f32 v21, -v27, v22, v32
	v_rcp_f32_e32 v24, v29
	v_div_scale_f32 v25, null, v19, v19, v3
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mul_f32_e32 v27, v26, v34
	v_div_fmas_f32 v21, v21, v28, v22
	v_div_fixup_f32 v15, v23, v19, v15
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(TRANS32_DEP_2)
	v_rcp_f32_e32 v23, v25
	s_mov_b32 vcc_lo, s1
	v_fma_f32 v22, -v31, v27, v26
	v_div_fixup_f32 v16, v21, v19, v16
	v_fma_f32 v30, -v29, v24, 1.0
	v_div_scale_f32 v28, s2, v2, v19, v2
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_fmac_f32_e32 v27, v22, v34
	v_div_scale_f32 v22, null, v19, v19, v4
	v_fma_f32 v21, -v31, v27, v26
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_rcp_f32_e32 v33, v22
	v_div_fmas_f32 v21, v21, v34, v27
	s_mov_b32 vcc_lo, s2
	v_div_scale_f32 v34, null, v19, v19, v5
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_div_fixup_f32 v21, v21, v19, v1
	v_fma_f32 v27, -v22, v33, 1.0
	v_fmac_f32_e32 v24, v30, v24
	v_fma_f32 v30, -v25, v23, 1.0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_dual_fmac_f32 v33, v27, v33 :: v_dual_mul_f32 v32, v28, v24
	v_fmac_f32_e32 v23, v30, v23
	v_div_scale_f32 v30, s3, v3, v19, v3
	v_div_scale_f32 v27, s1, v4, v19, v4
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v26, -v29, v32, v28
	v_mul_f32_e32 v31, v30, v23
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fmac_f32_e32 v32, v26, v24
	v_fma_f32 v26, -v25, v31, v30
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v1, -v29, v32, v28
	v_fmac_f32_e32 v31, v26, v23
	v_div_scale_f32 v28, null, v19, v19, v6
	v_rcp_f32_e32 v26, v34
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_div_fmas_f32 v1, v1, v24, v32
	v_fma_f32 v24, -v25, v31, v30
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(TRANS32_DEP_2)
	v_rcp_f32_e32 v30, v28
	v_mul_f32_e32 v25, v27, v33
	s_mov_b32 vcc_lo, s3
	v_div_fixup_f32 v2, v1, v19, v2
	v_fma_f32 v29, -v34, v26, 1.0
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v32, -v28, v30, 1.0
	v_fmac_f32_e32 v26, v29, v26
	v_div_scale_f32 v29, s2, v5, v19, v5
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_4) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v30, v32, v30
	v_div_fmas_f32 v23, v24, v23, v31
	v_fma_f32 v24, -v22, v25, v27
	v_div_scale_f32 v31, null, v19, v19, v7
	v_div_scale_f32 v32, null, v19, v19, v8
	v_fmac_f32_e32 v25, v24, v33
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_rcp_f32_e32 v35, v31
	s_mov_b32 vcc_lo, s1
	v_rcp_f32_e32 v37, v32
	v_div_fixup_f32 v3, v23, v19, v3
	v_fma_f32 v22, -v22, v25, v27
	v_mul_f32_e32 v23, v29, v26
	v_div_scale_f32 v24, s3, v6, v19, v6
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	v_div_fmas_f32 v22, v22, v33, v25
	v_fma_f32 v1, -v31, v35, 1.0
	.loc	1 841 28                        ; attention.py:841:28
	v_cmp_lt_f32_e32 vcc_lo, 0, v98
	.loc	1 841 19                        ; attention.py:841:19
	v_lshrrev_b32_e32 v33, 5, v64
	.loc	1 841 48                        ; attention.py:841:48
	v_mul_f32_e32 v36, v24, v30
	v_div_fixup_f32 v4, v22, v19, v4
	v_fmac_f32_e32 v35, v1, v35
	v_fma_f32 v1, -v32, v37, 1.0
	.loc	1 841 19                        ; attention.py:841:19
	v_cndmask_b32_e64 v39, 0, 1, vcc_lo
	v_add_nc_u32_e32 v33, v18, v33
	v_add_nc_u32_e32 v18, v18, v41
	.loc	1 841 48                        ; attention.py:841:48
	v_fma_f32 v27, -v34, v23, v29
	v_fmac_f32_e32 v37, v1, v37
	.loc	1 841 19                        ; attention.py:841:19
	v_mov_b16_e32 v1.l, v39.l
	.loc	1 841 48                        ; attention.py:841:48
	v_div_scale_f32 v39, s1, v8, v19, v8
	s_delay_alu instid0(VALU_DEP_4)
	v_fmac_f32_e32 v23, v27, v26
	v_fma_f32 v25, -v28, v36, v24
	v_mul_f32_e32 v27, v38, v35
	.loc	1 841 19                        ; attention.py:841:19
	ds_store_b8 v33, v1
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_u8_d16 v1, v18
	.loc	1 841 48                        ; attention.py:841:48
	v_mul_f32_e32 v18, v39, v37
	v_fmac_f32_e32 v36, v25, v30
	v_fma_f32 v40, -v31, v27, v38
	v_fma_f32 v22, -v34, v23, v29
	s_mov_b32 vcc_lo, s2
	v_fma_f32 v25, -v32, v18, v39
	.loc	1 844 63 is_stmt 1              ; attention.py:844:63
	v_cmp_gt_i32_e64 s2, s19, v0
	.loc	1 841 48                        ; attention.py:841:48
	v_fmac_f32_e32 v27, v40, v35
	v_div_fmas_f32 v22, v22, v26, v23
	v_fma_f32 v23, -v28, v36, v24
	v_fmac_f32_e32 v18, v25, v37
	s_mov_b32 vcc_lo, s3
	v_fma_f32 v24, -v31, v27, v38
	v_div_fixup_f32 v5, v22, v19, v5
	v_div_fmas_f32 v23, v23, v30, v36
	v_fma_f32 v25, -v32, v18, v39
	s_mov_b32 vcc_lo, s4
	v_div_fmas_f32 v24, v24, v35, v27
	.loc	1 841 19 is_stmt 0              ; attention.py:841:19
	s_waitcnt lgkmcnt(0)
	v_and_b16 v1.l, 1, v1.l
	.loc	1 841 48                        ; attention.py:841:48
	s_mov_b32 vcc_lo, s1
	.loc	1 844 63 is_stmt 1              ; attention.py:844:63
	v_cmp_gt_i32_e64 s1, s19, v17
	.loc	1 841 48                        ; attention.py:841:48
	v_div_fmas_f32 v18, v25, v37, v18
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	.loc	1 841 19 is_stmt 0              ; attention.py:841:19
	v_cmp_eq_u16_e32 vcc_lo, 1, v1.l
	.loc	1 841 48                        ; attention.py:841:48
	v_div_fixup_f32 v1, v23, v19, v6
	v_div_fixup_f32 v6, v24, v19, v7
	v_div_fixup_f32 v7, v18, v19, v8
	.loc	1 843 24 is_stmt 1              ; attention.py:843:24
	v_or_b32_e32 v18, s18, v20
	.loc	1 841 19                        ; attention.py:841:19
	v_dual_cndmask_b32 v8, 0, v9 :: v_dual_cndmask_b32 v9, 0, v10
	v_cndmask_b32_e32 v4, 0, v4, vcc_lo
	v_cndmask_b32_e32 v10, 0, v11, vcc_lo
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 843 24                        ; attention.py:843:24
	v_mul_lo_u32 v18, s19, v18
	.loc	1 846 36                        ; attention.py:846:36
	v_bfe_u32 v19, v8, 16, 1
	.loc	1 841 19                        ; attention.py:841:19
	v_dual_cndmask_b32 v11, 0, v12 :: v_dual_cndmask_b32 v6, 0, v6
	v_dual_cndmask_b32 v12, 0, v13 :: v_dual_cndmask_b32 v13, 0, v14
	v_dual_cndmask_b32 v14, 0, v15 :: v_dual_cndmask_b32 v15, 0, v16
	v_cndmask_b32_e32 v16, 0, v21, vcc_lo
	v_dual_cndmask_b32 v2, 0, v2 :: v_dual_cndmask_b32 v3, 0, v3
	v_cndmask_b32_e32 v5, 0, v5, vcc_lo
	v_cndmask_b32_e32 v7, 0, v7, vcc_lo
	.loc	1 846 36                        ; attention.py:846:36
	v_add3_u32 v19, v8, v19, 0x7fff
	.loc	1 846 17 is_stmt 0              ; attention.py:846:17
	v_add_lshl_u32 v0, v18, v0, 1
	.loc	1 841 19 is_stmt 1              ; attention.py:841:19
	v_cndmask_b32_e32 v1, 0, v1, vcc_lo
	.loc	1 846 36                        ; attention.py:846:36
	v_cmp_o_f32_e32 vcc_lo, v8, v8
	v_bfe_u32 v8, v9, 16, 1
	v_bfe_u32 v20, v10, 16, 1
	v_bfe_u32 v21, v11, 16, 1
	v_cmp_o_f32_e64 s3, v10, v10
	v_cndmask_b16 v19.l, 0x7fff, v19.h, vcc_lo
	v_add3_u32 v8, v9, v8, 0x7fff
	v_cmp_o_f32_e32 vcc_lo, v9, v9
	v_add3_u32 v9, v10, v20, 0x7fff
	v_add3_u32 v10, v11, v21, 0x7fff
	v_cmp_o_f32_e64 s4, v11, v11
	v_bfe_u32 v11, v13, 16, 1
	v_cndmask_b16 v19.h, 0x7fff, v8.h, vcc_lo
	v_bfe_u32 v8, v12, 16, 1
	v_cndmask_b16 v9.l, 0x7fff, v9.h, s3
	v_cndmask_b16 v9.h, 0x7fff, v10.h, s4
	v_bfe_u32 v10, v14, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v12, v12
	v_add3_u32 v8, v12, v8, 0x7fff
	v_add3_u32 v11, v13, v11, 0x7fff
	v_cmp_o_f32_e64 s3, v13, v13
	v_add3_u32 v10, v14, v10, 0x7fff
	v_cmp_o_f32_e64 s4, v14, v14
	v_cndmask_b16 v8.l, 0x7fff, v8.h, vcc_lo
	v_bfe_u32 v12, v15, 16, 1
	v_cndmask_b16 v8.h, 0x7fff, v11.h, s3
	v_bfe_u32 v11, v16, 16, 1
	v_bfe_u32 v13, v2, 16, 1
	v_cndmask_b16 v10.l, 0x7fff, v10.h, s4
	v_add3_u32 v12, v15, v12, 0x7fff
	v_cmp_o_f32_e32 vcc_lo, v15, v15
	v_add3_u32 v11, v16, v11, 0x7fff
	v_cmp_o_f32_e64 s3, v16, v16
	v_add3_u32 v13, v2, v13, 0x7fff
	v_cmp_o_f32_e64 s4, v2, v2
	v_cndmask_b16 v10.h, 0x7fff, v12.h, vcc_lo
	v_bfe_u32 v2, v3, 16, 1
	v_cndmask_b16 v11.l, 0x7fff, v11.h, s3
	v_bfe_u32 v12, v4, 16, 1
	v_cndmask_b16 v11.h, 0x7fff, v13.h, s4
	v_bfe_u32 v13, v5, 16, 1
	v_add3_u32 v2, v3, v2, 0x7fff
	v_cmp_o_f32_e32 vcc_lo, v3, v3
	v_add3_u32 v3, v4, v12, 0x7fff
	v_cmp_o_f32_e64 s3, v4, v4
	v_add3_u32 v4, v5, v13, 0x7fff
	v_cmp_o_f32_e64 s4, v5, v5
	v_bfe_u32 v5, v1, 16, 1
	v_bfe_u32 v12, v6, 16, 1
	v_cndmask_b16 v2.l, 0x7fff, v2.h, vcc_lo
	v_cndmask_b16 v2.h, 0x7fff, v3.h, s3
	v_cndmask_b16 v3.l, 0x7fff, v4.h, s4
	v_add3_u32 v4, v1, v5, 0x7fff
	v_cmp_o_f32_e32 vcc_lo, v1, v1
	v_add3_u32 v1, v6, v12, 0x7fff
	v_bfe_u32 v5, v7, 16, 1
	v_cmp_o_f32_e64 s3, v6, v6
	v_cmp_eq_u32_e64 s4, 0, v63
	v_mov_b32_e32 v6, 0x5410
	v_mov_b32_e32 v12, 0x7632
	v_add3_u32 v5, v7, v5, 0x7fff
	v_cmp_o_f32_e64 s5, v7, v7
	v_cndmask_b16 v3.h, 0x7fff, v4.h, vcc_lo
	v_cndmask_b32_e64 v6, 0x1054, v6, s4
	v_cndmask_b32_e64 v12, 0x3276, v12, s4
	v_cndmask_b16 v1.l, 0x7fff, v1.h, s3
	v_cndmask_b16 v1.h, 0x7fff, v5.h, s5
	v_cndmask_b32_e64 v7, v8, v19, s4
	v_lshl_or_b32 v4, v6, 8, v6
	v_lshl_or_b32 v5, v12, 8, v12
	v_cndmask_b32_e64 v6, v19, v8, s4
	v_cndmask_b32_e64 v8, v10, v9, s4
	v_cndmask_b32_e64 v9, v9, v10, s4
	v_and_b32_e32 v4, 0x540054, v4
	v_and_b32_e32 v5, 0x760076, v5
	v_cndmask_b32_e64 v10, v3, v11, s4
	v_cndmask_b32_e64 v3, v11, v3, s4
	s_mov_b32 s3, 0x76543210
	v_lshl_or_b32 v4, v4, 4, v4
	v_lshl_or_b32 v5, v5, 4, v5
	v_cndmask_b32_e64 v11, v1, v2, s4
	v_cndmask_b32_e64 v1, v2, v1, s4
	v_permlanex16_b32 v2, v6, s3, 0xfedcba98 op_sel:[1,0]
	v_and_b32_e32 v12, 0x5040504, v4
	v_and_b32_e32 v13, 0x7060706, v5
	v_permlanex16_b32 v6, v3, s3, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v4, v9, s3, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v9, v1, s3, 0xfedcba98 op_sel:[1,0]
	.loc	1 844 24                        ; attention.py:844:24
	s_and_b32 vcc_lo, s0, s1
	.loc	1 846 36                        ; attention.py:846:36
	v_perm_b32 v1, v2, v7, v12
	v_perm_b32 v5, v6, v10, v12
	v_perm_b32 v6, v6, v10, v13
	.loc	1 846 17 is_stmt 0              ; attention.py:846:17
	v_add_lshl_u32 v10, v18, v17, 1
	.loc	1 846 36                        ; attention.py:846:36
	v_perm_b32 v2, v2, v7, v13
	v_perm_b32 v3, v4, v8, v12
	v_perm_b32 v4, v4, v8, v13
	v_perm_b32 v7, v9, v11, v12
	v_perm_b32 v8, v9, v11, v13
	.loc	1 846 17                        ; attention.py:846:17
	v_cndmask_b32_e32 v9, 0x80000000, v10, vcc_lo
	.loc	1 844 24 is_stmt 1              ; attention.py:844:24
	s_and_b32 vcc_lo, s0, s2
	.loc	1 846 17                        ; attention.py:846:17
	v_cndmask_b32_e32 v0, 0x80000000, v0, vcc_lo
	s_clause 0x1
	buffer_store_b128 v[1:4], v9, s[20:23], 0 offen
	buffer_store_b128 v[5:8], v0, s[20:23], 0 offen
	.loc	1 502 5                         ; attention.py:502:5
	s_nop 0
	s_sendmsg sendmsg(MSG_DEALLOC_VGPRS)
	s_endpgm
.Ltmp28:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_attention_fwd_bf16xint4_none_local_bfloat16_d64_dv64_hq16_hkv8_lq2048_lk2048_bm32_bn16_w4_s1_ds1
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
		.amdhsa_next_free_vgpr 124
		.amdhsa_next_free_sgpr 44
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
		.amdhsa_inst_pref_size 51
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
	.size	amd_strix_halo_gfx1151_attention_fwd_bf16xint4_none_local_bfloat16_d64_dv64_hq16_hkv8_lq2048_lk2048_bm32_bn16_w4_s1_ds1, .Lfunc_end0-amd_strix_halo_gfx1151_attention_fwd_bf16xint4_none_local_bfloat16_d64_dv64_hq16_hkv8_lq2048_lk2048_bm32_bn16_w4_s1_ds1
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xint4_none_local_bfloat16_d64_dv64_hq16_hkv8_lq2048_lk2048_bm32_bn16_w4_s1_ds1.num_vgpr, 124
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xint4_none_local_bfloat16_d64_dv64_hq16_hkv8_lq2048_lk2048_bm32_bn16_w4_s1_ds1.num_agpr, 0
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xint4_none_local_bfloat16_d64_dv64_hq16_hkv8_lq2048_lk2048_bm32_bn16_w4_s1_ds1.numbered_sgpr, 44
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xint4_none_local_bfloat16_d64_dv64_hq16_hkv8_lq2048_lk2048_bm32_bn16_w4_s1_ds1.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xint4_none_local_bfloat16_d64_dv64_hq16_hkv8_lq2048_lk2048_bm32_bn16_w4_s1_ds1.private_seg_size, 0
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xint4_none_local_bfloat16_d64_dv64_hq16_hkv8_lq2048_lk2048_bm32_bn16_w4_s1_ds1.uses_vcc, 1
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xint4_none_local_bfloat16_d64_dv64_hq16_hkv8_lq2048_lk2048_bm32_bn16_w4_s1_ds1.uses_flat_scratch, 0
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xint4_none_local_bfloat16_d64_dv64_hq16_hkv8_lq2048_lk2048_bm32_bn16_w4_s1_ds1.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xint4_none_local_bfloat16_d64_dv64_hq16_hkv8_lq2048_lk2048_bm32_bn16_w4_s1_ds1.has_recursion, 0
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xint4_none_local_bfloat16_d64_dv64_hq16_hkv8_lq2048_lk2048_bm32_bn16_w4_s1_ds1.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 6468
; TotalNumSgprs: 46
; NumVgprs: 124
; ScratchSize: 0
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 15
; NumSGPRsForWavesPerEU: 46
; NumVGPRsForWavesPerEU: 124
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
	.quad	.Ltmp9-.Lfunc_begin0
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
	.quad	0
	.quad	0
.Ldebug_ranges2:
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
	.quad	0
	.quad	0
.Ldebug_ranges3:
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
	.quad	.Ltmp26-.Lfunc_begin0
	.quad	.Ltmp27-.Lfunc_begin0
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
	.asciz	"amd_strix_halo_gfx1151_attention_fwd_bf16xint4_none_local_bfloat16_d64_dv64_hq16_hkv8_lq2048_lk2048_bm32_bn16_w4_s1_ds1"                        ; string offset=88 ; amd_strix_halo_gfx1151_attention_fwd_bf16xint4_none_local_bfloat16_d64_dv64_hq16_hkv8_lq2048_lk2048_bm32_bn16_w4_s1_ds1
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
    .name:           amd_strix_halo_gfx1151_attention_fwd_bf16xint4_none_local_bfloat16_d64_dv64_hq16_hkv8_lq2048_lk2048_bm32_bn16_w4_s1_ds1
    .private_segment_fixed_size: 0
    .sgpr_count:     46
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_attention_fwd_bf16xint4_none_local_bfloat16_d64_dv64_hq16_hkv8_lq2048_lk2048_bm32_bn16_w4_s1_ds1.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     124
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
