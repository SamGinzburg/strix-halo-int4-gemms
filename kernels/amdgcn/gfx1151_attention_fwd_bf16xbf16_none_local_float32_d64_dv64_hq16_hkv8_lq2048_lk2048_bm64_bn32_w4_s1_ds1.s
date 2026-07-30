	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_none_local_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn32_w4_s1_ds1                          ; -- Begin function amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_none_local_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn32_w4_s1_ds1
	.p2align	8
	.type	amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_none_local_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn32_w4_s1_ds1,@function
amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_none_local_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn32_w4_s1_ds1:                                 ; @amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_none_local_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn32_w4_s1_ds1
.Lfunc_begin0:
	.file	1 "<repo>/src/amd_strix_halo_kernels" "attention.py"
	.loc	1 502 0                         ; attention.py:502:0
	.cfi_sections .debug_frame
	.cfi_startproc
; %bb.0:
	s_clause 0x1
	s_load_b64 s[34:35], s[0:1], 0x5c
	s_load_b64 s[48:49], s[0:1], 0x0
.Ltmp0:
	.loc	1 570 31 prologue_end           ; attention.py:570:31
	v_lshrrev_b32_e32 v65, 3, v0
	v_dual_mov_b32 v8, 0 :: v_dual_and_b32 v35, 0x60, v0
	.loc	1 598 79                        ; attention.py:598:79
	v_and_b32_e32 v34, 7, v0
	.loc	1 564 19                        ; attention.py:564:19
	s_lshl_b32 s4, s2, 6
	.loc	1 597 26                        ; attention.py:597:26
	s_lshl_b32 s2, s3, 11
	.loc	1 570 21                        ; attention.py:570:21
	v_or_b32_e32 v1, s4, v65
	v_mov_b32_e32 v7, v8
	v_dual_mov_b32 v6, v8 :: v_dual_lshlrev_b32 v33, 3, v34
	.loc	1 598 26                        ; attention.py:598:26
	s_add_i32 s46, s4, s2
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 601 23                        ; attention.py:601:23
	v_cmp_gt_i32_e64 s2, 0x800, v1
	s_mov_b32 s51, 0x31027000
	s_mov_b32 s50, 0x7ffffffe
	s_clause 0x2
	s_load_b64 s[8:9], s[0:1], 0x7c
	s_load_b64 s[44:45], s[0:1], 0x38
	s_load_b32 s10, s[0:1], 0x84
	.loc	1 570 31                        ; attention.py:570:31
	v_and_b32_e32 v66, 15, v0
	.loc	1 599 26                        ; attention.py:599:26
	v_lshlrev_b32_e32 v25, 1, v0
	.loc	1 598 26                        ; attention.py:598:26
	s_waitcnt lgkmcnt(0)
	v_mul_lo_u32 v2, s34, v65
	s_mul_i32 s5, s34, s46
	.loc	1 601 61                        ; attention.py:601:61
	v_cmp_gt_i32_e32 vcc_lo, s34, v33
	.loc	1 598 26                        ; attention.py:598:26
	s_lshl_b32 s6, s34, 4
	s_mul_i32 s7, s34, 48
	.loc	1 599 26                        ; attention.py:599:26
	s_and_b32 s49, s49, 0xffff
	.loc	1 570 31                        ; attention.py:570:31
	v_lshrrev_b32_e32 v36, 1, v35
	.loc	1 601 22                        ; attention.py:601:22
	s_and_b32 s2, s2, vcc_lo
	.loc	1 598 26                        ; attention.py:598:26
	v_add3_u32 v1, v2, v33, s5
	s_lshl_b32 s5, s34, 5
	.loc	1 599 26                        ; attention.py:599:26
	v_lshlrev_b32_e32 v84, 4, v0
	.loc	1 571 21                        ; attention.py:571:21
	v_bfe_u32 v81, v0, 4, 1
	s_delay_alu instid0(VALU_DEP_3)
	v_dual_mov_b32 v15, v8 :: v_dual_lshlrev_b32 v2, 1, v1
	v_mov_b32_e32 v5, v8
	.loc	1 599 26                        ; attention.py:599:26
	v_add_lshl_u32 v3, v1, s6, 1
	v_add_lshl_u32 v4, v1, s5, 1
	v_add_lshl_u32 v1, v1, s7, 1
	v_cndmask_b32_e64 v2, 0x80000000, v2, s2
	v_mov_b32_e32 v14, v8
	v_cndmask_b32_e64 v3, 0x80000000, v3, s2
	v_cndmask_b32_e64 v4, 0x80000000, v4, s2
	v_cndmask_b32_e64 v1, 0x80000000, v1, s2
	s_clause 0x3
	buffer_load_b128 v[37:40], v2, s[48:51], 0 offen
	buffer_load_b128 v[41:44], v3, s[48:51], 0 offen
	buffer_load_b128 v[45:48], v4, s[48:51], 0 offen
	buffer_load_b128 v[49:52], v1, s[48:51], 0 offen
	.loc	1 616 17                        ; attention.py:616:17
	s_add_i32 s2, s4, s9
	v_mov_b32_e32 v4, v8
	s_add_i32 s2, s2, s10
	v_mov_b32_e32 v3, v8
	s_add_i32 s2, s2, 64
	v_dual_mov_b32 v2, v8 :: v_dual_and_b32 v53, 0x70, v25
	.loc	1 570 31                        ; attention.py:570:31
	v_or_b32_e32 v82, v36, v66
	.loc	1 614 25                        ; attention.py:614:25
	s_min_i32 s2, s2, 0x800
	v_mov_b32_e32 v1, v8
	.loc	1 619 35                        ; attention.py:619:35
	s_add_i32 s2, s2, 31
	.loc	1 599 26                        ; attention.py:599:26
	v_xor_b32_e32 v53, v84, v53
	.loc	1 570 21                        ; attention.py:570:21
	v_or_b32_e32 v36, s4, v82
	.loc	1 613 39                        ; attention.py:613:39
	s_sub_i32 s4, s4, s8
	.loc	1 619 34                        ; attention.py:619:34
	s_ashr_i32 s5, s2, 31
	.loc	1 613 39                        ; attention.py:613:39
	s_add_i32 s4, s4, s10
	.loc	1 619 34                        ; attention.py:619:34
	s_lshr_b32 s5, s5, 27
	.loc	1 613 25                        ; attention.py:613:25
	s_max_i32 s4, s4, 0
	.loc	1 619 34                        ; attention.py:619:34
	s_add_i32 s56, s2, s5
	v_dual_mov_b32 v16, v8 :: v_dual_add_nc_u32 v85, 0, v53
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
	v_mov_b32_e32 v83, v8
	.loc	1 601 23                        ; attention.py:601:23
	v_cmp_gt_i32_e64 s2, 0x800, v36
	.loc	1 618 33                        ; attention.py:618:33
	s_and_b32 s47, s4, 0x7fffffe0
	.loc	1 619 33                        ; attention.py:619:33
	s_and_not1_b32 s56, s56, 31
	s_mov_b32 s36, 0
	.loc	1 629 13                        ; attention.py:629:13
	s_cmp_ge_i32 s47, s56
	.loc	1 599 26                        ; attention.py:599:26
	s_waitcnt vmcnt(3)
	ds_store_b128 v85, v[37:40]
	s_waitcnt vmcnt(2)
	ds_store_b128 v85, v[41:44] offset:2048
	s_waitcnt vmcnt(1)
	ds_store_b128 v85, v[45:48] offset:4096
	s_waitcnt vmcnt(0)
	ds_store_b128 v85, v[49:52] offset:6144
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 629 13                        ; attention.py:629:13
	s_cbranch_scc1 .LBB0_3
; %bb.1:                                ; %.lr.ph
	.loc	1 566 23                        ; attention.py:566:23
	s_ashr_i32 s4, s3, 31
	.loc	1 599 26                        ; attention.py:599:26
	v_lshlrev_b32_e32 v1, 7, v66
	.loc	1 566 23                        ; attention.py:566:23
	s_lshr_b32 s4, s4, 28
	.loc	1 599 26                        ; attention.py:599:26
	v_lshlrev_b32_e32 v2, 6, v35
	.loc	1 566 23                        ; attention.py:566:23
	s_add_i32 s12, s3, s4
	v_mov_b32_e32 v25, 0
	.loc	1 599 26                        ; attention.py:599:26
	v_lshlrev_b32_e32 v3, 4, v34
	.loc	1 567 22                        ; attention.py:567:22
	s_and_b32 s4, s12, 0xfff0
	v_dual_mov_b32 v73, 0xff800000 :: v_dual_add_nc_u32 v4, s10, v36
	s_sub_i32 s3, s3, s4
	v_mov_b32_e32 v26, v25
	.loc	1 569 19                        ; attention.py:569:19
	s_bfe_u32 s13, s3, 0x10007
	.loc	1 599 26                        ; attention.py:599:26
	v_or3_b32 v2, v1, v2, v3
	.loc	1 569 19                        ; attention.py:569:19
	s_add_i32 s3, s3, s13
	s_clause 0x1
	s_load_b32 s11, s[0:1], 0x64
	s_load_b128 s[4:7], s[0:1], 0x8
	s_bfe_i32 s0, s3, 0x80000
	.loc	1 670 47                        ; attention.py:670:47
	v_subrev_nc_u32_e32 v86, s8, v4
	.loc	1 671 47                        ; attention.py:671:47
	v_add_nc_u32_e32 v87, s9, v4
	.loc	1 599 26                        ; attention.py:599:26
	v_xad_u32 v4, 0x70, v2, 0
	.loc	1 569 19                        ; attention.py:569:19
	s_sext_i32_i16 s0, s0
	.loc	1 599 26                        ; attention.py:599:26
	v_xad_u32 v5, 0x60, v2, 0
	.loc	1 656 32                        ; attention.py:656:32
	s_lshl_b32 s0, s0, 10
	.loc	1 599 26                        ; attention.py:599:26
	v_xad_u32 v6, 0x50, v2, 0
	.loc	1 656 32                        ; attention.py:656:32
	s_and_b32 s10, s0, 0xfffff800
	.loc	1 696 65                        ; attention.py:696:65
	v_cmp_gt_i32_e64 s0, s35, v33
	.loc	1 599 26                        ; attention.py:599:26
	ds_load_b128 v[37:40], v4
	ds_load_b128 v[33:36], v5
	v_xad_u32 v4, v2, 48, 0
	v_xad_u32 v7, v2, 64, 0
	v_xad_u32 v5, v2, 32, 0
	ds_load_b128 v[45:48], v6
	ds_load_b128 v[41:44], v7
	v_xad_u32 v6, v2, 16, 0
	ds_load_b128 v[53:56], v4
	ds_load_b128 v[49:52], v5
	v_dual_mov_b32 v29, v25 :: v_dual_and_b32 v4, 16, v0
	v_dual_mov_b32 v27, v25 :: v_dual_add_nc_u32 v2, 0, v2
	.loc	1 656 32                        ; attention.py:656:32
	s_lshl_b32 s1, s12, 10
	.loc	1 599 26                        ; attention.py:599:26
	ds_load_b128 v[61:64], v6
	ds_load_b128 v[57:60], v2
	.loc	1 656 32                        ; attention.py:656:32
	s_and_b32 s3, s1, 0xffffc000
	v_cmp_eq_u32_e64 s1, 0, v4
	v_mov_b32_e32 v2, 0x7632
	v_or_b32_e32 v88, v3, v1
	v_mov_b32_e32 v1, 0x5410
	.loc	1 629 13                        ; attention.py:629:13
	s_add_i32 s3, s3, s10
	v_lshl_add_u32 v91, v66, 1, 0
	v_cndmask_b32_e64 v2, 0x3276, v2, s1
	v_xor_b32_e32 v4, 16, v88
	v_cndmask_b32_e64 v1, 0x1054, v1, s1
	v_add3_u32 v8, s3, s47, v65
	v_xor_b32_e32 v5, 32, v88
	v_lshl_or_b32 v2, v2, 8, v2
	v_add_nc_u32_e32 v96, 0, v4
	v_lshl_or_b32 v1, v1, 8, v1
	v_dual_mov_b32 v32, v25 :: v_dual_add_nc_u32 v11, 16, v8
	v_mov_b32_e32 v30, v25
	v_dual_mov_b32 v31, v25 :: v_dual_and_b32 v2, 0x760076, v2
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_and_b32_e32 v1, 0x540054, v1
	v_mul_lo_u32 v13, s35, v11
	v_mul_lo_u32 v14, s35, v8
	v_mul_lo_u32 v11, s34, v11
	v_xor_b32_e32 v6, 48, v88
	v_lshl_or_b32 v1, v1, 4, v1
	v_xor_b32_e32 v7, 64, v88
	v_xor_b32_e32 v9, 0x50, v88
	v_xor_b32_e32 v10, 0x60, v88
	v_xor_b32_e32 v12, 0x70, v88
	v_dual_mov_b32 v18, v25 :: v_dual_and_b32 v89, 0x5040504, v1
	v_mul_lo_u32 v1, s34, v8
	v_lshl_or_b32 v2, v2, 4, v2
	v_lshl_add_u32 v92, v13, 1, v3
	v_lshl_add_u32 v93, v14, 1, v3
	v_lshl_add_u32 v94, v11, 1, v3
	v_dual_mov_b32 v20, v25 :: v_dual_add_nc_u32 v97, 0, v5
	v_dual_mov_b32 v17, v25 :: v_dual_and_b32 v90, 0x7060706, v2
	v_lshl_add_u32 v95, v1, 1, v3
	v_dual_mov_b32 v19, v25 :: v_dual_add_nc_u32 v98, 0, v6
	v_dual_mov_b32 v22, v25 :: v_dual_add_nc_u32 v99, 0, v7
	v_dual_mov_b32 v21, v25 :: v_dual_add_nc_u32 v100, 0, v9
	v_dual_mov_b32 v24, v25 :: v_dual_add_nc_u32 v101, 0, v10
	v_dual_mov_b32 v23, v25 :: v_dual_add_nc_u32 v102, 0, v12
	v_mov_b32_e32 v28, v25
	v_mov_b32_e32 v9, v25
	v_mov_b32_e32 v10, v25
	v_mov_b32_e32 v11, v25
	v_mov_b32_e32 v12, v25
	v_mov_b32_e32 v13, v25
	v_mov_b32_e32 v14, v25
	v_mov_b32_e32 v15, v25
	v_mov_b32_e32 v16, v25
	v_mov_b32_e32 v1, v25
	v_mov_b32_e32 v2, v25
	v_mov_b32_e32 v3, v25
	v_mov_b32_e32 v4, v25
	v_mov_b32_e32 v5, v25
	v_mov_b32_e32 v6, v25
	v_mov_b32_e32 v7, v25
	v_mov_b32_e32 v8, v25
	v_mov_b32_e32 v83, v25
	.loc	1 664 27                        ; attention.py:664:27
	s_waitcnt lgkmcnt(0)
	s_mul_f32 s57, s11, 0x3fb8aa3b
	s_and_b32 s5, s5, 0xffff
	s_and_b32 s53, s7, 0xffff
	.loc	1 629 13                        ; attention.py:629:13
	s_lshl_b32 s58, s35, 6
	s_lshl_b32 s59, s34, 6
	s_mov_b32 s48, s4
	s_mov_b32 s49, s5
	s_mov_b32 s37, s36
	s_mov_b32 s38, s36
	s_mov_b32 s39, s36
	s_mov_b32 s40, s36
	s_mov_b32 s41, s36
	s_mov_b32 s42, s36
	s_mov_b32 s43, s36
	s_mov_b32 s60, 0x76543210
	s_mov_b32 s52, s6
	s_mov_b32 s54, s50
	s_mov_b32 s55, s51
.LBB0_2:                                ; =>This Inner Loop Header: Depth=1
	.loc	1 658 32                        ; attention.py:658:32
	v_dual_cndmask_b32 v65, 0x80000000, v95 :: v_dual_add_nc_u32 v74, 0, v88
	v_cndmask_b32_e32 v69, 0x80000000, v94, vcc_lo
	.loc	1 663 30                        ; attention.py:663:30
	v_dual_mov_b32 v118, s43 :: v_dual_mov_b32 v117, s42
	.loc	1 658 32                        ; attention.py:658:32
	s_clause 0x1
	buffer_load_b128 v[65:68], v65, s[48:51], 0 offen
	buffer_load_b128 v[69:72], v69, s[48:51], 0 offen
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 663 30                        ; attention.py:663:30
	v_dual_mov_b32 v116, s41 :: v_dual_mov_b32 v115, s40
	v_dual_mov_b32 v114, s39 :: v_dual_mov_b32 v113, s38
	v_dual_mov_b32 v112, s37 :: v_dual_mov_b32 v111, s36
	.loc	1 629 13                        ; attention.py:629:13
	v_add_nc_u32_e32 v95, s59, v95
	.loc	1 658 32                        ; attention.py:658:32
	s_waitcnt vmcnt(1)
	ds_store_b128 v85, v[65:68]
	s_waitcnt vmcnt(0)
	ds_store_b128 v85, v[69:72] offset:2048
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[69:72], v96
	ds_load_b128 v[65:68], v74
	ds_load_b128 v[103:106], v74 offset:2048
	ds_load_b128 v[107:110], v96 offset:2048
	.loc	1 629 13                        ; attention.py:629:13
	v_add_nc_u32_e32 v94, s59, v94
	.loc	1 663 30                        ; attention.py:663:30
	s_waitcnt lgkmcnt(2)
	v_wmma_f32_16x16x16_bf16 v[119:126], v[65:72], v[57:64], v[111:118]
	.loc	1 658 32                        ; attention.py:658:32
	ds_load_b128 v[69:72], v98
	ds_load_b128 v[65:68], v97
	.loc	1 663 30                        ; attention.py:663:30
	s_waitcnt lgkmcnt(2)
	v_wmma_f32_16x16x16_bf16 v[127:134], v[103:110], v[57:64], v[111:118]
	.loc	1 694 30                        ; attention.py:694:30
	v_add_nc_u32_e32 v116, 0, v84
	.loc	1 663 30                        ; attention.py:663:30
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[119:126], v[65:72], v[49:56], v[119:126]
	.loc	1 658 32                        ; attention.py:658:32
	ds_load_b128 v[65:68], v97 offset:2048
	ds_load_b128 v[69:72], v98 offset:2048
	.loc	1 663 30                        ; attention.py:663:30
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[127:134], v[65:72], v[49:56], v[127:134]
	.loc	1 658 32                        ; attention.py:658:32
	ds_load_b128 v[69:72], v100
	ds_load_b128 v[65:68], v99
	.loc	1 663 30                        ; attention.py:663:30
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[119:126], v[65:72], v[41:48], v[119:126]
	.loc	1 658 32                        ; attention.py:658:32
	ds_load_b128 v[65:68], v99 offset:2048
	ds_load_b128 v[69:72], v100 offset:2048
	.loc	1 663 30                        ; attention.py:663:30
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[127:134], v[65:72], v[41:48], v[127:134]
	.loc	1 658 32                        ; attention.py:658:32
	ds_load_b128 v[69:72], v102
	ds_load_b128 v[65:68], v101
	.loc	1 663 30                        ; attention.py:663:30
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[119:126], v[65:72], v[33:40], v[119:126]
	.loc	1 658 32                        ; attention.py:658:32
	ds_load_b128 v[65:68], v101 offset:2048
	ds_load_b128 v[69:72], v102 offset:2048
	.loc	1 664 17                        ; attention.py:664:17
	v_mul_f32_e32 v75, s57, v122
	v_dual_mul_f32 v77, s57, v123 :: v_dual_mul_f32 v74, s57, v126
	v_mul_f32_e32 v78, s57, v124
	.loc	1 663 30                        ; attention.py:663:30
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[127:134], v[65:72], v[33:40], v[127:134]
	.loc	1 694 30                        ; attention.py:694:30
	v_cndmask_b32_e64 v65, 0x80000000, v93, s0
	v_cndmask_b32_e64 v66, 0x80000000, v92, s0
	s_clause 0x1
	buffer_load_b128 v[109:112], v65, s[52:55], 0 offen
	buffer_load_b128 v[65:68], v66, s[52:55], 0 offen
	.loc	1 664 17                        ; attention.py:664:17
	v_mul_f32_e32 v104, s57, v134
	.loc	1 694 30                        ; attention.py:694:30
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 664 17                        ; attention.py:664:17
	v_dual_mul_f32 v69, s57, v119 :: v_dual_mul_f32 v70, s57, v120
	v_dual_mul_f32 v71, s57, v121 :: v_dual_mul_f32 v76, s57, v127
	v_dual_mul_f32 v79, s57, v128 :: v_dual_mul_f32 v80, s57, v129
	v_mul_f32_e32 v103, s57, v130
	v_dual_mul_f32 v107, s57, v131 :: v_dual_mul_f32 v108, s57, v132
	v_mul_f32_e32 v72, s57, v125
	.loc	1 629 13                        ; attention.py:629:13
	v_add_nc_u32_e32 v93, s58, v93
	v_add_nc_u32_e32 v92, s58, v92
	.loc	1 694 30                        ; attention.py:694:30
	s_waitcnt vmcnt(1)
	ds_store_b128 v116, v[109:112]
	s_waitcnt vmcnt(0)
	ds_store_b128 v116, v[65:68] offset:2048
	.loc	1 630 31                        ; attention.py:630:31
	v_add_nc_u32_e32 v109, s47, v81
	.loc	1 694 30                        ; attention.py:694:30
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 629 13                        ; attention.py:629:13
	s_add_i32 s47, s47, 32
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(SALU_CYCLE_1)
	.loc	1 670 30                        ; attention.py:670:30
	v_cmp_ge_i32_e64 s30, v109, v86
	.loc	1 671 30                        ; attention.py:671:30
	v_cmp_le_i32_e64 s31, v109, v87
	.loc	1 671 21 is_stmt 0              ; attention.py:671:21
	s_and_b32 s30, s30, s31
	s_and_b32 s30, s2, s30
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 686 26 is_stmt 1              ; attention.py:686:26
	v_cndmask_b32_e64 v69, 0xff800000, v69, s30
	.loc	1 657 32                        ; attention.py:657:32
	v_add_nc_u32_e32 v105, 30, v109
	.loc	1 670 30                        ; attention.py:670:30
	v_cmp_ge_i32_e64 s1, v105, v86
	.loc	1 671 30                        ; attention.py:671:30
	v_cmp_le_i32_e64 s3, v105, v87
	.loc	1 630 31                        ; attention.py:630:31
	v_add_nc_u32_e32 v105, 28, v109
	.loc	1 671 21                        ; attention.py:671:21
	s_and_b32 s1, s1, s3
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(SALU_CYCLE_1)
	.loc	1 670 30                        ; attention.py:670:30
	v_cmp_ge_i32_e64 s4, v105, v86
	.loc	1 671 30                        ; attention.py:671:30
	v_cmp_le_i32_e64 s5, v105, v87
	.loc	1 630 31                        ; attention.py:630:31
	v_add_nc_u32_e32 v105, 26, v109
	.loc	1 671 21                        ; attention.py:671:21
	s_and_b32 s1, s2, s1
	.loc	1 686 26                        ; attention.py:686:26
	v_cndmask_b32_e64 v111, 0xff800000, v104, s1
	.loc	1 671 21                        ; attention.py:671:21
	s_and_b32 s5, s4, s5
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	.loc	1 670 30                        ; attention.py:670:30
	v_cmp_ge_i32_e64 s6, v105, v86
	.loc	1 671 30                        ; attention.py:671:30
	v_cmp_le_i32_e64 s7, v105, v87
	.loc	1 630 31                        ; attention.py:630:31
	v_add_nc_u32_e32 v105, 24, v109
	.loc	1 671 21                        ; attention.py:671:21
	s_and_b32 s5, s2, s5
	s_and_b32 s3, s6, s7
	.loc	1 670 30                        ; attention.py:670:30
	v_cmp_ge_i32_e64 s8, v105, v86
	.loc	1 671 30                        ; attention.py:671:30
	v_cmp_le_i32_e64 s9, v105, v87
	.loc	1 630 31                        ; attention.py:630:31
	v_add_nc_u32_e32 v105, 22, v109
	.loc	1 671 21                        ; attention.py:671:21
	s_and_b32 s3, s2, s3
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 686 26                        ; attention.py:686:26
	v_cndmask_b32_e64 v110, 0xff800000, v108, s3
	.loc	1 671 21                        ; attention.py:671:21
	s_and_b32 s4, s8, s9
	.loc	1 670 30                        ; attention.py:670:30
	v_cmp_ge_i32_e64 s10, v105, v86
	.loc	1 671 30                        ; attention.py:671:30
	v_cmp_le_i32_e64 s11, v105, v87
	.loc	1 630 31                        ; attention.py:630:31
	v_add_nc_u32_e32 v105, 20, v109
	.loc	1 671 21                        ; attention.py:671:21
	s_and_b32 s4, s2, s4
	s_and_b32 s6, s10, s11
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(SALU_CYCLE_1)
	.loc	1 670 30                        ; attention.py:670:30
	v_cmp_ge_i32_e64 s12, v105, v86
	.loc	1 671 30                        ; attention.py:671:30
	v_cmp_le_i32_e64 s13, v105, v87
	.loc	1 630 31                        ; attention.py:630:31
	v_add_nc_u32_e32 v105, 18, v109
	.loc	1 671 21                        ; attention.py:671:21
	s_and_b32 s6, s2, s6
	.loc	1 686 26                        ; attention.py:686:26
	v_cndmask_b32_e64 v113, 0xff800000, v103, s6
	.loc	1 671 21                        ; attention.py:671:21
	s_and_b32 s7, s12, s13
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(SALU_CYCLE_1)
	.loc	1 670 30                        ; attention.py:670:30
	v_cmp_ge_i32_e64 s14, v105, v86
	.loc	1 671 30                        ; attention.py:671:30
	v_cmp_le_i32_e64 s15, v105, v87
	.loc	1 630 31                        ; attention.py:630:31
	v_add_nc_u32_e32 v105, 16, v109
	.loc	1 671 21                        ; attention.py:671:21
	s_and_b32 s7, s2, s7
	.loc	1 686 26                        ; attention.py:686:26
	v_cndmask_b32_e64 v112, 0xff800000, v80, s7
	.loc	1 671 21                        ; attention.py:671:21
	s_and_b32 s8, s14, s15
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(SALU_CYCLE_1)
	.loc	1 670 30                        ; attention.py:670:30
	v_cmp_ge_i32_e64 s16, v105, v86
	.loc	1 671 30                        ; attention.py:671:30
	v_cmp_le_i32_e64 s17, v105, v87
	.loc	1 630 31                        ; attention.py:630:31
	v_add_nc_u32_e32 v105, 14, v109
	.loc	1 671 21                        ; attention.py:671:21
	s_and_b32 s8, s2, s8
	.loc	1 686 26                        ; attention.py:686:26
	v_cndmask_b32_e64 v114, 0xff800000, v79, s8
	.loc	1 671 21                        ; attention.py:671:21
	s_and_b32 s17, s16, s17
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_4) | instid1(VALU_DEP_2)
	.loc	1 670 30                        ; attention.py:670:30
	v_cmp_ge_i32_e64 s18, v105, v86
	.loc	1 671 30                        ; attention.py:671:30
	v_cmp_le_i32_e64 s19, v105, v87
	.loc	1 630 31                        ; attention.py:630:31
	v_add_nc_u32_e32 v105, 12, v109
.Ltmp1:
	.file	2 "<triton>/python/triton/language" "standard.py"
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max3_f32 v66, v114, v112, v113
.Ltmp2:
	.loc	1 671 21                        ; attention.py:671:21
	s_and_b32 s15, s18, s19
	.loc	1 670 30                        ; attention.py:670:30
	v_cmp_ge_i32_e64 s20, v105, v86
	.loc	1 671 30                        ; attention.py:671:30
	v_cmp_le_i32_e64 s21, v105, v87
	.loc	1 630 31                        ; attention.py:630:31
	v_add_nc_u32_e32 v105, 10, v109
	.loc	1 671 21                        ; attention.py:671:21
	s_and_b32 s15, s2, s15
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 686 26                        ; attention.py:686:26
	v_cndmask_b32_e64 v74, 0xff800000, v74, s15
	.loc	1 671 21                        ; attention.py:671:21
	s_and_b32 s16, s20, s21
	.loc	1 670 30                        ; attention.py:670:30
	v_cmp_ge_i32_e64 s22, v105, v86
	.loc	1 671 30                        ; attention.py:671:30
	v_cmp_le_i32_e64 s23, v105, v87
	.loc	1 630 31                        ; attention.py:630:31
	v_add_nc_u32_e32 v105, 8, v109
	.loc	1 671 21                        ; attention.py:671:21
	s_and_b32 s16, s2, s16
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 686 26                        ; attention.py:686:26
	v_cndmask_b32_e64 v72, 0xff800000, v72, s16
	.loc	1 671 21                        ; attention.py:671:21
	s_and_b32 s9, s22, s23
	.loc	1 670 30                        ; attention.py:670:30
	v_cmp_ge_i32_e64 s24, v105, v86
	.loc	1 671 30                        ; attention.py:671:30
	v_cmp_le_i32_e64 s25, v105, v87
	.loc	1 630 31                        ; attention.py:630:31
	v_add_nc_u32_e32 v105, 6, v109
	.loc	1 671 21                        ; attention.py:671:21
	s_and_b32 s10, s2, s9
	s_and_b32 s9, s2, s17
	.loc	1 686 26                        ; attention.py:686:26
	v_cndmask_b32_e64 v78, 0xff800000, v78, s10
	.loc	1 671 21                        ; attention.py:671:21
	s_and_b32 s14, s24, s25
	.loc	1 670 30                        ; attention.py:670:30
	v_cmp_ge_i32_e64 s26, v105, v86
	.loc	1 671 30                        ; attention.py:671:30
	v_cmp_le_i32_e64 s27, v105, v87
	.loc	1 630 31                        ; attention.py:630:31
	v_add_nc_u32_e32 v105, 4, v109
	v_add_nc_u32_e32 v109, 2, v109
	.loc	1 671 21                        ; attention.py:671:21
	s_and_b32 s14, s2, s14
	.loc	1 686 26                        ; attention.py:686:26
	v_cndmask_b32_e64 v115, 0xff800000, v76, s9
	.loc	1 671 21                        ; attention.py:671:21
	s_and_b32 s11, s26, s27
	.loc	1 670 30                        ; attention.py:670:30
	v_cmp_ge_i32_e64 s28, v105, v86
	v_cmp_ge_i32_e64 s33, v109, v86
	.loc	1 671 30                        ; attention.py:671:30
	v_cmp_le_i32_e64 s34, v109, v87
	v_cmp_le_i32_e64 s29, v105, v87
	.loc	1 671 21 is_stmt 0              ; attention.py:671:21
	s_and_b32 s11, s2, s11
	.loc	1 686 26 is_stmt 1              ; attention.py:686:26
	v_cndmask_b32_e64 v109, 0xff800000, v107, s4
	v_cndmask_b32_e64 v77, 0xff800000, v77, s14
	.loc	1 671 21                        ; attention.py:671:21
	s_and_b32 s13, s33, s34
	.loc	1 686 26                        ; attention.py:686:26
	v_cndmask_b32_e64 v75, 0xff800000, v75, s11
	.loc	1 671 21                        ; attention.py:671:21
	s_and_b32 s13, s2, s13
	s_and_b32 s12, s28, s29
	.loc	1 686 26                        ; attention.py:686:26
	v_cndmask_b32_e64 v70, 0xff800000, v70, s13
	.loc	1 664 17                        ; attention.py:664:17
	v_mul_f32_e32 v106, s57, v133
	.loc	1 671 21                        ; attention.py:671:21
	s_and_b32 s12, s2, s12
.Ltmp3:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max3_f32 v67, v75, v77, v78
.Ltmp4:
	.loc	1 686 26                        ; attention.py:686:26
	v_cndmask_b32_e64 v71, 0xff800000, v71, s12
.Ltmp5:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max_f32_e32 v68, v69, v70
.Ltmp6:
	.loc	1 686 26                        ; attention.py:686:26
	v_cndmask_b32_e64 v106, 0xff800000, v106, s5
.Ltmp7:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max3_f32 v76, v72, v74, v115
.Ltmp8:
	.loc	1 700 30                        ; attention.py:700:30
	v_mov_b16_e32 v105.h, 0
	.loc	1 629 13                        ; attention.py:629:13
	s_cmp_lt_i32 s47, s56
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp9:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max3_f32 v65, v109, v110, v106
.Ltmp10:
	.loc	1 700 30                        ; attention.py:700:30
	v_mov_b16_e32 v117.h, v105.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_1)
.Ltmp11:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max3_f32 v65, v66, v65, v111
	v_max3_f32 v66, v68, v71, v67
	v_max3_f32 v65, v66, v76, v65
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp12:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:687:29 ]
	v_permlanex16_b32 v66, v65, s60, 0xfedcba98 op_sel:[1,0]
.Ltmp13:
	.loc	1 688 24                        ; attention.py:688:24
	v_max3_f32 v103, v73, v65, v66
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	.loc	1 690 62                        ; attention.py:690:62
	v_sub_f32_e32 v65, v70, v103
	v_sub_f32_e32 v66, v69, v103
	v_sub_f32_e32 v68, v75, v103
	v_sub_f32_e32 v70, v78, v103
	.loc	1 690 49 is_stmt 0              ; attention.py:690:49
	v_exp_f32_e32 v65, v65
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_exp_f32_e32 v66, v66
	v_exp_f32_e32 v68, v68
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(TRANS32_DEP_3)
	v_exp_f32_e32 v70, v70
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v107, 0, v65, s13
	v_cndmask_b32_e64 v108, 0, v66, s30
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cndmask_b32_e64 v119, 0, v70, s10
	.loc	1 700 30 is_stmt 1              ; attention.py:700:30
	v_mov_b16_e32 v105.l, v107.h
	s_delay_alu instid0(VALU_DEP_3)
	v_mov_b16_e32 v117.l, v108.h
	v_cmp_o_f32_e64 s13, v107, v107
	v_cmp_o_f32_e64 s17, v108, v108
	v_cmp_o_f32_e64 s10, v119, v119
	v_and_b32_e32 v65, 1, v105
	v_and_b32_e32 v66, 1, v117
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v117, 0, v68, s11
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 700 30                        ; attention.py:700:30
	v_add3_u32 v65, v107, v65, 0x7fff
	v_add3_u32 v66, v108, v66, 0x7fff
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_mov_b16_e32 v105.l, v117.h
	v_cmp_o_f32_e64 s11, v117, v117
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cndmask_b16 v67.h, 0x7fff, v65.h, s13
	v_cndmask_b16 v67.l, 0x7fff, v66.h, s17
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_and_b32_e32 v68, 1, v105
	v_mov_b16_e32 v105.l, v119.h
	v_permlanex16_b32 v66, v67, s60, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_add3_u32 v68, v117, v68, 0x7fff
	v_perm_b32 v65, v66, v67, v89
	v_perm_b32 v66, v66, v67, v90
	.loc	1 690 62                        ; attention.py:690:62
	v_sub_f32_e32 v67, v71, v103
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 700 30                        ; attention.py:700:30
	v_cndmask_b16 v68.h, 0x7fff, v68.h, s11
	.loc	1 690 49                        ; attention.py:690:49
	v_exp_f32_e32 v67, v67
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 690 33 is_stmt 0              ; attention.py:690:33
	v_cndmask_b32_e64 v116, 0, v67, s12
	.loc	1 700 30 is_stmt 1              ; attention.py:700:30
	v_mov_b16_e32 v67.h, v105.h
	v_mov_b16_e32 v67.l, v116.h
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cmp_o_f32_e64 s12, v116, v116
	v_and_b32_e32 v67, 1, v67
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add3_u32 v67, v116, v67, 0x7fff
	v_cndmask_b16 v68.l, 0x7fff, v67.h, s12
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_permlanex16_b32 v69, v68, s60, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v67, v69, v68, v89
	v_perm_b32 v68, v69, v68, v90
	.loc	1 690 62                        ; attention.py:690:62
	v_sub_f32_e32 v69, v77, v103
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 690 49 is_stmt 0              ; attention.py:690:49
	v_exp_f32_e32 v69, v69
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v118, 0, v69, s14
	.loc	1 700 30 is_stmt 1              ; attention.py:700:30
	v_mov_b16_e32 v69.h, v105.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mov_b16_e32 v69.l, v118.h
	v_cmp_o_f32_e64 s11, v118, v118
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v69, 1, v69
	v_add3_u32 v69, v118, v69, 0x7fff
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_cndmask_b16 v70.l, 0x7fff, v69.h, s11
	v_and_b32_e32 v69, 1, v105
	v_add3_u32 v69, v119, v69, 0x7fff
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_cndmask_b16 v70.h, 0x7fff, v69.h, s10
	v_permlanex16_b32 v71, v70, s60, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	v_perm_b32 v69, v71, v70, v89
	v_perm_b32 v70, v71, v70, v90
	.loc	1 690 62                        ; attention.py:690:62
	v_sub_f32_e32 v71, v72, v103
	v_sub_f32_e32 v72, v74, v103
	.loc	1 690 49 is_stmt 0              ; attention.py:690:49
	v_exp_f32_e32 v71, v71
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	v_exp_f32_e32 v72, v72
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v120, 0, v71, s16
	.loc	1 700 30 is_stmt 1              ; attention.py:700:30
	v_mov_b16_e32 v71.h, v105.h
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v121, 0, v72, s15
	.loc	1 700 30                        ; attention.py:700:30
	v_mov_b16_e32 v71.l, v120.h
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cmp_o_f32_e64 s11, v120, v120
	v_mov_b16_e32 v105.l, v121.h
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cmp_o_f32_e64 s10, v121, v121
	v_and_b32_e32 v71, 1, v71
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add3_u32 v71, v120, v71, 0x7fff
	v_cndmask_b16 v72.l, 0x7fff, v71.h, s11
	v_and_b32_e32 v71, 1, v105
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add3_u32 v71, v121, v71, 0x7fff
	v_cndmask_b16 v72.h, 0x7fff, v71.h, s10
	.loc	1 689 25                        ; attention.py:689:25
	v_cmp_neq_f32_e64 s10, 0xff800000, v73
	.loc	1 689 74 is_stmt 0              ; attention.py:689:74
	v_sub_f32_e32 v73, v73, v103
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 700 30 is_stmt 1              ; attention.py:700:30
	v_permlanex16_b32 v74, v72, s60, 0xfedcba98 op_sel:[1,0]
	.loc	1 689 61                        ; attention.py:689:61
	v_exp_f32_e32 v73, v73
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	.loc	1 700 30                        ; attention.py:700:30
	v_perm_b32 v71, v74, v72, v89
	v_perm_b32 v72, v74, v72, v90
	.loc	1 689 25                        ; attention.py:689:25
	v_cndmask_b32_e64 v104, 0, v73, s10
	.loc	1 694 30                        ; attention.py:694:30
	ds_load_u16_d16 v73, v91
	ds_load_u16_d16 v76, v91 offset:768
	ds_load_u16_d16 v77, v91 offset:1024
	ds_load_u16_d16 v78, v91 offset:1280
	ds_load_u16_d16 v79, v91 offset:1536
	ds_load_u16_d16 v80, v91 offset:1792
	ds_load_u16_d16 v75, v91 offset:512
	ds_load_u16_d16 v74, v91 offset:256
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v73, v91 offset:128
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v76, v91 offset:896
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v77, v91 offset:1152
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v78, v91 offset:1408
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v79, v91 offset:1664
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v80, v91 offset:1920
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v75, v91 offset:640
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v74, v91 offset:384
	.loc	1 699 23                        ; attention.py:699:23
	v_mul_f32_e32 v25, v25, v104
	v_mul_f32_e32 v26, v26, v104
	v_mul_f32_e32 v27, v27, v104
	v_mul_f32_e32 v28, v28, v104
	v_mul_f32_e32 v29, v29, v104
	v_mul_f32_e32 v30, v30, v104
	v_mul_f32_e32 v31, v31, v104
	v_mul_f32_e32 v32, v32, v104
	v_mul_f32_e32 v17, v17, v104
	v_mul_f32_e32 v18, v18, v104
	v_mul_f32_e32 v19, v19, v104
	v_mul_f32_e32 v20, v20, v104
	v_mul_f32_e32 v21, v21, v104
	v_mul_f32_e32 v22, v22, v104
	v_mul_f32_e32 v23, v23, v104
	v_mul_f32_e32 v24, v24, v104
	v_mul_f32_e32 v9, v9, v104
	v_mul_f32_e32 v10, v10, v104
	v_mul_f32_e32 v11, v11, v104
	.loc	1 700 23                        ; attention.py:700:23
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[25:32], v[73:80], v[65:72], v[25:32]
	.loc	1 694 30                        ; attention.py:694:30
	ds_load_u16_d16 v73, v91 offset:32
	ds_load_u16_d16 v74, v91 offset:288
	ds_load_u16_d16 v75, v91 offset:544
	ds_load_u16_d16 v76, v91 offset:800
	ds_load_u16_d16 v77, v91 offset:1056
	ds_load_u16_d16 v78, v91 offset:1312
	ds_load_u16_d16 v79, v91 offset:1568
	ds_load_u16_d16 v80, v91 offset:1824
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v73, v91 offset:160
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v74, v91 offset:416
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v75, v91 offset:672
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v76, v91 offset:928
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v77, v91 offset:1184
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v78, v91 offset:1440
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v79, v91 offset:1696
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v80, v91 offset:1952
	.loc	1 699 23                        ; attention.py:699:23
	v_mul_f32_e32 v12, v12, v104
	v_mul_f32_e32 v13, v13, v104
	v_mul_f32_e32 v14, v14, v104
	v_mul_f32_e32 v15, v15, v104
	v_mul_f32_e32 v16, v16, v104
	v_mul_f32_e32 v1, v1, v104
	v_mul_f32_e32 v2, v2, v104
	v_mul_f32_e32 v3, v3, v104
	v_mul_f32_e32 v4, v4, v104
	v_mul_f32_e32 v5, v5, v104
	v_mul_f32_e32 v6, v6, v104
	v_mul_f32_e32 v7, v7, v104
	v_mul_f32_e32 v8, v8, v104
	.loc	1 700 23                        ; attention.py:700:23
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[17:24], v[73:80], v[65:72], v[17:24]
	.loc	1 694 30                        ; attention.py:694:30
	ds_load_u16_d16 v75, v91 offset:576
	ds_load_u16_d16 v76, v91 offset:832
	ds_load_u16_d16 v77, v91 offset:1088
	ds_load_u16_d16 v78, v91 offset:1344
	ds_load_u16_d16 v79, v91 offset:1600
	ds_load_u16_d16 v80, v91 offset:1856
	ds_load_u16_d16 v73, v91 offset:64
	ds_load_u16_d16 v74, v91 offset:320
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v75, v91 offset:704
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v76, v91 offset:960
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v77, v91 offset:1216
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v78, v91 offset:1472
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v79, v91 offset:1728
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v80, v91 offset:1984
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v73, v91 offset:192
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v74, v91 offset:448
	.loc	1 700 23                        ; attention.py:700:23
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[9:16], v[73:80], v[65:72], v[9:16]
	.loc	1 694 30                        ; attention.py:694:30
	ds_load_u16_d16 v74, v91 offset:352
	ds_load_u16_d16 v73, v91 offset:96
	ds_load_u16_d16 v75, v91 offset:608
	ds_load_u16_d16 v76, v91 offset:864
	ds_load_u16_d16 v77, v91 offset:1120
	ds_load_u16_d16 v78, v91 offset:1376
	ds_load_u16_d16 v79, v91 offset:1632
	ds_load_u16_d16 v80, v91 offset:1888
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v74, v91 offset:480
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v73, v91 offset:224
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v75, v91 offset:736
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v76, v91 offset:992
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v77, v91 offset:1248
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v78, v91 offset:1504
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v79, v91 offset:1760
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v80, v91 offset:2016
	.loc	1 700 23                        ; attention.py:700:23
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[1:8], v[73:80], v[65:72], v[1:8]
	.loc	1 690 62                        ; attention.py:690:62
	v_sub_f32_e32 v76, v111, v103
.Ltmp14:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:691:24 ] ]
	v_dual_add_f32 v79, v118, v119 :: v_dual_add_f32 v80, v120, v121
.Ltmp15:
	.loc	1 690 62                        ; attention.py:690:62
	v_sub_f32_e32 v75, v106, v103
	v_sub_f32_e32 v72, v113, v103
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 690 49 is_stmt 0              ; attention.py:690:49
	v_exp_f32_e32 v76, v76
.Ltmp16:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:691:24 ] ]
	v_add_f32_e32 v78, v116, v117
	v_add_f32_e32 v118, v79, v80
.Ltmp17:
	.loc	1 690 49                        ; attention.py:690:49
	v_exp_f32_e32 v75, v75
	v_exp_f32_e32 v72, v72
	.loc	1 700 30                        ; attention.py:700:30
	v_mov_b16_e32 v68.h, v105.h
	.loc	1 690 62                        ; attention.py:690:62
	v_sub_f32_e32 v70, v114, v103
	v_sub_f32_e32 v74, v110, v103
	.loc	1 700 30                        ; attention.py:700:30
	v_mov_b16_e32 v65.h, v105.h
	v_mov_b16_e32 v66.h, v105.h
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v76, 0, v76, s1
	.loc	1 690 49 is_stmt 0              ; attention.py:690:49
	v_exp_f32_e32 v70, v70
	v_exp_f32_e32 v74, v74
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v75, 0, v75, s5
	.loc	1 690 62                        ; attention.py:690:62
	v_sub_f32_e32 v71, v112, v103
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v72, 0, v72, s6
	.loc	1 700 30 is_stmt 1              ; attention.py:700:30
	v_mov_b16_e32 v67.h, v105.h
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp18:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:691:24 ] ]
	v_add_f32_e32 v116, v75, v76
.Ltmp19:
	.loc	1 690 49                        ; attention.py:690:49
	v_exp_f32_e32 v71, v71
	.loc	1 700 30                        ; attention.py:700:30
	v_mov_b16_e32 v68.l, v75.h
	.loc	1 690 62                        ; attention.py:690:62
	v_sub_f32_e32 v69, v115, v103
	.loc	1 690 33 is_stmt 0              ; attention.py:690:33
	v_cndmask_b32_e64 v70, 0, v70, s8
	v_cndmask_b32_e64 v74, 0, v74, s3
	.loc	1 700 30 is_stmt 1              ; attention.py:700:30
	v_cmp_o_f32_e64 s8, v76, v76
	v_and_b32_e32 v68, 1, v68
	.loc	1 690 49                        ; attention.py:690:49
	v_exp_f32_e32 v69, v69
	.loc	1 700 30                        ; attention.py:700:30
	v_mov_b16_e32 v105.l, v70.h
	v_cmp_o_f32_e64 s1, v70, v70
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v71, 0, v71, s7
	.loc	1 690 62 is_stmt 0              ; attention.py:690:62
	v_sub_f32_e32 v73, v109, v103
	.loc	1 700 30 is_stmt 1              ; attention.py:700:30
	v_add3_u32 v68, v75, v68, 0x7fff
	v_cmp_o_f32_e64 s6, v74, v74
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp20:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:691:24 ] ]
	v_add_f32_e32 v114, v71, v72
.Ltmp21:
	.loc	1 690 49                        ; attention.py:690:49
	v_exp_f32_e32 v73, v73
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	.loc	1 690 33 is_stmt 0              ; attention.py:690:33
	v_cndmask_b32_e64 v69, 0, v69, s9
	.loc	1 700 30 is_stmt 1              ; attention.py:700:30
	v_mov_b16_e32 v66.l, v71.h
	v_cmp_o_f32_e64 s5, v71, v71
	v_cmp_o_f32_e64 s9, v75, v75
	v_mov_b16_e32 v65.l, v69.h
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(TRANS32_DEP_1)
	v_and_b32_e32 v66, 1, v66
	v_cmp_o_f32_e64 s3, v69, v69
.Ltmp22:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:691:24 ] ]
	v_add_f32_e32 v113, v69, v70
.Ltmp23:
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v73, 0, v73, s4
	.loc	1 700 30                        ; attention.py:700:30
	v_and_b32_e32 v65, 1, v65
	v_add3_u32 v66, v71, v66, 0x7fff
	v_cmp_o_f32_e64 s4, v72, v72
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_mov_b16_e32 v67.l, v73.h
	v_add3_u32 v65, v69, v65, 0x7fff
	v_cmp_o_f32_e64 s7, v73, v73
	v_cndmask_b16 v68.l, 0x7fff, v66.h, s5
.Ltmp24:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:691:24 ] ]
	v_add_f32_e32 v115, v73, v74
.Ltmp25:
	.loc	1 700 30                        ; attention.py:700:30
	v_and_b32_e32 v67, 1, v67
	v_cndmask_b16 v66.l, 0x7fff, v65.h, s3
	v_and_b32_e32 v65, 1, v105
	v_mov_b16_e32 v105.l, v72.h
.Ltmp26:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:691:24 ] ]
	v_add_f32_e32 v77, v108, v107
.Ltmp27:
	.loc	1 700 30                        ; attention.py:700:30
	v_add3_u32 v67, v73, v67, 0x7fff
	v_cndmask_b16 v73.l, 0x7fff, v68.h, s9
	v_add3_u32 v65, v70, v65, 0x7fff
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp28:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:691:24 ] ]
	v_add_f32_e32 v117, v77, v78
.Ltmp29:
	.loc	1 700 30                        ; attention.py:700:30
	v_cndmask_b16 v71.l, 0x7fff, v67.h, s7
	v_and_b32_e32 v67, 1, v105
	v_mov_b16_e32 v105.l, v74.h
	v_cndmask_b16 v66.h, 0x7fff, v65.h, s1
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_add3_u32 v65, v72, v67, 0x7fff
	v_and_b32_e32 v69, 1, v105
	v_mov_b16_e32 v105.l, v76.h
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_permlanex16_b32 v70, v66, s60, 0xfedcba98 op_sel:[1,0]
	v_cndmask_b16 v68.h, 0x7fff, v65.h, s4
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_add3_u32 v69, v74, v69, 0x7fff
	v_and_b32_e32 v67, 1, v105
	s_delay_alu instid0(VALU_DEP_4)
	v_perm_b32 v65, v70, v66, v89
	v_perm_b32 v66, v70, v66, v90
	v_permlanex16_b32 v72, v68, s60, 0xfedcba98 op_sel:[1,0]
	v_cndmask_b16 v71.h, 0x7fff, v69.h, s6
	v_add3_u32 v67, v76, v67, 0x7fff
	.loc	1 694 30                        ; attention.py:694:30
	ds_load_u16_d16 v105, v91 offset:2144
	ds_load_u16_d16 v106, v91 offset:2400
	ds_load_u16_d16 v107, v91 offset:2656
	ds_load_u16_d16 v108, v91 offset:2912
	ds_load_u16_d16 v109, v91 offset:3168
	ds_load_u16_d16 v110, v91 offset:3424
	ds_load_u16_d16 v111, v91 offset:3680
	ds_load_u16_d16 v112, v91 offset:3936
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v105, v91 offset:2272
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v106, v91 offset:2528
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v107, v91 offset:2784
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v108, v91 offset:3040
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v109, v91 offset:3296
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v110, v91 offset:3552
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v111, v91 offset:3808
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v112, v91 offset:4064
	.loc	1 700 30                        ; attention.py:700:30
	v_cndmask_b16 v73.h, 0x7fff, v67.h, s8
	v_perm_b32 v67, v72, v68, v89
	v_permlanex16_b32 v70, v71, s60, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v68, v72, v68, v90
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_permlanex16_b32 v72, v73, s60, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v69, v70, v71, v89
	v_perm_b32 v70, v70, v71, v90
	s_delay_alu instid0(VALU_DEP_3)
	v_perm_b32 v71, v72, v73, v89
	v_perm_b32 v72, v72, v73, v90
	.loc	1 694 30                        ; attention.py:694:30
	ds_load_u16_d16 v73, v91 offset:2048
	ds_load_u16_d16 v75, v91 offset:2560
	ds_load_u16_d16 v76, v91 offset:2816
	ds_load_u16_d16 v77, v91 offset:3072
	ds_load_u16_d16 v78, v91 offset:3328
	ds_load_u16_d16 v79, v91 offset:3584
	ds_load_u16_d16 v80, v91 offset:3840
	ds_load_u16_d16 v74, v91 offset:2304
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v73, v91 offset:2176
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v75, v91 offset:2688
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v76, v91 offset:2944
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v77, v91 offset:3200
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v78, v91 offset:3456
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v79, v91 offset:3712
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v80, v91 offset:3968
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v74, v91 offset:2432
	.loc	1 700 23                        ; attention.py:700:23
	v_wmma_f32_16x16x16_bf16 v[1:8], v[105:112], v[65:72], v[1:8]
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[25:32], v[73:80], v[65:72], v[25:32]
	.loc	1 694 30                        ; attention.py:694:30
	ds_load_u16_d16 v73, v91 offset:2080
	ds_load_u16_d16 v74, v91 offset:2336
	ds_load_u16_d16 v75, v91 offset:2592
	ds_load_u16_d16 v76, v91 offset:2848
	ds_load_u16_d16 v77, v91 offset:3104
	ds_load_u16_d16 v78, v91 offset:3360
	ds_load_u16_d16 v79, v91 offset:3616
	ds_load_u16_d16 v80, v91 offset:3872
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v73, v91 offset:2208
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v74, v91 offset:2464
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v75, v91 offset:2720
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v76, v91 offset:2976
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v77, v91 offset:3232
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v78, v91 offset:3488
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v79, v91 offset:3744
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v80, v91 offset:4000
	.loc	1 700 23                        ; attention.py:700:23
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[17:24], v[73:80], v[65:72], v[17:24]
	.loc	1 694 30                        ; attention.py:694:30
	ds_load_u16_d16 v73, v91 offset:2112
	ds_load_u16_d16 v74, v91 offset:2368
	ds_load_u16_d16 v75, v91 offset:2624
	ds_load_u16_d16 v76, v91 offset:2880
	ds_load_u16_d16 v77, v91 offset:3136
	ds_load_u16_d16 v78, v91 offset:3392
	ds_load_u16_d16 v79, v91 offset:3648
	ds_load_u16_d16 v80, v91 offset:3904
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v73, v91 offset:2240
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v74, v91 offset:2496
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v75, v91 offset:2752
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v76, v91 offset:3008
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v77, v91 offset:3264
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v78, v91 offset:3520
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v79, v91 offset:3776
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v80, v91 offset:4032
	.loc	1 700 23                        ; attention.py:700:23
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[9:16], v[73:80], v[65:72], v[9:16]
.Ltmp30:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:691:24 ] ]
	v_dual_add_f32 v73, v113, v114 :: v_dual_add_f32 v74, v115, v116
	v_add_f32_e32 v75, v117, v118
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_dual_add_f32 v73, v73, v74 :: v_dual_mov_b32 v74, v83
	v_add_f32_e32 v73, v75, v73
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp31:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:691:24 ]
	v_permlanex16_b32 v75, v73, s60, 0xfedcba98 op_sel:[1,0]
.Ltmp32:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:691:24 ] ]
	v_add_f32_e32 v83, v73, v75
	v_mov_b32_e32 v73, v103
	s_delay_alu instid0(VALU_DEP_2)
.Ltmp33:
	.loc	1 701 23                        ; attention.py:701:23
	v_fmac_f32_e32 v83, v74, v104
	.loc	1 629 13                        ; attention.py:629:13
	s_cbranch_scc1 .LBB0_2
.LBB0_3:                                ; %Flow196
	.loc	1 0 13 is_stmt 0                ; attention.py:0:13
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 841 48 is_stmt 1              ; attention.py:841:48
	v_div_scale_f32 v36, null, v83, v83, v25
	v_div_scale_f32 v37, null, v83, v83, v26
	v_div_scale_f32 v40, null, v83, v83, v27
	v_rcp_f32_e32 v38, v36
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_rcp_f32_e32 v39, v37
	v_div_scale_f32 v42, null, v83, v83, v28
	v_rcp_f32_e32 v43, v40
	v_div_scale_f32 v41, vcc_lo, v25, v83, v25
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(TRANS32_DEP_3)
	v_rcp_f32_e32 v45, v42
	v_div_scale_f32 v44, s0, v26, v83, v26
	v_fma_f32 v33, -v36, v38, 1.0
	v_fma_f32 v35, -v37, v39, 1.0
	v_div_scale_f32 v50, s1, v27, v83, v27
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v47, -v40, v43, 1.0
	v_dual_fmac_f32 v38, v33, v38 :: v_dual_fmac_f32 v39, v35, v39
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fma_f32 v51, -v42, v45, 1.0
	v_div_scale_f32 v52, null, v83, v83, v18
	v_dual_mul_f32 v46, v41, v38 :: v_dual_fmac_f32 v43, v47, v43
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_dual_mul_f32 v48, v44, v39 :: v_dual_fmac_f32 v45, v51, v45
	.loc	1 848 17                        ; attention.py:848:17
	s_and_b32 s45, s45, 0xffff
	.loc	1 841 48                        ; attention.py:841:48
	v_fma_f32 v49, -v36, v46, v41
	s_mov_b32 s47, 0x31027000
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fma_f32 v47, -v37, v48, v44
	.loc	1 571 21                        ; attention.py:571:21
	v_or_b32_e32 v34, 16, v81
	.loc	1 841 48                        ; attention.py:841:48
	v_dual_mul_f32 v51, v50, v43 :: v_dual_fmac_f32 v46, v49, v38
	v_div_scale_f32 v49, s3, v28, v83, v28
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v48, v47, v39
	v_div_scale_f32 v47, null, v83, v83, v30
	v_fma_f32 v36, -v36, v46, v41
	v_div_scale_f32 v41, null, v83, v83, v29
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fma_f32 v37, -v37, v48, v44
	v_fma_f32 v44, -v40, v51, v50
	v_div_fmas_f32 v36, v36, v38, v46
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_rcp_f32_e32 v38, v41
	s_mov_b32 vcc_lo, s0
	v_dual_mul_f32 v46, v49, v45 :: v_dual_fmac_f32 v51, v44, v43
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_div_fixup_f32 v25, v36, v83, v25
	v_div_fmas_f32 v36, v37, v39, v48
	v_rcp_f32_e32 v37, v47
	v_fma_f32 v39, -v42, v46, v49
	s_mov_b32 vcc_lo, s1
	v_div_scale_f32 v48, s1, v30, v83, v30
	s_delay_alu instid0(TRANS32_DEP_2)
	v_fma_f32 v44, -v41, v38, 1.0
	v_div_fixup_f32 v26, v36, v83, v26
	v_fma_f32 v36, -v40, v51, v50
	.loc	1 841 28 is_stmt 0              ; attention.py:841:28
	v_cmp_lt_f32_e64 s0, 0, v83
	.loc	1 598 79 is_stmt 1              ; attention.py:598:79
	v_or_b32_e32 v35, 32, v81
	.loc	1 841 48                        ; attention.py:841:48
	v_fmac_f32_e32 v38, v44, v38
	v_fmac_f32_e32 v46, v39, v45
	v_fma_f32 v40, -v47, v37, 1.0
	v_div_scale_f32 v44, null, v83, v83, v31
	v_div_fmas_f32 v36, v36, v43, v51
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v42, -v42, v46, v49
	v_fmac_f32_e32 v37, v40, v37
	s_delay_alu instid0(VALU_DEP_4)
	v_rcp_f32_e32 v40, v44
	v_div_scale_f32 v49, null, v83, v83, v32
	v_div_scale_f32 v39, s4, v29, v83, v29
	s_mov_b32 vcc_lo, s3
	v_rcp_f32_e32 v51, v49
	v_div_fmas_f32 v42, v42, v45, v46
	v_div_fixup_f32 v27, v36, v83, v27
	s_mov_b32 vcc_lo, s4
	s_delay_alu instid0(TRANS32_DEP_2)
	v_fma_f32 v50, -v44, v40, 1.0
	.loc	1 841 19 is_stmt 0              ; attention.py:841:19
	v_cndmask_b32_e64 v25, 0, v25, s0
	.loc	1 841 48                        ; attention.py:841:48
	v_div_fixup_f32 v28, v42, v83, v28
	v_mul_f32_e32 v46, v48, v37
	v_div_scale_f32 v42, s3, v31, v83, v31
	v_fmac_f32_e32 v40, v50, v40
	v_fma_f32 v50, -v49, v51, 1.0
	s_delay_alu instid0(VALU_DEP_4)
	v_fma_f32 v36, -v47, v46, v48
	.loc	1 841 19                        ; attention.py:841:19
	v_cndmask_b32_e64 v26, 0, v26, s0
	v_cndmask_b32_e64 v27, 0, v27, s0
	v_cndmask_b32_e64 v28, 0, v28, s0
	.loc	1 841 48                        ; attention.py:841:48
	v_fmac_f32_e32 v51, v50, v51
	v_mul_f32_e32 v43, v39, v38
	v_div_scale_f32 v50, s5, v32, v83, v32
	v_fmac_f32_e32 v46, v36, v37
	v_lshrrev_b32_e32 v0, 4, v0
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fma_f32 v45, -v41, v43, v39
	.loc	1 598 79 is_stmt 1              ; attention.py:598:79
	v_or_b32_e32 v33, 48, v81
	v_or_b32_e32 v0, 62, v0
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 841 48                        ; attention.py:841:48
	v_fmac_f32_e32 v43, v45, v38
	v_div_scale_f32 v45, null, v83, v83, v17
	v_fma_f32 v39, -v41, v43, v39
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_rcp_f32_e32 v41, v45
	v_div_fmas_f32 v38, v39, v38, v43
	v_fma_f32 v39, -v47, v46, v48
	v_mul_f32_e32 v47, v50, v51
	s_mov_b32 vcc_lo, s1
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_div_fixup_f32 v29, v38, v83, v29
	v_fma_f32 v48, -v45, v41, 1.0
	v_div_fmas_f32 v37, v39, v37, v46
	v_rcp_f32_e32 v39, v52
	v_div_scale_f32 v46, s1, v17, v83, v17
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_fmac_f32 v41, v48, v41 :: v_dual_mul_f32 v36, v42, v40
	v_div_fixup_f32 v30, v37, v83, v30
	s_mov_b32 vcc_lo, s3
	v_div_scale_f32 v48, null, v83, v83, v20
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_fma_f32 v43, -v44, v36, v42
	.loc	1 841 19 is_stmt 0              ; attention.py:841:19
	v_cndmask_b32_e64 v29, 0, v29, s0
	v_cndmask_b32_e64 v30, 0, v30, s0
	.loc	1 841 48                        ; attention.py:841:48
	v_fmac_f32_e32 v36, v43, v40
	v_fma_f32 v43, -v49, v47, v50
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v37, -v44, v36, v42
	v_fmac_f32_e32 v47, v43, v51
	v_fma_f32 v42, -v52, v39, 1.0
	v_div_scale_f32 v44, s3, v18, v83, v18
	v_div_scale_f32 v43, null, v83, v83, v19
	s_delay_alu instid0(VALU_DEP_3)
	v_fmac_f32_e32 v39, v42, v39
	v_mul_f32_e32 v38, v46, v41
	v_div_fmas_f32 v36, v37, v40, v36
	v_fma_f32 v37, -v49, v47, v50
	s_mov_b32 vcc_lo, s5
	v_rcp_f32_e32 v42, v43
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_div_fixup_f32 v31, v36, v83, v31
	v_div_fmas_f32 v37, v37, v51, v47
	v_mul_f32_e32 v47, v44, v39
	v_fma_f32 v40, -v45, v38, v46
	s_mov_b32 vcc_lo, s1
	.loc	1 841 19                        ; attention.py:841:19
	v_cndmask_b32_e64 v31, 0, v31, s0
	.loc	1 841 48                        ; attention.py:841:48
	v_div_fixup_f32 v32, v37, v83, v32
	v_fma_f32 v37, -v52, v47, v44
	v_fmac_f32_e32 v38, v40, v41
	v_rcp_f32_e32 v40, v48
	v_fma_f32 v49, -v43, v42, 1.0
	.loc	1 841 19                        ; attention.py:841:19
	v_cndmask_b32_e64 v32, 0, v32, s0
	.loc	1 841 48                        ; attention.py:841:48
	v_fmac_f32_e32 v47, v37, v39
	v_fma_f32 v36, -v45, v38, v46
	v_div_scale_f32 v45, s4, v19, v83, v19
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_div_fmas_f32 v36, v36, v41, v38
	v_fma_f32 v46, -v48, v40, 1.0
	s_mov_b32 vcc_lo, s3
	v_div_scale_f32 v41, s1, v20, v83, v20
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_div_fixup_f32 v17, v36, v83, v17
	v_fmac_f32_e32 v40, v46, v40
	v_div_scale_f32 v46, null, v83, v83, v22
	v_fma_f32 v36, -v52, v47, v44
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 841 19                        ; attention.py:841:19
	v_cndmask_b32_e64 v17, 0, v17, s0
	.loc	1 841 48                        ; attention.py:841:48
	v_rcp_f32_e32 v51, v46
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_div_fmas_f32 v36, v36, v39, v47
	s_mov_b32 vcc_lo, s4
	v_div_fixup_f32 v18, v36, v83, v18
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_fma_f32 v47, -v46, v51, 1.0
	v_fmac_f32_e32 v42, v49, v42
	v_div_scale_f32 v49, null, v83, v83, v21
	.loc	1 841 19                        ; attention.py:841:19
	v_cndmask_b32_e64 v18, 0, v18, s0
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 841 48                        ; attention.py:841:48
	v_fmac_f32_e32 v51, v47, v51
	v_rcp_f32_e32 v38, v49
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v52, -v49, v38, 1.0
	v_fmac_f32_e32 v38, v52, v38
	v_mul_f32_e32 v50, v41, v40
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v39, -v48, v50, v41
	v_dual_mul_f32 v37, v45, v42 :: v_dual_fmac_f32 v50, v39, v40
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v44, -v43, v37, v45
	v_fmac_f32_e32 v37, v44, v42
	v_div_scale_f32 v44, s3, v21, v83, v21
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_fma_f32 v36, -v43, v37, v45
	v_div_scale_f32 v43, s5, v22, v83, v22
	v_div_scale_f32 v45, null, v83, v83, v23
	v_div_fmas_f32 v36, v36, v42, v37
	s_delay_alu instid0(VALU_DEP_3)
	v_mul_f32_e32 v47, v43, v51
	v_mul_f32_e32 v39, v44, v38
	v_fma_f32 v37, -v48, v50, v41
	v_rcp_f32_e32 v42, v45
	s_mov_b32 vcc_lo, s1
	v_div_scale_f32 v48, null, v83, v83, v24
	v_fma_f32 v41, -v49, v39, v44
	v_div_fmas_f32 v37, v37, v40, v50
	v_div_fixup_f32 v19, v36, v83, v19
	s_mov_b32 vcc_lo, s3
	v_rcp_f32_e32 v40, v48
	v_fmac_f32_e32 v39, v41, v38
	v_fma_f32 v41, -v46, v47, v43
	v_fma_f32 v50, -v45, v42, 1.0
	v_div_fixup_f32 v20, v37, v83, v20
	v_div_scale_f32 v37, s1, v23, v83, v23
	v_fma_f32 v36, -v49, v39, v44
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_dual_fmac_f32 v47, v41, v51 :: v_dual_fmac_f32 v42, v50, v42
	v_div_scale_f32 v49, null, v83, v83, v10
	v_div_fmas_f32 v36, v36, v38, v39
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_fma_f32 v38, -v46, v47, v43
	s_mov_b32 vcc_lo, s5
	v_fma_f32 v41, -v48, v40, 1.0
	v_div_scale_f32 v43, s3, v24, v83, v24
	v_div_fmas_f32 v38, v38, v51, v47
	v_div_fixup_f32 v21, v36, v83, v21
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v40, v41, v40
	v_div_scale_f32 v41, null, v83, v83, v9
	v_div_fixup_f32 v22, v38, v83, v22
	v_rcp_f32_e32 v38, v49
	v_div_scale_f32 v51, null, v83, v83, v12
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_rcp_f32_e32 v44, v41
	s_mov_b32 vcc_lo, s1
	.loc	1 841 19                        ; attention.py:841:19
	v_cndmask_b32_e64 v19, 0, v19, s0
	.loc	1 841 48                        ; attention.py:841:48
	v_rcp_f32_e32 v53, v51
	.loc	1 841 19                        ; attention.py:841:19
	v_cndmask_b32_e64 v20, 0, v20, s0
	v_cndmask_b32_e64 v21, 0, v21, s0
	v_cndmask_b32_e64 v22, 0, v22, s0
	s_delay_alu instid0(TRANS32_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 841 48                        ; attention.py:841:48
	v_fma_f32 v50, -v49, v38, 1.0
	v_dual_mul_f32 v47, v43, v40 :: v_dual_fmac_f32 v38, v50, v38
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v36, -v48, v47, v43
	v_fmac_f32_e32 v47, v36, v40
	v_div_scale_f32 v36, s4, v9, v83, v9
	v_mul_f32_e32 v39, v37, v42
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v46, -v45, v39, v37
	v_fmac_f32_e32 v39, v46, v42
	v_fma_f32 v46, -v41, v44, 1.0
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fma_f32 v37, -v45, v39, v37
	v_div_scale_f32 v45, null, v83, v83, v11
	v_fmac_f32_e32 v44, v46, v44
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_div_fmas_f32 v37, v37, v42, v39
	v_rcp_f32_e32 v46, v45
	v_fma_f32 v39, -v48, v47, v43
	v_div_scale_f32 v43, s1, v10, v83, v10
	s_mov_b32 vcc_lo, s3
	v_mul_f32_e32 v42, v36, v44
	v_div_fixup_f32 v23, v37, v83, v23
	v_mul_f32_e32 v52, v43, v38
	v_div_fmas_f32 v39, v39, v40, v47
	s_mov_b32 vcc_lo, s4
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v48, -v45, v46, 1.0
	v_fma_f32 v50, -v41, v42, v36
	v_fma_f32 v40, -v49, v52, v43
	v_div_fixup_f32 v24, v39, v83, v24
	v_fma_f32 v39, -v51, v53, 1.0
	v_fmac_f32_e32 v46, v48, v46
	v_div_scale_f32 v48, s5, v11, v83, v11
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_dual_fmac_f32 v52, v40, v38 :: v_dual_fmac_f32 v53, v39, v53
	v_dual_fmac_f32 v42, v50, v44 :: v_dual_mul_f32 v47, v48, v46
	v_div_scale_f32 v40, null, v83, v83, v13
	v_div_scale_f32 v39, s3, v12, v83, v12
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v37, -v45, v47, v48
	v_fma_f32 v36, -v41, v42, v36
	v_fma_f32 v41, -v49, v52, v43
	v_div_scale_f32 v43, null, v83, v83, v14
	s_delay_alu instid0(VALU_DEP_4)
	v_fmac_f32_e32 v47, v37, v46
	v_rcp_f32_e32 v37, v40
	v_div_fmas_f32 v36, v36, v44, v42
	s_mov_b32 vcc_lo, s1
	v_mul_f32_e32 v42, v39, v53
	v_div_fmas_f32 v38, v41, v38, v52
	v_fma_f32 v41, -v45, v47, v48
	s_mov_b32 vcc_lo, s5
	v_div_fixup_f32 v9, v36, v83, v9
	v_rcp_f32_e32 v45, v43
	v_div_fixup_f32 v10, v38, v83, v10
	v_fma_f32 v44, -v40, v37, 1.0
	v_div_fmas_f32 v41, v41, v46, v47
	v_fma_f32 v46, -v51, v42, v39
	s_mov_b32 vcc_lo, s3
	.loc	1 841 19                        ; attention.py:841:19
	v_cndmask_b32_e64 v23, 0, v23, s0
	.loc	1 841 48                        ; attention.py:841:48
	v_fmac_f32_e32 v37, v44, v37
	v_div_scale_f32 v44, s1, v13, v83, v13
	v_div_fixup_f32 v11, v41, v83, v11
	v_div_scale_f32 v41, null, v83, v83, v15
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_mul_f32_e32 v36, v44, v37
	v_fma_f32 v38, -v43, v45, 1.0
	.loc	1 841 19                        ; attention.py:841:19
	v_cndmask_b32_e64 v24, 0, v24, s0
	.loc	1 841 48                        ; attention.py:841:48
	v_rcp_f32_e32 v47, v41
	v_fmac_f32_e32 v42, v46, v53
	v_fma_f32 v46, -v40, v36, v44
	v_fmac_f32_e32 v45, v38, v45
	v_div_scale_f32 v38, s4, v14, v83, v14
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v39, -v51, v42, v39
	v_fmac_f32_e32 v36, v46, v37
	v_div_scale_f32 v46, null, v83, v83, v16
	.loc	1 841 19                        ; attention.py:841:19
	v_cndmask_b32_e64 v9, 0, v9, s0
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 841 48                        ; attention.py:841:48
	v_div_fmas_f32 v39, v39, v53, v42
	s_mov_b32 vcc_lo, s1
	v_rcp_f32_e32 v48, v46
	.loc	1 841 19                        ; attention.py:841:19
	v_cndmask_b32_e64 v10, 0, v10, s0
	v_cndmask_b32_e64 v11, 0, v11, s0
	.loc	1 841 48                        ; attention.py:841:48
	v_div_fixup_f32 v12, v39, v83, v12
	v_fma_f32 v39, -v40, v36, v44
	v_fma_f32 v44, -v41, v47, 1.0
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 841 19                        ; attention.py:841:19
	v_cndmask_b32_e64 v12, 0, v12, s0
	.loc	1 841 48                        ; attention.py:841:48
	v_div_fmas_f32 v36, v39, v37, v36
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v47, v44, v47
	v_div_scale_f32 v44, null, v83, v83, v2
	v_div_scale_f32 v37, null, v83, v83, v1
	v_div_fixup_f32 v13, v36, v83, v13
	v_fma_f32 v36, -v46, v48, 1.0
	s_delay_alu instid0(VALU_DEP_4)
	v_rcp_f32_e32 v50, v44
	v_div_scale_f32 v39, s1, v15, v83, v15
	s_mov_b32 vcc_lo, s4
	v_fmac_f32_e32 v48, v36, v48
	v_div_scale_f32 v36, s3, v16, v83, v16
	v_mul_f32_e32 v42, v38, v45
	v_div_scale_f32 v51, s4, v1, v83, v1
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fma_f32 v52, -v44, v50, 1.0
	.loc	1 841 19                        ; attention.py:841:19
	v_cndmask_b32_e64 v13, 0, v13, s0
	.loc	1 841 48                        ; attention.py:841:48
	v_fma_f32 v40, -v43, v42, v38
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v50, v52, v50
	v_div_scale_f32 v52, s5, v2, v83, v2
	v_fmac_f32_e32 v42, v40, v45
	v_rcp_f32_e32 v40, v37
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_fma_f32 v38, -v43, v42, v38
	v_mul_f32_e32 v43, v39, v47
	v_div_fmas_f32 v38, v38, v45, v42
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v49, -v37, v40, 1.0
	v_fma_f32 v42, -v41, v43, v39
	s_mov_b32 vcc_lo, s1
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_div_fixup_f32 v14, v38, v83, v14
	v_fmac_f32_e32 v40, v49, v40
	v_div_scale_f32 v49, null, v83, v83, v3
	v_fmac_f32_e32 v43, v42, v47
	v_mul_f32_e32 v45, v36, v48
	.loc	1 841 19                        ; attention.py:841:19
	v_cndmask_b32_e64 v14, 0, v14, s0
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 841 48                        ; attention.py:841:48
	v_rcp_f32_e32 v53, v49
	v_fma_f32 v38, -v41, v43, v39
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v42, -v46, v45, v36
	v_div_fmas_f32 v38, v38, v47, v43
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	v_fmac_f32_e32 v45, v42, v48
	v_mul_f32_e32 v41, v52, v50
	v_fma_f32 v42, -v49, v53, 1.0
	v_mul_f32_e32 v54, v51, v40
	s_mov_b32 vcc_lo, s3
	v_fma_f32 v36, -v46, v45, v36
	v_div_scale_f32 v43, null, v83, v83, v4
	v_fmac_f32_e32 v53, v42, v53
	v_fma_f32 v39, -v37, v54, v51
	v_div_scale_f32 v42, s1, v3, v83, v3
	v_div_fmas_f32 v36, v36, v48, v45
	s_mov_b32 vcc_lo, s4
	s_delay_alu instid0(VALU_DEP_3)
	v_fmac_f32_e32 v54, v39, v40
	v_fma_f32 v39, -v44, v41, v52
	v_rcp_f32_e32 v45, v43
	v_div_fixup_f32 v16, v36, v83, v16
	v_div_fixup_f32 v15, v38, v83, v15
	v_div_scale_f32 v47, null, v83, v83, v8
	v_fmac_f32_e32 v41, v39, v50
	v_mul_f32_e32 v39, v42, v53
	v_fma_f32 v37, -v37, v54, v51
	.loc	1 841 19                        ; attention.py:841:19
	v_cndmask_b32_e64 v15, 0, v15, s0
	v_cndmask_b32_e64 v16, 0, v16, s0
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 841 48                        ; attention.py:841:48
	v_fma_f32 v38, -v43, v45, 1.0
	v_div_fmas_f32 v37, v37, v40, v54
	v_fma_f32 v40, -v44, v41, v52
	s_mov_b32 vcc_lo, s5
	v_fma_f32 v44, -v49, v39, v42
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_div_fixup_f32 v1, v37, v83, v1
	v_div_fmas_f32 v40, v40, v50, v41
	v_div_scale_f32 v37, null, v83, v83, v5
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v39, v44, v53
	s_mov_b32 vcc_lo, s1
	v_div_fixup_f32 v2, v40, v83, v2
	v_div_scale_f32 v40, null, v83, v83, v7
	.loc	1 841 19                        ; attention.py:841:19
	v_cndmask_b32_e64 v1, 0, v1, s0
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cndmask_b32_e64 v2, 0, v2, s0
	.loc	1 841 48                        ; attention.py:841:48
	v_rcp_f32_e32 v44, v40
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v51, -v40, v44, 1.0
	v_fmac_f32_e32 v44, v51, v44
	v_fma_f32 v36, -v49, v39, v42
	v_rcp_f32_e32 v49, v47
	v_div_scale_f32 v51, s4, v7, v83, v7
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_div_fmas_f32 v36, v36, v53, v39
	v_rcp_f32_e32 v39, v37
	v_div_scale_f32 v41, vcc_lo, v4, v83, v4
	v_mul_f32_e32 v55, v51, v44
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	v_div_fixup_f32 v3, v36, v83, v3
	v_fma_f32 v53, -v47, v49, 1.0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 841 19                        ; attention.py:841:19
	v_cndmask_b32_e64 v3, 0, v3, s0
	.loc	1 841 48                        ; attention.py:841:48
	v_fma_f32 v36, -v37, v39, 1.0
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v49, v53, v49
	v_div_scale_f32 v53, s5, v8, v83, v8
	v_fmac_f32_e32 v39, v36, v39
	v_div_scale_f32 v36, s1, v5, v83, v5
	v_fmac_f32_e32 v45, v38, v45
	v_div_scale_f32 v38, null, v83, v83, v6
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_mul_f32_e32 v52, v36, v39
	v_mul_f32_e32 v56, v53, v49
	v_mul_f32_e32 v46, v41, v45
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_rcp_f32_e32 v42, v38
	v_fma_f32 v50, -v43, v46, v41
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_fmac_f32_e32 v46, v50, v45
	v_fma_f32 v48, -v38, v42, 1.0
	v_fma_f32 v50, -v37, v52, v36
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v41, -v43, v46, v41
	v_fmac_f32_e32 v42, v48, v42
	v_div_scale_f32 v48, s3, v6, v83, v6
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v52, v50, v39
	v_fma_f32 v50, -v40, v55, v51
	v_div_fmas_f32 v41, v41, v45, v46
	v_mul_f32_e32 v54, v48, v42
	s_mov_b32 vcc_lo, s1
	v_fma_f32 v36, -v37, v52, v36
	v_fmac_f32_e32 v55, v50, v44
	v_fma_f32 v37, -v47, v56, v53
	v_fma_f32 v43, -v38, v54, v48
	.loc	1 843 24 is_stmt 1              ; attention.py:843:24
	s_mul_i32 s1, s35, s46
	.loc	1 841 48                        ; attention.py:841:48
	v_div_fmas_f32 v36, v36, v39, v52
	s_mov_b32 vcc_lo, s3
	v_fmac_f32_e32 v56, v37, v49
	v_fmac_f32_e32 v54, v43, v42
	v_fma_f32 v37, -v40, v55, v51
	v_div_fixup_f32 v5, v36, v83, v5
	.loc	1 843 24                        ; attention.py:843:24
	v_mul_lo_u32 v36, s35, v82
	.loc	1 841 48                        ; attention.py:841:48
	v_fma_f32 v39, -v47, v56, v53
	v_fma_f32 v38, -v38, v54, v48
	v_div_fixup_f32 v4, v41, v83, v4
	s_mov_b32 s46, 0x7ffffffe
	.loc	1 841 19 is_stmt 0              ; attention.py:841:19
	v_cndmask_b32_e64 v5, 0, v5, s0
	.loc	1 844 63 is_stmt 1              ; attention.py:844:63
	v_cmp_gt_i32_e64 s3, s35, v33
	.loc	1 841 48                        ; attention.py:841:48
	v_div_fmas_f32 v38, v38, v42, v54
	s_mov_b32 vcc_lo, s4
	.loc	1 841 19 is_stmt 0              ; attention.py:841:19
	v_cndmask_b32_e64 v4, 0, v4, s0
	.loc	1 841 48                        ; attention.py:841:48
	v_div_fmas_f32 v37, v37, v44, v55
	s_mov_b32 vcc_lo, s5
	v_div_fixup_f32 v6, v38, v83, v6
	v_div_fmas_f32 v39, v39, v49, v56
	.loc	1 844 63 is_stmt 1              ; attention.py:844:63
	v_cmp_gt_i32_e32 vcc_lo, s35, v81
	.loc	1 841 48                        ; attention.py:841:48
	v_div_fixup_f32 v7, v37, v83, v7
	.loc	1 843 24                        ; attention.py:843:24
	v_add_nc_u32_e32 v37, v36, v81
	v_add_nc_u32_e32 v36, s1, v36
	.loc	1 841 48                        ; attention.py:841:48
	v_div_fixup_f32 v8, v39, v83, v8
	.loc	1 844 24                        ; attention.py:844:24
	s_and_b32 vcc_lo, s2, vcc_lo
	.loc	1 841 19                        ; attention.py:841:19
	v_cndmask_b32_e64 v6, 0, v6, s0
	v_cndmask_b32_e64 v7, 0, v7, s0
	.loc	1 843 24                        ; attention.py:843:24
	v_add_lshl_u32 v38, v36, v81, 2
	.loc	1 841 19                        ; attention.py:841:19
	v_cndmask_b32_e64 v8, 0, v8, s0
	.loc	1 844 63                        ; attention.py:844:63
	v_cmp_gt_i32_e64 s0, s35, v34
	.loc	1 843 24                        ; attention.py:843:24
	v_add_lshl_u32 v37, v37, s1, 2
	.loc	1 844 63                        ; attention.py:844:63
	v_cmp_gt_i32_e64 s1, s35, v35
	.loc	1 848 17                        ; attention.py:848:17
	v_add_nc_u32_e32 v39, 8, v38
	v_add_nc_u32_e32 v40, 16, v38
	v_cndmask_b32_e32 v41, 0x80000000, v38, vcc_lo
	v_add_lshl_u32 v0, v36, v0, 2
	s_delay_alu instid0(VALU_DEP_3)
	v_dual_cndmask_b32 v39, 0x80000000, v39 :: v_dual_cndmask_b32 v40, 0x80000000, v40
	s_clause 0x2
	buffer_store_b32 v25, v41, s[44:47], 0 offen
	buffer_store_b32 v26, v39, s[44:47], 0 offen
	buffer_store_b32 v27, v40, s[44:47], 0 offen
	v_add_nc_u32_e32 v39, 48, v38
	v_add_nc_u32_e32 v40, 56, v38
	v_add_nc_u32_e32 v25, 24, v38
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cndmask_b32_e32 v39, 0x80000000, v39, vcc_lo
	v_dual_cndmask_b32 v40, 0x80000000, v40 :: v_dual_add_nc_u32 v27, 40, v38
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_dual_cndmask_b32 v25, 0x80000000, v25 :: v_dual_add_nc_u32 v26, 32, v38
	v_dual_cndmask_b32 v27, 0x80000000, v27 :: v_dual_cndmask_b32 v26, 0x80000000, v26
	s_clause 0x4
	buffer_store_b32 v28, v25, s[44:47], 0 offen
	buffer_store_b32 v29, v26, s[44:47], 0 offen
	buffer_store_b32 v30, v27, s[44:47], 0 offen
	buffer_store_b32 v31, v39, s[44:47], 0 offen
	buffer_store_b32 v32, v40, s[44:47], 0 offen
	v_add_lshl_u32 v25, v36, v34, 2
	v_add_nc_u32_e32 v26, 0x48, v38
	v_add_nc_u32_e32 v27, 0x50, v38
	.loc	1 844 24                        ; attention.py:844:24
	s_and_b32 vcc_lo, s2, s0
	.loc	1 848 17                        ; attention.py:848:17
	v_add_nc_u32_e32 v28, 0x58, v38
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_cndmask_b32 v25, 0x80000000, v25 :: v_dual_cndmask_b32 v26, 0x80000000, v26
	v_cndmask_b32_e32 v27, 0x80000000, v27, vcc_lo
	v_add_nc_u32_e32 v29, 0x60, v38
	s_delay_alu instid0(VALU_DEP_4)
	v_cndmask_b32_e32 v28, 0x80000000, v28, vcc_lo
	s_clause 0x2
	buffer_store_b32 v17, v25, s[44:47], 0 offen
	buffer_store_b32 v18, v26, s[44:47], 0 offen
	buffer_store_b32 v19, v27, s[44:47], 0 offen
	v_add_nc_u32_e32 v18, 0x68, v38
	v_add_nc_u32_e32 v19, 0x70, v38
	v_cndmask_b32_e32 v17, 0x80000000, v29, vcc_lo
	buffer_store_b32 v20, v28, s[44:47], 0 offen
	v_add_nc_u32_e32 v20, 0x78, v38
	v_dual_cndmask_b32 v18, 0x80000000, v18 :: v_dual_cndmask_b32 v19, 0x80000000, v19
	buffer_store_b32 v21, v17, s[44:47], 0 offen
	v_add_lshl_u32 v17, v36, v35, 2
	v_cndmask_b32_e32 v20, 0x80000000, v20, vcc_lo
	.loc	1 844 24                        ; attention.py:844:24
	s_and_b32 vcc_lo, s2, s1
	.loc	1 848 17                        ; attention.py:848:17
	buffer_store_b32 v22, v18, s[44:47], 0 offen
	v_add_nc_u32_e32 v18, 0x88, v37
	v_cndmask_b32_e32 v17, 0x80000000, v17, vcc_lo
	s_clause 0x2
	buffer_store_b32 v23, v19, s[44:47], 0 offen
	buffer_store_b32 v24, v20, s[44:47], 0 offen
	buffer_store_b32 v9, v17, s[44:47], 0 offen
	v_add_nc_u32_e32 v9, 0x90, v37
	v_add_nc_u32_e32 v20, 0xa8, v37
	v_cndmask_b32_e32 v17, 0x80000000, v18, vcc_lo
	v_add_nc_u32_e32 v18, 0x98, v37
	v_add_nc_u32_e32 v19, 0xa0, v37
	v_cndmask_b32_e32 v9, 0x80000000, v9, vcc_lo
	buffer_store_b32 v10, v17, s[44:47], 0 offen
	v_dual_cndmask_b32 v10, 0x80000000, v18 :: v_dual_cndmask_b32 v17, 0x80000000, v19
	v_cndmask_b32_e32 v18, 0x80000000, v20, vcc_lo
	buffer_store_b32 v11, v9, s[44:47], 0 offen
	v_add_nc_u32_e32 v9, 0xb0, v37
	s_clause 0x2
	buffer_store_b32 v12, v10, s[44:47], 0 offen
	buffer_store_b32 v13, v17, s[44:47], 0 offen
	buffer_store_b32 v14, v18, s[44:47], 0 offen
	v_add_nc_u32_e32 v10, 0xb8, v37
	v_add_lshl_u32 v11, v36, v33, 2
	v_add_nc_u32_e32 v12, 0xc8, v37
	v_add_nc_u32_e32 v13, 0xd0, v37
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_dual_cndmask_b32 v9, 0x80000000, v9 :: v_dual_cndmask_b32 v10, 0x80000000, v10
	.loc	1 844 24                        ; attention.py:844:24
	s_and_b32 vcc_lo, s2, s3
	.loc	1 848 17                        ; attention.py:848:17
	v_dual_cndmask_b32 v11, 0x80000000, v11 :: v_dual_cndmask_b32 v0, 0x80000000, v0
	v_dual_cndmask_b32 v12, 0x80000000, v12 :: v_dual_cndmask_b32 v13, 0x80000000, v13
	s_clause 0x4
	buffer_store_b32 v15, v9, s[44:47], 0 offen
	buffer_store_b32 v16, v10, s[44:47], 0 offen
	buffer_store_b32 v1, v11, s[44:47], 0 offen
	buffer_store_b32 v2, v12, s[44:47], 0 offen
	buffer_store_b32 v3, v13, s[44:47], 0 offen
	v_add_nc_u32_e32 v1, 0xd8, v37
	v_add_nc_u32_e32 v2, 0xe0, v37
	v_add_nc_u32_e32 v3, 0xe8, v37
	v_add_nc_u32_e32 v9, 0xf0, v37
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_cndmask_b32 v1, 0x80000000, v1 :: v_dual_cndmask_b32 v2, 0x80000000, v2
	v_cndmask_b32_e32 v3, 0x80000000, v3, vcc_lo
	s_delay_alu instid0(VALU_DEP_3)
	v_cndmask_b32_e32 v9, 0x80000000, v9, vcc_lo
	s_clause 0x4
	buffer_store_b32 v4, v1, s[44:47], 0 offen
	buffer_store_b32 v5, v2, s[44:47], 0 offen
	buffer_store_b32 v6, v3, s[44:47], 0 offen
	buffer_store_b32 v7, v9, s[44:47], 0 offen
	buffer_store_b32 v8, v0, s[44:47], 0 offen
	.loc	1 502 5                         ; attention.py:502:5
	s_nop 0
	s_sendmsg sendmsg(MSG_DEALLOC_VGPRS)
	s_endpgm
.Ltmp34:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_none_local_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn32_w4_s1_ds1
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
		.amdhsa_next_free_vgpr 135
		.amdhsa_next_free_sgpr 61
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
	.size	amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_none_local_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn32_w4_s1_ds1, .Lfunc_end0-amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_none_local_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn32_w4_s1_ds1
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_none_local_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn32_w4_s1_ds1.num_vgpr, 135
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_none_local_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn32_w4_s1_ds1.num_agpr, 0
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_none_local_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn32_w4_s1_ds1.numbered_sgpr, 61
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_none_local_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn32_w4_s1_ds1.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_none_local_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn32_w4_s1_ds1.private_seg_size, 0
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_none_local_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn32_w4_s1_ds1.uses_vcc, 1
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_none_local_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn32_w4_s1_ds1.uses_flat_scratch, 0
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_none_local_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn32_w4_s1_ds1.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_none_local_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn32_w4_s1_ds1.has_recursion, 0
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_none_local_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn32_w4_s1_ds1.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 9520
; TotalNumSgprs: 63
; NumVgprs: 135
; ScratchSize: 0
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 16
; NumSGPRsForWavesPerEU: 63
; NumVGPRsForWavesPerEU: 135
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
	.quad	.Ltmp13-.Lfunc_begin0
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
	.quad	0
	.quad	0
.Ldebug_ranges2:
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
	.quad	.Ltmp33-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges3:
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
	.asciz	"amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_none_local_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn32_w4_s1_ds1"                        ; string offset=88 ; amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_none_local_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn32_w4_s1_ds1
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
    .name:           amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_none_local_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn32_w4_s1_ds1
    .private_segment_fixed_size: 0
    .sgpr_count:     63
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_none_local_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn32_w4_s1_ds1.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     135
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
